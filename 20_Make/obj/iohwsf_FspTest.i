# 1 "../30_Bsw/iohw/Static/iohwsf_FspTest.c"
# 1 "S:\\20_Make//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "../30_Bsw/iohw/Static/iohwsf_FspTest.c"
# 24 "../30_Bsw/iohw/Static/iohwsf_FspTest.c"
# 1 "../30_Bsw/iohw/Static/iohwsf_FSPTEST.h" 1
# 28 "../30_Bsw/iohw/Static/iohwsf_FSPTEST.h"
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
# 29 "../30_Bsw/iohw/Static/iohwsf_FSPTEST.h" 2
# 1 "../30_Bsw/STL_common/Sl_ErrorCodes.h" 1
# 42 "../30_Bsw/STL_common/Sl_ErrorCodes.h"
# 1 "../30_Bsw/Common/Platform_Types.h" 1
# 43 "../30_Bsw/STL_common/Sl_ErrorCodes.h" 2
# 1 "../30_Bsw/STL_common/Sl_Timeout.h" 1
# 44 "../30_Bsw/STL_common/Sl_ErrorCodes.h" 2
# 69 "../30_Bsw/STL_common/Sl_ErrorCodes.h"
typedef enum _Sl_GeneralErrorId
{
  EID_DO_NOT_USE = 0x00,
  EID_GENERALHWFAILURE = 0x01,
  EID_INVPARAMERR = 0x02,
  EID_TIMEOUTERR = 0x03,
  EID_CONSISTENCYERR = 0x04,
  EID_DATAMISMATCHERR = 0x05,
  EID_UNEXPTRAPERR = 0x06,
  EID_CONFIGERR = 0x07,
  EID_ALIGNMENTERR = 0x08,
  EID_RESOURCE = 0x09,
  EID_TESTNOTEXECUTED = 0x0A,
  EID_TRAPERROR = 0x0B,


  EID_STATEERR = 0x0C,
  EID_ALMSTSERR= 0x0D,
  EID_GETALMSTSERR = 0x0E,
  EID_CLRALMSTSERR = 0x0F,
  EID_GETALMACTIONERR = 0x10,
  EID_SETALMACTIONERR = 0x11,
  EID_ALMSTSSBE = 0x12,
  EID_ALMSTSDBE = 0x13,
  EID_ALMSTSMBE = 0x14,
  EID_ALMSTSADDR = 0x15,
  EID_ALMSTSECCMON = 0x16,
  EID_ALMSTSEDCCMP = 0x17,


  EID_DATAINCONSISTANT = 0x18,
  EID_DATACORRUPTED = 0x19,

  EID_SUCCESS=0xFFU
}Sl_GeneralErrorId;




typedef enum
{
                            TEST_ID_GENERIC=0U,
                            TEST_ID_CPU_MPU_TST,
                            TEST_ID_SFR_CMP_TST,
                            TEST_ID_SFR_CRC_TST,
                            TEST_ID_SRI_TST,
                            TEST_ID_OSC_WDG_TST,
                            TEST_ID_BUS_MPU_LFM_TST,
                            TEST_ID_TRAP_TST,
                            TEST_ID_UNUSED_TST1,
                            TEST_ID_REG_ACC_PROT_TST,
                            TEST_ID_PMU_ECC_EDC_TST,
                            TEST_ID_CPU_WDG_TST,
                            TEST_ID_SAFETY_WDG_TST,
                            TEST_ID_VLTM_TST,
                            TEST_ID_CLKM_TST,
                            TEST_ID_CPUSBST_E_TST,
                            TEST_ID_CPUSBST_P_TST,
                            TEST_ID_SMU_TST_RT,
                            TEST_ID_SMU_TST_IRQ,
                            TEST_ID_UNUSED_TST2,
                            TEST_ID_SMU_TST_NMI,
                            TEST_ID_SMU_TST_IDLE,
                            TEST_ID_SRAMECC_TST,
                            TEST_ID_IR_TST,
                            TEST_ID_LOCK_STEP_TST,
                            TEST_ID_LMU_REG_ACC_PROT_TST,
                            TEST_ID_BUS_LMU_MPU_LFM_TST,
                            TEST_ID_MBIST_TST,
                            TEST_ID_SPB_TST_RAP,
                            TEST_ID_SPB_TST_TIMEOUT,
                            TEST_ID_FCE_TST,
                            TEST_ID_DMA_CRC_TST,
                            TEST_ID_DMA_TIMESTAMP_TST,
                            TEST_ID_DMA_SAFELINKEDLIST_TST,
                            TEST_ID_IOM_TST,
                            TEST_ID_SMU_TST_RST,
                            TEST_ID_PFLASH_MON_TST,
                            TEST_ID_SFF_TST,
                            TEST_ID_PHLSRAM_TST
} Sl_TstIDType;
# 675 "../30_Bsw/STL_common/Sl_ErrorCodes.h"
typedef uint32 Sl_TstRsltType;




