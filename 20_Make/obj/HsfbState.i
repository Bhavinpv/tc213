# 1 "../40_Appl/HsfbState/HsfbState.c"
# 1 "S:\\20_Make//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "../40_Appl/HsfbState/HsfbState.c"






# 1 "../40_Appl/HsfbState/HsfbState.h" 1
# 11 "../40_Appl/HsfbState/HsfbState.h"
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
# 12 "../40_Appl/HsfbState/HsfbState.h" 2



# 1 "../40_Appl/HsfbState/HsfbState_types.h" 1
# 10 "../40_Appl/HsfbState/HsfbState_types.h"
# 1 "../40_Appl/HsfbDiag/HsfbDiag_struct.h" 1
# 14 "../40_Appl/HsfbDiag/HsfbDiag_struct.h"
typedef struct {
  bit AutoDiagOvp16V;
  bit AutoDiagOvp19V;
  bit AutoDiagOtp;
  bit AutoDiagKL30;
  bit FastTurnOff;
  bit DrvPriOff;
  bit DrvSrOff;
  bit Reserved10;
  bit OvpVout16V;
  bit OvpVout19V;
  bit OcpIoutP;
  bit OcpIoutN;
  bit OvpVin;
  bit OcpCt;
  bit Reserved15;
  bit HwVerError;
} HSFBDIAG_S_ERRCODE0;

typedef struct {
  bit BoostRampFin;
  bit AutoDiagWait;
  bit AutoDiagNotFin;
  bit BoostRampFail;
  bit Reserved5;
  bit Reserved6;
  bit Reserved7;
  bit Reserved8;
  bit Reserved9;
  bit Reserved10;
  bit Reserved11;
  bit Reserved12;
  bit Reserved13;
  bit Reserved14;
  bit Reserved15;
  bit Reserved16;
} HSFBDIAG_S_ERRCODE1;

typedef struct {
  bit Vout16VHigh;
  bit VoutErr1High;
  bit Vout19VHigh;
  bit VoutErr2High;
  bit IoutHigh;
  bit IoutLow;
  bit VinHigh;
  bit VinLow;
  bit TempPriHigh;
  bit TempSrAHigh;
  bit TempSrBHigh;
  bit VauxHigh;
  bit VauxLow;
  bit Vkl30Low;
  bit TempErrSrAB_High;
  bit IproFet_High;
} HSFBDIAG_S_ERRCODE2;

typedef struct {
  bit BuckVoltage;
  bit BuckTopology;
  bit BuckPowerLow;
  bit BuckVinShort;
  bit Reserved5;
  bit Reserved6;
  bit Reserved7;
  bit Reserved8;
  bit BoostVoutLimit;
  bit BoostVinShort;
  bit Reserved11;
  bit Reserved12;
  bit FlybackShort;
  bit E2EError;
  bit SbcError;
  bit DspError;
} HSFBDIAG_S_ERRCODE3;

typedef struct {
  bit PriDis;
  bit SrDis;
  bit ClampDis;
} HSFBDIAG_S_ENDIS;

typedef struct {
  u16 ErrMask0;
  u16 ErrMask1;
  u16 ErrMask2;
  u16 ErrMask3;
} HSFBDIAG_S_ERRMASK;

typedef struct {
  u16 ErrCode0;
  u16 ErrCode1;
  u16 ErrCode2;
  u16 ErrCode3;
  u16 WarnCode0;
  u16 WarnCode1;
  u16 WarnCode2;
  u16 WarnCode3;
} HSFBDIAG_S_STATUS1MS;
# 11 "../40_Appl/HsfbState/HsfbState_types.h" 2
# 1 "../40_Appl/HsfbSafety/HsfbSafety_struct.h" 1
# 14 "../40_Appl/HsfbSafety/HsfbSafety_struct.h"
typedef struct {
  bit DCDC01_SM1;
  bit DCDC01_SM2;
  bit DCDC01_SM3;
  bit DCDC01_SM4;
  bit DCDC01_LFD1;
  bit DCDC01_LFD2;
  bit DCDC01_LFD3;
  bit DCDC01_LFD4;
  bit DCDC02_SM1;
  bit DCDC02_SM2;
  bit DCDC02_SM3;
  bit DCDC02_SM4;
  bit DCDC02_LFD1;
  bit DCDC02_LFD2;
  bit DCDC02_LFD3;
  bit DCDC02_LFD4;
  bit DCDC03_SM1;
  bit DCDC03_SM2;
  bit DCDC03_LFD1;
  bit DCDC05_SM1;
  bit DCDC05_LFD1;
  bit DCDC05_LFD2;
  bit Batt02_LFD5;
} HSFBSAFETY_S_SAFETYSTATUS;

