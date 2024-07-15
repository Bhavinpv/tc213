# 1 "../40_Appl/HsfbCtrl/HsfbCtrl.c"
# 1 "S:\\20_Make//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "../40_Appl/HsfbCtrl/HsfbCtrl.c"






# 1 "../40_Appl/HsfbCtrl/HsfbCtrl.h" 1
# 11 "../40_Appl/HsfbCtrl/HsfbCtrl.h"
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
# 12 "../40_Appl/HsfbCtrl/HsfbCtrl.h" 2



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
# 16 "../40_Appl/HsfbCtrl/HsfbCtrl.h" 2



# 1 "../40_Appl/HsfbCtrl/HsfbCtrl_support.h" 1
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
# 20 "../40_Appl/HsfbCtrl/HsfbCtrl.h" 2



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
# 8 "../40_Appl/HsfbCtrl/HsfbCtrl.c" 2
# 1 "../40_Appl/HsfbCtrl/HsfbCtrl_private.h" 1
# 9 "../40_Appl/HsfbCtrl/HsfbCtrl.c" 2
# 34 "../40_Appl/HsfbCtrl/HsfbCtrl.c"
# 1 "../30_Bsw/Mpu/MPU_MemMap.h" 1
# 36 "../30_Bsw/Mpu/MPU_MemMap.h"
#pragma section ".bss.MPU_ASIL_VAR_NOINIT" awB 8
# 35 "../40_Appl/HsfbCtrl/HsfbCtrl.c" 2

f32 HsfbCtrl_VinSR;
f32 HsfbCtrl_VinSRFil;

# 1 "../30_Bsw/Mpu/MPU_MemMap.h" 1
# 49 "../30_Bsw/Mpu/MPU_MemMap.h"
#pragma section
# 40 "../40_Appl/HsfbCtrl/HsfbCtrl.c" 2


# 1 "../30_Bsw/Mpu/MPU_MemMap.h" 1
# 36 "../30_Bsw/Mpu/MPU_MemMap.h"
#pragma section ".bss.MPU_ASIL_VAR_NOINIT" awB 8
# 43 "../40_Appl/HsfbCtrl/HsfbCtrl.c" 2

HSFBCTRL_S_PI HsfbCtrl_Iout_Buck_PI;
HSFBCTRL_S_PI HsfbCtrl_Ich_Boost_PI;
HSFBCTRL_S_PI HsfbCtrl_Vout_Buck_PI;
HSFBCTRL_S_PI HsfbCtrl_Iout_Boost_PI;
HSFBCTRL_S_PARAM HsfbCtrl_Param;
HSFBCTRL_S_ENDIS HsfbCtrl_EnDis;
HSFBCTRL_S_ERROR HsfbCtrl_Error;
u16 HsfbCtrl_PrechargeCnt;
u16 HsfbCtrl_BoostMode;
bit HsfbCtrl_IoutLimFlag;

# 1 "../30_Bsw/Mpu/MPU_MemMap.h" 1
# 49 "../30_Bsw/Mpu/MPU_MemMap.h"
#pragma section
# 56 "../40_Appl/HsfbCtrl/HsfbCtrl.c" 2


# 1 "../30_Bsw/Mpu/MPU_MemMap.h" 1
# 36 "../30_Bsw/Mpu/MPU_MemMap.h"
#pragma section ".bss.MPU_ASIL_VAR_NOINIT" awB 8
# 59 "../40_Appl/HsfbCtrl/HsfbCtrl.c" 2

DW_HsfbCtrl_f_T HsfbCtrl_DW;

# 1 "../30_Bsw/Mpu/MPU_MemMap.h" 1
# 49 "../30_Bsw/Mpu/MPU_MemMap.h"
#pragma section
# 63 "../40_Appl/HsfbCtrl/HsfbCtrl.c" 2




static f32 HsfbCtrl_IoutIntCalc(f32 Iout, f32 Inenn);
static void HsfbCtrl_DeratingCalc(f32 Vout, f32 *Ipeak, f32 *Inenn);
static f32 HsfbCtrl_Min(f32 a, f32 b);


static void HsfbCtrl_Precharge(void);


# 1 "../30_Bsw/Mpu/MPU_MemMap.h" 1
# 36 "../30_Bsw/Mpu/MPU_MemMap.h"
#pragma section ".bss.MPU_ASIL_VAR_NOINIT" awB 8
# 76 "../40_Appl/HsfbCtrl/HsfbCtrl.c" 2

const HSFBMEAS_S_STATUS15US *HsfbCtrl_MeasStatus15us;
const HSFBMEAS_S_STATUS100US *HsfbCtrl_MeasStatus100us;
const HSFBPWM_S_STATUS15US *HsfbCtrl_PwmStatus15us;
const HSFBAPP_S_RX *HsfbCtrl_AppRx10ms;
HSFBCTRL_S_STATUS15US *HsfbCtrl_CtrlStatus15us;

# 1 "../30_Bsw/Mpu/MPU_MemMap.h" 1
# 49 "../30_Bsw/Mpu/MPU_MemMap.h"
#pragma section
# 84 "../40_Appl/HsfbCtrl/HsfbCtrl.c" 2
# 92 "../40_Appl/HsfbCtrl/HsfbCtrl.c"
# 1 "../30_Bsw/Mpu/MPU_MemMap.h" 1
# 242 "../30_Bsw/Mpu/MPU_MemMap.h"
#pragma section ".text.MPU_ASIL_CODE" ax 8
# 93 "../40_Appl/HsfbCtrl/HsfbCtrl.c" 2
static f32 HsfbCtrl_IoutIntCalc(f32 Iout, f32 Inenn)
{
  f32 y;
  HsfbCtrl_DW.IoutInt += (Iout - Inenn) * 0.0001F;
  if (HsfbCtrl_DW.IoutInt < 0.0F) {
    y = 0.0F;
    HsfbCtrl_DW.IoutInt = 0.0F;
  } else if (HsfbCtrl_DW.IoutInt > 110.0F) {
    y = 2.0F;
    HsfbCtrl_DW.IoutInt = 110.0F;
  } else {
    y = 1.0F;
  }

  return y;
}

# 1 "../30_Bsw/Mpu/MPU_MemMap.h" 1
# 255 "../30_Bsw/Mpu/MPU_MemMap.h"
#pragma section
# 111 "../40_Appl/HsfbCtrl/HsfbCtrl.c" 2






# 1 "../30_Bsw/Mpu/MPU_MemMap.h" 1
# 242 "../30_Bsw/Mpu/MPU_MemMap.h"
#pragma section ".text.MPU_ASIL_CODE" ax 8
# 118 "../40_Appl/HsfbCtrl/HsfbCtrl.c" 2
static void HsfbCtrl_DeratingCalc(f32 Vout, f32 *Ipeak, f32 *Inenn)
{
  f32 kVout;
  if (Vout > 16.5F) {
    *Ipeak = 0.0F;
    *Inenn = 0.0F;
  } else if (Vout > 16.0F) {
    kVout = 1.0F - ((Vout - 16.0F) / (16.5F -
      16.0F));
    *Ipeak = (kVout * 4096.0F) / 16.0F;
    *Inenn = (kVout * 3625.0F) / 16.0F;
  } else if (Vout > 14.5F) {
    kVout = 1.0F / Vout;
    *Ipeak = kVout * 4096.0F;
    *Inenn = kVout * 3625.0F;
  } else if (Vout > 12.8F) {
    *Ipeak = (1.0F / Vout) * 4096.0F;
    *Inenn = 250.0F;
  } else {
    *Ipeak = 320.0F;
    *Inenn = 250.0F;
  }
}

