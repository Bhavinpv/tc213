/*******************************************************************************
 * Filename	: can_cfg.c
 * Project	: 
 * Author(s)	: Created with CANgen by ROGAVRR (Alex Gavril)
 * Created	: Thursday 14 December 2023 - 14:03:59 PM  UTC+08:00
 * Description	: CAN configuration
 *
 * Last modification:
 *  on $Date: $
 *  by $Author: $
 * current $Revision: $
 *
 * DBC file used:	PAG_IPB_Int_CAN_Matrix_V2_0.dbc
 * generated for NODE:	DcDcController
 *
 * Copyright (c) 2023 Delta Energy Systems (Germany) GmbH.
 * All rights reserved.
*******************************************************************************/

#define CAN_CFG_GLOBALS

/*******************************************************************************
* Include header
*******************************************************************************/
#include "can_cfg.h"

/* --- Version check --- */
#if ( CAN_CFG_VERSION != 833410)
# error "Error in can_cfg.c: Source and header file are inconsistent! Check CAN_CFG_VERSION!"
#endif


/*******************************************************************************/
/* Local macros (private to module)                                            */
/*******************************************************************************/

/*******************************************************************************/
/* Frame specific defines                                                      */
/*******************************************************************************/

/*******************************************************************************/
/* Concerned TX/RX Signals specific defines                                    */
/*******************************************************************************/

