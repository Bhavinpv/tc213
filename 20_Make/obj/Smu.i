# 1 "../30_Bsw/Smu/Static/Smu.c"
# 1 "S:\\20_Make//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "../30_Bsw/Smu/Static/Smu.c"
# 43 "../30_Bsw/Smu/Static/Smu.c"
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
# 44 "../30_Bsw/Smu/Static/Smu.c" 2
# 1 "../30_Bsw/Common/TC21x/IfxSmu_bf.h" 1
# 45 "../30_Bsw/Smu/Static/Smu.c" 2
# 1 "../30_Bsw/Common/TC21x/IfxSmu_reg.h" 1
# 36 "../30_Bsw/Common/TC21x/IfxSmu_reg.h"
# 1 "../30_Bsw/Common/TC21x/IfxSmu_regdef.h" 1
# 39 "../30_Bsw/Common/TC21x/IfxSmu_regdef.h"
# 1 "../30_Bsw/Common/TC21x/Ifx_TypesReg.h" 1
# 40 "../30_Bsw/Common/TC21x/IfxSmu_regdef.h" 2





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
# 46 "../30_Bsw/Smu/Static/Smu.c" 2
# 1 "../30_Bsw/STL_common/Sl_Ipc.h" 1
# 48 "../30_Bsw/STL_common/Sl_Ipc.h"
# 1 "../30_Bsw/STL_common/Mcal.h" 1
# 49 "../30_Bsw/STL_common/Sl_Ipc.h" 2
# 57 "../30_Bsw/STL_common/Sl_Ipc.h"
typedef enum
{
           SL_SMUALRMGRP3_SPNLCK_ID,
           SL_LMU_SPNLCK_ID,
           SL_DMA_SPNLCK_ID,
           SL_FCE_SPNLCK_ID,
           SL_SMUDRIVER_SPNLCK_ID,
           SL_SMUALRMGRP3_BIT30_SPNLCK_ID,
           SL_SMUALRMGRP5_ALM0_SPNLCK_ID,
           SL_SMUALRMGRP5_ALM1_SPNLCK_ID,
           SL_SMUALRMGRP5_ALM2_SPNLCK_ID,
           SL_SMUALRMGRP5_ALM3_SPNLCK_ID,


  SL_SPINLOCK_CNT
}SlSpnlockId;
# 99 "../30_Bsw/STL_common/Sl_Ipc.h"
# 1 "../30_Bsw/STL_common/Ifx_MemMap.h" 1
# 2642 "../30_Bsw/STL_common/Ifx_MemMap.h"
#pragma section ".text.STL_ASIL_CODE" ax 4
# 100 "../30_Bsw/STL_common/Sl_Ipc.h" 2




void Sl_SpinLockInit(void);
Std_ReturnType Sl_GetSpinLock(const SlSpnlockId SpinLckID,uint32 Timeout);
void Sl_ReleaseSpinLock(SlSpnlockId SpinLckID);


# 1 "../30_Bsw/STL_common/Ifx_MemMap.h" 1
# 2654 "../30_Bsw/STL_common/Ifx_MemMap.h"
#pragma section
# 110 "../30_Bsw/STL_common/Sl_Ipc.h" 2
# 47 "../30_Bsw/Smu/Static/Smu.c" 2
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
# 48 "../30_Bsw/Smu/Static/Smu.c" 2
# 1 "../30_Bsw/STL_common/Sl_Timeout.h" 1
# 49 "../30_Bsw/Smu/Static/Smu.c" 2
# 158 "../30_Bsw/Smu/Static/Smu.c"
# 1 "../30_Bsw/STL_common/Ifx_MemMap.h" 1
# 3538 "../30_Bsw/STL_common/Ifx_MemMap.h"
#pragma section ".data.STL_RAM_NONZERO_INIT_8BIT" aw
# 159 "../30_Bsw/Smu/Static/Smu.c" 2





static uint8 Smu_InitStatus = ((uint8)0);


# 1 "../30_Bsw/STL_common/Ifx_MemMap.h" 1
# 3551 "../30_Bsw/STL_common/Ifx_MemMap.h"
#pragma section
# 168 "../30_Bsw/Smu/Static/Smu.c" 2







# 1 "../30_Bsw/STL_common/Ifx_MemMap.h" 1
# 3538 "../30_Bsw/STL_common/Ifx_MemMap.h"
#pragma section ".data.STL_RAM_NONZERO_INIT_8BIT" aw
# 176 "../30_Bsw/Smu/Static/Smu.c" 2





static uint8 Smu_InitStatusBackup = (uint8)(~(((uint8)0)));


# 1 "../30_Bsw/STL_common/Ifx_MemMap.h" 1
# 3551 "../30_Bsw/STL_common/Ifx_MemMap.h"
#pragma section
# 185 "../30_Bsw/Smu/Static/Smu.c" 2







# 1 "../30_Bsw/STL_common/Ifx_MemMap.h" 1
# 3321 "../30_Bsw/STL_common/Ifx_MemMap.h"
#pragma section ".data.STL_RAM_8BIT" aw 1
# 193 "../30_Bsw/Smu/Static/Smu.c" 2





static uint8 Smu_ErrPinStatus;


static uint8 Smu_DriverState;


static uint8 Smu_LockState;


# 1 "../30_Bsw/STL_common/Ifx_MemMap.h" 1
# 3333 "../30_Bsw/STL_common/Ifx_MemMap.h"
#pragma section
# 208 "../30_Bsw/Smu/Static/Smu.c" 2
# 216 "../30_Bsw/Smu/Static/Smu.c"
# 1 "../30_Bsw/STL_common/Ifx_MemMap.h" 1
# 3321 "../30_Bsw/STL_common/Ifx_MemMap.h"
#pragma section ".data.STL_RAM_8BIT" aw 1
# 217 "../30_Bsw/Smu/Static/Smu.c" 2





static uint8 Smu_ErrPinStatusBackup;


static uint8 Smu_DriverStateBackup;


static uint8 Smu_LockStateBackup;


