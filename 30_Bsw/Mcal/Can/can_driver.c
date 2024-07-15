/*******************************************************************************
 * \file    CANDriver.c
 * \brief
 *
 * \section AUTHOR
 *    #. Ph.Ha
 *
 * \section SVN
 *  $Date$
 *  $Author$
 *  $Revision$
 ******************************************************************************/
 /*******************************************************************************
 * Included header
 ******************************************************************************/
#include "IfxScuWdt.h"
#include "IfxCan_reg.h"
#include "can_defines.h"
#include "tp_cfg.h"
#include "mpu_api.h"
#include "tp.h"
#include "Uds.h"
// #include "ComServ_api.h"
/* Module header */
#include "can_driver.h"

/*******************************************************************************
 * Local constants and macros (private to module)
 ******************************************************************************/
#if(!MEMORY_PROTECTION_ENABLED)
#define FRAC_DIV					(((uint32)1 << 14) | (uint32)0x3FF) /* fcan = fasyn_can */
#define CAN_HW_MAX_MO_INDEX       	(127)
#define CAN_HW_TX_INDEX_CONV(x)   	(CAN_HW_MAX_MO_INDEX - x)
#endif/*!MEMORY_PROTECTION_ENABLED*/

#define CAN_TASK_CYCLE_TIME			(1U) /* set here the cycle time of the CAN_Task() in ms. */
/*******************************************************************************
 * Local data types (private typedefs / structs / enums)
 ******************************************************************************/

/*******************************************************************************
 * Local data (private to module)
 ******************************************************************************/
extern const CanTxMsg_t       CanTxMsg[CAN_TX_MSG_SIZE];
extern const CanRxMsg_t       CanRxMsg[CAN_RX_MSG_SIZE];

#if(MEMORY_PROTECTION_ENABLED)
#define MPU_QM_START_SEC_VAR_NOINIT
#include "MPU_MemMap.h"
Can_GenMsgSendType_t CANDriver_mg_aeMsgSendType[CAN_TX_MSG_SIZE];
uint16               CANDriver_mg_au16TxCycleTime[CAN_TX_MSG_SIZE];
#define MPU_QM_STOP_SEC_VAR_NOINIT
#include "MPU_MemMap.h"
#else

#define MPU_ASIL_START_SEC_VAR_NOINIT
#include "MPU_MemMap.h"
CAN_S_E2E CanE2E;
static Can_GenMsgSendType_t CANDriver_mg_aeMsgSendType[CAN_TX_MSG_SIZE];
static uint16               CANDriver_mg_au16TxCycleTime[CAN_TX_MSG_SIZE];
static boolean              CANDriver_mg_bError;
#define MPU_ASIL_STOP_SEC_VAR_NOINIT
#include "MPU_MemMap.h"
#endif/*MEMORY_PROTECTION_ENABLED*/


/*******************************************************************************
 * Local function prototypes (private to module)
 ******************************************************************************/
#if(!MEMORY_PROTECTION_ENABLED)
static void CANDriver_HwCfg(void);
static void CANDriver_MboxToRxBuf(uint16 u16RxIndex);
static void CANDriver_TxDataToMbox(uint16 u16MboxIndex, uint16 u16TxBufIndex);
static void CANDriver_TxDataE2E(uint16 u16TxBufIndex);
static void CANDriver_RxDataE2E(uint16 u16TxBufIndex);
#endif/*!MEMORY_PROTECTION_ENABLED*/

/** ****************************************************************************
 * \brief     Function description
 *
 **************************************************************************** */
#if(!MEMORY_PROTECTION_ENABLED)
#define MPU_ASIL_START_SEC_CODE
#include "MPU_MemMap.h"