typedef uint32 Sl_ErrorTstTypeIdType;
typedef uint32 Sl_ErrorGroupIdType;
typedef uint32 Sl_ErrorIdType;

typedef uint32 Sl_ParamSetType;
# 30 "../30_Bsw/iohw/Static/iohwsf_FSPTEST.h" 2
# 55 "../30_Bsw/iohw/Static/iohwsf_FSPTEST.h"
extern void IOHWSF_FSPTEST(void);
# 25 "../30_Bsw/iohw/Static/iohwsf_FspTest.c" 2
# 1 "../30_Bsw/Smu/Static/Smu.h" 1
# 45 "../30_Bsw/Smu/Static/Smu.h"
# 1 "../30_Bsw/Smu/Config/Smu_Cfg.h" 1
# 40 "../30_Bsw/Smu/Config/Smu_Cfg.h"
# 1 "../30_Bsw/Smu/Static/Smu.h" 1
# 41 "../30_Bsw/Smu/Config/Smu_Cfg.h" 2
# 46 "../30_Bsw/Smu/Static/Smu.h" 2

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
# 26 "../30_Bsw/iohw/Static/iohwsf_FspTest.c" 2
# 1 "../30_Bsw/Mcal/Qspi/Qspi.h" 1
# 24 "../30_Bsw/Mcal/Qspi/Qspi.h"
# 1 "../30_Bsw/Mcal/Qspi/Qspi_cfg.h" 1
# 22 "../30_Bsw/Mcal/Qspi/Qspi_cfg.h"
# 1 "../30_Bsw/Common/TC21x/IfxQspi_reg.h" 1
# 45 "../30_Bsw/Common/TC21x/IfxQspi_reg.h"
# 1 "../30_Bsw/Common/TC21x/IfxQspi_regdef.h" 1
# 39 "../30_Bsw/Common/TC21x/IfxQspi_regdef.h"
# 1 "../30_Bsw/Common/TC21x/Ifx_TypesReg.h" 1
# 40 "../30_Bsw/Common/TC21x/IfxQspi_regdef.h" 2





typedef struct _Ifx_QSPI_ACCEN0_Bits
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
} Ifx_QSPI_ACCEN0_Bits;


typedef struct _Ifx_QSPI_ACCEN1_Bits
{
    unsigned int reserved_0 : 32;
} Ifx_QSPI_ACCEN1_Bits;


typedef struct _Ifx_QSPI_BACON_Bits
{
    unsigned int LAST : 1;
    unsigned int IPRE : 3;
    unsigned int IDLE : 3;
    unsigned int LPRE : 3;
    unsigned int LEAD : 3;
    unsigned int TPRE : 3;
    unsigned int TRAIL : 3;
    unsigned int PARTYP : 1;
    unsigned int UINT : 1;
    unsigned int MSB : 1;
    unsigned int BYTE : 1;
    unsigned int DL : 5;
    unsigned int CS : 4;
} Ifx_QSPI_BACON_Bits;


typedef struct _Ifx_QSPI_BACONENTRY_Bits
{
    unsigned int E : 32;
} Ifx_QSPI_BACONENTRY_Bits;


typedef struct _Ifx_QSPI_CAPCON_Bits
{
    unsigned int CAP : 15;
    unsigned int OVF : 1;
    unsigned int EDGECON : 2;
    unsigned int INS : 2;
    unsigned int EN : 1;
    unsigned int reserved_21 : 7;
    unsigned int CAPC : 1;
    unsigned int CAPS : 1;
    unsigned int CAPF : 1;
    unsigned int CAPSEL : 1;
} Ifx_QSPI_CAPCON_Bits;


