/*******************************************************************************
 * \file    IfQspi_cfg.h
 * \brief
 *
 * \section AUTHOR
 *    #.
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

#ifndef IFXQSPI_CFG_H
#define IFXQSPI_CFG_H 1

/* Includes *******************************************************************/
#include "IfxQspi_reg.h"
#include "IfxScuWdt.h"

/* Defines ********************************************************************/
#define QSPI0_GLOBALCON_TQ     ((uint32)8)			// Division by 8
#define QSPI0_GLOBALCON_EXPECT ((uint32)15<< 10)	// Time out = 2097152 (2^21)
#define QSPI0_GLOBALCON_MS     ((uint32)0 << 25)	// Master Transmit and Receive
#define QSPI0_GLOBALCON_EN     ((uint32)1 << 24)	// RUN requested

#define QSPI0_PISEL_MRIS       ((uint32)0)			// MRSTxA

#define QSPI0_GLOBALCON1_TXFM  ((uint32)1 << 26)	// Single Move Mode
#define QSPI0_GLOBALCON1_RXFM  ((uint32)1 << 28)	// Single Move Mode

#define QSPI0_ECON0_PAREN      ((uint32)0 << 14)	// Disable Parity Check
#define QSPIO_ECON0_Q          ((uint32)9)			// 1
#define QSPIO_ECON0_A          ((uint32)0 << 6)		// 0
#define QSPIO_ECON0_B          ((uint32)1 << 8)		// 1
#define QSPIO_ECON0_C          ((uint32)1 << 10)	// 1

#define QSPI0_SSOC_OEN         ((uint32)1 << 16)	// Enable SLSO Outputs
#define QSPI0_SSOC_AOL         ((uint32)0)			// Active Low for the SLSO Outputs

#define QSPI0_BACON_LAST       ((uint32)1)			// Last Word in a Frame
#define QSPI0_BACON_BYTE       ((uint32)0 << 22)	// DL defines the data length in bits
#define QSPI0_BACON_DL         ((uint32)15<< 23)	// 16 bits of bytes
#define QSPI0_BACON_MSB        ((uint32)1 << 21)	// Shift MSB first
#define QSPI0_BACON_CS         ((uint32)0 << 28)	// Select slave 0 by driving SLSO signal
#define QSPI0_BACON_TRAIL      ((uint32)1 << 16)	// Leading delay = 2

/* Functions ******************************************************************/
extern void Qspi_cfg(void);

#endif
