/******************************************************************************
**                                                                           **
** Copyright (C) Infineon Technologies (2020)                                **
**                                                                           **
** All rights reserved.                                                      **
**                                                                           **
** This document contains proprietary information belonging to Infineon      **
** Technologies. Passing on and copying of this document, and communication  **
** of its contents is not permitted without prior written authorization.     **
**                                                                           **
*******************************************************************************
**                                                                           **
**  $FILENAME   : Mcal_Trap.c $                                              **
**                                                                           **
**  $CC VERSION : \main\46 $                                                 **
**                                                                           **
**  $DATE       : 2020-06-08 $                                               **
**                                                                           **
**  AUTHOR      : DL-AUTOSAR-Engineering                                     **
**                                                                           **
**  VENDOR      : Infineon Technologies                                      **
**                                                                           **
**  DESCRIPTION : This file contains                                         **
**                - Trap functionality (only for illustration purpose)       **
**                                                                           **
**  MAY BE CHANGED BY USER [yes/no]: Yes                                     **
**                                                                           **
******************************************************************************/

/*******************************************************************************
**                      Includes                                              **
*******************************************************************************/

/* Inclusion of Platform_Types.h and Compiler.h */
#include "Std_Types.h"
#include "Mcal.h"
#include "iohwsf.h"

/********************************************************************************
**                      Imported Compiler Switch Check                        **
*******************************************************************************/

/********************************************************************************
**                      Private Type Definitions                              **
*******************************************************************************/

/********************************************************************************
**                      Private Function Declarations                         **
*******************************************************************************/

/********************************************************************************
**                      Global Constant Definitions                           **
*******************************************************************************/

/********************************************************************************
**                      Global Variable Definitions                           **
*******************************************************************************/
#define MPU_ASIL_START_SEC_VAR_NOINIT
#include "MPU_MemMap.h"
static uint32 TrapIdentification[8][8];
#define MPU_ASIL_STOP_SEC_VAR_NOINIT
#include "MPU_MemMap.h"
/********************************************************************************
**                      Private Variable Definitions                          **
*******************************************************************************/

/********************************************************************************
**                      Private Constant Definitions                          **
*******************************************************************************/

/********************************************************************************
**                      Private Function Definitions                          **
*******************************************************************************/
void _trap_0( void );
void _trap_1( void );
void _trap_2( void );
void _trap_3( void );
void _trap_4( void );
void _trap_5( void );
void _trap_6( void );
void _trap_7( void );


