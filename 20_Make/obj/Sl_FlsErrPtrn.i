# 1 "../30_Bsw/STL_common/Sl_FlsErrPtrn.c"
# 1 "S:\\20_Make//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "../30_Bsw/STL_common/Sl_FlsErrPtrn.c"
# 48 "../30_Bsw/STL_common/Sl_FlsErrPtrn.c"
# 1 "../30_Bsw/STL_common/Sl_FlsErrPtrn.h" 1
# 51 "../30_Bsw/STL_common/Sl_FlsErrPtrn.h"
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
# 52 "../30_Bsw/STL_common/Sl_FlsErrPtrn.h" 2


# 1 "../30_Bsw/MicroTestLib/Static/PmuEccEdcTst.h" 1
# 46 "../30_Bsw/MicroTestLib/Static/PmuEccEdcTst.h"
# 1 "../30_Bsw/MicroTestLib/Config/PmuEccEdcTst_Cfg.h" 1
# 47 "../30_Bsw/MicroTestLib/Static/PmuEccEdcTst.h" 2
# 1 "../30_Bsw/MicroTestLib/Static/PmuEccEdcTst_PtrnDef.h" 1
# 46 "../30_Bsw/MicroTestLib/Static/PmuEccEdcTst_PtrnDef.h"
# 1 "../30_Bsw/MicroTestLib/Config/PflashMonTst_Cfg.h" 1
# 47 "../30_Bsw/MicroTestLib/Static/PmuEccEdcTst_PtrnDef.h" 2
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
# 48 "../30_Bsw/MicroTestLib/Static/PmuEccEdcTst_PtrnDef.h" 2
# 84 "../30_Bsw/MicroTestLib/Static/PmuEccEdcTst_PtrnDef.h"
typedef struct PmuEccEdcTst_FlashPageType
{
  uint32 Data[( 8U )];
} PmuEccEdcTst_FlashPageType;




typedef struct PmuEccEdcTst_FlashRefPageType
{
  uint32 Data[( 2U )];
} PmuEccEdcTst_FlashRefPageType;


typedef struct PmuEccEdcTst_TestPatternSetType
{
  PmuEccEdcTst_FlashPageType Pattern[( 4U )];
} PmuEccEdcTst_TestPatternSetType;


typedef struct PmuEccEdcTst_TestPatternType
{

  PmuEccEdcTst_FlashPageType DummyPages[( 2U )];


  PmuEccEdcTst_TestPatternSetType Set[( 4U )];




} PmuEccEdcTst_TestPatternType;






# 1 "../30_Bsw/STL_common/Ifx_MemMap.h" 1
# 4042 "../30_Bsw/STL_common/Ifx_MemMap.h"
#pragma section ".rodata.STL_CONST_FAR_UNSPECIFIED" a
# 123 "../30_Bsw/MicroTestLib/Static/PmuEccEdcTst_PtrnDef.h" 2

extern const PmuEccEdcTst_TestPatternType* const
      PmuEccEdcTst_TestPattern[( 1U )];




extern const PmuEccEdcTst_FlashRefPageType
 PmuEccEdcTst_VcwRefPtrn[( 4U )];




extern const PmuEccEdcTst_FlashRefPageType
 PmuEccEdcTst_SbeRefPtrn[( 4U )];




extern const PmuEccEdcTst_FlashRefPageType
 PmuEccEdcTst_DbeRefPtrn[( 4U )];


# 1 "../30_Bsw/STL_common/Ifx_MemMap.h" 1
# 4053 "../30_Bsw/STL_common/Ifx_MemMap.h"
#pragma section
# 147 "../30_Bsw/MicroTestLib/Static/PmuEccEdcTst_PtrnDef.h" 2


  extern const uint32 LOC_START_PF0_PATTERNS[];
# 48 "../30_Bsw/MicroTestLib/Static/PmuEccEdcTst.h" 2
# 1 "../30_Bsw/STL_common/Sl_Timeout.h" 1
# 49 "../30_Bsw/MicroTestLib/Static/PmuEccEdcTst.h" 2
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
# 50 "../30_Bsw/MicroTestLib/Static/PmuEccEdcTst.h" 2
# 88 "../30_Bsw/MicroTestLib/Static/PmuEccEdcTst.h"
typedef struct PmuEccEdcTst_UnexpAlarmType
{
    uint32 Sbe;
    uint32 Dbe;
    uint32 Mbe;
    uint32 Mon;
    uint32 Cmp;
    uint32 Crc32;
} PmuEccEdcTst_UnexpAlmType;







extern const uint32 LOC_START_PflashMon_EccEdc_PFLASHCODE[];
extern const uint32 LOC_END_PflashMon_EccEdc_PFLASHCODE[];


extern const uint32 LOC_START_PflashMon_EccEdc_RAM_RUNCODE[];
extern const uint32 LOC_END_PflashMon_EccEdc_RAM_RUNCODE[];


extern const uint32 LOC_START_PmuEccEdcTst_tvt_PFLASHCODE[];
extern const uint32 LOC_END_PmuEccEdcTst_tvt_PFLASHCODE[];


extern const uint32 LOC_START_PmuEccEdcTst_tvt_RAM_RUNCODE[];
extern const uint32 LOC_END_PmuEccEdcTst_tvt_RAM_RUNCODE[];





