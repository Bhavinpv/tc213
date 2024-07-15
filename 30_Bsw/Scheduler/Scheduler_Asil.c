/*******************************************************************************
 * Filename   : Scheduler.c
 * Project    : IPB
 * Author(s)  : deparap
 * Created    : 08.08.2022
 * Description:
 *
 * Last modification:
 *  on $Date$
 *  by $Author$
 *  current $Revision$
 *
 * Compiler info : HighTec Tricore-gcc v4.6.6.1
 * Processor info: Aurix Tricore TC213L
 *
 * Copyright (c) 2014 Delta Energy Systems (Germany) GmbH.
 * All rights reserved.
 ******************************************************************************/

#include "Scheduler_api.h"
#include "Main_api.h"
#include "iohwsf_IsrMon.h"
#include "iohwsf.h"
#include "Pma_api.h"
#include "Port_api.h"
#include "Gtm_api.h"
#define MAX_TESTSEQUENCE_IDX      2000
/*******************************************************************************
 * Local data
 ******************************************************************************/
#define MPU_ASIL_START_SEC_VAR_NOINIT
#include "MPU_MemMap.h"

SCH_S_CPULOAD CpuLoadSts;
HSFBAPP_S_STATUS Isr_AppStatus;
PFM_S_CAPTURE Pfm_Capture;
f32 IsrTimeFil;
u16 Main_DebugErrCode;
u16 Main_ResetCnt;
u16 Isr_15usTick;
u16 Isr_100usTick;
bit SafetyError[4];
ISR_S_TIMEMEAS Isr_TimeMeas;
QSPI_S_TEST Qspi_Test;
volatile u16 DebugCap[50];
volatile static u8 i = 0;
static u16 Comm_u16CanErrCode;
//static SCH_S_TIMER Timersts;
//// for debug
// f32 Debug[3];
#define MPU_ASIL_STOP_SEC_VAR_NOINIT
#include "MPU_MemMap.h"

#if (MEMORY_PROTECTION_ENABLED)
#define MPU_ASIL_START_SEC_VAR_INIT
#include "MPU_MemMap.h"
static u32 Timer_value          = 0u;
static u32 Timer_history        = 0u;
static u32 WdgStopTrigger       = 0xFFFFFFFFu;
static u16 Isr_15us_Fire_Count  = 0u;                     /* Count 15us ISR occurrences */
static u16 Isr_100us_Fire_Count = 0u;                    /* Count 100us ISR occurrences */
static u8  Isr_1ms_Fire_Count   = 0u;                      /* Count 1ms ISR occurrences */
static u16 Qspi_TstSeqIndx      = 0xFFFFu;
static u8  Pfm_flag             = PFM_CHK_FIRST_INSTANCE;
#define MPU_ASIL_STOP_SEC_VAR_INIT
#include "MPU_MemMap.h"


#endif /* MEMORY_PROTECTION_ENABLED */

/*******************************************************************************
 * Global functions declaration
 ******************************************************************************/
static void __attribute__ ((noinline)) mg_vASIL_1msTask(void);
static void mg_vIsr_TimeMeasCalc(ISR_S_TIMEMEAS *v,u16 num,bit sign,u16 tick);
static void mg_vPfm_IsrCounterChk(void);
static void Isr_AppStatus10ms(void);
static void Isr_ErrorDis10ms(void);
static void Isr_SafetyError10ms(void);

/*******************************************************************************
 * Local functions declaration
 ******************************************************************************/

#define MPU_ASIL_START_SEC_CODE
#include "MPU_MemMap.h"

/*******************************************************************************
 * Function:       Isr_Call15us
 *
 * Parameters:      -
 *
 * Returned value:  -
 *
 * Description:     15us Interrupt Service Routine
 *
 ******************************************************************************/
