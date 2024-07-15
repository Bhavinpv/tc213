/*******************************************************************************
 * Filename   : mpu.c
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

#include "mpu_api.h"
#include "mpu_cfg.h"
#include "IfxCpu.h"
#include "iohwsf.h"

/*******************************************************************************
 * Global data
 ******************************************************************************/
#define MPU_ASIL_START_SEC_VAR_NOINIT
#include "MPU_MemMap.h"
Ifx_CPU_PSW PSWReg_Rd0;
#define MPU_ASIL_STOP_SEC_VAR_NOINIT
#include "MPU_MemMap.h"

#define MPU_QM_START_SEC_VAR_NOINIT
#include "MPU_MemMap.h"
Ifx_CPU_PSW PSWReg_Rd1;

Ifx_CPU_PSW PSWReg_Rd3;
u16 TRUSTED_Mpu_Err = MPU_NO_ERROR;
#define MPU_QM_STOP_SEC_VAR_NOINIT
#include "MPU_MemMap.h"

/*******************************************************************************
 * Local function prototypes (private to module)
 ******************************************************************************/
static u8 mpu_u8SetProtRange(uint8 protectionSet);
static u8 mpu_u8SetProtAccess(uint8 protectionSet);
static u8 mpu_u8Enable_MemProt(void);
static u8 mpu_u8Disable_MemProt(void);
static void mpu_vDefine_DataProtRange(uint32 lowerBoundAddress, uint32 upperBoundAddress, uint8 range);
static void mpu_vDefine_CodeProtRange(uint32 lowerBoundAddress, uint32 upperBoundAddress, uint8 range);
static void mpu_vEnable_DataRd(uint8 protectionSet, uint8 range);
static void mpu_vEnable_DataWr(uint8 protectionSet, uint8 range);
static void mpu_vEnable_CodeExe(uint8 protectionSet, uint8 range);

/*--------------------------Function Implementations--------------------------*/

#define MPU_ASIL_START_SEC_CODE
#include "MPU_MemMap.h"
/*******************************************************************************
 * Global functions (public to other modules)
 ******************************************************************************/

/*******************************************************************************
 * Function:       mpu_vInit
 *
 * Parameters:      -
 *
 * Returned value:  -
 *
 * Description:     Configure and initialize memory protection unit
 *
 ******************************************************************************/
void mpu_vInit(void)
{
  u8 mpuConfig_Sts = 0x0000;
  PSWReg_Rd0.U = PSW_REG_DEFAULT;
  PSWReg_Rd1.U = PSW_REG_DEFAULT;
  PSWReg_Rd2.U = PSW_REG_DEFAULT;
  PSWReg_Rd3.U = PSW_REG_DEFAULT;
  /* Rules for memory protection range configuration:
   * The lower and upper boundary addresses must be 8 byte aligned.
   * After enabling the Memory Protection, access to an address 'x' will be allowed only if:
   * lowerBoundAddress <= x < upperBoundAddress
   */
  /* PROTECTION SET 0 (FOR ASILB) */
  mpuConfig_Sts |= mpu_u8SetProtRange(PROTECTION_SET_0);
  mpuConfig_Sts |= mpu_u8SetProtAccess(PROTECTION_SET_0);

  /* PROTECTION SET 1 (FOR QM) */
  mpuConfig_Sts |= mpu_u8SetProtRange(PROTECTION_SET_1);
  mpuConfig_Sts |= mpu_u8SetProtAccess(PROTECTION_SET_1);

    /* PROTECTION SET 2 (FOR PMA) */
  mpuConfig_Sts |= mpu_u8SetProtRange(PROTECTION_SET_2);
  mpuConfig_Sts |= mpu_u8SetProtAccess(PROTECTION_SET_2);

  if(mpuConfig_Sts != 0x00)
  {
    if((mpuConfig_Sts & 0x0F) != ((mpuConfig_Sts & 0xF0)>>4))
    {
      /* Report error in config to Scheduler module. */
      TRUSTED_Mpu_Err = MPU_CONFIG_INCORRECT;
    }
    else
    {
      if(MPU_ENABLED != mpu_u8Enable_MemProt())
      {
        /* Report error to Scheduler module. */
        TRUSTED_Mpu_Err = MPU_CONFIG_INCORRECT;
      }
    }
    
    
  }
  else
  {
    //memory protection should not be enabled
  }
}

