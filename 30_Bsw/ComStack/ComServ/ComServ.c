/*******************************************************************************
 * 4-Header
 ******************************************************************************/
#include "IfxScuWdt.h"
#include "IfxCan_reg.h"
#include "ComServ_api.h"
#include "ComServ_cfg.h"
#include "ComServ_scb.h"
#include "ComServ_scfg.h"
#include "can_defines.h"
#include "can_driver.h"
#include "tp.h"
#include "Pma_api.h"
#include "Scheduler_api.h"
/*******************************************************************************
 * Local constants and macros (private to module)
 ******************************************************************************/
#define MPU_ASIL_START_SEC_CONST
#include "MPU_MemMap.h"
static const uint32 CrcTable32[16u] =
{
  (uint32)0x00000000UL, (uint32)0x1db71064UL,
  (uint32)0x3b6e20c8UL, (uint32)0x26d930acUL,
  (uint32)0x76dc4190UL, (uint32)0x6b6b51f4UL,
  (uint32)0x4DB26158UL, (uint32)0x5005713cUL,
  (uint32)0xedb88320UL, (uint32)0xf00f9344UL,
  (uint32)0xd6d6a3e8UL, (uint32)0xcb61b38cUL,
  (uint32)0x9b64c2b0UL, (uint32)0x86d3d2d4UL,
  (uint32)0xa00ae278UL, (uint32)0xbdbdf21cUL
};

static const uint8 CrcTable08[256u] = {
  0x00u, 0x07u, 0x0eu, 0x09u, 0x1cu, 0x1bu, 0x12u, 0x15u, /*   7 */
  0x38u, 0x3fu, 0x36u, 0x31u, 0x24u, 0x23u, 0x2au, 0x2du, /*  15 */
  0x70u, 0x77u, 0x7eu, 0x79u, 0x6cu, 0x6bu, 0x62u, 0x65u, /*  23 */
  0x48u, 0x4fu, 0x46u, 0x41u, 0x54u, 0x53u, 0x5au, 0x5du, /*  31 */
  0xe0u, 0xe7u, 0xeeu, 0xe9u, 0xfcu, 0xfbu, 0xf2u, 0xf5u, /*  39 */
  0xd8u, 0xdfu, 0xd6u, 0xd1u, 0xc4u, 0xc3u, 0xcau, 0xcdu, /*  47 */
  0x90u, 0x97u, 0x9eu, 0x99u, 0x8cu, 0x8bu, 0x82u, 0x85u, /*  55 */
  0xa8u, 0xafu, 0xa6u, 0xa1u, 0xb4u, 0xb3u, 0xbau, 0xbdu, /*  63 */
  0xc7u, 0xc0u, 0xc9u, 0xceu, 0xdbu, 0xdcu, 0xd5u, 0xd2u, /*  71 */
  0xffu, 0xf8u, 0xf1u, 0xf6u, 0xe3u, 0xe4u, 0xedu, 0xeau, /*  79 */
  0xb7u, 0xb0u, 0xb9u, 0xbeu, 0xabu, 0xacu, 0xa5u, 0xa2u, /*  87 */
  0x8fu, 0x88u, 0x81u, 0x86u, 0x93u, 0x94u, 0x9du, 0x9au, /*  95 */
  0x27u, 0x20u, 0x29u, 0x2eu, 0x3bu, 0x3cu, 0x35u, 0x32u, /* 103 */
  0x1fu, 0x18u, 0x11u, 0x16u, 0x03u, 0x04u, 0x0du, 0x0au, /* 111 */
  0x57u, 0x50u, 0x59u, 0x5eu, 0x4bu, 0x4cu, 0x45u, 0x42u, /* 119 */
  0x6fu, 0x68u, 0x61u, 0x66u, 0x73u, 0x74u, 0x7du, 0x7au, /* 127 */
  0x89u, 0x8eu, 0x87u, 0x80u, 0x95u, 0x92u, 0x9bu, 0x9cu, /* 135 */
  0xb1u, 0xb6u, 0xbfu, 0xb8u, 0xadu, 0xaau, 0xa3u, 0xa4u, /* 143 */
  0xf9u, 0xfeu, 0xf7u, 0xf0u, 0xe5u, 0xe2u, 0xebu, 0xecu, /* 151 */
  0xc1u, 0xc6u, 0xcfu, 0xc8u, 0xddu, 0xdau, 0xd3u, 0xd4u, /* 159 */
  0x69u, 0x6eu, 0x67u, 0x60u, 0x75u, 0x72u, 0x7bu, 0x7cu, /* 167 */
  0x51u, 0x56u, 0x5fu, 0x58u, 0x4du, 0x4au, 0x43u, 0x44u, /* 175 */
  0x19u, 0x1eu, 0x17u, 0x10u, 0x05u, 0x02u, 0x0bu, 0x0cu, /* 183 */
  0x21u, 0x26u, 0x2fu, 0x28u, 0x3du, 0x3au, 0x33u, 0x34u, /* 191 */
  0x4eu, 0x49u, 0x40u, 0x47u, 0x52u, 0x55u, 0x5cu, 0x5bu, /* 199 */
  0x76u, 0x71u, 0x78u, 0x7fu, 0x6au, 0x6du, 0x64u, 0x63u, /* 207 */
  0x3eu, 0x39u, 0x30u, 0x37u, 0x22u, 0x25u, 0x2cu, 0x2bu, /* 215 */
  0x06u, 0x01u, 0x08u, 0x0fu, 0x1au, 0x1du, 0x14u, 0x13u, /* 223 */
  0xaeu, 0xa9u, 0xa0u, 0xa7u, 0xb2u, 0xb5u, 0xbcu, 0xbbu, /* 231 */
  0x96u, 0x91u, 0x98u, 0x9fu, 0x8au, 0x8du, 0x84u, 0x83u, /* 239 */
  0xdeu, 0xd9u, 0xd0u, 0xd7u, 0xc2u, 0xc5u, 0xccu, 0xcbu, /* 247 */
  0xe6u, 0xe1u, 0xe8u, 0xefu, 0xfau, 0xfdu, 0xf4u, 0xf3u  /* 255 */
};
#define MPU_ASIL_STOP_SEC_CONST
#include "MPU_MemMap.h"

/*******************************************************************************
 * Local data
 ******************************************************************************/
#define MPU_ASIL_START_SEC_VAR_NOINIT
#include "MPU_MemMap.h"
ParameterData_t Trusted_AsilParamData;
CalibrationData_t Trusted_AsilCalibData;
CAN_S_E2E CanE2E;
boolean CANDriver_mg_bError;
uint32 readRslt;
#define MPU_ASIL_STOP_SEC_VAR_NOINIT
#include "MPU_MemMap.h"

#define MPU_QM_START_SEC_VAR_INIT
#include "MPU_MemMap.h"
static uint8 Param_recieved = FALSE;
static uint8 Calib_recieved = FALSE;
#define MPU_QM_STOP_SEC_VAR_INIT
#include "MPU_MemMap.h"

#define MPU_QM_START_SEC_VAR_NOINIT
#include "MPU_MemMap.h"
COMSERV_S_DEV_RX ComServ_DevRx;
static COMSERV_S_STATUS ComServ_Status;
static MAIN_S_BUILD_INFO ComServ_BuildInfo;
ParameterData_t ParameterData;
CalibrationData_t CalibrationData;
uint16 OpMode_flag;
#define MPU_QM_STOP_SEC_VAR_NOINIT
#include "MPU_MemMap.h"



static void ComServ_InitStatus(void);
static void ComServ_ReadComData(void);
static inline u16 ConvertSM(bit SM);
static inline u16 ConvertAutoDiag(bit SM,bit Fin);
static u16 ConvertState(HSFBSTATE_E_STATE AppState);
static u16 ConvertTempToCan(s16 Temp);
static void UdsData_Param(u16 ReadWrite, u8* Buffer, u16* DataPtr, u16 DataSize);
static void UdsData_Calib(u16 ReadWrite, u8* Buffer, u16* DataPtr, u16 DataSize);
static u8 TrustedCall_CopyParam(ParameterData_t *Data);
static u8 TrustedCall_CopyCalib(CalibrationData_t *Data);
inline void RangeCheck(u16 x,u16 *y,u16 max,u16 min,u16 def);
#if(MEMORY_PROTECTION_ENABLED)
void CANDriver_HwCfg(void);
void CANDriver_MsgObjCfg(void);
static void CANDriver_TxDataE2E(uint16 u16TxBufIndex);
static void CANDriver_RxDataE2E(uint16 u16TxBufIndex);
#endif/*MEMORY_PROTECTION_ENABLED*/

/*******************************************************************************
 * Global functions implementation
 ******************************************************************************/