typedef struct _Ifx_QSPI_CLC_Bits
{
    unsigned int DISR : 1;
    unsigned int DISS : 1;
    unsigned int reserved_2 : 1;
    unsigned int EDIS : 1;
    unsigned int reserved_4 : 28;
} Ifx_QSPI_CLC_Bits;


typedef struct _Ifx_QSPI_DATAENTRY_Bits
{
    unsigned int E : 32;
} Ifx_QSPI_DATAENTRY_Bits;


typedef struct _Ifx_QSPI_ECON_Bits
{
    unsigned int Q : 6;
    unsigned int A : 2;
    unsigned int B : 2;
    unsigned int C : 2;
    unsigned int CPH : 1;
    unsigned int CPOL : 1;
    unsigned int PAREN : 1;
    unsigned int reserved_15 : 15;
    unsigned int BE : 2;
} Ifx_QSPI_ECON_Bits;


typedef struct _Ifx_QSPI_FLAGSCLEAR_Bits
{
    unsigned int ERRORCLEARS : 9;
    unsigned int TXC : 1;
    unsigned int RXC : 1;
    unsigned int PT1C : 1;
    unsigned int PT2C : 1;
    unsigned int reserved_13 : 2;
    unsigned int USRC : 1;
    unsigned int reserved_16 : 16;
} Ifx_QSPI_FLAGSCLEAR_Bits;


typedef struct _Ifx_QSPI_GLOBALCON1_Bits
{
    unsigned int ERRORENS : 9;
    unsigned int TXEN : 1;
    unsigned int RXEN : 1;
    unsigned int PT1EN : 1;
    unsigned int PT2EN : 1;
    unsigned int reserved_13 : 2;
    unsigned int USREN : 1;
    unsigned int TXFIFOINT : 2;
    unsigned int RXFIFOINT : 2;
    unsigned int PT1 : 3;
    unsigned int PT2 : 3;
    unsigned int TXFM : 2;
    unsigned int RXFM : 2;
    unsigned int reserved_30 : 2;
} Ifx_QSPI_GLOBALCON1_Bits;


typedef struct _Ifx_QSPI_GLOBALCON_Bits
{
    unsigned int TQ : 8;
    unsigned int reserved_8 : 1;
    unsigned int SI : 1;
    unsigned int EXPECT : 4;
    unsigned int LB : 1;
    unsigned int DEL0 : 1;
    unsigned int STROBE : 5;
    unsigned int SRF : 1;
    unsigned int STIP : 1;
    unsigned int reserved_23 : 1;
    unsigned int EN : 1;
    unsigned int MS : 2;
    unsigned int AREN : 1;
    unsigned int RESETS : 4;
} Ifx_QSPI_GLOBALCON_Bits;


typedef struct _Ifx_QSPI_ID_Bits
{
    unsigned int MODREV : 8;
    unsigned int MODTYPE : 8;
    unsigned int MODNUMBER : 16;
} Ifx_QSPI_ID_Bits;


typedef struct _Ifx_QSPI_KRST0_Bits
{
    unsigned int RST : 1;
    unsigned int RSTSTAT : 1;
    unsigned int reserved_2 : 30;
} Ifx_QSPI_KRST0_Bits;


typedef struct _Ifx_QSPI_KRST1_Bits
{
    unsigned int RST : 1;
    unsigned int reserved_1 : 31;
} Ifx_QSPI_KRST1_Bits;


typedef struct _Ifx_QSPI_KRSTCLR_Bits
{
    unsigned int CLR : 1;
    unsigned int reserved_1 : 31;
} Ifx_QSPI_KRSTCLR_Bits;


typedef struct _Ifx_QSPI_MIXENTRY_Bits
{
    unsigned int E : 32;
} Ifx_QSPI_MIXENTRY_Bits;


typedef struct _Ifx_QSPI_OCS_Bits
{
    unsigned int reserved_0 : 24;
    unsigned int SUS : 4;
    unsigned int SUS_P : 1;
    unsigned int SUSSTA : 1;
    unsigned int reserved_30 : 2;
} Ifx_QSPI_OCS_Bits;


