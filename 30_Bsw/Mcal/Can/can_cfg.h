/*******************************************************************************
 * Filename	: can_cfg.h
 * Project	: 
 * Author(s)	: Created with CANgen by ROGAVRR (Alex Gavril)
 * Created	: Thursday 14 December 2023 - 14:04:00 PM  UTC+08:00
 * Description	: Header file of can_cfg.c
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

#if !defined(__CAN_CFG_H)
#define __CAN_CFG_H

#include "rtwtypes.h"

/* --- Version --- */
#define CAN_CFG_VERSION 833410


/*******************************************************************************/
/* Global constants and macros                                                 */
/*******************************************************************************/

/* frame IDs */
/* TX */
#define ID_LVDC_PMA_ERRCODE 0x364u
#define ID_DCDC_HTB_MEASURE 0x461u
#define ID_LVDC_WAKEUPSLEEPMANAGEMENT 0x464u
#define ID_LVDC_SAFETYMEASURE 0x162u
#define ID_DCDC_MEASURE4 0x163u
#define ID_DCDC_STATUS_ERRCODE 0x47Du
#define ID_PARAMETER_DCDC_COM 0x775u
#define ID_DCDC_HSFB_DIAG_RESP 0x301u
#define ID_DCDC_MEASURE2 0x164u
#define ID_LVDC_PMA_ERRSRC 0x363u
#define ID_DCDC_SCOPE1 0x161u
#define ID_DCDC_SCOPE0 0x160u
#define ID_DCDC_STATUS 0x463u
#define ID_DCDC_MEASURE3 0x462u
#define ID_DCDC_MEASURE 0x460u
/* RX */
#define ID_COM_WAKEUPSLEEPMANAGEMENT 0x404u
#define ID_HVDC_SAFETYMEASURE 0x142u
#define ID_HTB_CMD 0x101u
#define ID_PARAMETER_COM_DCDC 0x770u
#define ID_DCDC_HSFB_DIAG_REQ 0x300u
#define ID_DCDC_DEV_CMD 0x401u
#define ID_DCDC_CMD 0x100u

/* frame data length (DLC) */
/* TX */
#define DLC_LVDC_PMA_ERRCODE 8u
#define DLC_DCDC_HTB_MEASURE 4u
#define DLC_LVDC_WAKEUPSLEEPMANAGEMENT 1u
#define DLC_LVDC_SAFETYMEASURE 8u
#define DLC_DCDC_MEASURE4 7u
#define DLC_DCDC_STATUS_ERRCODE 8u
#define DLC_PARAMETER_DCDC_COM 8u
#define DLC_DCDC_HSFB_DIAG_RESP 8u
#define DLC_DCDC_MEASURE2 8u
#define DLC_LVDC_PMA_ERRSRC 8u
#define DLC_DCDC_SCOPE1 6u
#define DLC_DCDC_SCOPE0 4u
#define DLC_DCDC_STATUS 6u
#define DLC_DCDC_MEASURE3 7u
#define DLC_DCDC_MEASURE 7u
/* RX */
#define DLC_COM_WAKEUPSLEEPMANAGEMENT 1u
#define DLC_HVDC_SAFETYMEASURE 6u
#define DLC_HTB_CMD 4u
#define DLC_PARAMETER_COM_DCDC 8u
#define DLC_DCDC_HSFB_DIAG_REQ 8u
#define DLC_DCDC_DEV_CMD 6u
#define DLC_DCDC_CMD 8u

/* cycle time of tx messages in ms*/
#define CYCLE_TIME_LVDC_PMA_ERRCODE 50u
#define CYCLE_TIME_DCDC_HTB_MEASURE 100u
#define CYCLE_TIME_LVDC_WAKEUPSLEEPMANAGEMENT 100u
#define CYCLE_TIME_LVDC_SAFETYMEASURE 10u
#define CYCLE_TIME_DCDC_MEASURE4 10u
#define CYCLE_TIME_DCDC_STATUS_ERRCODE 100u
#define CYCLE_TIME_PARAMETER_DCDC_COM 0u
#define CYCLE_TIME_DCDC_HSFB_DIAG_RESP 100u
#define CYCLE_TIME_DCDC_MEASURE2 10u
#define CYCLE_TIME_LVDC_PMA_ERRSRC 50u
#define CYCLE_TIME_DCDC_SCOPE1 10u
#define CYCLE_TIME_DCDC_SCOPE0 10u
#define CYCLE_TIME_DCDC_STATUS 100u
#define CYCLE_TIME_DCDC_MEASURE3 100u
#define CYCLE_TIME_DCDC_MEASURE 100u

/* start delay of tx messages */
#define START_DELAY_LVDC_PMA_ERRCODE 9u
#define START_DELAY_DCDC_HTB_MEASURE 4u
#define START_DELAY_LVDC_WAKEUPSLEEPMANAGEMENT 0u
#define START_DELAY_LVDC_SAFETYMEASURE 0u
#define START_DELAY_DCDC_MEASURE4 4u
#define START_DELAY_DCDC_STATUS_ERRCODE 13u
#define START_DELAY_PARAMETER_DCDC_COM 0u
#define START_DELAY_DCDC_HSFB_DIAG_RESP 11u
#define START_DELAY_DCDC_MEASURE2 5u
#define START_DELAY_LVDC_PMA_ERRSRC 9u
#define START_DELAY_DCDC_SCOPE1 7u
#define START_DELAY_DCDC_SCOPE0 10u
#define START_DELAY_DCDC_STATUS 1u
#define START_DELAY_DCDC_MEASURE3 3u
#define START_DELAY_DCDC_MEASURE 2u

/* timeout values of rx messages */
#define TIMEOUT_COM_WAKEUPSLEEPMANAGEMENT 1000u
#define TIMEOUT_HVDC_SAFETYMEASURE 500u
#define TIMEOUT_HTB_CMD 500u
#define TIMEOUT_PARAMETER_COM_DCDC 500u
#define TIMEOUT_DCDC_HSFB_DIAG_REQ 1000u
#define TIMEOUT_DCDC_DEV_CMD 1000u
#define TIMEOUT_DCDC_CMD 500u

/*******************************************************************************/
/* Indication & Timeout defines                                                */
/*******************************************************************************/

/* RX-Messages Indication defines Get/Clr */

#define Get_COM_WAKEUPSLEEPMANAGEMENT_Indication() (CanRxFlags[CAN_RX_COM_WAKEUPSLEEPMANAGEMENT_IDX].IndFlg != 0u)
#define Clr_COM_WAKEUPSLEEPMANAGEMENT_Indication() (CanRxFlags[CAN_RX_COM_WAKEUPSLEEPMANAGEMENT_IDX].IndFlg = 0u)

#define Get_HVDC_SAFETYMEASURE_Indication() (CanRxFlags[CAN_RX_HVDC_SAFETYMEASURE_IDX].IndFlg != 0u)
#define Clr_HVDC_SAFETYMEASURE_Indication() (CanRxFlags[CAN_RX_HVDC_SAFETYMEASURE_IDX].IndFlg = 0u)

#define Get_HTB_CMD_Indication() (CanRxFlags[CAN_RX_HTB_CMD_IDX].IndFlg != 0u)
#define Clr_HTB_CMD_Indication() (CanRxFlags[CAN_RX_HTB_CMD_IDX].IndFlg = 0u)

#define Get_PARAMETER_COM_DCDC_Indication() (CanRxFlags[CAN_RX_PARAMETER_COM_DCDC_IDX].IndFlg != 0u)
#define Clr_PARAMETER_COM_DCDC_Indication() (CanRxFlags[CAN_RX_PARAMETER_COM_DCDC_IDX].IndFlg = 0u)

#define Get_DCDC_HSFB_DIAG_REQ_Indication() (CanRxFlags[CAN_RX_DCDC_HSFB_DIAG_REQ_IDX].IndFlg != 0u)
#define Clr_DCDC_HSFB_DIAG_REQ_Indication() (CanRxFlags[CAN_RX_DCDC_HSFB_DIAG_REQ_IDX].IndFlg = 0u)

#define Get_DCDC_DEV_CMD_Indication() (CanRxFlags[CAN_RX_DCDC_DEV_CMD_IDX].IndFlg != 0u)
#define Clr_DCDC_DEV_CMD_Indication() (CanRxFlags[CAN_RX_DCDC_DEV_CMD_IDX].IndFlg = 0u)

#define Get_DCDC_CMD_Indication() (CanRxFlags[CAN_RX_DCDC_CMD_IDX].IndFlg != 0u)
#define Clr_DCDC_CMD_Indication() (CanRxFlags[CAN_RX_DCDC_CMD_IDX].IndFlg = 0u)


/* RX-Messages Timeout defines Get/Clr */

#define Get_COM_WAKEUPSLEEPMANAGEMENT_Timeout() (CanRxFlags[CAN_RX_COM_WAKEUPSLEEPMANAGEMENT_IDX].Timeout != 0u)
#define Clr_COM_WAKEUPSLEEPMANAGEMENT_Timeout() (CanRxFlags[CAN_RX_COM_WAKEUPSLEEPMANAGEMENT_IDX].Timeout = 0u)

#define Get_HVDC_SAFETYMEASURE_Timeout() (CanRxFlags[CAN_RX_HVDC_SAFETYMEASURE_IDX].Timeout != 0u)
#define Clr_HVDC_SAFETYMEASURE_Timeout() (CanRxFlags[CAN_RX_HVDC_SAFETYMEASURE_IDX].Timeout = 0u)

#define Get_HTB_CMD_Timeout() (CanRxFlags[CAN_RX_HTB_CMD_IDX].Timeout != 0u)
#define Clr_HTB_CMD_Timeout() (CanRxFlags[CAN_RX_HTB_CMD_IDX].Timeout = 0u)

#define Get_PARAMETER_COM_DCDC_Timeout() (CanRxFlags[CAN_RX_PARAMETER_COM_DCDC_IDX].Timeout != 0u)
#define Clr_PARAMETER_COM_DCDC_Timeout() (CanRxFlags[CAN_RX_PARAMETER_COM_DCDC_IDX].Timeout = 0u)

#define Get_DCDC_HSFB_DIAG_REQ_Timeout() (CanRxFlags[CAN_RX_DCDC_HSFB_DIAG_REQ_IDX].Timeout != 0u)
#define Clr_DCDC_HSFB_DIAG_REQ_Timeout() (CanRxFlags[CAN_RX_DCDC_HSFB_DIAG_REQ_IDX].Timeout = 0u)

#define Get_DCDC_DEV_CMD_Timeout() (CanRxFlags[CAN_RX_DCDC_DEV_CMD_IDX].Timeout != 0u)
#define Clr_DCDC_DEV_CMD_Timeout() (CanRxFlags[CAN_RX_DCDC_DEV_CMD_IDX].Timeout = 0u)

#define Get_DCDC_CMD_Timeout() (CanRxFlags[CAN_RX_DCDC_CMD_IDX].Timeout != 0u)
#define Clr_DCDC_CMD_Timeout() (CanRxFlags[CAN_RX_DCDC_CMD_IDX].Timeout = 0u)


/* RX-Signals Indication defines (Get) */