# 1 "../30_Bsw/Mpu/MPU_MemMap.h" 1
# 255 "../30_Bsw/Mpu/MPU_MemMap.h"
#pragma section
# 143 "../40_Appl/HsfbCtrl/HsfbCtrl.c" 2






# 1 "../30_Bsw/Mpu/MPU_MemMap.h" 1
# 242 "../30_Bsw/Mpu/MPU_MemMap.h"
#pragma section ".text.MPU_ASIL_CODE" ax 8
# 150 "../40_Appl/HsfbCtrl/HsfbCtrl.c" 2
static f32 HsfbCtrl_Min(f32 a, f32 b)
{
  f32 y;
  if (a < b) {
    y = a;
  } else {
    y = b;
  }

  return y;
}

# 1 "../30_Bsw/Mpu/MPU_MemMap.h" 1
# 255 "../30_Bsw/Mpu/MPU_MemMap.h"
#pragma section
# 163 "../40_Appl/HsfbCtrl/HsfbCtrl.c" 2






# 1 "../30_Bsw/Mpu/MPU_MemMap.h" 1
# 242 "../30_Bsw/Mpu/MPU_MemMap.h"
#pragma section ".text.MPU_ASIL_CODE" ax 8
# 170 "../40_Appl/HsfbCtrl/HsfbCtrl.c" 2
void HsfbCtrl_Derating_Calc(void)
{
  f32 b_Ipeak;
  if (((u32)HsfbCtrl_DW.is_active_c9_HsfbCtrl) == 0U) {
    HsfbCtrl_DW.is_active_c9_HsfbCtrl = 1U;
    HsfbCtrl_DW.IoutInt = 0.0F;
    HsfbCtrl_DW.is_c9_HsfbCtrl = ((u8)2U);
  } else if (HsfbCtrl_DW.is_c9_HsfbCtrl == ((u8)1U)) {
    if (HsfbCtrl_IoutIntCalc(HsfbCtrl_DW.Real, HsfbCtrl_DW.Inenn) == 0.0F) {
      HsfbCtrl_DW.is_c9_HsfbCtrl = ((u8)2U);
    } else if (!HsfbCtrl_DW.DataTypeConversion_k) {
      HsfbCtrl_DW.is_c9_HsfbCtrl = ((u8)2U);
    } else {
      HsfbCtrl_DeratingCalc(HsfbCtrl_MeasStatus100us->Vout.Real, &b_Ipeak,
                            &HsfbCtrl_DW.Inenn);
      HsfbCtrl_DW.IoutCmdOut = HsfbCtrl_Min(HsfbCtrl_DW.Inenn,
        HsfbCtrl_DW.Gain1_h);
    }
  } else {

    if ((HsfbCtrl_IoutIntCalc(HsfbCtrl_DW.Real, HsfbCtrl_DW.Inenn) == 2.0F) &&
        (HsfbCtrl_DW.DataTypeConversion_k)) {
      HsfbCtrl_DW.is_c9_HsfbCtrl = ((u8)1U);
    } else {
      HsfbCtrl_DeratingCalc(HsfbCtrl_MeasStatus100us->Vout.Real, &b_Ipeak,
                            &HsfbCtrl_DW.Inenn);
      HsfbCtrl_DW.IoutCmdOut = HsfbCtrl_Min(b_Ipeak, HsfbCtrl_DW.Gain1_h);
    }
  }
}

# 1 "../30_Bsw/Mpu/MPU_MemMap.h" 1
# 255 "../30_Bsw/Mpu/MPU_MemMap.h"
#pragma section
# 202 "../40_Appl/HsfbCtrl/HsfbCtrl.c" 2