typedef struct {
  bit AutoDiagWait;
  bit AutoDiagFin;
  bit EachRun[4];
  bit EachFin[4];
} HSFBSAFETY_S_AUTODIAGSTATUS;

typedef struct {
  HSFBSAFETY_S_SAFETYSTATUS SafetyStatus;
  HSFBSAFETY_S_AUTODIAGSTATUS AutoDiagStatus;
} HSFBSAFETY_S_STATUS1MS;

typedef struct {
  bit PriEn;
  bit SrEn;
  bit ClampEn;
} HSFBSAFETY_S_STATUS100US;
# 12 "../40_Appl/HsfbState/HsfbState_types.h" 2
# 1 "../40_Appl/HsfbApp/HsfbApp_struct.h" 1
# 9 "../40_Appl/HsfbApp/HsfbApp_struct.h"
# 1 "../40_Appl/HsfbMeas/HsfbMeas_struct.h" 1
# 14 "../40_Appl/HsfbMeas/HsfbMeas_struct.h"
typedef struct {
  s16 Data;
  f32 Real;
} HSFBMEAS_S_STATUSDATA;

typedef struct {
  s16 Gain;
  s16 Offset;
  f32 Factor;
} HSFBMEAS_S_PARAMDATA;

typedef struct {
  f32 Gain;
  f32 Offset;
} HSFBMEAS_S_CALIBDATA;

typedef struct {
  HSFBMEAS_S_STATUSDATA Ipri;
  HSFBMEAS_S_STATUSDATA Vin;
  HSFBMEAS_S_STATUSDATA Iout;
  HSFBMEAS_S_STATUSDATA Vout;
} HSFBMEAS_S_STATUS15US;

typedef struct {
  HSFBMEAS_S_STATUSDATA Ipri;
  HSFBMEAS_S_STATUSDATA Vin;
  HSFBMEAS_S_STATUSDATA Iout;
  HSFBMEAS_S_STATUSDATA Vout;
  HSFBMEAS_S_STATUSDATA VoutDiag;
  HSFBMEAS_S_STATUSDATA IproFet;
} HSFBMEAS_S_STATUS100US;

typedef struct {
  HSFBMEAS_S_STATUSDATA Ipri;
  HSFBMEAS_S_STATUSDATA Vin;
  HSFBMEAS_S_STATUSDATA Iout;
  HSFBMEAS_S_STATUSDATA Vout;
  HSFBMEAS_S_STATUSDATA VoutDiag;
  HSFBMEAS_S_STATUSDATA IproFet;
  HSFBMEAS_S_STATUSDATA Vaux;
  HSFBMEAS_S_STATUSDATA Vkl30;
  HSFBMEAS_S_STATUSDATA Vkl30C;
  HSFBMEAS_S_STATUSDATA Vcomp;
  HSFBMEAS_S_STATUSDATA VrefDiag;
  HSFBMEAS_S_STATUSDATA Vhw16V;
  HSFBMEAS_S_STATUSDATA Vhw19V;
} HSFBMEAS_S_STATUS1MS;

typedef struct {
  HSFBMEAS_S_PARAMDATA Ipri;
  HSFBMEAS_S_PARAMDATA Vin;
  HSFBMEAS_S_PARAMDATA Iout;
  HSFBMEAS_S_PARAMDATA Vout;
  HSFBMEAS_S_PARAMDATA VoutDiag;
  HSFBMEAS_S_PARAMDATA IproFet;
  HSFBMEAS_S_PARAMDATA Vaux;
  HSFBMEAS_S_PARAMDATA Vkl30;
  HSFBMEAS_S_PARAMDATA Vkl30C;
  HSFBMEAS_S_PARAMDATA Vcomp;
  HSFBMEAS_S_PARAMDATA VrefDiag;
  HSFBMEAS_S_PARAMDATA Vhw16V;
  HSFBMEAS_S_PARAMDATA Vhw19V;
} HSFBMEAS_S_PARAM;

typedef struct {
  f32 Ipri;
  f32 Vin;
  f32 Iout;
  f32 Vout;
  f32 VoutDiag;
  f32 IproFet;
  f32 Vaux;
  f32 Vkl30;
  f32 Vkl30C;
  f32 Vcomp;
  f32 VrefDiag;
  f32 Vhw16V;
  f32 Vhw19V;
} HSFBMEAS_S_FILTER;

typedef struct {
  HSFBMEAS_S_CALIBDATA Vin_P1;
  HSFBMEAS_S_CALIBDATA Vin_P2;
  HSFBMEAS_S_CALIBDATA Vin_P3;
  HSFBMEAS_S_CALIBDATA Iout;
  HSFBMEAS_S_CALIBDATA Vout;
  HSFBMEAS_S_CALIBDATA Vkl30;
  f32 Vin_OP1;
  f32 Vin_OP2;
} HSFBMEAS_S_CALIB;

