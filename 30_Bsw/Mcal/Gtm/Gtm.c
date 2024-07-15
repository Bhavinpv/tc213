/*******************************************************************************
 * \file    IfxGtm.c
 * \brief
 *
 * \section AUTHOR
 *    #. Ph.Ha
 *
 * \section SVN
 *  $Date$
 *  $Author$
 *  $Revision$
 *
 * \section LICENSE
 * Copyright (c) xxx.
 * All rights reserved.
 ******************************************************************************/

/* Includes *******************************************************************/
#include "Gtm_api.h"
#include "Gtm_cfg.h"
#include "Gtm_scb.h"
#include "Gtm_scfg.h"

/* Defines ********************************************************************/

/* Datas **********************************************************************/
#define MPU_ASIL_START_SEC_VAR_NOINIT
#include "MPU_MemMap.h"
u16 *PwmSr0Pt[10];
u16 *PwmSr1Pt[10];
u16 Pwm_PwmEn[3];
u16 Safety_PwmEn[3];
u16 Gtm_PwmEn[3];
GTM_E_PWMENSTATE Gtm_PwmEnState[3];
u32 Gtm_TimCnt[4];
u16 Gtm_PwmStatus;
u16 Safety_WDIDis;
u16 Gtm_WDIDisCnt;
u16 Flag_WDIDis;
#define MPU_ASIL_STOP_SEC_VAR_NOINIT
#include "MPU_MemMap.h"

/* Functions ******************************************************************/
void Gtm_EnDisReg(bit en, u16 type);
void Gtm_EnDisDuty(bit en, u16 type);
void Gtm_ResetDuty(u16 type);
void Gtm_Pri_EnDis(bit enable);
void Gtm_Sr_EnDis(bit enable);
void Gtm_Clamp_EnDis(bit enable);
void Gtm_Pri_EnDisDuty(bit enable);
void Gtm_Sr_EnDisDuty(bit enable);
void Gtm_Clamp_EnDisDuty(bit enable);
void Gtm_Pri_ResetDuty(void);
void Gtm_Sr_ResetDuty(void);
void Gtm_Clamp_ResetDuty(void);
void Gtm_Pwm_Pt_Init(void);
void Gtm_vIsr_cfg(void);
void Gtm_vTomCHcfg(void);
void Gtm_vTomCHcfg_HwVer1(void);
void Gtm_vTomCHcfg_HwVer0(void);
/* Functions ******************************************************************/

#define MPU_QM_START_SEC_CODE
#include "MPU_MemMap.h"
void Gtm_Init(void)
{
    Gtm_vTom_cfg();
    Gtm_vTim_cfg();
    Gtm_Pwm_Pt_Init();
    Gtm_PwmEnDis_Init();
}

