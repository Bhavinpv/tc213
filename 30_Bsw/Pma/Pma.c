/*******************************************************************************
 * Filename   : Pma.c
 * Project    : IPB
 * Author(s)  : deparap
 * Created    : 29.11.2022
 * Description:
 *
 * Last modification:
 *  on $Date$
 *  by $Author$
 *  current $Revision$
 *
 * Copyright (c) 2014 Delta Energy Systems (Germany) GmbH.
 * All rights reserved.
 ******************************************************************************/

/*******************************************************************************
 *Includes
 ******************************************************************************/
#include "Pma_api.h"
#include "Pma_cfg.h"
#include "Pma_scb.h"
#include "mpu_api.h"

/*******************************************************************************
 * Global data
 ******************************************************************************/
#if (MEMORY_PROTECTION_ENABLED)
#define PMA_QM_START_SEC_VAR_INIT
#include "PMA_MemMap.h"
PMA_S_ABORTTYPE Pma_AbortData;
PMA_S_RUN* Pma_RunTime;
Ifx_CPU_PSW PSWReg_Rd2;
#if(PFM_DEBUG_ENABLE)
u16 debug_var = 0;
PFM_S_DEBUG_CAP DebugCap[11];
PFM_S_DEBUG_CAP CapOnCan;
u8 i = 0;
u16 loopcount = 0u;
#endif/*PFM_DEBUG_ENABLE*/
#define PMA_QM_STOP_SEC_VAR_INIT
#include "PMA_MemMap.h"

/*******************************************************************************
 * Global function prototypes
 ******************************************************************************/
void Pma_vInit(void);
void Pma_vGetPfmSts(PFM_S_CAPTURE* Pfm_RdData);
void Pma_vGetE2eSts(CAN_S_E2E* E2e_RdData);
void Pma_vGetQspiSts(QSPI_S_ERROR_BIT* Qspi_RdData);
void Pma_vTask10ms(void);
void Pma_vGetErrorInfo(u32 Error);

static void PMA_vCheckImproperShutdown(void);
static void Pma_vReadResetSts(void);
static void Pma_vKeepErrcnt(void);

/*******************************************************************************
 * Function definitions
 ******************************************************************************/
#define PMA_QM_START_SEC_CODE
#include "PMA_MemMap.h"
/*******************************************************************************
 * Function:        Pma_vInit
 *
 * Parameters:      -
 * Returned value:  -
 *
 * Description:     Initialize PMA module and all error codes. Read reset status
 *
 ******************************************************************************/
void Pma_vInit(void)
{
  Pma_AbortData.ErrCnt = 0u;
  Pma_AbortData.ErrSrc = 0u;
  Pma_AbortData.ModuleInfo.Shutdown_ErrCnt  = 0u;
  Pma_AbortData.ResetInfo.ShutdownSts       = 0u;
  Pma_AbortData.ModuleInfo.Iohw_ErrCnt      = 0u;
  Pma_AbortData.ModuleInfo.Pfm_ErrCnt       = 0u;
  Pma_AbortData.ModuleInfo.E2e_ErrCnt       = 0u;
  Pma_AbortData.ModuleInfo.Qspi_ErrCnt      = 0u;
  Pma_AbortData.CpuLoadMin                  = 0xFFu;
  Pma_AbortData.CpuLoadMax                  = 0u;
  Pma_RunTime = &Pma_AbortData.Timestamp;
#if(PFM_DEBUG_ENABLE)
  DebugCap[0].idx = 0u;
#endif/*PFM_DEBUG_ENABLE*/
  PMA_vCheckImproperShutdown();
  if (Pma_AbortData.InitPattern != (PMA_INIT_PATTERN | PMA_MODULE_VERSION))
  {
    Pma_AbortData.InitPattern = (PMA_INIT_PATTERN | PMA_MODULE_VERSION);
  }
  Pma_vReadResetSts();
}

/*******************************************************************************
 * Function:        Pma_vTask10ms
 *
 * Parameters:      -
 * Returned value:  -
 *
 * Description:     10ms PMA cyclic task. Runs time stamp. 
 *                  To be used to forward required data on Internal/debug CAN
 *
 ******************************************************************************/