# 1 "../30_Bsw/Mpu/MPU_MemMap.h" 1
# 242 "../30_Bsw/Mpu/MPU_MemMap.h"
#pragma section ".text.MPU_ASIL_CODE" ax 8
# 209 "../40_Appl/HsfbCtrl/HsfbCtrl.c" 2
void HsfbCtrl_Buck_Ctrl_100us(void)
{
  bit LogicalOperator_a;
  bit LogicalOperator_iy;
  u16 Switch_n;
  u16 Switch_dg;
  bit RelationalOperator_g;
  bit RelationalOperator_a;
  bit RelationalOperator_l;
  bit LogicalOperator2_e;
  bit LogicalOperator3_a;
  bit Merge;
  f32 Switch_nr;
  bit LogicalOperator2_o;
  bit LogicalOperator3_m;
  bit RelationalOperator;
  bit Merge_j;
  bit Compare_a;
  bit RelationalOperator_d;
  bit Compare_j;
  bit RelationalOperator_ff;
  bit Merge_b;
  f32 ki3;
  f32 Switch_d0;
  f32 Switch_g;
  if (((HsfbCtrl_MeasStatus100us->Vin.Real > 860.0F) ||
       (HsfbCtrl_MeasStatus100us->Vin.Real < 210.0F)) &&
      (HsfbCtrl_DW.RelationalOperator_l)) {
    Switch_n = HsfbCtrl_DW.cnt_delay_DSTATE_h;
  } else {
    Switch_n = 0U;
  }

  LogicalOperator_iy = (Switch_n >= ((u16)1000U));
  if ((HsfbCtrl_DW.RelationalOperator_l) && (HsfbCtrl_MeasStatus100us->Vin.Real <
       190.0F)) {
    Switch_dg = HsfbCtrl_DW.cnt_delay_DSTATE_l;
  } else {
    Switch_dg = 0U;
  }

  LogicalOperator_a = (Switch_dg >= ((u16)30U));
  HsfbCtrl_Error.BuckVoltage = (LogicalOperator_iy || LogicalOperator_a);
  RelationalOperator_g = (HsfbCtrl_MeasStatus100us->Vin.Real >
    490.0F);
  LogicalOperator2_e = ((RelationalOperator_g &&
    (HsfbCtrl_PwmStatus15us->Topology == ((u16)0U))) ||
                        ((RelationalOperator_g &&
    (HsfbCtrl_PwmStatus15us->TopoState < 1.0F)) &&
    (HsfbCtrl_PwmStatus15us->TopoState > 0.0F)));
  LogicalOperator3_a = !LogicalOperator2_e;
  if (LogicalOperator3_a) {
    HsfbCtrl_DW.dis_cnt_DSTATE = 0U;
  }

  RelationalOperator_l = (HsfbCtrl_DW.dis_cnt_DSTATE >= ((u16)
    1U));
  if (LogicalOperator2_e) {
    HsfbCtrl_DW.en_cnt_DSTATE = 0U;
  }

  RelationalOperator_a = (HsfbCtrl_DW.en_cnt_DSTATE >= ((u16)
    30U));
  Merge = (RelationalOperator_l || ((!RelationalOperator_a) &&
            (HsfbCtrl_DW.out_delay_DSTATE)));
  HsfbCtrl_Error.BuckTopology = Merge;
  HsfbCtrl_VinSR = (HsfbCtrl_MeasStatus100us->Vin.Real -
                    HsfbCtrl_DW.Vin_delay1_DSTATE) * 10.0F;
  HsfbCtrl_VinSRFil += (HsfbCtrl_VinSR - HsfbCtrl_VinSRFil) * 0.16F;
  LogicalOperator2_o = ((HsfbCtrl_VinSRFil < -100.0F) &&
                        (HsfbCtrl_DW.RelationalOperator_l));
  LogicalOperator3_m = !LogicalOperator2_o;
  if (LogicalOperator3_m) {
    HsfbCtrl_DW.dis_cnt_DSTATE_o = 0U;
  }

  RelationalOperator_g = (HsfbCtrl_DW.dis_cnt_DSTATE_o >= ((u16)
    3U));
  if (LogicalOperator2_o) {
    HsfbCtrl_DW.en_cnt_DSTATE_j = 0U;
  }

  RelationalOperator = (HsfbCtrl_DW.en_cnt_DSTATE_j >= ((u16)
    30U));
  Merge_j = (RelationalOperator_g || ((!RelationalOperator) &&
              (HsfbCtrl_DW.out_delay_DSTATE_h)));
  HsfbCtrl_EnDis.PriDis = (Merge || Merge_j);
  HsfbCtrl_DW.Real = HsfbCtrl_MeasStatus100us->Iout.Real;
  Compare_a = (HsfbCtrl_DW.Real > 5.0F);
  if (Compare_a) {
    HsfbCtrl_DW.dis_cnt_DSTATE_i = 0U;
  }

  RelationalOperator_d = (HsfbCtrl_DW.dis_cnt_DSTATE_i >= ((u16)
    1U));
  Compare_j = (HsfbCtrl_DW.Real < -5.0F);
  if (Compare_j) {
    HsfbCtrl_DW.en_cnt_DSTATE_c = 0U;
  }

  RelationalOperator_ff = (HsfbCtrl_DW.en_cnt_DSTATE_c >= ((u16)
    500U));
  Merge_b = (RelationalOperator_d || ((!RelationalOperator_ff) &&
              (HsfbCtrl_DW.out_delay_DSTATE_i)));
  HsfbCtrl_EnDis.SrDis = ((HsfbCtrl_EnDis.PriDis) || Merge_b);
  HsfbCtrl_EnDis.ClampDis = HsfbCtrl_EnDis.PriDis;
  HsfbCtrl_Error.BuckVinShort = Merge_j;
  HsfbCtrl_PrechargeCnt = 0U;
  HsfbCtrl_DW.Gain1_h = 0.1F * ((f32)HsfbCtrl_AppRx10ms->IoutRef);
  HsfbCtrl_DW.DataTypeConversion_k = (((s32)HsfbCtrl_AppRx10ms->PeakCurrentEn)
    != 0);
  HsfbCtrl_Derating_Calc();
  HsfbCtrl_SR_Calc(HsfbCtrl_DW.RelationalOperator_l, HsfbCtrl_DW.IoutCmdOut,
                   2.0F, HsfbCtrl_DW.Real, &Switch_g,
                   &HsfbCtrl_DW.Iout_SR_Calc);
  Switch_nr = HsfbCtrl_DW.Real - HsfbCtrl_DW.Vin_delay1_DSTATE_g;
  if (Switch_nr <= 0.0F) {
    Switch_nr = 0.0F;
  }

  ki3 = (370.0F - ((2.0F * Switch_nr) + HsfbCtrl_DW.Real)) * 15.0F;
  if (ki3 > 0.0F) {
    Switch_nr = 0.0F;
  } else {
    Switch_nr = ki3;
  }

  if (Switch_nr >= 0.0F) {
    ki3 = Switch_g - HsfbCtrl_DW.ref_delay_DSTATE;
    if (ki3 > 2.0F) {
      ki3 = 2.0F;
    } else {
      if (ki3 < (-2.0F)) {
        ki3 = -2.0F;
      }
    }

    Switch_g = ki3 + HsfbCtrl_DW.ref_delay_DSTATE;
  } else {
    Switch_g = 0.0F;
  }

  HsfbCtrl_SR_Calc(HsfbCtrl_DW.RelationalOperator_l, 0.01F *
                   ((f32)HsfbCtrl_AppRx10ms->VoutRef),
                   0.005F,
                   HsfbCtrl_MeasStatus100us->Vout.Real, &ki3,
                   &HsfbCtrl_DW.Vout_SR_Calc);
  HsfbCtrl_PI_Calc(!HsfbCtrl_DW.RelationalOperator_l, (Switch_g -
    HsfbCtrl_DW.Real) + Switch_nr, HsfbCtrl_Iout_Buck_PI.Kp,
                   HsfbCtrl_Iout_Buck_PI.Kz * HsfbCtrl_Iout_Buck_PI.Ts, ki3,
                   -ki3, &Switch_d0, &HsfbCtrl_DW.PI_Calc);
  Switch_nr = ((((HsfbCtrl_DW.Real - HsfbCtrl_DW.Vin_delay_DSTATE_d) * 10.0F) -
                HsfbCtrl_DW.y_delay_DSTATE_o) * 0.02F) +
    HsfbCtrl_DW.y_delay_DSTATE_o;
  ki3 = (((325.0F - HsfbCtrl_DW.Real) * 0.05F) - Switch_nr) * 0.05F;
  if (ki3 > 0.0F) {
    ki3 = 0.0F;
  }

  HsfbCtrl_DW.Add1_o = Switch_d0 + ki3;
  LogicalOperator_iy = !LogicalOperator_iy;
  LogicalOperator_a = !LogicalOperator_a;
  HsfbCtrl_DW.cnt_delay_DSTATE_h = (u16)((u32)(((u32)LogicalOperator_iy) + ((u32)
    Switch_n)));
  HsfbCtrl_DW.cnt_delay_DSTATE_l = (u16)((u32)(((u32)LogicalOperator_a) + ((u32)
    Switch_dg)));
  if (RelationalOperator_l) {
    Switch_n = ((u16)1U);
  } else {
    Switch_n = HsfbCtrl_DW.dis_cnt_DSTATE;
  }

  HsfbCtrl_DW.dis_cnt_DSTATE = (u16)((u32)(((u32)LogicalOperator2_e) + ((u32)
    Switch_n)));
  if (RelationalOperator_a) {
    Switch_n = ((u16)30U);
  } else {
    Switch_n = HsfbCtrl_DW.en_cnt_DSTATE;
  }

  HsfbCtrl_DW.en_cnt_DSTATE = (u16)((u32)(((u32)LogicalOperator3_a) + ((u32)
    Switch_n)));
  HsfbCtrl_DW.out_delay_DSTATE = Merge;
  HsfbCtrl_DW.Vin_delay1_DSTATE = HsfbCtrl_MeasStatus100us->Vin.Real;
  if (RelationalOperator_g) {
    Switch_n = ((u16)3U);
  } else {
    Switch_n = HsfbCtrl_DW.dis_cnt_DSTATE_o;
  }

  HsfbCtrl_DW.dis_cnt_DSTATE_o = (u16)((u32)(((u32)LogicalOperator2_o) + ((u32)
    Switch_n)));
  if (RelationalOperator) {
    Switch_n = ((u16)30U);
  } else {
    Switch_n = HsfbCtrl_DW.en_cnt_DSTATE_j;
  }

  HsfbCtrl_DW.en_cnt_DSTATE_j = (u16)((u32)(((u32)LogicalOperator3_m) + ((u32)
    Switch_n)));
  HsfbCtrl_DW.out_delay_DSTATE_h = Merge_j;
  if (RelationalOperator_d) {
    Switch_n = ((u16)1U);
  } else {
    Switch_n = HsfbCtrl_DW.dis_cnt_DSTATE_i;
  }

  HsfbCtrl_DW.dis_cnt_DSTATE_i = (u16)((u32)(((u32)Compare_j) + ((u32)Switch_n)));
  if (RelationalOperator_ff) {
    Switch_n = ((u16)500U);
  } else {
    Switch_n = HsfbCtrl_DW.en_cnt_DSTATE_c;
  }

  HsfbCtrl_DW.en_cnt_DSTATE_c = (u16)((u32)(((u32)Compare_a) + ((u32)Switch_n)));
  HsfbCtrl_DW.out_delay_DSTATE_i = Merge_b;
  HsfbCtrl_DW.ref_delay_DSTATE = Switch_g;
  HsfbCtrl_DW.Vin_delay1_DSTATE_g = HsfbCtrl_DW.Real;
  HsfbCtrl_DW.Vin_delay_DSTATE_d = HsfbCtrl_DW.Real;
  HsfbCtrl_DW.y_delay_DSTATE_o = Switch_nr;
}