void __attribute__ ((interrupt_handler)) Isr_Call15us(void)
{
#if (MEMORY_PROTECTION_ENABLED)
  mpu_vSet_ActiveProtSet(PROTECTION_SET_0);
#endif /* MEMORY_PROTECTION_ENABLED */
  if(PROTECTION_SET_0 == PSWReg_Rd0.B.PRS)
  {
//    __asm ("enable");
    mg_vIsr_TimeMeasCalc(&Isr_TimeMeas,TM_ISR0,TM_START,Isr_15usTick);
    IOHWSF_ACCESSPROT_vSwitchToSafeISR();
    if(1 == PSWReg_Rd0.B.S)
    {
      // Call 15us - ASIL
      switch(Isr_15usTick)
      {
        case 0:
          HsfbApp_Call15us();
          Isr_15usTick = 1;
          break;
        case 1:
          HsfbApp_Call15us1();
          Gtm_PwmEnDis_Calc();
          Isr_15usTick = 0;
          break;
//        case 2:
//          Isr_15usTick = 0;
//          break;
        default:
          Isr_15usTick = 0;
          break;
      }
       mg_vIsr_TimeMeasCalc(&Isr_TimeMeas,TM_ISR0,TM_END,Isr_15usTick);

      if (Pfm_flag == PFM_CHK_NOT_FIRST_INSTANCE)
      {
        if(Isr_15us_Fire_Count != ISR_COUNT_MAX_16BIT)
        {
          Isr_15us_Fire_Count++;
        }
      }
    }
  }
  #if (MEMORY_PROTECTION_ENABLED)
  else
  {
    TRUSTED_Mpu_Err = MPU_PROTSET_INCORRECT;
  }
  #endif /* MEMORY_PROTECTION_ENABLED */
}

/*******************************************************************************
 * Function:       Isr_Call100us
 *
 * Parameters:      -
 *
 * Returned value:  -
 *
 * Description:     100us Interrupt Service Routine
 *
 ******************************************************************************/

void __attribute__ ((interrupt_handler)) Isr_Call100us(void)
{
#if (MEMORY_PROTECTION_ENABLED)
  mpu_vSet_ActiveProtSet(PROTECTION_SET_0);
#endif /* MEMORY_PROTECTION_ENABLED */
  if(PROTECTION_SET_0 == PSWReg_Rd0.B.PRS)
  {
//    __asm ("enable");
    // Call 100us - ASIL
    mg_vIsr_TimeMeasCalc(&Isr_TimeMeas,TM_ISR1,TM_START,0);
    IOHWSF_ACCESSPROT_vSwitchToSafeISR();
   if(1 == PSWReg_Rd0.B.S)
    {
		HsfbApp_Call100us();
		Gtm_CheckPwmStatus();
		if(Gtm_WDIDisCnt > 100)
		{
			//Stop SBC WDI here
			Flag_WDIDis = 1;
		}
		if((PFM_STS_FAIL_MAX_COUNT_REACHED == Pfm_Capture.Sts)
		 ||(QSPI_MAX_ERR_CNT == Main_ResetCnt)
		 ||(MPU_NO_ERROR != TRUSTED_Mpu_Err))
		{
		  __asm("disable");
		  for(WdgStopTrigger = 0u; WdgStopTrigger < 1450000U ; WdgStopTrigger++) //50ms +/- 10% buffer
		  {
			__asm("nop");
		  }
		  /* If SBC does not reset the micro controller within FTTI (50ms),      *
		   * report error to iohw module with TLF error detection failure info.  *
		   * IoHw module will perform system reset                               */
		  IOHWSF_vDefaultErrorHandler(IOHWSF_E_TLF_ERR_DETECTION_TIMEOUT);
		}
		else
		{
		  if(WDG_TIMEOUT > Isr_100us_Fire_Count)
		  {
			if(Pfm_Capture.Sts == PFM_STS_VALID && !Flag_WDIDis)
			{
			  /* Trigger the WDG only if the status is valid and PFM check was done within 10ms*/
			  //failure: Errcnt +2, correct trigger: ErrCnt -1
			  SBC_Triger100us();
			  if((QSPI_SBC_NORMAL_AFTER_ABIST == Qspi_StrtUpTst_Sts)
			   ||(QSPI_SBC_WWDTEST_RUNNING == Qspi_StrtUpTst_Sts))
			  {
				Qspi_SBC_WWDTest();
				Qspi_TstSeqIndx++;
			  }
			}
		  }
		  else if(WDG_TIMEOUT < Isr_100us_Fire_Count)
		  {
			/* 10ms are done and last PFM status is no more valid. */
			Pfm_Capture.Sts = PFM_STS_INVALID;
			/* Do not trigger WDG. Wait for PFM check to be completed or WDG reset. */
		  }
	  #if 0
	  //	Gtm_DebugPwmScope(1.0*(MeasStatus100us.Vout.Real - MeasStatus100us.VoutDiag.Real) + 1.5,1,1);
	  //	Gtm_DebugPwmScope(0.5*(MeasStatus100us.Vout.Real - 14.3) + 0.5,1,1);
	  //	Gtm_DebugPwmScope(0.01*(MeasStatus100us.Iout.Real - 200),1,1);
	  //	Gtm_DebugPwmScope(0.045*WdgCnt,1,1);
//
//		Gtm_DebugPwmScope(0.0033*(HsfbCtrl_DW.RiseCnt-4500),1,1);
//		Gtm_DebugPwmScope(FlagRecharge,1,1);
//    Gtm_DebugPwmScope(15*Ikl30,1,1);


	  #endif /*0*/
	  #if MAIN_DEBUG
		Main_Debug100us();
	  #endif
		}
		 mg_vIsr_TimeMeasCalc(&Isr_TimeMeas,TM_ISR1,TM_END,0);

		if (Pfm_flag == PFM_CHK_NOT_FIRST_INSTANCE)
		{
		  if(Isr_100us_Fire_Count != ISR_COUNT_MAX_16BIT)
		  {
			Isr_100us_Fire_Count++;
		  }
		}
	  }
  	}

	#if (MEMORY_PROTECTION_ENABLED)
	  else
	  {
		TRUSTED_Mpu_Err = MPU_PROTSET_INCORRECT;
	  }
	#endif /* MEMORY_PROTECTION_ENABLED */
}