/* init value of LvDc_Pma_DebugSig4 signal (LvDc_Pma_ErrCode) */
#define INITVALUE_LVDC_PMA_DEBUGSIG4 ((uint16_t)0u)
/* init value of LvDc_Pma_DebugSig3 signal (LvDc_Pma_ErrCode) */
#define INITVALUE_LVDC_PMA_DEBUGSIG3 ((uint16_t)0u)
/* init value of LvDc_Pma_DebugSig2 signal (LvDc_Pma_ErrCode) */
#define INITVALUE_LVDC_PMA_DEBUGSIG2 ((uint16_t)0u)
/* init value of LvDc_Pma_DebugSig1 signal (LvDc_Pma_ErrCode) */
#define INITVALUE_LVDC_PMA_DEBUGSIG1 ((uint16_t)0u)
/* init value of LvDc_Pma_IOHW_byte3 signal (LvDc_Pma_ErrCode) */
#define INITVALUE_LVDC_PMA_IOHW_BYTE3 ((uint16_t)0u)
/* init value of LvDc_Pma_IOHW_byte2 signal (LvDc_Pma_ErrCode) */
#define INITVALUE_LVDC_PMA_IOHW_BYTE2 ((uint16_t)0u)
/* init value of LvDc_Pma_IOHW_byte1 signal (LvDc_Pma_ErrCode) */
#define INITVALUE_LVDC_PMA_IOHW_BYTE1 ((uint16_t)0u)
/* init value of LvDc_Pma_IOHW_byte0 signal (LvDc_Pma_ErrCode) */
#define INITVALUE_LVDC_PMA_IOHW_BYTE0 ((uint16_t)0u)
/* init value of DCDC_HTB_Measure_Reserve signal (DCDC_HTB_Measure) */
#define INITVALUE_DCDC_HTB_MEASURE_RESERVE ((uint16_t)0u)
/* init value of DCDC_HTB_Modul_OTP signal (DCDC_HTB_Measure) */
#define INITVALUE_DCDC_HTB_MODUL_OTP ((uint16_t)0u)
/* init value of TS_DCDC_HTB_Heater_Modul_Red signal (DCDC_HTB_Measure) */
#define INITVALUE_TS_DCDC_HTB_HEATER_MODUL_RED ((uint16_t)254u)
/* init value of TS_DCDC_HTB_Heater_Modul signal (DCDC_HTB_Measure) */
#define INITVALUE_TS_DCDC_HTB_HEATER_MODUL ((uint16_t)254u)
/* init value of DCDC_HTB_Measure_CRC signal (DCDC_HTB_Measure) */
#define INITVALUE_DCDC_HTB_MEASURE_CRC ((uint16_t)0u)
/* init value of DCDC_HTB_Measure_BZ signal (DCDC_HTB_Measure) */
#define INITVALUE_DCDC_HTB_MEASURE_BZ ((uint16_t)0u)
/* init value of LVDC_WakeUpSleepReserved signal (LVDC_WakeUpSleepManagement) */
#define INITVALUE_LVDC_WAKEUPSLEEPRESERVED ((uint16_t)0u)
/* init value of LVDC_RefuseToSleep signal (LVDC_WakeUpSleepManagement) */
#define INITVALUE_LVDC_REFUSETOSLEEP ((uint16_t)0u)
/* init value of Com_WakeUpSleepReserved signal (COM_WakeUpSleepManagement) */
#define INITVALUE_COM_WAKEUPSLEEPRESERVED ((uint16_t)0u)
/* init value of Com_WakeUpSleepCmd signal (COM_WakeUpSleepManagement) */
#define INITVALUE_COM_WAKEUPSLEEPCMD ((uint16_t)0u)
/* init value of SG_HV_DCDC_03_LFD1_Status signal (LVDC_SafetyMeasure) */
#define INITVALUE_SG_HV_DCDC_03_LFD1_STATUS ((uint16_t)0u)
/* init value of SG_HV_DCDC_03_SM2_Status signal (LVDC_SafetyMeasure) */
#define INITVALUE_SG_HV_DCDC_03_SM2_STATUS ((uint16_t)0u)
/* init value of SG_HV_DCDC_03_SM1_Status signal (LVDC_SafetyMeasure) */
#define INITVALUE_SG_HV_DCDC_03_SM1_STATUS ((uint16_t)0u)
/* init value of SG_HV_DCDC_05_SM1_Status signal (LVDC_SafetyMeasure) */
#define INITVALUE_SG_HV_DCDC_05_SM1_STATUS ((uint16_t)0u)
/* init value of SG_HV_DCDC_05_LFD2_Status signal (LVDC_SafetyMeasure) */
#define INITVALUE_SG_HV_DCDC_05_LFD2_STATUS ((uint16_t)0u)
/* init value of SG_HV_DCDC_05_LFD1_Status signal (LVDC_SafetyMeasure) */
#define INITVALUE_SG_HV_DCDC_05_LFD1_STATUS ((uint16_t)0u)
/* init value of SG_HV_DCDC_04_SM1_Status signal (LVDC_SafetyMeasure) */
#define INITVALUE_SG_HV_DCDC_04_SM1_STATUS ((uint16_t)0u)
/* init value of SG_HV_DCDC_02_SM4_Status signal (LVDC_SafetyMeasure) */
#define INITVALUE_SG_HV_DCDC_02_SM4_STATUS ((uint16_t)0u)
/* init value of SG_HV_DCDC_02_SM3_Status signal (LVDC_SafetyMeasure) */
#define INITVALUE_SG_HV_DCDC_02_SM3_STATUS ((uint16_t)0u)
/* init value of SG_HV_DCDC_02_SM2_Status signal (LVDC_SafetyMeasure) */
#define INITVALUE_SG_HV_DCDC_02_SM2_STATUS ((uint16_t)0u)
/* init value of SG_HV_DCDC_02_SM1_Status signal (LVDC_SafetyMeasure) */
#define INITVALUE_SG_HV_DCDC_02_SM1_STATUS ((uint16_t)0u)
/* init value of SG_HV_DCDC_02_LFD5_Status signal (LVDC_SafetyMeasure) */
#define INITVALUE_SG_HV_DCDC_02_LFD5_STATUS ((uint16_t)0u)
/* init value of SG_HV_DCDC_02_LFD4_Status signal (LVDC_SafetyMeasure) */
#define INITVALUE_SG_HV_DCDC_02_LFD4_STATUS ((uint16_t)0u)
/* init value of SG_HV_DCDC_02_LFD3_Status signal (LVDC_SafetyMeasure) */
#define INITVALUE_SG_HV_DCDC_02_LFD3_STATUS ((uint16_t)0u)
/* init value of SG_HV_DCDC_02_LFD2_Status signal (LVDC_SafetyMeasure) */
#define INITVALUE_SG_HV_DCDC_02_LFD2_STATUS ((uint16_t)0u)
/* init value of SG_HV_DCDC_02_LFD1_Status signal (LVDC_SafetyMeasure) */
#define INITVALUE_SG_HV_DCDC_02_LFD1_STATUS ((uint16_t)0u)
/* init value of SG_HV_DCDC_01_SM4_Status signal (LVDC_SafetyMeasure) */
#define INITVALUE_SG_HV_DCDC_01_SM4_STATUS ((uint16_t)0u)
/* init value of SG_HV_DCDC_01_SM3_Status signal (LVDC_SafetyMeasure) */
#define INITVALUE_SG_HV_DCDC_01_SM3_STATUS ((uint16_t)0u)
/* init value of SG_HV_DCDC_01_SM2_Status signal (LVDC_SafetyMeasure) */
#define INITVALUE_SG_HV_DCDC_01_SM2_STATUS ((uint16_t)0u)
/* init value of SG_HV_DCDC_01_SM1_Status signal (LVDC_SafetyMeasure) */
#define INITVALUE_SG_HV_DCDC_01_SM1_STATUS ((uint16_t)0u)
/* init value of SG_HV_DCDC_01_LFD5_Status signal (LVDC_SafetyMeasure) */
#define INITVALUE_SG_HV_DCDC_01_LFD5_STATUS ((uint16_t)0u)
/* init value of SG_HV_DCDC_01_LFD4_Status signal (LVDC_SafetyMeasure) */
#define INITVALUE_SG_HV_DCDC_01_LFD4_STATUS ((uint16_t)0u)
/* init value of SG_HV_DCDC_01_LFD3_Status signal (LVDC_SafetyMeasure) */
#define INITVALUE_SG_HV_DCDC_01_LFD3_STATUS ((uint16_t)0u)
/* init value of SG_HV_DCDC_01_LFD2_Status signal (LVDC_SafetyMeasure) */
#define INITVALUE_SG_HV_DCDC_01_LFD2_STATUS ((uint16_t)0u)
/* init value of SG_HV_DCDC_01_LFD1_Status signal (LVDC_SafetyMeasure) */
#define INITVALUE_SG_HV_DCDC_01_LFD1_STATUS ((uint16_t)0u)
/* init value of LVDC_SafetyMeasure_Reserve signal (LVDC_SafetyMeasure) */
#define INITVALUE_LVDC_SAFETYMEASURE_RESERVE ((uint16_t)0u)
/* init value of LVDC_SafetyMeasure_CRC signal (LVDC_SafetyMeasure) */
#define INITVALUE_LVDC_SAFETYMEASURE_CRC ((uint16_t)0u)
/* init value of LVDC_SafetyMeasure_BZ signal (LVDC_SafetyMeasure) */
#define INITVALUE_LVDC_SAFETYMEASURE_BZ ((uint16_t)0u)
/* init value of SG_HV_Batt_02_LFD1_Status signal (HVDC_SafetyMeasure) */
#define INITVALUE_SG_HV_BATT_02_LFD1_STATUS ((uint16_t)0u)
/* init value of SG_HV_Batt_01_LFD6_Status signal (HVDC_SafetyMeasure) */
#define INITVALUE_SG_HV_BATT_01_LFD6_STATUS ((uint16_t)0u)
/* init value of SG_HV_Batt_01_LFD1_Status signal (HVDC_SafetyMeasure) */
#define INITVALUE_SG_HV_BATT_01_LFD1_STATUS ((uint16_t)0u)
/* init value of HTB_CMD_SafetyTests signal (HTB_CMD) */
#define INITVALUE_HTB_CMD_SAFETYTESTS ((uint16_t)0u)
/* init value of HTB_PwrSetPoint signal (HTB_CMD) */
#define INITVALUE_HTB_PWRSETPOINT ((uint16_t)8190u)
/* init value of HTB_CMD_Clear_Faults signal (HTB_CMD) */
#define INITVALUE_HTB_CMD_CLEAR_FAULTS ((uint16_t)0u)
/* init value of HTB_CMD_Enable signal (HTB_CMD) */
#define INITVALUE_HTB_CMD_ENABLE ((uint16_t)0u)
/* init value of Heater_CMD_CRC signal (HTB_CMD) */
#define INITVALUE_HEATER_CMD_CRC ((uint16_t)0u)
/* init value of Heater_CMD_BZ signal (HTB_CMD) */
#define INITVALUE_HEATER_CMD_BZ ((uint16_t)0u)
/* init value of VS_DCDC_HV_Volt signal (DCDC_Measure4) */
#define INITVALUE_VS_DCDC_HV_VOLT ((uint16_t)16382u)
/* init value of TS_DCDC_Temp_WaterOutDiag signal (DCDC_Measure4) */
#define INITVALUE_TS_DCDC_TEMP_WATEROUTDIAG ((uint16_t)254u)
/* init value of TS_DCDC_Temp_WaterOut signal (DCDC_Measure4) */
#define INITVALUE_TS_DCDC_TEMP_WATEROUT ((uint16_t)254u)
/* init value of TS_DCDC_Temp_WaterIn signal (DCDC_Measure4) */
#define INITVALUE_TS_DCDC_TEMP_WATERIN ((uint16_t)254u)
/* init value of DCDC_Measure4_BZ signal (DCDC_Measure4) */
#define INITVALUE_DCDC_MEASURE4_BZ ((uint16_t)0u)
/* init value of DCDC_Measure4_CRC signal (DCDC_Measure4) */
#define INITVALUE_DCDC_MEASURE4_CRC ((uint16_t)0u)
/* init value of DCDC_ErrCode_3 signal (DCDC_Status_ErrCode) */
#define INITVALUE_DCDC_ERRCODE_3 ((uint16_t)0u)
/* init value of DCDC_ErrCode_2 signal (DCDC_Status_ErrCode) */
#define INITVALUE_DCDC_ERRCODE_2 ((uint16_t)0u)
/* init value of DCDC_ErrCode_1 signal (DCDC_Status_ErrCode) */
#define INITVALUE_DCDC_ERRCODE_1 ((uint16_t)0u)
/* init value of DCDC_ErrCode_0 signal (DCDC_Status_ErrCode) */
#define INITVALUE_DCDC_ERRCODE_0 ((uint16_t)0u)
/* init value of Parameter_Com_DCDC_Data signal (Parameter_Com_DCDC) */
#define INITVALUE_PARAMETER_COM_DCDC_DATA ((uint16_t)0u)
/* init value of Parameter_DCDC_Com_Data signal (Parameter_DCDC_Com) */
#define INITVALUE_PARAMETER_DCDC_COM_DATA ((uint16_t)0u)
/* init value of DCDC_LLC_Diag_Resp_Byte_7 signal (DCDC_HSFB_Diag_Resp) */
#define INITVALUE_DCDC_LLC_DIAG_RESP_BYTE_7 ((uint16_t)0u)
/* init value of DCDC_LLC_Diag_Resp_Byte_6 signal (DCDC_HSFB_Diag_Resp) */
#define INITVALUE_DCDC_LLC_DIAG_RESP_BYTE_6 ((uint16_t)0u)
/* init value of DCDC_LLC_Diag_Resp_Byte_5 signal (DCDC_HSFB_Diag_Resp) */
#define INITVALUE_DCDC_LLC_DIAG_RESP_BYTE_5 ((uint16_t)0u)
/* init value of DCDC_LLC_Diag_Resp_Byte_4 signal (DCDC_HSFB_Diag_Resp) */
#define INITVALUE_DCDC_LLC_DIAG_RESP_BYTE_4 ((uint16_t)0u)
/* init value of DCDC_LLC_Diag_Resp_Byte_3 signal (DCDC_HSFB_Diag_Resp) */
#define INITVALUE_DCDC_LLC_DIAG_RESP_BYTE_3 ((uint16_t)0u)
/* init value of DCDC_LLC_Diag_Resp_Byte_2 signal (DCDC_HSFB_Diag_Resp) */
#define INITVALUE_DCDC_LLC_DIAG_RESP_BYTE_2 ((uint16_t)0u)
/* init value of DCDC_LLC_Diag_Resp_Byte_1 signal (DCDC_HSFB_Diag_Resp) */
#define INITVALUE_DCDC_LLC_DIAG_RESP_BYTE_1 ((uint16_t)0u)
/* init value of DCDC_LLC_Diag_Resp_Byte_0 signal (DCDC_HSFB_Diag_Resp) */
#define INITVALUE_DCDC_LLC_DIAG_RESP_BYTE_0 ((uint16_t)0u)
/* init value of DCDC_LLC_Diag_Req_Byte_7 signal (DCDC_HSFB_Diag_Req) */
#define INITVALUE_DCDC_LLC_DIAG_REQ_BYTE_7 ((uint16_t)0u)
/* init value of DCDC_LLC_Diag_Req_Byte_6 signal (DCDC_HSFB_Diag_Req) */
#define INITVALUE_DCDC_LLC_DIAG_REQ_BYTE_6 ((uint16_t)0u)
/* init value of DCDC_LLC_Diag_Req_Byte_5 signal (DCDC_HSFB_Diag_Req) */
#define INITVALUE_DCDC_LLC_DIAG_REQ_BYTE_5 ((uint16_t)0u)
/* init value of DCDC_LLC_Diag_Req_Byte_4 signal (DCDC_HSFB_Diag_Req) */
#define INITVALUE_DCDC_LLC_DIAG_REQ_BYTE_4 ((uint16_t)0u)
/* init value of DCDC_LLC_Diag_Req_Byte_3 signal (DCDC_HSFB_Diag_Req) */
#define INITVALUE_DCDC_LLC_DIAG_REQ_BYTE_3 ((uint16_t)0u)
/* init value of DCDC_LLC_Diag_Req_Byte_2 signal (DCDC_HSFB_Diag_Req) */
#define INITVALUE_DCDC_LLC_DIAG_REQ_BYTE_2 ((uint16_t)129u)
/* init value of DCDC_LLC_Diag_Req_Byte_1 signal (DCDC_HSFB_Diag_Req) */
#define INITVALUE_DCDC_LLC_DIAG_REQ_BYTE_1 ((uint16_t)16u)
/* init value of DCDC_LLC_Diag_Req_Byte_0 signal (DCDC_HSFB_Diag_Req) */
#define INITVALUE_DCDC_LLC_DIAG_REQ_BYTE_0 ((uint16_t)2u)
/* init value of DCDC_Out_Curr_Direction signal (DCDC_Measure2) */
#define INITVALUE_DCDC_OUT_CURR_DIRECTION ((uint16_t)2u)
/* init value of CS_DCDC_ProFet signal (DCDC_Measure2) */
#define INITVALUE_CS_DCDC_PROFET ((uint16_t)4094u)
/* init value of VS_DCDC_KL30C signal (DCDC_Measure2) */
#define INITVALUE_VS_DCDC_KL30C ((uint16_t)8190u)
/* init value of VS_DCDC_KL30 signal (DCDC_Measure2) */
#define INITVALUE_VS_DCDC_KL30 ((uint16_t)8190u)
/* init value of DCDC_Measure2_BZ signal (DCDC_Measure2) */
#define INITVALUE_DCDC_MEASURE2_BZ ((uint16_t)0u)
/* init value of DCDC_Measure2_CRC signal (DCDC_Measure2) */
#define INITVALUE_DCDC_MEASURE2_CRC ((uint16_t)0u)
/* init value of CS_DCDC_Out_PriCT_Curr signal (DCDC_Measure2) */
#define INITVALUE_CS_DCDC_OUT_PRICT_CURR ((uint16_t)4094u)
/* init value of LvDc_Pma_LastResetRsn signal (LvDc_Pma_ErrSrc) */
#define INITVALUE_LVDC_PMA_LASTRESETRSN ((uint16_t)0u)
/* init value of LvDc_Pma_maxCpuLoad signal (LvDc_Pma_ErrSrc) */
#define INITVALUE_LVDC_PMA_MAXCPULOAD ((uint16_t)0u)
/* init value of LvDc_Pma_QSPI_ErrCnt signal (LvDc_Pma_ErrSrc) */
#define INITVALUE_LVDC_PMA_QSPI_ERRCNT ((uint16_t)0u)
/* init value of LvDc_Pma_E2E_ErrCnt signal (LvDc_Pma_ErrSrc) */
#define INITVALUE_LVDC_PMA_E2E_ERRCNT ((uint16_t)0u)
/* init value of LvDc_Pma_PFM_ErrCnt signal (LvDc_Pma_ErrSrc) */
#define INITVALUE_LVDC_PMA_PFM_ERRCNT ((uint16_t)0u)
/* init value of LvDc_Pma_IOHW_ErrCnt signal (LvDc_Pma_ErrSrc) */
#define INITVALUE_LVDC_PMA_IOHW_ERRCNT ((uint16_t)0u)
/* init value of LvDc_Pma_ErrSrc signal (LvDc_Pma_ErrSrc) */
#define INITVALUE_LVDC_PMA_ERRSRC ((uint16_t)0u)
/* init value of LvDc_Pma_TotalErrCnt signal (LvDc_Pma_ErrSrc) */
#define INITVALUE_LVDC_PMA_TOTALERRCNT ((uint16_t)0u)
/* init value of DcDc_ScopeCh4Data signal (DcDc_Scope1) */
#define INITVALUE_DCDC_SCOPECH4DATA ((uint16_t)65534u)
/* init value of DcDc_ScopeCh3Data signal (DcDc_Scope1) */
#define INITVALUE_DCDC_SCOPECH3DATA ((uint16_t)65534u)
/* init value of DcDc_ScopeCh2Data signal (DcDc_Scope1) */
#define INITVALUE_DCDC_SCOPECH2DATA ((uint16_t)65534u)
/* init value of DcDc_Scope_Status signal (DcDc_Scope0) */
#define INITVALUE_DCDC_SCOPE_STATUS ((uint16_t)0u)
/* init value of DcDc_ScopeCh1Data signal (DcDc_Scope0) */
#define INITVALUE_DCDC_SCOPECH1DATA ((uint16_t)65534u)
/* init value of DcDc_Scope_Idx signal (DcDc_Scope0) */
#define INITVALUE_DCDC_SCOPE_IDX ((uint16_t)4094u)
/* init value of DCDC_DEV_CMD_Sr2En signal (DCDC_DEV_CMD) */
#define INITVALUE_DCDC_DEV_CMD_SR2EN ((uint16_t)0u)
/* init value of DCDC_DEV_CMD_Sr1En signal (DCDC_DEV_CMD) */
#define INITVALUE_DCDC_DEV_CMD_SR1EN ((uint16_t)0u)
/* init value of DCDC_DEV_CMD_Debug signal (DCDC_DEV_CMD) */
#define INITVALUE_DCDC_DEV_CMD_DEBUG ((uint16_t)0u)
/* init value of DCDC_DEV_CMD_Debug1 signal (DCDC_DEV_CMD) */
#define INITVALUE_DCDC_DEV_CMD_DEBUG1 ((uint16_t)0u)
/* init value of DCDC_DEV_CMD_HsfbSweep signal (DCDC_DEV_CMD) */
#define INITVALUE_DCDC_DEV_CMD_HSFBSWEEP ((uint16_t)0u)
/* init value of DCDC_DEV_CMD_SrCtrl signal (DCDC_DEV_CMD) */
#define INITVALUE_DCDC_DEV_CMD_SRCTRL ((uint16_t)0u)
/* init value of DCDC_DEV_CMD_Debug2 signal (DCDC_DEV_CMD) */
#define INITVALUE_DCDC_DEV_CMD_DEBUG2 ((uint16_t)0u)
/* init value of DCDC_DEV_CMD_HsfbFreq signal (DCDC_DEV_CMD) */
#define INITVALUE_DCDC_DEV_CMD_HSFBFREQ ((uint16_t)0u)
/* init value of DCDC_CMD_Reserve signal (DCDC_CMD) */
#define INITVALUE_DCDC_CMD_RESERVE ((uint16_t)0u)
/* init value of DCDC_CMD_SafetyTests signal (DCDC_CMD) */
#define INITVALUE_DCDC_CMD_SAFETYTESTS ((uint16_t)0u)
/* init value of DCDC_CMD_Sync signal (DCDC_CMD) */
#define INITVALUE_DCDC_CMD_SYNC ((uint16_t)0u)
/* init value of DCDC_CMD_Topology_Mode signal (DCDC_CMD) */
#define INITVALUE_DCDC_CMD_TOPOLOGY_MODE ((uint16_t)0u)
/* init value of DCDC_CMD_VoltageSetpoint_HV signal (DCDC_CMD) */
#define INITVALUE_DCDC_CMD_VOLTAGESETPOINT_HV ((uint16_t)1022u)
/* init value of DCDC_CMD_Direction signal (DCDC_CMD) */
#define INITVALUE_DCDC_CMD_DIRECTION ((uint16_t)0u)
/* init value of DCDC_CMD_Discharge_Enable signal (DCDC_CMD) */
#define INITVALUE_DCDC_CMD_DISCHARGE_ENABLE ((uint16_t)0u)
/* init value of DCDC_CMD_CurrentSetpoint signal (DCDC_CMD) */
#define INITVALUE_DCDC_CMD_CURRENTSETPOINT ((uint16_t)4094u)
/* init value of DCDC_CMD_VoltageSetpoint signal (DCDC_CMD) */
#define INITVALUE_DCDC_CMD_VOLTAGESETPOINT ((uint16_t)254u)
/* init value of DCDC_CMD_Clear_Faults signal (DCDC_CMD) */
#define INITVALUE_DCDC_CMD_CLEAR_FAULTS ((uint16_t)0u)
/* init value of DCDC_CMD_Reset_DTC signal (DCDC_CMD) */
#define INITVALUE_DCDC_CMD_RESET_DTC ((uint16_t)0u)
/* init value of DCDC_CMD_CRC signal (DCDC_CMD) */
#define INITVALUE_DCDC_CMD_CRC ((uint16_t)0u)
/* init value of DCDC_CMD_BZ signal (DCDC_CMD) */
#define INITVALUE_DCDC_CMD_BZ ((uint16_t)0u)
/* init value of DCDC_CMD_Enabled signal (DCDC_CMD) */
#define INITVALUE_DCDC_CMD_ENABLED ((uint16_t)2u)
/* init value of DCDC_Topology_Mode signal (DCDC_Status) */
#define INITVALUE_DCDC_TOPOLOGY_MODE ((uint16_t)2u)
/* init value of DCDC_OTP_Water_Out signal (DCDC_Status) */
#define INITVALUE_DCDC_OTP_WATER_OUT ((uint16_t)0u)
/* init value of DCDC_FastTurnOff signal (DCDC_Status) */
#define INITVALUE_DCDC_FASTTURNOFF ((uint16_t)0u)
/* init value of DCDC_Alive_Counter signal (DCDC_Status) */
#define INITVALUE_DCDC_ALIVE_COUNTER ((uint16_t)0u)
/* init value of DCDC_Direction signal (DCDC_Status) */
#define INITVALUE_DCDC_DIRECTION ((uint16_t)0u)
/* init value of DCDC_DriverPri_Enabled signal (DCDC_Status) */
#define INITVALUE_DCDC_DRIVERPRI_ENABLED ((uint16_t)0u)
/* init value of DCDC_DriverSR_Enabled signal (DCDC_Status) */
#define INITVALUE_DCDC_DRIVERSR_ENABLED ((uint16_t)0u)
/* init value of DCDC_CT_OCP signal (DCDC_Status) */
#define INITVALUE_DCDC_CT_OCP ((uint16_t)0u)
/* init value of DCDC_HV_OVP signal (DCDC_Status) */
#define INITVALUE_DCDC_HV_OVP ((uint16_t)0u)
/* init value of DCDC_LV_OVP1 signal (DCDC_Status) */
#define INITVALUE_DCDC_LV_OVP1 ((uint16_t)0u)
/* init value of DCDC_Driver_Enabled signal (DCDC_Status) */
#define INITVALUE_DCDC_DRIVER_ENABLED ((uint16_t)0u)
/* init value of DCDC_Driver_COM_Enabled signal (DCDC_Status) */
#define INITVALUE_DCDC_DRIVER_COM_ENABLED ((uint16_t)0u)
/* init value of DCDC_Operating_State signal (DCDC_Status) */
#define INITVALUE_DCDC_OPERATING_STATE ((uint16_t)0u)
/* init value of DCDC_LV_OVP signal (DCDC_Status) */
#define INITVALUE_DCDC_LV_OVP ((uint16_t)0u)
/* init value of DCDC_Cal_Received signal (DCDC_Status) */
#define INITVALUE_DCDC_CAL_RECEIVED ((uint16_t)2u)
/* init value of DCDC_Param_Received signal (DCDC_Status) */
#define INITVALUE_DCDC_PARAM_RECEIVED ((uint16_t)2u)
/* init value of DCDC_Iout_OCP signal (DCDC_Status) */
#define INITVALUE_DCDC_IOUT_OCP ((uint16_t)0u)
/* init value of DCDC_OCP_Bst signal (DCDC_Status) */
#define INITVALUE_DCDC_OCP_BST ((uint16_t)0u)
/* init value of DCDC_Runtime_CPU signal (DCDC_Measure3) */
#define INITVALUE_DCDC_RUNTIME_CPU ((uint16_t)101u)
/* init value of TS_DCDC_Temp_FIPG signal (DCDC_Measure3) */
#define INITVALUE_TS_DCDC_TEMP_FIPG ((uint16_t)510u)
/* init value of VS_DCDC_VoutDiag signal (DCDC_Measure3) */
#define INITVALUE_VS_DCDC_VOUTDIAG ((uint16_t)8190u)
/* init value of TS_DCDC_Temp_Rect2 signal (DCDC_Measure3) */
#define INITVALUE_TS_DCDC_TEMP_RECT2 ((uint16_t)254u)
/* init value of TS_DCDC_Temp_Rect1 signal (DCDC_Measure3) */
#define INITVALUE_TS_DCDC_TEMP_RECT1 ((uint16_t)254u)
/* init value of TS_DCDC_Temp_PrimSw signal (DCDC_Measure3) */
#define INITVALUE_TS_DCDC_TEMP_PRIMSW ((uint16_t)254u)
/* init value of DCDC_Measure_Reserved2 signal (DCDC_Measure) */
#define INITVALUE_DCDC_MEASURE_RESERVED2 ((uint16_t)0u)
/* init value of DCDC_Measure_Reserved signal (DCDC_Measure) */
#define INITVALUE_DCDC_MEASURE_RESERVED ((uint16_t)0u)
/* init value of VS_DCDC_AuxVolt signal (DCDC_Measure) */
#define INITVALUE_VS_DCDC_AUXVOLT ((uint16_t)4094u)
/* init value of CS_DCDC_Out_Curr signal (DCDC_Measure) */
#define INITVALUE_CS_DCDC_OUT_CURR ((uint16_t)16382u)
/* init value of DCDC_Measure_CRC signal (DCDC_Measure) */
#define INITVALUE_DCDC_MEASURE_CRC ((uint16_t)0u)
/* init value of DCDC_Measure_BZ signal (DCDC_Measure) */
#define INITVALUE_DCDC_MEASURE_BZ ((uint16_t)0u)
/* init value of VS_DCDC_Out_Volt signal (DCDC_Measure) */
#define INITVALUE_VS_DCDC_OUT_VOLT ((uint16_t)8190u)