void CANDriver_1mSTask(void)
{
  uint16 u16Index = 0;
  uint16 u16TxIndex = 0;
  uint16 RxErrOut = 0;
  if(CANDriver_mg_bError){
      return;
  }
  for(u16Index = 0u; u16Index < (uint16)CAN_TX_MSG_SIZE; u16Index++)
  {
    if(Cyclic == CANDriver_mg_aeMsgSendType[u16Index]){

      if(0u == CANDriver_mg_au16TxCycleTime[u16Index]){
        u16TxIndex = CAN_HW_TX_INDEX_CONV(u16Index);

        if(0u == MODULE_CAN.MO[u16TxIndex].STAT.B.TXRQ)
        {
          CANDriver_TxDataE2E(u16Index);
          CANDriver_TxDataToMbox(u16TxIndex, u16Index);
          MODULE_CAN.MO[u16TxIndex].CTR.U   = MS_TX_REQ_NEWDATA;
          CANDriver_mg_au16TxCycleTime[u16Index]  = CanTxMsg[u16Index].CycleTime - 1u;
        }

      }else{
            CANDriver_mg_au16TxCycleTime[u16Index]--;
      }
    }else{

      /* Handle the ISO Tx Msg  */
      if(TRUE == CanTxFlags[u16Index].ConfirmFlg){
        u16TxIndex = CAN_HW_TX_INDEX_CONV(u16Index);

        CANDriver_TxDataToMbox(u16TxIndex, u16Index);
        MODULE_CAN.MO[u16TxIndex].CTR.U = MS_TX_REQ_NEWDATA;
        CanTxFlags[u16Index].ConfirmFlg = FALSE;
      }
    }
  }

  for(u16Index = 0u; u16Index < CAN_RX_MSG_SIZE; u16Index++)
  {
    if(1u == MODULE_CAN.MO[u16Index].STAT.B.RXPND){

      CANDriver_MboxToRxBuf(u16Index);
      CANDriver_RxDataE2E(u16Index);
      MODULE_CAN.MO[u16Index].CTR.U = CLR_RX_MS_PENDING;

      if (Cyclic == CanRxMsg[u16Index].GenMsgSendType) {
        /* set received frame indication flag for higher layer  */
         CanRxFlags[u16Index].IndFlg       = TRUE;
         /* reset TimeOut counter for the message         */
        *CanRxMsg[u16Index].TimeoutCounter = 0u;
         CanRxFlags[u16Index].Timeout 	   = FALSE;
      }else if (NoMsgSendType == CanRxMsg[u16Index].GenMsgSendType) {

        if (ISO_TP == CanRxMsg[u16Index].MsgType) {

          TpRx( 0u, (uint16* const)CanRxMsg[u16Index].Data );
        }
        else{
             CanRxFlags[u16Index].IndFlg         = TRUE;
            *CanRxMsg[u16Index].TimeoutCounter   = 0u;
             CanRxFlags[u16Index].Timeout 		 = FALSE;
        }

      }
    }
    else {
          (*(CanRxMsg[u16Index].TimeoutCounter))++;
          /* check if timeout value has reached */
          if ((CanRxMsg[u16Index].Timeout / CAN_TASK_CYCLE_TIME) <= *(CanRxMsg[u16Index].TimeoutCounter))
          {
           *(CanRxMsg[u16Index].TimeoutCounter) = 0U;
            CanRxFlags[u16Index].Timeout = TRUE;
          }
        }
    if(CanE2E.RxErrSign[u16Index] || CanRxFlags[u16Index].Timeout)
    {
    	RxErrOut = 1;
    }
  }

  CanE2E.RxErrOut = RxErrOut;
}
#define MPU_ASIL_STOP_SEC_CODE
#include "MPU_MemMap.h"

#else

#define MPU_QM_START_SEC_CODE
#include "MPU_MemMap.h"
void CANDriver_1mSTask(void)
{
  
}
#define MPU_QM_STOP_SEC_CODE
#include "MPU_MemMap.h"
#endif/*!MEMORY_PROTECTION_ENABLED*/

#if(!MEMORY_PROTECTION_ENABLED)
#define MPU_ASIL_START_SEC_CODE
#include "MPU_MemMap.h"
/** ****************************************************************************
 * \brief     Function description
 *
 **************************************************************************** */
void CANDriver_Diag(uint16* const pu16ErrCode)
{
  Ifx_CAN_N_SR loc_NodeStatusReg;

  loc_NodeStatusReg  = (Ifx_CAN_N_SR)MODULE_CAN.N[CANDriver_CFG_NODE].SR;

  *pu16ErrCode    = (uint16)loc_NodeStatusReg.B.LEC;

  CANDriver_mg_bError = FALSE;
  if( (CAN_NO_ERROR != loc_NodeStatusReg.B.LEC) && (loc_NodeStatusReg.B.BOFF))
  {
      CANDriver_mg_bError = TRUE;
//      CANDriver_Init();
      CANDriver_HwCfg();
  }

}
#define MPU_ASIL_STOP_SEC_CODE
#include "MPU_MemMap.h"
#endif/*!MEMORY_PROTECTION_ENABLED*/
#define MPU_QM_START_SEC_CODE
#include "MPU_MemMap.h"
/** ****************************************************************************
 * \brief     Function description
 *
 **************************************************************************** */