/*******************************************************************************
 * Local functions (private to module)
 ******************************************************************************/

/*******************************************************************************
 * Function:       mpu_u8SetProtRange
 *
 * Parameters:      out: uint8 status: status of protection sets configuration
 *
 * Returned value:  -
 *
 * Description:     Configure address ranges for memory protection sets
 *
 ******************************************************************************/
static u8 mpu_u8SetProtRange(uint8 protectionSet)
{
  u8 status = 0x00;
  switch(protectionSet)
  {
    /* [PIPB-11299] CMPU config update according to requirements. */
    case PROTECTION_SET_0:
      /* Define the Data Protection Range 0: from 0x70000000 up to 0x70000A00 */
      mpu_vDefine_DataProtRange(DSPR0_START_ADDR, DEFAULT_QM_DSPR_START_ADDR, DATA_PROTECTION_RANGE_0);
      /* Define the Data Protection Range 0: from Default RAM end address up to 0xF8820000 */
      mpu_vDefine_DataProtRange(DEFAULT_QM_DSPR_END_ADDR, LAST_REG_ADDR, DATA_PROTECTION_RANGE_1);
      /* Define the Code Protection Range 0: from 0x70100000 */
      mpu_vDefine_DataProtRange(PSPR0_ASIL_START, PSPR0_ASIL_END, DATA_PROTECTION_RANGE_12);
      
      /* Define the Code Protection Range 0: from 0x80000000 up to 0x80080000 */
      mpu_vDefine_CodeProtRange(PFLASH_CACHE_START_ADDR, PFLASH_CACHE_END_ADDR, CODE_PROTECTION_RANGE_0);
      /* Define the Code Protection Range 0: from 0x70100000 */
      mpu_vDefine_CodeProtRange(PSPR0_ASIL_START, PSPR0_ASIL_END, CODE_PROTECTION_RANGE_1);
      status = 0x01;
      break;
    case PROTECTION_SET_1:
      /* DATA_MPU_CORE0_DSPR0_ASILB: from LCF_ASIL_VAR_START to last address of ASIL data */
      mpu_vDefine_DataProtRange(ASIL_DSPR_START_ADDR, ASIL_DSPR_END_ADDR, DATA_PROTECTION_RANGE_2);
      /* DATA_MPU_CORE0_DSPR0_QM: from LCF_QM_VAR_START to last address of QM data */
      mpu_vDefine_DataProtRange(QM_DSPR_START_ADDR, QM_DSPR_END_ADDR, DATA_PROTECTION_RANGE_3);
      /* DATA_MPU_CORE0_DSPR0_STACK: from 0x70008e00 to 0x70009600 */
      mpu_vDefine_DataProtRange(USTACK_START_ADDR, USTACK_END_ADDR, DATA_PROTECTION_RANGE_4);
      /* DATA_MPU_CORE0_DSPR0_STACK: from 0x70009700 to 0x70009b00 */
      mpu_vDefine_DataProtRange(ISTACK_START_ADDR, ISTACK_END_ADDR, DATA_PROTECTION_RANGE_5);
      /* DATA_MPU_CORE0_DSPR0_CSA: from 0x70009c00 to 0x7000bc00 */
      mpu_vDefine_DataProtRange(CSA_START_ADDR, CSA_END_ADDR, DATA_PROTECTION_RANGE_6);
      /* CODE_MPU_PFLASH0_QM_Cache: from 0x80000000 to 0x80080000 */
      mpu_vDefine_DataProtRange(PFLASH_CACHE_START_ADDR, PFLASH_CACHE_END_ADDR, DATA_PROTECTION_RANGE_7);
      /* CODE_MPU_DFLASH_QM: from 0xAF000000 to 0xAF018000 */
      mpu_vDefine_DataProtRange(DFLASH_START_ADDR, DFLASH_END_ADDR, DATA_PROTECTION_RANGE_8);
      /* DATA_MPU_UCBs_QM: from 0xAF100000 to 0xAF102000 */
      mpu_vDefine_DataProtRange(UCB_START_ADDR, UCB_END_ADDR, DATA_PROTECTION_RANGE_9);
      /* DATA_MPU_SEG15_REGs_QM: from 0xF0000000 to 0xF8820000 */
      mpu_vDefine_DataProtRange(FIRST_REG_ADDR, LAST_REG_ADDR, DATA_PROTECTION_RANGE_10);
      /* CODE_MPU_PFLASH0_QM_NO_Cache: from 0xA0000000 to 0xA0080000 */
      mpu_vDefine_DataProtRange(PFLASH_NO_CACHE_START_ADDR, PFLASH_NO_CACHE_END_ADDR, DATA_PROTECTION_RANGE_11);

      /* CODE_MPU_PFLASH0_QM_Cache: from 0x80000000 to 0x80080000 */
      mpu_vDefine_CodeProtRange(PFLASH_CACHE_START_ADDR, PFLASH_CACHE_END_ADDR, CODE_PROTECTION_RANGE_0);
      status = 0x02;
      break;
    case PROTECTION_SET_2:
     /* DATA_MPU_CORE0_DSPR0_QM_PMA*/
      mpu_vDefine_DataProtRange(QM_DSPR_PMA_START_ADDR, QM_DSPR_PMA_END_ADDR, DATA_PROTECTION_RANGE_13);
      
      status = 0x04;
      break;
    case PROTECTION_SET_3:
      status = 0x08;
      break;
    default :
      status = 0x00;
      break;
  }
  return status;
}

