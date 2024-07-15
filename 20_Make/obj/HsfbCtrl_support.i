# 1 "../40_Appl/HsfbCtrl/HsfbCtrl_support.c"
# 1 "S:\\20_Make//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "../40_Appl/HsfbCtrl/HsfbCtrl_support.c"






# 1 "../40_Appl/HsfbCtrl/HsfbCtrl_support.h" 1
# 11 "../40_Appl/HsfbCtrl/HsfbCtrl_support.h"
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
# 12 "../40_Appl/HsfbCtrl/HsfbCtrl_support.h" 2



# 1 "../40_Appl/HsfbCtrl/HsfbCtrl_types.h" 1
# 9 "../40_Appl/HsfbCtrl/HsfbCtrl_types.h"
# 1 "../40_Appl/HsfbCtrl/HsfbCtrl_struct.h" 1
# 14 "../40_Appl/HsfbCtrl/HsfbCtrl_struct.h"
typedef struct {
  bit PriDis;
  bit SrDis;
  bit ClampDis;
} HSFBCTRL_S_ENDIS;

typedef struct {
  bit BuckVoltage;
  bit BuckTopology;
  bit BuckPowerLow;
  bit BuckVinShort;
  bit BoostRampFin;
  bit BoostVoutLimit;
  bit BoostVinShort;
  bit BoostRampFail;
} HSFBCTRL_S_ERROR;

typedef struct {
  f32 Error;
  f32 PreErr;
  f32 PIOut;
  f32 Kp;
  f32 Kz;
  f32 Ts;
  f32 OutMax;
  f32 OutMin;
} HSFBCTRL_S_PI;

typedef struct {
  f32 IoutBoostMax;
  f32 PreVinTarget;
  f32 PreVinSrRise;
  f32 PreVlimMin;
} HSFBCTRL_S_PARAM;

typedef struct {
  HSFBCTRL_S_ENDIS CtrlEnDis;
} HSFBCTRL_S_STATUS100US;

typedef struct {
  f32 BuckDuty;
  f32 BoostDuty;
  HSFBCTRL_S_ERROR CtrlError;
} HSFBCTRL_S_STATUS15US;
# 10 "../40_Appl/HsfbCtrl/HsfbCtrl_types.h" 2
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
# 11 "../40_Appl/HsfbCtrl/HsfbCtrl_types.h" 2
# 1 "../40_Appl/HsfbPwm/HsfbPwm_struct.h" 1
# 9 "../40_Appl/HsfbPwm/HsfbPwm_struct.h"
# 1 "../40_Appl/HsfbPwm/HsfbPwm_enum.h" 1
# 14 "../40_Appl/HsfbPwm/HsfbPwm_enum.h"
typedef enum {
  HSFBPWM_E_STATE_None = 0,
  HSFBPWM_E_STATE_Reset,
  HSFBPWM_E_STATE_Charge,
  HSFBPWM_E_STATE_SteadyRun,
  HSFBPWM_E_STATE_Discharge
} HSFBPWM_E_STATE;

typedef enum {
  HSFBPWM_E_DRIVER_PriA = 0,
  HSFBPWM_E_DRIVER_PriB,
  HSFBPWM_E_DRIVER_PriC,
  HSFBPWM_E_DRIVER_PriD,
  HSFBPWM_E_DRIVER_SrA,
  HSFBPWM_E_DRIVER_SrB,
  HSFBPWM_E_DRIVER_ClampA,
  HSFBPWM_E_DRIVER_ClampB,
  HSFBPWM_E_DRIVER_Sync,
  HSFBPWM_E_DRIVER_Saux
} HSFBPWM_E_DRIVER;
# 10 "../40_Appl/HsfbPwm/HsfbPwm_struct.h" 2





typedef struct {
  f32 Duty;
  f32 Max;
  f32 Min;
} HSFBPWM_S_DUTY;

typedef struct {
  bit En;
  bit Dis;
  bit Out;
} HSFBPWM_S_ENDIS;

typedef struct {
  HSFBPWM_E_STATE PwmState;
  u16 Topology;
  f32 TopoState;
  f32 IpriPwmGain;
} HSFBPWM_S_STATUS15US;