void vCandriver_transmit( uint8 IfNmb, uint8 *au8Data ) {
  uint8 u8Msg=0;

  for (u8Msg = 0; u8Msg < CAN_TX_MSG_SIZE; ++u8Msg) {

    if (ISO_TP == CanTxMsg[u8Msg].MsgType) {
        CanTxMsg[u8Msg].Data[0] = au8Data[0];
        CanTxMsg[u8Msg].Data[1] = au8Data[1];
        CanTxMsg[u8Msg].Data[2] = au8Data[2];
        CanTxMsg[u8Msg].Data[3] = au8Data[3];
        CanTxMsg[u8Msg].Data[4] = au8Data[4];
        CanTxMsg[u8Msg].Data[5] = au8Data[5];
        CanTxMsg[u8Msg].Data[6] = au8Data[6];
        CanTxMsg[u8Msg].Data[7] = au8Data[7];
        CanTxFlags[u8Msg].ConfirmFlg = TRUE;
    }
  }
}

/** ****************************************************************************
 * \brief     Function description
 *
 **************************************************************************** */
void CANDriver_Init(void){

  uint16  u16Index=0;

  CANDriver_HwCfg();

  for(u16Index = 0u; u16Index < (uint16)CAN_RX_MSG_SIZE; u16Index++)
  {
    *(CanRxMsg[u16Index].IndFlag)  = FALSE;  /* flag for driver  layer     */
    CanRxFlags[u16Index].IndFlg    = FALSE;  /* flag for application layer */
    CanRxFlags[u16Index].Timeout = FALSE;
  }

  for(u16Index = 0u; u16Index < (uint16)CAN_TX_MSG_SIZE; u16Index++)
  {
    *(CanTxMsg[u16Index].ConfFlag)  = FALSE;  /* flag for driver  layer     */
    CanTxFlags[u16Index].ConfirmFlg = FALSE;  /* flag for application layer */

    CANDriver_mg_aeMsgSendType[u16Index]   = CanTxMsg[u16Index].GenMsgSendType;
    CANDriver_mg_au16TxCycleTime[u16Index] = CanTxMsg[u16Index].StartDelay;
  }

  Can_MessageInit();
  CANDriver_mg_bError = FALSE;
}

#define MPU_QM_STOP_SEC_CODE
#include "MPU_MemMap.h"
#if(!MEMORY_PROTECTION_ENABLED)
#define MPU_ASIL_START_SEC_CODE
#include "MPU_MemMap.h"
/** ****************************************************************************
 * \brief     Function description
 *
 **************************************************************************** */
