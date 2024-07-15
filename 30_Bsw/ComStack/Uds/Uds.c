/*******************************************************************************
 * Filename   : Uds.c
 * Project    : OBC
 * Author(s)  : deeggid
 * Created    : 11.02.2014
 * Description:
 *
 * Last modification:
 *  on $Date$
 *  by $Author$
 *  current $Revision$
 *
 * Compiler info : Wind River V5.7.0
 * Processor info: Freescale MPC5668G
 *
 * Copyright (c) 2014 Delta Energy Systems (Germany) GmbH.
 * All rights reserved.
 ******************************************************************************/

#define Uds_GLOBALS

/*******************************************************************************
 * Included header
 ******************************************************************************/
#include "Platform_Types.h"
#include "standardtypes.h"
#include "standardmacros.h"

/*Modul Header*/
#include "mpu_api.h"
#include "Tp.h"
#include "Tp_cfg.h"
#include "Uds.h"
#include "iohwsf.h"
#include "VerInfo_api.h"
#include "IfxScuWdt.h"
#include "HsfbMeas_GetCalibData.h"
#include "HsfbCtrl_GetParamData.h"
#include "HsfbCtrl_Param.h"
#include "Gtm_api.h"
#include "Gtm_scfg.h"
/*******************************************************************************
 * Local data types (private typedefs / structs / enums)
 ******************************************************************************/
typedef struct {
  uint8 Sid;                         /* service id */
  uint8 (*func)(uint8 *RxTxBuf, uint16 LenOfMsg);
  /* pos. response suppress handling, 0 = do no suppress */
  uint8 suppressRespAllowed;
  /* supported in session by sid: bit coded --> see cfg file */
  uint16 ModeAvailability;
} DiagServiceItem_t;

typedef struct {
  uint16 DataId;
  uint16 Length;
  uint8 (*func)(uint8 ReadWrite, uint8 *RxTxBuf, uint16 LenOfMsg);
} DataIdItem_t;

typedef enum {
  UdsRxIdle = 0,
  UdsRxReceived,
  UdsRxError
} UdsRxState_t;

typedef enum {
  UdsTxIdle = 0,
  UdsTxSend,
  UdsTxError
} UdsTxState_t;

#ifdef NULL_PTR
  #undef NULL_PTR
  #define NULL_PTR  ((void*)0)
#endif
/*******************************************************************************
 * Local function prototypes (private to module)
 ******************************************************************************/
static inline void Uds_SetNrc( uint8 *RxTxBuff, uint8 Sid, uint8 Nrc );

/* service functions */
static inline uint8 Uds_DiagService10( uint8 *RxTxBuf, uint16 LenOfMsg );
static inline uint8 Uds_EcuReset( uint8 *RxTxBuf, uint16 LenOfMsg );
static inline uint8 Uds_DiagService22( uint8 *RxTxBuf, uint16 LenOfMsg );
static inline uint8 Uds_DiagService2E( uint8 *RxTxBuf, uint16 LenOfMsg );

#if(!MEMORY_PROTECTION_ENABLED)
uint8 UdsData_Parameter(uint8 ReadWrite, uint8 *RxTxBuf, uint16 LenOfMsg);
uint8 UdsData_Calibration(uint8 ReadWrite, uint8 *RxTxBuf, uint16 LenOfMsg);
#endif/*!MEMORY_PROTECTION_ENABLED*/

/*******************************************************************************
 * Local constants and macros (private to module)
 ******************************************************************************/
#define UDS_MAX_NO_OF_SERVICES          (4U)
#define UDS_MAX_NO_OF_WRITE_IDS         (2U)
#define UDS_MAX_NO_OF_READ_IDS          (4U)

#define UDS_MAX_TX_DATA                 (515U)

#define SID_LENGTH                      (0x01U)
#define DATA_ID_LENGTH                  (0x02U)

#define RESPONSE_OFFSET                 (0x40U)

#define ECU_RESET_REQ_SIZE                 2u
#define HARDWARE_RESET                     0x01u

/* macros for indexes */
// #define SID_INDEX                       (0x00U)
#define ECURESET_SID_INDEX              (0x01U)
#define SUBFUNC_INDEX                   (0x01U)
#define WRITE_BY_ID_ID_HIGH_INDEX       (0x01U)
#define WRITE_BY_ID_ID_LOW_INDEX        (0x02U)
#define WRITE_BY_ID_ID_DATA_INDEX       (0x03U)
#define NRC_SID_INDEX                   (0x01U)
#define NRC_NRC_INDEX                   (0x02U)

#define RESP_CODE_INDEX                 (0x03U) /* GGL */

/* macros of SIDs*/
#define SID_NEGATIVE_RESPONSE           (0x7FU)

/* session macros */
#define UDS_DEFAULT_SESSION             (0x01U)
#define UDS_DEFAULT_SESSION_SUPPRESS    (0x81U)
#define UDS_PROGRAMMING_SESSION         (0x02U)
#define UDS_EXTENTED_DIAG_SESSION       (0x03U)
#define UDS_EOL_SESSION                 (0x40U)
#define UDS_DEVELOPMENT_SESSION         (0x4FU)

#define MPU_QM_START_SEC_CONST
#include "MPU_MemMap.h"