void Pma_vTask10ms(void)
{
  // 1 Cnt = 10 calls of IsrCall1ms function
  if(Pma_RunTime->Cnt == 100)
  {
    Pma_RunTime->Cnt = 0u;
    /*1sec = 1000ms
    *1min = 60secs = 60000ms = (10ms*6000cycles)*/
    if(Pma_RunTime->Secs == 60)
    {
      Pma_RunTime->Secs = 0u;                 //Reset TS_secs every 1min
      /*1hr = 60mins = 3600secs = 3600000ms
       *1000hr = 60000mins = 3600000secs = (36*(10^8))ms*/
      if(Pma_RunTime->Mins != 60000)
      {
        Pma_RunTime->Mins++;                  //Timestamp_mins: increment every 1min
      }
      else
      {
        Pma_RunTime->Mins = 0u;               //Reset TS_mins every 60000mins
      }
    }
    else
    {
      Pma_RunTime->Secs++;                    //Timestamp_secs: increment every 1s
    }
  }
  else
  {
    Pma_RunTime->Cnt++;
  }
}

/*******************************************************************************
 * Function:        Pma_vKeepErrcnt
 *
 * Parameters:      -
 * Returned value:  -
 *
 * Description:     Keeps an error count of all detected errors.
 *
 ******************************************************************************/
static void Pma_vKeepErrcnt(void)
{
  if(Pma_AbortData.ErrCnt < 0xFFFFu)
  {
    Pma_AbortData.ErrCnt++;
  }
  else
  {
    Pma_AbortData.ErrCnt = 0u;
  }

}

#if (PMA_INFINEON_CONTROLLER_IS_USED == STD_ON)

/*******************************************************************************
 * Function:        PMA_vCheckImproperShutdown
 *
 * Parameters:      -
 * Returned value:  -
 *
 * Description:     Read whether of CPU reached safe state in last reset
 *
 ******************************************************************************/
static void PMA_vCheckImproperShutdown(void)
{
  if(RESET_TRIGGER_OCCURRED == SCU_RSTSTAT.B.PORST)
  {
    Pma_AbortData.ResetInfo.ShutdownSts |= PORST_SHUTDOWN;
  }
  if((RESET_TRIGGER_OCCURRED == SCU_RSTSTAT.B.STM0)
  || (RESET_TRIGGER_OCCURRED == SCU_RSTSTAT.B.STM0)
  || (RESET_TRIGGER_OCCURRED == SCU_RSTSTAT.B.STM0))
  {
    Pma_AbortData.ResetInfo.ShutdownSts |= STM_SHUTDOWN;
  }
  if(RESET_TRIGGER_OCCURRED == SCU_RSTSTAT.B.EVR13)
  {
    Pma_AbortData.ResetInfo.ShutdownSts |= EVR13_SHUTDOWN;
  }
  if(RESET_TRIGGER_OCCURRED == SCU_RSTSTAT.B.EVR33)
  {
    Pma_AbortData.ResetInfo.ShutdownSts |= EVR33_SHUTDOWN;
  }
  if(RESET_TRIGGER_OCCURRED == SCU_RSTSTAT.B.SMU)
  {
    Pma_AbortData.ResetInfo.ShutdownSts |= SMU_SHUTDOWN;
  }
  if(RESET_TRIGGER_OCCURRED == SCU_RSTSTAT.B.SWD)
  {
    Pma_AbortData.ResetInfo.ShutdownSts |= SWD_SHUTDOWN;
  }
  if(RESET_TRIGGER_OCCURRED == SCU_RSTSTAT.B.STBYR)
  {
    Pma_AbortData.ResetInfo.ShutdownSts |= STBYR_SHUTDOWN;
  }
}

/*******************************************************************************
 * Function:        Pma_vReadResetSts
 *
 * Parameters:      -
 * Returned value:  -
 *
 * Description:     Read reset status register to determine type of reset and 
 *                  keep a count of resets.
 *
 ******************************************************************************/
