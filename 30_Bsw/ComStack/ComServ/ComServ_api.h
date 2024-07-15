#ifndef COMSERV_API_H
#define COMSERV_API_H

#include "Platform_Types.h"
#include "mpu_api.h"
#include "Port_api.h"
#include "HsfbMeas_GetCalibData.h"

/*******************************************************************************
 * Global data types (typedefs / structs / enums)
 ******************************************************************************/
typedef struct COMSERV_S_STATUS{
	// Basic
	u32 CfgVersion;
	u32 AppVersion;
	u32 AppDateTime;
	u16 EnableCnt;
	u16 CanError;
	u16 CanErrorCnt;
	u16 AutoDiagEn;
	u16 OtpAutoDiagEn;
	u16 PeakCurrentEn;

	// DCDC_CMD
	s16 Enable;
	s16 ClrFault;
	s16 CanTimeOut;
	s16 VoutRef;
	s16 IoutRef;
	s16 VinRef;
	s16 Operation;
	s16 Topology;
	s16 DisHSK;

	// DCDC_DEV_CMD
	s16 Debug;
	s16 Debug1;
	s16 Debug2;
	s16 HsfbFreq;
	s16 HsfbSweep;
	s16 Sr1En;
	s16 Sr2En;
	s16 SrCtrl;

	// WakeUpSleep
	s16 WakeUpSleepCmd;
} COMSERV_S_STATUS;

typedef struct COMSERV_S_DEV_RX_BIT1{
	u16 HsfbFreq		: 14;	// 00 ~ 13
	u16 Debug2 			: 2;	// 14 ~ 15
	u16 SrCtrl 			: 12;	// 16 ~ 27
	u16 Debug1			: 2;	// 28 ~ 29
	u16 HsfbSweep		: 8;	// 30 ~ 37
	u16 Sr1En			: 1;	// 38
	u16 Sr2En			: 1;	// 39
	u16 Debug			: 8;	// 40 ~ 47
} COMSERV_S_DEV_RX_BIT1;

typedef struct COMSERV_S_DEV_RX_BIT2{
	// --------------------------- 00 ~ 15
	u16 JitterDis		: 1;	// 00
	u16 FreqRate 		: 7;	// 01 ~ 07
	u16 FreqRange 		: 6;	// 08 ~ 13
	u16 AutoSwitchDis	: 1;	// 14
	u16 TestPulseEn		: 1;	// 15
	// --------------------------- 16 ~ 31
	u16 FreqPeriod		: 7;	// 16 ~ 22
	u16 ErrorDis		: 1;	// 23
	u16 StopWDI			: 1;	// 24
	u16 StopFSP			: 1;	// 25
	u16 Reserved1		: 6;	// 26 ~ 31
	// --------------------------- 32 ~ 47
	u16 Reserved2		: 16;	// 32 ~ 47
} COMSERV_S_DEV_RX_BIT2;

typedef union COMSERV_S_DEV_RX{
	u8 RxData[6];
	COMSERV_S_DEV_RX_BIT1 B1;
	COMSERV_S_DEV_RX_BIT2 B2;
} COMSERV_S_DEV_RX;

/*******************************************************************************
 * Global data
 ******************************************************************************/
extern COMSERV_S_DEV_RX ComServ_DevRx;

#if(MEMORY_PROTECTION_ENABLED)

#define PARAM_DATA                      (0x05)
#define CALIB_DATA                      (0x06)

#define TRUSTED_COPY_INVALID             (0x00)
#define TRUSTED_COPY_VALID               (0x01)

#define RESPONSE_SUCCESS                          	(0x00U)
#define RESPONSE_ILLEGAL_DATA_VALUE               	(0x01U) /* Illegal data value */
#define RESPONSE_ILLEGAL_DATA_OPERATION           	(0x02U) /* Illegal operation */

#define CRC32_INIT_VALUE              				(0xFFFFFFFFU)
#define CRC32_EXOR_VALUE              				(0xFFFFFFFFU)
#define CRC32_SIZE                    				(0x04U)

#define PARAM_INDEX_COMCRC							(200)
#define PARAM_DATASIZE								(200)

#define CALIB_INDEX_ISCALIB							(0)
#define CALIB_INDEX_VER								(2)
#define CALIB_INDEX_ATECRC							(146)
#define CALIB_INDEX_COMCRC							(150)
#define CALIB_DATASIZE								(150)