# 1 "../30_Bsw/Mpu/MPU_MemMap.h" 1
# 255 "../30_Bsw/Mpu/MPU_MemMap.h"
#pragma section
# 432 "../40_Appl/HsfbCtrl/HsfbCtrl.c" 2






# 1 "../30_Bsw/Mpu/MPU_MemMap.h" 1
# 242 "../30_Bsw/Mpu/MPU_MemMap.h"
#pragma section ".text.MPU_ASIL_CODE" ax 8
# 439 "../40_Appl/HsfbCtrl/HsfbCtrl.c" 2
static void HsfbCtrl_Precharge(void)
{
  f32 VinRise;
  f32 RiseCntMax;
  bit guard1 = (0U);
  if (!HsfbCtrl_DW.RelationalOperator_l) {
    HsfbCtrl_DW.is_Precharge = ((u8)0U);
    HsfbCtrl_DW.is_c6_HsfbCtrl = ((u8)1U);
    HsfbCtrl_PrechargeCnt = 0U;
    HsfbCtrl_DW.IchCtrlDis = (1U);
    HsfbCtrl_DW.IoutCtrlDis = (0U);
    HsfbCtrl_DW.VinShortEn = (0U);
    HsfbCtrl_DW.StartCnt = 0U;
    HsfbCtrl_Error.BoostRampFin = (0U);
    HsfbCtrl_Error.BoostRampFail = (0U);
  } else {
    guard1 = (0U);
    if (HsfbCtrl_PrechargeCnt >= ((u16)2U)) {
      guard1 = (1U);
    } else if (HsfbCtrl_DW.StartCnt >= ((u16)2U)) {
      HsfbCtrl_Error.BoostVinShort = (1U);
      guard1 = (1U);
    } else {
      VinRise = HsfbCtrl_DW.Gain1 - HsfbCtrl_Param.PreVinTarget;
      RiseCntMax = 12000.0F;
      if ((HsfbCtrl_Param.PreVinTarget > 0.0F) && (HsfbCtrl_Param.PreVinSrRise >
           0.0F)) {
        RiseCntMax = (25.0F * HsfbCtrl_Param.PreVinTarget) /
          HsfbCtrl_Param.PreVinSrRise;
        if (RiseCntMax < 12000.0F) {
          RiseCntMax = 12000.0F;
        }
      }

      switch (HsfbCtrl_DW.is_Precharge) {
       case ((u8)1U):
        if (HsfbCtrl_MeasStatus100us->Vin.Real < VinRise) {
          HsfbCtrl_PrechargeCnt = (u16)((s32)(((s32)HsfbCtrl_PrechargeCnt) + 1));
          HsfbCtrl_DW.is_Precharge = ((u8)2U);
          HsfbCtrl_DW.IchRef = HsfbCtrl_Param.PreVinSrRise;
          HsfbCtrl_DW.IoutMax = 60.0F;
          HsfbCtrl_DW.IchCtrlDis = (0U);
          HsfbCtrl_DW.IoutCtrlDis = (0U);
          HsfbCtrl_DW.VinShortEn = (0U);
          HsfbCtrl_DW.RiseCnt = (u16)((s32)(((s32)HsfbCtrl_DW.RiseCnt) + 1));
        } else {
          HsfbCtrl_DW.IchRef = -HsfbCtrl_Param.PreVinSrRise;
          HsfbCtrl_DW.IoutMax = 60.0F;
          HsfbCtrl_DW.IchCtrlDis = (1U);
          HsfbCtrl_DW.IoutCtrlDis = (1U);
          HsfbCtrl_DW.VinShortEn = (0U);
          HsfbCtrl_DW.RiseCnt = 0U;
        }
        break;

       case ((u8)2U):
        if (HsfbCtrl_MeasStatus100us->Vin.Real < (VinRise - 75.0F)) {
          HsfbCtrl_DW.StartCnt = (u16)((s32)(((s32)HsfbCtrl_DW.StartCnt) + 1));
          HsfbCtrl_DW.is_Precharge = ((u8)3U);
          HsfbCtrl_DW.IchRef = 3.0F;
          HsfbCtrl_DW.IoutMax = HsfbCtrl_Param.IoutBoostMax;
          HsfbCtrl_DW.IchCtrlDis = (0U);
          HsfbCtrl_DW.IoutCtrlDis = (0U);
          HsfbCtrl_DW.VinShortEn = (1U);
          HsfbCtrl_DW.RiseCnt = 0U;
        } else if ((HsfbCtrl_MeasStatus100us->Vin.Real > (HsfbCtrl_DW.Gain1 +
                     HsfbCtrl_Param.PreVinTarget)) || (((f32)HsfbCtrl_DW.RiseCnt)
                    > RiseCntMax)) {
          HsfbCtrl_DW.is_Precharge = ((u8)1U);
          HsfbCtrl_DW.IchRef = -HsfbCtrl_Param.PreVinSrRise;
          HsfbCtrl_DW.IoutMax = 60.0F;
          HsfbCtrl_DW.IchCtrlDis = (1U);
          HsfbCtrl_DW.IoutCtrlDis = (1U);
          HsfbCtrl_DW.VinShortEn = (0U);
          HsfbCtrl_DW.RiseCnt = 0U;
        } else if ((HsfbCtrl_MeasStatus100us->Vin.Real < (VinRise - 10.0F)) &&
                   (((s32)HsfbCtrl_PrechargeCnt) == 1)) {
          HsfbCtrl_Error.BoostRampFail = (1U);
          HsfbCtrl_DW.is_Precharge = ((u8)2U);
          HsfbCtrl_DW.IchRef = HsfbCtrl_Param.PreVinSrRise;
          HsfbCtrl_DW.IoutMax = 60.0F;
          HsfbCtrl_DW.IchCtrlDis = (0U);
          HsfbCtrl_DW.IoutCtrlDis = (0U);
          HsfbCtrl_DW.VinShortEn = (0U);
          HsfbCtrl_DW.RiseCnt = (u16)((s32)(((s32)HsfbCtrl_DW.RiseCnt) + 1));
        } else {
          HsfbCtrl_DW.IchRef = HsfbCtrl_Param.PreVinSrRise;
          HsfbCtrl_DW.IoutMax = 60.0F;
          HsfbCtrl_DW.IchCtrlDis = (0U);
          HsfbCtrl_DW.IoutCtrlDis = (0U);
          HsfbCtrl_DW.VinShortEn = (0U);
          HsfbCtrl_DW.RiseCnt = (u16)((s32)(((s32)HsfbCtrl_DW.RiseCnt) + 1));
        }
        break;

       default:

        if (HsfbCtrl_MeasStatus100us->Vin.Real > VinRise) {
          HsfbCtrl_DW.is_Precharge = ((u8)2U);
          HsfbCtrl_DW.IchRef = HsfbCtrl_Param.PreVinSrRise;
          HsfbCtrl_DW.IoutMax = 60.0F;
          HsfbCtrl_DW.IchCtrlDis = (0U);
          HsfbCtrl_DW.IoutCtrlDis = (0U);
          HsfbCtrl_DW.VinShortEn = (0U);
          HsfbCtrl_DW.RiseCnt = (u16)((s32)(((s32)HsfbCtrl_DW.RiseCnt) + 1));
        } else {
          HsfbCtrl_DW.IchRef = 3.0F;
          HsfbCtrl_DW.IoutMax = HsfbCtrl_Param.IoutBoostMax;
          HsfbCtrl_DW.IchCtrlDis = (0U);
          HsfbCtrl_DW.IoutCtrlDis = (0U);
          HsfbCtrl_DW.VinShortEn = (1U);
          HsfbCtrl_DW.RiseCnt = 0U;
        }
        break;
      }
    }

    if (guard1) {
      HsfbCtrl_DW.is_Precharge = ((u8)0U);
      HsfbCtrl_DW.is_c6_HsfbCtrl = ((u8)3U);
      HsfbCtrl_PrechargeCnt = 0U;
      HsfbCtrl_DW.IchCtrlDis = (1U);
      HsfbCtrl_DW.IoutCtrlDis = (1U);
      HsfbCtrl_DW.VinShortEn = (0U);
      HsfbCtrl_DW.StartCnt = 0U;
      HsfbCtrl_Error.BoostRampFin = (1U);
    }
  }
}

