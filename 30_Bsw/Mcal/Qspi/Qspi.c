/*******************************************************************************
 * \file    IfxQspi.c
 * \brief
 *
 * \section AUTHOR
 *    #.
 *
 * \section SVN
 *  $Date$
 *  $Author$
 *  $Revision$
 *
 * \section LICENSE
 * Copyright (c) xxx.
 * All rights reserved.
 ******************************************************************************/

/* Includes *******************************************************************/
#include "Qspi.h"
#include "Main_api.h"
#include "Port_api.h"
#include "IfxCbs_reg.h"

/* Datas **********************************************************************/
#define MPU_ASIL_START_SEC_VAR_NOINIT
#include "MPU_MemMap.h"
QSPI_S_ERROR Qspi_SBCError;
QSPI_E_TEST_STS Qspi_StrtUpTst_Sts;

static u16 Qspi_10msTick;
static u16 Qspi_Log[10];
// static QSPI_E_TEST_STS  Qspi_WWDTest_Sts;
static QSPI_E_WWDT_STS Qspi_WWDT_Status;
static QSPI_E_ABIST_STS Qspi_ABIST_Status;
static u16  Qspi_WWDTest_Ctr;
static u16  Qspi_WWDTest_RetryCtr;
static u8  Qspi_SbcStateChng_WaitCtr;
static u16  Qspi_ABIST_WaitCtr;
static u16 Qspi_WWDT_WdgErrCnt[3];
static u8 Qspi_ABISTSS_RetryFlag;
static u16 Qspi_ABISTSS_RetryCtr;
static u8 Qspi_ABISTInt_RetryFlag;
static u16 Qspi_ABISTInt_RetryCtr;
#define MPU_ASIL_STOP_SEC_VAR_NOINIT
#include "MPU_MemMap.h"

/* Functions ******************************************************************/

void Qspi_SBC_Config(void);
void Qspi_SBC_ReadStatus(void);
void Qspi_SBC_GotoNormal(void);
void Qspi_SBC_ABIST(void);
void Qspi_SBC_WWDTest(void);
void Qspi_SBC_Check_NormalState(void);
void Qspi_SBC_Check_QCOStatus(void);
void Qspi_SBC_Check_QVRStatus(void);
void Qspi_SBC_Check_RegStatus(void);
bit Qspi_SBC_ParityCheck(u16 data);

/* Functions ******************************************************************/
#define MPU_QM_START_SEC_CODE
#include "MPU_MemMap.h"
void Qspi_Init(void)
{
  Qspi_cfg();
  Qspi_SBCError.all         = ERR_CLR;
  Qspi_StrtUpTst_Sts        = QSPI_TEST_INIT;
  // Qspi_WWDTest_Sts          = QSPI_TEST_INIT;
  Qspi_WWDTest_Ctr          = CTR_CLR;
  Qspi_SbcStateChng_WaitCtr = 0xFF;
  Qspi_WWDT_Status          = QSPI_WWDT_INIT;
  Qspi_WWDTest_RetryCtr     = CTR_CLR;
  Qspi_ABISTSS_RetryFlag    = RETRY_CLR;
  Qspi_ABISTSS_RetryCtr     = CTR_CLR;
  Qspi_ABISTInt_RetryFlag   = RETRY_CLR;
  Qspi_ABISTInt_RetryCtr    = CTR_CLR;
  Qspi_ABIST_Status         = QSPI_ABIST_START;
  Qspi_SBCError.bit.ParityCheck = 0u;
  Qspi_SBCError.bit.GotoNormal = 0u;
}
#define MPU_QM_STOP_SEC_CODE
#include "MPU_MemMap.h"