#define MPU_ASIL_START_SEC_CODE
#include "MPU_MemMap.h"
/******************************************************************************
** Syntax : void _trap_0( void )                                             **
**                                                                           **
** Service ID:       NA                                                      **
**                                                                           **
** Sync/Async:       Synchronous                                             **
**                                                                           **
** Reentrancy:       reentrant                                               **
**                                                                           **
** Parameters (in):  none                                                    **
**                                                                           **
** Parameters (out): none                                                    **
**                                                                           **
** Return value:     none                                                    **
**                                                                           **
** Description : Sample Service for  class 0 trap                            **
**                                                                           **
*****************************************************************************/
/* Trap class 0 handler. */
void _trap_0( void )
{
  uint32 tin;

  __asm ("svlcx");

  __GETTIN (tin);


  TrapIdentification[0][tin] = 1;
  switch(tin)
   {
     case 0:
          IOHWSF_vDefaultErrorHandler(IOHWSF_E_TRAP_VIRTUAL_ADDRESS_FILL);
          break;

     case 1:
          IOHWSF_vDefaultErrorHandler(IOHWSF_E_TRAP_VIRTUAL_ADDRESS_PROTECTION);
          break;

     default:
          IOHWSF_vDefaultErrorHandler(IOHWSF_E_TRAP_UNDEFINED_TIN);
          break;
   }
  __asm ("rslcx \n");
  __asm ("rfe \n");
}
/******************************************************************************
** Syntax : void _trap_1( void )                                             **
**                                                                           **
** Service ID:       NA                                                      **
**                                                                           **
** Sync/Async:       Synchronous                                             **
**                                                                           **
** Reentrancy:       reentrant                                               **
**                                                                           **
** Parameters (in):  none                                                    **
**                                                                           **
** Parameters (out): none                                                    **
**                                                                           **
** Return value:     none                                                    **
**                                                                           **
** Description : Sample handler for  class 1 trap                            **
**                                                                           **
*****************************************************************************/
/* Trap class 1 handler. */
void _trap_1( void )
{
  uint32 tin;

  __asm ("svlcx");

  __GETTIN (tin);

  TrapIdentification[1][tin] = 1;
  switch(tin)
   {
     case 1:
          IOHWSF_vDefaultErrorHandler(IOHWSF_E_TRAP_PRIVILEGE_INSTRUCTION);
          break;

     case 2:
          IOHWSF_vDefaultErrorHandler(IOHWSF_E_TRAP_MEMORY_PROTECTION_READ);
          break;

     case 3:
          IOHWSF_vDefaultErrorHandler(IOHWSF_E_TRAP_MEMORY_PROTECTION_WRITE);
          break;

     case 4:
          IOHWSF_vDefaultErrorHandler(IOHWSF_E_TRAP_MEMORY_PROTECTION_EXECUTION);
          break;

     case 5:
          IOHWSF_vDefaultErrorHandler(IOHWSF_E_TRAP_PROTECTION_PERIPHERAL_ACCESS);
          break;

     case 6:
          IOHWSF_vDefaultErrorHandler(IOHWSF_E_TRAP_MEMORY_PROTECTION_NULL_ADDRESS);
          break;

     case 7:
          IOHWSF_vDefaultErrorHandler(IOHWSF_E_TRAP_GLOBAL_REGISTER_WRITE_PROTECTION);
          break;


     default:
          IOHWSF_vDefaultErrorHandler(IOHWSF_E_TRAP_UNDEFINED_TIN);
          break;
   }
  __asm ("rslcx\n");
  __asm ("rfe \n");
}
/******************************************************************************
** Syntax : void _trap_2( void )                                             **
**                                                                           **
** Service ID:       NA                                                      **
**                                                                           **
** Sync/Async:       Synchronous                                             **
**                                                                           **
** Reentrancy:       reentrant                                               **
**                                                                           **
** Parameters (in):  none                                                    **
**                                                                           **
** Parameters (out): none                                                    **
**                                                                           **
** Return value:     none                                                    **
**                                                                           **
** Description : Sample handler for  class 2 trap                            **
**                                                                           **
*****************************************************************************/
/* Trap class 2 handler. */
void _trap_2( void )
{
  uint32 tin;

  __asm ("svlcx");

  __GETTIN (tin);

  TrapIdentification[2][tin] = 1;
  switch(tin)
   {
     case 1:
          IOHWSF_vDefaultErrorHandler(IOHWSF_E_TRAP_ILLEGAL_OPCODE);
          break;

     case 2:
          IOHWSF_vDefaultErrorHandler(IOHWSF_E_TRAP_UNIMPLEMENTED_OPCODE);
          break;

     case 3:
          IOHWSF_vDefaultErrorHandler(IOHWSF_E_TRAP_INVALID_OPERAND_SPECIFICATION);
          break;

     case 4:
          IOHWSF_vDefaultErrorHandler(IOHWSF_E_TRAP_DATA_ADDRESS_ALIGNMENT);
          break;

     case 5:
          IOHWSF_vDefaultErrorHandler(IOHWSF_E_TRAP_INVALID_LOCAL_MEMORY_ADDRESS);
          break;

     default:
          IOHWSF_vDefaultErrorHandler(IOHWSF_E_TRAP_UNDEFINED_TIN);
          break;
   }
  __asm ("rslcx \n");
  __asm ("rfe \n");
}
/******************************************************************************
** Syntax : void _trap_3( void )                                             **
**                                                                           **
** Service ID:       NA                                                      **
**                                                                           **
** Sync/Async:       Synchronous                                             **
**                                                                           **
** Reentrancy:       reentrant                                               **
**                                                                           **
** Parameters (in):  none                                                    **
**                                                                           **
** Parameters (out): none                                                    **
**                                                                           **
** Return value:     none                                                    **
**                                                                           **
** Description : Sample handler for  class 3 trap                            **
**                                                                           **
*****************************************************************************/

