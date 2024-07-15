
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
**  FILENAME  :  SfrTst_LCfg.c                                                **
**                                                                            **
**                                                                            **
**                                                                            **
**  BSW MODULE DECRIPTION : SfrTst.bmd/xdm                                    **
**                                                                            **
**  VARIANT   : VariantLinkTime                                               **
**                                                                            **
**  PLATFORM  : Infineon Aurix                                                **
**                                                                            **
**  COMPILER  : Tasking / HighTec /WindRiver                                  **
**                                                                            **
**  AUTHOR    : DL-BLR-ATV-STC                                                **
**                                                                            **
**  VENDOR    : Infineon Technologies                                         **
**                                                                            **
**  DESCRIPTION  : This file contains configuration settings for SFR test     **
**                                                                            **
**  MAY BE CHANGED BY USER [yes/no]: no                                       **
**                                                                            **
*******************************************************************************/


/*******************************************************************************
**                      Includes                                              **
*******************************************************************************/
#include "SfrTst_Cfg.h"
#include "Ifx_reg.h"

#define IFX_SFRTST_START_SEC_LINKTIMECFG_ASIL_B
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


/* SfrTest configuration  */
const SfrTst_ConfigType RegisterConfig1[39] =
{
  /* Register Address,  Value,  Mask , BitWidth        */
  {&SMU_AGC.U, 0x20000000U,  0xffffffffU, STL_BIT_32}, 
  {&SMU_FSP.U, 0x7fff58U,  0xffffffffU, STL_BIT_32}, 
  {&SMU_RTC.U, 0x3fff00U,  0xffffffffU, STL_BIT_32}, 
  {&SMU_RTAC0.U, 0x0U,  0xffffffffU, STL_BIT_32}, 
  {&SMU_RTAC1.U, 0x0U,  0xffffffffU, STL_BIT_32}, 
  {&SMU_AG0CF0.U, 0xd199bU,  0xffffffffU, STL_BIT_32}, 
  {&SMU_AG0CF1.U, 0x0U,  0xffffffffU, STL_BIT_32}, 
  {&SMU_AG0CF2.U, 0xd199bU,  0xffffffffU, STL_BIT_32}, 
  {&SMU_AG1CF0.U, 0x0U,  0xffffffffU, STL_BIT_32}, 
  {&SMU_AG1CF1.U, 0x0U,  0xffffffffU, STL_BIT_32}, 
  {&SMU_AG1CF2.U, 0x0U,  0xffffffffU, STL_BIT_32}, 
  {&SMU_AG2CF0.U, 0x2e001b0U,  0xffffffffU, STL_BIT_32}, 
  {&SMU_AG2CF1.U, 0x0U,  0xffffffffU, STL_BIT_32}, 
  {&SMU_AG2CF2.U, 0x2e001b0U,  0xffffffffU, STL_BIT_32}, 
  {&SMU_AG3CF0.U, 0xc80799eaU,  0xffffffffU, STL_BIT_32}, 
  {&SMU_AG3CF1.U, 0x0U,  0xffffffffU, STL_BIT_32}, 
  {&SMU_AG3CF2.U, 0xc80799eaU,  0xffffffffU, STL_BIT_32}, 
  {&SMU_AG4CF0.U, 0x60066U,  0xffffffffU, STL_BIT_32}, 
  {&SMU_AG4CF1.U, 0x0U,  0xffffffffU, STL_BIT_32}, 
  {&SMU_AG4CF2.U, 0x60066U,  0xffffffffU, STL_BIT_32}, 
  {&SMU_AG5CF0.U, 0x0U,  0xffffffffU, STL_BIT_32}, 
  {&SMU_AG5CF1.U, 0x0U,  0xffffffffU, STL_BIT_32}, 
  {&SMU_AG5CF2.U, 0x0U,  0xffffffffU, STL_BIT_32}, 
  {&SMU_AG6CF0.U, 0x0U,  0xffffffffU, STL_BIT_32}, 
  {&SMU_AG6CF1.U, 0x0U,  0xffffffffU, STL_BIT_32}, 
  {&SMU_AG6CF2.U, 0x0U,  0xffffffffU, STL_BIT_32}, 
  {&SMU_AG0FSP.U, 0xd199bU,  0xffffffffU, STL_BIT_32}, 
  {&SMU_AG1FSP.U, 0x0U,  0xffffffffU, STL_BIT_32}, 
  {&SMU_AG2FSP.U, 0x2e001b0U,  0xffffffffU, STL_BIT_32}, 
  {&SMU_AG3FSP.U, 0xc80799eaU,  0xffffffffU, STL_BIT_32}, 
  {&SMU_AG4FSP.U, 0x60066U,  0xffffffffU, STL_BIT_32}, 
  {&SMU_AG5FSP.U, 0x1U,  0xffffffffU, STL_BIT_32}, 
  {&SMU_AG6FSP.U, 0x0U,  0xffffffffU, STL_BIT_32}, 
  {&SMU_RMCTL.U, 0x0U,  0xffffffffU, STL_BIT_32}, 
  {&SMU_PCTL.U, 0xf00083U,  0xffffffffU, STL_BIT_32}, 
  {&SCU_EVROVMON.U, 0x9e00fdU,  0xff00ffU, STL_BIT_32}, 
  {&SCU_EVRUVMON.U, 0x8100d6U,  0xff00ffU, STL_BIT_32}, 
  {&SCU_EVRMONCTRL.U, 0x210021U,  0xff00ffU, STL_BIT_32}, 
  {&SCU_EVRSTAT.U, 0x1U,  0x13U, STL_BIT_32}, 
};
/* SfrTest configuration  */
const SfrTst_ConfigType RegisterConfig2[4] =
{
  /* Register Address,  Value,  Mask , BitWidth        */
  {&SRC_GTMTOM03.U, 0x460U,  0x2003cffU, STL_BIT_32}, 
  {&SRC_GTMTOM15.U, 0x450U,  0x2003cffU, STL_BIT_32}, 
  {&SRC_GTMTOM16.U, 0x440U,  0x2003cffU, STL_BIT_32}, 
  {&SRC_GTMTOM17.U, 0x430U,  0x2003cffU, STL_BIT_32}, 
};

/* The index given in the API function is used to choose which */
/* configuration is used from AllAvailableSets                 */
const SfrTst_ParamSetType AllAvailableSets[SFR_TST_CFG_PARAM_COUNT] =
{

  {39U,  0x0U, RegisterConfig1},
 
  {4U,  0x0U, RegisterConfig2}
};
#define IFX_SFRTST_STOP_SEC_LINKTIMECFG_ASIL_B
#include "Ifx_MemMap.h"    