/*******************************************************************************/
/* Local data (private to module)                                              */
/*******************************************************************************/
#define MPU_QM_START_SEC_VAR_NOINIT
#include "MPU_MemMap.h"
/* buffer for rx messages timeouts */
uint16_t RxTimeoutCounters[CAN_RX_MSG_SIZE];
uint16_t IndicationFlags[CAN_RX_MSG_SIZE];

/* buffer for tx messages timeouts */
uint16_t ConfirmationFlags[CAN_TX_MSG_SIZE];

/* internal frame data buffers */
/* 	TX	 */
LvDc_Pma_ErrCode_t LvDc_Pma_ErrCode_internal[DLC_LVDC_PMA_ERRCODE];
DCDC_HTB_Measure_t DCDC_HTB_Measure_internal[DLC_DCDC_HTB_MEASURE];
LVDC_WakeUpSleepManagement_t LVDC_WakeUpSleepManagement_internal[DLC_LVDC_WAKEUPSLEEPMANAGEMENT];
LVDC_SafetyMeasure_t LVDC_SafetyMeasure_internal[DLC_LVDC_SAFETYMEASURE];
DCDC_Measure4_t DCDC_Measure4_internal[DLC_DCDC_MEASURE4];
DCDC_Status_ErrCode_t DCDC_Status_ErrCode_internal[DLC_DCDC_STATUS_ERRCODE];
Parameter_DCDC_Com_t Parameter_DCDC_Com_internal[DLC_PARAMETER_DCDC_COM];
DCDC_HSFB_Diag_Resp_t DCDC_HSFB_Diag_Resp_internal[DLC_DCDC_HSFB_DIAG_RESP];
DCDC_Measure2_t DCDC_Measure2_internal[DLC_DCDC_MEASURE2];
LvDc_Pma_ErrSrc_t LvDc_Pma_ErrSrc_internal[DLC_LVDC_PMA_ERRSRC];
DcDc_Scope1_t DcDc_Scope1_internal[DLC_DCDC_SCOPE1];
DcDc_Scope0_t DcDc_Scope0_internal[DLC_DCDC_SCOPE0];
DCDC_Status_t DCDC_Status_internal[DLC_DCDC_STATUS];
DCDC_Measure3_t DCDC_Measure3_internal[DLC_DCDC_MEASURE3];
DCDC_Measure_t DCDC_Measure_internal[DLC_DCDC_MEASURE];
/* 	RX	 */
COM_WakeUpSleepManagement_t COM_WakeUpSleepManagement_internal[DLC_COM_WAKEUPSLEEPMANAGEMENT];
HVDC_SafetyMeasure_t HVDC_SafetyMeasure_internal[DLC_HVDC_SAFETYMEASURE];
HTB_CMD_t HTB_CMD_internal[DLC_HTB_CMD];
Parameter_Com_DCDC_t Parameter_Com_DCDC_internal[DLC_PARAMETER_COM_DCDC];
DCDC_HSFB_Diag_Req_t DCDC_HSFB_Diag_Req_internal[DLC_DCDC_HSFB_DIAG_REQ];
DCDC_DEV_CMD_t DCDC_DEV_CMD_internal[DLC_DCDC_DEV_CMD];
DCDC_CMD_t DCDC_CMD_internal[DLC_DCDC_CMD];
#define MPU_QM_STOP_SEC_VAR_NOINIT
#include "MPU_MemMap.h"
/*******************************************************************************/
/* Local constants (private to module)                                         */
/*******************************************************************************/
#define MPU_QM_START_SEC_CONST
#include "MPU_MemMap.h"
const CanTxMsg_t CanTxMsg[CAN_TX_MSG_SIZE] = {
	{ID_LVDC_PMA_ERRCODE, DLC_LVDC_PMA_ERRCODE, Cyclic, Application, START_DELAY_LVDC_PMA_ERRCODE, CYCLE_TIME_LVDC_PMA_ERRCODE, (uint16_t *)LvDc_Pma_ErrCode, (uint16_t *)LvDc_Pma_ErrCode_internal, &ConfirmationFlags[0]},
	{ID_DCDC_HTB_MEASURE, DLC_DCDC_HTB_MEASURE, Cyclic, Application, START_DELAY_DCDC_HTB_MEASURE, CYCLE_TIME_DCDC_HTB_MEASURE, (uint16_t *)DCDC_HTB_Measure, (uint16_t *)DCDC_HTB_Measure_internal, &ConfirmationFlags[1]},
	{ID_LVDC_WAKEUPSLEEPMANAGEMENT, DLC_LVDC_WAKEUPSLEEPMANAGEMENT, Cyclic, Application, START_DELAY_LVDC_WAKEUPSLEEPMANAGEMENT, CYCLE_TIME_LVDC_WAKEUPSLEEPMANAGEMENT, (uint16_t *)LVDC_WakeUpSleepManagement, (uint16_t *)LVDC_WakeUpSleepManagement_internal, &ConfirmationFlags[2]},
	{ID_LVDC_SAFETYMEASURE, DLC_LVDC_SAFETYMEASURE, Cyclic, Application, START_DELAY_LVDC_SAFETYMEASURE, CYCLE_TIME_LVDC_SAFETYMEASURE, (uint16_t *)LVDC_SafetyMeasure, (uint16_t *)LVDC_SafetyMeasure_internal, &ConfirmationFlags[3]},
	{ID_DCDC_MEASURE4, DLC_DCDC_MEASURE4, Cyclic, Application, START_DELAY_DCDC_MEASURE4, CYCLE_TIME_DCDC_MEASURE4, (uint16_t *)DCDC_Measure4, (uint16_t *)DCDC_Measure4_internal, &ConfirmationFlags[4]},
	{ID_DCDC_STATUS_ERRCODE, DLC_DCDC_STATUS_ERRCODE, Cyclic, Application, START_DELAY_DCDC_STATUS_ERRCODE, CYCLE_TIME_DCDC_STATUS_ERRCODE, (uint16_t *)DCDC_Status_ErrCode, (uint16_t *)DCDC_Status_ErrCode_internal, &ConfirmationFlags[5]},
	{ID_PARAMETER_DCDC_COM, DLC_PARAMETER_DCDC_COM, NoMsgSendType, ISO_TP, START_DELAY_PARAMETER_DCDC_COM, CYCLE_TIME_PARAMETER_DCDC_COM, (uint16_t *)Parameter_DCDC_Com, (uint16_t *)Parameter_DCDC_Com_internal, &ConfirmationFlags[6]},
	{ID_DCDC_HSFB_DIAG_RESP, DLC_DCDC_HSFB_DIAG_RESP, Cyclic, Application, START_DELAY_DCDC_HSFB_DIAG_RESP, CYCLE_TIME_DCDC_HSFB_DIAG_RESP, (uint16_t *)DCDC_HSFB_Diag_Resp, (uint16_t *)DCDC_HSFB_Diag_Resp_internal, &ConfirmationFlags[7]},
	{ID_DCDC_MEASURE2, DLC_DCDC_MEASURE2, Cyclic, Application, START_DELAY_DCDC_MEASURE2, CYCLE_TIME_DCDC_MEASURE2, (uint16_t *)DCDC_Measure2, (uint16_t *)DCDC_Measure2_internal, &ConfirmationFlags[8]},
	{ID_LVDC_PMA_ERRSRC, DLC_LVDC_PMA_ERRSRC, Cyclic, Application, START_DELAY_LVDC_PMA_ERRSRC, CYCLE_TIME_LVDC_PMA_ERRSRC, (uint16_t *)LvDc_Pma_ErrSrc, (uint16_t *)LvDc_Pma_ErrSrc_internal, &ConfirmationFlags[9]},
	{ID_DCDC_SCOPE1, DLC_DCDC_SCOPE1, Cyclic, Application, START_DELAY_DCDC_SCOPE1, CYCLE_TIME_DCDC_SCOPE1, (uint16_t *)DcDc_Scope1, (uint16_t *)DcDc_Scope1_internal, &ConfirmationFlags[10]},
	{ID_DCDC_SCOPE0, DLC_DCDC_SCOPE0, Cyclic, Application, START_DELAY_DCDC_SCOPE0, CYCLE_TIME_DCDC_SCOPE0, (uint16_t *)DcDc_Scope0, (uint16_t *)DcDc_Scope0_internal, &ConfirmationFlags[11]},
	{ID_DCDC_STATUS, DLC_DCDC_STATUS, Cyclic, Application, START_DELAY_DCDC_STATUS, CYCLE_TIME_DCDC_STATUS, (uint16_t *)DCDC_Status, (uint16_t *)DCDC_Status_internal, &ConfirmationFlags[12]},
	{ID_DCDC_MEASURE3, DLC_DCDC_MEASURE3, Cyclic, Application, START_DELAY_DCDC_MEASURE3, CYCLE_TIME_DCDC_MEASURE3, (uint16_t *)DCDC_Measure3, (uint16_t *)DCDC_Measure3_internal, &ConfirmationFlags[13]},
	{ID_DCDC_MEASURE, DLC_DCDC_MEASURE, Cyclic, Application, START_DELAY_DCDC_MEASURE, CYCLE_TIME_DCDC_MEASURE, (uint16_t *)DCDC_Measure, (uint16_t *)DCDC_Measure_internal, &ConfirmationFlags[14]}
};

