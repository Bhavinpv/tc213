# 1 "../30_Bsw/Smu/Config/Smu_PBCfg.c"
# 1 "S:\\20_Make//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "../30_Bsw/Smu/Config/Smu_PBCfg.c"
# 45 "../30_Bsw/Smu/Config/Smu_PBCfg.c"
# 1 "../30_Bsw/Smu/Config/Smu_Cfg.h" 1
# 40 "../30_Bsw/Smu/Config/Smu_Cfg.h"
# 1 "../30_Bsw/Smu/Static/Smu.h" 1
# 45 "../30_Bsw/Smu/Static/Smu.h"
# 1 "../30_Bsw/Smu/Config/Smu_Cfg.h" 1
# 46 "../30_Bsw/Smu/Static/Smu.h" 2
# 1 "../30_Bsw/Common/Std_Types.h" 1
# 79 "../30_Bsw/Common/Std_Types.h"
# 1 "../30_Bsw/STL_common/Compiler.h" 1
# 47 "../30_Bsw/STL_common/Compiler.h"
# 1 "../30_Bsw/STL_common/Compiler_Cfg.h" 1
# 48 "../30_Bsw/STL_common/Compiler.h" 2
# 80 "../30_Bsw/Common/Std_Types.h" 2
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
# 81 "../30_Bsw/Common/Std_Types.h" 2
# 103 "../30_Bsw/Common/Std_Types.h"
  typedef unsigned char StatusType;
# 113 "../30_Bsw/Common/Std_Types.h"
typedef uint8 Std_ReturnType;


typedef struct
{
   uint16 vendorID;
   uint16 moduleID;
   uint8 sw_major_version;
   uint8 sw_minor_version;
   uint8 sw_patch_version;
} Std_VersionInfoType;
# 47 "../30_Bsw/Smu/Static/Smu.h" 2
# 1 "../30_Bsw/STL_common/Mcal_Options.h" 1
# 48 "../30_Bsw/Smu/Static/Smu.h" 2
# 1 "../30_Bsw/STL_common/Mcal_Compiler.h" 1
# 51 "../30_Bsw/STL_common/Mcal_Compiler.h"
# 1 "../30_Bsw/STL_common/intrinsics.h" 1
# 88 "../30_Bsw/STL_common/intrinsics.h"
static __inline__ __attribute__((__always_inline__))
void _bisr (const unsigned __irq_level)
{
  __asm__ volatile ("bisr %0" :: "i" (__irq_level) : "memory");
}
# 110 "../30_Bsw/STL_common/intrinsics.h"
static __inline__ __attribute__((__always_inline__))
unsigned _mfcr (const unsigned __regaddr)
{
  unsigned __res;
  __asm__ volatile ("mfcr %0, LO:%1"
                    : "=d" (__res) : "i" (__regaddr) : "memory");
  return __res;
}
# 134 "../30_Bsw/STL_common/intrinsics.h"
static __inline__ __attribute__((__always_inline__))
void _mtcr (const unsigned __regaddr, const unsigned __val)
{
  __asm__ volatile ("mtcr LO:%0, %1"
                    :: "i" (__regaddr), "d" (__val) : "memory");
}
# 152 "../30_Bsw/STL_common/intrinsics.h"
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
# 227 "../30_Bsw/STL_common/intrinsics.h"
static __inline__ __attribute__((__always_inline__))
void _restore (const int irqs_on)
{

  __asm__ volatile ("restore %0" :: "d" (irqs_on) : "memory");






}
# 52 "../30_Bsw/STL_common/Mcal_Compiler.h" 2
# 60 "../30_Bsw/STL_common/Mcal_Compiler.h"
# 1 "../30_Bsw/STL_common/Mcal_Options.h" 1
# 61 "../30_Bsw/STL_common/Mcal_Compiler.h" 2
# 385 "../30_Bsw/STL_common/Mcal_Compiler.h"
extern __inline__ unsigned __crc32( unsigned b, unsigned a )
 __attribute__ ((always_inline));






extern __inline__ unsigned __crc32( unsigned b, unsigned a ) {
  unsigned res;





  __asm__ volatile("crc32 %0, %2, %1" :"=d"(res) : "d"(b), "d"(a): "memory");
    return res;
}
# 723 "../30_Bsw/STL_common/Mcal_Compiler.h"
extern __inline__ unsigned __extru(unsigned a, unsigned p, unsigned w) {
  unsigned res;
  __asm__ volatile ("mov %%d14,%2  \n                     mov %%d15,%3  \n                     extr.u %0,%1,%%e14"


                    : "=d" (res) : "d" (a), "d" (p), "d" (w):"d14","d15");
  return res;
}
# 792 "../30_Bsw/STL_common/Mcal_Compiler.h"
extern __inline__ unsigned int cmpswap_w (unsigned int volatile *address,
           unsigned int value, unsigned int condition)
{
  __extension__ unsigned long long reg64
    = value | (unsigned long long) condition << 32;

  __asm__ __volatile__ ("cmpswap.w [%[addr]]0, %A[reg]"
                        : [reg] "+d" (reg64)
                        : [addr] "a" (address)
                        : "memory");
    return reg64;
}
# 1392 "../30_Bsw/STL_common/Mcal_Compiler.h"
extern const uint32 FLS_AC_WRITE_SOURCE_START;

extern const uint32 FLS_AC_WRITE_SOURCE_END;

extern const uint32 FLS_AC_ERASE_SOURCE_START;

extern const uint32 FLS_AC_ERASE_SOURCE_END;
# 49 "../30_Bsw/Smu/Static/Smu.h" 2
# 158 "../30_Bsw/Smu/Static/Smu.h"
typedef uint8 Smu_StateType;