typedef struct {
  u16 Operation;
  f32 BuckDutyFil;
  f32 IpriPwmGain;
  HSFBPWM_S_DUTY BuckDuty;
  HSFBPWM_S_DUTY BoostDuty;
  HSFBPWM_S_ENDIS PriEn;
  HSFBPWM_S_ENDIS SrEn;
  HSFBPWM_S_ENDIS ClampEn;
  u16 DriverSR0[10];
  u16 DriverSR1[10];
  f32 Vout100us;
  u16 FlagRecharge;
} HSFBPWM_S_STATUS;

typedef struct {
  bit Enable;
} HSFBPWM_S_STATECMD;

typedef struct {
  u16 Prd;
  u16 HPrd;
  u16 MPrd;
  u16 DPrd;
  u16 DHPrd;
} HSFBPWM_S_PERIOD;

typedef struct {
  bit Enable;
  f32 Freq;
  f32 FreqRange;
  f32 FreqRate;
  f32 FreqPeriod;
  u16 Period;
} HSFBPWM_S_JITTER;

typedef struct {
  bit Enable;
  bit AutoSwitchDis;
  u16 TopologyIn;
  u16 TopologyInT;
  u16 TopologyOut;
  u16 MorphSign;
  f32 MorphState;
  f32 TopoState;
  f32 VinFil;
} HSFBPWM_S_TOMOR;
# 12 "../40_Appl/HsfbCtrl/HsfbCtrl_types.h" 2
# 1 "../40_Appl/HsfbApp/HsfbApp_struct.h" 1
# 10 "../40_Appl/HsfbApp/HsfbApp_struct.h"
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
# 11 "../40_Appl/HsfbApp/HsfbApp_struct.h" 2
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
# 14 "../40_Appl/HsfbApp/HsfbApp_struct.h" 2





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
# 13 "../40_Appl/HsfbCtrl/HsfbCtrl_types.h" 2
# 16 "../40_Appl/HsfbCtrl/HsfbCtrl_support.h" 2
# 24 "../40_Appl/HsfbCtrl/HsfbCtrl_support.h"
typedef struct {
  f32 ref_delay_DSTATE;
} DW_HsfbCtrl_SR_Calc_T;






typedef struct {
  f32 err_delay_DSTATE;
  f32 out_delay_DSTATE;
} DW_HsfbCtrl_PI_Calc_T;






extern void HsfbCtrl_SR_Calc(bit en, f32 cmd, f32 step, f32 rst_val, f32 *ref,
  DW_HsfbCtrl_SR_Calc_T *localDW);
extern void HsfbCtrl_PI_Calc(bit rst, f32 err, f32 kp, f32 ki, f32 max, f32 min,
  f32 *out, DW_HsfbCtrl_PI_Calc_T *localDW);
# 8 "../40_Appl/HsfbCtrl/HsfbCtrl_support.c" 2


