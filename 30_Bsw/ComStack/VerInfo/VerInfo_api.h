#ifndef VERINFO_API_H
#define VERINFO_API_H

#include "Platform_Types.h" /* Provide standard types */

/*******************************************************************************
 * Global function prototypes
 ******************************************************************************/
uint8 UdsData_SwVersion( uint8 ReadWrite, uint8 *RxTxBuf, uint16 LenOfMsg );
uint8 UdsData_HwVersion( uint8 ReadWrite, uint8 *RxTxBuf, uint16 LenOfMsg );
uint8 UdsData_BuildDate( uint8 ReadWrite, uint8 *RxTxBuf, uint16 LenOfMsg );
uint8 UdsData_BuildTime( uint8 ReadWrite, uint8 *RxTxBuf, uint16 LenOfMsg );

#endif