typedef struct {
  s16 Iout;
} HSFBMEAS_S_INITOFFSET;
# 10 "../40_Appl/HsfbApp/HsfbApp_struct.h" 2

# 1 "../40_Appl/HsfbState/HsfbState_struct.h" 1
# 14 "../40_Appl/HsfbState/HsfbState_struct.h"
typedef struct {
  bit ClrWarning;
  bit Error;
  bit Init;
  bit HsfbEn;
  bit Reset;
  bit DrvReset;
  bit ErrReset;
  u16 Opm;
  u16 Topo;
} HSFBSTATE_S_STATUS;
# 12 "../40_Appl/HsfbApp/HsfbApp_struct.h" 2
# 1 "../40_Appl/HsfbNtc/HsfbNtc_struct.h" 1
# 14 "../40_Appl/HsfbNtc/HsfbNtc_struct.h"
typedef struct {
  s16 Temp;
  s32 Rntc;
} HSFBNTC_S_NTCSTATUS;

typedef struct {
  f32 Rser;
  f32 Rpar;
  f32 Rpre;
  f32 Kpre;
} HSFBNTC_S_NTCPARAM;

typedef struct {
  HSFBNTC_S_NTCSTATUS Pri;
  HSFBNTC_S_NTCSTATUS SrA;
  HSFBNTC_S_NTCSTATUS SrB;
  HSFBNTC_S_NTCSTATUS WaterIn;
  HSFBNTC_S_NTCSTATUS WaterOut;
  HSFBNTC_S_NTCSTATUS WaterOutDiag;
} HSFBNTC_S_STATUS;

typedef struct {
  HSFBNTC_S_NTCPARAM Pri;
  HSFBNTC_S_NTCPARAM SrA;
  HSFBNTC_S_NTCPARAM SrB;
  HSFBNTC_S_NTCPARAM WaterIn;
  HSFBNTC_S_NTCPARAM WaterOut;
  HSFBNTC_S_NTCPARAM WaterOutDiag;
} HSFBNTC_S_PARAM;
# 13 "../40_Appl/HsfbApp/HsfbApp_struct.h" 2






typedef struct {
  u16 CpuTime;
  u16 IsrTime;
  u16 Operation;
  u16 Topology;
} HSFBAPP_S_STATUS;

typedef struct {
  bit FastTurnOff;
  bit PriDriveDis;
  bit SrDriveDis;
  bit IpriCbc;
  bit IpriOcp;
  bit VinOvp;
  bit IoutPOcp;
  bit IoutNOcp;
  bit Vout16VOvp;
  bit Vout19VOvp;
  bit WaterOutOtp;
} HSFBAPP_S_PORTSTATUS;

typedef struct {
  u16 Enable;
  u16 ClrFault;
  u16 CanTimeOut;
  u16 IoutRef;
  u16 VoutRef;
  u16 VinRef;
  u16 Operation;
  u16 Topology;
  u16 AutoDiagEn;
  u16 PeakCurrentEn;
  u16 TestPulseEn;
  u16 AutoSwitchDis;
  u16 JitterDis;
} HSFBAPP_S_RX;

typedef struct {
  s16 Ipri;
  s16 Vin;
  s16 Iout;
  s16 Vout;
  s16 VoutDiag;
  s16 IproFet;
  s16 Vaux;
  s16 Vkl30;
  s16 Vkl30C;
  s16 Vcomp;
  s16 VrefDiag;
  s16 Vhw16V;
  s16 Vhw19V;
  s16 NtcPri;
  s16 NtcSrA;
  s16 NtcSrB;
  s16 NtcWaterIn;
  s16 NtcWaterOut;
  s16 NtcWaterOutDiag;
} HSFBAPP_S_AI;

typedef struct {
  HSFBAPP_S_STATUS AppStatus;
  HSFBAPP_S_PORTSTATUS PortStatus;
  HSFBMEAS_S_STATUS1MS MeasStatus;
  HSFBDIAG_S_STATUS1MS DiagStatus;
  HSFBSTATE_S_STATUS StateStatus;
  HSFBNTC_S_STATUS NtcStatus;
  HSFBSAFETY_S_STATUS1MS SafetyStatus;
} HSFBAPP_S_TX;
# 13 "../40_Appl/HsfbState/HsfbState_types.h" 2
# 1 "../40_Appl/HsfbState/HsfbState_struct.h" 1
# 14 "../40_Appl/HsfbState/HsfbState_types.h" 2