static void CANDriver_HwCfg(void)
{
  uint16 u16Index=0;
  uint16 u16TxIndex=0;
  uint32 u32HelpVar = 1000u;

  IfxScuWdt_clearCpuEndinit(IfxScuWdt_getCpuWatchdogPassword());

  MODULE_CAN.CLC.U = (uint32)0x00u; /* enable module to allow register access*/
  while(0u != u32HelpVar){
    u32HelpVar = MODULE_CAN.CLC.U;
  }
  MODULE_CAN.FDR.U = FRAC_DIV;

  IfxScuWdt_setCpuEndinit(IfxScuWdt_getCpuWatchdogPassword());

  MODULE_CAN.MCR.B.CLKSEL = 0u;       /* switch off clock before change is required */
  MODULE_CAN.MCR.B.CLKSEL = 2u;        /* Osc Clock is selected  */

  /* CCE:Configuration Change Enable, INIT: Initialization */
  MODULE_CAN.N[CANDriver_CFG_NODE].CR.U    = (CANN_SET_INIT | CANN_SET_CCE);
  MODULE_CAN.N[CANDriver_CFG_NODE].PCR.U   = CANDriver_CFG_INPUT;      /* Input B from P20.7, P20.8 for internal Can*/

  /* Bit timing
  tq       = (BRP + 1) / fCAN      if DIV8 = 0
  TSync    = 1 tq
  TSeg1    = (TSEG1 + 1)   tq      (min. 3 tq)
  TSeg2    = (TSEG2 + 1)   tq      (min. 2 tq)
  bit time = TSync + TSeg1 + TSeg2 (min. 8 tq)
  TSJW = (SJW + 1)   tq
    TSeg1 ≥ TSJW + Tprop
    TSeg2 ≥ TSJW
    */
  MODULE_CAN.N[CANDriver_CFG_NODE].BTR.B.DIV8  = 0u;
  MODULE_CAN.N[CANDriver_CFG_NODE].BTR.B.SJW   = 2u;
  MODULE_CAN.N[CANDriver_CFG_NODE].BTR.B.TSEG1 = 11u;
  MODULE_CAN.N[CANDriver_CFG_NODE].BTR.B.TSEG2 = 6u;
  MODULE_CAN.N[CANDriver_CFG_NODE].BTR.B.BRP   = (CANDriver_CFG_CLK_FREQ / (CANDriver_CFG_BAUDRATE * 20)) - 1u;

  for(u16Index = 0u; u16Index < (uint16)CAN_RX_MSG_SIZE; u16Index++)
  {
    while(0x0u != (STATUS_PANCTR_BUSY & MODULE_CAN.PANCTR.U));
    MODULE_CAN.PANCTR.U = (PANCMD_STATIC_ALLOC | PANCTR_PANAR1(MO_NB(u16Index)) | PANCTR_PANAR2(LIST_NB( CANDriver_CFG_NODE + 1u)));

    MODULE_CAN.MO[u16Index].CTR.U   = RX_MESSAGE_CFG;
    MODULE_CAN.MO[u16Index].FCR.U   = MMC_STANDARD_MO;
    MODULE_CAN.MO[u16Index].FCR.U  |= MOFCR_MS_LENGTH(CanRxMsg[u16Index].Dlc);
    MODULE_CAN.MO[u16Index].AR.U    = (MO_STANDARD_MS  | MO_PRIO_CLASS_2 );
    MODULE_CAN.MO[u16Index].AR.U   |= MO_STANDARD_ID(CanRxMsg[u16Index].Id);

    MODULE_CAN.MO[u16Index].DATAH.U = 0x00000000u;
    MODULE_CAN.MO[u16Index].DATAL.U = 0x00000000u;
  }

  for(u16Index = 0u; u16Index < (uint16)CAN_TX_MSG_SIZE; u16Index++)
  {
    u16TxIndex = CAN_HW_TX_INDEX_CONV(u16Index);
    while(0x0u != (STATUS_PANCTR_BUSY & MODULE_CAN.PANCTR.U))
    {
      ;
    }
    MODULE_CAN.PANCTR.U = (PANCMD_STATIC_ALLOC | PANCTR_PANAR1(MO_NB(u16TxIndex)) | PANCTR_PANAR2(LIST_NB(CANDriver_CFG_NODE + 1u)));

    MODULE_CAN.MO[u16TxIndex].CTR.U   = TX_MESSAGE_CFG;
    MODULE_CAN.MO[u16TxIndex].FCR.U   = MMC_STANDARD_MO;
    MODULE_CAN.MO[u16TxIndex].FCR.U  |= MOFCR_MS_LENGTH(CanTxMsg[u16Index].Dlc);
    MODULE_CAN.MO[u16TxIndex].AR.U    = (MO_STANDARD_MS   | MO_PRIO_CLASS_2);
    MODULE_CAN.MO[u16TxIndex].AR.U   |= MO_STANDARD_ID(CanTxMsg[u16Index].Id);

    MODULE_CAN.MO[u16TxIndex].DATAH.U = 0x88776655u;
    MODULE_CAN.MO[u16TxIndex].DATAL.U = 0x44332211u;

    while((TX_MO_STAT_VER_MASK & MODULE_CAN.MO[u16TxIndex].STAT.U) != TX_MO_STAT_VER_VAL)
    {
      ;
    }

  }

  /*
  MODULE_CAN.N[CANDriver_CFG_NODE].TCCR.B.TPSC      // Timer prescale for node timer
  MODULE_CAN.N[CANDriver_CFG_NODE].TCCR.B.TRIGSRC   // Trigger source (clock source) for node timer

  Node timer decrement per (TPSC + 1)*TRIGSRC
  Transmit request will triggers when the node timer reset
  MODULE_CAN.N[CANDriver_CFG_NODE].TATTR.B.TXMO     // Message object to be transmitted automatic
  MODULE_CAN.N[CANDriver_CFG_NODE].TATTR.B.RELOAD   // Transmit period (clock frequency (TPSC +1)*TRIGSRC)
  */

  MODULE_CAN.N[CANDriver_CFG_NODE].CR.U       = (CANN_CLR_INIT | CANN_CLR_CCE);

}
#define MPU_ASIL_STOP_SEC_CODE
#include "MPU_MemMap.h"
#endif/*!MEMORY_PROTECTION_ENABLED*/
#define MPU_QM_START_SEC_CODE
#include "MPU_MemMap.h"
/** ****************************************************************************
 * \brief     Function description
 *
 **************************************************************************** */

