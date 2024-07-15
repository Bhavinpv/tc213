# 1 "../30_Bsw/Dsp/Dsp.c"
# 1 "S:\\20_Make//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "../30_Bsw/Dsp/Dsp.c"



# 1 "../30_Bsw/Dsp/Dsp_api.h" 1



# 1 "../30_Bsw/Common/Platform_Types.h" 1
# 37 "../30_Bsw/Common/Platform_Types.h"
# 1 "../30_Bsw/STL_common/Compiler_Cfg.h" 1
# 38 "../30_Bsw/Common/Platform_Types.h" 2
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
# 39 "../30_Bsw/Common/Platform_Types.h" 2
# 90 "../30_Bsw/Common/Platform_Types.h"
typedef signed char sint8;
typedef unsigned char uint8;
typedef signed short sint16;
typedef unsigned short uint16;
typedef signed long sint32;
typedef unsigned long uint32;
typedef float float32;
typedef double float64;

typedef unsigned char boolean;
# 5 "../30_Bsw/Dsp/Dsp_api.h" 2
# 31 "../30_Bsw/Dsp/Dsp_api.h"
f32 Dsp_AbsF32(f32 x);

f32 Dsp_MedianF32(const f32 *x, u32 n);
void Dsp_Med5(const f32 x[5], f32* y);

s16 Dsp_DtcS12S16(u16 x);
s16 Dsp_DtcS14S16(u16 x);
u16 Dsp_Decimal2Bcd(u16 Decimal);
u16 Dsp_SatU16U7(u16 x);
u16 Dsp_SatS16U8(s16 x);
u16 Dsp_SatS16U12(s16 x);
u16 Dsp_SatS16U13(s16 x);
# 5 "../30_Bsw/Dsp/Dsp.c" 2
# 1 "../30_Bsw/Dsp/Dsp_cfg.h" 1
# 6 "../30_Bsw/Dsp/Dsp.c" 2
# 1 "../30_Bsw/Dsp/Dsp_scb.h" 1






  void Dsp_Init(void);
# 7 "../30_Bsw/Dsp/Dsp.c" 2
# 1 "../30_Bsw/Dsp/Dsp_scfg.h" 1
# 8 "../30_Bsw/Dsp/Dsp.c" 2