#define MPU_QM_START_SEC_CODE
#include "MPU_MemMap.h"
/*******************************************************************************
 * SCB - Module Init
 ******************************************************************************/
void ComServ_Init(void)
{
    Main_GetBuildInfo(&ComServ_BuildInfo);
    ComServ_InitStatus();
}
/*******************************************************************************
 * API - Get Status
 ******************************************************************************/
/*******************************************************************************
 * Init Status
 ******************************************************************************/
static void ComServ_InitStatus(void)
{
    ComServ_Status.AppDateTime =
            ((u32)((s16)ComServ_BuildInfo.Year - COMSERV_YEAR_OFFSET) << 26) |
            ((u32)ComServ_BuildInfo.Month << 22) |
            ((u32)ComServ_BuildInfo.Day   << 17) |
            ((u32)ComServ_BuildInfo.Hour  << 12) |
            ((u32)ComServ_BuildInfo.Min   <<  6) |
            ((u32)ComServ_BuildInfo.Sec   <<  0);
    ComServ_Status.AppVersion = ((u32)MAIN_VER_X << 30) |
            ((u32)MAIN_VER_N << 24) | ((u32)MAIN_VER_R << 16) |
            ((u32)MAIN_VER_P <<  8) | ((u32)MAIN_VER_T <<  0);
    ComServ_Status.CfgVersion = CAN_CFG_VERSION;
}
#define MPU_QM_STOP_SEC_CODE
#include "MPU_MemMap.h"

#define MPU_ASIL_START_SEC_CODE
#include "MPU_MemMap.h"
/*******************************************************************************
 * CFG - App GetRx - Provide CAN values to APP
 ******************************************************************************/
void ComServ_EmergencyMode(void)
{
	if(ComServ_Status.CanError)
	{
		if(ComServ_Status.Operation == 0) // buck mode, enable peak current mode for 2.5min
		{
			if(ComServ_Status.CanErrorCnt < 15000) // 150s
			{
				ComServ_Status.PeakCurrentEn = 1;
				ComServ_Status.VoutRef 		= 1400;
				ComServ_Status.IoutRef 		= 3200;
				ComServ_Status.CanErrorCnt++;
			}
			else
			{
				ComServ_Status.Enable = 0;
				ComServ_Status.PeakCurrentEn = 0;
			}
		}
		else // boost mode, disable operation directly
		{
			ComServ_Status.Enable = 0;
			ComServ_Status.PeakCurrentEn = 0;
			ComServ_Status.CanErrorCnt = 0;
		}
	}
	else
	{
		ComServ_Status.PeakCurrentEn = 0;
		ComServ_Status.CanErrorCnt = 0;
	}
}

void ComServ_AutoDisable(HSFBAPP_S_RX* y)
{
    if(y->Enable && !ComServ_Status.Enable)				// step1. turn off
    {
    	y->Enable = ComServ_Status.Enable;
    }
    else if((y->Operation != ComServ_Status.Operation) ||
     	    (y->Topology != ComServ_Status.Topology))		// step2. change mode
	{
    	OpMode_flag = 1;
    	if(y->Enable)
    	{
    		y->Enable = 0;
    	}
    	else
    	{
    		y->Operation = ComServ_Status.Operation;
    		y->Topology = ComServ_Status.Topology;
    	}
    	ComServ_Status.EnableCnt = 0;
	}
    else if(ComServ_Status.EnableCnt < 4)					// step3. delay 40ms after change mode
    {
    	ComServ_Status.EnableCnt++;
    }
    else if(!y->Enable && ComServ_Status.Enable) 			// step4. turn on
    {
    	y->Enable = ComServ_Status.Enable;
    	ComServ_Status.EnableCnt = 0;
    }
    else
    {
       	OpMode_flag = 0;
    }
}

void HsfbApp_GetRx10ms(HSFBAPP_S_RX *y)
{
    y->ClrFault 		= ComServ_Status.ClrFault;
    y->CanTimeOut 		= ComServ_Status.CanTimeOut;
    y->IoutRef 			= ComServ_Status.IoutRef;
    y->VoutRef 			= ComServ_Status.VoutRef;
    y->VinRef 			= ComServ_Status.VinRef;
    y->AutoDiagEn		= ComServ_Status.AutoDiagEn;
    y->PeakCurrentEn 	= ComServ_Status.PeakCurrentEn;

    if(ComServ_DevRx.B2.AutoSwitchDis)
    {
    	y->Enable = ComServ_Status.Enable;
    	y->Operation = ComServ_Status.Operation;
		y->Topology = ComServ_Status.Topology;
    }
	ComServ_AutoDisable(y);

    ComServ_DevRx.B1.Debug 		= ComServ_Status.Debug;
    ComServ_DevRx.B1.Debug1 	= ComServ_Status.Debug1;
    ComServ_DevRx.B1.Debug2 	= ComServ_Status.Debug2;
    ComServ_DevRx.B1.HsfbFreq	= ComServ_Status.HsfbFreq;
    ComServ_DevRx.B1.HsfbSweep	= ComServ_Status.HsfbSweep;
    ComServ_DevRx.B1.Sr1En		= ComServ_Status.Sr1En;
    ComServ_DevRx.B1.Sr2En		= ComServ_Status.Sr2En;
    ComServ_DevRx.B1.SrCtrl		= ComServ_Status.SrCtrl;

    y->AutoSwitchDis 	= ComServ_DevRx.B2.AutoSwitchDis;
    y->TestPulseEn 		= ComServ_DevRx.B2.TestPulseEn;
    y->JitterDis 		= ComServ_DevRx.B2.JitterDis;
}

/*******************************************************************************
 * CFG - App SetTx - Write App values to CAN
 ******************************************************************************/