void Gtm_vTom_cfg(void)
{
    IfxScuWdt_clearCpuEndinit(IfxScuWdt_getCpuWatchdogPassword());
    MODULE_GTM.CLC.U = 0u;  /* module clock enable */
    
    IfxScuWdt_setCpuEndinit(IfxScuWdt_getCpuWatchdogPassword());
    
    /* Set global clock divider to 1 */
    MODULE_GTM.CMU.GCLK_NUM.U = 0x0000FFFFu;
    MODULE_GTM.CMU.GCLK_DEN.U = 0x0000FFFFu;

    /* ---------------------------------------Channel Output Enable configuration ---------*/
	/* TOM0 Output enable for CH0 - CH7 */
	MODULE_GTM.TOM[0].TGC0_OUTEN_CTRL.U = (TOM_CH(0u, OUT_DIS) | TOM_CH(1u, OUT_DIS) | \
			TOM_CH(2u, OUT_DIS) | TOM_CH(3u, OUT_DIS) | \
			TOM_CH(4u, OUT_DIS) | TOM_CH(5u, OUT_DIS) | \
			TOM_CH(6u, OUT_DIS) | TOM_CH(7u, OUT_DIS)   );

	/* TOM0 Output enable for CH8 - CH15 */
	MODULE_GTM.TOM[0].TGC1_OUTEN_CTRL.U = (TOM_CH(0u, OUT_DIS) | TOM_CH(1u, OUT_DIS) | \
			TOM_CH(2u, OUT_DIS) | TOM_CH(3u, OUT_DIS) | \
			TOM_CH(4u, OUT_DIS) | TOM_CH(5u, OUT_DIS) | \
			TOM_CH(6u, OUT_DIS) | TOM_CH(7u, OUT_DIS)   );

	/* TOM1 Output enable for CH0 - CH7 */
	MODULE_GTM.TOM[1].TGC0_OUTEN_CTRL.U = (TOM_CH(0u, OUT_DIS) | TOM_CH(1u, OUT_DIS) | \
			TOM_CH(2u, OUT_DIS) | TOM_CH(3u, OUT_DIS) | \
			TOM_CH(4u, OUT_DIS) | TOM_CH(5u, OUT_DIS) | \
			TOM_CH(6u, OUT_DIS) | TOM_CH(7u, OUT_DIS)   );

	/* TOM1 Output enable for CH8 - CH15 */
	MODULE_GTM.TOM[1].TGC1_OUTEN_CTRL.U = (TOM_CH(0u, OUT_DIS) | TOM_CH(1u, OUT_DIS) | \
			TOM_CH(2u, OUT_DIS) | TOM_CH(3u, OUT_DIS) | \
			TOM_CH(4u, OUT_DIS) | TOM_CH(5u, OUT_DIS) | \
			TOM_CH(6u, OUT_DIS) | TOM_CH(7u, OUT_DIS)   );
    
    /* ---------------------------------------Channel Counter (CN0) Enable configuration ---------*/
    /* TOM0 enable channel from CH0 to CH7 */
    MODULE_GTM.TOM[0].TGC0_ENDIS_CTRL.U = (TOM_CH(0u, CH_EN) | TOM_CH(1u, CH_EN) | \
            TOM_CH(2u, CH_EN) | TOM_CH(3u, CH_EN) | \
            TOM_CH(4u, CH_EN) | TOM_CH(5u, CH_EN) | \
            TOM_CH(6u, CH_EN) | TOM_CH(7u, CH_EN)   );

    /* TOM0 enable channel from CH8 to CH15 */
    MODULE_GTM.TOM[0].TGC1_ENDIS_CTRL.U = (TOM_CH(0u, CH_EN) | TOM_CH(1u, CH_EN) | \
            TOM_CH(2u, CH_EN) | TOM_CH(3u, CH_EN) | \
            TOM_CH(4u, CH_EN) | TOM_CH(5u, CH_EN) | \
            TOM_CH(6u, CH_EN) | TOM_CH(7u, CH_EN)   );
    
    /* TOM1 enable channel from CH0 to CH7 */
    MODULE_GTM.TOM[1].TGC0_ENDIS_CTRL.U = (TOM_CH(0u, CH_EN) | TOM_CH(1u, CH_EN) | \
            TOM_CH(2u, CH_EN) | TOM_CH(3u, CH_EN) | \
            TOM_CH(4u, CH_EN) | TOM_CH(5u, CH_EN) | \
            TOM_CH(6u, CH_EN) | TOM_CH(7u, CH_EN)   );

    /* TOM1 enable channel from CH8 to CH15 */
    MODULE_GTM.TOM[1].TGC1_ENDIS_CTRL.U = (TOM_CH(0u, CH_EN) | TOM_CH(1u, CH_EN) | \
            TOM_CH(2u, CH_EN) | TOM_CH(3u, CH_EN) | \
            TOM_CH(4u, CH_EN) | TOM_CH(5u, CH_EN) | \
            TOM_CH(6u, CH_EN) | TOM_CH(7u, CH_EN)   );
    
    /* -------------------------------Channel shadow update the CM1 CM0 Register configuration ---------*/
    /* TOM0 enable shadow update for CH0 to CH7 */
    MODULE_GTM.TOM[0].TGC0_GLB_CTRL.U   = (TOM_CH(0u, UP_EN) | TOM_CH(1u, UP_EN) | \
            TOM_CH(2u, UP_EN) | TOM_CH(3u, UP_EN) | \
            TOM_CH(4u, UP_EN) | TOM_CH(5u, UP_EN) | \
            TOM_CH(6u, UP_EN) | TOM_CH(7u, UP_EN)   );

    /* TOM0 enable shadow update for CH8 to CH15 */
    MODULE_GTM.TOM[0].TGC1_GLB_CTRL.U   = (TOM_CH(0u, UP_EN) | TOM_CH(1u, UP_EN) | \
            TOM_CH(2u, UP_EN) | TOM_CH(3u, UP_EN) | \
            TOM_CH(4u, UP_EN) | TOM_CH(5u, UP_EN) | \
            TOM_CH(6u, UP_EN) | TOM_CH(7u, UP_EN)   );
    
    /* TOM1 enable shadow update for CH0 to CH7 */
    MODULE_GTM.TOM[1].TGC0_GLB_CTRL.U   = (TOM_CH(0u, UP_EN) | TOM_CH(1u, UP_EN) | \
            TOM_CH(2u, UP_EN) | TOM_CH(3u, UP_EN) | \
            TOM_CH(4u, UP_EN) | TOM_CH(5u, UP_EN) | \
            TOM_CH(6u, UP_EN) | TOM_CH(7u, UP_EN)   );

    /* TOM1 enable shadow update for CH8 to CH15 */
    MODULE_GTM.TOM[1].TGC1_GLB_CTRL.U   = (TOM_CH(0u, UP_EN) | TOM_CH(1u, UP_EN) | \
            TOM_CH(2u, UP_EN) | TOM_CH(3u, UP_EN) | \
            TOM_CH(4u, UP_EN) | TOM_CH(5u, UP_EN) | \
            TOM_CH(6u, UP_EN) | TOM_CH(7u, UP_EN)   );
    
    /* -------------------------------Channel force update the register configuration --------------------*/
    /* TOM0 Force Update Control for CH0 to CH7 */
    MODULE_GTM.TOM[0].TGC0_FUPD_CTRL.U  = (TOM_CH(0u, FUPD_DIS) | TOM_CH(1u, FUPD_DIS) | \
            TOM_CH(2u, FUPD_DIS) | TOM_CH(3u, FUPD_DIS) | \
            TOM_CH(4u, FUPD_DIS) | TOM_CH(5u, FUPD_DIS) | \
            TOM_CH(6u, FUPD_DIS) | TOM_CH(7u, FUPD_DIS)   );

    /* TOM0 Force Update Control for CH8 to CH15 */
    MODULE_GTM.TOM[0].TGC1_FUPD_CTRL.U  = (TOM_CH(0u, FUPD_DIS) | TOM_CH(1u, FUPD_DIS) | \
            TOM_CH(2u, FUPD_DIS) | TOM_CH(3u, FUPD_DIS) | \
            TOM_CH(4u, FUPD_DIS) | TOM_CH(5u, FUPD_DIS) | \
            TOM_CH(6u, FUPD_DIS) | TOM_CH(7u, FUPD_DIS)   );
    
    /* TOM1 Force Update Control for CH0 to CH7 */
    MODULE_GTM.TOM[1].TGC0_FUPD_CTRL.U  = (TOM_CH(0u, FUPD_DIS) | TOM_CH(1u, FUPD_DIS) | \
            TOM_CH(2u, FUPD_DIS) | TOM_CH(3u, FUPD_DIS) | \
            TOM_CH(4u, FUPD_DIS) | TOM_CH(5u, FUPD_DIS) | \
            TOM_CH(6u, FUPD_DIS) | TOM_CH(7u, FUPD_DIS)   );

    /* TOM1 Force Update Control for CH8 to CH15 */
    MODULE_GTM.TOM[1].TGC1_FUPD_CTRL.U  = (TOM_CH(0u, FUPD_DIS) | TOM_CH(1u, FUPD_DIS) | \
            TOM_CH(2u, FUPD_DIS) | TOM_CH(3u, FUPD_DIS) | \
            TOM_CH(4u, FUPD_DIS) | TOM_CH(5u, FUPD_DIS) | \
            TOM_CH(6u, FUPD_DIS) | TOM_CH(7u, FUPD_DIS)   );

    // TOM Channel Configuration
    Gtm_vTomCHcfg();
    
    /* update Out enable, ch enable/dis status and update the active register from shadow register */
    MODULE_GTM.TOM[0].TGC0_GLB_CTRL.B.HOST_TRIG = 1u;
    MODULE_GTM.TOM[0].TGC1_GLB_CTRL.B.HOST_TRIG = 1u;
    MODULE_GTM.TOM[1].TGC0_GLB_CTRL.B.HOST_TRIG = 1u;
    MODULE_GTM.TOM[1].TGC1_GLB_CTRL.B.HOST_TRIG = 1u;

    // TOM Interrupt Configuration
    Gtm_vIsr_cfg();

    // for synchronize different TOM trigger signal (from PFC code)
	MODULE_GTM.CMU.CLK_EN.B.EN_CLK0  = CMU_CLK_ENABLE;               /*enable the CLK0 for the TIM*/
	MODULE_GTM.CMU.CLK_EN.B.EN_FXCLK = CMU_CLK_ENABLE;               /*enable all the FXCLK for the TOM*/

	delay_ms_main(10);

	// TOM Channel Output Enable
    MODULE_GTM.TOM[0].TGC0_OUTEN_CTRL.B.OUTEN_CTRL3 = OUT_EN;	// TOM0_CH3
    MODULE_GTM.TOM[0].TGC0_OUTEN_STAT.B.OUTEN_STAT3 = OUT_EN;

    MODULE_GTM.TOM[0].TGC0_OUTEN_CTRL.B.OUTEN_CTRL6 = OUT_EN;	// TOM0_CH6
    MODULE_GTM.TOM[0].TGC0_OUTEN_STAT.B.OUTEN_STAT6 = OUT_EN;

    MODULE_GTM.TOM[0].TGC0_OUTEN_CTRL.B.OUTEN_CTRL7 = OUT_EN;	// TOM0_CH7
	MODULE_GTM.TOM[0].TGC0_OUTEN_STAT.B.OUTEN_STAT7 = OUT_EN;

    MODULE_GTM.TOM[1].TGC0_OUTEN_CTRL.B.OUTEN_CTRL0 = OUT_EN;	// TOM1_CH0
	MODULE_GTM.TOM[1].TGC0_OUTEN_STAT.B.OUTEN_STAT0 = OUT_EN;

    MODULE_GTM.TOM[1].TGC0_OUTEN_CTRL.B.OUTEN_CTRL5 = OUT_EN;	// TOM1_CH5
    MODULE_GTM.TOM[1].TGC0_OUTEN_STAT.B.OUTEN_STAT5 = OUT_EN;

    MODULE_GTM.TOM[1].TGC1_OUTEN_CTRL.B.OUTEN_CTRL3 = OUT_EN;	// TOM1_CH11
	MODULE_GTM.TOM[1].TGC1_OUTEN_STAT.B.OUTEN_STAT3 = OUT_EN;

    MODULE_GTM.TOM[1].TGC1_OUTEN_CTRL.B.OUTEN_CTRL4 = OUT_EN;	// TOM1_CH12
	MODULE_GTM.TOM[1].TGC1_OUTEN_STAT.B.OUTEN_STAT4 = OUT_EN;

    MODULE_GTM.TOM[1].TGC1_OUTEN_CTRL.B.OUTEN_CTRL5 = OUT_EN;	// TOM1_CH13
	MODULE_GTM.TOM[1].TGC1_OUTEN_STAT.B.OUTEN_STAT5 = OUT_EN;

    MODULE_GTM.TOM[1].TGC1_OUTEN_CTRL.B.OUTEN_CTRL6 = OUT_EN;	// TOM1_CH14
	MODULE_GTM.TOM[1].TGC1_OUTEN_STAT.B.OUTEN_STAT6 = OUT_EN;
}

