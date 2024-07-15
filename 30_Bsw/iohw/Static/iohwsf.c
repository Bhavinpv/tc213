/** ****************************************************************************
 * \file    iohwsf.c
 * \brief   iohwsf file which is responsbile to handle all SMs.
 *
 * \section AUTHOR
 *    #. v-Yousef.Mohamed
 *
 * \section SVN
 *  $Date:  $
 *  $Author:  $
 *  $Revision:  $
 *
 * \section LICENSE
 * Copyright (c) 2016 Delta Energy Systems (Germany) GmbH.
 * All rights reserved.
 ******************************************************************************/

/*******************************************************************************
 * Included header
 ******************************************************************************/
#include "iohwsf.h"
#include "iohwsf_Reset.h"
#include "TstM.h"
#include "IfxScuWdt.h"
#include "IfxMtu_reg.h"
#include "IfxCpu.h"
#include "IfxMc_reg.h"
#include "Smu.h"
#include "IfxFlash_reg.h"
#include "Sl_FlsErrPtrn.h"
#include "IfxPort_reg.h"
#include "Pma_api.h"
#include "IfxScu_reg.h"
#include "IfxScu_bf.h"

/*******************************************************************************
 * Local constants and macros (private to module)
 ******************************************************************************/
#define MG_U8_SSCHECK_ALARM             ((uint8)5)
#define MG_U8_SSCHECK_POS               ((uint8)0)
#define MG_U8_SMU_CONFIG_CHECK_ALARM    ((uint8)5)
#define MG_U8_SMU_CONFIG_CHECK_POS      ((uint8)1)
#define MG_U8_ISR_MONITORING_ALARM      ((uint8)5)
#define MG_U8_ISR_MONITORING_POS        ((uint8)2)
#define MG_U8_SAFETLIB_ALARM            ((uint8)5)
#define MG_U8_SAFETLIB_POS              ((uint8)15)

#define MG_U8_TRIGGER_SYSTEM_RESET      ((uint8)0x01U)
#define MG_U8_SW_RESET_TYPE_SYSTEM      ((uint8)0x01U)
#define MG_U32_MCU_PERFORM_RESET_DELAY  ((uint32)0xFFFFFFFFU)

#define MG_U16_TIMEOUT                  ((uint16)0xFFFF)

#define MG_U8_CLKM_ALM                  ((uint8)3)
#define MG_U8_CLKM_ALM_POS_3            ((uint8)3)
#define MG_U8_CLKM_ALM_POS_4            ((uint8)4)
#define MG_U8_CLKM_ALM_POS_5            ((uint8)5)
#define MG_U8_CLKM_ALM_POS_6            ((uint8)6)
#define MG_U8_CLKM_ALM_POS_7            ((uint8)7)
#define MG_U8_CLKM_ALM_POS_8            ((uint8)8)
#define MG_U8_CLKM_ALM_POS_9            ((uint8)9)
#define MG_U8_BUS_MPU_ALM               ((uint8)0)
#define MG_U8_BUS_MPU_POS               ((uint8)1)

#define MG_PAGE_SIZE_IN_WORDS           (8U)

#define MG_PU32_PSPR_START              ((uint32*)0x70100000)

#define MG_U32_RANDOM_VALUE             (0U)
#define MG_U32_CLEAR_IED                (0U)

#define MG_U32_PSW_S_MASK                      ((uint32)0x4000)
#define MG_U32_PCXO_MASK                       ((uint32)0x0FFFF)
#define MG_U32_PCXS_MASK                       ((uint32)0xF0000)
#define MG_U32_CSA_ADDRESS_OFFSET_OFFSET       ((uint32)0x6)
#define MG_U32_CSA_ADDRESS_SEGMENT_OFFSET      ((uint32)12)

#define MG_U32_CANDIV_VALUE                    ((uint32)5)

#define MG_U32_PUSH_PULL_GPO                   ((uint32)0x10)