void HsfbApp_SetTx10ms(const HSFBAPP_S_TX *u)
{
	s16 Iout_abs = (u->MeasStatus.Iout.Data > 0) ? (u->MeasStatus.Iout.Data) : (-u->MeasStatus.Iout.Data);
	s16 Vout_abs = (u->MeasStatus.Vout.Data > 0) ? (u->MeasStatus.Vout.Data) : (-u->MeasStatus.Vout.Data);
	s16 Vin_abs = (u->MeasStatus.Vin.Data > 0) ? (u->MeasStatus.Vin.Data) : (-u->MeasStatus.Vin.Data);
	s16 Vkl30_abs = (u->MeasStatus.Vkl30.Data > 0) ? (u->MeasStatus.Vkl30.Data) : (-u->MeasStatus.Vkl30.Data);
	s16 Vkl30C_abs = (u->MeasStatus.Vkl30C.Data > 0) ? (u->MeasStatus.Vkl30C.Data) : (-u->MeasStatus.Vkl30C.Data);
	s16 Iout_sign = (u->MeasStatus.Iout.Data > 0) ? (0) : (1);

	s16 Iout_Data = u->MeasStatus.Iout.Data + 6070;
//	s16 Iout_abs_report = (Iout_Data > 6070) ? (Iout_Data) : (-Iout_Data);

	if(Iout_Data < 6090 && Iout_Data >6050) // factor = 0.1
	{
		Iout_Data = 6070;
	}


	s16 Ipri_Data = Vout_abs * Iout_abs * 0.8 / Vin_abs ;

	Set_CS_DCDC_Out_Curr((uint16_t)(Iout_Data));
//	Set_CS_DCDC_Out_Curr((uint16_t)(Iout_abs_report));
	Set_VS_DCDC_Out_Volt((uint16_t)(Vout_abs));
	Set_VS_DCDC_HV_Volt((uint16_t)(Vin_abs));
	Set_VS_DCDC_KL30(Dsp_SatS16U12(Vkl30_abs));
	Set_VS_DCDC_KL30C(Dsp_SatS16U12(Vkl30C_abs));
	Set_DCDC_Out_Curr_Direction((uint16_t)(Iout_sign));

	Set_VS_DCDC_VoutDiag((uint16_t)(u->MeasStatus.VoutDiag.Data));

	if( u->AppStatus.Operation ==1 && ConvertState(HsfbState_State)== 2 )
	{
	Set_CS_DCDC_Out_PriCT_Curr((uint16_t)(Ipri_Data));
	}
	else
	{
	Set_CS_DCDC_Out_PriCT_Curr((uint16_t)(u->MeasStatus.Ipri.Data));
	}

	Set_CS_DCDC_ProFet(Dsp_SatS16U12(u->MeasStatus.IproFet.Data));
	Set_VS_DCDC_AuxVolt(Dsp_SatS16U12(u->MeasStatus.Vaux.Data/COMSERV_VAUX_GAIN));


	Set_TS_DCDC_Temp_PrimSw(ConvertTempToCan(u->NtcStatus.Pri.Temp));
	Set_TS_DCDC_Temp_Rect1(ConvertTempToCan(u->NtcStatus.SrA.Temp));
	Set_TS_DCDC_Temp_Rect2(ConvertTempToCan(u->NtcStatus.SrB.Temp));
	Set_TS_DCDC_Temp_WaterIn(ConvertTempToCan(u->NtcStatus.WaterIn.Temp));
	Set_TS_DCDC_Temp_WaterOut(ConvertTempToCan(u->NtcStatus.WaterOut.Temp));
	Set_TS_DCDC_Temp_WaterOutDiag(ConvertTempToCan(u->NtcStatus.WaterOutDiag.Temp));

	Set_DCDC_ErrCode_0((uint16_t)(u->DiagStatus.WarnCode0));
	Set_DCDC_ErrCode_1((uint16_t)(u->DiagStatus.WarnCode1));
	Set_DCDC_ErrCode_3((uint16_t)(u->DiagStatus.WarnCode3));

//  Set_LvDc_PmaData_00((uint16_t)((Pma_AbortData.ErrCnt>>8)&0x00FF));
//  Set_LvDc_PmaData_01((uint16_t)(Pma_AbortData.ErrCnt&0x00FF));
//  Set_LvDc_PmaData_02((uint16_t)(Pma_AbortData.ErrSrc));
//  Set_LvDc_PmaData_03((uint16_t)(Pma_AbortData.ResetInfo.ShutdownSts));
//  Set_LvDc_PmaData_04((uint16_t)(Pma_AbortData.McSafeErr.IohwErr));
//  Set_LvDc_PmaData_05((uint16_t)(Pma_AbortData.McSafeErr.PfmSts.FailureCnt));
//  Set_LvDc_PmaData_06((uint16_t)(Pma_AbortData.McSafeErr.E2eSts.RxErrSum));
//  Set_LvDc_PmaData_07((uint16_t)(Pma_AbortData.CpuLoadMax));

	Set_LvDc_Pma_TotalErrCnt((uint16_t)((Pma_AbortData.ErrCnt>>8)&0x00FF));
	Set_LvDc_Pma_QSPI_ErrCnt((uint16_t)(Pma_AbortData.ErrCnt&0x00FF));
	Set_LvDc_Pma_ErrSrc((uint16_t)(Pma_AbortData.ErrSrc));
	Set_LvDc_Pma_LastResetRsn((uint16_t)(Pma_AbortData.ResetInfo.ShutdownSts));
	Set_LvDc_Pma_IOHW_ErrCnt((uint16_t)(Pma_AbortData.McSafeErr.IohwErr));
	Set_LvDc_Pma_PFM_ErrCnt((uint16_t)(Pma_AbortData.McSafeErr.PfmSts.FailureCnt));
	Set_LvDc_Pma_E2E_ErrCnt((uint16_t)(Pma_AbortData.McSafeErr.E2eSts.RxErrSum));
	Set_LvDc_Pma_maxCpuLoad((uint16_t)(Pma_AbortData.CpuLoadMax));


	Set_DcDc_Scope_Idx((uint16_t)(Pfm_Capture.Isr_15usCnt));
	Set_DcDc_ScopeCh1Data ((uint16_t)(Pfm_Capture.Isr_100usCnt));
	Set_DcDc_ScopeCh2Data((uint16_t)(Pfm_Capture.Isr_1msCnt));
	Set_DcDc_ScopeCh3Data ((uint16_t)(Pfm_Capture.TimerDiff_10ms/100U));
	Set_DcDc_ScopeCh4Data((uint16_t)(Pfm_Capture.Sts));
//	Set_DcDc_Scope_Status (6U);

	// debug
	if(Main_DebugErrCode)
	{
		Set_DCDC_ErrCode_2((uint16_t)Main_DebugErrCode);
	}
	else
	{
		Set_DCDC_ErrCode_2((uint16_t)(u->DiagStatus.WarnCode2));
	}

	Set_DCDC_Direction((uint16_t)(u->AppStatus.Operation));
	Set_DCDC_Topology_Mode((uint16_t)(u->AppStatus.Topology));
	Set_DCDC_Runtime_CPU((uint16_t)(u->AppStatus.IsrTime));
	Set_DCDC_Alive_Counter((uint16_t)(u->AppStatus.CpuTime));

	Set_SG_HV_DCDC_01_SM1_Status(ConvertSM(u->SafetyStatus.SafetyStatus.DCDC01_SM1));
	Set_SG_HV_DCDC_01_SM2_Status(ConvertSM(u->SafetyStatus.SafetyStatus.DCDC01_SM2));
	Set_SG_HV_DCDC_01_SM3_Status(ConvertSM(u->SafetyStatus.SafetyStatus.DCDC01_SM3));
	Set_SG_HV_DCDC_01_SM4_Status(ConvertSM(u->SafetyStatus.SafetyStatus.DCDC01_SM4));
//	Set_SG_HV_DCDC_01_LFD1_Status(3);
	Set_SG_HV_DCDC_01_LFD1_Status(ConvertSM(u->SafetyStatus.SafetyStatus.DCDC01_LFD1));
//	Set_SG_HV_DCDC_01_LFD2_Status(ConvertSM(u->SafetyStatus.SafetyStatus.DCDC01_LFD2));
	Set_SG_HV_DCDC_01_LFD3_Status(ConvertSM(u->SafetyStatus.SafetyStatus.DCDC01_LFD3));
	Set_SG_HV_DCDC_01_LFD4_Status(ConvertSM(u->SafetyStatus.SafetyStatus.DCDC01_LFD4));
	Set_SG_HV_DCDC_01_LFD5_Status(3);

	Set_SG_HV_DCDC_02_SM1_Status(ConvertSM(u->SafetyStatus.SafetyStatus.DCDC02_SM1));
	Set_SG_HV_DCDC_02_SM2_Status(ConvertSM(u->SafetyStatus.SafetyStatus.DCDC02_SM2));
	Set_SG_HV_DCDC_02_SM3_Status(ConvertSM(u->SafetyStatus.SafetyStatus.DCDC02_SM3));
	Set_SG_HV_DCDC_02_SM4_Status(ConvertSM(u->SafetyStatus.SafetyStatus.DCDC02_SM4));
//	Set_SG_HV_DCDC_02_LFD1_Status(3);
	Set_SG_HV_DCDC_02_LFD1_Status(ConvertSM(u->SafetyStatus.SafetyStatus.DCDC02_LFD1));
//	Set_SG_HV_DCDC_02_LFD2_Status(ConvertSM(u->SafetyStatus.SafetyStatus.DCDC02_LFD2));
	Set_SG_HV_DCDC_02_LFD3_Status(ConvertSM(u->SafetyStatus.SafetyStatus.DCDC02_LFD3));
	Set_SG_HV_DCDC_02_LFD4_Status(ConvertSM(u->SafetyStatus.SafetyStatus.DCDC02_LFD4));
  // Set_SG_HV_DCDC_02_LFD4_Status(3);
	Set_SG_HV_DCDC_02_LFD5_Status(3);

	Set_SG_HV_DCDC_03_SM1_Status(ConvertSM(u->SafetyStatus.SafetyStatus.DCDC03_SM1));
//	Set_SG_HV_DCDC_03_LFD1_Status(ConvertSM(u->SafetyStatus.SafetyStatus.DCDC03_LFD1));
	Set_SG_HV_DCDC_03_LFD1_Status(3);
	Set_SG_HV_DCDC_03_SM2_Status(3);
	Set_SG_HV_DCDC_04_SM1_Status(3);

	Set_SG_HV_DCDC_05_SM1_Status(ConvertSM(u->SafetyStatus.SafetyStatus.DCDC05_SM1));
	Set_SG_HV_DCDC_05_LFD1_Status(ConvertSM(u->SafetyStatus.SafetyStatus.DCDC05_LFD1));
//	Set_SG_HV_DCDC_05_LFD2_Status(ConvertSM(u->SafetyStatus.SafetyStatus.DCDC05_LFD2));

	Set_SG_HV_DCDC_01_LFD2_Status(ConvertAutoDiag(u->SafetyStatus.SafetyStatus.DCDC01_LFD2,u->SafetyStatus.AutoDiagStatus.EachFin[0]));
	Set_SG_HV_DCDC_02_LFD2_Status(ConvertAutoDiag(u->SafetyStatus.SafetyStatus.DCDC02_LFD2,u->SafetyStatus.AutoDiagStatus.EachFin[1]));
	//Set_SG_HV_DCDC_05_LFD2_Status(ConvertAutoDiag(u->SafetyStatus.SafetyStatus.DCDC05_LFD2,u->SafetyStatus.AutoDiagStatus.EachFin[3]));
	Set_SG_HV_DCDC_05_LFD2_Status(ConvertAutoDiag(KLDiagFlag,1));
	Set_LVDC_RefuseToSleep(2); // Ready to Sleep

	if(!Main_InitFin) return;

	Set_DCDC_Iout_OCP((uint16_t)(u->PortStatus.IoutPOcp));
	Set_DCDC_OCP_Bst((uint16_t)(u->PortStatus.IoutNOcp));
	Set_DCDC_CT_OCP((uint16_t)(u->PortStatus.IpriOcp));
	Set_DCDC_HV_OVP((uint16_t)(u->PortStatus.VinOvp));
//	Set_DCDC_LV_OVP((uint16_t)(u->PortStatus.Vout16VOvp));
//	Set_DCDC_LV_OVP1((uint16_t)(u->PortStatus.Vout19VOvp));
//	Set_DCDC_OTP_Water_Out((uint16_t)(u->PortStatus.WaterOutOtp));
	Set_DCDC_FastTurnOff((uint16_t)(u->PortStatus.FastTurnOff));//HW FastTurnOff is 1 in normal case, if is 0 mean Fast turn off

	if(!u->SafetyStatus.AutoDiagStatus.AutoDiagWait && !u->SafetyStatus.AutoDiagStatus.AutoDiagFin)
	{
		Set_DCDC_LV_OVP(0);
		Set_DCDC_LV_OVP1(0);
		Set_DCDC_OTP_Water_Out(0);
	}
	else
	{
		Set_DCDC_LV_OVP((uint16_t)(u->PortStatus.Vout16VOvp));
		Set_DCDC_LV_OVP1((uint16_t)(u->PortStatus.Vout19VOvp));
		Set_DCDC_OTP_Water_Out((uint16_t)(u->PortStatus.WaterOutOtp));
	}

	Set_DCDC_Driver_Enabled((uint16_t)((!u->PortStatus.PriDriveDis)&(!u->PortStatus.SrDriveDis)));
	Set_DCDC_Driver_COM_Enabled((uint16_t)(!u->PortStatus.FastTurnOff));//HW FastTurnOff is 1 in normal case
	Set_DCDC_DriverPri_Enabled((uint16_t)(!u->PortStatus.PriDriveDis));
	Set_DCDC_DriverSR_Enabled((uint16_t)(!u->PortStatus.SrDriveDis));

	if(!OpMode_flag)
	{
		Set_DCDC_Operating_State(ConvertState(HsfbState_State));
    }

}

