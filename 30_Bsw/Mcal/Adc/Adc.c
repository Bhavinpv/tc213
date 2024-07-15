/*******************************************************************************
 * \file    IfxAdc.c
 * \brief   
 *
 * \section AUTHOR
 *    #. Ph.Ha
 *
 * \section SVN
 *  $Date$
 *  $Author$
 *  $Revision$
 *
 * \section LICENSE
 * Copyright (c) xxx.
 * All rights reserved.
 ******************************************************************************/

/* Includes *******************************************************************/
#include "Adc_api.h"
#include "Adc_cfg.h"
#include "Adc_scb.h"
#include "Adc_scfg.h"
#include "HsfbMeas_GetInitOffset.h"
#include "HsfbPwm.h"

/* Defines ********************************************************************/

/* Datas **********************************************************************/
#define MPU_ASIL_START_SEC_VAR_NOINIT
#include "MPU_MemMap.h"
u16 *AdcResPt[24];
u16 Adc_ShortCnt;
u16 Adc_FlyBackEnable;
u16 Adc_FlyBackEnable1;
s16 Adc_IoutOffset;
#define MPU_ASIL_STOP_SEC_VAR_NOINIT
#include "MPU_MemMap.h"

/* Functions ******************************************************************/
void Adc_Pt_Init(void);
void Adc_Pt_Init_HwVer1(void);
void Adc_Pt_Init_HwVer0(void);
void Adc_cfg_ch_HwVer1(void);
void Adc_cfg_ch_HwVer0(void);

/* Functions ******************************************************************/
#define MPU_QM_START_SEC_CODE
#include "MPU_MemMap.h"
void Adc_Init(void)
{
	Adc_cfg();
	Adc_Pt_Init();
}

void Adc_cfg(void)
{
    uint16 u16Index=0;

    IfxScuWdt_clearCpuEndinit(IfxScuWdt_getCpuWatchdogPassword());
    MODULE_VADC.CLC.U = 0u;    /*enable ADC clock*/
    IfxScuWdt_setCpuEndinit(IfxScuWdt_getCpuWatchdogPassword());

    /* Trigger source 3 will not, if only arbitration 4xslot configured */
    MODULE_VADC.G[0].ARBCFG.U = (ADC_CONV_ON | ARBIT_4XSLOTS | ARBIT_NOTRUN_PERM);
    MODULE_VADC.G[1].ARBCFG.U = (ADC_CONV_ON | ARBIT_4XSLOTS | ARBIT_NOTRUN_PERM);

    /* start-up calibration must be started after the initial of the ARBCFG */
    MODULE_VADC.GLOBCFG.U     = (ADC_CLK_DIV(3u) | ARB_CLK_DIV(1u) | ADC_LOSUP | WR_PARAM_EN | NO_POST_CAL | START_CALIB);  /* fadc=fspb/3 | ADC_DCMSB | ADC_LOSUP */

    /* Assignment result register of channel to specific group result register */
    for(u16Index= 0u; u16Index < ADC_CH_PER_GROUP; u16Index++)
    {
        MODULE_VADC.G[0].CHCTR[u16Index].U |= CH_RES_REG(u16Index);   /* store result in group result register GxRES0-12*/
        MODULE_VADC.G[1].CHCTR[u16Index].U |= CH_RES_REG(u16Index);
    }

    // Sample time configuration (default: ICLSEL = 0, use group-specific class 0)
    // tCN = (2 + STC + N + DM + PC) �� tADCI + 2 �� tADC
    // tADC = 20ns, tADCI = (DIVA + 1) �� 20ns
    // DIVA = 2, STC = 0, tCN = (2 + 0 + 12) �� 60ns + 2 �� 20ns =  880ns (12.3V)
    // DIVA = 2, STC = 2, tCN = (2 + 2 + 12) �� 60ns + 2 �� 20ns = 1000ns (14.3V)
    // DIVA = 2, STC = 3, tCN = (2 + 3 + 12) �� 60ns + 2 �� 20ns = 1060ns (15.3V)
    // DIVA = 2, STC = 4, tCN = (2 + 4 + 12) �� 60ns + 2 �� 20ns = 1120ns (16.3V)
    // DIVA = 3, STC = 0, tCN = (2 + 0 + 12) �� 80ns + 2 �� 20ns = 1160ns (16.9V)
    MODULE_VADC.G[0].ICLASS[0].B.STCS = 3;
    MODULE_VADC.G[1].ICLASS[0].B.STCS = 3;

    // Channel config
    if(ADC_HWVER_1)
    {
    	Adc_cfg_ch_HwVer1();
    }
    else if(ADC_HWVER_0)
    {
    	Adc_cfg_ch_HwVer0();
    }
    else
    {
    	Adc_cfg_ch_HwVer0();
    }

    /*define the priority of the 4 request source,source 0 has the highest priority; the sources are wait mode  */
    MODULE_VADC.G[0].ARBPR.U    = (ALL_REQ_SRC_EN | REQ_SRC_PRIO_ORDER(FIRST_PRIO, SECOND_PRIO, THIRD_PRIO, FOURTH_PRIO));

    /*define the priority of the 4 request source,source 0 has the highest priority;  source 0 can cancel the other conversion of the request source */
    MODULE_VADC.G[1].ARBPR.U    = (ALL_REQ_SRC_EN | INJECTABLE_REQ_SRC(0) | REQ_SRC_PRIO_ORDER(FIRST_PRIO, SECOND_PRIO, THIRD_PRIO, FOURTH_PRIO));

    while((VADC_G0ARBCFG.U & 0x30000000) != 0x20000000){  __asm("nop") ;}             // wait for calibration finish
    while((VADC_G1ARBCFG.U & 0x30000000) != 0x20000000){  __asm("nop") ;}             // wait for calibration finish
}

