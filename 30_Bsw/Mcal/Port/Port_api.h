#ifndef PORT_API_H
#define PORT_API_H 

/* Includes *******************************************************************/
#include "Platform_Types.h"
#include "Port_cfg.h"
#include "Port_scb.h"
#include "HsfbApp_ErrReset.h"
#include "HsfbSafety_SetClrAutoDiag.h"
#include "rtwtypes.h"

/* Defines ********************************************************************/
#define GET_PORTIN(n)					((*(PortInPt[n].Port) & ((u16)0x1 << PortInPt[n].Pin)) != 0)
//#define GET_PORTDIAGFIN()				PortAutoDiagFin
//#define GET_PORTDIAGERR(n)				PortAutoDiagErr[n]

/* Defines ********************************************************************/

// PORT11
#define Get_ICT_CBC						P00_IN.B.P0
// PORT11
#define Get_CT_OCP						P11_IN.B.P2
#define Get_HVDC_OVP					P11_IN.B.P6
#define Get_WATEROUT_OTP				P11_IN.B.P9
#define Get_PriDrv_DIS					P11_IN.B.P10
#define Get_Vout16V_OVP					P11_IN.B.P11
#define Get_Vout19V_OVP					P11_IN.B.P12

// PORT13
#define Get_Iout_OCP					P13_IN.B.P0
#define Get_Iout_N_OCP					P13_IN.B.P2

// PORT14
#define Get_SrDrv_EN					P14_IN.B.P6

// PORT15
#define Get_FastTurnOff					P15_IN.B.P1

// PORT33
#define Get_REV_01						P33_IN.B.P5
#define Get_REV_02						P33_IN.B.P6
#define Get_REV_03						P33_IN.B.P7
#define Get_REV_00						P33_IN.B.P10

/* Defines ********************************************************************/
//Port02
#define Set_SBC_WDI					P02_OMSR.B.PS8 = 1
#define Clr_SBC_WDI					P02_OMCR.B.PCL8 = 1

// PORT11
#define Set_16V_OVP_AutoDiag			P11_OMSR.B.PS3 = 1
#define Clr_16V_OVP_AutoDiag			P11_OMCR.B.PCL3 = 1
#define Set_Heater_OTP_AutoDiag			P11_OMSR.B.PS8 = 1
#define Clr_Heater_OTP_AutoDiag			P11_OMCR.B.PCL8 = 1

// PORT13
#define Set_LatchReset					P13_OMSR.B.PS1 = 1
#define Clr_LatchReset					P13_OMCR.B.PCL1 = 1
#define Set_16V_OVP_Reset				P13_OMSR.B.PS3 = 1
#define Clr_16V_OVP_Reset				P13_OMCR.B.PCL3 = 1

// PORT14
#define Set_19V_OVP_AutoDiag			P14_OMSR.B.PS4 = 1
#define Clr_19V_OVP_AutoDiag			P14_OMCR.B.PCL4 = 1

// PORT15
#define Set_FastTurnOff_LVDC			P15_OMSR.B.PS5 = 1
#define Clr_FastTurnOff_LVDC			P15_OMCR.B.PCL5 = 1
#define Set_TestPin_LVDC			    P15_OMSR.B.PS0 = 1
#define Clr_TestPin_LVDC			    P15_OMCR.B.PCL0 = 1

// PORT20
#define Set_SBC_MPS_Debug				P20_OMSR.B.PS9 = 1
#define Clr_SBC_MPS_Debug				P20_OMCR.B.PCL9 = 1

// PORT21
#define Set_AuxPower_SefProtection		P21_OMSR.B.PS2 = 1
#define Clr_AuxPower_SefProtection		P21_OMCR.B.PCL2 = 1
#define Set_ProFET_SEL					P21_OMSR.B.PS3 = 1
#define Clr_ProFET_SEL					P21_OMCR.B.PCL3 = 1

