# 1 "../30_Bsw/MicroTestLib/Static/SriTst.c"
# 1 "S:\\20_Make//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "../30_Bsw/MicroTestLib/Static/SriTst.c"
# 38 "../30_Bsw/MicroTestLib/Static/SriTst.c"
# 1 "../30_Bsw/MicroTestLib/Static/SriTst.h" 1
# 39 "../30_Bsw/MicroTestLib/Static/SriTst.h"
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
# 40 "../30_Bsw/MicroTestLib/Static/SriTst.h" 2
# 1 "../30_Bsw/MicroTestLib/Config/SriTst_Cfg.h" 1
# 41 "../30_Bsw/MicroTestLib/Static/SriTst.h" 2

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
# 43 "../30_Bsw/MicroTestLib/Static/SriTst.h" 2
# 1 "../30_Bsw/STL_common/ChipId.h" 1
# 44 "../30_Bsw/MicroTestLib/Static/SriTst.h" 2
# 203 "../30_Bsw/MicroTestLib/Static/SriTst.h"
typedef struct SriTst_Config
{
    uint8 LmuTstEN[(1U)];
    uint8 PmuDFlashTstEN[(1U)];
    uint8 PmuPFlashTstEN[(1U)];
    uint8 DmaTstEN[(1U)];
    uint8 XbarTstEN[(1U)];
    uint32* SriTstPSPRTstAdr[(1U)];
    uint32* SriTstDSPRTstAdr[(1U)];
    uint32* SriTstLMUTstAdr[(1U)];
    uint32* SriTstDFlashTstAdr[(1U)];
    uint32* SriTstPFlashTstAdr[(1U)];

} SriTst_ConfigType;






# 1 "../30_Bsw/STL_common/Ifx_MemMap.h" 1
# 2426 "../30_Bsw/STL_common/Ifx_MemMap.h"
#pragma section ".rodata.CONFIGURATION_LT" a
# 224 "../30_Bsw/MicroTestLib/Static/SriTst.h" 2


extern const SriTst_ConfigType SriTst_ConfigRoot[( 1U )];


# 1 "../30_Bsw/STL_common/Ifx_MemMap.h" 1
# 2437 "../30_Bsw/STL_common/Ifx_MemMap.h"
#pragma section
# 230 "../30_Bsw/MicroTestLib/Static/SriTst.h" 2





# 1 "../30_Bsw/STL_common/Ifx_MemMap.h" 1
# 2699 "../30_Bsw/STL_common/Ifx_MemMap.h"
#pragma section ".text.STL_ASIL_CODE_NO_OPTIMIZE" ax 4

#pragma GCC optimize "O0"
# 236 "../30_Bsw/MicroTestLib/Static/SriTst.h" 2

extern Sl_TstRsltType SriTst_SriTst(const Sl_ParamSetType ParamSetIndex,
                                     const uint8 TstSeed,
                                     uint32* const TstSignature);


# 1 "../30_Bsw/STL_common/Ifx_MemMap.h" 1
# 2713 "../30_Bsw/STL_common/Ifx_MemMap.h"
#pragma GCC reset_options
#pragma section
# 243 "../30_Bsw/MicroTestLib/Static/SriTst.h" 2
# 39 "../30_Bsw/MicroTestLib/Static/SriTst.c" 2

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
# 41 "../30_Bsw/MicroTestLib/Static/SriTst.c" 2
# 1 "../30_Bsw/MicroTestLib/Static/Mtl_Trap.h" 1
# 99 "../30_Bsw/MicroTestLib/Static/Mtl_Trap.h"
typedef boolean (* TRAP_TrapHandlerCbk)(const uint32 trapID);


typedef uint32 TRAP_ErrorType;
# 115 "../30_Bsw/MicroTestLib/Static/Mtl_Trap.h"
# 1 "../30_Bsw/STL_common/Ifx_MemMap.h" 1
# 2642 "../30_Bsw/STL_common/Ifx_MemMap.h"
#pragma section ".text.STL_ASIL_CODE" ax 4
# 116 "../30_Bsw/MicroTestLib/Static/Mtl_Trap.h" 2
extern void Stl_TrapVectors(void);

extern TRAP_ErrorType TRAP_Init(void);

extern TRAP_ErrorType TRAP_RegisterTrapHandler(const uint8 class, const TRAP_TrapHandlerCbk handler);
extern TRAP_ErrorType TRAP_UnregisterTrapHandler(const uint8 class);
extern TRAP_ErrorType TRAP_RegisterTrapHandlerAllCores(const uint8 trapclass, const TRAP_TrapHandlerCbk handler);
extern TRAP_ErrorType TRAP_UnregisterTrapHandlerAllCores(const uint8 trapclass);


extern TRAP_ErrorType TRAP_StartHandleTraps(void);
extern TRAP_ErrorType TRAP_StopHandleTraps(void);

extern void* TRAP_GenericTrapHandler(uint32 trapClass, uint32 trapID);


# 1 "../30_Bsw/STL_common/Ifx_MemMap.h" 1
# 2654 "../30_Bsw/STL_common/Ifx_MemMap.h"
#pragma section
# 133 "../30_Bsw/MicroTestLib/Static/Mtl_Trap.h" 2
# 42 "../30_Bsw/MicroTestLib/Static/SriTst.c" 2
# 1 "../30_Bsw/Common/TC21x/IfxCpu_reg.h" 1
# 42 "../30_Bsw/Common/TC21x/IfxCpu_reg.h"
# 1 "../30_Bsw/Common/TC21x/IfxCpu_regdef.h" 1
# 39 "../30_Bsw/Common/TC21x/IfxCpu_regdef.h"
# 1 "../30_Bsw/Common/TC21x/Ifx_TypesReg.h" 1
# 40 "../30_Bsw/Common/TC21x/IfxCpu_regdef.h" 2





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
# 43 "../30_Bsw/MicroTestLib/Static/SriTst.c" 2
# 1 "../30_Bsw/Common/TC21x/IfxScu_bf.h" 1
# 44 "../30_Bsw/MicroTestLib/Static/SriTst.c" 2
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
# 45 "../30_Bsw/MicroTestLib/Static/SriTst.c" 2
# 1 "../30_Bsw/Common/TC21x/IfxMc_bf.h" 1
# 46 "../30_Bsw/MicroTestLib/Static/SriTst.c" 2
# 1 "../30_Bsw/Common/TC21x/IfxXbar_bf.h" 1
# 47 "../30_Bsw/MicroTestLib/Static/SriTst.c" 2
# 1 "../30_Bsw/Common/TC21x/IfxMc_reg.h" 1
# 297 "../30_Bsw/Common/TC21x/IfxMc_reg.h"
# 1 "../30_Bsw/Common/TC21x/IfxMc_regdef.h" 1
# 45 "../30_Bsw/Common/TC21x/IfxMc_regdef.h"
typedef struct _Ifx_MC_CONFIG0_Bits
{
    volatile unsigned short ACCSTYPE : 8;
    volatile unsigned short reserved_8 : 4;
    volatile unsigned short NUMACCS : 4;
} Ifx_MC_CONFIG0_Bits;


typedef struct _Ifx_MC_CONFIG1_Bits
{
    volatile unsigned short ACCSPAT : 8;
    volatile unsigned short SELFASTB : 4;
    volatile unsigned short AG_MOD : 4;
} Ifx_MC_CONFIG1_Bits;


typedef struct _Ifx_MC_ECCD_Bits
{
    volatile unsigned short SERR : 1;
    volatile unsigned short CERR : 1;
    volatile unsigned short UERR : 1;
    volatile unsigned short AERR : 1;
    volatile unsigned short TRC : 1;
    volatile unsigned short VAL : 5;
    volatile unsigned short reserved_10 : 1;
    volatile unsigned short CENE : 1;
    volatile unsigned short UENE : 1;
    volatile unsigned short AENE : 1;
    volatile unsigned short ECE : 1;
    volatile unsigned short EOV : 1;
} Ifx_MC_ECCD_Bits;


typedef struct _Ifx_MC_ECCS_Bits
{
    volatile unsigned short CENE : 1;
    volatile unsigned short UENE : 1;
    volatile unsigned short AENE : 1;
    volatile unsigned short ECE : 1;
    volatile unsigned short TRE : 1;
    volatile unsigned short BFLE : 1;
    volatile unsigned short SFLE : 2;
    volatile unsigned short ECCMAP : 2;
    volatile unsigned short TC_WAY_SEL : 2;
    volatile unsigned short reserved_12 : 4;
} Ifx_MC_ECCS_Bits;


typedef struct _Ifx_MC_ETRR_Bits
{
    volatile unsigned short ADDR : 13;
    volatile unsigned short MBI : 3;
} Ifx_MC_ETRR_Bits;


typedef struct _Ifx_MC_MCONTROL_Bits
{
    volatile unsigned short START : 1;
    volatile unsigned short RESUME : 1;
    volatile unsigned short ESTF : 1;
    volatile unsigned short DIR : 1;
    volatile unsigned short DINIT : 1;
    volatile unsigned short RCADR : 1;
    volatile unsigned short ROWTOG : 1;
    volatile unsigned short BITTOG : 1;
    volatile unsigned short GP_BASE : 1;
    volatile unsigned short FAILDMP : 1;
    volatile unsigned short Res4 : 5;
    volatile unsigned short reserved_15 : 1;
} Ifx_MC_MCONTROL_Bits;


typedef struct _Ifx_MC_MSTATUS_Bits
{
    volatile unsigned short DONE : 1;
    volatile unsigned short FAIL : 1;
    volatile unsigned short FDA : 1;
    volatile unsigned short SFAIL : 1;
    volatile unsigned short reserved_4 : 12;
} Ifx_MC_MSTATUS_Bits;


typedef struct _Ifx_MC_RANGE_Bits
{
    volatile unsigned short ADDR : 15;
    volatile unsigned short RAEN : 1;
} Ifx_MC_RANGE_Bits;


typedef struct _Ifx_MC_RDBFL_Bits
{
    volatile unsigned short WDATA : 16;
} Ifx_MC_RDBFL_Bits;


typedef struct _Ifx_MC_REVID_Bits
{
    volatile unsigned short REV_ID : 16;
} Ifx_MC_REVID_Bits;







typedef union
{
    unsigned short U;
    signed short I;
    Ifx_MC_CONFIG0_Bits B;
} Ifx_MC_CONFIG0;


typedef union
{
    unsigned short U;
    signed short I;
    Ifx_MC_CONFIG1_Bits B;
} Ifx_MC_CONFIG1;


typedef union
{
    unsigned short U;
    signed short I;
    Ifx_MC_ECCD_Bits B;
} Ifx_MC_ECCD;


typedef union
{
    unsigned short U;
    signed short I;
    Ifx_MC_ECCS_Bits B;
} Ifx_MC_ECCS;


typedef union
{
    unsigned short U;
    signed short I;
    Ifx_MC_ETRR_Bits B;
} Ifx_MC_ETRR;


typedef union
{
    unsigned short U;
    signed short I;
    Ifx_MC_MCONTROL_Bits B;
} Ifx_MC_MCONTROL;


typedef union
{
    unsigned short U;
    signed short I;
    Ifx_MC_MSTATUS_Bits B;
} Ifx_MC_MSTATUS;


typedef union
{
    unsigned short U;
    signed short I;
    Ifx_MC_RANGE_Bits B;
} Ifx_MC_RANGE;


typedef union
{
    unsigned short U;
    signed short I;
    Ifx_MC_RDBFL_Bits B;
} Ifx_MC_RDBFL;


typedef union
{
    unsigned short U;
    signed short I;
    Ifx_MC_REVID_Bits B;
} Ifx_MC_REVID;
# 239 "../30_Bsw/Common/TC21x/IfxMc_regdef.h"
typedef volatile struct _Ifx_MC
{
    Ifx_MC_CONFIG0 CONFIG0;
    Ifx_MC_CONFIG1 CONFIG1;
    Ifx_MC_MCONTROL MCONTROL;
    Ifx_MC_MSTATUS MSTATUS;
    Ifx_MC_RANGE RANGE;
    unsigned char reserved_A[2];
    Ifx_MC_REVID REVID;
    Ifx_MC_ECCS ECCS;
    Ifx_MC_ECCD ECCD;
    Ifx_MC_ETRR ETRR[5];
    unsigned char reserved_1C[132];
    Ifx_MC_RDBFL RDBFL[40];
    unsigned char reserved_F0[16];
} Ifx_MC;
# 298 "../30_Bsw/Common/TC21x/IfxMc_reg.h" 2
# 48 "../30_Bsw/MicroTestLib/Static/SriTst.c" 2
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
# 49 "../30_Bsw/MicroTestLib/Static/SriTst.c" 2
# 1 "../30_Bsw/Common/TC21x/IfxLmu_reg.h" 1
# 36 "../30_Bsw/Common/TC21x/IfxLmu_reg.h"
# 1 "../30_Bsw/Common/TC21x/IfxLmu_regdef.h" 1
# 45 "../30_Bsw/Common/TC21x/IfxLmu_regdef.h"
typedef struct _Ifx_LMU_ACCEN0_Bits
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
} Ifx_LMU_ACCEN0_Bits;


typedef struct _Ifx_LMU_ACCEN1_Bits
{
    volatile unsigned int reserved_0 : 32;
} Ifx_LMU_ACCEN1_Bits;


typedef struct _Ifx_LMU_BUFCON_Bits
{
    volatile unsigned int TAG1 : 6;
    volatile unsigned int reserved_6 : 2;
    volatile unsigned int TAG2 : 6;
    volatile unsigned int reserved_14 : 8;
    volatile unsigned int EREN : 1;
    volatile unsigned int EPEN : 1;
    volatile unsigned int reserved_24 : 6;
    volatile unsigned int EN1 : 1;
    volatile unsigned int EN2 : 1;
} Ifx_LMU_BUFCON_Bits;


typedef struct _Ifx_LMU_CLC_Bits
{
    volatile unsigned int DISR : 1;
    volatile unsigned int DISS : 1;
    volatile unsigned int reserved_2 : 30;
} Ifx_LMU_CLC_Bits;


typedef struct _Ifx_LMU_MEMCON_Bits
{
    volatile unsigned int OLDAEN : 1;
    volatile unsigned int POLDAEN : 1;
    volatile unsigned int reserved_2 : 1;
    volatile unsigned int ERERR : 1;
    volatile unsigned int reserved_4 : 1;
    volatile unsigned int EWERR : 1;
    volatile unsigned int DATAERR : 1;
    volatile unsigned int ADDERR : 1;
    volatile unsigned int reserved_8 : 4;
    volatile unsigned int WSTATES : 4;
    volatile unsigned int reserved_16 : 16;
} Ifx_LMU_MEMCON_Bits;


typedef struct _Ifx_LMU_MODID_Bits
{
    volatile unsigned int ID_VALUE : 32;
} Ifx_LMU_MODID_Bits;







typedef union
{
    unsigned int U;
    signed int I;
    Ifx_LMU_ACCEN0_Bits B;
} Ifx_LMU_ACCEN0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_LMU_ACCEN1_Bits B;
} Ifx_LMU_ACCEN1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_LMU_BUFCON_Bits B;
} Ifx_LMU_BUFCON;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_LMU_CLC_Bits B;
} Ifx_LMU_CLC;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_LMU_MEMCON_Bits B;
} Ifx_LMU_MEMCON;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_LMU_MODID_Bits B;
} Ifx_LMU_MODID;
# 193 "../30_Bsw/Common/TC21x/IfxLmu_regdef.h"
typedef volatile struct _Ifx_LMU
{
    Ifx_LMU_CLC CLC;
    unsigned char reserved_4[4];
    Ifx_LMU_MODID MODID;
    unsigned char reserved_C[4];
    Ifx_LMU_ACCEN0 ACCEN0;
    Ifx_LMU_ACCEN1 ACCEN1;
    unsigned char reserved_18[8];
    Ifx_LMU_MEMCON MEMCON;
    unsigned char reserved_24[12];
    Ifx_LMU_BUFCON BUFCON[3];
    unsigned char reserved_3C[196];
} Ifx_LMU;
# 37 "../30_Bsw/Common/TC21x/IfxLmu_reg.h" 2
# 50 "../30_Bsw/MicroTestLib/Static/SriTst.c" 2
# 1 "../30_Bsw/Common/TC21x/IfxDma_reg.h" 1
# 36 "../30_Bsw/Common/TC21x/IfxDma_reg.h"
# 1 "../30_Bsw/Common/TC21x/IfxDma_regdef.h" 1
# 45 "../30_Bsw/Common/TC21x/IfxDma_regdef.h"
typedef struct _Ifx_DMA_ACCEN00_Bits
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
} Ifx_DMA_ACCEN00_Bits;


typedef struct _Ifx_DMA_ACCEN01_Bits
{
    unsigned int reserved_0 : 32;
} Ifx_DMA_ACCEN01_Bits;


typedef struct _Ifx_DMA_ACCEN10_Bits
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
} Ifx_DMA_ACCEN10_Bits;


typedef struct _Ifx_DMA_ACCEN11_Bits
{
    unsigned int reserved_0 : 32;
} Ifx_DMA_ACCEN11_Bits;


typedef struct _Ifx_DMA_ACCEN20_Bits
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
} Ifx_DMA_ACCEN20_Bits;


typedef struct _Ifx_DMA_ACCEN21_Bits
{
    unsigned int reserved_0 : 32;
} Ifx_DMA_ACCEN21_Bits;


typedef struct _Ifx_DMA_ACCEN30_Bits
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
} Ifx_DMA_ACCEN30_Bits;


typedef struct _Ifx_DMA_ACCEN31_Bits
{
    unsigned int reserved_0 : 32;
} Ifx_DMA_ACCEN31_Bits;


typedef struct _Ifx_DMA_BLK_CLRE_Bits
{
    unsigned int reserved_0 : 16;
    unsigned int CSER : 1;
    unsigned int CDER : 1;
    unsigned int reserved_18 : 2;
    unsigned int CSPBER : 1;
    unsigned int CSRIER : 1;
    unsigned int reserved_22 : 2;
    unsigned int CRAMER : 1;
    unsigned int CSLLER : 1;
    unsigned int CDLLER : 1;
    unsigned int reserved_27 : 5;
} Ifx_DMA_BLK_CLRE_Bits;