# 1 "../40_Appl/HsfbCtrl/HsfbCtrl.h" 1
# 23 "../40_Appl/HsfbCtrl/HsfbCtrl.h"
# 1 "../40_Appl/HsfbCtrl/HsfbCtrl_param.h" 1
# 24 "../40_Appl/HsfbCtrl/HsfbCtrl.h" 2
# 1 "../40_Appl/HsfbMeas/HsfbMeas_param.h" 1
# 25 "../40_Appl/HsfbCtrl/HsfbCtrl.h" 2
# 1 "../40_Appl/HsfbPwm/HsfbPwm_macro.h" 1
# 26 "../40_Appl/HsfbCtrl/HsfbCtrl.h" 2
# 1 "../40_Appl/HsfbCtrl/HsfbCtrl_GetParamData.h" 1
# 24 "../40_Appl/HsfbCtrl/HsfbCtrl_GetParamData.h"
extern void HsfbCtrl_GetParamData(HSFBCTRL_S_PARAM *y);
# 27 "../40_Appl/HsfbCtrl/HsfbCtrl.h" 2
# 35 "../40_Appl/HsfbCtrl/HsfbCtrl.h"
typedef struct {
  DW_HsfbCtrl_PI_Calc_T PI_Calc_m;
  DW_HsfbCtrl_PI_Calc_T PI_Calc_c;
  DW_HsfbCtrl_PI_Calc_T PI_Calc_g;
  DW_HsfbCtrl_SR_Calc_T Vout_SR_Calc;
  DW_HsfbCtrl_PI_Calc_T PI_Calc;
  DW_HsfbCtrl_SR_Calc_T Iout_SR_Calc;
  f32 Switch_pm;
  f32 Gain1;
  f32 Switch_gb;
  f32 IchRef;
  f32 IoutMax;
  f32 Real;
  f32 Gain1_h;
  f32 Add1_o;
  f32 IoutCmdOut;
  f32 Delay_DSTATE;
  f32 Delay_DSTATE_d;
  f32 Delay_DSTATE_a;
  f32 Delay1_DSTATE;
  f32 Vin_delay_DSTATE;
  f32 y_delay_DSTATE;
  f32 y_delay_DSTATE_b;
  f32 Vin_delay1_DSTATE;
  f32 y_delay_DSTATE_f;
  f32 ref_delay_DSTATE;
  f32 Vin_delay1_DSTATE_g;
  f32 Vin_delay_DSTATE_d;
  f32 y_delay_DSTATE_o;
  f32 Inenn;
  f32 IoutInt;
  u16 cnt_delay_DSTATE;
  u16 cnt_delay_DSTATE_c;
  u16 cnt_delay_DSTATE_h;
  u16 cnt_delay_DSTATE_l;
  u16 dis_cnt_DSTATE;
  u16 en_cnt_DSTATE;
  u16 dis_cnt_DSTATE_o;
  u16 en_cnt_DSTATE_j;
  u16 dis_cnt_DSTATE_i;
  u16 en_cnt_DSTATE_c;
  u16 RiseCnt;
  u16 StartCnt;
  u8 is_active_c8_HsfbCtrl;
  u8 is_c8_HsfbCtrl;
  u8 is_active_c6_HsfbCtrl;
  u8 is_c6_HsfbCtrl;
  u8 is_Precharge;
  u8 is_active_c9_HsfbCtrl;
  u8 is_c9_HsfbCtrl;
  bit RelationalOperator_m;
  bit LogicalOperator_a;
  bit RelationalOperator_l;
  bit Switch1;
  bit IchCtrlDis;
  bit IoutCtrlDis;
  bit VinShortEn;
  bit DataTypeConversion_k;
  bit out_delay_DSTATE;
  bit out_delay_DSTATE_h;
  bit out_delay_DSTATE_i;
  bit Relay_Mode;
} DW_HsfbCtrl_f_T;
# 113 "../40_Appl/HsfbCtrl/HsfbCtrl.h"
extern f32 HsfbCtrl_VinSR;
extern f32 HsfbCtrl_VinSRFil;
# 124 "../40_Appl/HsfbCtrl/HsfbCtrl.h"
extern HSFBCTRL_S_PI HsfbCtrl_Iout_Buck_PI;
extern HSFBCTRL_S_PI HsfbCtrl_Ich_Boost_PI;
extern HSFBCTRL_S_PI HsfbCtrl_Vout_Buck_PI;
extern HSFBCTRL_S_PI HsfbCtrl_Iout_Boost_PI;
extern HSFBCTRL_S_PARAM HsfbCtrl_Param;
extern HSFBCTRL_S_ENDIS HsfbCtrl_EnDis;
extern HSFBCTRL_S_ERROR HsfbCtrl_Error;
extern u16 HsfbCtrl_PrechargeCnt;
extern u16 HsfbCtrl_BoostMode;
extern bit HsfbCtrl_IoutLimFlag;
extern void HsfbCtrl_Call100us(const HSFBMEAS_S_STATUS100US *MeasStatus100us,
  const HSFBPWM_S_STATUS15US *PwmStatus15us, const HSFBAPP_S_RX *AppRx10ms,
  HSFBCTRL_S_STATUS100US *CtrlStatus100us);
