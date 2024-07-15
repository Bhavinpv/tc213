/** ****************************************************************************
 * \file    IfxQspi.h
 * \brief
 *
 *  Details
 *
 * \section AUTHOR
 *    #.
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

#ifndef IFXQSPI__H
#define IFXQSPI__H 1

/* Includes *******************************************************************/
#include "Qspi_cfg.h"

/* Defines ********************************************************************/
/*******************************************************************************
 * W1/R0 | Address			| Data        | Parity
 * Bit15 | Bit14 - Bit9 	| Bit8 - Bit1 | Bit0
 ******************************************************************************/
#define W_PROTCFG_UNLO_KEY1			0x8756	/* 1-000011-10101011-0: Write Data AB */
#define W_PROTCFG_UNLO_KEY2			0x87DE	/* 1-000011-11101111-0: Write Data EF */
#define W_PROTCFG_UNLO_KEY3			0x86AD	/* 1-000011-01010110-1: Write Data 56 */
#define W_PROTCFG_UNLO_KEY4			0x8625	/* 1-000011-00010010-1: Write Data 12 */

#define W_PROTCFG_LOCK_KEY1			0x87BE	/* 1-000011-11011111-0: Write Data DF */
#define W_PROTCFG_LOCK_KEY2			0x8668	/* 1-000011-00110100-0: Write Data 34 */
#define W_PROTCFG_LOCK_KEY3			0x877D	/* 1-000011-10111110-1: Write Data BE */
#define W_PROTCFG_LOCK_KEY4			0x8795	/* 1-000011-11001010-1: Write Data CA */

#define R_PROTSTAT			0x5000	/* 0-101000-00000000-0: Read Data */
#define A_PROTSTAT_UNLO			0x81E1	/* 1-000000-11110000-1: Write Data F0 */
#define A_PROTSTAT_LOCK			0x81E2	/* 1-000000-11110001-0: Write Data F1 */

#define W_SYSPCFG0			0x8800	/* 1-000100-00000000-0: Write Data 00 */
#define W_SYSPCFG1			0x8A10	/* 1-000101-00001000-0: Write Data 08 */
#define W_WDCFG0			0x8DD1	/* 1-000110-11101000-1: Write Data E8 */
#define W_WDCFG1			0x8E12	/* 1-000111-00001001-0: Write Data 09 */
#define W_FWDCFG			0x9017	/* 1-001000-00001011-1: Write Data 0B */
#define W_WWDCFG0			0x9201	/* 1-001001-00000000-1: Write Data 00 */
#define W_WWDCFG1			0x9401	/* 1-001010-00000000-1: Write Data 00 */

#define R_SYSPCFG0			0x0801	/* 0-000100-00000000-1: Read Data */
#define R_SYSPCFG1			0x0A00	/* 0-000101-00000000-0: Read Data */
#define R_WDCFG0			0x0C00	/* 0-000110-00000000-0: Read Data */
#define R_WDCFG1			0x0E01	/* 0-000111-00000000-1: Read Data */
#define R_FWDCFG			0x1001	/* 0-001000-00000000-1: Read Data */
#define R_WWDCFG0			0x1200	/* 0-001001-00000000-0: Read Data */
#define R_WWDCFG1			0x1400	/* 0-001010-00000000-0: Read Data */
#define R_WWDSTAT			0x5201	/* 0-101001-00000000-1: Read Data */

#define R_RSYSPCFG0			0x1601	/* 0-001011-00000000-1: Read Data */
#define R_RSYSPCFG1			0x1800	/* 0-001100-00000000-0: Read Data */
#define R_RWDCFG0			0x1A01	/* 0-001101-00000000-1: Read Data */
#define R_RWDCFG1			0x1C01	/* 0-001110-00000000-1: Read Data */
#define R_RFWDCFG			0x1E00	/* 0-001111-00000000-0: Read Data */
#define R_RWWDCFG0			0x2001	/* 0-010000-00000000-1: Read Data */
#define R_RWWDCFG1			0x2200	/* 0-010001-00000000-0: Read Data */
#define R_BCK_FREQ_CHANGE	0x6201	/* 0-110001-00000000-1: Read Data */
#define R_BCK_FRE_SPREAD	0x6401	/* 0-110010-00000000-1: Read Data */
#define R_VMONSTAT			0x4C01	/* 0-100110-00000000-1: Read Data */

