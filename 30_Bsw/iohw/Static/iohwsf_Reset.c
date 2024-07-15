/** ****************************************************************************
 * \file    iohwsf_Reset.c
 * \brief   iohwsf_Reset file which is responsbile to perform the Checks and Safety
 *          application over reset module
 *
 * \section AUTHOR
 *    #. DERAGHM
 *
 * \section SVN
 *  $Date: 2021-05-09 09:28:08 $
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

#include "iohwsf_Reset.h"
#include "IfxScu_reg.h"
#include "Smu.h"
#include "iohwsf.h"

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
/** ****************************************************************************
 * \brief Function to Check the RSTCON2.CSS0 (Safe State Reached) before start 
 *        the safety application
 *
 * \param[in] void
 * \param[in,out] None
 * \param[out] None
 *
 * \return void
 * \covers SM_5_2_23
 **************************************************************************** */
#define MPU_ASIL_START_SEC_CODE
#include "MPU_MemMap.h"
void IOHWSF_vCheckRSRCON2_CSS0_Bit(void)
{
    if(0U == SCU_RSTCON2.B.CSS0)
    {
        /* Need to Trigger Safety Reaction as CSS0 indicate CPU0 not reach Safe 
        *  State */
        IOHWSF_vDefaultErrorHandler(IOHWSF_E_CORE0_NOT_IN_SAFE_STATE);
    }
}
#define MPU_ASIL_STOP_SEC_CODE
#include "MPU_MemMap.h"
/*******************************************************************************
 * Local functions (private to module)
 ******************************************************************************/


/*
 * End of file
 */
