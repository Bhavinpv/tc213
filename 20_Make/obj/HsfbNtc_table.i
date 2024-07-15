# 1 "../40_Appl/HsfbNtc/HsfbNtc_table.c"
# 1 "S:\\20_Make//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "../40_Appl/HsfbNtc/HsfbNtc_table.c"






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
# 8 "../40_Appl/HsfbNtc/HsfbNtc_table.c" 2
# 1 "../40_Appl/HsfbApp/HsfbApp_types.h" 1
# 9 "../40_Appl/HsfbApp/HsfbApp_types.h"
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
# 10 "../40_Appl/HsfbApp/HsfbApp_types.h" 2
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
# 11 "../40_Appl/HsfbApp/HsfbApp_types.h" 2
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
# 12 "../40_Appl/HsfbApp/HsfbApp_types.h" 2
# 9 "../40_Appl/HsfbNtc/HsfbNtc_table.c" 2





# 1 "../30_Bsw/Mpu/MPU_MemMap.h" 1
# 61 "../30_Bsw/Mpu/MPU_MemMap.h"
#pragma section ".rodata.MPU_ASIL_CONST" a
# 15 "../40_Appl/HsfbNtc/HsfbNtc_table.c" 2





const s32 HSFBNTC_TABLE_RTR25_MOS_B02[42] = { 25786, 28723, 32071, 35900, 40289,
  45335, 51153, 57883, 65691, 74781, 85396, 97838, 112470, 129750, 150220,
  174590, 203700, 238630, 280730, 331710, 393740, 469580, 562790, 677980, 821110,
  1000000, 1224900, 1509600, 1872200, 2337200, 2938000, 3719800, 4745400,
  6101900, 7911400, 10347000, 13657000, 18201000, 24504000, 33344000, 45889000,
  63917000 } ;

const s32 HSFBNTC_TABLE_RTR25_MOS_C0[191] = { 30850, 31500, 32150, 32830, 33520,
  34230, 34960, 35710, 36470, 37260, 38070, 38890, 39740, 40620, 41510, 42430,
  43380, 44350, 45350, 46370, 47420, 48500, 49610, 50740, 51910, 53110, 54350,
  55620, 56920, 58260, 59640, 61060, 62520, 64020, 65560, 67150, 68780, 70460,
  72190, 73970, 75800, 77690, 79630, 81620, 83680, 85800, 87980, 90220, 92540,
  94920, 97380, 99930, 102560, 105280, 108070, 110960, 113930, 117000, 120160,
  123430, 126800, 130250, 133810, 137490, 141290, 145210, 149270, 153450, 157770,
  162240, 166850, 171640, 176580, 181700, 186980, 192450, 198110, 203960, 210010,
  216270, 222750, 229430, 236350, 243510, 250930, 258610, 266570, 274820, 283370,
  292240, 301430, 311100, 321130, 331520, 342310, 353500, 365100, 377140, 389640,
  402620, 416090, 430080, 444610, 459710, 475390, 491690, 508630, 526230, 544540,
  563570, 583360, 603900, 625260, 647510, 670670, 694790, 719910, 746090, 773370,
  801810, 831450, 862420, 894700, 928350, 963420, 1000000, 1038150, 1077950,
  1119470, 1162810, 1208050, 1255400, 1304890, 1356640, 1410750, 1467350,
  1526580, 1588560, 1653440, 1721390, 1792550, 1866980, 1944950, 2026660,
  2112300, 2202110, 2296290, 2395090, 2498770, 2607600, 2721860, 2842310,
  2968900, 3102000, 3241970, 3389220, 3544170, 3707290, 3879050, 4059970,
  4250620, 4450580, 4661320, 4883490, 5117790, 5364960, 5625790, 5901130,
  6191900, 6499070, 6823670, 7167680, 7531570, 7916630, 8324240, 8755880,
  9213150, 9697760, 10211550, 10756490, 11334710, 11949360, 12602150, 13295760,
  14033040, 14817100, 15651250, 16539100, 17484520, 18491710, 19565200 } ;