/*******************************************************************************
 * Function:       mg_vASIL_1msTask
 *
 * Parameters:      -
 *
 * Returned value:  -
 *
 * Description:     1ms ASIL task
 *
 ******************************************************************************/
static void __attribute__((noinline)) mg_vASIL_1msTask(void)
{
  //Call 1ms - ASIL
  CANDriver_Diag(&Comm_u16CanErrCode);
  ComServ_1msTask();
  HsfbApp_Call1ms();
  ORU_LatchTest1ms();
  if(0 == Main_InitFin)
  {
    if(QSPI_TEST_INIT == Qspi_StrtUpTst_Sts)
    {
      Qspi_StrtUpTst_Sts = QSPI_TEST_STARTED;
      Qspi_TstSeqIndx = 0u;
    }
    if(QSPI_TEST_FINISHED != Qspi_StrtUpTst_Sts)
    {
      //if QSPI startup tests do not finish in 2000 calls, reset SBC in max 50ms.
      if(MAX_TESTSEQUENCE_IDX > Qspi_TstSeqIndx)
      {
        //allowing max retry attempts for all tests to finish successfully
        //worst case count <1700
        //best case scount <600
        Qspi_StartUp();
        Qspi_TstSeqIndx++;
      }
      else
      {
        //Max 4 QSPI errors allowed.
        Main_ResetCnt++;
      }
    }
    else
    {
      Main_InitFin = 1;
    }
  }
}

/*******************************************************************************
 * Function:       Isr_Call1ms
 *
 * Parameters:      -
 *
 * Returned value:  -
 *
 * Description:     1ms Interrupt Service Routine
 *
 ******************************************************************************/
void __attribute__ ((interrupt_handler)) Isr_Call1ms(void)
{
#if (MEMORY_PROTECTION_ENABLED)
  mpu_vSet_ActiveProtSet(PROTECTION_SET_0);
#endif /* MEMORY_PROTECTION_ENABLED */
  if(PROTECTION_SET_0 == PSWReg_Rd0.B.PRS)
  {
//    __asm ("enable");
     mg_vIsr_TimeMeasCalc(&Isr_TimeMeas,TM_ISR2,TM_START,0);
    // Call 1ms - ASIL
    mg_vASIL_1msTask();
    
  }
#if (MEMORY_PROTECTION_ENABLED)
  else
  {
    TRUSTED_Mpu_Err = MPU_PROTSET_INCORRECT;
  }
#endif /* MEMORY_PROTECTION_ENABLED */

#if (MEMORY_PROTECTION_ENABLED)
  mpu_vSet_ActiveProtSet(PROTECTION_SET_1);
  if(PROTECTION_SET_1 == PSWReg_Rd1.B.PRS)
  {
    // Call 1ms - QM
    mg_vQmTaskCall();
  }
  else
  {
    TRUSTED_Mpu_Err = MPU_PROTSET_INCORRECT;
  }
#else
  mg_vIsr_TimeMeasCalc(&Isr_TimeMeas,TM_ISR2,TM_START,0);
  //Call 1ms - ASIL
  mg_vASIL_1msTask();
  // Call 1ms - QM
  mg_vQmTaskCall();
  mg_vIsr_TimeMeasCalc(&Isr_TimeMeas,TM_ISR2,TM_END,0);
#endif /*MEMORY_PROTECTION_ENABLED*/

#if (MEMORY_PROTECTION_ENABLED)
  mpu_vSet_ActiveProtSet(PROTECTION_SET_2);
#endif /* MEMORY_PROTECTION_ENABLED */
  if(PROTECTION_SET_2 == PSWReg_Rd2.B.PRS)
  {
    
    mg_vQmTaskCall();
  
  }
#if (MEMORY_PROTECTION_ENABLED)
  else
  {
    TRUSTED_Mpu_Err = MPU_PROTSET_INCORRECT;
  }
#endif /* MEMORY_PROTECTION_ENABLED */


#if (MEMORY_PROTECTION_ENABLED)
  mpu_vSet_ActiveProtSet(PROTECTION_SET_0);
#endif /* MEMORY_PROTECTION_ENABLED */
  if(PROTECTION_SET_0 == PSWReg_Rd0.B.PRS)
  {
    /* trusted QM variable to check for UDS Reset request */
    if(Trusted_UdsRstReq_Flag)
    {
      Trusted_UdsRstReq_Flag = FALSE;
      Uds_ASILTask();
    }
     mg_vIsr_TimeMeasCalc(&Isr_TimeMeas,TM_ISR2,TM_END,0);
    if (Pfm_flag == PFM_CHK_NOT_FIRST_INSTANCE)
    {
      if(Isr_1ms_Fire_Count != ISR_COUNT_MAX_8BIT)
      {
        Isr_1ms_Fire_Count++;
      }
    }
  }
#if (MEMORY_PROTECTION_ENABLED)
  else
  {
    TRUSTED_Mpu_Err = MPU_PROTSET_INCORRECT;
  }
#endif /* MEMORY_PROTECTION_ENABLED */
}