void Gtm_vTomCHcfg(void)
{
	// Debug Pin of B01 Version: P33.7
    TOM_CH_CFG(TOM0_CH3,  INIT_CNT, DEBUG_PERIOD, 0,                    	\
            (TOUT_ACTIV_HI | TCLK_FIXCLK0 | SELF_RESET    | CCU0_TRIG_OUT) );
    
    // Debug Pin of B02 Version: P23.1
    TOM_CH_CFG(TOM0_CH6,  INIT_CNT, DEBUG_PERIOD, 0,                    	\
            (TOUT_ACTIV_HI | TCLK_FIXCLK0 | SELF_RESET    | CCU0_TRIG_OUT) );

    /* TOM0_7 generate trigger signal to other channel*/
    /* Fast Interrupt: TOM0_CH7 -> GTM_TOM0_IRQ3 -> SRC_GTMTOM03 */
    TOM_CH_CFG(TOM0_CH7,  INIT_CNT, PERIOD, HALF_PERIOD,                    \
            (TOUT_ACTIV_LO | TCLK_FIXCLK0 | SELF_RESET    | CCU0_TRIG_OUT) );
    
    /* TOM0_8 ->  driver A */
    TOM_CH_CFG(TOM0_CH8,  INIT_CNT, PERIOD + 1, 0,                           \
            (TOUT_ACTIV_HI | TCLK_FIXCLK0 | LTOM_RESET    | LTOM_TRIG_OUT) );
    
    /* TOM0_9 ->  driver B */
    TOM_CH_CFG(TOM0_CH9,  INIT_CNT, PERIOD + 1, 0,                           \
            (TOUT_ACTIV_HI | TCLK_FIXCLK0 | LTOM_RESET    | LTOM_TRIG_OUT) );
    
    /* TOM0_10 ->  driver C */
    TOM_CH_CFG(TOM0_CH10, INIT_CNT, PERIOD + 1, 0,                           \
            (TOUT_ACTIV_HI | TCLK_FIXCLK0 | LTOM_RESET    | LTOM_TRIG_OUT) );
    
    /* TOM0_11 ->  driver D */
    TOM_CH_CFG(TOM0_CH11, INIT_CNT, PERIOD + 1, 0,                           \
            (TOUT_ACTIV_HI | TCLK_FIXCLK0 | LTOM_RESET    | LTOM_TRIG_OUT) );
    
    /* TOM0_12 ->  driver SRA */
    TOM_CH_CFG(TOM0_CH12, INIT_CNT, PERIOD + 1, 0,                           \
            (TOUT_ACTIV_HI | TCLK_FIXCLK0 | LTOM_RESET    | LTOM_TRIG_OUT) );
    
    /* TOM0_13 ->  driver SRB */
    TOM_CH_CFG(TOM0_CH13, INIT_CNT, PERIOD + 1, 0,                           \
            (TOUT_ACTIV_HI | TCLK_FIXCLK0 | LTOM_RESET    | LTOM_TRIG_OUT) );
    
    /* TOM0_14 & TOM0_15 */
    if(GTM_HWVER_1)
    {
    	Gtm_vTomCHcfg_HwVer1();
    }
    else if(GTM_HWVER_0)
    {
    	Gtm_vTomCHcfg_HwVer0();
    }
    else
    {
    	Gtm_vTomCHcfg_HwVer0();
    }

#if 0
    /* TOM1_0  ->  SBC WDI */
    TOM_CH_CFG(TOM1_CH0,  INIT_CNT, SBC_WDI_PERIOD, CM1_SBC_WDI,        	\
			(TOUT_ACTIV_LO | TCLK_FIXCLK2 | SELF_RESET    | LTOM_TRIG_OUT) ); 
#endif

    /* TOM1_0  ->  SBC WDI */
	TOM_CH_CFG(TOM1_CH0,  INIT_CNT, SBC_WDI_PERIOD, CM1_SBC_WDI,        	\
			(TOUT_ACTIV_LO | TCLK_FIXCLK1 | SELF_RESET    | LTOM_TRIG_OUT) );

    /* TOM1_5  ->  driver PriE */
    TOM_CH_CFG(TOM1_CH5,  INIT_CNT, PERIOD + 1, 0,                           	\
            (TOUT_ACTIV_HI | TCLK_FIXCLK0 | LTOM_RESET    | LTOM_TRIG_OUT) );

    /* ADC AutoScan source trigger: TOM[1]_CH11 */
    TOM_CH_CFG(TOM1_CH11, INIT_CNT, ISR_100US_PERIOD, CM1_ISR,   		   	\
            (TOUT_ACTIV_HI | TCLK_FIXCLK0 | SELF_RESET    | CCU0_TRIG_OUT) );

    /* Isr1ms Interrupt: TOM1_CH12 -> GTM_TOM1_IRQ6 -> SRC_GTMTOM16 */
    TOM_CH_CFG(TOM1_CH12, INIT_CNT, ISR_1MS_PERIOD, CM1_ISR,    			\
            (TOUT_ACTIV_HI | TCLK_FIXCLK1 | SELF_RESET    | CCU0_TRIG_OUT) );

    // Debug Pin of C0 Version: P20.9
    TOM_CH_CFG(TOM1_CH13, INIT_CNT, DEBUG_PERIOD, 0,                    	\
			(TOUT_ACTIV_HI | TCLK_FIXCLK0 | SELF_RESET    | CCU0_TRIG_OUT) );

    /* Isr10ms Interrupt: TOM1_CH14 -> GTM_TOM1_IRQ7 -> SRC_GTMTOM17 */
    TOM_CH_CFG(TOM1_CH14, INIT_CNT, ISR_10MS_PERIOD, CM1_ISR,    			\
            (TOUT_ACTIV_HI | TCLK_FIXCLK1 | SELF_RESET    | CCU0_TRIG_OUT) );

    /*connect the gtm_adc trigger to ADC0 and ADC 1*/
    MODULE_GTM.ADCTRIG0OUT0.B.SEL0 = ADCTRIG0_FROM_TOM0_CH(7);   // TOM0 Channel 7 output triggers ADC-Group 0 Trigger Signal 0
    MODULE_GTM.ADCTRIG0OUT0.B.SEL1 = ADCTRIG0_FROM_TOM0_CH(7);   // TOM0 Channel 7 output triggers ADC-Group 1 Trigger Signal 0
    
    MODULE_GTM.ADCTRIG1OUT0.B.SEL0 = ADCTRIG1_FROM_TOM1_CH(11);  // TOM1 Channel 11 output triggers ADC-Group 0 Trigger Signal 1
    MODULE_GTM.ADCTRIG1OUT0.B.SEL1 = ADCTRIG1_FROM_TOM1_CH(11);  // TOM1 Channel 11 output triggers ADC-Group 1 Trigger Signal 1
    
    /* Connection the TOM_OUT to the Port (16*n+x) */
    GTM_TOUTSEL1.B.SEL13 = TOUT_TAB_A;  // TOM0_3  -> P33.7 Debug PWM (Old)
    GTM_TOUTSEL2.B.SEL10 = TOUT_TAB_A;  // TOM0_6  -> P23.1 Debug PWM (B02)
    GTM_TOUTSEL5.B.SEL13 = TOUT_TAB_A;  // TOM0_7  -> P13.2

    GTM_TOUTSEL0.B.SEL0  = TOUT_TAB_A;  // TOM0_8  -> P02.0 Driver A
    GTM_TOUTSEL0.B.SEL1  = TOUT_TAB_A;  // TOM0_9  -> P02.1 Driver B
    GTM_TOUTSEL0.B.SEL2  = TOUT_TAB_A;  // TOM0_10 -> P02.2 Driver C
    GTM_TOUTSEL0.B.SEL3  = TOUT_TAB_A;  // TOM0_11 -> P02.3 Driver D
    
    GTM_TOUTSEL0.B.SEL4  = TOUT_TAB_A;  // TOM0_12 -> P02.4 Driver SRA
    GTM_TOUTSEL0.B.SEL5  = TOUT_TAB_A;  // TOM0_13 -> P02.5 Driver SRB
    GTM_TOUTSEL0.B.SEL6  = TOUT_TAB_A;  // TOM0_14 -> P02.6 Driver clamp SRA
    GTM_TOUTSEL0.B.SEL7  = TOUT_TAB_A;  // TOM0_15 -> P02.7 Driver clamp SRB

    GTM_TOUTSEL0.B.SEL8  = TOUT_TAB_B;  // TOM1_0  -> P02.8 SBC WDI
    GTM_TOUTSEL4.B.SEL2  = TOUT_TAB_D;  // TOM1_5  -> P20.10 Driver E
    GTM_TOUTSEL4.B.SEL1  = TOUT_TAB_A;  // TOM1_13 -> P20.9 Debug PWM (C0)
}