# 1 "../30_Bsw/STL_common/Ifx_MemMap.h" 1
# 2699 "../30_Bsw/STL_common/Ifx_MemMap.h"
#pragma section ".text.STL_ASIL_CODE_NO_OPTIMIZE" ax 4

#pragma GCC optimize "O0"
# 124 "../30_Bsw/MicroTestLib/Static/PmuEccEdcTst.h" 2
extern Sl_TstRsltType PmuEccEdcTst_EccEdcTst
(
  const Sl_ParamSetType ParamSetIndex,
  const uint8 TstSeed,
  uint32* const TstSignature
);

extern PmuEccEdcTst_UnexpAlmType* PmuEccEdcTst_GetUnexpEccAlmListPtr
(
  void
);

extern uint32 PmuEccEdcTst_CalculateCrc32
(
  const uint32 StartAddr[],
  uint32 Size
);

# 1 "../30_Bsw/STL_common/Ifx_MemMap.h" 1
# 2713 "../30_Bsw/STL_common/Ifx_MemMap.h"
#pragma GCC reset_options
#pragma section
# 143 "../30_Bsw/MicroTestLib/Static/PmuEccEdcTst.h" 2
# 55 "../30_Bsw/STL_common/Sl_FlsErrPtrn.h" 2


# 1 "../30_Bsw/MicroTestLib/Static/PflashMonTst.h" 1
# 51 "../30_Bsw/MicroTestLib/Static/PflashMonTst.h"
# 1 "../30_Bsw/Common/TC21x/IfxFlash_reg.h" 1
# 36 "../30_Bsw/Common/TC21x/IfxFlash_reg.h"
# 1 "../30_Bsw/Common/TC21x/IfxFlash_regdef.h" 1
# 39 "../30_Bsw/Common/TC21x/IfxFlash_regdef.h"
# 1 "../30_Bsw/Common/TC21x/Ifx_TypesReg.h" 1
# 40 "../30_Bsw/Common/TC21x/IfxFlash_regdef.h" 2





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
# 52 "../30_Bsw/MicroTestLib/Static/PflashMonTst.h" 2
# 67 "../30_Bsw/MicroTestLib/Static/PflashMonTst.h"
typedef struct PflashMonTst_ConfigType
{
  uint32 BankEnable[( 1U )];
} PflashMonTst_ConfigType;




typedef struct PflashMonTst_ClearedEntryType
{
  Ifx_FLASH_CBAB_TOP Cbab[( 10u )];
  Ifx_FLASH_UBAB_TOP Ubab[( 1u )];
} PflashMonTst_ClearedEntryType;




typedef struct PflashMonTst_ClearedErrorType
{
  PflashMonTst_ClearedEntryType Bank[( 1U )];
  uint32 Crc32;
} PflashMonTst_ClearedErrorType;




typedef struct PflashMonTst_UnexpAlarmType
{
    uint32 Sbe;
    uint32 Dbe;
    uint32 Mbe;



    uint32 Crc32;
} PflashMonTst_UnexpAlarmType;






# 1 "../30_Bsw/STL_common/Ifx_MemMap.h" 1
# 2426 "../30_Bsw/STL_common/Ifx_MemMap.h"
#pragma section ".rodata.CONFIGURATION_LT" a
# 110 "../30_Bsw/MicroTestLib/Static/PflashMonTst.h" 2
extern const PflashMonTst_ConfigType
             PflashMonTst_ConfigRoot[( 1U )];

# 1 "../30_Bsw/STL_common/Ifx_MemMap.h" 1
# 2437 "../30_Bsw/STL_common/Ifx_MemMap.h"
#pragma section
# 114 "../30_Bsw/MicroTestLib/Static/PflashMonTst.h" 2




# 1 "../30_Bsw/STL_common/Ifx_MemMap.h" 1
# 2699 "../30_Bsw/STL_common/Ifx_MemMap.h"
#pragma section ".text.STL_ASIL_CODE_NO_OPTIMIZE" ax 4

#pragma GCC optimize "O0"
# 119 "../30_Bsw/MicroTestLib/Static/PflashMonTst.h" 2
# 174 "../30_Bsw/MicroTestLib/Static/PflashMonTst.h"
extern Sl_TstRsltType PflashMonTst_PflashMonTst
(
  const Sl_ParamSetType ParamSetIndex,
  const uint8 TstSeed,
  uint32* const TstSignature
);
# 214 "../30_Bsw/MicroTestLib/Static/PflashMonTst.h"
extern PflashMonTst_ClearedErrorType* PflashMonTst_GetClearedErrListPtr
(
  void
);
# 251 "../30_Bsw/MicroTestLib/Static/PflashMonTst.h"
extern PflashMonTst_UnexpAlarmType* PflashMonTst_GetUnexpEccAlmListPtr
(
  void
);

# 1 "../30_Bsw/STL_common/Ifx_MemMap.h" 1
# 2713 "../30_Bsw/STL_common/Ifx_MemMap.h"
#pragma GCC reset_options
#pragma section
# 257 "../30_Bsw/MicroTestLib/Static/PflashMonTst.h" 2
# 58 "../30_Bsw/STL_common/Sl_FlsErrPtrn.h" 2
# 95 "../30_Bsw/STL_common/Sl_FlsErrPtrn.h"
typedef uint32 Sl_FlsPrgRsltType;
# 117 "../30_Bsw/STL_common/Sl_FlsErrPtrn.h"
# 1 "../30_Bsw/STL_common/Ifx_MemMap.h" 1
# 2699 "../30_Bsw/STL_common/Ifx_MemMap.h"
#pragma section ".text.STL_ASIL_CODE_NO_OPTIMIZE" ax 4

