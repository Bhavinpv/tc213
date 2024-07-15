/*******************************************************************************
 * \file    port.c
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
#include "Port_api.h"
#include "Port_cfg.h"
#include "Port_scb.h"
#include "Port_scfg.h"
#include "Main_api.h"
#include "Adc_api.h"
#include "HsfbApp.h"

/* Defines ********************************************************************/

/* Datas **********************************************************************/
#define MPU_ASIL_START_SEC_VAR_NOINIT
#include "MPU_MemMap.h"
PORT_S_PT PortInPt[11];
bit PortAutoDiagFin;
bit PortAutoDiagErr[4];
u16 PortErrReset;
u16 Ovp16VResetCnt;
u16 PortDebug[10];
u16 KLDiagFlag;
u16 WdgCnt;
u16 WdgEnable;
u16 PortOtpAutoDiagEn;
u16 PortOtpAutoDiagEnLast;
u16 PortAutoCnt;
u16 PortDisHSK;
#define MPU_ASIL_STOP_SEC_VAR_NOINIT
#include "MPU_MemMap.h"

/* Functions ******************************************************************/
void Port_Pt_Init(void);
void Port_Pin_IOCR_Cfg(void);
void Port_AuxPower_EnDis10ms(void);

/* Functions ******************************************************************/
#define MPU_QM_START_SEC_CODE
#include "MPU_MemMap.h"
void Port_Init(void)
{
	Port_Cfg();
	Port_Pt_Init();
	Set_SBC_MPS_Debug;
	Set_TestPin_LVDC;
	Set_LatchReset;
	Clr_16V_OVP_Reset;
	WdgEnable = 1;
}

void Port_Cfg(void)
{
	// IOCR config
	Port_Pin_IOCR_Cfg();

	// PDR config
	IfxScuWdt_clearCpuEndinit(IfxScuWdt_getCpuWatchdogPassword());
	P02_PDR0.U = 0x22222222;
//	P02_PDR1.U = 0x33333332;
	P20_PDR1.B.PD10 = 0;
	IfxScuWdt_setCpuEndinit(IfxScuWdt_getCpuWatchdogPassword());
}

