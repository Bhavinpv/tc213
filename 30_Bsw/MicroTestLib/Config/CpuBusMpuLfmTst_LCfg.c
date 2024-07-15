
/*******************************************************************************
**                                                                            **
** Copyright (C) Infineon Technologies (2013)                                 **
**                                                                            **
** All rights reserved.                                                       **
**                                                                            **
** This document contains proprietary information belonging to Infineon       **
** Technologies. Passing on and copying of this document, and communication   **
** of its contents is not permitted without prior written authorization.      **
**                                                                            **
********************************************************************************
**                                                                            **
**  FILENAME  :  CpuBusMpuLfmTst_LCfg.c                                       **
**                                                                            **
**                                                                            **
**                                                                            **
**  BSW MODULE DECRIPTION : CpuBusMpuLfmTst.bmd/xdm                           **
**                                                                            **
**  VARIANT   : VariantLinkTime                                               **
**                                                                            **
**  PLATFORM  : Infineon Aurix                                                **
**                                                                            **
**  COMPILER  : Tasking / HighTec /WindRiver                                  **
**                                                                            **
**  VENDOR    : Infineon Technologies                                         **
**                                                                            **
**  DESCRIPTION  : CpuBusMpuLfmTst configuration                              **
**                                                                            **
**  SPECIFICATION(S) :                                                        **
**                                                                            **
**  MAY BE CHANGED BY USER [yes/no]: no                                       **
**                                                                            **
*******************************************************************************/


/*******************************************************************************
**                      Includes                                              **
*******************************************************************************/
#include "CpuBusMpuLfmTst_Cfg.h"

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

#define IFX_CPUBUSMPULFM_START_SEC_LINKTIMECFG_ASIL_B
#include "Ifx_MemMap.h"




	



/* CPU Bus MPU LFM test configuration:                                      */
const CpuBusMpuLfmTst_ConfigType
CpuBusMpuLfmTst_ConfigRoot[CPUBUSMPU_LFM_TST_CFG_PARAM_COUNT] =
{
  /* CpuBusMpuLfmTst_ConfigRoot[0]:*/
  {
    {
      /* Core0 TestMemory */
      {
        (uint32*)0x70100000U,
        (uint32*)0x70100020U,
        (uint32*)0x70100040U,
        (uint32*)0x70100060U,
        (uint32*)0x70100080U,
        (uint32*)0x701000a0U,
        (uint32*)0x701000c0U,
        (uint32*)0x701000e0U 
      },
    },
    {     
      /*  Unauthorized Addr Cpu0 */
      {
        (uint32*)0x70100100U,
      },
    }
  }  
};


#define IFX_CPUBUSMPULFM_STOP_SEC_LINKTIMECFG_ASIL_B
#include "Ifx_MemMap.h"