const DiagServiceItem_t cs_ServicesModes[UDS_MAX_NO_OF_SERVICES] =
{
/* mapping of ModeAvailability bits to diagnostic sessions
   00111111   ModeAvailability byte mapping
   |||||||0-- UDScub_DEFAULT_SESSION
   ||||||1--- UDScub_PROGRAMMING_SESSION
   |||||2---- UDScub_EXTENTED_DIAG_SESSION
   ||||3----- UDScub_EOL_SESSION
   |||4------ UDScub_DEVELOPMENT_SESSION
   ||5------- unused
   |6-------- unused
   7--------- unused
*/
/*  |-------------------------------- service id
    |     |-------------------------- address of the callback function
    |     |                  |----- suppress pos. response 1=suppress, 0=don´t
    |     |                  |  |-- valid in session(s)
*/
	{ 0x10, Uds_DiagService10, 1, 0x7 },
	{ 0x11, Uds_EcuReset,      1, 0x7 },
	{ 0x22, Uds_DiagService22, 1, 0x7 },
	{ 0x2e, Uds_DiagService2E, 1, 0x7 },
};

const DataIdItem_t cs_WriteDataIdItems[UDS_MAX_NO_OF_WRITE_IDS] =
{
	/*ID,     Length,  Function pointer */
	{ 0x0005, 204U, UdsData_Parameter},
	{ 0x0006, 154U, UdsData_Calibration}
};

const DataIdItem_t cs_ReadDataIdItems[UDS_MAX_NO_OF_READ_IDS] =
{
	{0x0000u, 4U, UdsData_SwVersion   },
	{0x0001u, 4U, UdsData_HwVersion   },
	{0x0011u, 4U, UdsData_BuildDate   },
	{0x0012u, 4U, UdsData_BuildTime   },
};
#define MPU_QM_STOP_SEC_CONST
#include "MPU_MemMap.h"


#if(!MEMORY_PROTECTION_ENABLED)
#define MPU_ASIL_START_SEC_CONST
#include "MPU_MemMap.h"
static const uint32 CrcTable32[16u] =
{
  (uint32)0x00000000UL, (uint32)0x1db71064UL,
  (uint32)0x3b6e20c8UL, (uint32)0x26d930acUL,
  (uint32)0x76dc4190UL, (uint32)0x6b6b51f4UL,
  (uint32)0x4DB26158UL, (uint32)0x5005713cUL,
  (uint32)0xedb88320UL, (uint32)0xf00f9344UL,
  (uint32)0xd6d6a3e8UL, (uint32)0xcb61b38cUL,
  (uint32)0x9b64c2b0UL, (uint32)0x86d3d2d4UL,
  (uint32)0xa00ae278UL, (uint32)0xbdbdf21cUL
};

static const uint8 CrcTable08[256u] = {
  0x00u, 0x07u, 0x0eu, 0x09u, 0x1cu, 0x1bu, 0x12u, 0x15u, /*   7 */
  0x38u, 0x3fu, 0x36u, 0x31u, 0x24u, 0x23u, 0x2au, 0x2du, /*  15 */
  0x70u, 0x77u, 0x7eu, 0x79u, 0x6cu, 0x6bu, 0x62u, 0x65u, /*  23 */
  0x48u, 0x4fu, 0x46u, 0x41u, 0x54u, 0x53u, 0x5au, 0x5du, /*  31 */
  0xe0u, 0xe7u, 0xeeu, 0xe9u, 0xfcu, 0xfbu, 0xf2u, 0xf5u, /*  39 */
  0xd8u, 0xdfu, 0xd6u, 0xd1u, 0xc4u, 0xc3u, 0xcau, 0xcdu, /*  47 */
  0x90u, 0x97u, 0x9eu, 0x99u, 0x8cu, 0x8bu, 0x82u, 0x85u, /*  55 */
  0xa8u, 0xafu, 0xa6u, 0xa1u, 0xb4u, 0xb3u, 0xbau, 0xbdu, /*  63 */
  0xc7u, 0xc0u, 0xc9u, 0xceu, 0xdbu, 0xdcu, 0xd5u, 0xd2u, /*  71 */
  0xffu, 0xf8u, 0xf1u, 0xf6u, 0xe3u, 0xe4u, 0xedu, 0xeau, /*  79 */
  0xb7u, 0xb0u, 0xb9u, 0xbeu, 0xabu, 0xacu, 0xa5u, 0xa2u, /*  87 */
  0x8fu, 0x88u, 0x81u, 0x86u, 0x93u, 0x94u, 0x9du, 0x9au, /*  95 */
  0x27u, 0x20u, 0x29u, 0x2eu, 0x3bu, 0x3cu, 0x35u, 0x32u, /* 103 */
  0x1fu, 0x18u, 0x11u, 0x16u, 0x03u, 0x04u, 0x0du, 0x0au, /* 111 */
  0x57u, 0x50u, 0x59u, 0x5eu, 0x4bu, 0x4cu, 0x45u, 0x42u, /* 119 */
  0x6fu, 0x68u, 0x61u, 0x66u, 0x73u, 0x74u, 0x7du, 0x7au, /* 127 */
  0x89u, 0x8eu, 0x87u, 0x80u, 0x95u, 0x92u, 0x9bu, 0x9cu, /* 135 */
  0xb1u, 0xb6u, 0xbfu, 0xb8u, 0xadu, 0xaau, 0xa3u, 0xa4u, /* 143 */
  0xf9u, 0xfeu, 0xf7u, 0xf0u, 0xe5u, 0xe2u, 0xebu, 0xecu, /* 151 */
  0xc1u, 0xc6u, 0xcfu, 0xc8u, 0xddu, 0xdau, 0xd3u, 0xd4u, /* 159 */
  0x69u, 0x6eu, 0x67u, 0x60u, 0x75u, 0x72u, 0x7bu, 0x7cu, /* 167 */
  0x51u, 0x56u, 0x5fu, 0x58u, 0x4du, 0x4au, 0x43u, 0x44u, /* 175 */
  0x19u, 0x1eu, 0x17u, 0x10u, 0x05u, 0x02u, 0x0bu, 0x0cu, /* 183 */
  0x21u, 0x26u, 0x2fu, 0x28u, 0x3du, 0x3au, 0x33u, 0x34u, /* 191 */
  0x4eu, 0x49u, 0x40u, 0x47u, 0x52u, 0x55u, 0x5cu, 0x5bu, /* 199 */
  0x76u, 0x71u, 0x78u, 0x7fu, 0x6au, 0x6du, 0x64u, 0x63u, /* 207 */
  0x3eu, 0x39u, 0x30u, 0x37u, 0x22u, 0x25u, 0x2cu, 0x2bu, /* 215 */
  0x06u, 0x01u, 0x08u, 0x0fu, 0x1au, 0x1du, 0x14u, 0x13u, /* 223 */
  0xaeu, 0xa9u, 0xa0u, 0xa7u, 0xb2u, 0xb5u, 0xbcu, 0xbbu, /* 231 */
  0x96u, 0x91u, 0x98u, 0x9fu, 0x8au, 0x8du, 0x84u, 0x83u, /* 239 */
  0xdeu, 0xd9u, 0xd0u, 0xd7u, 0xc2u, 0xc5u, 0xccu, 0xcbu, /* 247 */
  0xe6u, 0xe1u, 0xe8u, 0xefu, 0xfau, 0xfdu, 0xf4u, 0xf3u  /* 255 */
};

