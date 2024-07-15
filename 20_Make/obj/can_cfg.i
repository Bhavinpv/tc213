# 1 "../30_Bsw/Mcal/Can/can_cfg.c"
# 1 "S:\\20_Make//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "../30_Bsw/Mcal/Can/can_cfg.c"
# 25 "../30_Bsw/Mcal/Can/can_cfg.c"
# 1 "../30_Bsw/Mcal/Can/can_cfg.h" 1
# 23 "../30_Bsw/Mcal/Can/can_cfg.h"
# 1 "../30_Bsw/Common/rtwtypes.h" 1
# 80 "../30_Bsw/Common/rtwtypes.h"
typedef signed char int8_T;
typedef unsigned char uint8_T;
typedef short int16_T;
typedef unsigned short uint16_T;
typedef int int32_T;
typedef unsigned int uint32_T;
typedef float real32_T;
typedef double real64_T;





typedef double real_T;
typedef double time_T;
typedef unsigned char boolean_T;
typedef int int_T;
typedef unsigned int uint_T;
typedef unsigned long ulong_T;
typedef char char_T;
typedef unsigned char uchar_T;
typedef char_T byte_T;
# 121 "../30_Bsw/Common/rtwtypes.h"
typedef void * pointer_T;


typedef int8_T s8;
typedef uint8_T u8;
typedef int16_T s16;
typedef uint16_T u16;
typedef int32_T s32;
typedef uint32_T u32;
typedef real32_T f32;
typedef real_T f64;
typedef boolean_T bit;

typedef unsigned int uint16_t;
typedef unsigned long uint32_t;
# 24 "../30_Bsw/Mcal/Can/can_cfg.h" 2
# 900 "../30_Bsw/Mcal/Can/can_cfg.h"
typedef uint16_t LvDc_Pma_ErrCode_t;

typedef uint16_t DCDC_HTB_Measure_t;

typedef uint16_t LVDC_WakeUpSleepManagement_t;

typedef uint16_t LVDC_SafetyMeasure_t;

typedef uint16_t DCDC_Measure4_t;

typedef uint16_t DCDC_Status_ErrCode_t;

typedef uint16_t Parameter_DCDC_Com_t;

typedef uint16_t DCDC_HSFB_Diag_Resp_t;

typedef uint16_t DCDC_Measure2_t;

typedef uint16_t LvDc_Pma_ErrSrc_t;

typedef uint16_t DcDc_Scope1_t;

typedef uint16_t DcDc_Scope0_t;

typedef uint16_t DCDC_Status_t;

typedef uint16_t DCDC_Measure3_t;

typedef uint16_t DCDC_Measure_t;


typedef uint16_t COM_WakeUpSleepManagement_t;

typedef uint16_t HVDC_SafetyMeasure_t;

typedef uint16_t HTB_CMD_t;

typedef uint16_t Parameter_Com_DCDC_t;

typedef uint16_t DCDC_HSFB_Diag_Req_t;

typedef uint16_t DCDC_DEV_CMD_t;

typedef uint16_t DCDC_CMD_t;





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


typedef struct {
 uint16_t Timeout;
 uint16_t IndFlg;
} CanRxFlags_t;


typedef struct {
 uint16_t ConfirmFlg;
} CanTxFlags_t;





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