typedef struct _Ifx_QSPI_PISEL_Bits
{
    unsigned int MRIS : 3;
    unsigned int reserved_3 : 1;
    unsigned int SRIS : 3;
    unsigned int reserved_7 : 1;
    unsigned int SCIS : 3;
    unsigned int reserved_11 : 1;
    unsigned int SLSIS : 3;
    unsigned int reserved_15 : 17;
} Ifx_QSPI_PISEL_Bits;


typedef struct _Ifx_QSPI_RXEXIT_Bits
{
    unsigned int E : 32;
} Ifx_QSPI_RXEXIT_Bits;


typedef struct _Ifx_QSPI_RXEXITD_Bits
{
    unsigned int E : 32;
} Ifx_QSPI_RXEXITD_Bits;


typedef struct _Ifx_QSPI_SSOC_Bits
{
    unsigned int AOL : 16;
    unsigned int OEN : 16;
} Ifx_QSPI_SSOC_Bits;


typedef struct _Ifx_QSPI_STATUS1_Bits
{
    unsigned int BITCOUNT : 8;
    unsigned int reserved_8 : 20;
    unsigned int BRDEN : 1;
    unsigned int BRD : 1;
    unsigned int SPDEN : 1;
    unsigned int SPD : 1;
} Ifx_QSPI_STATUS1_Bits;


typedef struct _Ifx_QSPI_STATUS_Bits
{
    unsigned int ERRORFLAGS : 9;
    unsigned int TXF : 1;
    unsigned int RXF : 1;
    unsigned int PT1F : 1;
    unsigned int PT2F : 1;
    unsigned int reserved_13 : 2;
    unsigned int USRF : 1;
    unsigned int TXFIFOLEVEL : 3;
    unsigned int RXFIFOLEVEL : 3;
    unsigned int SLAVESEL : 4;
    unsigned int RPV : 1;
    unsigned int TPV : 1;
    unsigned int PHASE : 4;
} Ifx_QSPI_STATUS_Bits;


typedef struct _Ifx_QSPI_XXLCON_Bits
{
    unsigned int XDL : 16;
    unsigned int BYTECOUNT : 16;
} Ifx_QSPI_XXLCON_Bits;







