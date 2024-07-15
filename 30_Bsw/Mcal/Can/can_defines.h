/** ****************************************************************************
 * \file    can_defines.h
 * \brief   can define macros
 * 
 * \section AUTHOR
 *    #. Ph.Ha
 *
 * \section SVN
 *  $Date$
 *  $Author$
 *  $Revision$
 *
 * \section LICENSE
 * Copyright (c) yyyy .
 * All rights reserved.
  **************************************************************************** */
#include "Ifx_Types.h"
#include "mcu_cfg.h"

#ifndef CAN_DEFINES_H
#define CAN_DEFINES_H 1

/*******************************************************************************
 * Global constants and macros
 ******************************************************************************/

/*******************************************************************************
 * Global constants and macros
 ******************************************************************************/
#define PANCTR_PANCMD(x)          ((x) & 0xFFu)
#define PANCTR_PANAR1(x)          (((x) & 0xFFu) << 16)
#define PANCTR_PANAR2(x)          (((x) & 0xFFu) << 24)
#define STATUS_PANCTR_BUSY        (0x300u)

#define PANCMD_NO_OPERATION       (0x00u)
#define PANCMD_INIT_LIST          (0x01u)
#define PANCMD_STATIC_ALLOC       (0x02u)
#define PANCMD_DYNAMIC_ALLOC      (0x03u)
#define PANCMD_STA_INSERT_BEFORE  (0x04u)
#define PANCMD_DYN_INSERT_BEFORE  (0x05u)
#define PANCMD_STA_INSERT_BEHIND  (0x06u)
#define PANCMD_DYN_INSERT_BEHIND  (0x07u)

#define LIST_NB(x)                (x)
#define MO_NB(x)                  (x)

/* Message control register */
#define RX_MESSAGE_CFG            ((uint32)0x00A00F5F)
#define CLR_RX_MS_PENDING         ((uint32)0x00000001)
#define TX_MESSAGE_CFG            ((uint32)0x0E200000)
#define MS_TX_REQ_NEWDATA         ((uint32)0x03080040)

/* Message object status  */
#define TX_MO_STAT_VER_MASK       ((uint32)0xE00)
#define TX_MO_STAT_VER_VAL        ((uint32)0xE00)

/* Message function control register */
#define MOFCR_MS_LENGTH(x)        ((uint32)(x) << 24)
#define MMC_STANDARD_MO           ((uint32)0)

#define SET             1
#define CLR             0

/* Node control register */
#define CANN_SET_CCE              ((uint32)1 << 6)
#define CANN_SET_INIT             ((uint32)1     )
#define CANN_CLR_CCE              ((uint32)0 << 6)
#define CANN_CLR_INIT             ((uint32)0     )

/* Message Object n Arbitration Register */
#define MO_STANDARD_ID(x)         ((uint32)(x) << 18)
#define MO_EXTEND_ID(x)           ((uint32)(x)      )
#define MO_STANDARD_MS            ((uint32)0x00000000)
#define MO_EXTENSION_MS           ((uint32)0x20000000)

#define MO_PRIO_CLASS_1           ((uint32)0x40000000)
#define MO_PRIO_CLASS_2           ((uint32)0x80000000)
#define MO_PRIO_CLASS_3           ((uint32)0xC0000000)

/* CAN Last Error Code */
#define CAN_LEC_MASK              ((uint16)7)
#define CAN_NO_ERROR              ((uint16)0)
#define CAN_STUFF_ERROR           ((uint16)1)
#define CAN_FRAME_ERROR           ((uint16)2)
#define CAN_ACKNOWLEDGE_ERROR     ((uint16)3)
#define CAN_BIT1_ERROR            ((uint16)4)
#define CAN_BIT0_ERROR            ((uint16)5)
#define CAN_CRC_ERROR             ((uint16)6)
#define CAN_WARNING_LEVEL         ((uint16)96)


#endif /* CAN_DEFINES_H */

/************************************ END OF FILE *****************************/