# 1 "../30_Bsw/Mpu/MPU_MemMap.h" 1
# 255 "../30_Bsw/Mpu/MPU_MemMap.h"
#pragma section
# 570 "../40_Appl/HsfbCtrl/HsfbCtrl.c" 2






# 1 "../30_Bsw/Mpu/MPU_MemMap.h" 1
# 242 "../30_Bsw/Mpu/MPU_MemMap.h"
#pragma section ".text.MPU_ASIL_CODE" ax 8
# 577 "../40_Appl/HsfbCtrl/HsfbCtrl.c" 2
void HsfbCtrl_Precharge_State(void)
{
  if (((u32)HsfbCtrl_DW.is_active_c6_HsfbCtrl) == 0U) {
    HsfbCtrl_DW.is_active_c6_HsfbCtrl = 1U;
    HsfbCtrl_DW.is_c6_HsfbCtrl = ((u8)1U);
    HsfbCtrl_PrechargeCnt = 0U;
    HsfbCtrl_DW.IchCtrlDis = (1U);
    HsfbCtrl_DW.IoutCtrlDis = (0U);
    HsfbCtrl_DW.VinShortEn = (0U);
    HsfbCtrl_DW.StartCnt = 0U;
    HsfbCtrl_Error.BoostRampFin = (0U);
    HsfbCtrl_Error.BoostRampFail = (0U);
  } else {
    switch (HsfbCtrl_DW.is_c6_HsfbCtrl) {
     case ((u8)1U):
      if (HsfbCtrl_DW.RelationalOperator_l) {
        HsfbCtrl_DW.is_c6_HsfbCtrl = ((u8)2U);
        HsfbCtrl_DW.is_Precharge = ((u8)3U);
        HsfbCtrl_DW.IchRef = 3.0F;
        HsfbCtrl_DW.IoutMax = HsfbCtrl_Param.IoutBoostMax;
        HsfbCtrl_DW.IchCtrlDis = (0U);
        HsfbCtrl_DW.IoutCtrlDis = (0U);
        HsfbCtrl_DW.VinShortEn = (1U);
        HsfbCtrl_DW.RiseCnt = 0U;
      } else {
        HsfbCtrl_PrechargeCnt = 0U;
        HsfbCtrl_DW.IchCtrlDis = (1U);
        HsfbCtrl_DW.IoutCtrlDis = (0U);
        HsfbCtrl_DW.VinShortEn = (0U);
        HsfbCtrl_DW.StartCnt = 0U;
        HsfbCtrl_Error.BoostRampFin = (0U);
        HsfbCtrl_Error.BoostRampFail = (0U);
      }
      break;

     case ((u8)2U):
      HsfbCtrl_Precharge();
      break;

     default:

      if (!HsfbCtrl_DW.RelationalOperator_l) {
        HsfbCtrl_DW.is_c6_HsfbCtrl = ((u8)1U);
        HsfbCtrl_PrechargeCnt = 0U;
        HsfbCtrl_DW.IchCtrlDis = (1U);
        HsfbCtrl_DW.IoutCtrlDis = (0U);
        HsfbCtrl_DW.VinShortEn = (0U);
        HsfbCtrl_DW.StartCnt = 0U;
        HsfbCtrl_Error.BoostRampFin = (0U);
        HsfbCtrl_Error.BoostRampFail = (0U);
      } else {
        HsfbCtrl_PrechargeCnt = 0U;
        HsfbCtrl_DW.IchCtrlDis = (1U);
        HsfbCtrl_DW.IoutCtrlDis = (1U);
        HsfbCtrl_DW.VinShortEn = (0U);
        HsfbCtrl_DW.StartCnt = 0U;
        HsfbCtrl_Error.BoostRampFin = (1U);
      }
      break;
    }
  }
}

# 1 "../30_Bsw/Mpu/MPU_MemMap.h" 1
# 255 "../30_Bsw/Mpu/MPU_MemMap.h"
#pragma section
# 641 "../40_Appl/HsfbCtrl/HsfbCtrl.c" 2






