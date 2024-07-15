/** ****************************************************************************
 * \file    gtm_cfg.h
 * \brief   
 *
 *  Details
 *
 * \section AUTHOR
 *    #. Ph.Ha
 *
 * \section SVN
 *  $Date: $
 *  $Author: $
 *  $Revision: $
 *
 * \section LICENSE
 *  Copyright (c) xxxx .
 *  All rights reserved.
 **************************************************************************** */

#ifndef GTM_CFG_H
#define GTM_CFG_H

/* Includes *******************************************************************/
#include "IfxGtm_reg.h"
#include "IfxSrc.h"
#include "IfxSrc_cfg.h"
#include "IfxScuWdt.h"
#include "mcu_cfg.h"
#include "Main_api.h"

/* Defines ********************************************************************/
// Period Config
#define PERIOD              		(1538u)		// 100MHz/65kHz = 1538
#define HALF_PERIOD        			(769u)
#define ISR_100US_PERIOD           	(10000u) 	// 100MHz/10kHz = 10000
#define ISR_1MS_PERIOD           	(6250u)  	// (100MHz/16)/1kHz = 6250
#define ISR_10MS_PERIOD           	(62500u) 	// (100MHz/16)/100Hz = 62500
#define DEBUG_PERIOD				(500u)
//#define SBC_WDI_PERIOD           	(27316u) 	// (100MHz/256)/14.3Hz = 27316
#define SBC_WDI_PERIOD           	(43706u) 	// (100MHz/16)/143Hz = 43706

// Phase Config
#define INIT_CNT             		(0u)
#define CM1_ISR                  	(1u)
//#define CM1_SBC_WDI					(13658u)	// duty = 0.5
#define CM1_SBC_WDI				(21853u)	// duty = 0.5

// CMU Config
#define CMU_CLK_SOURCE_DISABLE		(0u)
#define CMU_CLK_DISABLE           	(1u)
#define CMU_CLK_ENABLE            	(2u)
#define CMU_CLK_ENABLE_PERMANENT  	(3u)

// Clock Config
#define TCLK_FIXCLK0      			((uint32)0u << 12)
#define TCLK_FIXCLK1         		((uint32)1u << 12)
#define TCLK_FIXCLK2         		((uint32)2u << 12)
#define TCLK_FIXCLK3         		((uint32)3u << 12)
#define TCLK_FIXCLK4           		((uint32)4u << 12)
#define TCLK_FIXCLK5            	((uint32)5u << 12)
#define TCLK_FIXCLK6            	((uint32)6u << 12)
#define TCLK_FIXCLK7            	((uint32)7u << 12)

// Output Level
#define TOUT_ACTIV_LO				((uint32)0u << 11)
#define TOUT_ACTIV_HI         		((uint32)1u << 11)

// Reset Config
#define SELF_RESET             		((uint32)0u << 20u)
#define LTOM_RESET            		((uint32)1u << 20u)
#define ECAP_RESET            		((uint32)5u << 20u)

// Trigger Config
#define LTOM_TRIG_OUT         		((uint32)0u << 23u)
#define CCU0_TRIG_OUT          		((uint32)1u << 24u)

// Output Select
#define TOUT_TAB_A            		(0x0u)
#define TOUT_TAB_B           		(0x1u)
#define TOUT_TAB_C           		(0x2u)
#define TOUT_TAB_D           		(0x3u)

// Enable Config
#define TOM_CH(ch, en)            	((uint32)en << (ch*2u))
#define OUT_EN                 		((uint32)2u)
#define OUT_DIS                		((uint32)1u)
#define CH_EN                     	((uint32)2u)
#define CH_DIS                    	((uint32)1u)
#define FUPD_EN                   	((uint32)2u)
#define FUPD_DIS                  	((uint32)1u)
#define UP_EN                     	((uint32)0x20000u)
#define UP_DIS                    	((uint32)0x10000u)

// Adc Config
#define ADCTRIG0_FROM_TOM0_CH(x)  	((uint32)(x))
#define ADCTRIG1_FROM_TOM1_CH(x)  	((uint32)(x))

// TIM Config
#define TIM_CH_ENABLE        		(1u)
#define TIM_TPWM_MODE        		(0u)
#define TIM_CHX_SELECTED     		(0u)
#define TIM_DUTY_CNTS        		(3u)
#define TIM_PERIOD_CNT       		(3u)
#define TIM_CNT_SR_USED      		(0u)
#define TIM_HIGH_LEVEL       		(1u)
#define TIM_CLK0_SELECTED    		(0u)
#define TIM_TIMEOUT_DISABLE  		(0u)
#define TIM_CH3_TO_IOPIN     		(9u)

/* Defines ********************************************************************/
#define TOM_CH_CFG(TOMx_CHx, Cnt, Period, Cmd, Ctrl) 			\
							{ GTM_##TOMx_CHx##_CN0.U  = Cnt;   	\
							  GTM_##TOMx_CHx##_SR0.U  = Period;	\
                              GTM_##TOMx_CHx##_SR1.U  = Cmd;   	\
                              GTM_##TOMx_CHx##_CTRL.U = Ctrl; }

/* Functions ******************************************************************/
extern void Gtm_vTom_cfg(void);
extern void Gtm_vTim_cfg(void);

#endif