void Port_Pin_IOCR_Cfg(void)
{
	// PORT00
	P00_IOCR0.B.PC0  	= IN_NOPULL;					// P00.0 : SGND

	// PORT02
	P02_IOCR0.B.PC0 	= (OUT_FUNC1 | OUT_PUSHPULL);	// P02.0 : DSPC_DO_PriA_PWM
	P02_IOCR0.B.PC1 	= (OUT_FUNC1 | OUT_PUSHPULL);	// P02.1 : DSPC_DO_PriB_PWM
	P02_IOCR0.B.PC2 	= (OUT_FUNC1 | OUT_PUSHPULL);	// P02.2 : DSPC_DO_PriC_PWM
	P02_IOCR0.B.PC3 	= (OUT_FUNC1 | OUT_PUSHPULL);	// P02.3 : DSPC_DO_PriD_PWM
	P02_IOCR4.B.PC4 	= (OUT_FUNC1 | OUT_PUSHPULL);	// P02.4 : DSPC_DO_SrA_PWM
	P02_IOCR4.B.PC5 	= (OUT_FUNC1 | OUT_PUSHPULL);	// P02.5 : DSPC_DO_SrB_PWM
	P02_IOCR4.B.PC6 	= (OUT_FUNC1 | OUT_PUSHPULL);	// P02.6 : DSPC_DO_SrClampA_PWM
	P02_IOCR4.B.PC7 	= (OUT_FUNC1 | OUT_PUSHPULL);	// P02.7 : DSPC_DO_SrClampB_PWM
	P02_IOCR8.B.PC8 	= (OUT_FUNC0 | OUT_PUSHPULL);	// P02.8 : DSPC_DO_SBC_WDI

	// PORT10 (not use)

	// PORT11
	P11_IOCR0.B.PC2  	= IN_NOPULL;					// P11.2 : DSPC_DI_CT_OCP
	P11_IOCR0.B.PC3  	= (OUT_FUNC0 | OUT_PUSHPULL);	// P11.3 : DSPC_DO_16V_OVP_AutoDiag
	P11_IOCR4.B.PC6  	= IN_NOPULL;					// P11.6 : DSPC_DI_HVDC_OVP
	P11_IOCR8.B.PC8  	= (OUT_FUNC0 | OUT_PUSHPULL);	// P11.8 : DSPC_DO_Heater_OTP_AutoDiag
	P11_IOCR8.B.PC9  	= IN_NOPULL;					// P11.9 : DSPC_DI_WATEROUT_OTP
	P11_IOCR8.B.PC10 	= IN_NOPULL;					// P11.10: DSPC_DI_PriDrv_DIS
	P11_IOCR8.B.PC11 	= IN_NOPULL;					// P11.11: DSPC_DI_Vout16V_OVP
	P11_IOCR12.B.PC12 	= IN_NOPULL;					// P11.12: DSPC_DI_Vout19V_OVP

	// PORT13
	P13_IOCR0.B.PC0  	= IN_NOPULL;					// P13.0 : DSPC_DI_Iout_OCP
	P13_IOCR0.B.PC1  	= (OUT_FUNC0 | OUT_PUSHPULL);	// P13.1 : DSPC_DO_LatchReset
	P13_IOCR0.B.PC2  	= IN_NOPULL;					// P13.2 : DSPC_DI_Iout_N_OCP
	P13_IOCR0.B.PC3  	= (OUT_FUNC0 | OUT_PUSHPULL);	// P13.3 : DSPC_DO_16V_OVP_Reset

	// PORT14
	P14_IOCR0.B.PC0  	= (OUT_FUNC5 | OUT_PUSHPULL);	// P14.0 : DSPC_BootStrapLoaderTx
	P14_IOCR0.B.PC1  	= IN_NOPULL;					// P14.1 : DSPC_BootStrapLoaderRx
	P14_IOCR4.B.PC4  	= (OUT_FUNC0 | OUT_PUSHPULL);	// P14.4 : DSPC_DO_19V_OVP_AutoDiag
	P14_IOCR4.B.PC6  	= IN_NOPULL;					// P14.6 : DSPC_DI_SrDrv_EN

	// PORT15
	P15_IOCR0.B.PC0  	= (OUT_FUNC0 | OUT_PUSHPULL);	// P15.0 : Debug Pin
	P15_IOCR0.B.PC1  	= IN_NOPULL;					// P15.1 : DSPC_DI_FastTurnOff
	P15_IOCR0.B.PC2  	= (OUT_FUNC5 | OUT_PUSHPULL);	// P15.2 : DSPC_CAN_Int_TXD
	P15_IOCR0.B.PC3  	= IN_NOPULL;					// P15.3 : DSPC_CAN_Int_RXD
	P15_IOCR4.B.PC5  	= (OUT_FUNC0 | OUT_PUSHPULL);	// P15.5 : DSPC_DO_FastTurnOff_LVDC

	// PORT20
	P20_IOCR8.B.PC8  	= (OUT_FUNC3 | OUT_PUSHPULL);	// P20.8 : DSPC_DO_SPI_SBC_SCS
//	P20_IOCR8.B.PC9  	= (OUT_FUNC0 | OUT_PUSHPULL);	// P20.9 : DSPC_DO_SBC_MPS_Debug
	P20_IOCR8.B.PC9  	= (OUT_FUNC1 | OUT_PUSHPULL);	// P20.9 : Debug PWM
	P20_IOCR8.B.PC10  	= (OUT_FUNC1 | OUT_PUSHPULL);	// P20.10: DSPC_DO_NmosA_PWM
	P20_IOCR8.B.PC11  	= (OUT_FUNC3 | OUT_PUSHPULL);	// P20.11: DSPC_DO_SPI_SBC_SCL
	P20_IOCR12.B.PC12 	= IN_NOPULL;					// P20.12: DSPC_DI_SPI_SBC_SDO
	P20_IOCR12.B.PC13 	= IN_NOPULL;					// P20.13: DSPC_DO_PriB_PWM (IOM input)
	P20_IOCR12.B.PC14 	= (OUT_FUNC3 | OUT_PUSHPULL);	// P20.14: DSPC_DO_SPI_SBC_SDI

	// PORT21
	P21_IOCR0.B.PC2  	= (OUT_FUNC0 | OUT_PUSHPULL);	// P21.2 : DSPC_DO_AuxPower_SefProtection
	P21_IOCR0.B.PC3  	= (OUT_FUNC0 | OUT_PUSHPULL);	// P21.3 : DSPC_DO_ProFET_SEL
	P21_IOCR4.B.PC4  	= IN_NOPULL;					// P21.4 : SGND

	// PORT23
	P23_IOCR0.B.PC1  	= (OUT_FUNC0 | OUT_PUSHPULL);	// P23.1 : DSPC_DO_KL30_VM_Enable

	// PORT33
	P33_IOCR4.B.PC5  	= IN_NOPULL;					// P33.5 : DSPC_DI_REV_01
	P33_IOCR4.B.PC6  	= IN_NOPULL;					// P33.6 : DSPC_DI_REV_02
	P33_IOCR4.B.PC7  	= IN_NOPULL;					// P33.7 : DSPC_DI_REV_03
	P33_IOCR8.B.PC8  	= (OUT_FUNC0 | OUT_PUSHPULL);	// P33.8 : DSPC_DO_SBC_SMUFSP
	P33_IOCR8.B.PC9  	= IN_NOPULL;					// P33.9 : DSPC_DO_PriD_PWM (IOM input)
	P33_IOCR8.B.PC10  	= IN_NOPULL;					// P33.10: DSPC_DI_REV_00

	// Hardware version change
	P20_OMSR.B.PS9 		= 1;		// Set_SBC_MPS_Debug
	P23_OMSR.B.PS1  	= 1;		// Set_KL30_VM_Enable
	if(PORT_HWVER_0)
	{
		P20_IOCR8.B.PC9  	= (OUT_FUNC1 | OUT_PUSHPULL);	// P20.9 : Debug PWM
		P20_IOCR12.B.PC13 	= (OUT_FUNC0 | OUT_PUSHPULL);	// P20.13: DSPC_DO_SBC_MPS_Debug
		P33_IOCR8.B.PC9  	= (OUT_FUNC0 | OUT_PUSHPULL);	// P33.9 : DSPC_DO_KL30_VM_Enable

		P20_OMSR.B.PS13 	= 1;	// Set_SBC_MPS_Debug
		P33_OMSR.B.PS9  	= 1;	// Set_KL30_VM_Enable
	}
}