#if(MEMORY_PROTECTION_ENABLED)
void CANDriver_MboxToRxBuf(uint16 u16RxIndex)
#else
static void CANDriver_MboxToRxBuf(uint16 u16RxIndex)
#endif/*MEMORY_PROTECTION_ENABLED*/
{
	switch(CanRxMsg[u16RxIndex].Dlc)
	{
		case 1:
			CanRxMsg[(u16RxIndex)].Data[0] = MODULE_CAN.MO[u16RxIndex].DATAL.B.DB0;
			break;
		case 2:
			CanRxMsg[(u16RxIndex)].Data[0] = MODULE_CAN.MO[u16RxIndex].DATAL.B.DB0;
			CanRxMsg[(u16RxIndex)].Data[1] = MODULE_CAN.MO[u16RxIndex].DATAL.B.DB1;
			break;
		case 3:
			CanRxMsg[(u16RxIndex)].Data[0] = MODULE_CAN.MO[u16RxIndex].DATAL.B.DB0;
			CanRxMsg[(u16RxIndex)].Data[1] = MODULE_CAN.MO[u16RxIndex].DATAL.B.DB1;
			CanRxMsg[(u16RxIndex)].Data[2] = MODULE_CAN.MO[u16RxIndex].DATAL.B.DB2;
			break;
		case 4:
			CanRxMsg[(u16RxIndex)].Data[0] = MODULE_CAN.MO[u16RxIndex].DATAL.B.DB0;
			CanRxMsg[(u16RxIndex)].Data[1] = MODULE_CAN.MO[u16RxIndex].DATAL.B.DB1;
			CanRxMsg[(u16RxIndex)].Data[2] = MODULE_CAN.MO[u16RxIndex].DATAL.B.DB2;
			CanRxMsg[(u16RxIndex)].Data[3] = MODULE_CAN.MO[u16RxIndex].DATAL.B.DB3;
			break;
		case 5:
			CanRxMsg[(u16RxIndex)].Data[0] = MODULE_CAN.MO[u16RxIndex].DATAL.B.DB0;
			CanRxMsg[(u16RxIndex)].Data[1] = MODULE_CAN.MO[u16RxIndex].DATAL.B.DB1;
			CanRxMsg[(u16RxIndex)].Data[2] = MODULE_CAN.MO[u16RxIndex].DATAL.B.DB2;
			CanRxMsg[(u16RxIndex)].Data[3] = MODULE_CAN.MO[u16RxIndex].DATAL.B.DB3;
			CanRxMsg[(u16RxIndex)].Data[4] = MODULE_CAN.MO[u16RxIndex].DATAH.B.DB4;
			break;
		case 6:
			CanRxMsg[(u16RxIndex)].Data[0] = MODULE_CAN.MO[u16RxIndex].DATAL.B.DB0;
			CanRxMsg[(u16RxIndex)].Data[1] = MODULE_CAN.MO[u16RxIndex].DATAL.B.DB1;
			CanRxMsg[(u16RxIndex)].Data[2] = MODULE_CAN.MO[u16RxIndex].DATAL.B.DB2;
			CanRxMsg[(u16RxIndex)].Data[3] = MODULE_CAN.MO[u16RxIndex].DATAL.B.DB3;
			CanRxMsg[(u16RxIndex)].Data[4] = MODULE_CAN.MO[u16RxIndex].DATAH.B.DB4;
			CanRxMsg[(u16RxIndex)].Data[5] = MODULE_CAN.MO[u16RxIndex].DATAH.B.DB5;
			break;
		case 7:
			CanRxMsg[(u16RxIndex)].Data[0] = MODULE_CAN.MO[u16RxIndex].DATAL.B.DB0;
			CanRxMsg[(u16RxIndex)].Data[1] = MODULE_CAN.MO[u16RxIndex].DATAL.B.DB1;
			CanRxMsg[(u16RxIndex)].Data[2] = MODULE_CAN.MO[u16RxIndex].DATAL.B.DB2;
			CanRxMsg[(u16RxIndex)].Data[3] = MODULE_CAN.MO[u16RxIndex].DATAL.B.DB3;
			CanRxMsg[(u16RxIndex)].Data[4] = MODULE_CAN.MO[u16RxIndex].DATAH.B.DB4;
			CanRxMsg[(u16RxIndex)].Data[5] = MODULE_CAN.MO[u16RxIndex].DATAH.B.DB5;
			CanRxMsg[(u16RxIndex)].Data[6] = MODULE_CAN.MO[u16RxIndex].DATAH.B.DB6;
			break;
		case 8:
			CanRxMsg[(u16RxIndex)].Data[0] = MODULE_CAN.MO[u16RxIndex].DATAL.B.DB0;
			CanRxMsg[(u16RxIndex)].Data[1] = MODULE_CAN.MO[u16RxIndex].DATAL.B.DB1;
			CanRxMsg[(u16RxIndex)].Data[2] = MODULE_CAN.MO[u16RxIndex].DATAL.B.DB2;
			CanRxMsg[(u16RxIndex)].Data[3] = MODULE_CAN.MO[u16RxIndex].DATAL.B.DB3;
			CanRxMsg[(u16RxIndex)].Data[4] = MODULE_CAN.MO[u16RxIndex].DATAH.B.DB4;
			CanRxMsg[(u16RxIndex)].Data[5] = MODULE_CAN.MO[u16RxIndex].DATAH.B.DB5;
			CanRxMsg[(u16RxIndex)].Data[6] = MODULE_CAN.MO[u16RxIndex].DATAH.B.DB6;
			CanRxMsg[(u16RxIndex)].Data[7] = MODULE_CAN.MO[u16RxIndex].DATAH.B.DB7;
			break;
		default:
			/* error data length not supported */
			break;
	}
}