# 1 "../30_Bsw/STL_common/Ifx_MemMap.h" 1
# 3333 "../30_Bsw/STL_common/Ifx_MemMap.h"
#pragma section
# 232 "../30_Bsw/Smu/Static/Smu.c" 2
# 242 "../30_Bsw/Smu/Static/Smu.c"
typedef struct SMU_AlarmGroupRegMap
{
  volatile Ifx_SMU_AGCF CfgReg[(21U)];
  uint32 Reserved0[11];
  volatile Ifx_SMU_AGFSP FSPCfgReg[(7U)];
  uint32 Reserved1[9];
  volatile Ifx_SMU_AG AGStatusReg[(7U)];
  uint32 Reserved2[9];
  volatile Ifx_SMU_AD ADStatusReg[(7U)];
}SMU_AlarmGroupRegMapType;
# 261 "../30_Bsw/Smu/Static/Smu.c"
# 1 "../30_Bsw/STL_common/Ifx_MemMap.h" 1
# 2642 "../30_Bsw/STL_common/Ifx_MemMap.h"
#pragma section ".text.STL_ASIL_CODE" ax 4
# 262 "../30_Bsw/Smu/Static/Smu.c" 2





static void Smu_lSetSmuInitStatus(const uint8 InitStatus);

static Std_ReturnType Smu_lGetSmuInitStatus(void);

static Std_ReturnType Smu_lChkSmuInitState(void);


static void Smu_lSetErrPinStatus(const uint8 ErrPinStatus);

static Std_ReturnType Smu_lGetErrPinStatus(void);


static void Smu_lSetSmuDriverState(const uint8 DriverState);

static Std_ReturnType Smu_lGetSmuDriverState(void);

static Std_ReturnType Smu_lChkSmuDriverState(void);


static void Smu_lSetSmuLockState(const uint8 LockState);

static Std_ReturnType Smu_lGetSmuLockState(void);

static Std_ReturnType Smu_lChkSmuLockState(void);

