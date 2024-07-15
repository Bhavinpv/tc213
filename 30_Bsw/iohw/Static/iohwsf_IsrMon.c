/** ****************************************************************************
 * \file    iohwsf_IsrMon.c
 * \brief   iohwsf_Reset file which is responsbile to perform the Safety Operations
 *          over the ISRs in the system, like ISR Monitoring
 *
 * \section AUTHOR
 *    #. DERAGHM
 *
 * \section SVN
 *  $Date: 2021-05-16 09:28:08 $
 *  $Author: DERAGHM $
 *  $Revision:  $
 *
 * \section LICENSE
 * Copyright (c) 2016 Delta Energy Systems (Germany) GmbH.
 * All rights reserved.
 ******************************************************************************/

/*******************************************************************************
 * Included header
 ******************************************************************************/
#include "Compilers.h"
#include "iohwsf_IsrMon.h"
#include "iohwsf.h"
#include "ifxGtm_reg.h"

/*******************************************************************************
 * Local constants and macros (private to module)
 ******************************************************************************/

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
#define MPU_ASIL_START_SEC_CODE
#include "MPU_MemMap.h"
 /* [PIPB-1180] Remove ISR source monitoring check. Confirmed with Infineon. */

/** ****************************************************************************
 * \brief Function to handle all the not used ISRs
 *
 * \param[in] void
 * \param[in,out] None
 * \param[out] None
 *
 * \return void
 * \covers SM_5_3_8
 **************************************************************************** */
void __attribute__ ((interrupt_handler))  ISR_DefaultHandler(void)
{
  // Trigger the iohwsf default Error handler
  IOHWSF_vDefaultErrorHandler(IOHWSF_E_ISR_UNHANDLED_ISR);
}

#define MPU_ASIL_STOP_SEC_CODE
#include "MPU_MemMap.h"
/*******************************************************************************
 * Local functions (private to module)
 ******************************************************************************/


/*
 * End of file
 */