#pragma GCC optimize "O0"
# 118 "../30_Bsw/STL_common/Sl_FlsErrPtrn.h" 2
extern Sl_FlsPrgRsltType Sl_ChkProgErrorPattern
(
  void
);

# 1 "../30_Bsw/STL_common/Ifx_MemMap.h" 1
# 2713 "../30_Bsw/STL_common/Ifx_MemMap.h"
#pragma GCC reset_options
#pragma section
# 124 "../30_Bsw/STL_common/Sl_FlsErrPtrn.h" 2
# 49 "../30_Bsw/STL_common/Sl_FlsErrPtrn.c" 2
# 1 "../30_Bsw/STL_common/Mcal_Compiler.h" 1
# 50 "../30_Bsw/STL_common/Sl_FlsErrPtrn.c" 2
# 1 "../30_Bsw/STL_common/Mcal.h" 1
# 42 "../30_Bsw/STL_common/Mcal.h"
# 1 "../30_Bsw/STL_common/Mcal_TcLib.h" 1
# 120 "../30_Bsw/STL_common/Mcal_TcLib.h"
typedef signed int signed_int;

typedef unsigned int unsigned_int;


typedef enum
{
    MCAL_HALT,
    MCAL_RUN,
    MCAL_IDLE,
    MCAL_SLEEP,
    MCAL_STBY,
    MCAL_INVALID
} Mcal_CoreMode;
# 260 "../30_Bsw/STL_common/Mcal_TcLib.h"
# 1 "../30_Bsw/STL_common/Ifx_MemMap.h" 1
# 2642 "../30_Bsw/STL_common/Ifx_MemMap.h"
#pragma section ".text.STL_ASIL_CODE" ax 4
# 261 "../30_Bsw/STL_common/Mcal_TcLib.h" 2
# 281 "../30_Bsw/STL_common/Mcal_TcLib.h"
extern uint8 Mcal_GetCoreId(void);
# 301 "../30_Bsw/STL_common/Mcal_TcLib.h"
extern uint32 Mcal_GetDsprReMapAddress(uint32 Address);
# 371 "../30_Bsw/STL_common/Mcal_TcLib.h"
extern uint32 Mcal_LockResource(uint32 *ResourcePtr);
# 390 "../30_Bsw/STL_common/Mcal_TcLib.h"
extern void Mcal_UnlockResource(uint32* ResourcePtr);
# 415 "../30_Bsw/STL_common/Mcal_TcLib.h"
extern Std_ReturnType Mcal_GetSpinLock(uint32* SpinLckPtr,uint32 Timeout);
# 440 "../30_Bsw/STL_common/Mcal_TcLib.h"
extern void Mcal_ReleaseSpinLock(uint32* SpinLckPtr);
# 464 "../30_Bsw/STL_common/Mcal_TcLib.h"
extern void Mcal_SuspendAllInterrupts(void);
# 488 "../30_Bsw/STL_common/Mcal_TcLib.h"
extern void Mcal_ResumeAllInterrupts(void);
# 503 "../30_Bsw/STL_common/Mcal_TcLib.h"
# 1 "../30_Bsw/STL_common/Ifx_MemMap.h" 1
# 2654 "../30_Bsw/STL_common/Ifx_MemMap.h"
#pragma section
# 504 "../30_Bsw/STL_common/Mcal_TcLib.h" 2
# 43 "../30_Bsw/STL_common/Mcal.h" 2
# 1 "../30_Bsw/STL_common/Mcal_WdgLib.h" 1
# 114 "../30_Bsw/STL_common/Mcal_WdgLib.h"
# 1 "../30_Bsw/STL_common/Ifx_MemMap.h" 1
# 2642 "../30_Bsw/STL_common/Ifx_MemMap.h"
#pragma section ".text.STL_ASIL_CODE" ax 4
# 115 "../30_Bsw/STL_common/Mcal_WdgLib.h" 2
# 141 "../30_Bsw/STL_common/Mcal_WdgLib.h"
extern void Mcal_ResetENDINIT(void);
# 168 "../30_Bsw/STL_common/Mcal_WdgLib.h"
extern void Mcal_SetENDINIT( void );
# 202 "../30_Bsw/STL_common/Mcal_WdgLib.h"
extern void Mcal_SafetyModifyAccess
(
const uint32 NewPassword,
const uint32 NewReload
);

extern void Mcal_CpuWdtModifyAccess
(
const uint32 NewPassword,
const uint32 NewReload
);
# 247 "../30_Bsw/STL_common/Mcal_WdgLib.h"
extern void Mcal_SafetyCheckAccess
(
const uint32 CheckPassword,
const uint32 CheckTimer
);

extern void Mcal_CpuWdtCheckAccess
(
const uint32 CheckPassword,
const uint32 CheckTimer
);
# 282 "../30_Bsw/STL_common/Mcal_WdgLib.h"
extern uint32 Mcal_SafetyPwSequence
(
const uint32 Password
);

