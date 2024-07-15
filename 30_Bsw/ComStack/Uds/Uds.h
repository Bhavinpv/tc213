/*******************************************************************************
 * Filename   : Uds.h
 * Project    : OBC
 * Author(s)  : deeggid
 * Created    : 11.02.2014
 * Description: Headerfile for Dcm.c
 *
 * Last modification:
 *  on $Date$
 *  by $Author$
 *  current $Revision$
 *
 * Compiler info : Wind River V5.7.0
 * Processor info: Freescale MPC5668G
 *
 * Copyright (c) 2014 Delta Energy Systems (Germany) GmbH.
 * All rights reserved.
 ******************************************************************************/

#if !defined(__UDS_H_)
#define __UDS_H_


#include "tp_cfg.h"
#include "ComServ_api.h"
/*******************************************************************************
 * Global constants and macros
 ******************************************************************************/
/* negative response codes */
#define UDS_POSITIVE_RESPONSE                   0x00U
#define UDS_NEGATIVE_RESPONSE                   0x7FU
#define UDS_NRC_SERVICE_NOT_SUPPORTED           0x11U
#define UDS_NRC_SUBFUNC_NOT_SUPPORTED           0x12U
#define UDS_NRC_INCORRECT_MSG_LENGTH            0x13U
#define UDS_NRC_REQUEST_OUT_OF_RANGE            0x31U
#define UDS_NRC_RCVD_DATA_CRC_INVALID           0x74U
#define UDS_NRC_INCORRECT_CALIB_FLAG            0x75U
#define UDS_NRC_PROTOCOL_CRC_INVALID            0x76U

#define UDS_MSG_VALID                         0xFFFFU

#define RESPONSE_SUCCESS                          	(0x00U)
#define RESPONSE_ILLEGAL_DATA_VALUE               	(0x01U) /* Illegal data value */
#define RESPONSE_ILLEGAL_DATA_OPERATION           	(0x02U) /* Illegal operation */

#define UDS_READ                                  	(0U)
#define UDS_WRITE                                 	(1U)


#define SID_INDEX                       (0x00U)
#define ECU_RESET_REQ_ID                  0x11u

#if(!MEMORY_PROTECTION_ENABLED)
#define PARAM_INDEX_COMCRC							(200)
#define PARAM_DATASIZE								(200)

#define CALIB_INDEX_ISCALIB							(0)
#define CALIB_INDEX_VER								(2)
#define CALIB_INDEX_ATECRC							(146)
#define CALIB_INDEX_COMCRC							(150)
#define CALIB_DATASIZE								(150)

#define CRC32_INIT_VALUE              				(0xFFFFFFFFU)
#define CRC32_EXOR_VALUE              				(0xFFFFFFFFU)
#define CRC32_SIZE                    				(0x04U)

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

// Calibration
#define CALIB_VOUT_GAIN_FACTOR			0.00003
#define CALIB_VOUT_OFFSET_FACTOR		0.00006

#define CALIB_VKL30_GAIN_FACTOR			0.00003
#define CALIB_VKL30_OFFSET_FACTOR		0.00006

#define CALIB_IOUT_GAIN_FACTOR			0.00003
#define CALIB_IOUT_OFFSET_FACTOR		0.001

#define CALIB_VIN_GAIN_FACTOR			0.00003
#define CALIB_VIN_OFFSET_FACTOR			0.003
#define CALIB_VIN_OP_FACTOR				0.003

// Range Check
#define RANGE_CHECK(x,max,min,def)		if(x > max || x < min) x = def;

#endif/*!MEMORY_PROTECTION_ENABLED*/
/*******************************************************************************
 * Global data types (typedefs / structs / enums)
 ******************************************************************************/
#if(!MEMORY_PROTECTION_ENABLED)
typedef struct {
	sint16 LVDC_ParameterEnable;
	sint16 LVDC_Ctrl_IoutBoostMax;
	sint16 LVDC_Ctrl_PreVinTarget;
	sint16 LVDC_Ctrl_PreVinSrRise;
	sint16 LVDC_Ctrl_PreVlimMin;
	uint8 LVDC_Reserved[190];
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
#endif/*!MEMORY_PROTECTION_ENABLED*/


/*******************************************************************************
 * Global data
 ******************************************************************************/

#if defined(Uds_GLOBALS)
  #define EXTERN
#else
  #define EXTERN extern
#endif

#if(!MEMORY_PROTECTION_ENABLED)
#define MPU_ASIL_START_SEC_VAR_NOINIT
#include "MPU_MemMap.h"
EXTERN ParameterData_t ParameterData;
EXTERN CalibrationData_t CalibrationData;
EXTERN uint16 ParamDataValidFlg;
EXTERN uint16 CalibDataValidFlg;
EXTERN uint16 Pram_u16Prameter_recieved;
#define MPU_ASIL_STOP_SEC_VAR_NOINIT
#include "MPU_MemMap.h"
#endif/*!MEMORY_PROTECTION_ENABLED*/
extern bit Trusted_UdsRstReq_Flag;

/*******************************************************************************
 * Global function prototypes
 ******************************************************************************/
EXTERN void Uds_Init( void );
EXTERN void Uds_Indication( eIndicationStatus_t status, uint8 *abData, uint16 dataLength );
EXTERN void Uds_Task( void );
EXTERN void Uds_ASILTask( void );
#if(!MEMORY_PROTECTION_ENABLED)
EXTERN uint32 Crc_CalculateCRC32(uint8 *Crc_DataPtr, uint16 Crc_Length);
EXTERN uint8 Crc_CalculateCRC8(const uint16 *cp, uint8 length);
#endif/*!MEMORY_PROTECTION_ENABLED*/

#undef EXTERN

#endif /* __UDS_H_ */

/* 
 * End of file
 */
