/*******************************************************************************
 * Filename   : StandardMacros.h
 * Project    :
 * Author(s)  : Ulf Barth
 * Created    : Oct. 04, 2011
 * Description: Header file Standard Macros
 *
 * Last modification:
 *  on $Date: 2015-05-28 16:04:58 +0200 (Do, 28 Mai 2015) $
 *  by $Author: degapps $
 *  current $Revision: 1063 $
 *
 * Compiler info : Code Composer Studio V5.2, C2000 Compiler v6.1.5
 * Processor info: TI-Piccolo(B): TMS320F2803
 *
 * Copyright (c) 2013 Delta Energy Systems (Germany) GmbH.
 * All rights reserved.
 ******************************************************************************/

#ifndef __STANDARDMACROS_H_
#define __STANDARDMACROS_H_

#ifdef __cplusplus
  extern "C" {
#endif
/*******************************************************************************
 * Included header
 ******************************************************************************/

/*******************************************************************************
 * Global constant macros (public/to be exported)
 ******************************************************************************/


#define HIGH_BYTE             0xFF00u
#define LOW_BYTE              0x00FFu
#define HIGH_INT              0xFFFF0000u
#define LOW_INT               0x0000FFFFu
#define LOW_BYTE_OF_HIGH_INT  0x00FF0000u
#define HIGH_BYTE_OF_HIGH_INT 0xFF000000u

/*#define FAULT  0x01u
#define PASS   0x00u
#define INIT   0x02u */

#define CM_ENABLE_INIT      0x0
#define CM_ENABLE_ENABLE    0x1
#define CM_ENABLE_DISABLE   0x2


#define CM_STATUS_INIT      0x0
#define CM_STATUS_VALID     0x1
#define CM_STATUS_INVALID   0x2

#define CM_ACTIVE_INIT          0x0
#define CM_ACTIVE_NOT_ACTIVE    0x1
#define CM_ACTIVE_ACTIVE        0x2

#define CM_OPERATIONMODE_INIT      0x0
#define CM_OPERATIONMODE_BURST     0x1
#define CM_OPERATIONMODE_PWM_PS    0x2
#define CM_OPERATIONMODE_LLC       0x3
#define CM_OPERATIONMODE_OFF       0x4


#define HIGH  0x1u
#define LOW   0x0u
#define ENABLED     0x01u
#define DISABLED    0x00u
/*******************************************************************************
 * Global function macros (public/to be exported)
 ******************************************************************************/
/* Bit operation , for 8bit register, i/o ports etc. */
#define SETBIT(ADDRESS, BIT)      (ADDRESS |=  (1u << (uint8)BIT))
#define CLEARBIT(ADDRESS, BIT)    (ADDRESS &= ~(1u << (uint8)BIT))
#define CLRBIT(ADDRESS, BIT)      (ADDRESS &= ~(1u << (uint8)BIT))
#define TOGBIT(ADDRESS, BIT)      (ADDRESS ^=  (1u << (uint8)BIT))

#define TESTBIT(ADDRESS, BIT)     (ADDRESS & (1u << (uint8)BIT))
#define CLEARFLAG(ADDRESS, BIT)   (ADDRESS = (1u << (uint8)BIT))

#define SETBIT16(ADDRESS, BIT)    (ADDRESS |= (1u << (uint8)BIT))
#define SETBIT32(ADDRESS, BIT)    (ADDRESS |= (1u << (uint8)BIT))


/*****************************************************************************/
/* Macro definitions */
#define sbi(port,bit)  (port |= (1u << (uint8)bit))   /* set bit in port */
#define cbi(port,bit)  (port &= ~(1u <<(uint8) bit))  /* clear bit in port */

#define HIBYTE(DATA) ((uint8_t)((DATA >> DIV_SHIFT_8) & LOW_BYTE))
#define LOBYTE(DATA) ((uint8_t)(DATA & LOW_BYTE))

#define PARAM_UNUSED(x)              ((void) (x))
#define Min(A,B)  ((A)<(B))?(A):(B)
#define Max(A,B)  ((A)>(B))?(A):(B)
/*******************************************************************************
 * Global data types (typedefs / structs / enums)
 ******************************************************************************/



/*******************************************************************************
 * Global function prototypes
 ******************************************************************************/
#ifdef __cplusplus
  }
#endif


#endif /* __STANDARDMACROS_H_ */

/* 
 * End of file
 */