extern uint32 Mcal_CpuWdtPwSequence
(
const uint32 Password
);
# 314 "../30_Bsw/STL_common/Mcal_WdgLib.h"
extern void Mcal_ResetCpuENDINIT (const sint8 wdt);

extern void Mcal_SetCpuENDINIT (const sint8 wdt);
# 340 "../30_Bsw/STL_common/Mcal_WdgLib.h"
extern void Mcal_ResetSafetyENDINIT_Timed(uint32 TimeOut);
# 364 "../30_Bsw/STL_common/Mcal_WdgLib.h"
extern void Mcal_SetSafetyENDINIT_Timed(void);
# 398 "../30_Bsw/STL_common/Mcal_WdgLib.h"
extern __inline__ uint16 Mcal_WdtCalcSeqPassword(uint16 SeqPassword)
{


  uint16 InterPasswordl;


  uint16 Expected_Passl;

  InterPasswordl = ((SeqPassword >> 15U)^(SeqPassword >> 14U)^
                       (SeqPassword >> 13U)^(SeqPassword >> 3U)) & 1U;

  Expected_Passl = (uint16)(((uint16)(SeqPassword << 1U)|
                             (uint16)(InterPasswordl << 2U)) & 0x0000FFFFU);

  return(Expected_Passl);
}
# 426 "../30_Bsw/STL_common/Mcal_WdgLib.h"
# 1 "../30_Bsw/STL_common/Ifx_MemMap.h" 1
# 2654 "../30_Bsw/STL_common/Ifx_MemMap.h"
#pragma section
# 427 "../30_Bsw/STL_common/Mcal_WdgLib.h" 2
# 44 "../30_Bsw/STL_common/Mcal.h" 2
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
# 45 "../30_Bsw/STL_common/Mcal.h" 2
# 51 "../30_Bsw/STL_common/Sl_FlsErrPtrn.c" 2
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
# 52 "../30_Bsw/STL_common/Sl_FlsErrPtrn.c" 2
# 1 "../30_Bsw/Common/TC21x/IfxCpu_bf.h" 1
# 53 "../30_Bsw/STL_common/Sl_FlsErrPtrn.c" 2

# 1 "../30_Bsw/STL_common/ChipId.h" 1
# 55 "../30_Bsw/STL_common/Sl_FlsErrPtrn.c" 2
# 120 "../30_Bsw/STL_common/Sl_FlsErrPtrn.c"
typedef struct SlFls_FlashProgType
{
  volatile uint32* FlashCmd;
  volatile uint32* LoadPage0;
  volatile uint32* LoadPage1;
  volatile uint32* WritePage0;
  volatile uint32* WritePage1;
  volatile uint32* WritePage2;
  volatile uint32* WritePage3;
} SlFls_FlashProgType;


typedef struct SlFls_ProgDataType
{

  void* PageAddr;


  PmuEccEdcTst_FlashPageType PageData;


  uint32 EccData;


  volatile Ifx_FLASH_FSR* FlashFsrPtr;


  volatile Ifx_FLASH_ECCRP* FlashEccrpPtr;

} SlFls_ProgDataType;






# 1 "../30_Bsw/STL_common/Ifx_MemMap.h" 1
# 2699 "../30_Bsw/STL_common/Ifx_MemMap.h"
#pragma section ".text.STL_ASIL_CODE_NO_OPTIMIZE" ax 4

#pragma GCC optimize "O0"
# 157 "../30_Bsw/STL_common/Sl_FlsErrPtrn.c" 2
static __inline__ Sl_FlsPrgRsltType Sl_lGetCheckFailErr
(
  const uint8 FlashBank
);

static __inline__ Sl_FlsPrgRsltType Sl_lGetProgFailErr
(
  const uint8 FlashBank
);

static Std_ReturnType Sl_lCheckErrorPattern
(
  const uint8 FlashBank,
  boolean* const PatternOk
);

# 1 "../30_Bsw/STL_common/Ifx_MemMap.h" 1
# 2713 "../30_Bsw/STL_common/Ifx_MemMap.h"
#pragma GCC reset_options
#pragma section
# 174 "../30_Bsw/STL_common/Sl_FlsErrPtrn.c" 2

# 1 "../30_Bsw/STL_common/Ifx_MemMap.h" 1
# 2881 "../30_Bsw/STL_common/Ifx_MemMap.h"
#pragma section ".PFLASH_MON_ECCEDC_RAMCODE" ax 4

#pragma GCC optimize "O0"
# 176 "../30_Bsw/STL_common/Sl_FlsErrPtrn.c" 2


static void Sl_lReadFlashPage
(
  SlFls_ProgDataType* const ProgData
);

static boolean Sl_lChkErrPtrnHelper
(
  const PmuEccEdcTst_TestPatternType* const TestPattern
);

static boolean Sl_lComparePageHelper
(
  const PmuEccEdcTst_FlashPageType* const FlashPage,
  const PmuEccEdcTst_FlashRefPageType* const RefPattern
);

static Std_ReturnType Sl_lProgramPageFcn
(
  const SlFls_ProgDataType* const ProgData
);



# 1 "../30_Bsw/STL_common/Ifx_MemMap.h" 1
# 2896 "../30_Bsw/STL_common/Ifx_MemMap.h"
#pragma section
#pragma GCC reset_options
# 202 "../30_Bsw/STL_common/Sl_FlsErrPtrn.c" 2

