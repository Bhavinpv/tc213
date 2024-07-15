/*******************************************************************************
 * Filename   : tp.h
 * Project    : OBC_7200W
 * Author(s)  : DEEGGID
 * Created    : 02.03.2010
 * Description: Headerfile for tp.c
 *
 * Last modification:
 *  on $Date: 2012-01-11 17:54:11 +0100 (Mi, 11 Jan 2012) $
 *  by $Author: ES\DEEGGID $
 *  current $Revision: 306 $
 *
 * Compiler info : ARM 4.9.7
 * Processor info: TMS320x28035 Piccolo
 *
 * Copyright (c) 2009 Delta Energy Systems (Germany) GmbH.
 * All rights reserved.
 ******************************************************************************/
#if !defined(__TP_H)
#define __TP_H



#ifdef __cplusplus
  extern "C" {
#endif

/*******************************************************************************
 * Global constants and macros
 ******************************************************************************/

/* confirm defines */
#define TP_TX_IDLE            0u
#define TP_TX_STARTED         1u
#define TP_TX_OK              2u
#define TP_TX_BUFFER_OVFLW    3u
#define TP_TX_ERROR           4u
#define TP_TX_TIMEOUT         5u

#define TP_CLEAR_TX_STATUS    0U
/*******************************************************************************
 * Global data types (typedefs / structs / enums)
 ******************************************************************************/


/*******************************************************************************
 * Global data
 ******************************************************************************/


/*******************************************************************************
 * Global function prototypes
 ******************************************************************************/
extern void TpInit( uint8 IfNmb );
extern void TpTask( uint8 IfNmb );

/* lower layer callback interfaces  */
extern void TpRx( uint8 IfNmb, uint16 *data );
extern void TpGetTxConfirmation( uint8 IfNmb );

/* upper layer callback interfaces */
extern void TpSetTxBuffer( uint8 IfNmb, uint8 *pbData, uint16 wDataLength );

extern void Can_SetTxMsg( uint32 Id );

#ifdef __cplusplus
  }
#endif


#endif /* __TP_H */

/*
 * End of file
 */
