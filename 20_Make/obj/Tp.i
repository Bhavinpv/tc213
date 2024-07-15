# 1 "../30_Bsw/ComStack/Tp/Tp.c"
# 1 "S:\\20_Make//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "../30_Bsw/ComStack/Tp/Tp.c"
# 25 "../30_Bsw/ComStack/Tp/Tp.c"
# 1 "../30_Bsw/Common/Platform_Types.h" 1
# 37 "../30_Bsw/Common/Platform_Types.h"
# 1 "../30_Bsw/STL_common/Compiler_Cfg.h" 1
# 38 "../30_Bsw/Common/Platform_Types.h" 2
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
# 39 "../30_Bsw/Common/Platform_Types.h" 2
# 90 "../30_Bsw/Common/Platform_Types.h"
typedef signed char sint8;
typedef unsigned char uint8;
typedef signed short sint16;
typedef unsigned short uint16;
typedef signed long sint32;
typedef unsigned long uint32;
typedef float float32;
typedef double float64;

typedef unsigned char boolean;
# 26 "../30_Bsw/ComStack/Tp/Tp.c" 2
# 1 "../30_Bsw/Common/Delta_commen/standardtypes.h" 1
# 27 "../30_Bsw/ComStack/Tp/Tp.c" 2
# 1 "../30_Bsw/Common/Delta_commen/standardmacros.h" 1
# 28 "../30_Bsw/ComStack/Tp/Tp.c" 2


# 1 "../30_Bsw/Mcal/Can/can_cfg.h" 1
# 23 "../30_Bsw/Mcal/Can/can_cfg.h"
# 1 "../30_Bsw/Common/rtwtypes.h" 1
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
extern LvDc_Pma_ErrCode_t LvDc_Pma_ErrCode[8u];
extern DCDC_HTB_Measure_t DCDC_HTB_Measure[4u];
extern LVDC_WakeUpSleepManagement_t LVDC_WakeUpSleepManagement[1u];
extern LVDC_SafetyMeasure_t LVDC_SafetyMeasure[8u];
extern DCDC_Measure4_t DCDC_Measure4[7u];
extern DCDC_Status_ErrCode_t DCDC_Status_ErrCode[8u];
extern Parameter_DCDC_Com_t Parameter_DCDC_Com[8u];
extern DCDC_HSFB_Diag_Resp_t DCDC_HSFB_Diag_Resp[8u];
extern DCDC_Measure2_t DCDC_Measure2[8u];
extern LvDc_Pma_ErrSrc_t LvDc_Pma_ErrSrc[8u];
extern DcDc_Scope1_t DcDc_Scope1[6u];
extern DcDc_Scope0_t DcDc_Scope0[4u];
extern DCDC_Status_t DCDC_Status[6u];
extern DCDC_Measure3_t DCDC_Measure3[7u];
extern DCDC_Measure_t DCDC_Measure[7u];


extern COM_WakeUpSleepManagement_t COM_WakeUpSleepManagement[1u];
extern HVDC_SafetyMeasure_t HVDC_SafetyMeasure[6u];
extern HTB_CMD_t HTB_CMD[4u];
extern Parameter_Com_DCDC_t Parameter_Com_DCDC[8u];
extern DCDC_HSFB_Diag_Req_t DCDC_HSFB_Diag_Req[8u];
extern DCDC_DEV_CMD_t DCDC_DEV_CMD[6u];
extern DCDC_CMD_t DCDC_CMD[8u];

extern CanRxFlags_t CanRxFlags[CAN_RX_MSG_SIZE];
extern CanTxFlags_t CanTxFlags[CAN_TX_MSG_SIZE];

extern Can_COM_WAKEUPSLEEPMANAGEMENT_RxIndFlags_t Can_COM_WAKEUPSLEEPMANAGEMENT_RxIndFlags;
extern Can_HVDC_SAFETYMEASURE_RxIndFlags_t Can_HVDC_SAFETYMEASURE_RxIndFlags;
extern Can_HTB_CMD_RxIndFlags_t Can_HTB_CMD_RxIndFlags;
extern Can_PARAMETER_COM_DCDC_RxIndFlags_t Can_PARAMETER_COM_DCDC_RxIndFlags;
extern Can_DCDC_HSFB_DIAG_REQ_RxIndFlags_t Can_DCDC_HSFB_DIAG_REQ_RxIndFlags;
extern Can_DCDC_DEV_CMD_RxIndFlags_t Can_DCDC_DEV_CMD_RxIndFlags;
extern Can_DCDC_CMD_RxIndFlags_t Can_DCDC_CMD_RxIndFlags;