/*******************************************************************************
 * Function:       mpu_u8SetProtAccess
 *
 * Parameters:      out: uint8 status: status of protection sets configuration
 *
 * Returned value:  -
 *
 * Description:     Configure memory protection sets accesses
 *
 ******************************************************************************/
static u8 mpu_u8SetProtAccess(uint8 protectionSet)
{
  u8 status = 0x00;
  switch(protectionSet)
  {
    case PROTECTION_SET_0:
      /* Enable read access to the Data Protection Range 0-1 and 12 in the Protection Set 0 */
      mpu_vEnable_DataRd(PROTECTION_SET_0, DATA_PROTECTION_RANGE_0);
      mpu_vEnable_DataRd(PROTECTION_SET_0, DATA_PROTECTION_RANGE_1);
      mpu_vEnable_DataRd(PROTECTION_SET_0, DATA_PROTECTION_RANGE_12);
      mpu_vEnable_DataRd(PROTECTION_SET_0, DATA_PROTECTION_RANGE_13);
      /* Enable write access to the Data Protection Range 0-1 and 12 in the Protection Set 0 */
      mpu_vEnable_DataWr(PROTECTION_SET_0, DATA_PROTECTION_RANGE_0);
      mpu_vEnable_DataWr(PROTECTION_SET_0, DATA_PROTECTION_RANGE_1);
      mpu_vEnable_DataWr(PROTECTION_SET_0, DATA_PROTECTION_RANGE_12);
      mpu_vEnable_DataWr(PROTECTION_SET_0, DATA_PROTECTION_RANGE_13);
      /* Enable code execution on Code Protection Range 0 for Protection Set 0 */
      mpu_vEnable_CodeExe(PROTECTION_SET_0, CODE_PROTECTION_RANGE_0);
      /* Enable code execution on Code Protection Range 1 for Protection Set 0 */
      mpu_vEnable_CodeExe(PROTECTION_SET_0, CODE_PROTECTION_RANGE_1);
      status = 0x10;
      break;
    case PROTECTION_SET_1:
      /* Enable read access to the Data Protection Range 2-10 in the Protection Set 1 */
      mpu_vEnable_DataRd(PROTECTION_SET_1, DATA_PROTECTION_RANGE_2);
      mpu_vEnable_DataRd(PROTECTION_SET_1, DATA_PROTECTION_RANGE_3);
      mpu_vEnable_DataRd(PROTECTION_SET_1, DATA_PROTECTION_RANGE_4);
      mpu_vEnable_DataRd(PROTECTION_SET_1, DATA_PROTECTION_RANGE_5);
      mpu_vEnable_DataRd(PROTECTION_SET_1, DATA_PROTECTION_RANGE_6);
      mpu_vEnable_DataRd(PROTECTION_SET_1, DATA_PROTECTION_RANGE_7);
      mpu_vEnable_DataRd(PROTECTION_SET_1, DATA_PROTECTION_RANGE_8);
      mpu_vEnable_DataRd(PROTECTION_SET_1, DATA_PROTECTION_RANGE_9);
      mpu_vEnable_DataRd(PROTECTION_SET_1, DATA_PROTECTION_RANGE_10);
      mpu_vEnable_DataRd(PROTECTION_SET_1, DATA_PROTECTION_RANGE_11);
      mpu_vEnable_DataRd(PROTECTION_SET_1, DATA_PROTECTION_RANGE_13);
      /* Enable write access to the Data Protection Range 3-10 in the Protection Set 1 */
      mpu_vEnable_DataWr(PROTECTION_SET_1, DATA_PROTECTION_RANGE_3);
      mpu_vEnable_DataWr(PROTECTION_SET_1, DATA_PROTECTION_RANGE_4);
      mpu_vEnable_DataWr(PROTECTION_SET_1, DATA_PROTECTION_RANGE_5);
      mpu_vEnable_DataWr(PROTECTION_SET_1, DATA_PROTECTION_RANGE_6);
      mpu_vEnable_DataWr(PROTECTION_SET_1, DATA_PROTECTION_RANGE_7);
      mpu_vEnable_DataWr(PROTECTION_SET_1, DATA_PROTECTION_RANGE_8);
      mpu_vEnable_DataWr(PROTECTION_SET_1, DATA_PROTECTION_RANGE_9);
      mpu_vEnable_DataWr(PROTECTION_SET_1, DATA_PROTECTION_RANGE_10);
      mpu_vEnable_DataWr(PROTECTION_SET_1, DATA_PROTECTION_RANGE_11);
      mpu_vEnable_DataWr(PROTECTION_SET_1, DATA_PROTECTION_RANGE_13);
      /* Enable code execution on Code Protection Range 0 for Protection Set 1 */
      mpu_vEnable_CodeExe(PROTECTION_SET_1, CODE_PROTECTION_RANGE_0);
      status = 0x20;
      break;
    case PROTECTION_SET_2:

      mpu_vEnable_DataRd(PROTECTION_SET_2, DATA_PROTECTION_RANGE_2);
      mpu_vEnable_DataRd(PROTECTION_SET_2, DATA_PROTECTION_RANGE_3);
      mpu_vEnable_DataRd(PROTECTION_SET_2, DATA_PROTECTION_RANGE_4);
      mpu_vEnable_DataRd(PROTECTION_SET_2, DATA_PROTECTION_RANGE_5);
      mpu_vEnable_DataRd(PROTECTION_SET_2, DATA_PROTECTION_RANGE_6);
      mpu_vEnable_DataRd(PROTECTION_SET_2, DATA_PROTECTION_RANGE_7);
      //mpu_vEnable_DataRd(PROTECTION_SET_2, DATA_PROTECTION_RANGE_8);
      //mpu_vEnable_DataRd(PROTECTION_SET_2, DATA_PROTECTION_RANGE_9);
      //mpu_vEnable_DataRd(PROTECTION_SET_2, DATA_PROTECTION_RANGE_10);
      mpu_vEnable_DataRd(PROTECTION_SET_2, DATA_PROTECTION_RANGE_11);
      mpu_vEnable_DataRd(PROTECTION_SET_2, DATA_PROTECTION_RANGE_13);
      
      //mpu_vEnable_DataWr(PROTECTION_SET_2, DATA_PROTECTION_RANGE_3);
      mpu_vEnable_DataWr(PROTECTION_SET_2, DATA_PROTECTION_RANGE_4);
      mpu_vEnable_DataWr(PROTECTION_SET_2, DATA_PROTECTION_RANGE_5);
      mpu_vEnable_DataWr(PROTECTION_SET_2, DATA_PROTECTION_RANGE_6);
      mpu_vEnable_DataWr(PROTECTION_SET_2, DATA_PROTECTION_RANGE_7);
      //mpu_vEnable_DataWr(PROTECTION_SET_2, DATA_PROTECTION_RANGE_8);
      //mpu_vEnable_DataWr(PROTECTION_SET_2, DATA_PROTECTION_RANGE_9);
      //mpu_vEnable_DataWr(PROTECTION_SET_2, DATA_PROTECTION_RANGE_10);
      mpu_vEnable_DataWr(PROTECTION_SET_2, DATA_PROTECTION_RANGE_11);
      mpu_vEnable_DataWr(PROTECTION_SET_2, DATA_PROTECTION_RANGE_13);

      mpu_vEnable_CodeExe(PROTECTION_SET_2, CODE_PROTECTION_RANGE_0);

    
      status = 0x40;
      break;
    case PROTECTION_SET_3:
      status = 0x80;
      break;
    default :
      status = 0x00;
      break;
  }
  return status;
}

