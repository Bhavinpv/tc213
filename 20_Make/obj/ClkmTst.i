# 1 "../30_Bsw/MicroTestLib/Static/ClkmTst.c"
# 1 "S:\\20_Make//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "../30_Bsw/MicroTestLib/Static/ClkmTst.c"
# 36 "../30_Bsw/MicroTestLib/Static/ClkmTst.c"
# 1 "../30_Bsw/STL_common/Mcal.h" 1
# 42 "../30_Bsw/STL_common/Mcal.h"
# 1 "../30_Bsw/STL_common/Mcal_TcLib.h" 1
# 39 "../30_Bsw/STL_common/Mcal_TcLib.h"
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
# 40 "../30_Bsw/STL_common/Mcal_TcLib.h" 2
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
# 41 "../30_Bsw/STL_common/Mcal_TcLib.h" 2
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
# 37 "../30_Bsw/MicroTestLib/Static/ClkmTst.c" 2
# 1 "../30_Bsw/Common/TC21x/IfxScu_reg.h" 1
# 36 "../30_Bsw/Common/TC21x/IfxScu_reg.h"
# 1 "../30_Bsw/Common/TC21x/IfxScu_regdef.h" 1
# 39 "../30_Bsw/Common/TC21x/IfxScu_regdef.h"
# 1 "../30_Bsw/Common/TC21x/Ifx_TypesReg.h" 1
# 40 "../30_Bsw/Common/TC21x/IfxScu_regdef.h" 2





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
# 38 "../30_Bsw/MicroTestLib/Static/ClkmTst.c" 2
# 1 "../30_Bsw/Common/TC21x/IfxScu_bf.h" 1
# 39 "../30_Bsw/MicroTestLib/Static/ClkmTst.c" 2
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
# 40 "../30_Bsw/MicroTestLib/Static/ClkmTst.c" 2
# 1 "../30_Bsw/MicroTestLib/Static/ClkmTst.h" 1
# 41 "../30_Bsw/MicroTestLib/Static/ClkmTst.h"
# 1 "../30_Bsw/Common/Platform_Types.h" 1
# 42 "../30_Bsw/MicroTestLib/Static/ClkmTst.h" 2
# 1 "../30_Bsw/STL_common/Sl_Timeout.h" 1
# 43 "../30_Bsw/MicroTestLib/Static/ClkmTst.h" 2

# 1 "../30_Bsw/STL_common/Sl_ErrorCodes.h" 1
# 43 "../30_Bsw/STL_common/Sl_ErrorCodes.h"
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
# 45 "../30_Bsw/MicroTestLib/Static/ClkmTst.h" 2
# 1 "../30_Bsw/STL_common/ChipId.h" 1
# 46 "../30_Bsw/MicroTestLib/Static/ClkmTst.h" 2
# 138 "../30_Bsw/MicroTestLib/Static/ClkmTst.h"
typedef uint32 ClkmTst_CCUCONType;
# 180 "../30_Bsw/MicroTestLib/Static/ClkmTst.h"
# 1 "../30_Bsw/STL_common/Ifx_MemMap.h" 1
# 2642 "../30_Bsw/STL_common/Ifx_MemMap.h"
#pragma section ".text.STL_ASIL_CODE" ax 4
# 181 "../30_Bsw/MicroTestLib/Static/ClkmTst.h" 2
extern Sl_TstRsltType ClkmTst_ClkmTst
(
    const Sl_ParamSetType ParamSetIndex,
    const uint8 TstSeed,
    uint32* const TstSignature
);

# 1 "../30_Bsw/STL_common/Ifx_MemMap.h" 1
# 2654 "../30_Bsw/STL_common/Ifx_MemMap.h"
#pragma section
# 189 "../30_Bsw/MicroTestLib/Static/ClkmTst.h" 2
# 41 "../30_Bsw/MicroTestLib/Static/ClkmTst.c" 2
# 1 "../30_Bsw/Smu/Static/SmuInt.h" 1
# 44 "../30_Bsw/Smu/Static/SmuInt.h"
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
# 45 "../30_Bsw/Smu/Static/SmuInt.h" 2
# 68 "../30_Bsw/Smu/Static/SmuInt.h"
typedef uint8 Smu_AlarmActionType;