typedef enum {
  HSFBSTATE_E_STATE_None = 0,
  HSFBSTATE_E_STATE_Init,
  HSFBSTATE_E_STATE_Idle,
  HSFBSTATE_E_STATE_SoftStart,
  HSFBSTATE_E_STATE_SoftStop,
  HSFBSTATE_E_STATE_Charge,
  HSFBSTATE_E_STATE_WaitForReset,
  HSFBSTATE_E_STATE_ResetLatch,
  HSFBSTATE_E_STATE_ResetDriver
} HSFBSTATE_E_STATE;
# 16 "../40_Appl/HsfbState/HsfbState.h" 2


# 1 "../40_Appl/HsfbState/HsfbState_param.h" 1
# 19 "../40_Appl/HsfbState/HsfbState.h" 2
# 27 "../40_Appl/HsfbState/HsfbState.h"
typedef struct {
  s16 Ctr;
  u8 is_active_c3_HsfbState;
  u8 is_c3_HsfbState;
  u8 is_Operation;
  u8 is_Error;
} DW_HsfbState_f_T;
# 49 "../40_Appl/HsfbState/HsfbState.h"
extern HSFBSTATE_E_STATE HsfbState_State;
extern void HsfbState_p_Init(void);
extern void HsfbState_CalInit(void);
extern void HsfbState_Call1ms(const HSFBDIAG_S_STATUS1MS *DiagStatus1ms, const
  HSFBSAFETY_S_STATUS1MS *SafetyStatus1ms, const HSFBAPP_S_RX *AppRx10ms,
  HSFBSTATE_S_STATUS *StateStatus1ms);



extern void HsfbState_StateMachine_Init(void);
extern void HsfbState_StateMachine(u16 CanEnable, u16 CanClrFaults, u16
  CanTimeOut, u16 CanOpm, u16 CanTopo, bit DiagErr, bit DiagWarn);






extern DW_HsfbState_f_T HsfbState_DW;
# 8 "../40_Appl/HsfbState/HsfbState.c" 2
# 1 "../40_Appl/HsfbState/HsfbState_private.h" 1
# 9 "../40_Appl/HsfbState/HsfbState.c" 2
# 30 "../40_Appl/HsfbState/HsfbState.c"
# 1 "../30_Bsw/Mpu/MPU_MemMap.h" 1
# 36 "../30_Bsw/Mpu/MPU_MemMap.h"
#pragma section ".bss.MPU_ASIL_VAR_NOINIT" awB 8
# 31 "../40_Appl/HsfbState/HsfbState.c" 2

HSFBSTATE_E_STATE HsfbState_State;

# 1 "../30_Bsw/Mpu/MPU_MemMap.h" 1
# 49 "../30_Bsw/Mpu/MPU_MemMap.h"
#pragma section
# 35 "../40_Appl/HsfbState/HsfbState.c" 2




# 1 "../30_Bsw/Mpu/MPU_MemMap.h" 1
# 36 "../30_Bsw/Mpu/MPU_MemMap.h"
#pragma section ".bss.MPU_ASIL_VAR_NOINIT" awB 8
# 40 "../40_Appl/HsfbState/HsfbState.c" 2

static s16 HsfbState_DelayReset;
static bit HsfbState_DrvReset;
static bit HsfbState_ErrReset;
static bit HsfbState_Error;
static bit HsfbState_HsfbEn;
static bit HsfbState_Init;
static u16 HsfbState_Opm;
static bit HsfbState_Reset;
static s16 HsfbState_Topo;

# 1 "../30_Bsw/Mpu/MPU_MemMap.h" 1
# 49 "../30_Bsw/Mpu/MPU_MemMap.h"
#pragma section
# 52 "../40_Appl/HsfbState/HsfbState.c" 2


# 1 "../30_Bsw/Mpu/MPU_MemMap.h" 1
# 36 "../30_Bsw/Mpu/MPU_MemMap.h"
#pragma section ".bss.MPU_ASIL_VAR_NOINIT" awB 8
# 55 "../40_Appl/HsfbState/HsfbState.c" 2

DW_HsfbState_f_T HsfbState_DW;

# 1 "../30_Bsw/Mpu/MPU_MemMap.h" 1
# 49 "../30_Bsw/Mpu/MPU_MemMap.h"
#pragma section
# 59 "../40_Appl/HsfbState/HsfbState.c" 2




static bit HsfbState_EventError(u16 CanTimeOut, bit DiagErr);
static bit HsfbState_EventDriverEnable(void);
static bit HsfbState_EventLatchEnable(void);
static bit HsfbState_EventInit(u16 CanTimeOut, bit DiagErr);
static bit HsfbState_EventDriverReset(void);
static bit HsfbState_EventSoftStop(u16 CanEnable);
static bit HsfbState_EventSoftStart(u16 CanEnable, u16 CanOpm, u16 CanTopo, bit
  DiagWarn);