#define Get_Com_WakeUpSleepReserved_Indication()		 (Can_COM_WAKEUPSLEEPMANAGEMENT_RxIndFlags.Bit.Com_WakeUpSleepReserved_IndFlg != 0u)
#define Get_Com_WakeUpSleepCmd_Indication()		 (Can_COM_WAKEUPSLEEPMANAGEMENT_RxIndFlags.Bit.Com_WakeUpSleepCmd_IndFlg != 0u)
#define Get_SG_HV_Batt_02_LFD1_Status_Indication()		 (Can_HVDC_SAFETYMEASURE_RxIndFlags.Bit.SG_HV_Batt_02_LFD1_Status_IndFlg != 0u)
#define Get_SG_HV_Batt_01_LFD6_Status_Indication()		 (Can_HVDC_SAFETYMEASURE_RxIndFlags.Bit.SG_HV_Batt_01_LFD6_Status_IndFlg != 0u)
#define Get_SG_HV_Batt_01_LFD1_Status_Indication()		 (Can_HVDC_SAFETYMEASURE_RxIndFlags.Bit.SG_HV_Batt_01_LFD1_Status_IndFlg != 0u)
#define Get_HTB_CMD_SafetyTests_Indication()		 (Can_HTB_CMD_RxIndFlags.Bit.HTB_CMD_SafetyTests_IndFlg != 0u)
#define Get_HTB_PwrSetPoint_Indication()		 (Can_HTB_CMD_RxIndFlags.Bit.HTB_PwrSetPoint_IndFlg != 0u)
#define Get_HTB_CMD_Clear_Faults_Indication()		 (Can_HTB_CMD_RxIndFlags.Bit.HTB_CMD_Clear_Faults_IndFlg != 0u)
#define Get_HTB_CMD_Enable_Indication()		 (Can_HTB_CMD_RxIndFlags.Bit.HTB_CMD_Enable_IndFlg != 0u)
#define Get_Heater_CMD_CRC_Indication()		 (Can_HTB_CMD_RxIndFlags.Bit.Heater_CMD_CRC_IndFlg != 0u)
#define Get_Heater_CMD_BZ_Indication()		 (Can_HTB_CMD_RxIndFlags.Bit.Heater_CMD_BZ_IndFlg != 0u)
#define Get_Parameter_Com_DCDC_Data_Indication()		 (Can_PARAMETER_COM_DCDC_RxIndFlags.Bit.Parameter_Com_DCDC_Data_IndFlg != 0u)
#define Get_DCDC_LLC_Diag_Req_Byte_7_Indication()		 (Can_DCDC_HSFB_DIAG_REQ_RxIndFlags.Bit.DCDC_LLC_Diag_Req_Byte_7_IndFlg != 0u)
#define Get_DCDC_LLC_Diag_Req_Byte_6_Indication()		 (Can_DCDC_HSFB_DIAG_REQ_RxIndFlags.Bit.DCDC_LLC_Diag_Req_Byte_6_IndFlg != 0u)
#define Get_DCDC_LLC_Diag_Req_Byte_5_Indication()		 (Can_DCDC_HSFB_DIAG_REQ_RxIndFlags.Bit.DCDC_LLC_Diag_Req_Byte_5_IndFlg != 0u)
#define Get_DCDC_LLC_Diag_Req_Byte_4_Indication()		 (Can_DCDC_HSFB_DIAG_REQ_RxIndFlags.Bit.DCDC_LLC_Diag_Req_Byte_4_IndFlg != 0u)
#define Get_DCDC_LLC_Diag_Req_Byte_3_Indication()		 (Can_DCDC_HSFB_DIAG_REQ_RxIndFlags.Bit.DCDC_LLC_Diag_Req_Byte_3_IndFlg != 0u)
#define Get_DCDC_LLC_Diag_Req_Byte_2_Indication()		 (Can_DCDC_HSFB_DIAG_REQ_RxIndFlags.Bit.DCDC_LLC_Diag_Req_Byte_2_IndFlg != 0u)
#define Get_DCDC_LLC_Diag_Req_Byte_1_Indication()		 (Can_DCDC_HSFB_DIAG_REQ_RxIndFlags.Bit.DCDC_LLC_Diag_Req_Byte_1_IndFlg != 0u)
#define Get_DCDC_LLC_Diag_Req_Byte_0_Indication()		 (Can_DCDC_HSFB_DIAG_REQ_RxIndFlags.Bit.DCDC_LLC_Diag_Req_Byte_0_IndFlg != 0u)
#define Get_DCDC_DEV_CMD_Sr2En_Indication()		 (Can_DCDC_DEV_CMD_RxIndFlags.Bit.DCDC_DEV_CMD_Sr2En_IndFlg != 0u)
#define Get_DCDC_DEV_CMD_Sr1En_Indication()		 (Can_DCDC_DEV_CMD_RxIndFlags.Bit.DCDC_DEV_CMD_Sr1En_IndFlg != 0u)
#define Get_DCDC_DEV_CMD_Debug_Indication()		 (Can_DCDC_DEV_CMD_RxIndFlags.Bit.DCDC_DEV_CMD_Debug_IndFlg != 0u)
#define Get_DCDC_DEV_CMD_Debug1_Indication()		 (Can_DCDC_DEV_CMD_RxIndFlags.Bit.DCDC_DEV_CMD_Debug1_IndFlg != 0u)
#define Get_DCDC_DEV_CMD_HsfbSweep_Indication()		 (Can_DCDC_DEV_CMD_RxIndFlags.Bit.DCDC_DEV_CMD_HsfbSweep_IndFlg != 0u)
#define Get_DCDC_DEV_CMD_SrCtrl_Indication()		 (Can_DCDC_DEV_CMD_RxIndFlags.Bit.DCDC_DEV_CMD_SrCtrl_IndFlg != 0u)
#define Get_DCDC_DEV_CMD_Debug2_Indication()		 (Can_DCDC_DEV_CMD_RxIndFlags.Bit.DCDC_DEV_CMD_Debug2_IndFlg != 0u)
#define Get_DCDC_DEV_CMD_HsfbFreq_Indication()		 (Can_DCDC_DEV_CMD_RxIndFlags.Bit.DCDC_DEV_CMD_HsfbFreq_IndFlg != 0u)
#define Get_DCDC_CMD_Reserve_Indication()		 (Can_DCDC_CMD_RxIndFlags.Bit.DCDC_CMD_Reserve_IndFlg != 0u)
#define Get_DCDC_CMD_SafetyTests_Indication()		 (Can_DCDC_CMD_RxIndFlags.Bit.DCDC_CMD_SafetyTests_IndFlg != 0u)
#define Get_DCDC_CMD_Sync_Indication()		 (Can_DCDC_CMD_RxIndFlags.Bit.DCDC_CMD_Sync_IndFlg != 0u)
#define Get_DCDC_CMD_Topology_Mode_Indication()		 (Can_DCDC_CMD_RxIndFlags.Bit.DCDC_CMD_Topology_Mode_IndFlg != 0u)
#define Get_DCDC_CMD_VoltageSetpoint_HV_Indication()		 (Can_DCDC_CMD_RxIndFlags.Bit.DCDC_CMD_VoltageSetpoint_HV_IndFlg != 0u)
#define Get_DCDC_CMD_Direction_Indication()		 (Can_DCDC_CMD_RxIndFlags.Bit.DCDC_CMD_Direction_IndFlg != 0u)
#define Get_DCDC_CMD_Discharge_Enable_Indication()		 (Can_DCDC_CMD_RxIndFlags.Bit.DCDC_CMD_Discharge_Enable_IndFlg != 0u)
#define Get_DCDC_CMD_CurrentSetpoint_Indication()		 (Can_DCDC_CMD_RxIndFlags.Bit.DCDC_CMD_CurrentSetpoint_IndFlg != 0u)
#define Get_DCDC_CMD_VoltageSetpoint_Indication()		 (Can_DCDC_CMD_RxIndFlags.Bit.DCDC_CMD_VoltageSetpoint_IndFlg != 0u)
#define Get_DCDC_CMD_Clear_Faults_Indication()		 (Can_DCDC_CMD_RxIndFlags.Bit.DCDC_CMD_Clear_Faults_IndFlg != 0u)
#define Get_DCDC_CMD_Reset_DTC_Indication()		 (Can_DCDC_CMD_RxIndFlags.Bit.DCDC_CMD_Reset_DTC_IndFlg != 0u)
#define Get_DCDC_CMD_CRC_Indication()		 (Can_DCDC_CMD_RxIndFlags.Bit.DCDC_CMD_CRC_IndFlg != 0u)
#define Get_DCDC_CMD_BZ_Indication()		 (Can_DCDC_CMD_RxIndFlags.Bit.DCDC_CMD_BZ_IndFlg != 0u)
#define Get_DCDC_CMD_Enabled_Indication()		 (Can_DCDC_CMD_RxIndFlags.Bit.DCDC_CMD_Enabled_IndFlg != 0u)

/* RX-Signals Indication defines (Clear) */