# 1 "../30_Bsw/STL_common/Ifx_MemMap.h" 1
# 2699 "../30_Bsw/STL_common/Ifx_MemMap.h"
#pragma section ".text.STL_ASIL_CODE_NO_OPTIMIZE" ax 4

#pragma GCC optimize "O0"
# 204 "../30_Bsw/STL_common/Sl_FlsErrPtrn.c" 2
static Std_ReturnType Sl_lProgramPage
(
  const SlFls_ProgDataType* const ProgData
);

static Std_ReturnType Sl_lEnterPageMode
(
  void
);

static Std_ReturnType Sl_lRamCalculateandVerifyCrc32
(
  void
);

# 1 "../30_Bsw/STL_common/Ifx_MemMap.h" 1
# 2713 "../30_Bsw/STL_common/Ifx_MemMap.h"
#pragma GCC reset_options
#pragma section
# 220 "../30_Bsw/STL_common/Sl_FlsErrPtrn.c" 2
# 234 "../30_Bsw/STL_common/Sl_FlsErrPtrn.c"
# 1 "../30_Bsw/STL_common/Ifx_MemMap.h" 1
# 3374 "../30_Bsw/STL_common/Ifx_MemMap.h"
#pragma section ".data.STL_RAM_32BIT" aw 4
# 235 "../30_Bsw/STL_common/Sl_FlsErrPtrn.c" 2


static uint32 SlFls_PFlashFnCrc32;


# 1 "../30_Bsw/STL_common/Ifx_MemMap.h" 1
# 3388 "../30_Bsw/STL_common/Ifx_MemMap.h"
#pragma section
# 241 "../30_Bsw/STL_common/Sl_FlsErrPtrn.c" 2





# 1 "../30_Bsw/STL_common/Ifx_MemMap.h" 1
# 4016 "../30_Bsw/STL_common/Ifx_MemMap.h"
#pragma section ".rodata.STL_CONST_32BIT" a 4
# 247 "../30_Bsw/STL_common/Sl_FlsErrPtrn.c" 2





static const uint32
             SlFls_BitFlipTbl[( 4U )][( 3U )] =
{
  {
    0x00000001U,
    0x00000003U,
    0x00000007U
  },
  {
    0x10000000U,
    0x30000000U,
    0x70000000U
  },
  {
    0x10000000U,
    0x30000000U,
    0x70000000U
  },
  {
    0x00000001U,
    0x00000005U,
    0x0000000DU
  }
};


# 1 "../30_Bsw/STL_common/Ifx_MemMap.h" 1
# 4029 "../30_Bsw/STL_common/Ifx_MemMap.h"
#pragma section
# 279 "../30_Bsw/STL_common/Sl_FlsErrPtrn.c" 2







# 1 "../30_Bsw/STL_common/Ifx_MemMap.h" 1
# 3485 "../30_Bsw/STL_common/Ifx_MemMap.h"
#pragma section ".data.STL_RAM_UNSPECIFIED_NONZERO_INIT" aw
# 287 "../30_Bsw/STL_common/Sl_FlsErrPtrn.c" 2


static SlFls_FlashProgType SlFls_FlashProgAccess =
{
    (volatile uint32*)((uint32)( 0xAF000000U ) + 0x00005554U),
    (volatile uint32*)((uint32)( 0xAF000000U ) + 0x000055F0u),
    (volatile uint32*)((uint32)( 0xAF000000U ) + 0x000055F4u),
    (volatile uint32*)((uint32)( 0xAF000000U ) + 0x0000AA50U),
    (volatile uint32*)((uint32)( 0xAF000000U ) + 0x0000AA58U),
    (volatile uint32*)((uint32)( 0xAF000000U ) + 0x0000AAA8U),
    (volatile uint32*)((uint32)( 0xAF000000U ) + 0x0000AAA8U)
};


# 1 "../30_Bsw/STL_common/Ifx_MemMap.h" 1
# 3497 "../30_Bsw/STL_common/Ifx_MemMap.h"
#pragma section
# 302 "../30_Bsw/STL_common/Sl_FlsErrPtrn.c" 2
# 313 "../30_Bsw/STL_common/Sl_FlsErrPtrn.c"
# 1 "../30_Bsw/STL_common/Ifx_MemMap.h" 1
# 2881 "../30_Bsw/STL_common/Ifx_MemMap.h"
#pragma section ".PFLASH_MON_ECCEDC_RAMCODE" ax 4

