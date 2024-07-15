/*******************************************************************************
 * Filename   : tp.c
 * Project    : OBC_7200W
 * Author(s)  : DEEGGID
 * Created    : 02.03.2010
 * Description: Network layer for the communication to the sub controller.
 *
 * Last modification:
 *  on $Date: 2012-01-18 15:49:10 +0100 (Mi, 18 Jan 2012) $
 *  by $Author: ES\DEEGGID $
 *  current $Revision: 318 $
 *
 * Compiler info : ARM 4.9.7
 * Processor info: TMS320x28035 Piccolo
 *
 * Copyright (c) 2009 Delta Energy Systems (Germany) GmbH.
 * All rights reserved.
 ******************************************************************************/

#define TP_GLOBALS

/*******************************************************************************
 * Included header
 ******************************************************************************/
#include "Platform_Types.h"
#include "standardtypes.h"
#include "standardmacros.h"

/* modul header*/
#include "can_cfg.h"
#include "Tp.h"
#include "Tp_cfg.h"
/*******************************************************************************
 * Local constants and macros (private to module)
 ******************************************************************************/
#define DEFAULT_VALUE   0xFFu

#define TP_FF_SIZE      6u
#define TP_SF_SIZE      7u
#define TP_CF_SIZE      7u

/* Protocol Control Information */
#define PCI_TYPE_SF     0x00u   /* Single frame       */
#define PCI_TYPE_FF     0x10u   /* First Frame        */
#define PCI_TYPE_CF     0x20u   /* Consecutive Frame  */
#define PCI_TYPE_FC     0x30u   /* Flow Control Frame */

#define INDEX_PCI       0u
#define INDEX_LEN       1u
#define INDEX_FF_BYTE1  2u
#define INDEX_CF_BYTE1  1u
#define INDEX_SF_BYTE1  1u
#define INDEX_BS        1u
#define INDEX_ST_MIN    2u

#define TP_SF_ENTRY     1u
#define TP_FF_ENTRY     2u
#define TP_CF_ENTRY     1u

/* tx status defines */
#define TP_TX_RUNNING      0x0001u
#define TP_TX_SEND_CF      0x0002u
#define TP_TX_WAIT_FOR_FC  0x0004u
#define TP_TX_TRANSMIT_OK  0x0008u

/* flow control status defines */
#define CONTINUE_TO_SEND   0u
#define WAIT               1u
#define OVERFLOW           2u

/* consecutive frame defines  */
#define SEQUENCE_COUNTER_INIT     0x01u

#define MESSAGE_LENGTH     (0x08U)
/*******************************************************************************
 * Local data types (private typedefs / structs / enums)
 ******************************************************************************/

typedef struct {
  uint16 wDataLength;
  uint8 bSeqCounter;
  uint8 bBlockSize;
  uint8 bStMin;
  uint16 wDataIndex;
  uint16 wRemainingDl;
  uint16 wTxStatus;
  uint8 bRemainingStMin;
  eIndicationStatus_t eStatusIndication;
  uint8 bStatusConfirm;
  uint16 wTimeoutCnt;
  uint8 *p2_RxDataBuffer;
  uint8 *p2_TxDataBuffer;
  uint8 TxActive;
} TpInfo_t;

/*******************************************************************************
 * Local data (private to module)
 ******************************************************************************/
#define MPU_QM_START_SEC_VAR_NOINIT
#include "MPU_MemMap.h"

static TpInfo_t TpInfo[TP_CONFIG_COUNT];

static uint8 u8_gRxDataBuffer[TP_CONFIG_COUNT][TP_BUFFER_SIZE];
static uint8 u8_gTxDataBuffer[TP_CONFIG_COUNT][TP_BUFFER_SIZE];

#define MPU_QM_STOP_SEC_VAR_NOINIT
#include "MPU_MemMap.h"

/*******************************************************************************
 * Local function prototypes (private to module)
 ******************************************************************************/
void TpTx( uint8 IfNmb );
void SendFcFrame( uint8 IfNmb, uint8 bFcStatus );

/*******************************************************************************
 * Global functions (public to other modules)
 ******************************************************************************/
#define MPU_QM_START_SEC_CODE
#include "MPU_MemMap.h"
/*******************************************************************************
 * Function:        TpInit
 *
 * Parameters:      -
 * Returned value:  -
 *
 * Description:     -
 *
 ******************************************************************************/