/* Trap class 3 handler. */
void _trap_3( void )
{
  /* No local variables used in this function */
  /* No function calls to be performed */
  uint32 tin;

  __asm ("svlcx");

  __GETTIN (tin);

  TrapIdentification[3][tin] = 1;

  switch(tin)
  {
     case 1:
         IOHWSF_vDefaultErrorHandler(IOHWSF_E_TRAP_FREE_CONTEXT_LIST_DEPLETION);
         break;

     case 2:
          IOHWSF_vDefaultErrorHandler(IOHWSF_E_TRAP_CALL_DEPTH_OVERFLOW);
          break;

     case 3:
         IOHWSF_vDefaultErrorHandler(IOHWSF_E_TRAP_CALL_DEPTH_UNDERFLOW);
         break;

     case 4:
         IOHWSF_vDefaultErrorHandler(IOHWSF_E_TRAP_FREE_CONTEXT_LIST_UNDERFLOW);
         break;

     case 5:
         IOHWSF_vDefaultErrorHandler(IOHWSF_E_TRAP_CALL_STACK_UNDERFLOW);
         break;

     case 6:
         IOHWSF_vDefaultErrorHandler(IOHWSF_E_TRAP_CONTEXT_TYPE);
         break;

     case 7:
         IOHWSF_vDefaultErrorHandler(IOHWSF_E_TRAP_NESTING_ERROR);
         break;

     default:
          IOHWSF_vDefaultErrorHandler(IOHWSF_E_TRAP_UNDEFINED_TIN);
          break;
  }
  __asm ("rslcx \n");
  __asm ("rfe \n");

/* The return statement here intentionally removed because compiler will
   generate SVLCX instruction in the begining of trap3 handler which again
   results in trap3 because there is no free CSA, so the warning generated by
   compiler here should be ignored */
}

/******************************************************************************
** Syntax : void _trap_4( void )                                             **
**                                                                           **
** Service ID:       NA                                                      **
**                                                                           **
** Sync/Async:       Synchronous                                             **
**                                                                           **
** Reentrancy:       reentrant                                               **
**                                                                           **
** Parameters (in):  none                                                    **
**                                                                           **
** Parameters (out): none                                                    **
**                                                                           **
** Return value:     none                                                    **
**                                                                           **
** Description : Sample handler for  class 4 trap                            **
**                                                                           **
*****************************************************************************/
/* Trap class 4 handler. */
void _trap_4( void )
{
  uint32 tin;

  __asm ("svlcx\n");

  __GETTIN (tin);

  TrapIdentification[4][tin] = 1;
  switch(tin)
   {
     case 1:
          IOHWSF_vDefaultErrorHandler(IOHWSF_E_TRAP_PROGRAM_FETCH_SYNCHRONOUS_ERROR);
          break;

     case 2:
          IOHWSF_vDefaultErrorHandler(IOHWSF_E_TRAP_DATA_ACCESS_SYNCHRONOUS_ERROR);
          break;

     case 3: /*[PIPB-10289] Wrong information report in SW reset in DAE trap: [DCDC_SM_5_1_37] */
          IOHWSF_vDefaultErrorHandler(IOHWSF_E_TRAP_DATA_ACCESS_ASYNCHRONOUS_ERROR);  
          break;

     default:
          IOHWSF_vDefaultErrorHandler(IOHWSF_E_TRAP_UNDEFINED_TIN);
          break;
   }
  __asm ("rslcx \n");
  __asm ("rfe \n");
}
/******************************************************************************
** Syntax : void _trap_5( void )                                             **
**                                                                           **
** Service ID:       NA                                                      **
**                                                                           **
** Sync/Async:       Synchronous                                             **
**                                                                           **
** Reentrancy:       reentrant                                               **
**                                                                           **
** Parameters (in):  none                                                    **
**                                                                           **
** Parameters (out): none                                                    **
**                                                                           **
** Return value:     none                                                    **
**                                                                           **
** Description : Sample handler for  class 5 trap                            **
**                                                                           **
*****************************************************************************/
/* Trap class 5 handler. */
void _trap_5( void )
{
  uint32 tin;

  __asm ("svlcx");

  __GETTIN (tin);

  TrapIdentification[5][tin] = 1;
  switch(tin)
   {
     case 1:
          IOHWSF_vDefaultErrorHandler(IOHWSF_E_TRAP_ARITHEMETIC_OVERFLOW);
          break;

     case 2:
          IOHWSF_vDefaultErrorHandler(IOHWSF_E_TRAP_STICKY_ARITHEMETIC_OVERFLOW);
          break;

     default:
          IOHWSF_vDefaultErrorHandler(IOHWSF_E_TRAP_UNDEFINED_TIN);
          break;
   }
  __asm ("rslcx \n");
  __asm ("rfe \n");
}