extern const CanTxMsg_t CanTxMsg[CAN_TX_MSG_SIZE];
extern const CanRxMsg_t CanRxMsg[CAN_RX_MSG_SIZE];
# 1174 "../30_Bsw/Mcal/Can/can_cfg.h"
# 1 "../30_Bsw/Mpu/MPU_MemMap.h" 1
# 112 "../30_Bsw/Mpu/MPU_MemMap.h"
#pragma section ".bss.MPU_QM_VAR_NOINIT" awB 8
# 1175 "../30_Bsw/Mcal/Can/can_cfg.h" 2
 LvDc_Pma_ErrCode_t LvDc_Pma_ErrCode[8u];
 DCDC_HTB_Measure_t DCDC_HTB_Measure[4u];
 LVDC_WakeUpSleepManagement_t LVDC_WakeUpSleepManagement[1u];
 LVDC_SafetyMeasure_t LVDC_SafetyMeasure[8u];
 DCDC_Measure4_t DCDC_Measure4[7u];
 DCDC_Status_ErrCode_t DCDC_Status_ErrCode[8u];
 Parameter_DCDC_Com_t Parameter_DCDC_Com[8u];
 DCDC_HSFB_Diag_Resp_t DCDC_HSFB_Diag_Resp[8u];
 DCDC_Measure2_t DCDC_Measure2[8u];
 LvDc_Pma_ErrSrc_t LvDc_Pma_ErrSrc[8u];
 DcDc_Scope1_t DcDc_Scope1[6u];
 DcDc_Scope0_t DcDc_Scope0[4u];
 DCDC_Status_t DCDC_Status[6u];
 DCDC_Measure3_t DCDC_Measure3[7u];
 DCDC_Measure_t DCDC_Measure[7u];


 COM_WakeUpSleepManagement_t COM_WakeUpSleepManagement[1u];
 HVDC_SafetyMeasure_t HVDC_SafetyMeasure[6u];
 HTB_CMD_t HTB_CMD[4u];
 Parameter_Com_DCDC_t Parameter_Com_DCDC[8u];
 DCDC_HSFB_Diag_Req_t DCDC_HSFB_Diag_Req[8u];
 DCDC_DEV_CMD_t DCDC_DEV_CMD[6u];
 DCDC_CMD_t DCDC_CMD[8u];

 CanRxFlags_t CanRxFlags[CAN_RX_MSG_SIZE];
 CanTxFlags_t CanTxFlags[CAN_TX_MSG_SIZE];

 Can_COM_WAKEUPSLEEPMANAGEMENT_RxIndFlags_t Can_COM_WAKEUPSLEEPMANAGEMENT_RxIndFlags;
 Can_HVDC_SAFETYMEASURE_RxIndFlags_t Can_HVDC_SAFETYMEASURE_RxIndFlags;
 Can_HTB_CMD_RxIndFlags_t Can_HTB_CMD_RxIndFlags;
 Can_PARAMETER_COM_DCDC_RxIndFlags_t Can_PARAMETER_COM_DCDC_RxIndFlags;
 Can_DCDC_HSFB_DIAG_REQ_RxIndFlags_t Can_DCDC_HSFB_DIAG_REQ_RxIndFlags;
 Can_DCDC_DEV_CMD_RxIndFlags_t Can_DCDC_DEV_CMD_RxIndFlags;
 Can_DCDC_CMD_RxIndFlags_t Can_DCDC_CMD_RxIndFlags;

# 1 "../30_Bsw/Mpu/MPU_MemMap.h" 1
# 125 "../30_Bsw/Mpu/MPU_MemMap.h"
#pragma section
# 1212 "../30_Bsw/Mcal/Can/can_cfg.h" 2



 void Can_MessageInit(void);
# 26 "../30_Bsw/Mcal/Can/can_cfg.c" 2
# 364 "../30_Bsw/Mcal/Can/can_cfg.c"
# 1 "../30_Bsw/Mpu/MPU_MemMap.h" 1
# 112 "../30_Bsw/Mpu/MPU_MemMap.h"
#pragma section ".bss.MPU_QM_VAR_NOINIT" awB 8
# 365 "../30_Bsw/Mcal/Can/can_cfg.c" 2

uint16_t RxTimeoutCounters[CAN_RX_MSG_SIZE];
uint16_t IndicationFlags[CAN_RX_MSG_SIZE];


uint16_t ConfirmationFlags[CAN_TX_MSG_SIZE];



LvDc_Pma_ErrCode_t LvDc_Pma_ErrCode_internal[8u];
DCDC_HTB_Measure_t DCDC_HTB_Measure_internal[4u];
LVDC_WakeUpSleepManagement_t LVDC_WakeUpSleepManagement_internal[1u];
LVDC_SafetyMeasure_t LVDC_SafetyMeasure_internal[8u];
DCDC_Measure4_t DCDC_Measure4_internal[7u];
DCDC_Status_ErrCode_t DCDC_Status_ErrCode_internal[8u];
Parameter_DCDC_Com_t Parameter_DCDC_Com_internal[8u];
DCDC_HSFB_Diag_Resp_t DCDC_HSFB_Diag_Resp_internal[8u];
DCDC_Measure2_t DCDC_Measure2_internal[8u];
LvDc_Pma_ErrSrc_t LvDc_Pma_ErrSrc_internal[8u];
DcDc_Scope1_t DcDc_Scope1_internal[6u];
DcDc_Scope0_t DcDc_Scope0_internal[4u];
DCDC_Status_t DCDC_Status_internal[6u];
DCDC_Measure3_t DCDC_Measure3_internal[7u];
DCDC_Measure_t DCDC_Measure_internal[7u];

