#ifndef MAIN_API_H
#define MAIN_API_H

#include "project.h"
#include "Platform_Types.h"
#include "StandardTypes.h"
#include "StandardMacros.h"
#include "Safety_cfg.h"
#include "HsfbApp.h"
#include "mpu_api.h"
#include "mpu_cfg.h"
#include "IfxCpu_reg.h"

/* Defines ********************************************************************/
#define HWVER_VER			Main_HwVer.Ver
#define HWVER_CODENUM		Main_HwVer.CodeNum
#define HWVER_VERNAME		Main_HwVer.VerName
#define HWVER_APP			Main_HwVer.App
#define HWVER_EQU(x)		(HWVER_VER == MAIN_E_HW_##x)

#define HWVER_B0			(HWVER_EQU(B0))
#define HWVER_B01			(HWVER_EQU(B01_X10) || HWVER_EQU(B01_X10_DV))
#define HWVER_B02			(HWVER_EQU(B02_X10) || HWVER_EQU(B02_X10_DV))
#define HWVER_C0			(HWVER_EQU(C0) || HWVER_EQU(C0_DV))
#define HWVER_C1_C01_Pre	(HWVER_EQU(C1)|| HWVER_EQU(C1_DV))
#define HWVER_C1_C01	    (HWVER_EQU(C1_C01)|| HWVER_EQU(C1_C01_DV))
#define HWVER_C1_C02	    (HWVER_EQU(C1_C02)|| HWVER_EQU(C1_C02_DV))
#define HWVER_C1_BAK		(HWVER_EQU(C1_BAK13) || HWVER_EQU(C1_BAK14))
#define HWVER_C1			(HWVER_C1_C01_Pre || HWVER_C1_C01 ||HWVER_C1_C02|| HWVER_C1_BAK)
#define HWVER_ERR			(HWVER_EQU(Reserved))

#define ADC_HWVER_0			(HWVER_B01 || HWVER_B02)
#define ADC_HWVER_1			(HWVER_C0 || HWVER_C1)

#define GTM_HWVER_0			(HWVER_B01 || HWVER_B02)
#define GTM_HWVER_1			(HWVER_C0 || HWVER_C1)

#define PORT_HWVER_0		(HWVER_B01 || HWVER_B02)
#define PORT_HWVER_1		(HWVER_C0 || HWVER_C1)

#define GET_APPSTATUS()		Isr_AppStatus				// HsfbApp
#define GET_SAFETYERR(x)	SafetyError[x]				// HsfbDiag
#define GET_DEBUGERR(x)		DebugError[x]				// HsfbDiag
#define GET_HWVERERR()		(HWVER_ERR)					// HsfbDiag

#define GET_HWVER_PWM()		(HWVER_APP.Pwm)				// HsfbPwm
#define GET_HWVER_NTC()		(HWVER_APP.Ntc)				// HsfbNtc
#define GET_HWVER_SAFETY()	(HWVER_APP.Safety)			// HsfbSafety
#define GET_HWVER_MEAS()	(HWVER_APP.Meas)			// HsfbMeas

#define TIME_REG			STM0_TIM0.U
#define TM_ISR_NUM			4
#define TM_TICK_NUM			2

#define TM_ISR0				0
#define TM_ISR1				1
#define TM_ISR2				2
#define TM_ISR3				3

#define TM_START			1
#define TM_END				0

#define DELAY_MS_START		200
#define DELAY_MS_LATCH		200
#define DELAY_MS_OVP16V		400
#define DELAY_MS_OVP19V		10
#define DELAY_MS_OTP		10
#define DELAY_MS_KL30		10

#define MAIN_DEBUG			0

/* Defines ********************************************************************/
#define LIM(x,m,n)			if((x) > (m)) x = (m); \
							else if((x) < (n)) x = (n);
#define SRC(x,y,m)			if((x) - (y) > (m)) y += (m);\
  	  	  	  	  	  	  	else if((x) - (y) < -(m)) y -= (m);\
  	  	  	  	  	  	  	else y = (x);
#define ENSRC(en,r,x,y,m)	if(!(en)) y = (r);\
							else if((x) - (y) > (m)) y += (m);\
							else if((x) - (y) < -(m)) y -= (m);\
							else y = (x);
#define RELAY(x,y,m,n,l)	if((x) > (m)) y = (l);\
							else if((x) < (n)) y = !(l);
#define DZC(x,m)			if((x) < (m) && (x) > -(m)) x = 0;
#define LPF(x,y,a)			y += a*(x - y)
#define MAX(a,b)			((a) > (b)) ? (a) : (b)