/*******************************************************************************
 * Function:       mpu_u8Enable_MemProt
 *
 * Parameters:     -
 *
 * Returned value: uint8 Protection_Status: protection status enabled successful
 *
 * Description:     Enable memory protection unit
 *
 ******************************************************************************/
static u8 mpu_u8Enable_MemProt(void)
{
  u8 Protection_Status;
  Ifx_CPU_SYSCON sysconValue;
  Ifx_CPU_SYSCON sysconRead;

  IfxScuWdt_clearCpuEndinit(IfxScuWdt_getCpuWatchdogPassword());
  /* Get the System Configuration Register (SYSCON) value */
  sysconValue.U = __mfcr(CPU_SYSCON);
  /* Set the PROTEN bitfield to enable the Memory Protection */
  sysconValue.B.PROTEN = 1;
  /* Set the System Configuration Register (SYSCON) */
  __mtcr(CPU_SYSCON, sysconValue.U);
  __asm ("isync");
  sysconRead.U = __mfcr(CPU_SYSCON);
  IfxScuWdt_setCpuEndinit(IfxScuWdt_getCpuWatchdogPassword());
  Protection_Status = sysconRead.B.PROTEN;
  return Protection_Status;
}

/*******************************************************************************
 * Function:       mpu_u8Disable_MemProt
 *
 * Parameters:     -
 *
 * Returned value: uint8 Protection_Status: protection status disabled successful
 *
 * Description:     Disable memory protection unit
 *
 ******************************************************************************/
