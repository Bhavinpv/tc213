/*******************************************************************************
 **                                                                           **
 ** Copyright (C) Infineon Technologies (2014)                                **
 **                                                                           **
 ** All rights reserved.                                                      **
 **                                                                           **
 ** This document contains proprietary information belonging to Infineon      **
 ** Technologies. Passing on and copying of this document, and communication  **
 ** of its contents is not permitted without prior written authorization.     **
 **                                                                           **
 ********************************************************************************
 **                                                                           **
 **  $FILENAME   : TstM.c $                                                   **
 **                                                                           **
 **  $CC VERSION : \main\65 $                                                 **
 **                                                                           **
 **  $DATE       : 2019-04-26 $                                               **
 **                                                                           **
 **  VARIANT   : VariantPB                                                    **
 **                                                                           **
 **  PLATFORM  : Infineon AURIX                                               **
 **                                                                           **
 **  COMPILER  : Tasking                                                      **
 **                                                                           **
 **  AUTHOR    : SafeTlib Team                                                **
 **                                                                           **
 **  VENDOR    : Infineon Technologies                                        **
 **                                                                           **
 **  DESCRIPTION  : This file contains                                        **
 **                 - Functionality of Test Manager :                         **
 **					-> This software module is                                        **  
 **                     the caller of the Test Handler to execute the tests   **
 **					-> It performs application level checks and                       ** 
 **					  consolidates the results of the internal                        **
 **					  program flow monitoring                                         **          
 **					-> It invokes the SMU for triggering the safe state               **
 **					  and error handling                                              ** 
 **                                                                           **
 **  MAY BE CHANGED BY USER [Yes/No]: Yes                                     **
 **                                                                           **
 ******************************************************************************/

/*******************************************************************************
 **                      Includes                                             **
 ******************************************************************************/
#include "Mcal.h"
#include "TstM.h"
#include "IfxCpu_reg.h"
#include "ChipId.h"
#include "iohwsf.h"

/*******************************************************************************
 **                      Private Macro Definitions                            **
 ******************************************************************************/
/* Configuration Required */
#define TSTM_PRERUN_SEED            (5U)
#define TSTM_RUN_SEED               (5U)

/*******************************************************************************
 **                   Function like macro definitions                         **
 ******************************************************************************/

/*******************************************************************************
 **                      Private Type Definitions                             **
 ******************************************************************************/

/******************************************************************************
**                        Imported declarations                              **
******************************************************************************/

/*******************************************************************************
 **                      Private Function Declarations                        **
 ******************************************************************************/

/*******************************************************************************
 **                      Global Constant Definitions                          **
 ******************************************************************************/

/*******************************************************************************
 **                      Global Variable Definitions                          **
 ******************************************************************************/

/**************************************************************************/

/*******************************************************************************
 **                      Private Constant Definitions                         **
 ******************************************************************************/

/*******************************************************************************
 **                      Private Variable Definitions                         **
 ******************************************************************************/
/* Test results buffer used for all SafeTlib phases */
#define MPU_ASIL_START_SEC_VAR_NOINIT
#include "MPU_MemMap.h"
Sl_TstRsltType TstM_TestResults[TH_TOTAL_TESTS];
#define MPU_ASIL_STOP_SEC_VAR_NOINIT
#include "MPU_MemMap.h"

#define MPU_ASIL_START_SEC_CONST
#include "MPU_MemMap.h"
extern const uint32 TstM_ExpTestSignature[TH_TOTAL_TESTS];
#define MPU_ASIL_STOP_SEC_CONST
#include "MPU_MemMap.h"

#define MPU_ASIL_START_SEC_VAR_NOINIT
#include "MPU_MemMap.h"
uint32 TstM_TestSignatures[TH_TOTAL_TESTS];
#define MPU_ASIL_STOP_SEC_VAR_NOINIT
#include "MPU_MemMap.h"

/*******************************************************************************
 **                      Private Function Definitions                         **
 ******************************************************************************/

/*******************************************************************************
 **                      Global Function Definitions                          **
 ******************************************************************************/
#define MPU_ASIL_START_SEC_CODE
#include "MPU_MemMap.h"

/*******************************************************************************
 **                                                                           **
 ** Syntax           : void TstM_Init(void)                                   **
 **                                                                           **
 ** Service ID       : none                                                   **
 **                                                                           **
 ** Sync/Async       : Synchronous                                            **
 **                                                                           **
 ** Reentrancy       : Non-reentrant                                          **
 **                                                                           **
 ** Parameters (in)  : None                                                   **
 **                                                                           **
 ** Parameters (out) : None                                                   **
 **                                                                           **
 ** Return value     : None                                                   **
 **                                                                           **
 ** Description      : Initialization of the Test Manager global variables    **
 **                    and invoke the initialization of SafeTlib.             **
 **                    Error shall be reported through application callback   **
 **                                                                           **
 ******************************************************************************/