// Calibration
#define CALIB_VOUT_GAIN_FACTOR			0.00003
#define CALIB_VOUT_OFFSET_FACTOR		0.0006

#define CALIB_VKL30_GAIN_FACTOR			0.00003
#define CALIB_VKL30_OFFSET_FACTOR		0.0006

#define CALIB_IOUT_GAIN_FACTOR			0.00003
#define CALIB_IOUT_OFFSET_FACTOR		0.01

#define CALIB_VIN_GAIN_FACTOR			0.00003
#define CALIB_VIN_OFFSET_FACTOR			0.03
#define CALIB_VIN_OP_FACTOR				0.03

// Parameter Mask
#define PARAM_MASK_APP					(0x0001)
#define PARAM_MASK_MEAS					(0x0002)
#define PARAM_MASK_CTRL					(0x0004)
#define PARAM_MASK_PWM					(0x0008)
#define PARAM_MASK_DIAG					(0x0010)
#define PARAM_MASK_NTC					(0x0020)
#define PARAM_MASK_STATE				(0x0040)
#define PARAM_MASK_SAFETY				(0x0080)

// Parameter (Ctrl)
#define PARAM_FACTOR_100m				0.100000
#define PARAM_FACTOR_10m				0.010000
#define PARAM_FACTOR_1m					0.001000
#define PARAM_FACTOR_100u				0.000100
#define PARAM_FACTOR_10u				0.000010
#define PARAM_FACTOR_1u					0.000001

// Range Check
#define RANGE_CHECK(x,max,min,def)		if(x > max || x < min) x = def;

#define CAN_TASK_CYCLE_TIME			(1U) /* set here the cycle time of the CAN_Task() in ms. */

typedef struct {
	sint16 RecordVersion_Hi;
	sint16 RecordVersion_Lo;
	sint16 LVDC_ParameterEnable;
	sint16 LVDC_Ctrl_IoutBoostMax;
	sint16 LVDC_Ctrl_PreVinTarget;
	sint16 LVDC_Ctrl_PreVinSrRise;
	sint16 LVDC_Ctrl_PreVlimMin;
	uint8 LVDC_Reserved[186];
} ParameterData_t;

typedef struct {
	uint16 LVDC_IsCalibrated;
	uint16 LVDC_Calibration_Version;
	sint16 LVDC_Output_VSense_gain;
	sint16 LVDC_Output_VSense_offset;
	sint16 LVDC_KL30F_VM_gain;
	sint16 LVDC_KL30F_VM_offset;
	sint16 LVDC_InOut_ISense_gain;
	sint16 LVDC_InOut_ISense_offset;
	sint16 LVDC_Input_1_VSense_gain;
	sint16 LVDC_Input_1_VSense_offset;
	sint16 LVDC_Input_2_VSense_gain;
	sint16 LVDC_Input_2_VSense_offset;
	sint16 LVDC_Input_3_VSense_gain;
	sint16 LVDC_Input_3_VSense_offset;
	sint16 LVDC_Input_1to2_VSense_OP;
	sint16 LVDC_Input_2to3_VSense_OP;
	uint8 reserved_LVDC[114];
	uint16 LVDC_DataBlock_CRC32_checksum_Hi;
	uint16 LVDC_DataBlock_CRC32_checksum_Lo;
} CalibrationData_t;

extern ParameterData_t ParameterData;
extern CalibrationData_t CalibrationData;
extern uint16 ParamDataValidFlg;
extern uint16 CalibDataValidFlg;
extern uint16 Pram_u16Prameter_recieved;

/*******************************************************************************
 * Global function prototypes
 ******************************************************************************/

const COMSERV_S_STATUS* ComServ_GetStatus(void);
extern uint32 Crc_CalculateCRC32(uint8 *Crc_DataPtr, uint16 Crc_Length);
extern uint8 Crc_CalculateCRC8(const uint16_t* DataPtr, uint16 Length, uint16 CrcByteIdx);
extern uint8 UdsData_Parameter(uint8 ReadWrite, uint8 *RxTxBuf, uint16 LenOfMsg);
extern uint8 UdsData_Calibration(uint8 ReadWrite, uint8 *RxTxBuf, uint16 LenOfMsg);
#endif /*MEMORY_PROTECTION_ENABLED*/

#endif