void Adc_cfg_ch_HwVer1(void)
{
	/* Queue: ADC0 */
    MODULE_VADC.G[0].QINR0.U    = (QU_ENTRY_REQ_CH(0) | QU_ENTRY_REFILL | QU_ENTRY_WAITTRIG);  	// AN0: for trigger
    MODULE_VADC.G[0].QINR0.U    = (QU_ENTRY_REQ_CH(1) | QU_ENTRY_REFILL | QU_ENTRY_FOLLOW);  	// AN1: IproFet
    MODULE_VADC.G[0].QINR0.U    = (QU_ENTRY_REQ_CH(2) | QU_ENTRY_REFILL | QU_ENTRY_FOLLOW);		// AN2: Iout
    MODULE_VADC.G[0].QINR0.U    = (QU_ENTRY_REQ_CH(4) | QU_ENTRY_REFILL | QU_ENTRY_FOLLOW);  	// AN4: Vout

    MODULE_VADC.G[0].QCTRL0.U   = (XTRIG_SEL(0xFu) | XT_RISING_EDGE | GATE_IN_SEL(0));			// trigger source TRIGGER0
    MODULE_VADC.G[0].QMR0.U     = (REQ_GAT_EN | EXT_TRIG_EN);

    /* Queue: ADC1 */
    MODULE_VADC.G[1].QINR0.U    = (QU_ENTRY_REQ_CH(0) | QU_ENTRY_REFILL | QU_ENTRY_WAITTRIG);	// AN12: Vout_Diag
    MODULE_VADC.G[1].QINR0.U    = (QU_ENTRY_REQ_CH(2) | QU_ENTRY_REFILL | QU_ENTRY_FOLLOW);		// AN14: Ipri
    MODULE_VADC.G[1].QINR0.U    = (QU_ENTRY_REQ_CH(5) | QU_ENTRY_REFILL | QU_ENTRY_FOLLOW);		// AN17: VbatHv
    MODULE_VADC.G[1].QINR0.U    = (QU_ENTRY_REQ_CH(11) | QU_ENTRY_REFILL | QU_ENTRY_FOLLOW);	// AN23: detection of flyback winding short

    MODULE_VADC.G[1].QCTRL0.U   = (XTRIG_SEL(0xFu) | XT_RISING_EDGE | GATE_IN_SEL(0));			// trigger source TRIGGER0
    MODULE_VADC.G[1].QMR0.U     = (REQ_GAT_EN | EXT_TRIG_EN);

    /* AutoScan: ADC0 */
    MODULE_VADC.G[0].ASCTRL.U   = (XTRIG_SEL(0xFu) | XT_RISING_EDGE | GATE_IN_SEL(1));			// trigger source TRIGGER1
    MODULE_VADC.G[0].ASMR.U     = (REQ_GAT_EN | EXT_TRIG_EN );
    MODULE_VADC.G[0].ASSEL.U    = (REQ_SRC_ENCH(0) | REQ_SRC_ENCH(3) | REQ_SRC_ENCH(5) | REQ_SRC_ENCH(6) | REQ_SRC_ENCH(7));

    /* AutoScan: ADC1 */
    MODULE_VADC.G[1].ASCTRL.U   = (XTRIG_SEL(0xFu) | XT_RISING_EDGE | GATE_IN_SEL(1));			// trigger source TRIGGER1
    MODULE_VADC.G[1].ASMR.U     = (REQ_GAT_EN | EXT_TRIG_EN );
    MODULE_VADC.G[1].ASSEL.U    = (REQ_SRC_ENCH(1) | REQ_SRC_ENCH(3)| REQ_SRC_ENCH(4) | REQ_SRC_ENCH(6) |
   							   REQ_SRC_ENCH(7) | REQ_SRC_ENCH(8)| REQ_SRC_ENCH(9) | REQ_SRC_ENCH(10));

    // MODULE_VADC.G[1].ASSEL.U    = (REQ_SRC_ENCH(1) | REQ_SRC_ENCH(3)| REQ_SRC_ENCH(4) | REQ_SRC_ENCH(6) |
    							  //  REQ_SRC_ENCH(7) | REQ_SRC_ENCH(8)| REQ_SRC_ENCH(10));
}