# 1 "../30_Bsw/Mpu/MPU_MemMap.h" 1
# 125 "../30_Bsw/Mpu/MPU_MemMap.h"
#pragma section
# 1212 "../30_Bsw/Mcal/Can/can_cfg.h" 2



extern void Can_MessageInit(void);
# 31 "../30_Bsw/ComStack/Tp/Tp.c" 2
# 1 "../30_Bsw/ComStack/Tp/Tp.h" 1
# 54 "../30_Bsw/ComStack/Tp/Tp.h"
extern void TpInit( uint8 IfNmb );
extern void TpTask( uint8 IfNmb );


extern void TpRx( uint8 IfNmb, uint16 *data );
extern void TpGetTxConfirmation( uint8 IfNmb );


extern void TpSetTxBuffer( uint8 IfNmb, uint8 *pbData, uint16 wDataLength );

extern void Can_SetTxMsg( uint32 Id );
# 32 "../30_Bsw/ComStack/Tp/Tp.c" 2
# 1 "../30_Bsw/ComStack/Tp/Tp_cfg.h" 1
# 47 "../30_Bsw/ComStack/Tp/Tp_cfg.h"
typedef enum eIndicationStatus {
  TpRxIdle = 0,
  TpRxStarted,
  TpRxOk,
  TpRxBufferOvflw,
  TpRxError,
  TpRxTimeout
}eIndicationStatus_t;

typedef struct {

    void (*SetTxData)( uint8 IfNmb, uint8 *abData );

    void (*RxIndication)( eIndicationStatus_t status, uint8 *abData, uint16 dataLength);

    uint16 bBlockSize;
    uint16 bStMin;
} TpConfig_t;





extern const TpConfig_t TpConfig[1u];
# 33 "../30_Bsw/ComStack/Tp/Tp.c" 2
# 79 "../30_Bsw/ComStack/Tp/Tp.c"
typedef struct {
  uint16 wDataLength;
  uint8 bSeqCounter;
  uint8 bBlockSize;
  uint8 bStMin;
  uint16 wDataIndex;
  uint16 wRemainingDl;
  uint16 wTxStatus;
  uint8 bRemainingStMin;
  eIndicationStatus_t eStatusIndication;
  uint8 bStatusConfirm;
  uint16 wTimeoutCnt;
  uint8 *p2_RxDataBuffer;
  uint8 *p2_TxDataBuffer;
  uint8 TxActive;
} TpInfo_t;





# 1 "../30_Bsw/Mpu/MPU_MemMap.h" 1
# 112 "../30_Bsw/Mpu/MPU_MemMap.h"
#pragma section ".bss.MPU_QM_VAR_NOINIT" awB 8
# 101 "../30_Bsw/ComStack/Tp/Tp.c" 2

static TpInfo_t TpInfo[1u];

static uint8 u8_gRxDataBuffer[1u][0x410u];
static uint8 u8_gTxDataBuffer[1u][0x410u];


# 1 "../30_Bsw/Mpu/MPU_MemMap.h" 1
# 125 "../30_Bsw/Mpu/MPU_MemMap.h"
#pragma section
# 109 "../30_Bsw/ComStack/Tp/Tp.c" 2




void TpTx( uint8 IfNmb );
void SendFcFrame( uint8 IfNmb, uint8 bFcStatus );