#pragma GCC optimize "O0"
# 314 "../30_Bsw/STL_common/Sl_FlsErrPtrn.c" 2
# 352 "../30_Bsw/STL_common/Sl_FlsErrPtrn.c"
static void Sl_lReadFlashPage
(
  SlFls_ProgDataType* const ProgData
)
{
  uint8 FlashWord;


  for (FlashWord = 0U; FlashWord < ( 8U ); FlashWord++)
  {
    ProgData->PageData.Data[FlashWord] =
        ((uint32*)ProgData->PageAddr)[FlashWord];
  }


  ProgData->EccData = (uint32) ProgData->FlashEccrpPtr->B.RCODE;
}
# 404 "../30_Bsw/STL_common/Sl_FlsErrPtrn.c"
static Std_ReturnType Sl_lProgramPageFcn
(
  const SlFls_ProgDataType* const ProgData
)
{
  Std_ReturnType Result = 1U;
  volatile uint32 Temp;

  (*(volatile Ifx_FLASH_FSR *)0xF8002010u).U = (uint32)( 0x0E7FF980U );

  *(SlFls_FlashProgAccess.WritePage0) = (uint32)ProgData->PageAddr;
  *(SlFls_FlashProgAccess.WritePage1) = ( 0x00000000U );
  *(SlFls_FlashProgAccess.WritePage2) = ( 0x000000A0U );
  *(SlFls_FlashProgAccess.WritePage3) = ( 0x000000AAU );


  _dsync();


  do
  {
    Temp = ProgData->FlashFsrPtr->U;
    if ((0U != (Temp & ( 0x00003800U ) )))
    {
      break;
    }
  } while ((Temp & ( 0x00000278U )) != 0U);


  if (0U == (Temp & ( 0x00003800U ) ))
  {
      Result = 0U;
  }


  *(SlFls_FlashProgAccess.FlashCmd) = ( 0x000000F0U );

  return Result;
}
# 485 "../30_Bsw/STL_common/Sl_FlsErrPtrn.c"
static boolean Sl_lChkErrPtrnHelper
(
  const PmuEccEdcTst_TestPatternType* const TestPattern
)
{
  uint8 i;
  volatile uint32 Dummy = 0U;
  uint32 FlashMarpBak;
  boolean Result = (boolean)0;
  uint8 ErrorPatternCount = 0U;
  {if((Dummy) != 0U) { }}


  (*(volatile Ifx_FLASH_FSR *)0xF8002010u).U = (uint32)(((uint32)1U)<<((16U)));

  _isync();



  FlashMarpBak = (*(volatile Ifx_FLASH_MARP *)0xF80020A8u).U;
  (*(volatile Ifx_FLASH_MARP *)0xF80020A8u).B.TRAPDIS = 1U;

  _isync();



  for (i = 0U; i < ( 4U ); i++)
  {
    Dummy = TestPattern->Set[i].Pattern[( 3U )].Data[0U];



    if (1U == (*(volatile Ifx_FLASH_FSR *)0xF8002010u).B.PFMBER)
    {

    (*(volatile Ifx_FLASH_FSR *)0xF8002010u).U = (uint32)(((uint32)1U)<<((16U)));

    _isync();

    ErrorPatternCount++;
    }
  }


  (*(volatile Ifx_FLASH_MARP *)0xF80020A8u).U = FlashMarpBak;

  _isync();
# 563 "../30_Bsw/STL_common/Sl_FlsErrPtrn.c"
  if (4U == ErrorPatternCount)

  {
  Result = (boolean)1;
  }

  return Result;
}
# 611 "../30_Bsw/STL_common/Sl_FlsErrPtrn.c"
static boolean Sl_lComparePageHelper
(
  const PmuEccEdcTst_FlashPageType* const FlashPage,
  const PmuEccEdcTst_FlashRefPageType* const RefPattern
)
{
  uint32 i;
  uint32 RefIdx = 0U;
  boolean Result = 1;
  uint32 FlashMarpSave = (*(volatile Ifx_FLASH_MARP *)0xF80020A8u).U;


  (*(volatile Ifx_FLASH_MARP *)0xF80020A8u).B.TRAPDIS = 1U;


  for (i = 0U; i < ( 8U ); i++)
  {
    if (FlashPage->Data[i] != RefPattern->Data[RefIdx])
    {
      Result = 0;
      break;
    }
    RefIdx = 1U;
  }


  (*(volatile Ifx_FLASH_MARP *)0xF80020A8u).U = FlashMarpSave;

  return Result;
}





# 1 "../30_Bsw/STL_common/Ifx_MemMap.h" 1
# 2896 "../30_Bsw/STL_common/Ifx_MemMap.h"
#pragma section
#pragma GCC reset_options
# 647 "../30_Bsw/STL_common/Sl_FlsErrPtrn.c" 2


# 1 "../30_Bsw/STL_common/Ifx_MemMap.h" 1
# 2699 "../30_Bsw/STL_common/Ifx_MemMap.h"
#pragma section ".text.STL_ASIL_CODE_NO_OPTIMIZE" ax 4