#define Clr_Com_WakeUpSleepReserved_Indication()		 (Can_COM_WAKEUPSLEEPMANAGEMENT_RxIndFlags.Bit.Com_WakeUpSleepReserved_IndFlg = 0u)
#define Clr_Com_WakeUpSleepCmd_Indication()		 (Can_COM_WAKEUPSLEEPMANAGEMENT_RxIndFlags.Bit.Com_WakeUpSleepCmd_IndFlg = 0u)
#define Clr_SG_HV_Batt_02_LFD1_Status_Indication()		 (Can_HVDC_SAFETYMEASURE_RxIndFlags.Bit.SG_HV_Batt_02_LFD1_Status_IndFlg = 0u)
#define Clr_SG_HV_Batt_01_LFD6_Status_Indication()		 (Can_HVDC_SAFETYMEASURE_RxIndFlags.Bit.SG_HV_Batt_01_LFD6_Status_IndFlg = 0u)
#define Clr_SG_HV_Batt_01_LFD1_Status_Indication()		 (Can_HVDC_SAFETYMEASURE_RxIndFlags.Bit.SG_HV_Batt_01_LFD1_Status_IndFlg = 0u)
#define Clr_HTB_CMD_SafetyTests_Indication()		 (Can_HTB_CMD_RxIndFlags.Bit.HTB_CMD_SafetyTests_IndFlg = 0u)
#define Clr_HTB_PwrSetPoint_Indication()		 (Can_HTB_CMD_RxIndFlags.Bit.HTB_PwrSetPoint_IndFlg = 0u)
#define Clr_HTB_CMD_Clear_Faults_Indication()		 (Can_HTB_CMD_RxIndFlags.Bit.HTB_CMD_Clear_Faults_IndFlg = 0u)
#define Clr_HTB_CMD_Enable_Indication()		 (Can_HTB_CMD_RxIndFlags.Bit.HTB_CMD_Enable_IndFlg = 0u)
#define Clr_Heater_CMD_CRC_Indication()		 (Can_HTB_CMD_RxIndFlags.Bit.Heater_CMD_CRC_IndFlg = 0u)
#define Clr_Heater_CMD_BZ_Indication()		 (Can_HTB_CMD_RxIndFlags.Bit.Heater_CMD_BZ_IndFlg = 0u)
#define Clr_Parameter_Com_DCDC_Data_Indication()		 (Can_PARAMETER_COM_DCDC_RxIndFlags.Bit.Parameter_Com_DCDC_Data_IndFlg = 0u)
#define Clr_DCDC_LLC_Diag_Req_Byte_7_Indication()		 (Can_DCDC_HSFB_DIAG_REQ_RxIndFlags.Bit.DCDC_LLC_Diag_Req_Byte_7_IndFlg = 0u)
#define Clr_DCDC_LLC_Diag_Req_Byte_6_Indication()		 (Can_DCDC_HSFB_DIAG_REQ_RxIndFlags.Bit.DCDC_LLC_Diag_Req_Byte_6_IndFlg = 0u)
#define Clr_DCDC_LLC_Diag_Req_Byte_5_Indication()		 (Can_DCDC_HSFB_DIAG_REQ_RxIndFlags.Bit.DCDC_LLC_Diag_Req_Byte_5_IndFlg = 0u)
#define Clr_DCDC_LLC_Diag_Req_Byte_4_Indication()		 (Can_DCDC_HSFB_DIAG_REQ_RxIndFlags.Bit.DCDC_LLC_Diag_Req_Byte_4_IndFlg = 0u)
#define Clr_DCDC_LLC_Diag_Req_Byte_3_Indication()		 (Can_DCDC_HSFB_DIAG_REQ_RxIndFlags.Bit.DCDC_LLC_Diag_Req_Byte_3_IndFlg = 0u)
#define Clr_DCDC_LLC_Diag_Req_Byte_2_Indication()		 (Can_DCDC_HSFB_DIAG_REQ_RxIndFlags.Bit.DCDC_LLC_Diag_Req_Byte_2_IndFlg = 0u)
#define Clr_DCDC_LLC_Diag_Req_Byte_1_Indication()		 (Can_DCDC_HSFB_DIAG_REQ_RxIndFlags.Bit.DCDC_LLC_Diag_Req_Byte_1_IndFlg = 0u)
#define Clr_DCDC_LLC_Diag_Req_Byte_0_Indication()		 (Can_DCDC_HSFB_DIAG_REQ_RxIndFlags.Bit.DCDC_LLC_Diag_Req_Byte_0_IndFlg = 0u)
#define Clr_DCDC_DEV_CMD_Sr2En_Indication()		 (Can_DCDC_DEV_CMD_RxIndFlags.Bit.DCDC_DEV_CMD_Sr2En_IndFlg = 0u)
#define Clr_DCDC_DEV_CMD_Sr1En_Indication()		 (Can_DCDC_DEV_CMD_RxIndFlags.Bit.DCDC_DEV_CMD_Sr1En_IndFlg = 0u)
#define Clr_DCDC_DEV_CMD_Debug_Indication()		 (Can_DCDC_DEV_CMD_RxIndFlags.Bit.DCDC_DEV_CMD_Debug_IndFlg = 0u)
#define Clr_DCDC_DEV_CMD_Debug1_Indication()		 (Can_DCDC_DEV_CMD_RxIndFlags.Bit.DCDC_DEV_CMD_Debug1_IndFlg = 0u)
#define Clr_DCDC_DEV_CMD_HsfbSweep_Indication()		 (Can_DCDC_DEV_CMD_RxIndFlags.Bit.DCDC_DEV_CMD_HsfbSweep_IndFlg = 0u)
#define Clr_DCDC_DEV_CMD_SrCtrl_Indication()		 (Can_DCDC_DEV_CMD_RxIndFlags.Bit.DCDC_DEV_CMD_SrCtrl_IndFlg = 0u)
#define Clr_DCDC_DEV_CMD_Debug2_Indication()		 (Can_DCDC_DEV_CMD_RxIndFlags.Bit.DCDC_DEV_CMD_Debug2_IndFlg = 0u)
#define Clr_DCDC_DEV_CMD_HsfbFreq_Indication()		 (Can_DCDC_DEV_CMD_RxIndFlags.Bit.DCDC_DEV_CMD_HsfbFreq_IndFlg = 0u)
#define Clr_DCDC_CMD_Reserve_Indication()		 (Can_DCDC_CMD_RxIndFlags.Bit.DCDC_CMD_Reserve_IndFlg = 0u)
#define Clr_DCDC_CMD_SafetyTests_Indication()		 (Can_DCDC_CMD_RxIndFlags.Bit.DCDC_CMD_SafetyTests_IndFlg = 0u)
#define Clr_DCDC_CMD_Sync_Indication()		 (Can_DCDC_CMD_RxIndFlags.Bit.DCDC_CMD_Sync_IndFlg = 0u)
#define Clr_DCDC_CMD_Topology_Mode_Indication()		 (Can_DCDC_CMD_RxIndFlags.Bit.DCDC_CMD_Topology_Mode_IndFlg = 0u)
#define Clr_DCDC_CMD_VoltageSetpoint_HV_Indication()		 (Can_DCDC_CMD_RxIndFlags.Bit.DCDC_CMD_VoltageSetpoint_HV_IndFlg = 0u)
#define Clr_DCDC_CMD_Direction_Indication()		 (Can_DCDC_CMD_RxIndFlags.Bit.DCDC_CMD_Direction_IndFlg = 0u)
#define Clr_DCDC_CMD_Discharge_Enable_Indication()		 (Can_DCDC_CMD_RxIndFlags.Bit.DCDC_CMD_Discharge_Enable_IndFlg = 0u)
#define Clr_DCDC_CMD_CurrentSetpoint_Indication()		 (Can_DCDC_CMD_RxIndFlags.Bit.DCDC_CMD_CurrentSetpoint_IndFlg = 0u)
#define Clr_DCDC_CMD_VoltageSetpoint_Indication()		 (Can_DCDC_CMD_RxIndFlags.Bit.DCDC_CMD_VoltageSetpoint_IndFlg = 0u)
#define Clr_DCDC_CMD_Clear_Faults_Indication()		 (Can_DCDC_CMD_RxIndFlags.Bit.DCDC_CMD_Clear_Faults_IndFlg = 0u)
#define Clr_DCDC_CMD_Reset_DTC_Indication()		 (Can_DCDC_CMD_RxIndFlags.Bit.DCDC_CMD_Reset_DTC_IndFlg = 0u)
#define Clr_DCDC_CMD_CRC_Indication()		 (Can_DCDC_CMD_RxIndFlags.Bit.DCDC_CMD_CRC_IndFlg = 0u)
#define Clr_DCDC_CMD_BZ_Indication()		 (Can_DCDC_CMD_RxIndFlags.Bit.DCDC_CMD_BZ_IndFlg = 0u)
#define Clr_DCDC_CMD_Enabled_Indication()		 (Can_DCDC_CMD_RxIndFlags.Bit.DCDC_CMD_Enabled_IndFlg = 0u)

/*******************************************************************************/
/* GET - RX-Signal access for RX/TX messages                                   */
/*******************************************************************************/

/* Get of Com_WakeUpSleepReserved signal (COM_WakeUpSleepManagement) */
#define Get_Com_WakeUpSleepReserved() ( (((uint16_t)(COM_WakeUpSleepManagement[0]&0x00FCu))>>2) )

/* Get of Com_WakeUpSleepCmd signal (COM_WakeUpSleepManagement) */
#define Get_Com_WakeUpSleepCmd() ( (((uint16_t)(COM_WakeUpSleepManagement[0]&0x0003u))>>0) )

/* Get of SG_HV_Batt_02_LFD1_Status signal (HVDC_SafetyMeasure) */
#define Get_SG_HV_Batt_02_LFD1_Status() ( (((uint16_t)(HVDC_SafetyMeasure[5]&0x000Cu))>>2) )

/* Get of SG_HV_Batt_01_LFD6_Status signal (HVDC_SafetyMeasure) */
#define Get_SG_HV_Batt_01_LFD6_Status() ( (((uint16_t)(HVDC_SafetyMeasure[3]&0x00C0u))>>6) )

/* Get of SG_HV_Batt_01_LFD1_Status signal (HVDC_SafetyMeasure) */
#define Get_SG_HV_Batt_01_LFD1_Status() ( (((uint16_t)(HVDC_SafetyMeasure[2]&0x0030u))>>4) )

/* Get of HTB_CMD_SafetyTests signal (HTB_CMD) */
#define Get_HTB_CMD_SafetyTests() ( (((uint16_t)(HTB_CMD[3]&0x00E0u))>>5) )

/* Get of HTB_PwrSetPoint signal (HTB_CMD) */
#define Get_HTB_PwrSetPoint() ( ((uint16_t)HTB_CMD[2]) | (((uint16_t)(HTB_CMD[3]&0x001Fu))<<8) )

/* Get of HTB_CMD_Clear_Faults signal (HTB_CMD) */
#define Get_HTB_CMD_Clear_Faults() ( (((uint16_t)(HTB_CMD[1]&0x00C0u))>>6) )

/* Get of HTB_CMD_Enable signal (HTB_CMD) */
#define Get_HTB_CMD_Enable() ( (((uint16_t)(HTB_CMD[1]&0x0030u))>>4) )

/* Get of Heater_CMD_CRC signal (HTB_CMD) */
#define Get_Heater_CMD_CRC() ( (uint16_t)(HTB_CMD[0]) )

/* Get of Heater_CMD_BZ signal (HTB_CMD) */
#define Get_Heater_CMD_BZ() ( (((uint16_t)(HTB_CMD[1]&0x000Fu))>>0) )

/* Get of Parameter_Com_DCDC_Data signal (Parameter_Com_DCDC) */
#define Get_Parameter_Com_DCDC_Data() ( ((uint32_t)Parameter_Com_DCDC[0]) | (((uint32_t)(Parameter_Com_DCDC[1]&0x00FFu))<<8) | (((uint32_t)(Parameter_Com_DCDC[2]&0x00FFu))<<16) | (((uint32_t)(Parameter_Com_DCDC[3]&0x00FFu))<<24) | (((uint32_t)(Parameter_Com_DCDC[4]&0x00FFu))<<32) | (((uint32_t)(Parameter_Com_DCDC[5]&0x00FFu))<<40) | (((uint32_t)(Parameter_Com_DCDC[6]&0x00FFu))<<48) | (((uint32_t)(Parameter_Com_DCDC[7]&0x00FFu))<<56) )

/* Get of DCDC_LLC_Diag_Req_Byte_7 signal (DCDC_HSFB_Diag_Req) */
#define Get_DCDC_LLC_Diag_Req_Byte_7() ( (uint16_t)(DCDC_HSFB_Diag_Req[7]) )

/* Get of DCDC_LLC_Diag_Req_Byte_6 signal (DCDC_HSFB_Diag_Req) */
#define Get_DCDC_LLC_Diag_Req_Byte_6() ( (uint16_t)(DCDC_HSFB_Diag_Req[6]) )

/* Get of DCDC_LLC_Diag_Req_Byte_5 signal (DCDC_HSFB_Diag_Req) */
#define Get_DCDC_LLC_Diag_Req_Byte_5() ( (uint16_t)(DCDC_HSFB_Diag_Req[5]) )

/* Get of DCDC_LLC_Diag_Req_Byte_4 signal (DCDC_HSFB_Diag_Req) */
#define Get_DCDC_LLC_Diag_Req_Byte_4() ( (uint16_t)(DCDC_HSFB_Diag_Req[4]) )

/* Get of DCDC_LLC_Diag_Req_Byte_3 signal (DCDC_HSFB_Diag_Req) */
#define Get_DCDC_LLC_Diag_Req_Byte_3() ( (uint16_t)(DCDC_HSFB_Diag_Req[3]) )

/* Get of DCDC_LLC_Diag_Req_Byte_2 signal (DCDC_HSFB_Diag_Req) */
#define Get_DCDC_LLC_Diag_Req_Byte_2() ( (uint16_t)(DCDC_HSFB_Diag_Req[2]) )

/* Get of DCDC_LLC_Diag_Req_Byte_1 signal (DCDC_HSFB_Diag_Req) */
#define Get_DCDC_LLC_Diag_Req_Byte_1() ( (uint16_t)(DCDC_HSFB_Diag_Req[1]) )

/* Get of DCDC_LLC_Diag_Req_Byte_0 signal (DCDC_HSFB_Diag_Req) */
#define Get_DCDC_LLC_Diag_Req_Byte_0() ( (uint16_t)(DCDC_HSFB_Diag_Req[0]) )

/* Get of DCDC_DEV_CMD_Sr2En signal (DCDC_DEV_CMD) */
#define Get_DCDC_DEV_CMD_Sr2En() ( (((uint16_t)(DCDC_DEV_CMD[3]&0x0080u))>>7) )

/* Get of DCDC_DEV_CMD_Sr1En signal (DCDC_DEV_CMD) */
#define Get_DCDC_DEV_CMD_Sr1En() ( (((uint16_t)(DCDC_DEV_CMD[3]&0x0040u))>>6) )

/* Get of DCDC_DEV_CMD_Debug signal (DCDC_DEV_CMD) */
#define Get_DCDC_DEV_CMD_Debug() ( (uint16_t)(DCDC_DEV_CMD[5]) )

/* Get of DCDC_DEV_CMD_Debug1 signal (DCDC_DEV_CMD) */
#define Get_DCDC_DEV_CMD_Debug1() ( (((uint16_t)(DCDC_DEV_CMD[3]&0x0030u))>>4) )

/* Get of DCDC_DEV_CMD_HsfbSweep signal (DCDC_DEV_CMD) */
#define Get_DCDC_DEV_CMD_HsfbSweep() ( (uint16_t)(DCDC_DEV_CMD[4]) )