#define MPU_ASIL_STOP_SEC_CONST
#include "MPU_MemMap.h"
#endif/*!MEMORY_PROTECTION_ENABLED*/

/*******************************************************************************
 * Local data (private to module)
 ******************************************************************************/
#define MPU_QM_START_SEC_VAR_NOINIT
#include "MPU_MemMap.h"
/* pointer to the data buffer */
// static uint8 *pu8_UdsData;
uint8 *pu8_UdsData; // static type will cause wrong pointer value

static uint16 u16_UdsRxDataLength;
static UdsRxState_t e_UdsRxState;

static UdsTxState_t e_UdsTxState;
static uint16 u16_UdsTxDataLength;
#define MPU_QM_STOP_SEC_VAR_NOINIT
#include "MPU_MemMap.h"

/*******************************************************************************
 * Global data (public to other modules)
 ******************************************************************************/
#define MPU_QM_START_SEC_VAR_NOINIT
#include "MPU_MemMap.h"
bit Trusted_UdsRstReq_Flag;             //trusted variable for Uds_ASILTask()
#define MPU_QM_STOP_SEC_VAR_NOINIT
#include "MPU_MemMap.h"
/*******************************************************************************
 * Global functions (public to other modules)
 ******************************************************************************/

#define MPU_QM_START_SEC_CODE
#include "MPU_MemMap.h"
/*******************************************************************************
 * Function:        Uds_Init
 *
 * Parameters:      -
 * Returned value:  -
 *
 * Description:     -
 *
 ******************************************************************************/
void Uds_Init( void )
{
  e_UdsRxState = UdsRxIdle;
  e_UdsTxState = UdsTxIdle;
  Trusted_UdsRstReq_Flag = FALSE;

} /* Uds_Init */

/*******************************************************************************
 * Function:        Uds_Indication
 *
 * Parameters:      Indication status, data pointer, data length
 * Returned value:  -
 *
 * Description:     This function will be called from the TP if a complete
 *                  message was received. This will inform the Uds module
 *                  that a new message is available and the message must be
 *                  analysed.
 *
 ******************************************************************************/
void Uds_Indication( eIndicationStatus_t status, uint8 *abData,
                     uint16 dataLength )
{
  /* check if uds service is still active */
  if ((UdsRxIdle == e_UdsRxState) && (UdsTxIdle == e_UdsTxState)) {
    if (TpRxOk == status) {
      pu8_UdsData = abData;
      u16_UdsRxDataLength = dataLength;
      e_UdsRxState = UdsRxReceived;
    } /* end if */
  } /* end if */
  else {
    /* uds is still running */
  } /* end else */

} /* Uds_Indication */

/*******************************************************************************
 * Function:        Uds_Task
 *
 * Parameters:      -
 * Returned value:  -
 *
 * Description:     This is the main routine of the uds module. This routine
 *                  handles the uds messages.
 *
 ******************************************************************************/