static void Pma_vReadResetSts(void)
{
  /* Capture the count of resets. */
  Pma_AbortData.ResetInfo.PowerCycle++;
  
  /* Capture the reset status register data. */
  Pma_AbortData.ResetInfo.ResetSts_reg = (uint32)SCU_RSTSTAT.U;

  /* Detect the type of reset by reading reset status register        *
   * After determining the type of reset, increment the corresponding *
   * counter to maintain a count of reset cycle of each type.         */
  if(RESET_TRIGGER_OCCURRED == SCU_RSTSTAT.B.PORST)
  {
    Pma_AbortData.ResetInfo.PORSTPowerCycle++;
  }
  else
  {
    Pma_AbortData.ResetInfo.NonPORSTPowerCycle++;
  }
}

/*******************************************************************************
 * Function:        Pma_vGetErrorInfo
 *
 * Parameters:      -u32 Error: type of error
 * Returned value:  -
 *
 * Description:     Keep track of miscellanous errors like traps and NMIs.
 *
 ******************************************************************************/
void Pma_vGetErrorInfo(u32 Error)
{
  Pma_AbortData.McSafeErr.IohwErr = Error;
  Pma_AbortData.ErrSrc |= IOHW_ERRSRC;
  Pma_AbortData.ModuleInfo.Iohw_ErrCnt++;
  Pma_vKeepErrcnt();
}

/*******************************************************************************
 * Function:        Pma_vGetPfmSts
 *
 * Parameters:      -PFM_S_CAPTURE pointer: read PFM status
 * Returned value:  -
 *
 * Description:     Keep track of PFM status from Scheduler module before 
 *                  SBC shutdown.
 *
 ******************************************************************************/
void Pma_vGetPfmSts(PFM_S_CAPTURE* Pfm_RdData)
{
  Pma_AbortData.McSafeErr.PfmSts.FailureCnt     = Pfm_RdData->FailureCnt;
  Pma_AbortData.McSafeErr.PfmSts.Isr_15usCnt    = Pfm_RdData->Isr_15usCnt;
  Pma_AbortData.McSafeErr.PfmSts.Isr_100usCnt   = Pfm_RdData->Isr_100usCnt;
  Pma_AbortData.McSafeErr.PfmSts.Isr_1msCnt     = Pfm_RdData->Isr_1msCnt;
  Pma_AbortData.McSafeErr.PfmSts.TimerDiff_10ms = Pfm_RdData->TimerDiff_10ms;
  Pma_AbortData.McSafeErr.PfmSts.Sts            = Pfm_RdData->Sts;
  Pma_AbortData.ErrSrc |= PFM_ERRSRC;
  Pma_AbortData.ModuleInfo.Pfm_ErrCnt++;

#if (PFM_DEBUG_ENABLE)
  debug_var = 0u;
  if(Pma_AbortData.ModuleInfo.Pfm_ErrCnt != 0)
  {
    // if(Pfm_RdData->Isr_15usCnt != 667)
    if((ISR_15US_COUNT_MIN > Pfm_RdData->Isr_15usCnt)
    || (ISR_15US_COUNT_MAX < Pfm_RdData->Isr_15usCnt))
    {
      debug_var |= 0x1;
    }
    // if(Pfm_RdData->Isr_100usCnt != 100)
    if((ISR_100US_COUNT_MIN  > Pfm_RdData->Isr_100usCnt)
    || (ISR_100US_COUNT_MAX < Pfm_RdData->Isr_100usCnt))
    {
      debug_var |= 0x2;
    }
    // if(Pfm_RdData->Isr_1msCnt != 10)
    if((ISR_1MS_COUNT_MIN   > Pfm_RdData->Isr_1msCnt)
    || (ISR_1MS_COUNT_MAX  < Pfm_RdData->Isr_1msCnt))
    {
      debug_var |= 0x4;
    }
    // if(Pfm_RdData->TimerDiff_10ms != 62500)
    if((ISR_10MS_COUNT_MIN  > Pfm_RdData->TimerDiff_10ms) 
    || (ISR_10MS_COUNT_MAX  < Pfm_RdData->TimerDiff_10ms))
    {
      debug_var |= 0x8;
    }
  }
  if(DebugCap[i].idx < Pma_AbortData.ModuleInfo.Pfm_ErrCnt)
  {
    DebugCap[i].idx             = Pma_AbortData.ModuleInfo.Pfm_ErrCnt;
    DebugCap[i].isr15us_cap     = Pma_AbortData.McSafeErr.PfmSts.Isr_15usCnt;
    DebugCap[i].isr100us_cap    = Pma_AbortData.McSafeErr.PfmSts.Isr_100usCnt;
    DebugCap[i].isr1ms_cap      = Pma_AbortData.McSafeErr.PfmSts.Isr_1msCnt;
    DebugCap[i].isr10msdiff_cap = Pma_AbortData.McSafeErr.PfmSts.TimerDiff_10ms;
    DebugCap[i].debugvar_cap    = debug_var;
    DebugCap[i].loopcount_cap   = loopcount;
    i++;
    // debug_var = 0;
    CapOnCan.isr15us_cap      = Pma_AbortData.McSafeErr.PfmSts.Isr_15usCnt;
    CapOnCan.isr100us_cap     = Pma_AbortData.McSafeErr.PfmSts.Isr_100usCnt;
    CapOnCan.isr1ms_cap       = Pma_AbortData.McSafeErr.PfmSts.Isr_1msCnt;
    CapOnCan.isr10msdiff_cap  = Pma_AbortData.McSafeErr.PfmSts.TimerDiff_10ms;
  }
#endif/*PFM_DEBUG_ENABLE*/
  Pma_vKeepErrcnt();
}