#define W_DEVCTRL			0xAA55	/* 1-010101-00101010-1: Write Data 2A */
#define W_DEVCTRLN			0xADAB	/* 1-010110-11010101-1: Write Data D5 */
#define R_DEVSTAT			0x4E00	/* 0-100111-00000000-0: Read Data */
#define A_DEVSTAT			0x8054	/* 1-000000-00101010-0: Write Data 2A */

#define W_ABIST_SELECT0_SS			0xDC46	/* 1-101110-00100011-0: Write Data 23 */
#define W_ABIST_SELECT1_SS			0xDE05	/* 1-101111-00000010-1: Write Data 02 */
#define W_ABIST_SELECT2_SS			0xE182	/* 1-110000-11000001-0: Write Data C1 */
#define W_ABIST_CTRL0_SS			0xD806	/* 1-101100-00000011-0: Write Data 03 */
#define W_ABIST_SELECT0_INT			0xDC20	/* 1-101110-00010000-0: Write Data 10 */
#define W_ABIST_SELECT1_INT			0xDE63	/* 1-101111-00110001-1: Write Data 31 */
#define W_ABIST_SELECT2_INT			0xE061	/* 1-110000-00110000-1: Write Data 30 */
#define W_ABIST_CTRL0_INT			0xD817	/* 1-101100-00001011-1: Write Data 0B */
#define R_ABIST_CTRL0			0x5801	/* 0-101100-00000000-1: Read Data */
#define R_ABIST_SELECT0			0x5C00	/* 0-101110-00000000-0: Read Data */
#define R_ABIST_SELECT1			0x5E01	/* 0-101111-00000000-1: Read Data */
#define R_ABIST_SELECT2			0x6000	/* 0-110000-00000000-0: Read Data */

#define R_IF			0x3801	/* 0-011100-00000000-1: Read Data */
#define R_SYSFAIL			0x3401	/* 0-011010-00000000-1: Read Data */
#define R_INITERR			0x3600	/* 0-011011-00000000-0: Read Data */
#define R_MONSF0			0x4001	/* 0-100000-00000000-1: Read Data */
#define R_MONSF1			0x4200	/* 0-100001-00000000-0: Read Data */
#define R_MONSF2			0x4400	/* 0-100010-00000000-0: Read Data */
#define R_MONSF3			0x4601	/* 0-100011-00000000-1: Read Data */

#define W_MONSF0_CLR			0xC1FE	/* 1-100000-11111111-0: Write Data FF */
#define W_MONSF1_CLR			0xC3FF	/* 1-100001-11111111-1: Write Data FF */
#define W_MONSF2_CLR			0xC5FF	/* 1-100010-11111111-1: Write Data FF */

#define W_MCSMON			0xF801	/* 1-111100-00000000-1: Write Data 00 */
#define R_MCSMON			0x7800	/* 0-111100-00000000-0: Read Data */

#define R_MONSF1			0x4200	/* 0-100001-00000000-0: Read Data */
#define R_MONSF0			0x4001	/* 0-100000-00000000-1: Read Data */
#define R_OTFAIL			0x4800	/* 0-100100-00000000-0: Read Data */
#define R_OTWRNSF			0x4A01	/* 0-100101-00000000-1: Read Data */

/* Defines ********************************************************************/
#define WAIT_SBC_RESPONSE	while(QSPI0_STATUS.B.TXF != 1);\
							QSPI0_FLAGSCLEAR.B.TXC = 1;\
							while(QSPI0_STATUS.B.RXF != 1);\
							QSPI0_FLAGSCLEAR.B.RXC = 1;

#define WWD_PERIOD                      70u		//7ms = 70*100us [running in 100us]

#define DEBUGGER_CONNECTED              1u

#define WWD_ERRCTR_DEFAULT              0u
#define WWD_ERRCTR_ERR_DETECTED_ONCE    2u
#define WWD_ERRCTR_ERR_CORRECTED_ONCE   1u

#define WWD_TRIG_DISABLE                0u
#define WWD_TRIG_ENABLE                 1u

#define CTR_CLR                         0u
#define WWDT_MAX_ATTEMPTS               3u
#define ABIST_MAX_ATTEMPTS              3u
#define ABIST_WAIT_MAX                  10u