# 1 "../30_Bsw/Mpu/MPU_MemMap.h" 1
# 242 "../30_Bsw/Mpu/MPU_MemMap.h"
#pragma section ".text.MPU_ASIL_CODE" ax 8
# 648 "../40_Appl/HsfbCtrl/HsfbCtrl.c" 2
void HsfbCtrl_Boost_Ctrl_100us(void)
{
  f32 y_delay;
  f32 Gain_f;
  bit LogicalOperator_n;
  f32 VoutMin;
  f32 Min;
  f32 Step_Out;
  u16 Switch_fj;
  bit LogicalOperator_b;
  u16 Switch_ob;
  f32 Switch_f;
  f32 u0_tmp;
  HsfbCtrl_DW.Gain1 = 0.1F * ((f32)HsfbCtrl_AppRx10ms->VinRef);
  HsfbCtrl_Precharge_State();
  if (((s32)HsfbCtrl_BoostMode) > 0) {
    y_delay = HsfbCtrl_Param.IoutBoostMax;
  } else {
    y_delay = 80.0F;
  }

  u0_tmp = 0.1F * ((f32)HsfbCtrl_AppRx10ms->IoutRef);
  if (u0_tmp < HsfbCtrl_DW.IoutMax) {
    Step_Out = u0_tmp;
  } else {
    Step_Out = HsfbCtrl_DW.IoutMax;
  }

  Min = ((HsfbCtrl_MeasStatus100us->Vin.Real + 20.0F) /
         (HsfbCtrl_MeasStatus100us->Vout.Real + 0.1F)) *
    12.0F;
  if (Step_Out < Min) {
    Min = Step_Out;
  }

  if (Min >= y_delay) {
    Min = y_delay;
  }

  if ((HsfbCtrl_MeasStatus100us->Vout.Real <= 10.0F) &&
      (!HsfbCtrl_DW.IoutCtrlDis)) {
    VoutMin = 0.4F;
  } else {
    VoutMin = 0.0F;
  }

  y_delay = VoutMin - HsfbCtrl_DW.Delay_DSTATE;
  if (y_delay > 0.001F) {
    y_delay = 0.001F;
  } else {
    if (y_delay < -0.001F) {
      y_delay = -0.001F;
    }
  }

  y_delay += HsfbCtrl_DW.Delay_DSTATE;
  VoutMin = ((HsfbCtrl_Param.PreVlimMin + 0.1F) + 0.4F) - y_delay;
  Gain_f = (VoutMin + 2.0F) - HsfbCtrl_MeasStatus100us->Vout.Real;
  if (Gain_f > 1.0F) {
    Gain_f = 1.0F;
  } else {
    if (Gain_f < 0.0F) {
      Gain_f = 0.0F;
    }
  }

  Switch_f = HsfbCtrl_MeasStatus100us->Vout.Real - VoutMin;
  Gain_f = (((HsfbCtrl_MeasStatus100us->Vout.Real - HsfbCtrl_DW.Delay_DSTATE_d) *
             3.0F) * Gain_f) + (Switch_f * 0.4F);
  if (Gain_f > 2.0F) {
    Gain_f = 2.0F;
  } else {
    if (Gain_f < -2.0F) {
      Gain_f = -2.0F;
    }
  }

  Step_Out = HsfbCtrl_DW.Delay_DSTATE_a - Gain_f;
  if (Step_Out > Min) {
    Step_Out = Min;
  } else {
    if (HsfbCtrl_MeasStatus100us->Iout.Real > 0.0F) {
      VoutMin = HsfbCtrl_MeasStatus100us->Iout.Real;
    } else {
      VoutMin = -HsfbCtrl_MeasStatus100us->Iout.Real;
    }

    Gain_f = Switch_f * 20.0F;
    if (HsfbCtrl_DW.Delay1_DSTATE < (VoutMin + 5.0F)) {
      VoutMin = HsfbCtrl_DW.Delay1_DSTATE;
    } else {
      VoutMin += 5.0F;
    }

    if (Gain_f > 2.0F) {
      Gain_f = 2.0F;
    } else {
      if (Gain_f < 0.1F) {
        Gain_f = 0.1F;
      }
    }

    VoutMin = (Min - VoutMin) - Gain_f;
    if (VoutMin <= 0.0F) {
      VoutMin = 0.0F;
    }

    if (Step_Out < VoutMin) {
      Step_Out = VoutMin;
    }
  }

  Min -= Step_Out;
  if (((Min <= 10.0F) && (!HsfbCtrl_DW.IchCtrlDis)) &&
      (HsfbCtrl_MeasStatus100us->Vout.Real <= (HsfbCtrl_Param.PreVlimMin + 0.1F)))
  {
    Switch_fj = HsfbCtrl_DW.cnt_delay_DSTATE;
  } else {
    Switch_fj = 0U;
  }

  LogicalOperator_n = (Switch_fj >= ((u16)50U));
  HsfbCtrl_Error.BoostVoutLimit = LogicalOperator_n;
  Gain_f = (HsfbCtrl_MeasStatus100us->Vin.Real - HsfbCtrl_DW.Vin_delay_DSTATE) *
    10.0F;
  VoutMin = ((Gain_f - HsfbCtrl_DW.y_delay_DSTATE) * 0.01F) +
    HsfbCtrl_DW.y_delay_DSTATE;
  if (((VoutMin <= 0.25F) && (HsfbCtrl_DW.VinShortEn)) &&
      (HsfbCtrl_MeasStatus100us->Vout.Real > 9.5F)) {
    Switch_ob = HsfbCtrl_DW.cnt_delay_DSTATE_c;
  } else {
    Switch_ob = 0U;
  }

  HsfbCtrl_Error.BoostVinShort = (Switch_ob >= ((u16)1500U));
  LogicalOperator_b = ((((s32)HsfbCtrl_AppRx10ms->TestPulseEn) != 0) &&
                       (HsfbCtrl_Error.BoostRampFin));
  HsfbCtrl_DW.Switch1 = ((!LogicalOperator_b) && (HsfbCtrl_DW.IoutCtrlDis));
  HsfbCtrl_EnDis.PriDis = HsfbCtrl_DW.Switch1;
  HsfbCtrl_EnDis.SrDis = HsfbCtrl_DW.Switch1;
  HsfbCtrl_EnDis.ClampDis = HsfbCtrl_DW.Switch1;
  Gain_f = ((Gain_f - HsfbCtrl_DW.y_delay_DSTATE_b) * 0.2F) +
    HsfbCtrl_DW.y_delay_DSTATE_b;
  HsfbCtrl_PI_Calc((!HsfbCtrl_DW.RelationalOperator_l) ||
                   (HsfbCtrl_DW.IchCtrlDis), HsfbCtrl_DW.IchRef - Gain_f,
                   HsfbCtrl_Ich_Boost_PI.Kp, HsfbCtrl_Ich_Boost_PI.Kz *
                   HsfbCtrl_Ich_Boost_PI.Ts, Min, -Min, &Switch_f,
                   &HsfbCtrl_DW.PI_Calc_g);
  if (LogicalOperator_b) {
    HsfbCtrl_DW.Switch_gb = u0_tmp;
  } else {
    HsfbCtrl_DW.Switch_gb = Switch_f;
  }

  LogicalOperator_n = !LogicalOperator_n;
  HsfbCtrl_DW.cnt_delay_DSTATE = (u16)((u32)(((u32)LogicalOperator_n) + ((u32)
    Switch_fj)));
  HsfbCtrl_DW.Delay_DSTATE = y_delay;
  HsfbCtrl_DW.Delay_DSTATE_d = HsfbCtrl_MeasStatus100us->Vout.Real;
  HsfbCtrl_DW.Delay_DSTATE_a = Step_Out;
  HsfbCtrl_DW.Delay1_DSTATE = Switch_f;
  HsfbCtrl_DW.cnt_delay_DSTATE_c = (u16)((u32)(((u32)
    (!HsfbCtrl_Error.BoostVinShort)) + ((u32)Switch_ob)));
  HsfbCtrl_DW.Vin_delay_DSTATE = HsfbCtrl_MeasStatus100us->Vin.Real;
  HsfbCtrl_DW.y_delay_DSTATE = VoutMin;
  HsfbCtrl_DW.y_delay_DSTATE_b = Gain_f;
}