static bit HsfbState_EventLatchReset(u16 CanClrFaults, bit DiagErr);
static bit HsfbState_EventCharge(u16 CanEnable);
# 81 "../40_Appl/HsfbState/HsfbState.c"
# 1 "../30_Bsw/Mpu/MPU_MemMap.h" 1
# 242 "../30_Bsw/Mpu/MPU_MemMap.h"
#pragma section ".text.MPU_ASIL_CODE" ax 8
# 82 "../40_Appl/HsfbState/HsfbState.c" 2
static bit HsfbState_EventError(u16 CanTimeOut, bit DiagErr)
{
  bit y;
  if ((((s32)CanTimeOut) != 0) || DiagErr) {
    HsfbState_Error = (1U);
    HsfbState_HsfbEn = (0U);
    y = (1U);
  } else {
    y = (0U);
  }

  return y;
}

# 1 "../30_Bsw/Mpu/MPU_MemMap.h" 1
# 255 "../30_Bsw/Mpu/MPU_MemMap.h"
#pragma section
# 97 "../40_Appl/HsfbState/HsfbState.c" 2






# 1 "../30_Bsw/Mpu/MPU_MemMap.h" 1
# 242 "../30_Bsw/Mpu/MPU_MemMap.h"
#pragma section ".text.MPU_ASIL_CODE" ax 8
# 104 "../40_Appl/HsfbState/HsfbState.c" 2
static bit HsfbState_EventDriverEnable(void)
{
  bit y;
  if (((s32)HsfbState_DW.Ctr) == ((s32)HsfbState_DelayReset)) {
    HsfbState_DrvReset = (0U);
    HsfbState_DW.Ctr = (s16)((s32)(((s32)HsfbState_DW.Ctr) - 1));
    y = (1U);
  } else {
    y = (0U);
  }

  return y;
}

# 1 "../30_Bsw/Mpu/MPU_MemMap.h" 1
# 255 "../30_Bsw/Mpu/MPU_MemMap.h"
#pragma section
# 119 "../40_Appl/HsfbState/HsfbState.c" 2






# 1 "../30_Bsw/Mpu/MPU_MemMap.h" 1
# 242 "../30_Bsw/Mpu/MPU_MemMap.h"
#pragma section ".text.MPU_ASIL_CODE" ax 8
# 126 "../40_Appl/HsfbState/HsfbState.c" 2
static bit HsfbState_EventLatchEnable(void)
{
  bit y;
  if (((s32)HsfbState_DW.Ctr) == ((s32)HsfbState_DelayReset)) {
    HsfbState_ErrReset = (0U);
    HsfbState_DW.Ctr = (s16)((s32)(((s32)HsfbState_DW.Ctr) - 1));
    y = (1U);
  } else {
    y = (0U);
  }

  return y;
}

# 1 "../30_Bsw/Mpu/MPU_MemMap.h" 1
# 255 "../30_Bsw/Mpu/MPU_MemMap.h"
#pragma section
# 141 "../40_Appl/HsfbState/HsfbState.c" 2






# 1 "../30_Bsw/Mpu/MPU_MemMap.h" 1
# 242 "../30_Bsw/Mpu/MPU_MemMap.h"
#pragma section ".text.MPU_ASIL_CODE" ax 8
# 148 "../40_Appl/HsfbState/HsfbState.c" 2
static bit HsfbState_EventInit(u16 CanTimeOut, bit DiagErr)
{
  bit y;
  if ((((s32)CanTimeOut) == 0) && (!DiagErr)) {
    HsfbState_Error = (0U);
    HsfbState_Init = (1U);
    y = (1U);
  } else {
    y = (0U);
  }

  return y;
}

# 1 "../30_Bsw/Mpu/MPU_MemMap.h" 1
# 255 "../30_Bsw/Mpu/MPU_MemMap.h"
#pragma section
# 163 "../40_Appl/HsfbState/HsfbState.c" 2






# 1 "../30_Bsw/Mpu/MPU_MemMap.h" 1
# 242 "../30_Bsw/Mpu/MPU_MemMap.h"
#pragma section ".text.MPU_ASIL_CODE" ax 8
# 170 "../40_Appl/HsfbState/HsfbState.c" 2
static bit HsfbState_EventDriverReset(void)
{
  bit y;
  if (((s32)HsfbState_DW.Ctr) == 0) {
    HsfbState_DrvReset = (1U);
    HsfbState_DW.Ctr = (s16)((s32)(((s32)HsfbState_DelayReset) << 1));
    y = (1U);
  } else {
    y = (0U);
  }

  return y;
}