void TpInit( uint8 IfNmb )
{
  TpInfo[IfNmb].bStatusConfirm = TP_TX_IDLE;
  TpInfo[IfNmb].eStatusIndication = TpRxIdle;
  TpInfo[IfNmb].wTxStatus = TP_CLEAR_TX_STATUS;
  /* set pointer to data buffer */
  TpInfo[IfNmb].p2_RxDataBuffer = &(u8_gRxDataBuffer[IfNmb][0]);
  TpInfo[IfNmb].p2_TxDataBuffer = &(u8_gTxDataBuffer[IfNmb][0]);
  TpInfo[IfNmb].TxActive = FALSE;
} /* TpInit */

/*******************************************************************************
 * Function:        TpTask
 *
 * Parameters:      IfNmb -
 * Returned value:  -
 *
 * Description:     Main task of the tp module
 *
 ******************************************************************************/
void TpTask( uint8 IfNmb )
{
  /* handle data transmission via TpTx function */
  if ((FALSE != (TpInfo[IfNmb].wTxStatus & TP_TX_RUNNING))
      && (TP_TX_STARTED == TpInfo[IfNmb].bStatusConfirm)
      && (0x00 == TpInfo[IfNmb].bRemainingStMin)
      && (FALSE == TpInfo[IfNmb].TxActive)) {
    TpTx( IfNmb );
  } /* end if */

  if (0 < TpInfo[IfNmb].bRemainingStMin) {
    TpInfo[IfNmb].bRemainingStMin--;
  } /* end if */

  /* check flow control timeouts */
  if (FALSE != (TpInfo[IfNmb].wTxStatus & TP_TX_WAIT_FOR_FC)) {
    TpInfo[IfNmb].wTimeoutCnt--;
    if (0U == TpInfo[IfNmb].wTimeoutCnt) {
      TpInfo[IfNmb].bStatusConfirm = TP_TX_TIMEOUT;
    } /* end if */
  } /* end if */

} /* TpTask */


/*******************************************************************************
 * Function:        TpRx
 *
 * Parameters:      -
 *
 * Returned value:  -
 *
 * Description:     Transport Protocol rx function. This function checks the
 *                  incoming rx message and put the data into a message buffer.
 *
 ******************************************************************************/
