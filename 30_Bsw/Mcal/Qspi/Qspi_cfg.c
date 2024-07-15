/*******************************************************************************
 * \file    IfQspi_cfg.c
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

/* Includes *******************************************************************/
#include "Qspi_cfg.h"

/* Functions ******************************************************************/
#define MPU_QM_START_SEC_CODE
#include "MPU_MemMap.h"
void Qspi_cfg(void)
{
	IfxScuWdt_clearCpuEndinit(IfxScuWdt_getCpuWatchdogPassword());
	QSPI0_CLC.U = 8; // Enable the SPI module
	IfxScuWdt_setCpuEndinit(IfxScuWdt_getCpuWatchdogPassword());

	QSPI0_GLOBALCON.U = (QSPI0_GLOBALCON_TQ | QSPI0_GLOBALCON_EXPECT | QSPI0_GLOBALCON_MS);

	QSPI0_PISEL.U = (QSPI0_PISEL_MRIS);

	QSPI0_GLOBALCON1.U = (QSPI0_GLOBALCON1_TXFM | QSPI0_GLOBALCON1_RXFM);

	QSPI0_ECON0.U = (QSPI0_ECON0_PAREN | QSPIO_ECON0_Q | QSPIO_ECON0_A |
			         QSPIO_ECON0_B | QSPIO_ECON0_C);

	QSPI0_SSOC.U = (QSPI0_SSOC_OEN | QSPI0_SSOC_AOL);

	// Make sure that flags in STATUS register are cleared
	while((QSPI0_STATUS.U & 0xFFF) != 0)
	{
		QSPI0_FLAGSCLEAR.U = 0xFFF;
	}

	QSPI0_BACONENTRY.U = (QSPI0_BACON_LAST | QSPI0_BACON_BYTE | QSPI0_BACON_DL |
			              QSPI0_BACON_MSB  | QSPI0_BACON_CS   | QSPI0_BACON_TRAIL);

	QSPI0_GLOBALCON.B.EN = 1;
}
#define MPU_QM_STOP_SEC_CODE
#include "MPU_MemMap.h"