#define MPU_ASIL_START_SEC_CODE
#include "MPU_MemMap.h"
void Qspi_StartUp(void)
{
  switch (Qspi_StrtUpTst_Sts)
  {
    case QSPI_TEST_INIT:
    {
      //wait for test to be initiated by 1ms ISR
      break; 
    }
    case QSPI_TEST_STARTED:
    {
      Qspi_SBC_Unlock();
      if(0u == Qspi_SBCError.bit.Unlock)
      {
        Qspi_SBC_Config();
        if(0u == Qspi_SBCError.bit.Config)
        {
          Qspi_SBC_Lockup();
          if(0u == Qspi_SBCError.bit.LockUp)
          {
            Qspi_SBC_ReadStatus();
            if((0u == Qspi_SBCError.bit.ReadStatus)
            && (0u == Qspi_SBCError.bit.MPSConfig))
            {
              Qspi_StrtUpTst_Sts = QSPI_SBC_STATUS_READ;
            }
            else
            {
              Qspi_StrtUpTst_Sts = QSPI_TEST_FINISHED;
            }//readstatus failed
          }
          else
          {
            Qspi_StrtUpTst_Sts = QSPI_TEST_FINISHED;
          }//lockup failed
        }
        else
        {
          Qspi_StrtUpTst_Sts = QSPI_TEST_FINISHED;
        }//config failed
      }
      else
      {
        Qspi_StrtUpTst_Sts = QSPI_TEST_FINISHED;
      }//unlock failed
      break;
    }
    case QSPI_SBC_STATUS_READ:
    {
      if(SBC_STATE_CHANGE_WAIT_MAX == Qspi_SbcStateChng_WaitCtr)
      {
        Qspi_SBC_GotoNormal();
        if(0 == Qspi_SBCError.bit.GotoNormal)
        {
          Qspi_StrtUpTst_Sts = QSPI_SBC_IN_NORMAL_STATE;
        }
        else
        {
          Qspi_StrtUpTst_Sts = QSPI_TEST_FINISHED;
        }//goto normal failed
      }
      else
      {
        Qspi_SbcStateChng_WaitCtr++;
      }
      break;
    }
    case QSPI_SBC_IN_NORMAL_STATE:
    {
      if(!PORT_HWVER_0)
      {
        Qspi_SBC_ABIST();
      }
      break;
    }
    case QSPI_SBC_ABIST_COMPLETED:
    {
      if(0 == Qspi_SBCError.bit.ABISTFin)
      {
        Qspi_SBC_GotoNormal();
        if(0 == Qspi_SBCError.bit.GotoNormal)
        {
          Qspi_StrtUpTst_Sts = QSPI_SBC_NORMAL_AFTER_ABIST;
        }
        else
        {
          Qspi_StrtUpTst_Sts = QSPI_TEST_FINISHED;
        }//goto normal failed
      }
      else
      {
        Qspi_StrtUpTst_Sts = QSPI_TEST_FINISHED;
      }//abist failed
      break;
    }
    case QSPI_SBC_NORMAL_AFTER_ABIST:
    {
      //Run WWDT ErrCtr test in 100us ISR
      break;
    }
    case QSPI_SBC_WWDTEST_RUNNING:
    {
      //WWDT ErrCtr test is running already
      break;
    }
    case QSPI_SBC_WWDTEST_COMPLETED:
    {
      Qspi_StrtUpTst_Sts = QSPI_TEST_FINISHED;
      break;
    }
    case QSPI_TEST_FINISHED:
    {
      //Do nothing
      break;
    }
  }
}

#if 0
void Qspi_SBC_Check10ms(void)
{
 if(QSPI_TEST_FINISHED != Qspi_StrtUpTst_Sts) return;

 switch(Qspi_10msTick)
 {
   case 0:
     Qspi_SBC_Check_NormalState();
     Qspi_10msTick = 1;
     break;
   case 1:
     Qspi_SBC_Check_QCOStatus();
     Qspi_10msTick = 2;
     break;
   case 2:
     Qspi_SBC_Check_QVRStatus();
     Qspi_10msTick = 0;
     break;
   default:
     Qspi_10msTick = 0;
     break;
 }
}
#endif /*0*/

void Qspi_SBC_Check10ms(void)
{
  if(QSPI_TEST_FINISHED == Qspi_StrtUpTst_Sts)
  {
    switch(Qspi_10msTick)
    {
      case 0:
        Qspi_SBC_Check_NormalState();
        Qspi_10msTick = 1;
        break;
      case 1:
        Qspi_SBC_Check_RegStatus();
        Qspi_10msTick = 0;
        break;
      default:
        Qspi_10msTick = 0;
        break;
    }
  }
}

void Qspi_SBC_Unlock(void)
{
  u16 TxData[4] =
  {W_PROTCFG_UNLO_KEY1,W_PROTCFG_UNLO_KEY2,W_PROTCFG_UNLO_KEY3,W_PROTCFG_UNLO_KEY4};
  u16 RxData[4];
  u16 i;

  Qspi_SBCError.bit.Unlock = 0;
  // Write unlock keys
  for(i=0;i<4;i++)
  {
    Qspi_SBC_TxRxData(TxData[i],&RxData[i]);
  }

  // Check unlock status
  Qspi_SBC_TxRxData(R_PROTSTAT,&RxData[0]);
  if((RxData[0] != A_PROTSTAT_UNLO)||(Qspi_SBCError.bit.ParityCheck == 1))
  {
    Qspi_SBCError.bit.Unlock = 1;
  }
}

