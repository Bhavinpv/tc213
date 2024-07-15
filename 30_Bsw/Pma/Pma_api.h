/*******************************************************************************
 * Filename   : Pma_api.h
 * Project    : IPB
 * Author(s)  : deparap
 * Created    : 24.11.2022
 * Description:
 *
 * Last modification:
 *  on $Date$
 *  by $Author$
 *  current $Revision$
 *
 * Copyright (c) 2014 Delta Energy Systems (Germany) GmbH.
 * All rights reserved.
 ******************************************************************************/

#ifndef PMA_API_H
#define PMA_API_H

/*******************************************************************************
 *Includes
 ******************************************************************************/
#include "Platform_Types.h"
#include "Pma_cfg.h"

/*******************************************************************************
 * Global constants and macros
 ******************************************************************************/
#define PMA_ENABLE                  1u

#define RESET_TRIGGER_OCCURRED      1u
#define PROPER_SHUTDOWN             0u
#define PORST_SHUTDOWN              1u
#define STM_SHUTDOWN                2u
#define EVR13_SHUTDOWN              4u
#define EVR33_SHUTDOWN              8u
#define SMU_SHUTDOWN                10u
#define SWD_SHUTDOWN                20u
#define STBYR_SHUTDOWN              40u

/*******************************************************************************
 * Global data types (typedefs / structs / enums)
 ******************************************************************************/
typedef struct{
  u16 Mins;
  u8  Secs;
  u8  Cnt;
}PMA_S_RUN;

typedef struct{
  u8 ShutdownSts;
  u8 ResetCtr;                  //ResetCtr: escalation counter needed? to be implemented by BTLD?
  u32 ResetSts_reg;
  u32 PowerCycle;
  u32 PORSTPowerCycle;
  u32 NonPORSTPowerCycle;
}PMA_S_RESETINFO;


typedef struct{
  u32 InitPattern;
  u16 ErrCnt;
  u8 ErrSrc;
  u8 CpuLoadMin;
  u8 CpuLoadMax;
  PMA_S_MODULE_INFO ModuleInfo;
  PMA_S_RUN Timestamp;
  PMA_S_RESETINFO ResetInfo;
  PMA_S_MCSAFE_ERR McSafeErr;
}PMA_S_ABORTTYPE;

extern PMA_S_ABORTTYPE Pma_AbortData;


/*******************************************************************************
 * Global function prototypes
 ******************************************************************************/
extern void Pma_vInit(void);
extern void Pma_vWriteData(void);
extern void Pma_vTask10ms(void);
extern void Pma_vGetErrorInfo(u32 Error);
extern void Pma_vGetPfmSts(PFM_S_CAPTURE* Pfm_RdData);


#endif /*PMA_API_H*/