/*******************************************************************************
 * Function:       Isr_Call10ms
 *
 * Parameters:      -
 *
 * Returned value:  -
 *
 * Description:     10ms Interrupt Service Routine
 *
 ******************************************************************************/
void __attribute__ ((interrupt_handler)) Isr_Call10ms(void)
{
#if (MEMORY_PROTECTION_ENABLED)
  mpu_vSet_ActiveProtSet(PROTECTION_SET_0);
#endif /* MEMORY_PROTECTION_ENABLED */
  if(PROTECTION_SET_0 == PSWReg_Rd0.B.PRS)
  {
//    __asm ("enable");
    // Call 10ms - ASIL
     mg_vIsr_TimeMeasCalc(&Isr_TimeMeas,TM_ISR3,TM_START,0);
    ComServ_10msTask();
    Isr_AppStatus10ms();
    Isr_ErrorDis10ms();
    Isr_SafetyError10ms();
    Safety_Check10ms();
    HsfbApp_Call10ms();
    // debug
    Qspi_SBC_Check10ms();
    Qspi_Cmd_Test10ms(&Qspi_Test);
    Adc_ShortDetect_10ms();
    Port_OTP_AutoDiag10ms();
    Port_AuxPower_EnDis10ms();
    if (Pfm_flag == PFM_CHK_NOT_FIRST_INSTANCE)
    {
      Timer_history = Timer_value;
      Timer_value = STM0_TIM1.U;
    }
    mg_vPfm_IsrCounterChk();
    mg_vIsr_TimeMeasCalc(&Isr_TimeMeas,TM_ISR3,TM_END,0);
  }
#if (MEMORY_PROTECTION_ENABLED)
  else
  {
    TRUSTED_Mpu_Err = MPU_PROTSET_INCORRECT;
  }
#endif /* MEMORY_PROTECTION_ENABLED */
}

/*******************************************************************************
 * Function:       mg_vPfm_IsrCounterChk
 *
 * Parameters:      -
 *
 * Returned value:  -
 *
 * Description:     Program flow monitoring to monitor ISR occurrences and 
 *                  servicing time for each interrupt
 *
 ******************************************************************************/
