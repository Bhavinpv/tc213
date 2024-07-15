#ifndef PORT_SCB_H
#define PORT_SCB_H 


/* Datas **********************************************************************/
extern u16 WdgCnt;
extern u16 WdgEnable;
extern u16 PortOtpAutoDiagEn;

/* Functions ******************************************************************/
extern void Port_Init(void);
extern void SBC_Triger100us(void);
extern void ORU_LatchTest1ms(void);
extern void Port_OTP_AutoDiag10ms(void);

#endif
