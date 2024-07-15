/*******************************************************************************
 * \file    iohwsf_AccessProt.c
 * \brief   file is responsbile for handling Access Prot
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

/*******************************************************************************
 * Included header
 ******************************************************************************/
#include "iohwsf_AccessProt.h"
#include "IfxScu_reg.h"
#include "IfxStm_reg.h"
#include "IfxGpt12_reg.h"
#include "IfxSmu_reg.h"
#include "IfxMtu_reg.h"
#include "IfxSbcu_reg.h"
#include "IfxQspi_reg.h"
#include "IfxCan_reg.h"
#include "IfxInt_reg.h"
#include "IfxCpu_reg.h"
#include "IfxPort_reg.h"
#include "IfxVadc_reg.h"
#include "IfxCpu_reg.h"
#include "IfxGtm_reg.h"

/*******************************************************************************
 * Local constants and macros (private to module)
 ******************************************************************************/
#define MG_U32_ACCESS_EN_NO_MASTERS               ((uint32)0x00000000U)
#define MG_U32_ACCESS_EN_CPU0SAFE_CERBERUS        ((uint32)0x00000402U)
#define MG_U32_ACCESS_EN_CPU0_CERBERUS            ((uint32)0x00000403U)
#define MG_U32_ACCESS_EN_CPU0SAFE                 ((uint32)0x00000002U)
#define MG_U32_ACCESS_EN_CPU0                     ((uint32)0x00000003U)

#define MG_U32_PSW_S_MASK                         ((uint32)0x4000)
#define MG_U32_PCXO_MASK                          ((uint32)0x0FFFF)
#define MG_U32_PCXS_MASK                          ((uint32)0xF0000)
#define MG_U32_CSA_ADDRESS_OFFSET_OFFSET          ((uint32)0x6)
#define MG_U32_CSA_ADDRESS_SEGMENT_OFFSET         ((uint32)12)

#if STD_ON == IOHWSF_ACCESSPROT_DEBUGGING

#define MG_U32_ACCEESS_EN_SAFE                    MG_U32_ACCESS_EN_CPU0SAFE_CERBERUS
#define MG_U32_ACCEESS_EN_NON_SAFE                MG_U32_ACCESS_EN_CPU0_CERBERUS

#else

#define MG_U32_ACCEESS_EN_SAFE                    MG_U32_ACCESS_EN_CPU0SAFE
#define MG_U32_ACCEESS_EN_NON_SAFE                MG_U32_ACCESS_EN_CPU0

#endif
/*******************************************************************************
 * Local data types (private typedefs / structs / enums)
 ******************************************************************************/
#define IOHWSF_FFI_U32_CLK_ENABLE          ((uint32)0x00000000)
#define IOHWSF_FFI_U32_CLK_DISABLE         ((uint32)0x00000001)

#define MPU_ASIL_START_SEC_VAR_NOINIT
#include "MPU_MemMap.h"
static uint32 mg_u32PswRegister;
#define MPU_ASIL_STOP_SEC_VAR_NOINIT
#include "MPU_MemMap.h"

/*******************************************************************************
 * Global constants and macros
 ******************************************************************************/


/*******************************************************************************
 * Global data types (typedefs / structs / enums)
 ******************************************************************************/


/*******************************************************************************
 * Global data
 ******************************************************************************/
#define MPU_ASIL_START_SEC_CODE
#include "MPU_MemMap.h"
/*******************************************************************************
 * Local function prototypes (private to module)
 ******************************************************************************/
static void mg_vWriteSafetyEndInitProtReg(volatile uint32 * pu32Register, uint32 u32Data);

static inline uint16 mg_getSafetyWatchdogPassword(void)
{
    uint16        password;
    Ifx_SCU_WDTS *watchdog = &MODULE_SCU.WDTS;

    /* Read Password from Safety WDT CON0 register
     * !!! NOTE: !!! when read bottom six bit of password are inverted so we have
     * to toggle them before returning password */
    password  = watchdog->CON0.B.PW;
    password ^= 0x003F;

    return password;
}