void Qspi_SBC_Lockup(void)
{
  u16 TxData[4] =
  {W_PROTCFG_LOCK_KEY1,W_PROTCFG_LOCK_KEY2,W_PROTCFG_LOCK_KEY3,W_PROTCFG_LOCK_KEY4};
  u16 RxData[4];
  u16 i;

  Qspi_SBCError.bit.LockUp = 0;
  // Write lockup keys
  for(i=0;i<4;i++)
  {
    Qspi_SBC_TxRxData(TxData[i],&RxData[i]);
  }

  // Check lockup status
  Qspi_SBC_TxRxData(R_PROTSTAT,&RxData[0]);

  if((RxData[0] != A_PROTSTAT_LOCK)||(Qspi_SBCError.bit.ParityCheck == 1))
  {
    Qspi_SBCError.bit.LockUp = 1;
  }
}

void Qspi_SBC_Config(void)
{
  u16 TxDataWrite[7] =
  {W_SYSPCFG0,W_SYSPCFG1,W_WDCFG0,W_WDCFG1,W_FWDCFG,W_WWDCFG0,W_WWDCFG1};
  u16 TxDataRead[7] =
  {R_SYSPCFG0,R_SYSPCFG1,R_WDCFG0,R_WDCFG1,R_FWDCFG,R_WWDCFG0,R_WWDCFG1};
  u16 RxData[7];
  u16 TxResult,RxResult;
  u16 i;

  Qspi_SBCError.bit.Config = 0;
  // Write protect register
  for(i=0;i<7;i++)
  {
    Qspi_SBC_TxRxData(TxDataWrite[i],&RxData[i]);
  }

  // Check protect register configuration
  for(i=0;i<7;i++)
  {
    Qspi_SBC_TxRxData(TxDataRead[i],&RxData[i]);

    TxResult = (TxDataWrite[i] >> 1) & 0xFF;

    RxResult = (RxData[i] >> 1) & 0xFF;
    if(((TxResult ^ RxResult) != 0xFF)||(Qspi_SBCError.bit.ParityCheck == 1))
    {
      Qspi_SBCError.bit.Config = 1;
    }
  }
}

void Qspi_SBC_ReadStatus(void)
{
  u16 TxDataWrite[7] =
  {W_SYSPCFG1,W_SYSPCFG1,W_WDCFG0,W_WDCFG1,W_FWDCFG,W_WWDCFG0,W_WWDCFG1};
  u16 TxDataRead[7] =
  {R_RSYSPCFG1,R_RSYSPCFG1,R_RWDCFG0,R_RWDCFG1,R_RFWDCFG,R_RWWDCFG0,R_RWWDCFG1};
  u16 RxData[7];
  uint16 TxResult,RxResult;
  u16 i;

  Qspi_SBCError.bit.ReadStatus = 0;
  // Check protect register status
  for(i=0;i<7;i++)
  {
    Qspi_SBC_TxRxData(TxDataRead[i],&RxData[i]);

    TxResult = (TxDataWrite[i] >> 1) & 0xFF;
    RxResult = (RxData[i] >> 1) & 0xFF;
    if((TxResult != RxResult)||(Qspi_SBCError.bit.ParityCheck == 1))
    {
      Qspi_SBCError.bit.ReadStatus = 1;
    }
  }

  // Check protect register status
  Qspi_SBC_TxRxData(R_RSYSPCFG0,&RxData[0]);
  if((((RxData[0] >> 1) & 0x01) != 0)||(Qspi_SBCError.bit.ParityCheck == 1))
  {
    Qspi_SBCError.bit.ReadStatus = 1;
  }

  // Check BCK_FREQ_CHANGE register status
  Qspi_SBC_TxRxData(R_BCK_FREQ_CHANGE,&RxData[0]);
  if((((RxData[0] >> 1) & 0xFF) != 0)||(Qspi_SBCError.bit.ParityCheck == 1))
  {
    Qspi_SBCError.bit.ReadStatus = 1;
  }
  // Check BCK_FRE_SPREAD register status
  Qspi_SBC_TxRxData(R_BCK_FRE_SPREAD,&RxData[0]);
  if((((RxData[0] >> 1) & 0xFF) != 0)||(Qspi_SBCError.bit.ParityCheck == 1))
  {
    Qspi_SBCError.bit.ReadStatus = 1;
  }

  // Check MPS status
  Qspi_SBC_TxRxData(W_MCSMON,&RxData[0]);
  Qspi_SBC_TxRxData(R_MCSMON,&RxData[0]);
  if((((RxData[0] >> 1) & 0x80) != 0)||(Qspi_SBCError.bit.ParityCheck == 1))
  {
    if (DEBUGGER_CONNECTED != MODULE_CBS.OSTATE.B.OEN)
    {
      Qspi_SBCError.bit.MPSConfig = 1;
    }
  }
  if(0xFF == Qspi_SbcStateChng_WaitCtr)
  {
    Qspi_SbcStateChng_WaitCtr = 0;
  }
}