void TpRx( uint8 IfNmb,  uint16* const data )
{
  uint8 bPciType=0, bAddInfo=0;
  uint8 u8_RxData[MESSAGE_LENGTH]={0};
  uint16 wDataSize=0, wDataIndex=0;
  uint16 i=0;

  /* copy data to local buffer */
  for (i = 0; i < MESSAGE_LENGTH; ++i) {
    u8_RxData[i] = (uint8)(data[i<<1]);
  } /* end for */

  wDataSize = 0u;
  wDataIndex = 0u;

  bPciType = (uint8)(u8_RxData[INDEX_PCI] & (uint8)0xF0u);
  bAddInfo = (uint8)(u8_RxData[INDEX_PCI] & (uint8)0x0Fu);
  switch (bPciType) {
    case PCI_TYPE_FF:

      TpInfo[IfNmb].bSeqCounter = SEQUENCE_COUNTER_INIT;
      TpInfo[IfNmb].eStatusIndication = TpRxStarted;
      TpInfo[IfNmb].wDataIndex = 0u;
      wDataIndex = INDEX_FF_BYTE1;
      wDataSize = TP_FF_SIZE;

      /* get the data length of the message */
      TpInfo[IfNmb].wDataLength = (uint16)((uint16)bAddInfo << 8);
      TpInfo[IfNmb].wDataLength += u8_RxData[INDEX_LEN];
      TpInfo[IfNmb].wRemainingDl = TpInfo[IfNmb].wDataLength;
      if (TpInfo[IfNmb].wRemainingDl > 0x07u) {
        TpInfo[IfNmb].wRemainingDl -= 0x06u;
      }

      /* check if complete message fits into the tp rx buffer */
      if (TpInfo[IfNmb].wDataLength > TP_BUFFER_SIZE) {
        SendFcFrame( IfNmb, OVERFLOW );
        TpInfo[IfNmb].eStatusIndication = TpRxBufferOvflw;
      } /* end if */
      else {
        SendFcFrame( IfNmb, CONTINUE_TO_SEND );
      } /* end else */
      break;

    case PCI_TYPE_CF:
      if (TpInfo[IfNmb].bSeqCounter == bAddInfo) {
        TpInfo[IfNmb].bSeqCounter++;
        TpInfo[IfNmb].bSeqCounter %= 0x10u;
        wDataIndex = INDEX_CF_BYTE1;
        if (TpInfo[IfNmb].wRemainingDl > 0x07u) {
          TpInfo[IfNmb].wRemainingDl -= 0x07u;
          wDataSize = 0x07u;
          TpInfo[IfNmb].bBlockSize--;
          /* check if next fc fame must be send */
          if (TpInfo[IfNmb].bBlockSize == 0u) {
            SendFcFrame( IfNmb, CONTINUE_TO_SEND );
          } /* end else */
        } /* end if */
        else {
          wDataSize = (uint8)TpInfo[IfNmb].wRemainingDl;
          TpInfo[IfNmb].wRemainingDl = 0x00u;
          if (wDataSize != FALSE) {
            TpInfo[IfNmb].eStatusIndication = TpRxOk;
          } /* end if */
          else {
            TpInfo[IfNmb].eStatusIndication = TpRxError;
          } /* end else */
        } /* end else */
      } /* end if */
      else {
        TpInfo[IfNmb].eStatusIndication = TpRxError;
      } /* end else */
      break;

    case PCI_TYPE_SF:
      TpInfo[IfNmb].bSeqCounter = SEQUENCE_COUNTER_INIT;
      TpInfo[IfNmb].eStatusIndication = TpRxStarted;
      TpInfo[IfNmb].wDataIndex = 0u;
      /* get the data length of the message */
      TpInfo[IfNmb].wDataLength = bAddInfo;
      TpInfo[IfNmb].wRemainingDl = bAddInfo;
      wDataSize = (uint16)bAddInfo;
      wDataIndex = INDEX_SF_BYTE1;
      if ((wDataSize > 1u) && (wDataSize <= 7u)) {
        TpInfo[IfNmb].eStatusIndication = TpRxOk;
      } /* end if */
      else {
        TpInfo[IfNmb].eStatusIndication = TpRxError;
      } /* end else */
      break;

    case PCI_TYPE_FC:
      wDataSize = 0u;
      wDataIndex = 0u;
      /* check if fc frame was required */
      if ((TpInfo[IfNmb].wTxStatus & TP_TX_WAIT_FOR_FC) != FALSE) {
        /* flow control received, delete fc flag */
        TpInfo[IfNmb].wTxStatus &= (uint16)(~(uint16)TP_TX_WAIT_FOR_FC);
        switch (bAddInfo) {
          case CONTINUE_TO_SEND:
            TpInfo[IfNmb].bBlockSize = u8_RxData[INDEX_BS];
            TpInfo[IfNmb].bStMin = u8_RxData[INDEX_ST_MIN] + 1U;
            /* set the new StMin time */
            TpInfo[IfNmb].bRemainingStMin = TpInfo[IfNmb].bStMin;
            /* after receiving the flow control frame send CF, start tx */
            TpInfo[IfNmb].wTxStatus |= (TP_TX_SEND_CF | TP_TX_RUNNING);
            break;
          case WAIT:
            /* wait again on flow control frame */
            TpInfo[IfNmb].wTxStatus |= TP_TX_WAIT_FOR_FC;
            break;
          case OVERFLOW:
            /* set error status to buffer overflow */
            TpInfo[IfNmb].bStatusConfirm = TP_TX_BUFFER_OVFLW;
            /* stop tx communication */
            TpInfo[IfNmb].wTxStatus &= (uint16)(~(uint16)TP_TX_RUNNING);
            break;
          default:
            break;
        } /* end switch */
      } /* end if */
      break;
    default:
      /* wrong pci-type */
      break;
  }
  /* store data into TP-Rx-buffer*/
  for (i = 0u; i < wDataSize; ++i) {
    TpInfo[IfNmb].p2_RxDataBuffer[TpInfo[IfNmb].wDataIndex] = u8_RxData[wDataIndex
        + i];
    TpInfo[IfNmb].wDataIndex++;
  } /* end for */

  /* forward message to upper layer */
  if ((TpRxIdle != TpInfo[IfNmb].eStatusIndication) &&
      (TpRxStarted != TpInfo[IfNmb].eStatusIndication)) {
    TpConfig[IfNmb].RxIndication(TpInfo[IfNmb].eStatusIndication, TpInfo[IfNmb].p2_RxDataBuffer, TpInfo[IfNmb].wDataLength);
  } /* end if */

} /* TpRx */