static u8 mpu_u8Disable_MemProt()
{
  u8 Protection_Status;
  Ifx_CPU_SYSCON sysconValue;
  Ifx_CPU_SYSCON sysconRead;

  IfxScuWdt_clearCpuEndinit(IfxScuWdt_getCpuWatchdogPassword());
  /* Get the System Configuration Register (SYSCON) value */
  sysconValue.U = __mfcr(CPU_SYSCON);
  /* Set the PROTEN bitfield to enable the Memory Protection */
  sysconValue.B.PROTEN = 0;
  /* Set the System Configuration Register (SYSCON) */
  __mtcr(CPU_SYSCON, sysconValue.U);
  __asm ("isync");
  sysconRead.U = __mfcr(CPU_SYSCON);
  IfxScuWdt_setCpuEndinit(IfxScuWdt_getCpuWatchdogPassword());
  Protection_Status = sysconRead.B.PROTEN;
  return Protection_Status;
}

/*******************************************************************************
 * Function:       mpu_vDefine_DataProtRange
 *
 * Parameters:     in: uint32 first and last address of data range
 *                 in: uint8 protection range index
 *
 * Returned value:  -
 *
 * Description:     Write lower and upper addresses in DPRx registers 
 *                  according to range index
 *
 ******************************************************************************/
/* Function that defines a data protection range in the corresponding CPU 
 * Data Protection Range Register (DPR).
 * Data protection ranges have 8-byte granularity.
 * As a result, the lower 3 bits of any address passed to the 
 * mpu_vDefine_DataProtRange function will be discarded.
 * After enabling the Memory Protection, access to an address 'x' will be 
 * allowed only if: lowerBoundAddress <= x < upperBoundAddress
 */