void Qspi_SBC_GotoNormal(void)
{
  u16 TxData[2] =
  {W_DEVCTRL,W_DEVCTRLN};
  u16 RxData[2];
  u16 i;

  // Write goto normal command
  for(i=0;i<2;i++)
  {
    Qspi_SBC_TxRxData(TxData[i],&RxData[i]);
  }

  // Check regulator and state status
  Qspi_SBC_TxRxData(R_DEVSTAT,&RxData[0]);
  if((RxData[0] != A_DEVSTAT)||(Qspi_SBCError.bit.ParityCheck == 1))
  {
    if (DEBUGGER_CONNECTED != MODULE_CBS.OSTATE.B.OEN)
    {
      Qspi_SBCError.bit.GotoNormal = 1;
    }
  }
}

void Qspi_SBC_ABIST(void)
{
  /* ABIST_SELECT0_SS: VREFOV, QUCOV, PREGOV                                  *
   * ABIST_SELECT1_SS: QUCUV                                                  *
   * ABIST_SELECT2_SS: BIASHI, BIASLO                                         *
   * ABIST_CTRL0_SS: Safe State related CMP test, Predefined seq, start ABIST */
  u16 TxDataSS[4] =
  {W_ABIST_SELECT0_SS,W_ABIST_SELECT1_SS,W_ABIST_SELECT2_SS,W_ABIST_CTRL0_SS};
  /* ABIST_SELECT0_INT: QCOOV                                                 *
   * ABIST_SELECT1_INT: QVRUV, QCOUV, PREGUV                                  *
   * ABIST_SELECT2_INT: BG12OV, BG12UV                                        *
   * ABIST_CTRL0_INT: INTerrupt related CMP test, Predefined seq, start ABIST */
  u16 TxDataInt[4] =
  {W_ABIST_SELECT0_INT,W_ABIST_SELECT1_INT,W_ABIST_SELECT2_INT,W_ABIST_CTRL0_INT};
  /*Clear all monitor status flags*/
  u16 TxDataClr[3] =
  {W_MONSF0_CLR,W_MONSF1_CLR,W_MONSF2_CLR};
  u16 RxData[4];
  u16 i;

  switch(Qspi_ABIST_Status)
  {
    case QSPI_ABIST_START:
    {
      //Run Safe State (SS) related comparators.
      for(i=0;i<4;i++)
      {
        Qspi_SBC_TxRxData(TxDataSS[i],&RxData[i]);
        Qspi_ABIST_Status = QSPI_ABIST_SST_CHK_RETRY;
      }
      break;
    }
    case QSPI_ABIST_SST_CHK_RETRY:
    {
      //Check for max 4 attempts of test or reading status.
      //retry test 3 times, if test failed the 1st time.
      if(ABIST_MAX_ATTEMPTS > Qspi_ABISTSS_RetryCtr)
      {
        if(RETRY_SET == Qspi_ABISTSS_RetryFlag)
        {
          Qspi_ABISTSS_RetryCtr++;
        }
        Qspi_ABIST_WaitCtr = CTR_CLR;
        Qspi_ABIST_Status = QSPI_ABIST_SST_CHK_STATUS;
      }
      else if (ABIST_MAX_ATTEMPTS <= Qspi_ABISTSS_RetryCtr)
      {
        Qspi_SBCError.bit.ABISTSS = 1;
        Qspi_ABIST_Status = QSPI_ABIST_FAILED;
      }
      break;
    }
    case QSPI_ABIST_SST_CHK_STATUS:
    {
      // Wait until test is finished (need <10ms.)
      if(ABIST_WAIT_MAX > Qspi_ABIST_WaitCtr)
      {
        Qspi_ABIST_WaitCtr++;
      }
      else
      {
        Qspi_SBC_TxRxData(R_ABIST_CTRL0,&RxData[0]);
        // Check ABIST status.
        if((((RxData[0] >> 1) & 0x01) == 0)||(Qspi_SBCError.bit.ParityCheck == 1))
        {
          //Check SS test results.
          // if((((RxData[0] >> 1) & 0xF0) >> 4) != 5)
          if(((((RxData[0] >> 1) & 0xF0) >> 4) != 5)||(Qspi_SBCError.bit.ParityCheck == 1))
          {
            //SS test failed. Retry.
            Qspi_SBCError.bit.ABISTSS = ERR_SET;
            Qspi_ABISTSS_RetryFlag = RETRY_SET;
            Qspi_ABIST_Status = QSPI_ABIST_START;
          }
          else
          {
            //SS test successfully completed.
            Qspi_SBCError.bit.ABISTSS = ERR_CLR;
            Qspi_ABISTSS_RetryFlag = RETRY_CLR;
            Qspi_ABISTSS_RetryCtr = CTR_CLR;
            Qspi_ABIST_Status = QSPI_ABIST_INTT_START;
          }
        }
        else
        {
          //SS test results not generated yet. Retry.
          Qspi_ABISTSS_RetryFlag = RETRY_SET;
          Qspi_ABIST_Status = QSPI_ABIST_SST_CHK_RETRY;
        }
      }
      break;
    }
    case QSPI_ABIST_INTT_START:
    {
      Qspi_SBC_TxRxData(R_ABIST_SELECT0,&Qspi_Log[0]);
      Qspi_SBC_TxRxData(R_ABIST_SELECT1,&Qspi_Log[1]);
      Qspi_SBC_TxRxData(R_ABIST_SELECT2,&Qspi_Log[2]);
      Qspi_SBC_TxRxData(R_IF,&Qspi_Log[3]);
      Qspi_SBC_TxRxData(R_SYSFAIL,&Qspi_Log[4]);
      Qspi_SBC_TxRxData(R_INITERR,&Qspi_Log[5]);
      Qspi_SBC_TxRxData(R_MONSF0,&Qspi_Log[6]);
      Qspi_SBC_TxRxData(R_MONSF1,&Qspi_Log[7]);
      Qspi_SBC_TxRxData(R_MONSF2,&Qspi_Log[8]);
      Qspi_SBC_TxRxData(R_MONSF3,&Qspi_Log[9]);

      Qspi_Log[0] = (Qspi_Log[0] >> 1) & 0xFF;
      Qspi_Log[1] = (Qspi_Log[1] >> 1) & 0xFF;
      Qspi_Log[2] = (Qspi_Log[2] >> 1) & 0xFF;
      Qspi_Log[3] = (Qspi_Log[3] >> 1) & 0xFF;
      Qspi_Log[4] = (Qspi_Log[4] >> 1) & 0xFF;
      Qspi_Log[5] = (Qspi_Log[5] >> 1) & 0xFF;
      Qspi_Log[6] = (Qspi_Log[6] >> 1) & 0xFF;
      Qspi_Log[7] = (Qspi_Log[7] >> 1) & 0xFF;
      Qspi_Log[8] = (Qspi_Log[8] >> 1) & 0xFF;
      Qspi_Log[9] = (Qspi_Log[9] >> 1) & 0xFF;

      // Run test for Interrupt (INT) related regulators.
      for(i=0;i<4;i++)
      {
        Qspi_SBC_TxRxData(TxDataInt[i],&RxData[i]);
      }
      Qspi_ABIST_Status = QSPI_ABIST_INTT_CHK_RETRY;

      break;
    }
    case QSPI_ABIST_INTT_CHK_RETRY:
    {
      //Check for max 4 attempts of test or reading status
      //retry test 3 times, if test failed the 1st time.
      if(ABIST_MAX_ATTEMPTS > Qspi_ABISTInt_RetryCtr)
      {
        if(RETRY_SET == Qspi_ABISTInt_RetryFlag)
        {
          Qspi_ABISTInt_RetryCtr++;
        }
        Qspi_ABIST_WaitCtr = CTR_CLR;
        Qspi_ABIST_Status = QSPI_ABIST_INTT_CHK_STATUS;
      }
      else if (ABIST_MAX_ATTEMPTS <= Qspi_ABISTInt_RetryCtr)
      {
        Qspi_SBCError.bit.ABISTInt = 1;
        Qspi_ABIST_Status = QSPI_ABIST_FAILED;
      }

      break;
    }
    case QSPI_ABIST_INTT_CHK_STATUS:
    {
      // Wait until test is finished (need <10ms.)
      if(ABIST_WAIT_MAX > Qspi_ABIST_WaitCtr)
      {
        Qspi_ABIST_WaitCtr++;
      }
      else
      {
        Qspi_SBC_TxRxData(R_ABIST_CTRL0,&RxData[0]);
          // Check ABIST status
        if((((RxData[0] >> 1) & 0x01) == 0)||(Qspi_SBCError.bit.ParityCheck == 1))
        {
            //Check INT test results.
          if(((((RxData[0] >> 1) & 0xF0) >> 4) != 5)||(Qspi_SBCError.bit.ParityCheck == 1))
          {
            //INT test failed. Retry.
            Qspi_SBCError.bit.ABISTInt = ERR_SET;
            Qspi_ABISTInt_RetryFlag = RETRY_SET;
            Qspi_ABIST_Status = QSPI_ABIST_INTT_START;
          }
          else
          {
            //INT test successfully completed.
            Qspi_SBCError.bit.ABISTInt = ERR_CLR;
            Qspi_ABISTInt_RetryFlag = RETRY_CLR;
            Qspi_ABISTInt_RetryCtr = CTR_CLR;
            Qspi_ABIST_Status = QSPI_ABIST_SUCCESS;
          }
        }
        else
        {
          //INT test results not generated yet. Retry.
          Qspi_ABISTInt_RetryFlag = RETRY_SET;
          Qspi_ABIST_Status = QSPI_ABIST_INTT_CHK_RETRY;
        }
      }

      break;
    }
    case QSPI_ABIST_SUCCESS:
    {
      // Clear all flags.
      for(i=0;i<3;i++)
      {
        Qspi_SBC_TxRxData(TxDataClr[i],&RxData[i]);
      }
      Qspi_SBCError.bit.ABISTFin = 0;
      Qspi_StrtUpTst_Sts = QSPI_SBC_ABIST_COMPLETED;

      break;
    }
    case QSPI_ABIST_FAILED:
    default:
    {
      //ABIST failed. Report error to 10ms Isr.
      Qspi_SBCError.bit.ABISTFin = 1;
      Qspi_StrtUpTst_Sts = QSPI_SBC_ABIST_COMPLETED;

      break;
    }
  }/*switch*/
}