void Adc_cfg_ch_HwVer0(void)
{
	/* Queue: ADC0 */
	MODULE_VADC.G[0].QINR0.U    = (QU_ENTRY_REQ_CH(0) | QU_ENTRY_REFILL | QU_ENTRY_WAITTRIG);  	// AN0: Ipri
    MODULE_VADC.G[0].QINR0.U    = (QU_ENTRY_REQ_CH(1) | QU_ENTRY_REFILL | QU_ENTRY_FOLLOW);  	// AN1: VbatHv
    MODULE_VADC.G[0].QINR0.U    = (QU_ENTRY_REQ_CH(2) | QU_ENTRY_REFILL | QU_ENTRY_FOLLOW);		// AN2: Iout
    MODULE_VADC.G[0].QINR0.U    = (QU_ENTRY_REQ_CH(4) | QU_ENTRY_REFILL | QU_ENTRY_FOLLOW);  	// AN4: Vout

    MODULE_VADC.G[0].QCTRL0.U   = (XTRIG_SEL(0xFu) | XT_RISING_EDGE | GATE_IN_SEL(0));			// trigger source TRIGGER0
    MODULE_VADC.G[0].QMR0.U     = (REQ_GAT_EN | EXT_TRIG_EN);

    /* Queue: ADC1 */
    MODULE_VADC.G[1].QINR0.U    = (QU_ENTRY_REQ_CH(0) | QU_ENTRY_REFILL | QU_ENTRY_WAITTRIG);	// AN12: Vout_Diag
    MODULE_VADC.G[1].QINR0.U    = (QU_ENTRY_REQ_CH(5) | QU_ENTRY_REFILL | QU_ENTRY_FOLLOW);		// AN17: IproFet

    MODULE_VADC.G[1].QCTRL0.U   = (XTRIG_SEL(0xFu) | XT_RISING_EDGE | GATE_IN_SEL(0));			// trigger source TRIGGER0
    MODULE_VADC.G[1].QMR0.U     = (REQ_GAT_EN | EXT_TRIG_EN);

    /* AutoScan: ADC0 */
    MODULE_VADC.G[0].ASCTRL.U   = (XTRIG_SEL(0xFu) | XT_RISING_EDGE | GATE_IN_SEL(1));			// trigger source TRIGGER1
    MODULE_VADC.G[0].ASMR.U     = (REQ_GAT_EN | EXT_TRIG_EN );
    MODULE_VADC.G[0].ASSEL.U    = (REQ_SRC_ENCH(3) | REQ_SRC_ENCH(5) | REQ_SRC_ENCH(6) | REQ_SRC_ENCH(7));

    /* AutoScan: ADC1 */
    MODULE_VADC.G[1].ASCTRL.U   = (XTRIG_SEL(0xFu) | XT_RISING_EDGE | GATE_IN_SEL(1));			// trigger source TRIGGER1
    MODULE_VADC.G[1].ASMR.U     = (REQ_GAT_EN | EXT_TRIG_EN );
    MODULE_VADC.G[1].ASSEL.U    = (REQ_SRC_ENCH(1) | REQ_SRC_ENCH(2) | REQ_SRC_ENCH(3)| REQ_SRC_ENCH(4) | REQ_SRC_ENCH(6));
}