static void mpu_vDefine_DataProtRange(uint32 lowerBoundAddress, uint32 upperBoundAddress, uint8 range)
{
  /* Set the lower and upper bound of CPU Data Protection Range x (0-15) 
   * maximum 16 ranges allowed */
  switch(range)
  {
    case 0: /* Data Protection Range 0 */
        __mtcr(CPU_DPR0_L, lowerBoundAddress);
        __mtcr(CPU_DPR0_U, upperBoundAddress);
        break;
    case 1: /* Data Protection Range 1 */
        __mtcr(CPU_DPR1_L, lowerBoundAddress);
        __mtcr(CPU_DPR1_U, upperBoundAddress);
        break;
    case 2: /* Data Protection Range 2 */
        __mtcr(CPU_DPR2_L, lowerBoundAddress);
        __mtcr(CPU_DPR2_U, upperBoundAddress);
        break;
    case 3: /* Data Protection Range 3 */
        __mtcr(CPU_DPR3_L, lowerBoundAddress);
        __mtcr(CPU_DPR3_U, upperBoundAddress);
        break;
    case 4: /* Data Protection Range 4 */
        __mtcr(CPU_DPR4_L, lowerBoundAddress);
        __mtcr(CPU_DPR4_U, upperBoundAddress);
        break;
    case 5: /* Data Protection Range 5 */
        __mtcr(CPU_DPR5_L, lowerBoundAddress);
        __mtcr(CPU_DPR5_U, upperBoundAddress);
        break;
    case 6: /* Data Protection Range 6 */
        __mtcr(CPU_DPR6_L, lowerBoundAddress);
        __mtcr(CPU_DPR6_U, upperBoundAddress);
        break;
    case 7: /* Data Protection Range 7 */
        __mtcr(CPU_DPR7_L, lowerBoundAddress);
        __mtcr(CPU_DPR7_U, upperBoundAddress);
        break;
    case 8: /* Data Protection Range 8 */
        __mtcr(CPU_DPR8_L, lowerBoundAddress);
        __mtcr(CPU_DPR8_U, upperBoundAddress);
        break;
    case 9: /* Data Protection Range 9 */
        __mtcr(CPU_DPR9_L, lowerBoundAddress);
        __mtcr(CPU_DPR9_U, upperBoundAddress);
        break;
    case 10: /* Data Protection Range 10 */
        __mtcr(CPU_DPR10_L, lowerBoundAddress);
        __mtcr(CPU_DPR10_U, upperBoundAddress);
        break;
    case 11: /* Data Protection Range 11 */
        __mtcr(CPU_DPR11_L, lowerBoundAddress);
        __mtcr(CPU_DPR11_U, upperBoundAddress);
        break;
    case 12: /* Data Protection Range 12 */
        __mtcr(CPU_DPR12_L, lowerBoundAddress);
        __mtcr(CPU_DPR12_U, upperBoundAddress);
        break;
    case 13: /* Data Protection Range 13 */
        __mtcr(CPU_DPR13_L, lowerBoundAddress);
        __mtcr(CPU_DPR13_U, upperBoundAddress);
        break;
    case 14: /* Data Protection Range 14 */
        __mtcr(CPU_DPR14_L, lowerBoundAddress);
        __mtcr(CPU_DPR14_U, upperBoundAddress);
        break;
    case 15: /* Data Protection Range 15 */
        __mtcr(CPU_DPR15_L, lowerBoundAddress);
        __mtcr(CPU_DPR15_U, upperBoundAddress);
        break;
  }
  __asm ("isync");
}

/*******************************************************************************
 * Function:       mpu_vDefine_CodeProtRange
 *
 * Parameters:     in: uint32 first and last address of code range
 *                 in: uint8 protection range index
 *
 * Returned value:  -
 *
 * Description:     Write lower and upper addresses in CPRx registers 
 *                  according to range index
 *
 ******************************************************************************/
