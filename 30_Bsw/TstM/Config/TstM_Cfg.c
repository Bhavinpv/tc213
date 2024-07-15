/** ****************************************************************************
 * \file    TstM_Cfg.c
 * \brief   TstM_Cfg includes all customzied safety test CFG to run.
 *
 * \section AUTHOR
 *    #. v-Yousef.Mohamed
 *
 * \section SVN
 *  $Date: $
 *  $Author:  $
 *  $Revision:  $
 *
 * \section LICENSE
 * Copyright (c) 2016 Delta Energy Systems (Germany) GmbH.
 * All rights reserved.
 ******************************************************************************/

/*******************************************************************************
 * Included header
 ******************************************************************************/
#include "TstM.h"

/*******************************************************************************
 * Local constants and macros (private to module)
 ******************************************************************************/

/*******************************************************************************
 * Local data types (private typedefs / structs / enums)
 ******************************************************************************/

/*******************************************************************************
 * Local data (private to module)
 ******************************************************************************/
#define MPU_ASIL_START_SEC_CONST
#include "MPU_MemMap.h"
/* Test signature buffer used for all SafeTlib phases */
const uint32 TstM_ExpTestSignature[TH_TOTAL_TESTS] =
{
  0x6074185D, /* 1_TRAP_TSTCore0 = 0x6074185D */
  0x5324BE94, /* 2_CLKM_TSTCore0 = 0x5324BE94 */
  0x4607525E, /* 3_SRAM_ECC_TSTCore0 = 0x4607525E */
  0xF09F16FD, /* 4_PMU_ECC_EDC_TSTCore0 = 0xF09F16FD */
  0xD58A4E42, /* 5_SRI_TSTCore0 = 0xD58A4E42 */
  0x6A9B9A0C, /* 6_SPB_TST_TIMEOUTCore0 = 0x6A9B9A0C */
  0x418034FB, /* 7_SFF_TSTCore0 = 0x418034FB */
  0x6A762181, /* 8_SPB_TST_RAPCore0 = 0x6A762181 */
  0x92484A70, /* 9_CPU_MPU_TSTCore0 = 0x92484A70 */
  0xB20A88A9, /* 10_CPUBUSMPULFM_TSTCore0 = 0xB20A88A9 */
  0x1C32E319, /* 11_REG_ACC_PROT_TSTCore0 = 0x1C32E319 */
  0x1DFE8997, /* 12_CPU_WDG_TSTCore0 = 0x1DFE8997 */
  0x8698525D, /* 13_SAFETY_WDG_TSTCore0 = 0x8698525D */
  0x7A05BAA8, /* 14_SMU_TST_NMICore0 = 0x7A05BAA8 */
  0xB8E7CF9D, /* 15_SMU_TST_IRQCore0 = 0xB8E7CF9D */
  0xD52E7204, /* 16_SMU_TST_RTCore0 = 0xD52E7204 */
  0x946CB75A,  /* 17_VLTM_TSTCore0 = 0x946CB75A*/
  0x88407D62, /* 18_IR_TSTCore0 = 0x88407D62 */
  0x201A1D96, /* 19_LOCK_STEP_TSTCore0 = 0x201A1D96 */
  0xFB495AF0, /* 20_SFR_CMP_TSTCore0 = 0xFB495AF0 */
  0x4654CEE2 /* 21_SFR_CMP_TSTCore0 = 0x4654CEE2 */
};
#define MPU_ASIL_STOP_SEC_CONST
#include "MPU_MemMap.h"
/*******************************************************************************
 * Local function prototypes (private to module)
 ******************************************************************************/


/*******************************************************************************
 * Global functions (public to other modules)
 ******************************************************************************/


/*******************************************************************************
 * Local functions (private to module)
 ******************************************************************************/