/** ****************************************************************************
 * \brief     Function description
 *
 **************************************************************************** */
#if(MEMORY_PROTECTION_ENABLED)
void CANDriver_TxDataToMbox(uint16 u16MboxIndex, uint16 u16TxBufIndex)
#else
static void CANDriver_TxDataToMbox(uint16 u16MboxIndex, uint16 u16TxBufIndex)
#endif/*MEMORY_PROTECTION_ENABLED*/
{
	switch(CanTxMsg[u16TxBufIndex].Dlc)
	{
		case 1:
			MODULE_CAN.MO[u16MboxIndex].DATAL.U = CanTxMsg[u16TxBufIndex].Data[0];
			break;
		case 2:
			MODULE_CAN.MO[u16MboxIndex].DATAL.U = ( ((uint32)(CanTxMsg[u16TxBufIndex].Data[1] & 0xFFu) << 8) | \
											 ((uint32)(CanTxMsg[u16TxBufIndex].Data[0] & 0xFFu) << 0)     );
			break;
		case 3:
			MODULE_CAN.MO[u16MboxIndex].DATAL.U = ( ((uint32)(CanTxMsg[u16TxBufIndex].Data[2] & 0xFFu) << 16) | \
											 ((uint32)(CanTxMsg[u16TxBufIndex].Data[1] & 0xFFu) <<  8)  | \
											 ((uint32)(CanTxMsg[u16TxBufIndex].Data[0] & 0xFFu) <<  0)     );
			break;
		case 4:
			MODULE_CAN.MO[u16MboxIndex].DATAL.U = ( ((uint32)(CanTxMsg[u16TxBufIndex].Data[3] & 0xFFu) << 24) | \
											 ((uint32)(CanTxMsg[u16TxBufIndex].Data[2] & 0xFFu) << 16)  | \
											 ((uint32)(CanTxMsg[u16TxBufIndex].Data[1] & 0xFFu) <<  8)  | \
											 ((uint32)(CanTxMsg[u16TxBufIndex].Data[0] & 0xFFu) <<  0)     );
			break;
		case 5:
			MODULE_CAN.MO[u16MboxIndex].DATAH.U = CanTxMsg[u16TxBufIndex].Data[4];

			MODULE_CAN.MO[u16MboxIndex].DATAL.U = ( ((uint32)(CanTxMsg[u16TxBufIndex].Data[3] & 0xFFu) << 24) | \
											 ((uint32)(CanTxMsg[u16TxBufIndex].Data[2] & 0xFFu) << 16)  | \
											 ((uint32)(CanTxMsg[u16TxBufIndex].Data[1] & 0xFFu) <<  8)  | \
											 ((uint32)(CanTxMsg[u16TxBufIndex].Data[0] & 0xFFu) <<  0)     );
			break;
		case 6:
			MODULE_CAN.MO[u16MboxIndex].DATAH.U = ( ((uint32)(CanTxMsg[u16TxBufIndex].Data[5] & 0xFFu) <<  8) | \
											 ((uint32)(CanTxMsg[u16TxBufIndex].Data[4] & 0xFFu) <<  0)     );
			MODULE_CAN.MO[u16MboxIndex].DATAL.U = ( ((uint32)(CanTxMsg[u16TxBufIndex].Data[3] & 0xFFu) << 24) | \
											 ((uint32)(CanTxMsg[u16TxBufIndex].Data[2] & 0xFFu) << 16)  | \
											 ((uint32)(CanTxMsg[u16TxBufIndex].Data[1] & 0xFFu) <<  8)  | \
											 ((uint32)(CanTxMsg[u16TxBufIndex].Data[0] & 0xFFu) <<  0)     );
			break;
		case 7:
			MODULE_CAN.MO[u16MboxIndex].DATAH.U = ( ((uint32)(CanTxMsg[u16TxBufIndex].Data[6] & 0xFFu) << 16) | \
											 ((uint32)(CanTxMsg[u16TxBufIndex].Data[5] & 0xFFu) <<  8)  | \
											 ((uint32)(CanTxMsg[u16TxBufIndex].Data[4] & 0xFFu) <<  0)     );
			MODULE_CAN.MO[u16MboxIndex].DATAL.U = ( ((uint32)(CanTxMsg[u16TxBufIndex].Data[3] & 0xFFu) << 24) | \
											 ((uint32)(CanTxMsg[u16TxBufIndex].Data[2] & 0xFFu) << 16)  | \
											 ((uint32)(CanTxMsg[u16TxBufIndex].Data[1] & 0xFFu) <<  8)  | \
											 ((uint32)(CanTxMsg[u16TxBufIndex].Data[0] & 0xFFu) <<  0)     );
			break;
		case 8:
			MODULE_CAN.MO[u16MboxIndex].DATAH.U = ( ((uint32)(CanTxMsg[u16TxBufIndex].Data[7] & 0xFFu) << 24) | \
											 ((uint32)(CanTxMsg[u16TxBufIndex].Data[6] & 0xFFu) << 16)  | \
											 ((uint32)(CanTxMsg[u16TxBufIndex].Data[5] & 0xFFu) <<  8)  | \
											 ((uint32)(CanTxMsg[u16TxBufIndex].Data[4] & 0xFFu) <<  0)     );
			MODULE_CAN.MO[u16MboxIndex].DATAL.U = ( ((uint32)(CanTxMsg[u16TxBufIndex].Data[3] & 0xFFu) << 24) | \
											 ((uint32)(CanTxMsg[u16TxBufIndex].Data[2] & 0xFFu) << 16)  | \
											 ((uint32)(CanTxMsg[u16TxBufIndex].Data[1] & 0xFFu) <<  8)  | \
											 ((uint32)(CanTxMsg[u16TxBufIndex].Data[0] & 0xFFu) <<  0)     );
			break;
		default:
			/* error data length not supported */
			break;
	}
}
#define MPU_QM_STOP_SEC_CODE
#include "MPU_MemMap.h"

