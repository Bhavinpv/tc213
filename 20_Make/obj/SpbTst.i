# 1 "../30_Bsw/MicroTestLib/Static/SpbTst.c"
# 1 "S:\\20_Make//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "../30_Bsw/MicroTestLib/Static/SpbTst.c"
# 38 "../30_Bsw/MicroTestLib/Static/SpbTst.c"
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
# 39 "../30_Bsw/MicroTestLib/Static/SpbTst.c" 2
# 1 "../30_Bsw/MicroTestLib/Static/SpbTst.h" 1
# 39 "../30_Bsw/MicroTestLib/Static/SpbTst.h"
# 1 "../30_Bsw/Common/Platform_Types.h" 1
# 40 "../30_Bsw/MicroTestLib/Static/SpbTst.h" 2
# 1 "../30_Bsw/STL_common/Sl_Timeout.h" 1
# 41 "../30_Bsw/MicroTestLib/Static/SpbTst.h" 2
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
# 42 "../30_Bsw/MicroTestLib/Static/SpbTst.h" 2
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
# 43 "../30_Bsw/MicroTestLib/Static/SpbTst.h" 2
# 1 "../30_Bsw/MicroTestLib/Config/SpbTst_Cfg.h" 1
# 44 "../30_Bsw/MicroTestLib/Static/SpbTst.h" 2
# 53 "../30_Bsw/MicroTestLib/Static/SpbTst.h"
typedef volatile unsigned_int *SpbTst_AccEnType[4];



typedef struct SpbTst_ConfigType
{
   const SpbTst_AccEnType * SpbPeripheralCfgPtr;
   uint8 SpbCount;
   const uint32 *SmuAlarm;
}SpbTst_ConfigType;






typedef struct SpbRegAccProtTst_BackupDataType
{

  Smu_AlarmActionType AlmActionBUSriBusError;

  Smu_AlarmActionType AlmActionBUSpbBusError;

  Smu_AlarmActionType AlmActionBUSpbAccProtEnbError;
  uint32 PeripheralClcBU;
  uint32 PeripheralAccen0BU;
  uint32 PeripheralKernelBU;
  uint32 PswBU;
}SpbRegAccProtTst_BackupDataType;





typedef struct SpbTimeoutTst_BackupDataType
{

  Smu_AlarmActionType AlmActionBUSpbBusError;

  uint32 MtuClcBU;
  uint32 SbcuEconBU;
  uint32 SbcuEaddBU;
  uint32 SbcuEdatBU;
  uint32 PswBU;
}SpbTimeoutTst_BackupDataType;

# 1 "../30_Bsw/STL_common/Ifx_MemMap.h" 1
# 2426 "../30_Bsw/STL_common/Ifx_MemMap.h"
#pragma section ".rodata.CONFIGURATION_LT" a
# 100 "../30_Bsw/MicroTestLib/Static/SpbTst.h" 2
extern const SpbTst_ConfigType SpbTst_ConfigRoot[( 1U )];

# 1 "../30_Bsw/STL_common/Ifx_MemMap.h" 1
# 2437 "../30_Bsw/STL_common/Ifx_MemMap.h"
#pragma section
# 103 "../30_Bsw/MicroTestLib/Static/SpbTst.h" 2
# 111 "../30_Bsw/MicroTestLib/Static/SpbTst.h"
# 1 "../30_Bsw/STL_common/Ifx_MemMap.h" 1
# 2642 "../30_Bsw/STL_common/Ifx_MemMap.h"
#pragma section ".text.STL_ASIL_CODE" ax 4
# 112 "../30_Bsw/MicroTestLib/Static/SpbTst.h" 2
# 190 "../30_Bsw/MicroTestLib/Static/SpbTst.h"
extern Sl_TstRsltType SpbTst_PeripheralRegAccProtTst
(
 const Sl_ParamSetType ParamSetIndex,
 const uint8 TstSeed,
 uint32* const TstSignature
);
# 266 "../30_Bsw/MicroTestLib/Static/SpbTst.h"
extern Sl_TstRsltType SpbTst_TimeoutTst
(
 const Sl_ParamSetType ParamSetIndex,
 const uint8 TstSeed,
 uint32* const TstSignature
);

# 1 "../30_Bsw/STL_common/Ifx_MemMap.h" 1
# 2654 "../30_Bsw/STL_common/Ifx_MemMap.h"
#pragma section
# 274 "../30_Bsw/MicroTestLib/Static/SpbTst.h" 2
# 40 "../30_Bsw/MicroTestLib/Static/SpbTst.c" 2
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
# 41 "../30_Bsw/MicroTestLib/Static/SpbTst.c" 2
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
# 42 "../30_Bsw/MicroTestLib/Static/SpbTst.c" 2
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
# 43 "../30_Bsw/MicroTestLib/Static/SpbTst.c" 2
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
# 44 "../30_Bsw/MicroTestLib/Static/SpbTst.c" 2
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
# 45 "../30_Bsw/MicroTestLib/Static/SpbTst.c" 2

# 1 "../30_Bsw/Common/TC21x/IfxInt_reg.h" 1
# 36 "../30_Bsw/Common/TC21x/IfxInt_reg.h"
# 1 "../30_Bsw/Common/TC21x/IfxInt_regdef.h" 1
# 45 "../30_Bsw/Common/TC21x/IfxInt_regdef.h"
typedef struct _Ifx_INT_ACCEN00_Bits
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
} Ifx_INT_ACCEN00_Bits;


typedef struct _Ifx_INT_ACCEN01_Bits
{
    unsigned int reserved_0 : 32;
} Ifx_INT_ACCEN01_Bits;


typedef struct _Ifx_INT_ACCEN10_Bits
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
} Ifx_INT_ACCEN10_Bits;


typedef struct _Ifx_INT_ACCEN11_Bits
{
    unsigned int reserved_0 : 32;
} Ifx_INT_ACCEN11_Bits;


typedef struct _Ifx_INT_ICU_ECR_Bits
{
    unsigned int PN : 8;
    unsigned int reserved_8 : 2;
    unsigned int ECC : 6;
    unsigned int ID : 10;
    unsigned int reserved_26 : 4;
    unsigned int EOV : 1;
    unsigned int STAT : 1;
} Ifx_INT_ICU_ECR_Bits;