# 1 "../30_Bsw/Mpu/MPU_MemMap.h" 1
# 255 "../30_Bsw/Mpu/MPU_MemMap.h"
#pragma section
# 817 "../40_Appl/HsfbCtrl/HsfbCtrl.c" 2






# 1 "../30_Bsw/Mpu/MPU_MemMap.h" 1
# 242 "../30_Bsw/Mpu/MPU_MemMap.h"
#pragma section ".text.MPU_ASIL_CODE" ax 8
# 824 "../40_Appl/HsfbCtrl/HsfbCtrl.c" 2
void HsfbCtrl_Reset(void)
{
  HsfbCtrl_Error.BuckVoltage = (0U);
  HsfbCtrl_Error.BuckTopology = (0U);
  HsfbCtrl_Error.BuckPowerLow = (0U);
  HsfbCtrl_Error.BoostRampFin = (0U);
  HsfbCtrl_Error.BoostVoutLimit = (0U);
  HsfbCtrl_Error.BoostVinShort = (0U);
  HsfbCtrl_EnDis.PriDis = (0U);
  HsfbCtrl_EnDis.SrDis = (0U);
  HsfbCtrl_EnDis.ClampDis = (0U);
}

# 1 "../30_Bsw/Mpu/MPU_MemMap.h" 1
# 255 "../30_Bsw/Mpu/MPU_MemMap.h"
#pragma section
# 838 "../40_Appl/HsfbCtrl/HsfbCtrl.c" 2






# 1 "../30_Bsw/Mpu/MPU_MemMap.h" 1
# 242 "../30_Bsw/Mpu/MPU_MemMap.h"
#pragma section ".text.MPU_ASIL_CODE" ax 8
# 845 "../40_Appl/HsfbCtrl/HsfbCtrl.c" 2
void HsfbCtrl_Reset_100us(void)
{
  if (((u32)HsfbCtrl_DW.is_active_c8_HsfbCtrl) == 0U) {
    HsfbCtrl_DW.is_active_c8_HsfbCtrl = 1U;
    HsfbCtrl_DW.is_c8_HsfbCtrl = ((u8)1U);
    HsfbCtrl_Reset();
  } else if (HsfbCtrl_DW.is_c8_HsfbCtrl == ((u8)1U)) {
    if (HsfbCtrl_DW.RelationalOperator_l) {
      HsfbCtrl_DW.is_c8_HsfbCtrl = ((u8)2U);
    }
  } else {

    if (!HsfbCtrl_DW.RelationalOperator_l) {
      HsfbCtrl_DW.is_c8_HsfbCtrl = ((u8)1U);
      HsfbCtrl_Reset();
    }
  }
}

# 1 "../30_Bsw/Mpu/MPU_MemMap.h" 1
# 255 "../30_Bsw/Mpu/MPU_MemMap.h"
#pragma section
# 865 "../40_Appl/HsfbCtrl/HsfbCtrl.c" 2






# 1 "../30_Bsw/Mpu/MPU_MemMap.h" 1
# 268 "../30_Bsw/Mpu/MPU_MemMap.h"
#pragma section ".code_ram" ax 8
# 872 "../40_Appl/HsfbCtrl/HsfbCtrl.c" 2
void HsfbCtrl_Buck_Ctrl_15us(void)
{
  f32 Switch_p4;
  f32 Switch_i;
  f32 HsfbCtrl_PwmStatus15us_0;
  Switch_p4 = HsfbCtrl_DW.Add1_o - HsfbCtrl_MeasStatus15us->Vout.Real;
  if ((Switch_p4 < 0.02F) && (Switch_p4 >
       (-0.02F))) {
    Switch_i = 0.0F;
  } else {
    Switch_i = Switch_p4;
  }

  if (HsfbCtrl_PwmStatus15us->TopoState > 1.0F) {
    HsfbCtrl_PwmStatus15us_0 = 1.0F;
  } else if (HsfbCtrl_PwmStatus15us->TopoState < 0.0F) {
    HsfbCtrl_PwmStatus15us_0 = 0.0F;
  } else {
    HsfbCtrl_PwmStatus15us_0 = HsfbCtrl_PwmStatus15us->TopoState;
  }

  HsfbCtrl_PI_Calc(!HsfbCtrl_DW.RelationalOperator_m, Switch_i,
                   HsfbCtrl_Vout_Buck_PI.Kp, HsfbCtrl_Vout_Buck_PI.Kz *
                   HsfbCtrl_Vout_Buck_PI.Ts, HsfbCtrl_Vout_Buck_PI.OutMax /
                   (HsfbCtrl_PwmStatus15us_0 + 1.0F),
                   HsfbCtrl_Vout_Buck_PI.OutMin, &Switch_p4,
                   &HsfbCtrl_DW.PI_Calc_c);
  if (HsfbCtrl_PwmStatus15us->TopoState > 1.0F) {
    HsfbCtrl_PwmStatus15us_0 = 1.0F;
  } else if (HsfbCtrl_PwmStatus15us->TopoState < 0.0F) {
    HsfbCtrl_PwmStatus15us_0 = 0.0F;
  } else {
    HsfbCtrl_PwmStatus15us_0 = HsfbCtrl_PwmStatus15us->TopoState;
  }

  HsfbCtrl_CtrlStatus15us->BuckDuty = (HsfbCtrl_PwmStatus15us_0 + 1.0F) *
    Switch_p4;
}

# 1 "../30_Bsw/Mpu/MPU_MemMap.h" 1
# 281 "../30_Bsw/Mpu/MPU_MemMap.h"
#pragma section
# 912 "../40_Appl/HsfbCtrl/HsfbCtrl.c" 2






# 1 "../30_Bsw/Mpu/MPU_MemMap.h" 1
# 268 "../30_Bsw/Mpu/MPU_MemMap.h"
#pragma section ".code_ram" ax 8
# 919 "../40_Appl/HsfbCtrl/HsfbCtrl.c" 2
void HsfbCtrl_Boost_Ctrl_15us(void)
{
  HsfbCtrl_PI_Calc(!HsfbCtrl_DW.LogicalOperator_a, HsfbCtrl_DW.Switch_gb -
                   (-HsfbCtrl_MeasStatus15us->Iout.Real),
                   HsfbCtrl_Iout_Boost_PI.Kp, HsfbCtrl_Iout_Boost_PI.Kz *
                   HsfbCtrl_Iout_Boost_PI.Ts, HsfbCtrl_Iout_Boost_PI.OutMax,
                   HsfbCtrl_Iout_Boost_PI.OutMin, &HsfbCtrl_DW.Switch_pm,
                   &HsfbCtrl_DW.PI_Calc_m);
  HsfbCtrl_DW.Relay_Mode = ((HsfbCtrl_DW.Switch_pm >= 0.55F) ||
    ((HsfbCtrl_DW.Switch_pm > 0.5F) &&
     (HsfbCtrl_DW.Relay_Mode)));
  HsfbCtrl_BoostMode = (u16)HsfbCtrl_DW.Relay_Mode;
}