#if(MEMORY_PROTECTION_ENABLED)
#define MPU_QM_START_SEC_CODE
#include "MPU_MemMap.h"
uint8 CANDriver_TxReqSts(uint16 Idx)
{
	uint8 status;
	status = MODULE_CAN.MO[Idx].STAT.B.TXRQ;
	return status;
}

void CANDriver_TxReqNewData(uint16 Idx)
{
	MODULE_CAN.MO[Idx].CTR.U   = MS_TX_REQ_NEWDATA;
}

uint8 CANDriver_ReadStsRxPending(uint16 Idx)
{
	uint8 status;
	status = MODULE_CAN.MO[Idx].STAT.B.RXPND;
	return status;
}

void CANDriver_ClrRxPending(uint16 Idx)
{
	MODULE_CAN.MO[Idx].CTR.U = CLR_RX_MS_PENDING;
}
#define MPU_QM_STOP_SEC_CODE
#include "MPU_MemMap.h"
#else

#define MPU_ASIL_START_SEC_CODE
#include "MPU_MemMap.h"
/** ****************************************************************************
 * \brief     Function description
 *
 **************************************************************************** */
static void CANDriver_TxDataE2E(uint16 u16Index)
{
	if((CanTxMsg[u16Index].Id == ID_DCDC_MEASURE) ||
	   (CanTxMsg[u16Index].Id == ID_DCDC_MEASURE2) ||
	   (CanTxMsg[u16Index].Id == ID_DCDC_MEASURE4) ||
	   (CanTxMsg[u16Index].Id == ID_LVDC_SAFETYMEASURE)
	   )
	{
		// BZ Calculate
		CanE2E.TxData[u16Index].BZ++;
		CanTxMsg[u16Index].Data[1] = (CanTxMsg[u16Index].Data[1] & 0xFFF0) | (CanE2E.TxData[u16Index].BZ & 0x000F);
		// CRC Calculate
		CanE2E.TxData[u16Index].CRC = Crc_CalculateCRC8((const uint16 *)&CanTxMsg[u16Index].Data[1],(CanTxMsg[u16Index].Dlc - 1));
		CanTxMsg[u16Index].Data[0] = CanE2E.TxData[u16Index].CRC;
	}
}