# 1 "../30_Bsw/Mpu/MPU_MemMap.h" 1
# 255 "../30_Bsw/Mpu/MPU_MemMap.h"
#pragma section
# 185 "../40_Appl/HsfbState/HsfbState.c" 2






# 1 "../30_Bsw/Mpu/MPU_MemMap.h" 1
# 242 "../30_Bsw/Mpu/MPU_MemMap.h"
#pragma section ".text.MPU_ASIL_CODE" ax 8
# 192 "../40_Appl/HsfbState/HsfbState.c" 2
static bit HsfbState_EventSoftStop(u16 CanEnable)
{
  bit y;
  if (((s32)CanEnable) == 0) {
    HsfbState_HsfbEn = (0U);
    y = (1U);
  } else {
    y = (0U);
  }

  return y;
}

# 1 "../30_Bsw/Mpu/MPU_MemMap.h" 1
# 255 "../30_Bsw/Mpu/MPU_MemMap.h"
#pragma section
# 206 "../40_Appl/HsfbState/HsfbState.c" 2






# 1 "../30_Bsw/Mpu/MPU_MemMap.h" 1
# 242 "../30_Bsw/Mpu/MPU_MemMap.h"
#pragma section ".text.MPU_ASIL_CODE" ax 8
# 213 "../40_Appl/HsfbState/HsfbState.c" 2
static bit HsfbState_EventSoftStart(u16 CanEnable, u16 CanOpm, u16 CanTopo, bit
  DiagWarn)
{
  bit y;
  bit guard1 = (0U);
  bit guard2 = (0U);
  if ((((s32)CanEnable) != 0) && (!DiagWarn)) {
    guard1 = (0U);
    guard2 = (0U);
    if (((s32)CanOpm) == 0) {
      HsfbState_Opm = 0U;
      if (((s32)CanTopo) == 0) {
        HsfbState_Topo = 0;
        guard1 = (1U);
      } else if (((s32)CanTopo) == 1) {
        HsfbState_Topo = 1;
        guard1 = (1U);
      } else {
        guard2 = (1U);
      }
    } else {
      guard2 = (1U);
    }

    if (guard2) {
      if (((s32)CanOpm) == 1) {
        HsfbState_Opm = 1U;
        guard1 = (1U);
      } else {
        y = (0U);
      }
    }

    if (guard1) {
      HsfbState_HsfbEn = (1U);
      y = (1U);
    }
  } else {
    y = (0U);
  }

  return y;
}

# 1 "../30_Bsw/Mpu/MPU_MemMap.h" 1
# 255 "../30_Bsw/Mpu/MPU_MemMap.h"
#pragma section
# 258 "../40_Appl/HsfbState/HsfbState.c" 2






# 1 "../30_Bsw/Mpu/MPU_MemMap.h" 1
# 242 "../30_Bsw/Mpu/MPU_MemMap.h"
#pragma section ".text.MPU_ASIL_CODE" ax 8
# 265 "../40_Appl/HsfbState/HsfbState.c" 2
static bit HsfbState_EventLatchReset(u16 CanClrFaults, bit DiagErr)
{
  bit y;
  if ((((s32)CanClrFaults) != 0) && DiagErr) {
    HsfbState_ErrReset = (1U);
    HsfbState_Reset = (1U);
    HsfbState_DW.Ctr = (s16)((s32)(((s32)HsfbState_DelayReset) << 1));
    y = (1U);
  } else {
    y = (0U);
  }

  return y;
}

# 1 "../30_Bsw/Mpu/MPU_MemMap.h" 1
# 255 "../30_Bsw/Mpu/MPU_MemMap.h"
#pragma section
# 281 "../40_Appl/HsfbState/HsfbState.c" 2






# 1 "../30_Bsw/Mpu/MPU_MemMap.h" 1
# 242 "../30_Bsw/Mpu/MPU_MemMap.h"
#pragma section ".text.MPU_ASIL_CODE" ax 8
# 288 "../40_Appl/HsfbState/HsfbState.c" 2
static bit HsfbState_EventCharge(u16 CanEnable)
{
  return ((s32)CanEnable) != 0;
}

# 1 "../30_Bsw/Mpu/MPU_MemMap.h" 1
# 255 "../30_Bsw/Mpu/MPU_MemMap.h"
#pragma section
# 294 "../40_Appl/HsfbState/HsfbState.c" 2






# 1 "../30_Bsw/Mpu/MPU_MemMap.h" 1
# 294 "../30_Bsw/Mpu/MPU_MemMap.h"
#pragma section ".text.MPU_QM_CODE" ax 8
# 301 "../40_Appl/HsfbState/HsfbState.c" 2
void HsfbState_StateMachine_Init(void)
{
  HsfbState_State = HSFBSTATE_E_STATE_None;
}