typedef struct _Ifx_DMA_BLK_EER_Bits
{
    unsigned int reserved_0 : 16;
    unsigned int ESER : 1;
    unsigned int EDER : 1;
    unsigned int reserved_18 : 6;
    unsigned int ERER : 1;
    unsigned int reserved_25 : 1;
    unsigned int ELER : 1;
    unsigned int reserved_27 : 5;
} Ifx_DMA_BLK_EER_Bits;


typedef struct _Ifx_DMA_BLK_ERRSR_Bits
{
    unsigned int LEC : 7;
    unsigned int reserved_7 : 9;
    unsigned int SER : 1;
    unsigned int DER : 1;
    unsigned int reserved_18 : 2;
    unsigned int SPBER : 1;
    unsigned int SRIER : 1;
    unsigned int reserved_22 : 2;
    unsigned int RAMER : 1;
    unsigned int SLLER : 1;
    unsigned int DLLER : 1;
    unsigned int reserved_27 : 5;
} Ifx_DMA_BLK_ERRSR_Bits;


typedef struct _Ifx_DMA_BLK_ME_ADICR_Bits
{
    unsigned int SMF : 3;
    unsigned int INCS : 1;
    unsigned int DMF : 3;
    unsigned int INCD : 1;
    unsigned int CBLS : 4;
    unsigned int CBLD : 4;
    unsigned int SHCT : 4;
    unsigned int SCBE : 1;
    unsigned int DCBE : 1;
    unsigned int STAMP : 1;
    unsigned int ETRL : 1;
    unsigned int WRPSE : 1;
    unsigned int WRPDE : 1;
    unsigned int INTCT : 2;
    unsigned int IRDV : 4;
} Ifx_DMA_BLK_ME_ADICR_Bits;


typedef struct _Ifx_DMA_BLK_ME_CHCR_Bits
{
    unsigned int TREL : 14;
    unsigned int reserved_14 : 2;
    unsigned int BLKM : 3;
    unsigned int RROAT : 1;
    unsigned int CHMODE : 1;
    unsigned int CHDW : 3;
    unsigned int PATSEL : 3;
    unsigned int reserved_27 : 1;
    unsigned int PRSEL : 1;
    unsigned int reserved_29 : 1;
    unsigned int DMAPRIO : 2;
} Ifx_DMA_BLK_ME_CHCR_Bits;


typedef struct _Ifx_DMA_BLK_ME_CHSR_Bits
{
    unsigned int TCOUNT : 14;
    unsigned int reserved_14 : 1;
    unsigned int LXO : 1;
    unsigned int WRPS : 1;
    unsigned int WRPD : 1;
    unsigned int ICH : 1;
    unsigned int IPM : 1;
    unsigned int reserved_20 : 2;
    unsigned int BUFFER : 1;
    unsigned int FROZEN : 1;
    unsigned int reserved_24 : 8;
} Ifx_DMA_BLK_ME_CHSR_Bits;


typedef struct _Ifx_DMA_BLK_ME_DADR_Bits
{
    unsigned int DADR : 32;
} Ifx_DMA_BLK_ME_DADR_Bits;


typedef struct _Ifx_DMA_BLK_ME_R0_Bits
{
    unsigned int RD00 : 8;
    unsigned int RD01 : 8;
    unsigned int RD02 : 8;
    unsigned int RD03 : 8;
} Ifx_DMA_BLK_ME_R0_Bits;


typedef struct _Ifx_DMA_BLK_ME_R1_Bits
{
    unsigned int RD10 : 8;
    unsigned int RD11 : 8;
    unsigned int RD12 : 8;
    unsigned int RD13 : 8;
} Ifx_DMA_BLK_ME_R1_Bits;


typedef struct _Ifx_DMA_BLK_ME_R2_Bits
{
    unsigned int RD20 : 8;
    unsigned int RD21 : 8;
    unsigned int RD22 : 8;
    unsigned int RD23 : 8;
} Ifx_DMA_BLK_ME_R2_Bits;


typedef struct _Ifx_DMA_BLK_ME_R3_Bits
{
    unsigned int RD30 : 8;
    unsigned int RD31 : 8;
    unsigned int RD32 : 8;
    unsigned int RD33 : 8;
} Ifx_DMA_BLK_ME_R3_Bits;


typedef struct _Ifx_DMA_BLK_ME_R4_Bits
{
    unsigned int RD40 : 8;
    unsigned int RD41 : 8;
    unsigned int RD42 : 8;
    unsigned int RD43 : 8;
} Ifx_DMA_BLK_ME_R4_Bits;


typedef struct _Ifx_DMA_BLK_ME_R5_Bits
{
    unsigned int RD50 : 8;
    unsigned int RD51 : 8;
    unsigned int RD52 : 8;
    unsigned int RD53 : 8;
} Ifx_DMA_BLK_ME_R5_Bits;


typedef struct _Ifx_DMA_BLK_ME_R6_Bits
{
    unsigned int RD60 : 8;
    unsigned int RD61 : 8;
    unsigned int RD62 : 8;
    unsigned int RD63 : 8;
} Ifx_DMA_BLK_ME_R6_Bits;


typedef struct _Ifx_DMA_BLK_ME_R7_Bits
{
    unsigned int RD70 : 8;
    unsigned int RD71 : 8;
    unsigned int RD72 : 8;
    unsigned int RD73 : 8;
} Ifx_DMA_BLK_ME_R7_Bits;


typedef struct _Ifx_DMA_BLK_ME_RDCRC_Bits
{
    unsigned int RDCRC : 32;
} Ifx_DMA_BLK_ME_RDCRC_Bits;


typedef struct _Ifx_DMA_BLK_ME_SADR_Bits
{
    unsigned int SADR : 32;
} Ifx_DMA_BLK_ME_SADR_Bits;


typedef struct _Ifx_DMA_BLK_ME_SDCRC_Bits
{
    unsigned int SDCRC : 32;
} Ifx_DMA_BLK_ME_SDCRC_Bits;


typedef struct _Ifx_DMA_BLK_ME_SHADR_Bits
{
    unsigned int SHADR : 32;
} Ifx_DMA_BLK_ME_SHADR_Bits;


typedef struct _Ifx_DMA_BLK_ME_SR_Bits
{
    unsigned int RS : 1;
    unsigned int reserved_1 : 3;
    unsigned int WS : 1;
    unsigned int reserved_5 : 11;
    unsigned int CH : 7;
    unsigned int reserved_23 : 9;
} Ifx_DMA_BLK_ME_SR_Bits;


typedef struct _Ifx_DMA_CH_ADICR_Bits
{
    unsigned int SMF : 3;
    unsigned int INCS : 1;
    unsigned int DMF : 3;
    unsigned int INCD : 1;
    unsigned int CBLS : 4;
    unsigned int CBLD : 4;
    unsigned int SHCT : 4;
    unsigned int SCBE : 1;
    unsigned int DCBE : 1;
    unsigned int STAMP : 1;
    unsigned int ETRL : 1;
    unsigned int WRPSE : 1;
    unsigned int WRPDE : 1;
    unsigned int INTCT : 2;
    unsigned int IRDV : 4;
} Ifx_DMA_CH_ADICR_Bits;


typedef struct _Ifx_DMA_CH_CHCFGR_Bits
{
    unsigned int TREL : 14;
    unsigned int reserved_14 : 2;
    unsigned int BLKM : 3;
    unsigned int RROAT : 1;
    unsigned int CHMODE : 1;
    unsigned int CHDW : 3;
    unsigned int PATSEL : 3;
    unsigned int reserved_27 : 1;
    unsigned int PRSEL : 1;
    unsigned int reserved_29 : 1;
    unsigned int DMAPRIO : 2;
} Ifx_DMA_CH_CHCFGR_Bits;


typedef struct _Ifx_DMA_CH_CHCSR_Bits
{
    unsigned int TCOUNT : 14;
    unsigned int reserved_14 : 1;
    unsigned int LXO : 1;
    unsigned int WRPS : 1;
    unsigned int WRPD : 1;
    unsigned int ICH : 1;
    unsigned int IPM : 1;
    unsigned int reserved_20 : 2;
    unsigned int BUFFER : 1;
    unsigned int FROZEN : 1;
    unsigned int SWB : 1;
    unsigned int CWRP : 1;
    unsigned int CICH : 1;
    unsigned int SIT : 1;
    unsigned int reserved_28 : 3;
    unsigned int SCH : 1;
} Ifx_DMA_CH_CHCSR_Bits;


typedef struct _Ifx_DMA_CH_DADR_Bits
{
    unsigned int DADR : 32;
} Ifx_DMA_CH_DADR_Bits;


typedef struct _Ifx_DMA_CH_RDCRCR_Bits
{
    unsigned int RDCRC : 32;
} Ifx_DMA_CH_RDCRCR_Bits;


typedef struct _Ifx_DMA_CH_SADR_Bits
{
    unsigned int SADR : 32;
} Ifx_DMA_CH_SADR_Bits;


typedef struct _Ifx_DMA_CH_SDCRCR_Bits
{
    unsigned int SDCRC : 32;
} Ifx_DMA_CH_SDCRCR_Bits;


typedef struct _Ifx_DMA_CH_SHADR_Bits
{
    unsigned int SHADR : 32;
} Ifx_DMA_CH_SHADR_Bits;


typedef struct _Ifx_DMA_CLC_Bits
{
    unsigned int DISR : 1;
    unsigned int DISS : 1;
    unsigned int reserved_2 : 1;
    unsigned int EDIS : 1;
    unsigned int reserved_4 : 28;
} Ifx_DMA_CLC_Bits;


typedef struct _Ifx_DMA_ERRINTR_Bits
{
    unsigned int SIT : 1;
    unsigned int reserved_1 : 31;
} Ifx_DMA_ERRINTR_Bits;


typedef struct _Ifx_DMA_HRR_Bits
{
    unsigned int HRP : 2;
    unsigned int reserved_2 : 30;
} Ifx_DMA_HRR_Bits;


typedef struct _Ifx_DMA_ID_Bits
{
    unsigned int MODREV : 8;
    unsigned int MODTYPE : 8;
    unsigned int MODNUMBER : 16;
} Ifx_DMA_ID_Bits;


typedef struct _Ifx_DMA_MEMCON_Bits
{
    volatile unsigned int reserved_0 : 2;
    volatile unsigned int INTERR : 1;
    volatile unsigned int reserved_3 : 1;
    volatile unsigned int RMWERR : 1;
    volatile unsigned int reserved_5 : 1;
    volatile unsigned int DATAERR : 1;
    volatile unsigned int reserved_7 : 1;
    volatile unsigned int PMIC : 1;
    volatile unsigned int ERRDIS : 1;
    volatile unsigned int reserved_10 : 22;
} Ifx_DMA_MEMCON_Bits;


typedef struct _Ifx_DMA_MODE_Bits
{
    unsigned int MODE : 1;
    unsigned int reserved_1 : 31;
} Ifx_DMA_MODE_Bits;


typedef struct _Ifx_DMA_OTSS_Bits
{
    unsigned int TGS : 4;
    unsigned int reserved_4 : 3;
    unsigned int BS : 1;
    unsigned int reserved_8 : 24;
} Ifx_DMA_OTSS_Bits;


typedef struct _Ifx_DMA_PRR0_Bits
{
    unsigned int PAT00 : 8;
    unsigned int PAT01 : 8;
    unsigned int PAT02 : 8;
    unsigned int PAT03 : 8;
} Ifx_DMA_PRR0_Bits;


typedef struct _Ifx_DMA_PRR1_Bits
{
    unsigned int PAT10 : 8;
    unsigned int PAT11 : 8;
    unsigned int PAT12 : 8;
    unsigned int PAT13 : 8;
} Ifx_DMA_PRR1_Bits;


typedef struct _Ifx_DMA_SUSACR_Bits
{
    unsigned int SUSAC : 1;
    unsigned int reserved_1 : 31;
} Ifx_DMA_SUSACR_Bits;


typedef struct _Ifx_DMA_SUSENR_Bits
{
    unsigned int SUSEN : 1;
    unsigned int reserved_1 : 31;
} Ifx_DMA_SUSENR_Bits;


typedef struct _Ifx_DMA_TIME_Bits
{
    unsigned int COUNT : 32;
} Ifx_DMA_TIME_Bits;


typedef struct _Ifx_DMA_TSR_Bits
{
    unsigned int RST : 1;
    unsigned int HTRE : 1;
    unsigned int TRL : 1;
    unsigned int CH : 1;
    unsigned int reserved_4 : 4;
    unsigned int HLTREQ : 1;
    unsigned int HLTACK : 1;
    unsigned int reserved_10 : 6;
    unsigned int ECH : 1;
    unsigned int DCH : 1;
    unsigned int CTL : 1;
    unsigned int reserved_19 : 5;
    unsigned int HLTCLR : 1;
    unsigned int reserved_25 : 7;
} Ifx_DMA_TSR_Bits;







typedef union
{
    unsigned int U;
    signed int I;
    Ifx_DMA_ACCEN00_Bits B;
} Ifx_DMA_ACCEN00;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_DMA_ACCEN01_Bits B;
} Ifx_DMA_ACCEN01;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_DMA_ACCEN10_Bits B;
} Ifx_DMA_ACCEN10;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_DMA_ACCEN11_Bits B;
} Ifx_DMA_ACCEN11;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_DMA_ACCEN20_Bits B;
} Ifx_DMA_ACCEN20;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_DMA_ACCEN21_Bits B;
} Ifx_DMA_ACCEN21;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_DMA_ACCEN30_Bits B;
} Ifx_DMA_ACCEN30;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_DMA_ACCEN31_Bits B;
} Ifx_DMA_ACCEN31;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_DMA_BLK_CLRE_Bits B;
} Ifx_DMA_BLK_CLRE;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_DMA_BLK_EER_Bits B;
} Ifx_DMA_BLK_EER;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_DMA_BLK_ERRSR_Bits B;
} Ifx_DMA_BLK_ERRSR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_DMA_BLK_ME_ADICR_Bits B;
} Ifx_DMA_BLK_ME_ADICR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_DMA_BLK_ME_CHCR_Bits B;
} Ifx_DMA_BLK_ME_CHCR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_DMA_BLK_ME_CHSR_Bits B;
} Ifx_DMA_BLK_ME_CHSR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_DMA_BLK_ME_DADR_Bits B;
} Ifx_DMA_BLK_ME_DADR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_DMA_BLK_ME_R0_Bits B;
} Ifx_DMA_BLK_ME_R0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_DMA_BLK_ME_R1_Bits B;
} Ifx_DMA_BLK_ME_R1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_DMA_BLK_ME_R2_Bits B;
} Ifx_DMA_BLK_ME_R2;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_DMA_BLK_ME_R3_Bits B;
} Ifx_DMA_BLK_ME_R3;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_DMA_BLK_ME_R4_Bits B;
} Ifx_DMA_BLK_ME_R4;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_DMA_BLK_ME_R5_Bits B;
} Ifx_DMA_BLK_ME_R5;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_DMA_BLK_ME_R6_Bits B;
} Ifx_DMA_BLK_ME_R6;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_DMA_BLK_ME_R7_Bits B;
} Ifx_DMA_BLK_ME_R7;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_DMA_BLK_ME_RDCRC_Bits B;
} Ifx_DMA_BLK_ME_RDCRC;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_DMA_BLK_ME_SADR_Bits B;
} Ifx_DMA_BLK_ME_SADR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_DMA_BLK_ME_SDCRC_Bits B;
} Ifx_DMA_BLK_ME_SDCRC;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_DMA_BLK_ME_SHADR_Bits B;
} Ifx_DMA_BLK_ME_SHADR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_DMA_BLK_ME_SR_Bits B;
} Ifx_DMA_BLK_ME_SR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_DMA_CH_ADICR_Bits B;
} Ifx_DMA_CH_ADICR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_DMA_CH_CHCFGR_Bits B;
} Ifx_DMA_CH_CHCFGR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_DMA_CH_CHCSR_Bits B;
} Ifx_DMA_CH_CHCSR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_DMA_CH_DADR_Bits B;
} Ifx_DMA_CH_DADR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_DMA_CH_RDCRCR_Bits B;
} Ifx_DMA_CH_RDCRCR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_DMA_CH_SADR_Bits B;
} Ifx_DMA_CH_SADR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_DMA_CH_SDCRCR_Bits B;
} Ifx_DMA_CH_SDCRCR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_DMA_CH_SHADR_Bits B;
} Ifx_DMA_CH_SHADR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_DMA_CLC_Bits B;
} Ifx_DMA_CLC;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_DMA_ERRINTR_Bits B;
} Ifx_DMA_ERRINTR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_DMA_HRR_Bits B;
} Ifx_DMA_HRR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_DMA_ID_Bits B;
} Ifx_DMA_ID;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_DMA_MEMCON_Bits B;
} Ifx_DMA_MEMCON;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_DMA_MODE_Bits B;
} Ifx_DMA_MODE;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_DMA_OTSS_Bits B;
} Ifx_DMA_OTSS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_DMA_PRR0_Bits B;
} Ifx_DMA_PRR0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_DMA_PRR1_Bits B;
} Ifx_DMA_PRR1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_DMA_SUSACR_Bits B;
} Ifx_DMA_SUSACR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_DMA_SUSENR_Bits B;
} Ifx_DMA_SUSENR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_DMA_TIME_Bits B;
} Ifx_DMA_TIME;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_DMA_TSR_Bits B;
} Ifx_DMA_TSR;
# 1040 "../30_Bsw/Common/TC21x/IfxDma_regdef.h"
typedef volatile struct _Ifx_DMA_BLK_ME
{
    Ifx_DMA_BLK_ME_SR SR;
    unsigned char reserved_4[12];
    Ifx_DMA_BLK_ME_R0 R0;
    Ifx_DMA_BLK_ME_R1 R1;
    Ifx_DMA_BLK_ME_R2 R2;
    Ifx_DMA_BLK_ME_R3 R3;
    Ifx_DMA_BLK_ME_R4 R4;
    Ifx_DMA_BLK_ME_R5 R5;
    Ifx_DMA_BLK_ME_R6 R6;
    Ifx_DMA_BLK_ME_R7 R7;
    unsigned char reserved_30[32];
    Ifx_DMA_BLK_ME_RDCRC RDCRC;
    Ifx_DMA_BLK_ME_SDCRC SDCRC;
    Ifx_DMA_BLK_ME_SADR SADR;
    Ifx_DMA_BLK_ME_DADR DADR;
    Ifx_DMA_BLK_ME_ADICR ADICR;
    Ifx_DMA_BLK_ME_CHCR CHCR;
    Ifx_DMA_BLK_ME_SHADR SHADR;
    Ifx_DMA_BLK_ME_CHSR CHSR;
} Ifx_DMA_BLK_ME;
# 1074 "../30_Bsw/Common/TC21x/IfxDma_regdef.h"
typedef volatile struct _Ifx_DMA_BLK
{
    Ifx_DMA_BLK_EER EER;
    Ifx_DMA_BLK_ERRSR ERRSR;
    Ifx_DMA_BLK_CLRE CLRE;
    unsigned char reserved_C[4];
    Ifx_DMA_BLK_ME ME;
} Ifx_DMA_BLK;