/*******************************************************************************
 * SCB - 1ms Task
 ******************************************************************************/
void ComServ_1msTask(void)
{
#if(MEMORY_PROTECTION_ENABLED)
    uint16 u16Index=0;
    uint16 u16TxIndex=0;
    uint16 RxErrOut = 0;

	if(CANDriver_mg_bError){
      return;
  }

    for(u16Index = 0u; u16Index < (uint16)CAN_TX_MSG_SIZE; u16Index++)
    {
        if(Cyclic == CANDriver_mg_aeMsgSendType[u16Index])
  	    {
            if(0u == CANDriver_mg_au16TxCycleTime[u16Index])
  	        {
                u16TxIndex = CAN_HW_TX_INDEX_CONV(u16Index);
                // if(0u == MODULE_CAN.MO[u16TxIndex].STAT.B.TXRQ)
                if(0u == CANDriver_TxReqSts(u16TxIndex))
                {
                    CANDriver_TxDataE2E(u16Index);
                    CANDriver_TxDataToMbox(u16TxIndex, u16Index);
                    // MODULE_CAN.MO[u16TxIndex].CTR.U   = MS_TX_REQ_NEWDATA;
					CANDriver_TxReqNewData(u16TxIndex);
                    CANDriver_mg_au16TxCycleTime[u16Index]  = CanTxMsg[u16Index].CycleTime - 1u;
                }
            }
  	        else
  	        {
                CANDriver_mg_au16TxCycleTime[u16Index]--;
            }
        }
		else
  		{
    	    /* Handle the ISO Tx Msg  */
    	    if(TRUE == CanTxFlags[u16Index].ConfirmFlg)
			{
    	      	u16TxIndex = CAN_HW_TX_INDEX_CONV(u16Index);
    	      	CANDriver_TxDataToMbox(u16TxIndex, u16Index);
    	      	// MODULE_CAN.MO[u16TxIndex].CTR.U = MS_TX_REQ_NEWDATA;
				  CANDriver_TxReqNewData(u16TxIndex);
    	      	CanTxFlags[u16Index].ConfirmFlg = FALSE;
    	    }
    	}
    }

    for(u16Index = 0u; u16Index < CAN_RX_MSG_SIZE; u16Index++)
    {
        // if(1u == MODULE_CAN.MO[u16Index].STAT.B.RXPND)
        if(1u == CANDriver_ReadStsRxPending(u16Index))
		{
    
            CANDriver_MboxToRxBuf(u16Index);
            CANDriver_RxDataE2E(u16Index);
            // MODULE_CAN.MO[u16Index].CTR.U = CLR_RX_MS_PENDING;
			CANDriver_ClrRxPending(u16Index);
      
            if (Cyclic == CanRxMsg[u16Index].GenMsgSendType) 
			{
                /* set received frame indication flag for higher layer  */
                 CanRxFlags[u16Index].IndFlg       = TRUE;
                 /* reset TimeOut counter for the message         */
                *CanRxMsg[u16Index].TimeoutCounter = 0u;
                CanRxFlags[u16Index].Timeout 	   = FALSE;
            }
			else if (NoMsgSendType == CanRxMsg[u16Index].GenMsgSendType) 
			{
                if (ISO_TP == CanRxMsg[u16Index].MsgType) 
			    {
                    TpRx( 0u, (uint16* const)CanRxMsg[u16Index].Data );
                }
                else
			    {
                    CanRxFlags[u16Index].IndFlg         = TRUE;
                    *CanRxMsg[u16Index].TimeoutCounter   = 0u;
                    CanRxFlags[u16Index].Timeout 		 = FALSE;
                }
      
            }
        }
        else 
		{
            (*(CanRxMsg[u16Index].TimeoutCounter))++;
            /* check if timeout value has reached */
            if ((CanRxMsg[u16Index].Timeout / CAN_TASK_CYCLE_TIME) <= *(CanRxMsg[u16Index].TimeoutCounter))
            {
                *(CanRxMsg[u16Index].TimeoutCounter) = 0U;
                CanRxFlags[u16Index].Timeout = TRUE;
            }
        }
        // if(CanRxFlags[u16Index].Timeout && (CanRxMsg[u16Index].Id == ID_DCDC_CMD))
		if(CanRxMsg[u16Index].Id == ID_DCDC_CMD)
    	{
			DebugError[0] = (CanRxFlags[u16Index].Timeout != 0);
			DebugError[1] = (CanE2E.RxErr[u16Index].BZ != 0);
			DebugError[2] = (CanE2E.RxErr[u16Index].CRC != 0);
			DebugError[3] = 0;
			if(CanE2E.RxErrSign[u16Index] || CanRxFlags[u16Index].Timeout)
			{
				RxErrOut = 1;
			}
    	}
  	}

    if(!ComServ_Status.WakeUpSleepCmd || ComServ_DevRx.B2.ErrorDis)
	{
		CanE2E.RxErrOut = 0;
	}
	else
	{
		CanE2E.RxErrOut = RxErrOut;
	}
#endif/*MEMORY_PROTECTION_ENABLED*/
}

/*******************************************************************************
 * SCB - 10ms Task
 ******************************************************************************/
void ComServ_10msTask(void)
{
	if(!Main_InitFin)
	{
		ComServ_Status.Enable = 0;
		ComServ_Status.AutoDiagEn = 0;
		ComServ_Status.ClrFault = (ConvertState(HsfbState_State) == COMSERV_STATE_ERROR); // need around 200ms
		return;
	}

	ComServ_Status.CanError = CanE2E.RxErrOut;
    ComServ_ReadComData();
    ComServ_EmergencyMode();
    PortOtpAutoDiagEn = ComServ_Status.OtpAutoDiagEn;
    PortDisHSK =  ComServ_Status.DisHSK ;
    // for debug
//    if(ComServ_DevRx.B2.StopWDI)
//    {
//    	Gtm_StopWDI();
//    }
//    if(ComServ_DevRx.B2.StopFSP)
//	{
//    	Smu_ActivateFsp();
//	}
}

#if(MEMORY_PROTECTION_ENABLED)
/** ****************************************************************************
 * \brief     Function description
 *
 **************************************************************************** */