void Uds_Task( void )
{
  uint8 i=0;
  uint8 u8_RespCode = UDS_NRC_SERVICE_NOT_SUPPORTED;

  /* handle Rx messages */
  if (UdsRxReceived == e_UdsRxState) 
  {
    if (ECU_RESET_REQ_ID == pu8_UdsData[SID_INDEX]) 
    {
      Trusted_UdsRstReq_Flag = 1u;
    }
    else
    {
      e_UdsRxState = UdsRxError;
      for (i = 0; i < UDS_MAX_NO_OF_SERVICES; ++i) 
      {
        /* check if subfunction is supported */
        if (cs_ServicesModes[i].Sid == pu8_UdsData[SID_INDEX])
        {
          /* check if subfunction is supported -> function pointer needed */
          if (NULL_PTR != cs_ServicesModes[i].func) 
          {
              u8_RespCode = cs_ServicesModes[i].func(pu8_UdsData,
                                                   u16_UdsRxDataLength);
            // if (0U < u8_RespCode)
            if (RESPONSE_SUCCESS != u8_RespCode)
            {
              /* error */
              Uds_SetNrc(pu8_UdsData, pu8_UdsData[SID_INDEX], u8_RespCode);
            } /* end if */
            e_UdsRxState = UdsRxIdle;
            break;
          } /* end if */
          else
          {
            Uds_SetNrc(pu8_UdsData, pu8_UdsData[SID_INDEX],
                       UDS_NRC_SUBFUNC_NOT_SUPPORTED);
          } /* end else */
        } /* end if */
      } /* end for */
      if (UdsRxError == e_UdsRxState) {
        Uds_SetNrc(pu8_UdsData, pu8_UdsData[SID_INDEX],
                   UDS_NRC_SERVICE_NOT_SUPPORTED);
        e_UdsRxState = UdsRxIdle;
      } /* end if */
    } /*end if */
  } /* end if */

  /* handle Tx messages */
  if (UdsTxSend == e_UdsTxState) {
    TpSetTxBuffer(0, pu8_UdsData, u16_UdsTxDataLength);
    e_UdsTxState = UdsTxIdle;
  } /* end if */

} /* Uds_Task */

#define MPU_QM_STOP_SEC_CODE
#include "MPU_MemMap.h"

#define MPU_ASIL_START_SEC_CODE
#include "MPU_MemMap.h"

/*******************************************************************************
 * Function:        Uds_ASILTask
 *
 * Parameters:      -
 * Returned value:  -
 *
 * Description:     This is the ASIL task of the uds module. This routine
 *                  handles the uds ECU Reset message.
 *
 ******************************************************************************/
void Uds_ASILTask( void )
{
  uint8 u8_RespCode = UDS_NRC_REQUEST_OUT_OF_RANGE;
  e_UdsRxState = UdsRxError;
  /* check if service is supported -> function pointer needed */
  if (NULL_PTR != cs_ServicesModes[ECURESET_SID_INDEX].func) 
  {
    u8_RespCode = cs_ServicesModes[ECURESET_SID_INDEX].func(pu8_UdsData,
                                            u16_UdsRxDataLength);
  }
  e_UdsRxState = UdsRxIdle;
  if (RESPONSE_SUCCESS != u8_RespCode)
  {
    /* error */
    Uds_SetNrc(pu8_UdsData, pu8_UdsData[SID_INDEX], u8_RespCode);
  } /* end if */
  if (UdsRxError == e_UdsRxState) 
  {
    Uds_SetNrc(pu8_UdsData, pu8_UdsData[SID_INDEX],
               RESPONSE_ILLEGAL_DATA_OPERATION);
    e_UdsRxState = UdsRxIdle;
  } /* end if */
} /* Uds_ASILTask */

/*******************************************************************************
 * Local functions (private to module)
 ******************************************************************************/

/*******************************************************************************
 * Function:        Uds_McuSwReset
 *
 * Parameters:      
 * Returned value:  
 *
 * Description:     SW reset API for UDS ECU reset request.
 *
 ******************************************************************************/
void Uds_McuSwReset(void)
{
	IfxScuWdt_clearSafetyEndinit(IfxScuWdt_getSafetyWatchdogPassword());
	SET_TOM_OUTEN(PRIA, OUT_DIS);
	SET_TOM_OUTEN(PRIB, OUT_DIS);
	SET_TOM_OUTEN(PRIC, OUT_DIS);
	SET_TOM_OUTEN(PRID, OUT_DIS);
	SET_TOM_OUTEN(SRA, OUT_DIS);
	SET_TOM_OUTEN(SRB, OUT_DIS);
	SET_TOM_OUTEN(CLAMPA, OUT_DIS);
	SET_TOM_OUTEN(CLAMPB, OUT_DIS);
    // SCU_SWRSTCON.B.SWRSTREQ = 1u;
  IOHWSF_vDefaultErrorHandler(IOHWSF_E_UDS_ECU_RESET_REQ);
  IfxScuWdt_setSafetyEndinit(IfxScuWdt_getSafetyWatchdogPassword());
}
/*******************************************************************************
 * Function:        Uds_EcuReset
 *
 * Parameters:      RxTxBuf, length of message
 * Returned value:  error status
 *
 * Description:     Uds_EcuReset
 *
 ******************************************************************************/
