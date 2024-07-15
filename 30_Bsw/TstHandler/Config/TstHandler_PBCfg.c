/*******************************************************************************
**                                                                            **
** Copyright (C) Infineon Technologies (2014)                                 **
**                                                                            **
** All rights reserved.                                                       **
**                                                                            **
** This document contains proprietary information belonging to Infineon       **
** Technologies. Passing on and copying of this document, and communication   **
** of its contents is not permitted without prior written authorization.      **
**                                                                            **
********************************************************************************
**                                                                            **
**  FILENAME  :  TstHandler_PBCfg.c                                           **
**                                                                            **
**                                                                            **
**                                                                            **
**  BSW MODULE DECRIPTION : TstHandler.bmd                                    **
**                                                                            **
**  VARIANT   : VariantPB                                                     **
**                                                                            **
**  PLATFORM  : Infineon Aurix                                                **
**                                                                            **
**  COMPILER  : Tasking / GNU / Diab                                          **
**                                                                            **
**  AUTHOR    : DL-BLR-ATV-STC                                                **
**                                                                            **
**  VENDOR    : Infineon Technologies                                         **
**                                                                            **
**  DESCRIPTION  : Test Handler configuration generated out of ECU            **
**                 configuration file                                         **
**                                                                            **
**  MAY BE CHANGED BY USER [yes/no]: no                                       **
**                                                                            **
*******************************************************************************/


/*******************************************************************************
**                      Includes                                              **
*******************************************************************************/
#include "TstHandler_Cfg.h"
#include "TstHandler.h"

#define IFX_TSTHANDLER_START_SEC_POSTBUILDCFG_ASIL_B
#include "Ifx_MemMap.h"

/*******************************************************************************
**                      Private Macro definition                              **
*******************************************************************************/

/*******************************************************************************
**                      Configuration Options                                 **
*******************************************************************************/

/*******************************************************************************
**                      Private Type Definitions                              **
*******************************************************************************/


/*******************************************************************************
**                      Private Function Declarations                         **
*******************************************************************************/


/*******************************************************************************
**                      Global Variable Definitions                           **
*******************************************************************************/

/*******************************************************************************
**                      Global Funtion Declarations                           **
*******************************************************************************/

/*******************************************************************************
**                      Global Constant Definitions                           **
*******************************************************************************/


static const Th_TestLibFuncPtrType Th_MTLFuncList_ConfigSet0_Core0[TH_TOTAL_TESTS] =
{
  /* 0 */ &TrapTst_TrapTst,
  /* 1 */ &ClkmTst_ClkmTst,
  /* 2 */ &SramEccTst_SramEccTst,
  /* 3 */ &PmuEccEdcTst_EccEdcTst,
  /* 4 */ &SriTst_SriTst,
  /* 5 */ &SpbTst_TimeoutTst,
  /* 6 */ &SffTst_SffTst,
  /* 7 */ &SpbTst_PeripheralRegAccProtTst,
  /* 8 */ &CpuMpuTst_CpuMpuTst,
  /* 9 */ &CpuBusMpuLfmTst_LfmTest,
  /* 10 */ &RegAccProtTst_RegAccProtTst,
  /* 11 */ &WdgTst_WdgCpuTst,
  /* 12 */ &WdgTst_WdgSafetyTst,
  /* 13 */ &SmuTst_NmiTst,
  /* 14 */ &SmuTst_IrqTst,
  /* 15 */ &SmuTst_RtTst,
  /* 16 */ &VltmTst_VltmTst,
  /* 17 */ &IRTst_IRTst,
  /* 18 */ &LockStepTst_LockStepTst,
  /* 19 */ &SfrTst_SfrCmpTst,
  /* 20 */ &SfrTst_SfrCmpTst,
};