/*******************************************************************************
 * Function:        Pma_vGetE2eSts
 *
 * Parameters:      -CAN_S_E2E pointer: read E2E protected CAN 
 *                                             Rx msg status.
 * Returned value:  -
 *
 * Description:     Keep track of E2E protected CAN Rx msg status on error 
 *                  detection by ComServ module.
 *
 ******************************************************************************/
void Pma_vGetE2eSts(CAN_S_E2E* E2e_RdData)
{
  u8 idx = 0u;
  for(idx = 0; idx < CAN_RX_MSG_SIZE; idx++)
  {
    Pma_AbortData.McSafeErr.E2eSts.RxData[idx].BZ  = E2e_RdData->RxData[idx].BZ;
    Pma_AbortData.McSafeErr.E2eSts.RxData[idx].CRC = E2e_RdData->RxData[idx].CRC;
    Pma_AbortData.McSafeErr.E2eSts.RxErr[idx].BZ   = E2e_RdData->RxErr[idx].BZ;
    Pma_AbortData.McSafeErr.E2eSts.RxErr[idx].CRC  = E2e_RdData->RxErr[idx].CRC;
    Pma_AbortData.McSafeErr.E2eSts.RxErrCnt[idx]   = E2e_RdData->RxErrCnt[idx];
    Pma_AbortData.McSafeErr.E2eSts.RxErrSign[idx]  = E2e_RdData->RxErrSign[idx];
  }
  Pma_AbortData.McSafeErr.E2eSts.RxErrOut                    = E2e_RdData->RxErrOut;
  Pma_AbortData.McSafeErr.E2eSts.RxErrSum                    = E2e_RdData->RxErrSum;
  Pma_AbortData.ErrSrc |= E2E_ERRSRC;
  Pma_AbortData.ModuleInfo.E2e_ErrCnt++;
  Pma_vKeepErrcnt();
}

/*******************************************************************************
 * Function:        Pma_vGetQspiSts
 *
 * Parameters:      -QSPI_S_ERROR_BIT pointer: read QSPI errors 
 * Returned value:  -
 *
 * Description:     Keep track of QSPI errors on detection by Scheduler module.
 *
 ******************************************************************************/
