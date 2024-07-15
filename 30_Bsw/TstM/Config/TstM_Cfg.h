/** ****************************************************************************
 * \file    TstM_Cfg.h
 * \brief   Headerfile for TstM.c configuration
 *
 *  Details
 *
 * \section AUTHOR
 *    #. v-Yousef.Mohamed
 *
 * \section SVN
 *  $Date: 2021-10-24 09:28:08 $
 *  $Author: v-Yousef.Mohamed $
 *  $Revision:  $
 *
 * \section LICENSE
 * Copyright (c) 2016 Delta Energy Systems (Germany) GmbH.
 * All rights reserved.
 **************************************************************************** */
#ifndef TSTM_CFG_H_
#define TSTM_CFG_H_
#ifdef __cplusplus
  extern "C" {
#endif

#define TSTM_PRERUN_DEFAULT_GROUP_INDEX_0       ((uint8)0)
#define TSTM_PRERUN_DEFAULT_GROUP_INDEX_1       ((uint8)1)
#define TSTM_PRERUN_IR_GROUP_INDEX              ((uint8)2)
#define TSTM_PRERUN_LOCKSTEP_GROUP_INDEX        ((uint8)3)

#define TSTM_RUN_DEFAULT_GROUP_INDEX                    ((uint8)0)
#define TSTM_RUN_SRC_REGESTERS_CHECK_GROUP_INDEX        ((uint8)1)


#define TSTM_DEFAULT_GROUP_INDEX_0_GLOBAL_INDEX             TSTM_PRERUN_TRAP
#define TSTM_DEFAULT_GROUP_INDEX_1_GLOBAL_INDEX             TSTM_PRERUN_REG_ACC_PROT
#define TSTM_IR_GROUP_INDEX_GLOBAL_INDEX                    TSTM_PRERUN_IR
#define TSTM_LOCKSTEP_GROUP_INDEX_GLOBAL_INDEX              TSTM_PRERUN_LOCKSTEP
#define TSTM_RUN_TEST_GROUP_INDEX_GLOBAL_INDEX              TSTM_RUN_SFR_CMP
#define TSTM_SRC_REGESTERS_CHECK_GROUP_INDEX_GLOBAL_INDEX   TSTM_RUN_SRC_REGESTERS_CHECK
enum
{
  TSTM_PRERUN_TRAP = 0,
  TSTM_PRERUN_CLKM,
  TSTM_PRERUN_SRAM_ECC,
  TSTM_PRERUN_PMU_EECC_EDC,
  TSTM_PRERUN_SRI,
  TSTM_PRERUN_SPB_TIMEOUT,
  TSTM_PRERUN_SFF,
  TSTM_PRERUN_SPB_RAP,
  TSTM_PRERUN_CPU_MPU,
  TSTM_PRERUN_CPUBUSMPULFM,
  TSTM_PRERUN_REG_ACC_PROT,
  TSTM_PRERUN_CPU_WDG,
  TSTM_PRERUN_SAFETY_WDG,
  TSTM_PRERUN_SMU_NMI,
  TSTM_PRERUN_SMU_IRQ,
  TSTM_PRERUN_SMU_RT,
  TSTM_PRERUN_VLTMTST,
  TSTM_PRERUN_IR,
  TSTM_PRERUN_LOCKSTEP,
  TSTM_RUN_SFR_CMP,
  TSTM_RUN_SRC_REGESTERS_CHECK,
};

#endif /* TSTM_CFG_H_ */

/*
 * End of file
 */