/* Get of DCDC_DEV_CMD_SrCtrl signal (DCDC_DEV_CMD) */
#define Get_DCDC_DEV_CMD_SrCtrl() ( ((uint16_t)DCDC_DEV_CMD[2]) | (((uint16_t)(DCDC_DEV_CMD[3]&0x000Fu))<<8) )

/* Get of DCDC_DEV_CMD_Debug2 signal (DCDC_DEV_CMD) */
#define Get_DCDC_DEV_CMD_Debug2() ( (((uint16_t)(DCDC_DEV_CMD[1]&0x00C0u))>>6) )

/* Get of DCDC_DEV_CMD_HsfbFreq signal (DCDC_DEV_CMD) */
#define Get_DCDC_DEV_CMD_HsfbFreq() ( ((uint16_t)DCDC_DEV_CMD[0]) | (((uint16_t)(DCDC_DEV_CMD[1]&0x003Fu))<<8) )

/* Get of DCDC_CMD_Reserve signal (DCDC_CMD) */
#define Get_DCDC_CMD_Reserve() ( (((uint16_t)(DCDC_CMD[6]&0x00C0u))>>6) | (((uint16_t)(DCDC_CMD[7]&0x00FFu))<<2) )

/* Get of DCDC_CMD_SafetyTests signal (DCDC_CMD) */
#define Get_DCDC_CMD_SafetyTests() ( (((uint16_t)(DCDC_CMD[1]&0x00C0u))>>6) )

/* Get of DCDC_CMD_Sync signal (DCDC_CMD) */
#define Get_DCDC_CMD_Sync() ( (((uint16_t)(DCDC_CMD[6]&0x000Cu))>>2) )

/* Get of DCDC_CMD_Topology_Mode signal (DCDC_CMD) */
#define Get_DCDC_CMD_Topology_Mode() ( (((uint16_t)(DCDC_CMD[4]&0x0080u))>>7) )

/* Get of DCDC_CMD_VoltageSetpoint_HV signal (DCDC_CMD) */
#define Get_DCDC_CMD_VoltageSetpoint_HV() ( ((uint16_t)DCDC_CMD[5]) | (((uint16_t)(DCDC_CMD[6]&0x0003u))<<8) )

/* Get of DCDC_CMD_Direction signal (DCDC_CMD) */
#define Get_DCDC_CMD_Direction() ( (((uint16_t)(DCDC_CMD[4]&0x0030u))>>4) )

/* Get of DCDC_CMD_Discharge_Enable signal (DCDC_CMD) */
#define Get_DCDC_CMD_Discharge_Enable() ( (((uint16_t)(DCDC_CMD[4]&0x0040u))>>6) )

/* Get of DCDC_CMD_CurrentSetpoint signal (DCDC_CMD) */
#define Get_DCDC_CMD_CurrentSetpoint() ( ((uint16_t)DCDC_CMD[3]) | (((uint16_t)(DCDC_CMD[4]&0x000Fu))<<8) )

/* Get of DCDC_CMD_VoltageSetpoint signal (DCDC_CMD) */
#define Get_DCDC_CMD_VoltageSetpoint() ( (uint16_t)(DCDC_CMD[2]) )

/* Get of DCDC_CMD_Clear_Faults signal (DCDC_CMD) */
#define Get_DCDC_CMD_Clear_Faults() ( (((uint16_t)(DCDC_CMD[6]&0x0020u))>>5) )

/* Get of DCDC_CMD_Reset_DTC signal (DCDC_CMD) */
#define Get_DCDC_CMD_Reset_DTC() ( (((uint16_t)(DCDC_CMD[6]&0x0010u))>>4) )

/* Get of DCDC_CMD_CRC signal (DCDC_CMD) */
#define Get_DCDC_CMD_CRC() ( (uint16_t)(DCDC_CMD[0]) )

/* Get of DCDC_CMD_BZ signal (DCDC_CMD) */
#define Get_DCDC_CMD_BZ() ( (((uint16_t)(DCDC_CMD[1]&0x000Fu))>>0) )

/* Get of DCDC_CMD_Enabled signal (DCDC_CMD) */
#define Get_DCDC_CMD_Enabled() ( (((uint16_t)(DCDC_CMD[1]&0x0030u))>>4) )


/*******************************************************************************/
/* SET - TX-Signal access for RX/TX messages                                   */
/*******************************************************************************/

/* Set of LvDc_Pma_DebugSig4 signal (LvDc_Pma_ErrCode) */
#define Set_LvDc_Pma_DebugSig4(data) \
{LvDc_Pma_ErrCode[7u] = ( (uint16_t)(data & 0x00FFu) );}

/* Set of LvDc_Pma_DebugSig3 signal (LvDc_Pma_ErrCode) */
#define Set_LvDc_Pma_DebugSig3(data) \
{LvDc_Pma_ErrCode[6u] = ( (uint16_t)(data & 0x00FFu) );}

/* Set of LvDc_Pma_DebugSig2 signal (LvDc_Pma_ErrCode) */
#define Set_LvDc_Pma_DebugSig2(data) \
{LvDc_Pma_ErrCode[5u] = ( (uint16_t)(data & 0x00FFu) );}

/* Set of LvDc_Pma_DebugSig1 signal (LvDc_Pma_ErrCode) */
#define Set_LvDc_Pma_DebugSig1(data) \
{LvDc_Pma_ErrCode[4u] = ( (uint16_t)(data & 0x00FFu) );}

/* Set of LvDc_Pma_IOHW_byte3 signal (LvDc_Pma_ErrCode) */
#define Set_LvDc_Pma_IOHW_byte3(data) \
{LvDc_Pma_ErrCode[0u] = ( (uint16_t)(data & 0x00FFu) );}

/* Set of LvDc_Pma_IOHW_byte2 signal (LvDc_Pma_ErrCode) */
#define Set_LvDc_Pma_IOHW_byte2(data) \
{LvDc_Pma_ErrCode[1u] = ( (uint16_t)(data & 0x00FFu) );}

/* Set of LvDc_Pma_IOHW_byte1 signal (LvDc_Pma_ErrCode) */
#define Set_LvDc_Pma_IOHW_byte1(data) \
{LvDc_Pma_ErrCode[2u] = ( (uint16_t)(data & 0x00FFu) );}

/* Set of LvDc_Pma_IOHW_byte0 signal (LvDc_Pma_ErrCode) */
#define Set_LvDc_Pma_IOHW_byte0(data) \
{LvDc_Pma_ErrCode[3u] = ( (uint16_t)(data & 0x00FFu) );}

/* Set of DCDC_HTB_Measure_Reserve signal (DCDC_HTB_Measure) */
#define Set_DCDC_HTB_Measure_Reserve(data) \
{DCDC_HTB_Measure[1u] = ( (uint16_t)((data << 6) & 0x00C0u) | (DCDC_HTB_Measure[1u] & 0xFF3Fu));}

/* Set of DCDC_HTB_Modul_OTP signal (DCDC_HTB_Measure) */
#define Set_DCDC_HTB_Modul_OTP(data) \
{DCDC_HTB_Measure[1u] = ( (uint16_t)((data << 4) & 0x0030u) | (DCDC_HTB_Measure[1u] & 0xFFCFu));}

/* Set of TS_DCDC_HTB_Heater_Modul_Red signal (DCDC_HTB_Measure) */
#define Set_TS_DCDC_HTB_Heater_Modul_Red(data) \
{DCDC_HTB_Measure[3u] = ( (uint16_t)(data & 0x00FFu) );}

/* Set of TS_DCDC_HTB_Heater_Modul signal (DCDC_HTB_Measure) */
#define Set_TS_DCDC_HTB_Heater_Modul(data) \
{DCDC_HTB_Measure[2u] = ( (uint16_t)(data & 0x00FFu) );}

/* Set of DCDC_HTB_Measure_CRC signal (DCDC_HTB_Measure) */
#define Set_DCDC_HTB_Measure_CRC(data) \
{DCDC_HTB_Measure[0u] = ( (uint16_t)(data & 0x00FFu) );}

/* Set of DCDC_HTB_Measure_BZ signal (DCDC_HTB_Measure) */
#define Set_DCDC_HTB_Measure_BZ(data) \
{DCDC_HTB_Measure[1u] = ( (uint16_t)((data << 0) & 0x000Fu) | (DCDC_HTB_Measure[1u] & 0xFFF0u));}

/* Set of LVDC_WakeUpSleepReserved signal (LVDC_WakeUpSleepManagement) */
#define Set_LVDC_WakeUpSleepReserved(data) \
{LVDC_WakeUpSleepManagement[0u] = ( (uint16_t)((data << 2) & 0x00FCu) | (LVDC_WakeUpSleepManagement[0u] & 0xFF03u));}

/* Set of LVDC_RefuseToSleep signal (LVDC_WakeUpSleepManagement) */
#define Set_LVDC_RefuseToSleep(data) \
{LVDC_WakeUpSleepManagement[0u] = ( (uint16_t)((data << 0) & 0x0003u) | (LVDC_WakeUpSleepManagement[0u] & 0xFFFCu));}

/* Set of SG_HV_DCDC_03_LFD1_Status signal (LVDC_SafetyMeasure) */
#define Set_SG_HV_DCDC_03_LFD1_Status(data) \
{LVDC_SafetyMeasure[7u] = ( (uint16_t)((data << 4) & 0x0030u) | (LVDC_SafetyMeasure[7u] & 0xFFCFu));}

/* Set of SG_HV_DCDC_03_SM2_Status signal (LVDC_SafetyMeasure) */
#define Set_SG_HV_DCDC_03_SM2_Status(data) \
{LVDC_SafetyMeasure[7u] = ( (uint16_t)((data << 2) & 0x000Cu) | (LVDC_SafetyMeasure[7u] & 0xFFF3u));}

/* Set of SG_HV_DCDC_03_SM1_Status signal (LVDC_SafetyMeasure) */
#define Set_SG_HV_DCDC_03_SM1_Status(data) \
{LVDC_SafetyMeasure[7u] = ( (uint16_t)((data << 0) & 0x0003u) | (LVDC_SafetyMeasure[7u] & 0xFFFCu));}

/* Set of SG_HV_DCDC_05_SM1_Status signal (LVDC_SafetyMeasure) */
#define Set_SG_HV_DCDC_05_SM1_Status(data) \
{LVDC_SafetyMeasure[6u] = ( (uint16_t)((data << 6) & 0x00C0u) | (LVDC_SafetyMeasure[6u] & 0xFF3Fu));}

/* Set of SG_HV_DCDC_05_LFD2_Status signal (LVDC_SafetyMeasure) */
#define Set_SG_HV_DCDC_05_LFD2_Status(data) \
{LVDC_SafetyMeasure[6u] = ( (uint16_t)((data << 4) & 0x0030u) | (LVDC_SafetyMeasure[6u] & 0xFFCFu));}

/* Set of SG_HV_DCDC_05_LFD1_Status signal (LVDC_SafetyMeasure) */
#define Set_SG_HV_DCDC_05_LFD1_Status(data) \
{LVDC_SafetyMeasure[6u] = ( (uint16_t)((data << 2) & 0x000Cu) | (LVDC_SafetyMeasure[6u] & 0xFFF3u));}

/* Set of SG_HV_DCDC_04_SM1_Status signal (LVDC_SafetyMeasure) */
#define Set_SG_HV_DCDC_04_SM1_Status(data) \
{LVDC_SafetyMeasure[6u] = ( (uint16_t)((data << 0) & 0x0003u) | (LVDC_SafetyMeasure[6u] & 0xFFFCu));}

/* Set of SG_HV_DCDC_02_SM4_Status signal (LVDC_SafetyMeasure) */
#define Set_SG_HV_DCDC_02_SM4_Status(data) \
{LVDC_SafetyMeasure[5u] = ( (uint16_t)((data << 6) & 0x00C0u) | (LVDC_SafetyMeasure[5u] & 0xFF3Fu));}