static inline uint8 Uds_EcuReset( uint8 *RxTxBuf, uint16 LenOfMsg )
{
  uint8 u8_RespCode;

  u8_RespCode = UDS_NRC_SERVICE_NOT_SUPPORTED;

  /* check the correct size of the message */
  if (((uint16)LenOfMsg) == ECU_RESET_REQ_SIZE)
  {
    /* check for hardware reset */
    if (RxTxBuf[SUBFUNC_INDEX] == HARDWARE_RESET)
    {
        RxTxBuf[SID_INDEX] = (RxTxBuf[SID_INDEX] + RESPONSE_OFFSET);
        u16_UdsTxDataLength = 2u;
        u8_RespCode = UDS_POSITIVE_RESPONSE;
        e_UdsTxState = UdsTxSend;
        Uds_McuSwReset();
    } /* end if */
    else
    {
      /* create negative response */
        u8_RespCode = UDS_NRC_SUBFUNC_NOT_SUPPORTED;
    } /* end else */
  }
  else
  {
    /* create negative response for wrong length */
      u8_RespCode = UDS_NRC_INCORRECT_MSG_LENGTH;
  } /* end else */

  return u8_RespCode;
} /* Uds_DiagService10 */
#define MPU_ASIL_STOP_SEC_CODE
#include "MPU_MemMap.h"

#define MPU_QM_START_SEC_CODE
#include "MPU_MemMap.h"
/*******************************************************************************
 * Function:        Uds_SetNrc
 *
 * Parameters:      -
 * Returned value:  -
 *
 * Description:     -
 *
 ******************************************************************************/
static inline void Uds_SetNrc( uint8 *RxTxBuff, uint8 Sid, uint8 Nrc )
{
  /* fill Tx data buffer with negative response */
  RxTxBuff[SID_INDEX] = SID_NEGATIVE_RESPONSE;
  RxTxBuff[NRC_SID_INDEX] = Sid;
  RxTxBuff[NRC_NRC_INDEX] = Nrc;
  /* set datalength of response */
  u16_UdsTxDataLength = 3U;
  /* set state to start sending the response */
  e_UdsTxState = UdsTxSend;

} /* Uds_SetNrc */


/*******************************************************************************
 * Function:        Uds_DiagService10
 *
 * Parameters:      RxTxBuf, length of message
 * Returned value:  error status
 *
 * Description:     -
 *
 ******************************************************************************/
static inline uint8 Uds_DiagService10( uint8 *RxTxBuf, uint16 LenOfMsg )
{
  uint8 u8_RespCodeL=UDS_NRC_SUBFUNC_NOT_SUPPORTED;

  if (RxTxBuf[1] == UDS_PROGRAMMING_SESSION)
  {
    /* Preparation for the jump to bootloader */
    u8_RespCodeL = RESPONSE_SUCCESS;
  }

  return u8_RespCodeL;
} /* Uds_DiagService10 */

/*******************************************************************************
 * Function:        Uds_DiagService22
 *
 * Parameters:      RxTxBuf, length of message
 * Returned value:  error status
 *
 * Description:     -
 *
 ******************************************************************************/
static inline uint8 Uds_DiagService22( uint8 *RxTxBuf, uint16 LenOfMsg )
{
  uint8 i=0;
  uint8 u8_RespCode=0;
  uint16 u16_DataId=0;

  u16_DataId = ((RxTxBuf[WRITE_BY_ID_ID_HIGH_INDEX] << 8U) & 0xFF00U) |
               (RxTxBuf[WRITE_BY_ID_ID_LOW_INDEX] & 0x00FFU);

  u8_RespCode = RESPONSE_ILLEGAL_DATA_OPERATION;

  for (i = 0; i < UDS_MAX_NO_OF_READ_IDS; ++i)
  {
    if (cs_ReadDataIdItems[i].DataId == u16_DataId)
    {
      /* check if DID is supported -> function pointer needed */
      if (NULL_PTR != cs_ReadDataIdItems[i].func)
      {
        /* check if data length is correct */
        if (3U == LenOfMsg)
        { /* read lenght */
          u8_RespCode = cs_ReadDataIdItems[i].func(UDS_READ,
                        &(RxTxBuf[WRITE_BY_ID_ID_DATA_INDEX]),
                        LenOfMsg-( SID_LENGTH + DATA_ID_LENGTH ));
          if (RESPONSE_SUCCESS == u8_RespCode)
          {
            /* set positive response 0x62 = 0x22 + 0x40*/
            RxTxBuf[SID_INDEX] = (RxTxBuf[SID_INDEX] + RESPONSE_OFFSET);
            /* set datalength of response */
            u16_UdsTxDataLength = SID_LENGTH + DATA_ID_LENGTH +
            		cs_ReadDataIdItems[i].Length;
           
            /* set state to start sending the response */
            e_UdsTxState = UdsTxSend;
          } /* end if */
        } /* end if */
        else
        {
          u8_RespCode = UDS_NRC_INCORRECT_MSG_LENGTH;
        }
        break;
      } /* end if */
      else
      {
        u8_RespCode = UDS_NRC_REQUEST_OUT_OF_RANGE;
      }
    } /* end if */
  } /* end for */

  return u8_RespCode;
} /* Uds_DiagService22 */