void Gtm_vIsr_cfg(void)
{
    MODULE_GTM.TOM[0].CH7.IRQ_NOTIFY.U = 0x0;
    MODULE_GTM.TOM[0].CH7.IRQ_EN.U     = 0x1;		// Enable CCU0TC interrupt
    MODULE_GTM.TOM[0].CH7.IRQ_MODE.U   = 0x2;		// Pulse-Notify mode
    IfxSrc_init(&SRC_GTMTOM03, IfxSrc_Tos_cpu0, CPU0_SRPN1);
    IfxSrc_enable(&SRC_GTMTOM03);
    
    MODULE_GTM.TOM[1].CH11.IRQ_NOTIFY.U = 0x0;
    MODULE_GTM.TOM[1].CH11.IRQ_EN.U     = 0x1;		// Enable CCU0TC interrupt
    MODULE_GTM.TOM[1].CH11.IRQ_MODE.U   = 0x2;      // Pulse-Notify mode
    IfxSrc_init(&SRC_GTMTOM15, IfxSrc_Tos_cpu0, CPU0_SRPN2);
    IfxSrc_enable(&SRC_GTMTOM15);

    MODULE_GTM.TOM[1].CH12.IRQ_NOTIFY.U = 0x0;
	MODULE_GTM.TOM[1].CH12.IRQ_EN.U     = 0x1;		// Enable CCU0TC interrupt
	MODULE_GTM.TOM[1].CH12.IRQ_MODE.U   = 0x2;      // Pulse-Notify mode
	IfxSrc_init(&SRC_GTMTOM16, IfxSrc_Tos_cpu0, CPU0_SRPN3);
	IfxSrc_enable(&SRC_GTMTOM16);

	MODULE_GTM.TOM[1].CH14.IRQ_NOTIFY.U = 0x0;
	MODULE_GTM.TOM[1].CH14.IRQ_EN.U     = 0x1;		// Enable CCU0TC interrupt
	MODULE_GTM.TOM[1].CH14.IRQ_MODE.U   = 0x2;      // Pulse-Notify mode
	IfxSrc_init(&SRC_GTMTOM17, IfxSrc_Tos_cpu0, CPU0_SRPN4);
	IfxSrc_enable(&SRC_GTMTOM17);
}