#define MG_U32_PTAG_AUTOINITIALIZE_CHECK       ((uint32)0x1)
#define MG_U32_PTAG_DSPR_EN_TEST_MODE          ((uint32)0x24000)
#define MG_U32_DIS_TEST_MODE                   ((uint32)0)
#define MG_U16_ECE_AENE_UENE_CENE              ((uint32)0x7800)
#define MG_U32_EN_PTAG_MEMMAP                  ((uint32)0x08000)
#define MG_U32_EN_PTAG_MEMMAP_CHECK            ((uint32)0x28000)
#define MG_U32_DIS_PTAG_MEMMAP                 ((uint32)0x0)
#define MG_SMUT_CLR_MASK                       ((uint32)0xFFFFFFF7)

#define MG_U32_EVROVMON_THRESHOLD              ((uint32)0x9E00FD)
#define MG_U32_EVRUVMON_THRESHOLD              ((uint32)0x8100D6)

/*******************************************************************************
 * Local data types (private typedefs / structs / enums)
 ******************************************************************************/
#define MPU_ASIL_START_SEC_CODE
#include "MPU_MemMap.h"

static inline uint16 mg_getCpuWatchdogPasswordInline(Ifx_SCU_WDTCPU *watchdog)
{
    uint16 password;

    /* Read Password from CON0 register
     * !!! NOTE: !!! when read bottom six bit of password are inverted so we have
     * to toggle them before returning password */
    password  = watchdog->CON0.B.PW;
    password ^= 0x003F;

    return password;
}

