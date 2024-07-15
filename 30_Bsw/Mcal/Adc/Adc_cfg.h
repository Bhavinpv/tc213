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

#ifndef ADC_CFG_H
#define ADC_CFG_H

/* Includes *******************************************************************/
#include "IfxVadc_reg.h"
#include "IfxSrc.h"
#include "IfxSrc_cfg.h"
#include "IfxScuWdt.h"
#include "mcu_cfg.h"
#include "Main_api.h"

/* Defines ********************************************************************/
/* Global configuration */
#define ADC_GROUP_NBR             	(2u)   							/* Available groups on chip        */
#define ADC_CH_PER_GROUP          	(12u)  							/* available channel per adc group */
#define ADC_CLK_DIV(x)            	((x) - 1u)
#define ARB_CLK_DIV(x)            	((((x) - 1u)*2u) << 8u)
#define WR_PARAM_EN               	((uint32)1u << 15u)
#define NO_POST_CAL               	((uint32)3u << 16u)
#define START_CALIB               	((uint32)1u << 31u)
#define ADC_LOSUP                 	((uint32)0u << 14u)

/* Arbitration Configuration */
#define ADC_CONV_ON               	(3u)
#define ADC_CONV_OFF              	(0u)
#define ARBIT_4XSLOTS             	((uint32)0u)
#define ARBIT_8XSLOTS             	((uint32)1u << 4u)
#define ARBIT_RUN_PERM            	((uint32)0u)
#define ARBIT_NOTRUN_PERM         	((uint32)1u << 7u)

/* Arbitration priority */
#define REQ_SRC_EN(x)             	((uint32)1u << ((x) + 24u)) 	/* enable request source x   */
#define ALL_REQ_SRC_EN            	((uint32)7u << 24u)        		/* enable only 0 1 2 arbiter for fast arbitration */
#define FIRST_PRIO                	((uint32)0x3u)
#define SECOND_PRIO               	((uint32)0x2u)
#define THIRD_PRIO                	((uint32)0x1u)
#define FOURTH_PRIO               	((uint32)0x0u)
#define REQ_SRC_PRIO_ORDER(Src0Prio, Src1Prio, Src2Perio, Src3Prio)     \
                                  	((Src0Prio      ) | (Src1Prio << 4) | \
                                  	(Src2Perio << 8) | (Src3Prio << 12)  )
#define INJECTABLE_REQ_SRC(x)     	(1u << (3u + (4u*(x))))

/* Channel control register */
#define CH_RES_REG(x)             	((uint32)(x) << 16u)        	/* Result in GxRESx     */
#define RES_BSCR_GRES             	((uint32)1u << 20u)        		/* Result of background source in global RES */
#define REQ_SRC_ENCH(x)           	((uint32)1u << (x))       		/* Background request source enable channel  */
#define REQ_GAT_EN                	((uint32)1u)
#define PEND_CH_NOT_OVWR          	((uint32)1u << 5u)
#define REQ_TRIG_BY_SW            	((uint32)1u << 9u)
#define EXT_TRIG_EN               	((uint32)1u << 2u)

/* Queue input configuration  */
#define QU_ENTRY_REQ_CH(x)        	((uint32)(x))
#define QU_ENTRY_REFILL           	((uint32)1u << 5u)
#define QU_ENTRY_WAITTRIG         	((uint32)1u << 7u)
#define QU_ENTRY_FOLLOW           	((uint32)0u << 7u)

/* Trigger source control  */
#define XT_WRITE_EN           		((uint32)1u << 15u)
#define XTRIG_SEL(x)          		(((uint32)(x) << 8u) | XT_WRITE_EN)
#define XT_FALLING_EDGE       		(((uint32)2u << 13u) | XT_WRITE_EN)
#define XT_RISING_EDGE        		(((uint32)2u << 13u) | XT_WRITE_EN)
#define XT_ANY_EDGE           		(((uint32)3u << 13u) | XT_WRITE_EN)
#define GT_WRITE_EN           		((uint32)1u << 23u)
#define GATE_IN_SEL(x)        		(((uint32)(x) << 16u) | GT_WRITE_EN)

/* Functions ******************************************************************/
extern void Adc_cfg(void);
extern void Adc_cfg_ch_B01(void);
extern void Adc_cfg_ch_C0(void);

#endif