void Qspi_SBC_WWDTest(void)
{
  u16 RxData;
  switch(Qspi_WWDT_Status)
  {
    case QSPI_WWDT_INIT:
    {
      Qspi_StrtUpTst_Sts = QSPI_SBC_WWDTEST_RUNNING;
      Qspi_WWDT_WdgErrCnt[0] = WWD_ERRCTR_DEFAULT;
      Qspi_WWDT_WdgErrCnt[1] = WWD_ERRCTR_DEFAULT;
      Qspi_WWDT_WdgErrCnt[2] = WWD_ERRCTR_DEFAULT;
      Qspi_WWDT_Status = QSPI_WWDT_RUN_TIMER0;
      Qspi_WWDTest_Ctr = 0u;
      break;
    }
    case QSPI_WWDT_RUN_TIMER0:
    {
      //let the wdg be correctly triggered for 2 cycles (14ms) before starting the test
      if(2*WWD_PERIOD > Qspi_WWDTest_Ctr)
      {
        Qspi_WWDTest_Ctr++;
      }
      else
      {
        Qspi_WWDT_Status = QSPI_WWDT_RD_ERRCTR;
      }
      break;
    }
    case QSPI_WWDT_RD_ERRCTR:
    {
      //read wdg error counter. Expected: 0
      if(2*WWD_PERIOD == Qspi_WWDTest_Ctr)
      {
        Qspi_SBC_TxRxData(R_WWDSTAT,&RxData);
        Qspi_WWDT_WdgErrCnt[0] = ((RxData >> 1) & 0x0F);
        //Disable wdg trigger if ErrCtr is error free and port pin to trig wdg is low 
        //(i.e. WDG has been recently triggered)
        if((WWD_ERRCTR_DEFAULT == Qspi_WWDT_WdgErrCnt[0])
          ||(Qspi_SBCError.bit.ParityCheck == 1))
        {
          Qspi_WWDT_Status = QSPI_WWDT_DIS_WDGTRIG;
        }
        else
        {
          Qspi_WWDT_Status = QSPI_WWDT_RETRY_TEST;
        }
      }
      else
      {
        //error
        Qspi_WWDT_Status = QSPI_WWDT_RETRY_TEST;
      }
      break;
    }
    case QSPI_WWDT_DIS_WDGTRIG:
    {
      //Disable wdg trigger if ErrCtr is error free and port pin to trig wdg is low 
      //(i.e. WDG has been recently triggered)
      if(P02_IN.B.P8)  //when port pin is low
      {
        WdgEnable = WWD_TRIG_DISABLE;  //command to disable WWDtigger
        Qspi_WWDT_Status = QSPI_WWDT_RUN_TIMER1;
      }
      break;
    }
    case QSPI_WWDT_RUN_TIMER1:
    {
      //run timer to ensure one period of wdg trigger disabled
      //3ms (+0.5ms tolerance) added for worst case scenario
      if(((3*WWD_PERIOD)+35u) > Qspi_WWDTest_Ctr) //25.5ms
      {
        Qspi_WWDTest_Ctr++;
        //start polling err counter at 21ms to check if err counter is set to 2
        //21ms: best case scenario
        if((3*WWD_PERIOD) <= Qspi_WWDTest_Ctr)  //14ms + 7ms = at 21ms
        {
          Qspi_SBC_TxRxData(R_WWDSTAT,&RxData);
          Qspi_WWDT_WdgErrCnt[1] = ((RxData >> 1) & 0x0F);
          //check if ErrCtr is incrmented by 2
          if((WWD_ERRCTR_ERR_DETECTED_ONCE == Qspi_WWDT_WdgErrCnt[1])
            ||(Qspi_SBCError.bit.ParityCheck == 1))
          {
            Qspi_WWDT_Status = QSPI_WWDT_EN_WDGTRIG;
          }
          else
          {
            //if ErrCtr is not incremented by 2 in worst case timing, 
            //enable WDG and retry test
            WdgEnable = WWD_TRIG_ENABLE;  //command to enable WWDtigger
            Qspi_WWDT_Status = QSPI_WWDT_RETRY_TEST;
          }
        }
      }
      else
      {
        //if ErrCtr is not incremented by 2 in worst case timing, 
        //enable WDG and retry test
        WdgEnable = WWD_TRIG_ENABLE;  //command to enable WWDtigger
        Qspi_WWDT_Status = QSPI_WWDT_RETRY_TEST;
      }
      break;
    }
    case QSPI_WWDT_EN_WDGTRIG:
    {
      // Enable WDI
      WdgEnable = WWD_TRIG_ENABLE;  //command to enable WWDtigger
      Qspi_WWDT_Status = QSPI_WWDT_RUN_TIMER2;
      break;
    }
    case QSPI_WWDT_RUN_TIMER2:
    {
      //run timer to ensure one period of wdg trigger enabled
      //3ms (+0.5ms tolerance) added for worst case scenario
      if(((4*WWD_PERIOD)+35u) > Qspi_WWDTest_Ctr) //until 31.5ms
      {
        Qspi_WWDTest_Ctr++;
        //start polling err counter at 28ms to check if err counter is set to 1
        //28ms: best case scenario
        if((4*WWD_PERIOD) <= Qspi_WWDTest_Ctr)  //21ms + 7ms = at 28ms
        {
          // Read WWDENCNT
          Qspi_SBC_TxRxData(R_WWDSTAT,&RxData);
          Qspi_WWDT_WdgErrCnt[2] = ((RxData >> 1) & 0x0F);
          //check if ErrCtr is decrmented by 1
          if((WWD_ERRCTR_ERR_CORRECTED_ONCE == Qspi_WWDT_WdgErrCnt[2])
            ||(Qspi_SBCError.bit.ParityCheck == 1))
          {
            Qspi_WWDT_Status = QSPI_WWDT_SUCCESS;
          }
          else
          {
            //if ErrCtr is not incremented by 2 in worst case timing, 
            //end the test and report error
            Qspi_WWDT_Status = QSPI_WWDT_RETRY_TEST;
          }
        }
      }
      else
      {
        //if ErrCtr is not incremented by 2 in worst case timing, 
        //end the test and report error
        Qspi_WWDT_Status = QSPI_WWDT_RETRY_TEST;
      }
      break;
    }
    case QSPI_WWDT_SUCCESS:
    {
      Qspi_SBCError.bit.WWDEnCnt = 0;
      Qspi_StrtUpTst_Sts = QSPI_SBC_WWDTEST_COMPLETED;
      break;
    }
    case QSPI_WWDT_RETRY_TEST:
    {
      //Max 4 attempts for test.
      //retry test 3 times, if test failed the 1st time.
      if(WWDT_MAX_ATTEMPTS > Qspi_WWDTest_RetryCtr)
      {
        Qspi_WWDTest_RetryCtr++;
        Qspi_WWDT_Status = QSPI_WWDT_INIT;
      }
      else
      {
        Qspi_WWDT_Status = QSPI_WWDT_FAULT_DETECTED;
      }
      break;
    }
    case QSPI_WWDT_FAULT_DETECTED:
    default:
    {
      //report error to scheduler module.
      Qspi_SBCError.bit.WWDEnCnt = 1;
      Qspi_StrtUpTst_Sts = QSPI_SBC_WWDTEST_COMPLETED;
      break;
    }
  }/*switch*/
}

