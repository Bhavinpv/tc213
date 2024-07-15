/*******************************************************************************
 * \file    iohwsf_AccessProt.h
 * \brief   Headerfile for iohwsf_AccessProt.c
 *
 *  Details
 *
 * \section AUTHOR
 *    #. V-Yasser.Yousry
 *    #. V-Yousef.Mohamed
 *
 * \section SVN
 *  $Date: 2022-9-24 $
 *  $Author: V-Yousef.Mohamed $
 *  $Revision:  $
 *
 * \section LICENSE
 * Copyright (c) 2016 Delta Energy Systems (Germany) GmbH.
 * All rights reserved.
 ******************************************************************************/

#ifndef IOHWSF_ACCESSPROT_H_
#define IOHWSF_ACCESSPROT_H_
#ifdef __cplusplus
  extern "C" {
#endif

/*******************************************************************************
 * Included header
 ******************************************************************************/
#include "Std_Types.h"
#include "mpu_api.h"
#include "IfxCpu_reg.h"
#include "IfxCpu_IntrinsicsGnuc.h"

/*******************************************************************************
 * Global constants and macros
 ******************************************************************************/
#define IOHWSF_ACCESSPROT_DEBUGGING STD_ON

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
 * \brief Function to grant the Access for the allowed masters to the functional
 *        blocks configuration registers.
 *
 * covers: SM_5_1_39
 ******************************************************************************/
extern void IOHWSF_ACCESSPROT_vConfigureAccessProtection(void);

#if 1
//inline void IOHWSF_ACCESSPROT_vSwitchToSafeISR(void)
//{
//    Ifx_CPU_PSW PSWRegisterValue;
//    PSWRegisterValue.U = __mfcr(CPU_PSW);               /* Get the Program Status Word (PSW) register value         */
//    PSWRegisterValue.B.S = 1;                           /* Set the S bitfield to enable the Protection Set        */
//    __mtcr(CPU_PSW, PSWRegisterValue.U);                /* Set the Program Status Word (PSW) register               */
//    __isync();
//    PSWReg_Rd0.U = __mfcr(CPU_PSW);
//}
#endif

static inline void __attribute__((__always_inline__)) IOHWSF_ACCESSPROT_vSwitchToQmISR(void)
{
  Ifx_CPU_PSW PSWRegisterValue;
  PSWRegisterValue.U = __mfcr(CPU_PSW);               /* Get the Program Status Word (PSW) register value         */
  PSWRegisterValue.B.S = 0;                           /* clear the S bitfield */
  PSWRegisterValue.B.IO = 0;                          /* clear the IO bitfield to enable the Protection Set */
  __mtcr(CPU_PSW, PSWRegisterValue.U);                /* Set the Program Status Word (PSW) register */
  __isync();
  
  if(PSWRegisterValue.B.PRS==1){
  PSWReg_Rd1.U = __mfcr(CPU_PSW);
  }
  else if (PSWRegisterValue.B.PRS==2){
    PSWReg_Rd2.U=__mfcr(CPU_PSW);
  }

}

// static inline void __attribute__((__always_inline__)) IOHWSF_ACCESSPROT_vSwitchToQmISR2(void)
// {
//   Ifx_CPU_PSW PSWRegisterValue;
//   PSWRegisterValue.U = __mfcr(CPU_PSW);               /* Get the Program Status Word (PSW) register value         */
//   PSWRegisterValue.B.S = 0;                           /* clear the S bitfield */
//   PSWRegisterValue.B.IO = 0;                          /* clear the IO bitfield to enable the Protection Set */
//   __mtcr(CPU_PSW, PSWRegisterValue.U);                /* Set the Program Status Word (PSW) register */
//   __isync();
//   PSWReg_Rd2.U = __mfcr(CPU_PSW);
// }

#ifdef __cplusplus
  }
#endif

#endif /* IOHWSF_ACCESSPROT_H_ */