typedef struct _Ifx_INT_ICU_LASR_Bits
{
    unsigned int PN : 8;
    unsigned int reserved_8 : 2;
    unsigned int ECC : 6;
    unsigned int ID : 10;
    unsigned int reserved_26 : 6;
} Ifx_INT_ICU_LASR_Bits;


typedef struct _Ifx_INT_ICU_LWSR_Bits
{
    unsigned int PN : 8;
    unsigned int reserved_8 : 2;
    unsigned int ECC : 6;
    unsigned int ID : 10;
    unsigned int reserved_26 : 5;
    unsigned int STAT : 1;
} Ifx_INT_ICU_LWSR_Bits;


typedef struct _Ifx_INT_ID_Bits
{
    unsigned int MODREV : 8;
    unsigned int MODTYPE : 8;
    unsigned int MODNUMBER : 16;
} Ifx_INT_ID_Bits;


typedef struct _Ifx_INT_OIT_Bits
{
    unsigned int TOS0 : 2;
    unsigned int reserved_2 : 5;
    unsigned int OE0 : 1;
    unsigned int TOS1 : 2;
    unsigned int reserved_10 : 5;
    unsigned int OE1 : 1;
    unsigned int reserved_16 : 16;
} Ifx_INT_OIT_Bits;


typedef struct _Ifx_INT_OIXMS_Bits
{
    unsigned int MIRQ : 10;
    unsigned int reserved_10 : 22;
} Ifx_INT_OIXMS_Bits;


typedef struct _Ifx_INT_OIXS0_Bits
{
    unsigned int IRQ0 : 10;
    unsigned int reserved_10 : 6;
    unsigned int IRQ1 : 10;
    unsigned int reserved_26 : 6;
} Ifx_INT_OIXS0_Bits;


typedef struct _Ifx_INT_OIXS1_Bits
{
    unsigned int IRQ2 : 10;
    unsigned int reserved_10 : 6;
    unsigned int IRQ3 : 10;
    unsigned int reserved_26 : 6;
} Ifx_INT_OIXS1_Bits;


typedef struct _Ifx_INT_OIXTS_Bits
{
    unsigned int TGS : 2;
    unsigned int reserved_2 : 6;
    unsigned int OBS : 2;
    unsigned int reserved_10 : 22;
} Ifx_INT_OIXTS_Bits;


typedef struct _Ifx_INT_OMISN_Bits
{
    unsigned int OTGB0 : 16;
    unsigned int OTGB1 : 16;
} Ifx_INT_OMISN_Bits;


typedef struct _Ifx_INT_OMISP_Bits
{
    unsigned int OTGB0 : 16;
    unsigned int OTGB1 : 16;
} Ifx_INT_OMISP_Bits;


typedef struct _Ifx_INT_OOBS_Bits
{
    unsigned int OTGB0 : 16;
    unsigned int OTGB1 : 16;
} Ifx_INT_OOBS_Bits;


typedef struct _Ifx_INT_OSSIC_Bits
{
    unsigned int TGS : 2;
    unsigned int TGB : 1;
    unsigned int reserved_3 : 29;
} Ifx_INT_OSSIC_Bits;


typedef struct _Ifx_INT_SRB0_Bits
{
    unsigned int TRIG0 : 1;
    unsigned int TRIG1 : 1;
    unsigned int TRIG2 : 1;
    unsigned int TRIG3 : 1;
    unsigned int reserved_4 : 28;
} Ifx_INT_SRB0_Bits;







typedef union
{
    unsigned int U;
    signed int I;
    Ifx_INT_ACCEN00_Bits B;
} Ifx_INT_ACCEN00;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_INT_ACCEN01_Bits B;
} Ifx_INT_ACCEN01;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_INT_ACCEN10_Bits B;
} Ifx_INT_ACCEN10;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_INT_ACCEN11_Bits B;
} Ifx_INT_ACCEN11;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_INT_ICU_ECR_Bits B;
} Ifx_INT_ICU_ECR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_INT_ICU_LASR_Bits B;
} Ifx_INT_ICU_LASR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_INT_ICU_LWSR_Bits B;
} Ifx_INT_ICU_LWSR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_INT_ID_Bits B;
} Ifx_INT_ID;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_INT_OIT_Bits B;
} Ifx_INT_OIT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_INT_OIXMS_Bits B;
} Ifx_INT_OIXMS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_INT_OIXS0_Bits B;
} Ifx_INT_OIXS0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_INT_OIXS1_Bits B;
} Ifx_INT_OIXS1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_INT_OIXTS_Bits B;
} Ifx_INT_OIXTS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_INT_OMISN_Bits B;
} Ifx_INT_OMISN;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_INT_OMISP_Bits B;
} Ifx_INT_OMISP;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_INT_OOBS_Bits B;
} Ifx_INT_OOBS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_INT_OSSIC_Bits B;
} Ifx_INT_OSSIC;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_INT_SRB0_Bits B;
} Ifx_INT_SRB0;
# 414 "../30_Bsw/Common/TC21x/IfxInt_regdef.h"
typedef volatile struct _Ifx_INT_ICU
{
    Ifx_INT_ICU_LWSR LWSR;
    Ifx_INT_ICU_LASR LASR;
    Ifx_INT_ICU_ECR ECR;
    unsigned char reserved_C[4];
} Ifx_INT_ICU;
# 433 "../30_Bsw/Common/TC21x/IfxInt_regdef.h"
typedef volatile struct _Ifx_INT
{
    unsigned char reserved_0[8];
    Ifx_INT_ID ID;
    unsigned char reserved_C[4];
    Ifx_INT_SRB0 SRB0;
    unsigned char reserved_14[108];
    Ifx_INT_OOBS OOBS;
    Ifx_INT_OSSIC OSSIC;
    Ifx_INT_OIXTS OIXTS;
    Ifx_INT_OIXMS OIXMS;
    Ifx_INT_OIXS0 OIXS0;
    Ifx_INT_OIXS1 OIXS1;
    unsigned char reserved_98[8];
    Ifx_INT_OIT OIT;
    Ifx_INT_OMISP OMISP;
    Ifx_INT_OMISN OMISN;
    unsigned char reserved_AC[68];
    Ifx_INT_ACCEN01 ACCEN01;
    Ifx_INT_ACCEN00 ACCEN00;
    Ifx_INT_ACCEN11 ACCEN11;
    Ifx_INT_ACCEN10 ACCEN10;
    Ifx_INT_ICU CH[2];
    unsigned char reserved_120[3808];
} Ifx_INT;
# 37 "../30_Bsw/Common/TC21x/IfxInt_reg.h" 2
# 47 "../30_Bsw/MicroTestLib/Static/SpbTst.c" 2
# 1 "../30_Bsw/Common/TC21x/IfxCpu_bf.h" 1
# 48 "../30_Bsw/MicroTestLib/Static/SpbTst.c" 2
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
# 49 "../30_Bsw/MicroTestLib/Static/SpbTst.c" 2
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
# 50 "../30_Bsw/MicroTestLib/Static/SpbTst.c" 2
# 178 "../30_Bsw/MicroTestLib/Static/SpbTst.c"
# 1 "../30_Bsw/STL_common/Ifx_MemMap.h" 1
# 3374 "../30_Bsw/STL_common/Ifx_MemMap.h"
#pragma section ".data.STL_RAM_32BIT" aw 4
# 179 "../30_Bsw/MicroTestLib/Static/SpbTst.c" 2

