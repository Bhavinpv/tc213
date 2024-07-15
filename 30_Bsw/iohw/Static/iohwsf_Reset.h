/** ****************************************************************************
 * \file    iohwsf_Reset.h
 * \brief   Headerfile for iohwsf_Reset.c
 *
 *  Details
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
 **************************************************************************** */

#ifndef IOHWSF_RESET_H_
#define IOHWSF_RESET_H_
#ifdef __cplusplus
  extern "C" {
#endif


/*******************************************************************************
 * Global constants and macros
 ******************************************************************************/

/*******************************************************************************
 * Global data types (typedefs / structs / enums)
 ******************************************************************************/

/*******************************************************************************
 * Global data
 ******************************************************************************/

/*******************************************************************************
 * Global function prototypes
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
extern void IOHWSF_vCheckRSRCON2_CSS0_Bit(void);

#endif /* IOHWSF_RESET_H_ */

/*
 * End of file
 */