/*******************************************************************************
 * Function:        Uds_DiagService2E
 *
 * Parameters:      RxTxBuf, length of message
 * Returned value:  error status
 * Uds_DiagService2E
 * Description:     -
 *
 ******************************************************************************/
static inline uint8 Uds_DiagService2E( uint8 *RxTxBuf, uint16 LenOfMsg )
{
  uint8 i=0;
  uint8 u8_RespCode=0;
  uint16 u16_DataId=0;

  u16_DataId = ((RxTxBuf[WRITE_BY_ID_ID_HIGH_INDEX] << 8U) & 0xFF00U) |
                (RxTxBuf[WRITE_BY_ID_ID_LOW_INDEX] & 0x00FFU);

  u8_RespCode = RESPONSE_ILLEGAL_DATA_OPERATION;

  for (i = 0; i < UDS_MAX_NO_OF_WRITE_IDS; ++i)
  {
    if (cs_WriteDataIdItems[i].DataId == u16_DataId)
    {
      /* check if service is supported -> function pointer needed */
      if (NULL_PTR != cs_WriteDataIdItems[i].func)
      {
        /* check if data length is correct */
        if((cs_WriteDataIdItems[i].Length + 3U) == LenOfMsg)
        {
          u8_RespCode = cs_WriteDataIdItems[i].func(UDS_WRITE,
                        &(RxTxBuf[WRITE_BY_ID_ID_DATA_INDEX]),
                        LenOfMsg-(SID_LENGTH + DATA_ID_LENGTH));
          if (RESPONSE_SUCCESS == u8_RespCode)
          {
            /* set positive response */
            RxTxBuf[SID_INDEX] = (RxTxBuf[SID_INDEX] + RESPONSE_OFFSET);
            /* set datalength of response */
            u16_UdsTxDataLength = (SID_LENGTH + DATA_ID_LENGTH);
            /* set state to start sending the response */
            e_UdsTxState = UdsTxSend;
          }/* end if */
        } /* end if */
        else
        {
          u8_RespCode = UDS_NRC_INCORRECT_MSG_LENGTH;
        }
        RxTxBuf[RESP_CODE_INDEX] = u8_RespCode; /* GGL */
        break;
             
      } /* end if */
    } /* end if */
  } /* end for */

  return u8_RespCode;
} /* Uds_DiagService2E */

#define MPU_QM_STOP_SEC_CODE
#include "MPU_MemMap.h"

#if(!MEMORY_PROTECTION_ENABLED)
#define MPU_ASIL_START_SEC_CODE
#include "MPU_MemMap.h"
/*******************************************************************************
 * Function:        UdsData_Parameter
 *
 * Parameters:      pointer to data buffer, data length
 * Returned value:  negative response code
 *
 * Description:     This routine handles the write of the parameter data
 *
 ******************************************************************************/
#if 0
uint8 UdsData_Parameter(uint8 ReadWrite, uint8 *RxTxBuf, uint16 LenOfMsg)
{
//  uint16 u8_RespCode = NRC_SERVIC_NOT_SUPPORTED;
  uint16 u16_CrcIndex=0;
  uint16 u16_Index=0;
  uint32 u32_Crc32=0;
  uint32 u32_Crc32_External=0;
  uint16 u16_LenOfData=0;
  uint8  u8_RespCode=0;

  u32_Crc32 = Crc_CalculateCRC32(RxTxBuf, LenOfMsg - CRC32_SIZE);
  u16_CrcIndex = LenOfMsg - CRC32_SIZE;
  u32_Crc32_External = ((uint32) RxTxBuf[ u16_CrcIndex ] << 24) +
                       ((uint32) RxTxBuf[ u16_CrcIndex+1 ] << 16) +
                       ((uint32) RxTxBuf[ u16_CrcIndex+2 ] << 8)  +
                       ((uint32) RxTxBuf[ u16_CrcIndex+3 ]);

  /* check if CRC is correct */
  if (u32_Crc32_External == u32_Crc32) {
    /* data are correct copy them into internal buffer */
    /* calculate TI data length */
    u16_LenOfData = (LenOfMsg-CRC32_SIZE)/2;

    for (u16_Index = 0; u16_Index < u16_LenOfData; ++u16_Index) {
      ((uint16*)(&ParameterData))[u16_Index] = RxTxBuf[u16_Index * 2U];
      ((uint16*)(&ParameterData))[u16_Index] = ((((uint16*)(&ParameterData))[u16_Index] << 8) & 0xFF00U)
                | (RxTxBuf[(u16_Index *2U) + 1U] & 0x00FFU);
    } /* end for */
    /* set parameter data valid flag */
    ParamDataValidFlg = TRUE;
    /* set CAN signal for parameter received */
    //Set_HV_Parameter_State(PARAM_RECEIVED_FLAG);
    u8_RespCode = RESPONSE_SUCCESS;
    Pram_u16Prameter_recieved=1;
  } /* end if */
  else {
    u8_RespCode = RESPONSE_ILLEGAL_DATA_OPERATION;
  } /* end else */

  return u8_RespCode;
} /* WriteParameterData */
#endif
/*******************************************************************************
 * Function:        UdsData_Param
 *
 * Parameters:      pointer to data buffer, data length
 * Returned value:  -
 *
 * Description:     This routine handles the write of the Uds data
 *
 ******************************************************************************/