/* Set of SG_HV_DCDC_02_SM3_Status signal (LVDC_SafetyMeasure) */
#define Set_SG_HV_DCDC_02_SM3_Status(data) \
{LVDC_SafetyMeasure[5u] = ( (uint16_t)((data << 4) & 0x0030u) | (LVDC_SafetyMeasure[5u] & 0xFFCFu));}

/* Set of SG_HV_DCDC_02_SM2_Status signal (LVDC_SafetyMeasure) */
#define Set_SG_HV_DCDC_02_SM2_Status(data) \
{LVDC_SafetyMeasure[5u] = ( (uint16_t)((data << 2) & 0x000Cu) | (LVDC_SafetyMeasure[5u] & 0xFFF3u));}

/* Set of SG_HV_DCDC_02_SM1_Status signal (LVDC_SafetyMeasure) */
#define Set_SG_HV_DCDC_02_SM1_Status(data) \
{LVDC_SafetyMeasure[5u] = ( (uint16_t)((data << 0) & 0x0003u) | (LVDC_SafetyMeasure[5u] & 0xFFFCu));}

/* Set of SG_HV_DCDC_02_LFD5_Status signal (LVDC_SafetyMeasure) */
#define Set_SG_HV_DCDC_02_LFD5_Status(data) \
{LVDC_SafetyMeasure[4u] = ( (uint16_t)((data << 6) & 0x00C0u) | (LVDC_SafetyMeasure[4u] & 0xFF3Fu));}

/* Set of SG_HV_DCDC_02_LFD4_Status signal (LVDC_SafetyMeasure) */
#define Set_SG_HV_DCDC_02_LFD4_Status(data) \
{LVDC_SafetyMeasure[4u] = ( (uint16_t)((data << 4) & 0x0030u) | (LVDC_SafetyMeasure[4u] & 0xFFCFu));}

/* Set of SG_HV_DCDC_02_LFD3_Status signal (LVDC_SafetyMeasure) */
#define Set_SG_HV_DCDC_02_LFD3_Status(data) \
{LVDC_SafetyMeasure[4u] = ( (uint16_t)((data << 2) & 0x000Cu) | (LVDC_SafetyMeasure[4u] & 0xFFF3u));}

/* Set of SG_HV_DCDC_02_LFD2_Status signal (LVDC_SafetyMeasure) */
#define Set_SG_HV_DCDC_02_LFD2_Status(data) \
{LVDC_SafetyMeasure[4u] = ( (uint16_t)((data << 0) & 0x0003u) | (LVDC_SafetyMeasure[4u] & 0xFFFCu));}

/* Set of SG_HV_DCDC_02_LFD1_Status signal (LVDC_SafetyMeasure) */
#define Set_SG_HV_DCDC_02_LFD1_Status(data) \
{LVDC_SafetyMeasure[3u] = ( (uint16_t)((data << 6) & 0x00C0u) | (LVDC_SafetyMeasure[3u] & 0xFF3Fu));}

/* Set of SG_HV_DCDC_01_SM4_Status signal (LVDC_SafetyMeasure) */
#define Set_SG_HV_DCDC_01_SM4_Status(data) \
{LVDC_SafetyMeasure[3u] = ( (uint16_t)((data << 4) & 0x0030u) | (LVDC_SafetyMeasure[3u] & 0xFFCFu));}

/* Set of SG_HV_DCDC_01_SM3_Status signal (LVDC_SafetyMeasure) */
#define Set_SG_HV_DCDC_01_SM3_Status(data) \
{LVDC_SafetyMeasure[3u] = ( (uint16_t)((data << 2) & 0x000Cu) | (LVDC_SafetyMeasure[3u] & 0xFFF3u));}

/* Set of SG_HV_DCDC_01_SM2_Status signal (LVDC_SafetyMeasure) */
#define Set_SG_HV_DCDC_01_SM2_Status(data) \
{LVDC_SafetyMeasure[3u] = ( (uint16_t)((data << 0) & 0x0003u) | (LVDC_SafetyMeasure[3u] & 0xFFFCu));}

/* Set of SG_HV_DCDC_01_SM1_Status signal (LVDC_SafetyMeasure) */
#define Set_SG_HV_DCDC_01_SM1_Status(data) \
{LVDC_SafetyMeasure[2u] = ( (uint16_t)((data << 6) & 0x00C0u) | (LVDC_SafetyMeasure[2u] & 0xFF3Fu));}

/* Set of SG_HV_DCDC_01_LFD5_Status signal (LVDC_SafetyMeasure) */
#define Set_SG_HV_DCDC_01_LFD5_Status(data) \
{LVDC_SafetyMeasure[2u] = ( (uint16_t)((data << 4) & 0x0030u) | (LVDC_SafetyMeasure[2u] & 0xFFCFu));}

/* Set of SG_HV_DCDC_01_LFD4_Status signal (LVDC_SafetyMeasure) */
#define Set_SG_HV_DCDC_01_LFD4_Status(data) \
{LVDC_SafetyMeasure[2u] = ( (uint16_t)((data << 2) & 0x000Cu) | (LVDC_SafetyMeasure[2u] & 0xFFF3u));}

/* Set of SG_HV_DCDC_01_LFD3_Status signal (LVDC_SafetyMeasure) */
#define Set_SG_HV_DCDC_01_LFD3_Status(data) \
{LVDC_SafetyMeasure[2u] = ( (uint16_t)((data << 0) & 0x0003u) | (LVDC_SafetyMeasure[2u] & 0xFFFCu));}

/* Set of SG_HV_DCDC_01_LFD2_Status signal (LVDC_SafetyMeasure) */
#define Set_SG_HV_DCDC_01_LFD2_Status(data) \
{LVDC_SafetyMeasure[1u] = ( (uint16_t)((data << 6) & 0x00C0u) | (LVDC_SafetyMeasure[1u] & 0xFF3Fu));}

/* Set of SG_HV_DCDC_01_LFD1_Status signal (LVDC_SafetyMeasure) */
#define Set_SG_HV_DCDC_01_LFD1_Status(data) \
{LVDC_SafetyMeasure[1u] = ( (uint16_t)((data << 4) & 0x0030u) | (LVDC_SafetyMeasure[1u] & 0xFFCFu));}

/* Set of LVDC_SafetyMeasure_Reserve signal (LVDC_SafetyMeasure) */
#define Set_LVDC_SafetyMeasure_Reserve(data) \
{LVDC_SafetyMeasure[7u] = ( (uint16_t)((data << 6) & 0x00C0u) | (LVDC_SafetyMeasure[7u] & 0xFF3Fu));}

/* Set of LVDC_SafetyMeasure_CRC signal (LVDC_SafetyMeasure) */
#define Set_LVDC_SafetyMeasure_CRC(data) \
{LVDC_SafetyMeasure[0u] = ( (uint16_t)(data & 0x00FFu) );}

/* Set of LVDC_SafetyMeasure_BZ signal (LVDC_SafetyMeasure) */
#define Set_LVDC_SafetyMeasure_BZ(data) \
{LVDC_SafetyMeasure[1u] = ( (uint16_t)((data << 0) & 0x000Fu) | (LVDC_SafetyMeasure[1u] & 0xFFF0u));}

/* Set of VS_DCDC_HV_Volt signal (DCDC_Measure4) */
#define Set_VS_DCDC_HV_Volt(data) \
{DCDC_Measure4[3u] = ( (uint16_t)(data & 0x00FFu) ); \
DCDC_Measure4[4u] = ( (uint16_t)((data >> 8) & 0x003Fu) | (DCDC_Measure4[4u] & 0xFFC0u));}

/* Set of TS_DCDC_Temp_WaterOutDiag signal (DCDC_Measure4) */
#define Set_TS_DCDC_Temp_WaterOutDiag(data) \
{DCDC_Measure4[1u] = ( (uint16_t)((data << 4) & 0x00F0u) | (DCDC_Measure4[1u] & 0xFF0Fu)); \
DCDC_Measure4[2u] = ( (uint16_t)((data >> 4) & 0x007Fu) | (DCDC_Measure4[2u] & 0xFF80u));}

/* Set of TS_DCDC_Temp_WaterOut signal (DCDC_Measure4) */
#define Set_TS_DCDC_Temp_WaterOut(data) \
{DCDC_Measure4[6u] = ( (uint16_t)(data & 0x00FFu) );}

/* Set of TS_DCDC_Temp_WaterIn signal (DCDC_Measure4) */
#define Set_TS_DCDC_Temp_WaterIn(data) \
{DCDC_Measure4[5u] = ( (uint16_t)(data & 0x00FFu) );}

/* Set of DCDC_Measure4_BZ signal (DCDC_Measure4) */
#define Set_DCDC_Measure4_BZ(data) \
{DCDC_Measure4[1u] = ( (uint16_t)((data << 0) & 0x000Fu) | (DCDC_Measure4[1u] & 0xFFF0u));}

/* Set of DCDC_Measure4_CRC signal (DCDC_Measure4) */
#define Set_DCDC_Measure4_CRC(data) \
{DCDC_Measure4[0u] = ( (uint16_t)(data & 0x00FFu) );}

/* Set of DCDC_ErrCode_3 signal (DCDC_Status_ErrCode) */
#define Set_DCDC_ErrCode_3(data) \
{DCDC_Status_ErrCode[6u] = ( (uint16_t)(data & 0x00FFu) ); \
DCDC_Status_ErrCode[7u] = ( (uint16_t)((data >> 8) & 0x00FFu) );}

/* Set of DCDC_ErrCode_2 signal (DCDC_Status_ErrCode) */
#define Set_DCDC_ErrCode_2(data) \
{DCDC_Status_ErrCode[4u] = ( (uint16_t)(data & 0x00FFu) ); \
DCDC_Status_ErrCode[5u] = ( (uint16_t)((data >> 8) & 0x00FFu) );}

/* Set of DCDC_ErrCode_1 signal (DCDC_Status_ErrCode) */
#define Set_DCDC_ErrCode_1(data) \
{DCDC_Status_ErrCode[2u] = ( (uint16_t)(data & 0x00FFu) ); \
DCDC_Status_ErrCode[3u] = ( (uint16_t)((data >> 8) & 0x00FFu) );}

/* Set of DCDC_ErrCode_0 signal (DCDC_Status_ErrCode) */
#define Set_DCDC_ErrCode_0(data) \
{DCDC_Status_ErrCode[0u] = ( (uint16_t)(data & 0x00FFu) ); \
DCDC_Status_ErrCode[1u] = ( (uint16_t)((data >> 8) & 0x00FFu) );}

/* Set of Parameter_DCDC_Com_Data signal (Parameter_DCDC_Com) */
#define Set_Parameter_DCDC_Com_Data(data) \
{Parameter_DCDC_Com[0u] = ( (uint16_t)(data & 0x00FFu) ); \
Parameter_DCDC_Com[1u] = ( (uint16_t)((data >> 8) & 0x00FFu) ); \
Parameter_DCDC_Com[2u] = ( (uint16_t)((data >> 16) & 0x00FFu) ); \
Parameter_DCDC_Com[3u] = ( (uint16_t)((data >> 24) & 0x00FFu) ); \
Parameter_DCDC_Com[4u] = ( (uint16_t)((data >> 32) & 0x00FFu) ); \
Parameter_DCDC_Com[5u] = ( (uint16_t)((data >> 40) & 0x00FFu) ); \
Parameter_DCDC_Com[6u] = ( (uint16_t)((data >> 48) & 0x00FFu) ); \
Parameter_DCDC_Com[7u] = ( (uint16_t)((data >> 56) & 0x00FFu) );}

/* Set of DCDC_LLC_Diag_Resp_Byte_7 signal (DCDC_HSFB_Diag_Resp) */
#define Set_DCDC_LLC_Diag_Resp_Byte_7(data) \
{DCDC_HSFB_Diag_Resp[7u] = ( (uint16_t)(data & 0x00FFu) );}

