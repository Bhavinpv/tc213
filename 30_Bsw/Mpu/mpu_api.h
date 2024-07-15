/*******************************************************************************
 * Filename   : mpu_api.h
 * Project    : IPB
 * Author(s)  : deparap
 * Created    : 08.08.2022
 * Description:
 *
 * Last modification:
 *  on $Date$
 *  by $Author$
 *  current $Revision$
 *
 * Compiler info : HighTec Tricore-gcc v4.6.6.1
 * Processor info: Aurix Tricore TC213L
 *
 * Copyright (c) 2014 Delta Energy Systems (Germany) GmbH.
 * All rights reserved.
 ******************************************************************************/

#ifndef MPU_API_H
#define MPU_API_H

#include "Ifx_Types.h"
#include "IfxCpu.h"

#define MEMORY_PROTECTION_ENABLED       1u

/*------------------------------------------------------Macros-------------------------------------------------------*/
#define MPU_DISABLED                    0
#define MPU_ENABLED                     1

/* Data Protection Ranges */
#define DATA_PROTECTION_RANGE_0          0
#define DATA_PROTECTION_RANGE_1          1
#define DATA_PROTECTION_RANGE_2          2
#define DATA_PROTECTION_RANGE_3          3
#define DATA_PROTECTION_RANGE_4          4
#define DATA_PROTECTION_RANGE_5          5
#define DATA_PROTECTION_RANGE_6          6
#define DATA_PROTECTION_RANGE_7          7
#define DATA_PROTECTION_RANGE_8          8
#define DATA_PROTECTION_RANGE_9          9
#define DATA_PROTECTION_RANGE_10         10
#define DATA_PROTECTION_RANGE_11         11
#define DATA_PROTECTION_RANGE_12         12
#define DATA_PROTECTION_RANGE_13         13
#define DATA_PROTECTION_RANGE_14         14
#define DATA_PROTECTION_RANGE_15         15

/* Code Protection Ranges */
#define CODE_PROTECTION_RANGE_0         0
#define CODE_PROTECTION_RANGE_1         1
#define CODE_PROTECTION_RANGE_2         2
#define CODE_PROTECTION_RANGE_3         3
#define CODE_PROTECTION_RANGE_4         4
#define CODE_PROTECTION_RANGE_5         5
#define CODE_PROTECTION_RANGE_6         6
#define CODE_PROTECTION_RANGE_7         7

/* Protection Sets */
#define PROTECTION_SET_0                0
#define PROTECTION_SET_1                1
#define PROTECTION_SET_2                2
#define PROTECTION_SET_3                3

#define PSW_REG_DEFAULT                 0x00000980u


extern Ifx_CPU_PSW PSWReg_Rd0;
extern Ifx_CPU_PSW PSWReg_Rd1;
extern Ifx_CPU_PSW PSWReg_Rd2;
extern Ifx_CPU_PSW PSWReg_Rd3;

extern u16 TRUSTED_Mpu_Err;


extern void mpu_vInit(void);
#if 0
extern u8 mpu_u8SetProtRange(uint8 protectionSet);
extern u8 mpu_u8SetProtAccess(uint8 protectionSet);
extern u8 mpu_u8Enable_MemProt(void);
extern u8 mpu_u8Disable_MemProt(void);
extern void mpu_vDefine_DataProtRange(uint32 lowerBoundAddress, uint32 upperBoundAddress, uint8 range);
extern void mpu_vDefine_CodeProtRange(uint32 lowerBoundAddress, uint32 upperBoundAddress, uint8 range);
extern void mpu_vEnable_DataRd(uint8 protectionSet, uint8 range);
extern void mpu_vEnable_DataWr(uint8 protectionSet, uint8 range);
extern void mpu_vEnable_CodeExe(uint8 protectionSet, uint8 range);
#endif/*0*/

/*------------------------------------------------Global Inline Function Definitions------------------------------------------------*/
/* Function to set the given Protection Set as active.
 * This function needs to be declared as inline because the Program Status Word (PSW) is one of the registers
 * automatically saved to the Context Save Area (CSA) when a function is called.
 * If this function was not declared as inline, the Upper Context (16 registers including the PSW) would be
 * automatically saved to the CSA and re-loaded when the function return, thus losing the change in the PSW.
 */

static inline void mpu_vSet_ActiveProtSet(uint8 protectionSet)
{
    Ifx_CPU_PSW PSWRegValue;
    /* [PIPB-10743] Errata CPU_TC.132 Unexpected PSW values used upon Fast Interrupt entry */
    PSWRegValue.U = PSW_REG_DEFAULT;
    PSWRegValue.U = __mfcr(CPU_PSW);               /* Get the Program Status Word (PSW) register value         */
    PSWRegValue.B.PRS = protectionSet;             /* Set the PRS bitfield to enable the Protection Set        */
    __mtcr(CPU_PSW, PSWRegValue.U);                /* Set the Program Status Word (PSW) register               */
    __asm ("isync");
    if(protectionSet == PROTECTION_SET_0)
    {
      PSWReg_Rd0.U = __mfcr(CPU_PSW);
    }
    else if(protectionSet == PROTECTION_SET_1)
    {
      PSWReg_Rd1.U = __mfcr(CPU_PSW);
    }
    else if(protectionSet == PROTECTION_SET_2)
    {
      PSWReg_Rd2.U = __mfcr(CPU_PSW);
    }
    else if(protectionSet == PROTECTION_SET_3)
    {
      PSWReg_Rd3.U = __mfcr(CPU_PSW);
    }
}

#endif/*MPU_API_H*/