/** ****************************************************************************
 * \file    CANDriver.h
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
 **************************************************************************** */
/*******************************************************************************
 *Includes
 ******************************************************************************/
#include "Ifx_Types.h"
#include "can_driver_cfg.h"
#include "can_cfg.h"
#include "mpu_api.h"

#ifndef CANDriver_H_
#define CANDriver_H_ 1

#ifdef __cplusplus
  extern "C" {
#endif

/*******************************************************************************
 * Global constants and macros
 ******************************************************************************/
#if(MEMORY_PROTECTION_ENABLED)
#define FRAC_DIV					(((uint32)1 << 14) | (uint32)0x3FF) /* fcan = fasyn_can */
#define CAN_HW_MAX_MO_INDEX       	(127)
#define CAN_HW_TX_INDEX_CONV(x)   	(CAN_HW_MAX_MO_INDEX - x)
#endif/*MEMORY_PROTECTION_ENABLED*/
/*******************************************************************************
 * Global data types (typedefs / structs / enums)
 ******************************************************************************/
typedef struct CAN_S_E2EDATA{
	uint8 BZ;
	uint8 CRC;
} CAN_S_E2EDATA;

typedef struct CAN_S_E2E{
	CAN_S_E2EDATA TxData[CAN_TX_MSG_SIZE];
	CAN_S_E2EDATA RxData[CAN_RX_MSG_SIZE];
	CAN_S_E2EDATA RxErr[CAN_RX_MSG_SIZE];
	u16 RxErrCnt[CAN_RX_MSG_SIZE];
	u16 RxErrSign[CAN_RX_MSG_SIZE];
	u16 RxErrOut;
	u16 RxErrSum;
} CAN_S_E2E;

/*******************************************************************************
 * Global data
 ******************************************************************************/
extern CAN_S_E2E CanE2E;

#if(MEMORY_PROTECTION_ENABLED)
extern Can_GenMsgSendType_t CANDriver_mg_aeMsgSendType[CAN_TX_MSG_SIZE];
extern uint16 CANDriver_mg_au16TxCycleTime[CAN_TX_MSG_SIZE];
extern boolean              CANDriver_mg_bError;
#endif/*MEMORY_PROTECTION_ENABLED*/

/*******************************************************************************
 * Global function prototypes
 ******************************************************************************/
/*******************************************************************************
 * Global function prototypes
 ******************************************************************************/
extern void vCandriver_transmit( uint8 IfNmb, uint8 *au8Data );
extern void CANDriver_1mSTask(void);
extern void CANDriver_Diag(uint16* const pu16ErrCode);
extern void CANDriver_Init(void);

#if(MEMORY_PROTECTION_ENABLED)
extern void CANDriver_HwCfg(void);
extern void CANDriver_MboxToRxBuf(uint16 u16RxIndex);
extern void CANDriver_TxDataToMbox(uint16 u16MboxIndex, uint16 u16TxBufIndex);
extern void CANDriver_TxReqNewData(uint16 Idx);
extern uint8 CANDriver_TxReqSts(uint16 Idx);
extern uint8 CANDriver_ReadStsRxPending(uint16 Idx);
extern void CANDriver_ClrRxPending(uint16 Idx);
#endif/*MEMORY_PROTECTION_ENABLED*/

#ifdef __cplusplus
  }
#endif


#endif 

/*
 * End of file
 */

