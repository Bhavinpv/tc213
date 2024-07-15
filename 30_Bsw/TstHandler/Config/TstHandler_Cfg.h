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
**  FILENAME  :  TstHandler_Cfg.h                                             **
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
**  VENDOR    : Infineon Technologies                                         **
**                                                                            **
**  DESCRIPTION  : TstHandler configuration header file                       **
**                                                                            **
**  MAY BE CHANGED BY USER [yes/no]: no                                       **
**                                                                            **
*******************************************************************************/
#ifndef TSTHANDLER_CFG_H
#define TSTHANDLER_CFG_H
/*******************************************************************************
**                      Includes                                              **
*******************************************************************************/

#include "TrapTst.h"
#include "ClkmTst.h"
#include "SramEccTst.h"
#include "PmuEccEdcTst.h"
#include "PflashMonTst.h"
#include "SriTst.h"
#include "SpbTst.h"
#include "SffTst.h"
#include "CpuMpuTst.h"
#include "CpuBusMpuLfmTst.h"
#include "RegAccProtTst.h"
#include "WdgTst.h"
#include "SmuTst.h"
#include "VltmTst.h"
#include "IRTst.h"
#include "LockStepTst.h"
#include "SfrCmpTst.h"
#include "SfrCrcTst.h"


/*******************************************************************************
**                      Global Macro Definitions                              **
*******************************************************************************/

/* Master core Id */
#define SL_MASTER_CORE_ID (0U)


/* Maximum tests configured per group */
#define SL_MAX_TESTS_EARLY_PRE_RUN_GRP  (5U)
#define SL_MAX_TESTS_PRE_RUN_GRP        (10U)
#define SL_MAX_TESTS_RUN_TIME_GRP       (5U)
#define SL_MAX_TESTS_POST_RUN_GRP       (5U)


#define SL_CFG_COUNT (1U)

/* Maximum number of tests among arrays Th_MTLFuncList_Core<x> {x: Core id} */
#define TH_TOTAL_TESTS (21U)


/* Test index macros used to represent tests in array Th_MTLFuncList_Core0 */
#define  SlCPUxTestList_TrapTst_ConfigSet0  (0U)
#define  SlCPUxTestList_ClkmTst_ConfigSet0  (1U)
#define  SlCPUxTestList_SramEccTst_ConfigSet0  (2U)
#define  SlCPUxTestList_PmuEccEdcTst_ConfigSet0  (3U)
#define  SlCPUxTestList_SriTst_ConfigSet0  (4U)
#define  SlCPUxTestList_SpbTst_TimeoutTst_ConfigSet0  (5U)
#define  SlCPUxTestList_SffTst_ConfigSet0  (6U)
#define  SlCPUxTestList_SpbTst_PeripheralRegAccProtTst_ConfigSet0  (7U)
#define  SlCPUxTestList_CpuMpuTst_ConfigSet0  (8U)
#define  SlCPUxTestList_CpuBusMpuTst_ConfigSet0  (9U)
#define  SlCPUxTestList_RegAccProtTst_ConfigSet0  (10U)
#define  SlCPUxTestList_WdgCpuTst_ConfigSet0  (11U)
#define  SlCPUxTestList_WdgSafetyTst_ConfigSet0  (12U)
#define  SlCPUxTestList_SmuTst_NmiTst_ConfigSet0  (13U)
#define  SlCPUxTestList_SmuTst_IrqTst_ConfigSet0  (14U)
#define  SlCPUxTestList_SmuTst_RtTst_ConfigSet0  (15U)
#define  SlCPUxTestList_VltmTst_ConfigSet0  (16U)
#define  SlCPUxTestList_IRTst_ConfigSet0  (17U)
#define  SlCPUxTestList_LockStepTst_ConfigSet0  (18U)
#define  SlCPUxTestList_SfrCmpTst_ConfigSet0  (19U)
#define  SlCPUxTestList_SRCregistersCheck_ConfigSet0  (20U)



#endif  /* TSTHANDLER_CFG_H */