typedef volatile struct _Ifx_DMA_CH
{
    Ifx_DMA_CH_RDCRCR RDCRCR;
    Ifx_DMA_CH_SDCRCR SDCRCR;
    Ifx_DMA_CH_SADR SADR;
    Ifx_DMA_CH_DADR DADR;
    Ifx_DMA_CH_ADICR ADICR;
    Ifx_DMA_CH_CHCFGR CHCFGR;
    Ifx_DMA_CH_SHADR SHADR;
    Ifx_DMA_CH_CHCSR CHCSR;
} Ifx_DMA_CH;
# 1107 "../30_Bsw/Common/TC21x/IfxDma_regdef.h"
typedef volatile struct _Ifx_DMA
{
    Ifx_DMA_CLC CLC;
    unsigned char reserved_4[4];
    Ifx_DMA_ID ID;
    unsigned char reserved_C[20];
    Ifx_DMA_MEMCON MEMCON;
    unsigned char reserved_24[28];
    Ifx_DMA_ACCEN00 ACCEN00;
    Ifx_DMA_ACCEN01 ACCEN01;
    Ifx_DMA_ACCEN10 ACCEN10;
    Ifx_DMA_ACCEN11 ACCEN11;
    Ifx_DMA_ACCEN20 ACCEN20;
    Ifx_DMA_ACCEN21 ACCEN21;
    Ifx_DMA_ACCEN30 ACCEN30;
    Ifx_DMA_ACCEN31 ACCEN31;
    unsigned char reserved_60[192];
    Ifx_DMA_BLK BLK0;
    unsigned char reserved_1A0[3968];
    Ifx_DMA_BLK BLK1;
    unsigned char reserved_11A0[96];
    Ifx_DMA_OTSS OTSS;
    Ifx_DMA_ERRINTR ERRINTR;
    Ifx_DMA_PRR0 PRR0;
    Ifx_DMA_PRR1 PRR1;
    Ifx_DMA_TIME TIME;
    unsigned char reserved_1214[236];
    Ifx_DMA_MODE MODE[4];
    unsigned char reserved_1310[1264];
    Ifx_DMA_HRR HRR[16];
    unsigned char reserved_1840[448];
    Ifx_DMA_SUSENR SUSENR[16];
    unsigned char reserved_1A40[448];
    Ifx_DMA_SUSACR SUSACR[16];
    unsigned char reserved_1C40[448];
    Ifx_DMA_TSR TSR[16];
    unsigned char reserved_1E40[448];
    Ifx_DMA_CH CH[16];
    unsigned char reserved_2200[7680];
} Ifx_DMA;
# 37 "../30_Bsw/Common/TC21x/IfxDma_reg.h" 2
# 51 "../30_Bsw/MicroTestLib/Static/SriTst.c" 2
# 1 "../30_Bsw/Common/TC21x/IfxOvc_bf.h" 1
# 52 "../30_Bsw/MicroTestLib/Static/SriTst.c" 2
# 1 "../30_Bsw/Common/TC21x/IfxOvc_reg.h" 1
# 36 "../30_Bsw/Common/TC21x/IfxOvc_reg.h"
# 1 "../30_Bsw/Common/TC21x/IfxOvc_regdef.h" 1
# 45 "../30_Bsw/Common/TC21x/IfxOvc_regdef.h"
typedef struct _Ifx_OVC_BLK_OMASK_Bits
{
    volatile unsigned int reserved_0 : 5;
    volatile unsigned int OMASK : 12;
    volatile unsigned int ONE : 11;
    volatile unsigned int reserved_28 : 4;
} Ifx_OVC_BLK_OMASK_Bits;


typedef struct _Ifx_OVC_BLK_OTAR_Bits
{
    volatile unsigned int reserved_0 : 5;
    volatile unsigned int TBASE : 23;
    volatile unsigned int reserved_28 : 4;
} Ifx_OVC_BLK_OTAR_Bits;


typedef struct _Ifx_OVC_BLK_RABR_Bits
{
    volatile unsigned int reserved_0 : 5;
    volatile unsigned int OBASE : 17;
    volatile unsigned int reserved_22 : 2;
    volatile unsigned int OMEM : 3;
    volatile unsigned int reserved_27 : 4;
    volatile unsigned int OVEN : 1;
} Ifx_OVC_BLK_RABR_Bits;


typedef struct _Ifx_OVC_OSEL_Bits
{
    volatile unsigned int SHOVEN0 : 1;
    volatile unsigned int SHOVEN1 : 1;
    volatile unsigned int SHOVEN2 : 1;
    volatile unsigned int SHOVEN3 : 1;
    volatile unsigned int SHOVEN4 : 1;
    volatile unsigned int SHOVEN5 : 1;
    volatile unsigned int SHOVEN6 : 1;
    volatile unsigned int SHOVEN7 : 1;
    volatile unsigned int reserved_8 : 24;
} Ifx_OVC_OSEL_Bits;







typedef union
{
    unsigned int U;
    signed int I;
    Ifx_OVC_BLK_OMASK_Bits B;
} Ifx_OVC_BLK_OMASK;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_OVC_BLK_OTAR_Bits B;
} Ifx_OVC_BLK_OTAR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_OVC_BLK_RABR_Bits B;
} Ifx_OVC_BLK_RABR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_OVC_OSEL_Bits B;
} Ifx_OVC_OSEL;
# 132 "../30_Bsw/Common/TC21x/IfxOvc_regdef.h"
typedef volatile struct _Ifx_OVC_BLK
{
    Ifx_OVC_BLK_RABR RABR;
    Ifx_OVC_BLK_OTAR OTAR;
    Ifx_OVC_BLK_OMASK OMASK;
} Ifx_OVC_BLK;
# 150 "../30_Bsw/Common/TC21x/IfxOvc_regdef.h"
typedef volatile struct _Ifx_OVC
{
    Ifx_OVC_OSEL OSEL;
    unsigned char reserved_4[12];
    Ifx_OVC_BLK BLK[8];
    unsigned char reserved_70[400];
} Ifx_OVC;
# 37 "../30_Bsw/Common/TC21x/IfxOvc_reg.h" 2
# 53 "../30_Bsw/MicroTestLib/Static/SriTst.c" 2
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
# 54 "../30_Bsw/MicroTestLib/Static/SriTst.c" 2
# 1 "../30_Bsw/Common/TC21x/IfxXbar_reg.h" 1
# 36 "../30_Bsw/Common/TC21x/IfxXbar_reg.h"
# 1 "../30_Bsw/Common/TC21x/IfxXbar_regdef.h" 1
# 45 "../30_Bsw/Common/TC21x/IfxXbar_regdef.h"
typedef struct _Ifx_XBAR_ACCEN0_Bits
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
} Ifx_XBAR_ACCEN0_Bits;


typedef struct _Ifx_XBAR_ACCEN1_Bits
{
    unsigned int reserved_0 : 32;
} Ifx_XBAR_ACCEN1_Bits;


typedef struct _Ifx_XBAR_ARBCON_Bits
{
    unsigned int PRERREN : 1;
    unsigned int SCERREN : 1;
    unsigned int SETPRINT : 1;
    unsigned int SETSCINT : 1;
    unsigned int INTACK : 1;
    unsigned int reserved_5 : 15;
    unsigned int SPC : 12;
} Ifx_XBAR_ARBCON_Bits;


typedef struct _Ifx_XBAR_ARBITER0_DBADD_Bits
{
    unsigned int reserved_0 : 27;
    unsigned int ADDRESS : 1;
    unsigned int reserved_28 : 4;
} Ifx_XBAR_ARBITER0_DBADD_Bits;


typedef struct _Ifx_XBAR_ARBITER0_DBMADD_Bits
{
    unsigned int reserved_0 : 2;
    unsigned int ADDRESS : 19;
    unsigned int reserved_21 : 11;
} Ifx_XBAR_ARBITER0_DBMADD_Bits;


typedef struct _Ifx_XBAR_ARBITER4_DBADD_Bits
{
    unsigned int reserved_0 : 2;
    unsigned int ADDRESS : 29;
    unsigned int reserved_31 : 1;
} Ifx_XBAR_ARBITER4_DBADD_Bits;


typedef struct _Ifx_XBAR_ARBITER4_DBMADD_Bits
{
    unsigned int reserved_0 : 2;
    unsigned int ADDRESS : 29;
    unsigned int reserved_31 : 1;
} Ifx_XBAR_ARBITER4_DBMADD_Bits;


typedef struct _Ifx_XBAR_ARBITER6_DBADD_Bits
{
    unsigned int reserved_0 : 28;
    unsigned int ADDRESS : 3;
    unsigned int reserved_31 : 1;
} Ifx_XBAR_ARBITER6_DBADD_Bits;


typedef struct _Ifx_XBAR_ARBITER6_DBMADD_Bits
{
    unsigned int reserved_0 : 28;
    unsigned int ADDRESS : 3;
    unsigned int reserved_31 : 1;
} Ifx_XBAR_ARBITER6_DBMADD_Bits;


typedef struct _Ifx_XBAR_ARBITER7_DBADD_Bits
{
    unsigned int reserved_0 : 29;
    unsigned int ADDRESS : 1;
    unsigned int reserved_30 : 2;
} Ifx_XBAR_ARBITER7_DBADD_Bits;


typedef struct _Ifx_XBAR_ARBITER7_DBMADD_Bits
{
    unsigned int reserved_0 : 29;
    unsigned int ADDRESS : 1;
    unsigned int reserved_30 : 2;
} Ifx_XBAR_ARBITER7_DBMADD_Bits;


typedef struct _Ifx_XBAR_ARBITERD_DBADD_Bits
{
    unsigned int reserved_0 : 2;
    unsigned int ADDRESS : 30;
} Ifx_XBAR_ARBITERD_DBADD_Bits;


typedef struct _Ifx_XBAR_ARBITERD_DBMADD_Bits
{
    unsigned int ADDRESS : 32;
} Ifx_XBAR_ARBITERD_DBMADD_Bits;


typedef struct _Ifx_XBAR_DBCON_Bits
{
    unsigned int DBEN : 1;
    unsigned int DBSAT : 1;
    unsigned int REARM : 1;
    unsigned int SETDBEVT : 1;
    unsigned int reserved_4 : 12;
    unsigned int RDEN : 1;
    unsigned int WREN : 1;
    unsigned int SVMEN : 1;
    unsigned int ADDEN : 1;
    unsigned int ERREN : 1;
    unsigned int reserved_21 : 2;
    unsigned int MASEN : 1;
    unsigned int MASTER : 6;
    unsigned int reserved_30 : 2;
} Ifx_XBAR_DBCON_Bits;


typedef struct _Ifx_XBAR_DBSAT_Bits
{
    unsigned int SCI0 : 1;
    unsigned int reserved_1 : 3;
    unsigned int SCI4 : 1;
    unsigned int reserved_5 : 1;
    unsigned int SCI6 : 1;
    unsigned int SCI7 : 1;
    unsigned int reserved_8 : 7;
    unsigned int SCID : 1;
    unsigned int reserved_16 : 16;
} Ifx_XBAR_DBSAT_Bits;


typedef struct _Ifx_XBAR_ERR_Bits
{
    unsigned int RD : 1;
    unsigned int WR : 1;
    unsigned int SVM : 1;
    unsigned int reserved_3 : 1;
    unsigned int OPC : 4;
    unsigned int TR_ID : 8;
    unsigned int ADDR_ECC : 8;
    unsigned int MCI_SBS : 8;
} Ifx_XBAR_ERR_Bits;


typedef struct _Ifx_XBAR_ERRADDR_Bits
{
    unsigned int ADDR : 32;
} Ifx_XBAR_ERRADDR_Bits;


typedef struct _Ifx_XBAR_EXTCOND_Bits
{
    unsigned int reserved_0 : 3;
    unsigned int WFWD : 1;
    unsigned int reserved_4 : 2;
    unsigned int FREQDISF : 1;
    unsigned int reserved_7 : 2;
    unsigned int NODELTR : 1;
    unsigned int NORMW : 1;
    unsigned int reserved_11 : 2;
    unsigned int MAX_WS : 7;
    unsigned int reserved_20 : 12;
} Ifx_XBAR_EXTCOND_Bits;


typedef struct _Ifx_XBAR_ID_Bits
{
    unsigned int MODREV : 8;
    unsigned int MODTYPE : 8;
    unsigned int MODNUMBER : 16;
} Ifx_XBAR_ID_Bits;


typedef struct _Ifx_XBAR_IDINTEN_Bits
{
    unsigned int ENSCI0 : 1;
    unsigned int reserved_1 : 3;
    unsigned int ENSCI4 : 1;
    unsigned int reserved_5 : 1;
    unsigned int ENSCI6 : 1;
    unsigned int ENSCI7 : 1;
    unsigned int reserved_8 : 7;
    unsigned int ENSCID : 1;
    unsigned int ENMCI0 : 1;
    unsigned int reserved_17 : 4;
    unsigned int ENMCI5 : 1;
    unsigned int reserved_22 : 6;
    unsigned int ENMCI12 : 1;
    unsigned int ENMCI13 : 1;
    unsigned int reserved_30 : 2;
} Ifx_XBAR_IDINTEN_Bits;


typedef struct _Ifx_XBAR_IDINTSAT_Bits
{
    unsigned int IDSCI0 : 1;
    unsigned int reserved_1 : 3;
    unsigned int IDCSCI4 : 1;
    unsigned int reserved_5 : 1;
    unsigned int IDSCI6 : 1;
    unsigned int IDSCI7 : 1;
    unsigned int reserved_8 : 7;
    unsigned int IDSCID : 1;
    unsigned int IDMCI0 : 1;
    unsigned int reserved_17 : 4;
    unsigned int IDMCI5 : 1;
    unsigned int reserved_22 : 6;
    unsigned int IDMCI12 : 1;
    unsigned int IDMCI13 : 1;
    unsigned int reserved_30 : 2;
} Ifx_XBAR_IDINTSAT_Bits;


typedef struct _Ifx_XBAR_INTSAT_Bits
{
    unsigned int SCSCI0 : 1;
    unsigned int reserved_1 : 3;
    unsigned int SCSCI4 : 1;
    unsigned int reserved_5 : 1;
    unsigned int SCSCI6 : 1;
    unsigned int SCSCI7 : 1;
    unsigned int reserved_8 : 7;
    unsigned int SCSCID : 1;
    unsigned int PRSCI0 : 1;
    unsigned int reserved_17 : 3;
    unsigned int PRSCI4 : 1;
    unsigned int reserved_21 : 1;
    unsigned int PRSCI6 : 1;
    unsigned int PRSCI7 : 1;
    unsigned int reserved_24 : 7;
    unsigned int PRSCID : 1;
} Ifx_XBAR_INTSAT_Bits;


typedef struct _Ifx_XBAR_PRIOH_Bits
{
    unsigned int reserved_0 : 32;
} Ifx_XBAR_PRIOH_Bits;


typedef struct _Ifx_XBAR_PRIOL_Bits
{
    unsigned int MASTER0 : 4;
    unsigned int reserved_4 : 16;
    unsigned int MASTER5 : 4;
    unsigned int MASTER6 : 4;
    unsigned int MASTER7 : 4;
} Ifx_XBAR_PRIOL_Bits;







typedef union
{
    unsigned int U;
    signed int I;
    Ifx_XBAR_ACCEN0_Bits B;
} Ifx_XBAR_ACCEN0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_XBAR_ACCEN1_Bits B;
} Ifx_XBAR_ACCEN1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_XBAR_ARBCON_Bits B;
} Ifx_XBAR_ARBCON;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_XBAR_ARBITER0_DBADD_Bits B;
} Ifx_XBAR_ARBITER0_DBADD;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_XBAR_ARBITER0_DBMADD_Bits B;
} Ifx_XBAR_ARBITER0_DBMADD;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_XBAR_ARBITER4_DBADD_Bits B;
} Ifx_XBAR_ARBITER4_DBADD;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_XBAR_ARBITER4_DBMADD_Bits B;
} Ifx_XBAR_ARBITER4_DBMADD;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_XBAR_ARBITER6_DBADD_Bits B;
} Ifx_XBAR_ARBITER6_DBADD;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_XBAR_ARBITER6_DBMADD_Bits B;
} Ifx_XBAR_ARBITER6_DBMADD;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_XBAR_ARBITER7_DBADD_Bits B;
} Ifx_XBAR_ARBITER7_DBADD;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_XBAR_ARBITER7_DBMADD_Bits B;
} Ifx_XBAR_ARBITER7_DBMADD;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_XBAR_ARBITERD_DBADD_Bits B;
} Ifx_XBAR_ARBITERD_DBADD;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_XBAR_ARBITERD_DBMADD_Bits B;
} Ifx_XBAR_ARBITERD_DBMADD;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_XBAR_DBCON_Bits B;
} Ifx_XBAR_DBCON;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_XBAR_DBSAT_Bits B;
} Ifx_XBAR_DBSAT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_XBAR_ERR_Bits B;
} Ifx_XBAR_ERR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_XBAR_ERRADDR_Bits B;
} Ifx_XBAR_ERRADDR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_XBAR_EXTCOND_Bits B;
} Ifx_XBAR_EXTCOND;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_XBAR_ID_Bits B;
} Ifx_XBAR_ID;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_XBAR_IDINTEN_Bits B;
} Ifx_XBAR_IDINTEN;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_XBAR_IDINTSAT_Bits B;
} Ifx_XBAR_IDINTSAT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_XBAR_INTSAT_Bits B;
} Ifx_XBAR_INTSAT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_XBAR_PRIOH_Bits B;
} Ifx_XBAR_PRIOH;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_XBAR_PRIOL_Bits B;
} Ifx_XBAR_PRIOL;
# 534 "../30_Bsw/Common/TC21x/IfxXbar_regdef.h"
typedef volatile struct _Ifx_XBAR_ARBITER0
{
    Ifx_XBAR_ARBCON ARBCON;
    Ifx_XBAR_PRIOH PRIOH;
    Ifx_XBAR_PRIOL PRIOL;
    Ifx_XBAR_ERRADDR ERRADDR;
    Ifx_XBAR_ERR ERR;
    Ifx_XBAR_DBCON DBCON;
    Ifx_XBAR_ARBITER0_DBADD DBADD;
    Ifx_XBAR_ARBITER0_DBMADD DBMADD;
} Ifx_XBAR_ARBITER0;