const s32 HSFBNTC_TABLE_RTR25_WATIN[206] = { 18178, 18634, 19099, 19573, 20056,
  20551, 21056, 21574, 22103, 22646, 23203, 23774, 24360, 24962, 25581, 26218,
  26873, 27547, 28241, 28956, 29693, 30453, 31237, 32045, 32879, 33740, 34628,
  35546, 36493, 37472, 38482, 39527, 40606, 41721, 42874, 44066, 45297, 46570,
  47887, 49248, 50655, 52111, 53616, 55172, 56782, 58447, 60170, 61951, 63794,
  65701, 67674, 69715, 71827, 74013, 76276, 78618, 81042, 83552, 86151, 88842,
  91630, 94517, 97509, 100609, 103821, 107151, 110604, 114184, 117897, 121749,
  125745, 129893, 134199, 138670, 143313, 148137, 153148, 158357, 163772, 169402,
  175259, 181351, 187691, 194290, 201160, 208314, 215766, 223531, 231622, 240055,
  248848, 258017, 267580, 277557, 287967, 298831, 310172, 322012, 334376, 347289,
  360777, 374868, 389592, 404979, 421062, 437875, 455454, 473835, 493059, 513167,
  534203, 556213, 579247, 603354, 628591, 655015, 682686, 711669, 742034, 773852,
  807202, 842166, 878830, 917290, 957645, 1000000, 1044470, 1091170, 1140250,
  1191820, 1246050, 1303080, 1363100, 1426270, 1492800, 1562900, 1636770,
  1714670, 1796840, 1883560, 1975110, 2071790, 2173950, 2281930, 2396100,
  2516860, 2644630, 2779870, 2923040, 3074660, 3235260, 3405430, 3585760,
  3776910, 3979560, 4194450, 4422340, 4664080, 4920550, 5192690, 5481520,
  5788110, 6113640, 6459370, 6826640, 7216910, 7631780, 8072950, 8542280,
  9041790, 9573680, 10140300, 10744300, 11388500, 12075800, 12809600, 13593400,
  14431100, 15326600, 16284500, 17309300, 18406200, 19580300, 20837500, 22183800,
  23625700, 25170400, 26825700, 28600000, 30503100, 32545800, 34740400, 37101500,
  39645300, 42391000, 45360000, 48576400, 52066000, 55855600, 59971100, 64434300,
  69259700, 74450200, 79994200, 85865800, 92035500 } ;

const s32 HSFBNTC_TABLE_RTR25_WATOUT[42] = { 18137, 20416, 23040, 26073, 29589,
  33675, 38441, 44019, 50568, 58284, 67411, 78246, 91159, 106610, 125180, 147590,
  174770, 207870, 248380, 298230, 359870, 436530, 532390, 652970, 805600,
  1000000, 1249300, 1571100, 1989700, 2538100, 3262400, 4226800, 5521800,
  7276500, 9676100, 12990000, 17613300, 24132300, 33427400, 46836300, 66416900,
  95377400 } ;

const s16 HSFBNTC_TABLE_TEMP_MOS_B02[42] = { 1500, 1450, 1400, 1350, 1300, 1250,
  1200, 1150, 1100, 1050, 1000, 950, 900, 850, 800, 750, 700, 650, 600, 550, 500,
  450, 400, 350, 300, 250, 200, 150, 100, 50, 0, -50, -100, -150, -200, -250,
  -300, -350, -400, -450, -500, -550 } ;