/******************************************************************************
** Syntax : void _trap_6( void )                                             **
**                                                                           **
** Service ID:       NA                                                      **
**                                                                           **
** Sync/Async:       Synchronous                                             **
**                                                                           **
** Reentrancy:       reentrant                                               **
**                                                                           **
** Parameters (in):  none                                                    **
**                                                                           **
** Parameters (out): none                                                    **
**                                                                           **
** Return value:     none                                                    **
**                                                                           **
** Description : Sample handler for  class 6 trap                            **
**                                                                           **
*****************************************************************************/

/* *INDENT-OFF* */


/* Trap class 6 handler. */
void _trap_6( void )
{

    uint8 tin;
  __asm ("svlcx");

  __GETTIN (tin);

  /* TIN can be any number between 0 and 255.
   * storing the tin number in
   * TrapIdentification[6][0]
   */
  TrapIdentification[6][0] = tin;
  IOHWSF_vDefaultErrorHandler(IOHWSF_E_TRAP_UNEXPECTED_SYSTEM_CALL);
  __asm ("rslcx \n");
  __asm ("rfe \n");
}

/******************************************************************************
** Syntax : void _trap_7( void )                                             **
**                                                                           **
** Service ID:       NA                                                      **
**                                                                           **
** Sync/Async:       Synchronous                                             **
**                                                                           **
** Reentrancy:       reentrant                                               **
**                                                                           **
** Parameters (in):  none                                                    **
**                                                                           **
** Parameters (out): none                                                    **
**                                                                           **
** Return value:     none                                                    **
**                                                                           **
** Description : Sample handler for  class 7 trap                            **
**                                                                           **
*****************************************************************************/

/* Trap class 7 handler. */
void _trap_7( void )
{
  uint32 tin;

  __asm ("svlcx");
  __GETTIN (tin);

  TrapIdentification[7][tin] = 1;
  switch(tin)
   {
     case 0:
          IOHWSF_vDefaultErrorHandler(IOHWSF_E_TRAP_UNEXPECTED_NMI);
          break;

     default:
          IOHWSF_vDefaultErrorHandler(IOHWSF_E_TRAP_UNDEFINED_TIN);
          break;
   }
  __asm ("rslcx \n");
  __asm ("rfe \n");
}
#define MPU_ASIL_STOP_SEC_CODE
#include "MPU_MemMap.h"

#if (IFX_MCAL_USED == STD_ON)
#define MCAL_TRAP_START_SEC_CODE_CPU0_TRAP
#include "MemMap.h"
#else
#define IFX_MCAL_TRAP_START_SEC_CODE_CPU0_TRAP_ASIL_B
#include "Ifx_MemMap.h"
#endif
/******************************************************************************
** Syntax : void cpu0_trap_0 (void)                                          **
**                                                                           **
** Service ID:       NA                                                      **
**                                                                           **
** Sync/Async:       Synchronous                                             **
**                                                                           **
** Reentrancy:       reentrant                                               **
**                                                                           **
** Parameters (in):  none                                                    **
**                                                                           **
** Parameters (out): none                                                    **
**                                                                           **
** Return value:     none                                                    **
**                                                                           **
** Description : Sample handler for  Cpu0 trap                               **
**                                                                           **
*****************************************************************************/

#ifdef __TASKING__