void CANDriver_Diag(uint16* const pu16ErrCode)
{
  Ifx_CAN_N_SR loc_NodeStatusReg;

  loc_NodeStatusReg  = (Ifx_CAN_N_SR)MODULE_CAN.N[CANDriver_CFG_NODE].SR;

  *pu16ErrCode    = (uint16)loc_NodeStatusReg.B.LEC;

  CANDriver_mg_bError = FALSE;
  if( (CAN_NO_ERROR != loc_NodeStatusReg.B.LEC) && (loc_NodeStatusReg.B.BOFF))
  {
      CANDriver_mg_bError = TRUE;
//      CANDriver_Init();
      CANDriver_HwCfg();
  }

}

/*******************************************************************************
 * Local functions implementation
 ******************************************************************************/
/** ****************************************************************************
 * \brief     Function description
 *
 **************************************************************************** */
void CANDriver_HwCfg(void)
{
  uint32 u32HelpVar = 1000u;

  IfxScuWdt_clearCpuEndinit(IfxScuWdt_getCpuWatchdogPassword());

  MODULE_CAN.CLC.U = (uint32)0x00u; /* enable module to allow register access*/
  while(0u != u32HelpVar){
    u32HelpVar = MODULE_CAN.CLC.U;
  }
  MODULE_CAN.FDR.U = FRAC_DIV;

  IfxScuWdt_setCpuEndinit(IfxScuWdt_getCpuWatchdogPassword());

  MODULE_CAN.MCR.B.CLKSEL = 0u;       /* switch off clock before change is required */
  MODULE_CAN.MCR.B.CLKSEL = 2u;        /* Osc Clock is selected  */

  /* CCE:Configuration Change Enable, INIT: Initialization */
  MODULE_CAN.N[CANDriver_CFG_NODE].CR.U    = (CANN_SET_INIT | CANN_SET_CCE);
  MODULE_CAN.N[CANDriver_CFG_NODE].PCR.U   = CANDriver_CFG_INPUT;      /* Input B from P20.7, P20.8 for internal Can*/

  /* Bit timing
  tq       = (BRP + 1) / fCAN      if DIV8 = 0
  TSync    = 1 tq
  TSeg1    = (TSEG1 + 1)   tq      (min. 3 tq)
  TSeg2    = (TSEG2 + 1)   tq      (min. 2 tq)
  bit time = TSync + TSeg1 + TSeg2 (min. 8 tq)
  TSJW = (SJW + 1)   tq
    TSeg1 鈮� TSJW + Tprop
    TSeg2 鈮� TSJW
    */
  MODULE_CAN.N[CANDriver_CFG_NODE].BTR.B.DIV8  = 0u;
  MODULE_CAN.N[CANDriver_CFG_NODE].BTR.B.SJW   = 2u;
  MODULE_CAN.N[CANDriver_CFG_NODE].BTR.B.TSEG1 = 11u;
  MODULE_CAN.N[CANDriver_CFG_NODE].BTR.B.TSEG2 = 6u;
  MODULE_CAN.N[CANDriver_CFG_NODE].BTR.B.BRP   = (CANDriver_CFG_CLK_FREQ / (CANDriver_CFG_BAUDRATE * 20)) - 1u;

  CANDriver_MsgObjCfg();

  /*
  MODULE_CAN.N[CANDriver_CFG_NODE].TCCR.B.TPSC      // Timer prescale for node timer
  MODULE_CAN.N[CANDriver_CFG_NODE].TCCR.B.TRIGSRC   // Trigger source (clock source) for node timer

  Node timer decrement per (TPSC + 1)*TRIGSRC
  Transmit request will triggers when the node timer reset
  MODULE_CAN.N[CANDriver_CFG_NODE].TATTR.B.TXMO     // Message object to be transmitted automatic
  MODULE_CAN.N[CANDriver_CFG_NODE].TATTR.B.RELOAD   // Transmit period (clock frequency (TPSC +1)*TRIGSRC)
  */
  MODULE_CAN.N[CANDriver_CFG_NODE].CR.U = (CANN_CLR_INIT | CANN_CLR_CCE);//Node x Control Register
}

void CANDriver_MsgObjCfg(void)
{
  uint16 u16Index=0;
  uint16 u16TxIndex=0;

  for(u16Index = 0u; u16Index < (uint16)CAN_RX_MSG_SIZE; u16Index++)
  {
    while(0x0u != (STATUS_PANCTR_BUSY & MODULE_CAN.PANCTR.U));
    MODULE_CAN.PANCTR.U = (PANCMD_STATIC_ALLOC | PANCTR_PANAR1(MO_NB(u16Index)) | PANCTR_PANAR2(LIST_NB( CANDriver_CFG_NODE + 1u)));

    MODULE_CAN.MO[u16Index].CTR.U   = RX_MESSAGE_CFG;
    MODULE_CAN.MO[u16Index].FCR.U   = MMC_STANDARD_MO;
    MODULE_CAN.MO[u16Index].FCR.U  |= MOFCR_MS_LENGTH(CanRxMsg[u16Index].Dlc);
    MODULE_CAN.MO[u16Index].AR.U    = (MO_STANDARD_MS  | MO_PRIO_CLASS_2 );
    MODULE_CAN.MO[u16Index].AR.U   |= MO_STANDARD_ID(CanRxMsg[u16Index].Id);
    MODULE_CAN.MO[u16Index].DATAH.U = 0x00000000u;
    MODULE_CAN.MO[u16Index].DATAL.U = 0x00000000u;
  }

  for(u16Index = 0u; u16Index < (uint16)CAN_TX_MSG_SIZE; u16Index++)
  {
    u16TxIndex = CAN_HW_TX_INDEX_CONV(u16Index);
    while(0x0u != (STATUS_PANCTR_BUSY & MODULE_CAN.PANCTR.U))
    {
      ;
    }
    MODULE_CAN.PANCTR.U = (PANCMD_STATIC_ALLOC | PANCTR_PANAR1(MO_NB(u16TxIndex)) | PANCTR_PANAR2(LIST_NB(CANDriver_CFG_NODE + 1u)));

    MODULE_CAN.MO[u16TxIndex].CTR.U   = TX_MESSAGE_CFG;
    MODULE_CAN.MO[u16TxIndex].FCR.U   = MMC_STANDARD_MO;
    MODULE_CAN.MO[u16TxIndex].FCR.U  |= MOFCR_MS_LENGTH(CanTxMsg[u16Index].Dlc);
    MODULE_CAN.MO[u16TxIndex].AR.U    = (MO_STANDARD_MS   | MO_PRIO_CLASS_2);
    MODULE_CAN.MO[u16TxIndex].AR.U   |= MO_STANDARD_ID(CanTxMsg[u16Index].Id);

    MODULE_CAN.MO[u16TxIndex].DATAH.U = 0x88776655u;
    MODULE_CAN.MO[u16TxIndex].DATAL.U = 0x44332211u;

    while((TX_MO_STAT_VER_MASK & MODULE_CAN.MO[u16TxIndex].STAT.U) != TX_MO_STAT_VER_VAL)
    {
      ;
    }
  }

}
#endif/*MEMORY_PROTECTION_ENABLED*/

/*******************************************************************************
 * Read App values from CAN
 ******************************************************************************/
