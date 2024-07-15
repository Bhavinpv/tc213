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
**  FILENAME  : SpbTst_LCfg.c                                                 **
**                                                                            **
**                                                                            **
**                                                                            **
**  BSW MODULE DESCRIPTION : SpbTst.bmd/xdm                                   **
**                                                                            **
**  VARIANT   : VariantLinkTime                                               **
**                                                                            **
**  PLATFORM  : Infineon AURIX                                                **
**                                                                            **
**  COMPILER  : Tasking/GNU/Diab                                              **
**                                                                            **
**  VENDOR    : Infineon Technologies                                         **
**                                                                            **
**  DESCRIPTION  : SpbTst configuration                                       **
**                                                                            **
**  MAY BE CHANGED BY USER [yes/no]: no                                       **
**                                                                            **
*******************************************************************************/


/*******************************************************************************
**                      Include Section                                       **
*******************************************************************************/
/* Include module header File */ 
#include "SpbTst_Cfg.h"
#include "SpbTst.h"

/* SPB test configuration:  */
/* Number of different test configuration sets */
#include "IfxCan_reg.h"
#include "IfxQspi_reg.h"
#include "IfxGtm_reg.h"
#include "IfxPort_reg.h"
#include "IfxSmu_reg.h"
#include "IfxInt_reg.h"
#include "IfxVadc_reg.h"
#include "IfxScu_reg.h"
#include "IfxMtu_reg.h"
#include "IfxSbcu_reg.h"
#include "IfxXbar_reg.h"
#include "IfxFlash_reg.h"
/*******************************************************************************
**                      Inclusion File Check                                  **
*******************************************************************************/


/*******************************************************************************
**                      Private Macro Definitions                             **
*******************************************************************************/
/*******************************************************************************
**                      Private Type Definitions                              **
*******************************************************************************/
#define IFX_SPBTST_START_SEC_VAR_NONZERO_INIT_32BIT_ASIL_B
#include "Ifx_MemMap.h"
static unsigned_int Rmc_Not_Available = 0U;

#define IFX_SPBTST_STOP_SEC_VAR_NONZERO_INIT_32BIT_ASIL_B
#include "Ifx_MemMap.h"
/*******************************************************************************
**                      Private Function Declarations                         **
*******************************************************************************/


/*******************************************************************************
**                      Global Function Declarations                          **
*******************************************************************************/
#define IFX_SPBTST_START_SEC_LINKTIMECFG_ASIL_B
#include "Ifx_MemMap.h"


/* SpbTest configuration  */
static const SpbTst_AccEnType SpbPeripheralCfgPtr_1[] =
{
  /* Number of different test configuration sets */
  {&CAN_CLC.U, &CAN_ACCEN0.U, &CAN_MCR.U, &Rmc_Not_Available},
  {&QSPI0_CLC.U, &QSPI0_ACCEN0.U, &QSPI0_PISEL.U, &Rmc_Not_Available},
  {&GTM_CLC.U, &GTM_ACCEN0.U, &GTM_KRST0.U, &Rmc_Not_Available},
  {NULL_PTR, &P02_ACCEN0.U, &P02_OUT.U, &Rmc_Not_Available},
  {NULL_PTR, &P15_ACCEN0.U, &P15_OUT.U, &Rmc_Not_Available},
  {NULL_PTR, &P20_ACCEN0.U, &P20_OUT.U, &Rmc_Not_Available},
  {NULL_PTR, &P33_ACCEN0.U, &P33_OUT.U, &Rmc_Not_Available},
  {NULL_PTR, &P40_ACCEN0.U, &P40_IOCR0.U, &Rmc_Not_Available},
  {NULL_PTR, &P41_ACCEN0.U, &P41_IOCR0.U, &Rmc_Not_Available},
  {&SMU_CLC.U, &SMU_ACCEN0.U, &SMU_CMD.U, &Rmc_Not_Available},
  {NULL_PTR, &INT_ACCEN00.U, &INT_SRB0.U, &Rmc_Not_Available},
  {NULL_PTR, &INT_ACCEN10.U, &INT_ECR0.U, &Rmc_Not_Available},
  {&VADC_CLC.U, &VADC_ACCEN0.U, &VADC_GLOBCFG.U, &Rmc_Not_Available},
  {NULL_PTR, &SCU_ACCEN0.U, &SCU_LCLTEST.U, &Rmc_Not_Available},
  {&MTU_CLC.U, &MTU_ACCEN0.U, &MTU_MEMTEST0.U, &Rmc_Not_Available},
  {NULL_PTR, &SBCU_ACCEN0.U, &SBCU_CON.U, &Rmc_Not_Available},
  {NULL_PTR, &XBAR_ACCEN0.U, &XBAR_ARBCON0.U, &Rmc_Not_Available},
  {NULL_PTR, &FLASH0_ACCEN0.U, &FLASH0_FPRO.U, &Rmc_Not_Available},
};


static const uint32 SmuAlarm_1[] =
{
  /* Number of different test configuration sets */
  SPBTST_SPB_BUS_ERR_STS,
  SPBTST_SPB_BUS_ERR_STS,
  SPBTST_SPB_BUS_ERR_STS,
  SPBTST_SPB_BUS_ERR_STS,
  SPBTST_SPB_BUS_ERR_STS,
  SPBTST_SPB_BUS_ERR_STS,
  SPBTST_SPB_BUS_ERR_STS,
  SPBTST_SPB_BUS_ERR_STS,
  SPBTST_SPB_BUS_ERR_STS,
  SPBTST_SPB_BUS_ERR_STS,
  SPBTST_SPB_ACC_ENB_ERR_STS,
  SPBTST_SPB_ACC_ENB_ERR_STS,
  SPBTST_SPB_BUS_ERR_STS,
  SPBTST_SPB_BUS_ERR_STS,
  SPBTST_SPB_BUS_ERR_STS,
  SPBTST_SPB_BUS_ERR_STS,
  SPBTST_SRI_BUS_ERR_STS,
  SPBTST_SRI_BUS_ERR_STS,

};
/* The index given in the API function is used to choose which */
/* configuration is used from config root                 */
const SpbTst_ConfigType SpbTst_ConfigRoot[1] =
{
  {
    SpbPeripheralCfgPtr_1,
    18U,
    SmuAlarm_1
  }

};
#define IFX_SPBTST_STOP_SEC_LINKTIMECFG_ASIL_B
#include "Ifx_MemMap.h"



/*******************************************************************************
**                      Global Variable Definitions                           **
*******************************************************************************/


/*******************************************************************************
**                      Private Constant Definitions                          **
*******************************************************************************/


/*******************************************************************************
**                      Private Variable Definitions                          **
*******************************************************************************/


/*******************************************************************************
**                      Global Function Definitions                           **
*******************************************************************************/


/*******************************************************************************
**                      Private Function Definitions                          **
*******************************************************************************/