void Qspi_SBC_Check_NormalState(void)
{
  u16 RxData;
  
  Qspi_SBCError.bit.NormalState = 0;
  Qspi_SBC_TxRxData(R_DEVSTAT,&RxData);
  if((((RxData >> 1) & 0x07) != 2)||(Qspi_SBCError.bit.ParityCheck == 1))
  {
    if (DEBUGGER_CONNECTED != MODULE_CBS.OSTATE.B.OEN)
    {
      Qspi_SBCError.bit.NormalState = 1;
    }
  }
}

#if 0
void Qspi_SBC_Check_QCOStatus(void)
{
  u16 TxData[3] =
  {R_MONSF1,R_MONSF0,R_OTFAIL};
  u16 RxData[3];
  u16 i;

  Qspi_SBCError.bit.QCOStatus = 0;
  for(i=0;i<3;i++)
  {
    Qspi_SBC_TxRxData(TxData[i],&RxData[i]);
  }

  if(((((RxData[0] >> 1) & 0x10) != 0) || (((RxData[1] >> 1) & 0x10) != 0) || (((RxData[2] >> 1) & 0x10) != 0))
    ||(Qspi_SBCError.bit.ParityCheck == 1))
  {
    Qspi_SBCError.bit.QCOStatus = 1;
  }
}
#endif