// PORT23
#define Set_KL30_VM_Enable				P23_OMSR.B.PS1 = 1
#define Clr_KL30_VM_Enable				P23_OMCR.B.PCL1 = 1
// PORT33
#define Set_KL30_B_VM_Enable				P33_OMSR.B.PS9 = 1
#define Clr_KL30_B_VM_Enable				P33_OMCR.B.PCL9 = 1

// Debug
#define Set_Debug_Pin0					P15_OMSR.B.PS0 = 1
#define Clr_Debug_Pin0					P15_OMCR.B.PCL0 = 1
#define Set_Debug_Pin1					P23_OMSR.B.PS1 = 1
#define Clr_Debug_Pin1					P23_OMCR.B.PCL1 = 1

//SBC
#define WDG_PERIOD                  (70u)
#define WDG_ONTIME                  (35u)
#define WDG_CNT_RESTART             (0u)
/* Count incremented once every 100us.
 * Wdg reaction max time = 50ms = 50000us.
 * Max timeout Cnt = 500.
 * Wdg triggered only when PFM status is valid.
 * PFM in slowest ISR = 10ms = 10000us
 * Min timeout count = 100.*/
#define WDG_TIMEOUT                  (100u)
#define WDG_DISABLE                  (0u)
#define WDG_ENABLE                   (1u)

/* Types * Enums **************************************************************/
typedef enum PORT_E_DI{
	PORT_E_FastTurnOff = 0,
	PORT_E_PriDriveDis,
	PORT_E_SrDriveEn,
	PORT_E_IpriCbc,
	PORT_E_IpriOcp,
	PORT_E_VinOvp,
	PORT_E_IoutPOcp,
	PORT_E_IoutNOcp,
	PORT_E_Vout16VOvp,
	PORT_E_Vout19VOvp,
	PORT_E_WaterOutOtp
} PORT_E_DI;

typedef struct PORT_S_PT{
    u32 *Port; // can't use u16 here, because OMCR need to write high 16 bits
    u16 Pin;
} PORT_S_PT;

typedef enum {
    GPIO_E_ENDIS_Disable = 0,          /* Default value */
    GPIO_E_ENDIS_Enable
} GPIO_E_ENDIS;

typedef enum {
    GPIO_E_FAULT_None = 0,             /* Default value */
    GPIO_E_FAULT_Fault
} GPIO_E_FAULT;

typedef enum {
    GPIO_E_RESET_None = 0,             /* Default value */
    GPIO_E_RESET_Reset
} GPIO_E_RESET;

typedef struct{
	GPIO_E_ENDIS EnByCom;
	GPIO_E_FAULT OcpCt;
	GPIO_E_FAULT OcpIout;
	GPIO_E_FAULT OcpIoutN;
	GPIO_E_FAULT OvpHv;
	GPIO_E_FAULT Ovp1Lv;
	GPIO_E_FAULT Ovp2Lv;
	GPIO_E_ENDIS DrvStatePri;
	GPIO_E_ENDIS DrvStateSR;
	GPIO_E_FAULT CbcCt;
	GPIO_E_FAULT OtpHw;
} GPIO_S_STATUS;

/* Datas **********************************************************************/
extern PORT_S_PT PortInPt[11];
extern bit PortAutoDiagFin;
extern bit PortAutoDiagErr[4];
extern u16 KLDiagFlag;
extern u16 WdgCnt;
extern u16 WdgEnable;
extern u16 PortOtpAutoDiagEn;
extern u16 PortDisHSK;
/* Functions ******************************************************************/
extern void Port_Init(void);
extern void Port_StartUp(void);
extern void Port_AutoDiag(void);
extern void KL30_AutoDiag(void);
extern void SBC_Triger100us(void);
extern void ORU_LatchTest1ms(void);
extern void Port_OTP_AutoDiag10ms(void);
extern void Port_AuxPower_EnDis10ms(void);
#endif