static Std_ReturnType Smu_lClearAllAlarms(void);
# 323 "../30_Bsw/Smu/Static/Smu.c"
static void Smu_lSetSmuInitStatus(const uint8 InitStatus)
{

  Smu_InitStatus = InitStatus;

  Smu_InitStatusBackup = ~(InitStatus);

}
# 354 "../30_Bsw/Smu/Static/Smu.c"
static Std_ReturnType Smu_lGetSmuInitStatus(void)
{
  Std_ReturnType RetVal = (Std_ReturnType)1U;

  if((Smu_InitStatus ^ Smu_InitStatusBackup) == ((uint8)0xFFU))
  {
    RetVal = (Std_ReturnType)0U;
  }

  return RetVal;

}
# 387 "../30_Bsw/Smu/Static/Smu.c"
static Std_ReturnType Smu_lChkSmuInitState(void)
{
  Std_ReturnType RetVal;
  uint8 InitState;

  RetVal = Smu_lGetSmuInitStatus();

  if(RetVal == (Std_ReturnType)0U)
  {
    InitState = Smu_InitStatus;
    if(InitState == ((uint8)0))
    {
      RetVal = (Std_ReturnType)1U;
    }
  }
  else
  {
    RetVal = (Std_ReturnType)1U;
  }

  return RetVal;
}
# 438 "../30_Bsw/Smu/Static/Smu.c"
static void Smu_lSetErrPinStatus(const uint8 ErrPinStatus)
{

  Smu_ErrPinStatus = ErrPinStatus;

  Smu_ErrPinStatusBackup = ~(ErrPinStatus);

}
# 469 "../30_Bsw/Smu/Static/Smu.c"
static Std_ReturnType Smu_lGetErrPinStatus(void)
{
  Std_ReturnType RetVal = (Std_ReturnType)1U;

  if((Smu_ErrPinStatus ^ Smu_ErrPinStatusBackup) == ((uint8)0xFFU))
  {
    RetVal = (Std_ReturnType)0U;
  }

  return RetVal;

}
# 511 "../30_Bsw/Smu/Static/Smu.c"
static void Smu_lSetSmuDriverState(const uint8 DriverState)
{

  Smu_DriverState = DriverState;

  Smu_DriverStateBackup = ~(DriverState);

}
# 542 "../30_Bsw/Smu/Static/Smu.c"
static Std_ReturnType Smu_lGetSmuDriverState(void)
{
  Std_ReturnType RetVal = (Std_ReturnType)1U;

  if((Smu_DriverState ^ Smu_DriverStateBackup) == ((uint8)0xFFU))
  {
    RetVal = (Std_ReturnType)0U;
  }

  return RetVal;

}
# 575 "../30_Bsw/Smu/Static/Smu.c"
static Std_ReturnType Smu_lChkSmuDriverState(void)
{
  Std_ReturnType RetVal;
  uint8 DriverState;

  RetVal = Smu_lGetSmuDriverState();
  if(RetVal == (Std_ReturnType)0U)
  {
    DriverState = Smu_DriverState;
    if(DriverState == ((uint8)1))
    {
      RetVal = (Std_ReturnType)1U;
    }
  }
  else
  {
    RetVal = (Std_ReturnType)1U;
  }

  return RetVal;
}
# 622 "../30_Bsw/Smu/Static/Smu.c"
static void Smu_lSetSmuLockState(const uint8 LockState)
{

  Smu_LockState = LockState;

  Smu_LockStateBackup = ~(LockState);

}
# 653 "../30_Bsw/Smu/Static/Smu.c"
static Std_ReturnType Smu_lGetSmuLockState(void)
{
  Std_ReturnType RetVal = (Std_ReturnType)1U;

  if((Smu_LockState ^ Smu_LockStateBackup) == ((uint8)0xFFU))
  {
    RetVal = (Std_ReturnType)0U;
  }

  return RetVal;

}
# 686 "../30_Bsw/Smu/Static/Smu.c"
static Std_ReturnType Smu_lChkSmuLockState(void)
{
  Std_ReturnType RetVal;
  uint8 LockState;

  RetVal = Smu_lGetSmuLockState();

  if(RetVal == (Std_ReturnType)0U)
  {
    LockState = Smu_LockState;
    if(LockState == ((uint8)1))
    {
      RetVal = (Std_ReturnType)1U;
    }
  }
  else
  {
    RetVal = (Std_ReturnType)1U;
  }

  return RetVal;
}
# 730 "../30_Bsw/Smu/Static/Smu.c"
Std_ReturnType Smu_lClearAllAlarms(void)
{
  Std_ReturnType RetVal;
  uint32 AlarmGroupIndex;

  RetVal = 0U;







  AlarmGroupIndex = (0U);
  do
  {

    if(0U == Sl_GetSpinLock(SL_SMUDRIVER_SPNLCK_ID, ((uint32)(3000U))))
    {


      (*(volatile Ifx_SMU_CMD *)0xF0036820u).U = (0x5U);


      Mcal_ResetSafetyENDINIT_Timed(((uint32)22960U));


      ((volatile SMU_AlarmGroupRegMapType *)(volatile void *)(&(*(volatile Ifx_SMU_AGCF *)0xF0036900u)))->AGStatusReg[AlarmGroupIndex].U =
                            (unsigned_int)(0xFFFFFFFFU);


      Mcal_SetSafetyENDINIT_Timed();

      Sl_ReleaseSpinLock(SL_SMUDRIVER_SPNLCK_ID);
    }
    else
    {
      RetVal = 1U;
    }

    AlarmGroupIndex++;
  }while((AlarmGroupIndex <= (6U)) &&
                     (RetVal == 0U));

  return RetVal;

}
# 811 "../30_Bsw/Smu/Static/Smu.c"
Std_ReturnType Smu_Init
(
  const Smu_ConfigType* const ConfigPtr
)
{
  Std_ReturnType RetVal;
  uint32 Index,TempRecTimeStatus;
  volatile uint32 dummy = 0U;
  uint8 InitStatus;
  {if((dummy) != 0U) { }}
  RetVal = (Std_ReturnType)1U;


  if(Smu_lGetSmuInitStatus() == (Std_ReturnType)0U)
  {
    InitStatus = Smu_InitStatus;
    if(InitStatus == ((uint8)1))
    {
      RetVal = (Std_ReturnType)1U;
    }

    else if( ConfigPtr == ((void *)0))
    {
      RetVal = (Std_ReturnType)1U;
    }
    else
    {
      RetVal = (Std_ReturnType)0U;
    }
  }


  if(RetVal == (Std_ReturnType)0U)
  {

    TempRecTimeStatus = (uint32)((*(volatile Ifx_SMU_STS *)0xF0036824u).U & (0x50000U));

    if(TempRecTimeStatus == 0U)
    {

      Mcal_ResetSafetyENDINIT_Timed(((uint32)22960U));


      (*(volatile Ifx_SMU_KEYS *)0xF0036834u).U = (unsigned_int)(((*(volatile Ifx_SMU_KEYS *)0xF0036834u).U & (unsigned_int)(0xFFFFFF00U)) | ((unsigned_int)0xBCU) );




      if(((*(volatile Ifx_SMU_FSP *)0xF0036828u).U & (~(0xFFFFFF9FU))) == (0x00000040U))
      {

        (*(volatile Ifx_SMU_FSP *)0xF0036828u).U = (*(volatile Ifx_SMU_FSP *)0xF0036828u).U & (0xFFFFFF9FU);


  dummy = (*(volatile Ifx_SMU_FSP *)0xF0036828u).U ;
  dummy = (*(volatile Ifx_SMU_FSP *)0xF0036828u).U ;

      }

      (*(volatile Ifx_SMU_FSP *)0xF0036828u).U = (unsigned_int) ((ConfigPtr->FSPCfg) & (0xFFFFFF9FU));

      if(((ConfigPtr->FSPCfg) & (~(0xFFFFFF9FU)))
                              ==(0x00000040U))
      {

        (*(volatile Ifx_SMU_FSP *)0xF0036828u).U = (*(volatile Ifx_SMU_FSP *)0xF0036828u).U | (0x00000040U);
      }

     (*(volatile Ifx_SMU_AGC *)0xF003682Cu).U = ConfigPtr->AGCCfg;
     (*(volatile Ifx_SMU_RTC *)0xF0036830u).U = ConfigPtr->RTCCfg;
     (*(volatile Ifx_SMU_RTAC0 *)0xF0036860u).U = ConfigPtr->RTAC0Cfg;

     (*(volatile Ifx_SMU_RTAC1 *)0xF0036864u).U = ConfigPtr->RTAC1Cfg;

     for(Index = 0U; Index < (21U); Index++)
     {
        ((volatile SMU_AlarmGroupRegMapType *)(volatile void *)(&(*(volatile Ifx_SMU_AGCF *)0xF0036900u)))->CfgReg[Index].U = ConfigPtr->AlarmConfig[Index];
     }

     for(Index = 0U; Index < (7U); Index++)
     {
        ((volatile SMU_AlarmGroupRegMapType *)(volatile void *)(&(*(volatile Ifx_SMU_AGCF *)0xF0036900u)))->FSPCfgReg[Index].U = ConfigPtr->AlarmFspConfig[Index];
     }


     (*(volatile Ifx_SMU_KEYS *)0xF0036834u).U = (unsigned_int)(0U);


     Mcal_SetSafetyENDINIT_Timed();





     RetVal = Smu_lClearAllAlarms();


     Smu_lSetErrPinStatus(((uint8)0));

     Smu_lSetSmuDriverState(((uint8)0));

     Smu_lSetSmuLockState(((uint8)0));



     if(RetVal == (Std_ReturnType)0U)
     {

       Smu_lSetSmuInitStatus(((uint8)1));
     }
    }
    else
    {
      RetVal = (Std_ReturnType)1U;
    }
  }

  return RetVal;

}
# 958 "../30_Bsw/Smu/Static/Smu.c"
Std_ReturnType Smu_DeInit(void)
{
  Std_ReturnType RetVal;
  uint32 Index,TempRecTimeStatus;
  volatile uint32 dummy = 0U;
  {if((dummy) != 0U) { }}

  RetVal = Smu_lChkSmuDriverState();

  if(RetVal == (Std_ReturnType)0U)
  {

    RetVal = Smu_lChkSmuInitState();
  }

  if(RetVal == (Std_ReturnType)0U)
  {

    TempRecTimeStatus = (uint32)((*(volatile Ifx_SMU_STS *)0xF0036824u).U & (0x50000U));

    if(TempRecTimeStatus == 0U)
    {

      Mcal_ResetSafetyENDINIT_Timed(((uint32)22960U));


      (*(volatile Ifx_SMU_KEYS *)0xF0036834u).U = (unsigned_int)(((*(volatile Ifx_SMU_KEYS *)0xF0036834u).U & (unsigned_int)(0xFFFFFF00U)) | ((unsigned_int)0xBCU) );



      if(((*(volatile Ifx_SMU_FSP *)0xF0036828u).U & (~(0xFFFFFF9FU))) == (0x00000040U))
      {

        (*(volatile Ifx_SMU_FSP *)0xF0036828u).U = (*(volatile Ifx_SMU_FSP *)0xF0036828u).U & (0xFFFFFF9FU);


        dummy = (*(volatile Ifx_SMU_FSP *)0xF0036828u).U ;
     dummy = (*(volatile Ifx_SMU_FSP *)0xF0036828u).U ;
      }

       (*(volatile Ifx_SMU_FSP *)0xF0036828u).U = (0x003FFF00U);

       (*(volatile Ifx_SMU_AGC *)0xF003682Cu).U = (0x0U);

       (*(volatile Ifx_SMU_RTC *)0xF0036830u).U = (0x003FFF01U);

       (*(volatile Ifx_SMU_RTAC0 *)0xF0036860u).U = (0xA39B938BU);

       (*(volatile Ifx_SMU_RTAC1 *)0xF0036864u).U = (0x0U);

       for(Index = 0U; Index < (21U); Index++)
       {


      if((Index== 7U) || (Index== 8U))
      {
        ((volatile SMU_AlarmGroupRegMapType *)(volatile void *)(&(*(volatile Ifx_SMU_AGCF *)0xF0036900u)))->CfgReg[Index].U = (0x20000000U);
      }

      else if((Index== 9U) || (Index== 11U))
      {
        ((volatile SMU_AlarmGroupRegMapType *)(volatile void *)(&(*(volatile Ifx_SMU_AGCF *)0xF0036900u)))->CfgReg[Index].U = (0x001E0000U);
      }
      else
      {
          ((volatile SMU_AlarmGroupRegMapType *)(volatile void *)(&(*(volatile Ifx_SMU_AGCF *)0xF0036900u)))->CfgReg[Index].U = (0x0U);
      }
       }

       for(Index = 0U; Index < (7U); Index++)
       {

      if(Index == 2U)
      {
        ((volatile SMU_AlarmGroupRegMapType *)(volatile void *)(&(*(volatile Ifx_SMU_AGCF *)0xF0036900u)))->FSPCfgReg[Index].U = (0x20000000U);
      }
      else
      {
          ((volatile SMU_AlarmGroupRegMapType *)(volatile void *)(&(*(volatile Ifx_SMU_AGCF *)0xF0036900u)))->FSPCfgReg[Index].U = (0x0U);
      }
       }


      (*(volatile Ifx_SMU_KEYS *)0xF0036834u).U = (unsigned_int)(0U);


      Mcal_SetSafetyENDINIT_Timed();


      Smu_lSetErrPinStatus(((uint8)0));
      Smu_lSetSmuDriverState(((uint8)0));
      Smu_lSetSmuLockState(((uint8)0));


      Smu_lSetSmuInitStatus(((uint8)0));
    }
    else
    {
       RetVal = (Std_ReturnType)1U;
    }
  }

  return RetVal;
}
# 1092 "../30_Bsw/Smu/Static/Smu.c"
Std_ReturnType Smu_ClearAlarmStatus
(
  const uint8 AlarmGroup,
  const uint8 AlarmPos
)
{
  Std_ReturnType RetVal;
  uint32 Timeout;
  uint32 AlarmStatusReadback;

  RetVal = 0U;
# 1111 "../30_Bsw/Smu/Static/Smu.c"
  if((AlarmGroup > (uint8)(6U)) ||
     (AlarmPos > (uint8)(31U)))
  {

     RetVal = (Std_ReturnType)1U;
  }

  if(RetVal == (Std_ReturnType)0U)
  {

    if(0U == Sl_GetSpinLock(SL_SMUDRIVER_SPNLCK_ID, ((uint32)(3000U))))
    {


      (*(volatile Ifx_SMU_CMD *)0xF0036820u).U = (0x5U);


      Mcal_ResetSafetyENDINIT_Timed(((uint32)22960U));


      ((volatile SMU_AlarmGroupRegMapType *)(volatile void *)(&(*(volatile Ifx_SMU_AGCF *)0xF0036900u)))->AGStatusReg[AlarmGroup].U =
                          (unsigned_int)((unsigned_int)0x1U<<AlarmPos);


      Mcal_SetSafetyENDINIT_Timed();

      Sl_ReleaseSpinLock(SL_SMUDRIVER_SPNLCK_ID);
    }
    else
    {
      RetVal = 1U;
    }

    if(RetVal == (Std_ReturnType)0U)
    {

      Timeout = 0U;
      do
      {

        AlarmStatusReadback =
           (((uint32)(((volatile SMU_AlarmGroupRegMapType *)(volatile void *)(&(*(volatile Ifx_SMU_AGCF *)0xF0036900u)))->AGStatusReg[AlarmGroup].U) >> AlarmPos) &
            0x1U);

        Timeout++;

      }while((Timeout < (0x1000U)) && (AlarmStatusReadback != 0U) );

      if(AlarmStatusReadback != 0U)
      {
        RetVal = (Std_ReturnType)1U;
      }
    }
  }

  return RetVal;

}
# 1202 "../30_Bsw/Smu/Static/Smu.c"
Std_ReturnType Smu_SetAlarmStatus
(
  const uint8 AlarmGroup,
  const uint8 AlarmPos
)
{
  Std_ReturnType RetVal;
  Smu_StateType SmuState;
  uint32 Timeout;
  uint32 AlarmStatusReadback;


  RetVal = Smu_lChkSmuDriverState();

  if(RetVal == (Std_ReturnType)0U)
  {

    RetVal = Smu_lChkSmuInitState();
  }

  if(RetVal == (Std_ReturnType)0U)
  {

    if(0U == Sl_GetSpinLock(SL_SMUDRIVER_SPNLCK_ID, ((uint32)(3000U))))
    {

      SmuState = (Smu_StateType)((*(volatile Ifx_SMU_DBG *)0xF0036838u).B.SSM);

      if(((Smu_StateType)0) == SmuState)
      {







        if((AlarmGroup > (uint8)(6U)) ||
            (AlarmPos > (uint8)(31U)))
        {

          RetVal = (Std_ReturnType)1U;
        }
        else
        {


          Mcal_ResetSafetyENDINIT_Timed(((uint32)22960U));


          ((volatile SMU_AlarmGroupRegMapType *)(volatile void *)(&(*(volatile Ifx_SMU_AGCF *)0xF0036900u)))->AGStatusReg[AlarmGroup].U=
                             ((unsigned_int)0x1U<<AlarmPos);

          Mcal_SetSafetyENDINIT_Timed();
        }
      }

      else if ((((Smu_StateType)1) == SmuState) || (((Smu_StateType)2) == SmuState))
      {

        if((AlarmGroup != (uint8)(5U)) ||
           (AlarmPos > (uint8)(15U)))
        {

          RetVal = (Std_ReturnType)1U;
        }
        else
        {




          (*(volatile Ifx_SMU_CMD *)0xF0036820u).U = ((unsigned_int)(0x6U) |
                      ((unsigned_int)AlarmPos << (4U))
                      );

        }
      }
      else
      {

        RetVal = (Std_ReturnType)1U;
      }

      Sl_ReleaseSpinLock(SL_SMUDRIVER_SPNLCK_ID);
    }
    else
    {
      RetVal = 1U;
    }
  }

  if(RetVal == (Std_ReturnType)0U)
  {


    Timeout = 0U;
    do
    {

      AlarmStatusReadback =(uint32)
      ((((volatile SMU_AlarmGroupRegMapType *)(volatile void *)(&(*(volatile Ifx_SMU_AGCF *)0xF0036900u)))->AGStatusReg[AlarmGroup].U >> AlarmPos) & 0x1U);

      Timeout++;

    }while((Timeout < (0x1000U)) && (AlarmStatusReadback != 1U) );

    if(AlarmStatusReadback != 1U)
    {

      RetVal = (Std_ReturnType)1U;
    }
  }

  return RetVal;

}
# 1348 "../30_Bsw/Smu/Static/Smu.c"
Std_ReturnType Smu_GetAlarmStatus
(
  const uint8 AlarmGroup,
  uint32* const AlarmStatus
)
{
  Std_ReturnType RetVal;

  RetVal = 0U;


  if((AlarmGroup > (uint8)(6U)) || (AlarmStatus == ((void *)0)))
  {
    RetVal = (Std_ReturnType)1U;
  }
  else
  {



    *AlarmStatus = (((volatile SMU_AlarmGroupRegMapType *)(volatile void *)(&(*(volatile Ifx_SMU_AGCF *)0xF0036900u)))->AGStatusReg[AlarmGroup].U);
  }
  return RetVal;
}
# 1402 "../30_Bsw/Smu/Static/Smu.c"
Std_ReturnType Smu_GetAlarmDebugStatus
(
  const uint8 AlarmGroup,
  uint32* const AlarmStatus
)
{
  Std_ReturnType RetVal;


  RetVal = Smu_lChkSmuDriverState();

  if(RetVal == (Std_ReturnType)0U)
  {

    RetVal = Smu_lChkSmuInitState();
  }

  if(RetVal == (Std_ReturnType)0U)
  {

    if((AlarmGroup > (uint8)(6U)) || (AlarmStatus == ((void *)0)))
    {
      RetVal = (Std_ReturnType)1U;
    }
    else
    {



      *AlarmStatus = (((volatile SMU_AlarmGroupRegMapType *)(volatile void *)(&(*(volatile Ifx_SMU_AGCF *)0xF0036900u)))->ADStatusReg[AlarmGroup].U);
    }
  }
    return RetVal;

}
# 1477 "../30_Bsw/Smu/Static/Smu.c"
Std_ReturnType Smu_GetAlarmAction
(
  const uint8 AlarmGroup,
  const uint8 AlarmPos,
  Smu_AlarmActionType* const IntAlarmAction,
  Smu_FSPActionType* const FSPAction
)
{
  Std_ReturnType RetVal = 0U;

  Smu_AlarmActionType AlarmGroupCF2;
  Smu_AlarmActionType AlarmGroupCF1;
  Smu_AlarmActionType AlarmGroupCF0;
  uint32 AlarmGroupCFIndex;


    if((AlarmGroup > (uint8)(6U)) ||
       (AlarmPos > (uint8)(31U)))
    {

      RetVal = (Std_ReturnType)1U;
    }

    else if((IntAlarmAction == ((void *)0)) || (FSPAction == ((void *)0)))
    {

      RetVal = (Std_ReturnType)1U;
    }
    else
    {

      AlarmGroupCFIndex = (uint32)((uint32)AlarmGroup * 3U);




      if(AlarmPos >= 2U)
      {
        AlarmGroupCF0 = (Smu_AlarmActionType)
                        (((((volatile SMU_AlarmGroupRegMapType *)(volatile void *)(&(*(volatile Ifx_SMU_AGCF *)0xF0036900u)))->CfgReg[AlarmGroupCFIndex].U)>>
                          AlarmPos) & (0x1U)
                        );
        AlarmGroupCF1 = (Smu_AlarmActionType)
                        (((((volatile SMU_AlarmGroupRegMapType *)(volatile void *)(&(*(volatile Ifx_SMU_AGCF *)0xF0036900u)))->CfgReg[(AlarmGroupCFIndex + 1U)].U)>>
                         (AlarmPos-(uint8)1U)) & (0x2U)
                        );
        AlarmGroupCF2 = (Smu_AlarmActionType)
                        (((((volatile SMU_AlarmGroupRegMapType *)(volatile void *)(&(*(volatile Ifx_SMU_AGCF *)0xF0036900u)))->CfgReg[(AlarmGroupCFIndex + 2U)].U)>>
                         (AlarmPos-(uint8)2U)) & (0x4U)
                        );
    }
    else if(AlarmPos == 1U)
    {
        AlarmGroupCF0 = (Smu_AlarmActionType)
                        (((((volatile SMU_AlarmGroupRegMapType *)(volatile void *)(&(*(volatile Ifx_SMU_AGCF *)0xF0036900u)))->CfgReg[AlarmGroupCFIndex].U)>>
                          AlarmPos) & (0x1U)
                        );
        AlarmGroupCF1 = (Smu_AlarmActionType)
                        ((((volatile SMU_AlarmGroupRegMapType *)(volatile void *)(&(*(volatile Ifx_SMU_AGCF *)0xF0036900u)))->CfgReg[(AlarmGroupCFIndex + 1U)].U)
              & (0x2U)
                        );
        AlarmGroupCF2 = (Smu_AlarmActionType)
                        (((((volatile SMU_AlarmGroupRegMapType *)(volatile void *)(&(*(volatile Ifx_SMU_AGCF *)0xF0036900u)))->CfgReg[(AlarmGroupCFIndex + 2U)].U)<<1U)
              & (0x4U)
                        );

    }
    else
    {
        AlarmGroupCF0 = (Smu_AlarmActionType)
                        ((((volatile SMU_AlarmGroupRegMapType *)(volatile void *)(&(*(volatile Ifx_SMU_AGCF *)0xF0036900u)))->CfgReg[AlarmGroupCFIndex].U)
             & (0x1U)
                        );
        AlarmGroupCF1 = (Smu_AlarmActionType)
                        (((((volatile SMU_AlarmGroupRegMapType *)(volatile void *)(&(*(volatile Ifx_SMU_AGCF *)0xF0036900u)))->CfgReg[(AlarmGroupCFIndex + 1U)].U)<<1U)
             & (0x2U)
                        );
        AlarmGroupCF2 = (Smu_AlarmActionType)
                        (((((volatile SMU_AlarmGroupRegMapType *)(volatile void *)(&(*(volatile Ifx_SMU_AGCF *)0xF0036900u)))->CfgReg[(AlarmGroupCFIndex + 2U)].U)<<2U)
              & (0x4U)
                        );
    }




      *IntAlarmAction = (AlarmGroupCF0 | AlarmGroupCF1 | AlarmGroupCF2);


      * FSPAction = (Smu_FSPActionType)
                    (((((volatile SMU_AlarmGroupRegMapType *)(volatile void *)(&(*(volatile Ifx_SMU_AGCF *)0xF0036900u)))->FSPCfgReg[AlarmGroup].U) >> AlarmPos)
                    & ((uint8)0x1U));
    }
  return RetVal;

}
# 1611 "../30_Bsw/Smu/Static/Smu.c"
Std_ReturnType Smu_SetAlarmAction
(
  const uint8 AlarmGroup,
  const uint8 AlarmPos,
  const Smu_AlarmActionType AlarmAction
)
{
  Std_ReturnType RetVal=0U;

  uint32 AlarmGroupCF2;
  uint32 AlarmGroupCF1;
  uint32 AlarmGroupCF0;
  uint32 AlarmGroupCFIndex;
  uint32 AlarmGroupCFMask;


    if((AlarmGroup > (uint8)(6U)) ||
       (AlarmPos > (uint8)(31U)))
    {

      RetVal = (Std_ReturnType)1U;
    }


    else if((AlarmAction > ((Smu_AlarmActionType)0x07U)) ||
            (AlarmAction == (Smu_AlarmActionType)(1U)))
    {

      RetVal = (Std_ReturnType)1U;
    }
    else if(((uint32)((*(volatile Ifx_SMU_KEYS *)0xF0036834u).U & (0xFF00U))>> 8U) ==
              (uint32)(0xFFU))
    {

      RetVal = (Std_ReturnType)1U;
    }
    else
    {

      AlarmGroupCFIndex = (uint32)((uint32)AlarmGroup * 3U);




      AlarmGroupCFMask = ~((uint32)0x1U << AlarmPos);





      if(AlarmPos >= 2U)
      {
        AlarmGroupCF0=(((uint32)AlarmAction & (uint32)(0x1U))
                       << AlarmPos);
        AlarmGroupCF1=(((uint32)AlarmAction & (uint32)(0x2U))
                       << (AlarmPos -(uint8)1U));
        AlarmGroupCF2=(((uint32)AlarmAction & (uint32)(0x4U))
                       << (AlarmPos - (uint8)2U));
      }
      else if(AlarmPos == 1U)
      {
        AlarmGroupCF0=(((uint32)AlarmAction & (uint32)(0x1U))
                       << AlarmPos
                      );
        AlarmGroupCF1=((uint32)AlarmAction & (uint32)(0x2U));
        AlarmGroupCF2=(((uint32)AlarmAction & (uint32)(0x4U)) >> 1U);

      }
      else
      {
        AlarmGroupCF0=((uint32)AlarmAction & (uint32)(0x1U));
        AlarmGroupCF1=(((uint32)AlarmAction & (uint32)(0x2U))>>1U);
        AlarmGroupCF2=(((uint32)AlarmAction & (uint32)(0x4U))>>2U);
      }


      if(0U == Sl_GetSpinLock(SL_SMUDRIVER_SPNLCK_ID, ((uint32)(3000U))))
      {


        Mcal_ResetSafetyENDINIT_Timed(((uint32)22960U));



        (*(volatile Ifx_SMU_KEYS *)0xF0036834u).U = (unsigned_int)(((*(volatile Ifx_SMU_KEYS *)0xF0036834u).U & (unsigned_int)(0xFFFFFF00U)) | ((unsigned_int)0xBCU) );




        ((volatile SMU_AlarmGroupRegMapType *)(volatile void *)(&(*(volatile Ifx_SMU_AGCF *)0xF0036900u)))->CfgReg[AlarmGroupCFIndex].U =
        (((((volatile SMU_AlarmGroupRegMapType *)(volatile void *)(&(*(volatile Ifx_SMU_AGCF *)0xF0036900u)))->CfgReg[AlarmGroupCFIndex].U) &
          (unsigned_int)AlarmGroupCFMask) | (unsigned_int)AlarmGroupCF0
        );
        ((volatile SMU_AlarmGroupRegMapType *)(volatile void *)(&(*(volatile Ifx_SMU_AGCF *)0xF0036900u)))->CfgReg[(AlarmGroupCFIndex+1U)].U =
        (((((volatile SMU_AlarmGroupRegMapType *)(volatile void *)(&(*(volatile Ifx_SMU_AGCF *)0xF0036900u)))->CfgReg[(AlarmGroupCFIndex+1U)].U) &
          (unsigned_int)AlarmGroupCFMask) | (unsigned_int)AlarmGroupCF1
        );
        ((volatile SMU_AlarmGroupRegMapType *)(volatile void *)(&(*(volatile Ifx_SMU_AGCF *)0xF0036900u)))->CfgReg[(AlarmGroupCFIndex+2U)].U =
        (((((volatile SMU_AlarmGroupRegMapType *)(volatile void *)(&(*(volatile Ifx_SMU_AGCF *)0xF0036900u)))->CfgReg[(AlarmGroupCFIndex+2U)].U) &
          (unsigned_int)AlarmGroupCFMask) | (unsigned_int)AlarmGroupCF2
        );


        (*(volatile Ifx_SMU_KEYS *)0xF0036834u).U = (unsigned_int)(0U);


        Mcal_SetSafetyENDINIT_Timed();

        Sl_ReleaseSpinLock(SL_SMUDRIVER_SPNLCK_ID);
      }
      else
      {
        RetVal = 1U;
      }

    }
  return RetVal;

}
# 1760 "../30_Bsw/Smu/Static/Smu.c"
Std_ReturnType Smu_ReleaseFSP(void)
{
  Std_ReturnType RetVal;
  Smu_StateType SmuState;
  uint32 SmuEFRST;


  RetVal = Smu_lChkSmuDriverState();

  if(RetVal == (Std_ReturnType)0U)
  {

    RetVal = Smu_lChkSmuInitState();
  }

  if(RetVal == (Std_ReturnType)0U)
  {
    SmuEFRST = (uint32)((*(volatile Ifx_SMU_AGC *)0xF003682Cu).B.EFRST);
    SmuState = Smu_GetSmuState();


    if ((SmuState == ((Smu_StateType)1)) || (SmuState == ((Smu_StateType)3)))
    {
      RetVal = (Std_ReturnType)1U;
    }
    else if((SmuState == ((Smu_StateType)2)) && (SmuEFRST == (0U)))
    {
      RetVal = (Std_ReturnType)1U;
    }
    else

    {

        if(0U == Sl_GetSpinLock(SL_SMUDRIVER_SPNLCK_ID, ((uint32)(3000U))))
        {


          (*(volatile Ifx_SMU_CMD *)0xF0036820u).U = (0x2U);




          if((*(volatile Ifx_SMU_STS *)0xF0036824u).B.RES != (0U))
          {
            RetVal = (Std_ReturnType)1U;
          }

          Sl_ReleaseSpinLock(SL_SMUDRIVER_SPNLCK_ID);

        }
        else
        {
          RetVal = 1U;
        }
    }
  }
  return RetVal;

}
# 1846 "../30_Bsw/Smu/Static/Smu.c"
Std_ReturnType Smu_ActivateFSP(void)
{
  Std_ReturnType RetVal;


  RetVal = Smu_lChkSmuDriverState();

  if(RetVal == (Std_ReturnType)0U)
  {

    RetVal = Smu_lChkSmuInitState();
  }

  if(RetVal == (Std_ReturnType)0U)
  {

    if(0U == Sl_GetSpinLock(SL_SMUDRIVER_SPNLCK_ID, ((uint32)(3000U))))
    {


      (*(volatile Ifx_SMU_CMD *)0xF0036820u).U = (0x1U);

      Sl_ReleaseSpinLock(SL_SMUDRIVER_SPNLCK_ID);


      if((*(volatile Ifx_SMU_STS *)0xF0036824u).B.RES != (0U))
      {
        RetVal = (Std_ReturnType)1U;
      }
    }
    else
    {
      RetVal = 1U;
    }
  }

  return RetVal;

}
# 1913 "../30_Bsw/Smu/Static/Smu.c"
Std_ReturnType Smu_SetupErrorPin(void)
{
  Std_ReturnType RetVal;
  uint8 ErrPinState;


  RetVal = Smu_lChkSmuDriverState();

  if(RetVal == (Std_ReturnType)0U)
  {

    RetVal = Smu_lChkSmuInitState();

    if(RetVal == (Std_ReturnType)0U)
    {

      RetVal = Smu_lChkSmuLockState();
    }

  }

  if(RetVal == (Std_ReturnType)0U)
  {

    if(Smu_lGetErrPinStatus() == (Std_ReturnType)0U)
    {
      ErrPinState = Smu_ErrPinStatus;
      if(ErrPinState == ((uint8)1))
      {
        RetVal = (Std_ReturnType)1U;
        }
    }
    else
    {
      RetVal = (Std_ReturnType)1U;
    }
  }

  if(RetVal == (Std_ReturnType)0U)
  {

    Mcal_ResetSafetyENDINIT_Timed(((uint32)22960U));


    (*(volatile Ifx_SMU_KEYS *)0xF0036834u).U = (unsigned_int)(((*(volatile Ifx_SMU_KEYS *)0xF0036834u).U & (unsigned_int)(0xFFFFFF00U)) | ((unsigned_int)0xBCU) );




    (*(volatile Ifx_SMU_PCTL *)0xF003683Cu).U |= 0x83U;


    (*(volatile Ifx_SMU_KEYS *)0xF0036834u).U = (unsigned_int)(0U);


    Mcal_SetSafetyENDINIT_Timed();




    Smu_lSetErrPinStatus(((uint8)1));
  }

  return RetVal;

}
# 2004 "../30_Bsw/Smu/Static/Smu.c"
Std_ReturnType Smu_ReleaseErrorPin(void)
{
  Std_ReturnType RetVal;


  RetVal = (Std_ReturnType)1U;


  if((*(volatile Ifx_SMU_KEYS *)0xF0036834u).B.PERLCK != (0xFFU))
  {
    RetVal = (Std_ReturnType)0U;


    Mcal_ResetSafetyENDINIT_Timed(((uint32)22960U));


    (*(volatile Ifx_SMU_KEYS *)0xF0036834u).U = (unsigned_int)(((*(volatile Ifx_SMU_KEYS *)0xF0036834u).U & (unsigned_int)(0xFFFFFF00U)) | ((unsigned_int)0xBCU) );


    (*(volatile Ifx_SMU_PCTL *)0xF003683Cu).U = 0U;


    (*(volatile Ifx_SMU_KEYS *)0xF0036834u).U = (unsigned_int)(0U);


    Mcal_SetSafetyENDINIT_Timed();




    Smu_lSetErrPinStatus(((uint8)0));

  }

  return RetVal;
}
# 2069 "../30_Bsw/Smu/Static/Smu.c"
Std_ReturnType Smu_RTStop(const uint8 TimerNum )
{

  Std_ReturnType RetVal;


  RetVal = Smu_lChkSmuDriverState();

  if(RetVal == (Std_ReturnType)0U)
  {

    RetVal = Smu_lChkSmuInitState();
  }

  if(RetVal == (Std_ReturnType)0U)
  {

    if(TimerNum >= (uint8)(0x2U))
    {
      RetVal = (Std_ReturnType)1U;
    }
    else
    {

      if(0U == Sl_GetSpinLock(SL_SMUDRIVER_SPNLCK_ID, ((uint32)(3000U))))
      {


        (*(volatile Ifx_SMU_CMD *)0xF0036820u).U =((unsigned_int)(0x4U) |
                    ((unsigned_int)TimerNum << (4U))
                   ) ;

        Sl_ReleaseSpinLock(SL_SMUDRIVER_SPNLCK_ID);
      }
      else
      {
        RetVal = 1U;
      }
    }
  }
  return RetVal;
}
# 2145 "../30_Bsw/Smu/Static/Smu.c"
Std_ReturnType Smu_GetRTMissedEvent
(
  const uint8 TimerNum,
  boolean* const EventMissed
)
{
  Std_ReturnType RetVal;
  const uint32 kTimMissEventPos[2] = {(uint32)0x20000U, (uint32)0x80000U};
  uint32 TimerMissEvent;


  RetVal = Smu_lChkSmuDriverState();

  if(RetVal == (Std_ReturnType)0U)
  {

    RetVal = Smu_lChkSmuInitState();
  }

  if(RetVal == (Std_ReturnType)0U)
  {

    if((TimerNum >= (uint8)(0x2U)) || (EventMissed == ((void *)0)))
    {
      RetVal = (Std_ReturnType)1U;
    }
    else
    {


      TimerMissEvent = (uint32)((*(volatile Ifx_SMU_STS *)0xF0036824u).U & kTimMissEventPos[TimerNum]);
      if(TimerMissEvent > 0U)
      {
        *EventMissed = (boolean)1;
      }
      else
      {
        *EventMissed = (boolean)0;
      }
    }
  }

  return RetVal;

}
# 2217 "../30_Bsw/Smu/Static/Smu.c"
Std_ReturnType Smu_LockConfigRegs(void)
{
  Std_ReturnType RetVal;
  uint32 RtcValueOld = 0U;
  uint32 RtcValueNew = 0U;
  uint32 AgcValueOld = 0U;
  uint32 AgcValueNew = 0U;
  uint32 TempRecTimeStatus;


  RetVal = Smu_lChkSmuDriverState();

  if(RetVal == (Std_ReturnType)0U)
  {

    RetVal = Smu_lChkSmuInitState();
  }

  if(RetVal == (Std_ReturnType)0U)
  {

    if((*(volatile Ifx_SMU_KEYS *)0xF0036834u).B.PERLCK == (0xFFU))
    {
      RetVal = (Std_ReturnType)1U;
    }
    else
    {
      RetVal = (Std_ReturnType)1U;


      Mcal_ResetSafetyENDINIT_Timed(((uint32)22960U));



      (*(volatile Ifx_SMU_KEYS *)0xF0036834u).U = (unsigned_int)(0x0000FF00U);




      (*(volatile Ifx_SMU_KEYS *)0xF0036834u).U = (unsigned_int)(0x000000BCU);

      if ((unsigned_int)(0x0000FF00U) == (*(volatile Ifx_SMU_KEYS *)0xF0036834u).U)
      {





        RtcValueOld = (*(volatile Ifx_SMU_RTC *)0xF0036830u).U;
        AgcValueOld = (*(volatile Ifx_SMU_AGC *)0xF003682Cu).U;

        TempRecTimeStatus = (uint32)((*(volatile Ifx_SMU_STS *)0xF0036824u).U & (0x50000U));

        if(TempRecTimeStatus == 0U)
        {
        (*(volatile Ifx_SMU_RTC *)0xF0036830u).U = (unsigned_int)((uint32)RtcValueOld ^ (uint32)(0x1u));
        }
        (*(volatile Ifx_SMU_AGC *)0xF003682Cu).U = (unsigned_int)((uint32)AgcValueOld ^ (uint32)(0x7u));

        RtcValueNew = (*(volatile Ifx_SMU_RTC *)0xF0036830u).U;
        AgcValueNew = (*(volatile Ifx_SMU_AGC *)0xF003682Cu).U;

        if ((RtcValueOld == RtcValueNew) && (AgcValueOld == AgcValueNew))
        {
          RetVal = (Std_ReturnType)0U;



          Smu_lSetSmuLockState(((uint8)1));
        }

      }


      Mcal_SetSafetyENDINIT_Timed();

    }
  }

  return RetVal;

}
# 2326 "../30_Bsw/Smu/Static/Smu.c"
Smu_StateType Smu_GetSmuState(void)
{

  return ((Smu_StateType)((*(volatile Ifx_SMU_DBG *)0xF0036838u).B.SSM));
}
# 2368 "../30_Bsw/Smu/Static/Smu.c"
Std_ReturnType Smu_ActivateRunState(const uint32 Cmd)
{
  Std_ReturnType RetVal;
  Smu_StateType SmuState;


  RetVal = Smu_lChkSmuDriverState();

  if(RetVal == (Std_ReturnType)0U)
  {

    RetVal = Smu_lChkSmuInitState();
  }

  if(RetVal == (Std_ReturnType)0U)
  {


    SmuState = (Smu_StateType)((*(volatile Ifx_SMU_DBG *)0xF0036838u).B.SSM);


    if(0U == Sl_GetSpinLock(SL_SMUDRIVER_SPNLCK_ID, ((uint32)(3000U))))
    {

      if (SmuState != ((Smu_StateType)0))
      {
        RetVal = (Std_ReturnType)1U;
      }

      else if (Cmd != (0x0U))
      {
        RetVal = (Std_ReturnType)1U;




        (*(volatile Ifx_SMU_CMD *)0xF0036820u).U = (0x1U);


        Smu_lSetSmuDriverState(((uint8)1));

      }
      else
      {

        (*(volatile Ifx_SMU_CMD *)0xF0036820u).U = Cmd;
      }

      Sl_ReleaseSpinLock(SL_SMUDRIVER_SPNLCK_ID);
    }
    else
    {
      RetVal = 1U;
    }
  }

  return RetVal;

}



# 1 "../30_Bsw/STL_common/Ifx_MemMap.h" 1
# 2654 "../30_Bsw/STL_common/Ifx_MemMap.h"
#pragma section
# 2431 "../30_Bsw/Smu/Static/Smu.c" 2