/* Function that defines a code protection range in the corresponding CPU 
 * Code Protection Range Register (CPR).
 * Code protection ranges have 8-byte granularity.
 * As a result, the lower 3 bits of any address passed to the 
 * mpu_vDefine_CodeProtRange function will be discarded.
 * After enabling the Memory Protection, access to an address 'x' will be 
 * allowed only if: lowerBoundAddress <= x < upperBoundAddress
 */
static void mpu_vDefine_CodeProtRange(uint32 lowerBoundAddress, uint32 upperBoundAddress, uint8 range)
{
  /* Set the lower and upper bound of CPU Code Protection Range x (0-7) 
   * maximum 8 ranges allowed */
  switch(range)
  {
    case 0: /* Code Protection Range 0 */
        __mtcr(CPU_CPR0_L, lowerBoundAddress);
        __mtcr(CPU_CPR0_U, upperBoundAddress);
        break;
    case 1: /* Code Protection Range 1 */
        __mtcr(CPU_CPR1_L, lowerBoundAddress);
        __mtcr(CPU_CPR1_U, upperBoundAddress);
        break;
    case 2: /* Code Protection Range 2 */
        __mtcr(CPU_CPR2_L, lowerBoundAddress);
        __mtcr(CPU_CPR2_U, upperBoundAddress);
        break;
    case 3: /* Code Protection Range 3 */
        __mtcr(CPU_CPR3_L, lowerBoundAddress);
        __mtcr(CPU_CPR3_U, upperBoundAddress);
        break;
    case 4: /* Code Protection Range 4 */
        __mtcr(CPU_CPR4_L, lowerBoundAddress);
        __mtcr(CPU_CPR4_U, upperBoundAddress);
        break;
    case 5: /* Code Protection Range 5 */
        __mtcr(CPU_CPR5_L, lowerBoundAddress);
        __mtcr(CPU_CPR5_U, upperBoundAddress);
        break;
    case 6: /* Code Protection Range 6 */
        __mtcr(CPU_CPR6_L, lowerBoundAddress);
        __mtcr(CPU_CPR6_U, upperBoundAddress);
        break;
    case 7: /* Code Protection Range 7 */
        __mtcr(CPU_CPR7_L, lowerBoundAddress);
        __mtcr(CPU_CPR7_U, upperBoundAddress);
        break;
  }
  __asm ("isync");
}

/*******************************************************************************
 * Function:       mpu_vEnable_DataRd
 *
 * Parameters:     in: uint8 enable read access for protection set
 *                 in: uint8 protection range index
 *
 * Returned value:  -
 *
 * Description:     Using range index, enable read access for respective 
 *                  protection set by writing into DPREx registers
 *
 ******************************************************************************/
/* Function to enable the data read access to a predefined Range in a Protection Set */
static void mpu_vEnable_DataRd(uint8 protectionSet, uint8 range)
{
    Ifx_CPU_DPRE DPRERegisterValue;

  /* Get the CPU Data Protection Read Enable Register value */
  switch(protectionSet)
  {
    case 0: /* Protection Set 0 */
        DPRERegisterValue.U = __mfcr(CPU_DPRE0);
        break;
    case 1: /* Protection Set 1 */
        DPRERegisterValue.U = __mfcr(CPU_DPRE1);
        break;
    case 2: /* Protection Set 2 */
        DPRERegisterValue.U = __mfcr(CPU_DPRE2);
        break;
    case 3: /* Protection Set 3 */
        DPRERegisterValue.U = __mfcr(CPU_DPRE3);
        break;
  }
    /* Set the bit corresponding to the given Data Protection Range */
  DPRERegisterValue.B.RE |= (1 << range); 
  
  /* Set the RE bit in CPU Data Protection Read Enable Register
   * to enable data read access */
  switch(protectionSet)
  {
    case 0: /* Protection Set 0 */
        __mtcr(CPU_DPRE0, DPRERegisterValue.U);
        break;
    case 1: /* Protection Set 1 */
        __mtcr(CPU_DPRE1, DPRERegisterValue.U);
        break;
    case 2: /* Protection Set 2 */
        __mtcr(CPU_DPRE2, DPRERegisterValue.U);
        break;
    case 3: /* Protection Set 3 */
        __mtcr(CPU_DPRE3, DPRERegisterValue.U);
        break;
  }
  __asm ("isync");
}