COM_WakeUpSleepManagement_t COM_WakeUpSleepManagement_internal[1u];
HVDC_SafetyMeasure_t HVDC_SafetyMeasure_internal[6u];
HTB_CMD_t HTB_CMD_internal[4u];
Parameter_Com_DCDC_t Parameter_Com_DCDC_internal[8u];
DCDC_HSFB_Diag_Req_t DCDC_HSFB_Diag_Req_internal[8u];
DCDC_DEV_CMD_t DCDC_DEV_CMD_internal[6u];
DCDC_CMD_t DCDC_CMD_internal[8u];

# 1 "../30_Bsw/Mpu/MPU_MemMap.h" 1
# 125 "../30_Bsw/Mpu/MPU_MemMap.h"
#pragma section
# 399 "../30_Bsw/Mcal/Can/can_cfg.c" 2




# 1 "../30_Bsw/Mpu/MPU_MemMap.h" 1
# 137 "../30_Bsw/Mpu/MPU_MemMap.h"
#pragma section ".rodata.MPU_QM_CONST" a
# 404 "../30_Bsw/Mcal/Can/can_cfg.c" 2
const CanTxMsg_t CanTxMsg[CAN_TX_MSG_SIZE] = {
 {0x364u, 8u, Cyclic, Application, 9u, 50u, (uint16_t *)LvDc_Pma_ErrCode, (uint16_t *)LvDc_Pma_ErrCode_internal, &ConfirmationFlags[0]},
 {0x461u, 4u, Cyclic, Application, 4u, 100u, (uint16_t *)DCDC_HTB_Measure, (uint16_t *)DCDC_HTB_Measure_internal, &ConfirmationFlags[1]},
 {0x464u, 1u, Cyclic, Application, 0u, 100u, (uint16_t *)LVDC_WakeUpSleepManagement, (uint16_t *)LVDC_WakeUpSleepManagement_internal, &ConfirmationFlags[2]},
 {0x162u, 8u, Cyclic, Application, 0u, 10u, (uint16_t *)LVDC_SafetyMeasure, (uint16_t *)LVDC_SafetyMeasure_internal, &ConfirmationFlags[3]},
 {0x163u, 7u, Cyclic, Application, 4u, 10u, (uint16_t *)DCDC_Measure4, (uint16_t *)DCDC_Measure4_internal, &ConfirmationFlags[4]},
 {0x47Du, 8u, Cyclic, Application, 13u, 100u, (uint16_t *)DCDC_Status_ErrCode, (uint16_t *)DCDC_Status_ErrCode_internal, &ConfirmationFlags[5]},
 {0x775u, 8u, NoMsgSendType, ISO_TP, 0u, 0u, (uint16_t *)Parameter_DCDC_Com, (uint16_t *)Parameter_DCDC_Com_internal, &ConfirmationFlags[6]},
 {0x301u, 8u, Cyclic, Application, 11u, 100u, (uint16_t *)DCDC_HSFB_Diag_Resp, (uint16_t *)DCDC_HSFB_Diag_Resp_internal, &ConfirmationFlags[7]},
 {0x164u, 8u, Cyclic, Application, 5u, 10u, (uint16_t *)DCDC_Measure2, (uint16_t *)DCDC_Measure2_internal, &ConfirmationFlags[8]},
 {0x363u, 8u, Cyclic, Application, 9u, 50u, (uint16_t *)LvDc_Pma_ErrSrc, (uint16_t *)LvDc_Pma_ErrSrc_internal, &ConfirmationFlags[9]},
 {0x161u, 6u, Cyclic, Application, 7u, 10u, (uint16_t *)DcDc_Scope1, (uint16_t *)DcDc_Scope1_internal, &ConfirmationFlags[10]},
 {0x160u, 4u, Cyclic, Application, 10u, 10u, (uint16_t *)DcDc_Scope0, (uint16_t *)DcDc_Scope0_internal, &ConfirmationFlags[11]},
 {0x463u, 6u, Cyclic, Application, 1u, 100u, (uint16_t *)DCDC_Status, (uint16_t *)DCDC_Status_internal, &ConfirmationFlags[12]},
 {0x462u, 7u, Cyclic, Application, 3u, 100u, (uint16_t *)DCDC_Measure3, (uint16_t *)DCDC_Measure3_internal, &ConfirmationFlags[13]},
 {0x460u, 7u, Cyclic, Application, 2u, 100u, (uint16_t *)DCDC_Measure, (uint16_t *)DCDC_Measure_internal, &ConfirmationFlags[14]}
};