static const Th_TestlibTestSetType Th_PreRunTests_ConfigSet0_Core0[4][SL_MAX_TESTS_PRE_RUN_GRP]=
{
  {
    {SlCPUxTestList_TrapTst_ConfigSet0, 0U, 0U},
    {SlCPUxTestList_ClkmTst_ConfigSet0, 0U, 0U},
    {SlCPUxTestList_SramEccTst_ConfigSet0, 0U, 0U},
    {SlCPUxTestList_PmuEccEdcTst_ConfigSet0, 0U, 0U},
    {SlCPUxTestList_SriTst_ConfigSet0, 0U, 0U},
    {SlCPUxTestList_SpbTst_TimeoutTst_ConfigSet0, 0U, 0U},
    {SlCPUxTestList_SffTst_ConfigSet0, 0U, 0U},
    {SlCPUxTestList_SpbTst_PeripheralRegAccProtTst_ConfigSet0, 0U, 0U},
    {SlCPUxTestList_CpuMpuTst_ConfigSet0, 0U, 0U},
    {SlCPUxTestList_CpuBusMpuTst_ConfigSet0, 0U, 0U},
  },
  {
    {SlCPUxTestList_RegAccProtTst_ConfigSet0, 0U, 0U},
    {SlCPUxTestList_WdgCpuTst_ConfigSet0, 0U, 0U},
    {SlCPUxTestList_WdgSafetyTst_ConfigSet0, 0U, 0U},
    {SlCPUxTestList_SmuTst_NmiTst_ConfigSet0, 0U, 0U},
    {SlCPUxTestList_SmuTst_IrqTst_ConfigSet0, 0U, 0U},
    {SlCPUxTestList_SmuTst_RtTst_ConfigSet0, 0U, 0U},
    {SlCPUxTestList_VltmTst_ConfigSet0, 0U, 0U},
    {TH_INVALID_TEST_ID, 0U, 0U},
    {TH_INVALID_TEST_ID, 0U, 0U},
    {TH_INVALID_TEST_ID, 0U, 0U},
  },
  {
    {SlCPUxTestList_IRTst_ConfigSet0, 0U, 0U},
    {TH_INVALID_TEST_ID, 0U, 0U},
    {TH_INVALID_TEST_ID, 0U, 0U},
    {TH_INVALID_TEST_ID, 0U, 0U},
    {TH_INVALID_TEST_ID, 0U, 0U},
    {TH_INVALID_TEST_ID, 0U, 0U},
    {TH_INVALID_TEST_ID, 0U, 0U},
    {TH_INVALID_TEST_ID, 0U, 0U},
    {TH_INVALID_TEST_ID, 0U, 0U},
    {TH_INVALID_TEST_ID, 0U, 0U},
  },
  {
    {SlCPUxTestList_LockStepTst_ConfigSet0, 0U, 0U},
    {TH_INVALID_TEST_ID, 0U, 0U},
    {TH_INVALID_TEST_ID, 0U, 0U},
    {TH_INVALID_TEST_ID, 0U, 0U},
    {TH_INVALID_TEST_ID, 0U, 0U},
    {TH_INVALID_TEST_ID, 0U, 0U},
    {TH_INVALID_TEST_ID, 0U, 0U},
    {TH_INVALID_TEST_ID, 0U, 0U},
    {TH_INVALID_TEST_ID, 0U, 0U},
    {TH_INVALID_TEST_ID, 0U, 0U},
  },
};

static const Th_TestlibTestSetType Th_RuntimeTests_ConfigSet0_Core0[2][SL_MAX_TESTS_RUN_TIME_GRP]=
{
  {
    {SlCPUxTestList_SfrCmpTst_ConfigSet0, 0U, 0U},
    {TH_INVALID_TEST_ID, 0U, 0U},
    {TH_INVALID_TEST_ID, 0U, 0U},
    {TH_INVALID_TEST_ID, 0U, 0U},
    {TH_INVALID_TEST_ID, 0U, 0U},
  },
  {
    {SlCPUxTestList_SRCregistersCheck_ConfigSet0, 1U, 0U},
    {TH_INVALID_TEST_ID, 0U, 0U},
    {TH_INVALID_TEST_ID, 0U, 0U},
    {TH_INVALID_TEST_ID, 0U, 0U},
    {TH_INVALID_TEST_ID, 0U, 0U},
  },
};

/* Test Handler Module Configuration */
const Sl_ConfigType Sl_ConfigRoot[1] = 
{
  /* ConfigSet for core 0*/
  {
    /* Pointer to Early Pre-run Test configuration */
    NULL_PTR,
    /* Pointer to Pre-run Test configuration */
    *Th_PreRunTests_ConfigSet0_Core0,
    /* Pointer to Run time Test configuration */
    *Th_RuntimeTests_ConfigSet0_Core0,
    /* Pointer to Post-run Test configuration */
    NULL_PTR,
    /* Start of array of TestLib function pointers  */
    &Th_MTLFuncList_ConfigSet0_Core0[0],
    /* Address of SMU configuration for pre-run phase */
    &Smu_ConfigRoot[SmuConfigSet_PreRun],
    /* Address of SMU configuration for runtime phase*/
    &Smu_ConfigRoot[SmuConfigSet_RunTime],
    /* Number of early pre-run test groups  */
    0U,
    /* Number of pre-run test groups  */
    4U,
    /* Number of run-time test groups  */
    2U,
    /* Number of post-run test groups  */
    0U,
    /* Core Id to which this config set corresponds to */
    0U
  },
};
#define IFX_TSTHANDLER_STOP_SEC_POSTBUILDCFG_ASIL_B
#include "Ifx_MemMap.h"