static void mg_vPfm_IsrCounterChk(void)
{
  /* After first instance of 10ms interrupt */
  if (Pfm_flag == PFM_CHK_NOT_FIRST_INSTANCE)
  {
    Pfm_Capture.Sts = PFM_STS_INIT;
    /* Failed instances check */
    if(Pfm_Capture.FailureCnt != PFM_CHK_FAILED_COUNT_MAX)
    {
      /* Check whether PFM check has not yet detected 10 failures */
      if ((Isr_15us_Fire_Count != ISR_COUNT_MAX_16BIT) || (Isr_100us_Fire_Count != ISR_COUNT_MAX_16BIT) || (Isr_1ms_Fire_Count != ISR_COUNT_MAX_8BIT))
      {
        /* No overflow detected: Capture new counter values and deduct captured instances from actual counter */
          Pfm_Capture.Isr_15usCnt = Isr_15us_Fire_Count;
          Isr_15us_Fire_Count -= Pfm_Capture.Isr_15usCnt;
          Pfm_Capture.Isr_100usCnt = Isr_100us_Fire_Count;
          Isr_100us_Fire_Count -= Pfm_Capture.Isr_100usCnt;
          Pfm_Capture.Isr_1msCnt = Isr_1ms_Fire_Count;
          Isr_1ms_Fire_Count -= Pfm_Capture.Isr_1msCnt;
        /*Calculate time between previous and current 10ms interrupt*/
        if(Timer_value > Timer_history)
        {
          Pfm_Capture.TimerDiff_10ms = Timer_value - Timer_history;
        }
        else
        {
          Pfm_Capture.TimerDiff_10ms = (0xFFFFFFFF-Timer_history)+Timer_value;
        }
        /* Verify whether all interrupts have occurred in their tolerance range: +/-40% of actual time */
        if (((ISR_15US_COUNT_MIN  < Pfm_Capture.Isr_15usCnt)    && (ISR_15US_COUNT_MAX  > Pfm_Capture.Isr_15usCnt))          //expected: 667 allowed range: 400-935
         && ((ISR_100US_COUNT_MIN < Pfm_Capture.Isr_100usCnt)   && (ISR_100US_COUNT_MAX > Pfm_Capture.Isr_100usCnt))         //expected: 100 allowed range: 60 -140
         && ((ISR_1MS_COUNT_MIN   < Pfm_Capture.Isr_1msCnt)     && (ISR_1MS_COUNT_MAX   > Pfm_Capture.Isr_1msCnt))           //expected: 10 allowed range: 6 - 14
         && ((ISR_10MS_COUNT_MIN  < Pfm_Capture.TimerDiff_10ms) && (ISR_10MS_COUNT_MAX  > Pfm_Capture.TimerDiff_10ms)))      //expected: 62500 allowed range: 37500 - 87500 STM timer compared to GTM TOM1CH14
        {
          Pfm_Capture.Sts = PFM_STS_VALID;
        }
        else
        {
          Pfm_Capture.Sts = PFM_STS_COUNTERS_OUT_OF_RANGE;
          Pfm_Capture.FailureCnt++;
        }
      }
      else
      {
        /* Interrupts are too fast or too slow */
        Pfm_Capture.Sts = PFM_STS_COUNTERS_OVERFLOW;
        Pfm_Capture.FailureCnt++;
      }
    }
    else
    {
      /* PFM check has detected 10 failures already */
      Pfm_Capture.Sts = PFM_STS_FAIL_MAX_COUNT_REACHED;
      Pfm_flag = PFM_CHK_FAILED_INSTANCE;
    }
#if(PFM_DEBUG_ENABLE)
    if(0xFFFF != loopcount)
    {
      loopcount++;
    }
    else
    {
      loopcount = 0;
    }
#endif/*PFM_DEBUG_ENABLE*/
  }
  /* First instance of 10ms interrupt */
  else if (Pfm_flag == PFM_CHK_FIRST_INSTANCE)
  {
    /* Capture STM timer for further reference and ensure that all other ISR counters worked correctly for first 10ms instance. */
    Pfm_Capture.Sts = PFM_STS_INIT;
    Pfm_Capture.FailureCnt = PFM_CHK_FAILED_COUNT_INIT;
    Timer_value = STM0_TIM1.U;
    Isr_15us_Fire_Count = ISR_COUNT_INIT;
    Isr_100us_Fire_Count = ISR_COUNT_INIT;
    Isr_1ms_Fire_Count  = ISR_COUNT_INIT;
    Pfm_Capture.Isr_15usCnt = ISR_COUNT_INIT;
    Pfm_Capture.Isr_100usCnt = ISR_COUNT_INIT;
    Pfm_Capture.Isr_1msCnt = ISR_COUNT_INIT;
  }

  if ((Pfm_Capture.Sts != PFM_STS_VALID) && (Pfm_Capture.Sts != PFM_STS_FAIL_MAX_COUNT_REACHED))
  {
    if(Pfm_flag != PFM_CHK_FIRST_INSTANCE)
    {
#if (PMA_ENABLE)
      Pma_vGetPfmSts(&Pfm_Capture);
#endif /*PMA_ENABLE*/
    }
    Isr_15us_Fire_Count = ISR_COUNT_INIT;
    Isr_100us_Fire_Count = ISR_COUNT_INIT;
    Isr_1ms_Fire_Count  = ISR_COUNT_INIT;
    Pfm_Capture.Isr_15usCnt = ISR_COUNT_INIT;
    Pfm_Capture.Isr_100usCnt = ISR_COUNT_INIT;
    Pfm_Capture.Isr_1msCnt = ISR_COUNT_INIT;
    Pfm_flag = PFM_CHK_NOT_FIRST_INSTANCE;
  }
}