void Pma_vGetQspiSts(QSPI_S_ERROR_BIT* Qspi_RdData)
{
  Pma_AbortData.McSafeErr.QspiErr.Unlock = Qspi_RdData->Unlock;
  Pma_AbortData.McSafeErr.QspiErr.LockUp = Qspi_RdData->LockUp;
  Pma_AbortData.McSafeErr.QspiErr.Config = Qspi_RdData->Config;
  Pma_AbortData.McSafeErr.QspiErr.ReadStatus = Qspi_RdData->ReadStatus;
  Pma_AbortData.McSafeErr.QspiErr.MPSConfig = Qspi_RdData->MPSConfig;
  Pma_AbortData.McSafeErr.QspiErr.GotoNormal = Qspi_RdData->GotoNormal;
  Pma_AbortData.McSafeErr.QspiErr.ParityCheck = Qspi_RdData->ParityCheck;
  Pma_AbortData.McSafeErr.QspiErr.ABISTFin = Qspi_RdData->ABISTFin;
  Pma_AbortData.McSafeErr.QspiErr.ABISTSS = Qspi_RdData->ABISTSS;
  Pma_AbortData.McSafeErr.QspiErr.ABISTInt = Qspi_RdData->ABISTInt;
  Pma_AbortData.McSafeErr.QspiErr.WWDEnCnt = Qspi_RdData->WWDEnCnt;
  Pma_AbortData.McSafeErr.QspiErr.NormalState = Qspi_RdData->NormalState;
  Pma_AbortData.McSafeErr.QspiErr.QCOStatus = Qspi_RdData->QCOStatus;
  Pma_AbortData.McSafeErr.QspiErr.QVRStatus = Qspi_RdData->QVRStatus;
  Pma_AbortData.McSafeErr.QspiErr.Reserved1 = Qspi_RdData->Reserved1;
  Pma_AbortData.McSafeErr.QspiErr.Reserved2 = Qspi_RdData->Reserved2;
  Pma_AbortData.ErrSrc |= QSPI_ERRSRC;
  Pma_AbortData.ModuleInfo.Qspi_ErrCnt++;
  Pma_vKeepErrcnt();
}
#endif

#if (PMA_TI_CONTROLLER_IS_USED == STD_ON)

/*******************************************************************************
 * Function:        Pma_vMcSafeErrInit
 *
 * Parameters:      -
 * Returned value:  -
 *
 * Description:     Initialize PMA McSafe error codes
 *
 ******************************************************************************/
void Pma_vMcSafeErrInit(void)
{
  u8 idx;
  Pma_AbortData.McSafeErr.ErrCode = PIE_E_NO_ERROR;
  Pma_AbortData.McSafeErr.DspSts.DspError = OK;
  Pma_AbortData.McSafeErr.DspSts.SafetyErrorCode = 0u;
  Pma_AbortData.McSafeErr.PfmSts.Sts = PFM_STS_VALID;
  for (idx = 0u; idx <= E2E_IDX_MAX; idx++)
  {
    Pma_AbortData.McSafeErr.E2eSts[idx].curr_sts = E2E_RX_MSG_VALID;
  }
}

/*******************************************************************************
 * Function:        PMA_vCheckImproperShutdown
 *
 * Parameters:      -
 * Returned value:  -
 *
 * Description:     
 *
 ******************************************************************************/
static void PMA_vCheckImproperShutdown(void)
{

}

/*******************************************************************************
 * Function:        Pma_vReadResetSts
 *
 * Parameters:      -
 * Returned value:  -
 *
 * Description:     Read reset status register to determine type of reset and 
 *                  keep a count of resets.
 *
 ******************************************************************************/
static void Pma_vReadResetSts(void)
{
  /* Capture the count of resets. */
  Pma_AbortData.ResetInfo.PowerCycle++;
  /* Capture the reset status register data. */
  Pma_AbortData.ResetInfo.ResetSts_reg = (uint32)CpuSysRegs.RESC.all;
  /* Detect the type of reset by reading reset status register        *
   * After determining the type of reset, increment the corresponding *
   * counter to maintain a count of reset cycle of each type.         */
  if(RESET_TRIGGER_OCCURRED == CpuSysRegs.RESC.bit.POR)
  {
    Pma_AbortData.ResetInfo.PORSTPowerCycle++;
  }
  else
  {
    Pma_AbortData.ResetInfo.NonPORSTPowerCycle++;
    if(RESET_TRIGGER_OCCURRED == CpuSysRegs.RESC.bit.NMIWDRSn)
    {
      Pma_AbortData.McSafeErr.TrapInfo = NmiIntruptRegs.NMISHDFLG.all;
      Pma_vKeepErrcnt();
    }
  }
}

/*******************************************************************************
 * Function:        Pma_vGetErrorInfo
 *
 * Parameters:      -u32 Error: type of error
 * Returned value:  -
 *
 * Description:     Keep track of miscellanous errors like traps and NMIs.
 *
 ******************************************************************************/
void Pma_vGetErrorInfo(u32 Error)
{
  Pma_AbortData.McSafeErr.ErrCode = Error;
  Pma_vKeepErrcnt();
}