static volatile uint32 SpbRegAccProtTst_DaeTrapCount;
static volatile uint32 SpbRegAccProtTst_ExpectedTrap;
static volatile uint32 SpbTimeoutTst_DseTrapCount;
static volatile uint32 SpbTimeoutTst_ExpectedTrap;


# 1 "../30_Bsw/STL_common/Ifx_MemMap.h" 1
# 3388 "../30_Bsw/STL_common/Ifx_MemMap.h"
#pragma section
# 187 "../30_Bsw/MicroTestLib/Static/SpbTst.c" 2

# 1 "../30_Bsw/STL_common/Ifx_MemMap.h" 1
# 2642 "../30_Bsw/STL_common/Ifx_MemMap.h"
#pragma section ".text.STL_ASIL_CODE" ax 4
# 189 "../30_Bsw/MicroTestLib/Static/SpbTst.c" 2
# 197 "../30_Bsw/MicroTestLib/Static/SpbTst.c"
static Sl_TstRsltType SpbTst_lInit
(
  SpbRegAccProtTst_BackupDataType* const SpbRegAccProt_BackupData,
  const Sl_ParamSetType ParamSetIndex,
  uint8 PeriCount
);

static Sl_TstRsltType SpbTst_lRestore
(
  const SpbRegAccProtTst_BackupDataType* SpbRegAccProt_BackupData,
  const Sl_ParamSetType ParamSetIndex,
  uint8 PeriCount
);

static Sl_TstRsltType SpbTst_lDenyAccTst
(
  const Sl_ParamSetType ParamSetIndex,
  uint32* const TstSignature,
  uint8 PeriCount,
  boolean CpuPsw
);

static Sl_TstRsltType SpbTst_lWaitForSmuAlarm
(
  const Sl_ParamSetType ParamSetIndex,
  uint8 PeriCount
);

static Sl_TstRsltType SpbTst_lTimeoutInit
(
  SpbTimeoutTst_BackupDataType* const SpbTimeoutTst_BackupData
);

static Sl_TstRsltType SpbTst_lTimeoutExecute(void);

static Sl_TstRsltType SpbTst_lTimeoutRestore
(
  const SpbTimeoutTst_BackupDataType* SpbTimeoutTst_BackupData
);