typedef volatile struct _Ifx_XBAR_ARBITER4
{
    Ifx_XBAR_ARBCON ARBCON;
    Ifx_XBAR_PRIOH PRIOH;
    Ifx_XBAR_PRIOL PRIOL;
    Ifx_XBAR_ERRADDR ERRADDR;
    Ifx_XBAR_ERR ERR;
    Ifx_XBAR_DBCON DBCON;
    Ifx_XBAR_ARBITER4_DBADD DBADD;
    Ifx_XBAR_ARBITER4_DBMADD DBMADD;
} Ifx_XBAR_ARBITER4;


typedef volatile struct _Ifx_XBAR_ARBITER6
{
    Ifx_XBAR_ARBCON ARBCON;
    Ifx_XBAR_PRIOH PRIOH;
    Ifx_XBAR_PRIOL PRIOL;
    Ifx_XBAR_ERRADDR ERRADDR;
    Ifx_XBAR_ERR ERR;
    Ifx_XBAR_DBCON DBCON;
    Ifx_XBAR_ARBITER6_DBADD DBADD;
    Ifx_XBAR_ARBITER6_DBMADD DBMADD;
} Ifx_XBAR_ARBITER6;


typedef volatile struct _Ifx_XBAR_ARBITER7
{
    Ifx_XBAR_ARBCON ARBCON;
    Ifx_XBAR_PRIOH PRIOH;
    Ifx_XBAR_PRIOL PRIOL;
    Ifx_XBAR_ERRADDR ERRADDR;
    Ifx_XBAR_ERR ERR;
    Ifx_XBAR_DBCON DBCON;
    Ifx_XBAR_ARBITER7_DBADD DBADD;
    Ifx_XBAR_ARBITER7_DBMADD DBMADD;
} Ifx_XBAR_ARBITER7;


typedef volatile struct _Ifx_XBAR_ARBITERD
{
    Ifx_XBAR_ARBCON ARBCON;
    Ifx_XBAR_PRIOH PRIOH;
    Ifx_XBAR_PRIOL PRIOL;
    Ifx_XBAR_ERRADDR ERRADDR;
    Ifx_XBAR_ERR ERR;
    Ifx_XBAR_DBCON DBCON;
    Ifx_XBAR_ARBITERD_DBADD DBADD;
    Ifx_XBAR_ARBITERD_DBMADD DBMADD;
} Ifx_XBAR_ARBITERD;
# 609 "../30_Bsw/Common/TC21x/IfxXbar_regdef.h"
typedef volatile struct _Ifx_XBAR
{
    Ifx_XBAR_EXTCOND EXTCOND;
    Ifx_XBAR_ARBITERD ARBITERD;
    unsigned char reserved_24[32];
    Ifx_XBAR_ARBITER0 ARBITER0;
    unsigned char reserved_64[224];
    Ifx_XBAR_ARBITER4 ARBITER4;
    unsigned char reserved_164[96];
    Ifx_XBAR_ARBITER6 ARBITER6;
    unsigned char reserved_1E4[32];
    Ifx_XBAR_ARBITER7 ARBITER7;
    unsigned char reserved_224[484];
    Ifx_XBAR_ID ID;
    Ifx_XBAR_DBSAT DBSAT;
    Ifx_XBAR_INTSAT INTSAT;
    Ifx_XBAR_IDINTSAT IDINTSAT;
    Ifx_XBAR_IDINTEN IDINTEN;
    unsigned char reserved_41C[220];
    Ifx_XBAR_ACCEN1 ACCEN1;
    Ifx_XBAR_ACCEN0 ACCEN0;
} Ifx_XBAR;
# 37 "../30_Bsw/Common/TC21x/IfxXbar_reg.h" 2
# 55 "../30_Bsw/MicroTestLib/Static/SriTst.c" 2
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
# 56 "../30_Bsw/MicroTestLib/Static/SriTst.c" 2
# 264 "../30_Bsw/MicroTestLib/Static/SriTst.c"
typedef struct SriTst_BackupData
{
  Smu_AlarmActionType AlmActionBackupSRICPUxDMI;
  Smu_AlarmActionType AlmActionBackupSRICPUxPMI;
  Smu_AlarmActionType AlmActionBackupECCAdr;
  Smu_AlarmActionType AlmActionBackupECCWrite;
  Smu_AlarmActionType AlmActionBackupECCRead;
  Smu_AlarmActionType AlmActionBackupSRI;
  Smu_AlarmActionType AlmActionBackupPsprUcErr;
  Std_ReturnType GetAlmActionResult;
  uint32 SegenBackup;
  uint32 OvcRabr0Backup;
  uint32 OvcOtar0Backup;
  uint32 OvcOmask0Backup;
  uint32 OvcOvEnBackup;
  uint32 OvcOselBackup;
  uint32 OvcEnableBackup;
  boolean ProtectionTrapRegistered;
  boolean BusErrorTrapRegistered;
} SriTst_BackupDataType;
# 294 "../30_Bsw/MicroTestLib/Static/SriTst.c"
# 1 "../30_Bsw/STL_common/Ifx_MemMap.h" 1
# 3965 "../30_Bsw/STL_common/Ifx_MemMap.h"
#pragma section ".rodata.STL_CONST_8BIT" a 1
# 295 "../30_Bsw/MicroTestLib/Static/SriTst.c" 2

static const uint8 SriTst_CurrentCpuSriAlm[] =
{
  (uint8)( (uint8)(0U) )






};

# 1 "../30_Bsw/STL_common/Ifx_MemMap.h" 1
# 3976 "../30_Bsw/STL_common/Ifx_MemMap.h"
#pragma section
# 308 "../30_Bsw/MicroTestLib/Static/SriTst.c" 2


# 1 "../30_Bsw/STL_common/Ifx_MemMap.h" 1
# 3321 "../30_Bsw/STL_common/Ifx_MemMap.h"
#pragma section ".data.STL_RAM_8BIT" aw 1
# 311 "../30_Bsw/MicroTestLib/Static/SriTst.c" 2
static volatile uint8 Sri_MppTrapCount;
static volatile uint8 Sri_DseTrapCount;
static volatile uint8 Sri_DaeTrapCount;
static volatile uint8 Sri_DietrTrapCount;
static volatile uint8 Sri_PietrTrapCount;

# 1 "../30_Bsw/STL_common/Ifx_MemMap.h" 1
# 3333 "../30_Bsw/STL_common/Ifx_MemMap.h"
#pragma section
# 318 "../30_Bsw/MicroTestLib/Static/SriTst.c" 2


# 1 "../30_Bsw/STL_common/Ifx_MemMap.h" 1
# 3374 "../30_Bsw/STL_common/Ifx_MemMap.h"
#pragma section ".data.STL_RAM_32BIT" aw 4
# 321 "../30_Bsw/MicroTestLib/Static/SriTst.c" 2
static uint32 Sri_ExpectedTrapClass;
static uint32 Sri_ExpectedTrapId;

# 1 "../30_Bsw/STL_common/Ifx_MemMap.h" 1
# 3388 "../30_Bsw/STL_common/Ifx_MemMap.h"
#pragma section
# 325 "../30_Bsw/MicroTestLib/Static/SriTst.c" 2


# 1 "../30_Bsw/STL_common/Ifx_MemMap.h" 1
# 2475 "../30_Bsw/STL_common/Ifx_MemMap.h"
#pragma section ".rodata.MTL_SRI_EDC_BUSERROR_TST" a 32
# 328 "../30_Bsw/MicroTestLib/Static/SriTst.c" 2




static const uint32 dummy[8] = {0x0U, 0x0U, 0x0U, 0x0U, 0x0U, 0x0U, 0x0U, 0x0U};


# 1 "../30_Bsw/STL_common/Ifx_MemMap.h" 1
# 2488 "../30_Bsw/STL_common/Ifx_MemMap.h"
#pragma section
# 336 "../30_Bsw/MicroTestLib/Static/SriTst.c" 2
# 344 "../30_Bsw/MicroTestLib/Static/SriTst.c"
# 1 "../30_Bsw/STL_common/Ifx_MemMap.h" 1
# 2699 "../30_Bsw/STL_common/Ifx_MemMap.h"
#pragma section ".text.STL_ASIL_CODE_NO_OPTIMIZE" ax 4

#pragma GCC optimize "O0"
# 345 "../30_Bsw/MicroTestLib/Static/SriTst.c" 2




static Sl_TstRsltType SriTst_lInit
(
  SriTst_BackupDataType* const Sri_BackupData
);

static Sl_TstRsltType SriTst_lRestore
(
  const SriTst_BackupDataType* const Sri_BackupData
);

static void SriTst_lDisableOverlay
(
  uint8 CoreId
);

static void SriTst_lEnableOverlay
(
  uint8 CoreId
);

static Sl_TstRsltType SriTst_lCPUDecodersTst
(
  const Sl_ParamSetType ParamSetIndex,
  uint32* const TstSignature
);

static Sl_TstRsltType SriTst_lAdditionalDecodersTst
(
  const Sl_ParamSetType ParamSetIndex,
  uint32* const TstSignature
);

static Sl_TstRsltType SriTst_lLMUDecoderTst
(
  uint32* const TstSignature,
  uint32* const SriTstLMUTstAdr
);







static Sl_TstRsltType SriTst_lPMUDFlashDecoderTst
(
  uint32* const TstSignature,
  uint32* const SriTstPMUDFlashTstAdr
);

static Sl_TstRsltType SriTst_lPMUPFlashDecoderTst
(
  uint32* const TstSignature,
  uint32* const SriTstPMUPFlashTstAdr
);

static Sl_TstRsltType SriTst_lSlaveAddrDecoderTst
(
  uint32* const TstSignature,
  uint32* const SlaveAddress,
  uint8 AlarmGroup,
  uint8 SMUAlarm
);

static Sl_TstRsltType SriTst_lSlaveAddrDecoderXbarTst
(
  uint32* const TstSignature
);

static Sl_TstRsltType SriTst_lSlaveDataDecoderTst
(
  uint32* const TstSignature,
  uint32* const SlaveAddress,
  uint8 AlarmGroup,
  uint8 SMUAlarm
);

static Sl_TstRsltType SriTst_lSlaveDataDecoderXbarTst
(
  uint32* const TstSignature
);

static Sl_TstRsltType SriTst_lMasterDataDecoderTst
(
  uint32* const TstSignature,
  uint32* const SlaveAddress,
  uint8 AlarmGroup,
  uint8 SMUAlarm
);

static Sl_TstRsltType SriTst_lMasterDataDecoderPMITst
(
  uint32* const TstSignature,
  uint32* const SlaveAddress
);

static Sl_TstRsltType SriTst_lDMADecoderTst
(
  const Sl_ParamSetType ParamSetIndex,
  uint32* const TstSignature
);

static Sl_TstRsltType SriTst_lInvalidTransactionIdTst
(
  const Sl_ParamSetType ParamSetIndex,
  uint32* const TstSignature
);

static Sl_TstRsltType SriTst_lInjectPsprError
(
  uint32* const TestAddress,
  const uint8 CoreId
);

static Sl_TstRsltType SriTst_lEnablePspr0Mc
(
  void
);

static Sl_TstRsltType SriTst_lDisablePspr0Mc
(
  void
);

static Sl_TstRsltType SriTst_lEnableMtuClock
(
  uint32* const MtuClcBackup
);

static Sl_TstRsltType SriTst_lDisableMtuClock
(
  void
);

static Sl_TstRsltType SriTst_lDoDMADecoderTst
(
  const Sl_ParamSetType ParamSetIndex,
  uint32* const TstSignature
);

static Sl_TstRsltType SriTst_lSriBusErrorsTst
(
  const Sl_ParamSetType ParamSetIndex,
  uint32* const TstSignature
);
# 507 "../30_Bsw/MicroTestLib/Static/SriTst.c"
static Sl_TstRsltType SriTst_lUser0AccTst
(
  uint32* const TstSignature
);
# 524 "../30_Bsw/MicroTestLib/Static/SriTst.c"
static Sl_TstRsltType SriTst_lUser1AccTst
(
  uint32* const TstSignature
);

static Sl_TstRsltType SriTst_lUnmappedAdrTst
(
  uint32* const TstSignature
);

static Sl_TstRsltType SriTst_lUnsupportedOCTst
(
  uint32* const TstSignature
);

static boolean SriTst_lProtectionTrapHandler
(
  const uint32 TrapId
);

