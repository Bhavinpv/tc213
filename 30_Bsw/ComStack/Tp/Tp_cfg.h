/*******************************************************************************
 * Filename   : tp_cfg.h
 * Project    : OBC_7200W
 * Author(s)  : DEEGGID
 * Created    : 02.01.2012
 * Description: Headerfile for tp_cfg.c
 *
 * Last modification:
 *  on $Date: 2012-01-18 15:49:10 +0100 (Mi, 18 Jan 2012) $
 *  by $Author: ES\DEEGGID $
 *  current $Revision: 318 $
 *
 * Compiler info : ARM 4.9.7
 * Processor info: TMS320x28035 Piccolo
 *
 * Copyright (c) 2012 Delta Energy Systems (Germany) GmbH.
 * All rights reserved.
 ******************************************************************************/

#if !defined(__TP_CFG_H_)
#define __TP_CFG_H_

#ifdef __cplusplus
  extern "C" {
#endif

/*******************************************************************************
 * Global constants and macros
 ******************************************************************************/
#define TP_CONFIG_COUNT     1u

#define TP_BUFFER_SIZE      0x410u

/* timeout defines */
#define N_BS               1000u
#define N_CR               1000u

/* interface depended defines */
#define CAN_IF             0u

#define BLOCKSIZE_CAN      5u
#define ST_MIN_CAN         10u
/*******************************************************************************
 * Global data types (typedefs / structs / enums)
 ******************************************************************************/
/* indication defines */
typedef enum eIndicationStatus {
  TpRxIdle = 0,
  TpRxStarted,
  TpRxOk,
  TpRxBufferOvflw,
  TpRxError,
  TpRxTimeout
}eIndicationStatus_t;

typedef struct {
    /* lower layer callback functions */
    void (*SetTxData)( uint8 IfNmb, uint8  *abData );
    /* upper layer callbacks functions */
    void (*RxIndication)( eIndicationStatus_t status, uint8 *abData, uint16 dataLength);
    /* TP configuration */
    uint16 bBlockSize;
    uint16 bStMin;
} TpConfig_t;


/*******************************************************************************
 * Global data
 ******************************************************************************/
extern const TpConfig_t TpConfig[TP_CONFIG_COUNT];



/*******************************************************************************
 * Global function prototypes
 ******************************************************************************/

#ifdef __cplusplus
  }
#endif

#endif /* __TP_CFG_H_ */

/*
 * End of file
 */