static void UdsData_Param(u16 ReadWrite, u8* Buffer, u16* DataPtr, u16 DataSize)
{
	u16 i;

	for(i = 0; i < DataSize; i++)
	{
		u16 Hbyte = 2 * i;
		u16 Lbyte = Hbyte + 1;
		DataPtr[i] = ((u16)Buffer[Hbyte] << 8) | (u16)Buffer[Lbyte];
	}
}

/*******************************************************************************
 * Function:        UdsData_Parameter
 *
 * Parameters:      pointer to data buffer, data length
 * Returned value:  negative response code
 *
 * Description:     This routine handles the write of the parameter data
 *
 ******************************************************************************/
uint8 UdsData_Parameter(uint8 ReadWrite, uint8 *RxTxBuf, uint16 LenOfMsg)
{
	uint16 Index;
	uint32 ComCrcAct;
	uint32 ComCrcRef;

	Index = PARAM_INDEX_COMCRC;
	ComCrcAct = Crc_CalculateCRC32(RxTxBuf, Index);
	ComCrcRef = ((uint32) RxTxBuf[Index    ] << 24) |
				((uint32) RxTxBuf[Index + 1] << 16) |
				((uint32) RxTxBuf[Index + 2] <<  8) |
				((uint32) RxTxBuf[Index + 3]);

	if(ComCrcAct == ComCrcRef)
	{
		UdsData_Param(ReadWrite, RxTxBuf, (u16*)&ParameterData, PARAM_DATASIZE);
		return RESPONSE_SUCCESS;
	}
	else
	{
		return RESPONSE_ILLEGAL_DATA_OPERATION;
	}
}

/*******************************************************************************
 * Function:        UdsData_Calibration
 *
 * Parameters:      pointer to data buffer, data length
 * Returned value:  negative response code
 *
 * Description:     This routine handles the write of the calibration data
 *
 ******************************************************************************/
uint8 UdsData_Calibration(uint8 ReadWrite, uint8 *RxTxBuf, uint16 LenOfMsg)
{
	uint16 Index;
	uint32 AteCrcAct;
	uint32 AteCrcRef;
	uint32 ComCrcAct;
	uint32 ComCrcRef;
	uint16 IsCalibrated;

	Index = CALIB_INDEX_ATECRC;
	AteCrcAct = Crc_CalculateCRC32(RxTxBuf, Index);
	AteCrcRef = ((uint32) RxTxBuf[Index    ] << 24) |
            	((uint32) RxTxBuf[Index + 1] << 16) |
				((uint32) RxTxBuf[Index + 2] <<  8) |
				((uint32) RxTxBuf[Index + 3]);

	Index = CALIB_INDEX_COMCRC;
	ComCrcAct = Crc_CalculateCRC32(RxTxBuf, Index);
	ComCrcRef = ((uint32) RxTxBuf[Index    ] << 24) |
				((uint32) RxTxBuf[Index + 1] << 16) |
				((uint32) RxTxBuf[Index + 2] <<  8) |
				((uint32) RxTxBuf[Index + 3]);

	Index = CALIB_INDEX_ISCALIB;
	IsCalibrated = ((uint32) RxTxBuf[Index	  ] <<  8) |
				   ((uint32) RxTxBuf[Index + 1]);

	if(AteCrcAct == AteCrcRef && ComCrcAct == ComCrcRef && IsCalibrated)
	{
		UdsData_Param(ReadWrite, RxTxBuf, (u16*)&CalibrationData, CALIB_DATASIZE);
		return RESPONSE_SUCCESS;
	}
	else
	{
		return RESPONSE_ILLEGAL_DATA_OPERATION;
	}
}

/*******************************************************************************
 * Function:        Crc_CalculateCRC32
 *
 * Parameters:      crc data pointer, data length
 * Returned value:  crc32 value
 *
 * Description:     This routine calculates the CRC32 of the given data.
 *
 ******************************************************************************/
uint32 Crc_CalculateCRC32(uint8 *Crc_DataPtr, uint16 Crc_Length)
{
  uint32 Crc_Value=0; /* temporary crc value */
  uint16 i=0;          /* table index */
  const uint8 *DataPtr; /* internal byte pointer to the memory block */

  /* initialize variables */
  DataPtr = Crc_DataPtr; // (const uint16 *)Crc_DataPtr;
  Crc_Value = CRC32_INIT_VALUE;

  /* Process all data byte-wise */
  while (Crc_Length > (uint32)0)
  {

    /**************************************************/
    /* Low byte calculation */
    /**************************************************/
    /*- Process low nibble of current data low byte -*/
    i = (uint8)(Crc_Value & (uint32)0x0000000FU);
    i ^= (uint8)(*DataPtr & (uint8)0x0FU);

    Crc_Value = (uint32)(Crc_Value >> 4U);
    Crc_Value ^= CrcTable32[i & 0x00FFU];

    /*- Process high nibble of current data low byte -*/
    i = (uint8)(Crc_Value & (uint32)0x0000000FU);
    i ^= (uint8)((uint8)(*DataPtr & (uint8)0xF0U) >> 4U);

    Crc_Value = (uint32)(Crc_Value >> 4U);
    Crc_Value ^= CrcTable32[i & 0x00FFU];

    DataPtr = &DataPtr[1]; /* increment the pointer */

    --Crc_Length; /* and decrease the remaining bytes to calculate */
  }  /* while (Crc_Length > (uint32)0) */

  /* EXOR end value with CRC EXOR pattern */
  Crc_Value ^= CRC32_EXOR_VALUE;

  return Crc_Value;
} /* uint32 CF_CalculateCRC32_Table */

