/** ****************************************************************************
 * \file    iohwsf_IsrMon.h
 * \brief   Headerfile for iohwsf_IsrMon.c
 *
 *  Details
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
 **************************************************************************** */

#ifndef IOHWSF_ISR_MON_H_
#define IOHWSF_ISR_MON_H_
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
 * \brief Function to check the Isr_Call100us Interrupt source
 *
 * \param[in] void
 * \param[in,out] None
 * \param[out] None
 *
 * \return void
 * \covers SM_5_3_9
 **************************************************************************** */
void IOHWSF_vIsr_Call100us_SourceCheck(void);


/** ****************************************************************************
 * \brief Function to check the Isr_Call10ms Interrupt source
 *
 * \param[in] void
 * \param[in,out] None
 * \param[out] None
 *
 * \return void
 * \covers SM_5_3_9
 **************************************************************************** */
void IOHWSF_vIsr_Call10ms_SourceCheck(void);


#endif /* IOHWSF_ISR_MON_H_ */

/*
 * End of file
 */