typedef struct Smu_ConfigType
{
  uint32 FSPCfg;
  uint32 AGCCfg;
  uint32 RTCCfg;
  uint32 RTAC0Cfg;
  uint32 RTAC1Cfg;
  uint32 AlarmConfig[(21U)];
  uint32 AlarmFspConfig[(7U)];
}Smu_ConfigType;
# 180 "../30_Bsw/Smu/Static/Smu.h"
# 1 "../30_Bsw/STL_common/Ifx_MemMap.h" 1
# 2403 "../30_Bsw/STL_common/Ifx_MemMap.h"
#pragma section ".rodata.CONFIGURATION_PB" a
# 181 "../30_Bsw/Smu/Static/Smu.h" 2




extern const Smu_ConfigType Smu_ConfigRoot[];


# 1 "../30_Bsw/STL_common/Ifx_MemMap.h" 1
# 2414 "../30_Bsw/STL_common/Ifx_MemMap.h"
#pragma section
# 189 "../30_Bsw/Smu/Static/Smu.h" 2
# 202 "../30_Bsw/Smu/Static/Smu.h"
# 1 "../30_Bsw/STL_common/Ifx_MemMap.h" 1
# 2642 "../30_Bsw/STL_common/Ifx_MemMap.h"
#pragma section ".text.STL_ASIL_CODE" ax 4
# 203 "../30_Bsw/Smu/Static/Smu.h" 2
# 240 "../30_Bsw/Smu/Static/Smu.h"
extern Std_ReturnType Smu_ClearAlarmStatus
(
  const uint8 AlarmGroup,
  const uint8 AlarmPos
);
# 279 "../30_Bsw/Smu/Static/Smu.h"
extern Std_ReturnType Smu_SetAlarmStatus
(
  const uint8 AlarmGroup,
  const uint8 AlarmPos
);
# 314 "../30_Bsw/Smu/Static/Smu.h"
extern Std_ReturnType Smu_GetAlarmStatus
(
  const uint8 AlarmGroup,
  uint32* const AlarmStatus
);
# 350 "../30_Bsw/Smu/Static/Smu.h"
extern Std_ReturnType Smu_GetAlarmDebugStatus
(
  const uint8 AlarmGroup,
  uint32* const AlarmStatus
);
# 383 "../30_Bsw/Smu/Static/Smu.h"
extern Std_ReturnType Smu_SetupErrorPin(void);
# 409 "../30_Bsw/Smu/Static/Smu.h"
extern Std_ReturnType Smu_ReleaseErrorPin(void);
# 440 "../30_Bsw/Smu/Static/Smu.h"
extern Std_ReturnType Smu_ReleaseFSP(void);
# 469 "../30_Bsw/Smu/Static/Smu.h"
extern Std_ReturnType Smu_ActivateFSP(void);
# 500 "../30_Bsw/Smu/Static/Smu.h"
extern Std_ReturnType Smu_RTStop(const uint8 TimerNum );
# 536 "../30_Bsw/Smu/Static/Smu.h"
extern Std_ReturnType Smu_GetRTMissedEvent
(
  const uint8 TimerNum,
  boolean* const EventMissed
);
# 567 "../30_Bsw/Smu/Static/Smu.h"
extern Smu_StateType Smu_GetSmuState(void);



# 1 "../30_Bsw/STL_common/Ifx_MemMap.h" 1
# 2654 "../30_Bsw/STL_common/Ifx_MemMap.h"
#pragma section
# 572 "../30_Bsw/Smu/Static/Smu.h" 2
# 41 "../30_Bsw/Smu/Config/Smu_Cfg.h" 2
# 46 "../30_Bsw/Smu/Config/Smu_PBCfg.c" 2
# 80 "../30_Bsw/Smu/Config/Smu_PBCfg.c"
# 1 "../30_Bsw/STL_common/Ifx_MemMap.h" 1
# 2403 "../30_Bsw/STL_common/Ifx_MemMap.h"
#pragma section ".rodata.CONFIGURATION_PB" a
# 81 "../30_Bsw/Smu/Config/Smu_PBCfg.c" 2






const Smu_ConfigType Smu_ConfigRoot[2] =
{
  {

    (uint32)0x400058U,


    (uint32)0x20000000U,


    (uint32)0x3fff00U,


    (uint32)0x0U,


    (uint32)0x0U,


    {
      0x0U,0x0U,0x0U,
      0x0U,0x0U,0x0U,
      0x0U,0x0U,0x0U,
      0x0U,0x0U,0x0U,
      0x0U,0x0U,0x0U,
      0x0U,0x0U,0x0U,
      0x0U,0x0U,0x0U
    },

    {
      0x0U,
      0x0U,
      0x0U,
      0x0U,
      0x0U,
      0x0U,
      0x0U
    }
  },
  {

    (uint32)0x400058U,


    (uint32)0x20000000U,


    (uint32)0x3fff00U,


    (uint32)0x0U,


    (uint32)0x0U,


    {
      0xd199bU,0x0U,0xd199bU,
      0x0U,0x0U,0x0U,
      0x2e001b0U,0x0U,0x2e001b0U,
      0xc80799eaU,0x0U,0xc80799eaU,
      0x60066U,0x0U,0x60066U,
      0x0U,0x0U,0x0U,
      0x0U,0x0U,0x0U
    },

    {
      0xd199bU,
      0x0U,
      0x2e001b0U,
      0xc80799eaU,
      0x60066U,
      0x1U,
      0x0U
    }
  }
};


# 1 "../30_Bsw/STL_common/Ifx_MemMap.h" 1
# 2414 "../30_Bsw/STL_common/Ifx_MemMap.h"
#pragma section
# 167 "../30_Bsw/Smu/Config/Smu_PBCfg.c" 2