# 1 "../30_Bsw/Mpu/MPU_MemMap.h" 1
# 307 "../30_Bsw/Mpu/MPU_MemMap.h"
#pragma section
# 307 "../40_Appl/HsfbState/HsfbState.c" 2






# 1 "../30_Bsw/Mpu/MPU_MemMap.h" 1
# 242 "../30_Bsw/Mpu/MPU_MemMap.h"
#pragma section ".text.MPU_ASIL_CODE" ax 8
# 314 "../40_Appl/HsfbState/HsfbState.c" 2
void HsfbState_StateMachine(u16 CanEnable, u16 CanClrFaults, u16 CanTimeOut, u16
  CanOpm, u16 CanTopo, bit DiagErr, bit DiagWarn)
{
  if (((u32)HsfbState_DW.is_active_c3_HsfbState) == 0U) {
    HsfbState_DW.is_active_c3_HsfbState = 1U;
    HsfbState_HsfbEn = (0U);
    HsfbState_ErrReset = (0U);
    HsfbState_DrvReset = (0U);
    HsfbState_Opm = 0U;
    HsfbState_Topo = 0;
    HsfbState_DW.is_c3_HsfbState = ((u8)2U);
    HsfbState_State = HSFBSTATE_E_STATE_Init;
  } else {
    switch (HsfbState_DW.is_c3_HsfbState) {
     case ((u8)1U):
      switch (HsfbState_DW.is_Error) {
       case ((u8)1U):
        if (HsfbState_EventDriverEnable()) {
          HsfbState_DW.is_Error = ((u8)1U);
          HsfbState_State = HSFBSTATE_E_STATE_ResetDriver;
        } else if (((s32)HsfbState_DW.Ctr) == 0) {
          HsfbState_Reset = (0U);
          HsfbState_DW.is_Error = ((u8)3U);
          HsfbState_State = HSFBSTATE_E_STATE_WaitForReset;
        } else {
          HsfbState_DW.Ctr = (s16)((s32)(((s32)HsfbState_DW.Ctr) - 1));
        }
        break;

       case ((u8)2U):
        if (HsfbState_EventLatchEnable()) {
          HsfbState_DW.is_Error = ((u8)2U);
          HsfbState_State = HSFBSTATE_E_STATE_ResetLatch;
        } else if (HsfbState_EventDriverReset()) {
          HsfbState_DW.is_Error = ((u8)1U);
          HsfbState_State = HSFBSTATE_E_STATE_ResetDriver;
        } else {
          HsfbState_DW.Ctr = (s16)((s32)(((s32)HsfbState_DW.Ctr) - 1));
        }
        break;

       default:

        if (HsfbState_EventInit(CanTimeOut, DiagErr)) {
          HsfbState_DW.is_Error = ((u8)0U);
          HsfbState_DW.is_c3_HsfbState = ((u8)2U);
          HsfbState_State = HSFBSTATE_E_STATE_Init;
        } else {
          if (HsfbState_EventLatchReset(CanClrFaults, DiagErr)) {
            HsfbState_DW.is_Error = ((u8)2U);
            HsfbState_State = HSFBSTATE_E_STATE_ResetLatch;
          }
        }
        break;
      }
      break;

     case ((u8)2U):
      HsfbState_Init = (0U);
      HsfbState_DrvReset = (0U);
      HsfbState_DW.is_c3_HsfbState = ((u8)3U);
      HsfbState_DW.is_Operation = ((u8)2U);
      HsfbState_State = HSFBSTATE_E_STATE_Idle;
      HsfbState_Opm = 0U;
      break;

     default:

      if (HsfbState_EventError(CanTimeOut, DiagErr)) {
        HsfbState_DW.is_Operation = ((u8)0U);
        HsfbState_DW.is_c3_HsfbState = ((u8)1U);
        HsfbState_DW.is_Error = ((u8)3U);
        HsfbState_State = HSFBSTATE_E_STATE_WaitForReset;
      } else {
        switch (HsfbState_DW.is_Operation) {
         case ((u8)1U):
          if (HsfbState_EventSoftStop(CanEnable)) {
            HsfbState_DW.is_Operation = ((u8)4U);
            HsfbState_State = HSFBSTATE_E_STATE_SoftStop;
          }
          break;

         case ((u8)2U):
          if (HsfbState_EventSoftStart(CanEnable, CanOpm, CanTopo, DiagWarn)) {
            HsfbState_DW.is_Operation = ((u8)3U);
            HsfbState_State = HSFBSTATE_E_STATE_SoftStart;
          }
          break;

         case ((u8)3U):
          if (HsfbState_EventSoftStop(CanEnable)) {
            HsfbState_DW.is_Operation = ((u8)4U);
            HsfbState_State = HSFBSTATE_E_STATE_SoftStop;
          } else {
            if (HsfbState_EventCharge(CanEnable)) {
              HsfbState_DW.is_Operation = ((u8)1U);
              HsfbState_State = HSFBSTATE_E_STATE_Charge;
            }
          }
          break;

         default:

          if (HsfbState_EventSoftStart(CanEnable, CanOpm, CanTopo, DiagWarn)) {
            HsfbState_DW.is_Operation = ((u8)3U);
            HsfbState_State = HSFBSTATE_E_STATE_SoftStart;
          } else {
            if (((s32)CanEnable) == 0) {
              HsfbState_DW.is_Operation = ((u8)2U);
              HsfbState_State = HSFBSTATE_E_STATE_Idle;
              HsfbState_Opm = 0U;
            }
          }
          break;
        }
      }
      break;
    }
  }
}

