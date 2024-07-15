/** ****************************************************************************
 * \file    mcu_cfg.h
 * \brief   
 *
 *  Details
 *
 * \section AUTHOR
 *    #. Ph.Ha
 *
 * \section SVN
 *  $Date: $
 *  $Author: $
 *  $Revision: $
 *
 * \section LICENSE
 *  Copyright (c) xxxx .
 *  All rights reserved.
 **************************************************************************** */
/*******************************************************************************
 *Includes
 ******************************************************************************/
#include "CompilerGnuc.h"

#ifndef MCU_CFG_H
#define MCU_CFG_H 1

#ifdef __cplusplus
  extern "C" {
#endif

/*******************************************************************************
 * Global constants and macros
 ******************************************************************************/
#define CPU_GTM_INT   (1u)
#define CPU_DMA_INT   (0u)
#define CPU_ADC_INT   (1u)

#define ADC_TRIG_DMA  (0)
#define GTM_TRIG_DMA  (0)

/* Service request CPU0 */
#define CPU0_SRPN1    0x60  /* The highst service request priority number */
#define CPU0_SRPN2    0x50
#define CPU0_SRPN3    0x40
#define CPU0_SRPN4    0x30
#define CPU0_SRPN5    0x20
#define CPU0_SRPN6    0x10

/* Service request DMA */
#define DMA_SRPN0         (0u)
#define DMA_SRPN1         (1u)
#define DMA_SRPN2         (2u)
#define DMA_SRPN3         (3u)
#define DMA_SRPN4         (4u)
#define DMA_SRPN5         (5u)
#define DMA_SRPN6         (6u)
#define DMA_SRPN7         (7u)
#define DMA_SRPN8         (8u)
#define DMA_SRPN9         (9u)
#define DMA_SRPN15        (15u)


/* Clock Define */
#define MCU_CPU_CLK_FREQ  ((uint32)100000000)       /* 100Mhz  */
#define ASYN_CAN_CLK_FREQ (MCU_CPU_CLK_FREQ/1u)     /* 100Mhz */
#define MCU_SPB_CLK_FREQ  (MCU_CPU_CLK_FREQ/2u)
#define GTM_CLK_FREQ      (MCU_CPU_CLK_FREQ/1u)     /* 100Mhz */

#define MCU_INT_FREQ       (100000u)  				/* Timer Interrupt Freq */
 /*******************************************************************************
 * Global data types (typedefs / structs / enums)
 ******************************************************************************/


/*******************************************************************************
* Global data
 ******************************************************************************/




/*******************************************************************************
 * Global function prototypes
 ******************************************************************************/


#ifdef __cplusplus
  }
#endif


#undef EXTERN
#endif


/*
 * End of file
 */