static const u8 CrcTable08[256u] = {
  0x00u, 0x07u, 0x0eu, 0x09u, 0x1cu, 0x1bu, 0x12u, 0x15u,
  0x38u, 0x3fu, 0x36u, 0x31u, 0x24u, 0x23u, 0x2au, 0x2du,
  0x70u, 0x77u, 0x7eu, 0x79u, 0x6cu, 0x6bu, 0x62u, 0x65u,
  0x48u, 0x4fu, 0x46u, 0x41u, 0x54u, 0x53u, 0x5au, 0x5du,
  0xe0u, 0xe7u, 0xeeu, 0xe9u, 0xfcu, 0xfbu, 0xf2u, 0xf5u,
  0xd8u, 0xdfu, 0xd6u, 0xd1u, 0xc4u, 0xc3u, 0xcau, 0xcdu,
  0x90u, 0x97u, 0x9eu, 0x99u, 0x8cu, 0x8bu, 0x82u, 0x85u,
  0xa8u, 0xafu, 0xa6u, 0xa1u, 0xb4u, 0xb3u, 0xbau, 0xbdu,
  0xc7u, 0xc0u, 0xc9u, 0xceu, 0xdbu, 0xdcu, 0xd5u, 0xd2u,
  0xffu, 0xf8u, 0xf1u, 0xf6u, 0xe3u, 0xe4u, 0xedu, 0xeau,
  0xb7u, 0xb0u, 0xb9u, 0xbeu, 0xabu, 0xacu, 0xa5u, 0xa2u,
  0x8fu, 0x88u, 0x81u, 0x86u, 0x93u, 0x94u, 0x9du, 0x9au,
  0x27u, 0x20u, 0x29u, 0x2eu, 0x3bu, 0x3cu, 0x35u, 0x32u,
  0x1fu, 0x18u, 0x11u, 0x16u, 0x03u, 0x04u, 0x0du, 0x0au,
  0x57u, 0x50u, 0x59u, 0x5eu, 0x4bu, 0x4cu, 0x45u, 0x42u,
  0x6fu, 0x68u, 0x61u, 0x66u, 0x73u, 0x74u, 0x7du, 0x7au,
  0x89u, 0x8eu, 0x87u, 0x80u, 0x95u, 0x92u, 0x9bu, 0x9cu,
  0xb1u, 0xb6u, 0xbfu, 0xb8u, 0xadu, 0xaau, 0xa3u, 0xa4u,
  0xf9u, 0xfeu, 0xf7u, 0xf0u, 0xe5u, 0xe2u, 0xebu, 0xecu,
  0xc1u, 0xc6u, 0xcfu, 0xc8u, 0xddu, 0xdau, 0xd3u, 0xd4u,
  0x69u, 0x6eu, 0x67u, 0x60u, 0x75u, 0x72u, 0x7bu, 0x7cu,
  0x51u, 0x56u, 0x5fu, 0x58u, 0x4du, 0x4au, 0x43u, 0x44u,
  0x19u, 0x1eu, 0x17u, 0x10u, 0x05u, 0x02u, 0x0bu, 0x0cu,
  0x21u, 0x26u, 0x2fu, 0x28u, 0x3du, 0x3au, 0x33u, 0x34u,
  0x4eu, 0x49u, 0x40u, 0x47u, 0x52u, 0x55u, 0x5cu, 0x5bu,
  0x76u, 0x71u, 0x78u, 0x7fu, 0x6au, 0x6du, 0x64u, 0x63u,
  0x3eu, 0x39u, 0x30u, 0x37u, 0x22u, 0x25u, 0x2cu, 0x2bu,
  0x06u, 0x01u, 0x08u, 0x0fu, 0x1au, 0x1du, 0x14u, 0x13u,
  0xaeu, 0xa9u, 0xa0u, 0xa7u, 0xb2u, 0xb5u, 0xbcu, 0xbbu,
  0x96u, 0x91u, 0x98u, 0x9fu, 0x8au, 0x8du, 0x84u, 0x83u,
  0xdeu, 0xd9u, 0xd0u, 0xd7u, 0xc2u, 0xc5u, 0xccu, 0xcbu,
  0xe6u, 0xe1u, 0xe8u, 0xefu, 0xfau, 0xfdu, 0xf4u, 0xf3u
};







# 1 "../30_Bsw/Mpu/MPU_MemMap.h" 1
# 320 "../30_Bsw/Mpu/MPU_MemMap.h"
#pragma section ".text.MPU_DEFAULT_CODE" ax 8
# 56 "../30_Bsw/Dsp/Dsp.c" 2
void Dsp_Init(void){

}




s16 Dsp_DtcS12S16(u16 x){
    s16 y;
    if (x > 2047){
        y = (s16)x - 4095 - 1;
    }
    else{
        y = (s16)x;
    }
  return y;
}




s16 Dsp_DtcS14S16(u16 x){
    s16 y;
    if (x > 8191){
        y = (s16)x - 16383 - 1;
    }
    else{
        y = (s16)x;
    }
  return y;
}

# 1 "../30_Bsw/Mpu/MPU_MemMap.h" 1
# 333 "../30_Bsw/Mpu/MPU_MemMap.h"
#pragma section
# 89 "../30_Bsw/Dsp/Dsp.c" 2


# 1 "../30_Bsw/Mpu/MPU_MemMap.h" 1
# 294 "../30_Bsw/Mpu/MPU_MemMap.h"
#pragma section ".text.MPU_QM_CODE" ax 8
# 92 "../30_Bsw/Dsp/Dsp.c" 2



u16 Dsp_Decimal2Bcd(u16 Decimal){
    u16 Bcd = 0;
    u16 Shift = 0;

    while (Decimal > 0) {
        Bcd |= (Decimal % 10) << (Shift++ << 2);
        Decimal /= 10;
    }
    return Bcd;
}