void Port_Pt_Init(void)
{
	PortInPt[PORT_E_FastTurnOff].Port  	= (u32 *)&(P15_IN.U); 	PortInPt[0].Pin  = 1;
	PortInPt[PORT_E_PriDriveDis].Port  	= (u32 *)&(P11_IN.U); 	PortInPt[1].Pin  = 10;
	PortInPt[PORT_E_SrDriveEn].Port  	= (u32 *)&(P14_IN.U); 	PortInPt[2].Pin  = 6;
	PortInPt[PORT_E_IpriCbc].Port  		= (u32 *)&(P00_IN.U); 	PortInPt[3].Pin  = 0;
	PortInPt[PORT_E_IpriOcp].Port  		= (u32 *)&(P11_IN.U); 	PortInPt[4].Pin  = 2;
	PortInPt[PORT_E_VinOvp].Port 	 	= (u32 *)&(P11_IN.U); 	PortInPt[5].Pin  = 6;
	PortInPt[PORT_E_IoutPOcp].Port  	= (u32 *)&(P13_IN.U); 	PortInPt[6].Pin  = 0;
	PortInPt[PORT_E_IoutNOcp].Port  	= (u32 *)&(P13_IN.U); 	PortInPt[7].Pin  = 2;
	PortInPt[PORT_E_Vout16VOvp].Port  	= (u32 *)&(P11_IN.U); 	PortInPt[8].Pin  = 11;
	PortInPt[PORT_E_Vout19VOvp].Port  	= (u32 *)&(P11_IN.U); 	PortInPt[9].Pin  = 12;
	PortInPt[PORT_E_WaterOutOtp].Port 	= (u32 *)&(P11_IN.U); 	PortInPt[10].Pin = 9;
}
#define MPU_QM_STOP_SEC_CODE
#include "MPU_MemMap.h"

