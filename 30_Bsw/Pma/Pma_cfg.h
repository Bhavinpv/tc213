/* Pma_cfg.h */
/*******************************************************************************
 * Filename   : Pma_cfg.h
 * Project    : IPB
 * Author(s)  : deparap
 * Created    : 24.11.2022
 * Description:
 *
 * Last modification:
 *  on $Date$
 *  by $Author$
 *  current $Revision$
 *
 * Copyright (c) 2014 Delta Energy Systems (Germany) GmbH.
 * All rights reserved.
 ******************************************************************************/

#ifndef PMA_CFG_H
#define PMA_CFG_H

/*******************************************************************************
 * Global constants and macros
 ******************************************************************************/
#ifndef STD_OFF
    #define STD_OFF (0U)
#endif
#ifndef STD_ON
    #define STD_ON  (1U)
#endif

#define PMA_INFINEON_CONTROLLER_IS_USED     STD_ON
#define PMA_TI_CONTROLLER_IS_USED           STD_OFF

#if (PMA_INFINEON_CONTROLLER_IS_USED == STD_ON)
/*******************************************************************************
 *Includes
 ******************************************************************************/
#include "iohwsf.h"
#include "IfxSmu_bf.h"
#include "IfxSmu_reg.h"
#include "can_driver.h"
#include "Scheduler_api.h"
#include "Qspi.h"

#define PMA_MODULE_VERSION                  1u
#define PMA_INIT_PATTERN                    0x1234DE00u              /* Init Pattern - Last byte used for version. */


#define MAX_QSPI_ABIST_FAILCNT              2u
#define SHUTDOWN_ERRSRC                     0x01
#define IOHW_ERRSRC                         0x02
#define PFM_ERRSRC                          0x04
#define E2E_ERRSRC                          0x08
#define QSPI_ERRSRC                         0x10


#define PFM_DEBUG_ENABLE            0u

/*******************************************************************************
 * Global data types (typedefs / structs / enums)
 ******************************************************************************/
typedef struct{
  IOHWSF_E_ErrorType IohwErr;
  CAN_S_E2E E2eSts;
  PFM_S_CAPTURE PfmSts;
  QSPI_S_ERROR_BIT QspiErr;
}PMA_S_MCSAFE_ERR;

typedef struct{
  u16 Shutdown_ErrCnt;
  u16 Iohw_ErrCnt;
  u16 Pfm_ErrCnt;
  u16 E2e_ErrCnt;
  u16 Qspi_ErrCnt;
}PMA_S_MODULE_INFO;

#if(PFM_DEBUG_ENABLE)
typedef struct
{
  u16 idx;
  u16 isr15us_cap;
  u16 isr100us_cap;
  u16 isr1ms_cap;
  u32 isr10msdiff_cap;
  u16 loopcount_cap;
  u16 debugvar_cap;
}PFM_S_DEBUG_CAP;
extern PFM_S_DEBUG_CAP DebugCap[11];
extern u16 debug_var;
extern u16 loopcount;
extern PFM_S_DEBUG_CAP CapOnCan;
#endif/*PFM_DEBUG_ENABLE*/

/*******************************************************************************
 * Global function prototypes
 ******************************************************************************/
extern void Pma_vGetE2eSts(CAN_S_E2E* E2e_RdData);
extern void Pma_vGetQspiSts(QSPI_S_ERROR_BIT* Qspi_RdData);
#endif/*PMA_INFINEON_CONTROLLER_IS_USED*/


#if(PMA_TI_CONTROLLER_IS_USED == STD_ON)
/*******************************************************************************
 *Includes
 ******************************************************************************/
#include "dbc_api.h"
#include "ExtWdg_scb.h"
#include "ExtWdg_cfg.h"
#include "DspStatus_api.h"
#include "f28004x_sysctrl.h"
#include "f28004x_nmiintrupt.h"

#define PMA_MODULE_VERSION                  1u
#define PMA_INIT_PATTERN                    0x1234DE00u              /* Init Pattern - Last byte used for version. */

/*******************************************************************************
 * Global data types (typedefs / structs / enums)
 ******************************************************************************/
typedef enum{
  PMA_E_NMI = 0,
  PMA_E_ILLEGAL_OPCODE
}PMA_E_TRAP_TYPE;

typedef struct{
  u8 curr_dlc;
  u8 curr_BZ;
  u8 curr_CRC_rcvd;
  u8 curr_data[8];
  u32 msg_Id;
  E2E_E_ERR curr_sts;
}PMA_S_E2ESTS

typedef struct{
  u32 TrapInfo;
  PMA_E_TRAP_TYPE ErrCode;
  PMA_S_E2ESTS E2eSts[E2E_IDX_MAX];
  PFM_S_CAPTURE PfmSts;
  DSPSTATUS_S_STATUS DspSts;
}PMA_S_MCSAFE_ERR

/*******************************************************************************
 * Global function prototypes
 ******************************************************************************/
extern void Pma_vGetE2eSts(DBC_E2E_S_STATUS* E2e_RdData, u16 idx);
extern void Pma_vGetDspSts(DSPSTATUS_S_STATUS* DspSts_RdData);

#endif/*PMA_TI_CONTROLLER_IS_USED*/

#endif/*PMA_CFG_H*/