# 1 "../30_Bsw/Mpu/MPU_MemMap.h" 1
# 307 "../30_Bsw/Mpu/MPU_MemMap.h"
#pragma section
# 107 "../30_Bsw/Dsp/Dsp.c" 2


# 1 "../30_Bsw/Mpu/MPU_MemMap.h" 1
# 320 "../30_Bsw/Mpu/MPU_MemMap.h"
#pragma section ".text.MPU_DEFAULT_CODE" ax 8
# 110 "../30_Bsw/Dsp/Dsp.c" 2



u16 Dsp_SatU16U7(u16 x){
    u16 y;
    if (x > 0){
        if (x < 127){
            y = (u16)x;
        }
        else{
            y = 127;
        }
    }
    else{
        y = 0;
    }
  return y;
}

# 1 "../30_Bsw/Mpu/MPU_MemMap.h" 1
# 333 "../30_Bsw/Mpu/MPU_MemMap.h"
#pragma section
# 130 "../30_Bsw/Dsp/Dsp.c" 2


# 1 "../30_Bsw/Mpu/MPU_MemMap.h" 1
# 294 "../30_Bsw/Mpu/MPU_MemMap.h"
#pragma section ".text.MPU_QM_CODE" ax 8
# 133 "../30_Bsw/Dsp/Dsp.c" 2



u16 Dsp_SatS16U8(s16 x){
    u16 y;
    if (x > 0){
        if (x < 255){
            y = (u16)x;
        }
        else{
            y = 255;
        }
    }
    else{
        y = 0;
    }
  return y;
}




u16 Dsp_SatS16U12(s16 x){
    u16 y;
    if (x > 0){
        if (x < 4095){
            y = (u16)x;
        }
        else{
            y = 4095;
        }
    }
    else{
        y = 0;
    }
  return y;
}

# 1 "../30_Bsw/Mpu/MPU_MemMap.h" 1
# 307 "../30_Bsw/Mpu/MPU_MemMap.h"
#pragma section
# 172 "../30_Bsw/Dsp/Dsp.c" 2


# 1 "../30_Bsw/Mpu/MPU_MemMap.h" 1
# 320 "../30_Bsw/Mpu/MPU_MemMap.h"
#pragma section ".text.MPU_DEFAULT_CODE" ax 8
# 175 "../30_Bsw/Dsp/Dsp.c" 2



u16 Dsp_SatS16U13(s16 x){
    u16 y;
    if (x > 0){
        if (x < 8191){
            y = (u16)x;
        }
        else{
            y = 8191;
        }
    }
    else{
        y = 0;
    }
  return y;
}




f32 Dsp_AbsF32(f32 x){
  f32 y;
  y = (x < 0.0)? -x : x;
  return y;
}




void Dsp_Med5(const f32 x[5], f32* y){
  *y = Dsp_MedianF32(x, 5);
}

f32 Dsp_MedianF32(const f32 *x, u32 n){
 s32 i = 0, j = 0, l, m, k;
 f32 z, t = 0.0f;
 f32 a[10];


 for (i=0;i<n;i++)
  a[i] = x[i];

 k = (((n)&1)?((n)/2):(((n)/2)-1));

 l=0 ; m=n-1 ;
 while (l<m) {
  z=a[k] ;
  i=l ;
  j=m ;
  do {
   while (a[i]<z) i++ ;
   while (z<a[j]) j-- ;
   if (i<=j) {
    t=a[i];
    a[i]=a[j];
    a[j]=t;

     i++ ; j-- ;
   }
  } while (i<=j) ;
  if (j<k) l=i ;
  if (k<i) m=j ;
 };

 z = a[k];




 if ((n&1) == 0)
 {
   z = a[k+1];
  for(i=k+2;i<n;i++) {
    if(z>a[i]) z=a[i];
  };
   z = (a[k]+ a[k+1])/2;
 };
 return z;
}

# 1 "../30_Bsw/Mpu/MPU_MemMap.h" 1
# 333 "../30_Bsw/Mpu/MPU_MemMap.h"
#pragma section
# 258 "../30_Bsw/Dsp/Dsp.c" 2
