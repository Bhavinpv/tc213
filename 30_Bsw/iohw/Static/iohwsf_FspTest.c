/*******************************************************************************
 * \file   iohwsf_FspTest.c
 * \brief   file is responsbile for Test the FSP signal
 *
 *  Details
 *
 * \section AUTHOR
 *    #. V-Amr.Ragab
 *    
 *
 * \section SVN
 *  $Date: 2023-1-4 $
 *  $Author: V-Amr.Ragab $
 *  $Revision:  $
 *
 * \section LICENSE
 * Copyright (c) 2016 Delta Energy Systems (Germany) GmbH.
 * All rights reserved.
 ******************************************************************************/

/*******************************************************************************
 * Included header
 ******************************************************************************/
#include "iohwsf_FSPTEST.h"
#include "Smu.h"
#include "Qspi.h"
#include "iohwsf.h"
#include "IfxSmu_reg.h"

/*******************************************************************************
 * Local constants and macros (private to module)
 ******************************************************************************/
#define SYSSF_CLEARED                     0U
#define SYSSF_ERRMISS_POSITION            3U
#define RSYSPCFG1_WRITTEN_SUCCESSFULLY    15U
#define NUMBER_OF_PARITY_BITS             1U
#define SPI_READ_DATA_MASK                0xFFU
#define SPI_ADDRESS_CLEAR_MASK            0x81FFU
#define RSYSPCFG1_UPDATE_ADDRESS          0x0A00U
#define RECOVERY_TIMEOUT                  64U
#define SMU_STS_FSTS                      12U

#define U16INVERT(DATA)  ((uint16)(~DATA))
/*******************************************************************************
 * Local data types (private typedefs / structs / enums)
 ******************************************************************************/


/*******************************************************************************
 * Global constants and macros
 ******************************************************************************/

/*******************************************************************************
 * W1/R0 | Address			| Data        | Parity
 * Bit15 | Bit14 - Bit9 	| Bit8 - Bit1 | Bit0
 ******************************************************************************/

#define W_SYSSF_FF		  0xBBFF	 /* 1-011101-11111111-1: Write data FF  */
#define R_SYSSF			    0x3A00	 /* 0-011101-00000000-0: Read Data */
#define W_SYSPCFG1_0F		0x8A1F	 /* 1-000101-00001111-1: Write Data 0F */

/*******************************************************************************
 * Global data types (typedefs / structs / enums)
 ******************************************************************************/


/*******************************************************************************
 * Global data
 ******************************************************************************/
#define MPU_ASIL_START_SEC_CODE
#include "MPU_MemMap.h"

/*******************************************************************************
 * Local function prototypes (private to module)
 ******************************************************************************/

/*******************************************************************************
 * Global function prototypes
 ******************************************************************************/
/** ****************************************************************************
 * \brief Function to Test the FSP signal.
 *
 * covers: DCDC_SM_5_2_25
 ******************************************************************************/