#define MPU_ASIL_START_SEC_CODE
#include "MPU_MemMap.h"
void Port_StartUp(void)
{
	Set_SBC_MPS_Debug;
	Clr_LatchReset;
	Set_16V_OVP_Reset;
}

void Port_AutoDiag(void)
{
#if 0
	PortAutoDiagFin = 0;
	PortAutoDiagErr[0] = 0; // for 16V OVP
	PortAutoDiagErr[1] = 0; // for 19V OVP
	PortAutoDiagErr[2] = 0; // for OTP
	PortAutoDiagErr[3] = 0; // for KL30

	// Vout OVP16V auto diag
	if(Get_Vout16V_OVP && !Get_PriDrv_DIS)
	{
		Set_16V_OVP_AutoDiag;
		delay_ms_main(DELAY_MS_OVP16V);
		if(Get_Vout16V_OVP || !Get_PriDrv_DIS)
		{
			PortAutoDiagErr[0] = 1;
		}
		Clr_16V_OVP_AutoDiag;
		Clr_16V_OVP_Reset;
		delay_ms_main(DELAY_MS_OVP16V);
		Set_16V_OVP_Reset;
	}
	else
	{
		PortAutoDiagErr[0] = 1;
	}

	// Vout OVP19V auto diag
	if(Get_Vout19V_OVP && !Get_PriDrv_DIS)
	{
		Set_16V_OVP_AutoDiag;
		Set_19V_OVP_AutoDiag;
		delay_ms_main(DELAY_MS_OVP19V);
		if(Get_Vout19V_OVP || !Get_PriDrv_DIS)
		{
			PortAutoDiagErr[1] = 1;
		}
		Clr_16V_OVP_AutoDiag;
		Clr_19V_OVP_AutoDiag;
		delay_ms_main(DELAY_MS_OVP19V);
	}
	else
	{
		PortAutoDiagErr[1] = 1;
	}

	// WaterOut OTP auto diag
	if(Get_WATEROUT_OTP)
	{
		Set_Heater_OTP_AutoDiag;
		delay_ms_main(DELAY_MS_OTP);
		if(Get_WATEROUT_OTP)
		{
			PortAutoDiagErr[2] = 1;
		}
		Clr_Heater_OTP_AutoDiag;
		delay_ms_main(DELAY_MS_OTP);
	}
	else
	{
		PortAutoDiagErr[2] = 1;
	}

	// KL30 measurement auto diag
	Clr_KL30_VM_Enable;
	delay_ms_main(DELAY_MS_KL30);
	if((*AdcResPt[ADC_E_Vkl30] > 100) || (*AdcResPt[ADC_E_Vkl30C] > 100))
	{
		PortAutoDiagErr[3] = 1;
	}
	Set_KL30_VM_Enable;
	delay_ms_main(DELAY_MS_KL30);
	if((*AdcResPt[ADC_E_Vkl30] < 300) || (*AdcResPt[ADC_E_Vkl30C] < 300))
	{
		PortAutoDiagErr[3] = 1;
	}

	// Auto diag finish
	PortAutoDiagFin = 1;
	P11_IOCR0.B.PC3 = 0;
	P14_IOCR4.B.PC4 = 0;
#endif
}
void KL30_AutoDiag(void)
{
	KLDiagFlag = 0;
	Clr_KL30_VM_Enable;
	Clr_KL30_B_VM_Enable;
	delay_ms_main(DELAY_MS_KL30);
	if((*AdcResPt[ADC_E_Vkl30] > 100) || (*AdcResPt[ADC_E_Vkl30C] > 100))
	{
		KLDiagFlag = 1;
	}
	Set_KL30_VM_Enable;
	Set_KL30_B_VM_Enable;
	delay_ms_main(DELAY_MS_KL30);
}
void HsfbApp_ErrReset(bit en, bit u)
{
	// Latch Reset
	if(u && !PortErrReset)
	{
		Set_LatchReset;
	}
	else if(!u && PortErrReset)
	{
		Clr_LatchReset;
	}
	PortErrReset = u;

	// OVP16V Reset
	if(en)
	{
		if(u || Ovp16VResetCnt)
		{
			Clr_16V_OVP_Reset;
			Ovp16VResetCnt++;
			if(Ovp16VResetCnt > DELAY_MS_OVP16V)
			{
				Ovp16VResetCnt = 0;
			}
		}
		else
		{
			Set_16V_OVP_Reset;
		}
	}
}