static void ComServ_ReadComData(void)
{
	s16 VoutRef_Data;
    if(Get_DCDC_CMD_Indication())
    {
        Clr_DCDC_CMD_Indication();
        ComServ_Status.ClrFault 	= Get_DCDC_CMD_Clear_Faults();
        ComServ_Status.AutoDiagEn 	= (Get_DCDC_CMD_SafetyTests() == 1) ? 1 : 0;
        ComServ_Status.OtpAutoDiagEn =  (Get_HTB_CMD_SafetyTests() == 5) ? 1 : 0;
        ComServ_Status.Enable 		= (Get_DCDC_CMD_Enabled() == 1) ? 1 : 0; /* DCDC_CMD_Enable init value = 2 */
        ComServ_Status.DisHSK 		= (Get_DCDC_CMD_Reserve() == 1) ? 1 : 0;/*   =1 dis*/
        if (ComServ_Status.DisHSK)
        {
        	ComServ_Status.Enable 	= 0;
        }
//      ComServ_Status.VoutRef 		= Get_DCDC_CMD_VoltageSetpoint() * 10u;
//      ComServ_Status.IoutRef 		= Get_DCDC_CMD_CurrentSetpoint();
//      ComServ_Status.VinRef 		= Get_DCDC_CMD_VoltageSetpoint_HV() * 10u;
        VoutRef_Data = Get_DCDC_CMD_VoltageSetpoint() * 10u;
        if(VoutRef_Data > 1550 && VoutRef_Data < 1600)
        {
        	ComServ_Status.VoutRef = 1550;
        }
        else
        {
        	RangeCheck(VoutRef_Data,	(u16 *)&ComServ_Status.VoutRef,	1550,600,1400);
        }
        RangeCheck(Get_DCDC_CMD_CurrentSetpoint(),			(u16 *)&ComServ_Status.IoutRef,	3200,0,3200);
        RangeCheck(Get_DCDC_CMD_VoltageSetpoint_HV() * 10u,	(u16 *)&ComServ_Status.VinRef,	8250,2300,7900);
        ComServ_Status.Operation 	= Get_DCDC_CMD_Direction();
        ComServ_Status.Topology 	= Get_DCDC_CMD_Topology_Mode();
    }
    else
    {
    	ComServ_Status.ClrFault 	=0;
    }
    if(Get_DCDC_DEV_CMD_Indication())
    {
    	Clr_DCDC_DEV_CMD_Indication();
    	ComServ_Status.Debug 		= Get_DCDC_DEV_CMD_Debug();
    	ComServ_Status.Debug1 		= Get_DCDC_DEV_CMD_Debug1();
    	ComServ_Status.Debug2 		= Get_DCDC_DEV_CMD_Debug2();
    	ComServ_Status.HsfbFreq 	= Get_DCDC_DEV_CMD_HsfbFreq();
    	ComServ_Status.HsfbSweep 	= Get_DCDC_DEV_CMD_HsfbSweep();
    	ComServ_Status.Sr1En 		= Get_DCDC_DEV_CMD_Sr1En();
    	ComServ_Status.Sr2En 		= Get_DCDC_DEV_CMD_Sr2En();
    	ComServ_Status.SrCtrl 		= Get_DCDC_DEV_CMD_SrCtrl();
    }

    if(Get_COM_WAKEUPSLEEPMANAGEMENT_Indication())
	{
		Clr_COM_WAKEUPSLEEPMANAGEMENT_Indication();
		ComServ_Status.WakeUpSleepCmd = Get_Com_WakeUpSleepCmd();
	}
}
inline void RangeCheck(u16 x,u16 *y,u16 max,u16 min,u16 def)
{
	if((x <= max) && (x >= min))
	{
		*y = x;
	}
	else if((*y > max) || (*y < min))
	{
		*y = def;
	}
}
/*******************************************************************************
 * Scope <-> CAN
 ******************************************************************************/

/*******************************************************************************
 * Conversion for App\State\State_State to CAN_STATE
 ******************************************************************************/
static inline u16 ConvertSM(bit SM)
{
	// 0x0: Init
	// 0x1: Pass
	// 0x2: Fail
	// 0x3: Not Check
	return (SM) ? (2) : (1);
}

static inline u16 ConvertAutoDiag(bit SM,bit Fin)
{
	// 0x0: Init
	// 0x1: Pass
	// 0x2: Fail
	// 0x3: Not Check
	return (Fin) ? ((SM) ? (2) : (1)) : (3);
}

/*******************************************************************************
 * Conversion for App\State\State_State to CAN_STATE
 ******************************************************************************/
static u16 ConvertState(HSFBSTATE_E_STATE State)
{
  u16 y = 0;

  if((State == HSFBSTATE_E_STATE_None)||(State == HSFBSTATE_E_STATE_Init))
  {
    y = COMSERV_STATE_INIT;
  }
  else if(State == HSFBSTATE_E_STATE_Idle)
  {
    y = COMSERV_STATE_STANDBY;
  }
  else if((State == HSFBSTATE_E_STATE_SoftStart)||(State == HSFBSTATE_E_STATE_SoftStop)||(State == HSFBSTATE_E_STATE_Charge))
  {
    y = COMSERV_STATE_OPERATION;
  }
  else if((State == HSFBSTATE_E_STATE_WaitForReset)||(State == HSFBSTATE_E_STATE_ResetLatch)||(State == HSFBSTATE_E_STATE_ResetDriver))
  {
    y = COMSERV_STATE_ERROR;
  }
  else
  {
    y = COMSERV_STATE_ERROR;
  }
  
  return y;
}

/*******************************************************************************
 * Conversion for App\Ntc\Temp to CAN
 ******************************************************************************/
static u16 ConvertTempToCan(s16 Temp)
{
	s16 yS16;
	u16 yU16;
	yS16 = (Temp / COMSERV_TEMP_GAIN) + COMSERV_TEMP_OFFSET;
	yU16 = Dsp_SatS16U8(yS16);
	return yU16;
}
#define MPU_ASIL_STOP_SEC_CODE
#include "MPU_MemMap.h"


#if(MEMORY_PROTECTION_ENABLED)
#define MPU_QM_START_SEC_CODE
#include "MPU_MemMap.h"
/*******************************************************************************
 * Function:        UdsData_Param
 *
 * Parameters:      pointer to data buffer, data length
 * Returned value:  negative response code
 *
 * Description:     This routine handles the write of the calibration data
 *
 ******************************************************************************/
static void UdsData_Param(u16 ReadWrite, u8* Buffer, u16* DataPtr, u16 DataSize)
{
	u16 i;

	for(i = 0; i < DataSize; i++)
	{
		u16 Hbyte = 2 * i;
		u16 Lbyte = Hbyte + 1;
		DataPtr[i] = ((u16)Buffer[Hbyte] << 8) | (u16)Buffer[Lbyte];
	}
}

/*******************************************************************************
 * Function:        UdsData_Calib
 *
 * Parameters:      pointer to data buffer, data length
 * Returned value:  negative response code
 *
 * Description:     This routine handles the write of the calibration data
 *
 ******************************************************************************/
static void UdsData_Calib(u16 ReadWrite, u8* Buffer, u16* DataPtr, u16 DataSize)
{
	u16 i;

	for(i = 0; i < DataSize; i++)
	{
		u16 Hbyte = 2 * i;
		u16 Lbyte = Hbyte + 1;
		DataPtr[i] = ((u16)Buffer[Hbyte] << 8) | (u16)Buffer[Lbyte];
	}
}
/*******************************************************************************
 * Function:        UdsData_Parameter
 *
 * Parameters:      pointer to data buffer, data length
 * Returned value:  negative response code
 *
 * Description:     This routine handles the write of the parameter data
 *
 ******************************************************************************/
uint8 UdsData_Parameter(uint8 ReadWrite, uint8 *RxTxBuf, uint16 LenOfMsg)
{
	uint16 Index;
	uint32 ComCrcAct;
	uint32 ComCrcRef;
  uint8 MsgSts;

	Index = PARAM_INDEX_COMCRC;
	ComCrcAct = Crc_CalculateCRC32(RxTxBuf, Index);
	ComCrcRef = ((uint32) RxTxBuf[Index    ] << 24) |
				((uint32) RxTxBuf[Index + 1] << 16) |
				((uint32) RxTxBuf[Index + 2] <<  8) |
				((uint32) RxTxBuf[Index + 3]);

	if(ComCrcAct == ComCrcRef)
	{
		UdsData_Param(ReadWrite, RxTxBuf, (u16*)&ParameterData, (PARAM_DATASIZE/2));
    Param_recieved = TRUE;
		MsgSts = RESPONSE_SUCCESS;
	}
	else
	{
		MsgSts = UDS_NRC_PROTOCOL_CRC_INVALID;
	}
  return MsgSts;
} /* WriteParameterData */

/*******************************************************************************
 * Function:        UdsData_Calibration
 *
 * Parameters:      pointer to data buffer, data length
 * Returned value:  negative response code
 *
 * Description:     This routine handles the write of the calibration data
 *
 ******************************************************************************/
