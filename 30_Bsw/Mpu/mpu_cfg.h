/*******************************************************************************
 * Filename   : mpu_cfg.h
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

#ifndef MPU_CFG_H
#define MPU_CFG_H

/*----------------------------------Includes----------------------------------*/

#include "IfxCpu_cfg.h"
#include "Ifx_Types.h"
#include "IfxPort.h"
#include "IfxCpu_reg.h"
#include "IfxCpu_bf.h"
#include "MPU_MemMap.h"

/*-----------------------------------Macros-----------------------------------*/

extern unsigned int __PSPR_ASIL_RAMCODE_START[];
extern unsigned int __PSPR_ASIL_RAMCODE_END[];
extern unsigned int __DSPR_QM_VAR_START[];
extern unsigned int __DSPR_QM_VAR_END[];
extern unsigned int __DSPR_ASIL_VAR_START[];
extern unsigned int __DSPR_ASIL_VAR_END[];
extern unsigned int __DSPR_DEFAULT_VAR_START[];
extern unsigned int __DSPR_DEFAULT_VAR_END[];
extern unsigned int __DSPR_DEFAULT_FLASH_START[];
extern unsigned int __DSPR_DEFAULT_FLASH_END[];
extern unsigned int __START_PSPR[];
extern unsigned int __SIZE_PSPR[];
extern unsigned int __USTACK0_END[];
extern unsigned int __USTACK0[];
extern unsigned int __ISTACK0_END[];
extern unsigned int __ISTACK0[];
extern unsigned int __HEAP[];
extern unsigned int __HEAP_END[];
extern unsigned int __CSA0[];
extern unsigned int __CSA0_END[];
extern unsigned int __START_DSPR[];
extern unsigned int __SIZE_DSPR[];
extern unsigned int __LCF_PTAG_START[];
extern unsigned int __LCF_PTAG_SIZE[];
extern unsigned int __DSPR_QM_PMA_VAR_START[];
extern unsigned int __DSPR_QM_PMA_VAR_END[];

#define PSPR0_ASIL_START                    (uint32)(__PSPR_ASIL_RAMCODE_START)
#define PSPR0_ASIL_END                      (uint32)(__PSPR_ASIL_RAMCODE_END)

#define DSPR0_START                         (uint32)(__START_DSPR)
#define DSPR0_END                           (uint32)(((uint32)(__START_DSPR))+((uint32)(__SIZE_DSPR)))

#define PTAG_START                          (uint32)(__LCF_PTAG_START)
#define PTAG_END                            (uint32)(((uint32)(__LCF_PTAG_START))+((uint32)(__LCF_PTAG_SIZE)))

#define CSA_START                           (uint32)(__CSA0)
#define CSA_END                             (uint32)(__CSA0_END)

#define USTACK_START                        (uint32)(__USTACK0_END)
#define USTACK_END                          (uint32)(__USTACK0)

#define ISTACK_START                        (uint32)(__ISTACK0_END)
#define ISTACK_END                          (uint32)(__ISTACK0)

#define QM_VAR_START                        (uint32)(__DSPR_QM_VAR_START)
#define QM_VAR_END                          (uint32)(__DSPR_QM_VAR_END)

#define ASIL_VAR_START                      (uint32)(__DSPR_ASIL_VAR_START)
#define ASIL_VAR_END                        (uint32)(__DSPR_ASIL_VAR_END)

#define DEFAULT_VAR_START                   (uint32)(__DSPR_DEFAULT_VAR_START)
#define DEFAULT_VAR_END                     (uint32)(__DSPR_DEFAULT_VAR_END)

#define DEFAULT_FLASH_START                 (uint32)(__DSPR_DEFAULT_FLASH_START)
#define DEFAULT_FLASH_END                   (uint32)(__DSPR_DEFAULT_FLASH_END)

#define PSPR_START                          (uint32)(__START_PSPR)
#define PSPR_END                            (uint32)(((uint32)(__START_PSPR))+((uint32)(__SIZE_PSPR)))

#define QM_PMA_VAR_START                    (uint32)(__DSPR_QM_PMA_VAR_START)
#define QM_PMA_VAR_END                      (uint32)(__DSPR_QM_PMA_VAR_END)

// #define DSPR0_START_ADDR                    0x70000000
// #define DSPR0_END_ADDR                      0x7000C000

// #define PTAG_START_ADDR                     0x701C0000
// #define PTAG_END_ADDR                       0x701C0C00

#define DSPR0_START_ADDR                    DSPR0_START
#define DSPR0_END_ADDR                      DSPR0_END

#define PTAG_START_ADDR                     PTAG_START
#define PTAG_END_ADDR                       PTAG_END

#define PS0_START_ADDR                      0x00000000
#define PS0_END_ADDR                        0xFFFFFFFF

#define PFLASH_CACHE_START_ADDR             0x80000000
#define PFLASH_CACHE_END_ADDR               0x80080000

#define PFLASH_NO_CACHE_START_ADDR          0xA0000000
#define PFLASH_NO_CACHE_END_ADDR            0xA0080000

#define DFLASH_START_ADDR                   0xAF000000
#define DFLASH_END_ADDR                     0xAF018000

#define UCB_START_ADDR                      0xAF100000
#define UCB_END_ADDR                        0xAF102000

#define QM_DSPR_START_ADDR                  QM_VAR_START
#define QM_DSPR_END_ADDR                    QM_VAR_END

#define ASIL_DSPR_START_ADDR                ASIL_VAR_START
#define ASIL_DSPR_END_ADDR                  ASIL_VAR_END

#define DEFAULT_QM_DSPR_START_ADDR          DEFAULT_VAR_START
#define DEFAULT_QM_DSPR_END_ADDR            DEFAULT_VAR_END

#define DEFAULT_QM_PS0_START_ADDR           DEFAULT_FLASH_START
#define DEFAULT_QM_PS0_END_ADDR             DEFAULT_FLASH_END

#define PSPR_START_ADDR                     PSPR_START
#define PSPR_END_ADDR                       PSPR_END

#define USTACK_START_ADDR                   USTACK_START
#define USTACK_END_ADDR                     USTACK_END

#define ISTACK_START_ADDR                   ISTACK_START
#define ISTACK_END_ADDR                     ISTACK_END

#define CSA_START_ADDR                      CSA_START
#define CSA_END_ADDR                        CSA_END

#define FIRST_REG_ADDR                      0xF0000000
#define LAST_REG_ADDR                       0xF8820000

#define QM_DSPR_PMA_START_ADDR              QM_PMA_VAR_START
#define QM_DSPR_PMA_END_ADDR                QM_PMA_VAR_END

#define MPU_NO_ERROR                    0u
#define MPU_CONFIG_INCORRECT            1u
#define MPU_PROTSET_INCORRECT           2u

#if 0
/*unused sections by QM code*/
#define HEAP_START                           (uint32)(__HEAP)
#define HEAP_END                             (uint32)(__HEAP_END)

#define FIRST_HEAP_ADDR                     HEAP_START
#define LAST_HEAP_ADDR                      HEAP_END
#endif

#if(MEMORY_PROTECTION_ENABLED)
/*-----------------------------Function Prototypes----------------------------*/
#if 0
extern void mpu_vInit(void);
u8 mpu_u8SetProtRange(uint8 protectionSet);
u8 mpu_u8SetProtAccess(uint8 protectionSet);
#endif/*0*/
#endif /* MEMORY_PROTECTION_ENABLED */
#endif/*MPU_CFG_H*/