typedef union
{
    unsigned int U;
    signed int I;
    Ifx_QSPI_ACCEN0_Bits B;
} Ifx_QSPI_ACCEN0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_QSPI_ACCEN1_Bits B;
} Ifx_QSPI_ACCEN1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_QSPI_BACON_Bits B;
} Ifx_QSPI_BACON;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_QSPI_BACONENTRY_Bits B;
} Ifx_QSPI_BACONENTRY;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_QSPI_CAPCON_Bits B;
} Ifx_QSPI_CAPCON;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_QSPI_CLC_Bits B;
} Ifx_QSPI_CLC;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_QSPI_DATAENTRY_Bits B;
} Ifx_QSPI_DATAENTRY;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_QSPI_ECON_Bits B;
} Ifx_QSPI_ECON;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_QSPI_FLAGSCLEAR_Bits B;
} Ifx_QSPI_FLAGSCLEAR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_QSPI_GLOBALCON_Bits B;
} Ifx_QSPI_GLOBALCON;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_QSPI_GLOBALCON1_Bits B;
} Ifx_QSPI_GLOBALCON1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_QSPI_ID_Bits B;
} Ifx_QSPI_ID;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_QSPI_KRST0_Bits B;
} Ifx_QSPI_KRST0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_QSPI_KRST1_Bits B;
} Ifx_QSPI_KRST1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_QSPI_KRSTCLR_Bits B;
} Ifx_QSPI_KRSTCLR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_QSPI_MIXENTRY_Bits B;
} Ifx_QSPI_MIXENTRY;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_QSPI_OCS_Bits B;
} Ifx_QSPI_OCS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_QSPI_PISEL_Bits B;
} Ifx_QSPI_PISEL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_QSPI_RXEXIT_Bits B;
} Ifx_QSPI_RXEXIT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_QSPI_RXEXITD_Bits B;
} Ifx_QSPI_RXEXITD;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_QSPI_SSOC_Bits B;
} Ifx_QSPI_SSOC;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_QSPI_STATUS_Bits B;
} Ifx_QSPI_STATUS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_QSPI_STATUS1_Bits B;
} Ifx_QSPI_STATUS1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_QSPI_XXLCON_Bits B;
} Ifx_QSPI_XXLCON;
# 527 "../30_Bsw/Common/TC21x/IfxQspi_regdef.h"
typedef volatile struct _Ifx_QSPI
{
    Ifx_QSPI_CLC CLC;
    Ifx_QSPI_PISEL PISEL;
    Ifx_QSPI_ID ID;
    unsigned char reserved_C[4];
    Ifx_QSPI_GLOBALCON GLOBALCON;
    Ifx_QSPI_GLOBALCON1 GLOBALCON1;
    Ifx_QSPI_BACON BACON;
    unsigned char reserved_1C[4];
    Ifx_QSPI_ECON ECON[8];
    Ifx_QSPI_STATUS STATUS;
    Ifx_QSPI_STATUS1 STATUS1;
    Ifx_QSPI_SSOC SSOC;
    unsigned char reserved_4C[8];
    Ifx_QSPI_FLAGSCLEAR FLAGSCLEAR;
    Ifx_QSPI_XXLCON XXLCON;
    Ifx_QSPI_MIXENTRY MIXENTRY;
    Ifx_QSPI_BACONENTRY BACONENTRY;
    Ifx_QSPI_DATAENTRY DATAENTRY[8];
    unsigned char reserved_84[12];
    Ifx_QSPI_RXEXIT RXEXIT;
    Ifx_QSPI_RXEXITD RXEXITD;
    unsigned char reserved_98[8];
    Ifx_QSPI_CAPCON CAPCON;
    unsigned char reserved_A4[68];
    Ifx_QSPI_OCS OCS;
    Ifx_QSPI_KRSTCLR KRSTCLR;
    Ifx_QSPI_KRST1 KRST1;
    Ifx_QSPI_KRST0 KRST0;
    Ifx_QSPI_ACCEN1 ACCEN1;
    Ifx_QSPI_ACCEN0 ACCEN0;
} Ifx_QSPI;
# 46 "../30_Bsw/Common/TC21x/IfxQspi_reg.h" 2
# 23 "../30_Bsw/Mcal/Qspi/Qspi_cfg.h" 2
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
# 24 "../30_Bsw/Mcal/Qspi/Qspi_cfg.h" 2
# 53 "../30_Bsw/Mcal/Qspi/Qspi_cfg.h"
extern void Qspi_cfg(void);
# 25 "../30_Bsw/Mcal/Qspi/Qspi.h" 2
# 142 "../30_Bsw/Mcal/Qspi/Qspi.h"
typedef struct QSPI_S_ERROR_BIT{

 bit Unlock : 1;
 bit LockUp : 1;
 bit Config : 1;
 bit ReadStatus : 1;
 bit MPSConfig : 1;
 bit GotoNormal : 1;
 bit ParityCheck : 1;

 bit ABISTFin : 1;
 bit ABISTSS : 1;
 bit ABISTInt : 1;
 bit WWDEnCnt : 1;

 bit NormalState : 1;
 bit QCOStatus : 1;
 bit QVRStatus : 1;

 u16 Reserved1 : 2;
 u16 Reserved2 : 16;
} QSPI_S_ERROR_BIT;

typedef union QSPI_S_ERROR{
 u32 all;
 QSPI_S_ERROR_BIT bit;
} QSPI_S_ERROR;

typedef struct QSPI_S_TEST_CMD_BIT{
 bit Parity :1;
 bit Data :8;
 bit Address :6;
 bit Dir :1;
} QSPI_S_TEST_CMD_BIT;

typedef union QSPI_S_TEST_CMD{
 u16 all;
 QSPI_S_TEST_CMD_BIT bit;
} QSPI_S_TEST_CMD;

typedef struct QSPI_S_TEST{
 u16 Enable;
 QSPI_S_TEST_CMD TxData;
 QSPI_S_TEST_CMD RxData;
} QSPI_S_TEST;

typedef enum
{
  QSPI_TEST_INIT = 0u,
  QSPI_TEST_STARTED,
  QSPI_SBC_STATUS_READ,
  QSPI_SBC_IN_NORMAL_STATE,
  QSPI_SBC_ABIST_COMPLETED,
  QSPI_SBC_NORMAL_AFTER_ABIST,
  QSPI_SBC_WWDTEST_RUNNING,
  QSPI_SBC_WWDTEST_COMPLETED,
  QSPI_TEST_FINISHED
} QSPI_E_TEST_STS;