void Adc_Pt_Init(void)
{
	int i;

	// Initialize all address
	for(i = 0; i < 24; i++)
	{
		AdcResPt[i] = (u16 *)&(ADC_AN23_RESD);
	}

	// Hardware version select
	if(ADC_HWVER_1)
	{
		Adc_Pt_Init_HwVer1();
	}
	else if(ADC_HWVER_0)
	{
		Adc_Pt_Init_HwVer0();
	}
	else
	{
		Adc_Pt_Init_HwVer0();
	}
}

void Adc_Pt_Init_HwVer1(void)
{
	AdcResPt[ADC_E_Ipri]  		= (u16 *)&(ADC_AN14_RESD);
	AdcResPt[ADC_E_Vin]  		= (u16 *)&(ADC_AN17_RESD);
	AdcResPt[ADC_E_Iout]  		= (u16 *)&(ADC_AN2_RESD);
	AdcResPt[ADC_E_Vout]  		= (u16 *)&(ADC_AN4_RESD);

	AdcResPt[ADC_E_VoutDiag]  	= (u16 *)&(ADC_AN12_RESD);
	AdcResPt[ADC_E_IproFet]  	= (u16 *)&(ADC_AN1_RESD);
	AdcResPt[ADC_E_Vaux]  		= (u16 *)&(ADC_AN3_RESD);
	AdcResPt[ADC_E_Vkl30]  		= (u16 *)&(ADC_AN18_RESD);
	AdcResPt[ADC_E_Vkl30C]  	= (u16 *)&(ADC_AN5_RESD);

	AdcResPt[ADC_E_Vcomp]  		= (u16 *)&(ADC_AN22_RESD);
	AdcResPt[ADC_E_VrefDiag]  	= (u16 *)&(ADC_AN19_RESD);
	AdcResPt[ADC_E_Vhw16V]  	= (u16 *)&(ADC_AN20_RESD);
	AdcResPt[ADC_E_Vhw19V]  	= (u16 *)&(ADC_AN21_RESD);

	AdcResPt[ADC_E_NtcPri]  		= (u16 *)&(ADC_AN16_RESD);
	AdcResPt[ADC_E_NtcSrA] 			= (u16 *)&(ADC_AN0_RESD);
	AdcResPt[ADC_E_NtcSrB] 			= (u16 *)&(ADC_AN15_RESD);
	AdcResPt[ADC_E_NtcWaterIn] 		= (u16 *)&(ADC_AN7_RESD);
	AdcResPt[ADC_E_NtcWaterOut] 	= (u16 *)&(ADC_AN6_RESD);
	AdcResPt[ADC_E_NtcWaterOutDiag] = (u16 *)&(ADC_AN13_RESD);
}

