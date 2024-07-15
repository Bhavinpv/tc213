/*******************************************************************************
 * Filename   : Safety_cfg.c
 * Project    : IPB LVDC
 * Author(s)  :
 * Created    :
 * Description: Safety Measure Configuration
 *
 * Last modification:
 *  on $Date: $
 *  by $Author: $
 *  current $Revision: $
 *
 * Compiler info :
 * Processor info: TC 213
 *
 * Copyright (c) 2021 Delta Energy Systems (Germany) GmbH.
 * All rights reserved.
 ******************************************************************************/

/*******************************************************************************
 * Included header
 ******************************************************************************/
#include "Safety_cfg.h"
#include "Main_api.h"
#include "Gtm_api.h"
#include "iohwsf.h"
// #include "Smu.h"

/*******************************************************************************
 * Local constants and macros (private to module)
 ******************************************************************************/

/*******************************************************************************
 * Local data types (private typedefs / structs / enums)
 ******************************************************************************/

/*******************************************************************************
 * Local data (private to module)
 ******************************************************************************/

#define MPU_ASIL_START_SEC_VAR_NOINIT
#include "MPU_MemMap.h"
u16 SafetyDebug[10];
u16 ClearAlarm;

/*******************************************************************************
 * Global data (public to other modules)
 ******************************************************************************/
SAFETY_S_ERROR Safety_CfgError;
#define MPU_ASIL_STOP_SEC_VAR_NOINIT
#include "MPU_MemMap.h"

/*******************************************************************************
 * Local function prototypes (private to module)
 ******************************************************************************/
void Safety_Power_SM1_HW_ExtVREG_MON(void);
void Safety_Power_SM1_HW_ExtV13_MON(void);
void Safety_Power_SM1_HW_BANDGAP_MON(void);
void Safety_Power_SM1_AoU_EVR_CFGMON(void);

void Safety_Clock_SM1_HW_SystemPLL_CLKMON(void);
void Safety_Clock_SM1_HW_SRI_CLKMON(void);
void Safety_Clock_SM1_HW_SPB_CLKMON(void);
void Safety_Clock_SM1_HW_GTM_CLKMON(void);

void Safety_CPU_SM1_HW_CPU_DATA_MPU(void);

void Safety_SRAM_SM1_HW_SRAM_ECC(void);

void Safety_PFLASH_SM1_HW_PFLASH_Monitor(void);

void Safety_SPB_SM2_AoU_SBCU_InitCheck(void);

void Safety_SMU_SM2_AoU_SMU_InitCheck(void);

void Safety_WDT_SM2_AoU_WDT_InitCheck(void);
void Safety_WDT_SM2_AoU_RESET_SSCheck(void);

/*******************************************************************************
 * Global functions (public to other modules)
 ******************************************************************************/

#define MPU_ASIL_START_SEC_CODE
#include "MPU_MemMap.h"
void Safety_Cfg(void)
{
	Safety_CfgError.all = 0;
#if SAFETY_ENABLE
	// Power
	Safety_Power_SM1_HW_ExtVREG_MON();
	Safety_Power_SM1_HW_ExtV13_MON();
	Safety_Power_SM1_HW_BANDGAP_MON();
	Safety_Power_SM1_AoU_EVR_CFGMON();

	// Clock
	Safety_Clock_SM1_HW_SystemPLL_CLKMON();
	Safety_Clock_SM1_HW_SRI_CLKMON();
	Safety_Clock_SM1_HW_SPB_CLKMON();
	Safety_Clock_SM1_HW_GTM_CLKMON();

	// CPU
	Safety_CPU_SM1_HW_CPU_DATA_MPU();

	// SRAM
	Safety_SRAM_SM1_HW_SRAM_ECC();

	// PFLASH
	Safety_PFLASH_SM1_HW_PFLASH_Monitor();

	// SPB
	Safety_SPB_SM2_AoU_SBCU_InitCheck();

	// SMU
	Safety_SMU_SM2_AoU_SMU_InitCheck();

	// WDT
	Safety_WDT_SM2_AoU_WDT_InitCheck();
	Safety_WDT_SM2_AoU_RESET_SSCheck();
#endif
	if(PORT_HWVER_1)
	{
		Safety_IOM_Cfg();
	}
}

