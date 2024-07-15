/*
*/
/******************************************************************************
**                                                                           **
** Copyright (C) Infineon Technologies (2013)                                **
**                                                                           **
** All rights reserved.                                                      **
**                                                                           **
** This document contains proprietary information belonging to Infineon      **
** Technologies. Passing on and copying of this document, and communication  **
** of its contents is not permitted without prior written authorization.     **
**                                                                           **
*******************************************************************************
**                                                                           **
**  $FILENAME   : Platform_Types.h $                                         **
**                                                                           **
**  $CC VERSION : \main\5 $                                                  **
**                                                                           **
**                                                                           **
**  AUTHOR      : DL-AUTOSAR-Engineering                                     **
**                                                                           **
**  VENDOR      : Infineon Technologies                                      **
**                                                                           **
**  DESCRIPTION : File holding the definition of all the Platform types      **
**                as defined by Autosar                                      **
**                                                                           **
**  MAY BE CHANGED BY USER [yes/no]: Yes                                     **
**                                                                           **
******************************************************************************/

#ifndef PLATFORM_TYPES_H
#define PLATFORM_TYPES_H

/*******************************************************************************
**                      Include Section                                       **
*******************************************************************************/
#include "Compiler_Cfg.h"
#include "rtwtypes.h"

/*******************************************************************************
**                      Global Symbols                                        **
*******************************************************************************/
/*
 * File version information
 */
#define PLATFORM_MAJOR_VERSION 5
#define PLATFORM_MINOR_VERSION 0
#define PLATFORM_PATCH_VERSION 1

/*
 * CPU register type width
 */
#define CPU_TYPE_8             8
#define CPU_TYPE_16            16
#define CPU_TYPE_32            32

/*
 * Bit order definition
 */
#define MSB_FIRST              0            /* Big endian bit ordering        */
#define LSB_FIRST              1            /* Little endian bit ordering     */

/*
 * Byte order definition
 */
#define HIGH_BYTE_FIRST        0            /* Big endian byte ordering       */
#define LOW_BYTE_FIRST         1            /* Little endian byte ordering    */

/*
 * Word order definition
 */
#define HIGH_WORD_FIRST        0            /* Big endian word ordering       */
#define LOW_WORD_FIRST         1            /* Little endian word ordering    */

/*
 * Platform type and endianess definitions for TC1796
 */
#define CPU_TYPE               CPU_TYPE_32
#define CPU_BIT_ORDER          LSB_FIRST
#define CPU_BYTE_ORDER         LOW_BYTE_FIRST
#define CPU_WORD_ORDER         LOW_WORD_FIRST

/*******************************************************************************
**                      Global Data Types                                     **
*******************************************************************************/

/*
 * AUTOSAR integer data types
 */
typedef signed char    sint8;               /*        -128 .. +127            */
typedef unsigned char  uint8;               /*           0 .. 255             */
typedef signed short   sint16;              /*      -32768 .. +32767          */
typedef unsigned short uint16;              /*           0 .. 65535           */
typedef signed long    sint32;              /* -2147483648 .. +2147483647     */
typedef unsigned long  uint32;              /*           0 .. 4294967295      */
typedef float          float32;
typedef double         float64;

typedef unsigned char  boolean;             /* for use with TRUE/FALSE        */

/* Data type replacement ******************************************************/
/*typedef boolean     bit;*/
/*typedef sint8       s8;*/
/*typedef uint8       u8;*/
/*typedef sint16      s16;*/
/*typedef uint16      u16;*/
/*typedef sint32      s32;*/
/*typedef uint32      u32;*/
/*typedef float32     f32;*/

#ifndef TRUE                                /* conditional check */
#define TRUE  1
#endif

#ifndef FALSE                                            /* conditional check */
#define FALSE 0

#endif



/*******************************************************************************
**                      Global Data                                           **
*******************************************************************************/

/*******************************************************************************
**                      Global Function Prototypes                            **
*******************************************************************************/

#endif /* PLATFORM_TYPES_H */