/*******************************************************************************
 * Function:        TpSetTxBuffer
 *
 * Parameters:      IfNmb -
 * Returned value:  -
 *
 * Description:     Set the tx output data to the tp tx buffer. This function
 *                  sets also the flags to transmit the data.
 *
 ******************************************************************************/
void TpSetTxBuffer( uint8 IfNmb, uint8 *pbData, uint16 wDataLength )
{
  uint16 i=0;

  /* check if buffer is big enough */
  if (wDataLength < TP_BUFFER_SIZE) {

    for (i = 0u; i < wDataLength; ++i) {
      TpInfo[IfNmb].p2_TxDataBuffer[i] = pbData[i];
    } /* end for */

    TpInfo[IfNmb].wTxStatus = TP_CLEAR_TX_STATUS;
    /* set data length of tx message */
    TpInfo[IfNmb].wDataLength = wDataLength;
    TpInfo[IfNmb].wRemainingDl = wDataLength;
    /* set status for first frame of single frame */
    TpInfo[IfNmb].wTxStatus &= (uint16)(~(uint16)TP_TX_SEND_CF);
    /* clear flow control flag */
    TpInfo[IfNmb].wTxStatus &= (uint16)(~(uint16)TP_TX_WAIT_FOR_FC);
    /* set tp running flag to transmit the data */
    TpInfo[IfNmb].wTxStatus |= TP_TX_RUNNING;
    /* set confirm status to started */
    TpInfo[IfNmb].bStatusConfirm = TP_TX_STARTED;
    /* set the STmin for the first frame to zero */
    TpInfo[IfNmb].bRemainingStMin = 0u;
    /* set data index of output data */
    TpInfo[IfNmb].wDataIndex = 0u;

  } /* end if */
} /* TpSetTxBuffer */


/*******************************************************************************
 * Function:        TpGetTxConfirmation
 *
 * Parameters:      IfNmb -
 * Returned value:  -
 *
 * Description:     Get the Tx confirmation from the lower layer.
 *                  This function is called from the lower layer if the data
 *                  will be send out.
 *
 ******************************************************************************/
void TpGetTxConfirmation( uint8 IfNmb )
{
  TpInfo[IfNmb].TxActive = FALSE;
} /* TpGetTxConfirmation */

/*******************************************************************************
 * Local functions (private to module)
 ******************************************************************************/

/*******************************************************************************
 * Function:        TpTx
 *
 * Parameters:      -
 *
 * Returned value:  -
 *
 * Description:     Transport Protocol Tx function. This function puts the data
 *                  buffer into separated Tx messages.
 *
 ******************************************************************************/