void Safety_IOM_Cfg(void)
{
	// Clear CPU ENDINIT
	IfxScuWdt_clearCpuEndinit(IfxScuWdt_getCpuWatchdogPassword());
	IOM_CLC.B.DISR = 0;			// Enable IOM module
	IOM_CLC.B.RMC = 1;			// Clock divider, can't be 0
	IfxScuWdt_setCpuEndinit(IfxScuWdt_getCpuWatchdogPassword());

	// FPC Config
//	IOM_FPCCTR13.B.ISM = IOM_ISM_MON0;		// Monitor		: IOM_REF_0_13 (for debug)
	IOM_FPCCTR14.B.ISM = IOM_ISM_PIN;		// Monitor		: IOM_PIN14 (P20.13)
	IOM_FPCCTR1.B.ISR = IOM_ISR_REF0;		// Reference	: IOM_REF_0_1 (TOUT1)
	IOM_FPCCTR14.B.MOD = IOM_FPC_IDFM_RFE;	// Immediate Debounce Filter Mode on both edges
	IOM_FPCCTR14.B.CMP = 5;					// Threshold value compared with FPCTIMk.TIM

	IOM_FPCCTR9.B.ISM = IOM_ISM_PIN;		// Monitor		: IOM_PIN9 (P33.9)
	IOM_FPCCTR3.B.ISR = IOM_ISR_REF0;		// Reference	: IOM_REF_0_3 (TOUT3)
	IOM_FPCCTR9.B.MOD = IOM_FPC_IDFM_RFE;	// Immediate Debounce Filter Mode on both edges
	IOM_FPCCTR9.B.CMP = 5;					// Threshold value compared with FPCTIMk.TIM

	// LAM Config
	IOM_LAMCFG0.B.MCS = 14;		// Monitor signal provided by FPC/mux block 14
	IOM_LAMCFG0.B.RCS = 1;		// Reference signal provided by FPC/mux block 1
	IOM_LAMCFG0.B.MOS = 1;		// Monitor signal is EXOR��d with FPCrch
	IOM_LAMCFG0.B.EWS = 0;		// Event window generation is determined from the reference signal
	IOM_LAMEWS0.B.THR = 10;		// Threshold value for the event window counter (maximum delay time)
	IOM_LAMCFG0.B.EDS = (IOM_EDS_GATE_FE | IOM_EDS_CLR_RFE);	// Determine active edges of event window generation

	IOM_LAMCFG1.B.MCS = 9;		// Monitor signal provided by FPC/mux block 9
	IOM_LAMCFG1.B.RCS = 3;		// Reference signal provided by FPC/mux block 3
	IOM_LAMCFG1.B.MOS = 1;		// Monitor signal is EXOR��d with FPCrch
	IOM_LAMCFG1.B.EWS = 0;		// Event window generation is determined from the reference signal
	IOM_LAMEWS1.B.THR = 10;		// Threshold value for the event window counter (maximum delay time)
	IOM_LAMCFG1.B.EDS = (IOM_EDS_GATE_FE | IOM_EDS_CLR_RFE);	// Determine active edges of event window generation

	// ECM Config
	IOM_ECMSELR.B.CES0 = 1;		// Enable channel 0 event generation
	IOM_ECMSELR.B.CES1 = 1;		// Enable channel 1 event generation
}