/*******************************************************************************
 * Function:       mpu_vEnable_DataWr
 *
 * Parameters:     in: uint8 enable write access for protection set
 *                 in: uint8 protection range index
 *
 * Returned value:  -
 *
 * Description:     Using range index, enable write access for respective 
 *                  protection set by writing into DPWEx registers
 *
 ******************************************************************************/
/* Function to enable the data write access to a predefined Range in a Protection Set */
static void mpu_vEnable_DataWr(uint8 protectionSet, uint8 range)
{
  Ifx_CPU_DPWE DPWERegisterValue;

  /* Get the CPU Data Protection Write Enable Register value */
  switch(protectionSet)
  {
    case 0: /* Protection Set 0 */
        DPWERegisterValue.U = __mfcr(CPU_DPWE0);
        break;
    case 1: /* Protection Set 1 */
        DPWERegisterValue.U = __mfcr(CPU_DPWE1);
        break;
    case 2: /* Protection Set 2 */
        DPWERegisterValue.U = __mfcr(CPU_DPWE2);
        break;
    case 3: /* Protection Set 2 */
        DPWERegisterValue.U = __mfcr(CPU_DPWE3);
        break;
  }

  /* Set the bit corresponding to the given Data Protection Range */
  DPWERegisterValue.B.WE |= (0x1 << range);
  
  /* Set the WE bit in CPU Data Protection Write Enable Register 
   * to enable data write access */
  switch(protectionSet)
  {
    case 0: /* Protection Set 0 */
        __mtcr(CPU_DPWE0, DPWERegisterValue.U);
        break;
    case 1: /* Protection Set 1 */
        __mtcr(CPU_DPWE1, DPWERegisterValue.U);
        break;
    case 2: /* Protection Set 2 */
        __mtcr(CPU_DPWE2, DPWERegisterValue.U);
        break;
    case 3: /* Protection Set 2 */
        __mtcr(CPU_DPWE3, DPWERegisterValue.U);
        break;
  }
  __asm ("isync");
}

/*******************************************************************************
 * Function:       mpu_vEnable_CodeExe
 *
 * Parameters:     in: uint8 enable code execution access for protection set
 *                 in: uint8 protection range index
 *
 * Returned value:  -
 *
 * Description:     Using range index, enable code execute access for respective 
 *                  protection set by writing into DPWEx registers
 *
 ******************************************************************************/
/* Function to enable code execution access to a predefined Range in a Protection Set */
static void mpu_vEnable_CodeExe(uint8 protectionSet, uint8 range)
{
  Ifx_CPU_CPXE CPXERegisterValue;

  /* Get the CPU Code Protection Execute Enable Register value */
  switch(protectionSet)
  {
    case 0: /* Protection Set 0 */
        CPXERegisterValue.U = __mfcr(CPU_CPXE0);
        break;
    case 1: /* Protection Set 1 */
        CPXERegisterValue.U = __mfcr(CPU_CPXE1);
        break;
    case 2: /* Protection Set 2 */
        CPXERegisterValue.U = __mfcr(CPU_CPXE2);
        break;
    case 3: /* Protection Set 2 */
        CPXERegisterValue.U = __mfcr(CPU_CPXE3);
        break;
  }

  /* Set the bit corresponding to the given Code Protection Range */
  CPXERegisterValue.B.XE |= (0x1 << range);
  
  /* Set the XE bit in CPU Code Protection Execute Enable Register 
   * to enable coded execution */
  switch(protectionSet)
  {
    case 0: /* Protection Set 0 */
        __mtcr(CPU_CPXE0, CPXERegisterValue.U);
        break;
    case 1: /* Protection Set 1 */
        __mtcr(CPU_CPXE1, CPXERegisterValue.U);
        break;
    case 2: /* Protection Set 2 */
        __mtcr(CPU_CPXE2, CPXERegisterValue.U);
        break;
    case 3: /* Protection Set 2 */
        __mtcr(CPU_CPXE3, CPXERegisterValue.U);
        break;
  }
  __asm ("isync");
}
#define MPU_ASIL_STOP_SEC_CODE
#include "MPU_MemMap.h"