void TstM_Init(void)
{
  Std_ReturnType Result = E_NOT_OK;

  Result = Sl_PreInit(&Sl_ConfigRoot[0]);
  if(E_OK != Result)
  {
    IOHWSF_vDefaultErrorHandler(IOHWSF_E_SAFETLIB_PRE_INIT);
  }

  Result = Sl_Init(&Sl_ConfigRoot[0]);
  if (E_OK != Result)
  {
    IOHWSF_vDefaultErrorHandler(IOHWSF_E_SAFETLIB_INIT);
  }
}

/*******************************************************************************
 **                                                                           **
 ** Syntax           : void TstM_PreRunTst(uint8 GroupStartIndex,             **
 **                                                      uint8 GroupEndIndex) **
 **                                                                           **
 ** Service ID       : none                                                   **
 **                                                                           **
 ** Sync/Async       : Synchronous                                            **
 **                                                                           **
 ** Reentrancy       : Non-reentrant                                          **
 **                                                                           **
 ** Parameters (in)  : GroupIndex: First group index for test execution       **
 **                                                                           **
 ** Parameters (out) : None                                                   **
 **                                                                           **
 ** Return value     : None                                                   **
 **                                                                           **
 ** Description      : Performs pre-run phase execution                       **
 **                    Error shall be reported through application callback   **
 **                                                                           **
 ******************************************************************************/
void TstM_PreRunTst(uint8 GroupIndex)
{
  Std_ReturnType  Result = E_NOT_OK;
  Sl_TstIndexType TstIdx;
  Sl_TstIndexType TstIdxStart;
  Sl_TstIndexType TstIdxEnd;

  Result = IOHWSF_tPreRunPreHook(GroupIndex);

  if (E_OK != Result)
  {
    IOHWSF_vDefaultErrorHandler(IOHWSF_E_SAFETLIB_PRERUN_PREHOOK);
  }

  Result = Sl_ExecPreRunTst(TSTM_PRERUN_SEED, GroupIndex, TstM_TestSignatures, TstM_TestResults);
  if (E_OK != Result)
  {
    IOHWSF_vDefaultErrorHandler(IOHWSF_E_SAFETLIB_PRERUN_TEST_FAIL);
  }

  switch(GroupIndex)
  {
    case(TSTM_PRERUN_DEFAULT_GROUP_INDEX_0):
    {
      TstIdxStart = TSTM_DEFAULT_GROUP_INDEX_0_GLOBAL_INDEX;
      TstIdxEnd   = TSTM_DEFAULT_GROUP_INDEX_1_GLOBAL_INDEX;
      break;
    }
    case(TSTM_PRERUN_DEFAULT_GROUP_INDEX_1):
    {
      TstIdxStart = TSTM_DEFAULT_GROUP_INDEX_1_GLOBAL_INDEX;
      TstIdxEnd   = TSTM_IR_GROUP_INDEX_GLOBAL_INDEX;
      break;
    }
    case(TSTM_PRERUN_IR_GROUP_INDEX):
    {
      TstIdxStart = TSTM_IR_GROUP_INDEX_GLOBAL_INDEX;
      TstIdxEnd   = TSTM_LOCKSTEP_GROUP_INDEX_GLOBAL_INDEX;
      break;
    }
    case(TSTM_PRERUN_LOCKSTEP_GROUP_INDEX):
    {
      TstIdxStart = TSTM_LOCKSTEP_GROUP_INDEX_GLOBAL_INDEX;
      TstIdxEnd   = TSTM_LOCKSTEP_GROUP_INDEX_GLOBAL_INDEX + 1;
      break;
    }
  }
  for (TstIdx = TstIdxStart; TstIdx < TstIdxEnd; TstIdx++)
  {
    if(TstM_TestSignatures[TstIdx] != TstM_ExpTestSignature[TstIdx])
    {
      IOHWSF_vDefaultErrorHandler(IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_TRAP_TST + TstIdx);
    }
  }

  Result = IOHWSF_tPreRunPostHook(GroupIndex);

  if (E_OK != Result)
  {
    IOHWSF_vDefaultErrorHandler(IOHWSF_E_SAFETLIB_PRERUN_POSTHOOK);
  }
} 