const CanRxMsg_t CanRxMsg[CAN_RX_MSG_SIZE] = {
	{ID_COM_WAKEUPSLEEPMANAGEMENT, DLC_COM_WAKEUPSLEEPMANAGEMENT, Cyclic, Application, TIMEOUT_COM_WAKEUPSLEEPMANAGEMENT, &RxTimeoutCounters[0], (uint16_t *)COM_WakeUpSleepManagement, (uint16_t *)COM_WakeUpSleepManagement_internal, &IndicationFlags[0]},
	{ID_HVDC_SAFETYMEASURE, DLC_HVDC_SAFETYMEASURE, Cyclic, Application, TIMEOUT_HVDC_SAFETYMEASURE, &RxTimeoutCounters[1], (uint16_t *)HVDC_SafetyMeasure, (uint16_t *)HVDC_SafetyMeasure_internal, &IndicationFlags[1]},
	{ID_HTB_CMD, DLC_HTB_CMD, Cyclic, Application, TIMEOUT_HTB_CMD, &RxTimeoutCounters[2], (uint16_t *)HTB_CMD, (uint16_t *)HTB_CMD_internal, &IndicationFlags[2]},
	{ID_PARAMETER_COM_DCDC, DLC_PARAMETER_COM_DCDC, NoMsgSendType, ISO_TP, TIMEOUT_PARAMETER_COM_DCDC, &RxTimeoutCounters[3], (uint16_t *)Parameter_Com_DCDC, (uint16_t *)Parameter_Com_DCDC_internal, &IndicationFlags[3]},
	{ID_DCDC_HSFB_DIAG_REQ, DLC_DCDC_HSFB_DIAG_REQ, Cyclic, Application, TIMEOUT_DCDC_HSFB_DIAG_REQ, &RxTimeoutCounters[4], (uint16_t *)DCDC_HSFB_Diag_Req, (uint16_t *)DCDC_HSFB_Diag_Req_internal, &IndicationFlags[4]},
	{ID_DCDC_DEV_CMD, DLC_DCDC_DEV_CMD, Cyclic, Application, TIMEOUT_DCDC_DEV_CMD, &RxTimeoutCounters[5], (uint16_t *)DCDC_DEV_CMD, (uint16_t *)DCDC_DEV_CMD_internal, &IndicationFlags[5]},
	{ID_DCDC_CMD, DLC_DCDC_CMD, Cyclic, Application, TIMEOUT_DCDC_CMD, &RxTimeoutCounters[6], (uint16_t *)DCDC_CMD, (uint16_t *)DCDC_CMD_internal, &IndicationFlags[6]}
};
#define MPU_QM_STOP_SEC_CONST
#include "MPU_MemMap.h"
/*******************************************************************************/
/* Local functions prototypes (private to module)                              */
/*******************************************************************************/