const CanRxMsg_t CanRxMsg[CAN_RX_MSG_SIZE] = {
 {0x404u, 1u, Cyclic, Application, 1000u, &RxTimeoutCounters[0], (uint16_t *)COM_WakeUpSleepManagement, (uint16_t *)COM_WakeUpSleepManagement_internal, &IndicationFlags[0]},
 {0x142u, 6u, Cyclic, Application, 500u, &RxTimeoutCounters[1], (uint16_t *)HVDC_SafetyMeasure, (uint16_t *)HVDC_SafetyMeasure_internal, &IndicationFlags[1]},
 {0x101u, 4u, Cyclic, Application, 500u, &RxTimeoutCounters[2], (uint16_t *)HTB_CMD, (uint16_t *)HTB_CMD_internal, &IndicationFlags[2]},
 {0x770u, 8u, NoMsgSendType, ISO_TP, 500u, &RxTimeoutCounters[3], (uint16_t *)Parameter_Com_DCDC, (uint16_t *)Parameter_Com_DCDC_internal, &IndicationFlags[3]},
 {0x300u, 8u, Cyclic, Application, 1000u, &RxTimeoutCounters[4], (uint16_t *)DCDC_HSFB_Diag_Req, (uint16_t *)DCDC_HSFB_Diag_Req_internal, &IndicationFlags[4]},
 {0x401u, 6u, Cyclic, Application, 1000u, &RxTimeoutCounters[5], (uint16_t *)DCDC_DEV_CMD, (uint16_t *)DCDC_DEV_CMD_internal, &IndicationFlags[5]},
 {0x100u, 8u, Cyclic, Application, 500u, &RxTimeoutCounters[6], (uint16_t *)DCDC_CMD, (uint16_t *)DCDC_CMD_internal, &IndicationFlags[6]}
};

# 1 "../30_Bsw/Mpu/MPU_MemMap.h" 1
# 150 "../30_Bsw/Mpu/MPU_MemMap.h"
#pragma section
# 433 "../30_Bsw/Mcal/Can/can_cfg.c" 2
# 441 "../30_Bsw/Mcal/Can/can_cfg.c"
# 1 "../30_Bsw/Mpu/MPU_MemMap.h" 1
# 294 "../30_Bsw/Mpu/MPU_MemMap.h"
#pragma section ".text.MPU_QM_CODE" ax 8
# 442 "../30_Bsw/Mcal/Can/can_cfg.c" 2
# 452 "../30_Bsw/Mcal/Can/can_cfg.c"
void Can_MessageInit(void){
 uint16_t i;

 for (i = 0U; i < 8u; ++i) {
  LvDc_Pma_ErrCode[i] = 0U;
 }
 for (i = 0U; i < 4u; ++i) {
  DCDC_HTB_Measure[i] = 0U;
 }
 for (i = 0U; i < 1u; ++i) {
  LVDC_WakeUpSleepManagement[i] = 0U;
 }
 for (i = 0U; i < 8u; ++i) {
  LVDC_SafetyMeasure[i] = 0U;
 }
 for (i = 0U; i < 7u; ++i) {
  DCDC_Measure4[i] = 0U;
 }
 for (i = 0U; i < 8u; ++i) {
  DCDC_Status_ErrCode[i] = 0U;
 }
 for (i = 0U; i < 8u; ++i) {
  Parameter_DCDC_Com[i] = 0U;
 }
 for (i = 0U; i < 8u; ++i) {
  DCDC_HSFB_Diag_Resp[i] = 0U;
 }
 for (i = 0U; i < 8u; ++i) {
  DCDC_Measure2[i] = 0U;
 }
 for (i = 0U; i < 8u; ++i) {
  LvDc_Pma_ErrSrc[i] = 0U;
 }
 for (i = 0U; i < 6u; ++i) {
  DcDc_Scope1[i] = 0U;
 }
 for (i = 0U; i < 4u; ++i) {
  DcDc_Scope0[i] = 0U;
 }
 for (i = 0U; i < 6u; ++i) {
  DCDC_Status[i] = 0U;
 }
 for (i = 0U; i < 7u; ++i) {
  DCDC_Measure3[i] = 0U;
 }
 for (i = 0U; i < 7u; ++i) {
  DCDC_Measure[i] = 0U;
 }
}

# 1 "../30_Bsw/Mpu/MPU_MemMap.h" 1
# 307 "../30_Bsw/Mpu/MPU_MemMap.h"
#pragma section
# 503 "../30_Bsw/Mcal/Can/can_cfg.c" 2