#if 1
void Safety_Check10ms(void)
{
  const u8 AlmGrp = 2u;
  const u8 AlmPos = 26u;
#if SAFETY_ENABLE
	// Power
	if(SMU_AG3.B.SF15 || SMU_AG3.B.SF16)
	{
		Safety_CfgError.bit.ExtVREG_MON = 1;
	}
	if(SMU_AG3.B.SF11 || SMU_AG3.B.SF12)
	{
		Safety_CfgError.bit.ExtV13_MON = 1;
	}

	// Clock
	if(SMU_AG3.B.SF5)
	{
		Safety_CfgError.bit.SystemPLL_CLKMON = 1;
	}
	if(SMU_AG3.B.SF6)
	{
		Safety_CfgError.bit.SRI_CLKMON = 1;
	}
	if(SMU_AG3.B.SF7)
	{
		Safety_CfgError.bit.SPB_CLKMON = 1;
	}
	if(SMU_AG3.B.SF8)
	{
		Safety_CfgError.bit.GTM_CLKMON = 1;
	}
#endif
	// IOM
	if(SMU_AG2.B.SF26)
	{
		Safety_CfgError.bit.Pri_PWM_IOM = 1;
		iohw_Wrapper_ClearAlarmStatus(AlmGrp, AlmPos);
	}
#if SAFETY_ENABLE
	// For IOM Debug
	SET_TOM_OUTEN(PRIB, OUT_EN);
	SET_TOM_OUTEN(PRID, OUT_EN);

	if(ClearAlarm)
	{
//		IfxSmu_enableClearAlarmStatus(&MODULE_SMU);
		IfxScuWdt_clearSafetyEndinit(IfxScuWdt_getSafetyWatchdogPassword());
		MODULE_SMU.CMD.B.CMD = 5;
		SMU_AG2.B.SF26 = 1;
		IfxScuWdt_setSafetyEndinit(IfxScuWdt_getSafetyWatchdogPassword());

		ClearAlarm = 0;
	}
#endif
}
#endif /*0*/


/*******************************************************************************
 * Local functions (private to module)
 ******************************************************************************/
/*******************************************************************************
 * Block	: Power
 * Name		: [SM_3]	SM1[HW].ExtVREG:MON
 * 			  [SM_4]	SM1[HW].EVR13:MON
 * 			  [SM_5]	SM1[HW].BANDGAP:MON
 * 			  [Aou2_46]	SM1[AoU].EVR:CFGMON
 * Refer	: 8.3 Power Supply & Power Management Controller (PMC)
 ******************************************************************************/
void Safety_Power_SM1_HW_ExtVREG_MON(void)
{
	// Clear Safety ENDINIT
	IfxScuWdt_clearSafetyEndinit(IfxScuWdt_getSafetyWatchdogPassword());

	// Threshold = VIN/LSB + 1
	// SWDOVVAL		: 3.3V*1.05/23.077mV + 1 = 151(0x97)
	// SWDUVVAL		: 3.3V*0.95/23.077mV + 1 = 137(0x89)
	SCU_EVROVMON.B.SWDOVVAL 	= 151;
	SCU_EVRUVMON.B.SWDUVVAL		= 137;

	// Enable SMU Alarm
	SCU_EVRMONCTRL.B.SWDOVMOD 	= 3; // triggered when the threshold is crossed in either direction
	SCU_EVRMONCTRL.B.SWDUVMOD 	= 3;

	// Set Safety ENDINIT
	IfxScuWdt_setSafetyEndinit(IfxScuWdt_getSafetyWatchdogPassword());
}

void Safety_Power_SM1_HW_ExtV13_MON(void)
{
	// Clear Safety ENDINIT
	IfxScuWdt_clearSafetyEndinit(IfxScuWdt_getSafetyWatchdogPassword());

	// Threshold = VIN/LSB + 1
	// EVR13OVVAL	: 1.3V*1.05/5.7692mV + 1 = 238(0xEE)
	// EVR13UVVAL	: 1.3V*0.95/5.7692mV + 1 = 215(0xD7)
	SCU_EVROVMON.B.EVR13OVVAL 	= 238;
	SCU_EVRUVMON.B.EVR13UVVAL	= 215;

	// Enable SMU Alarm
	SCU_EVRMONCTRL.B.EVR13OVMOD = 3; // triggered when the threshold is crossed in either direction
	SCU_EVRMONCTRL.B.EVR13UVMOD = 3;

	// Set Safety ENDINIT
	IfxScuWdt_setSafetyEndinit(IfxScuWdt_getSafetyWatchdogPassword());
}

void Safety_Power_SM1_HW_BANDGAP_MON(void)
{
	// Check EVRSTAT.BGPROK
	if(!SCU_EVRSTAT.B.BGPROK)
	{
		Safety_CfgError.bit.BANDGAP_MON = 1;
	}
}