/* Datas **********************************************************************/
typedef enum {
	MAIN_E_HW_B0 = 0,
	MAIN_E_HW_B01_X10,
	MAIN_E_HW_B01_X10_DV,
	MAIN_E_HW_B02_X10,
	MAIN_E_HW_B02_X10_DV,
	MAIN_E_HW_C0,
	MAIN_E_HW_C0_DV,
	MAIN_E_HW_C1,
	MAIN_E_HW_C1_DV,
	MAIN_E_HW_C1_C01,
	MAIN_E_HW_C1_C01_DV,
	MAIN_E_HW_C1_C02,
	MAIN_E_HW_C1_C02_DV,
	MAIN_E_HW_C1_BAK13,
	MAIN_E_HW_C1_BAK14,
	MAIN_E_HW_Reserved
} MAIN_E_HW_VER;

typedef struct {
	u16 App;
	u16 Meas;
	u16 Ctrl;
	u16 Pwm;
	u16 Diag;
	u16 Ntc;
	u16 State;
	u16 Safety;
} MAIN_E_HW_VER_APP;

typedef struct {
	u16 Code[4];
	u16 CodeNum;
	u16 VerName;
	MAIN_E_HW_VER Ver;
	MAIN_E_HW_VER_APP App;
} MAIN_S_HW_VER;

typedef struct {
	u16 Year;
    u16 Month;
    u16 Day;
    u16 Hour;
    u16 Min;
    u16 Sec;
} MAIN_S_BUILD_INFO;

/* Datas **********************************************************************/
extern MAIN_S_HW_VER Main_HwVer;
extern HSFBAPP_S_STATUS Isr_AppStatus;
extern bit SafetyError[4];
extern bit DebugError[4];
extern u16 Main_DebugErrCode;
extern bit Main_InitFin;

/* Functions ******************************************************************/
extern void delay_us_main(u32 time);
extern void delay_ms_main(u32 time);
extern u32 Main_GetBuildDate(void);
extern u32 Main_GetBuildTime(void);
extern u32 Main_GetSwVersion(void);
extern void Main_GetBuildInfo(MAIN_S_BUILD_INFO* BuildInfo);
extern void Main_GetHwVer(MAIN_S_HW_VER* HwVer);
extern void Main_GetHwVerApp();
extern u32 Main_UdsGetHwVer(void);

/* Debug **********************************************************************/
#if MAIN_DEBUG
#define PI2		6.2831853
#define PI2D	0.1591549
#define F2A		(PI2*0.0001)

#define DSP_128     128.0F
#define DSP_PI      3.14159274F
#define DSP_PI2     1.57079637F
#define DSP_2PI     6.28318548F
#define DSP_2PIINV  0.1591549430918F

struct DSP_S_SinTableF32 {
	float32 a;
	float32 b;
};

typedef struct OPLL_DEF{
	float32 Freq,Angle;
	float32 Cosref,Sinref;
	float32 Cosh[3],Sinh[3];
} OPLL_DEF;

typedef struct SPLL_DEF{
	float32 Input,Bias;
	float32 Vfa,Vfb,Vfi,Vfo,Vfe[3];
	float32 Vfd,Vfq;
	float32 Freq,FreqFil,FreqRate;
	float32 Adev,Aint,Aout;
	float32 AFreq,Angle;
	float32 Cosref,Sinref;
	float32 Cosh[3],Sinh[3];
} SPLL_DEF;

typedef struct SLPF_DEF{
    float32 Fil;
    float32 DsFil;
    float32 QsFil;
} SLPF_DEF;

typedef struct HARM_DET_DEF{
	uint16 IhNum;
	float32 Input,Kfil;
	float32 IhSum,IhDev;
	SLPF_DEF Ih[3];
} HARM_DET_DEF;

typedef struct MAIN_DEBUG_DEF{
	uint32 FreeCnt[2];
	float32 FreeDev;
	float32 IhGain;
	float32 Ihref;
	uint16 Reset,PllSel;
	uint16 LogEnCnt;
	uint16 LogCnt,LogNum;
	float32 IoutTrig;
	float32 Log[12][20];
	OPLL_DEF OPLL;
	SPLL_DEF SPLL;
	HARM_DET_DEF Vout;
	HARM_DET_DEF Iout;
	HARM_DET_DEF Vref;
	HARM_DET_DEF Duty;
} MAIN_DEBUG_DEF;

extern MAIN_DEBUG_DEF MainDebug;
#endif

#endif