void Adc_Pt_Init_HwVer0(void)
{
	AdcResPt[ADC_E_Ipri]  		= (u16 *)&(ADC_AN0_RESD);
	AdcResPt[ADC_E_Vin]  		= (u16 *)&(ADC_AN1_RESD);
	AdcResPt[ADC_E_Iout]  		= (u16 *)&(ADC_AN2_RESD);
	AdcResPt[ADC_E_Vout]  		= (u16 *)&(ADC_AN4_RESD);

	AdcResPt[ADC_E_VoutDiag]  	= (u16 *)&(ADC_AN12_RESD);
	AdcResPt[ADC_E_IproFet]  	= (u16 *)&(ADC_AN17_RESD);
	AdcResPt[ADC_E_Vaux]  		= (u16 *)&(ADC_AN3_RESD);
	AdcResPt[ADC_E_Vkl30]  		= (u16 *)&(ADC_AN18_RESD);
	AdcResPt[ADC_E_Vkl30C]  	= (u16 *)&(ADC_AN5_RESD);

	AdcResPt[ADC_E_NtcPri]  		= (u16 *)&(ADC_AN16_RESD);
	AdcResPt[ADC_E_NtcSrA] 			= (u16 *)&(ADC_AN14_RESD);
	AdcResPt[ADC_E_NtcSrB] 			= (u16 *)&(ADC_AN15_RESD);
	AdcResPt[ADC_E_NtcWaterIn] 		= (u16 *)&(ADC_AN7_RESD);
	AdcResPt[ADC_E_NtcWaterOut] 	= (u16 *)&(ADC_AN6_RESD);
	AdcResPt[ADC_E_NtcWaterOutDiag] = (u16 *)&(ADC_AN13_RESD);
}

void Adc_StartUp(void)
{
	f32 IoutAdcSum = 0;
	u16 i;

	for(i=0;i<100;i++)
	{
		IoutAdcSum += *AdcResPt[ADC_E_Iout];
		delay_us_main(100);
	}

	Adc_IoutOffset = 0.01*IoutAdcSum;
}

void HsfbMeas_GetInitOffset(HSFBMEAS_S_INITOFFSET *y)
{
	y->Iout = Adc_IoutOffset;
}
#define MPU_QM_STOP_SEC_CODE
#include "MPU_MemMap.h"

#define MPU_ASIL_START_SEC_CODE
#include "MPU_MemMap.h"
void Adc_ShortDetect_10ms(void)
{
	Adc_FlyBackEnable = (HWVER_C1_C01||HWVER_C1_C02) && (HsfbPwm_Status.Operation == 0) && (PwmStatus15us.PwmState == HSFBPWM_E_STATE_SteadyRun);
	Adc_FlyBackEnable1 = !(((HsfbPwm_DW.Sum1_c)< 425) && ((HsfbPwm_DW.Sum1_c)> 390) && (HsfbPwm_ToMor.TopologyOut == 1));

	if( Adc_FlyBackEnable && Adc_FlyBackEnable1 && (*AdcResPt[23] <= 2048) && Gtm_PwmStatus )
	{
		if(Adc_ShortCnt < 20) // 200ms debounce time
		{
			Adc_ShortCnt++;
		}
		else
		{
			SafetyError[3] = 1;
		}
	}
	else
	{
		SafetyError[3] = 0;
		Adc_ShortCnt = 0;
	}
}
#define MPU_ASIL_STOP_SEC_CODE
#include "MPU_MemMap.h"