void Safety_Power_SM1_AoU_EVR_CFGMON(void)
{
	// Check PMSWSTAT.HWCFG
	if(SCU_PMSWSTAT.B.HWCFGEVR != 5)
	{
		Safety_CfgError.bit.EVR_CFGMON = 1;
	}

	// Check EVRSTAT.EVR13, EVRSTAT.EVR33, EVRSTAT.EXTPASS13, EVRSTAT.EXTPASS33
	if(!SCU_EVRSTAT.B.EVR13)
	{
		Safety_CfgError.bit.EVR_CFGMON = 1;
	}

	// Check EVRSTAT.OV13, EVRSTAT.OV33, EVRSTAT.OVSWD
	if(SCU_EVRSTAT.B.OV13 || SCU_EVRSTAT.B.OVSWD)
	{
		Safety_CfgError.bit.EVR_CFGMON = 1;
	}
}

/*******************************************************************************
 * Block	: Clock
 * Name		: [SM_7]	SM1[HW].SystemPLL:CLKMON
 * 			  [SM_6]	SM1[HW].SRI:CLKMON
 * 			  [SM_6]	SM1[HW].SPB:CLKMON
 * 			  [SM_6]	SM1[HW].GTM:CLKMON
 * Refer	: 8.1 Clocking and Clock Control Unit (CCU)
 ******************************************************************************/
void Safety_Clock_SM1_HW_SystemPLL_CLKMON(void)
{
	// Clear Safety ENDINIT
	IfxScuWdt_clearSafetyEndinit(IfxScuWdt_getSafetyWatchdogPassword());

	// Config Monitor & Target
	SCU_CCUCON3.B.PLLDIV = 20;	// Monitor Frequency = 100MHz/20 = 5MHz
	SCU_CCUCON3.B.PLLSEL = 0;	// Target Frequency = 5MHz
	SCU_CCUCON3.B.UP = 1;		// Send Parameter to CCU

	// Set Safety ENDINIT
	IfxScuWdt_setSafetyEndinit(IfxScuWdt_getSafetyWatchdogPassword());
}

void Safety_Clock_SM1_HW_SRI_CLKMON(void)
{
	// Clear Safety ENDINIT
	IfxScuWdt_clearSafetyEndinit(IfxScuWdt_getSafetyWatchdogPassword());

	// Config Monitor & Target
	SCU_CCUCON3.B.SRIDIV = 20;	// Monitor Frequency = 100MHz/20 = 5MHz
	SCU_CCUCON3.B.SRISEL = 0;	// Target Frequency = 5MHz
	SCU_CCUCON3.B.UP = 1;		// Send Parameter to CCU

	// Set Safety ENDINIT
	IfxScuWdt_setSafetyEndinit(IfxScuWdt_getSafetyWatchdogPassword());
}

void Safety_Clock_SM1_HW_SPB_CLKMON(void)
{
	// Clear Safety ENDINIT
	IfxScuWdt_clearSafetyEndinit(IfxScuWdt_getSafetyWatchdogPassword());

	// Config Monitor & Target
	SCU_CCUCON4.B.SPBDIV = 10;	// Monitor Frequency = 50MHz/10 = 5MHz
	SCU_CCUCON4.B.SPBSEL = 0;	// Target Frequency = 5MHz
	SCU_CCUCON4.B.UP = 1;		// Send Parameter to CCU

	// Set Safety ENDINIT
	IfxScuWdt_setSafetyEndinit(IfxScuWdt_getSafetyWatchdogPassword());
}

void Safety_Clock_SM1_HW_GTM_CLKMON(void)
{
	// Clear Safety ENDINIT
	IfxScuWdt_clearSafetyEndinit(IfxScuWdt_getSafetyWatchdogPassword());

	// Config Monitor & Target
	SCU_CCUCON4.B.GTMDIV = 20;	// Monitor Frequency = 100MHz/20 = 5MHz
	SCU_CCUCON4.B.GTMSEL = 0;	// Target Frequency = 5MHz
	SCU_CCUCON4.B.UP = 1;		// Send Parameter to CCU

	// Set Safety ENDINIT
	IfxScuWdt_setSafetyEndinit(IfxScuWdt_getSafetyWatchdogPassword());
}

/*******************************************************************************
 * Block	: CPU
 * Name		: [SM_34]	SM1[HW].CPU.DATA:MPU
 * Refer	: 6 CPU Subsystem
 ******************************************************************************/