void Qspi_SBC_Check_QVRStatus(void)
{
  u16 TxData[3] =
  {R_MONSF1,R_MONSF0,R_OTWRNSF};
  u16 RxData[3];
  u16 i;

  Qspi_SBCError.bit.QVRStatus = 0;
  for(i=0;i<3;i++)
  {
    Qspi_SBC_TxRxData(TxData[i],&RxData[i]);
  }

  if(((((RxData[0] >> 1) & 0x20) != 0) || (((RxData[1] >> 1) & 0x20) != 0) || (((RxData[2] >> 1) & 0x20) != 0))
    ||(Qspi_SBCError.bit.ParityCheck == 1))
  {
    Qspi_SBCError.bit.QVRStatus = 1;
  }
}

void Qspi_SBC_Check_RegStatus(void)
{
  u16 RxData;
  // Check VMONSTAT
  Qspi_SBCError.bit.QVRStatus = 0;
  Qspi_SBC_TxRxData(R_VMONSTAT,&RxData);
#if 1
  Qspi_SBCError.bit.QCOStatus = 0;
  if((((RxData >> 1) & 0x10) != 0x10)||(Qspi_SBCError.bit.ParityCheck == 1))
  {
    Qspi_SBCError.bit.QCOStatus = 1;
  }
#endif
  if((((RxData >> 1) & 0x20) != 0x20)||(Qspi_SBCError.bit.ParityCheck == 1))
  {
    Qspi_SBCError.bit.QVRStatus = 1;
  }
}