/*******************************************************************************
 * Function:       Isr_TimeMeasCalc
 *
 * Parameters:      -
 *
 * Returned value:  -
 *
 * Description:     
 *
 ******************************************************************************/
static void mg_vIsr_TimeMeasCalc(ISR_S_TIMEMEAS *v,u16 num,bit sign,u16 tick)
{
	int i;

	// num error
	if(num >= TM_ISR_NUM) return;

	// isr time
  /* Disable interrupts to get accurate time measurements 
     at start and end of each ISR.                        */
	__asm ("disable");
	v->IsrLog[1] = v->IsrLog[0];
// 	v->IsrLog[0] = timVal;
 	v->IsrLog[0] = TIME_REG;
	if(v->IsrLog[0] > v->IsrLog[1])
	{
		v->IsrDev[num] = v->IsrLog[0] - v->IsrLog[1];
	}
	else
	{
		v->IsrDev[num] = v->IsrLog[0] + (0xFFFFFFFF - v->IsrLog[1]) ;
	}
	v->IsrSign[num] = sign;
	if(sign)
	{
		v->IsrStart[num][1] = v->IsrStart[num][0];
		v->IsrStart[num][0] = v->IsrLog[0];
		v->IsrPeriod[num] = v->IsrStart[num][0] - v->IsrStart[num][1];
	}
  /* - CPU disables the global interrupt system when entering an ISR.
       Enable the global interrupt system for nested interrupts
     - Enable interrupts after getting accurate time measurements
       at start and end of each ISR. */
 	__asm ("enable");

 	// start & end
	if(sign)
	{
		v->IsrTime[num] = 0;
		for(i=0;i<TM_ISR_NUM;i++)
		{
			if(v->IsrSign[i] && i!=num)
			{
				v->IsrTime[i] += v->IsrDev[num];
				break;
			}
		}
	}
	else
	{
		v->IsrTime[num] += v->IsrDev[num];
		v->IsrTimeAvr[num] = v->IsrTime[num];
		if(tick >= TM_TICK_NUM) return;
		v->IsrTimeOut[num][tick] = v->IsrTime[num];
	}
}

/*******************************************************************************
 * Function:       Isr_AppStatus10ms
 *
 * Parameters:      -
 *
 * Returned value:  -
 *
 * Description:     ISR timing measurement
 *
 ******************************************************************************/