static inline void mg_clearSafetyEndinit(uint16 password)
{
    Ifx_SCU_WDTS     *watchdog = &MODULE_SCU.WDTS;
    /* Read Config_0 register */
    Ifx_SCU_WDTS_CON0 wdt_con0;
    wdt_con0.U = watchdog->CON0.U;

    if (wdt_con0.B.LCK)
    {
        /* see Table 1 (Password Access Bit Pattern Requirements) */
        wdt_con0.B.ENDINIT = 1;
        wdt_con0.B.LCK     = 0;
        wdt_con0.B.PW      = password;

        /* Password ready. Store it to WDT_CON0 to unprotect the register */
        watchdog->CON0.U = wdt_con0.U;
    }

    /* Clear ENDINT and set LCK bit in Config_0 register */
    wdt_con0.B.ENDINIT = 0;
    wdt_con0.B.LCK     = 1;
    watchdog->CON0.U   = wdt_con0.U;

    /* read back ENDINIT and wait until it has been cleared */
    while (watchdog->CON0.B.ENDINIT == 1)
    {}
}

static inline void mg_setSafetyEndinit(uint16 password)
{
    Ifx_SCU_WDTS     *watchdog = &MODULE_SCU.WDTS;

    /* Read Config_0 register */
    Ifx_SCU_WDTS_CON0 wdt_con0;
    wdt_con0.U = watchdog->CON0.U;

    if (wdt_con0.B.LCK)
    {
        /* see Table 1 (Password Access Bit Pattern Requirements) */
        wdt_con0.B.ENDINIT = 1;
        wdt_con0.B.LCK     = 0;
        wdt_con0.B.PW      = password;

        /* Password ready. Store it to WDT_CON0 to unprotect the register */
        watchdog->CON0.U = wdt_con0.U;
    }

    /* Set ENDINT and set LCK bit in Config_0 register */
    wdt_con0.B.ENDINIT = 1;
    wdt_con0.B.LCK     = 1;
    watchdog->CON0.U   = wdt_con0.U;

    /* read back ENDINIT and wait until it has been set */
    while (watchdog->CON0.B.ENDINIT == 0)
    {}
}

static void mg_vWriteSafetyEndInitProtReg(volatile uint32 * pu32Register, uint32 u32Data)
{
  uint16 u16EndinitSfty_pw;

  /* Unlock Safety EndInit */
  u16EndinitSfty_pw = mg_getSafetyWatchdogPassword();
  mg_clearSafetyEndinit(u16EndinitSfty_pw);

  *pu32Register = u32Data;

  /*Lock Safety EndInit */
  mg_setSafetyEndinit(u16EndinitSfty_pw);
}

static inline void __attribute__((__always_inline__)) mg_vSettingAccessRights(void)
{
  Ifx_CPU_PSW PSWRegisterValue;
  Ifx_CPU_SYSCON SYSCONRegisterValue;
  uint16 u16EndinitSfty_pw;
  uint32  u32PcxiRegister;
  uint32  u32PswRegister;
  uint32* pu32CsaBaseAddress;
  uint32* pu32PswRegister;

  PSWRegisterValue.U = __mfcr(CPU_PSW);
  PSWRegisterValue.B.S = 1;
  __mtcr(CPU_PSW, PSWRegisterValue.U);
  __isync();

  u32PcxiRegister = __mfcr(CPU_PCXI);

  /* Generating CSA base address generation from PCXI*/
  pu32CsaBaseAddress = (uint32*)((uint32)(u32PcxiRegister & MG_U32_PCXO_MASK) << MG_U32_CSA_ADDRESS_OFFSET_OFFSET);
  pu32CsaBaseAddress = (uint32*)((uint32)pu32CsaBaseAddress | (uint32)((uint32)(u32PcxiRegister & MG_U32_PCXS_MASK) << MG_U32_CSA_ADDRESS_SEGMENT_OFFSET));
  pu32PswRegister = pu32CsaBaseAddress + 1;

  /*Set S bit of PSW register*/
  mg_u32PswRegister = *pu32PswRegister;
  u32PswRegister = mg_u32PswRegister | (MG_U32_PSW_S_MASK);
  *pu32PswRegister = u32PswRegister;
  

  SYSCONRegisterValue.U = __mfcr(CPU_SYSCON);
  SYSCONRegisterValue.B.IS = 1;
  SYSCONRegisterValue.B.IT = 1;

  u16EndinitSfty_pw = mg_getSafetyWatchdogPassword();
  mg_clearSafetyEndinit(u16EndinitSfty_pw);

  __mtcr(CPU_SYSCON, SYSCONRegisterValue.U);
  __isync();

  mg_setSafetyEndinit(u16EndinitSfty_pw);
  
}