/*******************************************************************************/
/* Global functions (public to other modules)                                  */
/*******************************************************************************/
#define MPU_QM_START_SEC_CODE
#include "MPU_MemMap.h"
/*******************************************************************************
* Function:		 Can_MessageInit
*
* Parameters:		 -
*
* Returned value:	 -
*
* Description:		 Initialization of all Tx and Rx CAN message buffers.
*
*******************************************************************************/
void Can_MessageInit(void){
	uint16_t i;
	/*initialize all tx buffers with zero */
	for (i = 0U; i < DLC_LVDC_PMA_ERRCODE; ++i) {
		LvDc_Pma_ErrCode[i] = 0U;
	} /* end for */
	for (i = 0U; i < DLC_DCDC_HTB_MEASURE; ++i) {
		DCDC_HTB_Measure[i] = 0U;
	} /* end for */
	for (i = 0U; i < DLC_LVDC_WAKEUPSLEEPMANAGEMENT; ++i) {
		LVDC_WakeUpSleepManagement[i] = 0U;
	} /* end for */
	for (i = 0U; i < DLC_LVDC_SAFETYMEASURE; ++i) {
		LVDC_SafetyMeasure[i] = 0U;
	} /* end for */
	for (i = 0U; i < DLC_DCDC_MEASURE4; ++i) {
		DCDC_Measure4[i] = 0U;
	} /* end for */
	for (i = 0U; i < DLC_DCDC_STATUS_ERRCODE; ++i) {
		DCDC_Status_ErrCode[i] = 0U;
	} /* end for */
	for (i = 0U; i < DLC_PARAMETER_DCDC_COM; ++i) {
		Parameter_DCDC_Com[i] = 0U;
	} /* end for */
	for (i = 0U; i < DLC_DCDC_HSFB_DIAG_RESP; ++i) {
		DCDC_HSFB_Diag_Resp[i] = 0U;
	} /* end for */
	for (i = 0U; i < DLC_DCDC_MEASURE2; ++i) {
		DCDC_Measure2[i] = 0U;
	} /* end for */
	for (i = 0U; i < DLC_LVDC_PMA_ERRSRC; ++i) {
		LvDc_Pma_ErrSrc[i] = 0U;
	} /* end for */
	for (i = 0U; i < DLC_DCDC_SCOPE1; ++i) {
		DcDc_Scope1[i] = 0U;
	} /* end for */
	for (i = 0U; i < DLC_DCDC_SCOPE0; ++i) {
		DcDc_Scope0[i] = 0U;
	} /* end for */
	for (i = 0U; i < DLC_DCDC_STATUS; ++i) {
		DCDC_Status[i] = 0U;
	} /* end for */
	for (i = 0U; i < DLC_DCDC_MEASURE3; ++i) {
		DCDC_Measure3[i] = 0U;
	} /* end for */
	for (i = 0U; i < DLC_DCDC_MEASURE; ++i) {
		DCDC_Measure[i] = 0U;
	} /* end for */
}
#define MPU_QM_STOP_SEC_CODE
#include "MPU_MemMap.h"
/*******************************************************************************/
/* Local functions (private to modules)                                        */
/*******************************************************************************/

/*******************************************************************************/
/* END OF FILE                                                                 */
/*******************************************************************************/