# 1 "../30_Bsw/Mpu/MPU_MemMap.h" 1
# 281 "../30_Bsw/Mpu/MPU_MemMap.h"
#pragma section
# 934 "../40_Appl/HsfbCtrl/HsfbCtrl.c" 2






# 1 "../30_Bsw/Mpu/MPU_MemMap.h" 1
# 268 "../30_Bsw/Mpu/MPU_MemMap.h"
#pragma section ".code_ram" ax 8
# 941 "../40_Appl/HsfbCtrl/HsfbCtrl.c" 2
void HsfbCtrl_Call100us(const HSFBMEAS_S_STATUS100US *MeasStatus100us, const
  HSFBPWM_S_STATUS15US *PwmStatus15us, const HSFBAPP_S_RX *AppRx10ms,
  HSFBCTRL_S_STATUS100US *CtrlStatus100us)
{
  HsfbCtrl_MeasStatus100us = MeasStatus100us;
  HsfbCtrl_PwmStatus15us = PwmStatus15us;
  HsfbCtrl_AppRx10ms = AppRx10ms;
  HsfbCtrl_GetParamData(&HsfbCtrl_Param);
  if (PwmStatus15us->PwmState == HSFBPWM_E_STATE_Charge) {
    HsfbCtrl_EnDis.PriDis = (0U);
    HsfbCtrl_EnDis.SrDis = (0U);
    HsfbCtrl_EnDis.ClampDis = (0U);
  }

  HsfbCtrl_DW.RelationalOperator_l = (PwmStatus15us->PwmState ==
    HSFBPWM_E_STATE_SteadyRun);
  HsfbCtrl_Reset_100us();
  if (AppRx10ms->Operation == ((u16)0U)) {
    HsfbCtrl_Buck_Ctrl_100us();
  } else {
    if (AppRx10ms->Operation == ((u16)1U)) {
      HsfbCtrl_Boost_Ctrl_100us();
    }
  }

  CtrlStatus100us->CtrlEnDis = HsfbCtrl_EnDis;
}

# 1 "../30_Bsw/Mpu/MPU_MemMap.h" 1
# 281 "../30_Bsw/Mpu/MPU_MemMap.h"
#pragma section
# 970 "../40_Appl/HsfbCtrl/HsfbCtrl.c" 2






# 1 "../30_Bsw/Mpu/MPU_MemMap.h" 1
# 268 "../30_Bsw/Mpu/MPU_MemMap.h"
#pragma section ".code_ram" ax 8
# 977 "../40_Appl/HsfbCtrl/HsfbCtrl.c" 2
void HsfbCtrl_Call15us(const HSFBMEAS_S_STATUS15US *MeasStatus15us, const
  HSFBPWM_S_STATUS15US *PwmStatus15us, const HSFBAPP_S_RX *AppRx10ms,
  HSFBCTRL_S_STATUS15US *CtrlStatus15us)
{
  HsfbCtrl_MeasStatus15us = MeasStatus15us;
  HsfbCtrl_PwmStatus15us = PwmStatus15us;
  HsfbCtrl_CtrlStatus15us = CtrlStatus15us;
  HsfbCtrl_DW.RelationalOperator_m = (PwmStatus15us->PwmState ==
    HSFBPWM_E_STATE_SteadyRun);
  HsfbCtrl_DW.LogicalOperator_a = ((!HsfbCtrl_DW.Switch1) &&
    (HsfbCtrl_DW.RelationalOperator_m));
  if (AppRx10ms->Operation == ((u16)0U)) {
    HsfbCtrl_Buck_Ctrl_15us();
  } else {
    if (AppRx10ms->Operation == ((u16)1U)) {
      HsfbCtrl_Boost_Ctrl_15us();
    }
  }

  CtrlStatus15us->CtrlError = HsfbCtrl_Error;
  CtrlStatus15us->BoostDuty = HsfbCtrl_DW.Switch_pm;
}

# 1 "../30_Bsw/Mpu/MPU_MemMap.h" 1
# 281 "../30_Bsw/Mpu/MPU_MemMap.h"
#pragma section
# 1001 "../40_Appl/HsfbCtrl/HsfbCtrl.c" 2






# 1 "../30_Bsw/Mpu/MPU_MemMap.h" 1
# 294 "../30_Bsw/Mpu/MPU_MemMap.h"
#pragma section ".text.MPU_QM_CODE" ax 8
# 1008 "../40_Appl/HsfbCtrl/HsfbCtrl.c" 2
void HsfbCtrl_CallInit(void)
{
  HsfbCtrl_Iout_Buck_PI.Kp = 0.002F;
  HsfbCtrl_Iout_Buck_PI.Kz = 1000.0F;
  HsfbCtrl_Iout_Buck_PI.Ts = 0.0001F;
  HsfbCtrl_Iout_Buck_PI.OutMax = 16.5F;
  HsfbCtrl_Iout_Buck_PI.OutMin = -16.5F;
  HsfbCtrl_Ich_Boost_PI.Kp = 0.5F;
  HsfbCtrl_Ich_Boost_PI.Kz = 7500.0F;
  HsfbCtrl_Ich_Boost_PI.Ts = 0.0001F;
  HsfbCtrl_Ich_Boost_PI.OutMax = 250.0F;
  HsfbCtrl_Ich_Boost_PI.OutMin = -250.0F;
  HsfbCtrl_Iout_Boost_PI.Kp = 0.0001F;
  HsfbCtrl_Iout_Boost_PI.Kz = 10000.0F;
  HsfbCtrl_Iout_Boost_PI.Ts = 3.07692E-5F;
  HsfbCtrl_Iout_Boost_PI.OutMax = 0.98F;
  HsfbCtrl_Iout_Boost_PI.OutMin = 0.0F;
  HsfbCtrl_Vout_Buck_PI.Kp = 0.0004F;
  HsfbCtrl_Vout_Buck_PI.Kz = 65000.0F;
  HsfbCtrl_Vout_Buck_PI.Ts = 3.07692E-5F;
  HsfbCtrl_Vout_Buck_PI.OutMax = 0.48F;
  HsfbCtrl_Vout_Buck_PI.OutMin = 0.0F;
  HsfbCtrl_Param.IoutBoostMax = 160.0F;
  HsfbCtrl_Param.PreVinTarget = 25.0F;
  HsfbCtrl_Param.PreVinSrRise = 0.25F;
  HsfbCtrl_Param.PreVlimMin = 9.0F;
}

# 1 "../30_Bsw/Mpu/MPU_MemMap.h" 1
# 307 "../30_Bsw/Mpu/MPU_MemMap.h"
#pragma section
# 1037 "../40_Appl/HsfbCtrl/HsfbCtrl.c" 2