void Safety_CPU_SM1_HW_CPU_DATA_MPU(void)
{
	// Clear Safety ENDINIT
	IfxScuWdt_clearSafetyEndinit(IfxScuWdt_getSafetyWatchdogPassword());

	// Disable Write Access
	CPU0_SPROT_RGNACCENA0.B.EN = 0;

	// Set Safety ENDINIT
	IfxScuWdt_setSafetyEndinit(IfxScuWdt_getSafetyWatchdogPassword());
}

/*******************************************************************************
 * Block	: SRAM
 * Name		: [SM_11]	SM1[HW].SRAM:ECC
 * Refer	: 9 Memory Test Unit (MTU)
 ******************************************************************************/
void Safety_SRAM_SM1_HW_SRAM_ECC(void)
{
	// Clear CPU ENDINIT
	IfxScuWdt_clearCpuEndinit(IfxScuWdt_getCpuWatchdogPassword());

	// Enable MTU Module
	MTU_CLC.B.DISR = 0;

	// Set CPU ENDINIT
	IfxScuWdt_setCpuEndinit(IfxScuWdt_getCpuWatchdogPassword());
}

/*******************************************************************************
 * Block	: PFLASH
 * Name		: [SM_20]	SM1[HW].PFLASH:Monitor
 * Refer	: 11 Program Memory Unit (PMU)
 ******************************************************************************/
void Safety_PFLASH_SM1_HW_PFLASH_Monitor(void)
{
	// Clear CPU ENDINIT
	IfxScuWdt_clearCpuEndinit(IfxScuWdt_getCpuWatchdogPassword());

	// Enable CBAB
	FLASH0_CBABCFG0.B.SEL = 3;
	FLASH0_CBABCFG0.B.CLR = 1;
	FLASH0_CBABCFG0.B.DIS = 0;

	// Set CPU ENDINIT
	IfxScuWdt_setCpuEndinit(IfxScuWdt_getCpuWatchdogPassword());
}

/*******************************************************************************
 * Block	: SRI
 * Name		: Only configure the SMU Alarm, no function here
 * Refer	: 3 On-Chip System Buses and Bus Bridges
 ******************************************************************************/

/*******************************************************************************
 * Block	: SPB
 * Name		: [AoU2_24]	SM2[AoU].SBCU:InitCheck
 * Refer	: 3 On-Chip System Buses and Bus Bridges
 ******************************************************************************/
void Safety_SPB_SM2_AoU_SBCU_InitCheck(void)
{
	// Check the SBCU_CON, SBCU_PRIOH, and SBCU_PRIOL (TBD)
	if((SBCU_CON.U != 0xFF08FFFF) || (SBCU_PRIOH.U != 0x0F00FFFF) || (SBCU_PRIOL.U != 0x0F00FFFF))
	{
		Safety_CfgError.bit.SBCU_InitCheck = 1;
	}
}

/*******************************************************************************
 * Block	: IR
 * Name		: Only configure the SMU Alarm, no function here
 * Refer	: 16 Interrupt Router (IR)
 ******************************************************************************/

/*******************************************************************************
 * Block	: SMU
 * Name		: [AoU2_26]	SM2[AoU].SMU:InitCheck
 * Refer	: 10 Safety Management Unit (SMU)
 ******************************************************************************/
void Safety_SMU_SM2_AoU_SMU_InitCheck(void)
{
	// TBD
}

/*******************************************************************************
 * Block	: WDT
 * Name		: [AoU2_34]	SM2[AoU].WDT:InitCheck
 * 			  [AoU2_23]	SM2[AoU].RESET:SSCheck
 * Refer	: 8.4 System Control Unit (SCU)
 * 			  8.2 Reset Control Unit (RCU)
 ******************************************************************************/
void Safety_WDT_SM2_AoU_WDT_InitCheck(void)
{
	// Check the SCU_WDTSCON0 and SCU_WDTSCON1 (TBD)
	if(SCU_WDTSCON0.U != 0xFFFC000E || SCU_WDTSCON1.U != 0x00000000)
	{
		Safety_CfgError.bit.WDT_InitCheck = 1;
	}
}

void Safety_WDT_SM2_AoU_RESET_SSCheck(void)
{
	// Check the RSTCON2
	if(!SCU_RSTCON2.B.CSS0)
	{
		Safety_CfgError.bit.RESET_SSCheck = 1;
	}
}
#define MPU_ASIL_STOP_SEC_CODE
#include "MPU_MemMap.h"

/*
 * End of file
 */