/* Set of DCDC_LLC_Diag_Resp_Byte_6 signal (DCDC_HSFB_Diag_Resp) */
#define Set_DCDC_LLC_Diag_Resp_Byte_6(data) \
{DCDC_HSFB_Diag_Resp[6u] = ( (uint16_t)(data & 0x00FFu) );}

/* Set of DCDC_LLC_Diag_Resp_Byte_5 signal (DCDC_HSFB_Diag_Resp) */
#define Set_DCDC_LLC_Diag_Resp_Byte_5(data) \
{DCDC_HSFB_Diag_Resp[5u] = ( (uint16_t)(data & 0x00FFu) );}

/* Set of DCDC_LLC_Diag_Resp_Byte_4 signal (DCDC_HSFB_Diag_Resp) */
#define Set_DCDC_LLC_Diag_Resp_Byte_4(data) \
{DCDC_HSFB_Diag_Resp[4u] = ( (uint16_t)(data & 0x00FFu) );}

/* Set of DCDC_LLC_Diag_Resp_Byte_3 signal (DCDC_HSFB_Diag_Resp) */
#define Set_DCDC_LLC_Diag_Resp_Byte_3(data) \
{DCDC_HSFB_Diag_Resp[3u] = ( (uint16_t)(data & 0x00FFu) );}

/* Set of DCDC_LLC_Diag_Resp_Byte_2 signal (DCDC_HSFB_Diag_Resp) */
#define Set_DCDC_LLC_Diag_Resp_Byte_2(data) \
{DCDC_HSFB_Diag_Resp[2u] = ( (uint16_t)(data & 0x00FFu) );}

/* Set of DCDC_LLC_Diag_Resp_Byte_1 signal (DCDC_HSFB_Diag_Resp) */
#define Set_DCDC_LLC_Diag_Resp_Byte_1(data) \
{DCDC_HSFB_Diag_Resp[1u] = ( (uint16_t)(data & 0x00FFu) );}

/* Set of DCDC_LLC_Diag_Resp_Byte_0 signal (DCDC_HSFB_Diag_Resp) */
#define Set_DCDC_LLC_Diag_Resp_Byte_0(data) \
{DCDC_HSFB_Diag_Resp[0u] = ( (uint16_t)(data & 0x00FFu) );}

/* Set of DCDC_Out_Curr_Direction signal (DCDC_Measure2) */
#define Set_DCDC_Out_Curr_Direction(data) \
{DCDC_Measure2[6u] = ( (uint16_t)((data << 2) & 0x000Cu) | (DCDC_Measure2[6u] & 0xFFF3u));}

/* Set of CS_DCDC_ProFet signal (DCDC_Measure2) */
#define Set_CS_DCDC_ProFet(data) \
{DCDC_Measure2[6u] = ( (uint16_t)((data << 4) & 0x00F0u) | (DCDC_Measure2[6u] & 0xFF0Fu)); \
DCDC_Measure2[7u] = ( (uint16_t)((data >> 4) & 0x00FFu) );}

/* Set of VS_DCDC_KL30C signal (DCDC_Measure2) */
#define Set_VS_DCDC_KL30C(data) \
{DCDC_Measure2[3u] = ( (uint16_t)(data & 0x00FFu) ); \
DCDC_Measure2[4u] = ( (uint16_t)((data >> 8) & 0x001Fu) | (DCDC_Measure2[4u] & 0xFFE0u));}

/* Set of VS_DCDC_KL30 signal (DCDC_Measure2) */
#define Set_VS_DCDC_KL30(data) \
{DCDC_Measure2[4u] = ( (uint16_t)((data << 5) & 0x00E0u) | (DCDC_Measure2[4u] & 0xFF1Fu)); \
DCDC_Measure2[5u] = ( (uint16_t)((data >> 3) & 0x00FFu) ); \
DCDC_Measure2[6u] = ( (uint16_t)((data >> 11) & 0x0003u) | (DCDC_Measure2[6u] & 0xFFFCu));}

/* Set of DCDC_Measure2_BZ signal (DCDC_Measure2) */
#define Set_DCDC_Measure2_BZ(data) \
{DCDC_Measure2[1u] = ( (uint16_t)((data << 0) & 0x000Fu) | (DCDC_Measure2[1u] & 0xFFF0u));}

/* Set of DCDC_Measure2_CRC signal (DCDC_Measure2) */
#define Set_DCDC_Measure2_CRC(data) \
{DCDC_Measure2[0u] = ( (uint16_t)(data & 0x00FFu) );}

/* Set of CS_DCDC_Out_PriCT_Curr signal (DCDC_Measure2) */
#define Set_CS_DCDC_Out_PriCT_Curr(data) \
{DCDC_Measure2[1u] = ( (uint16_t)((data << 4) & 0x00F0u) | (DCDC_Measure2[1u] & 0xFF0Fu)); \
DCDC_Measure2[2u] = ( (uint16_t)((data >> 4) & 0x00FFu) );}

/* Set of LvDc_Pma_LastResetRsn signal (LvDc_Pma_ErrSrc) */
#define Set_LvDc_Pma_LastResetRsn(data) \
{LvDc_Pma_ErrSrc[7u] = ( (uint16_t)(data & 0x00FFu) );}

/* Set of LvDc_Pma_maxCpuLoad signal (LvDc_Pma_ErrSrc) */
#define Set_LvDc_Pma_maxCpuLoad(data) \
{LvDc_Pma_ErrSrc[6u] = ( (uint16_t)(data & 0x00FFu) );}

/* Set of LvDc_Pma_QSPI_ErrCnt signal (LvDc_Pma_ErrSrc) */
#define Set_LvDc_Pma_QSPI_ErrCnt(data) \
{LvDc_Pma_ErrSrc[5u] = ( (uint16_t)(data & 0x00FFu) );}

/* Set of LvDc_Pma_E2E_ErrCnt signal (LvDc_Pma_ErrSrc) */
#define Set_LvDc_Pma_E2E_ErrCnt(data) \
{LvDc_Pma_ErrSrc[4u] = ( (uint16_t)(data & 0x00FFu) );}

/* Set of LvDc_Pma_PFM_ErrCnt signal (LvDc_Pma_ErrSrc) */
#define Set_LvDc_Pma_PFM_ErrCnt(data) \
{LvDc_Pma_ErrSrc[3u] = ( (uint16_t)(data & 0x00FFu) );}

/* Set of LvDc_Pma_IOHW_ErrCnt signal (LvDc_Pma_ErrSrc) */
#define Set_LvDc_Pma_IOHW_ErrCnt(data) \
{LvDc_Pma_ErrSrc[2u] = ( (uint16_t)(data & 0x00FFu) );}

/* Set of LvDc_Pma_ErrSrc signal (LvDc_Pma_ErrSrc) */
#define Set_LvDc_Pma_ErrSrc(data) \
{LvDc_Pma_ErrSrc[1u] = ( (uint16_t)(data & 0x00FFu) );}

/* Set of LvDc_Pma_TotalErrCnt signal (LvDc_Pma_ErrSrc) */
#define Set_LvDc_Pma_TotalErrCnt(data) \
{LvDc_Pma_ErrSrc[0u] = ( (uint16_t)(data & 0x00FFu) );}

/* Set of DcDc_ScopeCh4Data signal (DcDc_Scope1) */
#define Set_DcDc_ScopeCh4Data(data) \
{DcDc_Scope1[4u] = ( (uint16_t)(data & 0x00FFu) ); \
DcDc_Scope1[5u] = ( (uint16_t)((data >> 8) & 0x00FFu) );}

/* Set of DcDc_ScopeCh3Data signal (DcDc_Scope1) */
#define Set_DcDc_ScopeCh3Data(data) \
{DcDc_Scope1[0u] = ( (uint16_t)(data & 0x00FFu) ); \
DcDc_Scope1[1u] = ( (uint16_t)((data >> 8) & 0x00FFu) );}

/* Set of DcDc_ScopeCh2Data signal (DcDc_Scope1) */
#define Set_DcDc_ScopeCh2Data(data) \
{DcDc_Scope1[2u] = ( (uint16_t)(data & 0x00FFu) ); \
DcDc_Scope1[3u] = ( (uint16_t)((data >> 8) & 0x00FFu) );}

/* Set of DcDc_Scope_Status signal (DcDc_Scope0) */
#define Set_DcDc_Scope_Status(data) \
{DcDc_Scope0[3u] = ( (uint16_t)((data << 4) & 0x00F0u) | (DcDc_Scope0[3u] & 0xFF0Fu));}

/* Set of DcDc_ScopeCh1Data signal (DcDc_Scope0) */
#define Set_DcDc_ScopeCh1Data(data) \
{DcDc_Scope0[0u] = ( (uint16_t)(data & 0x00FFu) ); \
DcDc_Scope0[1u] = ( (uint16_t)((data >> 8) & 0x00FFu) );}

/* Set of DcDc_Scope_Idx signal (DcDc_Scope0) */
#define Set_DcDc_Scope_Idx(data) \
{DcDc_Scope0[2u] = ( (uint16_t)(data & 0x00FFu) ); \
DcDc_Scope0[3u] = ( (uint16_t)((data >> 8) & 0x000Fu) | (DcDc_Scope0[3u] & 0xFFF0u));}

/* Set of DCDC_Topology_Mode signal (DCDC_Status) */
#define Set_DCDC_Topology_Mode(data) \
{DCDC_Status[1u] = ( (uint16_t)((data << 2) & 0x000Cu) | (DCDC_Status[1u] & 0xFFF3u));}

/* Set of DCDC_OTP_Water_Out signal (DCDC_Status) */
#define Set_DCDC_OTP_Water_Out(data) \
{DCDC_Status[4u] = ( (uint16_t)((data << 6) & 0x00C0u) | (DCDC_Status[4u] & 0xFF3Fu));}

/* Set of DCDC_FastTurnOff signal (DCDC_Status) */
#define Set_DCDC_FastTurnOff(data) \
{DCDC_Status[4u] = ( (uint16_t)((data << 4) & 0x0030u) | (DCDC_Status[4u] & 0xFFCFu));}

/* Set of DCDC_Alive_Counter signal (DCDC_Status) */
#define Set_DCDC_Alive_Counter(data) \
{DCDC_Status[3u] = ( (uint16_t)((data << 4) & 0x00F0u) | (DCDC_Status[3u] & 0xFF0Fu)); \
DCDC_Status[4u] = ( (uint16_t)((data >> 4) & 0x000Fu) | (DCDC_Status[4u] & 0xFFF0u));}

/* Set of DCDC_Direction signal (DCDC_Status) */
#define Set_DCDC_Direction(data) \
{DCDC_Status[3u] = ( (uint16_t)((data << 2) & 0x000Cu) | (DCDC_Status[3u] & 0xFFF3u));}

/* Set of DCDC_DriverPri_Enabled signal (DCDC_Status) */
#define Set_DCDC_DriverPri_Enabled(data) \
{DCDC_Status[3u] = ( (uint16_t)((data << 0) & 0x0003u) | (DCDC_Status[3u] & 0xFFFCu));}

/* Set of DCDC_DriverSR_Enabled signal (DCDC_Status) */
#define Set_DCDC_DriverSR_Enabled(data) \
{DCDC_Status[2u] = ( (uint16_t)((data << 6) & 0x00C0u) | (DCDC_Status[2u] & 0xFF3Fu));}

/* Set of DCDC_CT_OCP signal (DCDC_Status) */
#define Set_DCDC_CT_OCP(data) \
{DCDC_Status[2u] = ( (uint16_t)((data << 4) & 0x0030u) | (DCDC_Status[2u] & 0xFFCFu));}

/* Set of DCDC_HV_OVP signal (DCDC_Status) */
#define Set_DCDC_HV_OVP(data) \
{DCDC_Status[2u] = ( (uint16_t)((data << 2) & 0x000Cu) | (DCDC_Status[2u] & 0xFFF3u));}

/* Set of DCDC_LV_OVP1 signal (DCDC_Status) */
#define Set_DCDC_LV_OVP1(data) \
{DCDC_Status[2u] = ( (uint16_t)((data << 0) & 0x0003u) | (DCDC_Status[2u] & 0xFFFCu));}