void cpu0_trap_0 (void)
{
  __asm (".align 256");
  /* Class 0, MMU Traps: */
  __asm("j       _trap_0");/*  Jump to the trap handler */

  __asm (".align 32");
    /* Class 1, Internal Protection Traps */
  __asm("j       _trap_1");/*  Jump to the trap handler */

  __asm (".align 32");
  /* Class 2, Instruction Error Traps */
  __asm("j       _trap_2");/*  Jump to the trap handler */

  __asm (".align 32");
  /* Class 3, Context Management Traps */
  __asm("j       _trap_3");/*  Jump to the trap handler   */

  __asm (".align 32");
  /* Class 4, System Bus and Peripheral Error Traps */
  __asm("j       _trap_4");/*  Jump to the trap handler   */

  __asm (".align 32");
  /* Class 5, Assertion Traps */
  __asm("j       _trap_5");/*  Jump to the trap handler     */

  __asm (".align 32");
  /* Class 6, System Call Trap */
  __asm("j       _trap_6");/*  Jump to the trap handler     */

 __asm (".align 32");
  /* Class 7, Non Maskable Interrupt Traps */
  __asm("j       _trap_7");/*  Jump to the trap handler       */
}
#endif /* __TASKING__ */

#ifdef __GNUC__
void cpu0_trap_0 (void)
{
 /* ; Special trap table used during the Trap test: */

  /* ; Class 0, MMU Traps: */
  __asm (".align 8");
  __asm("j       _trap_0"); /*        ; Jump to the trap handler */

  /* ; Class 1, Internal Protection Traps: */
  __asm(".align 5");
  __asm("j       _trap_1"); /*        ; Jump to the trap handler */

  /* ; Class 2, Instruction Error Traps: */
  __asm(".align 5");
  __asm("j       _trap_2"); /*        ; Jump to the trap handler */

  /* ; Class 3, Context Management Traps: */
  __asm(".align 5");
  __asm("j       _trap_3"); /*        ; Jump to the trap handler */

  /* ; Class 4, System Bus and Peripheral Error Traps: */
  __asm(".align 5");
  __asm("j       _trap_4"); /*        ; Jump to the trap handler */

  /* ; Class 5, Assertion Traps: */
  __asm(".align 5");
  __asm("j       _trap_5"); /*        ; Jump to the trap handler */

  /* ; Class 6, System Call Trap: */
  __asm(".align 5");
  __asm("j       _trap_6"); /*        ; Jump to the trap handler */

  /* ; Class 7, Non Maskable Interrupt Traps: */
  __asm(".align 5");
  __asm("j       _trap_7"); /*        ; Jump to the trap handler */

}
#endif /* __GNUC__ */

#ifdef _DIABDATA_C_TRICORE_
#if (_DIABDATA_C_TRICORE_ == 1U)
void cpu0_trap_0 (void)
{
   /* ; Special trap table used during the Trap test: */

  /* ; Class 0, MMU Traps: */
  __asm (".align 8");
  __asm("j       _trap_0"); /*        ; Jump to the trap handler */

  /* ; Class 1, Internal Protection Traps: */
  __asm(".align 5");
  __asm("j       _trap_1"); /*        ; Jump to the trap handler */

  /* ; Class 2, Instruction Error Traps: */
  __asm(".align 5");
  __asm("j       _trap_2"); /*        ; Jump to the trap handler */

  /* ; Class 3, Context Management Traps: */
  __asm(".align 5");
  __asm("j       _trap_3"); /*        ; Jump to the trap handler */

  /* ; Class 4, System Bus and Peripheral Error Traps: */
  __asm(".align 5");
  __asm("j       _trap_4"); /*        ; Jump to the trap handler */

  /* ; Class 5, Assertion Traps: */
  __asm(".align 5");
  __asm("j       _trap_5"); /*        ; Jump to the trap handler */

  /* ; Class 6, System Call Trap: */
  __asm(".align 5");
  __asm("j       _trap_6"); /*        ; Jump to the trap handler */

  /* ; Class 7, Non Maskable Interrupt Traps: */
  __asm(".align 5");
  __asm("j       _trap_7"); /*        ; Jump to the trap handler */

}
#endif/* #if (_DIABDATA_C_TRICORE_ == 1U) */
#endif /* _DIABDATA_C_TRICORE_ */


#if (IFX_MCAL_USED == STD_ON)
#define MCAL_TRAP_STOP_SEC_CODE_CPU0_TRAP
#include "MemMap.h"
#else
#define IFX_MCAL_TRAP_STOP_SEC_CODE_CPU0_TRAP_ASIL_B
#include "Ifx_MemMap.h"
#endif