uint8 UdsData_Calibration(uint8 ReadWrite, uint8 *RxTxBuf, uint16 LenOfMsg)
{
	uint16 Index;
	uint32 AteCrcAct;
	uint32 AteCrcRef;
	uint32 ComCrcAct;
	uint32 ComCrcRef;
	uint16 IsCalibrated;
  uint8 MsgSts;

	Index = CALIB_INDEX_ATECRC;
	AteCrcAct = Crc_CalculateCRC32(RxTxBuf, Index);
	AteCrcRef = ((uint32) RxTxBuf[Index    ] << 24) |
            	((uint32) RxTxBuf[Index + 1] << 16) |
				((uint32) RxTxBuf[Index + 2] <<  8) |
				((uint32) RxTxBuf[Index + 3]);

	Index = CALIB_INDEX_COMCRC;
	ComCrcAct = Crc_CalculateCRC32(RxTxBuf, Index);
	ComCrcRef = ((uint32) RxTxBuf[Index    ] << 24) |
				((uint32) RxTxBuf[Index + 1] << 16) |
				((uint32) RxTxBuf[Index + 2] <<  8) |
				((uint32) RxTxBuf[Index + 3]);

	Index = CALIB_INDEX_ISCALIB;
	IsCalibrated = ((uint32) RxTxBuf[Index	  ] <<  8) |
				   ((uint32) RxTxBuf[Index + 1]);

	if(ComCrcAct == ComCrcRef)
  {
    if(1 == IsCalibrated)
    {
      if(AteCrcAct == AteCrcRef)
      {
        UdsData_Calib(ReadWrite, RxTxBuf, (u16*)&CalibrationData, (CALIB_DATASIZE/2));
        Calib_recieved = TRUE;
        MsgSts = RESPONSE_SUCCESS;
      }
      else
      {
        MsgSts = UDS_NRC_RCVD_DATA_CRC_INVALID;
      }
    }
    else
    {
      MsgSts = UDS_NRC_INCORRECT_CALIB_FLAG;
    }
  }
  else
  {
    MsgSts = UDS_NRC_PROTOCOL_CRC_INVALID;
  }
  return MsgSts;
  
#if 0
  if(AteCrcAct == AteCrcRef && ComCrcAct == ComCrcRef && IsCalibrated)
	{
		UdsData_Calib(ReadWrite, RxTxBuf, (u16*)&CalibrationData, (CALIB_DATASIZE/2));
    Calib_recieved = TRUE;
		return RESPONSE_SUCCESS;
	}
	else
	{
		return RESPONSE_ILLEGAL_DATA_OPERATION;
	}
#endif /*0*/
}
#define MPU_QM_STOP_SEC_CODE
#include "MPU_MemMap.h"


#define MPU_ASIL_START_SEC_CODE
#include "MPU_MemMap.h"
/*******************************************************************************
 * Function:        TrustedCall_CopyParam
 *
 * Parameters:      pointer to Parameter data
 * Returned value:  Validity of trusted copy of parameter data
 *
 * Description:     This routine handles the copy of parameter data to 
 *                  ASIL memory for upper layer SWC use
 *
 ******************************************************************************/
static u8 TrustedCall_CopyParam(ParameterData_t *Data)
// static void TrustedCall_CopyParam(ParameterData_t *Data)
{
  ParameterData_t *DataPtr = &Trusted_AsilParamData;
  u8 i;
  DataPtr->RecordVersion_Hi       =   Data->RecordVersion_Hi;
  DataPtr->RecordVersion_Lo       =   Data->RecordVersion_Lo;
  DataPtr->LVDC_ParameterEnable   =   Data->LVDC_ParameterEnable;
  DataPtr->LVDC_Ctrl_IoutBoostMax =   Data->LVDC_Ctrl_IoutBoostMax;
  DataPtr->LVDC_Ctrl_PreVinTarget =   Data->LVDC_Ctrl_PreVinTarget;
  DataPtr->LVDC_Ctrl_PreVinSrRise =   Data->LVDC_Ctrl_PreVinSrRise;
  DataPtr->LVDC_Ctrl_PreVlimMin   =   Data->LVDC_Ctrl_PreVlimMin;
  for(i = 0; i < 186; i++)
  {
    DataPtr->LVDC_Reserved[i] = Data->LVDC_Reserved[i];
  }
  return TRUSTED_COPY_VALID;
}/*TrustedCall_CopyParam*/

/*******************************************************************************
 * Function:        TrustedCall_CopyCalib
 *
 * Parameters:      pointer to Calibration data
 * Returned value:  Validity of trusted copy of calibration data
 *
 * Description:     This routine handles the copy of calibration data to 
 *                  ASIL memory for upper layer SWC use
 *
 ******************************************************************************/
static u8 TrustedCall_CopyCalib(CalibrationData_t *Data)
// static void TrustedCall_CopyCalib(CalibrationData_t *Data)
{
  CalibrationData_t *DataPtr = &Trusted_AsilCalibData;
  u8 i;
  DataPtr->LVDC_IsCalibrated          = Data->LVDC_IsCalibrated;
  DataPtr->LVDC_Calibration_Version   = Data->LVDC_Calibration_Version;
  DataPtr->LVDC_Output_VSense_gain    = Data->LVDC_Output_VSense_gain;
  DataPtr->LVDC_Output_VSense_offset  = Data->LVDC_Output_VSense_offset;
  DataPtr->LVDC_KL30F_VM_gain         = Data->LVDC_KL30F_VM_gain;
  DataPtr->LVDC_KL30F_VM_offset       = Data->LVDC_KL30F_VM_offset;
  DataPtr->LVDC_InOut_ISense_gain     = Data->LVDC_InOut_ISense_gain;
  DataPtr->LVDC_InOut_ISense_offset   = Data->LVDC_InOut_ISense_offset;
  DataPtr->LVDC_Input_1_VSense_gain   = Data->LVDC_Input_1_VSense_gain;
  DataPtr->LVDC_Input_1_VSense_offset = Data->LVDC_Input_1_VSense_offset;
  DataPtr->LVDC_Input_2_VSense_gain   = Data->LVDC_Input_2_VSense_gain;
  DataPtr->LVDC_Input_2_VSense_offset = Data->LVDC_Input_2_VSense_offset;
  DataPtr->LVDC_Input_3_VSense_gain   = Data->LVDC_Input_3_VSense_gain;
  DataPtr->LVDC_Input_3_VSense_offset = Data->LVDC_Input_3_VSense_offset;
  DataPtr->LVDC_Input_1to2_VSense_OP  = Data->LVDC_Input_1to2_VSense_OP;
  DataPtr->LVDC_Input_2to3_VSense_OP  = Data->LVDC_Input_2to3_VSense_OP;
  for(i = 0; i < 114; i++)
  {
    DataPtr->reserved_LVDC[i] = Data->reserved_LVDC[i];
  }
  return TRUSTED_COPY_VALID;
}/*TrustedCall_CopyCalib*/

/*******************************************************************************
 * Function:        Crc_CalculateCRC32
 *
 * Parameters:      crc data pointer, data length
 * Returned value:  crc32 value
 *
 * Description:     This routine calculates the CRC32 of the given data.
 *
 ******************************************************************************/
uint32 Crc_CalculateCRC32(uint8 *Crc_DataPtr, uint16 Crc_Length)
{
  uint32 Crc_Value=0; /* temporary crc value */
  uint16 i=0;          /* table index */
  const uint8 *DataPtr; /* internal byte pointer to the memory block */

  /* initialize variables */
  DataPtr = Crc_DataPtr; // (const uint16 *)Crc_DataPtr;
  Crc_Value = CRC32_INIT_VALUE;

  /* Process all data byte-wise */
  while (Crc_Length > (uint32)0)
  {

    /**************************************************/
    /* Low byte calculation */
    /**************************************************/
    /*- Process low nibble of current data low byte -*/
    i = (uint8)(Crc_Value & (uint32)0x0000000FU);
    i ^= (uint8)(*DataPtr & (uint8)0x0FU);

    Crc_Value = (uint32)(Crc_Value >> 4U);
    Crc_Value ^= CrcTable32[i & 0x00FFU];

    /*- Process high nibble of current data low byte -*/
    i = (uint8)(Crc_Value & (uint32)0x0000000FU);
    i ^= (uint8)((uint8)(*DataPtr & (uint8)0xF0U) >> 4U);

    Crc_Value = (uint32)(Crc_Value >> 4U);
    Crc_Value ^= CrcTable32[i & 0x00FFU];

    DataPtr = &DataPtr[1]; /* increment the pointer */

    --Crc_Length; /* and decrease the remaining bytes to calculate */
  }  /* while (Crc_Length > (uint32)0) */

  /* EXOR end value with CRC EXOR pattern */
  Crc_Value ^= CRC32_EXOR_VALUE;

  return Crc_Value;
} /* uint32 CF_CalculateCRC32_Table */

/*******************************************************************************
* Function:        Crc_CalculateCRC8
*
* Parameters:      Uint8* cp, Uint8 length, Uint8 offset
* Returned value:  crc
*
* Description:     Calculate CRC8 checksum over the the data block and except
*                  the start block (first three bytes).
* Input:           ucCRC8_Table[]
* Output:          -
* Calling:
******************************************************************************/
uint8 Crc_CalculateCRC8(const uint16_t* DataPtr, uint16 Length, uint16 CrcByteIdx){
	u8 Crc = 0xFF;
	u8 CrcIdx;
	u8 DataIdx;
	u8 Data;

	for (DataIdx = 0; Length > DataIdx; DataIdx++){
		if(DataIdx != CrcByteIdx){
			Data = DataPtr[DataIdx];
			CrcIdx = Crc ^ Data;
			Crc = CrcTable08[CrcIdx];
        }
    }
    Crc ^= 0xFF;
    return Crc;
}