/* Set of DCDC_Driver_Enabled signal (DCDC_Status) */
#define Set_DCDC_Driver_Enabled(data) \
{DCDC_Status[1u] = ( (uint16_t)((data << 6) & 0x00C0u) | (DCDC_Status[1u] & 0xFF3Fu));}

/* Set of DCDC_Driver_COM_Enabled signal (DCDC_Status) */
#define Set_DCDC_Driver_COM_Enabled(data) \
{DCDC_Status[1u] = ( (uint16_t)((data << 4) & 0x0030u) | (DCDC_Status[1u] & 0xFFCFu));}

/* Set of DCDC_Operating_State signal (DCDC_Status) */
#define Set_DCDC_Operating_State(data) \
{DCDC_Status[5u] = ( (uint16_t)((data << 0) & 0x0007u) | (DCDC_Status[5u] & 0xFFF8u));}

/* Set of DCDC_LV_OVP signal (DCDC_Status) */
#define Set_DCDC_LV_OVP(data) \
{DCDC_Status[1u] = ( (uint16_t)((data << 0) & 0x0003u) | (DCDC_Status[1u] & 0xFFFCu));}

/* Set of DCDC_Cal_Received signal (DCDC_Status) */
#define Set_DCDC_Cal_Received(data) \
{DCDC_Status[0u] = ( (uint16_t)((data << 6) & 0x00C0u) | (DCDC_Status[0u] & 0xFF3Fu));}

/* Set of DCDC_Param_Received signal (DCDC_Status) */
#define Set_DCDC_Param_Received(data) \
{DCDC_Status[0u] = ( (uint16_t)((data << 4) & 0x0030u) | (DCDC_Status[0u] & 0xFFCFu));}

/* Set of DCDC_Iout_OCP signal (DCDC_Status) */
#define Set_DCDC_Iout_OCP(data) \
{DCDC_Status[0u] = ( (uint16_t)((data << 2) & 0x000Cu) | (DCDC_Status[0u] & 0xFFF3u));}

/* Set of DCDC_OCP_Bst signal (DCDC_Status) */
#define Set_DCDC_OCP_Bst(data) \
{DCDC_Status[0u] = ( (uint16_t)((data << 0) & 0x0003u) | (DCDC_Status[0u] & 0xFFFCu));}

/* Set of DCDC_Runtime_CPU signal (DCDC_Measure3) */
#define Set_DCDC_Runtime_CPU(data) \
{DCDC_Measure3[4u] = ( (uint16_t)((data << 1) & 0x00FEu) | (DCDC_Measure3[4u] & 0xFF01u));}

/* Set of TS_DCDC_Temp_FIPG signal (DCDC_Measure3) */
#define Set_TS_DCDC_Temp_FIPG(data) \
{DCDC_Measure3[3u] = ( (uint16_t)(data & 0x00FFu) ); \
DCDC_Measure3[4u] = ( (uint16_t)((data >> 8) & 0x0001u) | (DCDC_Measure3[4u] & 0xFFFEu));}

/* Set of VS_DCDC_VoutDiag signal (DCDC_Measure3) */
#define Set_VS_DCDC_VoutDiag(data) \
{DCDC_Measure3[5u] = ( (uint16_t)(data & 0x00FFu) ); \
DCDC_Measure3[6u] = ( (uint16_t)((data >> 8) & 0x001Fu) | (DCDC_Measure3[6u] & 0xFFE0u));}

/* Set of TS_DCDC_Temp_Rect2 signal (DCDC_Measure3) */
#define Set_TS_DCDC_Temp_Rect2(data) \
{DCDC_Measure3[2u] = ( (uint16_t)(data & 0x00FFu) );}

/* Set of TS_DCDC_Temp_Rect1 signal (DCDC_Measure3) */
#define Set_TS_DCDC_Temp_Rect1(data) \
{DCDC_Measure3[1u] = ( (uint16_t)(data & 0x00FFu) );}

/* Set of TS_DCDC_Temp_PrimSw signal (DCDC_Measure3) */
#define Set_TS_DCDC_Temp_PrimSw(data) \
{DCDC_Measure3[0u] = ( (uint16_t)(data & 0x00FFu) );}

/* Set of DCDC_Measure_Reserved2 signal (DCDC_Measure) */
#define Set_DCDC_Measure_Reserved2(data) \
{DCDC_Measure[6u] = ( (uint16_t)((data << 5) & 0x00E0u) | (DCDC_Measure[6u] & 0xFF1Fu));}

/* Set of DCDC_Measure_Reserved signal (DCDC_Measure) */
#define Set_DCDC_Measure_Reserved(data) \
{DCDC_Measure[4u] = ( (uint16_t)((data << 6) & 0x00C0u) | (DCDC_Measure[4u] & 0xFF3Fu));}

/* Set of VS_DCDC_AuxVolt signal (DCDC_Measure) */
#define Set_VS_DCDC_AuxVolt(data) \
{DCDC_Measure[1u] = ( (uint16_t)((data << 4) & 0x00F0u) | (DCDC_Measure[1u] & 0xFF0Fu)); \
DCDC_Measure[2u] = ( (uint16_t)((data >> 4) & 0x00FFu) );}

/* Set of CS_DCDC_Out_Curr signal (DCDC_Measure) */
#define Set_CS_DCDC_Out_Curr(data) \
{DCDC_Measure[3u] = ( (uint16_t)(data & 0x00FFu) ); \
DCDC_Measure[4u] = ( (uint16_t)((data >> 8) & 0x003Fu) | (DCDC_Measure[4u] & 0xFFC0u));}

/* Set of DCDC_Measure_CRC signal (DCDC_Measure) */
#define Set_DCDC_Measure_CRC(data) \
{DCDC_Measure[0u] = ( (uint16_t)(data & 0x00FFu) );}

/* Set of DCDC_Measure_BZ signal (DCDC_Measure) */
#define Set_DCDC_Measure_BZ(data) \
{DCDC_Measure[1u] = ( (uint16_t)((data << 0) & 0x000Fu) | (DCDC_Measure[1u] & 0xFFF0u));}

/* Set of VS_DCDC_Out_Volt signal (DCDC_Measure) */
#define Set_VS_DCDC_Out_Volt(data) \
{DCDC_Measure[5u] = ( (uint16_t)(data & 0x00FFu) ); \
DCDC_Measure[6u] = ( (uint16_t)((data >> 8) & 0x001Fu) | (DCDC_Measure[6u] & 0xFFE0u));}

/*******************************************************************************/
/* Definition of message buffer types                                          */
/*******************************************************************************/

/* TX */
/* Message buffer type for LvDc_Pma_ErrCode frame */
typedef uint16_t LvDc_Pma_ErrCode_t;
/* Message buffer type for DCDC_HTB_Measure frame */
typedef uint16_t DCDC_HTB_Measure_t;
/* Message buffer type for LVDC_WakeUpSleepManagement frame */
typedef uint16_t LVDC_WakeUpSleepManagement_t;
/* Message buffer type for LVDC_SafetyMeasure frame */
typedef uint16_t LVDC_SafetyMeasure_t;
/* Message buffer type for DCDC_Measure4 frame */
typedef uint16_t DCDC_Measure4_t;
/* Message buffer type for DCDC_Status_ErrCode frame */
typedef uint16_t DCDC_Status_ErrCode_t;
/* Message buffer type for Parameter_DCDC_Com frame */
typedef uint16_t Parameter_DCDC_Com_t;
/* Message buffer type for DCDC_HSFB_Diag_Resp frame */
typedef uint16_t DCDC_HSFB_Diag_Resp_t;
/* Message buffer type for DCDC_Measure2 frame */
typedef uint16_t DCDC_Measure2_t;
/* Message buffer type for LvDc_Pma_ErrSrc frame */
typedef uint16_t LvDc_Pma_ErrSrc_t;
/* Message buffer type for DcDc_Scope1 frame */
typedef uint16_t DcDc_Scope1_t;
/* Message buffer type for DcDc_Scope0 frame */
typedef uint16_t DcDc_Scope0_t;
/* Message buffer type for DCDC_Status frame */
typedef uint16_t DCDC_Status_t;
/* Message buffer type for DCDC_Measure3 frame */
typedef uint16_t DCDC_Measure3_t;
/* Message buffer type for DCDC_Measure frame */
typedef uint16_t DCDC_Measure_t;
/* RX */
/* Message buffer type for COM_WakeUpSleepManagement frame */
typedef uint16_t COM_WakeUpSleepManagement_t;
/* Message buffer type for HVDC_SafetyMeasure frame */
typedef uint16_t HVDC_SafetyMeasure_t;
/* Message buffer type for HTB_CMD frame */
typedef uint16_t HTB_CMD_t;
/* Message buffer type for Parameter_Com_DCDC frame */
typedef uint16_t Parameter_Com_DCDC_t;
/* Message buffer type for DCDC_HSFB_Diag_Req frame */
typedef uint16_t DCDC_HSFB_Diag_Req_t;
/* Message buffer type for DCDC_DEV_CMD frame */
typedef uint16_t DCDC_DEV_CMD_t;
/* Message buffer type for DCDC_CMD frame */
typedef uint16_t DCDC_CMD_t;

/*******************************************************************************/
/* Local data types (private typedefs / structs / enums)                       */
/*******************************************************************************/

typedef enum {Cyclic, not_used, IfActive, NoMsgSendType} Can_GenMsgSendType_t;
typedef enum {Application, NM, NMH, TP2_0, ISO_TP, BAP, EID} Can_MsgType_t;

typedef struct {
	uint32_t Id;
	uint16_t Dlc;
	Can_GenMsgSendType_t GenMsgSendType;
	Can_MsgType_t MsgType;
	uint16_t StartDelay;
	uint16_t CycleTime;
	uint16_t *const Data;
	uint16_t *const DataInternal;
	uint16_t *const ConfFlag;
} CanTxMsg_t;

typedef struct {
	uint32_t Id;
	uint16_t Dlc;
	Can_GenMsgSendType_t GenMsgSendType;
	Can_MsgType_t MsgType;
	uint16_t Timeout;
	uint16_t *const TimeoutCounter;
	uint16_t *const Data;
	uint16_t *const DataInternal;
	uint16_t *const IndFlag;
} CanRxMsg_t;

/* Message receive timeout and indication flags */
typedef struct {
	uint16_t Timeout;
	uint16_t IndFlg;
} CanRxFlags_t;

/* Message transmit confirmation flags */
typedef struct {
	uint16_t ConfirmFlg;
} CanTxFlags_t;

/*******************************************************************************/
/* Definition of signal indication flags                                       */
/*******************************************************************************/

typedef union {
	struct {
		uint16_t Com_WakeUpSleepReserved_IndFlg:1;
		uint16_t Com_WakeUpSleepCmd_IndFlg:1;
		uint16_t reserved1:14;
		uint16_t reserved2:16;
		uint16_t reserved3:16;
		uint16_t reserved4:16;
		uint16_t reserved5:16;
		uint16_t reserved6:16;
	}Bit;
	struct {
		uint32_t High;
		uint32_t Low;
	}Word;
} Can_COM_WAKEUPSLEEPMANAGEMENT_RxIndFlags_t;

