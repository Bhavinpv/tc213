/*******************************************************************************
 * Filename   : Scheduler_api.h
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

#ifndef SCHEDULER_API_H
#define SCHEDULER_API_H

#include "project.h"
#include "Platform_Types.h"
#include "StandardTypes.h"
#include "Safety_cfg.h"
#include "can_driver.h"
#include "ComServ_api.h"
#include "ComServ_scb.h"
#include "mpu_api.h"
#include "mpu_cfg.h"
#include "IfxCpu.h"
#include "IfxScuWdt.h"
#include "IfxStm_reg.h"
#include "HsfbApp.h"
#include "Adc_scb.h"
#include "can_driver.h"
#include "Gtm_api.h"
#include "Port_api.h"
#include "Qspi.h"
#include "Tp.h"
#include "Uds.h"
#include "iohwsf_AccessProt.h"

#define PFM_CHK_NOT_FIRST_INSTANCE      0u
#define PFM_CHK_FIRST_INSTANCE          1u
#define PFM_CHK_FAILED_INSTANCE         2u

#define PFM_STS_INIT                    0u
#define PFM_STS_COUNTERS_OUT_OF_RANGE   1u
#define PFM_STS_COUNTERS_OVERFLOW       2u
#define PFM_STS_FAIL_MAX_COUNT_REACHED  3u
#define PFM_STS_VALID                   15u
#define PFM_STS_INVALID                 0xFFu

#define ISR_COUNT_INIT                  0u
#define ISR_COUNT_MAX_16BIT             0xFFFFu
#define ISR_COUNT_MAX_8BIT              0xFFu

/* 10% tolerance */
// #define ISR_15US_COUNT_MIN              600u
// #define ISR_15US_COUNT_MAX              734u
// #define ISR_100US_COUNT_MIN             90u
// #define ISR_100US_COUNT_MAX             110u
// #define ISR_1MS_COUNT_MIN               9u
// #define ISR_1MS_COUNT_MAX               11u
// #define ISR_10MS_COUNT_MIN              56250u
// #define ISR_10MS_COUNT_MAX              68750u

/*15% tolerance*/
//#define ISR_15US_COUNT_MIN              567u
//#define ISR_15US_COUNT_MAX              767u
//#define ISR_100US_COUNT_MIN             85u
//#define ISR_100US_COUNT_MAX             115u
//#define ISR_1MS_COUNT_MIN               8u
//#define ISR_1MS_COUNT_MAX               12u
//#define ISR_10MS_COUNT_MIN              53125u
//#define ISR_10MS_COUNT_MAX              71875u

/*20% tolerance*/
// #define ISR_15US_COUNT_MIN              533u  
// #define ISR_15US_COUNT_MAX              801u  
// #define ISR_100US_COUNT_MIN             80u   
// #define ISR_100US_COUNT_MAX             120u  
// #define ISR_1MS_COUNT_MIN               8u    
// #define ISR_1MS_COUNT_MAX               12u   
// #define ISR_10MS_COUNT_MIN              50000u
// #define ISR_10MS_COUNT_MAX              75000u

/*40% tolerance*/
#define ISR_15US_COUNT_MIN              400u      //25us
#define ISR_15US_COUNT_MAX              935u      //10.7us
#define ISR_100US_COUNT_MIN             60u       //140us
#define ISR_100US_COUNT_MAX             140u      //60us
#define ISR_1MS_COUNT_MIN               6u        //1.4ms
#define ISR_1MS_COUNT_MAX               14u       //0.6ms
#define ISR_10MS_COUNT_MIN              37500u    //14ms
#define ISR_10MS_COUNT_MAX              87500u    //6ms

/*very large tolerance*/
// #define ISR_15US_COUNT_MIN              0
// #define ISR_15US_COUNT_MAX              100000
// #define ISR_100US_COUNT_MIN             0
// #define ISR_100US_COUNT_MAX             100000
// #define ISR_1MS_COUNT_MIN               0
// #define ISR_1MS_COUNT_MAX               100000
// #define ISR_10MS_COUNT_MIN              0
// #define ISR_10MS_COUNT_MAX              1000000

#define PFM_CHECK_SUCCESS               1u
#define PFM_CHECK_FAILED                0u
#define PFM_CHK_FAILED_COUNT_INIT       0u
#define PFM_CHK_FAILED_COUNT_MAX        10u


#define QSPI_MAX_ERR_CNT                4u
#define QSPI_SBC_QVR_ERR                0x2000u

#define IS_A_SAFE_TASK                  1u
#define IS_NOT_A_SAFE_TASK              0u

#define USER0_PRIVILEGE                 0u
#define USER1_PRIVILEGE                 1u
#define SUPERVISOR_PRIVILEGE            2u

#define SAFETY_TASK_ID_FAIL             3u

typedef struct ISR_S_TIMEMEAS{
	// for steadyrun
	u32 IsrLog[2];
	u32 IsrDev[TM_ISR_NUM];
	u32 IsrStart[TM_ISR_NUM][2];
	u32 IsrPeriod[TM_ISR_NUM];
	bit IsrSign[TM_ISR_NUM];
	u32 IsrTime[TM_ISR_NUM];
	f32 IsrTimeAvr[TM_ISR_NUM];
	f32 IsrTimeOut[TM_ISR_NUM][TM_TICK_NUM];
} ISR_S_TIMEMEAS;

typedef struct {
  u16 FailureCnt;
  u16 Isr_15usCnt;
  u16 Isr_100usCnt;
  u8 Isr_1msCnt;
  u32 TimerDiff_10ms;
  u8 Sts;
} PFM_S_CAPTURE;

typedef struct {
  u32 Isr_15us_Start;
  u32 Isr_15us1_Start;
  u32 Isr_100us_Start;
  u32 Isr_1ms_Start;
  u32 Isr_10ms_Start;
  u32 Isr_15us_End;
  u32 Isr_15us1_End;
  u32 Isr_100us_End;
  u32 Isr_1ms_End;
  u32 Isr_10ms_End;
} SCH_S_TIMER;

typedef struct {
  f32 Isr_15us_avg;
  f32 Isr_100us_avg;
  f32 Isr_1ms_avg;
  f32 Isr_10ms_avg;
  u32 Calc;
} SCH_S_CPULOAD;


extern SCH_S_CPULOAD CpuLoadSts;
extern ISR_S_TIMEMEAS Isr_TimeMeas;
extern u32 RdTimer;
extern PFM_S_CAPTURE Pfm_Capture;
extern void __attribute__ ((noinline)) mg_vQmTaskCall(void);

#endif /*SCHEDULER_API_H*/