# 1 "../30_Bsw/Mpu/MPU_MemMap.h" 1
# 294 "../30_Bsw/Mpu/MPU_MemMap.h"
#pragma section ".text.MPU_QM_CODE" ax 8
# 121 "../30_Bsw/ComStack/Tp/Tp.c" 2
# 130 "../30_Bsw/ComStack/Tp/Tp.c"
void TpInit( uint8 IfNmb )
{
  TpInfo[IfNmb].bStatusConfirm = 0u;
  TpInfo[IfNmb].eStatusIndication = TpRxIdle;
  TpInfo[IfNmb].wTxStatus = 0U;

  TpInfo[IfNmb].p2_RxDataBuffer = &(u8_gRxDataBuffer[IfNmb][0]);
  TpInfo[IfNmb].p2_TxDataBuffer = &(u8_gTxDataBuffer[IfNmb][0]);
  TpInfo[IfNmb].TxActive = 0;
}
# 150 "../30_Bsw/ComStack/Tp/Tp.c"
void TpTask( uint8 IfNmb )
{

  if ((0 != (TpInfo[IfNmb].wTxStatus & 0x0001u))
      && (1u == TpInfo[IfNmb].bStatusConfirm)
      && (0x00 == TpInfo[IfNmb].bRemainingStMin)
      && (0 == TpInfo[IfNmb].TxActive)) {
    TpTx( IfNmb );
  }

  if (0 < TpInfo[IfNmb].bRemainingStMin) {
    TpInfo[IfNmb].bRemainingStMin--;
  }


  if (0 != (TpInfo[IfNmb].wTxStatus & 0x0004u)) {
    TpInfo[IfNmb].wTimeoutCnt--;
    if (0U == TpInfo[IfNmb].wTimeoutCnt) {
      TpInfo[IfNmb].bStatusConfirm = 5u;
    }
  }

}
# 186 "../30_Bsw/ComStack/Tp/Tp.c"
void TpRx( uint8 IfNmb, uint16* const data )
{
  uint8 bPciType=0, bAddInfo=0;
  uint8 u8_RxData[(0x08U)]={0};
  uint16 wDataSize=0, wDataIndex=0;
  uint16 i=0;


  for (i = 0; i < (0x08U); ++i) {
    u8_RxData[i] = (uint8)(data[i<<1]);
  }

  wDataSize = 0u;
  wDataIndex = 0u;

  bPciType = (uint8)(u8_RxData[0u] & (uint8)0xF0u);
  bAddInfo = (uint8)(u8_RxData[0u] & (uint8)0x0Fu);
  switch (bPciType) {
    case 0x10u:

      TpInfo[IfNmb].bSeqCounter = 0x01u;
      TpInfo[IfNmb].eStatusIndication = TpRxStarted;
      TpInfo[IfNmb].wDataIndex = 0u;
      wDataIndex = 2u;
      wDataSize = 6u;


      TpInfo[IfNmb].wDataLength = (uint16)((uint16)bAddInfo << 8);
      TpInfo[IfNmb].wDataLength += u8_RxData[1u];
      TpInfo[IfNmb].wRemainingDl = TpInfo[IfNmb].wDataLength;
      if (TpInfo[IfNmb].wRemainingDl > 0x07u) {
        TpInfo[IfNmb].wRemainingDl -= 0x06u;
      }


      if (TpInfo[IfNmb].wDataLength > 0x410u) {
        SendFcFrame( IfNmb, 2u );
        TpInfo[IfNmb].eStatusIndication = TpRxBufferOvflw;
      }
      else {
        SendFcFrame( IfNmb, 0u );
      }
      break;

    case 0x20u:
      if (TpInfo[IfNmb].bSeqCounter == bAddInfo) {
        TpInfo[IfNmb].bSeqCounter++;
        TpInfo[IfNmb].bSeqCounter %= 0x10u;
        wDataIndex = 1u;
        if (TpInfo[IfNmb].wRemainingDl > 0x07u) {
          TpInfo[IfNmb].wRemainingDl -= 0x07u;
          wDataSize = 0x07u;
          TpInfo[IfNmb].bBlockSize--;

          if (TpInfo[IfNmb].bBlockSize == 0u) {
            SendFcFrame( IfNmb, 0u );
          }
        }
        else {
          wDataSize = (uint8)TpInfo[IfNmb].wRemainingDl;
          TpInfo[IfNmb].wRemainingDl = 0x00u;
          if (wDataSize != 0) {
            TpInfo[IfNmb].eStatusIndication = TpRxOk;
          }
          else {
            TpInfo[IfNmb].eStatusIndication = TpRxError;
          }
        }
      }
      else {
        TpInfo[IfNmb].eStatusIndication = TpRxError;
      }
      break;

    case 0x00u:
      TpInfo[IfNmb].bSeqCounter = 0x01u;
      TpInfo[IfNmb].eStatusIndication = TpRxStarted;
      TpInfo[IfNmb].wDataIndex = 0u;

      TpInfo[IfNmb].wDataLength = bAddInfo;
      TpInfo[IfNmb].wRemainingDl = bAddInfo;
      wDataSize = (uint16)bAddInfo;
      wDataIndex = 1u;
      if ((wDataSize > 1u) && (wDataSize <= 7u)) {
        TpInfo[IfNmb].eStatusIndication = TpRxOk;
      }
      else {
        TpInfo[IfNmb].eStatusIndication = TpRxError;
      }
      break;

    case 0x30u:
      wDataSize = 0u;
      wDataIndex = 0u;

      if ((TpInfo[IfNmb].wTxStatus & 0x0004u) != 0) {

        TpInfo[IfNmb].wTxStatus &= (uint16)(~(uint16)0x0004u);
        switch (bAddInfo) {
          case 0u:
            TpInfo[IfNmb].bBlockSize = u8_RxData[1u];
            TpInfo[IfNmb].bStMin = u8_RxData[2u] + 1U;

            TpInfo[IfNmb].bRemainingStMin = TpInfo[IfNmb].bStMin;

            TpInfo[IfNmb].wTxStatus |= (0x0002u | 0x0001u);
            break;
          case 1u:

            TpInfo[IfNmb].wTxStatus |= 0x0004u;
            break;
          case 2u:

            TpInfo[IfNmb].bStatusConfirm = 3u;

            TpInfo[IfNmb].wTxStatus &= (uint16)(~(uint16)0x0001u);
            break;
          default:
            break;
        }
      }
      break;
    default:

      break;
  }

  for (i = 0u; i < wDataSize; ++i) {
    TpInfo[IfNmb].p2_RxDataBuffer[TpInfo[IfNmb].wDataIndex] = u8_RxData[wDataIndex
        + i];
    TpInfo[IfNmb].wDataIndex++;
  }


  if ((TpRxIdle != TpInfo[IfNmb].eStatusIndication) &&
      (TpRxStarted != TpInfo[IfNmb].eStatusIndication)) {
    TpConfig[IfNmb].RxIndication(TpInfo[IfNmb].eStatusIndication, TpInfo[IfNmb].p2_RxDataBuffer, TpInfo[IfNmb].wDataLength);
  }

}
# 338 "../30_Bsw/ComStack/Tp/Tp.c"
void TpSetTxBuffer( uint8 IfNmb, uint8 *pbData, uint16 wDataLength )
{
  uint16 i=0;


  if (wDataLength < 0x410u) {

    for (i = 0u; i < wDataLength; ++i) {
      TpInfo[IfNmb].p2_TxDataBuffer[i] = pbData[i];
    }

    TpInfo[IfNmb].wTxStatus = 0U;

    TpInfo[IfNmb].wDataLength = wDataLength;
    TpInfo[IfNmb].wRemainingDl = wDataLength;

    TpInfo[IfNmb].wTxStatus &= (uint16)(~(uint16)0x0002u);

    TpInfo[IfNmb].wTxStatus &= (uint16)(~(uint16)0x0004u);

    TpInfo[IfNmb].wTxStatus |= 0x0001u;

    TpInfo[IfNmb].bStatusConfirm = 1u;

    TpInfo[IfNmb].bRemainingStMin = 0u;

    TpInfo[IfNmb].wDataIndex = 0u;

  }
}
# 381 "../30_Bsw/ComStack/Tp/Tp.c"
void TpGetTxConfirmation( uint8 IfNmb )
{
  TpInfo[IfNmb].TxActive = 0;
}
# 401 "../30_Bsw/ComStack/Tp/Tp.c"
void TpTx( uint8 IfNmb )
{
  uint8 i;
  uint16 wSize;
  uint8 bStart;
  uint8 bTxDataBuffer[8];


  TpInfo[IfNmb].wTxStatus &= (uint16)(~(uint16)0x0008u);


  if ((TpInfo[IfNmb].wTxStatus & 0x0002u) != 0) {




    bTxDataBuffer[0u] = (uint8)(0x20u + TpInfo[IfNmb].bSeqCounter);
    TpInfo[IfNmb].bSeqCounter++;
    TpInfo[IfNmb].bSeqCounter %= 0x10u;
    bStart = 1u;
    wSize = 7u;
    if (TpInfo[IfNmb].wRemainingDl <= 0x07u) {

      TpInfo[IfNmb].wTxStatus &= (uint16)(~(uint16)0x0002u);

      TpInfo[IfNmb].wTxStatus &= (uint16)(~(uint16)0x0001u);
    }


    TpInfo[IfNmb].bRemainingStMin = TpInfo[IfNmb].bStMin;


    TpInfo[IfNmb].bBlockSize--;
    if (TpInfo[IfNmb].bBlockSize == 0u) {

      TpInfo[IfNmb].wTxStatus |= 0x0004u;

      TpInfo[IfNmb].wTxStatus &= (uint16)(~(uint16)0x0001u);

      TpInfo[IfNmb].wTimeoutCnt = 1000u;
    }
  }
  else {
    if (TpInfo[IfNmb].wDataLength > 0x07u) {





      TpInfo[IfNmb].wTxStatus |= 0x0004u;

      TpInfo[IfNmb].wTxStatus &= (uint16)(~(uint16)0x0001u);

      TpInfo[IfNmb].wTimeoutCnt = 1000u;

      TpInfo[IfNmb].bSeqCounter = 0x01u;
      bTxDataBuffer[0u] = (uint8)(0x10u
          + ((uint8)(TpInfo[IfNmb].wDataLength >> 8) & 0x0Fu));
      bTxDataBuffer[1u] = (uint8)TpInfo[IfNmb].wDataLength;
      bStart = 2u;
      wSize = 6u;
    }
    else {





      TpInfo[IfNmb].wTxStatus &= (uint16)(~(uint16)0x0002u);

      TpInfo[IfNmb].wTxStatus &= (uint16)(~(uint16)0x0001u);
      bTxDataBuffer[0u] = ((uint8)TpInfo[IfNmb].wDataLength & 0x0Fu);
      bStart = 1u;
      wSize = 7u;

      TpInfo[IfNmb].wTxStatus |= 0x0008u;
    }
  }
  for (i = bStart; wSize > 0u; wSize--) {
    if (TpInfo[IfNmb].wRemainingDl) {
      bTxDataBuffer[i] = TpInfo[IfNmb].p2_TxDataBuffer[TpInfo[IfNmb].wDataIndex];
      TpInfo[IfNmb].wRemainingDl--;
      TpInfo[IfNmb].wDataIndex++;
    }
    else {
      bTxDataBuffer[i] = 0xFFu;
    }
    i++;
  }


  TpInfo[IfNmb].TxActive = 1;
  (*TpConfig[IfNmb].SetTxData)( IfNmb, bTxDataBuffer );
  TpInfo[IfNmb].TxActive = 0;
}
# 507 "../30_Bsw/ComStack/Tp/Tp.c"
void SendFcFrame( uint8 IfNmb, uint8 bFcStatus )
{
  uint8 bTxData[8];
  uint8 i;





  bTxData[0u] = (0x30u | (bFcStatus & 0x0fu));
  bTxData[1u] = TpConfig[IfNmb].bBlockSize;
  bTxData[2u] = TpConfig[IfNmb].bStMin;

  for (i = (2u + 1u); i < 8u; ++i) {
    bTxData[i] = 0xFFu;
  }


  (*TpConfig[IfNmb].SetTxData)( IfNmb, bTxData );


  TpInfo[IfNmb].bBlockSize = TpConfig[IfNmb].bBlockSize;

}


# 1 "../30_Bsw/Mpu/MPU_MemMap.h" 1
# 307 "../30_Bsw/Mpu/MPU_MemMap.h"
#pragma section
# 534 "../30_Bsw/ComStack/Tp/Tp.c" 2