#pragma GCC optimize "O0"
# 650 "../30_Bsw/STL_common/Sl_FlsErrPtrn.c" 2
# 708 "../30_Bsw/STL_common/Sl_FlsErrPtrn.c"
Sl_FlsPrgRsltType Sl_ChkProgErrorPattern
(
  void
)
{
  volatile uint8 FlashBank;
  uint8 PatternSet;
  uint8 ErrPattern;






  boolean PatternProgrammed = 0;
  SlFls_ProgDataType ProgData;
  Sl_FlsPrgRsltType Result = ( (Sl_FlsPrgRsltType)0xFFU );
  Std_ReturnType ResultTmp;
  volatile Ifx_FLASH_ECCRP* FlashEccrpList[( 1U )];

  uint32 baddress,eaddress;

  baddress = (uint32)LOC_START_PflashMon_EccEdc_PFLASHCODE;
  eaddress = (uint32)LOC_END_PflashMon_EccEdc_PFLASHCODE;

  FlashEccrpList[0U] = &(*(volatile Ifx_FLASH_ECCRP *)0xF8002094u);
# 745 "../30_Bsw/STL_common/Sl_FlsErrPtrn.c"
  ProgData.FlashFsrPtr = &(*(volatile Ifx_FLASH_FSR *)0xF8002010u);


  SlFls_PFlashFnCrc32 = PmuEccEdcTst_CalculateCrc32(
    LOC_START_PflashMon_EccEdc_PFLASHCODE,
    (eaddress-baddress));


  for (FlashBank = 0U; (FlashBank < ( 1U )) &&
                       (( (Sl_FlsPrgRsltType)0xFFU ) == Result); FlashBank++)
  {
    if (((void *)0) != PmuEccEdcTst_TestPattern[FlashBank])
    {

      ResultTmp = Sl_lCheckErrorPattern(FlashBank,
                                        &PatternProgrammed);
      if (0U != ResultTmp)
      {
        Result = Sl_lGetCheckFailErr(FlashBank);
      }
      else if ((boolean)0 == PatternProgrammed)
      {
# 779 "../30_Bsw/STL_common/Sl_FlsErrPtrn.c"
        ProgData.FlashEccrpPtr = FlashEccrpList[FlashBank];


        for (PatternSet = 0U; (PatternSet < ( 4U )) &&
                              (( (Sl_FlsPrgRsltType)0xFFU ) == Result); PatternSet++)
        {



          for (ErrPattern = 0U; (ErrPattern < ( 3U )) &&
                                (( (Sl_FlsPrgRsltType)0xFFU ) == Result); ErrPattern++)
          {
            ProgData.PageAddr = (void*)
               ((uint32)&(PmuEccEdcTst_TestPattern[FlashBank]->Set[PatternSet].
                  Pattern[( 1U ) + ErrPattern].Data[0])
           |(uint32)0x20000000U);



            ResultTmp = Sl_lRamCalculateandVerifyCrc32();

            if (0U == ResultTmp)
            {

              Sl_lReadFlashPage(&ProgData);


              ProgData.PageData.Data[0] |= SlFls_BitFlipTbl[PatternSet]
                                                           [ErrPattern];


              ResultTmp = Sl_lProgramPage(&ProgData);
            }

            if (0U != ResultTmp)
            {
              Result = Sl_lGetProgFailErr(FlashBank);
            }
          }


        }
# 853 "../30_Bsw/STL_common/Sl_FlsErrPtrn.c"
      }
      else
      {

      }
    }

  }
# 872 "../30_Bsw/STL_common/Sl_FlsErrPtrn.c"
  Mcal_ResetENDINIT();
  (*(volatile Ifx_FLASH_ECCW *)0xF8002090u).B.PECENCDIS = 0U;
  Mcal_SetENDINIT();

  return Result;
}
# 907 "../30_Bsw/STL_common/Sl_FlsErrPtrn.c"
static __inline__ Sl_FlsPrgRsltType Sl_lGetCheckFailErr
(
  const uint8 FlashBank
)
{
  Sl_FlsPrgRsltType Result;

  switch (FlashBank)
  {
  case 0:
    Result = ( (Sl_FlsPrgRsltType)0x04U );
    break;

  case 1:
    Result = ( (Sl_FlsPrgRsltType)0x05U );
    break;

  case 2:
    Result = ( (Sl_FlsPrgRsltType)0x06U );
    break;

  case 3:
    Result = ( (Sl_FlsPrgRsltType)0x07U );
    break;

  default:
    Result = ( (Sl_FlsPrgRsltType)0x08U );
    break;
  }

  return Result;
}
# 967 "../30_Bsw/STL_common/Sl_FlsErrPtrn.c"
static __inline__ Sl_FlsPrgRsltType Sl_lGetProgFailErr
(
  const uint8 FlashBank
)
{
  Sl_FlsPrgRsltType Result;

  switch (FlashBank)
  {
  case 0:
    Result = ( (Sl_FlsPrgRsltType)0x00U );
    break;

  case 1:
    Result = ( (Sl_FlsPrgRsltType)0x01U );
    break;

  case 2:
    Result = ( (Sl_FlsPrgRsltType)0x02U );
    break;

  case 3:
    Result = ( (Sl_FlsPrgRsltType)0x03U );
    break;

  default:
    Result = ( (Sl_FlsPrgRsltType)0x08U );
    break;
  }

  return Result;
}
# 1043 "../30_Bsw/STL_common/Sl_FlsErrPtrn.c"
static Std_ReturnType Sl_lCheckErrorPattern
(
  const uint8 FlashBank,
  boolean* const PatternOk
)
{
  Std_ReturnType Result = 1U;
  uint32 CbabCfgBackup;
  uint32 UbabCfgBackup;
  uint32 i;
  boolean VcwPatternFound;


  volatile Ifx_FLASH_CBAB_CFG* CbabCfgTable[( 1U )] =
  {
    &((*(volatile Ifx_FLASH_CBAB_CFG *)0xF80020B4u))
# 1071 "../30_Bsw/STL_common/Sl_FlsErrPtrn.c"
  };


  volatile Ifx_FLASH_UBAB_CFG* UbabCfgTable[( 1U )] =
  {
    &((*(volatile Ifx_FLASH_UBAB_CFG *)0xF80020E4u))
# 1089 "../30_Bsw/STL_common/Sl_FlsErrPtrn.c"
  };


  CbabCfgBackup = CbabCfgTable[FlashBank]->U;
  UbabCfgBackup = UbabCfgTable[FlashBank]->U;


  Mcal_ResetENDINIT();
  CbabCfgTable[FlashBank]->B.DIS = 1U;
  UbabCfgTable[FlashBank]->B.DIS = 1U;
  Mcal_SetENDINIT();







  Result = Sl_lRamCalculateandVerifyCrc32();

  if (0U == Result)
  {



    VcwPatternFound = 0;
    Mcal_ResetENDINIT();
    for (i = 0U;
         (i < ( 4U )) && (0 == VcwPatternFound);
         i++)
    {
      VcwPatternFound = Sl_lComparePageHelper(&PmuEccEdcTst_TestPattern[FlashBank]->
                                      Set[i].Pattern[( 0U )],
                                     &PmuEccEdcTst_VcwRefPtrn[i]);
    }


    Mcal_SetENDINIT();

    if (0 == VcwPatternFound)
    {

      Result = 1U;
    }
    else
    {


      Result = Sl_lRamCalculateandVerifyCrc32();

    }
  }

  if (0U == Result)
  {
    Mcal_ResetENDINIT();
    *PatternOk = Sl_lChkErrPtrnHelper(PmuEccEdcTst_TestPattern[FlashBank]);


    CbabCfgTable[FlashBank]->U = CbabCfgBackup;
    UbabCfgTable[FlashBank]->U = UbabCfgBackup;
    Mcal_SetENDINIT();
  }
  else
  {

    Mcal_ResetENDINIT();
    CbabCfgTable[FlashBank]->U = CbabCfgBackup;
    UbabCfgTable[FlashBank]->U = UbabCfgBackup;
    Mcal_SetENDINIT();
  }

  return Result;
}
# 1194 "../30_Bsw/STL_common/Sl_FlsErrPtrn.c"
static Std_ReturnType Sl_lProgramPage
(
  const SlFls_ProgDataType* const ProgData
)
{
  Std_ReturnType Result = 1U;


  Mcal_SuspendAllInterrupts();


  if (0U == Sl_lEnterPageMode())
  {


    if (0U == ((uint32)ProgData->PageAddr % ( 32U )))
    {
      uint32 i;


      Mcal_ResetENDINIT();
      (*(volatile Ifx_FLASH_ECCW *)0xF8002090u).B.WCODE = (unsigned_int)((ProgData->EccData) & ( (uint32)0x003FFFFFU ));
      (*(volatile Ifx_FLASH_ECCW *)0xF8002090u).B.PECENCDIS = 1U;
      Mcal_SetENDINIT();


      for (i = 0U; i < ( 8U ); i += 2U )
      {
        *(SlFls_FlashProgAccess.LoadPage0) = (uint32)(ProgData->PageData.Data[i]);
        *(SlFls_FlashProgAccess.LoadPage1) = (uint32)(ProgData->PageData.Data[i + (uint32)1U]);
      }


      if (0U == (*(volatile Ifx_FLASH_FSR *)0xF8002010u).B.SQER)
      {


        if (0U == Sl_lRamCalculateandVerifyCrc32())
        {


          Mcal_ResetSafetyENDINIT_Timed(((uint32)22960U));
          Result = Sl_lProgramPageFcn(ProgData);
          Mcal_SetSafetyENDINIT_Timed();
        }
      }
    }
  }


  *SlFls_FlashProgAccess.FlashCmd = ( 0x000000FAU );


  Mcal_ResumeAllInterrupts();

  return Result;
}
# 1274 "../30_Bsw/STL_common/Sl_FlsErrPtrn.c"
static Std_ReturnType Sl_lEnterPageMode(void)
{
  Std_ReturnType Result = 1U;
  uint32 Timeout = ( 10U );


  *(SlFls_FlashProgAccess.FlashCmd) = ( 0x00000050U );


  _dsync();


  while (Timeout > 0U)
  {
    Timeout--;

    if (((*(volatile Ifx_FLASH_FSR *)0xF8002010u).U & ( 0x00003000U )) != 0U)
    {
        Timeout = 0U;
    }

    if (1U == (*(volatile Ifx_FLASH_FSR *)0xF8002010u).B.PFPAGE)
    {
      Result = 0U;
      Timeout = 0U;
    }
  }

  return Result;
}
# 1335 "../30_Bsw/STL_common/Sl_FlsErrPtrn.c"
static Std_ReturnType Sl_lRamCalculateandVerifyCrc32(void)
{
  uint32 crcvalue = 0U;
  Std_ReturnType Result = 1U;

  uint32 beginaddr, endaddr;

  endaddr = (uint32)LOC_END_PflashMon_EccEdc_RAM_RUNCODE;
  beginaddr = (uint32)LOC_START_PflashMon_EccEdc_RAM_RUNCODE;

  crcvalue = PmuEccEdcTst_CalculateCrc32(LOC_START_PflashMon_EccEdc_RAM_RUNCODE,
            (endaddr-beginaddr));

  if(crcvalue == SlFls_PFlashFnCrc32)
  {
    Result = 0U;
  }

  return Result;
}



# 1 "../30_Bsw/STL_common/Ifx_MemMap.h" 1
# 2713 "../30_Bsw/STL_common/Ifx_MemMap.h"
#pragma GCC reset_options
#pragma section
# 1359 "../30_Bsw/STL_common/Sl_FlsErrPtrn.c" 2