/*******************************************************************************
* Function:        Crc_CalculateCRC8
*
* Parameters:      Uint8* cp, Uint8 length, Uint8 offset
* Returned value:  crc
*
* Description:     Calculate CRC8 checksum over the the data block and except
*                  the start block (first three bytes).
* Input:           ucCRC8_Table[]
* Output:          -
* Calling:
******************************************************************************/
uint8 Crc_CalculateCRC8(const uint16 *cp, uint8 length){
  uint8 idx;
  uint8 ucCrcIndex  = 0;
  uint8 crc         = LOW_BYTE;
  uint8 data;

  for (idx = 0; length > idx; idx++) {
  	data = (uint8)cp[idx];
    ucCrcIndex = ((crc ^ data) & LOW_BYTE);
    crc = (crc >> 8) ^ CrcTable08[ucCrcIndex];
  }
  crc ^= LOW_BYTE;
  return crc;
}

/*******************************************************************************
* External Function for APP Level
******************************************************************************/
void HsfbMeas_GetCalibData(HSFBMEAS_S_CALIB *y)
{
	y->Vout.Gain 		= CALIB_VOUT_GAIN_FACTOR  	*CalibrationData.LVDC_Output_VSense_gain;
	y->Vout.Offset 		= CALIB_VOUT_OFFSET_FACTOR	*CalibrationData.LVDC_Output_VSense_offset;

	y->Vkl30.Gain 		= CALIB_VKL30_GAIN_FACTOR  	*CalibrationData.LVDC_KL30F_VM_gain;
	y->Vkl30.Offset 	= CALIB_VKL30_OFFSET_FACTOR	*CalibrationData.LVDC_KL30F_VM_offset;

	y->Iout.Gain 		= CALIB_IOUT_GAIN_FACTOR  	*CalibrationData.LVDC_InOut_ISense_gain;
	y->Iout.Offset 		= CALIB_IOUT_OFFSET_FACTOR	*CalibrationData.LVDC_InOut_ISense_offset;

	y->Vin_P1.Gain 		= CALIB_VIN_GAIN_FACTOR  	*CalibrationData.LVDC_Input_1_VSense_gain;
	y->Vin_P1.Offset 	= CALIB_VIN_OFFSET_FACTOR	*CalibrationData.LVDC_Input_1_VSense_offset;

	y->Vin_P2.Gain 		= CALIB_VIN_GAIN_FACTOR  	*CalibrationData.LVDC_Input_2_VSense_gain;
	y->Vin_P2.Offset 	= CALIB_VIN_OFFSET_FACTOR	*CalibrationData.LVDC_Input_2_VSense_offset;

	y->Vin_P3.Gain 		= CALIB_VIN_GAIN_FACTOR  	*CalibrationData.LVDC_Input_3_VSense_gain;
	y->Vin_P3.Offset 	= CALIB_VIN_OFFSET_FACTOR	*CalibrationData.LVDC_Input_3_VSense_offset;

	y->Vin_OP1 			= CALIB_VIN_OP_FACTOR		*CalibrationData.LVDC_Input_1to2_VSense_OP;
	y->Vin_OP2 			= CALIB_VIN_OP_FACTOR		*CalibrationData.LVDC_Input_2to3_VSense_OP;
}

void HsfbCtrl_GetParamData(HSFBCTRL_S_PARAM *y)
{
	if((ParameterData.LVDC_ParameterEnable & PARAM_MASK_CTRL) != 0)
	{
		ParameterData.LVDC_ParameterEnable &= (~PARAM_MASK_CTRL);
	}
	else
	{
		return;
	}

	y->IoutBoostMax		= 						(f32)ParameterData.LVDC_Ctrl_IoutBoostMax;
	y->PreVinTarget		= 						(f32)ParameterData.LVDC_Ctrl_PreVinTarget;
	y->PreVinSrRise		= PARAM_FACTOR_10m	*	(f32)ParameterData.LVDC_Ctrl_PreVinSrRise;
	y->PreVlimMin		= PARAM_FACTOR_100m	*	(f32)ParameterData.LVDC_Ctrl_PreVlimMin;

	RANGE_CHECK(y->IoutBoostMax, 320, 0, HSFBCTRL_IOUT_BOOST_MAX);
	RANGE_CHECK(y->PreVinTarget, 400, 0, HSFBCTRL_PRE_VIN_TARGET);
	RANGE_CHECK(y->PreVinSrRise, 10, 0, HSFBCTRL_PRE_VIN_SR_RISE);
	RANGE_CHECK(y->PreVlimMin, 16, 0, HSFBCTRL_PRE_VLIM_MINL);
}

#define MPU_ASIL_STOP_SEC_CODE
#include "MPU_MemMap.h"
#endif/*MEMORY_PROTECTION_ENABLED*/

/* 
 * End of file
 */
