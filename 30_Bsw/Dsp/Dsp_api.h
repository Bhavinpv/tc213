#ifndef DSP_API_H
#define DSP_API_H

#include "Platform_Types.h" /* Provide standard types */

/*******************************************************************************
 * Global constants and macros
 ******************************************************************************/
#define DSP_1k                         1000.0F
#define DSP_1m                         0.001F
#define DSP_100m                       0.1F

#define DSP_PI                         3.14159274F
#define DSP_PI2                        1.57079637F
#define DSP_2PI                        6.28318548F

/* Limits for CAN signals *****************************************************/
#define DSP_0           0
#define DSP_1           1
#define DSP_S12MAX   2047
#define DSP_S14MAX   8191
#define DSP_U7MAX     127
#define DSP_U8MAX     255
#define DSP_U12MAX   4095
#define DSP_U13MAX   8191
#define DSP_U14MAX  16383

/*******************************************************************************
 * Global function prototypes
 ******************************************************************************/
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

#endif
