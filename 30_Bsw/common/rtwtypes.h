/*
 * File: rtwtypes.h
 *
 * Code generated for Simulink model 'HsfbCtrl'.
 *
 * Model version                  : 1.986
 * Simulink Coder version         : 9.2 (R2019b) 18-Jul-2019
 * C/C++ source code generated on : Thu Dec 16 19:09:08 2021
 */

#ifndef RTWTYPES_H
#define RTWTYPES_H

/* Logical type definitions */
#  ifndef false
#   define false                       (0U)
#  endif

#  ifndef true
#   define true                        (1U)
#  endif

/*=======================================================================*
 * Target hardware information
 *   Device type: Infineon->TriCore
 *   Number of bits:     char:   8    short:   16    int:  32
 *                       long:  32
 *                       native word size:  32
 *   Byte ordering: LittleEndian
 *   Signed integer division rounds to: Zero
 *   Shift right on a signed integer as arithmetic shift: on
 *=======================================================================*/
#ifdef PORTABLE_WORDSIZES              /* PORTABLE_WORDSIZES defined */

/*=======================================================================*
 * Host information
 *   Number of bits:     char:   8    short:   16    int:  32
 *                       long:  32
 *                       long long:  64
 *                       native word size:  64
 *=======================================================================*/

/*=======================================================================*
 * Fixed width word size data types:                                     *
 *   int8_T, int16_T, int32_T     - signed 8, 16, or 32 bit integers     *
 *   uint8_T, uint16_T, uint32_T  - unsigned 8, 16, or 32 bit integers   *
 *   real32_T, real64_T           - 32 and 64 bit floating point numbers *
 *=======================================================================*/
typedef signed char int8_T;
typedef unsigned char uint8_T;
typedef short int16_T;
typedef unsigned short uint16_T;
typedef int int32_T;
typedef unsigned int uint32_T;
typedef float real32_T;
typedef double real64_T;

/*===========================================================================*
 * Generic type definitions: boolean_T, char_T, byte_T, int_T, uint_T,       *
 *                           real_T, time_T, ulong_T.                        *
 *===========================================================================*/
typedef double real_T;
typedef double time_T;
typedef unsigned char boolean_T;
typedef int int_T;
typedef unsigned int uint_T;
typedef unsigned int ulong_T;
typedef char char_T;
typedef unsigned char uchar_T;
typedef char_T byte_T;

#else                                  /* PORTABLE_WORDSIZES not defined */

/*=======================================================================*
 * Fixed width word size data types:                                     *
 *   int8_T, int16_T, int32_T     - signed 8, 16, or 32 bit integers     *
 *   uint8_T, uint16_T, uint32_T  - unsigned 8, 16, or 32 bit integers   *
 *   real32_T, real64_T           - 32 and 64 bit floating point numbers *
 *=======================================================================*/
typedef signed char int8_T;
typedef unsigned char uint8_T;
typedef short int16_T;
typedef unsigned short uint16_T;
typedef int int32_T;
typedef unsigned int uint32_T;
typedef float real32_T;
typedef double real64_T;

/*===========================================================================*
 * Generic type definitions: boolean_T, char_T, byte_T, int_T, uint_T,       *
 *                           real_T, time_T, ulong_T.                        *
 *===========================================================================*/
typedef double real_T;
typedef double time_T;
typedef unsigned char boolean_T;
typedef int int_T;
typedef unsigned int uint_T;
typedef unsigned long ulong_T;
typedef char char_T;
typedef unsigned char uchar_T;
typedef char_T byte_T;

#endif                                 /* PORTABLE_WORDSIZES */

/*=======================================================================*
 * Min and Max:                                                          *
 *   int8_T, int16_T, int32_T     - signed 8, 16, or 32 bit integers     *
 *   uint8_T, uint16_T, uint32_T  - unsigned 8, 16, or 32 bit integers   *
 *=======================================================================*/
#define MAX_int8_T                     ((int8_T)(127))
#define MIN_int8_T                     ((int8_T)(-128))
#define MAX_uint8_T                    ((uint8_T)(255U))
#define MAX_int16_T                    ((int16_T)(32767))
#define MIN_int16_T                    ((int16_T)(-32768))
#define MAX_uint16_T                   ((uint16_T)(65535U))
#define MAX_int32_T                    ((int32_T)(2147483647))
#define MIN_int32_T                    ((int32_T)(-2147483647-1))
#define MAX_uint32_T                   ((uint32_T)(0xFFFFFFFFU))

/* Block D-Work pointer type */
typedef void * pointer_T;

/* Define Simulink Coder replacement data types. */
typedef int8_T s8;            /* User defined replacement datatype for int8_T */
typedef uint8_T u8;          /* User defined replacement datatype for uint8_T */
typedef int16_T s16;         /* User defined replacement datatype for int16_T */
typedef uint16_T u16;       /* User defined replacement datatype for uint16_T */
typedef int32_T s32;         /* User defined replacement datatype for int32_T */
typedef uint32_T u32;       /* User defined replacement datatype for uint32_T */
typedef real32_T f32;       /* User defined replacement datatype for real32_T */
typedef real_T f64;           /* User defined replacement datatype for real_T */
typedef boolean_T bit;     /* User defined replacement datatype for boolean_T */

typedef unsigned int uint16_t;
typedef unsigned long uint32_t;

#endif                                 /* RTWTYPES_H */

/*
 * File trailer for generated code.
 *
 * [EOF]
 */