void TpTx( uint8 IfNmb )
{
  uint8 i;
  uint16 wSize;
  uint8 bStart;
  uint8 bTxDataBuffer[8];

  /* reset transmission complete flag */
  TpInfo[IfNmb].wTxStatus &= (uint16)(~(uint16)TP_TX_TRANSMIT_OK);

  /* check if next frame is a consecutive frame */
  if ((TpInfo[IfNmb].wTxStatus & TP_TX_SEND_CF) != FALSE) {
    /********************************************************/
    /* TX Consecutive frame                                 */
    /********************************************************/

    bTxDataBuffer[INDEX_PCI] = (uint8)(0x20u + TpInfo[IfNmb].bSeqCounter);
    TpInfo[IfNmb].bSeqCounter++;
    TpInfo[IfNmb].bSeqCounter %= 0x10u;
    bStart = TP_CF_ENTRY;
    wSize = TP_CF_SIZE;
    if (TpInfo[IfNmb].wRemainingDl <= 0x07u) {
      /* last CF */
      TpInfo[IfNmb].wTxStatus &= (uint16)(~(uint16)TP_TX_SEND_CF);
      /* stop transmission, last CF */
      TpInfo[IfNmb].wTxStatus &= (uint16)(~(uint16)TP_TX_RUNNING);
    }

    /* set the new StMin time */
    TpInfo[IfNmb].bRemainingStMin = TpInfo[IfNmb].bStMin;

    /* decrement block size and check if new fc frame is necessary */
    TpInfo[IfNmb].bBlockSize--;
    if (TpInfo[IfNmb].bBlockSize == 0u) {
      /* wait for the flow control frame */
      TpInfo[IfNmb].wTxStatus |= TP_TX_WAIT_FOR_FC;
      /* stop transmission still fc frame is received */
      TpInfo[IfNmb].wTxStatus &= (uint16)(~(uint16)TP_TX_RUNNING);
      /* set time for fc frame timeout */
      TpInfo[IfNmb].wTimeoutCnt = N_BS;
    } /* end if */
  } /* end if */
  else {
    if (TpInfo[IfNmb].wDataLength > 0x07u) {
      /********************************************************/
      /* TX First frame                                       */
      /********************************************************/

      /* wait for the flow control frame */
      TpInfo[IfNmb].wTxStatus |= TP_TX_WAIT_FOR_FC;
      /* stop transmission still fc frame is received */
      TpInfo[IfNmb].wTxStatus &= (uint16)(~(uint16)TP_TX_RUNNING);
      /* set time for fc frame timeout */
      TpInfo[IfNmb].wTimeoutCnt = N_BS;

      TpInfo[IfNmb].bSeqCounter = SEQUENCE_COUNTER_INIT;
      bTxDataBuffer[INDEX_PCI] = (uint8)(0x10u
          + ((uint8)(TpInfo[IfNmb].wDataLength >> 8) & 0x0Fu));
      bTxDataBuffer[INDEX_LEN] = (uint8)TpInfo[IfNmb].wDataLength;
      bStart = TP_FF_ENTRY;
      wSize = TP_FF_SIZE;
    } /* end if */
    else {
      /********************************************************/
      /* TX Single frame                                      */
      /********************************************************/

      /* single frame */
      TpInfo[IfNmb].wTxStatus &= (uint16)(~(uint16)TP_TX_SEND_CF);
      /* stop transmission only single frame must be send */
      TpInfo[IfNmb].wTxStatus &= (uint16)(~(uint16)TP_TX_RUNNING);
      bTxDataBuffer[INDEX_PCI] = ((uint8)TpInfo[IfNmb].wDataLength & 0x0Fu);
      bStart = TP_SF_ENTRY;
      wSize = TP_SF_SIZE;
      /* set tx ready flag */
      TpInfo[IfNmb].wTxStatus |= TP_TX_TRANSMIT_OK;
    } /* end else */
  } /* end else */
  for (i = bStart; wSize > 0u; wSize--) {
    if (TpInfo[IfNmb].wRemainingDl) {
      bTxDataBuffer[i] = TpInfo[IfNmb].p2_TxDataBuffer[TpInfo[IfNmb].wDataIndex];
      TpInfo[IfNmb].wRemainingDl--;
      TpInfo[IfNmb].wDataIndex++;
    } /* end if */
    else {
      bTxDataBuffer[i] = DEFAULT_VALUE;
    } /* end else */
    i++;
  } /* end for */

  /* transmit data to the communication interface */
  TpInfo[IfNmb].TxActive = TRUE;
  (*TpConfig[IfNmb].SetTxData)( IfNmb, bTxDataBuffer );
  TpInfo[IfNmb].TxActive = FALSE;
} /* TpTx */


/*******************************************************************************
 * Function:        SendFcFrame
 *
 * Parameters:      IfNmb, uint8 bFcStatus -
 * Returned value:  -
 *
 * Description:     Send the flow control frame.
 *
 ******************************************************************************/
void SendFcFrame( uint8 IfNmb, uint8 bFcStatus )
{
  uint8 bTxData[8];
  uint8 i;

  /********************************************************/
  /* TX Flow control frame                                */
  /********************************************************/

  bTxData[INDEX_PCI] = (PCI_TYPE_FC | (bFcStatus & 0x0fu));
  bTxData[INDEX_BS] = TpConfig[IfNmb].bBlockSize;
  bTxData[INDEX_ST_MIN] = TpConfig[IfNmb].bStMin;

  for (i = (INDEX_ST_MIN + 1u); i < 8u; ++i) {
    bTxData[i] = DEFAULT_VALUE;
  } /* end for */

  /* transmit data to the communication interface */
  (*TpConfig[IfNmb].SetTxData)( IfNmb, bTxData );

  /* set block size to the BS value */
  TpInfo[IfNmb].bBlockSize = TpConfig[IfNmb].bBlockSize;

} /* SendFcFrame */

#define MPU_QM_STOP_SEC_CODE
#include "MPU_MemMap.h"
/*
 * End of file
 */