void Gtm_vTomCHcfg_HwVer1(void)
{
	/* TOM0_14 ->  driver clamp SRA or driver SRC, same level (HI) */
    TOM_CH_CFG(TOM0_CH14, INIT_CNT, PERIOD+1, 0,                           \
            (TOUT_ACTIV_HI | TCLK_FIXCLK0 | LTOM_RESET    | LTOM_TRIG_OUT) );

    /* TOM0_15 ->  driver clamp SRB or driver SRD, same level (HI) */
    TOM_CH_CFG(TOM0_CH15, INIT_CNT, PERIOD+1, 0,                           \
            (TOUT_ACTIV_HI | TCLK_FIXCLK0 | LTOM_RESET    | LTOM_TRIG_OUT) );
}

void Gtm_vTomCHcfg_HwVer0(void)
{
	/* TOM0_14 ->  driver clamp SRA (LO) */
    TOM_CH_CFG(TOM0_CH14, INIT_CNT, PERIOD+1, 0,                           \
            (TOUT_ACTIV_LO | TCLK_FIXCLK0 | LTOM_RESET    | LTOM_TRIG_OUT) );

    /* TOM0_15 ->  driver clamp SRB (LO) */
    TOM_CH_CFG(TOM0_CH15, INIT_CNT, PERIOD+1, 0,                           \
            (TOUT_ACTIV_LO | TCLK_FIXCLK0 | LTOM_RESET    | LTOM_TRIG_OUT) );
}

