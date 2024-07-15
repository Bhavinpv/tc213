/*******************************************************************************
 * Filename   : Scheduler_Qm.c
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
#include "Pma_api.h"
#include "Main_api.h"
/*******************************************************************************
 * Local data
 ******************************************************************************/
#define MPU_QM_START_SEC_VAR_INIT
#include "MPU_MemMap.h"
static u8  TaskCounter          = 0u;
#define MPU_QM_STOP_SEC_VAR_INIT
#include "MPU_MemMap.h"

/*******************************************************************************
 * Global functions declaration
 ******************************************************************************/
inline void mg_vQM_Task(void);
/*******************************************************************************
 * Local functions declaration
 ******************************************************************************/
#define MPU_QM_START_SEC_CODE
#include "MPU_MemMap.h"
/*******************************************************************************
 * Function:       mg_vQmTaskCall
 *
 * Parameters:      void
 *
 * Returned value:  void
 *
 * Description:     function used to call The QM Task
 *
 ******************************************************************************/
void __attribute__ ((noinline)) mg_vQmTaskCall(void)
{
/* [PIPB-11296] CPU Safety task identifier: [DCDC_DM_5_1_47] */
  IOHWSF_ACCESSPROT_vSwitchToQmISR();
  if (PSWReg_Rd2.B.PRS==2)
  {
   
    Pma_AbortData.CpuLoadMax                  = 0xABu;
  }
  else if (PSWReg_Rd1.B.PRS==1)
  {
    mg_vQM_Task();
  }
}
  
 

//1ms QM task
inline void __attribute__((__always_inline__)) mg_vQM_Task(void)
{
#if (!MEMORY_PROTECTION_ENABLED)
	u16 Comm_u16CanErrCode;
	CANDriver_Diag(&Comm_u16CanErrCode);
#endif /* !MEMORY_PROTECTION_ENABLED */
  if ((IS_NOT_A_SAFE_TASK == PSWReg_Rd1.B.S)
   && (USER0_PRIVILEGE == PSWReg_Rd1.B.IO))
  {
    CANDriver_1mSTask();
    TpTask(0);
    Uds_Task();
    if(TaskCounter == 10u)
    {
      Pma_vTask10ms();
      TaskCounter = 0u;
    }
    else
    {
      TaskCounter++;
    }
  }
  else
  {
    TRUSTED_Mpu_Err = SAFETY_TASK_ID_FAIL;
  }
#if (!MEMORY_PROTECTION_ENABLED)
	HsfbApp_Call1ms();
#endif /* !MEMORY_PROTECTION_ENABLED */
}

#define MPU_QM_STOP_SEC_CODE
#include "MPU_MemMap.h"