/*******************************************************************************
 * Function:        Pma_vGetDspSts
 *
 * Parameters:      -DSPSTATUS_S_STATUS pointer: read DSP status
 * Returned value:  -
 *
 * Description:     Keep track of hardware check status from DspStatus module 
 *                  before SBC shutdown.
 *
 ******************************************************************************/
void Pma_vGetDspSts(DSPSTATUS_S_STATUS* DspSts_RdData)
{
  Pma_AbortData.McSafeErr.DspSts.CpuRuntime = DspSts_RdData->CpuRuntime;
  Pma_AbortData.McSafeErr.DspSts.DspError = DspSts_RdData->DspError;
  Pma_AbortData.McSafeErr.DspSts.SafetyErrorCode = DspSts_RdData->SafetyErrorCode;
  Pma_AbortData.McSafeErr.DspSts.ExtWdgReq = DspSts_RdData->ExtWdgReq;
  Pma_vKeepErrcnt();
}

/*******************************************************************************
 * Function:        Pma_vGetPfmSts
 *
 * Parameters:      -PFM_S_CAPTURE pointer: read PFM status
 * Returned value:  -
 *
 * Description:     Keep track of PFM status from ExtWdg module before 
 *                  SBC shutdown.
 *
 ******************************************************************************/
void Pma_vGetPfmSts(PFM_S_CAPTURE* Pfm_RdData)
{
  Pma_AbortData.McSafeErr.PfmSts.FailureCnt   = Pfm_RdData->FailureCnt;
  Pma_AbortData.McSafeErr.PfmSts.Isr_40usCnt  = Pfm_RdData->Isr_40usCnt;
  Pma_AbortData.McSafeErr.PfmSts.Isr_1msCnt   = Pfm_RdData->Isr_1msCnt;
  Pma_AbortData.McSafeErr.PfmSts.Sts          = Pfm_RdData->Sts;
  Pma_vKeepErrcnt();
}


/*******************************************************************************
 * Function:        Pma_vGetWdgSts
 *
 * Parameters:      -u8 WdgReq_Sts: read WDG disable request from application
 * Returned value:  -
 *
 * Description:     Keep track of WDG disable request status from ExtWdg module
 *                  before SBC shutdown.
 *
 ******************************************************************************/
void Pma_vGetWdgSts(u8 WdgReq_Sts)
{
  Pma_AbortData.WdgReq_Sts = WdgReq_Sts;
  if(!WdgReq_Sts)
  {
    Pma_vKeepErrcnt();
  }
}

/*******************************************************************************
 * Function:        Pma_vGetE2eSts
 *
 * Parameters:      -DBC_E2E_S_STATUS pointer: read E2E protected CAN 
 *                                             Rx msg status.
 *                  -u16 Idx: E2E message index.
 * Returned value:  -
 *
 * Description:     Keep track of E2E protected CAN Rx msg status on error 
 *                  detection by dbc module.
 *
 ******************************************************************************/
void Pma_vGetE2eSts(DBC_E2E_S_STATUS* E2e_RdData, u16 idx)
{
  u8 data_idx = 0u;
  Pma_AbortData.McSafeErr.E2eSts[idx].curr_dlc      = E2e_RdData->curr_dlc;
  Pma_AbortData.McSafeErr.E2eSts[idx].curr_BZ       = E2e_RdData->curr_BZ;
  Pma_AbortData.McSafeErr.E2eSts[idx].curr_CRC_rcvd = E2e_RdData->curr_CRC_rcvd;
  for (data_idx = 0u; data_idx <= E2e_RdData->curr_dlc; data_idx++)
  {
    Pma_AbortData.McSafeErr.E2eSts[idx].curr_data[data_idx]  = E2e_RdData->curr_data[data_idx];
  }
  Pma_AbortData.McSafeErr.E2eSts[idx].msg_Id        = E2e_RdData->msg_Id;
  Pma_AbortData.McSafeErr.E2eSts[idx].curr_sts      = E2e_RdData->curr_sts;
  Pma_vKeepErrcnt();
}
#endif

#define PMA_QM_STOP_SEC_CODE
#include "PMA_MemMap.h"

#endif /*MEMORY_PROTECTION_ENABLED*/