/*******************************************************************************
 **                                                                           **
 ** Syntax           : void TstM_InvalidateData(void)                         **
 **                                                                           **
 ** Service ID       : none                                                   **
 **                                                                           **
 ** Sync/Async       : Synchronous                                            **
 **                                                                           **
 ** Reentrancy       : Non-reentrant                                          **
 **                                                                           **
 ** Parameters (in)  : None                                                   **
 **                                                                           **
 ** Parameters (out) : None                                                   **
 **                                                                           **
 ** Return value     : None                                                   **
 **                                                                           **
 ** Description      : Invalidates seed, test results and test signatures     **
 **                                                                           **
 ******************************************************************************/
void TstM_InvalidateData(void)
{
  Sl_TstIndexType TstIdx;

  for (TstIdx = 0U; TstIdx < TH_TOTAL_TESTS; TstIdx++)
  {
    TstM_TestResults[TstIdx] = TH_TST_NOT_EXECUTED;
    TstM_TestSignatures[TstIdx] = 0;
  }
}

/*******************************************************************************
 **                                                                           **
 ** Syntax           : void TstM_Run(void)                                    **
 **                                                                           **
 ** Service ID       : none                                                   **
 **                                                                           **
 ** Sync/Async       : Synchronous                                            **
 **                                                                           **
 ** Reentrancy       : Non-reentrant                                          **
 **                                                                           **
 ** Parameters (in)  : None                                                   **
 **                                                                           **
 ** Parameters (out) : None                                                   **
 **                                                                           **
 ** Return value     : None                                                   **
 **                                                                           **
 ** Description      : The purpose of this API is to execute all tests in     **
 **    run-time phase groups for current cycle of diagnostic test interval.   **
 **    Before executing tests, it also invalidates seed, test results and     **
 **    test signatures corresponding last cycle.                              **
 **       Incase of the master core, the following functionality is executed  **
 **    additionally:                                                          **
 **    - During first call to this API, it makes transition to run-time phase.**
 **    - During every call to this API, it gets the seed from SafeWDG Manager.**
 **    - Error shall be reported through application callback                 **
 **                                                                           **
 ******************************************************************************/
void TstM_Run(void)
{
  Std_ReturnType Result = E_NOT_OK;

  Result = Sl_ExecRunTst(TSTM_RUN_SEED, TSTM_RUN_DEFAULT_GROUP_INDEX, TstM_TestSignatures, TstM_TestResults);
  if (E_OK != Result)
  {
    IOHWSF_vDefaultErrorHandler(IOHWSF_E_SAFETLIB_RUN_TEST_FAIL);
  }

  if(TstM_TestSignatures[TSTM_RUN_TEST_GROUP_INDEX_GLOBAL_INDEX] != TstM_ExpTestSignature[TSTM_RUN_TEST_GROUP_INDEX_GLOBAL_INDEX])
  {
    IOHWSF_vDefaultErrorHandler(IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_SFR_CMP_TST);
  }

}
/*******************************************************************************
 **                                                                           **
 ** Syntax           : void TstM_SRCRegestersCheck(void)                                    **
 **                                                                           **
 ** Service ID       : none                                                   **
 **                                                                           **
 ** Sync/Async       : Synchronous                                            **
 **                                                                           **
 ** Reentrancy       : Non-reentrant                                          **
 **                                                                           **
 ** Parameters (in)  : None                                                   **
 **                                                                           **
 ** Parameters (out) : None                                                   **
 **                                                                           **
 ** Return value     : None                                                   **
 **                                                                           **
 ** Description      : The purpose of this API is to execute The SFR Test     **
 **                    Which check that the SRC registers have Set Correctly  **
 ******************************************************************************/
void TstM_SRCRegestersCheck(void)
{
  Std_ReturnType Result = E_NOT_OK;

  Result = Sl_ExecRunTst(TSTM_RUN_SEED, TSTM_RUN_SRC_REGESTERS_CHECK_GROUP_INDEX, TstM_TestSignatures, TstM_TestResults);
  if (E_OK != Result)
  {
    IOHWSF_vDefaultErrorHandler(IOHWSF_E_SAFETLIB_SRC_REG_CHECK_FAIL);
  }

  if(TstM_TestSignatures[TSTM_SRC_REGESTERS_CHECK_GROUP_INDEX_GLOBAL_INDEX] != TstM_ExpTestSignature[TSTM_SRC_REGESTERS_CHECK_GROUP_INDEX_GLOBAL_INDEX])
  {
    IOHWSF_vDefaultErrorHandler(IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_SRC_REG_CHECK_TST);
  }
}
#define MPU_ASIL_STOP_SEC_CODE
#include "MPU_MemMap.h"
