/*******************************************************************************
 * 4-Header
 ******************************************************************************/
#include "VerInfo_api.h"
#include "VerInfo_cfg.h"
#include "VerInfo_scb.h"
#include "VerInfo_scfg.h"

/*******************************************************************************
 * Local data
 ******************************************************************************/

/*******************************************************************************
 * Local function prototypes
 ******************************************************************************/

/*******************************************************************************
 * Local constants
 ******************************************************************************/

/*******************************************************************************
 * Global functions
 ******************************************************************************/
#define MPU_QM_START_SEC_CODE
#include "MPU_MemMap.h"
/*******************************************************************************
 * Function:        UdsData_SwVersion
 *
 * Parameters:      pointer to data buffer, data length
 * Returned value:  negative response code
 *
 * Description:     This routine handles the SW version
 *
 ******************************************************************************/
uint8 UdsData_SwVersion( uint8 ReadWrite, uint8 *RxTxBuf, uint16 LenOfMsg )
{
  u16 TxByte = 0;
  u32 SvnTag = Main_GetSwVersion();
  uint8  u8_RespCode=0;

  if (UDS_WRITE == ReadWrite){
      /* write not supported for SwVersion */
  }
  RxTxBuf[TxByte   ] = (u8)((SvnTag & 0xFF000000) >> 24);
  RxTxBuf[TxByte +1] = (u8)((SvnTag & 0x00FF0000) >> 16);
  RxTxBuf[TxByte +2] = (u8)((SvnTag & 0x0000FF00) >>  8);
  RxTxBuf[TxByte +3] = (u8)((SvnTag & 0x000000FF)      );

  u8_RespCode = RESPONSE_SUCCESS;

  return u8_RespCode;

} /* UdsData_SwVersion */

/*******************************************************************************
 * Function:        UdsData_HwVersion
 *
 * Parameters:      pointer to data buffer, data length
 * Returned value:  negative response code
 *
 * Description:     This routine handles the HW version
 *
 ******************************************************************************/
uint8 UdsData_HwVersion( uint8 ReadWrite, uint8 *RxTxBuf, uint16 LenOfMsg )
{
  u16 TxByte = 0;
  u32 SvnTag = Main_UdsGetHwVer();
  uint8  u8_RespCode=0;

  if (UDS_WRITE == ReadWrite){
      /* write not supported for HwVersion */
  }
  RxTxBuf[TxByte   ] = (u8)((SvnTag & 0xFF000000) >> 24);
  RxTxBuf[TxByte +1] = (u8)((SvnTag & 0x00FF0000) >> 16);
  RxTxBuf[TxByte +2] = (u8)((SvnTag & 0x0000FF00) >>  8);
  RxTxBuf[TxByte +3] = (u8)((SvnTag & 0x000000FF)      );

  u8_RespCode = RESPONSE_SUCCESS;

  return u8_RespCode;

} /* UdsData_HwVersion */

/*******************************************************************************
 * Service 22, 2E - Read /Write Data By Identifier
 * Software Version - Build Date
 ******************************************************************************/
uint8 UdsData_BuildDate( uint8 ReadWrite, uint8 *RxTxBuf, uint16 LenOfMsg )
{
    u16 TxByte = 0;
    u32 Date = Main_GetBuildDate();
    uint8  u8_RespCode=0;

    if (UDS_WRITE == ReadWrite){
        /* write not supported for Build Date */
    }
    RxTxBuf[TxByte   ] = (u8)((Date & 0xFF000000) >> 24);
    RxTxBuf[TxByte +1] = (u8)((Date & 0x00FF0000) >> 16);
    RxTxBuf[TxByte +2] = (u8)((Date & 0x0000FF00) >>  8);
    RxTxBuf[TxByte +3] = (u8)((Date & 0x000000FF)      );

    u8_RespCode = RESPONSE_SUCCESS;

    return u8_RespCode;

}

/*******************************************************************************
 * Service 22, 2E - Read /Write Data By Identifier
 * Software Version - Build Time
 ******************************************************************************/
uint8 UdsData_BuildTime( uint8 ReadWrite, uint8 *RxTxBuf, uint16 LenOfMsg )
{
    u16 TxByte = 0;
    u32 Time = Main_GetBuildTime();
    uint8  u8_RespCode=0;

    if (UDS_WRITE == ReadWrite){
        /* write not supported for Build Time */
    }
    RxTxBuf[TxByte   ] = (u16)((Time & 0xFF000000) >> 24);
    RxTxBuf[TxByte +1] = (u16)((Time & 0x00FF0000) >> 16);
    RxTxBuf[TxByte +2] = (u16)((Time & 0x0000FF00) >>  8);
    RxTxBuf[TxByte +3] = (u16)((Time & 0x000000FF)      );

    u8_RespCode = RESPONSE_SUCCESS;

    return u8_RespCode;

}

#define MPU_QM_STOP_SEC_CODE
#include "MPU_MemMap.h"
/*******************************************************************************
 * Local functions implementation
 ******************************************************************************/




