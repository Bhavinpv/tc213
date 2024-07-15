/** ****************************************************************************
 * \file    iohwsf_CfgCheck.h
 * \brief   Headerfile for iohwsf_CfgCheck.c
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

#ifndef IOHWSF_CFG_CHECK_H_
#define IOHWSF_CFG_CHECK_H_
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
 * \brief Function to execute the configuration checks for the Safety relevant 
 *        Registers
 *
 * \param[in] void
 * \param[in,out] None
 * \param[out] None
 *
 * \return void
 *
 **************************************************************************** */
void IOHWSF_vPerformCfgChecks(void);


#endif /* IOHWSF_CFG_CHECK_H_ */

/*
 * End of file
 */