static void Isr_AppStatus10ms(void)
{
//#if 1
//	f32 IsrTime15usMax;
	f32 IsrTime15usAvr;
	f32 IsrTime100usAvr;
	f32 IsrTimeTotal;

	// Cpu Counter
	Isr_AppStatus.CpuTime = ((u16)(0.0105*STM0_TIM5.U) & 0x000F) | ((u16)HWVER_VER << 4);
	// Direction
//	Isr_AppStatus.ComMode = (HsfbPwm_Status.Operation << 1) | (HsfbPwm_ToMor.TopologyOut << 0);
	Isr_AppStatus.Operation = HsfbPwm_Status.Operation;
	Isr_AppStatus.Topology = HsfbPwm_ToMor.TopologyOut;
	// Isr Time
//	IsrTime15usMax = MAX(Isr_TimeMeas.IsrTimeOut[TM_ISR0][0],Isr_TimeMeas.IsrTimeOut[TM_ISR0][1]);
//  IsrTime15usAvr = 0.33333*(Isr_TimeMeas.IsrTimeOut[TM_ISR0][0]
//                          + Isr_TimeMeas.IsrTimeOut[TM_ISR0][1]
//                          + Isr_TimeMeas.IsrTimeOut[TM_ISR0][2]);
    IsrTime15usAvr = 0.5*( Isr_TimeMeas.IsrTimeOut[TM_ISR0][0]
			           + Isr_TimeMeas.IsrTimeOut[TM_ISR0][1]);
	IsrTime100usAvr = Isr_TimeMeas.IsrTimeOut[TM_ISR1][0];
	// STM: 100MHz -> 0.01us
	// CPU Loading = (6.5*15usTime + 100usTime + ...) / 100us = 0.01us*(6.5*15usCnt + 100usCnt + ...) / 100us
	// 			   = 0.01*(6.5*15usCnt + 100usCnt + ...) (%)
	IsrTimeTotal = 0.01*(6.50*IsrTime15usAvr +
						 1.00*IsrTime100usAvr +
						 0.10*Isr_TimeMeas.IsrTimeAvr[2] +
						 0.01*Isr_TimeMeas.IsrTimeAvr[3]);
	if(IsrTimeTotal < 100)
	{
		IsrTimeFil += 0.01*(IsrTimeTotal - IsrTimeFil);
		Isr_AppStatus.IsrTime = IsrTimeFil;
	}
//#endif

#if 0
    /* Maximum time taken by any time slice within Isr_Call15us
    max = (n1 > n2) ?
          (n1 > n3 ? n1 : n3) :
          (n2 > n3 ? n2 : n3)*/
  // IsrTime15usAvr = ((Isr_TimeMeas.IsrTimeOut[TM_ISR0][0] > Isr_TimeMeas.IsrTimeOut[TM_ISR0][1])?
  //                   (Isr_TimeMeas.IsrTimeOut[TM_ISR0][0] > Isr_TimeMeas.IsrTimeOut[TM_ISR0][2] ? Isr_TimeMeas.IsrTimeOut[TM_ISR0][0] : Isr_TimeMeas.IsrTimeOut[TM_ISR0][2]):
  //                   (Isr_TimeMeas.IsrTimeOut[TM_ISR0][1] > Isr_TimeMeas.IsrTimeOut[TM_ISR0][2] ? Isr_TimeMeas.IsrTimeOut[TM_ISR0][1] : Isr_TimeMeas.IsrTimeOut[TM_ISR0][2])) ;
    /* Maximum time taken by any time slice within Isr_Call15us
    max = ((n1 > n2) ? n1 : n2)*/
  // IsrTime15usAvr = ((Isr_TimeMeas.IsrTimeOut[TM_ISR0][0] > Isr_TimeMeas.IsrTimeOut[TM_ISR0][1])? Isr_TimeMeas.IsrTimeOut[TM_ISR0][0] : Isr_TimeMeas.IsrTimeOut[TM_ISR0][1]);
  // IsrTime15usAvr = ((Isr_TimeMeas.IsrPeriod[TM_ISR0][0] > Isr_TimeMeas.IsrPeriod[TM_ISR0][1])? Isr_TimeMeas.IsrPeriod[TM_ISR0][0] : Isr_TimeMeas.IsrPeriod[TM_ISR0][1]);
  /*
  STM: 100MHz -> 0.01us
  GTM CLK FREQ of ISR1: 65KHz -> 0.0650MHz -> 15us
  GTM CLK FREQ of ISR2: 10KHz -> 0.0100MHz -> 100us
  GTM CLK FREQ of ISR3: 1KHz  -> 0.0010MHz -> 1ms
  GTM CLK FREQ of ISR4: 100Hz -> 0.0001MHz -> 10ms
  IsrTimeTotal in % = (1- ((1- ((GTM CLK FREQ of ISR1 in MHz * Isr1Avr)/100)) * 
                           (1- ((GTM CLK FREQ of ISR2 in MHz * Isr2Avr)/100)) *  
                           (1- ((GTM CLK FREQ of ISR3 in MHz * Isr3Avr)/100)) *
                           (1- ((GTM CLK FREQ of ISR4 in MHz * Isr4Avr)/100)) *.....) *100
  */
 
  f32 IsrTime15us;
  f32 IsrTime15us1;

  
	// Cpu Counter
	Isr_AppStatus.CpuTime = ((u16)(0.0105*STM0_TIM5.U) & 0x000F) | ((u16)HWVER_VER << 4);
	// Direction
//	Isr_AppStatus.ComMode = (HsfbPwm_Status.Operation << 1) | (HsfbPwm_ToMor.TopologyOut << 0);
	Isr_AppStatus.Operation = HsfbPwm_Status.Operation;
	Isr_AppStatus.Topology = HsfbPwm_ToMor.TopologyOut;

  IsrTime15us   = Timersts.Isr_15us_End-Timersts.Isr_15us_Start;
  IsrTime15us1  = Timersts.Isr_15us1_End-Timersts.Isr_15us1_Start;
  CpuLoadSts.Isr_15us_avg   = ((IsrTime15us > IsrTime15us1) ? IsrTime15us:IsrTime15us1);
  
  CpuLoadSts.Isr_15us_avg   = (f32)100*(((f32)CpuLoadSts.Isr_15us_avg)/((f32)1500));
  CpuLoadSts.Isr_100us_avg  = (f32)100*(((f32)Timersts.Isr_100us_End-Timersts.Isr_100us_Start)/((f32)10000));
  CpuLoadSts.Isr_1ms_avg    = (f32)100*(((f32)Timersts.Isr_1ms_End-Timersts.Isr_1ms_Start)/((f32)100000));
  CpuLoadSts.Isr_10ms_avg   = (f32)100*(((f32)Timersts.Isr_10ms_End - Timersts.Isr_10ms_Start)/((f32)1000000));

  CpuLoadSts.Calc = (f32)(((f32)1- (((f32)1-((f32)CpuLoadSts.Isr_15us_avg*(f32)0.01)) *
                                    ((f32)1-((f32)CpuLoadSts.Isr_100us_avg*(f32)0.01)) *
                                    ((f32)1-((f32)CpuLoadSts.Isr_1ms_avg*(f32)0.01)) *
                                    ((f32)1-((f32)CpuLoadSts.Isr_10ms_avg*(f32)0.01)))) * (f32)100);

  if(100u >= CpuLoadSts.Calc)
  {
    if(Pma_AbortData.CpuLoadMin > (u32)CpuLoadSts.Calc)
    {
      Pma_AbortData.CpuLoadMin = (u32)CpuLoadSts.Calc;
    }
    if(Pma_AbortData.CpuLoadMax < (u32)CpuLoadSts.Calc)
    {
      Pma_AbortData.CpuLoadMax = (u32)CpuLoadSts.Calc;
    }
  }
#endif
  if(Pma_AbortData.CpuLoadMin > Isr_AppStatus.IsrTime)
  {
    Pma_AbortData.CpuLoadMin = Isr_AppStatus.IsrTime;
  }
  if(Pma_AbortData.CpuLoadMax < Isr_AppStatus.IsrTime)
  {
    Pma_AbortData.CpuLoadMax = Isr_AppStatus.IsrTime;
  }
}