typedef enum
{
  QSPI_WWDT_INIT = 0u,
  QSPI_WWDT_RUN_TIMER0,
  QSPI_WWDT_RD_ERRCTR,
  QSPI_WWDT_DIS_WDGTRIG,
  QSPI_WWDT_RUN_TIMER1,
  QSPI_WWDT_EN_WDGTRIG,
  QSPI_WWDT_RUN_TIMER2,
  QSPI_WWDT_SUCCESS,
  QSPI_WWDT_RETRY_TEST,
  QSPI_WWDT_FAULT_DETECTED
} QSPI_E_WWDT_STS;

typedef enum
{
  QSPI_ABIST_START = 0,
  QSPI_ABIST_SST_CHK_RETRY,
  QSPI_ABIST_SST_CHK_STATUS,
  QSPI_ABIST_INTT_START,
  QSPI_ABIST_INTT_CHK_RETRY,
  QSPI_ABIST_INTT_CHK_STATUS,
  QSPI_ABIST_SUCCESS,
  QSPI_ABIST_FAILED
} QSPI_E_ABIST_STS;


extern QSPI_S_ERROR Qspi_SBCError;
extern QSPI_E_TEST_STS Qspi_StrtUpTst_Sts;

extern void Qspi_Init(void);
extern void Qspi_StartUp(void);
extern void Qspi_SBC_WWDTest(void);
extern void Qspi_SBC_Check10ms(void);
extern void Qspi_TestCmd_Calc(QSPI_S_TEST_CMD *v);
extern void Qspi_Cmd_Test10ms(QSPI_S_TEST *v);
extern void Qspi_SBC_Unlock(void);
extern void Qspi_SBC_Lockup(void);
extern void Qspi_SBC_TxRxData(u16 TxData,u16 *RxData);
# 27 "../30_Bsw/iohw/Static/iohwsf_FspTest.c" 2
# 1 "../30_Bsw/iohw/Static/iohwsf.h" 1
# 35 "../30_Bsw/iohw/Static/iohwsf.h"
typedef enum
{
  IOHWSF_E_SSCHECK,
  IOHWSF_E_SMU_CONFIGURATION_CHECK,
  IOHWSF_E_ISR_UNHANDLED_ISR,
  IOHWSF_E_ISR_100U_SOURCE_ERR,
  IOHWSF_E_ISR_1M_SOURCE_ERR,
  IOHWSF_E_ISR_10M_SOURCE_ERR,
  IOHWSF_E_SAFETLIB_INIT,
  IOHWSF_E_SAFETLIB_PRE_INIT,
  IOHWSF_E_SAFETLIB_PRERUN_PREHOOK,
  IOHWSF_E_SAFETLIB_PRERUN_TEST_FAIL,
  IOHWSF_E_SAFETLIB_PRERUN_POSTHOOK,
  IOHWSF_E_SAFETLIB_RUN_TEST_FAIL,
  IOHWSF_E_SAFETLIB_SRC_REG_CHECK_FAIL,
  IOHWSF_E_MCAL_DIV_INCONSISTENCY,
  IOHWSF_E_MCAL_SPINLOCK_TIMEOUT,
  IOHWSF_E_TRAP_VIRTUAL_ADDRESS_FILL,
  IOHWSF_E_TRAP_VIRTUAL_ADDRESS_PROTECTION,
  IOHWSF_E_TRAP_PRIVILEGE_INSTRUCTION,
  IOHWSF_E_TRAP_MEMORY_PROTECTION_READ,
  IOHWSF_E_TRAP_MEMORY_PROTECTION_WRITE,
  IOHWSF_E_TRAP_MEMORY_PROTECTION_EXECUTION,
  IOHWSF_E_TRAP_PROTECTION_PERIPHERAL_ACCESS,
  IOHWSF_E_TRAP_MEMORY_PROTECTION_NULL_ADDRESS,
  IOHWSF_E_TRAP_GLOBAL_REGISTER_WRITE_PROTECTION,
  IOHWSF_E_TRAP_ILLEGAL_OPCODE,
  IOHWSF_E_TRAP_UNIMPLEMENTED_OPCODE,
  IOHWSF_E_TRAP_INVALID_OPERAND_SPECIFICATION,
  IOHWSF_E_TRAP_DATA_ADDRESS_ALIGNMENT,
  IOHWSF_E_TRAP_INVALID_LOCAL_MEMORY_ADDRESS,
  IOHWSF_E_TRAP_FREE_CONTEXT_LIST_DEPLETION,
  IOHWSF_E_TRAP_CALL_DEPTH_OVERFLOW,
  IOHWSF_E_TRAP_CALL_DEPTH_UNDERFLOW,
  IOHWSF_E_TRAP_FREE_CONTEXT_LIST_UNDERFLOW,
  IOHWSF_E_TRAP_CALL_STACK_UNDERFLOW,
  IOHWSF_E_TRAP_CONTEXT_TYPE,
  IOHWSF_E_TRAP_NESTING_ERROR,
  IOHWSF_E_TRAP_PROGRAM_FETCH_SYNCHRONOUS_ERROR,
  IOHWSF_E_TRAP_DATA_ACCESS_SYNCHRONOUS_ERROR,
  IOHWSF_E_TRAP_DATA_ACCESS_ASYNCHRONOUS_ERROR,
  IOHWSF_E_TRAP_ARITHEMETIC_OVERFLOW,
  IOHWSF_E_TRAP_STICKY_ARITHEMETIC_OVERFLOW,
  IOHWSF_E_TRAP_UNEXPECTED_SYSTEM_CALL,
  IOHWSF_E_TRAP_UNEXPECTED_NMI,
  IOHWSF_E_TRAP_UNDEFINED_TIN,
  IOHWSF_E_CORE0_NOT_IN_SAFE_STATE,
  IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_TRAP_TST,
  IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_CLKM_TST,
  IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_SRAM_ECC_TST,
  IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_PMU_ECC_EDC_TST,
  IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_SRI_TST,
  IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_SPB_TST_TIMEOUT,
  IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_SFF_TST,
  IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_SPB_TST_RAP,
  IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_CPU_MPU_TST,
  IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_CPUBUSMPULFM_TST,
  IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_REG_ACC_PROT_TST,
  IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_CPU_WDG_TST,
  IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_SAFETY_WDG_TST,
  IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_SMU_TST_NMI,
  IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_SMU_TST_IRQ,
  IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_SMU_TST_RT,
  IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_VLM_TST,
  IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_IR_TST,
  IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_LOCK_STEP_TST,
  IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_SFR_CMP_TST,
  IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_SRC_REG_CHECK_TST,
  IOHWSF_E_FLASH_TEST_PATTERN_NOT_FLSHED,
  IOHWSF_E_SETUP_FSP_PIN,
  IOHWSF_E_SMU_LOCK_CFG_TST,
  IOHWSF_E_SAFETY_ISR_RESET,
  IOHWSF_E_TLF_ERR_DETECTION_TIMEOUT,
  IOHWSF_E_TLF_SYS_FLAGS_NOT_CLEARED,
  IOHWSF_E_TLF_RESTORE_FAILED,
  IOHWSF_E_RELEASE_FSP_FAILED,
  IOHWSF_E_UDS_ECU_RESET_REQ,
  IOHWSF_E_UDS_SRAM_ECCPREAOU_FAILED
}IOHWSF_E_ErrorType;
# 135 "../30_Bsw/iohw/Static/iohwsf.h"
extern void Trap_vInit(void);
extern void _trap_0( void );
extern void _trap_1( void );
extern void _trap_2( void );
extern void _trap_3( void );
extern void _trap_4( void );
extern void _trap_5( void );
extern void _trap_6( void );
extern void _trap_7( void );
extern void mg_vTrapTableRedirection(void);
extern void IOHWSF_vMcSafeStartUpChecks(void);
extern void IOHWSF_vDefaultErrorHandler(IOHWSF_E_ErrorType eError);
extern void iohw_Wrapper_ClearAlarmStatus(const uint8 Group, const uint8 Pos);
extern Std_ReturnType __attribute__ ((noinline)) IOHWSF_tPreRunPreHook (uint8 GroupIndex);
extern Std_ReturnType __attribute__ ((noinline)) IOHWSF_tPreRunPostHook (uint8 GroupIndex);
extern void IOHWSF_vMcSafeSwitchToRunState(void);
extern void IOHWSF_vSrcRegestersCheck(void);
# 28 "../30_Bsw/iohw/Static/iohwsf_FspTest.c" 2
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
# 29 "../30_Bsw/iohw/Static/iohwsf_FspTest.c" 2
# 71 "../30_Bsw/iohw/Static/iohwsf_FspTest.c"
# 1 "../30_Bsw/Mpu/MPU_MemMap.h" 1
# 242 "../30_Bsw/Mpu/MPU_MemMap.h"
#pragma section ".text.MPU_ASIL_CODE" ax 8
# 72 "../30_Bsw/iohw/Static/iohwsf_FspTest.c" 2
# 86 "../30_Bsw/iohw/Static/iohwsf_FspTest.c"
void IOHWSF_FSPTEST(void)
{
  uint16 SysconFigRegBackup;
  uint16 u16SyssfRegRead;
  uint16 u16SysconFigRegRead;
  uint16 u16SysconFigBackupData;
  uint16 u16Dummy;
  uint32 u32FspCounter;



  Qspi_SBC_TxRxData(0x1800,&SysconFigRegBackup);
  u16SysconFigBackupData = (SysconFigRegBackup >> 1U) & 0xFFU;


  SysconFigRegBackup = ((SysconFigRegBackup & 0x81FFU)| 0x0A00U);


  Qspi_SBC_TxRxData(0xBBFF,&u16Dummy);


  Qspi_SBC_TxRxData(0x3A00,&u16SyssfRegRead);
  u16SyssfRegRead = (u16SyssfRegRead >> 1U) & 0xFFU;
  if(u16SyssfRegRead != 0U)
  {
    IOHWSF_vDefaultErrorHandler(IOHWSF_E_TLF_SYS_FLAGS_NOT_CLEARED);
  }


  Qspi_SBC_Unlock();


  Qspi_SBC_TxRxData(0x8A1F,&u16Dummy);


  Qspi_SBC_Lockup();


  (void)Smu_SetAlarmStatus((5U), (0U));


  u32FspCounter = 0 ;
  do
  {
    Qspi_SBC_TxRxData(0x3A00,&u16SyssfRegRead);
    u16SyssfRegRead = (u16SyssfRegRead >> 1U) & 0xFFU;
    u32FspCounter++;
  }
  while((((u16SyssfRegRead >> 3U) & 1U) != 1U) && u32FspCounter <= 64U);


  if(u32FspCounter > 64U)
  {
    IOHWSF_vDefaultErrorHandler(IOHWSF_E_TLF_ERR_DETECTION_TIMEOUT);
  }

  if(0U != Smu_ClearAlarmStatus((5U),(0U)))
  {
    IOHWSF_vDefaultErrorHandler((0x22020fU));
  }

  if(0U != Smu_ReleaseFSP())
  {
   IOHWSF_vDefaultErrorHandler(IOHWSF_E_RELEASE_FSP_FAILED);
  }


  while(Smu_GetSmuState() != ((Smu_StateType)1))
  {

  }


  Qspi_SBC_Unlock();


  Qspi_SBC_TxRxData(SysconFigRegBackup,&u16Dummy);


  Qspi_SBC_Lockup();


  Qspi_SBC_TxRxData(0x1800,&u16SysconFigRegRead);
  u16SysconFigRegRead = (u16SysconFigRegRead >> 1U) & 0xFFU;
  if(u16SysconFigRegRead != u16SysconFigBackupData)
  {
    IOHWSF_vDefaultErrorHandler(IOHWSF_E_TLF_RESTORE_FAILED);
  }

  Qspi_SBC_TxRxData(0xBBFF,&u16Dummy);


  Qspi_SBC_TxRxData(0x3A00,&u16SyssfRegRead);
  u16SyssfRegRead = (u16SyssfRegRead >> 1U) & 0xFFU;
  if(u16SyssfRegRead != 0U)
  {
    IOHWSF_vDefaultErrorHandler(IOHWSF_E_TLF_SYS_FLAGS_NOT_CLEARED);
  }

}



# 1 "../30_Bsw/Mpu/MPU_MemMap.h" 1
# 255 "../30_Bsw/Mpu/MPU_MemMap.h"
#pragma section
# 190 "../30_Bsw/iohw/Static/iohwsf_FspTest.c" 2
