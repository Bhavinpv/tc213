/*******************************************************************************
 * Filename   : Safety_cfg.h
 * Project    : IPB LVDC
 * Author(s)  :
 * Created    :
 * Description:
 *
 * Last modification:
 *  on $Date: $
 *  by $Author: $
 *  current $Revision: $
 *
 * Compiler info :
 * Processor info: TC 213
 *
 * Copyright (c) 2021 Delta Energy Systems (Germany) GmbH.
 * All rights reserved.
 ******************************************************************************/

#ifndef SAFETY_CFG_H
#define SAFETY_CFG_H

#include "Platform_Types.h"
#include "mcu_cfg.h"
#include "IfxScu_reg.h"
#include "IfxScuWdt.h"
#include "IfxSmu_reg.h"
#include "IfxSrc.h"
#include "IfxSrc_cfg.h"
#include "IfxCpu_reg.h"
#include "IfxMtu_reg.h"
#include "IfxFlash_reg.h"
#include "IfxSbcu_reg.h"
#include "IfxIom_reg.h"

/*******************************************************************************
 * Global constants and macros
 ******************************************************************************/
#define SAFETY_ENABLE	0

#define IOM_ISM_PIN		0x00
#define IOM_ISM_MON0	0x01
#define IOM_ISM_MON1	0x02
#define IOM_ISM_MON2	0x03

#define IOM_ISR_PIN		0x00
#define IOM_ISR_REF0	0x01
#define IOM_ISR_REF1	0x02
#define IOM_ISR_REF2	0x03

#define IOM_FPC_DDFM_RFE	0x00
#define IOM_FPC_IDFM_RFE	0x01
#define IOM_FPC_IDFM_RE		0x02
#define IOM_FPC_IDFM_FE		0x03
#define IOM_FPC_DDFM_RE		0x04
#define IOM_FPC_DDFM_FE		0x05
#define IOM_FPC_PREM_RE		0x06
#define IOM_FPC_PREM_FE		0x07

#define IOM_EDS_CLR_NE		0x00
#define IOM_EDS_CLR_RE		0x01
#define IOM_EDS_CLR_FE		0x02
#define IOM_EDS_CLR_RFE		0x03

#define IOM_EDS_GATE_NE		0x00
#define IOM_EDS_GATE_RE		0x04
#define IOM_EDS_GATE_FE		0x08
#define IOM_EDS_GATE_RFE	0x0C

/*******************************************************************************
 * Global data types (typedefs / structs / enums)
 ******************************************************************************/
typedef struct SAFETY_S_ERROR_BIT{
	// Power
	bit ExtVREG_MON			: 1;
	bit ExtV13_MON			: 1;
	bit BANDGAP_MON			: 1;
	bit EVR_CFGMON			: 1;
	// Clock
	bit SystemPLL_CLKMON	: 1;
	bit SRI_CLKMON			: 1;
	bit SPB_CLKMON			: 1;
	bit GTM_CLKMON			: 1;
	// SPB
	bit SBCU_InitCheck		: 1;
	bit WDT_InitCheck		: 1;
	bit RESET_SSCheck		: 1;
	// IOM
	bit Pri_PWM_IOM			: 1;
	// Reserved
	u32 Reserved			: 19;
} SAFETY_S_ERROR_BIT;

typedef union SAFETY_S_ERROR{
	u32 all;
	SAFETY_S_ERROR_BIT bit;
} SAFETY_S_ERROR;

/*******************************************************************************
 * Global data
 ******************************************************************************/
extern SAFETY_S_ERROR Safety_CfgError;

/*******************************************************************************
 * Global function prototypes
 ******************************************************************************/
extern void Safety_Cfg(void);
extern void Safety_Check10ms(void);
extern void Safety_IOM_Cfg(void);

#endif

/*
 * End of file
 */

