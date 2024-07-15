/** ****************************************************************************
 * \file    CANDriver_cfg.h
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
 **************************************************************************** */

/*******************************************************************************
 *Includes
 ******************************************************************************/

#ifndef CANDriver_cfg_H_
#define CANDriver_cfg_H_ 1

#ifdef __cplusplus
  extern "C" {
#endif

/*******************************************************************************
 * Global constants and macros
 ******************************************************************************/
#define CANDriver_CFG_BAUDRATE    (500000u )         /* Unit: Bits per second */
#define CANDriver_CFG_CLK_FREQ    ((uint32)20000000U)/* [Hz] */
#define CAN_BOOSTER_BOARD         (0u)

/* Can Code Setting */
#define CANDriver_CFG_NODE        (1u)

#if(1u == CAN_BOOSTER_BOARD)
#define CANDriver_CFG_INPUT       (0u)      /*INPUT A */
#else
#define CANDriver_CFG_INPUT       (0u)      /*INPUT B Rt-  O[p2.1p2.0]  4[P33.7P33.8] */
#endif

#ifdef __cplusplus
  }
#endif

#endif

/** End of file  */

