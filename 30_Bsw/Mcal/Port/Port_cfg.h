/*******************************************************************************
 * \file    IfPort_cfg.h
 * \brief   port define macros
 *
 * \section AUTHOR
 *    #. deduxia
 *
 * \section SVN
 *  $Date$
 *  $Author$
 *  $Revision$
 *
 * \section LICENSE
 * Copyright (c) yyyy .
 * All rights reserved.
 ******************************************************************************/

#ifndef PORT_CFG_H
#define PORT_CFG_H 

/* Includes *******************************************************************/
#include "IfxPort_reg.h"
#include "IfxScuWdt.h"

/* Defines ********************************************************************/
#define IN_NOPULL		(0x00U)
#define IN_PULLDOWN		(0x01U)
#define IN_PULLUP		(0x02U)

#define OUT_FUNC0		(0x10U)
#define OUT_FUNC1		(0x11U)
#define OUT_FUNC2		(0x12U)
#define OUT_FUNC3		(0x13U)
#define OUT_FUNC4		(0x14U)
#define OUT_FUNC5		(0x15U)
#define OUT_FUNC6		(0x16U)
#define OUT_FUNC7		(0x17U)
#define OUT_PUSHPULL	(0x00U)
#define OUT_OPENDRAIN	(0x08U)

/* Functions ******************************************************************/
extern void Port_Cfg(void);

#endif