#define SBC_STATE_CHANGE_WAIT_MAX       200u

#define RETRY_CLR                       0u
#define RETRY_SET                       1u

#define ERR_CLR                         0u
#define ERR_SET                         1u

/* Types * Enums **************************************************************/
typedef struct QSPI_S_ERROR_BIT{
	// Init
	bit Unlock			: 1;
	bit LockUp			: 1;
	bit Config			: 1;
	bit ReadStatus		: 1;
	bit MPSConfig		: 1;
	bit GotoNormal		: 1;
	bit ParityCheck		: 1;
	// Test
	bit ABISTFin		: 1;
	bit ABISTSS			: 1;
	bit ABISTInt		: 1;
	bit WWDEnCnt		: 1;
	// Check
	bit NormalState		: 1;
	bit QCOStatus		: 1;
	bit QVRStatus		: 1;
	// Reserved
	u16 Reserved1		: 2;
	u16 Reserved2		: 16;
} QSPI_S_ERROR_BIT;

typedef union QSPI_S_ERROR{
	u32 all;
	QSPI_S_ERROR_BIT bit;
} QSPI_S_ERROR;

typedef struct QSPI_S_TEST_CMD_BIT{
	bit Parity	:1;
	bit Data	:8;
	bit Address	:6;
	bit Dir		:1; // 0: read / 1: write
} QSPI_S_TEST_CMD_BIT;

typedef union QSPI_S_TEST_CMD{
	u16 all;
	QSPI_S_TEST_CMD_BIT bit;
} QSPI_S_TEST_CMD;

typedef struct QSPI_S_TEST{
	u16 Enable;
	QSPI_S_TEST_CMD TxData;
	QSPI_S_TEST_CMD RxData;
} QSPI_S_TEST;

typedef enum
{
  QSPI_TEST_INIT = 0u,
  QSPI_TEST_STARTED,
  QSPI_SBC_STATUS_READ,
  QSPI_SBC_IN_NORMAL_STATE,
  QSPI_SBC_ABIST_COMPLETED,
  QSPI_SBC_NORMAL_AFTER_ABIST,
  QSPI_SBC_WWDTEST_RUNNING,
  QSPI_SBC_WWDTEST_COMPLETED,
  QSPI_TEST_FINISHED
} QSPI_E_TEST_STS;

typedef enum
{
  QSPI_WWDT_INIT = 0u,
  QSPI_WWDT_RUN_TIMER0,
  QSPI_WWDT_RD_ERRCTR,
  QSPI_WWDT_DIS_WDGTRIG,
  QSPI_WWDT_RUN_TIMER1,
  QSPI_WWDT_EN_WDGTRIG,
  QSPI_WWDT_RUN_TIMER2,
  QSPI_WWDT_SUCCESS,
  QSPI_WWDT_RETRY_TEST,
  QSPI_WWDT_FAULT_DETECTED
} QSPI_E_WWDT_STS;

typedef enum
{
  QSPI_ABIST_START = 0,
  QSPI_ABIST_SST_CHK_RETRY,
  QSPI_ABIST_SST_CHK_STATUS,
  QSPI_ABIST_INTT_START,
  QSPI_ABIST_INTT_CHK_RETRY,
  QSPI_ABIST_INTT_CHK_STATUS,
  QSPI_ABIST_SUCCESS,
  QSPI_ABIST_FAILED
} QSPI_E_ABIST_STS;

/* Datas **********************************************************************/
extern QSPI_S_ERROR Qspi_SBCError;
extern QSPI_E_TEST_STS Qspi_StrtUpTst_Sts;
/* Functions ******************************************************************/
extern void Qspi_Init(void);
extern void Qspi_StartUp(void);
extern void Qspi_SBC_WWDTest(void);
extern void Qspi_SBC_Check10ms(void);
extern void Qspi_TestCmd_Calc(QSPI_S_TEST_CMD *v);
extern void Qspi_Cmd_Test10ms(QSPI_S_TEST *v);
extern void Qspi_SBC_Unlock(void);
extern void Qspi_SBC_Lockup(void);
extern void Qspi_SBC_TxRxData(u16 TxData,u16 *RxData);
#endif