/* [PIPB-11469]: FSP Test implementation */
void IOHWSF_FSPTEST(void)
{
  uint16 SysconFigRegBackup;
  uint16 u16SyssfRegRead;
  uint16 u16SysconFigRegRead;
  uint16 u16SysconFigBackupData;
  uint16 u16Dummy;
  uint32 u32FspCounter;
  //Smu_StateType SmuState;

  /*Read the configuration status flags and backup them*/
  Qspi_SBC_TxRxData(R_RSYSPCFG1,&SysconFigRegBackup);
  u16SysconFigBackupData = (SysconFigRegBackup >> NUMBER_OF_PARITY_BITS) & SPI_READ_DATA_MASK;

  /*Assign the read data to the configuration Register Address*/
  SysconFigRegBackup = ((SysconFigRegBackup & SPI_ADDRESS_CLEAR_MASK)| RSYSPCFG1_UPDATE_ADDRESS);

  /*Clear all System status flags in the TLF by writting 1 to all SYSSF register feilds*/
  Qspi_SBC_TxRxData(W_SYSSF_FF,&u16Dummy);

  /*Read back the flags to make sure they are cleared correctly*/
  Qspi_SBC_TxRxData(R_SYSSF,&u16SyssfRegRead); 
  u16SyssfRegRead = (u16SyssfRegRead >> NUMBER_OF_PARITY_BITS) & SPI_READ_DATA_MASK;
  if(u16SyssfRegRead != SYSSF_CLEARED)
  {
    IOHWSF_vDefaultErrorHandler(IOHWSF_E_TLF_SYS_FLAGS_NOT_CLEARED);
  }

  /*Unlock TLF and check that it's unlocked successfully*/
  Qspi_SBC_Unlock();

  /*Request to enable Err pins monitoring at configuration register*/
  Qspi_SBC_TxRxData(W_SYSPCFG1_0F,&u16Dummy);

  /*Lock TLF and check that it's Locked successfully*/
  Qspi_SBC_Lockup();
  
  /* Trigger alarm: ALM5[0] */
  (void)Smu_SetAlarmStatus(SMU_ALARM_GROUP5, SMU_ALARM_0);

  /*Keep reading the SYSSF flags till ERRMISS feild is set or the response time reached 100us*/
  u32FspCounter = 0 ;
  do
  {
    Qspi_SBC_TxRxData(R_SYSSF,&u16SyssfRegRead);
    u16SyssfRegRead = (u16SyssfRegRead >> NUMBER_OF_PARITY_BITS) & SPI_READ_DATA_MASK;
    u32FspCounter++;
  }
  while((((u16SyssfRegRead >> SYSSF_ERRMISS_POSITION) & 1U) != 1U) && u32FspCounter <= RECOVERY_TIMEOUT);

  /*Check timeout*/
  if(u32FspCounter > RECOVERY_TIMEOUT)
  {
    IOHWSF_vDefaultErrorHandler(IOHWSF_E_TLF_ERR_DETECTION_TIMEOUT);
  }
  /*Clear alarm : ALM5[0]*/
  if(E_OK != Smu_ClearAlarmStatus(SMU_ALARM_GROUP5,SMU_ALARM_0))
  {
    IOHWSF_vDefaultErrorHandler(IOMTST_SMU_CLRALMSTSERR);
  }
  /*Return the SMU state to the RUN state*/
  if(E_OK != Smu_ReleaseFSP())
  {
   IOHWSF_vDefaultErrorHandler(IOHWSF_E_RELEASE_FSP_FAILED);
  }
  /*Make sure that the SMU state go the RUN state*/
  /*If it doesn't go to the run state and kept in the fault state , a reset will occured*/
  while(Smu_GetSmuState() != SMU_RUN_STATE)
  {
    
  }
    
  /*Unlock TLF and check that it's unlocked successfully*/
  Qspi_SBC_Unlock();

  /*Restore The TLF configuration Register*/
  Qspi_SBC_TxRxData(SysconFigRegBackup,&u16Dummy);

  /*Lock TLF and check that it's Locked successfully*/
  Qspi_SBC_Lockup();

  /*Read back the configuration status Register*/
  Qspi_SBC_TxRxData(R_RSYSPCFG1,&u16SysconFigRegRead);
  u16SysconFigRegRead = (u16SysconFigRegRead >> NUMBER_OF_PARITY_BITS) & SPI_READ_DATA_MASK;
  if(u16SysconFigRegRead != u16SysconFigBackupData)
  {
    IOHWSF_vDefaultErrorHandler(IOHWSF_E_TLF_RESTORE_FAILED);
  }
  /*Clear all System status flags in the TLF by writting 1 to all SYSSF register feilds*/
  Qspi_SBC_TxRxData(W_SYSSF_FF,&u16Dummy);

  /*Read back the flags to make sure they are cleared correctly*/
  Qspi_SBC_TxRxData(R_SYSSF,&u16SyssfRegRead);
  u16SyssfRegRead = (u16SyssfRegRead >> NUMBER_OF_PARITY_BITS) & SPI_READ_DATA_MASK;
  if(u16SyssfRegRead != SYSSF_CLEARED)
  {
    IOHWSF_vDefaultErrorHandler(IOHWSF_E_TLF_SYS_FLAGS_NOT_CLEARED);
  }

}


#define MPU_ASIL_STOP_SEC_CODE
#include "MPU_MemMap.h"

/*
 * End of file
 */