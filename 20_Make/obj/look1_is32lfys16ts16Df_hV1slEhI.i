# 1 "../40_Appl/HsfbNtc/look1_is32lfys16ts16Df_hV1slEhI.c"
# 1 "S:\\20_Make//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "../40_Appl/HsfbNtc/look1_is32lfys16ts16Df_hV1slEhI.c"






# 1 "../30_Bsw/Common/rtwtypes.h" 1
# 80 "../30_Bsw/Common/rtwtypes.h"
typedef signed char int8_T;
typedef unsigned char uint8_T;
typedef short int16_T;
typedef unsigned short uint16_T;
typedef int int32_T;
typedef unsigned int uint32_T;
typedef float real32_T;
typedef double real64_T;





typedef double real_T;
typedef double time_T;
typedef unsigned char boolean_T;
typedef int int_T;
typedef unsigned int uint_T;
typedef unsigned long ulong_T;
typedef char char_T;
typedef unsigned char uchar_T;
typedef char_T byte_T;
# 121 "../30_Bsw/Common/rtwtypes.h"
typedef void * pointer_T;


typedef int8_T s8;
typedef uint8_T u8;
typedef int16_T s16;
typedef uint16_T u16;
typedef int32_T s32;
typedef uint32_T u32;
typedef real32_T f32;
typedef real_T f64;
typedef boolean_T bit;

typedef unsigned int uint16_t;
typedef unsigned long uint32_t;
# 8 "../40_Appl/HsfbNtc/look1_is32lfys16ts16Df_hV1slEhI.c" 2
# 1 "../40_Appl/HsfbNtc/look1_is32lfys16ts16Df_hV1slEhI.h" 1
# 18 "../40_Appl/HsfbNtc/look1_is32lfys16ts16Df_hV1slEhI.h"
extern s16 look1_is32lfys16ts16Df_hV1slEhI(s32 u0, const s32 bp0[],
  const s16 table[], u32 maxIndex);
# 9 "../40_Appl/HsfbNtc/look1_is32lfys16ts16Df_hV1slEhI.c" 2
# 20 "../40_Appl/HsfbNtc/look1_is32lfys16ts16Df_hV1slEhI.c"
# 1 "../30_Bsw/Mpu/MPU_MemMap.h" 1
# 242 "../30_Bsw/Mpu/MPU_MemMap.h"
#pragma section ".text.MPU_ASIL_CODE" ax 8
# 21 "../40_Appl/HsfbNtc/look1_is32lfys16ts16Df_hV1slEhI.c" 2
s16 look1_is32lfys16ts16Df_hV1slEhI(s32 u0, const s32 bp0[], const
  s16 table[], u32 maxIndex)
{
  f32 frac;
  u32 bpIdx;
# 44 "../40_Appl/HsfbNtc/look1_is32lfys16ts16Df_hV1slEhI.c"
  if (u0 <= bp0[0U]) {
    bpIdx = 0U;
    frac = 0.0F;
  } else if (u0 < bp0[maxIndex]) {

    for (bpIdx = (u32)(maxIndex >> 1U); u0 < bp0[bpIdx]; bpIdx--) {
    }

    while (u0 >= bp0[(u32)(bpIdx + 1U)]) {
      bpIdx++;
    }

    frac = ((f32)((u32)(((u32)u0) - ((u32)bp0[bpIdx])))) /
      ((f32)((u32)(((u32)bp0[(u32)(bpIdx + 1U)]) -
         ((u32)bp0[bpIdx]))));
  } else {
    bpIdx = maxIndex;
    frac = 0.0F;
  }






  if (bpIdx == maxIndex) {
    frac = (f32)table[bpIdx];
  } else {
    frac = ((((f32)table[(u32)(bpIdx + 1U)]) - ((f32)table[bpIdx]))
            * frac) + ((f32)table[bpIdx]);
  }

  return (s16)frac;
}





# 1 "../30_Bsw/Mpu/MPU_MemMap.h" 1
# 255 "../30_Bsw/Mpu/MPU_MemMap.h"
#pragma section
# 84 "../40_Appl/HsfbNtc/look1_is32lfys16ts16Df_hV1slEhI.c" 2