const s16 HSFBNTC_TABLE_TEMP_MOS_C0[191] = { 1500, 1490, 1480, 1470, 1460, 1450,
  1440, 1430, 1420, 1410, 1400, 1390, 1380, 1370, 1360, 1350, 1340, 1330, 1320,
  1310, 1300, 1290, 1280, 1270, 1260, 1250, 1240, 1230, 1220, 1210, 1200, 1190,
  1180, 1170, 1160, 1150, 1140, 1130, 1120, 1110, 1100, 1090, 1080, 1070, 1060,
  1050, 1040, 1030, 1020, 1010, 1000, 990, 980, 970, 960, 950, 940, 930, 920,
  910, 900, 890, 880, 870, 860, 850, 840, 830, 820, 810, 800, 790, 780, 770, 760,
  750, 740, 730, 720, 710, 700, 690, 680, 670, 660, 650, 640, 630, 620, 610, 600,
  590, 580, 570, 560, 550, 540, 530, 520, 510, 500, 490, 480, 470, 460, 450, 440,
  430, 420, 410, 400, 390, 380, 370, 360, 350, 340, 330, 320, 310, 300, 290, 280,
  270, 260, 250, 240, 230, 220, 210, 200, 190, 180, 170, 160, 150, 140, 130, 120,
  110, 100, 90, 80, 70, 60, 50, 40, 30, 20, 10, 0, -10, -20, -30, -40, -50, -60,
  -70, -80, -90, -100, -110, -120, -130, -140, -150, -160, -170, -180, -190,
  -200, -210, -220, -230, -240, -250, -260, -270, -280, -290, -300, -310, -320,
  -330, -340, -350, -360, -370, -380, -390, -400 } ;

const s16 HSFBNTC_TABLE_TEMP_WATIN[206] = { 1500, 1490, 1480, 1470, 1460, 1450,
  1440, 1430, 1420, 1410, 1400, 1390, 1380, 1370, 1360, 1350, 1340, 1330, 1320,
  1310, 1300, 1290, 1280, 1270, 1260, 1250, 1240, 1230, 1220, 1210, 1200, 1190,
  1180, 1170, 1160, 1150, 1140, 1130, 1120, 1110, 1100, 1090, 1080, 1070, 1060,
  1050, 1040, 1030, 1020, 1010, 1000, 990, 980, 970, 960, 950, 940, 930, 920,
  910, 900, 890, 880, 870, 860, 850, 840, 830, 820, 810, 800, 790, 780, 770, 760,
  750, 740, 730, 720, 710, 700, 690, 680, 670, 660, 650, 640, 630, 620, 610, 600,
  590, 580, 570, 560, 550, 540, 530, 520, 510, 500, 490, 480, 470, 460, 450, 440,
  430, 420, 410, 400, 390, 380, 370, 360, 350, 340, 330, 320, 310, 300, 290, 280,
  270, 260, 250, 240, 230, 220, 210, 200, 190, 180, 170, 160, 150, 140, 130, 120,
  110, 100, 90, 80, 70, 60, 50, 40, 30, 20, 10, 0, -10, -20, -30, -40, -50, -60,
  -70, -80, -90, -100, -110, -120, -130, -140, -150, -160, -170, -180, -190,
  -200, -210, -220, -230, -240, -250, -260, -270, -280, -290, -300, -310, -320,
  -330, -340, -350, -360, -370, -380, -390, -400, -410, -420, -430, -440, -450,
  -460, -470, -480, -490, -500, -510, -520, -530, -540, -550 } ;

const s16 HSFBNTC_TABLE_TEMP_WATOUT[42] = { 1500, 1450, 1400, 1350, 1300, 1250,
  1200, 1150, 1100, 1050, 1000, 950, 900, 850, 800, 750, 700, 650, 600, 550, 500,
  450, 400, 350, 300, 250, 200, 150, 100, 50, 0, -50, -100, -150, -200, -250,
  -300, -350, -400, -450, -500, -550 } ;


# 1 "../30_Bsw/Mpu/MPU_MemMap.h" 1
# 74 "../30_Bsw/Mpu/MPU_MemMap.h"
#pragma section
# 123 "../40_Appl/HsfbNtc/HsfbNtc_table.c" 2