void Qspi_SBC_TxRxData(u16 TxData,u16 *RxData)
{
  u16 RxTemp;
  u16 i;

  for(i=0;i<5;i++)
  {
    if(1 != Qspi_SBCError.bit.ParityCheck)
    {
      QSPI0_DATAENTRY0.U = TxData;
      WAIT_SBC_RESPONSE;
      RxTemp = QSPI0_RXEXIT.U;
      if(Qspi_SBC_ParityCheck(RxTemp))
      {
        *RxData = RxTemp;
        Qspi_SBCError.bit.ParityCheck = 0;
        return;
      }
    }
  }
  Qspi_SBCError.bit.ParityCheck = 1;
}

bit Qspi_SBC_ParityCheck(u16 data)
{
  u16 data_temp = data & 0xFFFE;
  bit parity_input = data & 0x0001;
  bit parity_calc = 0;

  while(data_temp)
  {
    parity_calc = !parity_calc;
    data_temp = data_temp & (data_temp - 1);
  }

  return (parity_input == parity_calc);
}

void Qspi_TestCmd_Calc(QSPI_S_TEST_CMD *v)
{
  u16 Cmd_Temp;

  v->bit.Parity = 0;
  Cmd_Temp = v->all;

  while(Cmd_Temp)
  {
    v->bit.Parity = !v->bit.Parity;
    Cmd_Temp = Cmd_Temp & (Cmd_Temp - 1);
  }
}

void Qspi_Cmd_Test10ms(QSPI_S_TEST *v)
{
  if(v->Enable)
  {
    Qspi_TestCmd_Calc(&(v->TxData));
    QSPI0_DATAENTRY0.U = v->TxData.all;
    WAIT_SBC_RESPONSE;
    v->RxData.all = QSPI0_RXEXIT.U;
    v->Enable = 0;
  }
}
#define MPU_ASIL_STOP_SEC_CODE
#include "MPU_MemMap.h"