/*******************************************************************************
 * Function:       Isr_ErrorDis10ms
 *
 * Parameters:      -
 *
 * Returned value:  -
 *
 * Description:     
 *
 ******************************************************************************/
static void Isr_ErrorDis10ms(void)
{
	#define BUCKVOLTAGE_DIS		((u16)1 << 0)

	if(ComServ_DevRx.B2.ErrorDis)
	{
		HsfbDiag_ErrMask.ErrMask3 = HSFBDIAG_ERRMASK3 & (~(BUCKVOLTAGE_DIS));
		Qspi_SBCError.all = 0;
	}
	else
	{
		HsfbDiag_ErrMask.ErrMask3 = HSFBDIAG_ERRMASK3;
	}
}

/*******************************************************************************
 * Function:       Isr_SafetyError10ms
 *
 * Parameters:      -
 *
 * Returned value:  -
 *
 * Description:     
 *
 ******************************************************************************/
static void Isr_SafetyError10ms(void)
{
  SafetyError[0] = (Safety_CfgError.all != 0);	// DspError
  SafetyError[1] = (Qspi_SBCError.all != 0);		// SbcError
  SafetyError[2] = (CanE2E.RxErrOut != 0);		// E2EError
  SafetyError[3] = 0;
#if(PMA_ENABLE)
  if((SafetyError[1])&&(QSPI_TEST_FINISHED == Qspi_StrtUpTst_Sts))
  {
    Pma_vGetQspiSts(&(Qspi_SBCError.bit));
  }
  if(SafetyError[2])
  {
    Pma_vGetE2eSts(&CanE2E);
  }
#endif/*PMA_ENABLE*/
  // debug
  if((Qspi_SBCError.all)&&(QSPI_TEST_FINISHED == Qspi_StrtUpTst_Sts))
  {
    Main_DebugErrCode = (Qspi_SBCError.all & 0xFFFF);
  }
  else
  {
    Main_DebugErrCode = 0;
  }

  // reset
  if((Qspi_SBCError.all)&&(QSPI_TEST_FINISHED == Qspi_StrtUpTst_Sts))
  {
    if(QSPI_SBC_QVR_ERR != Qspi_SBCError.all&&0xFFFF)
    {
      //Max 4 errors allowed, after which SBC reset shall be requested
      Main_ResetCnt++;
    }
    else
    {
      //Do not perform a reset in case of QVR error.
      //Only report the error on Internal CAN.
    }
  }
  else
  {
    Main_ResetCnt = 0;
  }
}

#define MPU_ASIL_STOP_SEC_CODE
#include "MPU_MemMap.h"




