#ifndef GTM_API_H
#define GTM_API_H


/* Includes *******************************************************************/
#include "rtwtypes.h"
#include "Gtm_cfg.h"
#include "Port_api.h"
/* Defines ********************************************************************/
#define SET_TOM_SR(sw,sr0,sr1)		GTM_TOM_##sw##_SR(SR0) = sr0;\
					GTM_TOM_##sw##_SR(SR1) = sr1;
#define SET_TOM_OUTEN(sw,en)		GTM_TOM_##sw##_OUTEN(CTRL) = en;\
					GTM_TOM_##sw##_OUTEN(STAT) = en;
#define GET_TOM_SR(sw,sr)			GTM_TOM_##sw##_SR(sr)

#define SET_PWMSR0(n,sr0)			(*(PwmSr0Pt[n])) = sr0;
#define SET_PWMSR1(n,sr1)			(*(PwmSr1Pt[n])) = sr1;

#define SET_PWM_PWMEN(n,en)		    Pwm_PwmEn[n] = en;
#define SET_SAFETY_PWMEN(n,en)		Safety_PwmEn[n] = en;

#define GET_PWMSTATUS()			    Gtm_PwmStatus
#define SET_SAFETY_WDIDIS(dis)		Safety_WDIDis = dis;

#define PWM_SR_MAX			65535

#define PWM_TYPE_PRI               	0U
#define PWM_TYPE_SR                	1U
#define PWM_TYPE_CLAMP             	2U

/* Datas **********************************************************************/
typedef enum GTM_E_PWMENSTATE{
	GTM_E_DisReg = 0,
	GTM_E_WaitEn,
	GTM_E_EnReg,
	GTM_E_WaitDis
} GTM_E_PWMENSTATE;

/* Datas **********************************************************************/
extern u16 *PwmSr0Pt[10];
extern u16 *PwmSr1Pt[10];
extern u16 Pwm_PwmEn[3];
extern u16 Safety_PwmEn[3];
extern u16 Gtm_PwmStatus;
extern u16 Safety_WDIDis;
extern u16 Gtm_WDIDisCnt;
extern u16 Flag_WDIDis;
/* Functions ******************************************************************/
extern void Gtm_StopWDI(void);
extern void Gtm_CheckPwmStatus(void);
extern void Gtm_PwmEnDis_Calc(void);
extern void Gtm_DebugPwm(f32 duty);
extern void Gtm_DebugPwmScope(f32 real,f32 real_div,f32 debug_div);
#endif