typedef union {
	struct {
		uint16_t SG_HV_Batt_01_LFD2_Status_IndFlg:1;
		uint16_t SG_HV_Batt_02_LFD1_Status_IndFlg:1;
		uint16_t SG_HV_Batt_01_LFD7_Status_IndFlg:1;
		uint16_t SG_HV_Batt_01_LFD6_Status_IndFlg:1;
		uint16_t SG_HV_Batt_02_SM4_Status_IndFlg:1;
		uint16_t SG_HV_Batt_02_SM3_Status_IndFlg:1;
		uint16_t SG_HV_Batt_02_SM2_Status_IndFlg:1;
		uint16_t SG_HV_Batt_02_SM1_Status_IndFlg:1;
		uint16_t SG_HV_Batt_01_LFD5_Status_IndFlg:1;
		uint16_t HV_SafetyMeasure_Reserve_IndFlg:1;
		uint16_t SG_HV_Batt_01_LFD4_Status_IndFlg:1;
		uint16_t SG_HV_Batt_01_LFD3_Status_IndFlg:1;
		uint16_t SG_HV_Batt_01_LFD1_Status_IndFlg:1;
		uint16_t SG_HV_Batt_01_SM4_Status_IndFlg:1;
		uint16_t SG_HV_Batt_01_SM3_Status_IndFlg:1;
		uint16_t SG_HV_Batt_01_SM2_Status_IndFlg:1;
		uint16_t SG_HV_Batt_01_SM1_Status_IndFlg:1;
		uint16_t HV_SafetyMeasure_CRC_IndFlg:1;
		uint16_t HV_SafetyMeasure_BZ_IndFlg:1;
	}Bit;
	struct {
		uint32_t High;
		uint32_t Low;
	}Word;
} Can_HVDC_SAFETYMEASURE_RxIndFlags_t;

typedef union {
	struct {
		uint16_t HTB_CMD_SafetyTests_IndFlg:1;
		uint16_t HTB_PwrSetPoint_IndFlg:1;
		uint16_t HTB_CMD_Clear_Faults_IndFlg:1;
		uint16_t HTB_CMD_Enable_IndFlg:1;
		uint16_t Heater_CMD_CRC_IndFlg:1;
		uint16_t Heater_CMD_BZ_IndFlg:1;
		uint16_t reserved1:10;
		uint16_t reserved2:16;
	}Bit;
	struct {
		uint32_t High;
		uint32_t Low;
	}Word;
} Can_HTB_CMD_RxIndFlags_t;

typedef union {
	struct {
		uint16_t Parameter_Com_DCDC_Data_IndFlg:1;
		uint16_t reserved1:15;
		uint16_t reserved2:16;
		uint16_t reserved3:16;
		uint16_t reserved4:16;
		uint16_t reserved5:16;
		uint16_t reserved6:16;
		uint16_t reserved7:16;
	}Bit;
	struct {
		uint32_t High;
		uint32_t Low;
	}Word;
} Can_PARAMETER_COM_DCDC_RxIndFlags_t;

typedef union {
	struct {
		uint16_t DCDC_LLC_Diag_Req_Byte_7_IndFlg:1;
		uint16_t DCDC_LLC_Diag_Req_Byte_6_IndFlg:1;
		uint16_t DCDC_LLC_Diag_Req_Byte_5_IndFlg:1;
		uint16_t DCDC_LLC_Diag_Req_Byte_4_IndFlg:1;
		uint16_t DCDC_LLC_Diag_Req_Byte_3_IndFlg:1;
		uint16_t DCDC_LLC_Diag_Req_Byte_2_IndFlg:1;
		uint16_t DCDC_LLC_Diag_Req_Byte_1_IndFlg:1;
		uint16_t DCDC_LLC_Diag_Req_Byte_0_IndFlg:1;
	}Bit;
	struct {
		uint32_t High;
		uint32_t Low;
	}Word;
} Can_DCDC_HSFB_DIAG_REQ_RxIndFlags_t;

typedef union {
	struct {
		uint16_t DCDC_DEV_CMD_Sr2En_IndFlg:1;
		uint16_t DCDC_DEV_CMD_Sr1En_IndFlg:1;
		uint16_t DCDC_DEV_CMD_Debug_IndFlg:1;
		uint16_t DCDC_DEV_CMD_Debug1_IndFlg:1;
		uint16_t DCDC_DEV_CMD_HsfbSweep_IndFlg:1;
		uint16_t DCDC_DEV_CMD_SrCtrl_IndFlg:1;
		uint16_t DCDC_DEV_CMD_Debug2_IndFlg:1;
		uint16_t DCDC_DEV_CMD_HsfbFreq_IndFlg:1;
	}Bit;
	struct {
		uint32_t High;
		uint32_t Low;
	}Word;
} Can_DCDC_DEV_CMD_RxIndFlags_t;

typedef union {
	struct {
		uint16_t DCDC_CMD_Reserve_IndFlg:1;
		uint16_t DCDC_CMD_SafetyTests_IndFlg:1;
		uint16_t DCDC_CMD_Sync_IndFlg:1;
		uint16_t DCDC_CMD_Topology_Mode_IndFlg:1;
		uint16_t DCDC_CMD_VoltageSetpoint_HV_IndFlg:1;
		uint16_t DCDC_CMD_Direction_IndFlg:1;
		uint16_t DCDC_CMD_Discharge_Enable_IndFlg:1;
		uint16_t DCDC_CMD_CurrentSetpoint_IndFlg:1;
		uint16_t DCDC_CMD_VoltageSetpoint_IndFlg:1;
		uint16_t DCDC_CMD_Clear_Faults_IndFlg:1;
		uint16_t DCDC_CMD_Reset_DTC_IndFlg:1;
		uint16_t DCDC_CMD_CRC_IndFlg:1;
		uint16_t DCDC_CMD_BZ_IndFlg:1;
		uint16_t DCDC_CMD_Enabled_IndFlg:1;
	}Bit;
	struct {
		uint32_t High;
		uint32_t Low;
	}Word;
} Can_DCDC_CMD_RxIndFlags_t;

/* message index enumerations */

typedef enum {
	CAN_RX_COM_WAKEUPSLEEPMANAGEMENT_IDX = 0u,
	CAN_RX_HVDC_SAFETYMEASURE_IDX,
	CAN_RX_HTB_CMD_IDX,
	CAN_RX_PARAMETER_COM_DCDC_IDX,
	CAN_RX_DCDC_HSFB_DIAG_REQ_IDX,
	CAN_RX_DCDC_DEV_CMD_IDX,
	CAN_RX_DCDC_CMD_IDX,
	CAN_RX_MSG_SIZE
} CanRxMsgIdx_t;

typedef enum {
	CAN_TX_LVDC_PMA_ERRCODE_IDX = 0u,
	CAN_TX_DCDC_HTB_MEASURE_IDX,
	CAN_TX_LVDC_WAKEUPSLEEPMANAGEMENT_IDX,
	CAN_TX_LVDC_SAFETYMEASURE_IDX,
	CAN_TX_DCDC_MEASURE4_IDX,
	CAN_TX_DCDC_STATUS_ERRCODE_IDX,
	CAN_TX_PARAMETER_DCDC_COM_IDX,
	CAN_TX_DCDC_HSFB_DIAG_RESP_IDX,
	CAN_TX_DCDC_MEASURE2_IDX,
	CAN_TX_LVDC_PMA_ERRSRC_IDX,
	CAN_TX_DCDC_SCOPE1_IDX,
	CAN_TX_DCDC_SCOPE0_IDX,
	CAN_TX_DCDC_STATUS_IDX,
	CAN_TX_DCDC_MEASURE3_IDX,
	CAN_TX_DCDC_MEASURE_IDX,
	CAN_TX_MSG_SIZE
} CanTxMsgIdx_t;

/*******************************************************************************/
/* Global data                                                                 */
/*******************************************************************************/

extern const CanTxMsg_t CanTxMsg[CAN_TX_MSG_SIZE];
extern const CanRxMsg_t CanRxMsg[CAN_RX_MSG_SIZE];

#if defined(CAN_CFG_GLOBALS)
#define EXTERN
#else
#define EXTERN extern
#endif

/* transmit buffers */
#define MPU_QM_START_SEC_VAR_NOINIT
#include "MPU_MemMap.h"
EXTERN LvDc_Pma_ErrCode_t 		LvDc_Pma_ErrCode[DLC_LVDC_PMA_ERRCODE];
EXTERN DCDC_HTB_Measure_t 		DCDC_HTB_Measure[DLC_DCDC_HTB_MEASURE];
EXTERN LVDC_WakeUpSleepManagement_t 		LVDC_WakeUpSleepManagement[DLC_LVDC_WAKEUPSLEEPMANAGEMENT];
EXTERN LVDC_SafetyMeasure_t 		LVDC_SafetyMeasure[DLC_LVDC_SAFETYMEASURE];
EXTERN DCDC_Measure4_t 		DCDC_Measure4[DLC_DCDC_MEASURE4];
EXTERN DCDC_Status_ErrCode_t 		DCDC_Status_ErrCode[DLC_DCDC_STATUS_ERRCODE];
EXTERN Parameter_DCDC_Com_t 		Parameter_DCDC_Com[DLC_PARAMETER_DCDC_COM];
EXTERN DCDC_HSFB_Diag_Resp_t 		DCDC_HSFB_Diag_Resp[DLC_DCDC_HSFB_DIAG_RESP];
EXTERN DCDC_Measure2_t 		DCDC_Measure2[DLC_DCDC_MEASURE2];
EXTERN LvDc_Pma_ErrSrc_t 		LvDc_Pma_ErrSrc[DLC_LVDC_PMA_ERRSRC];
EXTERN DcDc_Scope1_t 		DcDc_Scope1[DLC_DCDC_SCOPE1];
EXTERN DcDc_Scope0_t 		DcDc_Scope0[DLC_DCDC_SCOPE0];
EXTERN DCDC_Status_t 		DCDC_Status[DLC_DCDC_STATUS];
EXTERN DCDC_Measure3_t 		DCDC_Measure3[DLC_DCDC_MEASURE3];
EXTERN DCDC_Measure_t 		DCDC_Measure[DLC_DCDC_MEASURE];

/* receive buffers */
EXTERN COM_WakeUpSleepManagement_t 		COM_WakeUpSleepManagement[DLC_COM_WAKEUPSLEEPMANAGEMENT];
EXTERN HVDC_SafetyMeasure_t 		HVDC_SafetyMeasure[DLC_HVDC_SAFETYMEASURE];
EXTERN HTB_CMD_t 		HTB_CMD[DLC_HTB_CMD];
EXTERN Parameter_Com_DCDC_t 		Parameter_Com_DCDC[DLC_PARAMETER_COM_DCDC];
EXTERN DCDC_HSFB_Diag_Req_t 		DCDC_HSFB_Diag_Req[DLC_DCDC_HSFB_DIAG_REQ];
EXTERN DCDC_DEV_CMD_t 		DCDC_DEV_CMD[DLC_DCDC_DEV_CMD];
EXTERN DCDC_CMD_t 		DCDC_CMD[DLC_DCDC_CMD];

EXTERN CanRxFlags_t 		CanRxFlags[CAN_RX_MSG_SIZE];
EXTERN CanTxFlags_t 		CanTxFlags[CAN_TX_MSG_SIZE];

EXTERN Can_COM_WAKEUPSLEEPMANAGEMENT_RxIndFlags_t Can_COM_WAKEUPSLEEPMANAGEMENT_RxIndFlags;
EXTERN Can_HVDC_SAFETYMEASURE_RxIndFlags_t Can_HVDC_SAFETYMEASURE_RxIndFlags;
EXTERN Can_HTB_CMD_RxIndFlags_t Can_HTB_CMD_RxIndFlags;
EXTERN Can_PARAMETER_COM_DCDC_RxIndFlags_t Can_PARAMETER_COM_DCDC_RxIndFlags;
EXTERN Can_DCDC_HSFB_DIAG_REQ_RxIndFlags_t Can_DCDC_HSFB_DIAG_REQ_RxIndFlags;
EXTERN Can_DCDC_DEV_CMD_RxIndFlags_t Can_DCDC_DEV_CMD_RxIndFlags;
EXTERN Can_DCDC_CMD_RxIndFlags_t Can_DCDC_CMD_RxIndFlags;
#define MPU_QM_STOP_SEC_VAR_NOINIT
#include "MPU_MemMap.h"
/*******************************************************************************/
/* Global functions                                                            */
/*******************************************************************************/
EXTERN void Can_MessageInit(void);

#undef EXTERN

#endif /*__CAN_CFG_H */

/*******************************************************************************/
/* END OF FILE                                                                 */
/*******************************************************************************/

