# 1 "../30_Bsw/Mcal/Port/Port.c"
# 1 "D:\\SVN\\IPB-11Kw\\LvDc-C01R0P0-Ceramicheater\\20_Make//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "../30_Bsw/Mcal/Port/Port.c"
# 19 "../30_Bsw/Mcal/Port/Port.c"
# 1 "../30_Bsw/Mcal/Port/Port_api.h" 1




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
# 6 "../30_Bsw/Mcal/Port/Port_api.h" 2
# 1 "../30_Bsw/Mcal/Port/Port_cfg.h" 1
# 22 "../30_Bsw/Mcal/Port/Port_cfg.h"
# 1 "../30_Bsw/Common/TC21x/IfxPort_reg.h" 1
# 78 "../30_Bsw/Common/TC21x/IfxPort_reg.h"
# 1 "../30_Bsw/Common/TC21x/IfxPort_regdef.h" 1
# 39 "../30_Bsw/Common/TC21x/IfxPort_regdef.h"
# 1 "../30_Bsw/Common/TC21x/Ifx_TypesReg.h" 1
# 40 "../30_Bsw/Common/TC21x/IfxPort_regdef.h" 2





typedef struct _Ifx_P_ACCEN0_Bits
{
    unsigned int EN0 : 1;
    unsigned int EN1 : 1;
    unsigned int EN2 : 1;
    unsigned int EN3 : 1;
    unsigned int EN4 : 1;
    unsigned int EN5 : 1;
    unsigned int EN6 : 1;
    unsigned int EN7 : 1;
    unsigned int EN8 : 1;
    unsigned int EN9 : 1;
    unsigned int EN10 : 1;
    unsigned int EN11 : 1;
    unsigned int EN12 : 1;
    unsigned int EN13 : 1;
    unsigned int EN14 : 1;
    unsigned int EN15 : 1;
    unsigned int EN16 : 1;
    unsigned int EN17 : 1;
    unsigned int EN18 : 1;
    unsigned int EN19 : 1;
    unsigned int EN20 : 1;
    unsigned int EN21 : 1;
    unsigned int EN22 : 1;
    unsigned int EN23 : 1;
    unsigned int EN24 : 1;
    unsigned int EN25 : 1;
    unsigned int EN26 : 1;
    unsigned int EN27 : 1;
    unsigned int EN28 : 1;
    unsigned int EN29 : 1;
    unsigned int EN30 : 1;
    unsigned int EN31 : 1;
} Ifx_P_ACCEN0_Bits;


typedef struct _Ifx_P_ACCEN1_Bits
{
    unsigned int reserved_0 : 32;
} Ifx_P_ACCEN1_Bits;


typedef struct _Ifx_P_ESR_Bits
{
    unsigned int EN0 : 1;
    unsigned int EN1 : 1;
    unsigned int EN2 : 1;
    unsigned int EN3 : 1;
    unsigned int EN4 : 1;
    unsigned int EN5 : 1;
    unsigned int EN6 : 1;
    unsigned int EN7 : 1;
    unsigned int EN8 : 1;
    unsigned int EN9 : 1;
    unsigned int EN10 : 1;
    unsigned int EN11 : 1;
    unsigned int EN12 : 1;
    unsigned int EN13 : 1;
    unsigned int EN14 : 1;
    unsigned int EN15 : 1;
    unsigned int reserved_16 : 16;
} Ifx_P_ESR_Bits;


typedef struct _Ifx_P_ID_Bits
{
    unsigned int MODREV : 8;
    unsigned int MODTYPE : 8;
    unsigned int MODNUMBER : 16;
} Ifx_P_ID_Bits;


typedef struct _Ifx_P_IN_Bits
{
    unsigned int P0 : 1;
    unsigned int P1 : 1;
    unsigned int P2 : 1;
    unsigned int P3 : 1;
    unsigned int P4 : 1;
    unsigned int P5 : 1;
    unsigned int P6 : 1;
    unsigned int P7 : 1;
    unsigned int P8 : 1;
    unsigned int P9 : 1;
    unsigned int P10 : 1;
    unsigned int P11 : 1;
    unsigned int P12 : 1;
    unsigned int P13 : 1;
    unsigned int P14 : 1;
    unsigned int P15 : 1;
    unsigned int reserved_16 : 16;
} Ifx_P_IN_Bits;


typedef struct _Ifx_P_IOCR0_Bits
{
    unsigned int reserved_0 : 3;
    unsigned int PC0 : 5;
    unsigned int reserved_8 : 3;
    unsigned int PC1 : 5;
    unsigned int reserved_16 : 3;
    unsigned int PC2 : 5;
    unsigned int reserved_24 : 3;
    unsigned int PC3 : 5;
} Ifx_P_IOCR0_Bits;


typedef struct _Ifx_P_IOCR12_Bits
{
    unsigned int reserved_0 : 3;
    unsigned int PC12 : 5;
    unsigned int reserved_8 : 3;
    unsigned int PC13 : 5;
    unsigned int reserved_16 : 3;
    unsigned int PC14 : 5;
    unsigned int reserved_24 : 3;
    unsigned int PC15 : 5;
} Ifx_P_IOCR12_Bits;


typedef struct _Ifx_P_IOCR4_Bits
{
    unsigned int reserved_0 : 3;
    unsigned int PC4 : 5;
    unsigned int reserved_8 : 3;
    unsigned int PC5 : 5;
    unsigned int reserved_16 : 3;
    unsigned int PC6 : 5;
    unsigned int reserved_24 : 3;
    unsigned int PC7 : 5;
} Ifx_P_IOCR4_Bits;


typedef struct _Ifx_P_IOCR8_Bits
{
    unsigned int reserved_0 : 3;
    unsigned int PC8 : 5;
    unsigned int reserved_8 : 3;
    unsigned int PC9 : 5;
    unsigned int reserved_16 : 3;
    unsigned int PC10 : 5;
    unsigned int reserved_24 : 3;
    unsigned int PC11 : 5;
} Ifx_P_IOCR8_Bits;


typedef struct _Ifx_P_OMCR0_Bits
{
    unsigned int reserved_0 : 16;
    unsigned int PCL0 : 1;
    unsigned int PCL1 : 1;
    unsigned int PCL2 : 1;
    unsigned int PCL3 : 1;
    unsigned int reserved_20 : 12;
} Ifx_P_OMCR0_Bits;


typedef struct _Ifx_P_OMCR12_Bits
{
    unsigned int reserved_0 : 28;
    unsigned int PCL12 : 1;
    unsigned int PCL13 : 1;
    unsigned int PCL14 : 1;
    unsigned int PCL15 : 1;
} Ifx_P_OMCR12_Bits;


typedef struct _Ifx_P_OMCR4_Bits
{
    unsigned int reserved_0 : 20;
    unsigned int PCL4 : 1;
    unsigned int PCL5 : 1;
    unsigned int PCL6 : 1;
    unsigned int PCL7 : 1;
    unsigned int reserved_24 : 8;
} Ifx_P_OMCR4_Bits;


typedef struct _Ifx_P_OMCR8_Bits
{
    unsigned int reserved_0 : 24;
    unsigned int PCL8 : 1;
    unsigned int PCL9 : 1;
    unsigned int PCL10 : 1;
    unsigned int PCL11 : 1;
    unsigned int reserved_28 : 4;
} Ifx_P_OMCR8_Bits;


typedef struct _Ifx_P_OMCR_Bits
{
    unsigned int reserved_0 : 16;
    unsigned int PCL0 : 1;
    unsigned int PCL1 : 1;
    unsigned int PCL2 : 1;
    unsigned int PCL3 : 1;
    unsigned int PCL4 : 1;
    unsigned int PCL5 : 1;
    unsigned int PCL6 : 1;
    unsigned int PCL7 : 1;
    unsigned int PCL8 : 1;
    unsigned int PCL9 : 1;
    unsigned int PCL10 : 1;
    unsigned int PCL11 : 1;
    unsigned int PCL12 : 1;
    unsigned int PCL13 : 1;
    unsigned int PCL14 : 1;
    unsigned int PCL15 : 1;
} Ifx_P_OMCR_Bits;


typedef struct _Ifx_P_OMR_Bits
{
    unsigned int PS0 : 1;
    unsigned int PS1 : 1;
    unsigned int PS2 : 1;
    unsigned int PS3 : 1;
    unsigned int PS4 : 1;
    unsigned int PS5 : 1;
    unsigned int PS6 : 1;
    unsigned int PS7 : 1;
    unsigned int PS8 : 1;
    unsigned int PS9 : 1;
    unsigned int PS10 : 1;
    unsigned int PS11 : 1;
    unsigned int PS12 : 1;
    unsigned int PS13 : 1;
    unsigned int PS14 : 1;
    unsigned int PS15 : 1;
    unsigned int PCL0 : 1;
    unsigned int PCL1 : 1;
    unsigned int PCL2 : 1;
    unsigned int PCL3 : 1;
    unsigned int PCL4 : 1;
    unsigned int PCL5 : 1;
    unsigned int PCL6 : 1;
    unsigned int PCL7 : 1;
    unsigned int PCL8 : 1;
    unsigned int PCL9 : 1;
    unsigned int PCL10 : 1;
    unsigned int PCL11 : 1;
    unsigned int PCL12 : 1;
    unsigned int PCL13 : 1;
    unsigned int PCL14 : 1;
    unsigned int PCL15 : 1;
} Ifx_P_OMR_Bits;


typedef struct _Ifx_P_OMSR0_Bits
{
    unsigned int PS0 : 1;
    unsigned int PS1 : 1;
    unsigned int PS2 : 1;
    unsigned int PS3 : 1;
    unsigned int reserved_4 : 28;
} Ifx_P_OMSR0_Bits;


typedef struct _Ifx_P_OMSR12_Bits
{
    unsigned int reserved_0 : 12;
    unsigned int PS12 : 1;
    unsigned int PS13 : 1;
    unsigned int PS14 : 1;
    unsigned int PS15 : 1;
    unsigned int reserved_16 : 16;
} Ifx_P_OMSR12_Bits;


typedef struct _Ifx_P_OMSR4_Bits
{
    unsigned int reserved_0 : 4;
    unsigned int PS4 : 1;
    unsigned int PS5 : 1;
    unsigned int PS6 : 1;
    unsigned int PS7 : 1;
    unsigned int reserved_8 : 24;
} Ifx_P_OMSR4_Bits;


typedef struct _Ifx_P_OMSR8_Bits
{
    unsigned int reserved_0 : 8;
    unsigned int PS8 : 1;
    unsigned int PS9 : 1;
    unsigned int PS10 : 1;
    unsigned int PS11 : 1;
    unsigned int reserved_12 : 20;
} Ifx_P_OMSR8_Bits;


typedef struct _Ifx_P_OMSR_Bits
{
    unsigned int PS0 : 1;
    unsigned int PS1 : 1;
    unsigned int PS2 : 1;
    unsigned int PS3 : 1;
    unsigned int PS4 : 1;
    unsigned int PS5 : 1;
    unsigned int PS6 : 1;
    unsigned int PS7 : 1;
    unsigned int PS8 : 1;
    unsigned int PS9 : 1;
    unsigned int PS10 : 1;
    unsigned int PS11 : 1;
    unsigned int PS12 : 1;
    unsigned int PS13 : 1;
    unsigned int PS14 : 1;
    unsigned int PS15 : 1;
    unsigned int reserved_16 : 16;
} Ifx_P_OMSR_Bits;


typedef struct _Ifx_P_OUT_Bits
{
    unsigned int P0 : 1;
    unsigned int P1 : 1;
    unsigned int P2 : 1;
    unsigned int P3 : 1;
    unsigned int P4 : 1;
    unsigned int P5 : 1;
    unsigned int P6 : 1;
    unsigned int P7 : 1;
    unsigned int P8 : 1;
    unsigned int P9 : 1;
    unsigned int P10 : 1;
    unsigned int P11 : 1;
    unsigned int P12 : 1;
    unsigned int P13 : 1;
    unsigned int P14 : 1;
    unsigned int P15 : 1;
    unsigned int reserved_16 : 16;
} Ifx_P_OUT_Bits;


typedef struct _Ifx_P_PCSR_Bits
{
    unsigned int reserved_0 : 1;
    unsigned int SEL1 : 1;
    unsigned int SEL2 : 1;
    unsigned int reserved_3 : 6;
    unsigned int SEL9 : 1;
    unsigned int SEL10 : 1;
    unsigned int reserved_11 : 20;
    unsigned int LCK : 1;
} Ifx_P_PCSR_Bits;


typedef struct _Ifx_P_PDISC_Bits
{
    unsigned int PDIS0 : 1;
    unsigned int PDIS1 : 1;
    unsigned int PDIS2 : 1;
    unsigned int PDIS3 : 1;
    unsigned int PDIS4 : 1;
    unsigned int PDIS5 : 1;
    unsigned int PDIS6 : 1;
    unsigned int PDIS7 : 1;
    unsigned int PDIS8 : 1;
    unsigned int PDIS9 : 1;
    unsigned int PDIS10 : 1;
    unsigned int PDIS11 : 1;
    unsigned int PDIS12 : 1;
    unsigned int PDIS13 : 1;
    unsigned int PDIS14 : 1;
    unsigned int PDIS15 : 1;
    unsigned int reserved_16 : 16;
} Ifx_P_PDISC_Bits;


typedef struct _Ifx_P_PDR0_Bits
{
    unsigned int PD0 : 3;
    unsigned int PL0 : 1;
    unsigned int PD1 : 3;
    unsigned int PL1 : 1;
    unsigned int PD2 : 3;
    unsigned int PL2 : 1;
    unsigned int PD3 : 3;
    unsigned int PL3 : 1;
    unsigned int PD4 : 3;
    unsigned int PL4 : 1;
    unsigned int PD5 : 3;
    unsigned int PL5 : 1;
    unsigned int PD6 : 3;
    unsigned int PL6 : 1;
    unsigned int PD7 : 3;
    unsigned int PL7 : 1;
} Ifx_P_PDR0_Bits;


typedef struct _Ifx_P_PDR1_Bits
{
    unsigned int PD8 : 3;
    unsigned int PL8 : 1;
    unsigned int PD9 : 3;
    unsigned int PL9 : 1;
    unsigned int PD10 : 3;
    unsigned int PL10 : 1;
    unsigned int PD11 : 3;
    unsigned int PL11 : 1;
    unsigned int PD12 : 3;
    unsigned int PL12 : 1;
    unsigned int PD13 : 3;
    unsigned int PL13 : 1;
    unsigned int PD14 : 3;
    unsigned int PL14 : 1;
    unsigned int PD15 : 3;
    unsigned int PL15 : 1;
} Ifx_P_PDR1_Bits;







typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_ACCEN0_Bits B;
} Ifx_P_ACCEN0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_ACCEN1_Bits B;
} Ifx_P_ACCEN1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_ESR_Bits B;
} Ifx_P_ESR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_ID_Bits B;
} Ifx_P_ID;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_IN_Bits B;
} Ifx_P_IN;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_IOCR0_Bits B;
} Ifx_P_IOCR0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_IOCR12_Bits B;
} Ifx_P_IOCR12;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_IOCR4_Bits B;
} Ifx_P_IOCR4;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_IOCR8_Bits B;
} Ifx_P_IOCR8;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_OMCR_Bits B;
} Ifx_P_OMCR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_OMCR0_Bits B;
} Ifx_P_OMCR0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_OMCR12_Bits B;
} Ifx_P_OMCR12;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_OMCR4_Bits B;
} Ifx_P_OMCR4;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_OMCR8_Bits B;
} Ifx_P_OMCR8;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_OMR_Bits B;
} Ifx_P_OMR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_OMSR_Bits B;
} Ifx_P_OMSR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_OMSR0_Bits B;
} Ifx_P_OMSR0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_OMSR12_Bits B;
} Ifx_P_OMSR12;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_OMSR4_Bits B;
} Ifx_P_OMSR4;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_OMSR8_Bits B;
} Ifx_P_OMSR8;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_OUT_Bits B;
} Ifx_P_OUT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_PCSR_Bits B;
} Ifx_P_PCSR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_PDISC_Bits B;
} Ifx_P_PDISC;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_PDR0_Bits B;
} Ifx_P_PDR0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_PDR1_Bits B;
} Ifx_P_PDR1;
# 671 "../30_Bsw/Common/TC21x/IfxPort_regdef.h"
typedef volatile struct _Ifx_P
{
    Ifx_P_OUT OUT;
    Ifx_P_OMR OMR;
    Ifx_P_ID ID;
    unsigned char reserved_C[4];
    Ifx_P_IOCR0 IOCR0;
    Ifx_P_IOCR4 IOCR4;
    Ifx_P_IOCR8 IOCR8;
    Ifx_P_IOCR12 IOCR12;
    unsigned char reserved_20[4];
    Ifx_P_IN IN;
    unsigned char reserved_28[24];
    Ifx_P_PDR0 PDR0;
    Ifx_P_PDR1 PDR1;
    unsigned char reserved_48[8];
    Ifx_P_ESR ESR;
    unsigned char reserved_54[12];
    Ifx_P_PDISC PDISC;
    Ifx_P_PCSR PCSR;
    unsigned char reserved_64[8];
    Ifx_P_OMSR0 OMSR0;
    Ifx_P_OMSR4 OMSR4;
    Ifx_P_OMSR8 OMSR8;
    Ifx_P_OMSR12 OMSR12;
    Ifx_P_OMCR0 OMCR0;
    Ifx_P_OMCR4 OMCR4;
    Ifx_P_OMCR8 OMCR8;
    Ifx_P_OMCR12 OMCR12;
    Ifx_P_OMSR OMSR;
    Ifx_P_OMCR OMCR;
    unsigned char reserved_98[96];
    Ifx_P_ACCEN1 ACCEN1;
    Ifx_P_ACCEN0 ACCEN0;
} Ifx_P;
# 79 "../30_Bsw/Common/TC21x/IfxPort_reg.h" 2
# 23 "../30_Bsw/Mcal/Port/Port_cfg.h" 2
# 1 "../30_Bsw/Mcal/Scu/IfxScuWdt.h" 1
# 46 "../30_Bsw/Mcal/Scu/IfxScuWdt.h"
# 1 "../30_Bsw/Common/TC21x/IfxScu_cfg.h" 1
# 35 "../30_Bsw/Common/TC21x/IfxScu_cfg.h"
# 1 "../30_Bsw/Common/TC21x/Ifx_Cfg.h" 1
# 36 "../30_Bsw/Common/TC21x/IfxScu_cfg.h" 2
# 1 "../30_Bsw/Common/TC21x/IfxScu_bf.h" 1
# 37 "../30_Bsw/Common/TC21x/IfxScu_cfg.h" 2
# 1 "../30_Bsw/Common/TC21x/IfxFlash_bf.h" 1
# 38 "../30_Bsw/Common/TC21x/IfxScu_cfg.h" 2
# 1259 "../30_Bsw/Common/TC21x/IfxScu_cfg.h"
typedef enum
{
    IfxScu_CCUCON0_CLKSEL_fBack = 0,
    IfxScu_CCUCON0_CLKSEL_fPll = 1
} IfxScu_CCUCON0_CLKSEL;


typedef enum
{
    IfxScu_CCUCON1_INSEL_fOsc1 = 0,
    IfxScu_CCUCON1_INSEL_fOsc0 = 1
} IfxScu_CCUCON1_INSEL;


typedef enum
{
    IfxScu_WDTCON1_IR_divBy16384 = 0,
    IfxScu_WDTCON1_IR_divBy256 = 1,
    IfxScu_WDTCON1_IR_divBy64 = 2
} IfxScu_WDTCON1_IR;

typedef enum
{
    IfxScu_PMCSR_REQSLP_Run = 0U,
    IfxScu_PMCSR_REQSLP_Idle = 1U,
    IfxScu_PMCSR_REQSLP_Sleep = 2U,
    IfxScu_PMCSR_REQSLP_Stby = 3U
} IfxScu_PMCSR_REQSLP;
# 47 "../30_Bsw/Mcal/Scu/IfxScuWdt.h" 2
# 1 "../30_Bsw/Common/Ifx_Types.h" 1
# 29 "../30_Bsw/Common/Ifx_Types.h"
# 1 "../30_Bsw/Compilers/Compilers.h" 1
# 29 "../30_Bsw/Compilers/Compilers.h"
# 1 "../30_Bsw/Common/TC21x/Ifx_Cfg.h" 1
# 30 "../30_Bsw/Compilers/Compilers.h" 2
# 65 "../30_Bsw/Compilers/Compilers.h"
# 1 "../30_Bsw/Compilers/CompilerGnuc.h" 1
# 66 "../30_Bsw/Compilers/Compilers.h" 2
# 120 "../30_Bsw/Compilers/Compilers.h"
void Ifx_C_Init(void);
# 30 "../30_Bsw/Common/Ifx_Types.h" 2
# 1 "../30_Bsw/Common/Platform_Types.h" 1
# 31 "../30_Bsw/Common/Ifx_Types.h" 2





typedef signed long long sint64;
typedef unsigned long long uint64;

typedef const char *pchar;
typedef void *pvoid;
typedef volatile void *vvoid;

typedef sint64 Ifx_TickTime;
# 56 "../30_Bsw/Common/Ifx_Types.h"
typedef sint16 Ifx_SizeT;



typedef struct
{
    void *base;
    uint16 index;
    uint16 length;
} Ifx_CircularBuffer;

typedef uint16 Ifx_Priority;
typedef uint32 Ifx_TimerValue;
typedef sint32 Ifx_SignedTimerVal;

typedef pvoid Ifx_AddressValue;

typedef struct
{
    uint16 priority;
    uint16 provider;
} Ifx_IsrSetting;


typedef enum
{
    Ifx_ActiveState_low = 0,
    Ifx_ActiveState_high = 1
} Ifx_ActiveState;

typedef enum
{
    Ifx_ParityMode_even = 0,
    Ifx_ParityMode_odd = 1
} Ifx_ParityMode;



typedef enum
{
    Ifx_RxSel_a,
    Ifx_RxSel_b,
    Ifx_RxSel_c,
    Ifx_RxSel_d,
    Ifx_RxSel_e,
    Ifx_RxSel_f,
    Ifx_RxSel_g,
    Ifx_RxSel_h
} Ifx_RxSel;


typedef struct
{
    volatile void *module;
    sint32 index;
} IfxModule_IndexMap;

typedef struct
{
    Ifx_TickTime timestamp;
    uint8 data;
}Ifx_DataBufferMode_TimeStampSingle;
# 128 "../30_Bsw/Common/Ifx_Types.h"
typedef enum
{
    Ifx_DataBufferMode_normal = 0,
    Ifx_DataBufferMode_timeStampSingle,

}Ifx_DataBufferMode;







typedef enum
{
    Ifx_Pwm_Mode_centerAligned = 0,
    Ifx_Pwm_Mode_centerAlignedInverted = 1,
    Ifx_Pwm_Mode_leftAligned = 2,
    Ifx_Pwm_Mode_rightAligned = 3,
    Ifx_Pwm_Mode_off = 4,
    Ifx_Pwm_Mode_init = 5,
    Ifx_Pwm_Mode_count = 6
} Ifx_Pwm_Mode;
# 159 "../30_Bsw/Common/Ifx_Types.h"
# 1 "../30_Bsw/Common/Ifx_TypesGnuc.h" 1
# 27 "../30_Bsw/Common/Ifx_TypesGnuc.h"
# 1 "c:\\hightec\\toolchains\\tricore\\v4.6.3.0\\bin\\../lib/gcc/tricore/4.6.3/../../../../tricore/include/machine/cint.h" 1 3
# 43 "c:\\hightec\\toolchains\\tricore\\v4.6.3.0\\bin\\../lib/gcc/tricore/4.6.3/../../../../tricore/include/machine/cint.h" 3
extern void _init_vectab (void);
extern void _init_hnd_chain (void);






extern int _install_int_handler (int intno, void (*handler) (int), int arg);







extern void *_install_chained_int_handler (int intno, void (*handler) (int),
        int arg);





extern int _remove_chained_int_handler (int intno, void *ptr);





extern int _install_trap_handler (int trapno, void (*handler) (int));
# 28 "../30_Bsw/Common/Ifx_TypesGnuc.h" 2


typedef long fract;
typedef short sfract;
typedef long long laccum;
typedef long __packb;
typedef unsigned long __upackb;
typedef long __packhw;
typedef unsigned long __upackhw;
# 160 "../30_Bsw/Common/Ifx_Types.h" 2
# 48 "../30_Bsw/Mcal/Scu/IfxScuWdt.h" 2
# 1 "../30_Bsw/Common/TC21x/IfxScu_reg.h" 1
# 36 "../30_Bsw/Common/TC21x/IfxScu_reg.h"
# 1 "../30_Bsw/Common/TC21x/IfxScu_regdef.h" 1
# 45 "../30_Bsw/Common/TC21x/IfxScu_regdef.h"
typedef struct _Ifx_SCU_ACCEN0_Bits
{
    unsigned int EN0 : 1;
    unsigned int EN1 : 1;
    unsigned int EN2 : 1;
    unsigned int EN3 : 1;
    unsigned int EN4 : 1;
    unsigned int EN5 : 1;
    unsigned int EN6 : 1;
    unsigned int EN7 : 1;
    unsigned int EN8 : 1;
    unsigned int EN9 : 1;
    unsigned int EN10 : 1;
    unsigned int EN11 : 1;
    unsigned int EN12 : 1;
    unsigned int EN13 : 1;
    unsigned int EN14 : 1;
    unsigned int EN15 : 1;
    unsigned int EN16 : 1;
    unsigned int EN17 : 1;
    unsigned int EN18 : 1;
    unsigned int EN19 : 1;
    unsigned int EN20 : 1;
    unsigned int EN21 : 1;
    unsigned int EN22 : 1;
    unsigned int EN23 : 1;
    unsigned int EN24 : 1;
    unsigned int EN25 : 1;
    unsigned int EN26 : 1;
    unsigned int EN27 : 1;
    unsigned int EN28 : 1;
    unsigned int EN29 : 1;
    unsigned int EN30 : 1;
    unsigned int EN31 : 1;
} Ifx_SCU_ACCEN0_Bits;


typedef struct _Ifx_SCU_ACCEN1_Bits
{
    unsigned int reserved_0 : 32;
} Ifx_SCU_ACCEN1_Bits;


typedef struct _Ifx_SCU_ARSTDIS_Bits
{
    unsigned int STM0DIS : 1;
    unsigned int STM1DIS : 1;
    unsigned int STM2DIS : 1;
    unsigned int reserved_3 : 29;
} Ifx_SCU_ARSTDIS_Bits;


typedef struct _Ifx_SCU_CCUCON0_Bits
{
    unsigned int reserved_0 : 4;
    unsigned int BAUD2DIV : 4;
    unsigned int SRIDIV : 4;
    unsigned int LPDIV : 4;
    unsigned int SPBDIV : 4;
    unsigned int FSI2DIV : 2;
    unsigned int reserved_22 : 2;
    unsigned int FSIDIV : 2;
    unsigned int reserved_26 : 2;
    unsigned int CLKSEL : 2;
    unsigned int UP : 1;
    unsigned int LCK : 1;
} Ifx_SCU_CCUCON0_Bits;


typedef struct _Ifx_SCU_CCUCON1_Bits
{
    unsigned int CANDIV : 4;
    unsigned int ERAYDIV : 4;
    unsigned int STMDIV : 4;
    unsigned int GTMDIV : 4;
    unsigned int ETHDIV : 4;
    unsigned int ASCLINFDIV : 4;
    unsigned int ASCLINSDIV : 4;
    unsigned int INSEL : 2;
    unsigned int UP : 1;
    unsigned int LCK : 1;
} Ifx_SCU_CCUCON1_Bits;


typedef struct _Ifx_SCU_CCUCON2_Bits
{
    unsigned int BBBDIV : 4;
    unsigned int reserved_4 : 26;
    unsigned int UP : 1;
    unsigned int LCK : 1;
} Ifx_SCU_CCUCON2_Bits;


typedef struct _Ifx_SCU_CCUCON3_Bits
{
    unsigned int PLLDIV : 6;
    unsigned int PLLSEL : 2;
    unsigned int PLLERAYDIV : 6;
    unsigned int PLLERAYSEL : 2;
    unsigned int SRIDIV : 6;
    unsigned int SRISEL : 2;
    unsigned int reserved_24 : 6;
    unsigned int UP : 1;
    unsigned int LCK : 1;
} Ifx_SCU_CCUCON3_Bits;


typedef struct _Ifx_SCU_CCUCON4_Bits
{
    unsigned int SPBDIV : 6;
    unsigned int SPBSEL : 2;
    unsigned int GTMDIV : 6;
    unsigned int GTMSEL : 2;
    unsigned int STMDIV : 6;
    unsigned int STMSEL : 2;
    unsigned int reserved_24 : 6;
    unsigned int UP : 1;
    unsigned int LCK : 1;
} Ifx_SCU_CCUCON4_Bits;


typedef struct _Ifx_SCU_CCUCON5_Bits
{
    unsigned int MAXDIV : 4;
    unsigned int reserved_4 : 26;
    unsigned int UP : 1;
    unsigned int LCK : 1;
} Ifx_SCU_CCUCON5_Bits;


typedef struct _Ifx_SCU_CCUCON6_Bits
{
    unsigned int CPU0DIV : 6;
    unsigned int reserved_6 : 26;
} Ifx_SCU_CCUCON6_Bits;


typedef struct _Ifx_SCU_CHIPID_Bits
{
    unsigned int CHREV : 6;
    unsigned int CHTEC : 2;
    unsigned int CHID : 8;
    unsigned int EEA : 1;
    unsigned int UCODE : 7;
    unsigned int FSIZE : 4;
    unsigned int SP : 2;
    unsigned int SEC : 1;
    unsigned int reserved_31 : 1;
} Ifx_SCU_CHIPID_Bits;


typedef struct _Ifx_SCU_DTSCON_Bits
{
    unsigned int PWD : 1;
    unsigned int START : 1;
    unsigned int reserved_2 : 2;
    unsigned int CAL : 22;
    unsigned int reserved_26 : 5;
    unsigned int SLCK : 1;
} Ifx_SCU_DTSCON_Bits;


typedef struct _Ifx_SCU_DTSLIM_Bits
{
    unsigned int LOWER : 10;
    unsigned int reserved_10 : 5;
    unsigned int LLU : 1;
    unsigned int UPPER : 10;
    unsigned int reserved_26 : 4;
    unsigned int SLCK : 1;
    unsigned int UOF : 1;
} Ifx_SCU_DTSLIM_Bits;


typedef struct _Ifx_SCU_DTSSTAT_Bits
{
    unsigned int RESULT : 10;
    unsigned int reserved_10 : 4;
    unsigned int RDY : 1;
    unsigned int BUSY : 1;
    unsigned int reserved_16 : 16;
} Ifx_SCU_DTSSTAT_Bits;


typedef struct _Ifx_SCU_EICR_Bits
{
    unsigned int reserved_0 : 4;
    unsigned int EXIS0 : 3;
    unsigned int reserved_7 : 1;
    unsigned int FEN0 : 1;
    unsigned int REN0 : 1;
    unsigned int LDEN0 : 1;
    unsigned int EIEN0 : 1;
    unsigned int INP0 : 3;
    unsigned int reserved_15 : 5;
    unsigned int EXIS1 : 3;
    unsigned int reserved_23 : 1;
    unsigned int FEN1 : 1;
    unsigned int REN1 : 1;
    unsigned int LDEN1 : 1;
    unsigned int EIEN1 : 1;
    unsigned int INP1 : 3;
    unsigned int reserved_31 : 1;
} Ifx_SCU_EICR_Bits;


typedef struct _Ifx_SCU_EIFR_Bits
{
    unsigned int INTF0 : 1;
    unsigned int INTF1 : 1;
    unsigned int INTF2 : 1;
    unsigned int INTF3 : 1;
    unsigned int INTF4 : 1;
    unsigned int INTF5 : 1;
    unsigned int INTF6 : 1;
    unsigned int INTF7 : 1;
    unsigned int reserved_8 : 24;
} Ifx_SCU_EIFR_Bits;


typedef struct _Ifx_SCU_EMSR_Bits
{
    unsigned int POL : 1;
    unsigned int MODE : 1;
    unsigned int ENON : 1;
    unsigned int PSEL : 1;
    unsigned int reserved_4 : 12;
    unsigned int EMSF : 1;
    unsigned int SEMSF : 1;
    unsigned int reserved_18 : 6;
    unsigned int EMSFM : 2;
    unsigned int SEMSFM : 2;
    unsigned int reserved_28 : 4;
} Ifx_SCU_EMSR_Bits;


typedef struct _Ifx_SCU_ESRCFG_Bits
{
    unsigned int reserved_0 : 7;
    unsigned int EDCON : 2;
    unsigned int reserved_9 : 23;
} Ifx_SCU_ESRCFG_Bits;


typedef struct _Ifx_SCU_ESROCFG_Bits
{
    unsigned int ARI : 1;
    unsigned int ARC : 1;
    unsigned int reserved_2 : 30;
} Ifx_SCU_ESROCFG_Bits;


typedef struct _Ifx_SCU_EVR13CON_Bits
{
    unsigned int reserved_0 : 28;
    unsigned int EVR13OFF : 1;
    unsigned int BPEVR13OFF : 1;
    unsigned int reserved_30 : 1;
    unsigned int LCK : 1;
} Ifx_SCU_EVR13CON_Bits;


typedef struct _Ifx_SCU_EVRADCSTAT_Bits
{
    unsigned int ADC13V : 8;
    unsigned int reserved_8 : 8;
    unsigned int ADCSWDV : 8;
    unsigned int reserved_24 : 7;
    unsigned int VAL : 1;
} Ifx_SCU_EVRADCSTAT_Bits;


typedef struct _Ifx_SCU_EVRMONCTRL_Bits
{
    unsigned int EVR13OVMOD : 2;
    unsigned int reserved_2 : 2;
    unsigned int EVR13UVMOD : 2;
    unsigned int reserved_6 : 10;
    unsigned int SWDOVMOD : 2;
    unsigned int reserved_18 : 2;
    unsigned int SWDUVMOD : 2;
    unsigned int reserved_22 : 8;
    unsigned int SLCK : 1;
    unsigned int reserved_31 : 1;
} Ifx_SCU_EVRMONCTRL_Bits;


typedef struct _Ifx_SCU_EVROVMON_Bits
{
    unsigned int EVR13OVVAL : 8;
    unsigned int reserved_8 : 8;
    unsigned int SWDOVVAL : 8;
    unsigned int reserved_24 : 6;
    unsigned int SLCK : 1;
    unsigned int LCK : 1;
} Ifx_SCU_EVROVMON_Bits;


typedef struct _Ifx_SCU_EVRRSTCON_Bits
{
    unsigned int reserved_0 : 28;
    unsigned int RSTSWDOFF : 1;
    unsigned int BPRSTSWDOFF : 1;
    unsigned int SLCK : 1;
    unsigned int LCK : 1;
} Ifx_SCU_EVRRSTCON_Bits;


typedef struct _Ifx_SCU_EVRSDCOEFF2_Bits
{
    unsigned int SD33P : 4;
    unsigned int reserved_4 : 4;
    unsigned int SD33I : 4;
    unsigned int reserved_12 : 19;
    unsigned int LCK : 1;
} Ifx_SCU_EVRSDCOEFF2_Bits;


typedef struct _Ifx_SCU_EVRSDCTRL1_Bits
{
    unsigned int SDFREQSPRD : 4;
    unsigned int reserved_4 : 4;
    unsigned int TON : 8;
    unsigned int TOFF : 8;
    unsigned int SDSTEP : 4;
    unsigned int SYNCDIV : 3;
    unsigned int LCK : 1;
} Ifx_SCU_EVRSDCTRL1_Bits;


typedef struct _Ifx_SCU_EVRSDCTRL2_Bits
{
    unsigned int reserved_0 : 8;
    unsigned int STBS : 2;
    unsigned int STSP : 2;
    unsigned int NS : 2;
    unsigned int OL : 1;
    unsigned int PIAD : 1;
    unsigned int ADCMODE : 4;
    unsigned int ADCLPF : 2;
    unsigned int ADCLSB : 1;
    unsigned int reserved_23 : 1;
    unsigned int SDLUT : 6;
    unsigned int reserved_30 : 1;
    unsigned int LCK : 1;
} Ifx_SCU_EVRSDCTRL2_Bits;


typedef struct _Ifx_SCU_EVRSDCTRL3_Bits
{
    unsigned int SDOLCON : 7;
    unsigned int MODSEL : 1;
    unsigned int MODLOW : 7;
    unsigned int reserved_15 : 1;
    unsigned int SDVOKLVL : 6;
    unsigned int MODMAN : 2;
    unsigned int MODHIGH : 7;
    unsigned int LCK : 1;
} Ifx_SCU_EVRSDCTRL3_Bits;


typedef struct _Ifx_SCU_EVRSTAT_Bits
{
    unsigned int EVR13 : 1;
    unsigned int OV13 : 1;
    unsigned int reserved_2 : 2;
    unsigned int OVSWD : 1;
    unsigned int UV13 : 1;
    unsigned int reserved_6 : 1;
    unsigned int UVSWD : 1;
    unsigned int reserved_8 : 2;
    unsigned int BGPROK : 1;
    unsigned int reserved_11 : 1;
    unsigned int SCMOD : 2;
    unsigned int reserved_14 : 18;
} Ifx_SCU_EVRSTAT_Bits;


typedef struct _Ifx_SCU_EVRUVMON_Bits
{
    unsigned int EVR13UVVAL : 8;
    unsigned int reserved_8 : 8;
    unsigned int SWDUVVAL : 8;
    unsigned int reserved_24 : 6;
    unsigned int SLCK : 1;
    unsigned int LCK : 1;
} Ifx_SCU_EVRUVMON_Bits;


typedef struct _Ifx_SCU_EXTCON_Bits
{
    unsigned int EN0 : 1;
    unsigned int reserved_1 : 1;
    unsigned int SEL0 : 4;
    unsigned int reserved_6 : 10;
    unsigned int EN1 : 1;
    unsigned int NSEL : 1;
    unsigned int SEL1 : 4;
    unsigned int reserved_22 : 2;
    unsigned int DIV1 : 8;
} Ifx_SCU_EXTCON_Bits;


typedef struct _Ifx_SCU_FDR_Bits
{
    unsigned int STEP : 10;
    unsigned int reserved_10 : 4;
    unsigned int DM : 2;
    unsigned int RESULT : 10;
    unsigned int reserved_26 : 5;
    unsigned int DISCLK : 1;
} Ifx_SCU_FDR_Bits;


typedef struct _Ifx_SCU_FMR_Bits
{
    unsigned int FS0 : 1;
    unsigned int FS1 : 1;
    unsigned int FS2 : 1;
    unsigned int FS3 : 1;
    unsigned int FS4 : 1;
    unsigned int FS5 : 1;
    unsigned int FS6 : 1;
    unsigned int FS7 : 1;
    unsigned int reserved_8 : 8;
    unsigned int FC0 : 1;
    unsigned int FC1 : 1;
    unsigned int FC2 : 1;
    unsigned int FC3 : 1;
    unsigned int FC4 : 1;
    unsigned int FC5 : 1;
    unsigned int FC6 : 1;
    unsigned int FC7 : 1;
    unsigned int reserved_24 : 8;
} Ifx_SCU_FMR_Bits;


typedef struct _Ifx_SCU_ID_Bits
{
    unsigned int MODREV : 8;
    unsigned int MODTYPE : 8;
    unsigned int MODNUMBER : 16;
} Ifx_SCU_ID_Bits;


typedef struct _Ifx_SCU_IGCR_Bits
{
    unsigned int IPEN00 : 1;
    unsigned int IPEN01 : 1;
    unsigned int IPEN02 : 1;
    unsigned int IPEN03 : 1;
    unsigned int IPEN04 : 1;
    unsigned int IPEN05 : 1;
    unsigned int IPEN06 : 1;
    unsigned int IPEN07 : 1;
    unsigned int reserved_8 : 5;
    unsigned int GEEN0 : 1;
    unsigned int IGP0 : 2;
    unsigned int IPEN10 : 1;
    unsigned int IPEN11 : 1;
    unsigned int IPEN12 : 1;
    unsigned int IPEN13 : 1;
    unsigned int IPEN14 : 1;
    unsigned int IPEN15 : 1;
    unsigned int IPEN16 : 1;
    unsigned int IPEN17 : 1;
    unsigned int reserved_24 : 5;
    unsigned int GEEN1 : 1;
    unsigned int IGP1 : 2;
} Ifx_SCU_IGCR_Bits;


typedef struct _Ifx_SCU_IN_Bits
{
    unsigned int P0 : 1;
    unsigned int P1 : 1;
    unsigned int reserved_2 : 30;
} Ifx_SCU_IN_Bits;


typedef struct _Ifx_SCU_IOCR_Bits
{
    unsigned int reserved_0 : 4;
    unsigned int PC0 : 4;
    unsigned int reserved_8 : 4;
    unsigned int PC1 : 4;
    unsigned int reserved_16 : 16;
} Ifx_SCU_IOCR_Bits;


typedef struct _Ifx_SCU_LBISTCTRL0_Bits
{
    unsigned int LBISTREQ : 1;
    unsigned int LBISTREQP : 1;
    unsigned int PATTERNS : 14;
    unsigned int reserved_16 : 16;
} Ifx_SCU_LBISTCTRL0_Bits;


typedef struct _Ifx_SCU_LBISTCTRL1_Bits
{
    unsigned int SEED : 23;
    unsigned int reserved_23 : 1;
    unsigned int SPLITSH : 3;
    unsigned int BODY : 1;
    unsigned int LBISTFREQU : 4;
} Ifx_SCU_LBISTCTRL1_Bits;


typedef struct _Ifx_SCU_LBISTCTRL2_Bits
{
    unsigned int SIGNATURE : 24;
    unsigned int reserved_24 : 7;
    unsigned int LBISTDONE : 1;
} Ifx_SCU_LBISTCTRL2_Bits;


typedef struct _Ifx_SCU_LCLCON0_Bits
{
    unsigned int reserved_0 : 16;
    unsigned int LS : 1;
    unsigned int reserved_17 : 14;
    unsigned int LSEN : 1;
} Ifx_SCU_LCLCON0_Bits;


typedef struct _Ifx_SCU_LCLTEST_Bits
{
    unsigned int LCLT0 : 1;
    unsigned int LCLT1 : 1;
    unsigned int reserved_2 : 30;
} Ifx_SCU_LCLTEST_Bits;


typedef struct _Ifx_SCU_MANID_Bits
{
    unsigned int DEPT : 5;
    unsigned int MANUF : 11;
    unsigned int reserved_16 : 16;
} Ifx_SCU_MANID_Bits;


typedef struct _Ifx_SCU_OMR_Bits
{
    unsigned int PS0 : 1;
    unsigned int PS1 : 1;
    unsigned int reserved_2 : 14;
    unsigned int PCL0 : 1;
    unsigned int PCL1 : 1;
    unsigned int reserved_18 : 14;
} Ifx_SCU_OMR_Bits;


typedef struct _Ifx_SCU_OSCCON_Bits
{
    unsigned int reserved_0 : 1;
    unsigned int PLLLV : 1;
    unsigned int OSCRES : 1;
    unsigned int GAINSEL : 2;
    unsigned int MODE : 2;
    unsigned int SHBY : 1;
    unsigned int PLLHV : 1;
    unsigned int reserved_9 : 1;
    unsigned int X1D : 1;
    unsigned int X1DEN : 1;
    unsigned int reserved_12 : 4;
    unsigned int OSCVAL : 5;
    unsigned int reserved_21 : 2;
    unsigned int APREN : 1;
    unsigned int reserved_24 : 8;
} Ifx_SCU_OSCCON_Bits;


typedef struct _Ifx_SCU_OUT_Bits
{
    unsigned int P0 : 1;
    unsigned int P1 : 1;
    unsigned int reserved_2 : 30;
} Ifx_SCU_OUT_Bits;


typedef struct _Ifx_SCU_OVCCON_Bits
{
    unsigned int CSEL0 : 1;
    unsigned int CSEL1 : 1;
    unsigned int CSEL2 : 1;
    unsigned int reserved_3 : 13;
    unsigned int OVSTRT : 1;
    unsigned int OVSTP : 1;
    unsigned int DCINVAL : 1;
    unsigned int reserved_19 : 5;
    unsigned int OVCONF : 1;
    unsigned int POVCONF : 1;
    unsigned int reserved_26 : 6;
} Ifx_SCU_OVCCON_Bits;


typedef struct _Ifx_SCU_OVCENABLE_Bits
{
    unsigned int OVEN0 : 1;
    unsigned int OVEN1 : 1;
    unsigned int OVEN2 : 1;
    unsigned int reserved_3 : 29;
} Ifx_SCU_OVCENABLE_Bits;


typedef struct _Ifx_SCU_PDISC_Bits
{
    unsigned int PDIS0 : 1;
    unsigned int PDIS1 : 1;
    unsigned int reserved_2 : 30;
} Ifx_SCU_PDISC_Bits;


typedef struct _Ifx_SCU_PDR_Bits
{
    unsigned int PD0 : 3;
    unsigned int PL0 : 1;
    unsigned int PD1 : 3;
    unsigned int PL1 : 1;
    unsigned int reserved_8 : 24;
} Ifx_SCU_PDR_Bits;


typedef struct _Ifx_SCU_PDRR_Bits
{
    unsigned int PDR0 : 1;
    unsigned int PDR1 : 1;
    unsigned int PDR2 : 1;
    unsigned int PDR3 : 1;
    unsigned int PDR4 : 1;
    unsigned int PDR5 : 1;
    unsigned int PDR6 : 1;
    unsigned int PDR7 : 1;
    unsigned int reserved_8 : 24;
} Ifx_SCU_PDRR_Bits;


typedef struct _Ifx_SCU_PLLCON0_Bits
{
    unsigned int VCOBYP : 1;
    unsigned int VCOPWD : 1;
    unsigned int MODEN : 1;
    unsigned int reserved_3 : 1;
    unsigned int SETFINDIS : 1;
    unsigned int CLRFINDIS : 1;
    unsigned int OSCDISCDIS : 1;
    unsigned int reserved_7 : 2;
    unsigned int NDIV : 7;
    unsigned int PLLPWD : 1;
    unsigned int reserved_17 : 1;
    unsigned int RESLD : 1;
    unsigned int reserved_19 : 5;
    unsigned int PDIV : 4;
    unsigned int reserved_28 : 4;
} Ifx_SCU_PLLCON0_Bits;


typedef struct _Ifx_SCU_PLLCON1_Bits
{
    unsigned int K2DIV : 7;
    unsigned int reserved_7 : 1;
    unsigned int K3DIV : 7;
    unsigned int reserved_15 : 1;
    unsigned int K1DIV : 7;
    unsigned int reserved_23 : 9;
} Ifx_SCU_PLLCON1_Bits;


typedef struct _Ifx_SCU_PLLCON2_Bits
{
    unsigned int MODCFG : 16;
    unsigned int reserved_16 : 16;
} Ifx_SCU_PLLCON2_Bits;


typedef struct _Ifx_SCU_PLLERAYCON0_Bits
{
    unsigned int VCOBYP : 1;
    unsigned int VCOPWD : 1;
    unsigned int reserved_2 : 2;
    unsigned int SETFINDIS : 1;
    unsigned int CLRFINDIS : 1;
    unsigned int OSCDISCDIS : 1;
    unsigned int reserved_7 : 2;
    unsigned int NDIV : 5;
    unsigned int reserved_14 : 2;
    unsigned int PLLPWD : 1;
    unsigned int reserved_17 : 1;
    unsigned int RESLD : 1;
    unsigned int reserved_19 : 5;
    unsigned int PDIV : 4;
    unsigned int reserved_28 : 4;
} Ifx_SCU_PLLERAYCON0_Bits;


typedef struct _Ifx_SCU_PLLERAYCON1_Bits
{
    unsigned int K2DIV : 7;
    unsigned int reserved_7 : 1;
    unsigned int K3DIV : 4;
    unsigned int reserved_12 : 4;
    unsigned int K1DIV : 7;
    unsigned int reserved_23 : 9;
} Ifx_SCU_PLLERAYCON1_Bits;


typedef struct _Ifx_SCU_PLLERAYSTAT_Bits
{
    unsigned int VCOBYST : 1;
    unsigned int PWDSTAT : 1;
    unsigned int VCOLOCK : 1;
    unsigned int FINDIS : 1;
    unsigned int K1RDY : 1;
    unsigned int K2RDY : 1;
    unsigned int reserved_6 : 26;
} Ifx_SCU_PLLERAYSTAT_Bits;


typedef struct _Ifx_SCU_PLLSTAT_Bits
{
    unsigned int VCOBYST : 1;
    unsigned int reserved_1 : 1;
    unsigned int VCOLOCK : 1;
    unsigned int FINDIS : 1;
    unsigned int K1RDY : 1;
    unsigned int K2RDY : 1;
    unsigned int reserved_6 : 1;
    unsigned int MODRUN : 1;
    unsigned int reserved_8 : 24;
} Ifx_SCU_PLLSTAT_Bits;


typedef struct _Ifx_SCU_PMCSR_Bits
{
    unsigned int REQSLP : 2;
    unsigned int SMUSLP : 1;
    unsigned int reserved_3 : 5;
    unsigned int PMST : 3;
    unsigned int reserved_11 : 21;
} Ifx_SCU_PMCSR_Bits;


typedef struct _Ifx_SCU_PMSWCR0_Bits
{
    unsigned int reserved_0 : 1;
    unsigned int ESR1WKEN : 1;
    unsigned int PINAWKEN : 1;
    unsigned int PINBWKEN : 1;
    unsigned int ESR0DFEN : 1;
    unsigned int ESR0EDCON : 2;
    unsigned int ESR1DFEN : 1;
    unsigned int ESR1EDCON : 2;
    unsigned int PINADFEN : 1;
    unsigned int PINAEDCON : 2;
    unsigned int PINBDFEN : 1;
    unsigned int PINBEDCON : 2;
    unsigned int reserved_16 : 1;
    unsigned int STBYRAMSEL : 2;
    unsigned int reserved_19 : 1;
    unsigned int WUTWKEN : 1;
    unsigned int reserved_21 : 2;
    unsigned int PORSTDF : 1;
    unsigned int reserved_24 : 1;
    unsigned int DCDCSYNC : 1;
    unsigned int reserved_26 : 3;
    unsigned int ESR0TRIST : 1;
    unsigned int reserved_30 : 1;
    unsigned int LCK : 1;
} Ifx_SCU_PMSWCR0_Bits;


typedef struct _Ifx_SCU_PMSWCR1_Bits
{
    unsigned int reserved_0 : 12;
    unsigned int IRADIS : 1;
    unsigned int reserved_13 : 14;
    unsigned int STBYEVEN : 1;
    unsigned int STBYEV : 3;
    unsigned int reserved_31 : 1;
} Ifx_SCU_PMSWCR1_Bits;


typedef struct _Ifx_SCU_PMSWCR3_Bits
{
    unsigned int WUTREL : 24;
    unsigned int reserved_24 : 4;
    unsigned int WUTDIV : 1;
    unsigned int WUTEN : 1;
    unsigned int WUTMODE : 1;
    unsigned int LCK : 1;
} Ifx_SCU_PMSWCR3_Bits;


typedef struct _Ifx_SCU_PMSWSTAT_Bits
{
    unsigned int reserved_0 : 2;
    unsigned int ESR1WKP : 1;
    unsigned int ESR1OVRUN : 1;
    unsigned int PINAWKP : 1;
    unsigned int PINAOVRUN : 1;
    unsigned int PINBWKP : 1;
    unsigned int PINBOVRUN : 1;
    unsigned int reserved_8 : 1;
    unsigned int PORSTDF : 1;
    unsigned int HWCFGEVR : 3;
    unsigned int STBYRAM : 2;
    unsigned int reserved_15 : 1;
    unsigned int WUTWKP : 1;
    unsigned int WUTOVRUN : 1;
    unsigned int reserved_18 : 1;
    unsigned int WUTWKEN : 1;
    unsigned int ESR1WKEN : 1;
    unsigned int PINAWKEN : 1;
    unsigned int PINBWKEN : 1;
    unsigned int reserved_23 : 4;
    unsigned int ESR0TRIST : 1;
    unsigned int reserved_28 : 1;
    unsigned int WUTEN : 1;
    unsigned int WUTMODE : 1;
    unsigned int WUTRUN : 1;
} Ifx_SCU_PMSWSTAT_Bits;


typedef struct _Ifx_SCU_PMSWSTATCLR_Bits
{
    unsigned int reserved_0 : 2;
    unsigned int ESR1WKPCLR : 1;
    unsigned int ESR1OVRUNCLR : 1;
    unsigned int PINAWKPCLR : 1;
    unsigned int PINAOVRUNCLR : 1;
    unsigned int PINBWKPCLR : 1;
    unsigned int PINBOVRUNCLR : 1;
    unsigned int reserved_8 : 8;
    unsigned int WUTWKPCLR : 1;
    unsigned int WUTOVRUNCLR : 1;
    unsigned int reserved_18 : 14;
} Ifx_SCU_PMSWSTATCLR_Bits;


typedef struct _Ifx_SCU_PMSWUTCNT_Bits
{
    unsigned int WUTCNT : 24;
    unsigned int reserved_24 : 7;
    unsigned int VAL : 1;
} Ifx_SCU_PMSWUTCNT_Bits;


typedef struct _Ifx_SCU_RSTCON2_Bits
{
    unsigned int reserved_0 : 1;
    unsigned int CLRC : 1;
    unsigned int reserved_2 : 10;
    unsigned int CSS0 : 1;
    unsigned int CSS1 : 1;
    unsigned int CSS2 : 1;
    unsigned int reserved_15 : 1;
    unsigned int USRINFO : 16;
} Ifx_SCU_RSTCON2_Bits;


typedef struct _Ifx_SCU_RSTCON_Bits
{
    unsigned int ESR0 : 2;
    unsigned int ESR1 : 2;
    unsigned int reserved_4 : 2;
    unsigned int SMU : 2;
    unsigned int SW : 2;
    unsigned int STM0 : 2;
    unsigned int STM1 : 2;
    unsigned int STM2 : 2;
    unsigned int reserved_16 : 16;
} Ifx_SCU_RSTCON_Bits;


typedef struct _Ifx_SCU_RSTSTAT_Bits
{
    unsigned int ESR0 : 1;
    unsigned int ESR1 : 1;
    unsigned int reserved_2 : 1;
    unsigned int SMU : 1;
    unsigned int SW : 1;
    unsigned int STM0 : 1;
    unsigned int STM1 : 1;
    unsigned int STM2 : 1;
    unsigned int reserved_8 : 8;
    unsigned int PORST : 1;
    unsigned int reserved_17 : 1;
    unsigned int CB0 : 1;
    unsigned int CB1 : 1;
    unsigned int CB3 : 1;
    unsigned int reserved_21 : 2;
    unsigned int EVR13 : 1;
    unsigned int EVR33 : 1;
    unsigned int SWD : 1;
    unsigned int reserved_26 : 2;
    unsigned int STBYR : 1;
    unsigned int reserved_29 : 3;
} Ifx_SCU_RSTSTAT_Bits;


typedef struct _Ifx_SCU_SAFECON_Bits
{
    unsigned int HBT : 1;
    unsigned int reserved_1 : 31;
} Ifx_SCU_SAFECON_Bits;


typedef struct _Ifx_SCU_STSTAT_Bits
{
    unsigned int HWCFG : 8;
    unsigned int FTM : 7;
    unsigned int MODE : 1;
    unsigned int FCBAE : 1;
    unsigned int LUDIS : 1;
    unsigned int reserved_18 : 1;
    unsigned int TRSTL : 1;
    unsigned int SPDEN : 1;
    unsigned int reserved_21 : 3;
    unsigned int RAMINT : 1;
    unsigned int reserved_25 : 7;
} Ifx_SCU_STSTAT_Bits;


typedef struct _Ifx_SCU_SWRSTCON_Bits
{
    unsigned int reserved_0 : 1;
    unsigned int SWRSTREQ : 1;
    unsigned int reserved_2 : 30;
} Ifx_SCU_SWRSTCON_Bits;


typedef struct _Ifx_SCU_SYSCON_Bits
{
    unsigned int CCTRIG0 : 1;
    unsigned int reserved_1 : 1;
    unsigned int RAMINTM : 2;
    unsigned int SETLUDIS : 1;
    unsigned int reserved_5 : 3;
    unsigned int DATM : 1;
    unsigned int reserved_9 : 23;
} Ifx_SCU_SYSCON_Bits;


typedef struct _Ifx_SCU_TRAPCLR_Bits
{
    unsigned int ESR0T : 1;
    unsigned int ESR1T : 1;
    unsigned int reserved_2 : 1;
    unsigned int SMUT : 1;
    unsigned int reserved_4 : 28;
} Ifx_SCU_TRAPCLR_Bits;


typedef struct _Ifx_SCU_TRAPDIS_Bits
{
    unsigned int ESR0T : 1;
    unsigned int ESR1T : 1;
    unsigned int reserved_2 : 1;
    unsigned int SMUT : 1;
    unsigned int reserved_4 : 28;
} Ifx_SCU_TRAPDIS_Bits;


typedef struct _Ifx_SCU_TRAPSET_Bits
{
    unsigned int ESR0T : 1;
    unsigned int ESR1T : 1;
    unsigned int reserved_2 : 1;
    unsigned int SMUT : 1;
    unsigned int reserved_4 : 28;
} Ifx_SCU_TRAPSET_Bits;


typedef struct _Ifx_SCU_TRAPSTAT_Bits
{
    unsigned int ESR0T : 1;
    unsigned int ESR1T : 1;
    unsigned int reserved_2 : 1;
    unsigned int SMUT : 1;
    unsigned int reserved_4 : 28;
} Ifx_SCU_TRAPSTAT_Bits;


typedef struct _Ifx_SCU_WDTCPU_CON0_Bits
{
    volatile unsigned int ENDINIT : 1;
    volatile unsigned int LCK : 1;
    volatile unsigned int PW : 14;
    volatile unsigned int REL : 16;
} Ifx_SCU_WDTCPU_CON0_Bits;


typedef struct _Ifx_SCU_WDTCPU_CON1_Bits
{
    unsigned int reserved_0 : 2;
    unsigned int IR0 : 1;
    unsigned int DR : 1;
    unsigned int reserved_4 : 1;
    unsigned int IR1 : 1;
    unsigned int UR : 1;
    unsigned int PAR : 1;
    unsigned int TCR : 1;
    unsigned int TCTR : 7;
    unsigned int reserved_16 : 16;
} Ifx_SCU_WDTCPU_CON1_Bits;


typedef struct _Ifx_SCU_WDTCPU_SR_Bits
{
    unsigned int AE : 1;
    unsigned int OE : 1;
    unsigned int IS0 : 1;
    unsigned int DS : 1;
    unsigned int TO : 1;
    unsigned int IS1 : 1;
    unsigned int US : 1;
    unsigned int PAS : 1;
    unsigned int TCS : 1;
    unsigned int TCT : 7;
    unsigned int TIM : 16;
} Ifx_SCU_WDTCPU_SR_Bits;


typedef struct _Ifx_SCU_WDTS_CON0_Bits
{
    volatile unsigned int ENDINIT : 1;
    volatile unsigned int LCK : 1;
    volatile unsigned int PW : 14;
    volatile unsigned int REL : 16;
} Ifx_SCU_WDTS_CON0_Bits;


typedef struct _Ifx_SCU_WDTS_CON1_Bits
{
    unsigned int CLRIRF : 1;
    unsigned int reserved_1 : 1;
    unsigned int IR0 : 1;
    unsigned int DR : 1;
    unsigned int reserved_4 : 1;
    unsigned int IR1 : 1;
    unsigned int UR : 1;
    unsigned int PAR : 1;
    unsigned int TCR : 1;
    unsigned int TCTR : 7;
    unsigned int reserved_16 : 16;
} Ifx_SCU_WDTS_CON1_Bits;


typedef struct _Ifx_SCU_WDTS_SR_Bits
{
    unsigned int AE : 1;
    unsigned int OE : 1;
    unsigned int IS0 : 1;
    unsigned int DS : 1;
    unsigned int TO : 1;
    unsigned int IS1 : 1;
    unsigned int US : 1;
    unsigned int PAS : 1;
    unsigned int TCS : 1;
    unsigned int TCT : 7;
    unsigned int TIM : 16;
} Ifx_SCU_WDTS_SR_Bits;







typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_ACCEN0_Bits B;
} Ifx_SCU_ACCEN0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_ACCEN1_Bits B;
} Ifx_SCU_ACCEN1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_ARSTDIS_Bits B;
} Ifx_SCU_ARSTDIS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_CCUCON0_Bits B;
} Ifx_SCU_CCUCON0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_CCUCON1_Bits B;
} Ifx_SCU_CCUCON1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_CCUCON2_Bits B;
} Ifx_SCU_CCUCON2;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_CCUCON3_Bits B;
} Ifx_SCU_CCUCON3;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_CCUCON4_Bits B;
} Ifx_SCU_CCUCON4;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_CCUCON5_Bits B;
} Ifx_SCU_CCUCON5;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_CCUCON6_Bits B;
} Ifx_SCU_CCUCON6;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_CHIPID_Bits B;
} Ifx_SCU_CHIPID;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_DTSCON_Bits B;
} Ifx_SCU_DTSCON;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_DTSLIM_Bits B;
} Ifx_SCU_DTSLIM;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_DTSSTAT_Bits B;
} Ifx_SCU_DTSSTAT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_EICR_Bits B;
} Ifx_SCU_EICR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_EIFR_Bits B;
} Ifx_SCU_EIFR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_EMSR_Bits B;
} Ifx_SCU_EMSR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_ESRCFG_Bits B;
} Ifx_SCU_ESRCFG;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_ESROCFG_Bits B;
} Ifx_SCU_ESROCFG;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_EVR13CON_Bits B;
} Ifx_SCU_EVR13CON;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_EVRADCSTAT_Bits B;
} Ifx_SCU_EVRADCSTAT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_EVRMONCTRL_Bits B;
} Ifx_SCU_EVRMONCTRL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_EVROVMON_Bits B;
} Ifx_SCU_EVROVMON;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_EVRRSTCON_Bits B;
} Ifx_SCU_EVRRSTCON;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_EVRSDCOEFF2_Bits B;
} Ifx_SCU_EVRSDCOEFF2;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_EVRSDCTRL1_Bits B;
} Ifx_SCU_EVRSDCTRL1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_EVRSDCTRL2_Bits B;
} Ifx_SCU_EVRSDCTRL2;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_EVRSDCTRL3_Bits B;
} Ifx_SCU_EVRSDCTRL3;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_EVRSTAT_Bits B;
} Ifx_SCU_EVRSTAT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_EVRUVMON_Bits B;
} Ifx_SCU_EVRUVMON;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_EXTCON_Bits B;
} Ifx_SCU_EXTCON;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_FDR_Bits B;
} Ifx_SCU_FDR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_FMR_Bits B;
} Ifx_SCU_FMR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_ID_Bits B;
} Ifx_SCU_ID;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_IGCR_Bits B;
} Ifx_SCU_IGCR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_IN_Bits B;
} Ifx_SCU_IN;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_IOCR_Bits B;
} Ifx_SCU_IOCR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_LBISTCTRL0_Bits B;
} Ifx_SCU_LBISTCTRL0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_LBISTCTRL1_Bits B;
} Ifx_SCU_LBISTCTRL1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_LBISTCTRL2_Bits B;
} Ifx_SCU_LBISTCTRL2;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_LCLCON0_Bits B;
} Ifx_SCU_LCLCON0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_LCLTEST_Bits B;
} Ifx_SCU_LCLTEST;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_MANID_Bits B;
} Ifx_SCU_MANID;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_OMR_Bits B;
} Ifx_SCU_OMR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_OSCCON_Bits B;
} Ifx_SCU_OSCCON;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_OUT_Bits B;
} Ifx_SCU_OUT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_OVCCON_Bits B;
} Ifx_SCU_OVCCON;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_OVCENABLE_Bits B;
} Ifx_SCU_OVCENABLE;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_PDISC_Bits B;
} Ifx_SCU_PDISC;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_PDR_Bits B;
} Ifx_SCU_PDR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_PDRR_Bits B;
} Ifx_SCU_PDRR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_PLLCON0_Bits B;
} Ifx_SCU_PLLCON0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_PLLCON1_Bits B;
} Ifx_SCU_PLLCON1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_PLLCON2_Bits B;
} Ifx_SCU_PLLCON2;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_PLLERAYCON0_Bits B;
} Ifx_SCU_PLLERAYCON0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_PLLERAYCON1_Bits B;
} Ifx_SCU_PLLERAYCON1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_PLLERAYSTAT_Bits B;
} Ifx_SCU_PLLERAYSTAT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_PLLSTAT_Bits B;
} Ifx_SCU_PLLSTAT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_PMCSR_Bits B;
} Ifx_SCU_PMCSR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_PMSWCR0_Bits B;
} Ifx_SCU_PMSWCR0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_PMSWCR1_Bits B;
} Ifx_SCU_PMSWCR1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_PMSWCR3_Bits B;
} Ifx_SCU_PMSWCR3;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_PMSWSTAT_Bits B;
} Ifx_SCU_PMSWSTAT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_PMSWSTATCLR_Bits B;
} Ifx_SCU_PMSWSTATCLR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_PMSWUTCNT_Bits B;
} Ifx_SCU_PMSWUTCNT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_RSTCON_Bits B;
} Ifx_SCU_RSTCON;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_RSTCON2_Bits B;
} Ifx_SCU_RSTCON2;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_RSTSTAT_Bits B;
} Ifx_SCU_RSTSTAT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_SAFECON_Bits B;
} Ifx_SCU_SAFECON;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_STSTAT_Bits B;
} Ifx_SCU_STSTAT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_SWRSTCON_Bits B;
} Ifx_SCU_SWRSTCON;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_SYSCON_Bits B;
} Ifx_SCU_SYSCON;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_TRAPCLR_Bits B;
} Ifx_SCU_TRAPCLR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_TRAPDIS_Bits B;
} Ifx_SCU_TRAPDIS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_TRAPSET_Bits B;
} Ifx_SCU_TRAPSET;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_TRAPSTAT_Bits B;
} Ifx_SCU_TRAPSTAT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_WDTCPU_CON0_Bits B;
} Ifx_SCU_WDTCPU_CON0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_WDTCPU_CON1_Bits B;
} Ifx_SCU_WDTCPU_CON1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_WDTCPU_SR_Bits B;
} Ifx_SCU_WDTCPU_SR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_WDTS_CON0_Bits B;
} Ifx_SCU_WDTS_CON0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_WDTS_CON1_Bits B;
} Ifx_SCU_WDTS_CON1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_WDTS_SR_Bits B;
} Ifx_SCU_WDTS_SR;
# 1779 "../30_Bsw/Common/TC21x/IfxScu_regdef.h"
typedef volatile struct _Ifx_SCU_WDTCPU
{
    Ifx_SCU_WDTCPU_CON0 CON0;
    Ifx_SCU_WDTCPU_CON1 CON1;
    Ifx_SCU_WDTCPU_SR SR;
} Ifx_SCU_WDTCPU;


typedef volatile struct _Ifx_SCU_WDTS
{
    Ifx_SCU_WDTS_CON0 CON0;
    Ifx_SCU_WDTS_CON1 CON1;
    Ifx_SCU_WDTS_SR SR;
} Ifx_SCU_WDTS;
# 1805 "../30_Bsw/Common/TC21x/IfxScu_regdef.h"
typedef volatile struct _Ifx_SCU
{
    unsigned char reserved_0[8];
    Ifx_SCU_ID ID;
    unsigned char reserved_C[4];
    Ifx_SCU_OSCCON OSCCON;
    Ifx_SCU_PLLSTAT PLLSTAT;
    Ifx_SCU_PLLCON0 PLLCON0;
    Ifx_SCU_PLLCON1 PLLCON1;
    Ifx_SCU_PLLCON2 PLLCON2;
    Ifx_SCU_PLLERAYSTAT PLLERAYSTAT;
    Ifx_SCU_PLLERAYCON0 PLLERAYCON0;
    Ifx_SCU_PLLERAYCON1 PLLERAYCON1;
    Ifx_SCU_CCUCON0 CCUCON0;
    Ifx_SCU_CCUCON1 CCUCON1;
    Ifx_SCU_FDR FDR;
    Ifx_SCU_EXTCON EXTCON;
    Ifx_SCU_CCUCON2 CCUCON2;
    Ifx_SCU_CCUCON3 CCUCON3;
    Ifx_SCU_CCUCON4 CCUCON4;
    Ifx_SCU_CCUCON5 CCUCON5;
    Ifx_SCU_RSTSTAT RSTSTAT;
    unsigned char reserved_54[4];
    Ifx_SCU_RSTCON RSTCON;
    Ifx_SCU_ARSTDIS ARSTDIS;
    Ifx_SCU_SWRSTCON SWRSTCON;
    Ifx_SCU_RSTCON2 RSTCON2;
    unsigned char reserved_68[4];
    Ifx_SCU_EVRRSTCON EVRRSTCON;
    Ifx_SCU_ESRCFG ESRCFG[2];
    Ifx_SCU_ESROCFG ESROCFG;
    Ifx_SCU_SYSCON SYSCON;
    Ifx_SCU_CCUCON6 CCUCON6;
    unsigned char reserved_84[24];
    Ifx_SCU_PDR PDR;
    Ifx_SCU_IOCR IOCR;
    Ifx_SCU_OUT OUT;
    Ifx_SCU_OMR OMR;
    Ifx_SCU_IN IN;
    Ifx_SCU_EVRSTAT EVRSTAT;
    unsigned char reserved_B4[4];
    Ifx_SCU_EVR13CON EVR13CON;
    unsigned char reserved_BC[4];
    Ifx_SCU_STSTAT STSTAT;
    unsigned char reserved_C4[4];
    Ifx_SCU_PMSWCR0 PMSWCR0;
    Ifx_SCU_PMSWSTAT PMSWSTAT;
    Ifx_SCU_PMSWSTATCLR PMSWSTATCLR;
    Ifx_SCU_PMCSR PMCSR[1];
    unsigned char reserved_D8[8];
    Ifx_SCU_DTSSTAT DTSSTAT;
    Ifx_SCU_DTSCON DTSCON;
    Ifx_SCU_PMSWCR1 PMSWCR1;
    unsigned char reserved_EC[4];
    Ifx_SCU_WDTS WDTS;
    Ifx_SCU_EMSR EMSR;
    Ifx_SCU_WDTCPU WDTCPU[1];
    unsigned char reserved_10C[24];
    Ifx_SCU_TRAPSTAT TRAPSTAT;
    Ifx_SCU_TRAPSET TRAPSET;
    Ifx_SCU_TRAPCLR TRAPCLR;
    Ifx_SCU_TRAPDIS TRAPDIS;
    Ifx_SCU_LCLCON0 LCLCON0;
    unsigned char reserved_138[4];
    Ifx_SCU_LCLTEST LCLTEST;
    Ifx_SCU_CHIPID CHIPID;
    Ifx_SCU_MANID MANID;
    unsigned char reserved_148[8];
    Ifx_SCU_SAFECON SAFECON;
    unsigned char reserved_154[16];
    Ifx_SCU_LBISTCTRL0 LBISTCTRL0;
    Ifx_SCU_LBISTCTRL1 LBISTCTRL1;
    Ifx_SCU_LBISTCTRL2 LBISTCTRL2;
    unsigned char reserved_170[28];
    Ifx_SCU_PDISC PDISC;
    unsigned char reserved_190[12];
    Ifx_SCU_EVRADCSTAT EVRADCSTAT;
    Ifx_SCU_EVRUVMON EVRUVMON;
    Ifx_SCU_EVROVMON EVROVMON;
    Ifx_SCU_EVRMONCTRL EVRMONCTRL;
    unsigned char reserved_1AC[4];
    Ifx_SCU_EVRSDCTRL1 EVRSDCTRL1;
    Ifx_SCU_EVRSDCTRL2 EVRSDCTRL2;
    Ifx_SCU_EVRSDCTRL3 EVRSDCTRL3;
    unsigned char reserved_1BC[8];
    Ifx_SCU_EVRSDCOEFF2 EVRSDCOEFF2;
    unsigned char reserved_1C8[20];
    Ifx_SCU_PMSWUTCNT PMSWUTCNT;
    Ifx_SCU_OVCENABLE OVCENABLE;
    Ifx_SCU_OVCCON OVCCON;
    unsigned char reserved_1E8[40];
    Ifx_SCU_EICR EICR[4];
    Ifx_SCU_EIFR EIFR;
    Ifx_SCU_FMR FMR;
    Ifx_SCU_PDRR PDRR;
    Ifx_SCU_IGCR IGCR[4];
    unsigned char reserved_23C[4];
    Ifx_SCU_DTSLIM DTSLIM;
    unsigned char reserved_244[188];
    Ifx_SCU_PMSWCR3 PMSWCR3;
    unsigned char reserved_304[244];
    Ifx_SCU_ACCEN1 ACCEN1;
    Ifx_SCU_ACCEN0 ACCEN0;
} Ifx_SCU;
# 37 "../30_Bsw/Common/TC21x/IfxScu_reg.h" 2
# 49 "../30_Bsw/Mcal/Scu/IfxScuWdt.h" 2
# 58 "../30_Bsw/Mcal/Scu/IfxScuWdt.h"
typedef struct
{
    uint16 password;
    uint16 reload;
    IfxScu_WDTCON1_IR inputFrequency;
    boolean disableWatchdog;
    boolean enableSmuRestriction;
    boolean enableAutomaticPasswordChange;
    boolean enableTimerCheck;
    boolean enableTimerCheckTolerance;
    boolean clrInternalResetFlag;
} IfxScuWdt_Config;
# 86 "../30_Bsw/Mcal/Scu/IfxScuWdt.h"
extern void IfxScuWdt_initConfig(IfxScuWdt_Config *config);
# 99 "../30_Bsw/Mcal/Scu/IfxScuWdt.h"
extern void IfxScuWdt_initCpuWatchdog(Ifx_SCU_WDTCPU *wdt, IfxScuWdt_Config *config);
# 112 "../30_Bsw/Mcal/Scu/IfxScuWdt.h"
extern void IfxScuWdt_initSafetyWatchdog(Ifx_SCU_WDTS *wdt, IfxScuWdt_Config *config);
# 135 "../30_Bsw/Mcal/Scu/IfxScuWdt.h"
static inline __attribute__ ((always_inline)) void IfxScuWdt_clearCpuEndinitInline(Ifx_SCU_WDTCPU *watchdog, uint16 password);
# 148 "../30_Bsw/Mcal/Scu/IfxScuWdt.h"
static inline __attribute__ ((always_inline)) void IfxScuWdt_clearSafetyEndinitInline(uint16 password);
# 160 "../30_Bsw/Mcal/Scu/IfxScuWdt.h"
static inline __attribute__ ((always_inline)) void IfxScuWdt_setCpuEndinitInline(Ifx_SCU_WDTCPU *watchdog, uint16 password);
# 171 "../30_Bsw/Mcal/Scu/IfxScuWdt.h"
static inline __attribute__ ((always_inline)) void IfxScuWdt_setSafetyEndinitInline(uint16 password);
# 187 "../30_Bsw/Mcal/Scu/IfxScuWdt.h"
extern void IfxScuWdt_clearCpuEndinit(uint16 password);
# 199 "../30_Bsw/Mcal/Scu/IfxScuWdt.h"
extern void IfxScuWdt_clearSafetyEndinit(uint16 password);
# 209 "../30_Bsw/Mcal/Scu/IfxScuWdt.h"
extern void IfxScuWdt_setCpuEndinit(uint16 password);
# 219 "../30_Bsw/Mcal/Scu/IfxScuWdt.h"
extern void IfxScuWdt_setSafetyEndinit(uint16 password);
# 239 "../30_Bsw/Mcal/Scu/IfxScuWdt.h"
static inline __attribute__ ((always_inline)) uint16 IfxScuWdt_getCpuWatchdogPasswordInline(Ifx_SCU_WDTCPU *watchdog);




static inline __attribute__ ((always_inline)) boolean IfxScuWdt_getSafetyWatchdogEndInit(void);
# 254 "../30_Bsw/Mcal/Scu/IfxScuWdt.h"
static inline __attribute__ ((always_inline)) uint16 IfxScuWdt_getSafetyWatchdogPasswordInline(void);
# 268 "../30_Bsw/Mcal/Scu/IfxScuWdt.h"
extern void IfxScuWdt_changeCpuWatchdogPassword(uint16 password, uint16 newPassword);
# 279 "../30_Bsw/Mcal/Scu/IfxScuWdt.h"
extern void IfxScuWdt_changeCpuWatchdogReload(uint16 password, uint16 reload);
# 289 "../30_Bsw/Mcal/Scu/IfxScuWdt.h"
extern void IfxScuWdt_changeSafetyWatchdogPassword(uint16 password, uint16 newPassword);
# 300 "../30_Bsw/Mcal/Scu/IfxScuWdt.h"
extern void IfxScuWdt_changeSafetyWatchdogReload(uint16 password, uint16 reload);
# 310 "../30_Bsw/Mcal/Scu/IfxScuWdt.h"
extern void IfxScuWdt_disableCpuWatchdog(uint16 password);
# 320 "../30_Bsw/Mcal/Scu/IfxScuWdt.h"
extern void IfxScuWdt_disableSafetyWatchdog(uint16 password);
# 330 "../30_Bsw/Mcal/Scu/IfxScuWdt.h"
extern void IfxScuWdt_enableCpuWatchdog(uint16 password);
# 340 "../30_Bsw/Mcal/Scu/IfxScuWdt.h"
extern void IfxScuWdt_enableSafetyWatchdog(uint16 password);
# 349 "../30_Bsw/Mcal/Scu/IfxScuWdt.h"
extern uint16 IfxScuWdt_getCpuWatchdogPassword(void);
# 358 "../30_Bsw/Mcal/Scu/IfxScuWdt.h"
extern uint16 IfxScuWdt_getSafetyWatchdogPassword(void);
# 368 "../30_Bsw/Mcal/Scu/IfxScuWdt.h"
extern void IfxScuWdt_serviceCpuWatchdog(uint16 password);
# 378 "../30_Bsw/Mcal/Scu/IfxScuWdt.h"
extern void IfxScuWdt_serviceSafetyWatchdog(uint16 password);







static inline __attribute__ ((always_inline)) void IfxScuWdt_clearCpuEndinitInline(Ifx_SCU_WDTCPU *watchdog, uint16 password)
{

    Ifx_SCU_WDTCPU_CON0 wdt_con0;
    wdt_con0.U = watchdog->CON0.U;

    if (wdt_con0.B.LCK)
    {

        wdt_con0.B.ENDINIT = 1;
        wdt_con0.B.LCK = 0;
        wdt_con0.B.PW = password;


        watchdog->CON0.U = wdt_con0.U;
    }


    wdt_con0.B.ENDINIT = 0;
    wdt_con0.B.LCK = 1;
    watchdog->CON0.U = wdt_con0.U;


    while (watchdog->CON0.B.ENDINIT == 1)
    {}
}


static inline __attribute__ ((always_inline)) void IfxScuWdt_clearSafetyEndinitInline(uint16 password)
{
    Ifx_SCU_WDTS *watchdog = &(*(Ifx_SCU *)0xF0036000u).WDTS;

    Ifx_SCU_WDTS_CON0 wdt_con0;
    wdt_con0.U = watchdog->CON0.U;

    if (wdt_con0.B.LCK)
    {

        wdt_con0.B.ENDINIT = 1;
        wdt_con0.B.LCK = 0;
        wdt_con0.B.PW = password;


        watchdog->CON0.U = wdt_con0.U;
    }


    wdt_con0.B.ENDINIT = 0;
    wdt_con0.B.LCK = 1;
    watchdog->CON0.U = wdt_con0.U;


    while (watchdog->CON0.B.ENDINIT == 1)
    {}
}


static inline __attribute__ ((always_inline)) uint16 IfxScuWdt_getCpuWatchdogPasswordInline(Ifx_SCU_WDTCPU *watchdog)
{
    uint16 password;




    password = watchdog->CON0.B.PW;
    password ^= 0x003F;

    return password;
}


static inline __attribute__ ((always_inline)) boolean IfxScuWdt_getSafetyWatchdogEndInit(void)
{
    return (boolean)(*(Ifx_SCU *)0xF0036000u).WDTS.CON0.B.ENDINIT;
}


static inline __attribute__ ((always_inline)) uint16 IfxScuWdt_getSafetyWatchdogPasswordInline(void)
{
    uint16 password;
    Ifx_SCU_WDTS *watchdog = &(*(Ifx_SCU *)0xF0036000u).WDTS;




    password = watchdog->CON0.B.PW;
    password ^= 0x003F;

    return password;
}


static inline __attribute__ ((always_inline)) void IfxScuWdt_setCpuEndinitInline(Ifx_SCU_WDTCPU *watchdog, uint16 password)
{

    Ifx_SCU_WDTCPU_CON0 wdt_con0;
    wdt_con0.U = watchdog->CON0.U;

    if (wdt_con0.B.LCK)
    {

        wdt_con0.B.ENDINIT = 1;
        wdt_con0.B.LCK = 0;
        wdt_con0.B.PW = password;


        watchdog->CON0.U = wdt_con0.U;
    }


    wdt_con0.B.ENDINIT = 1;
    wdt_con0.B.LCK = 1;
    watchdog->CON0.U = wdt_con0.U;


    while (watchdog->CON0.B.ENDINIT == 0)
    {}


}


static inline __attribute__ ((always_inline)) void IfxScuWdt_setSafetyEndinitInline(uint16 password)
{
    Ifx_SCU_WDTS *watchdog = &(*(Ifx_SCU *)0xF0036000u).WDTS;


    Ifx_SCU_WDTS_CON0 wdt_con0;
    wdt_con0.U = watchdog->CON0.U;

    if (wdt_con0.B.LCK)
    {

        wdt_con0.B.ENDINIT = 1;
        wdt_con0.B.LCK = 0;
        wdt_con0.B.PW = password;


        watchdog->CON0.U = wdt_con0.U;
    }


    wdt_con0.B.ENDINIT = 1;
    wdt_con0.B.LCK = 1;
    watchdog->CON0.U = wdt_con0.U;


    while (watchdog->CON0.B.ENDINIT == 0)
    {}
}
# 24 "../30_Bsw/Mcal/Port/Port_cfg.h" 2
# 42 "../30_Bsw/Mcal/Port/Port_cfg.h"
extern void Port_Cfg(void);
# 7 "../30_Bsw/Mcal/Port/Port_api.h" 2
# 1 "../30_Bsw/Mcal/Port/Port_scb.h" 1





extern u16 WdgCnt;
extern u16 WdgEnable;
extern u16 PortOtpAutoDiagEn;


extern void Port_Init(void);
extern void SBC_Triger100us(void);
extern void ORU_LatchTest1ms(void);
extern void Port_OTP_AutoDiag10ms(void);
# 8 "../30_Bsw/Mcal/Port/Port_api.h" 2
# 1 "../40_Appl/HsfbApp/HsfbApp_ErrReset.h" 1
# 21 "../40_Appl/HsfbApp/HsfbApp_ErrReset.h"
# 1 "../30_Bsw/Common/rtwtypes.h" 1
# 22 "../40_Appl/HsfbApp/HsfbApp_ErrReset.h" 2

extern void HsfbApp_ErrReset(bit en, bit u);
# 9 "../30_Bsw/Mcal/Port/Port_api.h" 2
# 1 "../40_Appl/HsfbSafety/HsfbSafety_SetClrAutoDiag.h" 1
# 23 "../40_Appl/HsfbSafety/HsfbSafety_SetClrAutoDiag.h"
extern void HsfbSafety_SetClrAutoDiag(bit en, u16 type);
# 10 "../30_Bsw/Mcal/Port/Port_api.h" 2
# 110 "../30_Bsw/Mcal/Port/Port_api.h"
typedef enum PORT_E_DI{
 PORT_E_FastTurnOff = 0,
 PORT_E_PriDriveDis,
 PORT_E_SrDriveEn,
 PORT_E_IpriCbc,
 PORT_E_IpriOcp,
 PORT_E_VinOvp,
 PORT_E_IoutPOcp,
 PORT_E_IoutNOcp,
 PORT_E_Vout16VOvp,
 PORT_E_Vout19VOvp,
 PORT_E_WaterOutOtp
} PORT_E_DI;

typedef struct PORT_S_PT{
    u32 *Port;
    u16 Pin;
} PORT_S_PT;

typedef enum {
    GPIO_E_ENDIS_Disable = 0,
    GPIO_E_ENDIS_Enable
} GPIO_E_ENDIS;

typedef enum {
    GPIO_E_FAULT_None = 0,
    GPIO_E_FAULT_Fault
} GPIO_E_FAULT;

typedef enum {
    GPIO_E_RESET_None = 0,
    GPIO_E_RESET_Reset
} GPIO_E_RESET;

typedef struct{
 GPIO_E_ENDIS EnByCom;
 GPIO_E_FAULT OcpCt;
 GPIO_E_FAULT OcpIout;
 GPIO_E_FAULT OcpIoutN;
 GPIO_E_FAULT OvpHv;
 GPIO_E_FAULT Ovp1Lv;
 GPIO_E_FAULT Ovp2Lv;
 GPIO_E_ENDIS DrvStatePri;
 GPIO_E_ENDIS DrvStateSR;
 GPIO_E_FAULT CbcCt;
 GPIO_E_FAULT OtpHw;
} GPIO_S_STATUS;


extern PORT_S_PT PortInPt[11];
extern bit PortAutoDiagFin;
extern bit PortAutoDiagErr[4];
extern u16 KLDiagFlag;
extern u16 WdgCnt;
extern u16 WdgEnable;
extern u16 PortOtpAutoDiagEn;
extern u16 PortDisHSK;

extern void Port_Init(void);
extern void Port_StartUp(void);
extern void Port_AutoDiag(void);
extern void KL30_AutoDiag(void);
extern void SBC_Triger100us(void);
extern void ORU_LatchTest1ms(void);
extern void Port_OTP_AutoDiag10ms(void);
extern void Port_AuxPower_EnDis10ms(void);
# 20 "../30_Bsw/Mcal/Port/Port.c" 2


# 1 "../30_Bsw/Mcal/Port/Port_scfg.h" 1
# 23 "../30_Bsw/Mcal/Port/Port.c" 2
# 1 "../30_Bsw/Main/Main_api.h" 1



# 1 "../20_Make/project.h" 1
# 5 "../30_Bsw/Main/Main_api.h" 2

# 1 "../30_Bsw/Common/Delta_commen/StandardTypes.h" 1
# 7 "../30_Bsw/Main/Main_api.h" 2
# 1 "../30_Bsw/Common/Delta_commen/StandardMacros.h" 1
# 8 "../30_Bsw/Main/Main_api.h" 2
# 1 "../30_Bsw/Safety/Safety_cfg.h" 1
# 24 "../30_Bsw/Safety/Safety_cfg.h"
# 1 "../30_Bsw/Common/mcu_cfg.h" 1
# 22 "../30_Bsw/Common/mcu_cfg.h"
# 1 "../30_Bsw/Compilers/CompilerGnuc.h" 1
# 23 "../30_Bsw/Common/mcu_cfg.h" 2
# 25 "../30_Bsw/Safety/Safety_cfg.h" 2


# 1 "../30_Bsw/Common/TC21x/IfxSmu_reg.h" 1
# 36 "../30_Bsw/Common/TC21x/IfxSmu_reg.h"
# 1 "../30_Bsw/Common/TC21x/IfxSmu_regdef.h" 1
# 45 "../30_Bsw/Common/TC21x/IfxSmu_regdef.h"
typedef struct _Ifx_SMU_ACCEN0_Bits
{
    volatile unsigned int EN0 : 1;
    volatile unsigned int EN1 : 1;
    volatile unsigned int EN2 : 1;
    volatile unsigned int EN3 : 1;
    volatile unsigned int EN4 : 1;
    volatile unsigned int EN5 : 1;
    volatile unsigned int EN6 : 1;
    volatile unsigned int EN7 : 1;
    volatile unsigned int EN8 : 1;
    volatile unsigned int EN9 : 1;
    volatile unsigned int EN10 : 1;
    volatile unsigned int EN11 : 1;
    volatile unsigned int EN12 : 1;
    volatile unsigned int EN13 : 1;
    volatile unsigned int EN14 : 1;
    volatile unsigned int EN15 : 1;
    volatile unsigned int EN16 : 1;
    volatile unsigned int EN17 : 1;
    volatile unsigned int EN18 : 1;
    volatile unsigned int EN19 : 1;
    volatile unsigned int EN20 : 1;
    volatile unsigned int EN21 : 1;
    volatile unsigned int EN22 : 1;
    volatile unsigned int EN23 : 1;
    volatile unsigned int EN24 : 1;
    volatile unsigned int EN25 : 1;
    volatile unsigned int EN26 : 1;
    volatile unsigned int EN27 : 1;
    volatile unsigned int EN28 : 1;
    volatile unsigned int EN29 : 1;
    volatile unsigned int EN30 : 1;
    volatile unsigned int EN31 : 1;
} Ifx_SMU_ACCEN0_Bits;


typedef struct _Ifx_SMU_ACCEN1_Bits
{
    volatile unsigned int reserved_0 : 32;
} Ifx_SMU_ACCEN1_Bits;


typedef struct _Ifx_SMU_AD_Bits
{
    volatile unsigned int DF0 : 1;
    volatile unsigned int DF1 : 1;
    volatile unsigned int DF2 : 1;
    volatile unsigned int DF3 : 1;
    volatile unsigned int DF4 : 1;
    volatile unsigned int DF5 : 1;
    volatile unsigned int DF6 : 1;
    volatile unsigned int DF7 : 1;
    volatile unsigned int DF8 : 1;
    volatile unsigned int DF9 : 1;
    volatile unsigned int DF10 : 1;
    volatile unsigned int DF11 : 1;
    volatile unsigned int DF12 : 1;
    volatile unsigned int DF13 : 1;
    volatile unsigned int DF14 : 1;
    volatile unsigned int DF15 : 1;
    volatile unsigned int DF16 : 1;
    volatile unsigned int DF17 : 1;
    volatile unsigned int DF18 : 1;
    volatile unsigned int DF19 : 1;
    volatile unsigned int DF20 : 1;
    volatile unsigned int DF21 : 1;
    volatile unsigned int DF22 : 1;
    volatile unsigned int DF23 : 1;
    volatile unsigned int DF24 : 1;
    volatile unsigned int DF25 : 1;
    volatile unsigned int DF26 : 1;
    volatile unsigned int DF27 : 1;
    volatile unsigned int DF28 : 1;
    volatile unsigned int DF29 : 1;
    volatile unsigned int DF30 : 1;
    volatile unsigned int DF31 : 1;
} Ifx_SMU_AD_Bits;


typedef struct _Ifx_SMU_AFCNT_Bits
{
    volatile unsigned int FCNT : 4;
    volatile unsigned int reserved_4 : 4;
    volatile unsigned int ACNT : 8;
    volatile unsigned int reserved_16 : 14;
    volatile unsigned int FCO : 1;
    volatile unsigned int ACO : 1;
} Ifx_SMU_AFCNT_Bits;


typedef struct _Ifx_SMU_AG_Bits
{
    volatile unsigned int SF0 : 1;
    volatile unsigned int SF1 : 1;
    volatile unsigned int SF2 : 1;
    volatile unsigned int SF3 : 1;
    volatile unsigned int SF4 : 1;
    volatile unsigned int SF5 : 1;
    volatile unsigned int SF6 : 1;
    volatile unsigned int SF7 : 1;
    volatile unsigned int SF8 : 1;
    volatile unsigned int SF9 : 1;
    volatile unsigned int SF10 : 1;
    volatile unsigned int SF11 : 1;
    volatile unsigned int SF12 : 1;
    volatile unsigned int SF13 : 1;
    volatile unsigned int SF14 : 1;
    volatile unsigned int SF15 : 1;
    volatile unsigned int SF16 : 1;
    volatile unsigned int SF17 : 1;
    volatile unsigned int SF18 : 1;
    volatile unsigned int SF19 : 1;
    volatile unsigned int SF20 : 1;
    volatile unsigned int SF21 : 1;
    volatile unsigned int SF22 : 1;
    volatile unsigned int SF23 : 1;
    volatile unsigned int SF24 : 1;
    volatile unsigned int SF25 : 1;
    volatile unsigned int SF26 : 1;
    volatile unsigned int SF27 : 1;
    volatile unsigned int SF28 : 1;
    volatile unsigned int SF29 : 1;
    volatile unsigned int SF30 : 1;
    volatile unsigned int SF31 : 1;
} Ifx_SMU_AG_Bits;


typedef struct _Ifx_SMU_AGC_Bits
{
    volatile unsigned int IGCS0 : 3;
    volatile unsigned int reserved_3 : 1;
    volatile unsigned int IGCS1 : 3;
    volatile unsigned int reserved_7 : 1;
    volatile unsigned int IGCS2 : 3;
    volatile unsigned int reserved_11 : 5;
    volatile unsigned int ICS : 3;
    volatile unsigned int reserved_19 : 5;
    volatile unsigned int PES : 5;
    volatile unsigned int EFRST : 1;
    volatile unsigned int reserved_30 : 2;
} Ifx_SMU_AGC_Bits;


typedef struct _Ifx_SMU_AGCF_Bits
{
    volatile unsigned int CF0 : 1;
    volatile unsigned int CF1 : 1;
    volatile unsigned int CF2 : 1;
    volatile unsigned int CF3 : 1;
    volatile unsigned int CF4 : 1;
    volatile unsigned int CF5 : 1;
    volatile unsigned int CF6 : 1;
    volatile unsigned int CF7 : 1;
    volatile unsigned int CF8 : 1;
    volatile unsigned int CF9 : 1;
    volatile unsigned int CF10 : 1;
    volatile unsigned int CF11 : 1;
    volatile unsigned int CF12 : 1;
    volatile unsigned int CF13 : 1;
    volatile unsigned int CF14 : 1;
    volatile unsigned int CF15 : 1;
    volatile unsigned int CF16 : 1;
    volatile unsigned int CF17 : 1;
    volatile unsigned int CF18 : 1;
    volatile unsigned int CF19 : 1;
    volatile unsigned int CF20 : 1;
    volatile unsigned int CF21 : 1;
    volatile unsigned int CF22 : 1;
    volatile unsigned int CF23 : 1;
    volatile unsigned int CF24 : 1;
    volatile unsigned int CF25 : 1;
    volatile unsigned int CF26 : 1;
    volatile unsigned int CF27 : 1;
    volatile unsigned int CF28 : 1;
    volatile unsigned int CF29 : 1;
    volatile unsigned int CF30 : 1;
    volatile unsigned int CF31 : 1;
} Ifx_SMU_AGCF_Bits;


typedef struct _Ifx_SMU_AGFSP_Bits
{
    volatile unsigned int FE0 : 1;
    volatile unsigned int FE1 : 1;
    volatile unsigned int FE2 : 1;
    volatile unsigned int FE3 : 1;
    volatile unsigned int FE4 : 1;
    volatile unsigned int FE5 : 1;
    volatile unsigned int FE6 : 1;
    volatile unsigned int FE7 : 1;
    volatile unsigned int FE8 : 1;
    volatile unsigned int FE9 : 1;
    volatile unsigned int FE10 : 1;
    volatile unsigned int FE11 : 1;
    volatile unsigned int FE12 : 1;
    volatile unsigned int FE13 : 1;
    volatile unsigned int FE14 : 1;
    volatile unsigned int FE15 : 1;
    volatile unsigned int FE16 : 1;
    volatile unsigned int FE17 : 1;
    volatile unsigned int FE18 : 1;
    volatile unsigned int FE19 : 1;
    volatile unsigned int FE20 : 1;
    volatile unsigned int FE21 : 1;
    volatile unsigned int FE22 : 1;
    volatile unsigned int FE23 : 1;
    volatile unsigned int FE24 : 1;
    volatile unsigned int FE25 : 1;
    volatile unsigned int FE26 : 1;
    volatile unsigned int FE27 : 1;
    volatile unsigned int FE28 : 1;
    volatile unsigned int FE29 : 1;
    volatile unsigned int FE30 : 1;
    volatile unsigned int FE31 : 1;
} Ifx_SMU_AGFSP_Bits;


typedef struct _Ifx_SMU_CLC_Bits
{
    volatile unsigned int DISR : 1;
    volatile unsigned int DISS : 1;
    volatile unsigned int FDIS : 1;
    volatile unsigned int EDIS : 1;
    volatile unsigned int reserved_4 : 28;
} Ifx_SMU_CLC_Bits;


typedef struct _Ifx_SMU_CMD_Bits
{
    volatile unsigned int CMD : 4;
    volatile unsigned int ARG : 4;
    volatile unsigned int reserved_8 : 24;
} Ifx_SMU_CMD_Bits;


typedef struct _Ifx_SMU_DBG_Bits
{
    volatile unsigned int SSM : 2;
    volatile unsigned int reserved_2 : 30;
} Ifx_SMU_DBG_Bits;


typedef struct _Ifx_SMU_FSP_Bits
{
    volatile unsigned int PRE1 : 3;
    volatile unsigned int PRE2 : 2;
    volatile unsigned int MODE : 2;
    volatile unsigned int PES : 1;
    volatile unsigned int TFSP_LOW : 14;
    volatile unsigned int TFSP_HIGH : 10;
} Ifx_SMU_FSP_Bits;


typedef struct _Ifx_SMU_ID_Bits
{
    volatile unsigned int MODREV : 8;
    volatile unsigned int MODTYPE : 8;
    volatile unsigned int MODNUMBER : 16;
} Ifx_SMU_ID_Bits;


typedef struct _Ifx_SMU_KEYS_Bits
{
    volatile unsigned int CFGLCK : 8;
    volatile unsigned int PERLCK : 8;
    volatile unsigned int reserved_16 : 16;
} Ifx_SMU_KEYS_Bits;


typedef struct _Ifx_SMU_KRST0_Bits
{
    volatile unsigned int RST : 1;
    volatile unsigned int RSTSTAT : 1;
    volatile unsigned int reserved_2 : 30;
} Ifx_SMU_KRST0_Bits;


typedef struct _Ifx_SMU_KRST1_Bits
{
    volatile unsigned int RST : 1;
    volatile unsigned int reserved_1 : 31;
} Ifx_SMU_KRST1_Bits;


typedef struct _Ifx_SMU_KRSTCLR_Bits
{
    volatile unsigned int CLR : 1;
    volatile unsigned int reserved_1 : 31;
} Ifx_SMU_KRSTCLR_Bits;


typedef struct _Ifx_SMU_OCS_Bits
{
    volatile unsigned int TGS : 2;
    volatile unsigned int TGB : 1;
    volatile unsigned int TG_P : 1;
    volatile unsigned int reserved_4 : 20;
    volatile unsigned int SUS : 4;
    volatile unsigned int SUS_P : 1;
    volatile unsigned int SUSSTA : 1;
    volatile unsigned int reserved_30 : 2;
} Ifx_SMU_OCS_Bits;


typedef struct _Ifx_SMU_PCTL_Bits
{
    volatile unsigned int HWDIR : 1;
    volatile unsigned int HWEN : 1;
    volatile unsigned int reserved_2 : 5;
    volatile unsigned int PCS : 1;
    volatile unsigned int reserved_8 : 8;
    volatile unsigned int PCFG : 16;
} Ifx_SMU_PCTL_Bits;


typedef struct _Ifx_SMU_RMCTL_Bits
{
    volatile unsigned int TE : 1;
    volatile unsigned int reserved_1 : 31;
} Ifx_SMU_RMCTL_Bits;


typedef struct _Ifx_SMU_RMEF_Bits
{
    volatile unsigned int EF0 : 1;
    volatile unsigned int EF1 : 1;
    volatile unsigned int EF2 : 1;
    volatile unsigned int EF3 : 1;
    volatile unsigned int EF4 : 1;
    volatile unsigned int EF5 : 1;
    volatile unsigned int EF6 : 1;
    volatile unsigned int EF7 : 1;
    volatile unsigned int EF8 : 1;
    volatile unsigned int EF9 : 1;
    volatile unsigned int EF10 : 1;
    volatile unsigned int EF11 : 1;
    volatile unsigned int EF12 : 1;
    volatile unsigned int EF13 : 1;
    volatile unsigned int EF14 : 1;
    volatile unsigned int EF15 : 1;
    volatile unsigned int EF16 : 1;
    volatile unsigned int EF17 : 1;
    volatile unsigned int EF18 : 1;
    volatile unsigned int EF19 : 1;
    volatile unsigned int EF20 : 1;
    volatile unsigned int EF21 : 1;
    volatile unsigned int EF22 : 1;
    volatile unsigned int EF23 : 1;
    volatile unsigned int EF24 : 1;
    volatile unsigned int EF25 : 1;
    volatile unsigned int EF26 : 1;
    volatile unsigned int EF27 : 1;
    volatile unsigned int EF28 : 1;
    volatile unsigned int EF29 : 1;
    volatile unsigned int EF30 : 1;
    volatile unsigned int EF31 : 1;
} Ifx_SMU_RMEF_Bits;


typedef struct _Ifx_SMU_RMSTS_Bits
{
    volatile unsigned int STS0 : 1;
    volatile unsigned int STS1 : 1;
    volatile unsigned int STS2 : 1;
    volatile unsigned int STS3 : 1;
    volatile unsigned int STS4 : 1;
    volatile unsigned int STS5 : 1;
    volatile unsigned int STS6 : 1;
    volatile unsigned int STS7 : 1;
    volatile unsigned int STS8 : 1;
    volatile unsigned int STS9 : 1;
    volatile unsigned int STS10 : 1;
    volatile unsigned int STS11 : 1;
    volatile unsigned int STS12 : 1;
    volatile unsigned int STS13 : 1;
    volatile unsigned int STS14 : 1;
    volatile unsigned int STS15 : 1;
    volatile unsigned int STS16 : 1;
    volatile unsigned int STS17 : 1;
    volatile unsigned int STS18 : 1;
    volatile unsigned int STS19 : 1;
    volatile unsigned int STS20 : 1;
    volatile unsigned int STS21 : 1;
    volatile unsigned int STS22 : 1;
    volatile unsigned int STS23 : 1;
    volatile unsigned int STS24 : 1;
    volatile unsigned int STS25 : 1;
    volatile unsigned int STS26 : 1;
    volatile unsigned int STS27 : 1;
    volatile unsigned int STS28 : 1;
    volatile unsigned int STS29 : 1;
    volatile unsigned int STS30 : 1;
    volatile unsigned int STS31 : 1;
} Ifx_SMU_RMSTS_Bits;


typedef struct _Ifx_SMU_RTAC0_Bits
{
    volatile unsigned int GID0 : 3;
    volatile unsigned int ALID0 : 5;
    volatile unsigned int GID1 : 3;
    volatile unsigned int ALID1 : 5;
    volatile unsigned int GID2 : 3;
    volatile unsigned int ALID2 : 5;
    volatile unsigned int GID3 : 3;
    volatile unsigned int ALID3 : 5;
} Ifx_SMU_RTAC0_Bits;


typedef struct _Ifx_SMU_RTAC1_Bits
{
    volatile unsigned int GID0 : 3;
    volatile unsigned int ALID0 : 5;
    volatile unsigned int GID1 : 3;
    volatile unsigned int ALID1 : 5;
    volatile unsigned int GID2 : 3;
    volatile unsigned int ALID2 : 5;
    volatile unsigned int GID3 : 3;
    volatile unsigned int ALID3 : 5;
} Ifx_SMU_RTAC1_Bits;


typedef struct _Ifx_SMU_RTC_Bits
{
    volatile unsigned int RT0E : 1;
    volatile unsigned int RT1E : 1;
    volatile unsigned int reserved_2 : 6;
    volatile unsigned int RTD : 24;
} Ifx_SMU_RTC_Bits;


typedef struct _Ifx_SMU_STS_Bits
{
    volatile unsigned int CMD : 4;
    volatile unsigned int ARG : 4;
    volatile unsigned int RES : 1;
    volatile unsigned int ASCE : 1;
    volatile unsigned int FSP : 2;
    volatile unsigned int FSTS : 1;
    volatile unsigned int reserved_13 : 3;
    volatile unsigned int RTS0 : 1;
    volatile unsigned int RTME0 : 1;
    volatile unsigned int RTS1 : 1;
    volatile unsigned int RTME1 : 1;
    volatile unsigned int reserved_20 : 12;
} Ifx_SMU_STS_Bits;







typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SMU_ACCEN0_Bits B;
} Ifx_SMU_ACCEN0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SMU_ACCEN1_Bits B;
} Ifx_SMU_ACCEN1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SMU_AD_Bits B;
} Ifx_SMU_AD;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SMU_AFCNT_Bits B;
} Ifx_SMU_AFCNT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SMU_AG_Bits B;
} Ifx_SMU_AG;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SMU_AGC_Bits B;
} Ifx_SMU_AGC;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SMU_AGCF_Bits B;
} Ifx_SMU_AGCF;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SMU_AGFSP_Bits B;
} Ifx_SMU_AGFSP;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SMU_CLC_Bits B;
} Ifx_SMU_CLC;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SMU_CMD_Bits B;
} Ifx_SMU_CMD;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SMU_DBG_Bits B;
} Ifx_SMU_DBG;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SMU_FSP_Bits B;
} Ifx_SMU_FSP;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SMU_ID_Bits B;
} Ifx_SMU_ID;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SMU_KEYS_Bits B;
} Ifx_SMU_KEYS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SMU_KRST0_Bits B;
} Ifx_SMU_KRST0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SMU_KRST1_Bits B;
} Ifx_SMU_KRST1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SMU_KRSTCLR_Bits B;
} Ifx_SMU_KRSTCLR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SMU_OCS_Bits B;
} Ifx_SMU_OCS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SMU_PCTL_Bits B;
} Ifx_SMU_PCTL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SMU_RMCTL_Bits B;
} Ifx_SMU_RMCTL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SMU_RMEF_Bits B;
} Ifx_SMU_RMEF;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SMU_RMSTS_Bits B;
} Ifx_SMU_RMSTS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SMU_RTAC0_Bits B;
} Ifx_SMU_RTAC0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SMU_RTAC1_Bits B;
} Ifx_SMU_RTAC1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SMU_RTC_Bits B;
} Ifx_SMU_RTC;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SMU_STS_Bits B;
} Ifx_SMU_STS;
# 715 "../30_Bsw/Common/TC21x/IfxSmu_regdef.h"
typedef volatile struct _Ifx_SMU
{
    Ifx_SMU_CLC CLC;
    unsigned char reserved_4[4];
    Ifx_SMU_ID ID;
    unsigned char reserved_C[20];
    Ifx_SMU_CMD CMD;
    Ifx_SMU_STS STS;
    Ifx_SMU_FSP FSP;
    Ifx_SMU_AGC AGC;
    Ifx_SMU_RTC RTC;
    Ifx_SMU_KEYS KEYS;
    Ifx_SMU_DBG DBG;
    Ifx_SMU_PCTL PCTL;
    Ifx_SMU_AFCNT AFCNT;
    unsigned char reserved_44[28];
    Ifx_SMU_RTAC0 RTAC0;
    Ifx_SMU_RTAC1 RTAC1;
    unsigned char reserved_68[152];
    Ifx_SMU_AGCF AGCF[7][3];
    unsigned char reserved_154[44];
    Ifx_SMU_AGFSP AGFSP[7];
    unsigned char reserved_19C[36];
    Ifx_SMU_AG AG[7];
    unsigned char reserved_1DC[36];
    Ifx_SMU_AD AD[7];
    unsigned char reserved_21C[228];
    Ifx_SMU_RMCTL RMCTL;
    Ifx_SMU_RMEF RMEF;
    Ifx_SMU_RMSTS RMSTS;
    unsigned char reserved_30C[1244];
    Ifx_SMU_OCS OCS;
    Ifx_SMU_KRSTCLR KRSTCLR;
    Ifx_SMU_KRST1 KRST1;
    Ifx_SMU_KRST0 KRST0;
    Ifx_SMU_ACCEN1 ACCEN1;
    Ifx_SMU_ACCEN0 ACCEN0;
} Ifx_SMU;
# 37 "../30_Bsw/Common/TC21x/IfxSmu_reg.h" 2
# 28 "../30_Bsw/Safety/Safety_cfg.h" 2
# 1 "../30_Bsw/Common/TC21x/IfxSrc.h" 1
# 95 "../30_Bsw/Common/TC21x/IfxSrc.h"
# 1 "../30_Bsw/Common/TC21x/IfxSrc_cfg.h" 1
# 49 "../30_Bsw/Common/TC21x/IfxSrc_cfg.h"
typedef enum
{
    IfxSrc_Tos_cpu0 = 0,
    IfxSrc_Tos_dma = 1
} IfxSrc_Tos;
# 96 "../30_Bsw/Common/TC21x/IfxSrc.h" 2
# 1 "../30_Bsw/Compilers/IfxCpu_Intrinsics.h" 1
# 36 "../30_Bsw/Compilers/IfxCpu_Intrinsics.h"
# 1 "../30_Bsw/Compilers/IfxCpu_IntrinsicsGnuc.h" 1
# 41 "../30_Bsw/Compilers/IfxCpu_IntrinsicsGnuc.h"
# 1 "c:\\hightec\\toolchains\\tricore\\v4.6.3.0\\bin\\../lib/gcc/tricore/4.6.3/../../../../tricore/include/machine/intrinsics.h" 1 3
# 88 "c:\\hightec\\toolchains\\tricore\\v4.6.3.0\\bin\\../lib/gcc/tricore/4.6.3/../../../../tricore/include/machine/intrinsics.h" 3
static __inline__ __attribute__((__always_inline__))
void _bisr (const unsigned __irq_level)
{
  __asm__ volatile ("bisr %0" :: "i" (__irq_level) : "memory");
}
# 110 "c:\\hightec\\toolchains\\tricore\\v4.6.3.0\\bin\\../lib/gcc/tricore/4.6.3/../../../../tricore/include/machine/intrinsics.h" 3
static __inline__ __attribute__((__always_inline__))
unsigned _mfcr (const unsigned __regaddr)
{
  unsigned __res;
  __asm__ volatile ("mfcr %0, LO:%1"
                    : "=d" (__res) : "i" (__regaddr) : "memory");
  return __res;
}
# 134 "c:\\hightec\\toolchains\\tricore\\v4.6.3.0\\bin\\../lib/gcc/tricore/4.6.3/../../../../tricore/include/machine/intrinsics.h" 3
static __inline__ __attribute__((__always_inline__))
void _mtcr (const unsigned __regaddr, const unsigned __val)
{
  __asm__ volatile ("mtcr LO:%0, %1"
                    :: "i" (__regaddr), "d" (__val) : "memory");
}
# 152 "c:\\hightec\\toolchains\\tricore\\v4.6.3.0\\bin\\../lib/gcc/tricore/4.6.3/../../../../tricore/include/machine/intrinsics.h" 3
static __inline__ __attribute__((__always_inline__))
void _syscall (const unsigned __service)
{
  __asm__ volatile ("syscall %0" :: "i" (__service) : "memory");
}






static __inline__ __attribute__((__always_inline__))
void _disable (void)
{
  __asm__ volatile ("disable" ::: "memory");
}

static __inline__ __attribute__((__always_inline__))
void _enable (void)
{
  __asm__ volatile ("enable" ::: "memory");
}

static __inline__ __attribute__((__always_inline__))
void _debug (void)
{
  __asm__ volatile ("debug" ::: "memory");
}

static __inline__ __attribute__((__always_inline__))
void _isync (void)
{
  __asm__ volatile ("isync" ::: "memory");
}

static __inline__ __attribute__((__always_inline__))
void _dsync (void)
{
  __asm__ volatile ("dsync" ::: "memory");
}

static __inline__ __attribute__((__always_inline__))
void _rstv (void)
{
  __asm__ volatile ("rstv" ::: "memory");
}

static __inline__ __attribute__((__always_inline__))
void _rslcx (void)
{
    __asm__ volatile ("rslcx" ::: "memory",
                      "d0", "d1", "d2", "d3", "d4", "d5", "d6", "d7",
                      "a2", "a3", "a4", "a5", "a6", "a7", "a11");
}


static __inline__ __attribute__((__always_inline__))
void _svlcx (void)
{
  __asm__ volatile ("svlcx" ::: "memory");
}

static __inline__ __attribute__((__always_inline__))
void _nop (void)
{
  __asm__ volatile ("nop" ::: "memory");
}
# 227 "c:\\hightec\\toolchains\\tricore\\v4.6.3.0\\bin\\../lib/gcc/tricore/4.6.3/../../../../tricore/include/machine/intrinsics.h" 3
static __inline__ __attribute__((__always_inline__))
void _restore (const int irqs_on)
{

  __asm__ volatile ("restore %0" :: "d" (irqs_on) : "memory");






}
# 42 "../30_Bsw/Compilers/IfxCpu_IntrinsicsGnuc.h" 2
# 54 "../30_Bsw/Compilers/IfxCpu_IntrinsicsGnuc.h"
static inline __attribute__ ((always_inline)) void __jump_and_link(void (*fun)(void))
{
 __asm__ volatile ("jli %0"::"a"(fun));
}
# 94 "../30_Bsw/Compilers/IfxCpu_IntrinsicsGnuc.h"
static inline __attribute__ ((always_inline)) sint32 __max(sint32 a, sint32 b)
{
    sint32 res;
    __asm__ volatile ("max %0, %1, %2": "=d" (res) : "d" (a), "d" (b));
    return res;
}



static inline __attribute__ ((always_inline)) sint32 __maxs(sint16 a, sint16 b)
{
    sint32 res;
    __asm__ volatile ("max.h %0, %1, %2": "=d" (res) : "d" (a), "d" (b));
    return res;
}


static inline __attribute__ ((always_inline)) uint32 __maxu(uint32 a, uint32 b)
{
    uint32 res;
    __asm__ volatile ("max.u %0, %1, %2": "=d" (res) : "d" (a), "d" (b));
    return res;
}



static inline __attribute__ ((always_inline)) sint32 __min(sint32 a, sint32 b)
{
    sint32 res;
    __asm__ volatile ("min %0, %1, %2": "=d" (res) : "d" (a), "d" (b));
    return res;
}



static inline __attribute__ ((always_inline)) sint16 __mins(sint16 a, sint16 b)
{
    sint16 res;
    __asm__ volatile ("min.h %0, %1, %2": "=d" (res) : "d" (a), "d" (b));
    return res;
}



static inline __attribute__ ((always_inline)) uint32 __minu(uint32 a, uint32 b)
{
    uint32 res;
    __asm__ volatile ("min.u %0, %1, %2": "=d" (res) : "d" (a), "d" (b));
    return res;
}
# 184 "../30_Bsw/Compilers/IfxCpu_IntrinsicsGnuc.h"
static inline __attribute__ ((always_inline)) sint16 __clssf(sfract a)
{
    sint16 res;
    __asm__ volatile ("cls  %0,%1":"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) float __fract_to_float(fract a)
{
    float res;
    __asm__ volatile ("q31tof  %0,%1,%2":"=d"(res):"d"(a), "d"(0):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) fract __float_to_fract(float a)
{
    fract res;
    __asm__ volatile ("ftoq31  %0,%1,%2":"=d"(res):"d"(a), "d"(0):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) fract __getfract(laccum a)
{
    fract res;
    __asm__ volatile ("dextr  %0,%H1,%L1,0x11":"=&d" (res):"d" (a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) sfract __mac_r_sf(sfract a, sfract b, sfract c)
{
    sfract res;
    __asm__ volatile ("maddrs.q  %0,%1,%2U,%3U,1":"=d"(res):"d"(a), "d"(b), "d"(c):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) sfract __mac_sf(sfract a, sfract b, sfract c)
{
    sfract res;
    __asm__ volatile ("madds.q  %0,%1,%2U,%3U,1":"=d"(res):"d"(a), "d"(b), "d"(c):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) long __mulfractfract(fract a, fract b)
{
    long res;
    __asm__ volatile ("mul.q %0,%1,%2,1":"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) long __mulfractlong(fract a, long b)
{
    long res;
    __asm__ volatile ("mul.q %0,%1,%2,1":"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) sfract __round16(fract a)
{
    sfract res;
    __asm__ volatile ("mov.u  %0,0x8000        \n                    adds  %0,%1              \n                    insert  %0,%0,0,0,0x10 "


                      :"=&d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) sfract __s16_to_sfract(sint16 a)
{
    sfract res;
    __asm__ volatile ("sh  %0,%1,16":"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) sint16 __sfract_to_s16(sfract a)
{
    sint16 res;
    __asm__ volatile ("sh  %0,%1,-16":"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) uint16 __sfract_to_u16(sfract a)
{
    uint16 res;
    __asm__ volatile ("sh  %0,%1,-16":"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) laccum __shaaccum(laccum a, sint32 b)
{
    laccum res;
    __asm__ volatile ("jge   %2,0,0f        \n                    sha   %H0,%H1,%2     \n                    rsub  %2,%2,0        \n                    dextr %L0,%H1,%L1,%2 \n                    j  1f                \n                    0:dextr %H0,%H1,%L1,%2 \n                    sha   %L0,%L1,%2     \n                    1:"







                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) fract __shafracts(fract a, sint32 b)
{
    fract res;
    __asm__ volatile ("shas  %0,%1,%2":"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) sfract __shasfracts(sfract a, sint32 b)
{
    sfract res;
    __asm__ volatile ("shas  %0,%1,%2":"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) sfract __u16_to_sfract(uint16 a)
{
    sfract res;
    __asm__ volatile ("sh  %0,%1,16":"=d"(res):"d"(a):"memory");
    return res;
}
# 346 "../30_Bsw/Compilers/IfxCpu_IntrinsicsGnuc.h"
static inline __attribute__ ((always_inline)) sint32 __extr(sint32 a, uint32 p, uint32 w)
{
    sint32 res;
    __asm__ volatile ("mov %%d14,%2  \n                     mov %%d15,%3  \n                     extr %0,%1,%%e14"


                      : "=d" (res) : "d" (a), "d" (p), "d" (w):"d14", "d15");
    return res;
}
# 385 "../30_Bsw/Compilers/IfxCpu_IntrinsicsGnuc.h"
static inline __attribute__ ((always_inline)) sint32 __ins(sint32 trg, const sint32 trgbit, sint32 src, const sint32 srcbit)
{
    sint32 res;
    __asm__ volatile ("ins.t %0,%1,%2,%3,%4":"=d"(res):"d"(trg), "i"(trgbit), "d"(src), "i"(srcbit));
    return res;
}



static inline __attribute__ ((always_inline)) sint32 __insert(sint32 a, sint32 b, sint32 p, const sint32 w)
{
    sint32 res;
    __asm__ volatile ("mov %%d14,%2  \n                     mov %%d15,%3  \n                     insert %0,%1,%2,%%e14"


                      :"=d"(res):"d"(a), "d"(b), "d"(p), "d"(w):"d14", "d15");
    return res;
}



static inline __attribute__ ((always_inline)) sint32 __insn(sint32 trg, const sint32 trgbit, sint32 src, const sint32 srcbit)
{
    sint32 res;
    __asm__ volatile ("insn.t %0,%1,%2,%3,%4":"=d"(res):"d"(trg), "i"(trgbit), "d"(src), "i"(srcbit));
    return res;
}
# 437 "../30_Bsw/Compilers/IfxCpu_IntrinsicsGnuc.h"
static inline __attribute__ ((always_inline)) sint32 __disable_and_save(void)
{
    sint32 res;
    __asm__ volatile("disable %0":"=d"(res));
    return res;
}







static inline __attribute__ ((always_inline)) void __restore(sint32 ie)
{
    __asm__ volatile ("restore %0"::"d"(ie));
}
# 471 "../30_Bsw/Compilers/IfxCpu_IntrinsicsGnuc.h"
static inline __attribute__ ((always_inline)) void __cacheawi(uint8* p)
{
    __asm__ volatile("cachea.wi [%0]0"::"a"(p));
}


static inline __attribute__ ((always_inline)) void __cacheiwi(uint8* p)
{
    __asm__ volatile("cachei.wi [%0]0"::"a"(p));
}




static inline __attribute__ ((always_inline)) uint8* __cacheawi_bo_post_inc(uint8* p)
{
    __asm__ volatile("cachea.wi  [%0+]0"::"a"(p));
    return p;
}





static inline __attribute__ ((always_inline)) sint32 __mulsc(sint32 a, sint32 b, sint32 offset)
{
    sint32 res;
    __asm__ volatile("mul  %%e12,%1,%2      \n                    dextr  %0,%%d13,%%d12,%3"

                     :"=d"(res):"d"(a), "d"(b), "d"(offset):"d12", "d13");
    return res;
}



static inline __attribute__ ((always_inline)) uint32 __rol(uint32 operand, uint32 count)
{
    uint32 res;
    __asm__ volatile("dextr  %0,%1,%1,%2":"=d"(res):"d"(operand), "d"(count):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) uint32 __ror(uint32 operand, uint32 count)
{
    uint32 res;
    __asm__ volatile("rsub %2,%2,0 \n                    dextr  %0,%1,%1,%2"

                     :"=d"(res):"d"(operand), "d"(count):"memory");
    return res;
}
# 533 "../30_Bsw/Compilers/IfxCpu_IntrinsicsGnuc.h"
static inline __attribute__ ((always_inline)) __packb __absb(__packb a)
{
    __packb res;
    __asm__ volatile ("abs.b %0,%1"
                      :"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __packhw __absh(__packhw a)
{
    __packhw res;
    __asm__ volatile ("abs.h %0,%1"
                      :"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __packhw __abssh(__packhw a)
{
    __packb res;
    __asm__ volatile ("abss.h %0,%1"
                      :"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) sint8 __extractbyte1(__packb a)
{
    sint8 res;
    __asm__ volatile ("extr  %0,%1,0,8"
                      :"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) sint8 __extractbyte2(__packb a)
{
    sint8 res;
    __asm__ volatile ("extr  %0,%1,8,8"
                      :"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) sint8 __extractbyte3(__packb a)
{
    sint8 res;
    __asm__ volatile ("extr  %0,%1,16,8"
                      :"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) sint8 __extractbyte4(__packb a)
{
    sint8 res;
    __asm__ volatile ("extr  %0,%1,24,8"
                      :"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) sint16 __extracthw1(__packhw a)
{
    sint16 res;
    __asm__ volatile ("extr  %0,%1,0,16"
                      :"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) sint16 __extracthw2(__packhw a)
{
    sint16 res;
    __asm__ volatile ("extr  %0,%1,16,16"
                      :"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) uint8 __extractubyte1(__upackb a)
{
    uint8 res;
    __asm__ volatile ("extr  %0,%1,0,8"
                      :"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) uint8 __extractubyte2(__upackb a)
{
    uint8 res;
    __asm__ volatile ("extr  %0,%1,8,8"
                      :"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) uint8 __extractubyte3(__upackb a)
{
    uint8 res;
    __asm__ volatile ("extr  %0,%1,16,8"
                      :"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) uint8 __extractubyte4(__upackb a)
{
    uint8 res;
    __asm__ volatile ("extr  %0,%1,24,8"
                      :"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) uint16 __extractuhw1(__upackhw a)
{
    uint16 res;
    __asm__ volatile ("extr  %0,%1,0,16"
                      :"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) uint16 __extractuhw2(__upackhw a)
{
    uint16 res;
    __asm__ volatile ("extr  %0,%1,16,16"
                      :"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) sint8 __getbyte1(__packb* a)
{
    sint8 res;
    __asm__ volatile ("ld.w  %0,[%1]0 \n                     extr  %0,%0,0,8"

                      :"=d"(res):"a"(a):"memory");
    return res;

}



static inline __attribute__ ((always_inline)) sint8 __getbyte2(__packb* a)
{
    sint8 res;
    __asm__ volatile ("ld.w  %0,[%1]0 \n                     extr  %0,%0,8,8"

                      :"=d"(res):"a"(a):"memory");
    return res;

}



static inline __attribute__ ((always_inline)) sint8 __getbyte3(__packb* a)
{
    sint8 res;
    __asm__ volatile ("ld.w  %0,[%1]0 \n                     extr  %0,%0,16,8"

                      :"=d"(res):"a"(a):"memory");
    return res;

}



static inline __attribute__ ((always_inline)) sint8 __getbyte4(__packb* a)
{
    sint8 res;
    __asm__ volatile ("ld.w  %0,[%1]0 \n                     extr  %0,%0,24,8"

                      :"=d"(res):"a"(a):"memory");
    return res;

}



static inline __attribute__ ((always_inline)) sint16 __gethw1(__packhw* a)
{
    sint16 res;
    __asm__ volatile ("ld.w  %0,[%1]0 \n                     extr  %0,%0,0,16"

                      :"=d"(res):"a"(a):"memory");
    return res;
}


static inline __attribute__ ((always_inline)) sint16 __gethw2(__packhw* a)
{
    sint16 res;
    __asm__ volatile ("ld.w  %0,[%1]0 \n                     extr  %0,%0,16,16"

                      :"=d"(res):"a"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) uint8 __getubyte1(__upackb* a)
{
    uint8 res;
    __asm__ volatile ("ld.w  %0,[%1]0 \n                     extr  %0,%0,0,8"

                      :"=d"(res):"a"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) uint8 __getubyte2(__upackb* a)
{
    uint8 res;
    __asm__ volatile ("ld.w  %0,[%1]0 \n                     extr  %0,%0,8,8"

                      :"=d"(res):"a"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) uint8 __getubyte3(__upackb* a)
{
    uint8 res;
    __asm__ volatile ("ld.w  %0,[%1]0 \n                     extr  %0,%0,16,8"

                      :"=d"(res):"a"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) uint8 __getubyte4(__upackb* a)
{
    uint8 res;
    __asm__ volatile ("ld.w  %0,[%1]0 \n                     extr  %0,%0,24,8"

                      :"=d"(res):"a"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) uint16 __getuhw1(__upackhw* a)
{
    uint16 res;
    __asm__ volatile ("ld.w  %0,[%1]0 \n                     extr  %0,%0,0,16"

                      :"=d"(res):"a"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) uint16 __getuhw2(__upackhw* a)
{
    uint16 res;
    __asm__ volatile ("ld.w  %0,[%1]0 \n                     extr  %0,%0,16,16"

                      :"=d"(res):"a"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __packb __initpackb(sint32 a, sint32 b, sint32 c, sint32 d)
{
    __packb res;
    __asm__ volatile ("insert  %3,%3,%4,8,8   \n                    insert  %4,%1,%2,8,8   \n                    insert  %0,%4,%3,16,16 "


                      :"=d"(res):"d"(a), "d"(b), "d"(c), "d"(d):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __packb __initpackbl(long a)
{
    return (__packb) a;
}



static inline __attribute__ ((always_inline)) __packhw __initpackhw(sint16 a, sint16 b)
{
    __packhw res;
    __asm__ volatile ("insert  %0,%1,%2,16,16"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __packhw __initpackhwl(long a)
{
    return a;
}



static inline __attribute__ ((always_inline)) __upackb __initupackb( uint32 a, uint32 b, uint32 c, uint32 d)
{
    __upackb res;
    __asm__ volatile ("insert  %3,%3,%4,8,8   \n                    insert  %1,%1,%2,8,8   \n                    insert  %0,%1,%3,16,16"


                      :"=d"(res):"d"(a), "d"(b), "d"(c), "d"(d):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __upackhw __initupackhw( uint16 a, uint16 b)
{
    __upackhw res;
    __asm__ volatile ("insert  %0,%1,%2,16,16"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __packb __insertbyte1(__packb a, sint8 b)
{
    __packb res;
    __asm__ volatile ("insert  %0,%1,%2,0,8"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __packb __insertbyte2(__packb a, sint8 b)
{
    __packb res;
    __asm__ volatile ("insert  %0,%1,%2,8,8"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __packb __insertbyte3(__packb a, sint8 b)
{
    __packb res;
    __asm__ volatile ("insert  %0,%1,%2,16,8"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __packb __insertbyte4(__packb a, sint8 b)
{
    __packb res;
    __asm__ volatile ("insert  %0,%1,%2,24,8"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __upackb __insertubyte1( __upackb a, uint8 b)
{
    __upackb res;
    __asm__ volatile ("insert  %0,%1,%2,0,8"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __upackb __insertubyte2( __upackb a, uint8 b)
{
    __upackb res;
    __asm__ volatile ("insert  %0,%1,%2,8,8"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __upackb __insertubyte3( __upackb a, uint8 b)
{
    __upackb res;
    __asm__ volatile ("insert  %0,%1,%2,16,8"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __upackb __insertubyte4( __upackb a, uint8 b)
{
    __upackb res;
    __asm__ volatile ("insert  %0,%1,%2,24,8"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __packhw __inserthw1(__packhw a, sint16 b)
{
    __packhw res;
    __asm__ volatile ("insert  %0,%1,%2,0,16"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __packhw __inserthw2(__packhw a, sint16 b)
{
    __packhw res;
    __asm__ volatile ("insert  %0,%1,%2,16,16"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __upackhw __insertuhw1( __upackhw a, uint16 b)
{
    __upackhw res;
    __asm__ volatile ("insert  %0,%1,%2,0,16"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __upackhw __insertuhw2( __upackhw a, uint16 b)
{
    __upackhw res;
    __asm__ volatile ("insert  %0,%1,%2,16,16"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __packb __minb(__packb a, __packb b)
{
    __packb res;
    __asm__ volatile ("min.b %0,%1,%2"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __upackb __minbu( __upackb a, __upackb b)
{
    __upackb res;
    __asm__ volatile ("min.bu %0,%1,%2"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __packhw __minh(__packhw a, __packhw b)
{
    __packhw res;
    __asm__ volatile ("min.h %0,%1,%2"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __upackhw __minhu( __upackhw a, __upackhw b)
{
    __upackhw res;
    __asm__ volatile ("min.hu %0,%1,%2"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) void __setbyte1(__packb* a, sint8 b)
{
    __asm__ volatile ("ld.w  %%d15,[%0] \n                    insert  %%d15,%%d15,%1,0,8 \n                    st.w [%0],%%d15"


                      ::"a"(a), "d"(b):"d15", "memory");
}



static inline __attribute__ ((always_inline)) void __setbyte2(__packb* a, sint8 b)
{
    __asm__ volatile ("ld.w  %%d15,[%0] \n                    insert  %%d15,%%d15,%1,8,8 \n                    st.w [%0],%%d15"


                      ::"a"(a), "d"(b):"d15", "memory");
}



static inline __attribute__ ((always_inline)) void __setbyte3(__packb* a, sint8 b)
{
    __asm__ volatile ("ld.w  %%d15,[%0] \n                    insert  %%d15,%%d15,%1,16,8 \n                    st.w [%0],%%d15"


                      ::"a"(a), "d"(b):"d15", "memory");
}



static inline __attribute__ ((always_inline)) void __setbyte4(__packb* a, sint8 b)
{
    __asm__ volatile ("ld.w  %%d15,[%0] \n                    insert  %%d15,%%d15,%1,24,8 \n                    st.w [%0],%%d15"


                      ::"a"(a), "d"(b):"d15", "memory");
}



static inline __attribute__ ((always_inline)) void __sethw1(__packhw* a, sint16 b)
{
    __asm__ volatile ("ld.w  %%d15,[%0] \n                    insert  %%d15,%%d15,%1,0,16 \n                    st.w [%0],%%d15"


                      ::"a"(a), "d"(b):"d15", "memory");
}



static inline __attribute__ ((always_inline)) void __sethw2(__packhw* a, sint16 b)
{
    __asm__ volatile ("ld.w  %%d15,[%0] \n                    insert  %%d15,%%d15,%1,16,16 \n                    st.w [%0],%%d15"


                      ::"a"(a), "d"(b):"d15", "memory");
}



static inline __attribute__ ((always_inline)) void __setubyte1(__upackb* a, uint8 b)
{
    __asm__ volatile ("ld.w  %%d15,[%0] \n                    insert  %%d15,%%d15,%1,0,8 \n                    st.w [%0],%%d15"


                      ::"a"(a), "d"(b):"d15", "memory");
}



static inline __attribute__ ((always_inline)) void __setubyte2(__upackb* a, uint8 b)
{
    __asm__ volatile ("ld.w  %%d15,[%0] \n                    insert  %%d15,%%d15,%1,8,8 \n                    st.w [%0],%%d15"


                      ::"a"(a), "d"(b):"d15", "memory");
}



static inline __attribute__ ((always_inline)) void __setubyte3(__upackb* a, uint8 b)
{
    __asm__ volatile ("ld.w  %%d15,[%0] \n                    insert  %%d15,%%d15,%1,16,8 \n                    st.w [%0],%%d15"


                      ::"a"(a), "d"(b):"d15", "memory");
}



static inline __attribute__ ((always_inline)) void __setubyte4(__upackb* a, uint8 b)
{
    __asm__ volatile ("ld.w  %%d15,[%0] \n                    insert  %%d15,%%d15,%1,24,8 \n                    st.w [%0],%%d15"


                      ::"a"(a), "d"(b):"d15", "memory");
}



static inline __attribute__ ((always_inline)) void __setuhw1(__upackhw* a, uint16 b)
{
    __asm__ volatile ("ld.w  %%d15,[%0] \n                    insert  %%d15,%%d15,%1,0,16 \n                    st.w [%0],%%d15"


                      ::"a"(a), "d"(b):"d15", "memory");
}



static inline __attribute__ ((always_inline)) void __setuhw2(__upackhw* a, uint16 b)
{
    __asm__ volatile ("ld.w  %%d15,[%0] \n                    insert  %%d15,%%d15,%1,16,16 \n                    st.w [%0],%%d15"


                      ::"a"(a), "d"(b):"d15", "memory");
}
# 1168 "../30_Bsw/Compilers/IfxCpu_IntrinsicsGnuc.h"
static inline __attribute__ ((always_inline)) sint32 __absdif(sint32 a, sint32 b)
{
    sint32 res;
    __asm__ volatile ("absdif %0, %1, %2": "=d" (res) : "d" (a), "d" (b));
    return res;
}



static inline __attribute__ ((always_inline)) sint32 __abss(sint32 a)
{
    sint32 res;
    __asm__ volatile ("abss %0, %1": "=d" (res) : "d" (a));
    return res;
}



static inline __attribute__ ((always_inline)) sint32 __clo(sint32 a)
{
    sint32 res;
    __asm__ volatile ("clo %0,%1":"=d"(res):"d"(a));
    return res;
}



static inline __attribute__ ((always_inline)) sint32 __cls(sint32 a)
{
    sint32 res;
    __asm__ volatile ("cls %0,%1":"=d"(res):"d"(a));
    return res;
}







static inline __attribute__ ((always_inline)) double __fabs(double d)
{
    double res;
    __asm__ volatile ("insert  %0,%1,0,31,1": "=d" (res) : "d" (d):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) float __fabsf(float f)
{
    float res;
    __asm__ volatile ("insert  %0,%1,0,31,1": "=d" (res) : "d" (f):"memory");
    return res;
}
# 1239 "../30_Bsw/Compilers/IfxCpu_IntrinsicsGnuc.h"
static inline __attribute__ ((always_inline)) sint32 __parity(sint32 a)
{
    sint32 res;
    __asm__ volatile ("parity  %0,%1": "=d" (res) : "d" (a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) sint8 __satb(sint32 a)
{
    sint8 res;
    __asm__ volatile ("sat.b %0,%1":"=d"(res):"d"(a));
    return res;
}



static inline __attribute__ ((always_inline)) uint8 __satbu(sint32 a)
{
    uint8 res;
    __asm__ volatile ("sat.bu %0,%1":"=d"(res):"d"(a));
    return res;
}



static inline __attribute__ ((always_inline)) sint16 __sath(sint32 a)
{
    sint8 res;
    __asm__ volatile ("sat.h %0,%1":"=d"(res):"d"(a));
    return res;
}



static inline __attribute__ ((always_inline)) uint16 __sathu(sint32 a)
{
    sint8 res;
    __asm__ volatile ("sat.hu %0,%1":"=d"(res):"d"(a));
    return res;
}
# 1292 "../30_Bsw/Compilers/IfxCpu_IntrinsicsGnuc.h"
static inline __attribute__ ((always_inline)) sint32 __adds(sint32 a, sint32 b)
{
    sint32 res;
    __asm__ volatile ("adds %0, %1, %2": "=d" (res) : "d" (a), "d" (b));
    return res;
}



static inline __attribute__ ((always_inline)) uint32 __addsu(uint32 a, uint32 b)
{
    uint32 res;
    __asm__ volatile ("adds.u %0, %1, %2": "=d" (res) : "d" (a), "d" (b));
    return res;
}



static inline __attribute__ ((always_inline)) sint32 __subs(sint32 a, sint32 b)
{
    sint32 res;
    __asm__ volatile ("subs %0, %1, %2": "=d" (res) : "d" (a), "d" (b));
    return res;
}



static inline __attribute__ ((always_inline)) uint32 __subsu(uint32 a, uint32 b)
{
    uint32 res;
    __asm__ volatile ("subs.u %0, %1, %2": "=d" (res) : "d" (a), "d" (b));
    return res;
}
# 1338 "../30_Bsw/Compilers/IfxCpu_IntrinsicsGnuc.h"
static inline __attribute__ ((always_inline)) void __debug(void)
{
    __asm__ volatile ("debug" : : : "memory");
}



static inline __attribute__ ((always_inline)) void __dsync(void)
{
    __asm__ volatile ("dsync" : : : "memory");
}



static inline __attribute__ ((always_inline)) void __isync(void)
{
    __asm__ volatile ("isync" : : : "memory");
}



static inline __attribute__ ((always_inline)) void __ldmst(volatile void* address, uint32 mask, uint32 value)
{
    __asm__ volatile("mov %H2,%1 \n                  ldmst [%0]0,%A2"

                     ::"a"(address), "d"(mask), "d"((long long)value));
}



static inline __attribute__ ((always_inline)) void __nop(void)
{
    __asm__ volatile ("nop" : : : "memory");
}



static inline __attribute__ ((always_inline)) void __nops(void* cnt)
{
    __asm__ volatile ("0: nop \n        loop %0,0b"

                      ::"a"(((sint8*)cnt)-1));
}



static inline __attribute__ ((always_inline)) void __rslcx(void)
{
    __asm__ volatile ("rslcx" : : : "memory");
}



static inline __attribute__ ((always_inline)) void __svlcx(void)
{
    __asm__ volatile ("svlcx" : : : "memory");
}



static inline __attribute__ ((always_inline)) uint32 __swap(void* place, uint32 value)
{
    uint32 res;
    __asm__ volatile("swap.w [%1]0,%2":"=d"(res):"a"(place), "0"(value));
    return res;
}
# 1426 "../30_Bsw/Compilers/IfxCpu_IntrinsicsGnuc.h"
static inline __attribute__ ((always_inline)) void __stopPerfCounters(void)
{
    __asm__ volatile("mov %%d0,0\n                  mtcr 0xFC00,%%d0\n                  isync\n"


            : : :"d0");
}







static inline __attribute__ ((always_inline)) unsigned int __cmpAndSwap (unsigned int volatile *address,
           unsigned int value, unsigned int condition)
{
# 1454 "../30_Bsw/Compilers/IfxCpu_IntrinsicsGnuc.h"
  sint32 ie;
  uint32 retval = 1;
  ie = __disable_and_save();
  if (condition == *address)
  {
     __swap((void *)address,value );
 retval = 0;
  }
  __restore(ie);
  return retval;

}
# 1478 "../30_Bsw/Compilers/IfxCpu_IntrinsicsGnuc.h"
static inline __attribute__ ((always_inline)) float32 __fixpoint_to_float32(fract value, sint32 shift)
{
    float32 result;

    __asm__ volatile("q31tof %0, %1, %2": "=d" (result) : "d" (value), "d" (shift));
    return result;
}



static inline __attribute__ ((always_inline)) void* __getA11(void)
{
    uint32 *res;
    __asm__ volatile ("mov.aa %0, %%a11": "=a" (res) : :"a11");
    return res;
}

static inline __attribute__ ((always_inline)) void __setStackPointer(void *stackAddr)
{
    __asm__ volatile ("mov.aa %%a10, %0": : "a" (stackAddr) :"a10");
}
# 37 "../30_Bsw/Compilers/IfxCpu_Intrinsics.h" 2
# 65 "../30_Bsw/Compilers/IfxCpu_Intrinsics.h"
static inline __attribute__ ((always_inline)) void *__cx_to_addr(uint32 cx)
{
    uint32 seg_nr = ({ sint32 res; asm volatile (" extr.u\t %0,%1,%2,%3" : "=d" (res) : "d" (cx),"i" (16),"i" (4) : "memory"); res; });
    return (void *)__insert(seg_nr << 28, cx, 6, 16);
}






static inline __attribute__ ((always_inline)) uint32 __addr_to_cx(void *addr)
{
    uint32 seg_nr, seg_idx;
    seg_nr = ({ sint32 res; asm volatile (" extr.u\t %0,%1,%2,%3" : "=d" (res) : "d" ((int)addr),"i" (28),"i" (4) : "memory"); res; }) << 16;
    seg_idx = ({ sint32 res; asm volatile (" extr.u\t %0,%1,%2,%3" : "=d" (res) : "d" ((int)addr),"i" (6),"i" (16) : "memory"); res; });
    return seg_nr | seg_idx;
}



static inline __attribute__ ((always_inline)) void __ldmst_c(volatile void *address, unsigned mask, unsigned value)
{
    *(volatile uint32 *)address = (*(volatile uint32 *)address & ~(mask)) | (mask & value);
}




static inline __attribute__ ((always_inline)) uint32 __ld32(void *addr)
{
    return *(volatile uint32 *)addr;
}




static inline __attribute__ ((always_inline)) void __st32(void *addr, uint32 value)
{
    *(volatile uint32 *)addr = value;
}




static inline __attribute__ ((always_inline)) uint64 __ld64(void *addr)
{
    return *(volatile uint64 *)addr;
}




static inline __attribute__ ((always_inline)) void __st64(void *addr, uint64 value)
{
    *(volatile uint64 *)addr = value;
}




static inline __attribute__ ((always_inline)) void __ld64_lu(void *addr, uint32 *valueLower, uint32 *valueUpper)
{
    register uint64 value;
    value = __ld64(addr);
    *valueLower = (uint32)value;
    *valueUpper = (uint32)(value >> 32);
}




static inline __attribute__ ((always_inline)) void __st64_lu(void *addr, uint32 valueLower, uint32 valueUpper)
{
    register uint64 value = ((uint64)valueUpper << 32) | valueLower;
    __st64(addr, value);
}
# 97 "../30_Bsw/Common/TC21x/IfxSrc.h" 2
# 1 "../30_Bsw/Common/TC21x/IfxSrc_reg.h" 1
# 36 "../30_Bsw/Common/TC21x/IfxSrc_reg.h"
# 1 "../30_Bsw/Common/TC21x/IfxSrc_regdef.h" 1
# 45 "../30_Bsw/Common/TC21x/IfxSrc_regdef.h"
typedef struct _Ifx_SRC_SRCR_Bits
{
    unsigned int SRPN : 8;
    unsigned int reserved_8 : 2;
    unsigned int SRE : 1;
    unsigned int TOS : 1;
    unsigned int reserved_12 : 4;
    unsigned int ECC : 5;
    unsigned int reserved_21 : 3;
    unsigned int SRR : 1;
    unsigned int CLRR : 1;
    unsigned int SETR : 1;
    unsigned int IOV : 1;
    unsigned int IOVCLR : 1;
    unsigned int SWS : 1;
    unsigned int SWSCLR : 1;
    unsigned int reserved_31 : 1;
} Ifx_SRC_SRCR_Bits;







typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SRC_SRCR_Bits B;
} Ifx_SRC_SRCR;
# 86 "../30_Bsw/Common/TC21x/IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_ASCLIN
{
    Ifx_SRC_SRCR TX;
    Ifx_SRC_SRCR RX;
    Ifx_SRC_SRCR ERR;
} Ifx_SRC_ASCLIN;


typedef volatile struct _Ifx_SRC_BCUSPB
{
    Ifx_SRC_SRCR SBSRC;
} Ifx_SRC_BCUSPB;


typedef volatile struct _Ifx_SRC_CAN
{
    Ifx_SRC_SRCR INT[16];
} Ifx_SRC_CAN;


typedef volatile struct _Ifx_SRC_CCU6
{
    Ifx_SRC_SRCR SR0;
    Ifx_SRC_SRCR SR1;
    Ifx_SRC_SRCR SR2;
    Ifx_SRC_SRCR SR3;
} Ifx_SRC_CCU6;


typedef volatile struct _Ifx_SRC_CERBERUS
{
    Ifx_SRC_SRCR SR[2];
} Ifx_SRC_CERBERUS;


typedef volatile struct _Ifx_SRC_CPU
{
    Ifx_SRC_SRCR SBSRC;
    unsigned char reserved_4[60];
} Ifx_SRC_CPU;


typedef volatile struct _Ifx_SRC_DMA
{
    Ifx_SRC_SRCR ERR;
    unsigned char reserved_4[12];
    Ifx_SRC_SRCR CH[16];
} Ifx_SRC_DMA;


typedef volatile struct _Ifx_SRC_EVR
{
    Ifx_SRC_SRCR WUT;
    Ifx_SRC_SRCR SCDC;
} Ifx_SRC_EVR;


typedef volatile struct _Ifx_SRC_GPSR
{
    Ifx_SRC_SRCR SR0;
    Ifx_SRC_SRCR SR1;
    Ifx_SRC_SRCR SR2;
    Ifx_SRC_SRCR SR3;
    unsigned char reserved_10[1520];
} Ifx_SRC_GPSR;


typedef volatile struct _Ifx_SRC_GPT12
{
    Ifx_SRC_SRCR CIRQ;
    Ifx_SRC_SRCR T2;
    Ifx_SRC_SRCR T3;
    Ifx_SRC_SRCR T4;
    Ifx_SRC_SRCR T5;
    Ifx_SRC_SRCR T6;
    unsigned char reserved_18[24];
} Ifx_SRC_GPT12;


typedef volatile struct _Ifx_SRC_GTM
{
    Ifx_SRC_SRCR AEIIRQ;
    unsigned char reserved_4[364];
    Ifx_SRC_SRCR ERR;
    unsigned char reserved_174[12];
    Ifx_SRC_SRCR TIM[1][8];
    unsigned char reserved_1A0[992];
    Ifx_SRC_SRCR TOM[2][8];
} Ifx_SRC_GTM;


typedef volatile struct _Ifx_SRC_PMU
{
    Ifx_SRC_SRCR SR;
} Ifx_SRC_PMU;


typedef volatile struct _Ifx_SRC_QSPI
{
    Ifx_SRC_SRCR TX;
    Ifx_SRC_SRCR RX;
    Ifx_SRC_SRCR ERR;
    Ifx_SRC_SRCR PT;
    Ifx_SRC_SRCR HC;
    Ifx_SRC_SRCR U;
} Ifx_SRC_QSPI;


typedef volatile struct _Ifx_SRC_SCU
{
    Ifx_SRC_SRCR DTS;
    Ifx_SRC_SRCR ERU[4];
} Ifx_SRC_SCU;


typedef volatile struct _Ifx_SRC_SENT
{
    Ifx_SRC_SRCR SR[4];
} Ifx_SRC_SENT;


typedef volatile struct _Ifx_SRC_SMU
{
    Ifx_SRC_SRCR SR[3];
} Ifx_SRC_SMU;


typedef volatile struct _Ifx_SRC_STM
{
    Ifx_SRC_SRCR SR0;
    Ifx_SRC_SRCR SR1;
    unsigned char reserved_8[88];
} Ifx_SRC_STM;


typedef volatile struct _Ifx_SRC_VADCCG
{
    Ifx_SRC_SRCR SR0;
    Ifx_SRC_SRCR SR1;
    Ifx_SRC_SRCR SR2;
    Ifx_SRC_SRCR SR3;
    unsigned char reserved_10[384];
} Ifx_SRC_VADCCG;


typedef volatile struct _Ifx_SRC_VADCG
{
    Ifx_SRC_SRCR SR0;
    Ifx_SRC_SRCR SR1;
    Ifx_SRC_SRCR SR2;
    Ifx_SRC_SRCR SR3;
} Ifx_SRC_VADCG;


typedef volatile struct _Ifx_SRC_XBAR
{
    Ifx_SRC_SRCR SRC;
} Ifx_SRC_XBAR;
# 256 "../30_Bsw/Common/TC21x/IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_GASCLIN
{
    Ifx_SRC_ASCLIN ASCLIN[2];
} Ifx_SRC_GASCLIN;


typedef volatile struct _Ifx_SRC_GBCU
{
    Ifx_SRC_BCUSPB SPB;
} Ifx_SRC_GBCU;


typedef volatile struct _Ifx_SRC_GCAN
{
    Ifx_SRC_CAN CAN[1];
} Ifx_SRC_GCAN;


typedef volatile struct _Ifx_SRC_GCCU6
{
    Ifx_SRC_CCU6 CCU6[2];
} Ifx_SRC_GCCU6;


typedef volatile struct _Ifx_SRC_GCERBERUS
{
    Ifx_SRC_CERBERUS CERBERUS;
} Ifx_SRC_GCERBERUS;


typedef volatile struct _Ifx_SRC_GCPU
{
    Ifx_SRC_CPU CPU[1];
} Ifx_SRC_GCPU;


typedef volatile struct _Ifx_SRC_GDMA
{
    Ifx_SRC_DMA DMA[1];
} Ifx_SRC_GDMA;


typedef volatile struct _Ifx_SRC_GEVR
{
    Ifx_SRC_EVR EVR[1];
} Ifx_SRC_GEVR;


typedef volatile struct _Ifx_SRC_GGPSR
{
    Ifx_SRC_GPSR GPSR[1];
} Ifx_SRC_GGPSR;


typedef volatile struct _Ifx_SRC_GGPT12
{
    Ifx_SRC_GPT12 GPT12[1];
} Ifx_SRC_GGPT12;


typedef volatile struct _Ifx_SRC_GGTM
{
    Ifx_SRC_GTM GTM[1];
} Ifx_SRC_GGTM;


typedef volatile struct _Ifx_SRC_GPMU
{
    Ifx_SRC_PMU PMU[2];
} Ifx_SRC_GPMU;


typedef volatile struct _Ifx_SRC_GQSPI
{
    Ifx_SRC_QSPI QSPI[4];
} Ifx_SRC_GQSPI;


typedef volatile struct _Ifx_SRC_GSCU
{
    Ifx_SRC_SCU SCU;
} Ifx_SRC_GSCU;


typedef volatile struct _Ifx_SRC_GSENT
{
    Ifx_SRC_SENT SENT[1];
} Ifx_SRC_GSENT;


typedef volatile struct _Ifx_SRC_GSMU
{
    Ifx_SRC_SMU SMU[1];
} Ifx_SRC_GSMU;


typedef volatile struct _Ifx_SRC_GSTM
{
    Ifx_SRC_STM STM[1];
} Ifx_SRC_GSTM;


typedef volatile struct _Ifx_SRC_GVADC
{
    Ifx_SRC_VADCG G[2];
    unsigned char reserved_20[256];
    Ifx_SRC_VADCCG CG[1];
} Ifx_SRC_GVADC;


typedef volatile struct _Ifx_SRC_GXBAR
{
    Ifx_SRC_XBAR XBAR;
} Ifx_SRC_GXBAR;
# 382 "../30_Bsw/Common/TC21x/IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC
{
    Ifx_SRC_GCPU CPU;
    Ifx_SRC_GBCU BCU;
    unsigned char reserved_44[4];
    Ifx_SRC_GXBAR XBAR;
    unsigned char reserved_4C[4];
    Ifx_SRC_GCERBERUS CERBERUS;
    unsigned char reserved_58[40];
    Ifx_SRC_GASCLIN ASCLIN;
    unsigned char reserved_98[248];
    Ifx_SRC_GQSPI QSPI;
    unsigned char reserved_1F0[352];
    Ifx_SRC_GSENT SENT;
    unsigned char reserved_360[192];
    Ifx_SRC_GCCU6 CCU6;
    unsigned char reserved_440[32];
    Ifx_SRC_GGPT12 GPT12;
    Ifx_SRC_GSTM STM;
    Ifx_SRC_GDMA DMA;
    unsigned char reserved_540[960];
    Ifx_SRC_GCAN CAN;
    unsigned char reserved_940[64];
    Ifx_SRC_GVADC VADC;
    Ifx_SRC_GPMU PMU;
    unsigned char reserved_C38[152];
    Ifx_SRC_GSCU SCU;
    unsigned char reserved_CE4[44];
    Ifx_SRC_GSMU SMU;
    unsigned char reserved_D1C[660];
    Ifx_SRC_GEVR EVR;
    unsigned char reserved_FB8[72];
    Ifx_SRC_GGPSR GPSR;
    Ifx_SRC_GGTM GTM;
    unsigned char reserved_1BC0[1088];
} Ifx_SRC;
# 37 "../30_Bsw/Common/TC21x/IfxSrc_reg.h" 2
# 98 "../30_Bsw/Common/TC21x/IfxSrc.h" 2
# 112 "../30_Bsw/Common/TC21x/IfxSrc.h"
static inline __attribute__ ((always_inline)) void IfxSrc_clearOverrun(volatile Ifx_SRC_SRCR *src);
# 121 "../30_Bsw/Common/TC21x/IfxSrc.h"
static inline __attribute__ ((always_inline)) void IfxSrc_clearRequest(volatile Ifx_SRC_SRCR *src);
# 130 "../30_Bsw/Common/TC21x/IfxSrc.h"
static inline __attribute__ ((always_inline)) boolean IfxSrc_isOverrun(volatile Ifx_SRC_SRCR *src);
# 139 "../30_Bsw/Common/TC21x/IfxSrc.h"
static inline __attribute__ ((always_inline)) boolean IfxSrc_isRequested(volatile Ifx_SRC_SRCR *src);
# 148 "../30_Bsw/Common/TC21x/IfxSrc.h"
static inline __attribute__ ((always_inline)) void IfxSrc_setRequest(volatile Ifx_SRC_SRCR *src);
# 166 "../30_Bsw/Common/TC21x/IfxSrc.h"
static inline __attribute__ ((always_inline)) void IfxSrc_deinit(volatile Ifx_SRC_SRCR *src);
# 175 "../30_Bsw/Common/TC21x/IfxSrc.h"
static inline __attribute__ ((always_inline)) void IfxSrc_disable(volatile Ifx_SRC_SRCR *src);
# 184 "../30_Bsw/Common/TC21x/IfxSrc.h"
static inline __attribute__ ((always_inline)) void IfxSrc_enable(volatile Ifx_SRC_SRCR *src);
# 216 "../30_Bsw/Common/TC21x/IfxSrc.h"
static inline __attribute__ ((always_inline)) void IfxSrc_init(volatile Ifx_SRC_SRCR *src, IfxSrc_Tos typOfService, Ifx_Priority priority);







static inline __attribute__ ((always_inline)) void IfxSrc_clearOverrun(volatile Ifx_SRC_SRCR *src)
{
    src->B.IOVCLR = 1;
}


static inline __attribute__ ((always_inline)) void IfxSrc_clearRequest(volatile Ifx_SRC_SRCR *src)
{
    src->B.CLRR = 1;
}


static inline __attribute__ ((always_inline)) void IfxSrc_deinit(volatile Ifx_SRC_SRCR *src)
{
    src->U = 0;
}


static inline __attribute__ ((always_inline)) void IfxSrc_disable(volatile Ifx_SRC_SRCR *src)
{
    src->B.SRE = 0;
}


static inline __attribute__ ((always_inline)) void IfxSrc_enable(volatile Ifx_SRC_SRCR *src)
{
    src->B.SRE = 1;
}


static inline __attribute__ ((always_inline)) void IfxSrc_init(volatile Ifx_SRC_SRCR *src, IfxSrc_Tos typOfService, Ifx_Priority priority)
{
    src->B.SRPN = priority;
    src->B.TOS = typOfService;
    IfxSrc_clearRequest(src);
}


static inline __attribute__ ((always_inline)) boolean IfxSrc_isOverrun(volatile Ifx_SRC_SRCR *src)
{
    return src->B.IOV ? 1 : 0;
}


static inline __attribute__ ((always_inline)) boolean IfxSrc_isRequested(volatile Ifx_SRC_SRCR *src)
{
    return src->B.SRR ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxSrc_setRequest(volatile Ifx_SRC_SRCR *src)
{
    src->B.SETR = 1;
}
# 29 "../30_Bsw/Safety/Safety_cfg.h" 2
# 1 "../30_Bsw/Common/TC21x/IfxSrc_cfg.h" 1
# 30 "../30_Bsw/Safety/Safety_cfg.h" 2
# 1 "../30_Bsw/Common/TC21x/IfxCpu_reg.h" 1
# 42 "../30_Bsw/Common/TC21x/IfxCpu_reg.h"
# 1 "../30_Bsw/Common/TC21x/IfxCpu_regdef.h" 1
# 45 "../30_Bsw/Common/TC21x/IfxCpu_regdef.h"
typedef struct _Ifx_CPU_A_Bits
{
    volatile unsigned int ADDR : 32;
} Ifx_CPU_A_Bits;


typedef struct _Ifx_CPU_BIV_Bits
{
    volatile unsigned int VSS : 1;
    volatile unsigned int BIV : 31;
} Ifx_CPU_BIV_Bits;


typedef struct _Ifx_CPU_BTV_Bits
{
    volatile unsigned int reserved_0 : 1;
    volatile unsigned int BTV : 31;
} Ifx_CPU_BTV_Bits;


typedef struct _Ifx_CPU_CCNT_Bits
{
    volatile unsigned int CountValue : 31;
    volatile unsigned int SOvf : 1;
} Ifx_CPU_CCNT_Bits;


typedef struct _Ifx_CPU_CCTRL_Bits
{
    volatile unsigned int CM : 1;
    volatile unsigned int CE : 1;
    volatile unsigned int M1 : 3;
    volatile unsigned int M2 : 3;
    volatile unsigned int M3 : 3;
    volatile unsigned int reserved_11 : 21;
} Ifx_CPU_CCTRL_Bits;


typedef struct _Ifx_CPU_COMPAT_Bits
{
    volatile unsigned int reserved_0 : 3;
    volatile unsigned int RM : 1;
    volatile unsigned int SP : 1;
    volatile unsigned int reserved_5 : 27;
} Ifx_CPU_COMPAT_Bits;


typedef struct _Ifx_CPU_CORE_ID_Bits
{
    volatile unsigned int CORE_ID : 3;
    volatile unsigned int reserved_3 : 29;
} Ifx_CPU_CORE_ID_Bits;


typedef struct _Ifx_CPU_CPR_L_Bits
{
    volatile unsigned int reserved_0 : 3;
    volatile unsigned int LOWBND : 29;
} Ifx_CPU_CPR_L_Bits;


typedef struct _Ifx_CPU_CPR_U_Bits
{
    volatile unsigned int reserved_0 : 3;
    volatile unsigned int UPPBND : 29;
} Ifx_CPU_CPR_U_Bits;


typedef struct _Ifx_CPU_CPU_ID_Bits
{
    volatile unsigned int MODREV : 8;
    volatile unsigned int MOD_32B : 8;
    volatile unsigned int MOD : 16;
} Ifx_CPU_CPU_ID_Bits;


typedef struct _Ifx_CPU_CPXE_Bits
{
    volatile unsigned int XE : 8;
    volatile unsigned int reserved_8 : 24;
} Ifx_CPU_CPXE_Bits;


typedef struct _Ifx_CPU_CREVT_Bits
{
    volatile unsigned int EVTA : 3;
    volatile unsigned int BBM : 1;
    volatile unsigned int BOD : 1;
    volatile unsigned int SUSP : 1;
    volatile unsigned int CNT : 2;
    volatile unsigned int reserved_8 : 24;
} Ifx_CPU_CREVT_Bits;


typedef struct _Ifx_CPU_CUS_ID_Bits
{
    volatile unsigned int CID : 3;
    volatile unsigned int reserved_3 : 29;
} Ifx_CPU_CUS_ID_Bits;


typedef struct _Ifx_CPU_D_Bits
{
    volatile unsigned int DATA : 32;
} Ifx_CPU_D_Bits;


typedef struct _Ifx_CPU_DATR_Bits
{
    volatile unsigned int reserved_0 : 3;
    volatile unsigned int SBE : 1;
    volatile unsigned int reserved_4 : 5;
    volatile unsigned int CWE : 1;
    volatile unsigned int CFE : 1;
    volatile unsigned int reserved_11 : 3;
    volatile unsigned int SOE : 1;
    volatile unsigned int SME : 1;
    volatile unsigned int reserved_16 : 16;
} Ifx_CPU_DATR_Bits;


typedef struct _Ifx_CPU_DBGSR_Bits
{
    volatile unsigned int DE : 1;
    volatile unsigned int HALT : 2;
    volatile unsigned int SIH : 1;
    volatile unsigned int SUSP : 1;
    volatile unsigned int reserved_5 : 1;
    volatile unsigned int PREVSUSP : 1;
    volatile unsigned int PEVT : 1;
    volatile unsigned int EVTSRC : 5;
    volatile unsigned int reserved_13 : 19;
} Ifx_CPU_DBGSR_Bits;


typedef struct _Ifx_CPU_DBGTCR_Bits
{
    volatile unsigned int DTA : 1;
    volatile unsigned int reserved_1 : 31;
} Ifx_CPU_DBGTCR_Bits;


typedef struct _Ifx_CPU_DCON0_Bits
{
    volatile unsigned int reserved_0 : 1;
    volatile unsigned int DCBYP : 1;
    volatile unsigned int reserved_2 : 30;
} Ifx_CPU_DCON0_Bits;


typedef struct _Ifx_CPU_DCON2_Bits
{
    volatile unsigned int DCACHE_SZE : 16;
    volatile unsigned int DSCRATCH_SZE : 16;
} Ifx_CPU_DCON2_Bits;


typedef struct _Ifx_CPU_DCX_Bits
{
    volatile unsigned int reserved_0 : 6;
    volatile unsigned int DCXValue : 26;
} Ifx_CPU_DCX_Bits;


typedef struct _Ifx_CPU_DEADD_Bits
{
    volatile unsigned int ERROR_ADDRESS : 32;
} Ifx_CPU_DEADD_Bits;


typedef struct _Ifx_CPU_DIEAR_Bits
{
    volatile unsigned int TA : 32;
} Ifx_CPU_DIEAR_Bits;


typedef struct _Ifx_CPU_DIETR_Bits
{
    volatile unsigned int IED : 1;
    volatile unsigned int IE_T : 1;
    volatile unsigned int IE_C : 1;
    volatile unsigned int IE_S : 1;
    volatile unsigned int IE_BI : 1;
    volatile unsigned int E_INFO : 6;
    volatile unsigned int IE_DUAL : 1;
    volatile unsigned int IE_SP : 1;
    volatile unsigned int IE_BS : 1;
    volatile unsigned int reserved_14 : 18;
} Ifx_CPU_DIETR_Bits;


typedef struct _Ifx_CPU_DMS_Bits
{
    volatile unsigned int reserved_0 : 1;
    volatile unsigned int DMSValue : 31;
} Ifx_CPU_DMS_Bits;


typedef struct _Ifx_CPU_DPR_L_Bits
{
    volatile unsigned int reserved_0 : 3;
    volatile unsigned int LOWBND : 29;
} Ifx_CPU_DPR_L_Bits;


typedef struct _Ifx_CPU_DPR_U_Bits
{
    volatile unsigned int reserved_0 : 3;
    volatile unsigned int UPPBND : 29;
} Ifx_CPU_DPR_U_Bits;


typedef struct _Ifx_CPU_DPRE_Bits
{
    volatile unsigned int RE : 16;
    volatile unsigned int reserved_16 : 16;
} Ifx_CPU_DPRE_Bits;


typedef struct _Ifx_CPU_DPWE_Bits
{
    volatile unsigned int WE : 16;
    volatile unsigned int reserved_16 : 16;
} Ifx_CPU_DPWE_Bits;


typedef struct _Ifx_CPU_DSTR_Bits
{
    volatile unsigned int SRE : 1;
    volatile unsigned int GAE : 1;
    volatile unsigned int LBE : 1;
    volatile unsigned int reserved_3 : 3;
    volatile unsigned int CRE : 1;
    volatile unsigned int reserved_7 : 7;
    volatile unsigned int DTME : 1;
    volatile unsigned int LOE : 1;
    volatile unsigned int SDE : 1;
    volatile unsigned int SCE : 1;
    volatile unsigned int CAC : 1;
    volatile unsigned int MPE : 1;
    volatile unsigned int CLE : 1;
    volatile unsigned int reserved_21 : 3;
    volatile unsigned int ALN : 1;
    volatile unsigned int reserved_25 : 7;
} Ifx_CPU_DSTR_Bits;


typedef struct _Ifx_CPU_EXEVT_Bits
{
    volatile unsigned int EVTA : 3;
    volatile unsigned int BBM : 1;
    volatile unsigned int BOD : 1;
    volatile unsigned int SUSP : 1;
    volatile unsigned int CNT : 2;
    volatile unsigned int reserved_8 : 24;
} Ifx_CPU_EXEVT_Bits;


typedef struct _Ifx_CPU_FCX_Bits
{
    volatile unsigned int FCXO : 16;
    volatile unsigned int FCXS : 4;
    volatile unsigned int reserved_20 : 12;
} Ifx_CPU_FCX_Bits;


typedef struct _Ifx_CPU_FPU_TRAP_CON_Bits
{
    volatile unsigned int TST : 1;
    volatile unsigned int TCL : 1;
    volatile unsigned int reserved_2 : 6;
    volatile unsigned int RM : 2;
    volatile unsigned int reserved_10 : 8;
    volatile unsigned int FXE : 1;
    volatile unsigned int FUE : 1;
    volatile unsigned int FZE : 1;
    volatile unsigned int FVE : 1;
    volatile unsigned int FIE : 1;
    volatile unsigned int reserved_23 : 3;
    volatile unsigned int FX : 1;
    volatile unsigned int FU : 1;
    volatile unsigned int FZ : 1;
    volatile unsigned int FV : 1;
    volatile unsigned int FI : 1;
    volatile unsigned int reserved_31 : 1;
} Ifx_CPU_FPU_TRAP_CON_Bits;


typedef struct _Ifx_CPU_FPU_TRAP_OPC_Bits
{
    volatile unsigned int OPC : 8;
    volatile unsigned int FMT : 1;
    volatile unsigned int reserved_9 : 7;
    volatile unsigned int DREG : 4;
    volatile unsigned int reserved_20 : 12;
} Ifx_CPU_FPU_TRAP_OPC_Bits;


typedef struct _Ifx_CPU_FPU_TRAP_PC_Bits
{
    volatile unsigned int PC : 32;
} Ifx_CPU_FPU_TRAP_PC_Bits;


typedef struct _Ifx_CPU_FPU_TRAP_SRC1_Bits
{
    volatile unsigned int SRC1 : 32;
} Ifx_CPU_FPU_TRAP_SRC1_Bits;


typedef struct _Ifx_CPU_FPU_TRAP_SRC2_Bits
{
    volatile unsigned int SRC2 : 32;
} Ifx_CPU_FPU_TRAP_SRC2_Bits;


typedef struct _Ifx_CPU_FPU_TRAP_SRC3_Bits
{
    volatile unsigned int SRC3 : 32;
} Ifx_CPU_FPU_TRAP_SRC3_Bits;


typedef struct _Ifx_CPU_ICNT_Bits
{
    volatile unsigned int CountValue : 31;
    volatile unsigned int SOvf : 1;
} Ifx_CPU_ICNT_Bits;


typedef struct _Ifx_CPU_ICR_Bits
{
    volatile unsigned int CCPN : 10;
    volatile unsigned int reserved_10 : 5;
    volatile unsigned int IE : 1;
    volatile unsigned int PIPN : 10;
    volatile unsigned int reserved_26 : 6;
} Ifx_CPU_ICR_Bits;


typedef struct _Ifx_CPU_ISP_Bits
{
    volatile unsigned int ISP : 32;
} Ifx_CPU_ISP_Bits;


typedef struct _Ifx_CPU_LCX_Bits
{
    volatile unsigned int LCXO : 16;
    volatile unsigned int LCXS : 4;
    volatile unsigned int reserved_20 : 12;
} Ifx_CPU_LCX_Bits;


typedef struct _Ifx_CPU_M1CNT_Bits
{
    volatile unsigned int CountValue : 31;
    volatile unsigned int SOvf : 1;
} Ifx_CPU_M1CNT_Bits;


typedef struct _Ifx_CPU_M2CNT_Bits
{
    volatile unsigned int CountValue : 31;
    volatile unsigned int SOvf : 1;
} Ifx_CPU_M2CNT_Bits;


typedef struct _Ifx_CPU_M3CNT_Bits
{
    volatile unsigned int CountValue : 31;
    volatile unsigned int SOvf : 1;
} Ifx_CPU_M3CNT_Bits;


typedef struct _Ifx_CPU_PC_Bits
{
    volatile unsigned int reserved_0 : 1;
    volatile unsigned int PC : 31;
} Ifx_CPU_PC_Bits;


typedef struct _Ifx_CPU_PCON0_Bits
{
    volatile unsigned int reserved_0 : 1;
    volatile unsigned int PCBYP : 1;
    volatile unsigned int reserved_2 : 30;
} Ifx_CPU_PCON0_Bits;


typedef struct _Ifx_CPU_PCON1_Bits
{
    volatile unsigned int PCINV : 1;
    volatile unsigned int PBINV : 1;
    volatile unsigned int reserved_2 : 30;
} Ifx_CPU_PCON1_Bits;


typedef struct _Ifx_CPU_PCON2_Bits
{
    volatile unsigned int PCACHE_SZE : 16;
    volatile unsigned int PSCRATCH_SZE : 16;
} Ifx_CPU_PCON2_Bits;


typedef struct _Ifx_CPU_PCXI_Bits
{
    volatile unsigned int PCXO : 16;
    volatile unsigned int PCXS : 4;
    volatile unsigned int UL : 1;
    volatile unsigned int PIE : 1;
    volatile unsigned int PCPN : 10;
} Ifx_CPU_PCXI_Bits;


typedef struct _Ifx_CPU_PIEAR_Bits
{
    volatile unsigned int TA : 32;
} Ifx_CPU_PIEAR_Bits;


typedef struct _Ifx_CPU_PIETR_Bits
{
    volatile unsigned int IED : 1;
    volatile unsigned int IE_T : 1;
    volatile unsigned int IE_C : 1;
    volatile unsigned int IE_S : 1;
    volatile unsigned int IE_BI : 1;
    volatile unsigned int E_INFO : 6;
    volatile unsigned int IE_DUAL : 1;
    volatile unsigned int IE_SP : 1;
    volatile unsigned int IE_BS : 1;
    volatile unsigned int reserved_14 : 18;
} Ifx_CPU_PIETR_Bits;


typedef struct _Ifx_CPU_PMA0_Bits
{
    volatile unsigned int reserved_0 : 13;
    volatile unsigned int DAC : 3;
    volatile unsigned int reserved_16 : 16;
} Ifx_CPU_PMA0_Bits;


typedef struct _Ifx_CPU_PMA1_Bits
{
    volatile unsigned int reserved_0 : 14;
    volatile unsigned int CAC : 2;
    volatile unsigned int reserved_16 : 16;
} Ifx_CPU_PMA1_Bits;


typedef struct _Ifx_CPU_PMA2_Bits
{
    volatile unsigned int PSI : 16;
    volatile unsigned int reserved_16 : 16;
} Ifx_CPU_PMA2_Bits;


typedef struct _Ifx_CPU_PSTR_Bits
{
    volatile unsigned int FRE : 1;
    volatile unsigned int reserved_1 : 1;
    volatile unsigned int FBE : 1;
    volatile unsigned int reserved_3 : 9;
    volatile unsigned int FPE : 1;
    volatile unsigned int reserved_13 : 1;
    volatile unsigned int FME : 1;
    volatile unsigned int reserved_15 : 17;
} Ifx_CPU_PSTR_Bits;


typedef struct _Ifx_CPU_PSW_Bits
{
    volatile unsigned int CDC : 7;
    volatile unsigned int CDE : 1;
    volatile unsigned int GW : 1;
    volatile unsigned int IS : 1;
    volatile unsigned int IO : 2;
    volatile unsigned int PRS : 2;
    volatile unsigned int S : 1;
    volatile unsigned int reserved_15 : 12;
    volatile unsigned int SAV : 1;
    volatile unsigned int AV : 1;
    volatile unsigned int SV : 1;
    volatile unsigned int V : 1;
    volatile unsigned int C : 1;
} Ifx_CPU_PSW_Bits;


typedef struct _Ifx_CPU_SEGEN_Bits
{
    volatile unsigned int ADFLIP : 8;
    volatile unsigned int ADTYPE : 2;
    volatile unsigned int reserved_10 : 21;
    volatile unsigned int AE : 1;
} Ifx_CPU_SEGEN_Bits;


typedef struct _Ifx_CPU_SMACON_Bits
{
    volatile unsigned int PC : 1;
    volatile unsigned int reserved_1 : 1;
    volatile unsigned int PT : 1;
    volatile unsigned int reserved_3 : 5;
    volatile unsigned int DC : 1;
    volatile unsigned int reserved_9 : 1;
    volatile unsigned int DT : 1;
    volatile unsigned int reserved_11 : 13;
    volatile unsigned int IODT : 1;
    volatile unsigned int reserved_25 : 7;
} Ifx_CPU_SMACON_Bits;


typedef struct _Ifx_CPU_SPROT_ACCENA_Bits
{
    unsigned int EN : 32;
} Ifx_CPU_SPROT_ACCENA_Bits;


typedef struct _Ifx_CPU_SPROT_ACCENB_Bits
{
    unsigned int reserved_0 : 32;
} Ifx_CPU_SPROT_ACCENB_Bits;


typedef struct _Ifx_CPU_SPROT_RGN_ACCENA_Bits
{
    unsigned int EN : 32;
} Ifx_CPU_SPROT_RGN_ACCENA_Bits;


typedef struct _Ifx_CPU_SPROT_RGN_ACCENB_Bits
{
    unsigned int reserved_0 : 32;
} Ifx_CPU_SPROT_RGN_ACCENB_Bits;


typedef struct _Ifx_CPU_SPROT_RGN_LA_Bits
{
    unsigned int reserved_0 : 5;
    unsigned int ADDR : 27;
} Ifx_CPU_SPROT_RGN_LA_Bits;


typedef struct _Ifx_CPU_SPROT_RGN_UA_Bits
{
    unsigned int reserved_0 : 5;
    unsigned int ADDR : 27;
} Ifx_CPU_SPROT_RGN_UA_Bits;


typedef struct _Ifx_CPU_SWEVT_Bits
{
    volatile unsigned int EVTA : 3;
    volatile unsigned int BBM : 1;
    volatile unsigned int BOD : 1;
    volatile unsigned int SUSP : 1;
    volatile unsigned int CNT : 2;
    volatile unsigned int reserved_8 : 24;
} Ifx_CPU_SWEVT_Bits;


typedef struct _Ifx_CPU_SYSCON_Bits
{
    volatile unsigned int FCDSF : 1;
    volatile unsigned int PROTEN : 1;
    volatile unsigned int TPROTEN : 1;
    volatile unsigned int IS : 1;
    volatile unsigned int IT : 1;
    volatile unsigned int reserved_5 : 27;
} Ifx_CPU_SYSCON_Bits;


typedef struct _Ifx_CPU_TASK_ASI_Bits
{
    volatile unsigned int ASI : 5;
    volatile unsigned int reserved_5 : 27;
} Ifx_CPU_TASK_ASI_Bits;


typedef struct _Ifx_CPU_TPS_CON_Bits
{
    volatile unsigned int TEXP0 : 1;
    volatile unsigned int TEXP1 : 1;
    volatile unsigned int TEXP2 : 1;
    volatile unsigned int reserved_3 : 13;
    volatile unsigned int TTRAP : 1;
    volatile unsigned int reserved_17 : 15;
} Ifx_CPU_TPS_CON_Bits;


typedef struct _Ifx_CPU_TPS_TIMER_Bits
{
    volatile unsigned int Timer : 32;
} Ifx_CPU_TPS_TIMER_Bits;


typedef struct _Ifx_CPU_TR_ADR_Bits
{
    volatile unsigned int ADDR : 32;
} Ifx_CPU_TR_ADR_Bits;


typedef struct _Ifx_CPU_TR_EVT_Bits
{
    volatile unsigned int EVTA : 3;
    volatile unsigned int BBM : 1;
    volatile unsigned int BOD : 1;
    volatile unsigned int SUSP : 1;
    volatile unsigned int CNT : 2;
    volatile unsigned int reserved_8 : 4;
    volatile unsigned int TYP : 1;
    volatile unsigned int RNG : 1;
    volatile unsigned int reserved_14 : 1;
    volatile unsigned int ASI_EN : 1;
    volatile unsigned int ASI : 5;
    volatile unsigned int reserved_21 : 6;
    volatile unsigned int AST : 1;
    volatile unsigned int ALD : 1;
    volatile unsigned int reserved_29 : 3;
} Ifx_CPU_TR_EVT_Bits;


typedef struct _Ifx_CPU_TRIG_ACC_Bits
{
    volatile unsigned int T0 : 1;
    volatile unsigned int T1 : 1;
    volatile unsigned int T2 : 1;
    volatile unsigned int T3 : 1;
    volatile unsigned int T4 : 1;
    volatile unsigned int T5 : 1;
    volatile unsigned int T6 : 1;
    volatile unsigned int T7 : 1;
    volatile unsigned int reserved_8 : 24;
} Ifx_CPU_TRIG_ACC_Bits;







typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_A_Bits B;
} Ifx_CPU_A;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_BIV_Bits B;
} Ifx_CPU_BIV;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_BTV_Bits B;
} Ifx_CPU_BTV;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_CCNT_Bits B;
} Ifx_CPU_CCNT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_CCTRL_Bits B;
} Ifx_CPU_CCTRL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_COMPAT_Bits B;
} Ifx_CPU_COMPAT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_CORE_ID_Bits B;
} Ifx_CPU_CORE_ID;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_CPR_L_Bits B;
} Ifx_CPU_CPR_L;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_CPR_U_Bits B;
} Ifx_CPU_CPR_U;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_CPU_ID_Bits B;
} Ifx_CPU_CPU_ID;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_CPXE_Bits B;
} Ifx_CPU_CPXE;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_CREVT_Bits B;
} Ifx_CPU_CREVT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_CUS_ID_Bits B;
} Ifx_CPU_CUS_ID;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_D_Bits B;
} Ifx_CPU_D;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_DATR_Bits B;
} Ifx_CPU_DATR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_DBGSR_Bits B;
} Ifx_CPU_DBGSR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_DBGTCR_Bits B;
} Ifx_CPU_DBGTCR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_DCON0_Bits B;
} Ifx_CPU_DCON0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_DCON2_Bits B;
} Ifx_CPU_DCON2;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_DCX_Bits B;
} Ifx_CPU_DCX;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_DEADD_Bits B;
} Ifx_CPU_DEADD;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_DIEAR_Bits B;
} Ifx_CPU_DIEAR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_DIETR_Bits B;
} Ifx_CPU_DIETR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_DMS_Bits B;
} Ifx_CPU_DMS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_DPR_L_Bits B;
} Ifx_CPU_DPR_L;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_DPR_U_Bits B;
} Ifx_CPU_DPR_U;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_DPRE_Bits B;
} Ifx_CPU_DPRE;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_DPWE_Bits B;
} Ifx_CPU_DPWE;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_DSTR_Bits B;
} Ifx_CPU_DSTR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_EXEVT_Bits B;
} Ifx_CPU_EXEVT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_FCX_Bits B;
} Ifx_CPU_FCX;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_FPU_TRAP_CON_Bits B;
} Ifx_CPU_FPU_TRAP_CON;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_FPU_TRAP_OPC_Bits B;
} Ifx_CPU_FPU_TRAP_OPC;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_FPU_TRAP_PC_Bits B;
} Ifx_CPU_FPU_TRAP_PC;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_FPU_TRAP_SRC1_Bits B;
} Ifx_CPU_FPU_TRAP_SRC1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_FPU_TRAP_SRC2_Bits B;
} Ifx_CPU_FPU_TRAP_SRC2;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_FPU_TRAP_SRC3_Bits B;
} Ifx_CPU_FPU_TRAP_SRC3;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_ICNT_Bits B;
} Ifx_CPU_ICNT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_ICR_Bits B;
} Ifx_CPU_ICR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_ISP_Bits B;
} Ifx_CPU_ISP;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_LCX_Bits B;
} Ifx_CPU_LCX;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_M1CNT_Bits B;
} Ifx_CPU_M1CNT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_M2CNT_Bits B;
} Ifx_CPU_M2CNT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_M3CNT_Bits B;
} Ifx_CPU_M3CNT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_PC_Bits B;
} Ifx_CPU_PC;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_PCON0_Bits B;
} Ifx_CPU_PCON0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_PCON1_Bits B;
} Ifx_CPU_PCON1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_PCON2_Bits B;
} Ifx_CPU_PCON2;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_PCXI_Bits B;
} Ifx_CPU_PCXI;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_PIEAR_Bits B;
} Ifx_CPU_PIEAR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_PIETR_Bits B;
} Ifx_CPU_PIETR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_PMA0_Bits B;
} Ifx_CPU_PMA0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_PMA1_Bits B;
} Ifx_CPU_PMA1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_PMA2_Bits B;
} Ifx_CPU_PMA2;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_PSTR_Bits B;
} Ifx_CPU_PSTR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_PSW_Bits B;
} Ifx_CPU_PSW;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_SEGEN_Bits B;
} Ifx_CPU_SEGEN;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_SMACON_Bits B;
} Ifx_CPU_SMACON;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_SPROT_ACCENA_Bits B;
} Ifx_CPU_SPROT_ACCENA;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_SPROT_ACCENB_Bits B;
} Ifx_CPU_SPROT_ACCENB;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_SPROT_RGN_ACCENA_Bits B;
} Ifx_CPU_SPROT_RGN_ACCENA;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_SPROT_RGN_ACCENB_Bits B;
} Ifx_CPU_SPROT_RGN_ACCENB;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_SPROT_RGN_LA_Bits B;
} Ifx_CPU_SPROT_RGN_LA;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_SPROT_RGN_UA_Bits B;
} Ifx_CPU_SPROT_RGN_UA;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_SWEVT_Bits B;
} Ifx_CPU_SWEVT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_SYSCON_Bits B;
} Ifx_CPU_SYSCON;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_TASK_ASI_Bits B;
} Ifx_CPU_TASK_ASI;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_TPS_CON_Bits B;
} Ifx_CPU_TPS_CON;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_TPS_TIMER_Bits B;
} Ifx_CPU_TPS_TIMER;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_TR_ADR_Bits B;
} Ifx_CPU_TR_ADR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_TR_EVT_Bits B;
} Ifx_CPU_TR_EVT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_TRIG_ACC_Bits B;
} Ifx_CPU_TRIG_ACC;
# 1271 "../30_Bsw/Common/TC21x/IfxCpu_regdef.h"
typedef volatile struct _Ifx_CPU_CPR
{
    Ifx_CPU_CPR_L L;
    Ifx_CPU_CPR_U U;
} Ifx_CPU_CPR;


typedef volatile struct _Ifx_CPU_DPR
{
    Ifx_CPU_DPR_L L;
    Ifx_CPU_DPR_U U;
} Ifx_CPU_DPR;


typedef volatile struct _Ifx_CPU_SPROT_RGN
{
    Ifx_CPU_SPROT_RGN_LA LA;
    Ifx_CPU_SPROT_RGN_UA UA;
    Ifx_CPU_SPROT_RGN_ACCENA ACCENA;
    Ifx_CPU_SPROT_RGN_ACCENB ACCENB;
} Ifx_CPU_SPROT_RGN;


typedef volatile struct _Ifx_CPU_TPS
{
    Ifx_CPU_TPS_CON CON;
    Ifx_CPU_TPS_TIMER TIMER[3];
} Ifx_CPU_TPS;


typedef volatile struct _Ifx_CPU_TR
{
    Ifx_CPU_TR_EVT EVT;
    Ifx_CPU_TR_ADR ADR;
} Ifx_CPU_TR;
# 1318 "../30_Bsw/Common/TC21x/IfxCpu_regdef.h"
typedef volatile struct _Ifx_CPU
{
    unsigned char reserved_0[4144];
    Ifx_CPU_SEGEN SEGEN;
    unsigned char reserved_1034[28624];
    Ifx_CPU_TASK_ASI TASK_ASI;
    unsigned char reserved_8008[248];
    Ifx_CPU_PMA0 PMA0;
    Ifx_CPU_PMA1 PMA1;
    Ifx_CPU_PMA2 PMA2;
    unsigned char reserved_810C[3828];
    Ifx_CPU_DCON2 DCON2;
    unsigned char reserved_9004[8];
    Ifx_CPU_SMACON SMACON;
    Ifx_CPU_DSTR DSTR;
    unsigned char reserved_9014[4];
    Ifx_CPU_DATR DATR;
    Ifx_CPU_DEADD DEADD;
    Ifx_CPU_DIEAR DIEAR;
    Ifx_CPU_DIETR DIETR;
    unsigned char reserved_9028[24];
    Ifx_CPU_DCON0 DCON0;
    unsigned char reserved_9044[444];
    Ifx_CPU_PSTR PSTR;
    Ifx_CPU_PCON1 PCON1;
    Ifx_CPU_PCON2 PCON2;
    Ifx_CPU_PCON0 PCON0;
    Ifx_CPU_PIEAR PIEAR;
    Ifx_CPU_PIETR PIETR;
    unsigned char reserved_9218[488];
    Ifx_CPU_COMPAT COMPAT;
    unsigned char reserved_9404[3068];
    Ifx_CPU_FPU_TRAP_CON FPU_TRAP_CON;
    Ifx_CPU_FPU_TRAP_PC FPU_TRAP_PC;
    Ifx_CPU_FPU_TRAP_OPC FPU_TRAP_OPC;
    unsigned char reserved_A00C[4];
    Ifx_CPU_FPU_TRAP_SRC1 FPU_TRAP_SRC1;
    Ifx_CPU_FPU_TRAP_SRC2 FPU_TRAP_SRC2;
    Ifx_CPU_FPU_TRAP_SRC3 FPU_TRAP_SRC3;
    unsigned char reserved_A01C[8164];
    Ifx_CPU_DPR DPR[16];
    unsigned char reserved_C080[3968];
    Ifx_CPU_CPR CPR[8];
    unsigned char reserved_D040[4032];
    Ifx_CPU_CPXE CPXE[4];
    Ifx_CPU_DPRE DPRE[4];
    Ifx_CPU_DPWE DPWE[4];
    unsigned char reserved_E030[976];
    Ifx_CPU_TPS TPS;
    unsigned char reserved_E410[3056];
    Ifx_CPU_TR TR[8];
    unsigned char reserved_F040[3008];
    Ifx_CPU_CCTRL CCTRL;
    Ifx_CPU_CCNT CCNT;
    Ifx_CPU_ICNT ICNT;
    Ifx_CPU_M1CNT M1CNT;
    Ifx_CPU_M2CNT M2CNT;
    Ifx_CPU_M3CNT M3CNT;
    unsigned char reserved_FC18[232];
    Ifx_CPU_DBGSR DBGSR;
    unsigned char reserved_FD04[4];
    Ifx_CPU_EXEVT EXEVT;
    Ifx_CPU_CREVT CREVT;
    Ifx_CPU_SWEVT SWEVT;
    unsigned char reserved_FD14[28];
    Ifx_CPU_TRIG_ACC TRIG_ACC;
    unsigned char reserved_FD34[12];
    Ifx_CPU_DMS DMS;
    Ifx_CPU_DCX DCX;
    Ifx_CPU_DBGTCR DBGTCR;
    unsigned char reserved_FD4C[180];
    Ifx_CPU_PCXI PCXI;
    Ifx_CPU_PSW PSW;
    Ifx_CPU_PC PC;
    unsigned char reserved_FE0C[8];
    Ifx_CPU_SYSCON SYSCON;
    Ifx_CPU_CPU_ID CPU_ID;
    Ifx_CPU_CORE_ID CORE_ID;
    Ifx_CPU_BIV BIV;
    Ifx_CPU_BTV BTV;
    Ifx_CPU_ISP ISP;
    Ifx_CPU_ICR ICR;
    unsigned char reserved_FE30[8];
    Ifx_CPU_FCX FCX;
    Ifx_CPU_LCX LCX;
    unsigned char reserved_FE40[16];
    Ifx_CPU_CUS_ID CUS_ID;
    unsigned char reserved_FE54[172];
    Ifx_CPU_D D[16];
    unsigned char reserved_FF40[64];
    Ifx_CPU_A A[16];
    unsigned char reserved_FFC0[64];
} Ifx_CPU;


typedef volatile struct _Ifx_CPU_SPROT
{
    unsigned char reserved_0[57344];
    Ifx_CPU_SPROT_RGN RGN[8];
    unsigned char reserved_E080[128];
    Ifx_CPU_SPROT_ACCENA ACCENA;
    Ifx_CPU_SPROT_ACCENB ACCENB;
    unsigned char reserved_E108[7928];
} Ifx_CPU_SPROT;
# 43 "../30_Bsw/Common/TC21x/IfxCpu_reg.h" 2
# 31 "../30_Bsw/Safety/Safety_cfg.h" 2
# 1 "../30_Bsw/Common/TC21x/IfxMtu_reg.h" 1
# 36 "../30_Bsw/Common/TC21x/IfxMtu_reg.h"
# 1 "../30_Bsw/Common/TC21x/IfxMtu_regdef.h" 1
# 45 "../30_Bsw/Common/TC21x/IfxMtu_regdef.h"
typedef struct _Ifx_MTU_ACCEN0_Bits
{
    unsigned int EN0 : 1;
    unsigned int EN1 : 1;
    unsigned int EN2 : 1;
    unsigned int EN3 : 1;
    unsigned int EN4 : 1;
    unsigned int EN5 : 1;
    unsigned int EN6 : 1;
    unsigned int EN7 : 1;
    unsigned int EN8 : 1;
    unsigned int EN9 : 1;
    unsigned int EN10 : 1;
    unsigned int EN11 : 1;
    unsigned int EN12 : 1;
    unsigned int EN13 : 1;
    unsigned int EN14 : 1;
    unsigned int EN15 : 1;
    unsigned int EN16 : 1;
    unsigned int EN17 : 1;
    unsigned int EN18 : 1;
    unsigned int EN19 : 1;
    unsigned int EN20 : 1;
    unsigned int EN21 : 1;
    unsigned int EN22 : 1;
    unsigned int EN23 : 1;
    unsigned int EN24 : 1;
    unsigned int EN25 : 1;
    unsigned int EN26 : 1;
    unsigned int EN27 : 1;
    unsigned int EN28 : 1;
    unsigned int EN29 : 1;
    unsigned int EN30 : 1;
    unsigned int EN31 : 1;
} Ifx_MTU_ACCEN0_Bits;


typedef struct _Ifx_MTU_ACCEN1_Bits
{
    unsigned int reserved_0 : 32;
} Ifx_MTU_ACCEN1_Bits;


typedef struct _Ifx_MTU_CLC_Bits
{
    unsigned int DISR : 1;
    unsigned int DISS : 1;
    unsigned int Resvd : 1;
    unsigned int EDIS : 1;
    unsigned int reserved_4 : 28;
} Ifx_MTU_CLC_Bits;


typedef struct _Ifx_MTU_ID_Bits
{
    unsigned int MODREV : 8;
    unsigned int MODTYPE : 8;
    unsigned int MODNUMBER : 16;
} Ifx_MTU_ID_Bits;


typedef struct _Ifx_MTU_MEMMAP_Bits
{
    unsigned int reserved_0 : 1;
    unsigned int CPU2DxMAP : 2;
    unsigned int reserved_3 : 1;
    unsigned int CPU2PxMAP : 2;
    unsigned int reserved_6 : 1;
    unsigned int CPU1DxMAP : 2;
    unsigned int reserved_9 : 1;
    unsigned int CPU1PxMAP : 2;
    unsigned int reserved_12 : 3;
    unsigned int CPU0PCMAP : 1;
    unsigned int reserved_16 : 1;
    unsigned int CPU0PTMAP : 1;
    unsigned int CPU0DxMAP : 2;
    unsigned int reserved_20 : 12;
} Ifx_MTU_MEMMAP_Bits;


typedef struct _Ifx_MTU_MEMSTAT0_Bits
{
    unsigned int CPU2DSAIU : 1;
    unsigned int reserved_1 : 1;
    unsigned int CPU2DTAIU : 1;
    unsigned int CPU2PSAIU : 1;
    unsigned int reserved_4 : 1;
    unsigned int CPU2PTAIU : 1;
    unsigned int CPU1DSAIU : 1;
    unsigned int reserved_7 : 1;
    unsigned int CPU1DTAIU : 1;
    unsigned int CPU1PSAIU : 1;
    unsigned int reserved_10 : 1;
    unsigned int CPU1PTAIU : 1;
    unsigned int reserved_12 : 2;
    unsigned int CPU0DSAIU : 1;
    unsigned int reserved_15 : 1;
    unsigned int CPU0PSAIU : 1;
    unsigned int CPU0PTAIU : 1;
    unsigned int reserved_18 : 1;
    unsigned int CPU0DxAIU : 1;
    unsigned int CPU1DS2AIU : 1;
    unsigned int CPU2DS2AIU : 1;
    unsigned int reserved_22 : 1;
    unsigned int HSMCAIU : 1;
    unsigned int HSMTAIU : 1;
    unsigned int HSMRAIU : 1;
    unsigned int FSI0AIU : 1;
    unsigned int reserved_27 : 5;
} Ifx_MTU_MEMSTAT0_Bits;


typedef struct _Ifx_MTU_MEMSTAT1_Bits
{
    unsigned int reserved_0 : 32;
} Ifx_MTU_MEMSTAT1_Bits;


typedef struct _Ifx_MTU_MEMSTAT2_Bits
{
    unsigned int reserved_0 : 32;
} Ifx_MTU_MEMSTAT2_Bits;


typedef struct _Ifx_MTU_MEMTEST0_Bits
{
    unsigned int CPU2XEN : 6;
    unsigned int CPU1XEN : 6;
    unsigned int LMUEN : 1;
    unsigned int MMCDSEN : 1;
    unsigned int CPU0DSEN : 1;
    unsigned int Res : 1;
    unsigned int CPU0PSEN : 1;
    unsigned int CPU0PTEN : 1;
    unsigned int reserved_18 : 1;
    unsigned int CPU0DTEN : 1;
    unsigned int CPUXDS2EN : 2;
    unsigned int ETHEN : 1;
    unsigned int reserved_23 : 3;
    unsigned int FSI0EN : 1;
    unsigned int reserved_27 : 1;
    unsigned int GTMFEN : 1;
    unsigned int GTMM0EN : 1;
    unsigned int GTMM1EN : 1;
    unsigned int GTM1AEN : 1;
} Ifx_MTU_MEMTEST0_Bits;


typedef struct _Ifx_MTU_MEMTEST1_Bits
{
    unsigned int GTM1BEN : 1;
    unsigned int GTM2EN : 1;
    unsigned int PSI5EN : 1;
    unsigned int reserved_3 : 1;
    unsigned int MCAN0EN : 1;
    unsigned int MCAN1EN : 1;
    unsigned int ERAY0XEN : 3;
    unsigned int ERAY1XEN : 3;
    unsigned int STBY1EN : 1;
    unsigned int MCDSEN : 1;
    unsigned int EMEML0EN : 1;
    unsigned int EMEML1EN : 1;
    unsigned int EMEML2EN : 1;
    unsigned int EMEML3EN : 1;
    unsigned int EMEMLXEN : 12;
    unsigned int EMEMUXEN : 2;
} Ifx_MTU_MEMTEST1_Bits;


typedef struct _Ifx_MTU_MEMTEST2_Bits
{
    unsigned int EMEMUxEN : 14;
    unsigned int CIF0EN : 1;
    unsigned int DAMEN : 1;
    unsigned int CIFxEN : 2;
    unsigned int STBY2EN : 1;
    unsigned int DMAEN : 1;
    unsigned int XTM0EN : 1;
    unsigned int XTM1EN : 1;
    unsigned int FFTxEN : 2;
    unsigned int reserved_24 : 8;
} Ifx_MTU_MEMTEST2_Bits;







typedef union
{
    unsigned int U;
    signed int I;
    Ifx_MTU_ACCEN0_Bits B;
} Ifx_MTU_ACCEN0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_MTU_ACCEN1_Bits B;
} Ifx_MTU_ACCEN1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_MTU_CLC_Bits B;
} Ifx_MTU_CLC;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_MTU_ID_Bits B;
} Ifx_MTU_ID;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_MTU_MEMMAP_Bits B;
} Ifx_MTU_MEMMAP;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_MTU_MEMSTAT0_Bits B;
} Ifx_MTU_MEMSTAT0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_MTU_MEMSTAT1_Bits B;
} Ifx_MTU_MEMSTAT1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_MTU_MEMSTAT2_Bits B;
} Ifx_MTU_MEMSTAT2;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_MTU_MEMTEST0_Bits B;
} Ifx_MTU_MEMTEST0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_MTU_MEMTEST1_Bits B;
} Ifx_MTU_MEMTEST1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_MTU_MEMTEST2_Bits B;
} Ifx_MTU_MEMTEST2;
# 330 "../30_Bsw/Common/TC21x/IfxMtu_regdef.h"
typedef volatile struct _Ifx_MTU
{
    Ifx_MTU_CLC CLC;
    unsigned char reserved_4[4];
    Ifx_MTU_ID ID;
    unsigned char reserved_C[4];
    Ifx_MTU_MEMTEST0 MEMTEST0;
    Ifx_MTU_MEMTEST1 MEMTEST1;
    Ifx_MTU_MEMTEST2 MEMTEST2;
    Ifx_MTU_MEMMAP MEMMAP;
    unsigned char reserved_20[24];
    Ifx_MTU_MEMSTAT0 MEMSTAT0;
    Ifx_MTU_MEMSTAT1 MEMSTAT1;
    Ifx_MTU_MEMSTAT2 MEMSTAT2;
    unsigned char reserved_44[180];
    Ifx_MTU_ACCEN1 ACCEN1;
    Ifx_MTU_ACCEN0 ACCEN0;
    unsigned char reserved_100[1];
} Ifx_MTU;
# 37 "../30_Bsw/Common/TC21x/IfxMtu_reg.h" 2
# 32 "../30_Bsw/Safety/Safety_cfg.h" 2
# 1 "../30_Bsw/Common/TC21x/IfxFlash_reg.h" 1
# 36 "../30_Bsw/Common/TC21x/IfxFlash_reg.h"
# 1 "../30_Bsw/Common/TC21x/IfxFlash_regdef.h" 1
# 45 "../30_Bsw/Common/TC21x/IfxFlash_regdef.h"
typedef struct _Ifx_FLASH_ACCEN0_Bits
{
    unsigned int EN0 : 1;
    unsigned int EN1 : 1;
    unsigned int EN2 : 1;
    unsigned int EN3 : 1;
    unsigned int EN4 : 1;
    unsigned int EN5 : 1;
    unsigned int EN6 : 1;
    unsigned int EN7 : 1;
    unsigned int EN8 : 1;
    unsigned int EN9 : 1;
    unsigned int EN10 : 1;
    unsigned int EN11 : 1;
    unsigned int EN12 : 1;
    unsigned int EN13 : 1;
    unsigned int EN14 : 1;
    unsigned int EN15 : 1;
    unsigned int EN16 : 1;
    unsigned int EN17 : 1;
    unsigned int EN18 : 1;
    unsigned int EN19 : 1;
    unsigned int EN20 : 1;
    unsigned int EN21 : 1;
    unsigned int EN22 : 1;
    unsigned int EN23 : 1;
    unsigned int EN24 : 1;
    unsigned int EN25 : 1;
    unsigned int EN26 : 1;
    unsigned int EN27 : 1;
    unsigned int EN28 : 1;
    unsigned int EN29 : 1;
    unsigned int EN30 : 1;
    unsigned int EN31 : 1;
} Ifx_FLASH_ACCEN0_Bits;


typedef struct _Ifx_FLASH_ACCEN1_Bits
{
    unsigned int reserved_0 : 32;
} Ifx_FLASH_ACCEN1_Bits;


typedef struct _Ifx_FLASH_CBAB_CFG_Bits
{
    unsigned int SEL : 6;
    unsigned int reserved_6 : 2;
    unsigned int CLR : 1;
    unsigned int DIS : 1;
    unsigned int reserved_10 : 22;
} Ifx_FLASH_CBAB_CFG_Bits;


typedef struct _Ifx_FLASH_CBAB_STAT_Bits
{
    unsigned int VLD0 : 1;
    unsigned int VLD1 : 1;
    unsigned int VLD2 : 1;
    unsigned int VLD3 : 1;
    unsigned int VLD4 : 1;
    unsigned int VLD5 : 1;
    unsigned int VLD6 : 1;
    unsigned int VLD7 : 1;
    unsigned int VLD8 : 1;
    unsigned int VLD9 : 1;
    unsigned int reserved_10 : 22;
} Ifx_FLASH_CBAB_STAT_Bits;


typedef struct _Ifx_FLASH_CBAB_TOP_Bits
{
    unsigned int reserved_0 : 5;
    unsigned int ADDR : 19;
    unsigned int ERR : 6;
    unsigned int VLD : 1;
    unsigned int CLR : 1;
} Ifx_FLASH_CBAB_TOP_Bits;


typedef struct _Ifx_FLASH_COMM0_Bits
{
    unsigned int STATUS : 8;
    unsigned int reserved_8 : 24;
} Ifx_FLASH_COMM0_Bits;


typedef struct _Ifx_FLASH_COMM1_Bits
{
    unsigned int STATUS : 8;
    unsigned int DATA : 8;
    unsigned int reserved_16 : 16;
} Ifx_FLASH_COMM1_Bits;


typedef struct _Ifx_FLASH_COMM2_Bits
{
    unsigned int STATUS : 8;
    unsigned int DATA : 8;
    unsigned int reserved_16 : 16;
} Ifx_FLASH_COMM2_Bits;


typedef struct _Ifx_FLASH_ECCRD_Bits
{
    unsigned int RCODE : 22;
    unsigned int reserved_22 : 8;
    unsigned int EDCERRINJ : 1;
    unsigned int ECCORDIS : 1;
} Ifx_FLASH_ECCRD_Bits;


typedef struct _Ifx_FLASH_ECCRP_Bits
{
    unsigned int RCODE : 22;
    unsigned int reserved_22 : 8;
    unsigned int EDCERRINJ : 1;
    unsigned int ECCORDIS : 1;
} Ifx_FLASH_ECCRP_Bits;


typedef struct _Ifx_FLASH_ECCW_Bits
{
    unsigned int WCODE : 22;
    unsigned int reserved_22 : 8;
    unsigned int DECENCDIS : 1;
    unsigned int PECENCDIS : 1;
} Ifx_FLASH_ECCW_Bits;


typedef struct _Ifx_FLASH_FCON_Bits
{
    unsigned int WSPFLASH : 4;
    unsigned int WSECPF : 2;
    unsigned int WSDFLASH : 6;
    unsigned int WSECDF : 3;
    unsigned int IDLE : 1;
    unsigned int ESLDIS : 1;
    unsigned int SLEEP : 1;
    unsigned int NSAFECC : 1;
    unsigned int STALL : 1;
    unsigned int RES21 : 2;
    unsigned int RES23 : 2;
    unsigned int VOPERM : 1;
    unsigned int SQERM : 1;
    unsigned int PROERM : 1;
    unsigned int reserved_27 : 3;
    unsigned int PR5V : 1;
    unsigned int EOBM : 1;
} Ifx_FLASH_FCON_Bits;


typedef struct _Ifx_FLASH_FPRO_Bits
{
    unsigned int PROINP : 1;
    unsigned int PRODISP : 1;
    unsigned int PROIND : 1;
    unsigned int PRODISD : 1;
    unsigned int PROINHSMCOTP : 1;
    unsigned int RES5 : 1;
    unsigned int PROINOTP : 1;
    unsigned int RES7 : 1;
    unsigned int PROINDBG : 1;
    unsigned int PRODISDBG : 1;
    unsigned int PROINHSM : 1;
    unsigned int reserved_11 : 5;
    unsigned int DCFP : 1;
    unsigned int DDFP : 1;
    unsigned int DDFPX : 1;
    unsigned int reserved_19 : 1;
    unsigned int DDFD : 1;
    unsigned int reserved_21 : 1;
    unsigned int ENPE : 2;
    unsigned int reserved_24 : 8;
} Ifx_FLASH_FPRO_Bits;


typedef struct _Ifx_FLASH_FSR_Bits
{
    unsigned int FABUSY : 1;
    unsigned int D0BUSY : 1;
    unsigned int RES1 : 1;
    unsigned int P0BUSY : 1;
    unsigned int RES4 : 1;
    unsigned int RES5 : 1;
    unsigned int RES6 : 1;
    unsigned int PROG : 1;
    unsigned int ERASE : 1;
    unsigned int PFPAGE : 1;
    unsigned int DFPAGE : 1;
    unsigned int OPER : 1;
    unsigned int SQER : 1;
    unsigned int PROER : 1;
    unsigned int PFSBER : 1;
    unsigned int PFDBER : 1;
    unsigned int PFMBER : 1;
    unsigned int RES17 : 1;
    unsigned int DFSBER : 1;
    unsigned int DFDBER : 1;
    unsigned int DFTBER : 1;
    unsigned int DFMBER : 1;
    unsigned int SRIADDERR : 1;
    unsigned int reserved_23 : 2;
    unsigned int PVER : 1;
    unsigned int EVER : 1;
    unsigned int SPND : 1;
    unsigned int SLM : 1;
    unsigned int reserved_29 : 1;
    unsigned int ORIER : 1;
    unsigned int reserved_31 : 1;
} Ifx_FLASH_FSR_Bits;


typedef struct _Ifx_FLASH_ID_Bits
{
    unsigned int MODREV : 8;
    unsigned int MODTYPE : 8;
    unsigned int MODNUMBER : 16;
} Ifx_FLASH_ID_Bits;


typedef struct _Ifx_FLASH_MARD_Bits
{
    unsigned int HMARGIN : 1;
    unsigned int SELD0 : 1;
    unsigned int reserved_2 : 1;
    unsigned int SPND : 1;
    unsigned int SPNDERR : 1;
    unsigned int reserved_5 : 10;
    unsigned int TRAPDIS : 1;
    unsigned int reserved_16 : 16;
} Ifx_FLASH_MARD_Bits;


typedef struct _Ifx_FLASH_MARP_Bits
{
    unsigned int SELP0 : 1;
    unsigned int RES1 : 1;
    unsigned int RES2 : 1;
    unsigned int RES3 : 1;
    unsigned int reserved_4 : 11;
    unsigned int TRAPDIS : 1;
    unsigned int reserved_16 : 16;
} Ifx_FLASH_MARP_Bits;


typedef struct _Ifx_FLASH_PROCOND_Bits
{
    unsigned int L : 1;
    unsigned int NSAFECC : 1;
    unsigned int RAMIN : 2;
    unsigned int RAMINSEL : 4;
    unsigned int RES8 : 1;
    unsigned int RES9 : 1;
    unsigned int RES10 : 1;
    unsigned int RES11 : 1;
    unsigned int RES12 : 1;
    unsigned int RES13 : 1;
    unsigned int RES14 : 1;
    unsigned int RES15 : 1;
    unsigned int ESR0CNT : 12;
    unsigned int RES29 : 2;
    unsigned int RES30 : 1;
    unsigned int RPRO : 1;
} Ifx_FLASH_PROCOND_Bits;


typedef struct _Ifx_FLASH_PROCONDBG_Bits
{
    unsigned int OCDSDIS : 1;
    unsigned int DBGIFLCK : 1;
    unsigned int EDM : 2;
    unsigned int reserved_4 : 28;
} Ifx_FLASH_PROCONDBG_Bits;


typedef struct _Ifx_FLASH_PROCONHSM_Bits
{
    unsigned int HSMDBGDIS : 1;
    unsigned int DBGIFLCK : 1;
    unsigned int TSTIFLCK : 1;
    unsigned int HSMTSTDIS : 1;
    unsigned int RES15 : 12;
    unsigned int reserved_16 : 16;
} Ifx_FLASH_PROCONHSM_Bits;


typedef struct _Ifx_FLASH_PROCONHSMCOTP_Bits
{
    unsigned int HSMBOOTEN : 1;
    unsigned int SSWWAIT : 1;
    unsigned int HSMDX : 1;
    unsigned int HSM6X : 1;
    unsigned int HSM16X : 1;
    unsigned int HSM17X : 1;
    unsigned int S6ROM : 1;
    unsigned int HSMENPINS : 2;
    unsigned int HSMENRES : 2;
    unsigned int DESTDBG : 2;
    unsigned int BLKFLAN : 1;
    unsigned int reserved_14 : 2;
    unsigned int S16ROM : 1;
    unsigned int S17ROM : 1;
    unsigned int reserved_18 : 14;
} Ifx_FLASH_PROCONHSMCOTP_Bits;


typedef struct _Ifx_FLASH_PROCONOTP_Bits
{
    unsigned int S0ROM : 1;
    unsigned int S1ROM : 1;
    unsigned int S2ROM : 1;
    unsigned int S3ROM : 1;
    unsigned int S4ROM : 1;
    unsigned int S5ROM : 1;
    unsigned int S6ROM : 1;
    unsigned int S7ROM : 1;
    unsigned int S8ROM : 1;
    unsigned int S9ROM : 1;
    unsigned int S10ROM : 1;
    unsigned int S11ROM : 1;
    unsigned int S12ROM : 1;
    unsigned int S13ROM : 1;
    unsigned int S14ROM : 1;
    unsigned int S15ROM : 1;
    unsigned int S16ROM : 1;
    unsigned int S17ROM : 1;
    unsigned int S18ROM : 1;
    unsigned int S19ROM : 1;
    unsigned int S20ROM : 1;
    unsigned int S21ROM : 1;
    unsigned int S22ROM : 1;
    unsigned int S23ROM : 1;
    unsigned int S24ROM : 1;
    unsigned int S25ROM : 1;
    unsigned int S26ROM : 1;
    unsigned int reserved_27 : 2;
    unsigned int BML : 2;
    unsigned int TP : 1;
} Ifx_FLASH_PROCONOTP_Bits;


typedef struct _Ifx_FLASH_PROCONP_Bits
{
    unsigned int S0L : 1;
    unsigned int S1L : 1;
    unsigned int S2L : 1;
    unsigned int S3L : 1;
    unsigned int S4L : 1;
    unsigned int S5L : 1;
    unsigned int S6L : 1;
    unsigned int S7L : 1;
    unsigned int S8L : 1;
    unsigned int S9L : 1;
    unsigned int S10L : 1;
    unsigned int S11L : 1;
    unsigned int S12L : 1;
    unsigned int S13L : 1;
    unsigned int S14L : 1;
    unsigned int S15L : 1;
    unsigned int S16L : 1;
    unsigned int S17L : 1;
    unsigned int S18L : 1;
    unsigned int S19L : 1;
    unsigned int S20L : 1;
    unsigned int S21L : 1;
    unsigned int S22L : 1;
    unsigned int S23L : 1;
    unsigned int S24L : 1;
    unsigned int S25L : 1;
    unsigned int S26L : 1;
    unsigned int reserved_27 : 4;
    unsigned int RPRO : 1;
} Ifx_FLASH_PROCONP_Bits;


typedef struct _Ifx_FLASH_PROCONWOP_Bits
{
    unsigned int S0WOP : 1;
    unsigned int S1WOP : 1;
    unsigned int S2WOP : 1;
    unsigned int S3WOP : 1;
    unsigned int S4WOP : 1;
    unsigned int S5WOP : 1;
    unsigned int S6WOP : 1;
    unsigned int S7WOP : 1;
    unsigned int S8WOP : 1;
    unsigned int S9WOP : 1;
    unsigned int S10WOP : 1;
    unsigned int S11WOP : 1;
    unsigned int S12WOP : 1;
    unsigned int S13WOP : 1;
    unsigned int S14WOP : 1;
    unsigned int S15WOP : 1;
    unsigned int S16WOP : 1;
    unsigned int S17WOP : 1;
    unsigned int S18WOP : 1;
    unsigned int S19WOP : 1;
    unsigned int S20WOP : 1;
    unsigned int S21WOP : 1;
    unsigned int S22WOP : 1;
    unsigned int S23WOP : 1;
    unsigned int S24WOP : 1;
    unsigned int S25WOP : 1;
    unsigned int S26WOP : 1;
    unsigned int reserved_27 : 4;
    unsigned int DATM : 1;
} Ifx_FLASH_PROCONWOP_Bits;


typedef struct _Ifx_FLASH_RDB_CFG0_Bits
{
    unsigned int TAG : 6;
    unsigned int reserved_6 : 26;
} Ifx_FLASH_RDB_CFG0_Bits;


typedef struct _Ifx_FLASH_RDB_CFG1_Bits
{
    unsigned int TAG : 6;
    unsigned int reserved_6 : 26;
} Ifx_FLASH_RDB_CFG1_Bits;


typedef struct _Ifx_FLASH_RDB_CFG2_Bits
{
    unsigned int TAG : 6;
    unsigned int reserved_6 : 26;
} Ifx_FLASH_RDB_CFG2_Bits;


typedef struct _Ifx_FLASH_RRAD_Bits
{
    unsigned int reserved_0 : 3;
    unsigned int ADD : 29;
} Ifx_FLASH_RRAD_Bits;


typedef struct _Ifx_FLASH_RRCT_Bits
{
    unsigned int STRT : 1;
    unsigned int STP : 1;
    unsigned int BUSY : 1;
    unsigned int DONE : 1;
    unsigned int ERR : 1;
    unsigned int reserved_5 : 3;
    unsigned int EOBM : 1;
    unsigned int reserved_9 : 7;
    unsigned int CNT : 16;
} Ifx_FLASH_RRCT_Bits;


typedef struct _Ifx_FLASH_RRD0_Bits
{
    unsigned int DATA : 32;
} Ifx_FLASH_RRD0_Bits;


typedef struct _Ifx_FLASH_RRD1_Bits
{
    unsigned int DATA : 32;
} Ifx_FLASH_RRD1_Bits;


typedef struct _Ifx_FLASH_UBAB_CFG_Bits
{
    unsigned int SEL : 6;
    unsigned int reserved_6 : 2;
    unsigned int CLR : 1;
    unsigned int DIS : 1;
    unsigned int reserved_10 : 22;
} Ifx_FLASH_UBAB_CFG_Bits;


typedef struct _Ifx_FLASH_UBAB_STAT_Bits
{
    unsigned int VLD0 : 1;
    unsigned int reserved_1 : 31;
} Ifx_FLASH_UBAB_STAT_Bits;


typedef struct _Ifx_FLASH_UBAB_TOP_Bits
{
    unsigned int reserved_0 : 5;
    unsigned int ADDR : 19;
    unsigned int ERR : 6;
    unsigned int VLD : 1;
    unsigned int CLR : 1;
} Ifx_FLASH_UBAB_TOP_Bits;







typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_ACCEN0_Bits B;
} Ifx_FLASH_ACCEN0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_ACCEN1_Bits B;
} Ifx_FLASH_ACCEN1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_CBAB_CFG_Bits B;
} Ifx_FLASH_CBAB_CFG;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_CBAB_STAT_Bits B;
} Ifx_FLASH_CBAB_STAT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_CBAB_TOP_Bits B;
} Ifx_FLASH_CBAB_TOP;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_COMM0_Bits B;
} Ifx_FLASH_COMM0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_COMM1_Bits B;
} Ifx_FLASH_COMM1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_COMM2_Bits B;
} Ifx_FLASH_COMM2;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_ECCRD_Bits B;
} Ifx_FLASH_ECCRD;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_ECCRP_Bits B;
} Ifx_FLASH_ECCRP;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_ECCW_Bits B;
} Ifx_FLASH_ECCW;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_FCON_Bits B;
} Ifx_FLASH_FCON;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_FPRO_Bits B;
} Ifx_FLASH_FPRO;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_FSR_Bits B;
} Ifx_FLASH_FSR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_ID_Bits B;
} Ifx_FLASH_ID;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_MARD_Bits B;
} Ifx_FLASH_MARD;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_MARP_Bits B;
} Ifx_FLASH_MARP;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_PROCOND_Bits B;
} Ifx_FLASH_PROCOND;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_PROCONDBG_Bits B;
} Ifx_FLASH_PROCONDBG;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_PROCONHSM_Bits B;
} Ifx_FLASH_PROCONHSM;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_PROCONHSMCOTP_Bits B;
} Ifx_FLASH_PROCONHSMCOTP;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_PROCONOTP_Bits B;
} Ifx_FLASH_PROCONOTP;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_PROCONP_Bits B;
} Ifx_FLASH_PROCONP;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_PROCONWOP_Bits B;
} Ifx_FLASH_PROCONWOP;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_RDB_CFG0_Bits B;
} Ifx_FLASH_RDB_CFG0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_RDB_CFG1_Bits B;
} Ifx_FLASH_RDB_CFG1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_RDB_CFG2_Bits B;
} Ifx_FLASH_RDB_CFG2;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_RRAD_Bits B;
} Ifx_FLASH_RRAD;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_RRCT_Bits B;
} Ifx_FLASH_RRCT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_RRD0_Bits B;
} Ifx_FLASH_RRD0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_RRD1_Bits B;
} Ifx_FLASH_RRD1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_UBAB_CFG_Bits B;
} Ifx_FLASH_UBAB_CFG;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_UBAB_STAT_Bits B;
} Ifx_FLASH_UBAB_STAT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_UBAB_TOP_Bits B;
} Ifx_FLASH_UBAB_TOP;
# 820 "../30_Bsw/Common/TC21x/IfxFlash_regdef.h"
typedef volatile struct _Ifx_FLASH_CBAB
{
    Ifx_FLASH_CBAB_CFG CFG;
    Ifx_FLASH_CBAB_STAT STAT;
    Ifx_FLASH_CBAB_TOP TOP;
    unsigned char reserved_C[36];
} Ifx_FLASH_CBAB;


typedef volatile struct _Ifx_FLASH_RDB
{
    Ifx_FLASH_RDB_CFG0 CFG0;
    Ifx_FLASH_RDB_CFG1 CFG1;
    Ifx_FLASH_RDB_CFG2 CFG2;
    unsigned char reserved_C[36];
} Ifx_FLASH_RDB;


typedef volatile struct _Ifx_FLASH_UBAB
{
    Ifx_FLASH_UBAB_CFG CFG;
    Ifx_FLASH_UBAB_STAT STAT;
    Ifx_FLASH_UBAB_TOP TOP;
    unsigned char reserved_C[80];
} Ifx_FLASH_UBAB;
# 857 "../30_Bsw/Common/TC21x/IfxFlash_regdef.h"
typedef volatile struct _Ifx_FLASH
{
    Ifx_FLASH_COMM0 COMM0;
    Ifx_FLASH_COMM1 COMM1;
    Ifx_FLASH_COMM2 COMM2;
    unsigned char reserved_C[4092];
    Ifx_FLASH_ID ID;
    unsigned char reserved_100C[4];
    Ifx_FLASH_FSR FSR;
    Ifx_FLASH_FCON FCON;
    unsigned char reserved_1018[4];
    Ifx_FLASH_FPRO FPRO;
    Ifx_FLASH_PROCONP PROCONP[1];
    unsigned char reserved_1024[12];
    Ifx_FLASH_PROCOND PROCOND;
    Ifx_FLASH_PROCONHSMCOTP PROCONHSMCOTP;
    Ifx_FLASH_PROCONOTP PROCONOTP[1];
    unsigned char reserved_103C[12];
    Ifx_FLASH_PROCONWOP PROCONWOP[1];
    unsigned char reserved_104C[12];
    Ifx_FLASH_PROCONDBG PROCONDBG;
    Ifx_FLASH_PROCONHSM PROCONHSM;
    Ifx_FLASH_RDB RDBCFG[1];
    Ifx_FLASH_ECCW ECCW;
    Ifx_FLASH_ECCRP ECCRP[1];
    unsigned char reserved_1098[12];
    Ifx_FLASH_ECCRD ECCRD;
    Ifx_FLASH_MARP MARP;
    Ifx_FLASH_MARD MARD;
    unsigned char reserved_10B0[4];
    Ifx_FLASH_CBAB CBAB[1];
    Ifx_FLASH_UBAB UBAB[1];
    Ifx_FLASH_RRCT RRCT;
    Ifx_FLASH_RRD0 RRD0;
    Ifx_FLASH_RRD1 RRD1;
    Ifx_FLASH_RRAD RRAD;
    unsigned char reserved_1150[680];
    Ifx_FLASH_ACCEN1 ACCEN1;
    Ifx_FLASH_ACCEN0 ACCEN0;
} Ifx_FLASH;
# 37 "../30_Bsw/Common/TC21x/IfxFlash_reg.h" 2
# 33 "../30_Bsw/Safety/Safety_cfg.h" 2
# 1 "../30_Bsw/Common/TC21x/IfxSbcu_reg.h" 1
# 36 "../30_Bsw/Common/TC21x/IfxSbcu_reg.h"
# 1 "../30_Bsw/Common/TC21x/IfxSbcu_regdef.h" 1
# 45 "../30_Bsw/Common/TC21x/IfxSbcu_regdef.h"
typedef struct _Ifx_SBCU_ACCEN0_Bits
{
    unsigned int EN0 : 1;
    unsigned int EN1 : 1;
    unsigned int EN2 : 1;
    unsigned int EN3 : 1;
    unsigned int EN4 : 1;
    unsigned int EN5 : 1;
    unsigned int EN6 : 1;
    unsigned int EN7 : 1;
    unsigned int EN8 : 1;
    unsigned int EN9 : 1;
    unsigned int EN10 : 1;
    unsigned int EN11 : 1;
    unsigned int EN12 : 1;
    unsigned int EN13 : 1;
    unsigned int EN14 : 1;
    unsigned int EN15 : 1;
    unsigned int EN16 : 1;
    unsigned int EN17 : 1;
    unsigned int EN18 : 1;
    unsigned int EN19 : 1;
    unsigned int EN20 : 1;
    unsigned int EN21 : 1;
    unsigned int EN22 : 1;
    unsigned int EN23 : 1;
    unsigned int EN24 : 1;
    unsigned int EN25 : 1;
    unsigned int EN26 : 1;
    unsigned int EN27 : 1;
    unsigned int EN28 : 1;
    unsigned int EN29 : 1;
    unsigned int EN30 : 1;
    unsigned int EN31 : 1;
} Ifx_SBCU_ACCEN0_Bits;


typedef struct _Ifx_SBCU_ACCEN1_Bits
{
    unsigned int reserved_0 : 32;
} Ifx_SBCU_ACCEN1_Bits;


typedef struct _Ifx_SBCU_CON_Bits
{
    unsigned int TOUT : 16;
    unsigned int DBG : 1;
    unsigned int reserved_17 : 7;
    unsigned int SPC : 8;
} Ifx_SBCU_CON_Bits;


typedef struct _Ifx_SBCU_DBADR1_Bits
{
    unsigned int ADR1 : 32;
} Ifx_SBCU_DBADR1_Bits;


typedef struct _Ifx_SBCU_DBADR2_Bits
{
    unsigned int ADR2 : 32;
} Ifx_SBCU_DBADR2_Bits;


typedef struct _Ifx_SBCU_DBADRT_Bits
{
    unsigned int FPIADR : 32;
} Ifx_SBCU_DBADRT_Bits;


typedef struct _Ifx_SBCU_DBBOS_Bits
{
    unsigned int OPC : 4;
    unsigned int SVM : 1;
    unsigned int reserved_5 : 3;
    unsigned int WR : 1;
    unsigned int reserved_9 : 3;
    unsigned int RD : 1;
    unsigned int reserved_13 : 19;
} Ifx_SBCU_DBBOS_Bits;


typedef struct _Ifx_SBCU_DBBOST_Bits
{
    unsigned int FPIOPC : 4;
    unsigned int FPISVM : 1;
    unsigned int FPIACK : 2;
    unsigned int FPIRDY : 1;
    unsigned int FPIWR : 1;
    unsigned int FPIRST : 2;
    unsigned int FPIOPS : 1;
    unsigned int FPIRD : 1;
    unsigned int FPIABORT : 1;
    unsigned int FPITOUT : 1;
    unsigned int ENDINIT : 1;
    unsigned int FPITAG : 6;
    unsigned int reserved_22 : 10;
} Ifx_SBCU_DBBOST_Bits;


typedef struct _Ifx_SBCU_DBCNTL_Bits
{
    unsigned int EO : 1;
    unsigned int OA : 1;
    unsigned int reserved_2 : 2;
    unsigned int RA : 1;
    unsigned int reserved_5 : 7;
    unsigned int CONCOM0 : 1;
    unsigned int CONCOM1 : 1;
    unsigned int CONCOM2 : 1;
    unsigned int reserved_15 : 1;
    unsigned int ONG : 1;
    unsigned int reserved_17 : 3;
    unsigned int ONA1 : 2;
    unsigned int reserved_22 : 2;
    unsigned int ONA2 : 2;
    unsigned int reserved_26 : 2;
    unsigned int ONBOS0 : 1;
    unsigned int ONBOS1 : 1;
    unsigned int ONBOS2 : 1;
    unsigned int ONBOS3 : 1;
} Ifx_SBCU_DBCNTL_Bits;


typedef struct _Ifx_SBCU_DBDAT_Bits
{
    unsigned int FPIDATA : 32;
} Ifx_SBCU_DBDAT_Bits;


typedef struct _Ifx_SBCU_DBGNTT_Bits
{
    unsigned int DMAH : 1;
    unsigned int reserved_1 : 4;
    unsigned int DMAM : 1;
    unsigned int reserved_6 : 1;
    unsigned int CPU0 : 1;
    unsigned int reserved_8 : 4;
    unsigned int HSMRMI : 1;
    unsigned int HSMCMI : 1;
    unsigned int reserved_14 : 1;
    unsigned int DMAL : 1;
    unsigned int DMACHNR : 8;
    unsigned int reserved_24 : 8;
} Ifx_SBCU_DBGNTT_Bits;


typedef struct _Ifx_SBCU_DBGRNT_Bits
{
    unsigned int DMAH : 1;
    unsigned int reserved_1 : 4;
    unsigned int DMAM : 1;
    unsigned int reserved_6 : 1;
    unsigned int CPU0 : 1;
    unsigned int reserved_8 : 4;
    unsigned int HSMRMI : 1;
    unsigned int HSMCMI : 1;
    unsigned int reserved_14 : 1;
    unsigned int DMAL : 1;
    unsigned int reserved_16 : 16;
} Ifx_SBCU_DBGRNT_Bits;


typedef struct _Ifx_SBCU_EADD_Bits
{
    unsigned int FPIADR : 32;
} Ifx_SBCU_EADD_Bits;


typedef struct _Ifx_SBCU_ECON_Bits
{
    unsigned int ERRCNT : 14;
    unsigned int TOUT : 1;
    unsigned int RDY : 1;
    unsigned int ABT : 1;
    unsigned int ACK : 2;
    unsigned int SVM : 1;
    unsigned int WRN : 1;
    unsigned int RDN : 1;
    unsigned int TAG : 6;
    unsigned int OPC : 4;
} Ifx_SBCU_ECON_Bits;


typedef struct _Ifx_SBCU_EDAT_Bits
{
    unsigned int FPIDAT : 32;
} Ifx_SBCU_EDAT_Bits;


typedef struct _Ifx_SBCU_ID_Bits
{
    unsigned int MODREV : 8;
    unsigned int MODNUMBER : 8;
    unsigned int reserved_16 : 16;
} Ifx_SBCU_ID_Bits;


typedef struct _Ifx_SBCU_PRIOH_Bits
{
    unsigned int RESERVED8 : 4;
    unsigned int RESERVED9 : 4;
    unsigned int RESERVEDA : 4;
    unsigned int RESERVEDB : 4;
    unsigned int HSMRMI : 4;
    unsigned int HSMCMI : 4;
    unsigned int RESERVEDE : 4;
    unsigned int DMAL : 4;
} Ifx_SBCU_PRIOH_Bits;


typedef struct _Ifx_SBCU_PRIOL_Bits
{
    unsigned int DMAH : 4;
    unsigned int RESERVED1 : 4;
    unsigned int RESERVED2 : 4;
    unsigned int RESERVED3 : 4;
    unsigned int RESERVED4 : 4;
    unsigned int DMAM : 4;
    unsigned int RESERVED6 : 4;
    unsigned int CPU0 : 4;
} Ifx_SBCU_PRIOL_Bits;







typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SBCU_ACCEN0_Bits B;
} Ifx_SBCU_ACCEN0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SBCU_ACCEN1_Bits B;
} Ifx_SBCU_ACCEN1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SBCU_CON_Bits B;
} Ifx_SBCU_CON;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SBCU_DBADR1_Bits B;
} Ifx_SBCU_DBADR1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SBCU_DBADR2_Bits B;
} Ifx_SBCU_DBADR2;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SBCU_DBADRT_Bits B;
} Ifx_SBCU_DBADRT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SBCU_DBBOS_Bits B;
} Ifx_SBCU_DBBOS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SBCU_DBBOST_Bits B;
} Ifx_SBCU_DBBOST;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SBCU_DBCNTL_Bits B;
} Ifx_SBCU_DBCNTL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SBCU_DBDAT_Bits B;
} Ifx_SBCU_DBDAT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SBCU_DBGNTT_Bits B;
} Ifx_SBCU_DBGNTT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SBCU_DBGRNT_Bits B;
} Ifx_SBCU_DBGRNT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SBCU_EADD_Bits B;
} Ifx_SBCU_EADD;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SBCU_ECON_Bits B;
} Ifx_SBCU_ECON;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SBCU_EDAT_Bits B;
} Ifx_SBCU_EDAT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SBCU_ID_Bits B;
} Ifx_SBCU_ID;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SBCU_PRIOH_Bits B;
} Ifx_SBCU_PRIOH;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SBCU_PRIOL_Bits B;
} Ifx_SBCU_PRIOL;
# 426 "../30_Bsw/Common/TC21x/IfxSbcu_regdef.h"
typedef volatile struct _Ifx_SBCU
{
    unsigned char reserved_0[8];
    Ifx_SBCU_ID ID;
    unsigned char reserved_C[4];
    Ifx_SBCU_CON CON;
    Ifx_SBCU_PRIOH PRIOH;
    Ifx_SBCU_PRIOL PRIOL;
    unsigned char reserved_1C[4];
    Ifx_SBCU_ECON ECON;
    Ifx_SBCU_EADD EADD;
    Ifx_SBCU_EDAT EDAT;
    unsigned char reserved_2C[4];
    Ifx_SBCU_DBCNTL DBCNTL;
    Ifx_SBCU_DBGRNT DBGRNT;
    Ifx_SBCU_DBADR1 DBADR1;
    Ifx_SBCU_DBADR2 DBADR2;
    Ifx_SBCU_DBBOS DBBOS;
    Ifx_SBCU_DBGNTT DBGNTT;
    Ifx_SBCU_DBADRT DBADRT;
    Ifx_SBCU_DBBOST DBBOST;
    Ifx_SBCU_DBDAT DBDAT;
    unsigned char reserved_54[164];
    Ifx_SBCU_ACCEN1 ACCEN1;
    Ifx_SBCU_ACCEN0 ACCEN0;
} Ifx_SBCU;
# 37 "../30_Bsw/Common/TC21x/IfxSbcu_reg.h" 2
# 34 "../30_Bsw/Safety/Safety_cfg.h" 2
# 1 "../30_Bsw/Common/TC21x/IfxIom_reg.h" 1
# 36 "../30_Bsw/Common/TC21x/IfxIom_reg.h"
# 1 "../30_Bsw/Common/TC21x/IfxIom_regdef.h" 1
# 45 "../30_Bsw/Common/TC21x/IfxIom_regdef.h"
typedef struct _Ifx_IOM_ACCEN0_Bits
{
    unsigned int EN0 : 1;
    unsigned int EN1 : 1;
    unsigned int EN2 : 1;
    unsigned int EN3 : 1;
    unsigned int EN4 : 1;
    unsigned int EN5 : 1;
    unsigned int EN6 : 1;
    unsigned int EN7 : 1;
    unsigned int EN8 : 1;
    unsigned int EN9 : 1;
    unsigned int EN10 : 1;
    unsigned int EN11 : 1;
    unsigned int EN12 : 1;
    unsigned int EN13 : 1;
    unsigned int EN14 : 1;
    unsigned int EN15 : 1;
    unsigned int EN16 : 1;
    unsigned int EN17 : 1;
    unsigned int EN18 : 1;
    unsigned int EN19 : 1;
    unsigned int EN20 : 1;
    unsigned int EN21 : 1;
    unsigned int EN22 : 1;
    unsigned int EN23 : 1;
    unsigned int EN24 : 1;
    unsigned int EN25 : 1;
    unsigned int EN26 : 1;
    unsigned int EN27 : 1;
    unsigned int EN28 : 1;
    unsigned int EN29 : 1;
    unsigned int EN30 : 1;
    unsigned int EN31 : 1;
} Ifx_IOM_ACCEN0_Bits;


typedef struct _Ifx_IOM_ACCEN1_Bits
{
    unsigned int reserved_0 : 32;
} Ifx_IOM_ACCEN1_Bits;


typedef struct _Ifx_IOM_CLC_Bits
{
    unsigned int DISR : 1;
    unsigned int DISS : 1;
    unsigned int reserved_2 : 1;
    unsigned int EDIS : 1;
    unsigned int reserved_4 : 4;
    unsigned int RMC : 8;
    unsigned int reserved_16 : 16;
} Ifx_IOM_CLC_Bits;


typedef struct _Ifx_IOM_ECMCCFG_Bits
{
    unsigned int SELC0 : 4;
    unsigned int THRC0 : 4;
    unsigned int SELC1 : 4;
    unsigned int THCR1 : 4;
    unsigned int SELC2 : 4;
    unsigned int THCR2 : 4;
    unsigned int SELC3 : 4;
    unsigned int THCR3 : 4;
} Ifx_IOM_ECMCCFG_Bits;


typedef struct _Ifx_IOM_ECMETH0_Bits
{
    unsigned int ETA0 : 1;
    unsigned int ETA1 : 1;
    unsigned int ETA2 : 1;
    unsigned int ETA3 : 1;
    unsigned int ETA4 : 1;
    unsigned int ETA5 : 1;
    unsigned int ETA6 : 1;
    unsigned int ETA7 : 1;
    unsigned int ETA8 : 1;
    unsigned int ETA9 : 1;
    unsigned int ETA10 : 1;
    unsigned int ETA11 : 1;
    unsigned int ETA12 : 1;
    unsigned int ETA13 : 1;
    unsigned int ETA14 : 1;
    unsigned int ETA15 : 1;
    unsigned int ETB0 : 1;
    unsigned int ETB1 : 1;
    unsigned int ETB2 : 1;
    unsigned int ETB3 : 1;
    unsigned int ETB4 : 1;
    unsigned int ETB5 : 1;
    unsigned int ETB6 : 1;
    unsigned int ETB7 : 1;
    unsigned int ETB8 : 1;
    unsigned int ETB9 : 1;
    unsigned int ETB10 : 1;
    unsigned int ETB11 : 1;
    unsigned int ETB12 : 1;
    unsigned int ETB13 : 1;
    unsigned int ETB14 : 1;
    unsigned int ETB15 : 1;
} Ifx_IOM_ECMETH0_Bits;


typedef struct _Ifx_IOM_ECMETH1_Bits
{
    unsigned int ETC0 : 1;
    unsigned int ETC1 : 1;
    unsigned int ETC2 : 1;
    unsigned int ETC3 : 1;
    unsigned int ETC4 : 1;
    unsigned int ETC5 : 1;
    unsigned int ETC6 : 1;
    unsigned int ETC7 : 1;
    unsigned int ETC8 : 1;
    unsigned int ETC9 : 1;
    unsigned int ETC10 : 1;
    unsigned int ETC11 : 1;
    unsigned int ETC12 : 1;
    unsigned int ETC13 : 1;
    unsigned int ETC14 : 1;
    unsigned int ETC15 : 1;
    unsigned int ETD0 : 1;
    unsigned int ETD1 : 1;
    unsigned int ETD2 : 1;
    unsigned int ETD3 : 1;
    unsigned int ETD4 : 1;
    unsigned int ETD5 : 1;
    unsigned int ETD6 : 1;
    unsigned int ETD7 : 1;
    unsigned int ETD8 : 1;
    unsigned int ETD9 : 1;
    unsigned int ETD10 : 1;
    unsigned int ETD11 : 1;
    unsigned int ETD12 : 1;
    unsigned int ETD13 : 1;
    unsigned int ETD14 : 1;
    unsigned int ETD15 : 1;
} Ifx_IOM_ECMETH1_Bits;


typedef struct _Ifx_IOM_ECMSELR_Bits
{
    unsigned int CES0 : 1;
    unsigned int CES1 : 1;
    unsigned int CES2 : 1;
    unsigned int CES3 : 1;
    unsigned int CES4 : 1;
    unsigned int CES5 : 1;
    unsigned int CES6 : 1;
    unsigned int CES7 : 1;
    unsigned int CES8 : 1;
    unsigned int CES9 : 1;
    unsigned int CES10 : 1;
    unsigned int CES11 : 1;
    unsigned int CES12 : 1;
    unsigned int CES13 : 1;
    unsigned int CES14 : 1;
    unsigned int CES15 : 1;
    unsigned int CTS0 : 1;
    unsigned int CTS1 : 1;
    unsigned int CTS2 : 1;
    unsigned int CTS3 : 1;
    unsigned int reserved_20 : 12;
} Ifx_IOM_ECMSELR_Bits;


typedef struct _Ifx_IOM_FPCCTR_Bits
{
    unsigned int CMP : 16;
    unsigned int MOD : 3;
    unsigned int ISM : 2;
    unsigned int reserved_21 : 1;
    unsigned int RTG : 1;
    unsigned int reserved_23 : 1;
    unsigned int ISR : 3;
    unsigned int reserved_27 : 5;
} Ifx_IOM_FPCCTR_Bits;


typedef struct _Ifx_IOM_FPCESR_Bits
{
    unsigned int FEG0 : 1;
    unsigned int FEG1 : 1;
    unsigned int FEG2 : 1;
    unsigned int FEG3 : 1;
    unsigned int FEG4 : 1;
    unsigned int FEG5 : 1;
    unsigned int FEG6 : 1;
    unsigned int FEG7 : 1;
    unsigned int FEG8 : 1;
    unsigned int FEG9 : 1;
    unsigned int FEG10 : 1;
    unsigned int FEG11 : 1;
    unsigned int FEG12 : 1;
    unsigned int FEG13 : 1;
    unsigned int FEG14 : 1;
    unsigned int FEG15 : 1;
    unsigned int REG0 : 1;
    unsigned int REG1 : 1;
    unsigned int REG2 : 1;
    unsigned int REG3 : 1;
    unsigned int REG4 : 1;
    unsigned int REG5 : 1;
    unsigned int REG6 : 1;
    unsigned int REG7 : 1;
    unsigned int REG8 : 1;
    unsigned int REG9 : 1;
    unsigned int REG10 : 1;
    unsigned int REG11 : 1;
    unsigned int REG12 : 1;
    unsigned int REG13 : 1;
    unsigned int REG14 : 1;
    unsigned int REG15 : 1;
} Ifx_IOM_FPCESR_Bits;


typedef struct _Ifx_IOM_FPCTIM_Bits
{
    unsigned int TIM : 16;
    unsigned int reserved_16 : 16;
} Ifx_IOM_FPCTIM_Bits;


typedef struct _Ifx_IOM_GTMEXR_Bits
{
    unsigned int EN0 : 1;
    unsigned int EN1 : 1;
    unsigned int EN2 : 1;
    unsigned int EN3 : 1;
    unsigned int EN4 : 1;
    unsigned int EN5 : 1;
    unsigned int EN6 : 1;
    unsigned int EN7 : 1;
    unsigned int reserved_8 : 24;
} Ifx_IOM_GTMEXR_Bits;


typedef struct _Ifx_IOM_ID_Bits
{
    unsigned int MODREV : 8;
    unsigned int MODTYPE : 8;
    unsigned int MODNUMBER : 16;
} Ifx_IOM_ID_Bits;


typedef struct _Ifx_IOM_KRST0_Bits
{
    unsigned int RST : 1;
    unsigned int RSTSTAT : 1;
    unsigned int reserved_2 : 30;
} Ifx_IOM_KRST0_Bits;


typedef struct _Ifx_IOM_KRST1_Bits
{
    unsigned int RST : 1;
    unsigned int reserved_1 : 31;
} Ifx_IOM_KRST1_Bits;


typedef struct _Ifx_IOM_KRSTCLR_Bits
{
    unsigned int CLR : 1;
    unsigned int reserved_1 : 31;
} Ifx_IOM_KRSTCLR_Bits;


typedef struct _Ifx_IOM_LAMCFG_Bits
{
    unsigned int IVR : 1;
    unsigned int IVM : 1;
    unsigned int MOS : 1;
    unsigned int RMS : 1;
    unsigned int EWS : 1;
    unsigned int reserved_5 : 3;
    unsigned int EDS : 4;
    unsigned int IVW : 1;
    unsigned int reserved_13 : 3;
    unsigned int MCS : 4;
    unsigned int RCS : 4;
    unsigned int reserved_24 : 8;
} Ifx_IOM_LAMCFG_Bits;


typedef struct _Ifx_IOM_LAMEWC_Bits
{
    unsigned int CNT : 24;
    unsigned int reserved_24 : 8;
} Ifx_IOM_LAMEWC_Bits;


typedef struct _Ifx_IOM_LAMEWS_Bits
{
    unsigned int THR : 24;
    unsigned int reserved_24 : 8;
} Ifx_IOM_LAMEWS_Bits;







typedef union
{
    unsigned int U;
    signed int I;
    Ifx_IOM_ACCEN0_Bits B;
} Ifx_IOM_ACCEN0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_IOM_ACCEN1_Bits B;
} Ifx_IOM_ACCEN1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_IOM_CLC_Bits B;
} Ifx_IOM_CLC;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_IOM_ECMCCFG_Bits B;
} Ifx_IOM_ECMCCFG;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_IOM_ECMETH0_Bits B;
} Ifx_IOM_ECMETH0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_IOM_ECMETH1_Bits B;
} Ifx_IOM_ECMETH1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_IOM_ECMSELR_Bits B;
} Ifx_IOM_ECMSELR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_IOM_FPCCTR_Bits B;
} Ifx_IOM_FPCCTR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_IOM_FPCESR_Bits B;
} Ifx_IOM_FPCESR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_IOM_FPCTIM_Bits B;
} Ifx_IOM_FPCTIM;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_IOM_GTMEXR_Bits B;
} Ifx_IOM_GTMEXR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_IOM_ID_Bits B;
} Ifx_IOM_ID;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_IOM_KRST0_Bits B;
} Ifx_IOM_KRST0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_IOM_KRST1_Bits B;
} Ifx_IOM_KRST1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_IOM_KRSTCLR_Bits B;
} Ifx_IOM_KRSTCLR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_IOM_LAMCFG_Bits B;
} Ifx_IOM_LAMCFG;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_IOM_LAMEWC_Bits B;
} Ifx_IOM_LAMEWC;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_IOM_LAMEWS_Bits B;
} Ifx_IOM_LAMEWS;
# 502 "../30_Bsw/Common/TC21x/IfxIom_regdef.h"
typedef volatile struct _Ifx_IOM
{
    Ifx_IOM_CLC CLC;
    unsigned char reserved_4[4];
    Ifx_IOM_ID ID;
    unsigned char reserved_C[16];
    Ifx_IOM_KRSTCLR KRSTCLR;
    Ifx_IOM_KRST1 KRST1;
    Ifx_IOM_KRST0 KRST0;
    Ifx_IOM_ACCEN1 ACCEN1;
    Ifx_IOM_ACCEN0 ACCEN0;
    Ifx_IOM_ECMCCFG ECMCCFG;
    Ifx_IOM_ECMSELR ECMSELR;
    Ifx_IOM_ECMETH0 ECMETH0;
    Ifx_IOM_ECMETH1 ECMETH1;
    Ifx_IOM_GTMEXR GTMEXR;
    unsigned char reserved_44[52];
    Ifx_IOM_FPCESR FPCESR;
    unsigned char reserved_7C[4];
    Ifx_IOM_FPCCTR FPCCTR[16];
    Ifx_IOM_FPCTIM FPCTIM[16];
    Ifx_IOM_LAMEWC LAMEWC[16];
    unsigned char reserved_140[64];
    Ifx_IOM_LAMCFG LAMCFG[16];
    Ifx_IOM_LAMEWS LAMEWS[16];
} Ifx_IOM;
# 37 "../30_Bsw/Common/TC21x/IfxIom_reg.h" 2
# 35 "../30_Bsw/Safety/Safety_cfg.h" 2
# 73 "../30_Bsw/Safety/Safety_cfg.h"
typedef struct SAFETY_S_ERROR_BIT{

 bit ExtVREG_MON : 1;
 bit ExtV13_MON : 1;
 bit BANDGAP_MON : 1;
 bit EVR_CFGMON : 1;

 bit SystemPLL_CLKMON : 1;
 bit SRI_CLKMON : 1;
 bit SPB_CLKMON : 1;
 bit GTM_CLKMON : 1;

 bit SBCU_InitCheck : 1;
 bit WDT_InitCheck : 1;
 bit RESET_SSCheck : 1;

 bit Pri_PWM_IOM : 1;

 u32 Reserved : 19;
} SAFETY_S_ERROR_BIT;

typedef union SAFETY_S_ERROR{
 u32 all;
 SAFETY_S_ERROR_BIT bit;
} SAFETY_S_ERROR;




extern SAFETY_S_ERROR Safety_CfgError;




extern void Safety_Cfg(void);
extern void Safety_Check10ms(void);
extern void Safety_IOM_Cfg(void);
# 9 "../30_Bsw/Main/Main_api.h" 2
# 1 "../40_Appl/HsfbApp/HsfbApp.h" 1
# 15 "../40_Appl/HsfbApp/HsfbApp.h"
# 1 "../40_Appl/HsfbApp/HsfbApp_types.h" 1
# 9 "../40_Appl/HsfbApp/HsfbApp_types.h"
# 1 "../40_Appl/HsfbPwm/HsfbPwm_struct.h" 1
# 9 "../40_Appl/HsfbPwm/HsfbPwm_struct.h"
# 1 "../40_Appl/HsfbPwm/HsfbPwm_enum.h" 1
# 14 "../40_Appl/HsfbPwm/HsfbPwm_enum.h"
typedef enum {
  HSFBPWM_E_STATE_None = 0,
  HSFBPWM_E_STATE_Reset,
  HSFBPWM_E_STATE_Charge,
  HSFBPWM_E_STATE_SteadyRun,
  HSFBPWM_E_STATE_Discharge
} HSFBPWM_E_STATE;

typedef enum {
  HSFBPWM_E_DRIVER_PriA = 0,
  HSFBPWM_E_DRIVER_PriB,
  HSFBPWM_E_DRIVER_PriC,
  HSFBPWM_E_DRIVER_PriD,
  HSFBPWM_E_DRIVER_SrA,
  HSFBPWM_E_DRIVER_SrB,
  HSFBPWM_E_DRIVER_ClampA,
  HSFBPWM_E_DRIVER_ClampB,
  HSFBPWM_E_DRIVER_Sync,
  HSFBPWM_E_DRIVER_Saux
} HSFBPWM_E_DRIVER;
# 10 "../40_Appl/HsfbPwm/HsfbPwm_struct.h" 2





typedef struct {
  f32 Duty;
  f32 Max;
  f32 Min;
} HSFBPWM_S_DUTY;

typedef struct {
  bit En;
  bit Dis;
  bit Out;
} HSFBPWM_S_ENDIS;

typedef struct {
  HSFBPWM_E_STATE PwmState;
  u16 Topology;
  f32 TopoState;
  f32 IpriPwmGain;
} HSFBPWM_S_STATUS15US;

typedef struct {
  u16 Operation;
  f32 BuckDutyFil;
  f32 IpriPwmGain;
  HSFBPWM_S_DUTY BuckDuty;
  HSFBPWM_S_DUTY BoostDuty;
  HSFBPWM_S_ENDIS PriEn;
  HSFBPWM_S_ENDIS SrEn;
  HSFBPWM_S_ENDIS ClampEn;
  u16 DriverSR0[10];
  u16 DriverSR1[10];
  f32 Vout100us;
  u16 FlagRecharge;
} HSFBPWM_S_STATUS;

typedef struct {
  bit Enable;
} HSFBPWM_S_STATECMD;

typedef struct {
  u16 Prd;
  u16 HPrd;
  u16 MPrd;
  u16 DPrd;
  u16 DHPrd;
} HSFBPWM_S_PERIOD;

typedef struct {
  bit Enable;
  f32 Freq;
  f32 FreqRange;
  f32 FreqRate;
  f32 FreqPeriod;
  u16 Period;
} HSFBPWM_S_JITTER;

typedef struct {
  bit Enable;
  bit AutoSwitchDis;
  u16 TopologyIn;
  u16 TopologyInT;
  u16 TopologyOut;
  u16 MorphSign;
  f32 MorphState;
  f32 TopoState;
  f32 VinFil;
} HSFBPWM_S_TOMOR;
# 10 "../40_Appl/HsfbApp/HsfbApp_types.h" 2
# 1 "../40_Appl/HsfbApp/HsfbApp_struct.h" 1
# 9 "../40_Appl/HsfbApp/HsfbApp_struct.h"
# 1 "../40_Appl/HsfbMeas/HsfbMeas_struct.h" 1
# 14 "../40_Appl/HsfbMeas/HsfbMeas_struct.h"
typedef struct {
  s16 Data;
  f32 Real;
} HSFBMEAS_S_STATUSDATA;

typedef struct {
  s16 Gain;
  s16 Offset;
  f32 Factor;
} HSFBMEAS_S_PARAMDATA;

typedef struct {
  f32 Gain;
  f32 Offset;
} HSFBMEAS_S_CALIBDATA;

typedef struct {
  HSFBMEAS_S_STATUSDATA Ipri;
  HSFBMEAS_S_STATUSDATA Vin;
  HSFBMEAS_S_STATUSDATA Iout;
  HSFBMEAS_S_STATUSDATA Vout;
} HSFBMEAS_S_STATUS15US;

typedef struct {
  HSFBMEAS_S_STATUSDATA Ipri;
  HSFBMEAS_S_STATUSDATA Vin;
  HSFBMEAS_S_STATUSDATA Iout;
  HSFBMEAS_S_STATUSDATA Vout;
  HSFBMEAS_S_STATUSDATA VoutDiag;
  HSFBMEAS_S_STATUSDATA IproFet;
} HSFBMEAS_S_STATUS100US;

typedef struct {
  HSFBMEAS_S_STATUSDATA Ipri;
  HSFBMEAS_S_STATUSDATA Vin;
  HSFBMEAS_S_STATUSDATA Iout;
  HSFBMEAS_S_STATUSDATA Vout;
  HSFBMEAS_S_STATUSDATA VoutDiag;
  HSFBMEAS_S_STATUSDATA IproFet;
  HSFBMEAS_S_STATUSDATA Vaux;
  HSFBMEAS_S_STATUSDATA Vkl30;
  HSFBMEAS_S_STATUSDATA Vkl30C;
  HSFBMEAS_S_STATUSDATA Vcomp;
  HSFBMEAS_S_STATUSDATA VrefDiag;
  HSFBMEAS_S_STATUSDATA Vhw16V;
  HSFBMEAS_S_STATUSDATA Vhw19V;
} HSFBMEAS_S_STATUS1MS;

typedef struct {
  HSFBMEAS_S_PARAMDATA Ipri;
  HSFBMEAS_S_PARAMDATA Vin;
  HSFBMEAS_S_PARAMDATA Iout;
  HSFBMEAS_S_PARAMDATA Vout;
  HSFBMEAS_S_PARAMDATA VoutDiag;
  HSFBMEAS_S_PARAMDATA IproFet;
  HSFBMEAS_S_PARAMDATA Vaux;
  HSFBMEAS_S_PARAMDATA Vkl30;
  HSFBMEAS_S_PARAMDATA Vkl30C;
  HSFBMEAS_S_PARAMDATA Vcomp;
  HSFBMEAS_S_PARAMDATA VrefDiag;
  HSFBMEAS_S_PARAMDATA Vhw16V;
  HSFBMEAS_S_PARAMDATA Vhw19V;
} HSFBMEAS_S_PARAM;

typedef struct {
  f32 Ipri;
  f32 Vin;
  f32 Iout;
  f32 Vout;
  f32 VoutDiag;
  f32 IproFet;
  f32 Vaux;
  f32 Vkl30;
  f32 Vkl30C;
  f32 Vcomp;
  f32 VrefDiag;
  f32 Vhw16V;
  f32 Vhw19V;
} HSFBMEAS_S_FILTER;

typedef struct {
  HSFBMEAS_S_CALIBDATA Vin_P1;
  HSFBMEAS_S_CALIBDATA Vin_P2;
  HSFBMEAS_S_CALIBDATA Vin_P3;
  HSFBMEAS_S_CALIBDATA Iout;
  HSFBMEAS_S_CALIBDATA Vout;
  HSFBMEAS_S_CALIBDATA Vkl30;
  f32 Vin_OP1;
  f32 Vin_OP2;
} HSFBMEAS_S_CALIB;

typedef struct {
  s16 Iout;
} HSFBMEAS_S_INITOFFSET;
# 10 "../40_Appl/HsfbApp/HsfbApp_struct.h" 2
# 1 "../40_Appl/HsfbDiag/HsfbDiag_struct.h" 1
# 14 "../40_Appl/HsfbDiag/HsfbDiag_struct.h"
typedef struct {
  bit AutoDiagOvp16V;
  bit AutoDiagOvp19V;
  bit AutoDiagOtp;
  bit AutoDiagKL30;
  bit FastTurnOff;
  bit DrvPriOff;
  bit DrvSrOff;
  bit Reserved10;
  bit OvpVout16V;
  bit OvpVout19V;
  bit OcpIoutP;
  bit OcpIoutN;
  bit OvpVin;
  bit OcpCt;
  bit Reserved15;
  bit HwVerError;
} HSFBDIAG_S_ERRCODE0;

typedef struct {
  bit BoostRampFin;
  bit AutoDiagWait;
  bit AutoDiagNotFin;
  bit BoostRampFail;
  bit Reserved5;
  bit Reserved6;
  bit Reserved7;
  bit Reserved8;
  bit Reserved9;
  bit Reserved10;
  bit Reserved11;
  bit Reserved12;
  bit Reserved13;
  bit Reserved14;
  bit Reserved15;
  bit Reserved16;
} HSFBDIAG_S_ERRCODE1;

typedef struct {
  bit Vout16VHigh;
  bit VoutErr1High;
  bit Vout19VHigh;
  bit VoutErr2High;
  bit IoutHigh;
  bit IoutLow;
  bit VinHigh;
  bit VinLow;
  bit TempPriHigh;
  bit TempSrAHigh;
  bit TempSrBHigh;
  bit VauxHigh;
  bit VauxLow;
  bit Vkl30Low;
  bit TempErrSrAB_High;
  bit IproFet_High;
} HSFBDIAG_S_ERRCODE2;

typedef struct {
  bit BuckVoltage;
  bit BuckTopology;
  bit BuckPowerLow;
  bit BuckVinShort;
  bit Reserved5;
  bit Reserved6;
  bit Reserved7;
  bit Reserved8;
  bit BoostVoutLimit;
  bit BoostVinShort;
  bit Reserved11;
  bit Reserved12;
  bit FlybackShort;
  bit E2EError;
  bit SbcError;
  bit DspError;
} HSFBDIAG_S_ERRCODE3;

typedef struct {
  bit PriDis;
  bit SrDis;
  bit ClampDis;
} HSFBDIAG_S_ENDIS;

typedef struct {
  u16 ErrMask0;
  u16 ErrMask1;
  u16 ErrMask2;
  u16 ErrMask3;
} HSFBDIAG_S_ERRMASK;

typedef struct {
  u16 ErrCode0;
  u16 ErrCode1;
  u16 ErrCode2;
  u16 ErrCode3;
  u16 WarnCode0;
  u16 WarnCode1;
  u16 WarnCode2;
  u16 WarnCode3;
} HSFBDIAG_S_STATUS1MS;
# 11 "../40_Appl/HsfbApp/HsfbApp_struct.h" 2
# 1 "../40_Appl/HsfbState/HsfbState_struct.h" 1
# 14 "../40_Appl/HsfbState/HsfbState_struct.h"
typedef struct {
  bit ClrWarning;
  bit Error;
  bit Init;
  bit HsfbEn;
  bit Reset;
  bit DrvReset;
  bit ErrReset;
  u16 Opm;
  u16 Topo;
} HSFBSTATE_S_STATUS;
# 12 "../40_Appl/HsfbApp/HsfbApp_struct.h" 2
# 1 "../40_Appl/HsfbNtc/HsfbNtc_struct.h" 1
# 14 "../40_Appl/HsfbNtc/HsfbNtc_struct.h"
typedef struct {
  s16 Temp;
  s32 Rntc;
} HSFBNTC_S_NTCSTATUS;

typedef struct {
  f32 Rser;
  f32 Rpar;
  f32 Rpre;
  f32 Kpre;
} HSFBNTC_S_NTCPARAM;

typedef struct {
  HSFBNTC_S_NTCSTATUS Pri;
  HSFBNTC_S_NTCSTATUS SrA;
  HSFBNTC_S_NTCSTATUS SrB;
  HSFBNTC_S_NTCSTATUS WaterIn;
  HSFBNTC_S_NTCSTATUS WaterOut;
  HSFBNTC_S_NTCSTATUS WaterOutDiag;
} HSFBNTC_S_STATUS;

typedef struct {
  HSFBNTC_S_NTCPARAM Pri;
  HSFBNTC_S_NTCPARAM SrA;
  HSFBNTC_S_NTCPARAM SrB;
  HSFBNTC_S_NTCPARAM WaterIn;
  HSFBNTC_S_NTCPARAM WaterOut;
  HSFBNTC_S_NTCPARAM WaterOutDiag;
} HSFBNTC_S_PARAM;
# 13 "../40_Appl/HsfbApp/HsfbApp_struct.h" 2
# 1 "../40_Appl/HsfbSafety/HsfbSafety_struct.h" 1
# 14 "../40_Appl/HsfbSafety/HsfbSafety_struct.h"
typedef struct {
  bit DCDC01_SM1;
  bit DCDC01_SM2;
  bit DCDC01_SM3;
  bit DCDC01_SM4;
  bit DCDC01_LFD1;
  bit DCDC01_LFD2;
  bit DCDC01_LFD3;
  bit DCDC01_LFD4;
  bit DCDC02_SM1;
  bit DCDC02_SM2;
  bit DCDC02_SM3;
  bit DCDC02_SM4;
  bit DCDC02_LFD1;
  bit DCDC02_LFD2;
  bit DCDC02_LFD3;
  bit DCDC02_LFD4;
  bit DCDC03_SM1;
  bit DCDC03_SM2;
  bit DCDC03_LFD1;
  bit DCDC05_SM1;
  bit DCDC05_LFD1;
  bit DCDC05_LFD2;
  bit Batt02_LFD5;
} HSFBSAFETY_S_SAFETYSTATUS;

typedef struct {
  bit AutoDiagWait;
  bit AutoDiagFin;
  bit EachRun[4];
  bit EachFin[4];
} HSFBSAFETY_S_AUTODIAGSTATUS;

typedef struct {
  HSFBSAFETY_S_SAFETYSTATUS SafetyStatus;
  HSFBSAFETY_S_AUTODIAGSTATUS AutoDiagStatus;
} HSFBSAFETY_S_STATUS1MS;

typedef struct {
  bit PriEn;
  bit SrEn;
  bit ClampEn;
} HSFBSAFETY_S_STATUS100US;
# 14 "../40_Appl/HsfbApp/HsfbApp_struct.h" 2





typedef struct {
  u16 CpuTime;
  u16 IsrTime;
  u16 Operation;
  u16 Topology;
} HSFBAPP_S_STATUS;

typedef struct {
  bit FastTurnOff;
  bit PriDriveDis;
  bit SrDriveDis;
  bit IpriCbc;
  bit IpriOcp;
  bit VinOvp;
  bit IoutPOcp;
  bit IoutNOcp;
  bit Vout16VOvp;
  bit Vout19VOvp;
  bit WaterOutOtp;
} HSFBAPP_S_PORTSTATUS;

typedef struct {
  u16 Enable;
  u16 ClrFault;
  u16 CanTimeOut;
  u16 IoutRef;
  u16 VoutRef;
  u16 VinRef;
  u16 Operation;
  u16 Topology;
  u16 AutoDiagEn;
  u16 PeakCurrentEn;
  u16 TestPulseEn;
  u16 AutoSwitchDis;
  u16 JitterDis;
} HSFBAPP_S_RX;

typedef struct {
  s16 Ipri;
  s16 Vin;
  s16 Iout;
  s16 Vout;
  s16 VoutDiag;
  s16 IproFet;
  s16 Vaux;
  s16 Vkl30;
  s16 Vkl30C;
  s16 Vcomp;
  s16 VrefDiag;
  s16 Vhw16V;
  s16 Vhw19V;
  s16 NtcPri;
  s16 NtcSrA;
  s16 NtcSrB;
  s16 NtcWaterIn;
  s16 NtcWaterOut;
  s16 NtcWaterOutDiag;
} HSFBAPP_S_AI;

typedef struct {
  HSFBAPP_S_STATUS AppStatus;
  HSFBAPP_S_PORTSTATUS PortStatus;
  HSFBMEAS_S_STATUS1MS MeasStatus;
  HSFBDIAG_S_STATUS1MS DiagStatus;
  HSFBSTATE_S_STATUS StateStatus;
  HSFBNTC_S_STATUS NtcStatus;
  HSFBSAFETY_S_STATUS1MS SafetyStatus;
} HSFBAPP_S_TX;
# 11 "../40_Appl/HsfbApp/HsfbApp_types.h" 2
# 1 "../40_Appl/HsfbCtrl/HsfbCtrl_struct.h" 1
# 14 "../40_Appl/HsfbCtrl/HsfbCtrl_struct.h"
typedef struct {
  bit PriDis;
  bit SrDis;
  bit ClampDis;
} HSFBCTRL_S_ENDIS;

typedef struct {
  bit BuckVoltage;
  bit BuckTopology;
  bit BuckPowerLow;
  bit BuckVinShort;
  bit BoostRampFin;
  bit BoostVoutLimit;
  bit BoostVinShort;
  bit BoostRampFail;
} HSFBCTRL_S_ERROR;

typedef struct {
  f32 Error;
  f32 PreErr;
  f32 PIOut;
  f32 Kp;
  f32 Kz;
  f32 Ts;
  f32 OutMax;
  f32 OutMin;
} HSFBCTRL_S_PI;

typedef struct {
  f32 IoutBoostMax;
  f32 PreVinTarget;
  f32 PreVinSrRise;
  f32 PreVlimMin;
} HSFBCTRL_S_PARAM;

typedef struct {
  HSFBCTRL_S_ENDIS CtrlEnDis;
} HSFBCTRL_S_STATUS100US;

typedef struct {
  f32 BuckDuty;
  f32 BoostDuty;
  HSFBCTRL_S_ERROR CtrlError;
} HSFBCTRL_S_STATUS15US;
# 12 "../40_Appl/HsfbApp/HsfbApp_types.h" 2
# 16 "../40_Appl/HsfbApp/HsfbApp.h" 2


# 1 "../40_Appl/HsfbCtrl/HsfbCtrl.h" 1
# 15 "../40_Appl/HsfbCtrl/HsfbCtrl.h"
# 1 "../40_Appl/HsfbCtrl/HsfbCtrl_types.h" 1
# 9 "../40_Appl/HsfbCtrl/HsfbCtrl_types.h"
# 1 "../40_Appl/HsfbCtrl/HsfbCtrl_struct.h" 1
# 10 "../40_Appl/HsfbCtrl/HsfbCtrl_types.h" 2


# 1 "../40_Appl/HsfbApp/HsfbApp_struct.h" 1
# 13 "../40_Appl/HsfbCtrl/HsfbCtrl_types.h" 2
# 16 "../40_Appl/HsfbCtrl/HsfbCtrl.h" 2



# 1 "../40_Appl/HsfbCtrl/HsfbCtrl_support.h" 1
# 24 "../40_Appl/HsfbCtrl/HsfbCtrl_support.h"
typedef struct {
  f32 ref_delay_DSTATE;
} DW_HsfbCtrl_SR_Calc_T;






typedef struct {
  f32 err_delay_DSTATE;
  f32 out_delay_DSTATE;
} DW_HsfbCtrl_PI_Calc_T;






extern void HsfbCtrl_SR_Calc(bit en, f32 cmd, f32 step, f32 rst_val, f32 *ref,
  DW_HsfbCtrl_SR_Calc_T *localDW);
extern void HsfbCtrl_PI_Calc(bit rst, f32 err, f32 kp, f32 ki, f32 max, f32 min,
  f32 *out, DW_HsfbCtrl_PI_Calc_T *localDW);
# 20 "../40_Appl/HsfbCtrl/HsfbCtrl.h" 2



# 1 "../40_Appl/HsfbCtrl/HsfbCtrl_param.h" 1
# 24 "../40_Appl/HsfbCtrl/HsfbCtrl.h" 2
# 1 "../40_Appl/HsfbMeas/HsfbMeas_param.h" 1
# 25 "../40_Appl/HsfbCtrl/HsfbCtrl.h" 2
# 1 "../40_Appl/HsfbPwm/HsfbPwm_macro.h" 1
# 26 "../40_Appl/HsfbCtrl/HsfbCtrl.h" 2
# 1 "../40_Appl/HsfbCtrl/HsfbCtrl_GetParamData.h" 1
# 24 "../40_Appl/HsfbCtrl/HsfbCtrl_GetParamData.h"
extern void HsfbCtrl_GetParamData(HSFBCTRL_S_PARAM *y);
# 27 "../40_Appl/HsfbCtrl/HsfbCtrl.h" 2
# 35 "../40_Appl/HsfbCtrl/HsfbCtrl.h"
typedef struct {
  DW_HsfbCtrl_PI_Calc_T PI_Calc_m;
  DW_HsfbCtrl_PI_Calc_T PI_Calc_c;
  DW_HsfbCtrl_PI_Calc_T PI_Calc_g;
  DW_HsfbCtrl_SR_Calc_T Vout_SR_Calc;
  DW_HsfbCtrl_PI_Calc_T PI_Calc;
  DW_HsfbCtrl_SR_Calc_T Iout_SR_Calc;
  f32 Switch_pm;
  f32 Gain1;
  f32 Switch_gb;
  f32 IchRef;
  f32 IoutMax;
  f32 Real;
  f32 Gain1_h;
  f32 Add1_o;
  f32 IoutCmdOut;
  f32 Delay_DSTATE;
  f32 Delay_DSTATE_d;
  f32 Delay_DSTATE_a;
  f32 Delay1_DSTATE;
  f32 Vin_delay_DSTATE;
  f32 y_delay_DSTATE;
  f32 y_delay_DSTATE_b;
  f32 Vin_delay1_DSTATE;
  f32 y_delay_DSTATE_f;
  f32 ref_delay_DSTATE;
  f32 Vin_delay1_DSTATE_g;
  f32 Vin_delay_DSTATE_d;
  f32 y_delay_DSTATE_o;
  f32 Inenn;
  f32 IoutInt;
  u16 cnt_delay_DSTATE;
  u16 cnt_delay_DSTATE_c;
  u16 cnt_delay_DSTATE_h;
  u16 cnt_delay_DSTATE_l;
  u16 dis_cnt_DSTATE;
  u16 en_cnt_DSTATE;
  u16 dis_cnt_DSTATE_o;
  u16 en_cnt_DSTATE_j;
  u16 dis_cnt_DSTATE_i;
  u16 en_cnt_DSTATE_c;
  u16 RiseCnt;
  u16 StartCnt;
  u8 is_active_c8_HsfbCtrl;
  u8 is_c8_HsfbCtrl;
  u8 is_active_c6_HsfbCtrl;
  u8 is_c6_HsfbCtrl;
  u8 is_Precharge;
  u8 is_active_c9_HsfbCtrl;
  u8 is_c9_HsfbCtrl;
  bit RelationalOperator_m;
  bit LogicalOperator_a;
  bit RelationalOperator_l;
  bit Switch1;
  bit IchCtrlDis;
  bit IoutCtrlDis;
  bit VinShortEn;
  bit DataTypeConversion_k;
  bit out_delay_DSTATE;
  bit out_delay_DSTATE_h;
  bit out_delay_DSTATE_i;
  bit Relay_Mode;
} DW_HsfbCtrl_f_T;
# 113 "../40_Appl/HsfbCtrl/HsfbCtrl.h"
extern f32 HsfbCtrl_VinSR;
extern f32 HsfbCtrl_VinSRFil;
# 124 "../40_Appl/HsfbCtrl/HsfbCtrl.h"
extern HSFBCTRL_S_PI HsfbCtrl_Iout_Buck_PI;
extern HSFBCTRL_S_PI HsfbCtrl_Ich_Boost_PI;
extern HSFBCTRL_S_PI HsfbCtrl_Vout_Buck_PI;
extern HSFBCTRL_S_PI HsfbCtrl_Iout_Boost_PI;
extern HSFBCTRL_S_PARAM HsfbCtrl_Param;
extern HSFBCTRL_S_ENDIS HsfbCtrl_EnDis;
extern HSFBCTRL_S_ERROR HsfbCtrl_Error;
extern u16 HsfbCtrl_PrechargeCnt;
extern u16 HsfbCtrl_BoostMode;
extern bit HsfbCtrl_IoutLimFlag;
extern void HsfbCtrl_Call100us(const HSFBMEAS_S_STATUS100US *MeasStatus100us,
  const HSFBPWM_S_STATUS15US *PwmStatus15us, const HSFBAPP_S_RX *AppRx10ms,
  HSFBCTRL_S_STATUS100US *CtrlStatus100us);
extern void HsfbCtrl_Call15us(const HSFBMEAS_S_STATUS15US *MeasStatus15us, const
  HSFBPWM_S_STATUS15US *PwmStatus15us, const HSFBAPP_S_RX *AppRx10ms,
  HSFBCTRL_S_STATUS15US *CtrlStatus15us);
extern void HsfbCtrl_CallInit(void);



extern void HsfbCtrl_Derating_Calc(void);
extern void HsfbCtrl_Buck_Ctrl_100us(void);
extern void HsfbCtrl_Precharge_State(void);
extern void HsfbCtrl_Boost_Ctrl_100us(void);
extern void HsfbCtrl_Reset(void);
extern void HsfbCtrl_Reset_100us(void);
extern void HsfbCtrl_Buck_Ctrl_15us(void);
extern void HsfbCtrl_Boost_Ctrl_15us(void);






extern DW_HsfbCtrl_f_T HsfbCtrl_DW;
# 19 "../40_Appl/HsfbApp/HsfbApp.h" 2
# 1 "../40_Appl/HsfbDiag/HsfbDiag.h" 1
# 15 "../40_Appl/HsfbDiag/HsfbDiag.h"
# 1 "../40_Appl/HsfbDiag/HsfbDiag_types.h" 1
# 9 "../40_Appl/HsfbDiag/HsfbDiag_types.h"
# 1 "../40_Appl/HsfbDiag/HsfbDiag_struct.h" 1
# 10 "../40_Appl/HsfbDiag/HsfbDiag_types.h" 2
# 16 "../40_Appl/HsfbDiag/HsfbDiag.h" 2


# 1 "../40_Appl/HsfbDiag/HsfbDiag_param.h" 1
# 19 "../40_Appl/HsfbDiag/HsfbDiag.h" 2
# 27 "../40_Appl/HsfbDiag/HsfbDiag.h"
typedef struct {
  u16 cnt_delay_DSTATE;
} DW_HsfbDiag_MaxCheck_T;






typedef struct {
  u16 cnt_delay_DSTATE;
  bit out_delay_DSTATE;
} DW_HsfbDiag_MaxHysCheck_T;






typedef struct {
  DW_HsfbDiag_MaxHysCheck_T MaxHysCheck2;
  DW_HsfbDiag_MaxHysCheck_T MaxHysCheck1;
  DW_HsfbDiag_MaxHysCheck_T MaxHysCheck;
  DW_HsfbDiag_MaxCheck_T MaxCheck5;
  DW_HsfbDiag_MaxCheck_T MaxCheck4;
  DW_HsfbDiag_MaxCheck_T MaxCheck3;
  DW_HsfbDiag_MaxCheck_T MaxCheck2;
  DW_HsfbDiag_MaxCheck_T MaxCheck1;
  s16 cnt_delay_DSTATE;
  u16 BitwiseOR_d;
  u16 BitwiseOR_m;
  u16 BitwiseOR_my;
  u16 BitwiseOR_g;
  u16 BitwiseOR_e;
  u16 Delay_DSTATE;
  u16 Delay_DSTATE_j;
  u16 Delay_DSTATE_d;
  u16 Delay_DSTATE_o;
  u16 cnt_delay_DSTATE_i;
  u16 dis_cnt_DSTATE;
  u16 en_cnt_DSTATE;
  bit Merge_d;
  bit Merge_k;
  bit Delay_DSTATE_k;
  bit out_delay_DSTATE;
} DW_HsfbDiag_f_T;
# 88 "../40_Appl/HsfbDiag/HsfbDiag.h"
extern HSFBDIAG_S_ERRCODE0 HsfbDiag_ErrCode0;
extern HSFBDIAG_S_ERRCODE1 HsfbDiag_ErrCode1;
extern HSFBDIAG_S_ERRCODE2 HsfbDiag_ErrCode2;
extern HSFBDIAG_S_ERRCODE3 HsfbDiag_ErrCode3;
extern HSFBDIAG_S_ENDIS HsfbDiag_EnDis;
extern HSFBDIAG_S_ERRMASK HsfbDiag_ErrMask;
extern bit HsfbDiag_LatchReset;
extern bit HsfbDiag_ErrCode0En;
extern void HsfbDiag_Call1ms(const HSFBAPP_S_PORTSTATUS *PortStatus1ms, const
  HSFBMEAS_S_STATUS1MS *MeasStatus1ms, const HSFBCTRL_S_STATUS15US
  *CtrlStatus15us, const HSFBNTC_S_STATUS *NtcStatus10ms, const
  HSFBSTATE_S_STATUS *StateStatus, const HSFBSAFETY_S_STATUS1MS *SafetyStatus1ms,
  HSFBDIAG_S_STATUS1MS *DiagStatus1ms);
extern void HsfbDiag_CallInit(void);



extern void HsfbDiag_MaxCheck(f32 val, f32 max, u16 max_cnt, bit *max_out,
  DW_HsfbDiag_MaxCheck_T *localDW);
extern void HsfbDiag_MaxHysCheck(f32 val, f32 maxH, f32 maxL, u16 max_cnt, bit
  *max_out, DW_HsfbDiag_MaxHysCheck_T *localDW);
extern void HsfbDiag_ErrCode0_Calc(void);
extern void HsfbDiag_ErrCode1_Calc(void);
extern void HsfbDiag_RangeCheck_IproFet(void);
extern void HsfbDiag_ErrCode2_Calc(void);
extern void HsfbDiag_ErrCode3_Calc(void);
extern void HsfbDiag_ErrCode_Latch(void);
extern void HsfbDiag_ErrCode_Mux(void);






extern DW_HsfbDiag_f_T HsfbDiag_DW;
# 20 "../40_Appl/HsfbApp/HsfbApp.h" 2
# 1 "../40_Appl/HsfbMeas/HsfbMeas.h" 1
# 15 "../40_Appl/HsfbMeas/HsfbMeas.h"
# 1 "../40_Appl/HsfbMeas/HsfbMeas_types.h" 1
# 9 "../40_Appl/HsfbMeas/HsfbMeas_types.h"
# 1 "../40_Appl/HsfbMeas/HsfbMeas_struct.h" 1
# 10 "../40_Appl/HsfbMeas/HsfbMeas_types.h" 2
# 16 "../40_Appl/HsfbMeas/HsfbMeas.h" 2


# 1 "../40_Appl/HsfbMeas/HsfbMeas_param.h" 1
# 19 "../40_Appl/HsfbMeas/HsfbMeas.h" 2
# 1 "../40_Appl/HsfbMeas/HsfbMeas_GetCalibData.h" 1
# 24 "../40_Appl/HsfbMeas/HsfbMeas_GetCalibData.h"
extern void HsfbMeas_GetCalibData(HSFBMEAS_S_CALIB *y);
# 20 "../40_Appl/HsfbMeas/HsfbMeas.h" 2
# 1 "../40_Appl/HsfbMeas/HsfbMeas_GetInitOffset.h" 1
# 24 "../40_Appl/HsfbMeas/HsfbMeas_GetInitOffset.h"
extern void HsfbMeas_GetInitOffset(HSFBMEAS_S_INITOFFSET *y);
# 21 "../40_Appl/HsfbMeas/HsfbMeas.h" 2
# 29 "../40_Appl/HsfbMeas/HsfbMeas.h"
typedef struct {
  f32 Delay_DSTATE;
  f32 Delay_DSTATE_e;
  f32 Delay_DSTATE_k;
  f32 Delay_DSTATE_n;
  f32 Delay_DSTATE_b;
  f32 Delay_DSTATE_k4;
  f32 Delay_DSTATE_i;
  f32 Delay_DSTATE_c;
  f32 Delay_DSTATE_kp;
} DW_HsfbMeas_f_T;
# 55 "../40_Appl/HsfbMeas/HsfbMeas.h"
extern HSFBMEAS_S_PARAM HsfbMeas_Param;
extern HSFBMEAS_S_FILTER HsfbMeas_Filter;
extern HSFBMEAS_S_CALIB HsfbMeas_Calib;
extern HSFBMEAS_S_INITOFFSET HsfbMeas_InitOffset;
extern void HsfbMeas_Call100us(const HSFBAPP_S_AI *AdcStatus100us,
  HSFBMEAS_S_STATUS100US *MeasStatus100us);
extern void HsfbMeas_Call15us(const HSFBAPP_S_AI *AdcStatus15us,
  HSFBMEAS_S_STATUS15US *MeasStatus15us);
extern void HsfbMeas_Call1ms(const HSFBAPP_S_AI *AdcStatus1ms, const
  HSFBPWM_S_STATUS15US *PwmStatus15us, HSFBMEAS_S_STATUS1MS *MeasStatus1ms);
extern void HsfbMeas_CallInit(void);



extern void HsfbMeas_Calibration(void);
extern void HsfbMeas_InitOffsetCheck(void);






extern DW_HsfbMeas_f_T HsfbMeas_DW;
# 21 "../40_Appl/HsfbApp/HsfbApp.h" 2
# 1 "../40_Appl/HsfbNtc/HsfbNtc.h" 1
# 15 "../40_Appl/HsfbNtc/HsfbNtc.h"
# 1 "../40_Appl/HsfbNtc/HsfbNtc_types.h" 1
# 9 "../40_Appl/HsfbNtc/HsfbNtc_types.h"
# 1 "../40_Appl/HsfbNtc/HsfbNtc_struct.h" 1
# 10 "../40_Appl/HsfbNtc/HsfbNtc_types.h" 2
# 16 "../40_Appl/HsfbNtc/HsfbNtc.h" 2


# 1 "../40_Appl/HsfbNtc/HsfbNtc_table.h" 1
# 20 "../40_Appl/HsfbNtc/HsfbNtc_table.h"
extern const s32 HSFBNTC_TABLE_RTR25_MOS_B02[42];
extern const s32 HSFBNTC_TABLE_RTR25_MOS_C0[191];
extern const s32 HSFBNTC_TABLE_RTR25_WATIN[206];
extern const s32 HSFBNTC_TABLE_RTR25_WATOUT[42];
extern const s16 HSFBNTC_TABLE_TEMP_MOS_B02[42];
extern const s16 HSFBNTC_TABLE_TEMP_MOS_C0[191];
extern const s16 HSFBNTC_TABLE_TEMP_WATIN[206];
extern const s16 HSFBNTC_TABLE_TEMP_WATOUT[42];
# 19 "../40_Appl/HsfbNtc/HsfbNtc.h" 2
# 1 "../40_Appl/HsfbNtc/HsfbNtc_param.h" 1
# 20 "../40_Appl/HsfbNtc/HsfbNtc.h" 2
# 28 "../40_Appl/HsfbNtc/HsfbNtc.h"
typedef struct {
  s16 Merge_c[6];
} DW_HsfbNtc_f_T;






extern void HsfbNtc_Call10ms(const HSFBAPP_S_AI *Ai1ms, HSFBNTC_S_STATUS
  *NtcStatus);
extern void HsfbNtc_CallInit(void);



extern void HsfbNtc_CalcNtcR(const f32 Rser[6], const f32 Rpre[6], const f32
  Kpre[6], const f32 Kadc[6], s32 Ohms[6], s32 RtR25[6]);






extern DW_HsfbNtc_f_T HsfbNtc_DW;
# 22 "../40_Appl/HsfbApp/HsfbApp.h" 2
# 1 "../40_Appl/HsfbPwm/HsfbPwm.h" 1
# 15 "../40_Appl/HsfbPwm/HsfbPwm.h"
# 1 "../40_Appl/HsfbPwm/HsfbPwm_types.h" 1
# 9 "../40_Appl/HsfbPwm/HsfbPwm_types.h"
# 1 "../40_Appl/HsfbPwm/HsfbPwm_struct.h" 1
# 10 "../40_Appl/HsfbPwm/HsfbPwm_types.h" 2
# 16 "../40_Appl/HsfbPwm/HsfbPwm.h" 2



# 1 "../40_Appl/HsfbPwm/HsfbPwm_driver.h" 1
# 24 "../40_Appl/HsfbPwm/HsfbPwm_driver.h"
extern void HsfbPwm_Sync(void);
extern void HsfbPwm_Discharge(void);
extern void HsfbPwm_Reset(void);
extern void HsfbPwm_Charge(void);
extern void HsfbPwm_SteadyRun(void);
# 20 "../40_Appl/HsfbPwm/HsfbPwm.h" 2



# 1 "../40_Appl/HsfbPwm/HsfbPwm_param.h" 1
# 24 "../40_Appl/HsfbPwm/HsfbPwm.h" 2
# 1 "../40_Appl/HsfbPwm/HsfbPwm_macro.h" 1
# 25 "../40_Appl/HsfbPwm/HsfbPwm.h" 2
# 33 "../40_Appl/HsfbPwm/HsfbPwm.h"
typedef struct {
  f32 Assignment_nw[11];
  f32 Sum1_c;
  f32 In;
  f32 y_delay_DSTATE;
  f32 limit_delay_DSTATE;
  f32 out_delay_DSTATE;
  f32 Delay1_DSTATE;
  f32 Memory_PreviousInput;
  u32 RechargeCnt;
  HSFBPWM_E_STATE HsfbPwm_State_o;
  u16 In_b;
  u16 In_o;
  u16 transfer_delay_DSTATE;
  u16 free_cnt_delay_DSTATE;
  u8 is_active_c9_HsfbPwm;
  u8 is_active_c11_HsfbPwm;
  u8 is_active_Pri;
  u8 is_active_Sr;
  u8 is_active_Clamp;
  u8 is_active_Saux;
  bit In_n;
  bit out_delay_DSTATE_i;
  bit state_delay_DSTATE;
  bit transfer_delay2_DSTATE;
  bit oper_buck;
  bit oper_boost;
  bit topo_fb;
  bit topo_hb;
  bit dmin_buck;
  bit dmin_boost;
} DW_HsfbPwm_f_T;
# 80 "../40_Appl/HsfbPwm/HsfbPwm.h"
extern HSFBPWM_S_STATUS HsfbPwm_Status;
extern HSFBPWM_S_JITTER HsfbPwm_Jitter;
extern HSFBPWM_S_TOMOR HsfbPwm_ToMor;
extern HSFBPWM_S_PERIOD HsfbPwm_Period;
extern HSFBPWM_S_STATECMD HsfbPwm_StateCmd;
extern f32 HsfbPwm_StartState;
extern f32 HsfbPwm_ChargeState;
extern f32 HsfbPwm_DischargeState;
extern HSFBPWM_E_STATE HsfbPwm_State;
extern void HsfbPwm_Init(void);
extern void HsfbPwm_Call100us(const HSFBMEAS_S_STATUS100US *MeasStatus100us,
  const HSFBCTRL_S_STATUS100US *CtrlStatus100us, const HSFBSTATE_S_STATUS
  *StateStatus, const HSFBAPP_S_RX *AppRx10ms, const HSFBSAFETY_S_STATUS100US
  *SafetyStatus100us);
extern void HsfbPwm_Call15us(const HSFBCTRL_S_STATUS15US *CtrlStatus15us, const
  HSFBMEAS_S_STATUS100US *MeasStatus100us, HSFBPWM_S_STATUS15US *PwmStatus15us);
extern void HsfbPwm_CallInit(void);



extern void HsfbPwm_GetData100us(void);
extern void HsfbPwm_Jitter100us(void);
extern void HsfbPwm_MAF_Calc(void);
extern void HsfbPwm_ToMor100us(void);
extern void HsfbPwm_GetData15us(void);
extern void HsfbPwm_SetData15us(void);
extern void HsfbPwm_EnDis15us(void);
extern void HsfbPwm_State15us_Init(void);
extern void HsfbPwm_State15us(void);






extern DW_HsfbPwm_f_T HsfbPwm_DW;
# 23 "../40_Appl/HsfbApp/HsfbApp.h" 2
# 1 "../40_Appl/HsfbSafety/HsfbSafety.h" 1
# 15 "../40_Appl/HsfbSafety/HsfbSafety.h"
# 1 "../40_Appl/HsfbSafety/HsfbSafety_types.h" 1
# 9 "../40_Appl/HsfbSafety/HsfbSafety_types.h"
# 1 "../40_Appl/HsfbSafety/HsfbSafety_struct.h" 1
# 10 "../40_Appl/HsfbSafety/HsfbSafety_types.h" 2
# 16 "../40_Appl/HsfbSafety/HsfbSafety.h" 2



# 1 "../40_Appl/HsfbSafety/HsfbSafety_param.h" 1
# 20 "../40_Appl/HsfbSafety/HsfbSafety.h" 2
# 1 "../40_Appl/HsfbSafety/HsfbSafety_SetClrAutoDiag.h" 1
# 21 "../40_Appl/HsfbSafety/HsfbSafety.h" 2
# 29 "../40_Appl/HsfbSafety/HsfbSafety.h"
typedef struct {
  u16 DelayCnt;
  u8 is_active_c10_HsfbSafety;
  u8 is_c10_HsfbSafety;
} DW_HsfbSafety_AutoDiag_T;






typedef struct {
  DW_HsfbSafety_AutoDiag_T sf_OVP19V_AutoDiag;
  DW_HsfbSafety_AutoDiag_T sf_OVP16V_AutoDiag;
  HSFBSAFETY_S_AUTODIAGSTATUS Status;
  f32 Gain3;
  s16 cnt_delay_DSTATE;
  s16 cnt_delay_DSTATE_f;
  s16 cnt_delay_DSTATE_p;
  s16 cnt_delay_DSTATE_e;
  s16 cnt_delay_DSTATE_l;
  s16 cnt_delay_DSTATE_o;
  s16 cnt_delay_DSTATE_h;
  s16 cnt_delay_DSTATE_l1;
  s16 cnt_delay_DSTATE_p3;
  s16 cnt_delay_DSTATE_hn;
  s16 cnt_delay_DSTATE_et;
  s16 cnt_delay_DSTATE_d;
  s16 cnt_delay_DSTATE_px;
  s16 cnt_delay_DSTATE_a;
  s16 cnt_delay_DSTATE_fh;
  s16 cnt_delay_DSTATE_ol;
  u8 is_active_c7_HsfbSafety;
  u8 is_c7_HsfbSafety;
  bit Merge;
  bit Merge_k;
  bit Merge_c;
  bit Merge_o;
  bit Merge_p;
  bit Merge_l;
  bit Merge_d;
  bit Merge_n;
  bit Merge_f;
  bit Merge_pr;
  bit Merge_e;
  bit AutoDiagWait;
  bit AutoDiagFin;
  bit AutoDiagErr;
  bit AutoDiagWait_l;
  bit AutoDiagFin_b;
  bit AutoDiagErr_j;
  bit LogicalOperator3_a;
  bit Merge_dz;
  bit Merge_p2;
  bit Merge_j;
  bit Merge_m;
  bit Merge_ok;
  bit LastEnable;
} DW_HsfbSafety_f_T;
# 103 "../40_Appl/HsfbSafety/HsfbSafety.h"
extern HSFBSAFETY_S_SAFETYSTATUS HsfbSafety_SafetyStatus;
extern HSFBSAFETY_S_SAFETYSTATUS HsfbSafety_Enable;
extern f32 HsfbSafety_200usTick;
extern f32 HsfbSafety_VoutErr;
extern f32 HsfbSafety_Vkl30Err;
extern f32 HsfbSafety_VrefErr;
extern f32 HsfbSafety_VoutHw1Err;
extern f32 HsfbSafety_VoutHw2Err;
extern void HsfbSafety_Init(void);
extern void HsfbSafety_Call100us(const HSFBMEAS_S_STATUS100US *MeasStatus100us,
  const HSFBPWM_S_STATUS15US *PwmStatus15us, const HSFBSTATE_S_STATUS
  *StateStatus, HSFBSAFETY_S_STATUS100US *SafetyStatus100us);
extern void HsfbSafety_Call1ms(const HSFBMEAS_S_STATUS1MS *MeasStatus1ms, const
  HSFBAPP_S_PORTSTATUS *PortStatus1ms, const HSFBAPP_S_RX *AppRx10ms,
  HSFBSAFETY_S_STATUS1MS *SafetyStatus1ms);
extern void HsfbSafety_CallInit(void);



extern void HsfbSafety_Verr_Calc(f32 Vreal, f32 Vdiag, f32 Vth, f32 *Verr);
extern void HsfbSafety_AutoDiag_Init(bit *AutoDiagWait, bit *AutoDiagFin, bit
  *AutoDiagErr);
extern void HsfbSafety_AutoDiag(bit Reset, bit Enable, bit SetCond, bit ClrCond,
  u16 DelayMax, u16 Type, bit *AutoDiagWait, bit *AutoDiagFin, bit *AutoDiagErr,
  DW_HsfbSafety_AutoDiag_T *localDW);
extern void HsfbSafety_DCDC01_LFD1(void);
extern void HsfbSafety_DCDC02_LFD1(void);
extern void HsfbSafety_DCDC02_SM1(void);
extern void HsfbSafety_DCDC02_SM2(void);
extern void HsfbSafety_DCDC02_SM3(void);
extern void HsfbSafety_PWMEn_Calc(void);
extern void HsfbSafety_AutoDiagFunc_Init(bit Fin[4]);
extern void HsfbSafety_AutoDiagFunc(bit Enable, const HSFBAPP_S_PORTSTATUS *Port,
  const HSFBMEAS_S_STATUS1MS *Meas, bit Run[4], bit Fin[4]);
extern void HsfbSafety_AutoDiagState_Init(HSFBSAFETY_S_AUTODIAGSTATUS *Status);
extern void HsfbSafety_AutoDiagState(const HSFBAPP_S_RX *Rx, const
  HSFBAPP_S_PORTSTATUS *Port, const HSFBMEAS_S_STATUS1MS *Meas,
  HSFBSAFETY_S_AUTODIAGSTATUS *Status);
extern void HsfbSafety_DCDC01_LFD3(void);
extern void HsfbSafety_DCDC01_LFD4(void);
extern void HsfbSafety_DCDC01_SM1(void);
extern void HsfbSafety_DCDC01_SM2(void);
extern void HsfbSafety_DCDC01_SM3(void);
extern void HsfbSafety_DCDC01_SM4(void);
extern void HsfbSafety_DCDC02_LFD3(void);
extern void HsfbSafety_DCDC02_LFD4(void);
extern void HsfbSafety_DCDC02_SM4(void);
extern void HsfbSafety_DCDC03_LFD1(void);
extern void HsfbSafety_DCDC03_SM1(void);
extern void HsfbSafety_DCDC05_LFD1(void);
extern void HsfbSafety_DCDC05_SM1(void);






extern DW_HsfbSafety_f_T HsfbSafety_DW;
# 24 "../40_Appl/HsfbApp/HsfbApp.h" 2
# 1 "../40_Appl/HsfbState/HsfbState.h" 1
# 15 "../40_Appl/HsfbState/HsfbState.h"
# 1 "../40_Appl/HsfbState/HsfbState_types.h" 1
# 13 "../40_Appl/HsfbState/HsfbState_types.h"
# 1 "../40_Appl/HsfbState/HsfbState_struct.h" 1
# 14 "../40_Appl/HsfbState/HsfbState_types.h" 2







typedef enum {
  HSFBSTATE_E_STATE_None = 0,
  HSFBSTATE_E_STATE_Init,
  HSFBSTATE_E_STATE_Idle,
  HSFBSTATE_E_STATE_SoftStart,
  HSFBSTATE_E_STATE_SoftStop,
  HSFBSTATE_E_STATE_Charge,
  HSFBSTATE_E_STATE_WaitForReset,
  HSFBSTATE_E_STATE_ResetLatch,
  HSFBSTATE_E_STATE_ResetDriver
} HSFBSTATE_E_STATE;
# 16 "../40_Appl/HsfbState/HsfbState.h" 2


# 1 "../40_Appl/HsfbState/HsfbState_param.h" 1
# 19 "../40_Appl/HsfbState/HsfbState.h" 2
# 27 "../40_Appl/HsfbState/HsfbState.h"
typedef struct {
  s16 Ctr;
  u8 is_active_c3_HsfbState;
  u8 is_c3_HsfbState;
  u8 is_Operation;
  u8 is_Error;
} DW_HsfbState_f_T;
# 49 "../40_Appl/HsfbState/HsfbState.h"
extern HSFBSTATE_E_STATE HsfbState_State;
extern void HsfbState_p_Init(void);
extern void HsfbState_CalInit(void);
extern void HsfbState_Call1ms(const HSFBDIAG_S_STATUS1MS *DiagStatus1ms, const
  HSFBSAFETY_S_STATUS1MS *SafetyStatus1ms, const HSFBAPP_S_RX *AppRx10ms,
  HSFBSTATE_S_STATUS *StateStatus1ms);



extern void HsfbState_StateMachine_Init(void);
extern void HsfbState_StateMachine(u16 CanEnable, u16 CanClrFaults, u16
  CanTimeOut, u16 CanOpm, u16 CanTopo, bit DiagErr, bit DiagWarn);






extern DW_HsfbState_f_T HsfbState_DW;
# 25 "../40_Appl/HsfbApp/HsfbApp.h" 2


# 1 "../40_Appl/HsfbNtc/HsfbNtc_table.h" 1
# 28 "../40_Appl/HsfbApp/HsfbApp.h" 2
# 1 "../40_Appl/HsfbCtrl/HsfbCtrl_param.h" 1
# 29 "../40_Appl/HsfbApp/HsfbApp.h" 2
# 1 "../40_Appl/HsfbDiag/HsfbDiag_param.h" 1
# 30 "../40_Appl/HsfbApp/HsfbApp.h" 2

# 1 "../40_Appl/HsfbNtc/HsfbNtc_param.h" 1
# 32 "../40_Appl/HsfbApp/HsfbApp.h" 2
# 1 "../40_Appl/HsfbPwm/HsfbPwm_param.h" 1
# 33 "../40_Appl/HsfbApp/HsfbApp.h" 2

# 1 "../40_Appl/HsfbSafety/HsfbSafety_param.h" 1
# 35 "../40_Appl/HsfbApp/HsfbApp.h" 2
# 1 "../40_Appl/HsfbState/HsfbState_param.h" 1
# 36 "../40_Appl/HsfbApp/HsfbApp.h" 2
# 1 "../40_Appl/HsfbApp/HsfbApp_ErrReset.h" 1
# 37 "../40_Appl/HsfbApp/HsfbApp.h" 2
# 1 "../40_Appl/HsfbApp/HsfbApp_GetRx10ms.h" 1
# 24 "../40_Appl/HsfbApp/HsfbApp_GetRx10ms.h"
extern void HsfbApp_GetRx10ms(HSFBAPP_S_RX *y);
# 38 "../40_Appl/HsfbApp/HsfbApp.h" 2
# 1 "../40_Appl/HsfbApp/HsfbApp_SetTx10ms.h" 1
# 24 "../40_Appl/HsfbApp/HsfbApp_SetTx10ms.h"
extern void HsfbApp_SetTx10ms(const HSFBAPP_S_TX *u);
# 39 "../40_Appl/HsfbApp/HsfbApp.h" 2
# 47 "../40_Appl/HsfbApp/HsfbApp.h"
typedef struct {
  s16 Delay_DSTATE[13];
  s16 Delay_DSTATE_l[4];
  s16 Delay_DSTATE_p[6];
} DW_HsfbApp_T;






extern DW_HsfbApp_T HsfbApp_DW;
# 68 "../40_Appl/HsfbApp/HsfbApp.h"
extern HSFBAPP_S_TX HsfbApp_Tx10ms;
extern HSFBMEAS_S_STATUS1MS MeasStatus1ms;
extern HSFBNTC_S_STATUS NtcStatus;
extern HSFBMEAS_S_STATUS100US MeasStatus100us;
extern HSFBSAFETY_S_STATUS1MS SafetyStatus1ms;
extern HSFBAPP_S_AI AdcStatus1ms;
extern HSFBAPP_S_AI AdcStatus15us;
extern HSFBAPP_S_AI AdcStatus100us;
extern HSFBMEAS_S_STATUS15US MeasStatus15us;
extern HSFBAPP_S_RX HsfbApp_Rx10ms;
extern HSFBSTATE_S_STATUS StateStatus;
extern HSFBPWM_S_STATUS15US PwmStatus15us;
extern HSFBDIAG_S_STATUS1MS DiagStatus1ms;
extern HSFBCTRL_S_STATUS15US CtrlStatus15us;
extern HSFBAPP_S_PORTSTATUS PortStatus1ms;
extern HSFBSAFETY_S_STATUS100US SafetyStatus100us;
extern HSFBCTRL_S_STATUS100US CtrlStatus100us;


extern void HsfbApp_initialize(void);
extern void HsfbApp_terminate(void);


extern void HsfbApp_Call15us(void);


extern void HsfbApp_Call15us1(void);


extern void HsfbApp_Call100us(void);


extern void HsfbApp_Call1ms(void);


extern void HsfbApp_Call10ms(void);


extern void HsfbApp_CallInit(void);
# 10 "../30_Bsw/Main/Main_api.h" 2
# 1 "../30_Bsw/Mpu/mpu_api.h" 1
# 24 "../30_Bsw/Mpu/mpu_api.h"
# 1 "../30_Bsw/Mcal/Cpu/IfxCpu.h" 1
# 48 "../30_Bsw/Mcal/Cpu/IfxCpu.h"
# 1 "../30_Bsw/Common/TC21x/IfxCpu_cfg.h" 1
# 40 "../30_Bsw/Common/TC21x/IfxCpu_cfg.h"
# 1 "../30_Bsw/Common/TC21x/IfxCpu_reg.h" 1
# 41 "../30_Bsw/Common/TC21x/IfxCpu_cfg.h" 2
# 64 "../30_Bsw/Common/TC21x/IfxCpu_cfg.h"
typedef enum
{
    IfxCpu_DBGST_HALT_run = 0,
    IfxCpu_DBGST_HALT_halt = 1
} IfxCpu_DBGST_HALT;



typedef enum
{
    IfxCpu_PMCSR_PMST_normalMode = 1,
    IfxCpu_PMCSR_PMST_idleModeRequest = 2,
    IfxCpu_PMCSR_PMST_idleMode = 3,
    IfxCpu_PMCSR_PMST_sleepModeRequest = 4,
    IfxCpu_PMCSR_PMST_standbyModeRequest = 6
} IfxCpu_PMCSR_PMST;



typedef enum
{
    IfxCpu_ResourceCpu_0 = 0,
    IfxCpu_ResourceCpu_none
} IfxCpu_ResourceCpu;





extern const IfxModule_IndexMap IfxCpu_cfg_indexMap[(1)];
# 49 "../30_Bsw/Mcal/Cpu/IfxCpu.h" 2
# 1 "../30_Bsw/Common/TC21x/IfxSrc_reg.h" 1
# 50 "../30_Bsw/Mcal/Cpu/IfxCpu.h" 2



# 1 "../30_Bsw/Common/TC21x/Ifx_Assert.h" 1
# 54 "../30_Bsw/Mcal/Cpu/IfxCpu.h" 2
# 90 "../30_Bsw/Mcal/Cpu/IfxCpu.h"
typedef unsigned int IfxCpu_spinLock;



typedef unsigned int IfxCpu_mutexLock;
# 104 "../30_Bsw/Mcal/Cpu/IfxCpu.h"
typedef enum
{
    IfxCpu_CoreMode_halt,
    IfxCpu_CoreMode_run,
    IfxCpu_CoreMode_idle,
    IfxCpu_CoreMode_sleep,
    IfxCpu_CoreMode_stby,
    IfxCpu_CoreMode_unknown
} IfxCpu_CoreMode;



typedef enum
{
    IfxCpu_CounterMode_normal = 0,
    IfxCpu_CounterMode_task = 1
} IfxCpu_CounterMode;
# 130 "../30_Bsw/Mcal/Cpu/IfxCpu.h"
typedef struct
{
    uint32 counter;
    boolean overlfow;
} IfxCpu_Counter;







typedef struct
{
    IfxCpu_Counter instruction;
    IfxCpu_Counter clock;
    IfxCpu_Counter counter1;
    IfxCpu_Counter counter2;
    IfxCpu_Counter counter3;
} IfxCpu_Perf;
# 163 "../30_Bsw/Mcal/Cpu/IfxCpu.h"
static inline __attribute__ ((always_inline)) IfxCpu_ResourceCpu IfxCpu_getCoreId(void);




static inline __attribute__ ((always_inline)) IfxCpu_ResourceCpu IfxCpu_getCoreIndex(void);
# 178 "../30_Bsw/Mcal/Cpu/IfxCpu.h"
static inline __attribute__ ((always_inline)) void IfxCpu_initCSA(uint32 *csaBegin, uint32 *csaEnd);




static inline __attribute__ ((always_inline)) void IfxCpu_setSafetyTaskIdentifier(boolean safetyId);




static inline __attribute__ ((always_inline)) void IfxCpu_triggerSwReset(void);
# 198 "../30_Bsw/Mcal/Cpu/IfxCpu.h"
extern Ifx_CPU *IfxCpu_getAddress(IfxCpu_ResourceCpu cpu);





extern IfxCpu_CoreMode IfxCpu_getCoreMode(Ifx_CPU *cpu);





extern IfxCpu_ResourceCpu IfxCpu_getIndex(Ifx_CPU *cpu);
# 219 "../30_Bsw/Mcal/Cpu/IfxCpu.h"
extern boolean IfxCpu_setCoreMode(Ifx_CPU *cpu, IfxCpu_CoreMode mode);
# 228 "../30_Bsw/Mcal/Cpu/IfxCpu.h"
extern boolean IfxCpu_setProgramCounter(Ifx_CPU *cpu, uint32 programCounter);
# 237 "../30_Bsw/Mcal/Cpu/IfxCpu.h"
extern boolean IfxCpu_startCore(Ifx_CPU *cpu, uint32 programCounter);
# 254 "../30_Bsw/Mcal/Cpu/IfxCpu.h"
static inline __attribute__ ((always_inline)) boolean IfxCpu_areInterruptsEnabled(void);
# 264 "../30_Bsw/Mcal/Cpu/IfxCpu.h"
static inline __attribute__ ((always_inline)) boolean IfxCpu_disableInterrupts(void);





static inline __attribute__ ((always_inline)) void IfxCpu_enableInterrupts(void);




static inline __attribute__ ((always_inline)) void IfxCpu_forceDisableInterrupts(void);
# 284 "../30_Bsw/Mcal/Cpu/IfxCpu.h"
static inline __attribute__ ((always_inline)) void IfxCpu_restoreInterrupts(boolean enabled);
# 302 "../30_Bsw/Mcal/Cpu/IfxCpu.h"
static inline __attribute__ ((always_inline)) void IfxCpu_enableSegmentSpecificDataAccessCacheability(uint16 segmentNumberMask, boolean enable);
# 311 "../30_Bsw/Mcal/Cpu/IfxCpu.h"
static inline __attribute__ ((always_inline)) void IfxCpu_enableSegmentSpecificInstructionAccessCacheability(uint16 segmentNumberMask, boolean enable);




static inline __attribute__ ((always_inline)) void IfxCpu_invalidateProgramCache(void);





static inline __attribute__ ((always_inline)) boolean IfxCpu_isAddressCachable(void *address);
# 333 "../30_Bsw/Mcal/Cpu/IfxCpu.h"
static inline __attribute__ ((always_inline)) void IfxCpu_setDataCache(boolean enable);
# 344 "../30_Bsw/Mcal/Cpu/IfxCpu.h"
static inline __attribute__ ((always_inline)) void IfxCpu_setProgramCache(boolean enable);
# 361 "../30_Bsw/Mcal/Cpu/IfxCpu.h"
static inline __attribute__ ((always_inline)) uint32 IfxCpu_getClockCounter(void);
# 374 "../30_Bsw/Mcal/Cpu/IfxCpu.h"
static inline __attribute__ ((always_inline)) boolean IfxCpu_getClockCounterStickyOverflow(void);







static inline __attribute__ ((always_inline)) uint32 IfxCpu_getInstructionCounter(void);
# 395 "../30_Bsw/Mcal/Cpu/IfxCpu.h"
static inline __attribute__ ((always_inline)) boolean IfxCpu_getInstructionCounterStickyOverflow(void);





static inline __attribute__ ((always_inline)) uint32 IfxCpu_getPerformanceCounter(uint32 address);






static inline __attribute__ ((always_inline)) boolean IfxCpu_getPerformanceCounterStickyOverflow(uint32 address);







static inline __attribute__ ((always_inline)) void IfxCpu_resetAndStartCounters(IfxCpu_CounterMode mode);
# 427 "../30_Bsw/Mcal/Cpu/IfxCpu.h"
static inline __attribute__ ((always_inline)) void IfxCpu_setPerformanceCountersEnableBit(uint32 enable);







static inline __attribute__ ((always_inline)) IfxCpu_Perf IfxCpu_stopCounters(void);
# 444 "../30_Bsw/Mcal/Cpu/IfxCpu.h"
static inline __attribute__ ((always_inline)) void IfxCpu_updateClockCounter(uint32 count);
# 453 "../30_Bsw/Mcal/Cpu/IfxCpu.h"
static inline __attribute__ ((always_inline)) void IfxCpu_updateInstructionCounter(uint32 count);







static inline __attribute__ ((always_inline)) void IfxCpu_updatePerformanceCounter(uint32 address, uint32 count);
# 488 "../30_Bsw/Mcal/Cpu/IfxCpu.h"
extern boolean IfxCpu_acquireMutex(IfxCpu_mutexLock *lock);
# 506 "../30_Bsw/Mcal/Cpu/IfxCpu.h"
extern void IfxCpu_releaseMutex(IfxCpu_mutexLock *lock);







extern void IfxCpu_resetSpinLock(IfxCpu_spinLock *lock);
# 533 "../30_Bsw/Mcal/Cpu/IfxCpu.h"
extern boolean IfxCpu_setSpinLock(IfxCpu_spinLock *lock, uint32 timeoutCount);







static inline __attribute__ ((always_inline)) boolean IfxCpu_areInterruptsEnabled(void)
{
    Ifx_CPU_ICR reg;
    reg.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0xFE2C" : "=d" (__res) :: "memory"); __res; }));
    return reg.B.IE != 0;
}


static inline __attribute__ ((always_inline)) boolean IfxCpu_disableInterrupts(void)
{
    boolean enabled;
    enabled = IfxCpu_areInterruptsEnabled();
    __asm__ volatile ("disable" : : : "memory");
    __nop();
    return enabled;
}


static inline __attribute__ ((always_inline)) void IfxCpu_enableInterrupts(void)
{
    __asm__ volatile ("enable" : : : "memory");
}


static inline __attribute__ ((always_inline)) void IfxCpu_enableSegmentSpecificDataAccessCacheability(uint16 segmentNumberMask, boolean enable)
{
    uint32 cpu_pmaVal;
    uint16 checkRestrictionMask;
    uint32 coreId = IfxCpu_getCoreIndex();
    uint16 wdtPassword = IfxScuWdt_getCpuWatchdogPasswordInline(&(*(Ifx_SCU *)0xF0036000u).WDTCPU[coreId]);



    checkRestrictionMask = ((uint16)1 << (7 - coreId)) | ((uint16)1 << 0xC);

    if ((segmentNumberMask & checkRestrictionMask) != 0)
    {
        segmentNumberMask |= checkRestrictionMask;
    }

    cpu_pmaVal = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0x8100" : "=d" (__res) :: "memory"); __res; }));

    cpu_pmaVal = enable ? (cpu_pmaVal | segmentNumberMask) : (cpu_pmaVal & ~segmentNumberMask);


    IfxScuWdt_clearCpuEndinitInline(&(*(Ifx_SCU *)0xF0036000u).WDTCPU[coreId], wdtPassword);


    __dsync();
    do { unsigned __newval = (unsigned) (cpu_pmaVal); __asm__ volatile ("mtcr LO:" "0x8100" ", %0" :: "d" (__newval) : "memory"); } while (0);
    __isync();
    IfxScuWdt_setCpuEndinitInline(&(*(Ifx_SCU *)0xF0036000u).WDTCPU[coreId], wdtPassword);
}


static inline __attribute__ ((always_inline)) void IfxCpu_enableSegmentSpecificInstructionAccessCacheability(uint16 segmentNumberMask, boolean enable)
{
    uint32 cpu_pmaVal;
    uint16 checkRestrictionMask;
    uint32 coreId = IfxCpu_getCoreIndex();
    uint16 wdtPassword = IfxScuWdt_getCpuWatchdogPasswordInline(&(*(Ifx_SCU *)0xF0036000u).WDTCPU[coreId]);



    checkRestrictionMask = ((uint16)1 << (7 - coreId)) | ((uint16)1 << 0xD);

    if ((segmentNumberMask & checkRestrictionMask) != 0)
    {
        segmentNumberMask |= checkRestrictionMask;
    }

    cpu_pmaVal = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0x8104" : "=d" (__res) :: "memory"); __res; }));

    cpu_pmaVal = enable ? (cpu_pmaVal | segmentNumberMask) : (cpu_pmaVal & ~segmentNumberMask);


    IfxScuWdt_clearCpuEndinitInline(&(*(Ifx_SCU *)0xF0036000u).WDTCPU[coreId], wdtPassword);


    __dsync();
    do { unsigned __newval = (unsigned) (cpu_pmaVal); __asm__ volatile ("mtcr LO:" "0x8104" ", %0" :: "d" (__newval) : "memory"); } while (0);
    __isync();
    IfxScuWdt_setCpuEndinitInline(&(*(Ifx_SCU *)0xF0036000u).WDTCPU[coreId], wdtPassword);
}


static inline __attribute__ ((always_inline)) void IfxCpu_forceDisableInterrupts(void)
{
    __asm__ volatile ("disable" : : : "memory");
    __nop();
}


static inline __attribute__ ((always_inline)) uint32 IfxCpu_getClockCounter(void)
{
    return IfxCpu_getPerformanceCounter(0xFC04);
}


static inline __attribute__ ((always_inline)) boolean IfxCpu_getClockCounterStickyOverflow(void)
{
    return IfxCpu_getPerformanceCounterStickyOverflow(0xFC04);
}


static inline __attribute__ ((always_inline)) IfxCpu_ResourceCpu IfxCpu_getCoreId(void)
{
    Ifx_CPU_CORE_ID reg;
    reg.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0xFE1C" : "=d" (__res) :: "memory"); __res; }));
    return (IfxCpu_ResourceCpu)reg.B.CORE_ID;
}


static inline __attribute__ ((always_inline)) IfxCpu_ResourceCpu IfxCpu_getCoreIndex(void)
{
    Ifx_CPU_CORE_ID reg;
    reg.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0xFE1C" : "=d" (__res) :: "memory"); __res; }));
    return (IfxCpu_ResourceCpu)reg.B.CORE_ID;
}


static inline __attribute__ ((always_inline)) uint32 IfxCpu_getInstructionCounter(void)
{
    return IfxCpu_getPerformanceCounter(0xFC08);
}


static inline __attribute__ ((always_inline)) boolean IfxCpu_getInstructionCounterStickyOverflow(void)
{
    return IfxCpu_getPerformanceCounterStickyOverflow(0xFC08);
}


static inline __attribute__ ((always_inline)) uint32 IfxCpu_getPerformanceCounter(uint32 address)
{
    Ifx_CPU_CCNT ccnt;
    ccnt.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "address" : "=d" (__res) :: "memory"); __res; }));
    return ccnt.B.CountValue;
}


static inline __attribute__ ((always_inline)) boolean IfxCpu_getPerformanceCounterStickyOverflow(uint32 address)
{
    Ifx_CPU_CCNT ccnt;

    ccnt.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "address" : "=d" (__res) :: "memory"); __res; }));

    return ccnt.B.SOvf;
}


static inline __attribute__ ((always_inline)) void IfxCpu_initCSA(uint32 *csaBegin, uint32 *csaEnd)
{
    uint32 k;
    uint32 nxt_cxi_val = 0;
    uint32 *prvCsa = 0U;
    uint32 *nxtCsa = csaBegin;

    for (k = 0; k < (((uint32)csaEnd - (uint32)csaBegin) / 64); k++)
    {
        nxt_cxi_val = ((uint32)nxtCsa & (0XFU << 28)) >> 12 | ((uint32)nxtCsa & (0XFFFFU << 6)) >> 6;

        if (k == 0)
        {
            do { unsigned __newval = (unsigned) (nxt_cxi_val); __asm__ volatile ("mtcr LO:" "0xFE38" ", %0" :: "d" (__newval) : "memory"); } while (0);
        }
        else
        {
            *prvCsa = nxt_cxi_val;
        }

        prvCsa = (uint32 *)nxtCsa;
        nxtCsa += 16;
    }

    *prvCsa = 0;
    do { unsigned __newval = (unsigned) (nxt_cxi_val); __asm__ volatile ("mtcr LO:" "0xFE3C" ", %0" :: "d" (__newval) : "memory"); } while (0);
}


static inline __attribute__ ((always_inline)) void IfxCpu_invalidateProgramCache(void)
{
    uint16 cpuWdtPassword = IfxScuWdt_getCpuWatchdogPassword();
    {
        IfxScuWdt_clearCpuEndinit(cpuWdtPassword);
        Ifx_CPU_PCON1 pcon1;
        pcon1.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0x9204" : "=d" (__res) :: "memory"); __res; }));
        pcon1.B.PCINV = 1;
        do { unsigned __newval = (unsigned) (pcon1.U); __asm__ volatile ("mtcr LO:" "0x9204" ", %0" :: "d" (__newval) : "memory"); } while (0);
        IfxScuWdt_setCpuEndinit(cpuWdtPassword);
    }
}


static inline __attribute__ ((always_inline)) boolean IfxCpu_isAddressCachable(void *address)
{
    uint8 segment = (uint32)address >> 24;
    return ((segment == (8)) || (segment == (9))) ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxCpu_resetAndStartCounters(IfxCpu_CounterMode mode)
{
    Ifx_CPU_CCTRL cctrl;
    cctrl.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0xFC00" : "=d" (__res) :: "memory"); __res; }));

    cctrl.B.CE = 0;
    do { unsigned __newval = (unsigned) (cctrl.U); __asm__ volatile ("mtcr LO:" "0xFC00" ", %0" :: "d" (__newval) : "memory"); } while (0);


    do { unsigned __newval = (unsigned) (0); __asm__ volatile ("mtcr LO:" "0xFC04" ", %0" :: "d" (__newval) : "memory"); } while (0);
    do { unsigned __newval = (unsigned) (0); __asm__ volatile ("mtcr LO:" "0xFC08" ", %0" :: "d" (__newval) : "memory"); } while (0);
    do { unsigned __newval = (unsigned) (0); __asm__ volatile ("mtcr LO:" "0xFC0C" ", %0" :: "d" (__newval) : "memory"); } while (0);
    do { unsigned __newval = (unsigned) (0); __asm__ volatile ("mtcr LO:" "0xFC10" ", %0" :: "d" (__newval) : "memory"); } while (0);
    do { unsigned __newval = (unsigned) (0); __asm__ volatile ("mtcr LO:" "0xFC14" ", %0" :: "d" (__newval) : "memory"); } while (0);


    cctrl.B.CE = 1;
    cctrl.B.CM = mode;
    do { unsigned __newval = (unsigned) (cctrl.U); __asm__ volatile ("mtcr LO:" "0xFC00" ", %0" :: "d" (__newval) : "memory"); } while (0);
}


static inline __attribute__ ((always_inline)) void IfxCpu_restoreInterrupts(boolean enabled)
{
    if (enabled != 0)
    {
        __asm__ volatile ("enable" : : : "memory");
    }
}


static inline __attribute__ ((always_inline)) void IfxCpu_setDataCache(boolean enable)
{
    uint32 coreId = IfxCpu_getCoreIndex();
    uint16 wdtPassword = IfxScuWdt_getCpuWatchdogPasswordInline(&(*(Ifx_SCU *)0xF0036000u).WDTCPU[coreId]);

    {
        IfxScuWdt_clearCpuEndinitInline(&(*(Ifx_SCU *)0xF0036000u).WDTCPU[coreId], wdtPassword);
        Ifx_CPU_DCON0 dcon0;
        dcon0.U = 0;
        dcon0.B.DCBYP = enable ? 0 : 1;
        do { unsigned __newval = (unsigned) (dcon0.U); __asm__ volatile ("mtcr LO:" "0x9040" ", %0" :: "d" (__newval) : "memory"); } while (0);
        IfxScuWdt_setCpuEndinitInline(&(*(Ifx_SCU *)0xF0036000u).WDTCPU[coreId], wdtPassword);
    }

    __isync();
}


static inline __attribute__ ((always_inline)) void IfxCpu_setPerformanceCountersEnableBit(uint32 enable)
{
    Ifx_CPU_CCTRL cctrl;
    cctrl.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0xFC00" : "=d" (__res) :: "memory"); __res; }));
    cctrl.B.CE = enable;
    do { unsigned __newval = (unsigned) (cctrl.U); __asm__ volatile ("mtcr LO:" "0xFC00" ", %0" :: "d" (__newval) : "memory"); } while (0);
}


static inline __attribute__ ((always_inline)) void IfxCpu_setProgramCache(boolean enable)
{
    if (enable)
    {
        Ifx_CPU_PCON1 pcon1;
        pcon1.U = 0;
        pcon1.B.PCINV = 1;
        do { unsigned __newval = (unsigned) (pcon1.U); __asm__ volatile ("mtcr LO:" "0x9204" ", %0" :: "d" (__newval) : "memory"); } while (0);
    }

    uint32 coreId = IfxCpu_getCoreIndex();
    uint16 wdtPassword = IfxScuWdt_getCpuWatchdogPasswordInline(&(*(Ifx_SCU *)0xF0036000u).WDTCPU[coreId]);

    {
        IfxScuWdt_clearCpuEndinitInline(&(*(Ifx_SCU *)0xF0036000u).WDTCPU[coreId], wdtPassword);
        Ifx_CPU_PCON0 pcon0;
        pcon0.U = 0;
        pcon0.B.PCBYP = enable ? 0 : 1;
        do { unsigned __newval = (unsigned) (pcon0.U); __asm__ volatile ("mtcr LO:" "0x920C" ", %0" :: "d" (__newval) : "memory"); } while (0);
        IfxScuWdt_setCpuEndinitInline(&(*(Ifx_SCU *)0xF0036000u).WDTCPU[coreId], wdtPassword);
    }

    __isync();
}


static inline __attribute__ ((always_inline)) void IfxCpu_setSafetyTaskIdentifier(boolean safetyId)
{
    Ifx_CPU_PSW psw;
    ((void)0);
    psw.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0xFE04" : "=d" (__res) :: "memory"); __res; }));
    psw.B.S = safetyId;
    do { unsigned __newval = (unsigned) ((uint32)psw.U); __asm__ volatile ("mtcr LO:" "0xFE04" ", %0" :: "d" (__newval) : "memory"); } while (0);
}


static inline __attribute__ ((always_inline)) IfxCpu_Perf IfxCpu_stopCounters(void)
{
    IfxCpu_Perf result;


    __stopPerfCounters();

    Ifx_CPU_CCNT ccnt;
    ccnt.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0xFC04" : "=d" (__res) :: "memory"); __res; }));
    result.clock.counter = ccnt.B.CountValue;
    result.clock.overlfow = ccnt.B.SOvf;

    Ifx_CPU_ICNT icnt;
    icnt.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0xFC08" : "=d" (__res) :: "memory"); __res; }));
    result.instruction.counter = icnt.B.CountValue;
    result.instruction.overlfow = icnt.B.SOvf;

    Ifx_CPU_M1CNT m1cnt;
    m1cnt.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0xFC0C" : "=d" (__res) :: "memory"); __res; }));
    result.counter1.counter = m1cnt.B.CountValue;
    result.counter1.overlfow = m1cnt.B.SOvf;

    Ifx_CPU_M2CNT m2cnt;
    m2cnt.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0xFC10" : "=d" (__res) :: "memory"); __res; }));
    result.counter2.counter = m2cnt.B.CountValue;
    result.counter2.overlfow = m2cnt.B.SOvf;

    Ifx_CPU_M3CNT m3cnt;
    m3cnt.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0xFC14" : "=d" (__res) :: "memory"); __res; }));
    result.counter3.counter = m3cnt.B.CountValue;
    result.counter3.overlfow = m3cnt.B.SOvf;
    return result;
}


static inline __attribute__ ((always_inline)) void IfxCpu_triggerSwReset(void)
{
    (*(Ifx_SCU *)0xF0036000u).SWRSTCON.B.SWRSTREQ = 1;


    while (1)
    {}
}


static inline __attribute__ ((always_inline)) void IfxCpu_updateClockCounter(uint32 count)
{
    IfxCpu_updatePerformanceCounter(0xFC04, count);
}


static inline __attribute__ ((always_inline)) void IfxCpu_updateInstructionCounter(uint32 count)
{
    IfxCpu_updatePerformanceCounter(0xFC08, count);
}


static inline __attribute__ ((always_inline)) void IfxCpu_updatePerformanceCounter(uint32 address, uint32 count)
{
    Ifx_CPU_CCTRL cctrl;
    boolean enableBit;

    cctrl.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0xFC00" : "=d" (__res) :: "memory"); __res; }));
    enableBit = cctrl.B.CE;
    cctrl.B.CE = 0;
    do { unsigned __newval = (unsigned) (cctrl.U); __asm__ volatile ("mtcr LO:" "0xFC00" ", %0" :: "d" (__newval) : "memory"); } while (0);


    count &= ~(1U << 31);
    do { unsigned __newval = (unsigned) (count); __asm__ volatile ("mtcr LO:" "address" ", %0" :: "d" (__newval) : "memory"); } while (0);


    cctrl.B.CE = enableBit;
    do { unsigned __newval = (unsigned) (cctrl.U); __asm__ volatile ("mtcr LO:" "0xFC00" ", %0" :: "d" (__newval) : "memory"); } while (0);
}
# 25 "../30_Bsw/Mpu/mpu_api.h" 2
# 69 "../30_Bsw/Mpu/mpu_api.h"
extern Ifx_CPU_PSW PSWReg_Rd0;
extern Ifx_CPU_PSW PSWReg_Rd1;
extern Ifx_CPU_PSW PSWReg_Rd2;
extern Ifx_CPU_PSW PSWReg_Rd3;

extern u16 TRUSTED_Mpu_Err;


extern void mpu_vInit(void);
# 98 "../30_Bsw/Mpu/mpu_api.h"
static inline void mpu_vSet_ActiveProtSet(uint8 protectionSet)
{
    Ifx_CPU_PSW PSWRegValue;

    PSWRegValue.U = 0x00000980u;
    PSWRegValue.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0xFE04" : "=d" (__res) :: "memory"); __res; }));
    PSWRegValue.B.PRS = protectionSet;
    do { unsigned __newval = (unsigned) (PSWRegValue.U); __asm__ volatile ("mtcr LO:" "0xFE04" ", %0" :: "d" (__newval) : "memory"); } while (0);
    __asm ("isync");
    if(protectionSet == 0)
    {
      PSWReg_Rd0.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0xFE04" : "=d" (__res) :: "memory"); __res; }));
    }
    else if(protectionSet == 1)
    {
      PSWReg_Rd1.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0xFE04" : "=d" (__res) :: "memory"); __res; }));
    }
    else if(protectionSet == 2)
    {
      PSWReg_Rd2.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0xFE04" : "=d" (__res) :: "memory"); __res; }));
    }
    else if(protectionSet == 3)
    {
      PSWReg_Rd3.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0xFE04" : "=d" (__res) :: "memory"); __res; }));
    }
}
# 11 "../30_Bsw/Main/Main_api.h" 2
# 1 "../30_Bsw/Mpu/mpu_cfg.h" 1
# 27 "../30_Bsw/Mpu/mpu_cfg.h"
# 1 "../30_Bsw/Common/TC21x/IfxPort.h" 1
# 43 "../30_Bsw/Common/TC21x/IfxPort.h"
# 1 "../30_Bsw/Common/TC21x/IfxPort_cfg.h" 1
# 41 "../30_Bsw/Common/TC21x/IfxPort_cfg.h"
# 1 "../30_Bsw/Common/TC21x/IfxPort_reg.h" 1
# 42 "../30_Bsw/Common/TC21x/IfxPort_cfg.h" 2
# 59 "../30_Bsw/Common/TC21x/IfxPort_cfg.h"
typedef enum
{
    IfxPort_Index_00 = 0,
    IfxPort_Index_02 = 2,
    IfxPort_Index_10 = 10,
    IfxPort_Index_11 = 11,
    IfxPort_Index_13 = 13,
    IfxPort_Index_14 = 14,
    IfxPort_Index_15 = 15,
    IfxPort_Index_20 = 20,
    IfxPort_Index_21 = 21,
    IfxPort_Index_22 = 22,
    IfxPort_Index_23 = 23,
    IfxPort_Index_33 = 33,
    IfxPort_Index_34 = 34,
    IfxPort_Index_none = -1
} IfxPort_Index;







typedef struct
{
    Ifx_P *port;
    uint16 masks;
} IfxPort_Esr_Masks;





extern const IfxPort_Esr_Masks IfxPort_cfg_esrMasks[(13)];

extern const IfxModule_IndexMap IfxPort_cfg_indexMap[(13)];
# 44 "../30_Bsw/Common/TC21x/IfxPort.h" 2
# 54 "../30_Bsw/Common/TC21x/IfxPort.h"
typedef enum
{
    IfxPort_InputMode_undefined = -1,
    IfxPort_InputMode_noPullDevice = 0 << 3,
        IfxPort_InputMode_pullDown = 1U << 3,
        IfxPort_InputMode_pullUp = 2U << 3
} IfxPort_InputMode;





typedef enum
{
    IfxPort_Mode_inputNoPullDevice = 0,
    IfxPort_Mode_inputPullDown = 8U,
    IfxPort_Mode_inputPullUp = 0x10U,
    IfxPort_Mode_outputPushPullGeneral = 0x80U,
    IfxPort_Mode_outputPushPullAlt1 = 0x88U,
    IfxPort_Mode_outputPushPullAlt2 = 0x90U,
    IfxPort_Mode_outputPushPullAlt3 = 0x98U,
    IfxPort_Mode_outputPushPullAlt4 = 0xA0U,
    IfxPort_Mode_outputPushPullAlt5 = 0xA8U,
    IfxPort_Mode_outputPushPullAlt6 = 0xB0U,
    IfxPort_Mode_outputPushPullAlt7 = 0xB8U,
    IfxPort_Mode_outputOpenDrainGeneral = 0xC0U,
    IfxPort_Mode_outputOpenDrainAlt1 = 0xC8U,
    IfxPort_Mode_outputOpenDrainAlt2 = 0xD0U,
    IfxPort_Mode_outputOpenDrainAlt3 = 0xD8U,
    IfxPort_Mode_outputOpenDrainAlt4 = 0xE0U,
    IfxPort_Mode_outputOpenDrainAlt5 = 0xE8U,
    IfxPort_Mode_outputOpenDrainAlt6 = 0xF0U,
    IfxPort_Mode_outputOpenDrainAlt7 = 0xF8U
} IfxPort_Mode;



typedef enum
{
    IfxPort_OutputIdx_general = 0x10U << 3,
        IfxPort_OutputIdx_alt1 = 0x11U << 3,
        IfxPort_OutputIdx_alt2 = 0x12U << 3,
        IfxPort_OutputIdx_alt3 = 0x13U << 3,
        IfxPort_OutputIdx_alt4 = 0x14U << 3,
        IfxPort_OutputIdx_alt5 = 0x15U << 3,
        IfxPort_OutputIdx_alt6 = 0x16U << 3,
        IfxPort_OutputIdx_alt7 = 0x17U << 3
} IfxPort_OutputIdx;



typedef enum
{
    IfxPort_OutputMode_pushPull = 0x10U << 3,
        IfxPort_OutputMode_openDrain = 0x18U << 3
} IfxPort_OutputMode;





typedef enum
{
    IfxPort_PadDriver_cmosAutomotiveSpeed1 = 0,
    IfxPort_PadDriver_cmosAutomotiveSpeed2 = 1,
    IfxPort_PadDriver_cmosAutomotiveSpeed3 = 2,
    IfxPort_PadDriver_cmosAutomotiveSpeed4 = 3,
    IfxPort_PadDriver_ttlSpeed1 = 8,
    IfxPort_PadDriver_ttlSpeed2 = 9,
    IfxPort_PadDriver_ttlSpeed3 = 10,
    IfxPort_PadDriver_ttlSpeed4 = 11
} IfxPort_PadDriver;





typedef enum
{
    IfxPort_State_notChanged = (0 << 16) | (0 << 0),
    IfxPort_State_high = (0 << 16) | (1U << 0),
    IfxPort_State_low = (1U << 16) | (0 << 0),
    IfxPort_State_toggled = (1U << 16) | (1U << 0)
} IfxPort_State;
# 149 "../30_Bsw/Common/TC21x/IfxPort.h"
typedef struct
{
    Ifx_P *port;
    uint8 pinIndex;
} IfxPort_Pin;



typedef struct
{
    Ifx_P *port;
    uint8 pinIndex;
    IfxPort_OutputIdx mode;
    IfxPort_PadDriver padDriver;
} IfxPort_Pin_Config;
# 187 "../30_Bsw/Common/TC21x/IfxPort.h"
static inline __attribute__ ((always_inline)) boolean IfxPort_getPinState(Ifx_P *port, uint8 pinIndex);
# 202 "../30_Bsw/Common/TC21x/IfxPort.h"
static inline __attribute__ ((always_inline)) void IfxPort_setPinHigh(Ifx_P *port, uint8 pinIndex);
# 217 "../30_Bsw/Common/TC21x/IfxPort.h"
static inline __attribute__ ((always_inline)) void IfxPort_setPinLow(Ifx_P *port, uint8 pinIndex);
# 231 "../30_Bsw/Common/TC21x/IfxPort.h"
static inline __attribute__ ((always_inline)) void IfxPort_setPinModeInput(Ifx_P *port, uint8 pinIndex, IfxPort_InputMode mode);
# 246 "../30_Bsw/Common/TC21x/IfxPort.h"
static inline __attribute__ ((always_inline)) void IfxPort_setPinModeOutput(Ifx_P *port, uint8 pinIndex, IfxPort_OutputMode mode, IfxPort_OutputIdx index);
# 262 "../30_Bsw/Common/TC21x/IfxPort.h"
static inline __attribute__ ((always_inline)) void IfxPort_setPinState(Ifx_P *port, uint8 pinIndex, IfxPort_State action);
# 277 "../30_Bsw/Common/TC21x/IfxPort.h"
static inline __attribute__ ((always_inline)) void IfxPort_togglePin(Ifx_P *port, uint8 pinIndex);
# 300 "../30_Bsw/Common/TC21x/IfxPort.h"
extern boolean IfxPort_disableEmergencyStop(Ifx_P *port, uint8 pinIndex);
# 318 "../30_Bsw/Common/TC21x/IfxPort.h"
extern boolean IfxPort_enableEmergencyStop(Ifx_P *port, uint8 pinIndex);
# 334 "../30_Bsw/Common/TC21x/IfxPort.h"
extern void IfxPort_setPinMode(Ifx_P *port, uint8 pinIndex, IfxPort_Mode mode);
# 349 "../30_Bsw/Common/TC21x/IfxPort.h"
extern void IfxPort_setPinPadDriver(Ifx_P *port, uint8 pinIndex, IfxPort_PadDriver padDriver);
# 373 "../30_Bsw/Common/TC21x/IfxPort.h"
static inline __attribute__ ((always_inline)) uint32 IfxPort_getGroupState(Ifx_P *port, uint8 pinIndex, uint16 mask);
# 392 "../30_Bsw/Common/TC21x/IfxPort.h"
static inline __attribute__ ((always_inline)) void IfxPort_setGroupState(Ifx_P *port, uint8 pinIndex, uint16 mask, uint16 data);
# 402 "../30_Bsw/Common/TC21x/IfxPort.h"
extern Ifx_P *IfxPort_getAddress(IfxPort_Index port);





extern IfxPort_Index IfxPort_getIndex(Ifx_P *port);
# 424 "../30_Bsw/Common/TC21x/IfxPort.h"
extern void IfxPort_setGroupModeInput(Ifx_P *port, uint8 pinIndex, uint16 mask, IfxPort_InputMode mode);
# 441 "../30_Bsw/Common/TC21x/IfxPort.h"
extern void IfxPort_setGroupModeOutput(Ifx_P *port, uint8 pinIndex, uint16 mask, IfxPort_OutputMode mode, IfxPort_OutputIdx index);
# 457 "../30_Bsw/Common/TC21x/IfxPort.h"
extern void IfxPort_setGroupPadDriver(Ifx_P *port, uint8 pinIndex, uint16 mask, IfxPort_PadDriver padDriver);
# 474 "../30_Bsw/Common/TC21x/IfxPort.h"
extern void IfxPort_resetESR(Ifx_P *port, uint8 pinIndex);
# 485 "../30_Bsw/Common/TC21x/IfxPort.h"
extern void IfxPort_setESR(Ifx_P *port, uint8 pinIndex);





static inline __attribute__ ((always_inline)) uint32 IfxPort_getGroupState(Ifx_P *port, uint8 pinIndex, uint16 mask)
{
    return (uint32)((port->IN.U) >> (pinIndex)) & mask;
}


static inline __attribute__ ((always_inline)) boolean IfxPort_getPinState(Ifx_P *port, uint8 pinIndex)
{
    return (((*(&port->IN.U) & (1U << (pinIndex))) != 0) != 0) ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxPort_setGroupState(Ifx_P *port, uint8 pinIndex, uint16 mask, uint16 data)
{
    port->OUT.U = (port->OUT.U & ~((uint32)(mask)) << pinIndex) | (data << pinIndex);
}


static inline __attribute__ ((always_inline)) void IfxPort_setPinHigh(Ifx_P *port, uint8 pinIndex)
{
    IfxPort_setPinState(port, pinIndex, IfxPort_State_high);
}


static inline __attribute__ ((always_inline)) void IfxPort_setPinLow(Ifx_P *port, uint8 pinIndex)
{
    IfxPort_setPinState(port, pinIndex, IfxPort_State_low);
}


static inline __attribute__ ((always_inline)) void IfxPort_setPinModeInput(Ifx_P *port, uint8 pinIndex, IfxPort_InputMode mode)
{
    IfxPort_setPinMode(port, pinIndex, (IfxPort_Mode)mode);
}


static inline __attribute__ ((always_inline)) void IfxPort_setPinModeOutput(Ifx_P *port, uint8 pinIndex, IfxPort_OutputMode mode, IfxPort_OutputIdx index)
{
    IfxPort_setPinMode(port, pinIndex, (IfxPort_Mode)(index | mode));
}


static inline __attribute__ ((always_inline)) void IfxPort_setPinState(Ifx_P *port, uint8 pinIndex, IfxPort_State action)
{
    port->OMR.U = action << pinIndex;
}


static inline __attribute__ ((always_inline)) void IfxPort_togglePin(Ifx_P *port, uint8 pinIndex)
{
    IfxPort_setPinState(port, pinIndex, IfxPort_State_toggled);
}
# 28 "../30_Bsw/Mpu/mpu_cfg.h" 2

# 1 "../30_Bsw/Common/TC21x/IfxCpu_bf.h" 1
# 30 "../30_Bsw/Mpu/mpu_cfg.h" 2
# 1 "../30_Bsw/Mpu/MPU_MemMap.h" 1
# 31 "../30_Bsw/Mpu/mpu_cfg.h" 2



extern unsigned int __PSPR_ASIL_RAMCODE_START[];
extern unsigned int __PSPR_ASIL_RAMCODE_END[];
extern unsigned int __DSPR_QM_VAR_START[];
extern unsigned int __DSPR_QM_VAR_END[];
extern unsigned int __DSPR_ASIL_VAR_START[];
extern unsigned int __DSPR_ASIL_VAR_END[];
extern unsigned int __DSPR_DEFAULT_VAR_START[];
extern unsigned int __DSPR_DEFAULT_VAR_END[];
extern unsigned int __DSPR_DEFAULT_FLASH_START[];
extern unsigned int __DSPR_DEFAULT_FLASH_END[];
extern unsigned int __START_PSPR[];
extern unsigned int __SIZE_PSPR[];
extern unsigned int __USTACK0_END[];
extern unsigned int __USTACK0[];
extern unsigned int __ISTACK0_END[];
extern unsigned int __ISTACK0[];
extern unsigned int __HEAP[];
extern unsigned int __HEAP_END[];
extern unsigned int __CSA0[];
extern unsigned int __CSA0_END[];
extern unsigned int __START_DSPR[];
extern unsigned int __SIZE_DSPR[];
extern unsigned int __LCF_PTAG_START[];
extern unsigned int __LCF_PTAG_SIZE[];
extern unsigned int __DSPR_QM_PMA_VAR_START[];
extern unsigned int __DSPR_QM_PMA_VAR_END[];
# 12 "../30_Bsw/Main/Main_api.h" 2
# 89 "../30_Bsw/Main/Main_api.h"
typedef enum {
 MAIN_E_HW_B0 = 0,
 MAIN_E_HW_B01_X10,
 MAIN_E_HW_B01_X10_DV,
 MAIN_E_HW_B02_X10,
 MAIN_E_HW_B02_X10_DV,
 MAIN_E_HW_C0,
 MAIN_E_HW_C0_DV,
 MAIN_E_HW_C1,
 MAIN_E_HW_C1_DV,
 MAIN_E_HW_C1_C01,
 MAIN_E_HW_C1_C01_DV,
 MAIN_E_HW_C1_C02,
 MAIN_E_HW_C1_C02_DV,
 MAIN_E_HW_C1_BAK13,
 MAIN_E_HW_C1_BAK14,
 MAIN_E_HW_Reserved
} MAIN_E_HW_VER;

typedef struct {
 u16 App;
 u16 Meas;
 u16 Ctrl;
 u16 Pwm;
 u16 Diag;
 u16 Ntc;
 u16 State;
 u16 Safety;
} MAIN_E_HW_VER_APP;

typedef struct {
 u16 Code[4];
 u16 CodeNum;
 u16 VerName;
 MAIN_E_HW_VER Ver;
 MAIN_E_HW_VER_APP App;
} MAIN_S_HW_VER;

typedef struct {
 u16 Year;
    u16 Month;
    u16 Day;
    u16 Hour;
    u16 Min;
    u16 Sec;
} MAIN_S_BUILD_INFO;


extern MAIN_S_HW_VER Main_HwVer;
extern HSFBAPP_S_STATUS Isr_AppStatus;
extern bit SafetyError[4];
extern bit DebugError[4];
extern u16 Main_DebugErrCode;
extern bit Main_InitFin;


extern void delay_us_main(u32 time);
extern void delay_ms_main(u32 time);
extern u32 Main_GetBuildDate(void);
extern u32 Main_GetBuildTime(void);
extern u32 Main_GetSwVersion(void);
extern void Main_GetBuildInfo(MAIN_S_BUILD_INFO* BuildInfo);
extern void Main_GetHwVer(MAIN_S_HW_VER* HwVer);
extern void Main_GetHwVerApp();
extern u32 Main_UdsGetHwVer(void);
# 24 "../30_Bsw/Mcal/Port/Port.c" 2
# 1 "../30_Bsw/Mcal/Adc/Adc_api.h" 1






# 1 "../30_Bsw/Mcal/Gtm/Gtm_api.h" 1






# 1 "../30_Bsw/Mcal/Gtm/Gtm_cfg.h" 1
# 24 "../30_Bsw/Mcal/Gtm/Gtm_cfg.h"
# 1 "../30_Bsw/Common/TC21x/IfxGtm_reg.h" 1
# 36 "../30_Bsw/Common/TC21x/IfxGtm_reg.h"
# 1 "../30_Bsw/Common/TC21x/IfxGtm_regdef.h" 1
# 45 "../30_Bsw/Common/TC21x/IfxGtm_regdef.h"
typedef struct _Ifx_GTM_ACCEN0_Bits
{
    volatile unsigned int EN0 : 1;
    volatile unsigned int EN1 : 1;
    volatile unsigned int EN2 : 1;
    volatile unsigned int EN3 : 1;
    volatile unsigned int EN4 : 1;
    volatile unsigned int EN5 : 1;
    volatile unsigned int EN6 : 1;
    volatile unsigned int EN7 : 1;
    volatile unsigned int EN8 : 1;
    volatile unsigned int EN9 : 1;
    volatile unsigned int EN10 : 1;
    volatile unsigned int EN11 : 1;
    volatile unsigned int EN12 : 1;
    volatile unsigned int EN13 : 1;
    volatile unsigned int EN14 : 1;
    volatile unsigned int EN15 : 1;
    volatile unsigned int EN16 : 1;
    volatile unsigned int EN17 : 1;
    volatile unsigned int EN18 : 1;
    volatile unsigned int EN19 : 1;
    volatile unsigned int EN20 : 1;
    volatile unsigned int EN21 : 1;
    volatile unsigned int EN22 : 1;
    volatile unsigned int EN23 : 1;
    volatile unsigned int EN24 : 1;
    volatile unsigned int EN25 : 1;
    volatile unsigned int EN26 : 1;
    volatile unsigned int EN27 : 1;
    volatile unsigned int EN28 : 1;
    volatile unsigned int EN29 : 1;
    volatile unsigned int EN30 : 1;
    volatile unsigned int EN31 : 1;
} Ifx_GTM_ACCEN0_Bits;


typedef struct _Ifx_GTM_ACCEN1_Bits
{
    volatile unsigned int reserved_0 : 32;
} Ifx_GTM_ACCEN1_Bits;


typedef struct _Ifx_GTM_ADCTRIG0OUT0_Bits
{
    volatile unsigned int SEL0 : 4;
    volatile unsigned int SEL1 : 4;
    volatile unsigned int SEL2 : 4;
    volatile unsigned int SEL3 : 4;
    volatile unsigned int reserved_16 : 16;
} Ifx_GTM_ADCTRIG0OUT0_Bits;


typedef struct _Ifx_GTM_ADCTRIG1OUT0_Bits
{
    volatile unsigned int SEL0 : 4;
    volatile unsigned int SEL1 : 4;
    volatile unsigned int SEL2 : 4;
    volatile unsigned int SEL3 : 4;
    volatile unsigned int reserved_16 : 16;
} Ifx_GTM_ADCTRIG1OUT0_Bits;


typedef struct _Ifx_GTM_AEI_ADDR_XPT_Bits
{
    volatile unsigned int TO_ADDR : 20;
    volatile unsigned int TO_W1R0 : 1;
    volatile unsigned int reserved_21 : 11;
} Ifx_GTM_AEI_ADDR_XPT_Bits;


typedef struct _Ifx_GTM_BRIDGE_MODE_Bits
{
    volatile unsigned int BRG_MODE : 1;
    volatile unsigned int MSK_WR_RSP : 1;
    volatile unsigned int reserved_2 : 6;
    volatile unsigned int MODE_UP_PGR : 1;
    volatile unsigned int BUFF_OVL : 1;
    volatile unsigned int reserved_10 : 2;
    volatile unsigned int SYNC_INPUT_REG : 1;
    volatile unsigned int reserved_13 : 3;
    volatile unsigned int BRG_RST : 1;
    volatile unsigned int reserved_17 : 7;
    volatile unsigned int BUFF_DPT : 8;
} Ifx_GTM_BRIDGE_MODE_Bits;


typedef struct _Ifx_GTM_BRIDGE_PTR1_Bits
{
    volatile unsigned int NEW_TRAN_PTR : 5;
    volatile unsigned int FIRST_RSP_PTR : 5;
    volatile unsigned int TRAN_IN_PGR : 5;
    volatile unsigned int ABT_TRAN_PGR : 5;
    volatile unsigned int FBC : 6;
    volatile unsigned int RSP_TRAN_RDY : 6;
} Ifx_GTM_BRIDGE_PTR1_Bits;


typedef struct _Ifx_GTM_BRIDGE_PTR2_Bits
{
    volatile unsigned int TRAN_IN_PGR2 : 5;
    volatile unsigned int reserved_5 : 27;
} Ifx_GTM_BRIDGE_PTR2_Bits;


typedef struct _Ifx_GTM_CLC_Bits
{
    volatile unsigned int DISR : 1;
    volatile unsigned int DISS : 1;
    volatile unsigned int reserved_2 : 1;
    volatile unsigned int EDIS : 1;
    volatile unsigned int reserved_4 : 28;
} Ifx_GTM_CLC_Bits;


typedef struct _Ifx_GTM_CMU_CLK0_5_CTRL_Bits
{
    volatile unsigned int CLK_CNT : 24;
    volatile unsigned int reserved_24 : 8;
} Ifx_GTM_CMU_CLK0_5_CTRL_Bits;


typedef struct _Ifx_GTM_CMU_CLK_6_CTRL_Bits
{
    volatile unsigned int CLK_CNT : 24;
    volatile unsigned int CLK6_SEL : 1;
    volatile unsigned int reserved_25 : 7;
} Ifx_GTM_CMU_CLK_6_CTRL_Bits;


typedef struct _Ifx_GTM_CMU_CLK_7_CTRL_Bits
{
    volatile unsigned int CLK_CNT : 24;
    volatile unsigned int CLK7_SEL : 1;
    volatile unsigned int reserved_25 : 7;
} Ifx_GTM_CMU_CLK_7_CTRL_Bits;


typedef struct _Ifx_GTM_CMU_CLK_EN_Bits
{
    volatile unsigned int EN_CLK0 : 2;
    volatile unsigned int EN_CLK1 : 2;
    volatile unsigned int EN_CLK2 : 2;
    volatile unsigned int EN_CLK3 : 2;
    volatile unsigned int EN_CLK4 : 2;
    volatile unsigned int EN_CLK5 : 2;
    volatile unsigned int EN_CLK6 : 2;
    volatile unsigned int EN_CLK7 : 2;
    volatile unsigned int EN_ECLK0 : 2;
    volatile unsigned int EN_ECLK1 : 2;
    volatile unsigned int EN_ECLK2 : 2;
    volatile unsigned int EN_FXCLK : 2;
    volatile unsigned int reserved_24 : 8;
} Ifx_GTM_CMU_CLK_EN_Bits;


typedef struct _Ifx_GTM_CMU_ECLK_DEN_Bits
{
    volatile unsigned int ECLK_DEN : 24;
    volatile unsigned int reserved_24 : 8;
} Ifx_GTM_CMU_ECLK_DEN_Bits;


typedef struct _Ifx_GTM_CMU_ECLK_NUM_Bits
{
    volatile unsigned int ECLK_NUM : 24;
    volatile unsigned int reserved_24 : 8;
} Ifx_GTM_CMU_ECLK_NUM_Bits;


typedef struct _Ifx_GTM_CMU_FXCLK_CTRL_Bits
{
    volatile unsigned int FXCLK_SEL : 4;
    volatile unsigned int reserved_4 : 28;
} Ifx_GTM_CMU_FXCLK_CTRL_Bits;


typedef struct _Ifx_GTM_CMU_GCLK_DEN_Bits
{
    volatile unsigned int GCLK_DEN : 24;
    volatile unsigned int reserved_24 : 8;
} Ifx_GTM_CMU_GCLK_DEN_Bits;


typedef struct _Ifx_GTM_CMU_GCLK_NUM_Bits
{
    volatile unsigned int GCLK_NUM : 24;
    volatile unsigned int reserved_24 : 8;
} Ifx_GTM_CMU_GCLK_NUM_Bits;


typedef struct _Ifx_GTM_CTRL_Bits
{
    volatile unsigned int RF_PROT : 1;
    volatile unsigned int TO_MODE : 1;
    volatile unsigned int reserved_2 : 2;
    volatile unsigned int TO_VAL : 5;
    volatile unsigned int reserved_9 : 23;
} Ifx_GTM_CTRL_Bits;


typedef struct _Ifx_GTM_DTM_CH_CTRL1_Bits
{
    volatile unsigned int O1SEL_0 : 1;
    volatile unsigned int reserved_1 : 2;
    volatile unsigned int SWAP_0 : 1;
    volatile unsigned int O1F_0 : 2;
    volatile unsigned int reserved_6 : 2;
    volatile unsigned int O1SEL_1 : 1;
    volatile unsigned int I1SEL_1 : 1;
    volatile unsigned int SH_EN_1 : 1;
    volatile unsigned int SWAP_1 : 1;
    volatile unsigned int O1F_1 : 2;
    volatile unsigned int reserved_14 : 2;
    volatile unsigned int O1SEL_2 : 1;
    volatile unsigned int I1SEL_2 : 1;
    volatile unsigned int SH_EN_2 : 1;
    volatile unsigned int SWAP_2 : 1;
    volatile unsigned int O1F_2 : 2;
    volatile unsigned int reserved_22 : 2;
    volatile unsigned int O1SEL_3 : 1;
    volatile unsigned int I1SEL_3 : 1;
    volatile unsigned int SH_EN_3 : 1;
    volatile unsigned int SWAP_3 : 1;
    volatile unsigned int O1F_3 : 2;
    volatile unsigned int reserved_30 : 2;
} Ifx_GTM_DTM_CH_CTRL1_Bits;


typedef struct _Ifx_GTM_DTM_CH_CTRL2_Bits
{
    volatile unsigned int POL0_0 : 1;
    volatile unsigned int OC0_0 : 1;
    volatile unsigned int SL0_0 : 1;
    volatile unsigned int DT0_0 : 1;
    volatile unsigned int POL1_0 : 1;
    volatile unsigned int OC1_0 : 1;
    volatile unsigned int SL1_0 : 1;
    volatile unsigned int DT1_0 : 1;
    volatile unsigned int POL0_1 : 1;
    volatile unsigned int OC0_1 : 1;
    volatile unsigned int SL0_1 : 1;
    volatile unsigned int DT0_1 : 1;
    volatile unsigned int POL1_1 : 1;
    volatile unsigned int OC1_1 : 1;
    volatile unsigned int SL1_1 : 1;
    volatile unsigned int DT1_1 : 1;
    volatile unsigned int POL0_2 : 1;
    volatile unsigned int OC0_2 : 1;
    volatile unsigned int SL0_2 : 1;
    volatile unsigned int DT0_2 : 1;
    volatile unsigned int POL1_2 : 1;
    volatile unsigned int OC1_2 : 1;
    volatile unsigned int SL1_2 : 1;
    volatile unsigned int DT1_2 : 1;
    volatile unsigned int POL0_3 : 1;
    volatile unsigned int OC0_3 : 1;
    volatile unsigned int SL0_3 : 1;
    volatile unsigned int DT0_3 : 1;
    volatile unsigned int POL1_3 : 1;
    volatile unsigned int OC1_3 : 1;
    volatile unsigned int SL1_3 : 1;
    volatile unsigned int DT1_3 : 1;
} Ifx_GTM_DTM_CH_CTRL2_Bits;


typedef struct _Ifx_GTM_DTM_CH_CTRL2_SR_Bits
{
    volatile unsigned int POL0_0_SR : 1;
    volatile unsigned int OC0_0_SR : 1;
    volatile unsigned int SL0_0_SR : 1;
    volatile unsigned int DT0_0_SR : 1;
    volatile unsigned int POL1_0_SR : 1;
    volatile unsigned int OC1_0_SR : 1;
    volatile unsigned int SL1_0_SR : 1;
    volatile unsigned int DT1_0_SR : 1;
    volatile unsigned int POL0_1_SR : 1;
    volatile unsigned int OC0_1_SR : 1;
    volatile unsigned int SL0_1_SR : 1;
    volatile unsigned int DT0_1_SR : 1;
    volatile unsigned int POL1_1_SR : 1;
    volatile unsigned int OC1_1_SR : 1;
    volatile unsigned int SL1_1_SR : 1;
    volatile unsigned int DT1_1_SR : 1;
    volatile unsigned int POL0_2_SR : 1;
    volatile unsigned int OC0_2_SR : 1;
    volatile unsigned int SL0_2_SR : 1;
    volatile unsigned int DT0_2_SR : 1;
    volatile unsigned int POL1_2_SR : 1;
    volatile unsigned int OC1_2_SR : 1;
    volatile unsigned int SL1_2_SR : 1;
    volatile unsigned int DT1_2_SR : 1;
    volatile unsigned int POL0_3_SR : 1;
    volatile unsigned int OC0_3_SR : 1;
    volatile unsigned int SL0_3_SR : 1;
    volatile unsigned int DT0_3_SR : 1;
    volatile unsigned int POL1_3_SR : 1;
    volatile unsigned int OC1_3_SR : 1;
    volatile unsigned int SL1_3_SR : 1;
    volatile unsigned int DT1_3_SR : 1;
} Ifx_GTM_DTM_CH_CTRL2_SR_Bits;


typedef struct _Ifx_GTM_DTM_CTRL_Bits
{
    volatile unsigned int CLK_SEL : 2;
    volatile unsigned int reserved_2 : 2;
    volatile unsigned int UPD_MODE : 3;
    volatile unsigned int reserved_7 : 25;
} Ifx_GTM_DTM_CTRL_Bits;


typedef struct _Ifx_GTM_DTM_DTV_CH_Bits
{
    volatile unsigned int RELRISE : 10;
    volatile unsigned int reserved_10 : 6;
    volatile unsigned int RELFALL : 10;
    volatile unsigned int reserved_26 : 6;
} Ifx_GTM_DTM_DTV_CH_Bits;


typedef struct _Ifx_GTM_DTM_PS_CTRL_Bits
{
    volatile unsigned int RELBLK : 10;
    volatile unsigned int reserved_10 : 6;
    volatile unsigned int PSU_IN_SEL : 1;
    volatile unsigned int IN_POL : 1;
    volatile unsigned int reserved_18 : 2;
    volatile unsigned int SHIFT_SEL : 2;
    volatile unsigned int reserved_22 : 10;
} Ifx_GTM_DTM_PS_CTRL_Bits;


typedef struct _Ifx_GTM_EIRQ_EN_Bits
{
    volatile unsigned int AEI_TO_XPT_EIRQ_EN : 1;
    volatile unsigned int AEI_USP_ADDR_EIRQ_EN : 1;
    volatile unsigned int AEI_IM_ADDR_EIRQ_EN : 1;
    volatile unsigned int AEI_USP_BE_EIRQ_EN : 1;
    volatile unsigned int reserved_4 : 28;
} Ifx_GTM_EIRQ_EN_Bits;


typedef struct _Ifx_GTM_HW_CONF_Bits
{
    volatile unsigned int GRSTEN : 1;
    volatile unsigned int BRIDGE_MODE_RST : 1;
    volatile unsigned int AEI_IN : 1;
    volatile unsigned int reserved_3 : 5;
    volatile unsigned int TOM_OUT_RST : 1;
    volatile unsigned int TOM_TRIG_CHAIN : 3;
    volatile unsigned int reserved_12 : 4;
    volatile unsigned int IRQ_MODE_LEVEL : 1;
    volatile unsigned int IRQ_MODE_PULSE : 1;
    volatile unsigned int IRQ_MODE_PULSE_NOTIFY : 1;
    volatile unsigned int IRQ_MODE_SINGLE_PULSE : 1;
    volatile unsigned int reserved_20 : 12;
} Ifx_GTM_HW_CONF_Bits;


typedef struct _Ifx_GTM_ICM_IRQG_0_Bits
{
    volatile unsigned int reserved_0 : 4;
    volatile unsigned int AEI_IRQ : 1;
    volatile unsigned int reserved_5 : 27;
} Ifx_GTM_ICM_IRQG_0_Bits;


typedef struct _Ifx_GTM_ICM_IRQG_2_Bits
{
    volatile unsigned int TIM0_CH0_IRQ : 1;
    volatile unsigned int TIM0_CH1_IRQ : 1;
    volatile unsigned int TIM0_CH2_IRQ : 1;
    volatile unsigned int TIM0_CH3_IRQ : 1;
    volatile unsigned int TIM0_CH4_IRQ : 1;
    volatile unsigned int TIM0_CH5_IRQ : 1;
    volatile unsigned int TIM0_CH6_IRQ : 1;
    volatile unsigned int TIM0_CH7_IRQ : 1;
    volatile unsigned int reserved_8 : 24;
} Ifx_GTM_ICM_IRQG_2_Bits;


typedef struct _Ifx_GTM_ICM_IRQG_6_Bits
{
    volatile unsigned int TOM0_CH0_IRQ : 1;
    volatile unsigned int TOM0_CH1_IRQ : 1;
    volatile unsigned int TOM0_CH2_IRQ : 1;
    volatile unsigned int TOM0_CH3_IRQ : 1;
    volatile unsigned int TOM0_CH4_IRQ : 1;
    volatile unsigned int TOM0_CH5_IRQ : 1;
    volatile unsigned int TOM0_CH6_IRQ : 1;
    volatile unsigned int TOM0_CH7_IRQ : 1;
    volatile unsigned int TOM0_CH8_IRQ : 1;
    volatile unsigned int TOM0_CH9_IRQ : 1;
    volatile unsigned int TOM0_CH10_IRQ : 1;
    volatile unsigned int TOM0_CH11_IRQ : 1;
    volatile unsigned int TOM0_CH12_IRQ : 1;
    volatile unsigned int TOM0_CH13_IRQ : 1;
    volatile unsigned int TOM0_CH14_IRQ : 1;
    volatile unsigned int TOM0_CH15_IRQ : 1;
    volatile unsigned int TOM1_CH0_IRQ : 1;
    volatile unsigned int TOM1_CH1_IRQ : 1;
    volatile unsigned int TOM1_CH2_IRQ : 1;
    volatile unsigned int TOM1_CH3_IRQ : 1;
    volatile unsigned int TOM1_CH4_IRQ : 1;
    volatile unsigned int TOM1_CH5_IRQ : 1;
    volatile unsigned int TOM1_CH6_IRQ : 1;
    volatile unsigned int TOM1_CH7_IRQ : 1;
    volatile unsigned int TOM1_CH8_IRQ : 1;
    volatile unsigned int TOM1_CH9_IRQ : 1;
    volatile unsigned int TOM1_CH10_IRQ : 1;
    volatile unsigned int TOM1_CH11_IRQ : 1;
    volatile unsigned int TOM1_CH12_IRQ : 1;
    volatile unsigned int TOM1_CH13_IRQ : 1;
    volatile unsigned int TOM1_CH14_IRQ : 1;
    volatile unsigned int TOM1_CH15_IRQ : 1;
} Ifx_GTM_ICM_IRQG_6_Bits;


typedef struct _Ifx_GTM_ICM_IRQG_CEI1_Bits
{
    volatile unsigned int TIM0_CH0_EIRQ : 1;
    volatile unsigned int TIM0_CH1_EIRQ : 1;
    volatile unsigned int TIM0_CH2_EIRQ : 1;
    volatile unsigned int TIM0_CH3_EIRQ : 1;
    volatile unsigned int TIM0_CH4_EIRQ : 1;
    volatile unsigned int TIM0_CH5_EIRQ : 1;
    volatile unsigned int TIM0_CH6_EIRQ : 1;
    volatile unsigned int TIM0_CH7_EIRQ : 1;
    volatile unsigned int reserved_8 : 24;
} Ifx_GTM_ICM_IRQG_CEI1_Bits;


typedef struct _Ifx_GTM_ICM_IRQG_MEI_Bits
{
    volatile unsigned int GTM_EIRQ : 1;
    volatile unsigned int reserved_1 : 3;
    volatile unsigned int TIM0_EIRQ : 1;
    volatile unsigned int reserved_5 : 27;
} Ifx_GTM_ICM_IRQG_MEI_Bits;


typedef struct _Ifx_GTM_INOUTSEL_CAN_OUTSEL_Bits
{
    volatile unsigned int SEL0 : 4;
    volatile unsigned int SEL1 : 4;
    volatile unsigned int SEL2 : 4;
    volatile unsigned int SEL3 : 4;
    volatile unsigned int reserved_16 : 16;
} Ifx_GTM_INOUTSEL_CAN_OUTSEL_Bits;


typedef struct _Ifx_GTM_INOUTSEL_T_OUTSEL_Bits
{
    volatile unsigned int SEL0 : 2;
    volatile unsigned int SEL1 : 2;
    volatile unsigned int SEL2 : 2;
    volatile unsigned int SEL3 : 2;
    volatile unsigned int SEL4 : 2;
    volatile unsigned int SEL5 : 2;
    volatile unsigned int SEL6 : 2;
    volatile unsigned int SEL7 : 2;
    volatile unsigned int SEL8 : 2;
    volatile unsigned int SEL9 : 2;
    volatile unsigned int SEL10 : 2;
    volatile unsigned int SEL11 : 2;
    volatile unsigned int SEL12 : 2;
    volatile unsigned int SEL13 : 2;
    volatile unsigned int SEL14 : 2;
    volatile unsigned int SEL15 : 2;
} Ifx_GTM_INOUTSEL_T_OUTSEL_Bits;


typedef struct _Ifx_GTM_INOUTSEL_TIM_INSEL_Bits
{
    volatile unsigned int CH0SEL : 4;
    volatile unsigned int CH1SEL : 4;
    volatile unsigned int CH2SEL : 4;
    volatile unsigned int CH3SEL : 4;
    volatile unsigned int CH4SEL : 4;
    volatile unsigned int CH5SEL : 4;
    volatile unsigned int CH6SEL : 4;
    volatile unsigned int CH7SEL : 4;
} Ifx_GTM_INOUTSEL_TIM_INSEL_Bits;


typedef struct _Ifx_GTM_IRQ_EN_Bits
{
    volatile unsigned int AEI_TO_XPT_IRQ_EN : 1;
    volatile unsigned int AEI_USP_ADDR_IRQ_EN : 1;
    volatile unsigned int AEI_IM_ADDR_IRQ_EN : 1;
    volatile unsigned int AEI_USP_BE_IRQ_EN : 1;
    volatile unsigned int reserved_4 : 28;
} Ifx_GTM_IRQ_EN_Bits;


typedef struct _Ifx_GTM_IRQ_FORCINT_Bits
{
    volatile unsigned int TRG_AEI_TO_XPT : 1;
    volatile unsigned int TRG_AEI_USP_ADDR : 1;
    volatile unsigned int TRG_AEI_IM_ADDR : 1;
    volatile unsigned int TRG_AEI_USP_BE : 1;
    volatile unsigned int reserved_4 : 28;
} Ifx_GTM_IRQ_FORCINT_Bits;


typedef struct _Ifx_GTM_IRQ_MODE_Bits
{
    volatile unsigned int IRQ_MODE : 2;
    volatile unsigned int reserved_2 : 30;
} Ifx_GTM_IRQ_MODE_Bits;


typedef struct _Ifx_GTM_IRQ_NOTIFY_Bits
{
    volatile unsigned int AEI_TO_XPT : 1;
    volatile unsigned int AEI_USP_ADDR : 1;
    volatile unsigned int AEI_IM_ADDR : 1;
    volatile unsigned int AEI_USP_BE : 1;
    volatile unsigned int reserved_4 : 28;
} Ifx_GTM_IRQ_NOTIFY_Bits;


typedef struct _Ifx_GTM_KRST0_Bits
{
    volatile unsigned int RST : 1;
    volatile unsigned int RSTSTAT : 1;
    volatile unsigned int reserved_2 : 30;
} Ifx_GTM_KRST0_Bits;


typedef struct _Ifx_GTM_KRST1_Bits
{
    volatile unsigned int RST : 1;
    volatile unsigned int reserved_1 : 31;
} Ifx_GTM_KRST1_Bits;


typedef struct _Ifx_GTM_KRSTCLR_Bits
{
    volatile unsigned int CLR : 1;
    volatile unsigned int reserved_1 : 31;
} Ifx_GTM_KRSTCLR_Bits;


typedef struct _Ifx_GTM_OCS_Bits
{
    volatile unsigned int reserved_0 : 24;
    volatile unsigned int SUS : 4;
    volatile unsigned int SUS_P : 1;
    volatile unsigned int SUSSTA : 1;
    volatile unsigned int reserved_30 : 2;
} Ifx_GTM_OCS_Bits;


typedef struct _Ifx_GTM_ODA_Bits
{
    volatile unsigned int DDREN : 1;
    volatile unsigned int DREN : 1;
    volatile unsigned int reserved_2 : 30;
} Ifx_GTM_ODA_Bits;


typedef struct _Ifx_GTM_OTBU0T_Bits
{
    volatile unsigned int CV : 27;
    volatile unsigned int reserved_27 : 1;
    volatile unsigned int CM : 2;
    volatile unsigned int reserved_30 : 2;
} Ifx_GTM_OTBU0T_Bits;


typedef struct _Ifx_GTM_OTBU1T_Bits
{
    volatile unsigned int CV : 24;
    volatile unsigned int reserved_24 : 4;
    volatile unsigned int EN : 1;
    volatile unsigned int reserved_29 : 3;
} Ifx_GTM_OTBU1T_Bits;


typedef struct _Ifx_GTM_OTBU2T_Bits
{
    volatile unsigned int CV : 24;
    volatile unsigned int reserved_24 : 4;
    volatile unsigned int EN : 1;
    volatile unsigned int reserved_29 : 3;
} Ifx_GTM_OTBU2T_Bits;


typedef struct _Ifx_GTM_OTSC0_Bits
{
    volatile unsigned int B0LMT : 3;
    volatile unsigned int reserved_3 : 1;
    volatile unsigned int B0LMI : 4;
    volatile unsigned int B0HMT : 3;
    volatile unsigned int reserved_11 : 1;
    volatile unsigned int B0HMI : 4;
    volatile unsigned int B1LMT : 3;
    volatile unsigned int reserved_19 : 1;
    volatile unsigned int B1LMI : 4;
    volatile unsigned int B1HMT : 3;
    volatile unsigned int reserved_27 : 1;
    volatile unsigned int B1HMI : 4;
} Ifx_GTM_OTSC0_Bits;


typedef struct _Ifx_GTM_OTSS_Bits
{
    volatile unsigned int OTGB0 : 4;
    volatile unsigned int reserved_4 : 4;
    volatile unsigned int OTGB1 : 4;
    volatile unsigned int reserved_12 : 4;
    volatile unsigned int OTGB2 : 4;
    volatile unsigned int reserved_20 : 12;
} Ifx_GTM_OTSS_Bits;


typedef struct _Ifx_GTM_REV_Bits
{
    volatile unsigned int STEP : 8;
    volatile unsigned int NO : 4;
    volatile unsigned int MINOR : 4;
    volatile unsigned int MAJOR : 4;
    volatile unsigned int DEV_CODE0 : 4;
    volatile unsigned int DEV_CODE1 : 4;
    volatile unsigned int DEV_CODE2 : 4;
} Ifx_GTM_REV_Bits;


typedef struct _Ifx_GTM_RST_Bits
{
    volatile unsigned int RST : 1;
    volatile unsigned int reserved_1 : 31;
} Ifx_GTM_RST_Bits;


typedef struct _Ifx_GTM_TBU_CH0_BASE_Bits
{
    volatile unsigned int BASE : 27;
    volatile unsigned int reserved_27 : 5;
} Ifx_GTM_TBU_CH0_BASE_Bits;


typedef struct _Ifx_GTM_TBU_CH0_CTRL_Bits
{
    volatile unsigned int LOW_RES : 1;
    volatile unsigned int CH_CLK_SRC : 3;
    volatile unsigned int reserved_4 : 28;
} Ifx_GTM_TBU_CH0_CTRL_Bits;


typedef struct _Ifx_GTM_TBU_CH1_BASE_Bits
{
    volatile unsigned int BASE : 24;
    volatile unsigned int reserved_24 : 8;
} Ifx_GTM_TBU_CH1_BASE_Bits;


typedef struct _Ifx_GTM_TBU_CH1_CTRL_Bits
{
    volatile unsigned int CH_MODE : 1;
    volatile unsigned int CH_CLK_SRC : 3;
    volatile unsigned int reserved_4 : 28;
} Ifx_GTM_TBU_CH1_CTRL_Bits;


typedef struct _Ifx_GTM_TBU_CH2_BASE_Bits
{
    volatile unsigned int BASE : 24;
    volatile unsigned int reserved_24 : 8;
} Ifx_GTM_TBU_CH2_BASE_Bits;


typedef struct _Ifx_GTM_TBU_CH2_CTRL_Bits
{
    volatile unsigned int CH_MODE : 1;
    volatile unsigned int CH_CLK_SRC : 3;
    volatile unsigned int reserved_4 : 28;
} Ifx_GTM_TBU_CH2_CTRL_Bits;


typedef struct _Ifx_GTM_TBU_CHEN_Bits
{
    volatile unsigned int ENDIS_CH0 : 2;
    volatile unsigned int ENDIS_CH1 : 2;
    volatile unsigned int ENDIS_CH2 : 2;
    volatile unsigned int reserved_6 : 26;
} Ifx_GTM_TBU_CHEN_Bits;


typedef struct _Ifx_GTM_TIM_AUX_IN_SRC_Bits
{
    volatile unsigned int SRC_CH0 : 1;
    volatile unsigned int SRC_CH1 : 1;
    volatile unsigned int SRC_CH2 : 1;
    volatile unsigned int SRC_CH3 : 1;
    volatile unsigned int SRC_CH4 : 1;
    volatile unsigned int SRC_CH5 : 1;
    volatile unsigned int SRC_CH6 : 1;
    volatile unsigned int SRC_CH7 : 1;
    volatile unsigned int reserved_8 : 24;
} Ifx_GTM_TIM_AUX_IN_SRC_Bits;


typedef struct _Ifx_GTM_TIM_CH_CNT_Bits
{
    volatile unsigned int CNT : 24;
    volatile unsigned int reserved_24 : 8;
} Ifx_GTM_TIM_CH_CNT_Bits;


typedef struct _Ifx_GTM_TIM_CH_CNTS_Bits
{
    volatile unsigned int CNTS : 24;
    volatile unsigned int ECNT : 8;
} Ifx_GTM_TIM_CH_CNTS_Bits;


typedef struct _Ifx_GTM_TIM_CH_CTRL_Bits
{
    volatile unsigned int TIM_EN : 1;
    volatile unsigned int TIM_MODE : 3;
    volatile unsigned int OSM : 1;
    volatile unsigned int reserved_5 : 1;
    volatile unsigned int CICTRL : 1;
    volatile unsigned int TBU0x_SEL : 1;
    volatile unsigned int GPR0_SEL : 2;
    volatile unsigned int GPR1_SEL : 2;
    volatile unsigned int CNTS_SEL : 1;
    volatile unsigned int DSL : 1;
    volatile unsigned int ISL : 1;
    volatile unsigned int ECNT_RESET : 1;
    volatile unsigned int FLT_EN : 1;
    volatile unsigned int FLT_CNT_FRQ : 2;
    volatile unsigned int EXT_CAP_EN : 1;
    volatile unsigned int FLT_MODE_RE : 1;
    volatile unsigned int FLT_CTR_RE : 1;
    volatile unsigned int FLT_MODE_FE : 1;
    volatile unsigned int FLT_CTR_FE : 1;
    volatile unsigned int CLK_SEL : 3;
    volatile unsigned int FR_ECNT_OFL : 1;
    volatile unsigned int EGPR0_SEL : 1;
    volatile unsigned int EGPR1_SEL : 1;
    volatile unsigned int TOCTRL : 2;
} Ifx_GTM_TIM_CH_CTRL_Bits;


typedef struct _Ifx_GTM_TIM_CH_ECNT_Bits
{
    volatile unsigned int ECNT : 16;
    volatile unsigned int reserved_16 : 16;
} Ifx_GTM_TIM_CH_ECNT_Bits;


typedef struct _Ifx_GTM_TIM_CH_ECTRL_Bits
{
    volatile unsigned int EXT_CAP_SRC : 3;
    volatile unsigned int reserved_3 : 29;
} Ifx_GTM_TIM_CH_ECTRL_Bits;


typedef struct _Ifx_GTM_TIM_CH_EIRQ_EN_Bits
{
    volatile unsigned int NEWVAL_EIRQ_EN : 1;
    volatile unsigned int ECNTOFL_EIRQ_EN : 1;
    volatile unsigned int CNTOFL_EIRQ_EN : 1;
    volatile unsigned int GPRzOFL_EIRQ_EN : 1;
    volatile unsigned int TODET_EIRQ_EN : 1;
    volatile unsigned int GLITCHDET_EIRQ_EN : 1;
    volatile unsigned int reserved_6 : 26;
} Ifx_GTM_TIM_CH_EIRQ_EN_Bits;


typedef struct _Ifx_GTM_TIM_CH_FLT_FE_Bits
{
    volatile unsigned int FLT_FE : 24;
    volatile unsigned int reserved_24 : 8;
} Ifx_GTM_TIM_CH_FLT_FE_Bits;


typedef struct _Ifx_GTM_TIM_CH_FLT_RE_Bits
{
    volatile unsigned int FLT_RE : 24;
    volatile unsigned int reserved_24 : 8;
} Ifx_GTM_TIM_CH_FLT_RE_Bits;


typedef struct _Ifx_GTM_TIM_CH_GPR0_Bits
{
    volatile unsigned int GPR0 : 24;
    volatile unsigned int ECNT : 8;
} Ifx_GTM_TIM_CH_GPR0_Bits;


typedef struct _Ifx_GTM_TIM_CH_GPR1_Bits
{
    volatile unsigned int GPR1 : 24;
    volatile unsigned int ECNT : 8;
} Ifx_GTM_TIM_CH_GPR1_Bits;


typedef struct _Ifx_GTM_TIM_CH_IRQ_EN_Bits
{
    volatile unsigned int NEWVAL_IRQ_EN : 1;
    volatile unsigned int ECNTOFL_IRQ_EN : 1;
    volatile unsigned int CNTOFL_IRQ_EN : 1;
    volatile unsigned int GPRzOFL_IRQ_EN : 1;
    volatile unsigned int TODET_IRQ_EN : 1;
    volatile unsigned int GLITCHDET_IRQ_EN : 1;
    volatile unsigned int reserved_6 : 26;
} Ifx_GTM_TIM_CH_IRQ_EN_Bits;


typedef struct _Ifx_GTM_TIM_CH_IRQ_FORCINT_Bits
{
    volatile unsigned int TRG_NEWVAL : 1;
    volatile unsigned int TRG_ECNTOFL : 1;
    volatile unsigned int TRG_CNTOFL : 1;
    volatile unsigned int TRG_GPRzOFL : 1;
    volatile unsigned int TRG_TODET : 1;
    volatile unsigned int TRG_GLITCHDET : 1;
    volatile unsigned int reserved_6 : 26;
} Ifx_GTM_TIM_CH_IRQ_FORCINT_Bits;


typedef struct _Ifx_GTM_TIM_CH_IRQ_MODE_Bits
{
    volatile unsigned int IRQ_MODE : 2;
    volatile unsigned int reserved_2 : 30;
} Ifx_GTM_TIM_CH_IRQ_MODE_Bits;


typedef struct _Ifx_GTM_TIM_CH_IRQ_NOTIFY_Bits
{
    volatile unsigned int NEWVAL : 1;
    volatile unsigned int ECNTOFL : 1;
    volatile unsigned int CNTOFL : 1;
    volatile unsigned int GPRzOFL : 1;
    volatile unsigned int TODET : 1;
    volatile unsigned int GLITCHDET : 1;
    volatile unsigned int reserved_6 : 26;
} Ifx_GTM_TIM_CH_IRQ_NOTIFY_Bits;


typedef struct _Ifx_GTM_TIM_CH_TDUC_Bits
{
    volatile unsigned int TO_CNT : 8;
    volatile unsigned int reserved_8 : 24;
} Ifx_GTM_TIM_CH_TDUC_Bits;


typedef struct _Ifx_GTM_TIM_CH_TDUV_Bits
{
    volatile unsigned int TOV : 8;
    volatile unsigned int reserved_8 : 20;
    volatile unsigned int TCS : 3;
    volatile unsigned int reserved_31 : 1;
} Ifx_GTM_TIM_CH_TDUV_Bits;


typedef struct _Ifx_GTM_TIM_IN_SRC_Bits
{
    volatile unsigned int VAL_0 : 2;
    volatile unsigned int MODE_0 : 2;
    volatile unsigned int VAL_1 : 2;
    volatile unsigned int MODE_1 : 2;
    volatile unsigned int VAL_2 : 2;
    volatile unsigned int MODE_2 : 2;
    volatile unsigned int VAL_3 : 2;
    volatile unsigned int MODE_3 : 2;
    volatile unsigned int VAL_4 : 2;
    volatile unsigned int MODE_4 : 2;
    volatile unsigned int VAL_5 : 2;
    volatile unsigned int MODE_5 : 2;
    volatile unsigned int VAL_6 : 2;
    volatile unsigned int MODE_6 : 2;
    volatile unsigned int VAL_7 : 2;
    volatile unsigned int MODE_7 : 2;
} Ifx_GTM_TIM_IN_SRC_Bits;


typedef struct _Ifx_GTM_TIM_INP_VAL_Bits
{
    volatile unsigned int F_OUT : 8;
    volatile unsigned int F_IN : 8;
    volatile unsigned int TIM_IN : 8;
    volatile unsigned int reserved_24 : 8;
} Ifx_GTM_TIM_INP_VAL_Bits;


typedef struct _Ifx_GTM_TIM_RST_Bits
{
    volatile unsigned int RST_CH0 : 1;
    volatile unsigned int RST_CH1 : 1;
    volatile unsigned int RST_CH2 : 1;
    volatile unsigned int RST_CH3 : 1;
    volatile unsigned int RST_CH4 : 1;
    volatile unsigned int RST_CH5 : 1;
    volatile unsigned int RST_CH6 : 1;
    volatile unsigned int RST_CH7 : 1;
    volatile unsigned int reserved_8 : 24;
} Ifx_GTM_TIM_RST_Bits;


typedef struct _Ifx_GTM_TOM_CH_CM0_Bits
{
    volatile unsigned int CM0 : 16;
    volatile unsigned int reserved_16 : 16;
} Ifx_GTM_TOM_CH_CM0_Bits;


typedef struct _Ifx_GTM_TOM_CH_CM1_Bits
{
    volatile unsigned int CM1 : 16;
    volatile unsigned int reserved_16 : 16;
} Ifx_GTM_TOM_CH_CM1_Bits;


typedef struct _Ifx_GTM_TOM_CH_CN0_Bits
{
    volatile unsigned int CN0 : 16;
    volatile unsigned int reserved_16 : 16;
} Ifx_GTM_TOM_CH_CN0_Bits;


typedef struct _Ifx_GTM_TOM_CH_CTRL_Bits
{
    volatile unsigned int reserved_0 : 11;
    volatile unsigned int SL : 1;
    volatile unsigned int CLK_SRC_SR : 3;
    volatile unsigned int reserved_15 : 5;
    volatile unsigned int RST_CCU0 : 1;
    volatile unsigned int OSM_TRIG : 1;
    volatile unsigned int EXT_TRIG : 1;
    volatile unsigned int EXTTRIGOUT : 1;
    volatile unsigned int TRIGOUT : 1;
    volatile unsigned int reserved_25 : 1;
    volatile unsigned int OSM : 1;
    volatile unsigned int BITREV : 1;
    volatile unsigned int reserved_28 : 4;
} Ifx_GTM_TOM_CH_CTRL_Bits;


typedef struct _Ifx_GTM_TOM_CH_IRQ_EN_Bits
{
    volatile unsigned int CCU0TC_IRQ_EN : 1;
    volatile unsigned int CCU1TC_IRQ_EN : 1;
    volatile unsigned int reserved_2 : 30;
} Ifx_GTM_TOM_CH_IRQ_EN_Bits;


typedef struct _Ifx_GTM_TOM_CH_IRQ_FORCINT_Bits
{
    volatile unsigned int TRG_CCU0TC0 : 1;
    volatile unsigned int TRG_CCU1TC0 : 1;
    volatile unsigned int reserved_2 : 30;
} Ifx_GTM_TOM_CH_IRQ_FORCINT_Bits;


typedef struct _Ifx_GTM_TOM_CH_IRQ_MODE_Bits
{
    volatile unsigned int IRQ_MODE : 2;
    volatile unsigned int reserved_2 : 30;
} Ifx_GTM_TOM_CH_IRQ_MODE_Bits;


typedef struct _Ifx_GTM_TOM_CH_IRQ_NOTIFY_Bits
{
    volatile unsigned int CCU0TC : 1;
    volatile unsigned int CCU1TC : 1;
    volatile unsigned int reserved_2 : 30;
} Ifx_GTM_TOM_CH_IRQ_NOTIFY_Bits;


typedef struct _Ifx_GTM_TOM_CH_SR0_Bits
{
    volatile unsigned int SR0 : 16;
    volatile unsigned int reserved_16 : 16;
} Ifx_GTM_TOM_CH_SR0_Bits;


typedef struct _Ifx_GTM_TOM_CH_SR1_Bits
{
    volatile unsigned int SR1 : 16;
    volatile unsigned int reserved_16 : 16;
} Ifx_GTM_TOM_CH_SR1_Bits;


typedef struct _Ifx_GTM_TOM_CH_STAT_Bits
{
    volatile unsigned int OL : 1;
    volatile unsigned int reserved_1 : 31;
} Ifx_GTM_TOM_CH_STAT_Bits;


typedef struct _Ifx_GTM_TOM_TGC0_ACT_TB_Bits
{
    volatile unsigned int ACT_TB : 24;
    volatile unsigned int TB_TRIG : 1;
    volatile unsigned int TBU_SEL : 2;
    volatile unsigned int reserved_27 : 5;
} Ifx_GTM_TOM_TGC0_ACT_TB_Bits;


typedef struct _Ifx_GTM_TOM_TGC0_ENDIS_CTRL_Bits
{
    volatile unsigned int ENDIS_CTRL0 : 2;
    volatile unsigned int ENDIS_CTRL1 : 2;
    volatile unsigned int ENDIS_CTRL2 : 2;
    volatile unsigned int ENDIS_CTRL3 : 2;
    volatile unsigned int ENDIS_CTRL4 : 2;
    volatile unsigned int ENDIS_CTRL5 : 2;
    volatile unsigned int ENDIS_CTRL6 : 2;
    volatile unsigned int ENDIS_CTRL7 : 2;
    volatile unsigned int reserved_16 : 16;
} Ifx_GTM_TOM_TGC0_ENDIS_CTRL_Bits;


typedef struct _Ifx_GTM_TOM_TGC0_ENDIS_STAT_Bits
{
    volatile unsigned int ENDIS_STAT0 : 2;
    volatile unsigned int ENDIS_STAT1 : 2;
    volatile unsigned int ENDIS_STAT2 : 2;
    volatile unsigned int ENDIS_STAT3 : 2;
    volatile unsigned int ENDIS_STAT4 : 2;
    volatile unsigned int ENDIS_STAT5 : 2;
    volatile unsigned int ENDIS_STAT6 : 2;
    volatile unsigned int ENDIS_STAT7 : 2;
    volatile unsigned int reserved_16 : 16;
} Ifx_GTM_TOM_TGC0_ENDIS_STAT_Bits;


typedef struct _Ifx_GTM_TOM_TGC0_FUPD_CTRL_Bits
{
    volatile unsigned int FUPD_CTRL0 : 2;
    volatile unsigned int FUPD_CTRL1 : 2;
    volatile unsigned int FUPD_CTRL2 : 2;
    volatile unsigned int FUPD_CTRL3 : 2;
    volatile unsigned int FUPD_CTRL4 : 2;
    volatile unsigned int FUPD_CTRL5 : 2;
    volatile unsigned int FUPD_CTRL6 : 2;
    volatile unsigned int FUPD_CTRL7 : 2;
    volatile unsigned int RSTCN0_CH0 : 2;
    volatile unsigned int RSTCN0_CH1 : 2;
    volatile unsigned int RSTCN0_CH2 : 2;
    volatile unsigned int RSTCN0_CH3 : 2;
    volatile unsigned int RSTCN0_CH4 : 2;
    volatile unsigned int RSTCN0_CH5 : 2;
    volatile unsigned int RSTCN0_CH6 : 2;
    volatile unsigned int RSTCN0_CH7 : 2;
} Ifx_GTM_TOM_TGC0_FUPD_CTRL_Bits;


typedef struct _Ifx_GTM_TOM_TGC0_GLB_CTRL_Bits
{
    volatile unsigned int HOST_TRIG : 1;
    volatile unsigned int reserved_1 : 7;
    volatile unsigned int RST_CH0 : 1;
    volatile unsigned int RST_CH1 : 1;
    volatile unsigned int RST_CH2 : 1;
    volatile unsigned int RST_CH3 : 1;
    volatile unsigned int RST_CH4 : 1;
    volatile unsigned int RST_CH5 : 1;
    volatile unsigned int RST_CH6 : 1;
    volatile unsigned int RST_CH7 : 1;
    volatile unsigned int UPEN_CTRL0 : 2;
    volatile unsigned int UPEN_CTRL1 : 2;
    volatile unsigned int UPEN_CTRL2 : 2;
    volatile unsigned int UPEN_CTRL3 : 2;
    volatile unsigned int UPEN_CTRL4 : 2;
    volatile unsigned int UPEN_CTRL5 : 2;
    volatile unsigned int UPEN_CTRL6 : 2;
    volatile unsigned int UPEN_CTRL7 : 2;
} Ifx_GTM_TOM_TGC0_GLB_CTRL_Bits;


typedef struct _Ifx_GTM_TOM_TGC0_INT_TRIG_Bits
{
    volatile unsigned int INT_TRIG0 : 2;
    volatile unsigned int INT_TRIG1 : 2;
    volatile unsigned int INT_TRIG2 : 2;
    volatile unsigned int INT_TRIG3 : 2;
    volatile unsigned int INT_TRIG4 : 2;
    volatile unsigned int INT_TRIG5 : 2;
    volatile unsigned int INT_TRIG6 : 2;
    volatile unsigned int INT_TRIG7 : 2;
    volatile unsigned int reserved_16 : 16;
} Ifx_GTM_TOM_TGC0_INT_TRIG_Bits;


typedef struct _Ifx_GTM_TOM_TGC0_OUTEN_CTRL_Bits
{
    volatile unsigned int OUTEN_CTRL0 : 2;
    volatile unsigned int OUTEN_CTRL1 : 2;
    volatile unsigned int OUTEN_CTRL2 : 2;
    volatile unsigned int OUTEN_CTRL3 : 2;
    volatile unsigned int OUTEN_CTRL4 : 2;
    volatile unsigned int OUTEN_CTRL5 : 2;
    volatile unsigned int OUTEN_CTRL6 : 2;
    volatile unsigned int OUTEN_CTRL7 : 2;
    volatile unsigned int reserved_16 : 16;
} Ifx_GTM_TOM_TGC0_OUTEN_CTRL_Bits;


typedef struct _Ifx_GTM_TOM_TGC0_OUTEN_STAT_Bits
{
    volatile unsigned int OUTEN_STAT0 : 2;
    volatile unsigned int OUTEN_STAT1 : 2;
    volatile unsigned int OUTEN_STAT2 : 2;
    volatile unsigned int OUTEN_STAT3 : 2;
    volatile unsigned int OUTEN_STAT4 : 2;
    volatile unsigned int OUTEN_STAT5 : 2;
    volatile unsigned int OUTEN_STAT6 : 2;
    volatile unsigned int OUTEN_STAT7 : 2;
    volatile unsigned int reserved_16 : 16;
} Ifx_GTM_TOM_TGC0_OUTEN_STAT_Bits;


typedef struct _Ifx_GTM_TOM_TGC1_ACT_TB_Bits
{
    volatile unsigned int ACT_TB : 24;
    volatile unsigned int TB_TRIG : 1;
    volatile unsigned int TBU_SEL : 2;
    volatile unsigned int reserved_27 : 5;
} Ifx_GTM_TOM_TGC1_ACT_TB_Bits;


typedef struct _Ifx_GTM_TOM_TGC1_ENDIS_CTRL_Bits
{
    volatile unsigned int ENDIS_CTRL0 : 2;
    volatile unsigned int ENDIS_CTRL1 : 2;
    volatile unsigned int ENDIS_CTRL2 : 2;
    volatile unsigned int ENDIS_CTRL3 : 2;
    volatile unsigned int ENDIS_CTRL4 : 2;
    volatile unsigned int ENDIS_CTRL5 : 2;
    volatile unsigned int ENDIS_CTRL6 : 2;
    volatile unsigned int ENDIS_CTRL7 : 2;
    volatile unsigned int reserved_16 : 16;
} Ifx_GTM_TOM_TGC1_ENDIS_CTRL_Bits;


typedef struct _Ifx_GTM_TOM_TGC1_ENDIS_STAT_Bits
{
    volatile unsigned int ENDIS_STAT0 : 2;
    volatile unsigned int ENDIS_STAT1 : 2;
    volatile unsigned int ENDIS_STAT2 : 2;
    volatile unsigned int ENDIS_STAT3 : 2;
    volatile unsigned int ENDIS_STAT4 : 2;
    volatile unsigned int ENDIS_STAT5 : 2;
    volatile unsigned int ENDIS_STAT6 : 2;
    volatile unsigned int ENDIS_STAT7 : 2;
    volatile unsigned int reserved_16 : 16;
} Ifx_GTM_TOM_TGC1_ENDIS_STAT_Bits;


typedef struct _Ifx_GTM_TOM_TGC1_FUPD_CTRL_Bits
{
    volatile unsigned int FUPD_CTRL0 : 2;
    volatile unsigned int FUPD_CTRL1 : 2;
    volatile unsigned int FUPD_CTRL2 : 2;
    volatile unsigned int FUPD_CTRL3 : 2;
    volatile unsigned int FUPD_CTRL4 : 2;
    volatile unsigned int FUPD_CTRL5 : 2;
    volatile unsigned int FUPD_CTRL6 : 2;
    volatile unsigned int FUPD_CTRL7 : 2;
    volatile unsigned int RSTCN0_CH0 : 2;
    volatile unsigned int RSTCN0_CH1 : 2;
    volatile unsigned int RSTCN0_CH2 : 2;
    volatile unsigned int RSTCN0_CH3 : 2;
    volatile unsigned int RSTCN0_CH4 : 2;
    volatile unsigned int RSTCN0_CH5 : 2;
    volatile unsigned int RSTCN0_CH6 : 2;
    volatile unsigned int RSTCN0_CH7 : 2;
} Ifx_GTM_TOM_TGC1_FUPD_CTRL_Bits;


typedef struct _Ifx_GTM_TOM_TGC1_GLB_CTRL_Bits
{
    volatile unsigned int HOST_TRIG : 1;
    volatile unsigned int reserved_1 : 7;
    volatile unsigned int RST_CH0 : 1;
    volatile unsigned int RST_CH1 : 1;
    volatile unsigned int RST_CH2 : 1;
    volatile unsigned int RST_CH3 : 1;
    volatile unsigned int RST_CH4 : 1;
    volatile unsigned int RST_CH5 : 1;
    volatile unsigned int RST_CH6 : 1;
    volatile unsigned int RST_CH7 : 1;
    volatile unsigned int UPEN_CTRL0 : 2;
    volatile unsigned int UPEN_CTRL1 : 2;
    volatile unsigned int UPEN_CTRL2 : 2;
    volatile unsigned int UPEN_CTRL3 : 2;
    volatile unsigned int UPEN_CTRL4 : 2;
    volatile unsigned int UPEN_CTRL5 : 2;
    volatile unsigned int UPEN_CTRL6 : 2;
    volatile unsigned int UPEN_CTRL7 : 2;
} Ifx_GTM_TOM_TGC1_GLB_CTRL_Bits;


typedef struct _Ifx_GTM_TOM_TGC1_INT_TRIG_Bits
{
    volatile unsigned int INT_TRIG0 : 2;
    volatile unsigned int INT_TRIG1 : 2;
    volatile unsigned int INT_TRIG2 : 2;
    volatile unsigned int INT_TRIG3 : 2;
    volatile unsigned int INT_TRIG4 : 2;
    volatile unsigned int INT_TRIG5 : 2;
    volatile unsigned int INT_TRIG6 : 2;
    volatile unsigned int INT_TRIG7 : 2;
    volatile unsigned int reserved_16 : 16;
} Ifx_GTM_TOM_TGC1_INT_TRIG_Bits;


typedef struct _Ifx_GTM_TOM_TGC1_OUTEN_CTRL_Bits
{
    volatile unsigned int OUTEN_CTRL0 : 2;
    volatile unsigned int OUTEN_CTRL1 : 2;
    volatile unsigned int OUTEN_CTRL2 : 2;
    volatile unsigned int OUTEN_CTRL3 : 2;
    volatile unsigned int OUTEN_CTRL4 : 2;
    volatile unsigned int OUTEN_CTRL5 : 2;
    volatile unsigned int OUTEN_CTRL6 : 2;
    volatile unsigned int OUTEN_CTRL7 : 2;
    volatile unsigned int reserved_16 : 16;
} Ifx_GTM_TOM_TGC1_OUTEN_CTRL_Bits;


typedef struct _Ifx_GTM_TOM_TGC1_OUTEN_STAT_Bits
{
    volatile unsigned int OUTEN_STAT0 : 2;
    volatile unsigned int OUTEN_STAT1 : 2;
    volatile unsigned int OUTEN_STAT2 : 2;
    volatile unsigned int OUTEN_STAT3 : 2;
    volatile unsigned int OUTEN_STAT4 : 2;
    volatile unsigned int OUTEN_STAT5 : 2;
    volatile unsigned int OUTEN_STAT6 : 2;
    volatile unsigned int OUTEN_STAT7 : 2;
    volatile unsigned int reserved_16 : 16;
} Ifx_GTM_TOM_TGC1_OUTEN_STAT_Bits;







typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_ACCEN0_Bits B;
} Ifx_GTM_ACCEN0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_ACCEN1_Bits B;
} Ifx_GTM_ACCEN1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_ADCTRIG0OUT0_Bits B;
} Ifx_GTM_ADCTRIG0OUT0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_ADCTRIG1OUT0_Bits B;
} Ifx_GTM_ADCTRIG1OUT0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_AEI_ADDR_XPT_Bits B;
} Ifx_GTM_AEI_ADDR_XPT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_BRIDGE_MODE_Bits B;
} Ifx_GTM_BRIDGE_MODE;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_BRIDGE_PTR1_Bits B;
} Ifx_GTM_BRIDGE_PTR1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_BRIDGE_PTR2_Bits B;
} Ifx_GTM_BRIDGE_PTR2;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_CLC_Bits B;
} Ifx_GTM_CLC;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_CMU_CLK0_5_CTRL_Bits B;
} Ifx_GTM_CMU_CLK0_5_CTRL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_CMU_CLK_6_CTRL_Bits B;
} Ifx_GTM_CMU_CLK_6_CTRL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_CMU_CLK_7_CTRL_Bits B;
} Ifx_GTM_CMU_CLK_7_CTRL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_CMU_CLK_EN_Bits B;
} Ifx_GTM_CMU_CLK_EN;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_CMU_ECLK_DEN_Bits B;
} Ifx_GTM_CMU_ECLK_DEN;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_CMU_ECLK_NUM_Bits B;
} Ifx_GTM_CMU_ECLK_NUM;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_CMU_FXCLK_CTRL_Bits B;
} Ifx_GTM_CMU_FXCLK_CTRL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_CMU_GCLK_DEN_Bits B;
} Ifx_GTM_CMU_GCLK_DEN;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_CMU_GCLK_NUM_Bits B;
} Ifx_GTM_CMU_GCLK_NUM;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_CTRL_Bits B;
} Ifx_GTM_CTRL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_DTM_CH_CTRL1_Bits B;
} Ifx_GTM_DTM_CH_CTRL1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_DTM_CH_CTRL2_Bits B;
} Ifx_GTM_DTM_CH_CTRL2;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_DTM_CH_CTRL2_SR_Bits B;
} Ifx_GTM_DTM_CH_CTRL2_SR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_DTM_CTRL_Bits B;
} Ifx_GTM_DTM_CTRL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_DTM_DTV_CH_Bits B;
} Ifx_GTM_DTM_DTV_CH;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_DTM_PS_CTRL_Bits B;
} Ifx_GTM_DTM_PS_CTRL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_EIRQ_EN_Bits B;
} Ifx_GTM_EIRQ_EN;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_HW_CONF_Bits B;
} Ifx_GTM_HW_CONF;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_ICM_IRQG_0_Bits B;
} Ifx_GTM_ICM_IRQG_0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_ICM_IRQG_2_Bits B;
} Ifx_GTM_ICM_IRQG_2;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_ICM_IRQG_6_Bits B;
} Ifx_GTM_ICM_IRQG_6;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_ICM_IRQG_CEI1_Bits B;
} Ifx_GTM_ICM_IRQG_CEI1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_ICM_IRQG_MEI_Bits B;
} Ifx_GTM_ICM_IRQG_MEI;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_INOUTSEL_CAN_OUTSEL_Bits B;
} Ifx_GTM_INOUTSEL_CAN_OUTSEL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_INOUTSEL_T_OUTSEL_Bits B;
} Ifx_GTM_INOUTSEL_T_OUTSEL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_INOUTSEL_TIM_INSEL_Bits B;
} Ifx_GTM_INOUTSEL_TIM_INSEL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_IRQ_EN_Bits B;
} Ifx_GTM_IRQ_EN;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_IRQ_FORCINT_Bits B;
} Ifx_GTM_IRQ_FORCINT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_IRQ_MODE_Bits B;
} Ifx_GTM_IRQ_MODE;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_IRQ_NOTIFY_Bits B;
} Ifx_GTM_IRQ_NOTIFY;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_KRST0_Bits B;
} Ifx_GTM_KRST0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_KRST1_Bits B;
} Ifx_GTM_KRST1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_KRSTCLR_Bits B;
} Ifx_GTM_KRSTCLR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_OCS_Bits B;
} Ifx_GTM_OCS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_ODA_Bits B;
} Ifx_GTM_ODA;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_OTBU0T_Bits B;
} Ifx_GTM_OTBU0T;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_OTBU1T_Bits B;
} Ifx_GTM_OTBU1T;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_OTBU2T_Bits B;
} Ifx_GTM_OTBU2T;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_OTSC0_Bits B;
} Ifx_GTM_OTSC0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_OTSS_Bits B;
} Ifx_GTM_OTSS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_REV_Bits B;
} Ifx_GTM_REV;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_RST_Bits B;
} Ifx_GTM_RST;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TBU_CH0_BASE_Bits B;
} Ifx_GTM_TBU_CH0_BASE;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TBU_CH0_CTRL_Bits B;
} Ifx_GTM_TBU_CH0_CTRL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TBU_CH1_BASE_Bits B;
} Ifx_GTM_TBU_CH1_BASE;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TBU_CH1_CTRL_Bits B;
} Ifx_GTM_TBU_CH1_CTRL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TBU_CH2_BASE_Bits B;
} Ifx_GTM_TBU_CH2_BASE;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TBU_CH2_CTRL_Bits B;
} Ifx_GTM_TBU_CH2_CTRL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TBU_CHEN_Bits B;
} Ifx_GTM_TBU_CHEN;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TIM_AUX_IN_SRC_Bits B;
} Ifx_GTM_TIM_AUX_IN_SRC;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TIM_CH_CNT_Bits B;
} Ifx_GTM_TIM_CH_CNT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TIM_CH_CNTS_Bits B;
} Ifx_GTM_TIM_CH_CNTS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TIM_CH_CTRL_Bits B;
} Ifx_GTM_TIM_CH_CTRL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TIM_CH_ECNT_Bits B;
} Ifx_GTM_TIM_CH_ECNT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TIM_CH_ECTRL_Bits B;
} Ifx_GTM_TIM_CH_ECTRL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TIM_CH_EIRQ_EN_Bits B;
} Ifx_GTM_TIM_CH_EIRQ_EN;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TIM_CH_FLT_FE_Bits B;
} Ifx_GTM_TIM_CH_FLT_FE;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TIM_CH_FLT_RE_Bits B;
} Ifx_GTM_TIM_CH_FLT_RE;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TIM_CH_GPR0_Bits B;
} Ifx_GTM_TIM_CH_GPR0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TIM_CH_GPR1_Bits B;
} Ifx_GTM_TIM_CH_GPR1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TIM_CH_IRQ_EN_Bits B;
} Ifx_GTM_TIM_CH_IRQ_EN;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TIM_CH_IRQ_FORCINT_Bits B;
} Ifx_GTM_TIM_CH_IRQ_FORCINT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TIM_CH_IRQ_MODE_Bits B;
} Ifx_GTM_TIM_CH_IRQ_MODE;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TIM_CH_IRQ_NOTIFY_Bits B;
} Ifx_GTM_TIM_CH_IRQ_NOTIFY;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TIM_CH_TDUC_Bits B;
} Ifx_GTM_TIM_CH_TDUC;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TIM_CH_TDUV_Bits B;
} Ifx_GTM_TIM_CH_TDUV;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TIM_IN_SRC_Bits B;
} Ifx_GTM_TIM_IN_SRC;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TIM_INP_VAL_Bits B;
} Ifx_GTM_TIM_INP_VAL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TIM_RST_Bits B;
} Ifx_GTM_TIM_RST;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TOM_CH_CM0_Bits B;
} Ifx_GTM_TOM_CH_CM0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TOM_CH_CM1_Bits B;
} Ifx_GTM_TOM_CH_CM1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TOM_CH_CN0_Bits B;
} Ifx_GTM_TOM_CH_CN0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TOM_CH_CTRL_Bits B;
} Ifx_GTM_TOM_CH_CTRL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TOM_CH_IRQ_EN_Bits B;
} Ifx_GTM_TOM_CH_IRQ_EN;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TOM_CH_IRQ_FORCINT_Bits B;
} Ifx_GTM_TOM_CH_IRQ_FORCINT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TOM_CH_IRQ_MODE_Bits B;
} Ifx_GTM_TOM_CH_IRQ_MODE;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TOM_CH_IRQ_NOTIFY_Bits B;
} Ifx_GTM_TOM_CH_IRQ_NOTIFY;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TOM_CH_SR0_Bits B;
} Ifx_GTM_TOM_CH_SR0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TOM_CH_SR1_Bits B;
} Ifx_GTM_TOM_CH_SR1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TOM_CH_STAT_Bits B;
} Ifx_GTM_TOM_CH_STAT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TOM_TGC0_ACT_TB_Bits B;
} Ifx_GTM_TOM_TGC0_ACT_TB;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TOM_TGC0_ENDIS_CTRL_Bits B;
} Ifx_GTM_TOM_TGC0_ENDIS_CTRL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TOM_TGC0_ENDIS_STAT_Bits B;
} Ifx_GTM_TOM_TGC0_ENDIS_STAT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TOM_TGC0_FUPD_CTRL_Bits B;
} Ifx_GTM_TOM_TGC0_FUPD_CTRL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TOM_TGC0_GLB_CTRL_Bits B;
} Ifx_GTM_TOM_TGC0_GLB_CTRL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TOM_TGC0_INT_TRIG_Bits B;
} Ifx_GTM_TOM_TGC0_INT_TRIG;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TOM_TGC0_OUTEN_CTRL_Bits B;
} Ifx_GTM_TOM_TGC0_OUTEN_CTRL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TOM_TGC0_OUTEN_STAT_Bits B;
} Ifx_GTM_TOM_TGC0_OUTEN_STAT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TOM_TGC1_ACT_TB_Bits B;
} Ifx_GTM_TOM_TGC1_ACT_TB;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TOM_TGC1_ENDIS_CTRL_Bits B;
} Ifx_GTM_TOM_TGC1_ENDIS_CTRL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TOM_TGC1_ENDIS_STAT_Bits B;
} Ifx_GTM_TOM_TGC1_ENDIS_STAT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TOM_TGC1_FUPD_CTRL_Bits B;
} Ifx_GTM_TOM_TGC1_FUPD_CTRL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TOM_TGC1_GLB_CTRL_Bits B;
} Ifx_GTM_TOM_TGC1_GLB_CTRL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TOM_TGC1_INT_TRIG_Bits B;
} Ifx_GTM_TOM_TGC1_INT_TRIG;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TOM_TGC1_OUTEN_CTRL_Bits B;
} Ifx_GTM_TOM_TGC1_OUTEN_CTRL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TOM_TGC1_OUTEN_STAT_Bits B;
} Ifx_GTM_TOM_TGC1_OUTEN_STAT;
# 2140 "../30_Bsw/Common/TC21x/IfxGtm_regdef.h"
typedef volatile struct _Ifx_GTM_CMU_CLK0_5
{
    Ifx_GTM_CMU_CLK0_5_CTRL CTRL;
} Ifx_GTM_CMU_CLK0_5;


typedef volatile struct _Ifx_GTM_CMU_CLK_6
{
    Ifx_GTM_CMU_CLK_6_CTRL CTRL;
} Ifx_GTM_CMU_CLK_6;


typedef volatile struct _Ifx_GTM_CMU_CLK_7
{
    Ifx_GTM_CMU_CLK_7_CTRL CTRL;
} Ifx_GTM_CMU_CLK_7;


typedef volatile struct _Ifx_GTM_CMU_ECLK
{
    Ifx_GTM_CMU_ECLK_NUM NUM;
    Ifx_GTM_CMU_ECLK_DEN DEN;
} Ifx_GTM_CMU_ECLK;


typedef volatile struct _Ifx_GTM_CMU_FXCLK
{
    Ifx_GTM_CMU_FXCLK_CTRL CTRL;
} Ifx_GTM_CMU_FXCLK;


typedef volatile struct _Ifx_GTM_INOUTSEL_CAN
{
    Ifx_GTM_INOUTSEL_CAN_OUTSEL OUTSEL;
} Ifx_GTM_INOUTSEL_CAN;


typedef volatile struct _Ifx_GTM_INOUTSEL_T
{
    Ifx_GTM_INOUTSEL_T_OUTSEL OUTSEL[8];
} Ifx_GTM_INOUTSEL_T;


typedef volatile struct _Ifx_GTM_INOUTSEL_TIM
{
    Ifx_GTM_INOUTSEL_TIM_INSEL INSEL;
    unsigned char reserved_4[28];
} Ifx_GTM_INOUTSEL_TIM;


typedef volatile struct _Ifx_GTM_TIM_CH
{
    Ifx_GTM_TIM_CH_GPR0 GPR0;
    Ifx_GTM_TIM_CH_GPR1 GPR1;
    Ifx_GTM_TIM_CH_CNT CNT;
    Ifx_GTM_TIM_CH_ECNT ECNT;
    Ifx_GTM_TIM_CH_CNTS CNTS;
    Ifx_GTM_TIM_CH_TDUC TDUC;
    Ifx_GTM_TIM_CH_TDUV TDUV;
    Ifx_GTM_TIM_CH_FLT_RE FLT_RE;
    Ifx_GTM_TIM_CH_FLT_FE FLT_FE;
    Ifx_GTM_TIM_CH_CTRL CTRL;
    Ifx_GTM_TIM_CH_ECTRL ECTRL;
    Ifx_GTM_TIM_CH_IRQ_NOTIFY IRQ_NOTIFY;
    Ifx_GTM_TIM_CH_IRQ_EN IRQ_EN;
    Ifx_GTM_TIM_CH_IRQ_FORCINT IRQ_FORCINT;
    Ifx_GTM_TIM_CH_IRQ_MODE IRQ_MODE;
    Ifx_GTM_TIM_CH_EIRQ_EN EIRQ_EN;
    unsigned char reserved_40[52];
} Ifx_GTM_TIM_CH;


typedef volatile struct _Ifx_GTM_TOM_CH
{
    Ifx_GTM_TOM_CH_CTRL CTRL;
    Ifx_GTM_TOM_CH_SR0 SR0;
    Ifx_GTM_TOM_CH_SR1 SR1;
    Ifx_GTM_TOM_CH_CM0 CM0;
    Ifx_GTM_TOM_CH_CM1 CM1;
    Ifx_GTM_TOM_CH_CN0 CN0;
    Ifx_GTM_TOM_CH_STAT STAT;
    Ifx_GTM_TOM_CH_IRQ_NOTIFY IRQ_NOTIFY;
    Ifx_GTM_TOM_CH_IRQ_EN IRQ_EN;
    Ifx_GTM_TOM_CH_IRQ_FORCINT IRQ_FORCINT;
    Ifx_GTM_TOM_CH_IRQ_MODE IRQ_MODE;
    unsigned char reserved_2C[4];
} Ifx_GTM_TOM_CH;
# 2239 "../30_Bsw/Common/TC21x/IfxGtm_regdef.h"
typedef volatile struct _Ifx_GTM_BRIDGE
{
    Ifx_GTM_BRIDGE_MODE MODE;
    Ifx_GTM_BRIDGE_PTR1 PTR1;
    Ifx_GTM_BRIDGE_PTR2 PTR2;
} Ifx_GTM_BRIDGE;


typedef volatile struct _Ifx_GTM_CMU
{
    Ifx_GTM_CMU_CLK_EN CLK_EN;
    Ifx_GTM_CMU_GCLK_NUM GCLK_NUM;
    Ifx_GTM_CMU_GCLK_DEN GCLK_DEN;
    Ifx_GTM_CMU_CLK0_5 CLK0_5[6];
    Ifx_GTM_CMU_CLK_6 CLK_6;
    Ifx_GTM_CMU_CLK_7 CLK_7;
    Ifx_GTM_CMU_ECLK ECLK[3];
    Ifx_GTM_CMU_FXCLK FXCLK;
} Ifx_GTM_CMU;


typedef volatile struct _Ifx_GTM_DTM
{
    Ifx_GTM_DTM_CTRL CTRL;
    Ifx_GTM_DTM_CH_CTRL1 CH_CTRL1;
    Ifx_GTM_DTM_CH_CTRL2 CH_CTRL2;
    Ifx_GTM_DTM_CH_CTRL2_SR CH_CTRL2_SR;
    Ifx_GTM_DTM_PS_CTRL PS_CTRL;
    Ifx_GTM_DTM_DTV_CH DTV_CH[4];
} Ifx_GTM_DTM;


typedef volatile struct _Ifx_GTM_ICM
{
    Ifx_GTM_ICM_IRQG_0 IRQG_0;
    unsigned char reserved_4[4];
    Ifx_GTM_ICM_IRQG_2 IRQG_2;
    unsigned char reserved_C[12];
    Ifx_GTM_ICM_IRQG_6 IRQG_6;
    unsigned char reserved_1C[20];
    Ifx_GTM_ICM_IRQG_MEI IRQG_MEI;
    unsigned char reserved_34[4];
    Ifx_GTM_ICM_IRQG_CEI1 IRQG_CEI1;
} Ifx_GTM_ICM;


typedef volatile struct _Ifx_GTM_INOUTSEL
{
    Ifx_GTM_INOUTSEL_TIM TIM[1];
    Ifx_GTM_INOUTSEL_T T;
    unsigned char reserved_40[80];
    Ifx_GTM_INOUTSEL_CAN CAN;
} Ifx_GTM_INOUTSEL;


typedef volatile struct _Ifx_GTM_TBU
{
    Ifx_GTM_TBU_CHEN CHEN;
    Ifx_GTM_TBU_CH0_CTRL CH0_CTRL;
    Ifx_GTM_TBU_CH0_BASE CH0_BASE;
    Ifx_GTM_TBU_CH1_CTRL CH1_CTRL;
    Ifx_GTM_TBU_CH1_BASE CH1_BASE;
    Ifx_GTM_TBU_CH2_CTRL CH2_CTRL;
    Ifx_GTM_TBU_CH2_BASE CH2_BASE;
} Ifx_GTM_TBU;


typedef volatile struct _Ifx_GTM_TIM
{
    Ifx_GTM_TIM_CH CH0;
    Ifx_GTM_TIM_INP_VAL INP_VAL;
    Ifx_GTM_TIM_IN_SRC IN_SRC;
    Ifx_GTM_TIM_RST RST;
    Ifx_GTM_TIM_CH CH1;
    unsigned char reserved_F4[12];
    Ifx_GTM_TIM_CH CH2;
    unsigned char reserved_174[12];
    Ifx_GTM_TIM_CH CH3;
    unsigned char reserved_1F4[12];
    Ifx_GTM_TIM_CH CH4;
    unsigned char reserved_274[12];
    Ifx_GTM_TIM_CH CH5;
    unsigned char reserved_2F4[12];
    Ifx_GTM_TIM_CH CH6;
    unsigned char reserved_374[12];
    Ifx_GTM_TIM_CH CH7;
    unsigned char reserved_3F4[12];
} Ifx_GTM_TIM;


typedef volatile struct _Ifx_GTM_TOM
{
    Ifx_GTM_TOM_CH CH0;
    Ifx_GTM_TOM_TGC0_GLB_CTRL TGC0_GLB_CTRL;
    Ifx_GTM_TOM_TGC0_ACT_TB TGC0_ACT_TB;
    Ifx_GTM_TOM_TGC0_FUPD_CTRL TGC0_FUPD_CTRL;
    Ifx_GTM_TOM_TGC0_INT_TRIG TGC0_INT_TRIG;
    Ifx_GTM_TOM_CH CH1;
    Ifx_GTM_TOM_TGC0_ENDIS_CTRL TGC0_ENDIS_CTRL;
    Ifx_GTM_TOM_TGC0_ENDIS_STAT TGC0_ENDIS_STAT;
    Ifx_GTM_TOM_TGC0_OUTEN_CTRL TGC0_OUTEN_CTRL;
    Ifx_GTM_TOM_TGC0_OUTEN_STAT TGC0_OUTEN_STAT;
    Ifx_GTM_TOM_CH CH2;
    unsigned char reserved_B0[16];
    Ifx_GTM_TOM_CH CH3;
    unsigned char reserved_F0[16];
    Ifx_GTM_TOM_CH CH4;
    unsigned char reserved_130[16];
    Ifx_GTM_TOM_CH CH5;
    unsigned char reserved_170[16];
    Ifx_GTM_TOM_CH CH6;
    unsigned char reserved_1B0[16];
    Ifx_GTM_TOM_CH CH7;
    unsigned char reserved_1F0[16];
    Ifx_GTM_TOM_CH CH8;
    Ifx_GTM_TOM_TGC1_GLB_CTRL TGC1_GLB_CTRL;
    Ifx_GTM_TOM_TGC1_ACT_TB TGC1_ACT_TB;
    Ifx_GTM_TOM_TGC1_FUPD_CTRL TGC1_FUPD_CTRL;
    Ifx_GTM_TOM_TGC1_INT_TRIG TGC1_INT_TRIG;
    Ifx_GTM_TOM_CH CH9;
    Ifx_GTM_TOM_TGC1_ENDIS_CTRL TGC1_ENDIS_CTRL;
    Ifx_GTM_TOM_TGC1_ENDIS_STAT TGC1_ENDIS_STAT;
    Ifx_GTM_TOM_TGC1_OUTEN_CTRL TGC1_OUTEN_CTRL;
    Ifx_GTM_TOM_TGC1_OUTEN_STAT TGC1_OUTEN_STAT;
    Ifx_GTM_TOM_CH CH10;
    unsigned char reserved_2B0[16];
    Ifx_GTM_TOM_CH CH11;
    unsigned char reserved_2F0[16];
    Ifx_GTM_TOM_CH CH12;
    unsigned char reserved_330[16];
    Ifx_GTM_TOM_CH CH13;
    unsigned char reserved_370[16];
    Ifx_GTM_TOM_CH CH14;
    unsigned char reserved_3B0[16];
    Ifx_GTM_TOM_CH CH15;
    unsigned char reserved_3F0[1040];
} Ifx_GTM_TOM;
# 2388 "../30_Bsw/Common/TC21x/IfxGtm_regdef.h"
typedef volatile struct _Ifx_GTM
{
    Ifx_GTM_REV REV;
    Ifx_GTM_RST RST;
    Ifx_GTM_CTRL CTRL;
    Ifx_GTM_AEI_ADDR_XPT AEI_ADDR_XPT;
    Ifx_GTM_IRQ_NOTIFY IRQ_NOTIFY;
    Ifx_GTM_IRQ_EN IRQ_EN;
    Ifx_GTM_IRQ_FORCINT IRQ_FORCINT;
    Ifx_GTM_IRQ_MODE IRQ_MODE;
    Ifx_GTM_EIRQ_EN EIRQ_EN;
    Ifx_GTM_HW_CONF HW_CONF;
    unsigned char reserved_28[8];
    Ifx_GTM_BRIDGE BRIDGE;
    unsigned char reserved_3C[4];
    Ifx_GTM_TIM_AUX_IN_SRC TIM_AUX_IN_SRC[1];
    unsigned char reserved_44[188];
    Ifx_GTM_TBU TBU;
    unsigned char reserved_11C[484];
    Ifx_GTM_CMU CMU;
    unsigned char reserved_348[696];
    Ifx_GTM_ICM ICM;
    unsigned char reserved_63C[2500];
    Ifx_GTM_TIM TIM[1];
    unsigned char reserved_1400[27648];
    Ifx_GTM_TOM TOM[2];
    unsigned char reserved_9000[41024];
    Ifx_GTM_DTM DTM1;
    unsigned char reserved_13064[220];
    Ifx_GTM_DTM DTM5;
    unsigned char reserved_13164[576412];
    Ifx_GTM_CLC CLC;
    unsigned char reserved_9FD04[12];
    Ifx_GTM_INOUTSEL INOUTSEL;
    unsigned char reserved_9FDA4[12];
    Ifx_GTM_ADCTRIG0OUT0 ADCTRIG0OUT0;
    unsigned char reserved_9FDB4[4];
    Ifx_GTM_ADCTRIG1OUT0 ADCTRIG1OUT0;
    unsigned char reserved_9FDBC[8];
    Ifx_GTM_OTBU0T OTBU0T;
    Ifx_GTM_OTBU1T OTBU1T;
    Ifx_GTM_OTBU2T OTBU2T;
    Ifx_GTM_OTSS OTSS;
    Ifx_GTM_OTSC0 OTSC0;
    unsigned char reserved_9FDD8[4];
    Ifx_GTM_ODA ODA;
    unsigned char reserved_9FDE0[8];
    Ifx_GTM_OCS OCS;
    Ifx_GTM_KRSTCLR KRSTCLR;
    Ifx_GTM_KRST1 KRST1;
    Ifx_GTM_KRST0 KRST0;
    Ifx_GTM_ACCEN1 ACCEN1;
    Ifx_GTM_ACCEN0 ACCEN0;
    unsigned char reserved_9FE00[512];
} Ifx_GTM;
# 37 "../30_Bsw/Common/TC21x/IfxGtm_reg.h" 2
# 25 "../30_Bsw/Mcal/Gtm/Gtm_cfg.h" 2



# 1 "../30_Bsw/Common/mcu_cfg.h" 1
# 29 "../30_Bsw/Mcal/Gtm/Gtm_cfg.h" 2
# 118 "../30_Bsw/Mcal/Gtm/Gtm_cfg.h"
extern void Gtm_vTom_cfg(void);
extern void Gtm_vTim_cfg(void);
# 8 "../30_Bsw/Mcal/Gtm/Gtm_api.h" 2
# 1 "../30_Bsw/Mcal/Port/Port_api.h" 1
# 9 "../30_Bsw/Mcal/Gtm/Gtm_api.h" 2
# 32 "../30_Bsw/Mcal/Gtm/Gtm_api.h"
typedef enum GTM_E_PWMENSTATE{
 GTM_E_DisReg = 0,
 GTM_E_WaitEn,
 GTM_E_EnReg,
 GTM_E_WaitDis
} GTM_E_PWMENSTATE;


extern u16 *PwmSr0Pt[10];
extern u16 *PwmSr1Pt[10];
extern u16 Pwm_PwmEn[3];
extern u16 Safety_PwmEn[3];
extern u16 Gtm_PwmStatus;
extern u16 Safety_WDIDis;
extern u16 Gtm_WDIDisCnt;
extern u16 Flag_WDIDis;

extern void Gtm_StopWDI(void);
extern void Gtm_CheckPwmStatus(void);
extern void Gtm_PwmEnDis_Calc(void);
extern void Gtm_DebugPwm(f32 duty);
extern void Gtm_DebugPwmScope(f32 real,f32 real_div,f32 debug_div);
# 8 "../30_Bsw/Mcal/Adc/Adc_api.h" 2




typedef enum ADC_E_AI{
 ADC_E_Ipri = 0,
 ADC_E_Vin,
 ADC_E_Iout,
 ADC_E_Vout,
 ADC_E_VoutDiag,
 ADC_E_IproFet,
 ADC_E_Vaux,
 ADC_E_Vkl30,
 ADC_E_Vkl30C,
 ADC_E_Vcomp,
 ADC_E_VrefDiag,
 ADC_E_Vhw16V,
 ADC_E_Vhw19V,
 ADC_E_NtcPri,
 ADC_E_NtcSrA,
 ADC_E_NtcSrB,
 ADC_E_NtcWaterIn,
 ADC_E_NtcWaterOut,
 ADC_E_NtcWaterOutDiag,
} ADC_E_AI;


extern u16 *AdcResPt[24];
# 25 "../30_Bsw/Mcal/Port/Port.c" 2






# 1 "../30_Bsw/Mpu/MPU_MemMap.h" 1
# 36 "../30_Bsw/Mpu/MPU_MemMap.h"
#pragma section ".bss.MPU_ASIL_VAR_NOINIT" awB 8
# 32 "../30_Bsw/Mcal/Port/Port.c" 2
PORT_S_PT PortInPt[11];
bit PortAutoDiagFin;
bit PortAutoDiagErr[4];
u16 PortErrReset;
u16 Ovp16VResetCnt;
u16 PortDebug[10];
u16 KLDiagFlag;
u16 WdgCnt;
u16 WdgEnable;
u16 PortOtpAutoDiagEn;
u16 PortOtpAutoDiagEnLast;
u16 PortAutoCnt;
u16 PortDisHSK;

# 1 "../30_Bsw/Mpu/MPU_MemMap.h" 1
# 49 "../30_Bsw/Mpu/MPU_MemMap.h"
#pragma section
# 47 "../30_Bsw/Mcal/Port/Port.c" 2


void Port_Pt_Init(void);
void Port_Pin_IOCR_Cfg(void);
void Port_AuxPower_EnDis10ms(void);



# 1 "../30_Bsw/Mpu/MPU_MemMap.h" 1
# 294 "../30_Bsw/Mpu/MPU_MemMap.h"
#pragma section ".text.MPU_QM_CODE" ax 8
# 56 "../30_Bsw/Mcal/Port/Port.c" 2
void Port_Init(void)
{
 Port_Cfg();
 Port_Pt_Init();
 (*(volatile Ifx_P_OMSR *)0xF003C090u).B.PS9 = 1;
 (*(volatile Ifx_P_OMSR *)0xF003B590u).B.PS0 = 1;
 (*(volatile Ifx_P_OMSR *)0xF003B390u).B.PS1 = 1;
 (*(volatile Ifx_P_OMCR *)0xF003B394u).B.PCL3 = 1;
 WdgEnable = 1;
}

void Port_Cfg(void)
{

 Port_Pin_IOCR_Cfg();


 IfxScuWdt_clearCpuEndinit(IfxScuWdt_getCpuWatchdogPassword());
 (*(volatile Ifx_P_PDR0 *)0xF003A240u).U = 0x22222222;

 (*(volatile Ifx_P_PDR1 *)0xF003C044u).B.PD10 = 0;
 IfxScuWdt_setCpuEndinit(IfxScuWdt_getCpuWatchdogPassword());
}

void Port_Pin_IOCR_Cfg(void)
{

 (*(volatile Ifx_P_IOCR0 *)0xF003A010u).B.PC0 = (0x00U);


 (*(volatile Ifx_P_IOCR0 *)0xF003A210u).B.PC0 = ((0x11U) | (0x00U));
 (*(volatile Ifx_P_IOCR0 *)0xF003A210u).B.PC1 = ((0x11U) | (0x00U));
 (*(volatile Ifx_P_IOCR0 *)0xF003A210u).B.PC2 = ((0x11U) | (0x00U));
 (*(volatile Ifx_P_IOCR0 *)0xF003A210u).B.PC3 = ((0x11U) | (0x00U));
 (*(volatile Ifx_P_IOCR4 *)0xF003A214u).B.PC4 = ((0x11U) | (0x00U));
 (*(volatile Ifx_P_IOCR4 *)0xF003A214u).B.PC5 = ((0x11U) | (0x00U));
 (*(volatile Ifx_P_IOCR4 *)0xF003A214u).B.PC6 = ((0x11U) | (0x00U));
 (*(volatile Ifx_P_IOCR4 *)0xF003A214u).B.PC7 = ((0x11U) | (0x00U));
 (*(volatile Ifx_P_IOCR8 *)0xF003A218u).B.PC8 = ((0x10U) | (0x00U));




 (*(volatile Ifx_P_IOCR0 *)0xF003B110u).B.PC2 = (0x00U);
 (*(volatile Ifx_P_IOCR0 *)0xF003B110u).B.PC3 = ((0x10U) | (0x00U));
 (*(volatile Ifx_P_IOCR4 *)0xF003B114u).B.PC6 = (0x00U);
 (*(volatile Ifx_P_IOCR8 *)0xF003B118u).B.PC8 = ((0x10U) | (0x00U));
 (*(volatile Ifx_P_IOCR8 *)0xF003B118u).B.PC9 = (0x00U);
 (*(volatile Ifx_P_IOCR8 *)0xF003B118u).B.PC10 = (0x00U);
 (*(volatile Ifx_P_IOCR8 *)0xF003B118u).B.PC11 = (0x00U);
 (*(volatile Ifx_P_IOCR12 *)0xF003B11Cu).B.PC12 = (0x00U);


 (*(volatile Ifx_P_IOCR0 *)0xF003B310u).B.PC0 = (0x00U);
 (*(volatile Ifx_P_IOCR0 *)0xF003B310u).B.PC1 = ((0x10U) | (0x00U));
 (*(volatile Ifx_P_IOCR0 *)0xF003B310u).B.PC2 = (0x00U);
 (*(volatile Ifx_P_IOCR0 *)0xF003B310u).B.PC3 = ((0x10U) | (0x00U));


 (*(volatile Ifx_P_IOCR0 *)0xF003B410u).B.PC0 = ((0x15U) | (0x00U));
 (*(volatile Ifx_P_IOCR0 *)0xF003B410u).B.PC1 = (0x00U);
 (*(volatile Ifx_P_IOCR4 *)0xF003B414u).B.PC4 = ((0x10U) | (0x00U));
 (*(volatile Ifx_P_IOCR4 *)0xF003B414u).B.PC6 = (0x00U);


 (*(volatile Ifx_P_IOCR0 *)0xF003B510u).B.PC0 = ((0x10U) | (0x00U));
 (*(volatile Ifx_P_IOCR0 *)0xF003B510u).B.PC1 = (0x00U);
 (*(volatile Ifx_P_IOCR0 *)0xF003B510u).B.PC2 = ((0x15U) | (0x00U));
 (*(volatile Ifx_P_IOCR0 *)0xF003B510u).B.PC3 = (0x00U);
 (*(volatile Ifx_P_IOCR4 *)0xF003B514u).B.PC5 = ((0x10U) | (0x00U));


 (*(volatile Ifx_P_IOCR8 *)0xF003C018u).B.PC8 = ((0x13U) | (0x00U));

 (*(volatile Ifx_P_IOCR8 *)0xF003C018u).B.PC9 = ((0x11U) | (0x00U));
 (*(volatile Ifx_P_IOCR8 *)0xF003C018u).B.PC10 = ((0x11U) | (0x00U));
 (*(volatile Ifx_P_IOCR8 *)0xF003C018u).B.PC11 = ((0x13U) | (0x00U));
 (*(volatile Ifx_P_IOCR12 *)0xF003C01Cu).B.PC12 = (0x00U);
 (*(volatile Ifx_P_IOCR12 *)0xF003C01Cu).B.PC13 = (0x00U);
 (*(volatile Ifx_P_IOCR12 *)0xF003C01Cu).B.PC14 = ((0x13U) | (0x00U));


 (*(volatile Ifx_P_IOCR0 *)0xF003C110u).B.PC2 = ((0x10U) | (0x00U));
 (*(volatile Ifx_P_IOCR0 *)0xF003C110u).B.PC3 = ((0x10U) | (0x00U));
 (*(volatile Ifx_P_IOCR4 *)0xF003C114u).B.PC4 = (0x00U);


 (*(volatile Ifx_P_IOCR0 *)0xF003C310u).B.PC1 = ((0x10U) | (0x00U));


 (*(volatile Ifx_P_IOCR4 *)0xF003D314u).B.PC5 = (0x00U);
 (*(volatile Ifx_P_IOCR4 *)0xF003D314u).B.PC6 = (0x00U);
 (*(volatile Ifx_P_IOCR4 *)0xF003D314u).B.PC7 = (0x00U);
 (*(volatile Ifx_P_IOCR8 *)0xF003D318u).B.PC8 = ((0x10U) | (0x00U));
 (*(volatile Ifx_P_IOCR8 *)0xF003D318u).B.PC9 = (0x00U);
 (*(volatile Ifx_P_IOCR8 *)0xF003D318u).B.PC10 = (0x00U);


 (*(volatile Ifx_P_OMSR *)0xF003C090u).B.PS9 = 1;
 (*(volatile Ifx_P_OMSR *)0xF003C390u).B.PS1 = 1;
 if((((Main_HwVer.Ver == MAIN_E_HW_B01_X10) || (Main_HwVer.Ver == MAIN_E_HW_B01_X10_DV)) || ((Main_HwVer.Ver == MAIN_E_HW_B02_X10) || (Main_HwVer.Ver == MAIN_E_HW_B02_X10_DV))))
 {
  (*(volatile Ifx_P_IOCR8 *)0xF003C018u).B.PC9 = ((0x11U) | (0x00U));
  (*(volatile Ifx_P_IOCR12 *)0xF003C01Cu).B.PC13 = ((0x10U) | (0x00U));
  (*(volatile Ifx_P_IOCR8 *)0xF003D318u).B.PC9 = ((0x10U) | (0x00U));

  (*(volatile Ifx_P_OMSR *)0xF003C090u).B.PS13 = 1;
  (*(volatile Ifx_P_OMSR *)0xF003D390u).B.PS9 = 1;
 }
}

void Port_Pt_Init(void)
{
 PortInPt[PORT_E_FastTurnOff].Port = (u32 *)&((*(volatile Ifx_P_IN *)0xF003B524u).U); PortInPt[0].Pin = 1;
 PortInPt[PORT_E_PriDriveDis].Port = (u32 *)&((*(volatile Ifx_P_IN *)0xF003B124u).U); PortInPt[1].Pin = 10;
 PortInPt[PORT_E_SrDriveEn].Port = (u32 *)&((*(volatile Ifx_P_IN *)0xF003B424u).U); PortInPt[2].Pin = 6;
 PortInPt[PORT_E_IpriCbc].Port = (u32 *)&((*(volatile Ifx_P_IN *)0xF003A024u).U); PortInPt[3].Pin = 0;
 PortInPt[PORT_E_IpriOcp].Port = (u32 *)&((*(volatile Ifx_P_IN *)0xF003B124u).U); PortInPt[4].Pin = 2;
 PortInPt[PORT_E_VinOvp].Port = (u32 *)&((*(volatile Ifx_P_IN *)0xF003B124u).U); PortInPt[5].Pin = 6;
 PortInPt[PORT_E_IoutPOcp].Port = (u32 *)&((*(volatile Ifx_P_IN *)0xF003B324u).U); PortInPt[6].Pin = 0;
 PortInPt[PORT_E_IoutNOcp].Port = (u32 *)&((*(volatile Ifx_P_IN *)0xF003B324u).U); PortInPt[7].Pin = 2;
 PortInPt[PORT_E_Vout16VOvp].Port = (u32 *)&((*(volatile Ifx_P_IN *)0xF003B124u).U); PortInPt[8].Pin = 11;
 PortInPt[PORT_E_Vout19VOvp].Port = (u32 *)&((*(volatile Ifx_P_IN *)0xF003B124u).U); PortInPt[9].Pin = 12;
 PortInPt[PORT_E_WaterOutOtp].Port = (u32 *)&((*(volatile Ifx_P_IN *)0xF003B124u).U); PortInPt[10].Pin = 9;
}

# 1 "../30_Bsw/Mpu/MPU_MemMap.h" 1
# 307 "../30_Bsw/Mpu/MPU_MemMap.h"
#pragma section
# 183 "../30_Bsw/Mcal/Port/Port.c" 2


# 1 "../30_Bsw/Mpu/MPU_MemMap.h" 1
# 242 "../30_Bsw/Mpu/MPU_MemMap.h"
#pragma section ".text.MPU_ASIL_CODE" ax 8
# 186 "../30_Bsw/Mcal/Port/Port.c" 2
void Port_StartUp(void)
{
 (*(volatile Ifx_P_OMSR *)0xF003C090u).B.PS9 = 1;
 (*(volatile Ifx_P_OMCR *)0xF003B394u).B.PCL1 = 1;
 (*(volatile Ifx_P_OMSR *)0xF003B390u).B.PS3 = 1;
}

void Port_AutoDiag(void)
{
# 276 "../30_Bsw/Mcal/Port/Port.c"
}
void KL30_AutoDiag(void)
{
 KLDiagFlag = 0;
 (*(volatile Ifx_P_OMCR *)0xF003C394u).B.PCL1 = 1;
 (*(volatile Ifx_P_OMCR *)0xF003D394u).B.PCL9 = 1;
 delay_ms_main(10);
 if((*AdcResPt[ADC_E_Vkl30] > 100) || (*AdcResPt[ADC_E_Vkl30C] > 100))
 {
  KLDiagFlag = 1;
 }
 (*(volatile Ifx_P_OMSR *)0xF003C390u).B.PS1 = 1;
 (*(volatile Ifx_P_OMSR *)0xF003D390u).B.PS9 = 1;
 delay_ms_main(10);
}
void HsfbApp_ErrReset(bit en, bit u)
{

 if(u && !PortErrReset)
 {
  (*(volatile Ifx_P_OMSR *)0xF003B390u).B.PS1 = 1;
 }
 else if(!u && PortErrReset)
 {
  (*(volatile Ifx_P_OMCR *)0xF003B394u).B.PCL1 = 1;
 }
 PortErrReset = u;


 if(en)
 {
  if(u || Ovp16VResetCnt)
  {
   (*(volatile Ifx_P_OMCR *)0xF003B394u).B.PCL3 = 1;
   Ovp16VResetCnt++;
   if(Ovp16VResetCnt > 400)
   {
    Ovp16VResetCnt = 0;
   }
  }
  else
  {
   (*(volatile Ifx_P_OMSR *)0xF003B390u).B.PS3 = 1;
  }
 }
}

void HsfbSafety_SetClrAutoDiag(bit en, u16 type)
{
 switch(type)
 {
  case 0:
   if(en)
   {
    PortDebug[0]++;
    (*(volatile Ifx_P_OMSR *)0xF003B190u).B.PS3 = 1;
    (*(volatile Ifx_P_OMSR *)0xF003B390u).B.PS3 = 1;
   }
   else
   {
    PortDebug[1]++;
    (*(volatile Ifx_P_OMCR *)0xF003B194u).B.PCL3 = 1;
    (*(volatile Ifx_P_OMCR *)0xF003B394u).B.PCL3 = 1;
   }
   break;
  case 1:
   if(en)
   {
    PortDebug[2]++;
    (*(volatile Ifx_P_OMSR *)0xF003B490u).B.PS4 = 1;
    (*(volatile Ifx_P_OMSR *)0xF003B190u).B.PS3 = 1;
    (*(volatile Ifx_P_OMCR *)0xF003B394u).B.PCL3 = 1;
   }
   else
   {
    PortDebug[3]++;
    (*(volatile Ifx_P_OMCR *)0xF003B494u).B.PCL4 = 1;
    (*(volatile Ifx_P_OMCR *)0xF003B194u).B.PCL3 = 1;
    (*(volatile Ifx_P_OMSR *)0xF003B390u).B.PS3 = 1;
   }
   break;
  case 2:
   if(en)
   {
    PortDebug[4]++;
    (*(volatile Ifx_P_OMSR *)0xF003B190u).B.PS8 = 1;
   }
   else
   {
    PortDebug[5]++;
    (*(volatile Ifx_P_OMCR *)0xF003B194u).B.PCL8 = 1;
   }
   break;
  case 3:
   if(en)
   {
    PortDebug[6]++;
    (*(volatile Ifx_P_OMCR *)0xF003C394u).B.PCL1 = 1;
    (*(volatile Ifx_P_OMCR *)0xF003D394u).B.PCL9 = 1;
   }
   else
   {
    PortDebug[7]++;
    (*(volatile Ifx_P_OMSR *)0xF003C390u).B.PS1 = 1;
    (*(volatile Ifx_P_OMSR *)0xF003D390u).B.PS9 = 1;
   }
   break;
  case 4:
   if(en)
   {
    PortDebug[8]++;
    (*(volatile Ifx_P_IOCR0 *)0xF003B110u).B.PC3 = ((0x10U) | (0x00U));
    (*(volatile Ifx_P_IOCR4 *)0xF003B414u).B.PC4 = ((0x10U) | (0x00U));
   }
   else
   {
    PortDebug[9]++;
    (*(volatile Ifx_P_IOCR0 *)0xF003B110u).B.PC3 = (0x00U);
    (*(volatile Ifx_P_IOCR4 *)0xF003B414u).B.PC4 = (0x00U);
   }
   (*(volatile Ifx_P_OMSR *)0xF003B390u).B.PS3 = 1;
   (*(volatile Ifx_P_OMSR *)0xF003C390u).B.PS1 = 1;
   (*(volatile Ifx_P_OMSR *)0xF003D390u).B.PS9 = 1;
   break;
  default:
   break;
 }
}
void SBC_Triger100us(void)
{

   if (WdgCnt >= (70u))
   {
    WdgCnt = 0;
   }
   else
      {
        WdgCnt++;
      }

 if(WdgEnable)
 {
  if (WdgCnt == 0)
  {
   (*(volatile Ifx_P_OMSR *)0xF003A290u).B.PS8 = 1;
  }
  else if (WdgCnt == (35u))
  {
   (*(volatile Ifx_P_OMCR *)0xF003A294u).B.PCL8 = 1;
  }
 }
}

void ORU_LatchTest1ms(void)
{
 if((*(volatile Ifx_P_IN *)0xF003B124u).B.P10 == 1)
 {
  (*(volatile Ifx_P_OMSR *)0xF003B590u).B.PS5 = 1;
 }
 else
 {
  (*(volatile Ifx_P_OMCR *)0xF003B594u).B.PCL5 = 1;
 }
}

void Port_OTP_AutoDiag10ms(void)
{
 if (PortOtpAutoDiagEn && !PortOtpAutoDiagEnLast )
 {
  (*(volatile Ifx_P_OMSR *)0xF003B190u).B.PS8 = 1;
 }
 else if((*(volatile Ifx_P_IN *)0xF003B124u).B.P8)
  {
   PortAutoCnt++;
   if(PortAutoCnt > 29)
   {
    (*(volatile Ifx_P_OMCR *)0xF003B194u).B.PCL8 = 1;
    PortAutoCnt = 0;
   }
  }
 else if(!PortOtpAutoDiagEn)
 {
  (*(volatile Ifx_P_OMCR *)0xF003B194u).B.PCL8 = 1;
 }
 PortOtpAutoDiagEnLast = PortOtpAutoDiagEn;
}

void Port_AuxPower_EnDis10ms(void)
{
 if( HsfbDiag_ErrCode2.IproFet_High==1 || (PortDisHSK && !(StateStatus.HsfbEn)))
 {
  (*(volatile Ifx_P_OMSR *)0xF003C190u).B.PS2 = 1;
 }
 else
 {
  (*(volatile Ifx_P_OMCR *)0xF003C194u).B.PCL2 = 1;
 }
}


# 1 "../30_Bsw/Mpu/MPU_MemMap.h" 1
# 255 "../30_Bsw/Mpu/MPU_MemMap.h"
#pragma section
# 476 "../30_Bsw/Mcal/Port/Port.c" 2