# 1 "../30_Bsw/Mpu/MPU_MemMap.h" 1
# 255 "../30_Bsw/Mpu/MPU_MemMap.h"
#pragma section
# 436 "../40_Appl/HsfbState/HsfbState.c" 2






# 1 "../30_Bsw/Mpu/MPU_MemMap.h" 1
# 294 "../30_Bsw/Mpu/MPU_MemMap.h"
#pragma section ".text.MPU_QM_CODE" ax 8
# 443 "../40_Appl/HsfbState/HsfbState.c" 2
void HsfbState_p_Init(void)
{
  HsfbState_StateMachine_Init();
}

# 1 "../30_Bsw/Mpu/MPU_MemMap.h" 1
# 307 "../30_Bsw/Mpu/MPU_MemMap.h"
#pragma section
# 449 "../40_Appl/HsfbState/HsfbState.c" 2






# 1 "../30_Bsw/Mpu/MPU_MemMap.h" 1
# 294 "../30_Bsw/Mpu/MPU_MemMap.h"
#pragma section ".text.MPU_QM_CODE" ax 8
# 456 "../40_Appl/HsfbState/HsfbState.c" 2
void HsfbState_CalInit(void)
{
  HsfbState_DelayReset = (s16)((u16)1U);
}

# 1 "../30_Bsw/Mpu/MPU_MemMap.h" 1
# 307 "../30_Bsw/Mpu/MPU_MemMap.h"
#pragma section
# 462 "../40_Appl/HsfbState/HsfbState.c" 2






# 1 "../30_Bsw/Mpu/MPU_MemMap.h" 1
# 242 "../30_Bsw/Mpu/MPU_MemMap.h"
#pragma section ".text.MPU_ASIL_CODE" ax 8
# 469 "../40_Appl/HsfbState/HsfbState.c" 2
void HsfbState_Call1ms(const HSFBDIAG_S_STATUS1MS *DiagStatus1ms, const
  HSFBSAFETY_S_STATUS1MS *SafetyStatus1ms, const HSFBAPP_S_RX *AppRx10ms,
  HSFBSTATE_S_STATUS *StateStatus1ms)
{
  StateStatus1ms->ClrWarning = (((s32)AppRx10ms->ClrFault) != 0);
  HsfbState_StateMachine((u16)((((s32)AppRx10ms->Enable) != 0) &&
    (SafetyStatus1ms->AutoDiagStatus.AutoDiagFin)), AppRx10ms->ClrFault,
    AppRx10ms->CanTimeOut, AppRx10ms->Operation, AppRx10ms->Topology, (((((s32)
    DiagStatus1ms->ErrCode0) != 0) || (((s32)DiagStatus1ms->ErrCode1) != 0)) ||
    (((s32)DiagStatus1ms->ErrCode2) != 0)) || (((s32)DiagStatus1ms->ErrCode3) !=
    0), (0U));
  StateStatus1ms->Topo = (u16)HsfbState_Topo;
  StateStatus1ms->Error = HsfbState_Error;
  StateStatus1ms->Init = HsfbState_Init;
  StateStatus1ms->HsfbEn = HsfbState_HsfbEn;
  StateStatus1ms->Reset = HsfbState_Reset;
  StateStatus1ms->DrvReset = HsfbState_DrvReset;
  StateStatus1ms->ErrReset = HsfbState_ErrReset;
  StateStatus1ms->Opm = HsfbState_Opm;
}

# 1 "../30_Bsw/Mpu/MPU_MemMap.h" 1
# 255 "../30_Bsw/Mpu/MPU_MemMap.h"
#pragma section
# 491 "../40_Appl/HsfbState/HsfbState.c" 2
