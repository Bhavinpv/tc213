/*******************************************************************************
 * Filename   : tp_cfg.c
 * Project    : OBC_7200W
 * Author(s)  : DEEGGID
 * Created    : 02.01.2012
 * Description: Configuration file of the network layer
 *
 * Last modification:
 *  on $Date: 2012-01-11 17:05:19 +0100 (Mi, 11 Jan 2012) $
 *  by $Author: ES\DEEGGID $
 *  current $Revision: 305 $
 *
 * Compiler info : ARM 4.9.7
 * Processor info: TMS320x28035 Piccolo
 *
 * Copyright (c) 2012 Delta Energy Systems (Germany) GmbH.
 * All rights reserved.
 ******************************************************************************/

#define tp_cfg_GLOBALS

/*******************************************************************************
 * Included header
 ******************************************************************************/
#include "Platform_Types.h"
#include "standardtypes.h"
#include "standardmacros.h"

/*Modul header*/
#include "can_driver.h"
#include "tp.h"
#include "uds.h"
#include "tp_cfg.h"
/*******************************************************************************
 * Local constants and macros (private to module)
 ******************************************************************************/
#define MPU_QM_START_SEC_CONST
#include "MPU_MemMap.h"
const TpConfig_t TpConfig[TP_CONFIG_COUNT] = {
  {
     /* lower layer callback functions */
      vCandriver_transmit,
     /* upper layer callback functions */
      Uds_Indication,
     /* TP configuration */
      BLOCKSIZE_CAN,
      ST_MIN_CAN
  }
};
#define MPU_QM_STOP_SEC_CONST
#include "MPU_MemMap.h"
/*******************************************************************************
 * Local data types (private typedefs / structs / enums)
 ******************************************************************************/

/*******************************************************************************
 * Local data (private to module)
 ******************************************************************************/

/*******************************************************************************
 * Local function prototypes (private to module)
 ******************************************************************************/

/*******************************************************************************
 * Global functions (public to other modules)
 ******************************************************************************/

/*******************************************************************************
 * Local functions (private to module)
 ******************************************************************************/

/*
 * End of file
 */