static inline void mg_clearCpuEndinitInline(Ifx_SCU_WDTCPU *watchdog, uint16 password)
{
    /* Read Config_0 register */
    Ifx_SCU_WDTCPU_CON0 wdt_con0;
    wdt_con0.U = watchdog->CON0.U;

    if (wdt_con0.B.LCK)
    {
        /* see Table 1 (Pass.word Access Bit Pattern Requirements) */
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

static inline void mg_setCpuEndinitInline(Ifx_SCU_WDTCPU *watchdog, uint16 password)
{
    /* Read Config_0 register */
    Ifx_SCU_WDTCPU_CON0 wdt_con0;
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

    // FIXME: old version: removed this line after check: watchdog->CON0.U; /* read is required */
}

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

static inline void mg_setProgramCache(boolean enable)
{
    if (enable)
    {                           /* Step 3: Initiate invalidation of current cache contents if any */
        Ifx_CPU_PCON1 pcon1;
        pcon1.U       = 0;
        pcon1.B.PCINV = 1;
        __mtcr(CPU_PCON1, pcon1.U);
    }

    uint16 wdtPassword = mg_getCpuWatchdogPasswordInline(&MODULE_SCU.WDTCPU[0]);
    /*PCACHE enable steps */
    {                           /* Step 1: Set PCBYP to 0 if cache is enabled */
        mg_clearCpuEndinitInline(&MODULE_SCU.WDTCPU[0], wdtPassword);
        Ifx_CPU_PCON0 pcon0;
        pcon0.U       = 0;
        pcon0.B.PCBYP = enable ? 0 : 1; /*depending on the enable bypass bit is reset/set */
        __mtcr(CPU_PCON0, pcon0.U);
        mg_setCpuEndinitInline(&MODULE_SCU.WDTCPU[0], wdtPassword);
    }
    /* Step 2: Call Isync */
    __isync();
}

static inline void mg_setDataCache(boolean enable)
{
    uint16 wdtPassword = mg_getCpuWatchdogPasswordInline(&MODULE_SCU.WDTCPU[0]);
    /*PCACHE enable steps */
    {                           /* Step 1: Set PCBYP to 0 if cache is enabled */
        mg_clearCpuEndinitInline(&MODULE_SCU.WDTCPU[0], wdtPassword);
        Ifx_CPU_DCON0 dcon0;
        dcon0.U       = 0;
        dcon0.B.DCBYP = enable ? 0 : 1; /*depending on the enable bypas bit is reset/set */
        __mtcr(CPU_DCON0, dcon0.U);
        mg_setCpuEndinitInline(&MODULE_SCU.WDTCPU[0], wdtPassword);
    }
    /* Step 2: Call Isync */
    __isync();
}

#define MPU_ASIL_STOP_SEC_CODE
#include "MPU_MemMap.h"

/*******************************************************************************
 * Local data (private to module)
 ******************************************************************************/
#define MPU_ASIL_START_SEC_VAR_NOINIT
#include "MPU_MemMap.h"
static uint32 mg_u32PswRegister;
#if 0
static uint32 mg_u32CanDiv;
#endif
#define MPU_ASIL_STOP_SEC_VAR_NOINIT
#include "MPU_MemMap.h"
/*******************************************************************************
 * Local function prototypes (private to module)
 ******************************************************************************/
static void mg_vMcu_PerformReset(void);
static void mg_vSramEccPreAou(void);
static void mg_vSramEccPostAou(void);
static void mg_vClkmPreAou(void);
static void mg_vPmuPreAou(void);
static void mg_vVlmPreAou(void);
/*Must be kept inline to change the PSW register*/
static inline void __attribute__((__always_inline__)) mg_vBusMpuPreAou(void);
static inline void __attribute__((__always_inline__)) mg_vBusMpuPostAou(void);

/*******************************************************************************
 * Global functions (public to other modules)
 ******************************************************************************/
#define MPU_ASIL_START_SEC_CODE
#include "MPU_MemMap.h"

void IOHWSF_vMcSafeStartUpChecks(void)
{
  /*Disabeling all interrupts covering: 0000050328-1287*/
  _disable();

  /*Covering SM_5_2_9:[SM_AURIX_STL_070]*/
  if(SL_PROG_DONE != Sl_ChkProgErrorPattern())
  {
    IOHWSF_vDefaultErrorHandler(IOHWSF_E_FLASH_TEST_PATTERN_NOT_FLSHED);
  }

  TstM_Init();

  TstM_InvalidateData();

  TstM_PreRunTst(TSTM_PRERUN_DEFAULT_GROUP_INDEX_0);

  TstM_PreRunTst(TSTM_PRERUN_DEFAULT_GROUP_INDEX_1);

  TstM_PreRunTst(TSTM_PRERUN_IR_GROUP_INDEX);

#if 1
  /*[PIPB-10431] SafeTlib lockstep test execution enabled: [DCDC_SM_5_2_1_2]*/
  TstM_PreRunTst(TSTM_PRERUN_LOCKSTEP_GROUP_INDEX);
#endif
}

void IOHWSF_vMcSafeSwitchToRunState(void)
{
  Std_ReturnType tResult = E_NOT_OK;
  uint16 u16CpuWdtPassword;

  P33_IOCR8.B.PC8 = MG_U32_PUSH_PULL_GPO;

  tResult = Smu_SetupErrorPin();
  if(E_OK != tResult)
  {
    IOHWSF_vDefaultErrorHandler(IOHWSF_E_SETUP_FSP_PIN);
  }

  tResult = Sl_SwitchTstPhase(SL_RUN);

  if(E_OK != tResult)
  {
    IOHWSF_vDefaultErrorHandler(IOHWSF_E_SMU_LOCK_CFG_TST);
  }

  TstM_Run();

  /*Enable SMU NMI*/
  u16CpuWdtPassword = mg_getCpuWatchdogPasswordInline(&MODULE_SCU.WDTCPU[0]);
  mg_clearCpuEndinitInline(&MODULE_SCU.WDTCPU[0], u16CpuWdtPassword);

  SCU_TRAPDIS.U &= MG_SMUT_CLR_MASK;

  mg_setCpuEndinitInline(&MODULE_SCU.WDTCPU[0], u16CpuWdtPassword);

  /*[PIPB-10303] DCDC_SM_5_2_23*/
  IOHWSF_vCheckRSRCON2_CSS0_Bit();
  /*Need to disable all interrupts because application was expecting so.*/
  _disable();
}

void IOHWSF_vDefaultErrorHandler(IOHWSF_E_ErrorType eError)
{
  // System reset
#if (PMA_ENABLE)
  Pma_vGetErrorInfo((u32)eError);
#endif/*PMA_ENABLE*/
  mg_vMcu_PerformReset();
  while(1);
}

void iohw_Wrapper_ClearAlarmStatus(const uint8 Group, const uint8 Pos)
{
  Smu_ClearAlarmStatus(Group, Pos);
}

/*Must be kept not inline to change the PSW register*/
Std_ReturnType __attribute__ ((noinline)) IOHWSF_tPreRunPreHook (uint8 GroupIndex)
{
  Std_ReturnType tResult = E_NOT_OK;

  switch(GroupIndex)
  {
    case(TSTM_PRERUN_DEFAULT_GROUP_INDEX_0):
    {
      /*Disabeling all interrupts*/
      _disable();

      /*Covering SM_5_2_5*/
      mg_vSramEccPreAou();

      /*Covering SM_5_2_4*/
      mg_vClkmPreAou();

      /*Covering SM_5_2_13*/
      mg_vPmuPreAou();

      /*Initializing PSPR start 8 byte covering SM_5_2_13:[SM_AURIX_STL_058] */
      MG_PU32_PSPR_START[0] = 0;
      MG_PU32_PSPR_START[1] = 0;

     /*Clear DSE Traps by writing any value to the DSTR Covering SM_5_2_16:[SM_AURIX_STL_129]*/
     MTCR(CPU_DSTR, MG_U32_RANDOM_VALUE);

     /*Clear DAE Traps by writing any value to the DATR Covering SM_5_2_18:[SM_AURIX_STL_126]*/
     MTCR(CPU_DATR, MG_U32_RANDOM_VALUE);

      /*Covering: SM_5_2_20*/
      mg_vBusMpuPreAou();

      tResult = E_OK;
      break;
    }
    case(TSTM_PRERUN_IR_GROUP_INDEX):
    {
      /*Enabeling Interrupts*/
      _enable();

      tResult = E_OK;
      break;
    }
    case(TSTM_PRERUN_DEFAULT_GROUP_INDEX_1):
    {
      /*Disabeling all interrupts*/
      _disable();

      mg_vVlmPreAou();

      tResult = E_OK;
      break;
    }
    case(TSTM_PRERUN_LOCKSTEP_GROUP_INDEX):
    {
      /*Disabeling all interrupts*/
      _disable();

      tResult = E_OK;
      break;
    }
    default:
    break;
  }

  return tResult;
}

/*Must be kept not inline to change the PSW register*/
Std_ReturnType __attribute__ ((noinline)) IOHWSF_tPreRunPostHook (uint8 GroupIndex)
{
  Std_ReturnType tResult = E_NOT_OK;

  /*Disabeling all interrupts*/
  _disable();

  switch(GroupIndex)
  {
    case(TSTM_PRERUN_DEFAULT_GROUP_INDEX_0):
    {
      /*Covering: SM_5_2_5*/
      mg_vSramEccPostAou();

      /*Covering: SM_5_2_20 */
      mg_vBusMpuPostAou();

      tResult = E_OK;
      break;
    }
    case(TSTM_PRERUN_DEFAULT_GROUP_INDEX_1):
    {

      tResult = E_OK;
      break;
    }
    case(TSTM_PRERUN_LOCKSTEP_GROUP_INDEX ):
    case(TSTM_PRERUN_IR_GROUP_INDEX       ):
    {
      tResult = E_OK;
      break;
    }
    default:
    break;
  }

  return tResult;
}
void IOHWSF_vSrcRegestersCheck(void)
{
  TstM_SRCRegestersCheck();
}
/*******************************************************************************
 * Local functions (private to module)
 ******************************************************************************/
static void mg_vMcu_PerformReset(void)
{
  /* Local variables used in this API */
  volatile uint32 LoopCount;
  uint16 u16EndinitSfty_pw;

  /* Unlock Safety EndInit */
  u16EndinitSfty_pw = mg_getSafetyWatchdogPassword();
  mg_clearSafetyEndinit(u16EndinitSfty_pw);

  /* Trigger System Reset By setting the SW bits in the RSTCON Register to 0x01 */
  SCU_RSTCON.B.SW = MG_U8_SW_RESET_TYPE_SYSTEM;
  SCU_SWRSTCON.B.SWRSTREQ = MG_U8_TRIGGER_SYSTEM_RESET;

  /*Lock Safety EndInit */
  mg_setSafetyEndinit(u16EndinitSfty_pw);

  /* Add some delay for HW to reset */
  for(LoopCount = 0U;LoopCount<(uint32)MG_U32_MCU_PERFORM_RESET_DELAY;LoopCount++)
  {
    __asm("nop");
  }
}

static void mg_vSramEccPreAou(void)
{
  uint16 u16CpuWdtPassword;
  uint16 u16Timeout;
  uint16 u16EndinitSfty_pw;

  u16CpuWdtPassword = mg_getCpuWatchdogPasswordInline(&MODULE_SCU.WDTCPU[0]);
  mg_clearCpuEndinitInline(&MODULE_SCU.WDTCPU[0], u16CpuWdtPassword);

  /* Enable MTU clock: */
  MTU_CLC.B.DISR = 0U;

  u16Timeout = MG_U16_TIMEOUT;
  while((MTU_CLC.B.DISS > 0U) && (u16Timeout > 0U))
  {
    u16Timeout--;
  } /* while((MTU_CLC.B.DISS > 0U) && (Timeout > 0U)) */
  if (MTU_CLC.B.DISS != 0U)
  {
    // mg_vMcu_PerformReset();
    IOHWSF_vDefaultErrorHandler(IOHWSF_E_UDS_SRAM_ECCPREAOU_FAILED);
  } /* if (MTU_CLC.B.DISS == 0U) */

  mg_setCpuEndinitInline(&MODULE_SCU.WDTCPU[0], u16CpuWdtPassword);

  /* Unlock Safety EndInit */
  u16EndinitSfty_pw = mg_getSafetyWatchdogPassword();
  mg_clearSafetyEndinit(u16EndinitSfty_pw);

  MTU_MEMTEST0.U = MG_U32_PTAG_DSPR_EN_TEST_MODE;

  while(MG_U32_PTAG_DSPR_EN_TEST_MODE != MTU_MEMTEST0.U)
  {
  }

  MC17_ECCD.U |= MG_U16_ECE_AENE_UENE_CENE;
  MC14_ECCD.U |= MG_U16_ECE_AENE_UENE_CENE;

  MTU_MEMTEST0.U = MG_U32_DIS_TEST_MODE;

  /*[PIPB-10170] SM_AURIX_STL_105*/
  while(MG_U32_PTAG_AUTOINITIALIZE_CHECK == MTU_MEMSTAT0.B.CPU0PTAIU)
  {
  }

  /*Lock Safety EndInit */
  mg_setSafetyEndinit(u16EndinitSfty_pw);
}

static void mg_vSramEccPostAou(void)
{
  /*enable/disable program cache depending on the configuration */
  mg_setProgramCache(TRUE);

  /*enable/disable data cache depending on the configuration */
  mg_setDataCache(TRUE);
}

static void mg_vClkmPreAou(void)
{
  /*Clearing Clock monitor alarms under test*/
  Smu_ClearAlarmStatus(MG_U8_CLKM_ALM, MG_U8_CLKM_ALM_POS_3);
  Smu_ClearAlarmStatus(MG_U8_CLKM_ALM, MG_U8_CLKM_ALM_POS_4);
  Smu_ClearAlarmStatus(MG_U8_CLKM_ALM, MG_U8_CLKM_ALM_POS_5);
  Smu_ClearAlarmStatus(MG_U8_CLKM_ALM, MG_U8_CLKM_ALM_POS_6);
  Smu_ClearAlarmStatus(MG_U8_CLKM_ALM, MG_U8_CLKM_ALM_POS_7);
  Smu_ClearAlarmStatus(MG_U8_CLKM_ALM, MG_U8_CLKM_ALM_POS_8);
  Smu_ClearAlarmStatus(MG_U8_CLKM_ALM, MG_U8_CLKM_ALM_POS_9);
}

static void mg_vPmuPreAou(void)
{
  uint16 u16CpuWdtPassword;

  /*Covering [SM_AURIX_STL_063]*/
  u16CpuWdtPassword = mg_getCpuWatchdogPasswordInline(&MODULE_SCU.WDTCPU[0]);
  mg_clearCpuEndinitInline(&MODULE_SCU.WDTCPU[0], u16CpuWdtPassword);

  FLASH0_FCON.B.NSAFECC = 0;

  mg_setCpuEndinitInline(&MODULE_SCU.WDTCPU[0], u16CpuWdtPassword);
}
static void mg_vVlmPreAou(void)
{
  uint16 u16EndinitSfty_pw;

  /* Unlock Safety EndInit */
  u16EndinitSfty_pw = mg_getSafetyWatchdogPassword();
  mg_clearSafetyEndinit(u16EndinitSfty_pw);

  SCU_EVROVMON.U = MG_U32_EVROVMON_THRESHOLD;

  /*Lock Safety EndInit */
  mg_setSafetyEndinit(u16EndinitSfty_pw);
  u16EndinitSfty_pw = mg_getSafetyWatchdogPassword();
  mg_clearSafetyEndinit(u16EndinitSfty_pw);

  SCU_EVRUVMON.U = MG_U32_EVRUVMON_THRESHOLD;
 
  /*Lock Safety EndInit */
  mg_setSafetyEndinit(u16EndinitSfty_pw);

  /*.Read back written data to confirm that it is already written to registers */
  while((MG_U32_EVROVMON_THRESHOLD != SCU_EVROVMON.U) || (MG_U32_EVRUVMON_THRESHOLD != SCU_EVRUVMON.U))
  {
  }
}

/*Must be kept inline to change the PSW register*/
static inline void __attribute__((__always_inline__)) mg_vBusMpuPreAou(void)
{
  uint32  u32PcxiRegister;
  uint32  u32PswRegister;
  uint32* pu32CsaBaseAddress;
  uint32* pu32PswRegister;

  /*CLEAR IED Bit covering [SM_AURIX_STL_052]*/
  MTCR(CPU_PIETR, MG_U32_CLEAR_IED);

  /*Covering: [SM_AURIX_STL_054]*/
  Smu_ClearAlarmStatus(MG_U8_BUS_MPU_ALM, MG_U8_BUS_MPU_POS);

  u32PcxiRegister = MFCR(CPU_PCXI);

  /* Generating CSA base address generation from PCXI*/
  pu32CsaBaseAddress = (uint32*)((uint32)(u32PcxiRegister & MG_U32_PCXO_MASK) << MG_U32_CSA_ADDRESS_OFFSET_OFFSET);
  pu32CsaBaseAddress = (uint32*)((uint32)pu32CsaBaseAddress | (uint32)((uint32)(u32PcxiRegister & MG_U32_PCXS_MASK) << MG_U32_CSA_ADDRESS_SEGMENT_OFFSET));
  pu32PswRegister = pu32CsaBaseAddress + 1;

  /*Saving and clearing S bit Covering:[SM_AURIX_STL_183]*/
  mg_u32PswRegister = *pu32PswRegister;
  u32PswRegister = mg_u32PswRegister & (~(MG_U32_PSW_S_MASK));
  *pu32PswRegister = u32PswRegister;
}

/*Must be kept inline to change the PSW register*/
static inline void __attribute__((__always_inline__)) mg_vBusMpuPostAou(void)
{
  uint32  u32PcxiRegister;
  uint32  u32PswRegister;
  uint32* pu32CsaBaseAddress;
  uint32* pu32PswRegister;

  u32PcxiRegister = MFCR(CPU_PCXI);

  /* Generating CSA base address generation from PCXI*/
  pu32CsaBaseAddress = (uint32*)((uint32)(u32PcxiRegister & MG_U32_PCXO_MASK) << MG_U32_CSA_ADDRESS_OFFSET_OFFSET);
  pu32CsaBaseAddress = (uint32*)((uint32)pu32CsaBaseAddress | (uint32)((uint32)(u32PcxiRegister & MG_U32_PCXS_MASK) << MG_U32_CSA_ADDRESS_SEGMENT_OFFSET));
  pu32PswRegister = pu32CsaBaseAddress + 1;

  /*Restoring S bit Covering:[SM_AURIX_STL_183]*/
  u32PswRegister = *pu32PswRegister;
  u32PswRegister = u32PswRegister | (mg_u32PswRegister & (MG_U32_PSW_S_MASK));
  *pu32PswRegister = u32PswRegister;
}


inline void IOHWSF_ACCESSPROT_vSwitchToSafeISR(void)
{
    Ifx_CPU_PSW PSWRegisterValue;
    PSWRegisterValue.U = __mfcr(CPU_PSW);               /* Get the Program Status Word (PSW) register value         */
    PSWRegisterValue.B.S = 1;                           /* Set the S bitfield to enable the Protection Set        */
    __mtcr(CPU_PSW, PSWRegisterValue.U);                /* Set the Program Status Word (PSW) register               */
    __isync();
    PSWReg_Rd0.U = __mfcr(CPU_PSW);
}

#define MPU_ASIL_STOP_SEC_CODE
#include "MPU_MemMap.h"




/*
 * End of file
 */