/*******************************************************************************
 * Global function prototypes
 ******************************************************************************/

/** ****************************************************************************
 * \brief Function to grant the Access for the allowed masters to the functional
 *        blocks configuration registers.
 *
 * covers: SM_5_1_39 [PIPB-11295]
 ******************************************************************************/
void IOHWSF_ACCESSPROT_vConfigureAccessProtection(void)
{
  mg_vSettingAccessRights();

  /* SCU (CCU, RESET, PMC, DTS) Access Control */
  mg_vWriteSafetyEndInitProtReg((volatile uint32 *)&SCU_ACCEN0.U,
                                MG_U32_ACCEESS_EN_SAFE);

  /* STM Access Control (STM0) */
  mg_vWriteSafetyEndInitProtReg((volatile uint32 *)&STM0_ACCEN0.U,
                                MG_U32_ACCEESS_EN_SAFE);

  /* GTM Access Control */
  mg_vWriteSafetyEndInitProtReg((volatile uint32 *)&GTM_ACCEN0.U,
                                MG_U32_ACCEESS_EN_SAFE);

  /* SMU Access Control */
  mg_vWriteSafetyEndInitProtReg((volatile uint32 *)&SMU_ACCEN0.U,
                                MG_U32_ACCEESS_EN_SAFE);

  /* MTU Access Control */
  mg_vWriteSafetyEndInitProtReg((volatile uint32 *)&(MTU_ACCEN0.U),
                                MG_U32_ACCEESS_EN_SAFE);

  /* FPI Access Control (SBCU)*/
  mg_vWriteSafetyEndInitProtReg((volatile uint32 *)&SBCU_ACCEN0.U,
                                MG_U32_ACCEESS_EN_SAFE);

  /* QSPI Access Control (QSPI0) */
  mg_vWriteSafetyEndInitProtReg((volatile uint32 *)&(QSPI0_ACCEN0.U),
                                MG_U32_ACCEESS_EN_SAFE);

  /* MCMCAN Access Control (CAN0) */
  mg_vWriteSafetyEndInitProtReg((volatile uint32 *)&(CAN_ACCEN0.U),
                                MG_U32_ACCEESS_EN_NON_SAFE);

  /* Interrupt Router Access Control (IR or INT)*/
  /* P1 protected registers */
  mg_vWriteSafetyEndInitProtReg((volatile uint32 *)&INT_ACCEN00.U,
                                MG_U32_ACCEESS_EN_SAFE);

  /* P0 protected registers */
  mg_vWriteSafetyEndInitProtReg((volatile uint32 *)&INT_ACCEN10.U,
                                MG_U32_ACCEESS_EN_SAFE);

  /* Protected memory region */
  mg_vWriteSafetyEndInitProtReg((volatile uint32 *)&CPU0_SPROT_RGNACCENA0.U,
                                MG_U32_ACCEESS_EN_SAFE);
  mg_vWriteSafetyEndInitProtReg((volatile uint32 *)&CPU0_SPROT_RGNACCENB0.U,
                                MG_U32_ACCESS_EN_NO_MASTERS);
  mg_vWriteSafetyEndInitProtReg((volatile uint32 *)&CPU0_SPROT_RGNACCENA1.U,
                                MG_U32_ACCEESS_EN_SAFE);
  mg_vWriteSafetyEndInitProtReg((volatile uint32 *)&CPU0_SPROT_RGNACCENB1.U,
                                MG_U32_ACCESS_EN_NO_MASTERS);
  mg_vWriteSafetyEndInitProtReg((volatile uint32 *)&CPU0_SPROT_RGNACCENA2.U,
                                MG_U32_ACCEESS_EN_SAFE);
  mg_vWriteSafetyEndInitProtReg((volatile uint32 *)&CPU0_SPROT_RGNACCENB2.U,
                                MG_U32_ACCESS_EN_NO_MASTERS);
  mg_vWriteSafetyEndInitProtReg((volatile uint32 *)&CPU0_SPROT_RGNACCENA3.U,
                                MG_U32_ACCEESS_EN_SAFE);
  mg_vWriteSafetyEndInitProtReg((volatile uint32 *)&CPU0_SPROT_RGNACCENB3.U,
                                MG_U32_ACCESS_EN_NO_MASTERS);
  mg_vWriteSafetyEndInitProtReg((volatile uint32 *)&CPU0_SPROT_RGNACCENA4.U,
                                MG_U32_ACCEESS_EN_SAFE);
  mg_vWriteSafetyEndInitProtReg((volatile uint32 *)&CPU0_SPROT_RGNACCENB4.U,
                                MG_U32_ACCESS_EN_NO_MASTERS);
  mg_vWriteSafetyEndInitProtReg((volatile uint32 *)&CPU0_SPROT_RGNACCENA5.U,
                                MG_U32_ACCEESS_EN_SAFE);
  mg_vWriteSafetyEndInitProtReg((volatile uint32 *)&CPU0_SPROT_RGNACCENB5.U,
                                MG_U32_ACCESS_EN_NO_MASTERS);
  mg_vWriteSafetyEndInitProtReg((volatile uint32 *)&CPU0_SPROT_RGNACCENA6.U,
                                MG_U32_ACCEESS_EN_SAFE);
  mg_vWriteSafetyEndInitProtReg((volatile uint32 *)&CPU0_SPROT_RGNACCENB6.U,
                                MG_U32_ACCESS_EN_NO_MASTERS);
  mg_vWriteSafetyEndInitProtReg((volatile uint32 *)&CPU0_SPROT_RGNACCENA7.U,
                                MG_U32_ACCEESS_EN_SAFE);
  mg_vWriteSafetyEndInitProtReg((volatile uint32 *)&CPU0_SPROT_RGNACCENB7.U,
                                MG_U32_ACCESS_EN_NO_MASTERS);

  /* CPU0 CSFR/SFR Access Control */
  mg_vWriteSafetyEndInitProtReg((volatile uint32 *)&CPU0_SPROT_ACCENA.U,
                                MG_U32_ACCEESS_EN_SAFE);
  mg_vWriteSafetyEndInitProtReg((volatile uint32 *)&CPU0_SPROT_ACCENB.U,
                                MG_U32_ACCESS_EN_NO_MASTERS);

  /* Port 11 Access Control (Sbc Pins) */
  mg_vWriteSafetyEndInitProtReg((volatile uint32 *)&P11_ACCEN0.U,
                                MG_U32_ACCEESS_EN_SAFE);
  
  /* Port 15 Access Control (Internal CAN Pins) */
  mg_vWriteSafetyEndInitProtReg((volatile uint32 *)&P15_ACCEN0.U,
                                MG_U32_ACCEESS_EN_NON_SAFE);
  
  /* Port 23 Access Control (CAN_Stdby Pin) */
  mg_vWriteSafetyEndInitProtReg((volatile uint32 *)&P23_ACCEN0.U,
                                MG_U32_ACCEESS_EN_NON_SAFE);

  /* Port 33 Access Control (CAN Pins) */
  mg_vWriteSafetyEndInitProtReg((volatile uint32 *)&P33_ACCEN0.U,
                                MG_U32_ACCEESS_EN_NON_SAFE);

  /* EVADC Access Control */
  mg_vWriteSafetyEndInitProtReg((volatile uint32 *)&VADC_ACCEN0.U,
                                MG_U32_ACCEESS_EN_NON_SAFE);

}

#define MPU_ASIL_STOP_SEC_CODE
#include "MPU_MemMap.h"

/*
 * End of file
 */