static boolean SriTst_lBusErrorTrapHandler
(
  const uint32 TrapId
);
# 651 "../30_Bsw/MicroTestLib/Static/SriTst.c"
Sl_TstRsltType SriTst_SriTst
(
  const Sl_ParamSetType ParamSetIndex,
  const uint8 TstSeed,
  uint32* const TstSignature
)
{
  Sl_TstRsltType Result = (0x4010aU);
  Sl_TstRsltType ResRestore = (0x4010aU);
  SriTst_BackupDataType Sri_BackupData;


  *TstSignature = (uint32)(__crc32((unsigned_int)(TEST_ID_SRI_TST),(unsigned_int)(TstSeed)));



  if (ParamSetIndex > (( 1U ) - 1U))
  {
    Result = (0x40102U);
  }
  else if (((Smu_StateType)1) != Smu_GetSmuState())
  {
    Result = (0x4020cU);
  }
  else
  {
    Result = SriTst_lInit(&Sri_BackupData);
    if ((0x401ffU) == Result)
    {

      Result = SriTst_lCPUDecodersTst(ParamSetIndex, TstSignature);

      if ((0x401ffU) == Result)
      {

          Result = SriTst_lAdditionalDecodersTst
                   (
                     ParamSetIndex,
                     TstSignature
                   );
        if ((0x401ffU) == Result)
        {
          Result = SriTst_lSriBusErrorsTst(ParamSetIndex, TstSignature);
        }
      }

    }

    ResRestore = SriTst_lRestore(&Sri_BackupData);

    if((0x401ffU) == Result)
    {
      Result = ResRestore;
    }
  }



  *TstSignature = (uint32)(__crc32((unsigned_int)(*TstSignature),(unsigned_int)((uint32)Result)));

  return Result;
}
# 752 "../30_Bsw/MicroTestLib/Static/SriTst.c"
static Sl_TstRsltType SriTst_lInit
(
  SriTst_BackupDataType * const Sri_BackupData
)
{
  Sl_TstRsltType Result = (0x4010aU);
  Std_ReturnType SmuResult1, SmuResult2, SmuResult3, SmuResult4,
                      SmuResult5, SmuResult6, SmuResult7;

  Smu_FSPActionType FspActionBackup;
  uint32 AlarmStatus1 = 0U;
  uint32 AlarmStatus2 = 0U;
  uint32 AlarmStatus3 = 0U;
  uint32 AlarmStatus4 = 0U;
  uint32 AlarmStatus = 0U;
  uint8 CoreId;
  uint32 i;


  CoreId = Mcal_GetCoreId();


  Sri_ExpectedTrapClass = ( 0x00U );
  Sri_ExpectedTrapId = ( 0x00U );


  Sri_BackupData->ProtectionTrapRegistered = (boolean)0;
  Sri_BackupData->BusErrorTrapRegistered = (boolean)0;


  switch (CoreId)
  {
    case 0:
      Sri_BackupData->OvcRabr0Backup = ((*(volatile Ifx_OVC_BLK_RABR *)0xF880FB10u)).U;
      Sri_BackupData->OvcOtar0Backup = ((*(volatile Ifx_OVC_BLK_OTAR *)0xF880FB14u)).U;
      Sri_BackupData->OvcOmask0Backup = ((*(volatile Ifx_OVC_BLK_OMASK *)0xF880FB18u)).U;
      Sri_BackupData->OvcOselBackup = (*(volatile Ifx_OVC_OSEL *)0xF880FB00u).U;


      Sri_BackupData->OvcOvEnBackup = 0U;
      for (i = 0U; i < ( (uint32)8U ); i++)
      {
        if (((*(Ifx_OVC *)0xF880FB00u).BLK[i].RABR.U &
             (uint32)((uint32)1U << (31u))) > 0U)
        {
          Sri_BackupData->OvcOvEnBackup |= (uint32)((uint32)1U << (uint32)i);
        }

      }


      (*(volatile Ifx_SCU_OVCCON *)0xF00361E4u).U = (uint32)(((uint32)1U << (uint32)(0u)) |
                              ((uint32)1U << (uint32)(17u)));
    break;
# 855 "../30_Bsw/MicroTestLib/Static/SriTst.c"
    default:


    break;
  }


  Sri_BackupData->OvcEnableBackup = (*(volatile Ifx_SCU_OVCENABLE *)0xF00361E0u).U;


  Sri_BackupData->SegenBackup = (uint32)((__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "(0x1030)" : "=d" (__res) :: "memory"); __res; })));



  SmuResult1 = Smu_GetAlarmAction(( (uint8)(2U) ),
                                  ( (uint8)(21U) ),
                                  &(Sri_BackupData->AlmActionBackupECCAdr),
                                  &(FspActionBackup));

  SmuResult2 = Smu_GetAlarmAction(( (uint8)(2U) ),
                                  ( (uint8)(22U) ),
                                  &(Sri_BackupData->AlmActionBackupECCWrite),
                                  &(FspActionBackup));

  SmuResult3 = Smu_GetAlarmAction(( (uint8)(2U) ),
                                  ( (uint8)(23U) ),
                                  &(Sri_BackupData->AlmActionBackupECCRead),
                                  &(FspActionBackup));

  SmuResult4 = Smu_GetAlarmAction(( (uint8)(3U) ),
                                  ( (uint8)(30U) ),
                                  &(Sri_BackupData->AlmActionBackupSRI),
                                  &(FspActionBackup));

  SmuResult5 = Smu_GetAlarmAction(SriTst_CurrentCpuSriAlm[CoreId],
                                  ( (uint8)(19U)),
                                  &(Sri_BackupData->AlmActionBackupSRICPUxDMI),
                                  &(FspActionBackup));

  SmuResult6 = Smu_GetAlarmAction(SriTst_CurrentCpuSriAlm[CoreId],
                                  ( (uint8)(18U)),
                                  &(Sri_BackupData->AlmActionBackupSRICPUxPMI),
                                  &(FspActionBackup));

  SmuResult7 = Smu_GetAlarmAction(( (uint8)(0U) ),
                                  ( (uint8)(7U) ),
                                  &(Sri_BackupData->AlmActionBackupPsprUcErr),
                                  &(FspActionBackup));

  if ( (SmuResult1 != 0U) || (SmuResult2 != 0U) || (SmuResult3 != 0U) ||
       (SmuResult4 != 0U) || (SmuResult5 != 0U) || (SmuResult6 != 0U) ||
       (SmuResult7 != 0U) )
  {
    Result = (0x40210U);
    Sri_BackupData->GetAlmActionResult = 1U;
  }



  else
  {
    Sri_BackupData->GetAlmActionResult = 0U;
  }





  if ((0x4010aU) == Result)
  {
    SmuResult1 = Smu_GetAlarmStatus(( (uint8)(2U) ), &AlarmStatus1);
    SmuResult2 = Smu_GetAlarmStatus(( (uint8)(3U) ), &AlarmStatus2);
    SmuResult3 = Smu_GetAlarmStatus(SriTst_CurrentCpuSriAlm[CoreId],
                                    &AlarmStatus3);
    SmuResult4 = Smu_GetAlarmStatus(( (uint8)(0U) ), &AlarmStatus4);
    if ( (SmuResult1 != 0U) || (SmuResult2 != 0U) ||
         (SmuResult3 != 0U) || (SmuResult4 != 0U) )
    {
      Result = (0x4020eU);
    }

    else
    {
      AlarmStatus = ( (AlarmStatus3 & ( (uint32)1U << ( (uint8)(18U)) )) |
                      (AlarmStatus3 & ( (uint32)1U << ( (uint8)(19U)) )) |
                      (AlarmStatus1 & ( (uint32)1U << ( (uint8)(21U) ) )) |
                      (AlarmStatus1 & ( (uint32)1U << ( (uint8)(22U) ) )) |
                      (AlarmStatus1 & ( (uint32)1U << ( (uint8)(23U) ) )) |
                      (AlarmStatus2 & ( (uint32)1U << ( (uint8)(30U) ) )) |
                      (AlarmStatus4 & ( (uint32)1U << ( (uint8)(7U) ) )) );
      if (0U != AlarmStatus)
      {
        Result = (0x4020dU);
      }
    }

  }


  if ((0x4010aU) == Result)
  {
    SmuResult1= Smu_SetAlarmAction(( (uint8)(2U) ),
                                   ( (uint8)(21U) ),
                                   ((Smu_AlarmActionType)0x00U));
    SmuResult2= Smu_SetAlarmAction(( (uint8)(2U) ),
                                   ( (uint8)(22U) ),
                                   ((Smu_AlarmActionType)0x00U));
    SmuResult3= Smu_SetAlarmAction(( (uint8)(2U) ),
                                   ( (uint8)(23U) ),
                                   ((Smu_AlarmActionType)0x00U));
    SmuResult4= Smu_SetAlarmAction(( (uint8)(3U) ),
                                   ( (uint8)(30U) ),
                                   ((Smu_AlarmActionType)0x00U));
    SmuResult5= Smu_SetAlarmAction(SriTst_CurrentCpuSriAlm[CoreId],
                                   ( (uint8)(19U)),
                                   ((Smu_AlarmActionType)0x00U));
    SmuResult6= Smu_SetAlarmAction(SriTst_CurrentCpuSriAlm[CoreId],
                                   ( (uint8)(18U)),
                                   ((Smu_AlarmActionType)0x00U));
    SmuResult7= Smu_SetAlarmAction(( (uint8)(0U) ),
                                   ( (uint8)(7U) ),
                                   ((Smu_AlarmActionType)0x00U));

    if ( (SmuResult1 != 0U) || (SmuResult2 != 0U) || (SmuResult3 != 0U) ||
         (SmuResult4 != 0U) || (SmuResult5 != 0U) || (SmuResult6 != 0U) ||
         (SmuResult7 != 0U))

    {
      Result = (0x40211U);
    }



    else
    {

      Sri_MppTrapCount = 0U;
      Sri_DseTrapCount = 0U;
      Sri_DaeTrapCount = 0U;
      Sri_DietrTrapCount = 0U;
      Sri_PietrTrapCount = 0U;


      Result = TRAP_RegisterTrapHandler(( 0x01U ),
                                        &SriTst_lProtectionTrapHandler);
      if(( (TRAP_ErrorType)0x00000000) == Result)
      {
        Sri_BackupData->ProtectionTrapRegistered = (boolean)1;
        Result = TRAP_RegisterTrapHandler(( 0x04U ),
                                          &SriTst_lBusErrorTrapHandler);
        if (( (TRAP_ErrorType)0x00000000) == Result)
        {
          Sri_BackupData->BusErrorTrapRegistered = (boolean)1;
          Result = (0x401ffU);
        }
        else
        {
          Result = (0x44006U);
        }
      }
      else
      {
        Result = (0x44006U);
      }
    }



  }

  return Result;
}
# 1061 "../30_Bsw/MicroTestLib/Static/SriTst.c"
static Sl_TstRsltType SriTst_lRestore
(
  const SriTst_BackupDataType * const Sri_BackupData
)
{
  Sl_TstRsltType Result = (0x4010aU);
  Std_ReturnType SmuResult1, SmuResult2, SmuResult3, SmuResult4,
                      SmuResult5, SmuResult6, SmuResult7;
  uint8 CoreId;


  CoreId = Mcal_GetCoreId();


  (*(volatile Ifx_FLASH_FSR *)0xF8002010u).U = ( 0x00401000U );


  Mcal_ResetSafetyENDINIT_Timed(((uint32)22960U));
  (*(volatile Ifx_SCU_OVCENABLE *)0xF00361E0u).U = Sri_BackupData->OvcEnableBackup;
  Mcal_SetSafetyENDINIT_Timed();


  switch (CoreId)
  {
    case 0:

      ((*(volatile Ifx_OVC_BLK_RABR *)0xF880FB10u)).U = 0U;

      ((*(volatile Ifx_OVC_BLK_OTAR *)0xF880FB14u)).U = Sri_BackupData->OvcOtar0Backup;
      ((*(volatile Ifx_OVC_BLK_OMASK *)0xF880FB18u)).U = Sri_BackupData->OvcOmask0Backup;
      ((*(volatile Ifx_OVC_BLK_RABR *)0xF880FB10u)).U = Sri_BackupData->OvcRabr0Backup;


      (*(volatile Ifx_OVC_OSEL *)0xF880FB00u).U = Sri_BackupData->OvcOvEnBackup;
      (*(volatile Ifx_SCU_OVCCON *)0xF00361E4u).U = (uint32)(((uint32)1U << (uint32)(0u)) |
                              ((uint32)1U <<
                               (uint32)(16u)));


      _isync();


      (*(volatile Ifx_OVC_OSEL *)0xF880FB00u).U = Sri_BackupData->OvcOselBackup;
    break;
# 1153 "../30_Bsw/MicroTestLib/Static/SriTst.c"
    default:


    break;
  }


  Mcal_ResetENDINIT();
  _dsync(); do { unsigned __newval = (unsigned) ((Sri_BackupData->SegenBackup)); __asm__ volatile ("mtcr LO:" "(0x1030)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
  Mcal_SetENDINIT();


  if ((boolean)0 != Sri_BackupData->ProtectionTrapRegistered)
  {
    if (( (TRAP_ErrorType)0x00000000) != TRAP_UnregisterTrapHandler(( 0x01U )))
    {
      Result = (0x44006U);
    }
  }
  if ((boolean)0 != Sri_BackupData->BusErrorTrapRegistered)
  {
    if (( (TRAP_ErrorType)0x00000000) != TRAP_UnregisterTrapHandler(( 0x04U )))
    {
      Result = (0x44006U);
    }
  }


  ((*(volatile Ifx_XBAR_ARBCON *)0xF8700044u)).U |= (unsigned_int)((unsigned_int)(0x1u) <<
                                   (4u));
# 1191 "../30_Bsw/MicroTestLib/Static/SriTst.c"
  ((*(volatile Ifx_XBAR_ARBCON *)0xF8700144u)).U |= (unsigned_int)((unsigned_int)(0x1u) <<
                                   (4u));
  ((*(volatile Ifx_XBAR_ARBCON *)0xF87001C4u)).U |= (unsigned_int)((unsigned_int)(0x1u) <<
                                   (4u));
  ((*(volatile Ifx_XBAR_ARBCON *)0xF8700204u)).U |= (unsigned_int)((unsigned_int)(0x1u) <<
                                   (4u));




  ((*(volatile Ifx_XBAR_ARBCON *)0xF8700004u)).U |= (unsigned_int)((unsigned_int)(0x1u) <<
                                   (4u));


  (*(volatile Ifx_XBAR_INTSAT *)0xF8700410u).U = (((*(volatile Ifx_XBAR_INTSAT *)0xF8700410u).U & ((unsigned_int)0x80D180D1U)) | (((unsigned_int)0x80D180D1U)));
  (*(volatile Ifx_XBAR_IDINTSAT *)0xF8700414u).U = (((*(volatile Ifx_XBAR_IDINTSAT *)0xF8700414u).U & ((unsigned_int)0x302180D1U))
                     | (((unsigned_int)0x302180D1U)));







  if (0U == Sri_BackupData->GetAlmActionResult)
  {
    SmuResult1= Smu_SetAlarmAction(( (uint8)(2U) ),
                                   ( (uint8)(21U) ),
                                   Sri_BackupData->AlmActionBackupECCAdr);
    SmuResult2= Smu_SetAlarmAction(( (uint8)(2U) ),
                                   ( (uint8)(22U) ),
                                   Sri_BackupData->AlmActionBackupECCWrite);
    SmuResult3= Smu_SetAlarmAction(( (uint8)(2U) ),
                                   ( (uint8)(23U) ),
                                   Sri_BackupData->AlmActionBackupECCRead);
    SmuResult4= Smu_SetAlarmAction(( (uint8)(3U) ),
                                   ( (uint8)(30U) ),
                                   Sri_BackupData->AlmActionBackupSRI);
    SmuResult5= Smu_SetAlarmAction(SriTst_CurrentCpuSriAlm[CoreId],
                                   ( (uint8)(19U)),
                                   Sri_BackupData->AlmActionBackupSRICPUxDMI);
    SmuResult6= Smu_SetAlarmAction(SriTst_CurrentCpuSriAlm[CoreId],
                                   ( (uint8)(18U)),
                                   Sri_BackupData->AlmActionBackupSRICPUxPMI);
    SmuResult7= Smu_SetAlarmAction(( (uint8)(0U) ),
                                   ( (uint8)(7U) ),
                                   Sri_BackupData->AlmActionBackupPsprUcErr);

    if ( (SmuResult1 != 0U) || (SmuResult2 != 0U) || (SmuResult3 != 0U) ||
         (SmuResult4 != 0U) || (SmuResult5 != 0U) || (SmuResult6 != 0U) ||
         (SmuResult7 != 0U) )
    {
      Result = (0x40211U);
    }



  }

  if ((0x4010aU) == Result)
  {
    Result = (0x401ffU);
  }

  return Result;
}
# 1284 "../30_Bsw/MicroTestLib/Static/SriTst.c"
static boolean SriTst_lProtectionTrapHandler
(
  const uint32 TrapId
)
{
  boolean TrapExpected = (boolean)0;


  if ((( 0x05U ) == TrapId) &&
      (( 0x01U ) == Sri_ExpectedTrapClass) &&
      (( 0x05U ) == Sri_ExpectedTrapId))
  {
    TrapExpected = (boolean)1;


    Sri_ExpectedTrapClass = ( 0x00U );
    Sri_ExpectedTrapId = ( 0x00U );

    if (Sri_MppTrapCount < (uint8)0xFF)
    {
      Sri_MppTrapCount += 1U;
    }


    _dsync(); do { unsigned __newval = (unsigned) ((0x0U)); __asm__ volatile ("mtcr LO:" "(0x9010)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
  }


  else
  {
    Sri_MppTrapCount = 0U;
  }



  return TrapExpected;
}
# 1349 "../30_Bsw/MicroTestLib/Static/SriTst.c"
static boolean SriTst_lBusErrorTrapHandler
(
  const uint32 TrapId
)
{
  boolean TrapExpected = (boolean)0;

  switch (TrapId)
  {
    case ( 0x02U ):
      if ((( 0x04U ) == Sri_ExpectedTrapClass) &&
          (( 0x02U ) == Sri_ExpectedTrapId))
      {
        TrapExpected = (boolean)1;


        if (Sri_DseTrapCount < (uint8)0xFF)
        {
          Sri_DseTrapCount += 1U;
        }


        _dsync(); do { unsigned __newval = (unsigned) ((0x0U)); __asm__ volatile ("mtcr LO:" "(0x9010)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
      }

      break;

    case ( 0x03U ):
      if ((( 0x04U ) == Sri_ExpectedTrapClass) &&
          (( 0x03U ) == Sri_ExpectedTrapId))
      {
        TrapExpected = (boolean)1;


        if (Sri_DaeTrapCount < (uint8)0xFF)
        {
          Sri_DaeTrapCount += 1U;
        }


        _dsync(); do { unsigned __newval = (unsigned) ((0x0U)); __asm__ volatile ("mtcr LO:" "(0x9018)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
      }

      break;

    case ( 0x05U ):




      if ((( 0x04U ) == Sri_ExpectedTrapClass) &&
          (( 0x05U ) == Sri_ExpectedTrapId))
      {
        TrapExpected = (boolean)1;


        if (Sri_PietrTrapCount < (uint8)0xFF)
        {
          Sri_PietrTrapCount += 1U;
        }


        _dsync(); do { unsigned __newval = (unsigned) ((0x0U)); __asm__ volatile ("mtcr LO:" "(0x9214)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
      }

      break;

    case ( 0x06U ):



      if ((( 0x04U ) == Sri_ExpectedTrapClass) &&
          (( 0x06U ) == Sri_ExpectedTrapId))
      {
        TrapExpected = (boolean)1;


        if (Sri_DietrTrapCount < (uint8)0xFF)
        {
          Sri_DietrTrapCount += 1U;
        }


        _dsync(); do { unsigned __newval = (unsigned) ((0x0)); __asm__ volatile ("mtcr LO:" "(0x9024)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
      }

      break;

    default:
      Sri_DseTrapCount = 0U;
      Sri_DaeTrapCount = 0U;
      Sri_PietrTrapCount = 0U;
      Sri_DietrTrapCount = 0U;
      break;
  }

  if ((boolean)1 == TrapExpected)
  {

    Sri_ExpectedTrapClass = ( 0x00U );
    Sri_ExpectedTrapId = ( 0x00U );
  }

  return TrapExpected;
}
# 1501 "../30_Bsw/MicroTestLib/Static/SriTst.c"
static Sl_TstRsltType SriTst_lSriBusErrorsTst
(
  const Sl_ParamSetType ParamSetIndex,
  uint32* const TstSignature
)
{
  Sl_TstRsltType Result = (0x4010aU);
  Std_ReturnType Temp;
# 1518 "../30_Bsw/MicroTestLib/Static/SriTst.c"
  Result = SriTst_lUser0AccTst(TstSignature);
  if ((0x401ffU) == Result)
  {



    Result = SriTst_lUser1AccTst(TstSignature);


 ((*(volatile Ifx_SRC_SRCR *)0xF0038048u)).U = ((((*(volatile Ifx_SRC_SRCR *)0xF0038048u)).U & ((unsigned_int)0x293F1CFFU)) | (((unsigned_int)0x02000000U)));

    Temp = Smu_ClearAlarmStatus(( (uint8)(3U) ), ( (uint8)(30U) ));
    if(0U != Temp)
    {


      if (Result == (0x401ffU))
      {
        Result = (0x4020fU);
      }
    }

    if ((0x401ffU) == Result)
    {



      Result = SriTst_lUnmappedAdrTst(TstSignature);

   ((*(volatile Ifx_SRC_SRCR *)0xF0038048u)).U = ((((*(volatile Ifx_SRC_SRCR *)0xF0038048u)).U & ((unsigned_int)0x293F1CFFU)) | (((unsigned_int)0x02000000U)));
      Temp = Smu_ClearAlarmStatus(( (uint8)(3U) ), ( (uint8)(30U) ));
      if(0U != Temp)
      {


        if (Result == (0x401ffU))
        {
          Result = (0x4020fU);
        }
      }

      if ((0x401ffU) == Result)
      {



        Result = SriTst_lUnsupportedOCTst(TstSignature);

        ((*(volatile Ifx_SRC_SRCR *)0xF0038048u)).U = ((((*(volatile Ifx_SRC_SRCR *)0xF0038048u)).U & ((unsigned_int)0x293F1CFFU)) | (((unsigned_int)0x02000000U)));
        Temp = Smu_ClearAlarmStatus(( (uint8)(3U) ), ( (uint8)(30U) ));
        if(0U != Temp)
        {


          if (Result == (0x401ffU))
          {
            Result = (0x4020fU);
          }
        }
        if ((0x401ffU) == Result)
        {




          Result = SriTst_lInvalidTransactionIdTst(ParamSetIndex, TstSignature);
    ((*(volatile Ifx_SRC_SRCR *)0xF0038048u)).U = ((((*(volatile Ifx_SRC_SRCR *)0xF0038048u)).U & ((unsigned_int)0x293F1CFFU)) | (((unsigned_int)0x02000000U)));
        }
# 1604 "../30_Bsw/MicroTestLib/Static/SriTst.c"
      }
    }
  }

  return Result;
}
# 1754 "../30_Bsw/MicroTestLib/Static/SriTst.c"
static Sl_TstRsltType SriTst_lInvalidTransactionIdTst
(
  const Sl_ParamSetType ParamSetIndex,
  uint32* const TstSignature
)
{
  Sl_TstRsltType Result = (0x4010aU);
  Sl_TstRsltType ResultTmp;
  uint32* TestAddress;
  uint32 MtuClcBackup;
  uint32 XbarIdIntEnBackup;
  volatile uint32 Dummy = 0U;
  uint8 CoreId;
  uint32 MemoryBackup[2U] = {0U,0U};
  volatile uint16 DummyW_MtuTc_005;




  const unsigned_int IdMciBitTbl[(1U)] =
  {
    ( 0x10000000U )






  };


  CoreId = Mcal_GetCoreId();



  TestAddress = SriTst_ConfigRoot[ParamSetIndex].SriTstPSPRTstAdr[0];
  MemoryBackup[0] = TestAddress[0];
  MemoryBackup[1] = TestAddress[1];


  ResultTmp = SriTst_lEnableMtuClock(&MtuClcBackup);
  if ((0x401ffU) == ResultTmp)
  {

    ResultTmp = SriTst_lInjectPsprError(TestAddress, CoreId);
    if ((0x401ffU) == ResultTmp)
    {

      XbarIdIntEnBackup = (*(volatile Ifx_XBAR_IDINTEN *)0xF8700418u).U;
      (*(volatile Ifx_XBAR_IDINTEN *)0xF8700418u).U |= IdMciBitTbl[CoreId];


      Sri_ExpectedTrapClass = ( 0x04U );
      Sri_ExpectedTrapId = ( 0x02U );


      Dummy = *TestAddress;


      *TstSignature = (uint32)(__crc32((unsigned_int)(*TstSignature),(unsigned_int)((uint32)Sri_DseTrapCount)));


      if (1U != Sri_DseTrapCount)
      {
        Result = (0x44015U);
      }


      *TstSignature = (uint32)(__crc32((unsigned_int)(*TstSignature),(unsigned_int)((uint32)((*(volatile Ifx_XBAR_IDINTSAT *)0xF8700414u).U & IdMciBitTbl[CoreId]))))

                                                                  ;


      if (0U == ((*(volatile Ifx_XBAR_IDINTSAT *)0xF8700414u).U & IdMciBitTbl[CoreId]))
      {
        Result = (0x44015U);
      }


      __asm( "                           \n" "   mov.aa %%a2,%1          \n" "   ld.d   %%e4,[%%a2+]0    \n" "   st.d   [%0+]0,%%e4      \n" : : "a"(TestAddress), "a"(&MemoryBackup) : "d4", "d5", "a2");


      (*(volatile Ifx_XBAR_IDINTSAT *)0xF8700414u).U = IdMciBitTbl[CoreId];


      if (0U == CoreId)
      {
        _dsync(); do { unsigned __newval = (unsigned) (((uint32)0U)); __asm__ volatile ("mtcr LO:" "(0x9214)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
      }
      else
      {
        (*(volatile Ifx_CPU_PIETR *)0xF8819214u).U = 0U;
      }


      if (0U != Smu_ClearAlarmStatus(( (uint8)(0U) ),
                                       ( (uint8)(7U) )))
      {
        Result = (0x4020fU);
      }



      if (0U != Smu_ClearAlarmStatus(( (uint8)(3U) ),
                                       ( (uint8)(30U) )))
      {
        Result = (0x4020fU);
      }



      (*(volatile Ifx_XBAR_IDINTEN *)0xF8700418u).U = XbarIdIntEnBackup;
    }
    else
    {
      Result = ResultTmp;
    }

    if (0U == CoreId)
    {







   (*(volatile Ifx_MC_ECCD *)0xF0062010u).U = ((uint16)(0x780FU));
   DummyW_MtuTc_005 = (*(volatile Ifx_MC_ECCD *)0xF0062010u).U;
      DummyW_MtuTc_005 = DummyW_MtuTc_005 &
                 (uint16)(~(uint16)(((uint32)(0x1u) <<
                                     (uint32)(0u)) |
                                    ((uint32)(0x1u) <<
                                     (uint32)(1u)) |
                                    ((uint32)(0x1u) <<
                                     (uint32)(2u)) |
                                    ((uint32)(0x1u) <<
                                     (uint32)(3u))));

   DummyW_MtuTc_005 |= (uint16)((uint32)(0x1u) <<
                           (uint32)(4u));
   (*(volatile Ifx_MC_ECCD *)0xF0062010u).U = ((uint16)(0x780FU));
      (*(volatile Ifx_MC_ECCD *)0xF0062010u).U = DummyW_MtuTc_005;
    }
 else
 {





       Mcal_ResetSafetyENDINIT_Timed(((uint32)22960U));
       ResultTmp = SriTst_lEnablePspr0Mc();
       if((0x401ffU) == ResultTmp)
        {
           (*(volatile Ifx_MC_ECCD *)0xF0062010u).U = (*(volatile Ifx_MC_ECCD *)0xF0062010u).U &
                 (uint16)(~(uint16)(((uint32)(0x1u) <<
                                     (uint32)(0u)) |
                                    ((uint32)(0x1u) <<
                                     (uint32)(1u)) |
                                    ((uint32)(0x1u) <<
                                     (uint32)(2u)) |
                                    ((uint32)(0x1u) <<
                                     (uint32)(3u))));

     (*(volatile Ifx_MC_ECCD *)0xF0062010u).U |= (uint16)((uint32)(0x1u) <<
                           (uint32)(4u));


           ResultTmp = SriTst_lDisablePspr0Mc();
     if ((0x401ffU) != ResultTmp)
           {
              Result = ResultTmp;
           }
     }
        else
        {
     Result = ResultTmp;
        }
     Mcal_SetSafetyENDINIT_Timed();
    }

    if (MtuClcBackup > 0U)
    {
      ResultTmp = SriTst_lDisableMtuClock();
      if ((0x401ffU) != ResultTmp)
      {
        Result = ResultTmp;
      }
    }
  }
  else
  {
    Result = ResultTmp;
  }


  if ((0x4010aU) == Result)
  {
    Result = (0x401ffU);
  }


  Sri_DseTrapCount = 0U;
  {if((Dummy) != 0U) { }}
  return Result;
}
# 2001 "../30_Bsw/MicroTestLib/Static/SriTst.c"
static Sl_TstRsltType SriTst_lInjectPsprError
(
  uint32* const TestAddress,
  const uint8 CoreId
)
{
  uint8 i;
  uint32 Temp;
  uint32 CpuCacheBypass = 0U;
  Sl_TstRsltType Result = (0x4010aU);
  Sl_TstRsltType ResultTmp;
  volatile Ifx_MC_RDBFL* McRdbfl = &(*(volatile Ifx_MC_RDBFL *)0xF00620A0u);
  uint32 TestData[2] = {( (uint32)0xA5A5A5A5U),
                                         ( (uint32)0xA5A5A5A5U)};
  volatile uint32 Dummy;






  if (0U == CoreId)
  {
    Mcal_ResetENDINIT();
    Temp = (uint32)((__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "(0x920C)" : "=d" (__res) :: "memory"); __res; })));


    CpuCacheBypass = (Temp & ( (uint32)0x00000002 ));


    Temp |= ( (uint32)0x00000002 );
    _dsync(); do { unsigned __newval = (unsigned) ((Temp)); __asm__ volatile ("mtcr LO:" "(0x920C)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
    Mcal_SetENDINIT();
  }


  Mcal_SuspendAllInterrupts();




  _dsync();
  Dummy = *TestAddress;


  Mcal_ResetSafetyENDINIT_Timed(((uint32)22960U));
  ResultTmp = SriTst_lEnablePspr0Mc();
  if ((0x401ffU) == ResultTmp)
  {

    McRdbfl[0].U = ( (uint16)0x0003 );
    for (i = 1U; i < ( (uint8)5 ); i++)
    {
      McRdbfl[i].U = 0U;
    }


    (*(volatile Ifx_MC_ECCS *)0xF006200Eu).U |= (uint16)( (uint16)0x0020 );


    ResultTmp = SriTst_lDisablePspr0Mc();
    if ((0x401ffU) == ResultTmp)
    {

      __asm( "                           \n" "   mov.aa %%a2,%1          \n" "   ld.d   %%e4,[%%a2+]0    \n" "   st.d   [%0+]0,%%e4      \n" : : "a"(TestAddress), "a"(&TestData[0U]) : "d4", "d5", "a2");






      _dsync();
      Dummy = TestAddress[2U];


      ResultTmp = SriTst_lEnablePspr0Mc();
      if ((0x401ffU) == ResultTmp)
      {

        (*(volatile Ifx_MC_ECCS *)0xF006200Eu).U &= (uint16)~( (uint16)0x0020 );


        Result = SriTst_lDisablePspr0Mc();
      }
      else
      {
        Result = ResultTmp;
      }
    }
    else
    {
      Result = ResultTmp;
    }
  }
  else
  {
    Result = ResultTmp;
  }

  Mcal_SetSafetyENDINIT_Timed();


  Mcal_ResumeAllInterrupts();


  if (0U == CoreId)
  {
    if (0U == CpuCacheBypass)
    {
      Mcal_ResetENDINIT();
      Temp = (uint32)((__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "(0x920C)" : "=d" (__res) :: "memory"); __res; })));
      Temp &= ~( (uint32)0x00000002 );
      _dsync(); do { unsigned __newval = (unsigned) ((Temp)); __asm__ volatile ("mtcr LO:" "(0x920C)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
      Mcal_SetENDINIT();
    }
  }

  {if((Dummy) != 0U) { }}
  return Result;
}
# 2159 "../30_Bsw/MicroTestLib/Static/SriTst.c"
static Sl_TstRsltType SriTst_lEnablePspr0Mc
(
  void
)
{
  uint32 Status;
  uint32 Timeout;
  uint32 MemTestMask;
  Sl_TstRsltType Result = (0x4010aU);


  if (((uint32)3U) == (*(volatile Ifx_FLASH_PROCOND *)0xF8002030u).B.RAMIN)
  {
    MemTestMask = ( 0x00010000U );
  }
  else
  {
    MemTestMask = ( 0x00010000U ) | ( 0x00020000U );
  }







  (*(volatile Ifx_MTU_MEMTEST0 *)0xF0060010u).U |= (unsigned_int)MemTestMask;


  Timeout = 0U;
  do
  {
    Timeout++;
    Status = (uint32)((*(volatile Ifx_MTU_MEMSTAT0 *)0xF0060038u).U & MemTestMask);
  } while ((Timeout < ( (uint32)0x00010000U )) && (Status > 0U));


  if (((*(volatile Ifx_MTU_MEMSTAT0 *)0xF0060038u).U & MemTestMask) > 0U)
  {

    Result = (0x44018U);


    (*(volatile Ifx_MTU_MEMTEST0 *)0xF0060010u).U &= (unsigned_int)(~MemTestMask);
  }
  else
  {
    Result = (0x401ffU);
  }

  return Result;
}
# 2241 "../30_Bsw/MicroTestLib/Static/SriTst.c"
static Sl_TstRsltType SriTst_lDisablePspr0Mc
(
  void
)
{
  uint32 Status;
  uint32 Timeout;
  uint32 MemTestMask;
  Sl_TstRsltType Result = (0x4010aU);


  if (((uint32)3U) == (*(volatile Ifx_FLASH_PROCOND *)0xF8002030u).B.RAMIN)
  {
    MemTestMask = ( 0x00010000U );
  }
  else
  {
    MemTestMask = ( 0x00010000U ) | ( 0x00020000U );
  }


  (*(volatile Ifx_MTU_MEMTEST0 *)0xF0060010u).U &= (unsigned_int)(~MemTestMask);

  Timeout = 0U;
  do
  {
    Timeout++;
    Status = (uint32)((*(volatile Ifx_MTU_MEMSTAT0 *)0xF0060038u).U & MemTestMask);
  } while ((Timeout < ( (uint32)0x00010000U )) && (Status > 0U));


  if (((*(volatile Ifx_MTU_MEMSTAT0 *)0xF0060038u).U & MemTestMask) > 0U)
  {

    Result = (0x44018U);
  }
  else
  {
    Result = (0x401ffU);
  }

  return Result;
}
# 2311 "../30_Bsw/MicroTestLib/Static/SriTst.c"
static Sl_TstRsltType SriTst_lEnableMtuClock
(
  uint32* const MtuClcBackup
)
{
  Sl_TstRsltType Result = (0x44016U);
  uint32 Timeout;


  *MtuClcBackup = (uint32)((*(volatile Ifx_MTU_CLC *)0xF0060000u).U & ( 0x00000001U ));


  Mcal_ResetENDINIT();
  (*(volatile Ifx_MTU_CLC *)0xF0060000u).U &= ~( 0x00000001U );
  Mcal_SetENDINIT();
  Timeout = ( 0x100U );
  while((((*(volatile Ifx_MTU_CLC *)0xF0060000u).U & ( (uint32)0x00000002 )) != 0U) && (Timeout > 0U))
  {
    Timeout--;
  }
  if (((*(volatile Ifx_MTU_CLC *)0xF0060000u).U & ( (uint32)0x00000002 )) == 0U)
  {
    Result = (0x401ffU);
  }

  return Result;
}
# 2364 "../30_Bsw/MicroTestLib/Static/SriTst.c"
static Sl_TstRsltType SriTst_lDisableMtuClock
(
  void
)
{
  Sl_TstRsltType Result = (0x44016U);
  uint32 Timeout;


  Mcal_ResetENDINIT();
  (*(volatile Ifx_MTU_CLC *)0xF0060000u).U |= ( 0x00000001U );
  Mcal_SetENDINIT();
  Timeout = ( 0x100U );
  while((((*(volatile Ifx_MTU_CLC *)0xF0060000u).U & ( (uint32)0x00000002 )) == 0U) && (Timeout > 0U))
  {
    Timeout--;
  }
  if (((*(volatile Ifx_MTU_CLC *)0xF0060000u).U & ( (uint32)0x00000002 )) != 0U)
  {
    Result = (0x401ffU);
  }

  return Result;
}
# 2434 "../30_Bsw/MicroTestLib/Static/SriTst.c"
static Sl_TstRsltType SriTst_lSlaveAddrDecoderTst
(
  uint32* const TstSignature,
  uint32* const SlaveAddress,
  uint8 AlarmGroup,
  uint8 SMUAlarm
)
{

  Sl_TstRsltType Result = (0x4010aU);
  Std_ReturnType RetVal1 = 1U;
  Std_ReturnType RetVal2 = 1U;
  uint32 Timeout;
  uint32 AlarmStatus;
  uint32 EccInversion = 1U;
  uint8 LoopCnt = 0U;
  volatile uint32* PtrTestAddr32 = (volatile uint32*)(void *)SlaveAddress;
  volatile uint32 TestData = 0U;
  uint8 LoopBreak = 0x01U;
  Std_ReturnType Temp;
  uint32 ErrorInj;


  while( (LoopCnt < (uint8)( 8U )) && (LoopBreak != 0U))
  {

    Mcal_ResetENDINIT();


    Sri_ExpectedTrapClass = ( 0x04U );
    Sri_ExpectedTrapId = ( 0x02U );

    ErrorInj = ((uint32)( 0x80000000U ) | EccInversion);
    _dsync(); do { unsigned __newval = (unsigned) ((ErrorInj)); __asm__ volatile ("mtcr LO:" "(0x1030)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();


    TestData = *PtrTestAddr32;

    Mcal_SetENDINIT();


    AlarmStatus = 0U;
    Timeout = (2000U);


    while((0U == (AlarmStatus & ((uint32)1U << SMUAlarm))) && (Timeout > 0U))
    {
      Timeout = Timeout - 1U;

      Temp = Smu_GetAlarmStatus(AlarmGroup, &AlarmStatus);
      if (0U != Temp)
      {
        AlarmStatus = 0U;
        Timeout = 0U;
      }
    }



    if (0U == (AlarmStatus & ((uint32)1U << SMUAlarm)))
    {
      Result = (0x44011U);
      LoopBreak = 0x00U;
    }
    else
    {

      RetVal1 = Smu_ClearAlarmStatus(AlarmGroup, SMUAlarm);
      RetVal2 = Smu_ClearAlarmStatus(( (uint8)(3U) ),
                                     ( (uint8)(30U) ));
      if ((0U != RetVal1) || (RetVal2 != 0U))
      {
        Result = (0x4020fU);
        LoopBreak = 0x00U;
      }
      else
      {

        EccInversion <<= 1;
        *TstSignature = (uint32)(__crc32((unsigned_int)(*TstSignature),(unsigned_int)(EccInversion)));
      }
    }
    LoopCnt++;
  }

  if ((0x4010aU) == Result)
  {

    if (( 8U ) != Sri_DseTrapCount)
    {
      Result = (0x44014U);
    }
    else
    {

      Result = (0x401ffU);
    }
  }

  _dsync(); do { unsigned __newval = (unsigned) ((0x0U)); __asm__ volatile ("mtcr LO:" "(0x9214)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();


  Sri_DseTrapCount = 0U;
  {if((TestData) != 0U) { }}

  return Result;
}
# 2582 "../30_Bsw/MicroTestLib/Static/SriTst.c"
static Sl_TstRsltType SriTst_lSlaveAddrDecoderXbarTst
(
  uint32* const TstSignature
)
{

  Sl_TstRsltType Result = (0x4010aU);
  Std_ReturnType RetVal1 = 1U;
  Std_ReturnType RetVal2 = 1U;
  uint32 Timeout;
  uint32 AlarmStatus;
  uint32 EccInversion = 1U;
  uint8 LoopCnt = 0U;
  volatile uint32 TestData = 0U;
  uint8 LoopBreak = 0x01U;
  Std_ReturnType Temp;
  uint32 ErrorInj;

  while( (LoopCnt < (uint8)( 8U )) && (LoopBreak != 0U))
  {

    Mcal_ResetENDINIT();


    Sri_ExpectedTrapClass = ( 0x04U );
    Sri_ExpectedTrapId = ( 0x02U );

    ErrorInj = ((uint32)( 0x80000000U ) | EccInversion);
    _dsync(); do { unsigned __newval = (unsigned) ((ErrorInj)); __asm__ volatile ("mtcr LO:" "(0x1030)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();

    TestData = (*(volatile Ifx_XBAR_ID *)0xF8700408u).U;

    Mcal_SetENDINIT();


    AlarmStatus = 0U;
    Timeout = (2000U);


    while((0U == (AlarmStatus & ( (uint32)1U << ( (uint8)(21U) ) ))) &&
          (Timeout > 0U))
    {
      Timeout = Timeout - 1U;

      Temp = Smu_GetAlarmStatus(( (uint8)(2U) ), &AlarmStatus);
      if (0U != Temp)
      {
        AlarmStatus = 0U;
        Timeout = 0U;
      }
    }



    if (0U == (AlarmStatus & ( (uint32)1U << ( (uint8)(21U) ) )))
    {
      Result = (0x44011U);
      LoopBreak = 0x00U;
    }
    else
    {

      RetVal1 = Smu_ClearAlarmStatus(( (uint8)(2U) ),
                                     ( (uint8)(21U) ));
      RetVal2 = Smu_ClearAlarmStatus(( (uint8)(3U) ),
                                     ( (uint8)(30U) ));
      if ((0U != RetVal1) || (RetVal2 != 0U))
      {
        Result = (0x4020fU);
        LoopBreak = 0x00U;
      }
      else
      {

        EccInversion <<= 1;
        *TstSignature = (uint32)(__crc32((unsigned_int)(*TstSignature),(unsigned_int)(EccInversion)));
      }
    }
    LoopCnt++;
  }

  if ((0x4010aU) == Result)
  {

    if (( 8U ) != Sri_DseTrapCount)
    {
      Result = (0x44014U);
    }
    else
    {

      Result = (0x401ffU);
    }
  }


  Sri_DseTrapCount = 0U;
  {if((TestData) != 0U) { }}

  return Result;
}
# 2723 "../30_Bsw/MicroTestLib/Static/SriTst.c"
static Sl_TstRsltType SriTst_lSlaveDataDecoderTst
(
  uint32* const TstSignature,
  uint32* const SlaveAddress,
  uint8 AlarmGroup,
  uint8 SMUAlarm
)
{
  Sl_TstRsltType Result = (0x4010aU);
  uint32 Timeout;
  uint32 AlarmStatus;
  uint32 EccInversion = 1U;
  uint8 LoopCnt = 0U;
  volatile uint32* PtrTestAddr32 = (volatile uint32*)(void *)SlaveAddress;
  volatile uint32 TestData = 0U;
  uint32 TestBackup = *PtrTestAddr32;
  uint8 LoopBreak = 0x01U;
  Std_ReturnType Temp;
  uint32 ErrorInj;


  while((LoopCnt < (uint8)( 8U )) && (LoopBreak != 0U))
  {

    Mcal_ResetENDINIT();
    ErrorInj = ((uint32)( 0x80000100U ) | EccInversion);
    _dsync(); do { unsigned __newval = (unsigned) ((ErrorInj)); __asm__ volatile ("mtcr LO:" "(0x1030)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();


    *PtrTestAddr32 = TestData;

    Mcal_SetENDINIT();


    AlarmStatus = 0U;
    Timeout = (2000U);


    while ((0U == (AlarmStatus & ((uint32)1U << SMUAlarm))) &&
           (Timeout > 0U))
    {
      Timeout = Timeout - 1U;
      Temp = Smu_GetAlarmStatus(AlarmGroup, &AlarmStatus);
      if (0U != Temp)
      {
        AlarmStatus = 0U;
        Timeout = 0U;
      }
    }



    if (0U == (AlarmStatus & ((uint32)1U << SMUAlarm)))
    {
      Result = (0x44013U);
      LoopBreak = 0x00U;
    }
    else
    {

      Temp = Smu_ClearAlarmStatus(AlarmGroup, SMUAlarm);
      if (0U != Temp)
      {
        Result = (0x4020fU);
        LoopBreak = 0x00U;
      }
      else
      {

        EccInversion <<= 1U;
        *TstSignature = (uint32)(__crc32((unsigned_int)(*TstSignature),(unsigned_int)(EccInversion)));
      }
    }
    LoopCnt++;
  }


  *PtrTestAddr32 = TestBackup;


  if ((0x4010aU) == Result)
  {
    Result = (0x401ffU);
  }

  _dsync(); do { unsigned __newval = (unsigned) ((0x0U)); __asm__ volatile ("mtcr LO:" "(0x9024)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
  _dsync(); do { unsigned __newval = (unsigned) ((0x0U)); __asm__ volatile ("mtcr LO:" "(0x9214)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();

  return Result;
}
# 2850 "../30_Bsw/MicroTestLib/Static/SriTst.c"
static Sl_TstRsltType SriTst_lSlaveDataDecoderXbarTst
(
  uint32* const TstSignature
)
{
  Sl_TstRsltType Result = (0x4010aU);
  uint32 Timeout;
  uint32 AlarmStatus;
  uint32 EccInversion = 1U;
  uint8 LoopCnt = 0U;
  volatile uint32 TestData;
  uint8 LoopBreak = 0x01U;
  Std_ReturnType Temp;
  uint32 ErrorInj;







  TestData = (*(volatile Ifx_XBAR_IDINTEN *)0xF8700418u).U;


  while( (LoopCnt < (uint8)( 8U )) && (LoopBreak != 0U))
  {

    Mcal_ResetENDINIT();
    ErrorInj = ((uint32)( 0x80000100U ) | EccInversion);
    _dsync(); do { unsigned __newval = (unsigned) ((ErrorInj)); __asm__ volatile ("mtcr LO:" "(0x1030)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();

    (*(volatile Ifx_XBAR_IDINTEN *)0xF8700418u).U = TestData;

    Mcal_SetENDINIT();


    AlarmStatus = 0U;
    Timeout = (2000U);


    while ((0U == (AlarmStatus & ( (uint32)1U << ( (uint8)(22U) ) ))) &&
           (Timeout > 0U))
    {
      Timeout = Timeout - 1U;
      Temp = Smu_GetAlarmStatus(( (uint8)(2U) ), &AlarmStatus);
      if (0U != Temp)
      {
        AlarmStatus = 0U;
        Timeout = 0U;
      }
    }



    if (0U == (AlarmStatus & ( (uint32)1U << ( (uint8)(22U) ) )))
    {
      Result = (0x44013U);
      LoopBreak = 0x00U;
    }
    else
    {

      Temp = Smu_ClearAlarmStatus(( (uint8)(2U) ),
                                  ( (uint8)(22U) ));
      if (0U != Temp)
      {
        Result = (0x4020fU);
        LoopBreak = 0x00U;
      }
      else
      {

        EccInversion <<= 1U;
        *TstSignature = (uint32)(__crc32((unsigned_int)(*TstSignature),(unsigned_int)(EccInversion)));
      }
    }
    LoopCnt++;
  }


  if ((0x4010aU) == Result)
  {
    Result = (0x401ffU);
  }

  return Result;
}
# 2978 "../30_Bsw/MicroTestLib/Static/SriTst.c"
static Sl_TstRsltType SriTst_lMasterDataDecoderTst
(
  uint32* const TstSignature,
  uint32* const SlaveAddress,
  uint8 AlarmGroup,
  uint8 SMUAlarm
)
{
  Sl_TstRsltType Result = (0x4010aU);
  uint32 Timeout;
  uint32 AlarmStatus;
  uint32 EccInversion = 1U;
  uint8 LoopCnt = 0U;
  volatile uint32* PtrTestAddr32 = (volatile uint32*)(void *)SlaveAddress;
  volatile uint32 TestData = 0U;
  uint8 LoopBreak = 0x01U;
  Std_ReturnType Temp;
  uint32 ErrorInj;


  while ((LoopCnt < (uint8)( 8U )) && (LoopBreak != 0U))
  {



    Mcal_SuspendAllInterrupts();


    Mcal_ResetENDINIT();


    Sri_ExpectedTrapClass = ( 0x04U );
    Sri_ExpectedTrapId = ( 0x06U );

    ErrorInj = ((uint32)( 0x80000200U ) | EccInversion);
    _dsync(); do { unsigned __newval = (unsigned) ((ErrorInj)); __asm__ volatile ("mtcr LO:" "(0x1030)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();

    TestData = *PtrTestAddr32;

    Mcal_SetENDINIT();

    Mcal_ResumeAllInterrupts();


    AlarmStatus = 0U;
    Timeout = (2000U);


    while ((0U == (AlarmStatus & ((uint32)1U << SMUAlarm))) &&
           (Timeout > 0U))
    {
      Timeout = Timeout - 1U;
      Temp = Smu_GetAlarmStatus(AlarmGroup, &AlarmStatus);
      if (0U != Temp)
      {
        AlarmStatus = 0U;
        Timeout = 0U;
      }
    }



    if (0U == (AlarmStatus & ((uint32)1U << SMUAlarm)))
    {
      Result = (0x44012U);
      LoopBreak = 0x00U;
    }
    else
    {

      Temp = Smu_ClearAlarmStatus(AlarmGroup, SMUAlarm);
      if (0U != Temp)
      {
        Result = (0x4020fU);
        LoopBreak = 0x00U;
      }
      else
      {

        EccInversion <<= 1U;
        *TstSignature = (uint32)(__crc32((unsigned_int)(*TstSignature),(unsigned_int)(EccInversion)));
      }
    }
    LoopCnt++;
  }


  if ((0x4010aU) == Result)
  {
    if (( 8U ) == Sri_DietrTrapCount)
    {
      Result = (0x401ffU);
    }
    else
    {
      Result = (0x44019U);
    }
  }


  _dsync(); do { unsigned __newval = (unsigned) ((0x0)); __asm__ volatile ("mtcr LO:" "(0x9024)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();


  Sri_DietrTrapCount = 0x0U;
  {if((TestData) != 0U) { }}

  return Result;
}
# 3128 "../30_Bsw/MicroTestLib/Static/SriTst.c"
static Sl_TstRsltType SriTst_lMasterDataDecoderPMITst
(
  uint32* const TstSignature,
  uint32* const SlaveAddress
)
{
  Sl_TstRsltType Result = (0x4010aU);
  uint32 Timeout;
  uint32 AlarmStatus;
  uint32 EccInversion = 1U;
  uint8 LoopCnt = 0U;
  volatile uint16* PtrTestAddr16 = (volatile uint16*)(void *)SlaveAddress;
  uint32 TestBackup = *SlaveAddress;
  uint8 CoreId;
  uint8 LoopBreak = 0x01U;
  Std_ReturnType Temp;
  uint32 ErrorInj;


  CoreId = Mcal_GetCoreId();
# 3156 "../30_Bsw/MicroTestLib/Static/SriTst.c"
  PtrTestAddr16[0] = ( 0x9000U );
  PtrTestAddr16[1] = ( 0x9000U );


  while((LoopCnt < (uint8)( 8U )) && (LoopBreak != 0U))
  {



    Mcal_SuspendAllInterrupts();

    Mcal_ResetENDINIT();


    Sri_ExpectedTrapClass = ( 0x04U );
    Sri_ExpectedTrapId = ( 0x05U );





   _isync();
   __asm("mov.a %%a2, %0 \n": : "d"(SlaveAddress): "a2");
# 3187 "../30_Bsw/MicroTestLib/Static/SriTst.c"
    ErrorInj = ((uint32)( 0x80000200U ) | EccInversion);
    _dsync(); do { unsigned __newval = (unsigned) ((ErrorInj)); __asm__ volatile ("mtcr LO:" "(0x1030)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();





    __asm("calli %a2");







    Mcal_SetENDINIT();

    Mcal_ResumeAllInterrupts();


    AlarmStatus = 0U;
    Timeout = (2000U);


    while((0U == (AlarmStatus & ((uint32)1U << ( (uint8)(18U))))) &&
           (Timeout > 0U))
    {
      Timeout = Timeout - 1U;
      Temp = Smu_GetAlarmStatus(SriTst_CurrentCpuSriAlm[CoreId],
                                &AlarmStatus);
      if (0U != Temp)
      {
        AlarmStatus = 0U;
        Timeout = 0U;
      }
    }




    if (0U == (AlarmStatus & ((uint32)1U << ( (uint8)(18U)))))
    {
      Result = (0x44012U);
      LoopBreak = 0x00U;
    }
    else
    {

      Temp = Smu_ClearAlarmStatus(SriTst_CurrentCpuSriAlm[CoreId],
                                       ( (uint8)(18U)));
      if (0U != Temp)
      {
        Result = (0x4020fU);
        LoopBreak = 0x00U;
      }
      else
      {

        EccInversion <<= 1U;
        *TstSignature = (uint32)(__crc32((unsigned_int)(*TstSignature),(unsigned_int)(EccInversion)));
      }
    }
    LoopCnt++;
  }


  *SlaveAddress = TestBackup;


  if ((0x4010aU) == Result)
  {
    if (( 8U ) == Sri_PietrTrapCount)
    {
      Result = (0x401ffU);
    }
    else
    {
      Result = (0x44019U);
    }
  }


  Sri_PietrTrapCount = 0x0U;

  return Result;
}
# 3324 "../30_Bsw/MicroTestLib/Static/SriTst.c"
static Sl_TstRsltType SriTst_lCPUDecodersTst
(
  const Sl_ParamSetType ParamSetIndex,
  uint32* const TstSignature
)
{
  Sl_TstRsltType Result;
  Sl_TstRsltType TmpResult;
  uint8 CoreId;
  uint8 SriAlm;


  CoreId = Mcal_GetCoreId();

  SriAlm = SriTst_CurrentCpuSriAlm[CoreId];

  SriTst_lEnableOverlay(CoreId);
# 3349 "../30_Bsw/MicroTestLib/Static/SriTst.c"
  TmpResult = SriTst_lSlaveAddrDecoderTst(TstSignature,
                                   (uint32*)((uint32)(&dummy[0]) | 0x20000000u),
                                   SriAlm,
                                   ( (uint8)(18U))
                                         );
  if ((0x401ffU) == TmpResult)
  {





    TmpResult = SriTst_lSlaveDataDecoderTst(TstSignature,
                                   (uint32*)((uint32)(&dummy[0]) | 0x20000000u),
                                   SriAlm,
                                   ( (uint8)(19U))
                                           );
 ((*(volatile Ifx_SRC_SRCR *)0xF0038048u)).U = ((((*(volatile Ifx_SRC_SRCR *)0xF0038048u)).U & ((unsigned_int)0x293F1CFFU)) | (((unsigned_int)0x02000000U)));

    if ((0x401ffU) == TmpResult)
    {

      TmpResult = SriTst_lMasterDataDecoderTst(TstSignature,
                                   (uint32*)((uint32)(&dummy[0]) | 0x20000000u),
                                   SriAlm,
                                   ( (uint8)(19U))
                                              );
      if ((0x401ffU) == TmpResult)
      {
        SriTst_lDisableOverlay(CoreId);


        TmpResult = SriTst_lSlaveAddrDecoderTst(TstSignature,
                   SriTst_ConfigRoot[ParamSetIndex].SriTstPSPRTstAdr[CoreId],
                   SriAlm,
                   ( (uint8)(18U))
                                               );
        if ((0x401ffU) == TmpResult)
        {

          TmpResult = SriTst_lSlaveDataDecoderTst(TstSignature,
                      SriTst_ConfigRoot[ParamSetIndex].SriTstPSPRTstAdr[CoreId],
                      SriAlm,
                      ( (uint8)(18U))
                                                 );
          if ((0x401ffU) == TmpResult)
          {

            TmpResult = SriTst_lMasterDataDecoderPMITst(TstSignature,
                      SriTst_ConfigRoot[ParamSetIndex].SriTstDSPRTstAdr[CoreId]
                                                       );
            if ((0x401ffU) == TmpResult)
            {
              Result = TmpResult;
            }
            else
            {
              Result = (0x44102U);
            }
          }
          else
          {
            Result = (0x44101U);
          }
        }
        else
        {
          Result = (0x44103U);
        }
      }
      else
      {
        Result = (0x44105U);
        SriTst_lDisableOverlay(CoreId);
      }
    }
    else
    {
      Result = (0x44104U);
      SriTst_lDisableOverlay(CoreId);
    }

  }
  else
  {
    Result = (0x44106U);
    SriTst_lDisableOverlay(CoreId);
  }

  if ((0x4020fU) == TmpResult)
  {
    Result = TmpResult;
  }

  return Result;
}
# 3472 "../30_Bsw/MicroTestLib/Static/SriTst.c"
static void SriTst_lEnableOverlay
(
  uint8 CoreId
)
{

  volatile uint32 targetBaseAddress = (uint32)&dummy;


  targetBaseAddress = targetBaseAddress & 0x0FFFFFE0U;


  targetBaseAddress = targetBaseAddress >> 5;


  switch (CoreId)
  {
    case 0:
      ((*(volatile Ifx_OVC_BLK_RABR *)0xF880FB10u)).U = 0U;


      ((*(volatile Ifx_OVC_BLK_OMASK *)0xF880FB18u)).U = ( (uint32)0x0FFFFFE0U );

      ((*(volatile Ifx_OVC_BLK_OTAR *)0xF880FB14u)).B.TBASE = targetBaseAddress;
      Mcal_ResetSafetyENDINIT_Timed(((uint32)22960U));
      _dsync();
      (*(volatile Ifx_SCU_OVCENABLE *)0xF00361E0u).B.OVEN0 = 1U;

      ((*(volatile Ifx_OVC_BLK_RABR *)0xF880FB10u)).U = (((*(volatile Ifx_OVC_BLK_RABR *)0xF880FB10u)).U | 0x00000000U);

      ((*(volatile Ifx_OVC_BLK_RABR *)0xF880FB10u)).U = (((*(volatile Ifx_OVC_BLK_RABR *)0xF880FB10u)).U | 0x80000000U);
      Mcal_SetSafetyENDINIT_Timed();
      break;
# 3542 "../30_Bsw/MicroTestLib/Static/SriTst.c"
    default:


      break;
  }
}
# 3574 "../30_Bsw/MicroTestLib/Static/SriTst.c"
static void SriTst_lDisableOverlay
(
  uint8 CoreId
)
{
  Mcal_ResetSafetyENDINIT_Timed(((uint32)22960U));
  _dsync();


  switch (CoreId)
   {
     case 0:

       ((*(volatile Ifx_OVC_BLK_RABR *)0xF880FB10u)).U = 0x00000000U;
       (*(volatile Ifx_SCU_OVCENABLE *)0xF00361E0u).B.OVEN0 = 0U;
       break;
# 3605 "../30_Bsw/MicroTestLib/Static/SriTst.c"
     default:


       break;
   }

  _dsync();
  Mcal_SetSafetyENDINIT_Timed();
}
# 3660 "../30_Bsw/MicroTestLib/Static/SriTst.c"
static Sl_TstRsltType SriTst_lAdditionalDecodersTst
(
  const Sl_ParamSetType ParamSetIndex,
  uint32* const TstSignature
)
{
  Sl_TstRsltType Result = (0x4010aU);
  uint8 CoreId;


  CoreId = Mcal_GetCoreId();






  if (0x1U == SriTst_ConfigRoot[ParamSetIndex].LmuTstEN[CoreId])
  {
    Result = SriTst_lLMUDecoderTst(TstSignature,
        SriTst_ConfigRoot[ParamSetIndex].SriTstLMUTstAdr[CoreId]);
 ((*(volatile Ifx_SRC_SRCR *)0xF0038048u)).U = ((((*(volatile Ifx_SRC_SRCR *)0xF0038048u)).U & ((unsigned_int)0x293F1CFFU)) | (((unsigned_int)0x02000000U)));
  }





  if (0x1U == SriTst_ConfigRoot[ParamSetIndex].PmuDFlashTstEN[CoreId])
  {
    if (((0x4010aU) == Result) || ((0x401ffU) == Result))
    {
      Result = SriTst_lPMUDFlashDecoderTst(TstSignature,
          SriTst_ConfigRoot[ParamSetIndex].SriTstDFlashTstAdr[CoreId]);
   ((*(volatile Ifx_SRC_SRCR *)0xF0038048u)).U = ((((*(volatile Ifx_SRC_SRCR *)0xF0038048u)).U & ((unsigned_int)0x293F1CFFU)) | (((unsigned_int)0x02000000U)));
    }
  }





  if (0x1U == SriTst_ConfigRoot[ParamSetIndex].PmuPFlashTstEN[CoreId])
  {
    if (((0x4010aU) == Result) || ((0x401ffU) == Result))
    {
      Result = SriTst_lPMUPFlashDecoderTst(TstSignature,
              SriTst_ConfigRoot[ParamSetIndex].SriTstPFlashTstAdr[CoreId]);
   ((*(volatile Ifx_SRC_SRCR *)0xF0038048u)).U = ((((*(volatile Ifx_SRC_SRCR *)0xF0038048u)).U & ((unsigned_int)0x293F1CFFU)) | (((unsigned_int)0x02000000U)));
    }
  }


  if (0x1U == SriTst_ConfigRoot[ParamSetIndex].DmaTstEN[CoreId])
  {
    if (((0x4010aU) == Result) || ((0x401ffU) == Result))
    {
      Result = SriTst_lDMADecoderTst(ParamSetIndex, TstSignature);
    }
  }


  if (0x1U == SriTst_ConfigRoot[ParamSetIndex].XbarTstEN[CoreId])
  {
    if (((0x4010aU) == Result) || ((0x401ffU) == Result))
    {



      Result = SriTst_lSlaveAddrDecoderXbarTst(TstSignature);
   ((*(volatile Ifx_SRC_SRCR *)0xF0038048u)).U = ((((*(volatile Ifx_SRC_SRCR *)0xF0038048u)).U & ((unsigned_int)0x293F1CFFU)) | (((unsigned_int)0x02000000U)));

      if ((0x401ffU) == Result)
      {

        Result = SriTst_lSlaveDataDecoderXbarTst(TstSignature);
      }
    }
  }

  if((0x4010aU) == Result)
  {
    Result = (0x401ffU);
  }

  return Result;
}
# 3781 "../30_Bsw/MicroTestLib/Static/SriTst.c"
static Sl_TstRsltType SriTst_lLMUDecoderTst
(
  uint32* const TstSignature,
  uint32* const SriTstLMUTstAdr
)
{
  Sl_TstRsltType Result;


  Result = SriTst_lSlaveAddrDecoderTst(TstSignature,
                                       SriTstLMUTstAdr,
                                       ( (uint8)(2U) ),
                                       ( (uint8)(21U) ));
  if ((0x401ffU) == Result)
  {

    Result = SriTst_lSlaveDataDecoderTst(TstSignature,
                                         SriTstLMUTstAdr,
                                         ( (uint8)(2U) ),
                                         ( (uint8)(22U) ));
    if ((0x401ffU) != Result)
    {
      Result = (0x44207U);
    }
  }
  else
  {
    Result = (0x44208U);
  }





  Mcal_ResetENDINIT();

  (*(volatile Ifx_LMU_MEMCON *)0xF8700820u).U &= (unsigned_int) ( (uint32)0xFFFFFF3BU );

  Mcal_SetENDINIT();

  return Result;
}
# 3859 "../30_Bsw/MicroTestLib/Static/SriTst.c"
static Sl_TstRsltType SriTst_lPMUDFlashDecoderTst
(
  uint32* const TstSignature,
  uint32* const SriTstPMUDFlashTstAdr
)
{
  Sl_TstRsltType Result;


  Result = SriTst_lSlaveAddrDecoderTst(TstSignature,
                                       SriTstPMUDFlashTstAdr,
                                       ( (uint8)(2U) ),
                                       ( (uint8)(21U) ));
  if ((0x401ffU) == Result)
  {

    Result = SriTst_lSlaveDataDecoderTst(TstSignature,
                                         SriTstPMUDFlashTstAdr,
                                         ( (uint8)(2U) ),
                                         ( (uint8)(22U) ));
    if ((0x401ffU) != Result)
    {
      Result = (0x44309U);
    }
  }
  else
  {
    Result = (0x4430aU);
  }

  return Result;
}
# 3922 "../30_Bsw/MicroTestLib/Static/SriTst.c"
static Sl_TstRsltType SriTst_lPMUPFlashDecoderTst
(
  uint32* const TstSignature,
  uint32* const SriTstPMUPFlashTstAdr
)
{
  Sl_TstRsltType Result;


  Result = SriTst_lSlaveAddrDecoderTst(TstSignature,
                                       SriTstPMUPFlashTstAdr,
                                       ( (uint8)(2U) ),
                                       ( (uint8)(21U) ));
  if ((0x401ffU) != Result)
  {
    Result = (0x4430bU);
  }

  return Result;
}
# 3974 "../30_Bsw/MicroTestLib/Static/SriTst.c"
static Sl_TstRsltType SriTst_lDMADecoderTst
(
  const Sl_ParamSetType ParamSetIndex,
  uint32* const TstSignature
)
{
  Sl_TstRsltType Result;
  uint32 Timeout = (0x100U);
  uint32 DmaClcBackup = 0U;
  uint32 DmaChBackup;
  uint32 DmaChSourceBackup;
  uint32 DmaChDestBackup;
  uint32 DmaChRdataCrcBackup;
  uint32 DmaChSDaddrCrcBackup;
  uint8 CoreId;
  uint32 backup;
  volatile uint32 Dummy;


  CoreId = Mcal_GetCoreId();


  backup = *(SriTst_ConfigRoot[ParamSetIndex].SriTstDSPRTstAdr[CoreId] + 1U);


  if ((*(volatile Ifx_DMA_CLC *)0xF0010000u).B.DISS != 0U)
  {

    DmaClcBackup = (*(volatile Ifx_DMA_CLC *)0xF0010000u).U;

    Mcal_ResetENDINIT();

    (*(volatile Ifx_DMA_CLC *)0xF0010000u).B.DISR = 0x0U;
    Mcal_SetENDINIT();
    do
    {
      Timeout = Timeout - 1U;

    }
    while (((*(volatile Ifx_DMA_CLC *)0xF0010000u).B.DISS != 0U) && (0U < Timeout));
  }


  if((*(volatile Ifx_DMA_CLC *)0xF0010000u).B.DISS != 0U)
  {
    Result = (0x44017U);
  }
  else
  {

    DmaChBackup = (((*(volatile Ifx_DMA_CH_CHCFGR *)0xF0012014u))).U;
    DmaChSourceBackup = (((*(volatile Ifx_DMA_CH_SADR *)0xF0012008u))).U;
    DmaChDestBackup = (((*(volatile Ifx_DMA_CH_DADR *)0xF001200Cu))).U;
 DmaChRdataCrcBackup = (((*(volatile Ifx_DMA_CH_RDCRCR *)0xF0012000u))).U;
 DmaChSDaddrCrcBackup = (((*(volatile Ifx_DMA_CH_SDCRCR *)0xF0012004u))).U;


    (((*(volatile Ifx_DMA_CH_CHCFGR *)0xF0012014u))).B.TREL = 0x8U;
    (((*(volatile Ifx_DMA_CH_CHCFGR *)0xF0012014u))).B.BLKM = 0x0U;
    (((*(volatile Ifx_DMA_CH_CHCFGR *)0xF0012014u))).B.RROAT = 0x0U;
    (((*(volatile Ifx_DMA_CH_CHCFGR *)0xF0012014u))).B.CHMODE = 0x0U;
    (((*(volatile Ifx_DMA_CH_CHCFGR *)0xF0012014u))).B.CHDW = 0x2U;
    (((*(volatile Ifx_DMA_CH_CHCFGR *)0xF0012014u))).B.PATSEL = 0x0U;


    Result = SriTst_lDoDMADecoderTst(ParamSetIndex, TstSignature);


    (((*(volatile Ifx_DMA_CH_CHCFGR *)0xF0012014u))).U = DmaChBackup;
    (((*(volatile Ifx_DMA_CH_SADR *)0xF0012008u))).U = DmaChSourceBackup;
    (((*(volatile Ifx_DMA_CH_DADR *)0xF001200Cu))).U = DmaChDestBackup;
 (((*(volatile Ifx_DMA_CH_RDCRCR *)0xF0012000u))).U = DmaChRdataCrcBackup;
    (((*(volatile Ifx_DMA_CH_SDCRCR *)0xF0012004u))).U = DmaChSDaddrCrcBackup;
    (((*(volatile Ifx_DMA_CH_CHCSR *)0xF001201Cu))).U |= ((unsigned_int)0x04000000U);

    *(SriTst_ConfigRoot[ParamSetIndex].SriTstDSPRTstAdr[CoreId] + 1U) = backup;


    if (0U != DmaClcBackup)
    {
      Mcal_ResetENDINIT();
      (*(volatile Ifx_DMA_CLC *)0xF0010000u).U = DmaClcBackup;
      Mcal_SetENDINIT();


      Dummy = (*(volatile Ifx_DMA_CLC *)0xF0010000u).U;
      {if((Dummy) != 0U) { }}
    }


    if ((0x401ffU) != Result)
    {
      Result = (0x4440cU);
    }
  }

  return Result;
}
# 4111 "../30_Bsw/MicroTestLib/Static/SriTst.c"
static Sl_TstRsltType SriTst_lDoDMADecoderTst
(
  const Sl_ParamSetType ParamSetIndex,
  uint32* const TstSignature
)
{
  Sl_TstRsltType Result = (0x4010aU);
  uint32 Timeout;
  uint32 AlarmStatus;
  uint32 EccInversion = 1U;
  uint8 LoopCnt = 0U;
  uint8 CoreId;
  uint8 LoopBreak = 0x01U;
  Std_ReturnType Temp;
  uint32 ErrorInj;


  CoreId = Mcal_GetCoreId();


  while((LoopCnt < (uint8)( 8U )) && (LoopBreak != 0U))
  {

    (((*(volatile Ifx_DMA_CH_SADR *)0xF0012008u))).U =
      (uint32)SriTst_ConfigRoot[ParamSetIndex].SriTstDSPRTstAdr[CoreId];


    (((*(volatile Ifx_DMA_CH_DADR *)0xF001200Cu))).U =
      (unsigned_int)SriTst_ConfigRoot[ParamSetIndex].SriTstDSPRTstAdr[CoreId] +
      (unsigned_int)4U;




    Mcal_SuspendAllInterrupts();

    Mcal_ResetENDINIT();
    ErrorInj = ((uint32)( 0x80000200U ) | EccInversion);
    _dsync(); do { unsigned __newval = (unsigned) ((ErrorInj)); __asm__ volatile ("mtcr LO:" "(0x1030)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();

    (((*(volatile Ifx_DMA_CH_CHCSR *)0xF001201Cu))).B.SCH = 0x1U;
    __asm("nop");
    __asm("nop");
     Mcal_SetENDINIT();

    Mcal_ResumeAllInterrupts();


    AlarmStatus = 0U;
    Timeout = (2000U);


    while ((0U == (AlarmStatus & ( (uint32)1U << ( (uint8)(23U) ) ))) &&
           (Timeout > 0U))
    {
      Timeout = Timeout - 1U;
      if (0U != Smu_GetAlarmStatus(( (uint8)(2U) ), &AlarmStatus))
      {
        AlarmStatus = 0U;
        Timeout = 0U;
      }

    }



    if (0U == (AlarmStatus & ( (uint32)1U << ( (uint8)(23U) ) )))
    {
      Result = (0x44013U);
      LoopBreak = 0x00U;
    }
    else
    {

      Temp = Smu_ClearAlarmStatus(( (uint8)(2U) ),
                                  ( (uint8)(23U) ));
      if (0U != Temp)
      {
        Result = (0x4020fU);
        LoopBreak = 0x00U;
      }
      else
      {

        EccInversion <<= 1U;
        *TstSignature = (uint32)(__crc32((unsigned_int)(*TstSignature),(unsigned_int)(EccInversion)));
      }
    }
    LoopCnt++;
  }


  if ((0x4010aU) == Result)
  {
    Result = (0x401ffU);
  }

  return Result;
}
# 4248 "../30_Bsw/MicroTestLib/Static/SriTst.c"
static Sl_TstRsltType SriTst_lUser0AccTst
(
  uint32* const TstSignature
)
{
  uint32 Psw;
  volatile uint32 Flash0Fcon = 0U;
  Sl_TstRsltType Result;




  Psw = (uint32)((__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "(0xFE04)" : "=d" (__res) :: "memory"); __res; })));
  Psw &= ~(( (uint32)0x00000C00 ));
  Psw |= ( (uint32)0x00000000 );
  _dsync(); do { unsigned __newval = (unsigned) ((Psw)); __asm__ volatile ("mtcr LO:" "(0xFE04)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();

  {if((Flash0Fcon) != 0U) { }}


  Sri_ExpectedTrapClass = ( 0x01U );
  Sri_ExpectedTrapId = ( 0x05U );


  Flash0Fcon = (*(volatile Ifx_FLASH_FCON *)0xF8002014u).U;
  __asm("nop");
  __asm("nop");


  if (1U != Sri_MppTrapCount)
  {
    Result = (0x44010U);
  }
  else
  {
    Result = (0x401ffU);
  }


  *TstSignature = (uint32)(__crc32((unsigned_int)(*TstSignature),(unsigned_int)((uint32)Sri_MppTrapCount)));


  Sri_MppTrapCount = 0U;

  return Result;
}
# 4331 "../30_Bsw/MicroTestLib/Static/SriTst.c"
static Sl_TstRsltType SriTst_lUser1AccTst
(
  uint32* const TstSignature
)
{
  uint32 Psw;
  volatile uint32 Flash0Fcon;
  Sl_TstRsltType Result;




  Psw = (uint32)((__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "(0xFE04)" : "=d" (__res) :: "memory"); __res; })));
  Psw &= ~(( (uint32)0x00000C00 ));
  Psw |= ( (uint32)0x00000400 );
  _dsync(); do { unsigned __newval = (unsigned) ((Psw)); __asm__ volatile ("mtcr LO:" "(0xFE04)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();


  Sri_ExpectedTrapClass = ( 0x04U );
  Sri_ExpectedTrapId = ( 0x03U );




  Flash0Fcon = (*(volatile Ifx_FLASH_FCON *)0xF8002014u).U;
  Mcal_ResetENDINIT();
  (*(volatile Ifx_FLASH_FCON *)0xF8002014u).U = Flash0Fcon;
  Mcal_SetENDINIT();


  if (1U != Sri_DaeTrapCount)
  {
    Result = (0x4400fU);
  }
  else
  {
    Result = (0x401ffU);
  }


  *TstSignature = (uint32)(__crc32((unsigned_int)(*TstSignature),(unsigned_int)((uint32)Sri_DaeTrapCount)));


  Sri_DaeTrapCount = 0U;

  return Result;
}
# 4410 "../30_Bsw/MicroTestLib/Static/SriTst.c"
static Sl_TstRsltType SriTst_lUnmappedAdrTst
(
  uint32* const TstSignature
)
{
  volatile uint32* PtrTestAddr32 = (volatile uint32*)( 0xF8000400U );
  volatile uint32 TestData = 0U;
  Sl_TstRsltType Result = (0x4010aU);


  Sri_ExpectedTrapClass = ( 0x04U );
  Sri_ExpectedTrapId = ( 0x02U );


  TestData = *PtrTestAddr32;


  *TstSignature = (uint32)(__crc32((unsigned_int)(*TstSignature),(unsigned_int)((uint32)Sri_DseTrapCount)));


  if (1U != Sri_DseTrapCount)
  {
    Result = (0x4400eU);
  }
  else
  {
    Result = (0x401ffU);
  }


  Sri_DseTrapCount = 0U;
  {if((TestData) != 0U) { }}

  return Result;
}
# 4482 "../30_Bsw/MicroTestLib/Static/SriTst.c"
static Sl_TstRsltType SriTst_lUnsupportedOCTst
(
  uint32* const TstSignature
)
{
  volatile uint8* PtrTestAddr8;
  volatile uint8 TestData = 0U;
  Sl_TstRsltType Result = (0x4010aU);


  Sri_ExpectedTrapClass = ( 0x04U );
  Sri_ExpectedTrapId = ( 0x02U );





  PtrTestAddr8 = (volatile uint8*)(void *)&(*(volatile Ifx_CPU_SPROT_RGN_LA *)0xF880E000u);
  TestData = *PtrTestAddr8;


  *TstSignature = (uint32)(__crc32((unsigned_int)(*TstSignature),(unsigned_int)((uint32)Sri_DseTrapCount)));


  if (1U != Sri_DseTrapCount)
  {
    Result = (0x4400dU);
  }
  else
  {
    Result = (0x401ffU);
  }


  Sri_DseTrapCount = 0U;
  {if((TestData) != 0U) { }}

  return Result;
}


# 1 "../30_Bsw/STL_common/Ifx_MemMap.h" 1
# 2713 "../30_Bsw/STL_common/Ifx_MemMap.h"
#pragma GCC reset_options
#pragma section
# 4524 "../30_Bsw/MicroTestLib/Static/SriTst.c" 2