void Gtm_vTim_cfg(void)
{
//	MODULE_GTM.TIM[0].CH0.CTRL.B.TIM_MODE 	= 0;    // PWM Measurement Mode (TPWM)
	MODULE_GTM.TIM[0].CH0.CTRL.B.TIM_MODE 	= 1;    // Pulse Integration Mode (TPIM)
	MODULE_GTM.TIM[0].CH0.CTRL.B.CICTRL 	= 0;	// use signal TIM_IN(x) as input
	MODULE_GTM.TIM[0].CH0.CTRL.B.GPR0_SEL 	= 3;    // use CNTS as the value of duty on time value
	MODULE_GTM.TIM[0].CH0.CTRL.B.GPR1_SEL 	= 3;    // use CNT as the value of the period
	MODULE_GTM.TIM[0].CH0.CTRL.B.CNTS_SEL 	= 0;	// use CNT register as input
	MODULE_GTM.TIM[0].CH0.CTRL.B.DSL 		= 1;    // Measurement starts with rising edge
	MODULE_GTM.TIM[0].CH0.CTRL.B.TIM_EN 	= 1;	// Channel enabled

	MODULE_GTM.TIM[0].CH1.CTRL.B.TIM_MODE 	= 1;
	MODULE_GTM.TIM[0].CH1.CTRL.B.CICTRL 	= 0;
	MODULE_GTM.TIM[0].CH1.CTRL.B.GPR0_SEL 	= 3;
	MODULE_GTM.TIM[0].CH1.CTRL.B.GPR1_SEL 	= 3;
	MODULE_GTM.TIM[0].CH1.CTRL.B.CNTS_SEL 	= 0;
	MODULE_GTM.TIM[0].CH1.CTRL.B.DSL 		= 1;
	MODULE_GTM.TIM[0].CH1.CTRL.B.TIM_EN 	= 1;

	MODULE_GTM.TIM[0].CH2.CTRL.B.TIM_MODE 	= 1;
	MODULE_GTM.TIM[0].CH2.CTRL.B.CICTRL 	= 0;
	MODULE_GTM.TIM[0].CH2.CTRL.B.GPR0_SEL 	= 3;
	MODULE_GTM.TIM[0].CH2.CTRL.B.GPR1_SEL 	= 3;
	MODULE_GTM.TIM[0].CH2.CTRL.B.CNTS_SEL 	= 0;
	MODULE_GTM.TIM[0].CH2.CTRL.B.DSL 		= 1;
	MODULE_GTM.TIM[0].CH2.CTRL.B.TIM_EN 	= 1;

	MODULE_GTM.TIM[0].CH3.CTRL.B.TIM_MODE 	= 1;
	MODULE_GTM.TIM[0].CH3.CTRL.B.CICTRL 	= 0;
	MODULE_GTM.TIM[0].CH3.CTRL.B.GPR0_SEL 	= 3;
	MODULE_GTM.TIM[0].CH3.CTRL.B.GPR1_SEL 	= 3;
	MODULE_GTM.TIM[0].CH3.CTRL.B.CNTS_SEL 	= 0;
	MODULE_GTM.TIM[0].CH3.CTRL.B.DSL 		= 1;
	MODULE_GTM.TIM[0].CH3.CTRL.B.TIM_EN 	= 1;

	GTM_TIM0INSEL.B.CH0SEL = 2;		// select P02.0 as input
	GTM_TIM0INSEL.B.CH1SEL = 2;		// select P02.1 as input
	GTM_TIM0INSEL.B.CH2SEL = 2;		// select P02.2 as input
	GTM_TIM0INSEL.B.CH3SEL = 2;		// select P02.3 as input
}