static void CANDriver_TxDataE2E(uint16 u16Index)
{
	if((CanTxMsg[u16Index].Id == ID_DCDC_MEASURE) ||
	   (CanTxMsg[u16Index].Id == ID_DCDC_MEASURE2) ||
	   (CanTxMsg[u16Index].Id == ID_DCDC_MEASURE4) ||
	   (CanTxMsg[u16Index].Id == ID_LVDC_SAFETYMEASURE)
#if(DCDC_ORU_CAN_SIGNAL)
	   ||(CanTxMsg[u16Index].Id == ID_DCDC_ORUSTATUS)
#endif/*DCDC_ORU_CAN_SIGNAL*/
	   )
	{
		// BZ Calculate
		CanE2E.TxData[u16Index].BZ++;
		CanTxMsg[u16Index].Data[1] = (CanTxMsg[u16Index].Data[1] & 0xFFF0) | (CanE2E.TxData[u16Index].BZ & 0x000F);
		// CRC Calculate
		CanE2E.TxData[u16Index].CRC = Crc_CalculateCRC8((const uint16_t *)CanTxMsg[u16Index].Data, CanTxMsg[u16Index].Dlc, 0);
		CanTxMsg[u16Index].Data[0] = CanE2E.TxData[u16Index].CRC;
	}
}

static void CANDriver_RxDataE2E(uint16 u16Index)
{
	uint8 BZ,CRC;

	if(!u16Index)
	{
		CanE2E.RxErrSum = 0;
	}
	if((CanRxMsg[u16Index].Id == ID_DCDC_CMD)||(CanRxMsg[u16Index].Id == ID_HTB_CMD))
	{
		// BZ Check
		BZ = (CanRxMsg[u16Index].Data[1] & 0x000F);
		if(((CanE2E.RxData[u16Index].BZ + 1) & 0x0F) == BZ)
		{
			CanE2E.RxErr[u16Index].BZ = 0;
		}
		else
		{
			if(CanE2E.RxErr[u16Index].BZ < 3)
			{
				CanE2E.RxErr[u16Index].BZ++;
			}
		}
		CanE2E.RxData[u16Index].BZ = BZ;
		// CRC Check
		CRC = CanRxMsg[u16Index].Data[0];
		CanE2E.RxData[u16Index].CRC = Crc_CalculateCRC8((const uint16_t *)CanRxMsg[u16Index].Data, CanTxMsg[u16Index].Dlc, 0);
		if(CanE2E.RxData[u16Index].CRC == CRC)
		{
			CanE2E.RxErr[u16Index].CRC = 0;
		}
		else
		{
			if(CanE2E.RxErr[u16Index].CRC < 3)
			{
				CanE2E.RxErr[u16Index].CRC++;
			}
		}
		// Error Counter
		if(CanE2E.RxErr[u16Index].BZ || CanE2E.RxErr[u16Index].CRC)
		{
			if(CanE2E.RxErrCnt[u16Index] < 10) // 100ms debounce time
			{
				CanE2E.RxErrCnt[u16Index]++;
			}
			else
			{
				CanE2E.RxErrSign[u16Index] = 1;
				CanE2E.RxErrSum++;
			}
		}
		else
		{
			CanE2E.RxErrCnt[u16Index] = 0;
			CanE2E.RxErrSign[u16Index] = 0;
		}
	}
}

/*******************************************************************************
* External Function for APP Level
******************************************************************************/

void HsfbMeas_GetCalibData(HSFBMEAS_S_CALIB *y)
{
  if(TRUE == Calib_recieved)
  {
      // result = TrustedCall_CopyCalib(&CalibrationData);
      // TrustedCall_CopyCalib(&CalibrationData);
     
    if (TRUSTED_COPY_VALID == TrustedCall_CopyCalib(&CalibrationData))
    {
      y->Vout.Gain 		= CALIB_VOUT_GAIN_FACTOR  	*Trusted_AsilCalibData.LVDC_Output_VSense_gain;
      y->Vout.Offset 		= CALIB_VOUT_OFFSET_FACTOR	*Trusted_AsilCalibData.LVDC_Output_VSense_offset;

      y->Vkl30.Gain 		= CALIB_VKL30_GAIN_FACTOR  	*Trusted_AsilCalibData.LVDC_KL30F_VM_gain;
      y->Vkl30.Offset 	= CALIB_VKL30_OFFSET_FACTOR	*Trusted_AsilCalibData.LVDC_KL30F_VM_offset;

      y->Iout.Gain 		= CALIB_IOUT_GAIN_FACTOR  	*Trusted_AsilCalibData.LVDC_InOut_ISense_gain;
      y->Iout.Offset 		= CALIB_IOUT_OFFSET_FACTOR	*Trusted_AsilCalibData.LVDC_InOut_ISense_offset;

      y->Vin_P1.Gain 		= CALIB_VIN_GAIN_FACTOR  	*Trusted_AsilCalibData.LVDC_Input_1_VSense_gain;
      y->Vin_P1.Offset 	= CALIB_VIN_OFFSET_FACTOR	*Trusted_AsilCalibData.LVDC_Input_1_VSense_offset;

      y->Vin_P2.Gain 		= CALIB_VIN_GAIN_FACTOR  	*Trusted_AsilCalibData.LVDC_Input_2_VSense_gain;
      y->Vin_P2.Offset 	= CALIB_VIN_OFFSET_FACTOR	*Trusted_AsilCalibData.LVDC_Input_2_VSense_offset;

      y->Vin_P3.Gain 		= CALIB_VIN_GAIN_FACTOR  	*Trusted_AsilCalibData.LVDC_Input_3_VSense_gain;
      y->Vin_P3.Offset 	= CALIB_VIN_OFFSET_FACTOR	*Trusted_AsilCalibData.LVDC_Input_3_VSense_offset;

      y->Vin_OP1 			= CALIB_VIN_OP_FACTOR		*Trusted_AsilCalibData.LVDC_Input_1to2_VSense_OP;
      y->Vin_OP2 			= CALIB_VIN_OP_FACTOR		*Trusted_AsilCalibData.LVDC_Input_2to3_VSense_OP;
    } 
    Calib_recieved = FALSE;
  }
}

void HsfbCtrl_GetParamData(HSFBCTRL_S_PARAM *y)
{
  if(TRUE == Param_recieved)
    {
      // result = TrustedCall_CopyParam(&ParameterData);
      
    if (TRUSTED_COPY_VALID == TrustedCall_CopyParam(&ParameterData))
    {
      if((Trusted_AsilParamData.LVDC_ParameterEnable & PARAM_MASK_CTRL) != 0)
      {
        Trusted_AsilParamData.LVDC_ParameterEnable &= (~PARAM_MASK_CTRL);
      }
      else
      {
    	Param_recieved = FALSE;
        return;
      }
    // For different parameter version
    if((Trusted_AsilParamData.RecordVersion_Hi == 0) && (Trusted_AsilParamData.RecordVersion_Lo == 1))
    {
      y->IoutBoostMax		= 						(f32)Trusted_AsilParamData.LVDC_Ctrl_IoutBoostMax;
      y->PreVinTarget		= 						(f32)Trusted_AsilParamData.LVDC_Ctrl_PreVinTarget;
      y->PreVinSrRise		= PARAM_FACTOR_10m	*	(f32)Trusted_AsilParamData.LVDC_Ctrl_PreVinSrRise;
      y->PreVlimMin		= PARAM_FACTOR_100m	*	(f32)Trusted_AsilParamData.LVDC_Ctrl_PreVlimMin;

      RANGE_CHECK(y->IoutBoostMax, 320, 0, HSFBCTRL_IOUT_BOOST_MAX);
      RANGE_CHECK(y->PreVinTarget, 400, 0, HSFBCTRL_PRE_VIN_TARGET);
      RANGE_CHECK(y->PreVinSrRise, 10, 0, HSFBCTRL_PRE_VIN_SR_RISE);
      RANGE_CHECK(y->PreVlimMin, 16, 0, HSFBCTRL_PRE_VLIM_MINL);
    }
    else
    {
      y->IoutBoostMax		= HSFBCTRL_IOUT_BOOST_MAX;
      y->PreVinTarget		= HSFBCTRL_PRE_VIN_TARGET;
      y->PreVinSrRise		= HSFBCTRL_PRE_VIN_SR_RISE;
      y->PreVlimMin		= HSFBCTRL_PRE_VLIM_MINL;
    }
    }
    Param_recieved = FALSE;
  }
}


#endif/*MEMORY_PROTECTION_ENABLED*/
#define MPU_ASIL_STOP_SEC_CODE
#include "MPU_MemMap.h"