typedef uint8 Smu_FSPActionType;
# 85 "../30_Bsw/Smu/Static/SmuInt.h"
# 1 "../30_Bsw/STL_common/Ifx_MemMap.h" 1
# 2642 "../30_Bsw/STL_common/Ifx_MemMap.h"
#pragma section ".text.STL_ASIL_CODE" ax 4
# 86 "../30_Bsw/Smu/Static/SmuInt.h" 2
# 124 "../30_Bsw/Smu/Static/SmuInt.h"
extern Std_ReturnType Smu_Init
(
  const Smu_ConfigType* const ConfigPtr
);
# 158 "../30_Bsw/Smu/Static/SmuInt.h"
extern Std_ReturnType Smu_DeInit(void);
# 201 "../30_Bsw/Smu/Static/SmuInt.h"
extern Std_ReturnType Smu_GetAlarmAction
(
  const uint8 AlarmGroup,
  const uint8 AlarmPos,
  Smu_AlarmActionType* const IntAlarmAction,
  Smu_FSPActionType* const FSPAction
);
# 247 "../30_Bsw/Smu/Static/SmuInt.h"
extern Std_ReturnType Smu_SetAlarmAction
(
  const uint8 AlarmGroup,
  const uint8 AlarmPos,
  const Smu_AlarmActionType AlarmAction
);
# 280 "../30_Bsw/Smu/Static/SmuInt.h"
extern Std_ReturnType Smu_LockConfigRegs(void);
# 318 "../30_Bsw/Smu/Static/SmuInt.h"
extern Std_ReturnType Smu_ActivateRunState(const uint32 Cmd);



# 1 "../30_Bsw/STL_common/Ifx_MemMap.h" 1
# 2654 "../30_Bsw/STL_common/Ifx_MemMap.h"
#pragma section
# 323 "../30_Bsw/Smu/Static/SmuInt.h" 2
# 42 "../30_Bsw/MicroTestLib/Static/ClkmTst.c" 2
# 199 "../30_Bsw/MicroTestLib/Static/ClkmTst.c"
typedef struct ClkmTst_BackupDataType
{

    ClkmTst_CCUCONType CCUCON3Backup;

    ClkmTst_CCUCONType CCUCON4Backup;





    ClkmTst_CCUCONType CCUCON0Backup;

    Smu_AlarmActionType AlmActionBackup[7];
}ClkmTst_BackupDataType;
# 223 "../30_Bsw/MicroTestLib/Static/ClkmTst.c"
# 1 "../30_Bsw/STL_common/Ifx_MemMap.h" 1
# 3965 "../30_Bsw/STL_common/Ifx_MemMap.h"
#pragma section ".rodata.STL_CONST_8BIT" a 1
# 224 "../30_Bsw/MicroTestLib/Static/ClkmTst.c" 2


static const uint8 ClkmTst_kSmuAlarmId[7] =
                               { ((3U)),
                                 ((4U)),
                                 ((5U)),
                                 ((6U)),
                                 ((7U)),
                                 ((8U)),
                                 ((9U))
                               };


# 1 "../30_Bsw/STL_common/Ifx_MemMap.h" 1
# 3976 "../30_Bsw/STL_common/Ifx_MemMap.h"
#pragma section
# 238 "../30_Bsw/MicroTestLib/Static/ClkmTst.c" 2
# 246 "../30_Bsw/MicroTestLib/Static/ClkmTst.c"
# 1 "../30_Bsw/STL_common/Ifx_MemMap.h" 1
# 2642 "../30_Bsw/STL_common/Ifx_MemMap.h"
#pragma section ".text.STL_ASIL_CODE" ax 4
# 247 "../30_Bsw/MicroTestLib/Static/ClkmTst.c" 2
static Sl_TstRsltType ClkmTst_lInit
(
  ClkmTst_BackupDataType * ClkmTst_BackupData,
  uint8 * ClkmTst_RestoreAlmFlag,
  uint32 * Clkm_SmuAlarmMask
);

static Sl_TstRsltType ClkmTst_lExecuteTest
(
  uint32* const TstSignature,
  ClkmTst_BackupDataType ClkmTst_BackupData,
  uint32 Clkm_SmuAlarmMask
);

static Sl_TstRsltType ClkmTst_lCheckSmuAlarm
(
  uint32 AlarmCheck,
  uint32 Clkm_SmuAlarmMask
);