void Gtm_Pwm_Pt_Init(void)
{
	PwmSr0Pt[0] = (u16 *)&(GTM_TOM0_CH8_SR0.U);
	PwmSr0Pt[1] = (u16 *)&(GTM_TOM0_CH9_SR0.U);
	PwmSr0Pt[2] = (u16 *)&(GTM_TOM0_CH10_SR0.U);
	PwmSr0Pt[3] = (u16 *)&(GTM_TOM0_CH11_SR0.U);
	PwmSr0Pt[4] = (u16 *)&(GTM_TOM0_CH12_SR0.U);
	PwmSr0Pt[5] = (u16 *)&(GTM_TOM0_CH13_SR0.U);
	PwmSr0Pt[6] = (u16 *)&(GTM_TOM0_CH14_SR0.U);
	PwmSr0Pt[7] = (u16 *)&(GTM_TOM0_CH15_SR0.U);
	PwmSr0Pt[8] = (u16 *)&(GTM_TOM0_CH7_SR0.U);
	PwmSr0Pt[9] = (u16 *)&(GTM_TOM1_CH5_SR0.U);

	PwmSr1Pt[0] = (u16 *)&(GTM_TOM0_CH8_SR1.U);
	PwmSr1Pt[1] = (u16 *)&(GTM_TOM0_CH9_SR1.U);
	PwmSr1Pt[2] = (u16 *)&(GTM_TOM0_CH10_SR1.U);
	PwmSr1Pt[3] = (u16 *)&(GTM_TOM0_CH11_SR1.U);
	PwmSr1Pt[4] = (u16 *)&(GTM_TOM0_CH12_SR1.U);
	PwmSr1Pt[5] = (u16 *)&(GTM_TOM0_CH13_SR1.U);
	PwmSr1Pt[6] = (u16 *)&(GTM_TOM0_CH14_SR1.U);
	PwmSr1Pt[7] = (u16 *)&(GTM_TOM0_CH15_SR1.U);
	PwmSr1Pt[8] = (u16 *)&(GTM_TOM0_CH7_SR1.U);
	PwmSr1Pt[9] = (u16 *)&(GTM_TOM1_CH5_SR1.U);
}

void Gtm_PwmEnDis_Init(void)
{
	u16 i;

	for(i=0;i<3;i++)
	{
		Pwm_PwmEn[i] = 0;
		Safety_PwmEn[i] = 0;
		Gtm_PwmEn[i] = 0;
		Gtm_PwmEnState[i] = GTM_E_DisReg;
	}
}

#define MPU_QM_STOP_SEC_CODE
#include "MPU_MemMap.h"

#define MPU_ASIL_START_SEC_CODE
#include "MPU_MemMap.h"
void Gtm_StopWDI(void)
{
	GTM_TOM1_TGC0_OUTEN_CTRL.B.OUTEN_CTRL0 = OUT_DIS;
	GTM_TOM1_TGC0_OUTEN_STAT.B.OUTEN_STAT0 = OUT_DIS;
}

void Gtm_CheckPwmStatus(void)
{
	u32 CntTemp;
	u16 PwmStatusTemp;

	PwmStatusTemp = 0;
	CntTemp = GTM_TIM0_CH0_CNT.B.CNT;
	PwmStatusTemp |= (CntTemp != Gtm_TimCnt[0]) << 0;
	Gtm_TimCnt[0] = CntTemp;

	CntTemp = GTM_TIM0_CH1_CNT.B.CNT;
	PwmStatusTemp |= (CntTemp != Gtm_TimCnt[1]) << 1;
	Gtm_TimCnt[1] = CntTemp;

	CntTemp = GTM_TIM0_CH2_CNT.B.CNT;
	PwmStatusTemp |= (CntTemp != Gtm_TimCnt[2]) << 2;
	Gtm_TimCnt[2] = CntTemp;

	CntTemp = GTM_TIM0_CH3_CNT.B.CNT;
	PwmStatusTemp |= (CntTemp != Gtm_TimCnt[3]) << 3;
	Gtm_TimCnt[3] = CntTemp;

	Gtm_PwmStatus = PwmStatusTemp;

	if(!Safety_PwmEn[0] && Gtm_PwmStatus && Safety_WDIDis)
	{
		Gtm_WDIDisCnt++;
//		 if(Gtm_WDIDisCnt > 100)
//		 {
//		 	// Stop SBC WDI here
//			 Flag_WDIDis = 1;
//		 }
	}
	else
	{
		Gtm_WDIDisCnt = 0;
	}
}

void Gtm_PwmEnDis_Calc(void)
{
	u16 i;

	for(i=0;i<3;i++)
	{
		Gtm_PwmEn[i] = Pwm_PwmEn[i] && Safety_PwmEn[i];
		switch(Gtm_PwmEnState[i])
		{
			case GTM_E_DisReg:
				Gtm_ResetDuty(i);
				Gtm_EnDisReg(0,i);
				Gtm_PwmEnState[i] = GTM_E_WaitEn;
				break;
			case GTM_E_WaitEn:
				if(Gtm_PwmEn[i])
				{
					Gtm_EnDisDuty(1,i);
					Gtm_PwmEnState[i] = GTM_E_EnReg;
				}
				break;
			case GTM_E_EnReg:
				Gtm_EnDisReg(1,i);
				Gtm_PwmEnState[i] = GTM_E_WaitDis;
				break;
			case GTM_E_WaitDis:
				if(!Gtm_PwmEn[i])
				{
					Gtm_EnDisDuty(0,i);
					Gtm_PwmEnState[i] = GTM_E_DisReg;
				}
				break;
			default:
				Gtm_PwmEnState[i] = GTM_E_DisReg;
				break;
		}
	}
}