void HsfbSafety_SetClrAutoDiag(bit en, u16 type)
{
	switch(type)
	{
		case 0: // OVP16V
			if(en)
			{
				PortDebug[0]++;
				Set_16V_OVP_AutoDiag;
				Set_16V_OVP_Reset;
			}
			else
			{
				PortDebug[1]++;
				Clr_16V_OVP_AutoDiag;
				Clr_16V_OVP_Reset;
			}
			break;
		case 1: // OVP19V
			if(en)
			{
				PortDebug[2]++;
				Set_19V_OVP_AutoDiag;
				Set_16V_OVP_AutoDiag;
				Clr_16V_OVP_Reset;
			}
			else
			{
				PortDebug[3]++;
				Clr_19V_OVP_AutoDiag;
				Clr_16V_OVP_AutoDiag;
				Set_16V_OVP_Reset;
			}
			break;
		case 2: // OTP
			if(en)
			{
				PortDebug[4]++;
				Set_Heater_OTP_AutoDiag;
			}
			else
			{
				PortDebug[5]++;
				Clr_Heater_OTP_AutoDiag;
			}
			break;
		case 3: // KL30
			if(en)
			{
				PortDebug[6]++;
				Clr_KL30_VM_Enable;
				P33_OMCR.B.PCL9 = 1;
			}
			else
			{
				PortDebug[7]++;
				Set_KL30_VM_Enable;
				P33_OMSR.B.PS9 = 1;
			}
			break;
		case 4: // AutoDiagCfg
			if(en)
			{
				PortDebug[8]++;
				P11_IOCR0.B.PC3 = (OUT_FUNC0 | OUT_PUSHPULL);
				P14_IOCR4.B.PC4 = (OUT_FUNC0 | OUT_PUSHPULL);
			}
			else
			{
				PortDebug[9]++;
				P11_IOCR0.B.PC3 = IN_NOPULL;
				P14_IOCR4.B.PC4 = IN_NOPULL;
			}
			Set_16V_OVP_Reset;
			Set_KL30_VM_Enable;
			P33_OMSR.B.PS9 = 1;
			break;
		default:
			break;
	}
}
void SBC_Triger100us(void)
{
  // watchdog counter
	  if (WdgCnt >= WDG_PERIOD)
	  {
	  	WdgCnt = 0;
	  }
	  else 
      {
        WdgCnt++;
      }
	// rising edge and falling edge
	if(WdgEnable)
	{
		if (WdgCnt == 0)
		{
			Set_SBC_WDI;
		}
		else if (WdgCnt == WDG_ONTIME)
		{
			Clr_SBC_WDI;
		}
	}
}

void ORU_LatchTest1ms(void)
{
	if(Get_PriDrv_DIS == 1)
	{
		Set_FastTurnOff_LVDC;
	}
	else
	{
		Clr_FastTurnOff_LVDC;
	}
}

void Port_OTP_AutoDiag10ms(void)
{
	if (PortOtpAutoDiagEn && !PortOtpAutoDiagEnLast )
	{
		Set_Heater_OTP_AutoDiag;
	}
	else if(P11_IN.B.P8)
		{
			PortAutoCnt++;
			if(PortAutoCnt > 29)
			{
				Clr_Heater_OTP_AutoDiag;
				PortAutoCnt = 0;
			}
		}
	else if(!PortOtpAutoDiagEn)
	{
		Clr_Heater_OTP_AutoDiag;
	}
	PortOtpAutoDiagEnLast = PortOtpAutoDiagEn;
}

void Port_AuxPower_EnDis10ms(void)
{
	if( HsfbDiag_ErrCode2.IproFet_High==1 || (PortDisHSK && !(StateStatus.HsfbEn)))
	{
		Set_AuxPower_SefProtection;//low current mode 0.07A P21.2       DSP RESET  no change and WDI no chaneg
	}
	else
	{
		Clr_AuxPower_SefProtection;//0.18A//0.23A
	}
}
//DSPC_DO_AuxPower_SelfProtection
#define MPU_ASIL_STOP_SEC_CODE
#include "MPU_MemMap.h"