static void ClkmTst_lDisableClockMonitors
(
  ClkmTst_BackupDataType ClkmTst_BackupData
);

static void ClkmTst_lSetupClockMonitorsTooLow(void);

static void ClkmTst_lSetupClockMonitorsTooHigh(void);

static void ClkmTst_lCalculateSignature
(uint32* const TstSignature);

static Sl_TstRsltType ClkmTst_lClearSmuAlarms(void);

static void ClkmTst_lRestoreClockMonitors
(ClkmTst_BackupDataType ClkmTst_BackupData);

static Sl_TstRsltType ClkmTst_lRestoreSmuAlarmsConfig
(ClkmTst_BackupDataType ClkmTst_BackupData);

static uint32 ClkmTst_lInitAlarmChkVal(void);
# 339 "../30_Bsw/MicroTestLib/Static/ClkmTst.c"
static Sl_TstRsltType ClkmTst_lInit
(
  ClkmTst_BackupDataType * ClkmTst_BackupData,
  uint8 * ClkmTst_RestoreAlmFlag,
  uint32 * Clkm_SmuAlarmMask
)
{
  Sl_TstRsltType Result;
  Std_ReturnType SmuResult;
  uint32 SmuAlarmId;
  uint32 SmuClkmAlarmStatus = 0U;






  Smu_FSPActionType SmuAlarmFspAction = 0U;


  if (((Smu_StateType)1) != Smu_GetSmuState())
  {
    Result = (0xe020cU);
  }
  else
  {

    SmuResult = Smu_GetAlarmStatus(((uint8)(3U)),
                                   &SmuClkmAlarmStatus
                                  );
    if(SmuResult != (Std_ReturnType)0U)
    {
      Result = (0xe020eU);
    }
    else if(((SmuClkmAlarmStatus & (((uint32)1U << ((3U))))) != 0U)



              ||((SmuClkmAlarmStatus & (((uint32)1U << ((5U))))) != 0U)
              ||((SmuClkmAlarmStatus & (((uint32)1U << ((6U))))) != 0U)
              ||((SmuClkmAlarmStatus & (((uint32)1U << ((7U))))) != 0U)
              ||((SmuClkmAlarmStatus & (((uint32)1U << ((8U))))) != 0U)



             )
    {
      Result = (0xe020dU);
    }
    else
    {

      (ClkmTst_BackupData->CCUCON0Backup) = (ClkmTst_CCUCONType)(*(volatile Ifx_SCU_CCUCON0 *)0xF0036030u).U;
      (ClkmTst_BackupData->CCUCON3Backup) = (ClkmTst_CCUCONType)(*(volatile Ifx_SCU_CCUCON3 *)0xF0036044u).U;
      (ClkmTst_BackupData->CCUCON4Backup) = (ClkmTst_CCUCONType)(*(volatile Ifx_SCU_CCUCON4 *)0xF0036048u).U;







        SmuAlarmId = (uint32)(0U);
        do
        {
          SmuResult = Smu_GetAlarmAction
                        (((uint8)(3U)),
                         ClkmTst_kSmuAlarmId[SmuAlarmId],
                         &ClkmTst_BackupData->AlmActionBackup[SmuAlarmId],
                         &SmuAlarmFspAction
                        );
          SmuAlarmId++;
        }while( (SmuResult == (Std_ReturnType)0U) &&
                (SmuAlarmId <= (uint32)(6U))
            );

        if(SmuResult != (Std_ReturnType)0U)
        {
          Result = (0xe0210U);
        }
        else
        {


          *ClkmTst_RestoreAlmFlag = ((uint8)1U);


          SmuAlarmId = (uint32)(0U);

          do
          {
            SmuResult = Smu_SetAlarmAction
                            (((uint8)(3U)),
                             ClkmTst_kSmuAlarmId[SmuAlarmId],
                             ((Smu_AlarmActionType)0x00U)
                            );
            SmuAlarmId++;
          }while((SmuResult == (Std_ReturnType)0U) &&
                 (SmuAlarmId <= (uint32)(6U))
                );

          if(SmuResult != (Std_ReturnType)0U)
          {
            Result = (0xe0211U);
          }
          else
          {

            *Clkm_SmuAlarmMask = ClkmTst_lInitAlarmChkVal();

            Result = (0xe01ffU);
          }
        }
    }
  }

  return Result;
}
# 480 "../30_Bsw/MicroTestLib/Static/ClkmTst.c"
static uint32 ClkmTst_lInitAlarmChkVal(void)
{
  uint32 Clkm_SmuAlarmMask;
  uint32 Clkm_CCUCONINSEL;
  uint32 Clkm_CCUCONCLKSEL;
# 494 "../30_Bsw/MicroTestLib/Static/ClkmTst.c"
  Clkm_SmuAlarmMask = ((uint32)(((uint32)1U << ((7U)))) |
                        (uint32)(((uint32)1U << ((6U)))));
# 504 "../30_Bsw/MicroTestLib/Static/ClkmTst.c"
  if((uint32)(*(volatile Ifx_SCU_CCUCON1 *)0xF0036034u).B.STMDIV != (0U))
  {
    Clkm_SmuAlarmMask = (Clkm_SmuAlarmMask | (uint32)(((uint32)1U << ((3U)))));
  }
  if((uint32)(*(volatile Ifx_SCU_CCUCON1 *)0xF0036034u).B.GTMDIV != (0U))
  {
    Clkm_SmuAlarmMask = (Clkm_SmuAlarmMask | (uint32)(((uint32)1U << ((8U)))));
  }


  Clkm_CCUCONINSEL = (uint32)(*(volatile Ifx_SCU_CCUCON1 *)0xF0036034u).B.INSEL;
  Clkm_CCUCONCLKSEL = (uint32)(*(volatile Ifx_SCU_CCUCON0 *)0xF0036030u).B.CLKSEL;

  if((Clkm_CCUCONINSEL == (uint32)(1U)) &&
     (Clkm_CCUCONCLKSEL == (uint32)(1U)))
  {
    Clkm_SmuAlarmMask = (Clkm_SmuAlarmMask | (uint32)(((uint32)1U << ((5U)))));
  }
# 533 "../30_Bsw/MicroTestLib/Static/ClkmTst.c"
  return(Clkm_SmuAlarmMask);

}
# 563 "../30_Bsw/MicroTestLib/Static/ClkmTst.c"
static Sl_TstRsltType ClkmTst_lRestoreSmuAlarmsConfig
(
  ClkmTst_BackupDataType ClkmTst_BackupData
)
{
  Sl_TstRsltType Result;
  Std_ReturnType SmuResult;
  uint32 SmuAlarmId;


  Result = (0xe010aU);


  SmuAlarmId = (uint32)(0U);





  while(SmuAlarmId <= (uint32)(6U))
  {
    SmuResult = Smu_SetAlarmAction
                   (((uint8)(3U)),
                    ClkmTst_kSmuAlarmId[SmuAlarmId],
                    ClkmTst_BackupData.AlmActionBackup[SmuAlarmId]
                   );

    if(SmuResult != (Std_ReturnType)0U)
    {
      Result = (0xe0211U);
    }

    SmuAlarmId++;
  }

  if(Result == (0xe010aU))
  {

    Result = (0xe01ffU);
  }

  return Result;
}
# 629 "../30_Bsw/MicroTestLib/Static/ClkmTst.c"
static void ClkmTst_lSetupClockMonitorsTooLow(void)
{
   uint8 ChipRevNo = 0U;
   volatile uint32 CCUCON3Value = 0U;
   volatile uint32 CCUCON4Value = 0U;






   Mcal_ResetSafetyENDINIT_Timed(((uint32)22960U));

   ChipRevNo = (uint8)(((uint8)((*(volatile Ifx_SCU_CHIPID *)0xF0036140u).B.CHREV))
                                            & (0x3FU));
# 663 "../30_Bsw/MicroTestLib/Static/ClkmTst.c"
if (((uint8)(0x01U)) == ChipRevNo)

  {
# 677 "../30_Bsw/MicroTestLib/Static/ClkmTst.c"
     CCUCON3Value |= (unsigned_int)(((uint32)(0x1U)<<22U)| ((uint32)(0x3FU)<<16U)| ((uint32)(0x1U)<<6U)| ((uint32)(0x3FU)));

     (*(volatile Ifx_SCU_CCUCON3 *)0xF0036044u).U = CCUCON3Value;

    if((uint32)(*(volatile Ifx_SCU_CCUCON1 *)0xF0036034u).B.GTMDIV != (0U))
    {
     CCUCON4Value = (unsigned_int)(((uint32)(0x1U)<<14U)| ((uint32)(0x3FU)<<8U));
    }

    if((uint32)(*(volatile Ifx_SCU_CCUCON1 *)0xF0036034u).B.STMDIV != (0U))
    {
      CCUCON4Value |= (unsigned_int)(((uint32)(0x1U)<<22U)| ((uint32)(0x3FU)<<16U));
    }

    CCUCON4Value |= (unsigned_int)(((uint32)(0x1U)<<6U)| ((uint32)(0x3FU)));

    (*(volatile Ifx_SCU_CCUCON4 *)0xF0036048u).U = CCUCON4Value;







  }
  else
  {
# 715 "../30_Bsw/MicroTestLib/Static/ClkmTst.c"
     CCUCON3Value |= (unsigned_int)(((uint32)(0x3U)<<22U)| ((uint32)(0x3FU)<<16U)| ((uint32)(0x3U)<<6U)| ((uint32)(0x3FU)));

     (*(volatile Ifx_SCU_CCUCON3 *)0xF0036044u).U = CCUCON3Value;

    if((uint32)(*(volatile Ifx_SCU_CCUCON1 *)0xF0036034u).B.GTMDIV != (0U))
    {
     CCUCON4Value = (unsigned_int)(((uint32)(0x3U)<<14U)| ((uint32)(0x3FU)<<8U));
    }

    if((uint32)(*(volatile Ifx_SCU_CCUCON1 *)0xF0036034u).B.STMDIV != (0U))
    {
      CCUCON4Value |= (unsigned_int)(((uint32)(0x3U)<<22U)| ((uint32)(0x3FU)<<16U));
    }

    CCUCON4Value |= (unsigned_int)(((uint32)(0x3U)<<6U)| ((uint32)(0x3FU)));

    (*(volatile Ifx_SCU_CCUCON4 *)0xF0036048u).U = CCUCON4Value;







  }


  (*(volatile Ifx_SCU_CCUCON3 *)0xF0036044u).B.UP = (1U);
# 752 "../30_Bsw/MicroTestLib/Static/ClkmTst.c"
  Mcal_SetSafetyENDINIT_Timed();

}
# 778 "../30_Bsw/MicroTestLib/Static/ClkmTst.c"
static void ClkmTst_lSetupClockMonitorsTooHigh(void)
{
  volatile uint32 CCUCON3Value = 0U;
  volatile uint32 CCUCON4Value = 0U;






  Mcal_ResetSafetyENDINIT_Timed(((uint32)22960U));
# 801 "../30_Bsw/MicroTestLib/Static/ClkmTst.c"
  CCUCON3Value |= (unsigned_int)(((uint32)(0x0U)<<22U)| ((uint32)(0x1U)<<16U)| ((uint32)(0x0U)<<6U)| ((uint32)(0x1U)));

  (*(volatile Ifx_SCU_CCUCON3 *)0xF0036044u).U = CCUCON3Value;

 if((uint32)(*(volatile Ifx_SCU_CCUCON1 *)0xF0036034u).B.GTMDIV != (0U))
 {
   CCUCON4Value = (unsigned_int)(((uint32)(0x0U)<<14U)| ((uint32)(0x1U)<<8U));
 }

 if((uint32)(*(volatile Ifx_SCU_CCUCON1 *)0xF0036034u).B.STMDIV != (0U))
 {
 CCUCON4Value |= (unsigned_int)(((uint32)(0x0U)<<22U)| ((uint32)(0x1U)<<16U));
 }

 CCUCON4Value |= (unsigned_int)(((uint32)(0x0U)<<6U)| ((uint32)(0x1U)));

 (*(volatile Ifx_SCU_CCUCON4 *)0xF0036048u).U = CCUCON4Value;
# 827 "../30_Bsw/MicroTestLib/Static/ClkmTst.c"
  (*(volatile Ifx_SCU_CCUCON3 *)0xF0036044u).B.UP = (1U);
# 836 "../30_Bsw/MicroTestLib/Static/ClkmTst.c"
  Mcal_SetSafetyENDINIT_Timed();
}
# 862 "../30_Bsw/MicroTestLib/Static/ClkmTst.c"
static void ClkmTst_lCalculateSignature
(uint32* const TstSignature)
{

  *TstSignature = (uint32)(__crc32((unsigned_int)(*TstSignature),(unsigned_int)((((uint32)0x00FFFFFFU) & (*(volatile Ifx_SCU_CCUCON3 *)0xF0036044u).U))))
                                                                       ;
  *TstSignature = (uint32)(__crc32((unsigned_int)(*TstSignature),(unsigned_int)((((uint32)0x00FFFFFFU) & (*(volatile Ifx_SCU_CCUCON4 *)0xF0036048u).U))))
                                                                       ;





}
# 899 "../30_Bsw/MicroTestLib/Static/ClkmTst.c"
static void ClkmTst_lRestoreClockMonitors
(
  ClkmTst_BackupDataType ClkmTst_BackupData
)
{

  Mcal_ResetSafetyENDINIT_Timed(((uint32)22960U));

  (*(volatile Ifx_SCU_CCUCON3 *)0xF0036044u).U = (unsigned_int)(ClkmTst_BackupData.CCUCON3Backup);
  (*(volatile Ifx_SCU_CCUCON4 *)0xF0036048u).U = (unsigned_int)(ClkmTst_BackupData.CCUCON4Backup);






  (*(volatile Ifx_SCU_CCUCON3 *)0xF0036044u).B.UP = (1U);
# 925 "../30_Bsw/MicroTestLib/Static/ClkmTst.c"
  (*(volatile Ifx_SCU_CCUCON0 *)0xF0036030u).U = (ClkmTst_BackupData.CCUCON0Backup);

  (*(volatile Ifx_SCU_CCUCON0 *)0xF0036030u).B.UP = (1U);



  Mcal_SetSafetyENDINIT_Timed();
}
# 956 "../30_Bsw/MicroTestLib/Static/ClkmTst.c"
static void ClkmTst_lDisableClockMonitors
(
  ClkmTst_BackupDataType ClkmTst_BackupData
)
{

  Mcal_ResetSafetyENDINIT_Timed(((uint32)22960U));

  (*(volatile Ifx_SCU_CCUCON3 *)0xF0036044u).U = 0U;
  (*(volatile Ifx_SCU_CCUCON4 *)0xF0036048u).U = 0U;






  (*(volatile Ifx_SCU_CCUCON3 *)0xF0036044u).B.UP = (1U);







  (*(volatile Ifx_SCU_CCUCON0 *)0xF0036030u).U = (ClkmTst_BackupData.CCUCON0Backup);

  (*(volatile Ifx_SCU_CCUCON0 *)0xF0036030u).B.UP = (1U);


  Mcal_SetSafetyENDINIT_Timed();
}
# 1010 "../30_Bsw/MicroTestLib/Static/ClkmTst.c"
static Sl_TstRsltType ClkmTst_lClearSmuAlarms(void)
{
  Sl_TstRsltType Result;
  Std_ReturnType SmuResult;
  uint32 SmuAlarmId;


  Result = (0xe010aU);


  SmuAlarmId = (uint32)(0U);
  do
  {
    SmuResult = Smu_ClearAlarmStatus
                   (((uint8)(3U)),ClkmTst_kSmuAlarmId[SmuAlarmId]);


    if(SmuResult != (Std_ReturnType)0U)
    {
      Result = (0xe020fU);
    }

    SmuAlarmId++;

  }while(SmuAlarmId <= (uint32)(6U));

  if(Result == (0xe010aU))
  {
    Result = (0xe01ffU);
  }
  return Result;
}
# 1067 "../30_Bsw/MicroTestLib/Static/ClkmTst.c"
static Sl_TstRsltType ClkmTst_lCheckSmuAlarm
(
  uint32 AlarmCheck,
  uint32 Clkm_SmuAlarmMask
)
{
  uint32 Timeout;
  Sl_TstRsltType Result;
  Std_ReturnType SmuResult;
  uint32 ClkmTstAlarmStatus = 0U;

  Timeout = (0x2000U);


  Result = (0xe5001U);


  do
  {
    SmuResult = Smu_GetAlarmStatus(((uint8)(3U)), &ClkmTstAlarmStatus);

    ClkmTstAlarmStatus = (ClkmTstAlarmStatus & Clkm_SmuAlarmMask);


    if((Std_ReturnType)0U == SmuResult)
    {




      if(ClkmTstAlarmStatus == AlarmCheck)
      {
        Result = (0xe01ffU);
      }
    }
    else
    {

      Result = (0xe020eU);
    }
    Timeout = Timeout - 1U;
  }
  while((Timeout != 0U) && ((0xe5001U) == Result));

  return Result;
}
# 1148 "../30_Bsw/MicroTestLib/Static/ClkmTst.c"
static Sl_TstRsltType ClkmTst_lExecuteTest
(
  uint32* const TstSignature,
  ClkmTst_BackupDataType ClkmTst_BackupData,
  uint32 Clkm_SmuAlarmMask
)
{

  Sl_TstRsltType SmuClrAlmResult;
  Sl_TstRsltType Result;


  ClkmTst_lSetupClockMonitorsTooLow();


  Result = ClkmTst_lCheckSmuAlarm(Clkm_SmuAlarmMask,Clkm_SmuAlarmMask);




  if(Result == (0xe01ffU))
  {
    ClkmTst_lCalculateSignature(TstSignature);
  }


  ClkmTst_lDisableClockMonitors(ClkmTst_BackupData);


  SmuClrAlmResult = ClkmTst_lClearSmuAlarms();






  if((SmuClrAlmResult != (0xe01ffU)) && (Result == (0xe01ffU)))
  {
    Result = SmuClrAlmResult;
  }

  if(Result == (0xe01ffU))
  {

    ClkmTst_lRestoreClockMonitors(ClkmTst_BackupData);


    Result = ClkmTst_lCheckSmuAlarm((0U),Clkm_SmuAlarmMask);

    if(Result == (0xe01ffU))
    {

      ClkmTst_lSetupClockMonitorsTooHigh();


      Result = ClkmTst_lCheckSmuAlarm(Clkm_SmuAlarmMask,Clkm_SmuAlarmMask);




      if(Result == (0xe01ffU))
      {
        ClkmTst_lCalculateSignature(TstSignature);
      }


      ClkmTst_lDisableClockMonitors(ClkmTst_BackupData);


      SmuClrAlmResult = ClkmTst_lClearSmuAlarms();


      ClkmTst_lRestoreClockMonitors(ClkmTst_BackupData);






      if((SmuClrAlmResult != (0xe01ffU)) && (Result == (0xe01ffU)))
      {
        Result = SmuClrAlmResult;
      }

    }
  }

  return Result;
}
# 1266 "../30_Bsw/MicroTestLib/Static/ClkmTst.c"
Sl_TstRsltType ClkmTst_ClkmTst
(
  const Sl_ParamSetType ParamSetIndex,
  const uint8 TstSeed,
  uint32* const TstSignature
)
{
  Sl_TstRsltType Result;
  Sl_TstRsltType RestoreAlmConfigResult;
  ClkmTst_BackupDataType ClkmTst_BackupData;
  uint8 ClkmTst_RestoreAlmFlag;
  uint32 Clkm_SmuAlarmMask;

  {if((ParamSetIndex) != 0U) { }}

  *TstSignature = (uint32)(__crc32((unsigned_int)((uint32)TEST_ID_CLKM_TST),(unsigned_int)((uint32)TstSeed)));


  ClkmTst_RestoreAlmFlag = ((uint8)0U);


  Result = ClkmTst_lInit(&ClkmTst_BackupData,
                         &ClkmTst_RestoreAlmFlag,
                         &Clkm_SmuAlarmMask);

  if((0xe01ffU) == Result)
  {
    Result = ClkmTst_lExecuteTest(TstSignature,
                                  ClkmTst_BackupData,
                                  Clkm_SmuAlarmMask);
  }


  if(ClkmTst_RestoreAlmFlag == ((uint8)1U))
  {

    RestoreAlmConfigResult = ClkmTst_lRestoreSmuAlarmsConfig
                                (ClkmTst_BackupData);






    if((RestoreAlmConfigResult != (0xe01ffU)) && (Result == (0xe01ffU)))
    {
      Result = RestoreAlmConfigResult;
    }
  }


  *TstSignature = (uint32)(__crc32((unsigned_int)(*TstSignature),(unsigned_int)((uint32)Result)));

  return Result;
}


# 1 "../30_Bsw/STL_common/Ifx_MemMap.h" 1
# 2654 "../30_Bsw/STL_common/Ifx_MemMap.h"
#pragma section
# 1324 "../30_Bsw/MicroTestLib/Static/ClkmTst.c" 2