static void CANDriver_RxDataE2E(uint16 u16Index)
{
	uint8 BZ,CRC;

	if(!u16Index)
	{
		CanE2E.RxErrSum = 0;
	}
	if((CanRxMsg[u16Index].Id == ID_DCDC_CMD)
	   )
	{
		// BZ Check
		BZ = (CanRxMsg[u16Index].Data[1] & 0x000F);
		if(((CanE2E.RxData[u16Index].BZ + 1) & 0x0F) == BZ)
		{
			CanE2E.RxErr[u16Index].BZ = 0;
		}
		else
		{
			if(CanE2E.RxErr[u16Index].BZ < 3)
			{
				CanE2E.RxErr[u16Index].BZ++;
			}
		}
		CanE2E.RxData[u16Index].BZ = BZ;
		// CRC Check
		CRC = CanRxMsg[u16Index].Data[0];
		CanE2E.RxData[u16Index].CRC = Crc_CalculateCRC8((const uint16 *)&CanRxMsg[u16Index].Data[1],(CanRxMsg[u16Index].Dlc - 1));
		if(CanE2E.RxData[u16Index].CRC == CRC)
		{
			CanE2E.RxErr[u16Index].CRC = 0;
		}
		else
		{
			if(CanE2E.RxErr[u16Index].CRC < 3)
			{
				CanE2E.RxErr[u16Index].CRC++;
			}
		}
		// Error Counter
		if(CanE2E.RxErr[u16Index].BZ || CanE2E.RxErr[u16Index].CRC)
		{
			if(CanE2E.RxErrCnt[u16Index] < 3)
			{
				CanE2E.RxErrCnt[u16Index]++;
			}
			else
			{
				CanE2E.RxErrSign[u16Index] = 1;
				CanE2E.RxErrSum++;
			}
		}
		else
		{
			CanE2E.RxErrCnt[u16Index] = 0;
			CanE2E.RxErrSign[u16Index] = 0;
		}
	}
}
#define MPU_ASIL_STOP_SEC_CODE
#include "MPU_MemMap.h"

#endif/*MEMORY_PROTECTION_ENABLED*/

/*
 * End of file
 */