void Gtm_EnDisReg(bit en, u16 type)
{
    switch(type)
    {
        case PWM_TYPE_PRI: 		// pri
        	Gtm_Pri_EnDis(en);
            break;
        case PWM_TYPE_SR: 		// sr
        	Gtm_Sr_EnDis(en);
            break;
        case PWM_TYPE_CLAMP: 	// clamp
        	Gtm_Clamp_EnDis(en);
            break;
        default:
            break;
    }
}

void Gtm_EnDisDuty(bit en, u16 type)
{
    switch(type)
    {
        case PWM_TYPE_PRI:		// pri
        	Gtm_Pri_EnDisDuty(en);
            break;
        case PWM_TYPE_SR: 		// sr
        	Gtm_Sr_EnDisDuty(en);
            break;
        case PWM_TYPE_CLAMP: 	// clamp
        	Gtm_Clamp_EnDisDuty(en);
            break;
        default:
            break;
    }
}

void Gtm_ResetDuty(u16 type)
{
    switch(type)
    {
        case PWM_TYPE_PRI: 		// pri
        	Gtm_Pri_ResetDuty();
            break;
        case PWM_TYPE_SR: 		// sr
        	Gtm_Sr_ResetDuty();
            break;
        case PWM_TYPE_CLAMP: 	// clamp
        	Gtm_Clamp_ResetDuty();
            break;
        default:
            break;
    }
}

void Gtm_Pri_EnDis(bit enable)
{
	if(enable)
	{
		SET_TOM_OUTEN(PRIA, OUT_EN);
		SET_TOM_OUTEN(PRIB, OUT_EN);
		SET_TOM_OUTEN(PRIC, OUT_EN);
		SET_TOM_OUTEN(PRID, OUT_EN);
//		SET_TOM_OUTEN(SAUX, OUT_EN);
	}
	else
	{
		SET_TOM_OUTEN(PRIA, OUT_DIS);
		SET_TOM_OUTEN(PRIB, OUT_DIS);
		SET_TOM_OUTEN(PRIC, OUT_DIS);
		SET_TOM_OUTEN(PRID, OUT_DIS);
//		SET_TOM_OUTEN(SAUX, OUT_DIS);
	}
}

void Gtm_Sr_EnDis(bit enable)
{
	if(enable)
	{
		SET_TOM_OUTEN(SRA, OUT_EN);
		SET_TOM_OUTEN(SRB, OUT_EN);
	}
	else
	{
		SET_TOM_OUTEN(SRA, OUT_DIS);
		SET_TOM_OUTEN(SRB, OUT_DIS);
	}
}

void Gtm_Clamp_EnDis(bit enable)
{
	if(enable)
	{
		SET_TOM_OUTEN(CLAMPA, OUT_EN);
		SET_TOM_OUTEN(CLAMPB, OUT_EN);
	}
	else
	{
		SET_TOM_OUTEN(CLAMPA, OUT_DIS);
		SET_TOM_OUTEN(CLAMPB, OUT_DIS);
	}
}

void Gtm_Pri_EnDisDuty(bit enable)
{
	// nothing to do
}

void Gtm_Sr_EnDisDuty(bit enable)
{
	if(enable) return;
	else
	{
		SET_TOM_SR(SRA, PWM_SR_MAX, 0);
		SET_TOM_SR(SRB, PWM_SR_MAX, 0);
//		SET_TOM_SR(SRB, GET_TOM_SR(SRB,CM0), GET_TOM_SR(SRB,CM1));
	}
}

void Gtm_Clamp_EnDisDuty(bit enable)
{
	if(enable) return;
	else
	{
		SET_TOM_SR(CLAMPA, PWM_SR_MAX, 0);
		SET_TOM_SR(CLAMPB, GET_TOM_SR(CLAMPB,CM0), GET_TOM_SR(CLAMPB,CM1));
	}
}

void Gtm_Pri_ResetDuty(void)
{
	SET_TOM_SR(PRIA, PWM_SR_MAX, 0);
	SET_TOM_SR(PRIB, PWM_SR_MAX, 0);
	SET_TOM_SR(PRIC, PWM_SR_MAX, 0);
	SET_TOM_SR(PRID, PWM_SR_MAX, 0);
}

void Gtm_Sr_ResetDuty(void)
{
	SET_TOM_SR(SRA, PWM_SR_MAX, 0);
	SET_TOM_SR(SRB, PWM_SR_MAX, 0);
}

void Gtm_Clamp_ResetDuty(void)
{
	SET_TOM_SR(CLAMPA, PWM_SR_MAX, 0);
	SET_TOM_SR(CLAMPB, PWM_SR_MAX, 0);
}

void Gtm_DebugPwm(f32 duty)
{
    if(duty > 1) duty = 1;
    else if(duty < 0) duty = 0;

    GTM_TOM0_CH6_SR1.U = DEBUG_PERIOD*duty;
}

void Gtm_DebugPwmScope(f32 real,f32 real_div,f32 debug_div)
{
	// real/real_div = debug/debug_div, debug = 3.3*duty
	// duty = debug/3.3 = real/real_div*debug_div/3.3
	f32 duty;

	if(real_div <= 0) duty = 0;
	else duty = (real/real_div)*(debug_div/3.3);

	if(duty > 1) duty = 1;
	else if(duty < 0) duty = 0;

//	GTM_TOM0_CH6_SR1.U = DEBUG_PERIOD*duty; // B02
	GTM_TOM1_CH13_SR1.U = DEBUG_PERIOD*duty; // C0
}
#define MPU_ASIL_STOP_SEC_CODE
#include "MPU_MemMap.h"