static boolean SpbTst_ProtectionTrapHandler(const uint32 TrapId);
# 319 "../30_Bsw/MicroTestLib/Static/SpbTst.c"
Sl_TstRsltType SpbTst_TimeoutTst
(
 const Sl_ParamSetType ParamSetIndex,
 const uint8 TstSeed,
 uint32* const TstSignature
)
{
  Sl_TstRsltType Result = (Sl_TstRsltType)(0x1d010aU);
  Sl_TstRsltType TmpRes1 = (Sl_TstRsltType)(0x1d010aU);
  Sl_TstRsltType TmpRes2 = (Sl_TstRsltType)(0x1d010aU);

  SpbTimeoutTst_BackupDataType SpbTimeoutTst_BackupData;

  {if((ParamSetIndex) != 0U) { }}


  *TstSignature = (uint32)(__crc32((unsigned_int)(TEST_ID_SPB_TST_TIMEOUT),(unsigned_int)(TstSeed)));


  if(((Smu_StateType)1) == Smu_GetSmuState())
  {

    TmpRes1 = SpbTst_lTimeoutInit(&SpbTimeoutTst_BackupData);

    if(TmpRes1 == (Sl_TstRsltType)(0x1d01ffU))
    {

      TmpRes1 = SpbTst_lTimeoutExecute();
    }

    TmpRes2 = SpbTst_lTimeoutRestore(&SpbTimeoutTst_BackupData);

    if(TmpRes1 != (Sl_TstRsltType)(0x1d01ffU))
    {
      Result = TmpRes1;
    }
    else
    {
      Result = TmpRes2;
    }

  }
  else
  {
      Result = (Sl_TstRsltType)(0x1d020cU);
  }


  *TstSignature = (uint32)(__crc32((unsigned_int)(*TstSignature),(unsigned_int)(Result)));

  return Result;

}
# 418 "../30_Bsw/MicroTestLib/Static/SpbTst.c"
static Sl_TstRsltType SpbTst_lTimeoutInit
(
  SpbTimeoutTst_BackupDataType* const SpbTimeoutTst_BackupData
)
{

  Sl_TstRsltType Result = (0x1d010aU);
  uint32 AlmStatus = 0U;
  Smu_FSPActionType FspActionDummy = 0U;

  SpbTimeoutTst_ExpectedTrap = (0U);


  SpbTimeoutTst_BackupData->MtuClcBU = (uint32)(*(volatile Ifx_MTU_CLC *)0xF0060000u).U;


  SpbTimeoutTst_BackupData->SbcuEconBU = (uint32)((*(volatile Ifx_SBCU_ECON *)0xF0030020u)).U;


  SpbTimeoutTst_BackupData->SbcuEaddBU = (uint32)((*(volatile Ifx_SBCU_EADD *)0xF0030024u)).U;


  SpbTimeoutTst_BackupData->SbcuEdatBU = (uint32)((*(volatile Ifx_SBCU_EDAT *)0xF0030028u)).U;


  SpbTimeoutTst_BackupData->PswBU= (uint32)((__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "(0xFE04)" : "=d" (__res) :: "memory"); __res; })));


  if(0U != (Smu_GetAlarmAction(( (uint8)(3U) ), (31U),
           &SpbTimeoutTst_BackupData->AlmActionBUSpbBusError, &FspActionDummy)))
  {
    Result = (0x1d0210U);

    SpbTimeoutTst_BackupData->AlmActionBUSpbBusError = ((Smu_AlarmActionType)0xFFU);
  }


  else if(0U != (Smu_GetAlarmStatus(( (uint8)(3U) ), &AlmStatus)))
  {
    Result = (0x1d020eU);
  }


  else if(0U != (AlmStatus & ( (uint32)1U << (31U) )))
  {
    Result = (0x1d020dU);
  }

  else
  {


    if(0U != Smu_SetAlarmAction(( (uint8)(3U) ), (31U),
                                  ((Smu_AlarmActionType)0x00U)))
    {
      Result = (0x1d0211U);
    }
    else
    {
      Result = TRAP_RegisterTrapHandler(( 0x04U ),
                                        &SpbTst_ProtectionTrapHandler);
      if(( (TRAP_ErrorType)0x00000000) == Result)
      {
        SpbTimeoutTst_DseTrapCount = 0x0U;
        Result = (0x1d01ffU);
      }
      else
      {
        Result = (0x1d0108U);
      }
    }
  }

  return Result;

}
# 536 "../30_Bsw/MicroTestLib/Static/SpbTst.c"
static Sl_TstRsltType SpbTst_lTimeoutExecute()
{
  Sl_TstRsltType Result = (0x1d010aU);
  uint32 SmuAlrmTimeout = ( 2000U );
  uint32 Timeout = ( 0x100U );
  volatile uint32 dummy;
  uint32 AlmStatus = 0U;
  uint8 CoreId;
  unsigned_int SpbTst_SbcuConBU;
  uint32 Temp;
  volatile uint32 Delay = 0U;
  uint32 ExpectSbcuEadd = 0U;
  uint32 ExpectSbcuEdat = 0U;


  const uint32 SpbTimeoutTst_kSbcuEconVal[] =
  {
    ( 0x10594001U ),
    ( 0x10D94001U ),
    ( 0x11594001U )
  };


  CoreId = Mcal_GetCoreId();


  Temp = (uint32)((__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "(0xFE04)" : "=d" (__res) :: "memory"); __res; })));
  Temp |= ((uint32)((uint32)(0x1u) << (14u) ));
  _dsync(); do { unsigned __newval = (unsigned) ((Temp)); __asm__ volatile ("mtcr LO:" "(0xFE04)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();


  if ((*(volatile Ifx_MTU_CLC *)0xF0060000u).B.DISS != 0U)
  {
    Mcal_ResetENDINIT();

    (*(volatile Ifx_MTU_CLC *)0xF0060000u).B.DISR = 0x0U;
    Mcal_SetENDINIT();
    do
    {
      Timeout = Timeout - 1U;

    }while (((*(volatile Ifx_MTU_CLC *)0xF0060000u).B.DISS == 1U) && (0U < Timeout));
  }

 if((*(volatile Ifx_MTU_CLC *)0xF0060000u).B.DISS == 0U)
 {

  SpbTst_SbcuConBU = ((*(volatile Ifx_SBCU_CON *)0xF0030010u)).U;


  SpbTimeoutTst_DseTrapCount = 0U;


  ((*(volatile Ifx_SBCU_ECON *)0xF0030020u)).U = 0x0U;


  SpbTimeoutTst_ExpectedTrap = (2U);
  switch (CoreId)
  {

    case (0U):
    {

      ExpectSbcuEadd = (uint32)(&(*(volatile Ifx_MC_ECCD *)0xF0061E10u));
      ExpectSbcuEdat = (*(volatile Ifx_MC_ECCD *)0xF0061E10u).U;


      ((*(volatile Ifx_SBCU_CON *)0xF0030010u)).U = ((((*(volatile Ifx_SBCU_CON *)0xF0030010u)).U & ((unsigned_int)0xFF010000U)) |
                                           (((unsigned_int)0x0004U)));
      dummy = (*(volatile Ifx_MC_ECCD *)0xF0061E10u).U;
    }
    break;
# 638 "../30_Bsw/MicroTestLib/Static/SpbTst.c"
    default:
    {

    }
    break;
  }


  while (Delay < (25U))
  {
    Delay++;
  }


  if(ExpectSbcuEadd == ((*(volatile Ifx_SBCU_EADD *)0xF0030024u)).U)
  {
    if(ExpectSbcuEdat == ((*(volatile Ifx_SBCU_EDAT *)0xF0030028u)).U)
    {
      if(SpbTimeoutTst_kSbcuEconVal[CoreId] != ((*(volatile Ifx_SBCU_ECON *)0xF0030020u)).U)
      {
        Result = (0x1d0106U);
      }
    }
    else
    {
      Result = (0x1d0106U);
    }
  }
  else
  {
    Result = (0x1d0106U);
  }


  ((*(volatile Ifx_SBCU_CON *)0xF0030010u)).U = (((unsigned_int)0xFF01FFFFU) & SpbTst_SbcuConBU);


  dummy = (uint32)((*(volatile Ifx_SBCU_ECON *)0xF0030020u)).U;

  if(Result == (0x1d010aU))
  {

    if((SpbTimeoutTst_DseTrapCount == 1U))
    {

      _dsync(); do { unsigned __newval = (unsigned) ((0x0U)); __asm__ volatile ("mtcr LO:" "(0x9010)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();


      _dsync(); do { unsigned __newval = (unsigned) ((0x0U)); __asm__ volatile ("mtcr LO:" "(0x901C)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();


      SpbTimeoutTst_DseTrapCount = 0U;

      Result = (0x1d01ffU);
    }
    else
    {
      Result = (0x1d0108U);
    }
  }

  if(Result == (0x1d01ffU))
  {

    while((SmuAlrmTimeout > 0U) && (0U ==(AlmStatus & ( (uint32)1U << (31U) ))))
    {
      if (0U != Smu_GetAlarmStatus(( (uint8)(3U) ), &AlmStatus))
      {
        AlmStatus = 0U;
        Result = (0x1d020eU);
        break;
      }
      SmuAlrmTimeout--;
    }

    if(Result == (0x1d01ffU))
    {

      if (0U != (AlmStatus & ( (uint32)1U << (31U) )))
      {

        if(0U == Smu_ClearAlarmStatus(( (uint8)(3U) ), (31U)))
        {
          Result = (0x1d01ffU);
        }
        else
        {
          Result = (0x1d020fU);
        }
      }
      else
      {
        Result = (0x1d020dU);
      }
    }
  }


  {if((dummy) != 0U) { }}
}
  return Result;
}
# 776 "../30_Bsw/MicroTestLib/Static/SpbTst.c"
static Sl_TstRsltType SpbTst_lTimeoutRestore
(
  const SpbTimeoutTst_BackupDataType* SpbTimeoutTst_BackupData
)
{
  Sl_TstRsltType Result = (0x1d010aU);
  Std_ReturnType ResSmuAlmAct;

  Mcal_ResetENDINIT();
  _dsync(); do { unsigned __newval = (unsigned) ((SpbTimeoutTst_BackupData->PswBU)); __asm__ volatile ("mtcr LO:" "(0xFE04)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
  Mcal_SetENDINIT();


  ((*(volatile Ifx_SBCU_ECON *)0xF0030020u)).U = SpbTimeoutTst_BackupData->SbcuEconBU;


  ((*(volatile Ifx_SBCU_EADD *)0xF0030024u)).U = SpbTimeoutTst_BackupData->SbcuEaddBU;


  ((*(volatile Ifx_SBCU_EDAT *)0xF0030028u)).U = SpbTimeoutTst_BackupData->SbcuEdatBU;

  ((*(volatile Ifx_SRC_SRCR *)0xF0038040u)).U = ((((*(volatile Ifx_SRC_SRCR *)0xF0038040u)).U & ((unsigned_int)0x293F1CFFU)) | (((unsigned_int)0x02000000U)));

  Mcal_ResetENDINIT();
  (*(volatile Ifx_MTU_CLC *)0xF0060000u).U = SpbTimeoutTst_BackupData->MtuClcBU;
  Mcal_SetENDINIT();


  ResSmuAlmAct = Smu_SetAlarmAction(( (uint8)(3U) ), (31U),
                        SpbTimeoutTst_BackupData->AlmActionBUSpbBusError);

  if(TRAP_UnregisterTrapHandler(( 0x04U )) != ( (TRAP_ErrorType)0x00000000))
  {
    Result = (0x1d0108U);
  }
  else
  {

    if (0U != ResSmuAlmAct)
    {
      Result = (0x1d0211U);
    }
    else
    {
      Result = (0x1d01ffU);
    }
  }

  return Result;
}
# 899 "../30_Bsw/MicroTestLib/Static/SpbTst.c"
Sl_TstRsltType SpbTst_PeripheralRegAccProtTst
(
 const Sl_ParamSetType ParamSetIndex,
 const uint8 TstSeed,
 uint32* const TstSignature
)
{
  volatile Sl_TstRsltType Result = (Sl_TstRsltType)(0x1c010aU);
  Sl_TstRsltType TmpRes1 = (Sl_TstRsltType)(0x1c010aU);
  Sl_TstRsltType TmpRes2 = (Sl_TstRsltType)(0x1c010aU);
  volatile uint8 PeriCount;


  SpbRegAccProtTst_BackupDataType SpbRegAccProtTst_BackupData;


  *TstSignature = (uint32)(__crc32((unsigned_int)(TEST_ID_SPB_TST_RAP),(unsigned_int)(TstSeed)));


  if (ParamSetIndex > (uint32)(( 1U ) - 1U))
  {
    Result = (0x1c0102U);
  }
  else if (((Smu_StateType)1) != Smu_GetSmuState())
  {
    Result = (0x1c020cU);
  }
  else
  {
    for (PeriCount= 0U; PeriCount < SpbTst_ConfigRoot[ParamSetIndex].SpbCount; PeriCount++)
    {

        TmpRes1 =
           SpbTst_lInit(&SpbRegAccProtTst_BackupData, ParamSetIndex, PeriCount);

        if(TmpRes1 == (Sl_TstRsltType)(0x1c01ffU))
        {

          TmpRes1 = SpbTst_lDenyAccTst(ParamSetIndex, TstSignature, PeriCount, (0U));

          if(TmpRes1 == (Sl_TstRsltType)(0x1c01ffU))
          {

            TmpRes1 = SpbTst_lDenyAccTst(ParamSetIndex, TstSignature, PeriCount, (1U));
          }
        }


        TmpRes2 = SpbTst_lRestore(&SpbRegAccProtTst_BackupData,ParamSetIndex,PeriCount);

        if(TmpRes1 != (Sl_TstRsltType)(0x1c01ffU))
        {
          Result = TmpRes1;
        }
        else
        {
          Result = TmpRes2;
        }

        if(Result != (Sl_TstRsltType)(0x1c01ffU))
        {
          break;
        }
    }
  }


  *TstSignature = (uint32)(__crc32((unsigned_int)(*TstSignature),(unsigned_int)(Result)));

  return Result;
}
# 994 "../30_Bsw/MicroTestLib/Static/SpbTst.c"
static boolean SpbTst_ProtectionTrapHandler(const uint32 TrapId)
{
  boolean ExpectedTrap = (boolean)0;
  uint32 Tmp_SpbRegAccProtTst_ExpctdTrap = SpbRegAccProtTst_ExpectedTrap;
  uint32 Tmp_SpbTimeoutTst_ExpctdTrap = SpbTimeoutTst_ExpectedTrap;

  if (((3U) == TrapId) &&
      (Tmp_SpbRegAccProtTst_ExpctdTrap == (3U)))
  {
    SpbRegAccProtTst_DaeTrapCount++;

    ExpectedTrap = (boolean)1;
    SpbRegAccProtTst_ExpectedTrap = (0U);


    _dsync(); do { unsigned __newval = (unsigned) ((0x0U)); __asm__ volatile ("mtcr LO:" "(0x9018)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
  }
  else if (((2U) == TrapId) &&
           (Tmp_SpbTimeoutTst_ExpctdTrap == (2U)))
  {
    SpbTimeoutTst_DseTrapCount++;

    ExpectedTrap = (boolean)1;
    SpbTimeoutTst_ExpectedTrap = (0U);


    _dsync(); do { unsigned __newval = (unsigned) ((0x0U)); __asm__ volatile ("mtcr LO:" "(0x9010)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
  }
  else
  {
    SpbRegAccProtTst_DaeTrapCount = 0U;
    SpbTimeoutTst_DseTrapCount = 0U;
  }

  return ExpectedTrap;
}
# 1082 "../30_Bsw/MicroTestLib/Static/SpbTst.c"
static Sl_TstRsltType SpbTst_lInit
(
  SpbRegAccProtTst_BackupDataType* const SpbRegAccProt_BackupData,
  const Sl_ParamSetType ParamSetIndex,
  uint8 PeriCount
)
{
  Sl_TstRsltType Result = (0x1c010aU);
  uint32 AlmStatus = 0U;
  Smu_FSPActionType FspActionDummy = 0U;
  volatile uint32 SmuAlmChk;
  volatile uint32 Dummy = 0U;

  SpbRegAccProtTst_ExpectedTrap = (0U);

  SmuAlmChk = (SpbTst_ConfigRoot[ParamSetIndex].SmuAlarm[PeriCount]);


  if(SpbTst_ConfigRoot[ParamSetIndex].SpbPeripheralCfgPtr[PeriCount][0] !=
     ((void *)0))
  {
    if (*(SpbTst_ConfigRoot[ParamSetIndex].SpbPeripheralCfgPtr[PeriCount][3]) !=
     0U)
    {
      SpbRegAccProt_BackupData->PeripheralClcBU =
            *(SpbTst_ConfigRoot[ParamSetIndex].SpbPeripheralCfgPtr[PeriCount][0]);
      Mcal_ResetENDINIT();
      *(SpbTst_ConfigRoot[ParamSetIndex].SpbPeripheralCfgPtr[PeriCount][0]) =
                                                             ((uint32)0x00000100U);
      Mcal_SetENDINIT();
    }
    else
    {
      SpbRegAccProt_BackupData->PeripheralClcBU =
            *(SpbTst_ConfigRoot[ParamSetIndex].SpbPeripheralCfgPtr[PeriCount][0]);
      Mcal_ResetENDINIT();
      *(SpbTst_ConfigRoot[ParamSetIndex].SpbPeripheralCfgPtr[PeriCount][0]) =
                                                             ((uint32)0x00000000U);
      Mcal_SetENDINIT();
    }

    Dummy = *(SpbTst_ConfigRoot[ParamSetIndex].SpbPeripheralCfgPtr[PeriCount][0]);
  }


  SpbRegAccProt_BackupData->PeripheralAccen0BU =
          *(SpbTst_ConfigRoot[ParamSetIndex].SpbPeripheralCfgPtr[PeriCount][1]);



  SpbRegAccProt_BackupData->PeripheralKernelBU =
          *(SpbTst_ConfigRoot[ParamSetIndex].SpbPeripheralCfgPtr[PeriCount][2]);



  SpbRegAccProt_BackupData->PswBU= (uint32)((__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "(0xFE04)" : "=d" (__res) :: "memory"); __res; })));


  if(0U != (Smu_GetAlarmAction(( (uint8)(3U) ), (30U),
           &SpbRegAccProt_BackupData->AlmActionBUSriBusError, &FspActionDummy)))
  {
    Result = (0x1c0210U);

    SpbRegAccProt_BackupData->AlmActionBUSriBusError = ((Smu_AlarmActionType)0xFFU);
  }


  if(0U != (Smu_GetAlarmAction(( (uint8)(3U) ), (31U),
           &SpbRegAccProt_BackupData->AlmActionBUSpbBusError, &FspActionDummy)))
  {
    Result = (0x1c0210U);

    SpbRegAccProt_BackupData->AlmActionBUSpbBusError = ((Smu_AlarmActionType)0xFFU);
  }


  if(0U != (Smu_GetAlarmAction(( (uint8)(3U) ), (22U),
    &SpbRegAccProt_BackupData->AlmActionBUSpbAccProtEnbError, &FspActionDummy)))
  {
    Result = (0x1c0210U);

    SpbRegAccProt_BackupData->AlmActionBUSpbAccProtEnbError =
                                                       ((Smu_AlarmActionType)0xFFU);
  }

  if(Result == (0x1c010aU))
  {

    if(0U != (Smu_GetAlarmStatus(( (uint8)(3U) ), &AlmStatus)))
    {
      Result = (0x1c020eU);
    }

    else if(0U != (AlmStatus & SmuAlmChk))
    {
      Result = (0x1c020dU);
    }
    else
    {

      if(0U != Smu_SetAlarmAction(( (uint8)(3U) ), (30U),
                                    ((Smu_AlarmActionType)0x00U)))
      {
        Result = (0x1c0211U);
      }
      if(0U != Smu_SetAlarmAction(( (uint8)(3U) ), (31U),
                                    ((Smu_AlarmActionType)0x00U)))
      {
        Result = (0x1c0211U);
      }
      if(0U != Smu_SetAlarmAction(( (uint8)(3U) ), (22U),
                                    ((Smu_AlarmActionType)0x00U)))
      {
        Result = (0x1c0211U);
      }
      if(Result == (0x1c010aU))
      {
        Result = TRAP_RegisterTrapHandler(( 0x04U ),
                                          &SpbTst_ProtectionTrapHandler);
        if(( (TRAP_ErrorType)0x00000000) == Result)
        {
          SpbRegAccProtTst_DaeTrapCount = 0x0U;
          Result = (0x1c01ffU);
        }
        else
        {
          Result = (0x1c0107U);
        }
      }
    }
  }
  {if((Dummy) != 0U) { }}
  return Result;

}
# 1258 "../30_Bsw/MicroTestLib/Static/SpbTst.c"
static Sl_TstRsltType SpbTst_lRestore
(
  const SpbRegAccProtTst_BackupDataType* SpbRegAccProt_BackupData,
  const Sl_ParamSetType ParamSetIndex,
  uint8 PeriCount
)
{
  Sl_TstRsltType Result = (0x1c010aU);
  Std_ReturnType ResSmuAlmAct1;
  Std_ReturnType ResSmuAlmAct2;
  Std_ReturnType ResSmuAlmAct3;
  volatile uint32 IntAccEnb;


  IntAccEnb = (uint32)(SpbTst_ConfigRoot[ParamSetIndex].SpbPeripheralCfgPtr[PeriCount][1]);


  Mcal_ResetENDINIT();
  _dsync(); do { unsigned __newval = (unsigned) ((SpbRegAccProt_BackupData->PswBU)); __asm__ volatile ("mtcr LO:" "(0xFE04)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
  Mcal_SetENDINIT();


  if(((uint32)(&(*(volatile Ifx_MTU_ACCEN0 *)0xF00600FCu))) != IntAccEnb)
  {
    Mcal_ResetENDINIT();
    *(SpbTst_ConfigRoot[ParamSetIndex].SpbPeripheralCfgPtr[PeriCount][2]) =
                                   SpbRegAccProt_BackupData->PeripheralKernelBU;
    Mcal_SetENDINIT();
  }
  else
  {
    Mcal_ResetSafetyENDINIT_Timed(((uint32)22960U));
    *(SpbTst_ConfigRoot[ParamSetIndex].SpbPeripheralCfgPtr[PeriCount][2]) =
                                   SpbRegAccProt_BackupData->PeripheralKernelBU;
    Mcal_SetSafetyENDINIT_Timed();
  }


  Mcal_ResetSafetyENDINIT_Timed(((uint32)22960U));
  *(SpbTst_ConfigRoot[ParamSetIndex].SpbPeripheralCfgPtr[PeriCount][1]) =
                                   SpbRegAccProt_BackupData->PeripheralAccen0BU;
  Mcal_SetSafetyENDINIT_Timed();


  ((*(volatile Ifx_XBAR_ARBCON *)0xF87001C4u)).U |= ((unsigned_int)0x10U);
  ((*(volatile Ifx_XBAR_ARBCON *)0xF8700004u)).U |= ((unsigned_int)0x10U);
  (*(volatile Ifx_XBAR_INTSAT *)0xF8700410u).U = ((unsigned_int)0x80400000U);

  Mcal_ResetENDINIT();
  if(SpbTst_ConfigRoot[ParamSetIndex].SpbPeripheralCfgPtr[PeriCount][0] !=
                                                                       ((void *)0))
  {
    *(SpbTst_ConfigRoot[ParamSetIndex].SpbPeripheralCfgPtr[PeriCount][0]) =
                                      SpbRegAccProt_BackupData->PeripheralClcBU;
  }
  Mcal_SetENDINIT();


  ResSmuAlmAct1 = Smu_SetAlarmAction(( (uint8)(3U) ), (30U),
                              SpbRegAccProt_BackupData->AlmActionBUSriBusError);

  ResSmuAlmAct2 = Smu_SetAlarmAction(( (uint8)(3U) ), (31U),
                              SpbRegAccProt_BackupData->AlmActionBUSpbBusError);

  ResSmuAlmAct3 = Smu_SetAlarmAction(( (uint8)(3U) ), (22U),
                       SpbRegAccProt_BackupData->AlmActionBUSpbAccProtEnbError);

  if (TRAP_UnregisterTrapHandler(( 0x04U )) != ( (TRAP_ErrorType)0x00000000))
  {
    Result = (0x1c0107U);
  }
  else
  {

    if( (0U != ResSmuAlmAct1) || (0U != ResSmuAlmAct2) || (0U != ResSmuAlmAct3))
    {
      Result = (0x1c0211U);
    }
    else
    {
      Result = (0x1c01ffU);
    }
  }

  return Result;
}
# 1396 "../30_Bsw/MicroTestLib/Static/SpbTst.c"
static Sl_TstRsltType SpbTst_lDenyAccTst
(
  const Sl_ParamSetType ParamSetIndex,
  uint32* const TstSignature,
  uint8 PeriCount,
  boolean CpuPsw
)
{
  Sl_TstRsltType Result = (0x1c010aU);
  uint8 CoreId;
  volatile uint32 IntAccEnb;
  uint32 AccEnable;
  uint32 Temp;
  volatile uint32 Read_Econ_Reg;
  volatile uint32 Dummy = 0U;


  const uint32 SpbTst_kSafeDMIMasterEnable[] =
  {
    ( 0x00000002U ),
    ( 0x00000008U ),
    ( 0x00000020U )
  };


  const uint32 SpbTst_kNonSafeDMIMasterEnable[] =
  {
    ( 0x00000001U ),
    ( 0x00000004U ),
    ( 0x00000010U )
  };


  CoreId = Mcal_GetCoreId();


  if(CpuPsw == (1U))
  {

    Temp = (uint32)((__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "(0xFE04)" : "=d" (__res) :: "memory"); __res; })));
    Temp &= (uint32)(~((uint32)((uint32)(0x1u) << (14u) )));
    _dsync(); do { unsigned __newval = (unsigned) ((Temp)); __asm__ volatile ("mtcr LO:" "(0xFE04)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
    AccEnable = SpbTst_kNonSafeDMIMasterEnable[CoreId];
  }
  else
  {

    Temp = (uint32)((__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "(0xFE04)" : "=d" (__res) :: "memory"); __res; })));
    Temp |= ((uint32)((uint32)(0x1u) << (14u) ));
    _dsync(); do { unsigned __newval = (unsigned) ((Temp)); __asm__ volatile ("mtcr LO:" "(0xFE04)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
    AccEnable = SpbTst_kSafeDMIMasterEnable[CoreId];
  }


  Mcal_ResetSafetyENDINIT_Timed(((uint32)22960U));
  IntAccEnb = (uint32)(SpbTst_ConfigRoot[ParamSetIndex].SpbPeripheralCfgPtr[PeriCount][1]);
  *(SpbTst_ConfigRoot[ParamSetIndex].SpbPeripheralCfgPtr[PeriCount][1]) = AccEnable;
  Mcal_SetSafetyENDINIT_Timed();


  if (*(SpbTst_ConfigRoot[ParamSetIndex].SpbPeripheralCfgPtr[PeriCount][1]) == AccEnable)
  {
    if(CpuPsw != (1U))
    {

      Temp = (uint32)((__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "(0xFE04)" : "=d" (__res) :: "memory"); __res; })));
      Temp &= (uint32)(~((uint32)((uint32)(0x1u) << (14u) )));
      _dsync(); do { unsigned __newval = (unsigned) ((Temp)); __asm__ volatile ("mtcr LO:" "(0xFE04)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
    }
    else
    {

      Temp = (uint32)((__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "(0xFE04)" : "=d" (__res) :: "memory"); __res; })));
      Temp |= ((uint32)((uint32)(0x1u) << (14u) ));
      _dsync(); do { unsigned __newval = (unsigned) ((Temp)); __asm__ volatile ("mtcr LO:" "(0xFE04)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
    }


    SpbRegAccProtTst_DaeTrapCount = 0U;


    if(((uint32)(&(*(volatile Ifx_MTU_ACCEN0 *)0xF00600FCu))) != IntAccEnb)
    {
      Mcal_ResetENDINIT();
      SpbRegAccProtTst_ExpectedTrap = (3U);
      *(SpbTst_ConfigRoot[ParamSetIndex].SpbPeripheralCfgPtr[PeriCount][2]) = 0xFFFFFFFFU;
      Mcal_SetENDINIT();
    }
    else
    {
      Mcal_ResetSafetyENDINIT_Timed(((uint32)22960U));
      SpbRegAccProtTst_ExpectedTrap = (3U);
      *(SpbTst_ConfigRoot[ParamSetIndex].SpbPeripheralCfgPtr[PeriCount][2]) = 0xFFFFFFFFU;
      Mcal_SetSafetyENDINIT_Timed();
    }

    if(CpuPsw == (1U))
    {

      Temp = (uint32)((__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "(0xFE04)" : "=d" (__res) :: "memory"); __res; })));
      Temp &= (uint32)(~((uint32)((uint32)(0x1u) << (14u) )));
      _dsync(); do { unsigned __newval = (unsigned) ((Temp)); __asm__ volatile ("mtcr LO:" "(0xFE04)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
    }
    else
    {

      Temp = (uint32)((__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "(0xFE04)" : "=d" (__res) :: "memory"); __res; })));
      Temp |= ((uint32)((uint32)(0x1u) << (14u) ));
      _dsync(); do { unsigned __newval = (unsigned) ((Temp)); __asm__ volatile ("mtcr LO:" "(0xFE04)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
    }

    Mcal_ResetSafetyENDINIT_Timed(((uint32)22960U));
    *(SpbTst_ConfigRoot[ParamSetIndex].SpbPeripheralCfgPtr[PeriCount][1]) = 0xFFFFFFFFU;
    Mcal_SetSafetyENDINIT_Timed();

    Result = SpbTst_lWaitForSmuAlarm(ParamSetIndex, PeriCount);

    Read_Econ_Reg = (uint32)((*(volatile Ifx_SBCU_ECON *)0xF0030020u)).U;

    {if((Read_Econ_Reg) != 0U) { }}

    if(Result == (0x1c01ffU))
    {

      if((SpbRegAccProtTst_DaeTrapCount == 1U))
      {

        _dsync(); do { unsigned __newval = (unsigned) ((0x0U)); __asm__ volatile ("mtcr LO:" "(0x9018)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();


        _dsync(); do { unsigned __newval = (unsigned) ((0x0U)); __asm__ volatile ("mtcr LO:" "(0x901C)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();


        SpbRegAccProtTst_DaeTrapCount = 0U;
      }
      else
      {





        if(((uint32)(&(*(volatile Ifx_INT_ACCEN00 *)0xF00370F4u))) == IntAccEnb)
        {
          Result = (0x1c01ffU);
        }
        else if (((uint32)(&(*(volatile Ifx_INT_ACCEN10 *)0xF00370FCu))) == IntAccEnb)
        {
          Result = (0x1c01ffU);
        }
        else
        {
          Result = (0x1c0107U);
        }
      }
    }
  }
  else
  {
    Result = (0x1c1002U);
  }

  ((*(volatile Ifx_SRC_SRCR *)0xF0038040u)).U = ((((*(volatile Ifx_SRC_SRCR *)0xF0038040u)).U & ((unsigned_int)0x293F1CFFU)) | (((unsigned_int)0x02000000U)));

  ((*(volatile Ifx_SRC_SRCR *)0xF0038048u)).U = ((((*(volatile Ifx_SRC_SRCR *)0xF0038048u)).U & (((unsigned_int)0x293F1CFFU))) | ((((unsigned_int)0x02000000U))));
  *TstSignature = (uint32)(__crc32((unsigned_int)(*TstSignature),(unsigned_int)(Result)));
  {if((Dummy) != 0U) { }}
  return Result;
}
# 1609 "../30_Bsw/MicroTestLib/Static/SpbTst.c"
static Sl_TstRsltType SpbTst_lWaitForSmuAlarm
(
  const Sl_ParamSetType ParamSetIndex,
  uint8 PeriCount
)
{
  uint32 AlmStatus = 0U;
  uint32 Timeout = ( 2000U );
  Sl_TstRsltType Result = (0x1c010aU);
  Std_ReturnType TmpClrAlmRes1 = 0U;
  Std_ReturnType TmpClrAlmRes2 = 0U;
  Std_ReturnType TmpClrAlmRes3 = 0U;
  volatile uint32 SmuAlmChk;

  SmuAlmChk = (SpbTst_ConfigRoot[ParamSetIndex].SmuAlarm[PeriCount]);


  while((0U == (AlmStatus & SmuAlmChk)) && ((Timeout) > 0U))
  {
    Timeout--;
    if (0U != Smu_GetAlarmStatus(( (uint8)(3U) ), &AlmStatus))
    {
      AlmStatus = 0U;
      Timeout = 0U;
      Result = (0x1c020eU);
    }
  }


  if (0U != (AlmStatus & SmuAlmChk))
  {
    if (0U != (AlmStatus & (uint32)( (uint32)1U << (22U) )))
    {

      TmpClrAlmRes1 = Smu_ClearAlarmStatus(( (uint8)(3U) ), (22U));
    }
    if(0U != (AlmStatus & (uint32)( (uint32)1U << (31U) )))
    {

      TmpClrAlmRes2 = Smu_ClearAlarmStatus(( (uint8)(3U) ), (31U));
    }
    if(0U != (AlmStatus & (uint32)( (uint32)1U << (30U) )))
    {

      TmpClrAlmRes3 = Smu_ClearAlarmStatus(( (uint8)(3U) ), (30U));
    }

    if( (0U != TmpClrAlmRes1) || (0U != TmpClrAlmRes2) || (0U != TmpClrAlmRes3) )
    {
      Result = (0x1c020fU);
    }
    else
    {
      Result = (0x1c01ffU);
    }
  }

  else
  {
    if(Result == (0x1c010aU))
    {
      Result = (0x1c1001U);
    }
  }
  return Result;
}


# 1 "../30_Bsw/STL_common/Ifx_MemMap.h" 1
# 2654 "../30_Bsw/STL_common/Ifx_MemMap.h"
#pragma section
# 1678 "../30_Bsw/MicroTestLib/Static/SpbTst.c" 2