extern void HsfbCtrl_Call15us(const HSFBMEAS_S_STATUS15US *MeasStatus15us, const
  HSFBPWM_S_STATUS15US *PwmStatus15us, const HSFBAPP_S_RX *AppRx10ms,
  HSFBCTRL_S_STATUS15US *CtrlStatus15us);
extern void HsfbCtrl_CallInit(void);



extern void HsfbCtrl_Derating_Calc(void);
extern void HsfbCtrl_Buck_Ctrl_100us(void);
extern void HsfbCtrl_Precharge_State(void);
extern void HsfbCtrl_Boost_Ctrl_100us(void);
extern void HsfbCtrl_Reset(void);
extern void HsfbCtrl_Reset_100us(void);
extern void HsfbCtrl_Buck_Ctrl_15us(void);
extern void HsfbCtrl_Boost_Ctrl_15us(void);






extern DW_HsfbCtrl_f_T HsfbCtrl_DW;
# 11 "../40_Appl/HsfbCtrl/HsfbCtrl_support.c" 2
# 1 "../40_Appl/HsfbCtrl/HsfbCtrl_private.h" 1
# 12 "../40_Appl/HsfbCtrl/HsfbCtrl_support.c" 2
# 30 "../40_Appl/HsfbCtrl/HsfbCtrl_support.c"
# 1 "../30_Bsw/Mpu/MPU_MemMap.h" 1
# 242 "../30_Bsw/Mpu/MPU_MemMap.h"
#pragma section ".text.MPU_ASIL_CODE" ax 8
# 31 "../40_Appl/HsfbCtrl/HsfbCtrl_support.c" 2
void HsfbCtrl_SR_Calc(bit en, f32 cmd, f32 step, f32 rst_val, f32 *ref,
                      DW_HsfbCtrl_SR_Calc_T *localDW)
{
  f32 Sum_d;
  if (en) {
    Sum_d = cmd - localDW->ref_delay_DSTATE;
    if (Sum_d > step) {
      Sum_d = step;
    } else {
      if (Sum_d < (-step)) {
        Sum_d = -step;
      }
    }

    *ref = Sum_d + localDW->ref_delay_DSTATE;
  } else {
    *ref = rst_val;
  }

  localDW->ref_delay_DSTATE = *ref;
}

# 1 "../30_Bsw/Mpu/MPU_MemMap.h" 1
# 255 "../30_Bsw/Mpu/MPU_MemMap.h"
#pragma section
# 54 "../40_Appl/HsfbCtrl/HsfbCtrl_support.c" 2
# 64 "../40_Appl/HsfbCtrl/HsfbCtrl_support.c"
# 1 "../30_Bsw/Mpu/MPU_MemMap.h" 1
# 268 "../30_Bsw/Mpu/MPU_MemMap.h"
#pragma section ".code_ram" ax 8
# 65 "../40_Appl/HsfbCtrl/HsfbCtrl_support.c" 2
void HsfbCtrl_PI_Calc(bit rst, f32 err, f32 kp, f32 ki, f32 max, f32 min, f32
                      *out, DW_HsfbCtrl_PI_Calc_T *localDW)
{
  f32 Sum_f;
  if (rst) {
    localDW->err_delay_DSTATE = 0.0F;
    localDW->out_delay_DSTATE = 0.0F;
  }

  Sum_f = ((((ki * err) + err) - localDW->err_delay_DSTATE) * kp) +
    localDW->out_delay_DSTATE;
  if (Sum_f > max) {
    Sum_f = max;
  } else {
    if (Sum_f < min) {
      Sum_f = min;
    }
  }

  if (rst) {
    *out = 0.0F;
  } else {
    *out = Sum_f;
  }

  localDW->err_delay_DSTATE = err;
  localDW->out_delay_DSTATE = Sum_f;
}

# 1 "../30_Bsw/Mpu/MPU_MemMap.h" 1
# 281 "../30_Bsw/Mpu/MPU_MemMap.h"
#pragma section
# 95 "../40_Appl/HsfbCtrl/HsfbCtrl_support.c" 2
