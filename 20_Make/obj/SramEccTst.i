# 1 "../30_Bsw/MicroTestLib/Static/SramEccTst.c"
# 1 "S:\\20_Make//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "../30_Bsw/MicroTestLib/Static/SramEccTst.c"
# 45 "../30_Bsw/MicroTestLib/Static/SramEccTst.c"
# 1 "../30_Bsw/STL_common/ChipId.h" 1
# 46 "../30_Bsw/MicroTestLib/Static/SramEccTst.c" 2
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
# 47 "../30_Bsw/MicroTestLib/Static/SramEccTst.c" 2
# 1 "../30_Bsw/MicroTestLib/Static/SramEccTst.h" 1
# 43 "../30_Bsw/MicroTestLib/Static/SramEccTst.h"
# 1 "../30_Bsw/Common/Platform_Types.h" 1
# 44 "../30_Bsw/MicroTestLib/Static/SramEccTst.h" 2
# 1 "../30_Bsw/STL_common/Sl_Timeout.h" 1
# 45 "../30_Bsw/MicroTestLib/Static/SramEccTst.h" 2

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
# 47 "../30_Bsw/MicroTestLib/Static/SramEccTst.h" 2
# 1 "../30_Bsw/MicroTestLib/Config/SramEccTst_Cfg.h" 1
# 48 "../30_Bsw/MicroTestLib/Static/SramEccTst.h" 2
# 1 "../30_Bsw/STL_common/Mcal_Compiler.h" 1
# 49 "../30_Bsw/MicroTestLib/Static/SramEccTst.h" 2
# 65 "../30_Bsw/MicroTestLib/Static/SramEccTst.h"
typedef struct SramEccTst_ConfigType
{
 uint32 MemorySelect;
 boolean BackupMemory;
}SramEccTst_ConfigType;


typedef struct SramEccTst_UnexpAlarmType
{
    uint32 Correctable;
    uint32 Uncorrectable;
    uint32 Address;
    uint32 ErrTrkOvf;
    uint32 Crc;
} SramEccTst_UnexpAlarmType;
# 88 "../30_Bsw/MicroTestLib/Static/SramEccTst.h"
# 1 "../30_Bsw/STL_common/Ifx_MemMap.h" 1
# 2426 "../30_Bsw/STL_common/Ifx_MemMap.h"
#pragma section ".rodata.CONFIGURATION_LT" a
# 89 "../30_Bsw/MicroTestLib/Static/SramEccTst.h" 2
extern const SramEccTst_ConfigType SramEccTst_ConfigRoot[( 1U )];

# 1 "../30_Bsw/STL_common/Ifx_MemMap.h" 1
# 2437 "../30_Bsw/STL_common/Ifx_MemMap.h"
#pragma section
# 92 "../30_Bsw/MicroTestLib/Static/SramEccTst.h" 2
# 100 "../30_Bsw/MicroTestLib/Static/SramEccTst.h"
# 1 "../30_Bsw/STL_common/Ifx_MemMap.h" 1
# 2642 "../30_Bsw/STL_common/Ifx_MemMap.h"
#pragma section ".text.STL_ASIL_CODE" ax 4
# 101 "../30_Bsw/MicroTestLib/Static/SramEccTst.h" 2
# 129 "../30_Bsw/MicroTestLib/Static/SramEccTst.h"
extern Sl_TstRsltType SramEccTst_SramEccTst
(
    const Sl_ParamSetType ParamSetIndex,
    const uint8 TstSeed,
    uint32* const TstSignature
);
# 162 "../30_Bsw/MicroTestLib/Static/SramEccTst.h"
extern SramEccTst_UnexpAlarmType* SramEccTst_GetUnexpEccAlmListPtr
(
  void
);

# 1 "../30_Bsw/STL_common/Ifx_MemMap.h" 1
# 2654 "../30_Bsw/STL_common/Ifx_MemMap.h"
#pragma section
# 168 "../30_Bsw/MicroTestLib/Static/SramEccTst.h" 2
# 48 "../30_Bsw/MicroTestLib/Static/SramEccTst.c" 2
# 1 "../30_Bsw/MicroTestLib/Static/SramEccTst_MemDef.h" 1
# 85 "../30_Bsw/MicroTestLib/Static/SramEccTst_MemDef.h"
typedef struct SramEccTst_MemoryDefinitionType
{


  uint8 SmuAlarmGrp;

  uint8 SmuNr_SbeCorr;

  uint8 SmuNr_UcErr;

  uint8 SmuNr_AdrErr;

  uint8 SmuNr_AdrBufFull;


  uint8 NrOfMemBlocks;

  uint8 NrOfMultiplexers;

  uint8 NrOfDataBits;

  uint8 NrOfEccBits;


  uint8 NrOfEtrRegisters;
  uint8 EccInvPos0;
  uint8 EccInvPos1;
  uint32 Reserved;
}SramEccTst_MemoryDefinitionType;






# 1 "../30_Bsw/STL_common/Ifx_MemMap.h" 1
# 4016 "../30_Bsw/STL_common/Ifx_MemMap.h"
#pragma section ".rodata.STL_CONST_32BIT" a 4
# 121 "../30_Bsw/MicroTestLib/Static/SramEccTst_MemDef.h" 2

extern const SramEccTst_MemoryDefinitionType* const
                SramEccTst_kMemDef[((uint8)15U)];

# 1 "../30_Bsw/STL_common/Ifx_MemMap.h" 1
# 4029 "../30_Bsw/STL_common/Ifx_MemMap.h"
#pragma section
# 126 "../30_Bsw/MicroTestLib/Static/SramEccTst_MemDef.h" 2

# 1 "../30_Bsw/STL_common/Ifx_MemMap.h" 1
# 3965 "../30_Bsw/STL_common/Ifx_MemMap.h"
#pragma section ".rodata.STL_CONST_8BIT" a 1
# 128 "../30_Bsw/MicroTestLib/Static/SramEccTst_MemDef.h" 2

extern const uint8 SramEccTst_kMcTable[((uint8)15U)];

# 1 "../30_Bsw/STL_common/Ifx_MemMap.h" 1
# 3976 "../30_Bsw/STL_common/Ifx_MemMap.h"
#pragma section
# 132 "../30_Bsw/MicroTestLib/Static/SramEccTst_MemDef.h" 2
# 49 "../30_Bsw/MicroTestLib/Static/SramEccTst.c" 2
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
# 50 "../30_Bsw/MicroTestLib/Static/SramEccTst.c" 2
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
# 51 "../30_Bsw/MicroTestLib/Static/SramEccTst.c" 2
# 1 "../30_Bsw/Common/TC21x/IfxCpu_bf.h" 1
# 52 "../30_Bsw/MicroTestLib/Static/SramEccTst.c" 2
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
# 53 "../30_Bsw/MicroTestLib/Static/SramEccTst.c" 2
# 1 "../30_Bsw/Common/TC21x/IfxCpu_regdef.h" 1
# 54 "../30_Bsw/MicroTestLib/Static/SramEccTst.c" 2
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
# 55 "../30_Bsw/MicroTestLib/Static/SramEccTst.c" 2
# 1 "../30_Bsw/Common/TC21x/IfxMc_bf.h" 1
# 56 "../30_Bsw/MicroTestLib/Static/SramEccTst.c" 2
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
# 57 "../30_Bsw/MicroTestLib/Static/SramEccTst.c" 2
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
# 58 "../30_Bsw/MicroTestLib/Static/SramEccTst.c" 2
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
# 59 "../30_Bsw/MicroTestLib/Static/SramEccTst.c" 2
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
# 60 "../30_Bsw/MicroTestLib/Static/SramEccTst.c" 2
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
# 61 "../30_Bsw/MicroTestLib/Static/SramEccTst.c" 2
# 1 "../30_Bsw/Common/TC21x/IfxXbar_bf.h" 1
# 62 "../30_Bsw/MicroTestLib/Static/SramEccTst.c" 2
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
# 63 "../30_Bsw/MicroTestLib/Static/SramEccTst.c" 2
# 292 "../30_Bsw/MicroTestLib/Static/SramEccTst.c"
typedef struct SramEccTst_BackupDataType
{

  Smu_AlarmActionType AlmActionBackupSbeCorr;

  Smu_AlarmActionType AlmActionBackupUcErr;

  Smu_AlarmActionType AlmActionBackupAdrErr;

  Smu_AlarmActionType AlmActionBackupAdrBufFull;

  Smu_AlarmActionType AlmActionBackupLmuEccOnlnMon;


  Std_ReturnType GetAlmActionResult;



  uint32 ClockBackup1;

  uint32 MBistEnable;

  uint32 MemTest;



  uint16 MemContentBackup[(96U)];




  boolean MemBackupValid;


  uint8 MtuClcDisr;


  uint16 Eccs;


  uint16 Range;
# 341 "../30_Bsw/MicroTestLib/Static/SramEccTst.c"
  uint8 CpuCacheBypass;


  uint32 Crc;



  uint32 MemContentCrc;

}SramEccTst_BackupDataType;







typedef struct SramEccTst_WdtContextType
{

  uint32 WdtTimAndPw;
}SramEccTst_WdtContextType;




typedef struct SramEccTst_ScuWdtPtrListType
{
  volatile Ifx_SCU_WDTCPU_CON0* const Wdtcon0Ptr;
  volatile Ifx_SCU_WDTCPU_SR* const WdtssrPtr;
}SramEccTst_ScuWdtPtrListType;
# 391 "../30_Bsw/MicroTestLib/Static/SramEccTst.c"
# 1 "../30_Bsw/STL_common/Ifx_MemMap.h" 1
# 4016 "../30_Bsw/STL_common/Ifx_MemMap.h"
#pragma section ".rodata.STL_CONST_32BIT" a 4
# 392 "../30_Bsw/MicroTestLib/Static/SramEccTst.c" 2


static const uint32 SramEccTst_kLukupTblExpValWLIdx[5U]=
{
  0xFFFFFFFFU,
  0x001F0000U,
  0x000F0001U,
  0x00070002U,
  0x00030003U
};


static const uint32* const
  SramEccTst_SramBaseAddrList[((uint8)15U)] =
{
  (uint32*)0x70000000U,
  (uint32*)((void *)0),
  (uint32*)0x70100000U,
  (uint32*)((void *)0),
  (uint32*)0x60000000U,
  (uint32*)0x60000010U,
  (uint32*)((void *)0),
  (uint32*)0x60100000U,
  (uint32*)((void *)0),
  (uint32*)0x50000000U,
  (uint32*)0x50000010U,
  (uint32*)((void *)0),
  (uint32*)0x50100000U,
  (uint32*)((void *)0),
  (uint32*)0xB0000000U
};


static const Sl_TstRsltType SramEccTst_kLocalResultTbl[] =
{
  (0x16010aU),
  (0x161001U),
  (0x161104U),
  (0x161105U),
  (0x16020dU),
  (0x1601ffU)
};



# 1 "../30_Bsw/STL_common/Ifx_MemMap.h" 1
# 4029 "../30_Bsw/STL_common/Ifx_MemMap.h"
#pragma section
# 438 "../30_Bsw/MicroTestLib/Static/SramEccTst.c" 2


# 1 "../30_Bsw/STL_common/Ifx_MemMap.h" 1
# 3989 "../30_Bsw/STL_common/Ifx_MemMap.h"
#pragma section ".rodata.STL_CONST_16BIT" a 2
# 441 "../30_Bsw/MicroTestLib/Static/SramEccTst.c" 2



const uint16 SramEccTst_kNoErrPtrn[11] =
{
  0x0000U,
  0x0003U,
  0x00C0U,
  0x3000U,
  0x0000U,
  0x000CU,
  0x0300U,
  0xC000U,
  0x0000U,
  0x0030U,
  0x0C00U
};


const uint16 SramEccTst_kSingleBitErrPtrn[(11U)] =
{
  0x0001U,
  0x0003U,
  0x00C0U,
  0x3000U,
  0x0000U,
  0x000CU,
  0x0300U,
  0xC000U,
  0x0000U,
  0x0030U,
  0x0C00U
};

const uint16 SramEccTst_kDoubleBitErrPtrn[(11U)] =
{
  0x0003U,
  0x0003U,
  0x00C0U,
  0x3000U,
  0x0000U,
  0x000CU,
  0x0300U,
  0xC000U,
  0x0000U,
  0x0030U,
  0x0C00U
};



# 1 "../30_Bsw/STL_common/Ifx_MemMap.h" 1
# 4002 "../30_Bsw/STL_common/Ifx_MemMap.h"
#pragma section
# 493 "../30_Bsw/MicroTestLib/Static/SramEccTst.c" 2

# 1 "../30_Bsw/STL_common/Ifx_MemMap.h" 1
# 4042 "../30_Bsw/STL_common/Ifx_MemMap.h"
#pragma section ".rodata.STL_CONST_FAR_UNSPECIFIED" a
# 495 "../30_Bsw/MicroTestLib/Static/SramEccTst.c" 2


static const SramEccTst_ScuWdtPtrListType
             SramEccTst_kScuWdtPtrList[(1U)+1U] =
{
  {
    .Wdtcon0Ptr = (volatile Ifx_SCU_WDTCPU_CON0*) (void *)&((*(volatile Ifx_SCU_WDTS_CON0 *)0xF00360F0u)),
    .WdtssrPtr = (volatile Ifx_SCU_WDTCPU_SR*) (void *)&((*(volatile Ifx_SCU_WDTS_SR *)0xF00360F8u)),
  },
  {
    .Wdtcon0Ptr = &(*(volatile Ifx_SCU_WDTCPU_CON0 *)0xF0036100u),
    .WdtssrPtr = &(*(volatile Ifx_SCU_WDTCPU_SR *)0xF0036108u)
  },
# 520 "../30_Bsw/MicroTestLib/Static/SramEccTst.c"
};


# 1 "../30_Bsw/STL_common/Ifx_MemMap.h" 1
# 4053 "../30_Bsw/STL_common/Ifx_MemMap.h"
#pragma section
# 524 "../30_Bsw/MicroTestLib/Static/SramEccTst.c" 2


# 1 "../30_Bsw/STL_common/Ifx_MemMap.h" 1
# 3510 "../30_Bsw/STL_common/Ifx_MemMap.h"
#pragma section ".data.STL_RAM_32BIT_NONZERO_INIT" aw 4
# 527 "../30_Bsw/MicroTestLib/Static/SramEccTst.c" 2

static SramEccTst_UnexpAlarmType SramEccTst_UnexpAlm =
{
  .Correctable = 0U,
  .Uncorrectable = 0U,
  .Address = 0U,
  .ErrTrkOvf = 0U,
  .Crc = 0U
};


# 1 "../30_Bsw/STL_common/Ifx_MemMap.h" 1
# 3525 "../30_Bsw/STL_common/Ifx_MemMap.h"
#pragma section
# 539 "../30_Bsw/MicroTestLib/Static/SramEccTst.c" 2



# 1 "../30_Bsw/STL_common/Ifx_MemMap.h" 1
# 2642 "../30_Bsw/STL_common/Ifx_MemMap.h"
#pragma section ".text.STL_ASIL_CODE" ax 4
# 543 "../30_Bsw/MicroTestLib/Static/SramEccTst.c" 2
# 552 "../30_Bsw/MicroTestLib/Static/SramEccTst.c"
static Sl_TstRsltType SramEccTst_lTestMemory
(
  const uint8 MemIdx,
  const Sl_ParamSetType ParamSetIndex,
  uint32* const TstSignature,
  SramEccTst_BackupDataType* const BackupData
);

static Ifx_MC* SramEccTst_lGetMc
(
  const uint8 MemIdx
);

static Sl_TstRsltType SramEccTst_lInit
(
  const uint8 MemIdx,
  const Sl_ParamSetType ParamSetIndex,
  SramEccTst_BackupDataType* const BackupData
);

static Sl_TstRsltType SramEccTst_lInitSmuAlarms
(
  const uint8 MemIdx,
  SramEccTst_BackupDataType* const BackupData
);

static Sl_TstRsltType SramEccTst_lRestore
(
  const uint8 MemIdx,
  const SramEccTst_ConfigType* const Config,
  const SramEccTst_BackupDataType* const BackupData
);

static Sl_TstRsltType SramEccTst_lRestoreSmuAlarms
(
  const uint8 MemIdx,
  const SramEccTst_BackupDataType* const BackupData
);

static Sl_TstRsltType SramEccTst_lBackupSmuAlmActions
(
  const uint8 MemIdx,
  SramEccTst_BackupDataType* const BackupData
);

static Sl_TstRsltType SramEccTst_lCountClearUnexpAlm
(
  const uint8 MemIdx
);

static Sl_TstRsltType SramEccTst_lCheckSmuAlarms
(
  const uint8 MemIdx
);
# 633 "../30_Bsw/MicroTestLib/Static/SramEccTst.c"
static uint8 SramEccTst_lCalcRdbflRegCount
(
  const uint8 MemIdx
);

static void SramEccTst_lCreateZeroPattern
(
  const uint8 MemIdx
);

static __inline__ void SramEccTst_lFlipBits
(
  const uint8 MemIdx,
  const uint8 WordIdx,
  const uint8 BitIdx,
  const uint8 BitCount
);

static void SramEccTst_lReadWordline
(
  const uint8 MemIdx,
  const uint16 WordlineIdx
);

static Sl_TstRsltType SramEccTst_lReadWordlineSafe
(
  const uint8 MemIdx,
  const uint16 WordlineIdx
);

static void SramEccTst_lWriteWordline
(
  const uint8 MemIdx,
  const uint16 WordlineIdx
);

static Sl_TstRsltType SramEccTst_lWriteWordlineSafe
(
  const uint8 MemIdx,
  const uint16 WordlineIdx
);
# 684 "../30_Bsw/MicroTestLib/Static/SramEccTst.c"
static Sl_TstRsltType SramEccTst_lCheckEccLogic
(
  const uint8 MemIdx,
  uint32* const TstSignature
);

static Sl_TstRsltType SramEccTst_lChkAddressMon
(
  const uint8 MemIdx,
  uint32* const TstSignature
);

static Sl_TstRsltType SramEccTst_lChkSramMon
(
  const uint8 MemIdx,
  uint32* const TstSignature
);

static Sl_TstRsltType SramEccTst_lChkSramMonCe
(
  const uint8 MemIdx,
  uint32* const TstSignature,
  uint16* const ValExpected,
  uint16* const WordlineIdx
);

static Sl_TstRsltType SramEccTst_lChkSramMonUe
(
  const uint8 MemIdx,
  uint32* const TstSignature,
  uint16* const ValExpected,
  uint16* const WordlineIdx
);

static Sl_TstRsltType SramEccTst_lChkSramMonEov
(
  const uint8 MemIdx,
  uint32* const TstSignature,
  const uint16 WordlineIdx
);
# 734 "../30_Bsw/MicroTestLib/Static/SramEccTst.c"
static void SramEccTst_lDisableCaching
(
  SramEccTst_BackupDataType* const BackupData
);
static void SramEccTst_lRestoreCaching
(
  const SramEccTst_BackupDataType* const BackupData
);
# 751 "../30_Bsw/MicroTestLib/Static/SramEccTst.c"
static void SramEccTst_lDummyRamAccess
(
  const uint8 MemIdx
);

static Sl_TstRsltType SramEccTst_lEnableMbist
(
  const uint8 MemIdx,
  uint32* const MemTestBackup
);

static Sl_TstRsltType SramEccTst_lRestoreMbist
(
  const uint8 MemIdx,
  const uint32 MemTestBackup
);

static Sl_TstRsltType SramEccTst_lWaitForSmuAlarm
(
  const uint8 SmuGrp,
  const uint8 SmuAlarmNr,
  uint32* const TstSignature
);

static Sl_TstRsltType SramEccTst_lBackupMemContent
(
  const uint8 MemIdx,
  const Sl_ParamSetType ParamSetIndex,
  SramEccTst_BackupDataType* const BackupData
);

static Sl_TstRsltType SramEccTst_lRestoreMemContent
(
  const uint8 MemIdx,
  const SramEccTst_BackupDataType* const BackupData
);

static Sl_TstRsltType SramEccTst_lCalcMemoryCrc
(
  const uint8 MemIdx,
  uint32* const Crc
);

static Sl_TstRsltType SramEccTst_lCheckMemoryCrc
(
  const uint8 MemIdx,
  const uint32 ExpectedCrc
);

static boolean SramEccTst_lFuncDevMtuTc008Exists
(
  void
);

static Sl_TstRsltType SramEccTst_lEnableMtuClock
(
  SramEccTst_BackupDataType* const BackupData
);

static Sl_TstRsltType SramEccTst_lRestoreMtuClock
(
  const SramEccTst_BackupDataType* const BackupData
);

static __inline__ uint32 SramEccTst_lCpuPwSequence
(
  const sint8 Wdt,
  const uint32 Password
);

static __inline__ uint32 SramEccTst_lCpuRelValue
(
  const sint8 Wdt,
  const uint32 TimReload
);

static void SramEccTst_lResetCpuENDINIT
(
  const sint8 Wdt,
  SramEccTst_WdtContextType* const WdtContext
);

static void SramEccTst_lSetCpuENDINIT
(
  const sint8 Wdt,
  const SramEccTst_WdtContextType* const WdtContext
);

static void SramEccTst_lResetENDINIT
(
  SramEccTst_WdtContextType* const WdtContext
);

static void SramEccTst_lResetSafetyENDINIT
(
  SramEccTst_WdtContextType* const WdtContext
);

static void SramEccTst_lSetENDINIT
(
  const SramEccTst_WdtContextType* const WdtContext
);

static void SramEccTst_lSetSafetyENDINIT
(
  const SramEccTst_WdtContextType* const WdtContext
);

static Std_ReturnType SramEccTst_lSmuClearAlarmStatus
(
  uint8 AlarmGroup,
  uint8 AlarmPos
);

static __inline__ uint32 SramEccTst_lCalcAlmCounterCrc
(
  void
);

static uint32 SramEccTst_lCalcBackupCrc
(
  const uint8 MemIdx,
  const SramEccTst_BackupDataType* const BackupData
);

# 1 "../30_Bsw/STL_common/Ifx_MemMap.h" 1
# 2654 "../30_Bsw/STL_common/Ifx_MemMap.h"
#pragma section
# 877 "../30_Bsw/MicroTestLib/Static/SramEccTst.c" 2





# 1 "../30_Bsw/STL_common/Ifx_MemMap.h" 1
# 2699 "../30_Bsw/STL_common/Ifx_MemMap.h"
#pragma section ".text.STL_ASIL_CODE_NO_OPTIMIZE" ax 4

#pragma GCC optimize "O0"
# 883 "../30_Bsw/MicroTestLib/Static/SramEccTst.c" 2
static Sl_TstRsltType SramEccTst_lChkSramMonSingleCore
(
  uint32* const TstSignature
);

static Sl_TstRsltType SramEccTst_lChkSramMonCeSingleCore
(
  uint32* const TstSignature
);

static Sl_TstRsltType SramEccTst_lChkSramMonUeSingleCore
(
  uint32* const TstSignature
);

static Sl_TstRsltType SramEccTst_lChkSramMonEovSingleCore
(
  uint32* const TstSignature
);

static Sl_TstRsltType SramEccTst_lTestDspr0SingleCore
(
  uint32* const TstSignature, SramEccTst_BackupDataType* const BackupData
);

static Sl_TstRsltType SramEccTst_lChkAddressMonSingleCore
(
  uint32* const TstSignature
);

static Sl_TstRsltType SramEccTst_lInitSingleCore
(
  SramEccTst_BackupDataType* const BackupData
);

static Sl_TstRsltType SramEccTst_lRestoreSingleCore
(
  const SramEccTst_BackupDataType* const BackupData
);

static uint32 SramEccTst_lCalcBackupCrcSingleCore
(
  const SramEccTst_BackupDataType* const BackupData
);

# 1 "../30_Bsw/STL_common/Ifx_MemMap.h" 1
# 2713 "../30_Bsw/STL_common/Ifx_MemMap.h"
#pragma GCC reset_options
#pragma section
# 929 "../30_Bsw/MicroTestLib/Static/SramEccTst.c" 2
# 945 "../30_Bsw/MicroTestLib/Static/SramEccTst.c"
# 1 "../30_Bsw/STL_common/Ifx_MemMap.h" 1
# 2642 "../30_Bsw/STL_common/Ifx_MemMap.h"
#pragma section ".text.STL_ASIL_CODE" ax 4
# 946 "../30_Bsw/MicroTestLib/Static/SramEccTst.c" 2
# 979 "../30_Bsw/MicroTestLib/Static/SramEccTst.c"
static Sl_TstRsltType SramEccTst_lTestMemory
(
  const uint8 MemIdx,
  const Sl_ParamSetType ParamSetIndex,
  uint32* const TstSignature,
  SramEccTst_BackupDataType* const BackupData
)
{
  Sl_TstRsltType Result = (0x16010aU);
  Sl_TstRsltType ResultTmp;


  ResultTmp = SramEccTst_lInit(MemIdx, ParamSetIndex, BackupData);
  if ((0x1601ffU) != ResultTmp)
  {
    Result = ResultTmp;
  }
  else
  {
    ResultTmp = SramEccTst_lCheckEccLogic(MemIdx, TstSignature);
    if ((0x1601ffU) != ResultTmp)
    {
      Result = ResultTmp;
    }
  }


  ResultTmp = SramEccTst_lRestore(MemIdx,
                                  &SramEccTst_ConfigRoot[ParamSetIndex],
                                  BackupData);
  if ((0x1601ffU) != ResultTmp)
  {
    Result = ResultTmp;
  }

  if ((0x16010aU) == Result)
  {
    Result = (0x1601ffU);
  }

  return Result;
}
# 1047 "../30_Bsw/MicroTestLib/Static/SramEccTst.c"
static Ifx_MC* SramEccTst_lGetMc
(
  const uint8 MemIdx
)
{
  uint8 McIdx;
  Ifx_MC* Result;

  McIdx = SramEccTst_kMcTable[MemIdx];
  Result = (Ifx_MC*)((uint32)&(*(Ifx_MC *)0xF0061000u) +
                     ((uint32)((uint32)&(*(Ifx_MC *)0xF0061100u) - (uint32)&(*(Ifx_MC *)0xF0061000u)) * (uint32)McIdx));

  return Result;
}
# 1096 "../30_Bsw/MicroTestLib/Static/SramEccTst.c"
static Sl_TstRsltType SramEccTst_lInit
(
  const uint8 MemIdx,
  const Sl_ParamSetType ParamSetIndex,
  SramEccTst_BackupDataType* const BackupData
)
{
  Sl_TstRsltType Result = (0x16010aU);
  Sl_TstRsltType ResultTmp;
  Ifx_MC* Mc;


  BackupData->Eccs = (uint16)((uint32)0xFFFFFFFFU);
  BackupData->ClockBackup1 = ((uint32)0xFFFFFFFFU);
  BackupData->MemBackupValid = (boolean)0;
  BackupData->MemTest = ((uint32)0xFFFFFFFFU);
  BackupData->CpuCacheBypass = (uint8)((uint32)0xFFFFFFFFU);
  BackupData->MBistEnable = (boolean)0;






  BackupData->Range = (uint16)((uint32)0xFFFFFFFFU);


  if (((uint8)0xFFU) == SramEccTst_kMcTable[MemIdx])
  {
    Result = (0x160104U);
  }
  else
  {

    Mc = SramEccTst_lGetMc(MemIdx);

    ResultTmp = SramEccTst_lInitSmuAlarms(MemIdx, BackupData);
    if ((0x1601ffU) != ResultTmp)
    {
      Result = ResultTmp;
    }
    else
    {


      SramEccTst_lDisableCaching(BackupData);
# 1155 "../30_Bsw/MicroTestLib/Static/SramEccTst.c"
        SramEccTst_lDummyRamAccess(MemIdx);




        if (((boolean)1 == SramEccTst_lFuncDevMtuTc008Exists()) &&
            ((boolean)1 ==
             SramEccTst_ConfigRoot[ParamSetIndex].BackupMemory))
        {
          ResultTmp = SramEccTst_lCalcMemoryCrc(MemIdx,
                                                &(BackupData->MemContentCrc));
        }


        else
        {
          ResultTmp = (0x1601ffU);
        }



        if ((0x1601ffU) != ResultTmp)
        {
          Result = ResultTmp;
        }
        else
        {

          ResultTmp = SramEccTst_lEnableMbist(MemIdx, &(BackupData->MemTest));
          if ((0x1601ffU) != ResultTmp)
          {
            Result = ResultTmp;
          }
          else
          {
            BackupData->MBistEnable = (boolean)1;

            BackupData->Eccs = Mc->ECCS.U;


            BackupData->Range = Mc->RANGE.U;


            if (((0xFFU) !=
                 SramEccTst_kMemDef[MemIdx]->SmuNr_SbeCorr)
                && ((BackupData->Eccs & (uint16)((uint32)(0x1u) <<
                                       (uint32)(3u))) == 0U))
            {
              Result = (0x161209U);
            }



            else
            {

              Result = SramEccTst_lBackupMemContent(MemIdx,
                                                    ParamSetIndex,
                                                    BackupData);
            }



          }
        }



    }
  }


  BackupData->Crc = SramEccTst_lCalcBackupCrc(MemIdx, BackupData);

  return Result;
}
# 1262 "../30_Bsw/MicroTestLib/Static/SramEccTst.c"
static Sl_TstRsltType SramEccTst_lInitSmuAlarms
(
  const uint8 MemIdx,
  SramEccTst_BackupDataType* const BackupData
)
{
  Sl_TstRsltType Result = (0x16010aU);
  Sl_TstRsltType ResultTmp;
  Std_ReturnType SmuResult1;
  Std_ReturnType SmuResult2;
  Std_ReturnType SmuResult3;
  Std_ReturnType SmuResult4;
  Std_ReturnType SmuResult5;


  ResultTmp = SramEccTst_lBackupSmuAlmActions(MemIdx, BackupData);
  if ((0x1601ffU) != ResultTmp)
  {
    Result = ResultTmp;
  }
  else
  {

    ResultTmp = SramEccTst_lCheckSmuAlarms(MemIdx);
    if ((0x1601ffU) != ResultTmp)
    {
      Result = ResultTmp;
    }
    else
    {

      if ((0xFFU) == SramEccTst_kMemDef[MemIdx]->SmuNr_SbeCorr)
      {
        SmuResult1 = 0U;
      }

      else
      {
        SmuResult1 = Smu_SetAlarmAction
            (SramEccTst_kMemDef[MemIdx]->SmuAlarmGrp,
             SramEccTst_kMemDef[MemIdx]->SmuNr_SbeCorr,
             ((Smu_AlarmActionType)0x00U)
            );
      }

      SmuResult2 = Smu_SetAlarmAction
          (SramEccTst_kMemDef[MemIdx]->SmuAlarmGrp,
           SramEccTst_kMemDef[MemIdx]->SmuNr_UcErr,
           ((Smu_AlarmActionType)0x00U)
          );
      SmuResult3 = Smu_SetAlarmAction
          (SramEccTst_kMemDef[MemIdx]->SmuAlarmGrp,
           SramEccTst_kMemDef[MemIdx]->SmuNr_AdrErr,
           ((Smu_AlarmActionType)0x00U)
          );
      SmuResult4 = Smu_SetAlarmAction
          (SramEccTst_kMemDef[MemIdx]->SmuAlarmGrp,
           SramEccTst_kMemDef[MemIdx]->SmuNr_AdrBufFull,
           ((Smu_AlarmActionType)0x00U)
          );

      if (( 14U ) == MemIdx)
      {
        SmuResult5 = Smu_SetAlarmAction
            (SramEccTst_kMemDef[MemIdx]->SmuAlarmGrp,
             (15U),
             ((Smu_AlarmActionType)0x00U));
      }
      else
      {
        SmuResult5 = 0U;
      }

      if ((0U != SmuResult1) ||
          (0U != SmuResult2) ||
          (0U != SmuResult3) ||
          (0U != SmuResult4) ||
          (0U != SmuResult5)
         )
      {
        Result = (0x160211U);
      }


      else
      {
        Result = (0x1601ffU);
      }


    }
  }

  return Result;
}
# 1387 "../30_Bsw/MicroTestLib/Static/SramEccTst.c"
static Sl_TstRsltType SramEccTst_lRestore
(
  const uint8 MemIdx,
  const SramEccTst_ConfigType* const Config,
  const SramEccTst_BackupDataType* const BackupData
)

{
  Sl_TstRsltType Result = (0x16010aU);
  Sl_TstRsltType ResultTmp;
  Ifx_MC* Mc;
  SramEccTst_WdtContextType WdtContext;
  uint8 Count, RdbflRegCount;

  {if((Config) != 0U) { }}


  if (SramEccTst_lCalcBackupCrc(MemIdx, BackupData) != BackupData->Crc)
  {
    Result = (0x160319U);
  }
  else
  {

    Mc = SramEccTst_lGetMc(MemIdx);

    if (0U == BackupData->GetAlmActionResult)
    {

      ResultTmp = SramEccTst_lRestoreMemContent(MemIdx,
                                                BackupData);

      if ((0x1601ffU) != ResultTmp)
      {
        Result = ResultTmp;
      }


      if (0xFFFFU != BackupData->Eccs)
      {
        SramEccTst_lResetSafetyENDINIT(&WdtContext);
        Mc->ECCS.U = BackupData->Eccs;
        SramEccTst_lSetSafetyENDINIT(&WdtContext);




        Mc->RANGE.U = BackupData->Range;
      }
# 1446 "../30_Bsw/MicroTestLib/Static/SramEccTst.c"
      if ((boolean)1 == BackupData->MBistEnable)
      {
        RdbflRegCount = SramEccTst_lCalcRdbflRegCount(MemIdx);

        for (Count= 0U;Count < RdbflRegCount; Count++)
        {
          Mc->RDBFL[Count].U = (uint16)0U;
        }
      }


      ResultTmp = SramEccTst_lRestoreMbist(MemIdx, BackupData->MemTest);
      if ((0x1601ffU) != ResultTmp)
      {
        Result = ResultTmp;
      }


      if (((boolean)1 == SramEccTst_lFuncDevMtuTc008Exists()) &&
          ((boolean)1 == BackupData->MemBackupValid))
      {
        ResultTmp = SramEccTst_lCheckMemoryCrc(MemIdx,
                                               BackupData->MemContentCrc);
        if ((0x1601ffU) != ResultTmp)
        {
          Result = ResultTmp;
        }

      }




      SramEccTst_lRestoreCaching(BackupData);
# 1490 "../30_Bsw/MicroTestLib/Static/SramEccTst.c"
      ResultTmp = SramEccTst_lRestoreSmuAlarms(MemIdx, BackupData);
      if ((0x1601ffU) != ResultTmp)
      {
        Result = ResultTmp;
      }


      if ((0x16010aU) == Result)
      {
        Result = (0x1601ffU);
      }
    }
    else
    {

      Result = (0x1601ffU);
    }

    if((MemIdx == ( 2U ))||(MemIdx == ( 3U )))
    {

   _dsync(); do { unsigned __newval = (unsigned) ((0U)); __asm__ volatile ("mtcr LO:" "(0x9214)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();



    }
# 1528 "../30_Bsw/MicroTestLib/Static/SramEccTst.c"
 else if(MemIdx == ( 14U ))
 {
      SramEccTst_lResetENDINIT(&WdtContext);
   (*(volatile Ifx_LMU_MEMCON *)0xF8700820u).U&= ~(unsigned_int)((unsigned_int)1U << (unsigned_int)((uint32)(4U)));
   SramEccTst_lSetENDINIT(&WdtContext);
      ((*(volatile Ifx_XBAR_ARBCON *)0xF8700144u)).U |= (unsigned_int)((unsigned_int)(0x1u) <<
                                   (4u));

      (*(volatile Ifx_XBAR_INTSAT *)0xF8700410u).U = (unsigned_int)((unsigned_int)(0x1u) <<
                                   (20u));
 }
    else
    {

    }

  }

  return Result;
}
# 1577 "../30_Bsw/MicroTestLib/Static/SramEccTst.c"
static Sl_TstRsltType SramEccTst_lRestoreSmuAlarms
(
  const uint8 MemIdx,
  const SramEccTst_BackupDataType* const BackupData
)
{
  Sl_TstRsltType Result = (0x16010aU);
  Std_ReturnType SmuResult1;
  Std_ReturnType SmuResult2;
  Std_ReturnType SmuResult3;
  Std_ReturnType SmuResult4;
  Std_ReturnType SmuResult5;


  if ((0xFFU) == SramEccTst_kMemDef[MemIdx]->SmuNr_SbeCorr)
  {

    SmuResult1 = 0U;
  }

  else
  {
    SmuResult1 = Smu_SetAlarmAction
        (SramEccTst_kMemDef[MemIdx]->SmuAlarmGrp,
         SramEccTst_kMemDef[MemIdx]->SmuNr_SbeCorr,
         BackupData->AlmActionBackupSbeCorr
        );
  }

  SmuResult2 = Smu_SetAlarmAction
      (SramEccTst_kMemDef[MemIdx]->SmuAlarmGrp,
       SramEccTst_kMemDef[MemIdx]->SmuNr_UcErr,
       BackupData->AlmActionBackupUcErr
      );
  SmuResult3 = Smu_SetAlarmAction
      (SramEccTst_kMemDef[MemIdx]->SmuAlarmGrp,
       SramEccTst_kMemDef[MemIdx]->SmuNr_AdrErr,
       BackupData->AlmActionBackupAdrErr
      );
  SmuResult4 = Smu_SetAlarmAction
      (SramEccTst_kMemDef[MemIdx]->SmuAlarmGrp,
       SramEccTst_kMemDef[MemIdx]->SmuNr_AdrBufFull,
       BackupData->AlmActionBackupAdrBufFull
      );

  if (( 14U ) == MemIdx)
  {
    SmuResult5 = Smu_SetAlarmAction
        (SramEccTst_kMemDef[MemIdx]->SmuAlarmGrp,
         (15U),
         BackupData->AlmActionBackupLmuEccOnlnMon);
  }
  else
  {
    SmuResult5 = 0U;
  }

      if ((0U != SmuResult1) ||
          (0U != SmuResult2) ||
          (0U != SmuResult3) ||
          (0U != SmuResult4) ||
          (0U != SmuResult5)
         )
  {
    Result = (0x160211U);
  }


  else
  {
    Result = (0x1601ffU);
  }



  return Result;
}
# 1683 "../30_Bsw/MicroTestLib/Static/SramEccTst.c"
static Sl_TstRsltType SramEccTst_lBackupSmuAlmActions
(
  const uint8 MemIdx,
  SramEccTst_BackupDataType* const BackupData
)
{
  Sl_TstRsltType Result = (0x16010aU);
  Std_ReturnType SmuResult1;
  Std_ReturnType SmuResult2;
  Std_ReturnType SmuResult3;
  Std_ReturnType SmuResult4;
  Std_ReturnType SmuResult5;




  Smu_FSPActionType SmuAlarmFspAction = 0U;


  if ((0xFFU) == SramEccTst_kMemDef[MemIdx]->SmuNr_SbeCorr)
  {

    SmuResult1 = 0U;
  }
  else
  {
    SmuResult1 = Smu_GetAlarmAction
        (SramEccTst_kMemDef[MemIdx]->SmuAlarmGrp,
         SramEccTst_kMemDef[MemIdx]->SmuNr_SbeCorr,
         &BackupData->AlmActionBackupSbeCorr,
         &SmuAlarmFspAction
        );
  }
  SmuResult2 = Smu_GetAlarmAction
      (SramEccTst_kMemDef[MemIdx]->SmuAlarmGrp,
       SramEccTst_kMemDef[MemIdx]->SmuNr_UcErr,
       &BackupData->AlmActionBackupUcErr,
       &SmuAlarmFspAction
      );
  SmuResult3 = Smu_GetAlarmAction
      (SramEccTst_kMemDef[MemIdx]->SmuAlarmGrp,
       SramEccTst_kMemDef[MemIdx]->SmuNr_AdrErr,
       &BackupData->AlmActionBackupAdrErr,
       &SmuAlarmFspAction
      );
  SmuResult4 = Smu_GetAlarmAction
      (SramEccTst_kMemDef[MemIdx]->SmuAlarmGrp,
       SramEccTst_kMemDef[MemIdx]->SmuNr_AdrBufFull,
       &BackupData->AlmActionBackupAdrBufFull,
       &SmuAlarmFspAction);


  if (( 14U ) == MemIdx)
  {
    SmuResult5 = Smu_GetAlarmAction
        (SramEccTst_kMemDef[MemIdx]->SmuAlarmGrp,
         (15U),
         &BackupData->AlmActionBackupLmuEccOnlnMon,
         &SmuAlarmFspAction);
  }
  else
  {
    SmuResult5 = 0U;
  }

      if ((0U != SmuResult1) ||
          (0U != SmuResult2) ||
          (0U != SmuResult3) ||
          (0U != SmuResult4) ||
          (0U != SmuResult5)
         )

  {
    BackupData->GetAlmActionResult = 1U;
    Result = (0x160210U);
  }


  else
  {
    BackupData->GetAlmActionResult = 0U;
    Result = (0x1601ffU);
  }



  return Result;
}
# 1800 "../30_Bsw/MicroTestLib/Static/SramEccTst.c"
static Sl_TstRsltType SramEccTst_lCountClearUnexpAlm
(
  const uint8 MemIdx
)
{
  Sl_TstRsltType Result = (0x16010aU);
  Std_ReturnType SmuResult;
  Std_ReturnType SmuResult1 = 1U;
  Std_ReturnType SmuResult2 = 1U;
  Std_ReturnType SmuResult3 = 1U;
  Std_ReturnType SmuResult4 = 1U;
  uint32 AlarmStatus;


  if (SramEccTst_UnexpAlm.Crc != SramEccTst_lCalcAlmCounterCrc())
  {
    Result = (0x160319U);
  }
  else
  {

    SmuResult = Smu_GetAlarmStatus
        (SramEccTst_kMemDef[MemIdx]->SmuAlarmGrp,
         &AlarmStatus
        );
    if (0U != SmuResult)
    {
      Result = (0x16020eU);
    }
    else
    {

      if (((0xFFU) != SramEccTst_kMemDef[MemIdx]->SmuNr_SbeCorr) &&
          ((AlarmStatus &
            ((uint32)1U << SramEccTst_kMemDef[MemIdx]->SmuNr_SbeCorr)) > 0U))
      {
        SramEccTst_UnexpAlm.Correctable++;
        SmuResult1 = Smu_ClearAlarmStatus
            (SramEccTst_kMemDef[MemIdx]->SmuAlarmGrp,
             SramEccTst_kMemDef[MemIdx]->SmuNr_SbeCorr);
      }


      else
      {
        SmuResult1 = 0U;
      }




      if ((AlarmStatus &
           ((uint32)1U << SramEccTst_kMemDef[MemIdx]->SmuNr_UcErr)) > 0U)
      {
        SramEccTst_UnexpAlm.Uncorrectable++;
        SmuResult2 = Smu_ClearAlarmStatus
            (SramEccTst_kMemDef[MemIdx]->SmuAlarmGrp,
             SramEccTst_kMemDef[MemIdx]->SmuNr_UcErr);
      }

      else
      {
        SmuResult2 = 0U;
      }



      if ((AlarmStatus &
           ((uint32)1U << SramEccTst_kMemDef[MemIdx]->SmuNr_AdrErr)) > 0U)
      {
        SramEccTst_UnexpAlm.Address++;
        SmuResult3 = Smu_ClearAlarmStatus
            (SramEccTst_kMemDef[MemIdx]->SmuAlarmGrp,
             SramEccTst_kMemDef[MemIdx]->SmuNr_AdrErr);
      }

      else
      {
        SmuResult3 = 0U;
      }



      if ((AlarmStatus &
           ((uint32)1U << SramEccTst_kMemDef[MemIdx]->SmuNr_AdrBufFull)) > 0U)
      {
        SramEccTst_UnexpAlm.ErrTrkOvf++;
        SmuResult4 = Smu_ClearAlarmStatus
            (SramEccTst_kMemDef[MemIdx]->SmuAlarmGrp,
             SramEccTst_kMemDef[MemIdx]->SmuNr_AdrBufFull);
      }

      else
      {
        SmuResult4 = 0U;
      }


      if ((0U != SmuResult1) || (0U != SmuResult2) ||
          (0U != SmuResult3) || (0U != SmuResult4))
      {
        Result = (0x16020fU);
      }

      else
      {
        Result = (0x1601ffU);
      }

    }


    SramEccTst_UnexpAlm.Crc = SramEccTst_lCalcAlmCounterCrc();
  }

  return Result;
}
# 1944 "../30_Bsw/MicroTestLib/Static/SramEccTst.c"
static Sl_TstRsltType SramEccTst_lCheckSmuAlarms
(
  const uint8 MemIdx
)
{
  Sl_TstRsltType Result = (0x16010aU);
  Sl_TstRsltType ResultTmp;



  ResultTmp = SramEccTst_lCountClearUnexpAlm(MemIdx);
  if ((0x1601ffU) != ResultTmp)
  {
    Result = ResultTmp;
  }
  else
  {



    Result = (0x1601ffU);

    if (( 14U ) == MemIdx)
    {
      Std_ReturnType SmuResult;
      uint32 AlarmStatus;
      SmuResult = Smu_GetAlarmStatus(SramEccTst_kMemDef[MemIdx]->
                                     SmuAlarmGrp,
                                     &AlarmStatus);
      if (0U != SmuResult)
      {
        Result = (0x16020eU);
      }
      else
      {
        if ((AlarmStatus & ((uint32)1U << (15U))) > 0U)
        {
          Result = (0x16020dU);
        }
        else
        {
          Result = (0x1601ffU);
        }
      }
    }

  }

  return Result;
}
# 2346 "../30_Bsw/MicroTestLib/Static/SramEccTst.c"
static uint8 SramEccTst_lCalcRdbflRegCount
(
  const uint8 MemIdx
)
{
  uint16 Result;

  Result = ((uint16)SramEccTst_kMemDef[MemIdx]->NrOfDataBits +
            (uint16)SramEccTst_kMemDef[MemIdx]->NrOfEccBits) *
           ((uint16)SramEccTst_kMemDef[MemIdx]->NrOfMemBlocks *
            (uint16)SramEccTst_kMemDef[MemIdx]->NrOfMultiplexers);
  Result += ((16U) - 1U);
  Result /= (16U);

  return (uint8)Result;
}
# 2388 "../30_Bsw/MicroTestLib/Static/SramEccTst.c"
static void SramEccTst_lCreateZeroPattern
(
  const uint8 MemIdx
)
{
  uint8 i;
  uint8 RdbflRegCount;
  uint8 RdbflRegIdx;
  uint8 RdbflBitIdx;
  uint16 BitIdx;
  Ifx_MC* Mc;


  RdbflRegCount = SramEccTst_lCalcRdbflRegCount(MemIdx);


  Mc = SramEccTst_lGetMc(MemIdx);


  for (i = 0U; i < RdbflRegCount; i++)
  {
    Mc->RDBFL[i].U = (uint16)0U;
  }


  for (i = 0U; i < (SramEccTst_kMemDef[MemIdx]->NrOfMemBlocks *
                    SramEccTst_kMemDef[MemIdx]->NrOfMultiplexers); i++)
  {

    BitIdx = ((uint16)SramEccTst_kMemDef[MemIdx]->NrOfDataBits +
              (uint16)SramEccTst_kMemDef[MemIdx]->NrOfEccBits) * (uint16)i;
    BitIdx += (uint16)SramEccTst_kMemDef[MemIdx]->NrOfDataBits;
    BitIdx += (uint16)SramEccTst_kMemDef[MemIdx]->EccInvPos0;


    RdbflRegIdx = (uint8)(BitIdx / (16U));

    RdbflBitIdx = (uint8)(BitIdx & ((uint16)(16U) - (uint16)1U));


    Mc->RDBFL[RdbflRegIdx].U |= (uint16)((uint32)1U << RdbflBitIdx);


    BitIdx -= (uint16)SramEccTst_kMemDef[MemIdx]->EccInvPos0;
    BitIdx += (uint16)SramEccTst_kMemDef[MemIdx]->EccInvPos1;
    RdbflRegIdx = (uint8)(BitIdx / (16U));
    RdbflBitIdx = (uint8)(BitIdx & ((uint16)(16U) - (uint16)1U));


    Mc->RDBFL[RdbflRegIdx].U |= (uint16)((uint32)1U << RdbflBitIdx);
  }

}
# 2474 "../30_Bsw/MicroTestLib/Static/SramEccTst.c"
static __inline__ void SramEccTst_lFlipBits
(
  const uint8 MemIdx,
  const uint8 WordIdx,
  const uint8 BitIdx,
  const uint8 BitCount
)
{
  uint8 i;
  uint8 RdbflRegIdx;
  uint16 RdbflBitIdx;
  uint16 AbsBitIdx;
  Ifx_MC* Mc;


  Mc = SramEccTst_lGetMc(MemIdx);


  AbsBitIdx = ((uint16)SramEccTst_kMemDef[MemIdx]->NrOfDataBits +
               (uint16)SramEccTst_kMemDef[MemIdx]->NrOfEccBits) *
              (uint16)WordIdx;
  AbsBitIdx += BitIdx;


  RdbflRegIdx = (uint8)(AbsBitIdx / (uint16)(16U));

  RdbflBitIdx = (AbsBitIdx & ((uint16)(16U) - (uint16)1U));


  for (i = 0U; i < BitCount; i++)
  {
    Mc->RDBFL[RdbflRegIdx].U ^= (uint16)((uint32)1U << RdbflBitIdx);
    RdbflBitIdx++;
    if (RdbflBitIdx == (16U))

    {
      RdbflRegIdx++;
      RdbflBitIdx = 0U;
    }
  }
}
# 2542 "../30_Bsw/MicroTestLib/Static/SramEccTst.c"
static void SramEccTst_lReadWordline
(
  const uint8 MemIdx,
  const uint16 WordlineIdx
)
{
  Ifx_MC* Mc;
  SramEccTst_WdtContextType WdtContext;


  Mc = SramEccTst_lGetMc(MemIdx);


  Mc->RANGE.U = (WordlineIdx & (uint16)(0x7fffu));


  Mc->CONFIG0.U = (uint16)(((uint32)(1U) <<
                            (uint32)(12u)) |
                           ((uint32)(1U) <<
                            (uint32)(0u)));
  Mc->CONFIG1.U = 0U;


  SramEccTst_lResetSafetyENDINIT(&WdtContext);

  Mc->MCONTROL.U = (uint16)(((uint32)(0x1u) <<
                             (uint32)(3u)) |
                            ((uint32)(0x1u) <<
                             (uint32)(0u))|
                            ((uint32)(1U) <<
                             (uint32)(14U)));
  Mc->MCONTROL.U = (uint16)(((uint32)(0x1u) <<
                            (uint32)(3u))|
                            ((uint32)(1U) <<
                             (uint32)(14U)));
  SramEccTst_lSetSafetyENDINIT(&WdtContext);
}
# 2616 "../30_Bsw/MicroTestLib/Static/SramEccTst.c"
static Sl_TstRsltType SramEccTst_lReadWordlineSafe
(
  const uint8 MemIdx,
  const uint16 WordlineIdx
)
{
  Ifx_MC* Mc;
  SramEccTst_WdtContextType WdtContext;
  Sl_TstRsltType Result = (0x16010aU);


  Mc = SramEccTst_lGetMc(MemIdx);


  Mc->RANGE.U = (WordlineIdx & (uint16)(0x7fffu));


  Mc->CONFIG0.U = (uint16)(((uint32)(1U) <<
                            (uint32)(12u)) |
                           ((uint32)(1U) <<
                            (uint32)(0u)));
  Mc->CONFIG1.U = 0U;


  SramEccTst_lResetSafetyENDINIT(&WdtContext);

  Mc->MCONTROL.U = (uint16)(((uint32)(0x1u) <<
                             (uint32)(3u)) |
                            ((uint32)(0x1u) <<
                             (uint32)(0u))|
                            ((uint32)(1U) <<
                             (uint32)(14U)));




  if ((Mc->MSTATUS.U & (uint16)(((uint32)(0x1u) <<
                                (uint32)(0u)))) > (uint16)0U)
  {
    Result = (0x16120cU);
  }



  Mc->MCONTROL.U = (uint16)(((uint32)(0x1u) <<
                            (uint32)(3u))|
                            ((uint32)(1U) <<
                             (uint32)(14U)));
  SramEccTst_lSetSafetyENDINIT(&WdtContext);


  if ((Mc->MSTATUS.U & (uint16)(((uint32)(0x1u) <<
                               (uint32)(0u)))) == (uint16)0U)
  {
    Result = (0x16120bU);
  }

  else
  {
    if ((0x16010aU) == Result)
    {
      Result = (0x1601ffU);
    }
  }


  return Result;
}
# 2711 "../30_Bsw/MicroTestLib/Static/SramEccTst.c"
static void SramEccTst_lWriteWordline
(
  const uint8 MemIdx,
  const uint16 WordlineIdx
)
{
  Ifx_MC* Mc;
  SramEccTst_WdtContextType WdtContext;


  Mc = SramEccTst_lGetMc(MemIdx);


  Mc->RANGE.U = (WordlineIdx & (uint16)(0x7fffu));


  Mc->CONFIG0.U = (uint16)(((uint32)(1U) <<
                            (uint32)(12u)) |
                           ((uint32)(0U) <<
                            (uint32)(0u)));
  Mc->CONFIG1.U = 0U;


  SramEccTst_lResetSafetyENDINIT(&WdtContext);
  Mc->MCONTROL.U = (uint16)(((uint32)(0x1u) <<
                             (uint32)(3u)) |
                            ((uint32)(0x1u) <<
                             (uint32)(0u))|
                             ((uint32)(1U) <<
                             (uint32)(14U)));
  Mc->MCONTROL.U = (uint16)(((uint32)(0x1u) <<
                            (uint32)(3u))|
                            ((uint32)(1U) <<
                             (uint32)(14U)));

  SramEccTst_lSetSafetyENDINIT(&WdtContext);
}
# 2784 "../30_Bsw/MicroTestLib/Static/SramEccTst.c"
static Sl_TstRsltType SramEccTst_lWriteWordlineSafe
(
  const uint8 MemIdx,
  const uint16 WordlineIdx
)
{
  Ifx_MC* Mc;
  SramEccTst_WdtContextType WdtContext;
  Sl_TstRsltType Result = (0x16010aU);


  Mc = SramEccTst_lGetMc(MemIdx);


  Mc->RANGE.U = (WordlineIdx & (uint16)(0x7fffu));


  Mc->CONFIG0.U = (uint16)(((uint32)(1U) <<
                            (uint32)(12u)) |
                           ((uint32)(0U) <<
                            (uint32)(0u)));
  Mc->CONFIG1.U = 0U;


  SramEccTst_lResetSafetyENDINIT(&WdtContext);
  Mc->MCONTROL.U = (uint16)(((uint32)(0x1u) <<
                             (uint32)(3u)) |
                            ((uint32)(0x1u) <<
                             (uint32)(0u))|
                             ((uint32)(1U) <<
                             (uint32)(14U)));




  if ((Mc->MSTATUS.U & (uint16)(((uint32)(0x1u) <<
                                (uint32)(0u)))) > (uint16)0U)
  {
    Result = (0x16120cU);
  }



  Mc->MCONTROL.U = (uint16)(((uint32)(0x1u) <<
                            (uint32)(3u))|
                            ((uint32)(1U) <<
                             (uint32)(14U)));

  SramEccTst_lSetSafetyENDINIT(&WdtContext);


  if ((Mc->MSTATUS.U & (uint16)(((uint32)(0x1u) <<
                               (uint32)(0u)))) == (uint16)0U)
  {
    Result = (0x16120bU);
  }

  else
  {
    if ((0x16010aU) == Result)
    {
      Result = (0x1601ffU);
    }
  }


  return Result;
}
# 2983 "../30_Bsw/MicroTestLib/Static/SramEccTst.c"
static Sl_TstRsltType SramEccTst_lCheckEccLogic
(
  const uint8 MemIdx,
  uint32* const TstSignature
)
{
  Sl_TstRsltType Result = (0x16010aU);
  Sl_TstRsltType ResultTmp;
  Std_ReturnType SmuResult1;
  Std_ReturnType SmuResult2;
  Ifx_MC* Mc;


  Mc = SramEccTst_lGetMc(MemIdx);


  Mc->ECCD.U &= ~(uint16)(((uint32)(0x1u) <<
                           (uint32)(0u)) |
                          ((uint32)(0x1u) <<
                           (uint32)(1u)) |
                          ((uint32)(0x1u) <<
                           (uint32)(2u)) |
                          ((uint32)(0x1u) <<
                           (uint32)(3u)));




  if ((0xFFU) != SramEccTst_kMemDef[MemIdx]->SmuNr_SbeCorr)
  {
    SmuResult1 = SramEccTst_lSmuClearAlarmStatus(
                    SramEccTst_kMemDef[MemIdx]->SmuAlarmGrp,
                    SramEccTst_kMemDef[MemIdx]->SmuNr_SbeCorr);
  }
  else
  {
    SmuResult1 = 0U;
  }
  SmuResult2 = SramEccTst_lSmuClearAlarmStatus(
                  SramEccTst_kMemDef[MemIdx]->SmuAlarmGrp,
                  SramEccTst_kMemDef[MemIdx]->SmuNr_UcErr);
  if ((0U != SmuResult1) || (0U != SmuResult2))
  {
    Result = (0x16020fU);
  }
  else
  {

    ResultTmp = SramEccTst_lChkAddressMon(MemIdx,
                                          TstSignature);
    if ((0x1601ffU) != ResultTmp)
    {
      Result = ResultTmp;
    }
    else
    {

      ResultTmp = SramEccTst_lChkSramMon(MemIdx,
                                         TstSignature);
      if ((0x1601ffU) != ResultTmp)
      {
        Result = ResultTmp;
      }
# 3054 "../30_Bsw/MicroTestLib/Static/SramEccTst.c"
      else
      {
        Result = (0x1601ffU);
      }

    }
  }

  return Result;
}
# 3093 "../30_Bsw/MicroTestLib/Static/SramEccTst.c"
static Sl_TstRsltType SramEccTst_lChkAddressMon
(
    const uint8 MemIdx,
    uint32* const TstSignature
)
{
  Sl_TstRsltType Result = (0x16010aU);
  Sl_TstRsltType ResultTmp;
  uint8 i;
  Ifx_MC* Mc;
  SramEccTst_WdtContextType WdtContext;


  Mc = SramEccTst_lGetMc(MemIdx);




  SramEccTst_lCreateZeroPattern(MemIdx);
  SramEccTst_lWriteWordline(MemIdx, 0U);
  SramEccTst_lWriteWordline(MemIdx, 1U);


  for (i = 0U; (i < (4U)) &&
               ((0x16010aU) == Result); i++)
  {






    SramEccTst_lResetSafetyENDINIT(&WdtContext);
    Mc->ECCS.U &= ~(uint16)((uint32)(0x3u) <<
                            (uint32)(6u));
    Mc->ECCS.U |= (((uint16)i / (uint16)2U) + (uint16)1U) <<
                  (6u);
    SramEccTst_lSetSafetyENDINIT(&WdtContext);


    SramEccTst_lReadWordline(MemIdx, (uint16)i % (uint16)2U);


    ResultTmp = SramEccTst_lWaitForSmuAlarm(
        SramEccTst_kMemDef[MemIdx]->SmuAlarmGrp,
        SramEccTst_kMemDef[MemIdx]->SmuNr_AdrErr,
        TstSignature);
    if ((0x1601ffU) != ResultTmp)
    {
      Result = ResultTmp;
    }


    SramEccTst_lResetSafetyENDINIT(&WdtContext);
    Mc->ECCS.U &= ~(uint16)((uint32)(0x3u) <<
                            (uint32)(6u));
    SramEccTst_lSetSafetyENDINIT(&WdtContext);



    Mc->ECCD.U &= ~(uint16)(((uint32)(0x1u) <<
                             (uint32)(0u)) |
                            ((uint32)(0x1u) <<
                             (uint32)(3u)));
  }



  if ((0x16010aU) == Result)
  {
    Result = (0x1601ffU);
  }

  return Result;
}
# 3199 "../30_Bsw/MicroTestLib/Static/SramEccTst.c"
static Sl_TstRsltType SramEccTst_lChkSramMon
(
  const uint8 MemIdx,
  uint32* const TstSignature
)
{
  Sl_TstRsltType Result = (0x16010aU);
  Sl_TstRsltType ResultTmp;
  uint16 WordlineIdx;
  uint16 ValExpected = 1U;
  Ifx_MC* Mc;
  SramEccTst_WdtContextType WdtContext;


  Mc = SramEccTst_lGetMc(MemIdx);


  WordlineIdx = SramEccTst_kMemDef[MemIdx]->NrOfEtrRegisters;




  Mc->ECCD.U |= (uint16)((uint32)(0x1u) <<
                         (uint32)(4u));

  SramEccTst_lResetSafetyENDINIT(&WdtContext);

  Mc->ECCS.U |= (uint16)((uint32)(0x1u) <<
                         (uint32)(4u));


  Mc->ECCS.U &= ~(uint16)((uint32)(0x3u) <<
                          (uint32)(10u));
  SramEccTst_lSetSafetyENDINIT(&WdtContext);




  ResultTmp = SramEccTst_lChkSramMonCe(MemIdx,
                                       TstSignature,
                                       &ValExpected,
                                       &WordlineIdx);
  if ((0x1601ffU) != ResultTmp)
  {
    Result = ResultTmp;
  }
  else
  {



    ResultTmp = SramEccTst_lChkSramMonUe(MemIdx,
                                         TstSignature,
                                         &ValExpected,
                                         &WordlineIdx);
    if ((0x1601ffU) != ResultTmp)
    {
      Result = ResultTmp;
    }
    else
    {

      Result = SramEccTst_lChkSramMonEov(MemIdx,
                                         TstSignature,
                                         WordlineIdx);
    }
  }





  Mc->ECCD.U &= ~(uint16)(((uint32)(0x1u) <<
                           (uint32)(0u)) |
                          ((uint32)(0x1u) <<
                           (uint32)(1u)) |
                          ((uint32)(0x1u) <<
                           (uint32)(2u)) |
                          ((uint32)(0x1u) <<
                           (uint32)(3u)));


  Mc->ECCD.U |= (uint16)((uint32)(0x1u) <<
                         (uint32)(4u));

  return Result;
}
# 3325 "../30_Bsw/MicroTestLib/Static/SramEccTst.c"
static Sl_TstRsltType SramEccTst_lChkSramMonCe
(
  const uint8 MemIdx,
  uint32* const TstSignature,
  uint16* const ValExpected,
  uint16* const WordlineIdx
)
{
  Sl_TstRsltType Result = (0x16010aU);
  Sl_TstRsltType ResultTmp;
  uint16 Val;
  uint16 Err;
  uint16 WordlineIdxBackup = *WordlineIdx;
  Ifx_MC* Mc;


  Mc = SramEccTst_lGetMc(MemIdx);




  SramEccTst_lFlipBits(MemIdx, 0U, 0U, 1U);
  SramEccTst_lWriteWordline(MemIdx, *WordlineIdx);


  SramEccTst_lReadWordline(MemIdx, *WordlineIdx);




  Val = (Mc->ECCD.U & (uint16)((uint32)(0x1fu) <<
                               (uint32)(5u))) >>
                              (5u);


  *TstSignature = (uint32)(__crc32((unsigned_int)(*TstSignature),(unsigned_int)((uint32)Val)));


  if ((0xFFU) == SramEccTst_kMemDef[MemIdx]->SmuNr_SbeCorr)
  {
    Err = (Mc->ECCD.U & (uint16)((uint32)(0x1u) <<
                                 (uint32)(2u))) >>
                                (2u);
  }
  else
  {
    Err = (Mc->ECCD.U & (uint16)((uint32)(0x1u) <<
                                 (uint32)(1u))) >>
                                (1u);
  }


  Mc->ECCD.U &= ~(uint16)(((uint32)(0x1u) <<
                           (uint32)(0u)) |
                          ((uint32)(0x1u) <<
                           (uint32)(1u)) |
                          ((uint32)(0x1u) <<
                           (uint32)(2u)));


  if ((Val != *ValExpected) || (1U != Err))
  {
    Result = (0x161104U);
  }
  else
  {
    if (SramEccTst_kMemDef[MemIdx]->NrOfEtrRegisters > 1U)
    {



      SramEccTst_lReadWordline(MemIdx, *WordlineIdx);




      Val = (Mc->ECCD.U & (uint16)((uint32)(0x1fu) <<
                                   (uint32)(5u))) >>
                                  (5u);


      *TstSignature = (uint32)(__crc32((unsigned_int)(*TstSignature),(unsigned_int)((uint32)Val)));


      Mc->ECCD.U &= ~(uint16)(((uint32)(0x1u) <<
                               (uint32)(0u)) |
                              ((uint32)(0x1u) <<
                               (uint32)(1u)) |
                              ((uint32)(0x1u) <<
                               (uint32)(2u)));
      if (Val != *ValExpected)
      {
        Result = (0x161105U);
      }
      else
      {
        (*WordlineIdx)--;
        *ValExpected = (uint16)((uint32)(*ValExpected) << 1) + 1U;
      }
    }
    else
    {

      Mc->ECCD.U &= ~(uint16)(((uint32)(0x1u) <<
                               (uint32)(0u)) |
                              ((uint32)(0x1u) <<
                               (uint32)(1u)) |
                              ((uint32)(0x1u) <<
                               (uint32)(2u)));

      Mc->ECCD.U |= (uint16)((uint32)(0x1u) <<
                             (uint32)(4u));
    }
  }


  SramEccTst_lFlipBits(MemIdx, 0U, 0U, 1U);
  SramEccTst_lWriteWordline(MemIdx, WordlineIdxBackup);


  if ((0xFFU) != SramEccTst_kMemDef[MemIdx]->SmuNr_SbeCorr)
  {
    ResultTmp = SramEccTst_lWaitForSmuAlarm(
        SramEccTst_kMemDef[MemIdx]->SmuAlarmGrp,
        SramEccTst_kMemDef[MemIdx]->SmuNr_SbeCorr,
        TstSignature);
    if (((0x1601ffU) != ResultTmp) && ((0x16010aU) == Result))
    {
      Result = ResultTmp;
    }
  }
  else
  {
    ResultTmp = SramEccTst_lWaitForSmuAlarm(
        SramEccTst_kMemDef[MemIdx]->SmuAlarmGrp,
        SramEccTst_kMemDef[MemIdx]->SmuNr_UcErr,
        TstSignature);
    if (((0x1601ffU) != ResultTmp) && ((0x16010aU) == Result))
    {
      Result = ResultTmp;
    }
  }


  if ((0x16010aU) == Result)
  {
    Result = (0x1601ffU);
  }

  return Result;
}
# 3516 "../30_Bsw/MicroTestLib/Static/SramEccTst.c"
static Sl_TstRsltType SramEccTst_lChkSramMonUe
(
  const uint8 MemIdx,
  uint32* const TstSignature,
  uint16* const ValExpected,
  uint16* const WordlineIdx
)
{
  Sl_TstRsltType Result = (0x16010aU);
  Sl_TstRsltType ResultTmp;
  uint16 Val;
  uint16 Err;
  Ifx_MC* Mc;


  Mc = SramEccTst_lGetMc(MemIdx);



  while ((*WordlineIdx) > 0U)
  {



    SramEccTst_lFlipBits(MemIdx, 0U, 0U, 2U);
    SramEccTst_lWriteWordline(MemIdx, *WordlineIdx);


    SramEccTst_lReadWordline(MemIdx, *WordlineIdx);




    Val = (Mc->ECCD.U & (uint16)((uint32)(0x1fu) <<
                                 (uint32)(5u))) >>
                                (5u);
    Err = (Mc->ECCD.U & (uint16)((uint32)(0x1u) <<
                         (uint32)(2u))) >>
                        (2u);


    *TstSignature = (uint32)(__crc32((unsigned_int)(*TstSignature),(unsigned_int)((uint32)Val)));


    Mc->ECCD.U &= ~(uint16)(((uint32)(0x1u) <<
                             (uint32)(0u)) |
                            ((uint32)(0x1u) <<
                             (uint32)(2u)));


    SramEccTst_lFlipBits(MemIdx, 0U, 0U, 2U);
    SramEccTst_lWriteWordline(MemIdx, *WordlineIdx);


    if ((Val != *ValExpected) || (0U == Err))
    {
      Result = (0x161104U);
      (*WordlineIdx) = 0U;
    }
    else
    {
      (*WordlineIdx)--;
      *ValExpected = (uint16)((uint32)(*ValExpected) << 1) + 1U;
    }
  }


  ResultTmp = SramEccTst_lWaitForSmuAlarm(
      SramEccTst_kMemDef[MemIdx]->SmuAlarmGrp,
      SramEccTst_kMemDef[MemIdx]->SmuNr_UcErr,
      TstSignature);
  if (((0x1601ffU) != ResultTmp) && ((0x16010aU) == Result))
  {
    Result = ResultTmp;
  }


  if ((0x16010aU) == Result)
  {
    Result = (0x1601ffU);
  }

  return Result;
}
# 3632 "../30_Bsw/MicroTestLib/Static/SramEccTst.c"
static Sl_TstRsltType SramEccTst_lChkSramMonEov
(
  const uint8 MemIdx,
  uint32* const TstSignature,
  const uint16 WordlineIdx
)
{
  Sl_TstRsltType Result = (0x16010aU);
  Sl_TstRsltType ResultTmp;
  Ifx_MC* Mc;


  Mc = SramEccTst_lGetMc(MemIdx);


  SramEccTst_lFlipBits(MemIdx, 0U, 0U, 2U);
  SramEccTst_lWriteWordline(MemIdx, WordlineIdx);


  SramEccTst_lReadWordline(MemIdx, WordlineIdx);
  ResultTmp = SramEccTst_lWaitForSmuAlarm(
      SramEccTst_kMemDef[MemIdx]->SmuAlarmGrp,
      SramEccTst_kMemDef[MemIdx]->SmuNr_AdrBufFull,
      TstSignature);
  if ((0x1601ffU) != ResultTmp)
  {
    Result = (0x161106U);
  }
  else
  {

    if ((Mc->ECCD.U & (uint16)((uint32)(0x1u) <<
                               (uint32)(15u))) > 0U)
    {
      Result = (0x1601ffU);
    }

    else
    {
      Result = (0x161106U);
    }

  }


  SramEccTst_lFlipBits(MemIdx, 0U, 0U, 2U);
  SramEccTst_lWriteWordline(MemIdx, WordlineIdx);


  if (0U != SramEccTst_lSmuClearAlarmStatus(
                SramEccTst_kMemDef[MemIdx]->SmuAlarmGrp,
                SramEccTst_kMemDef[MemIdx]->SmuNr_UcErr))
  {
    Result = (0x16020fU);
  }


  return Result;
}
# 3767 "../30_Bsw/MicroTestLib/Static/SramEccTst.c"
static void SramEccTst_lDisableCaching
(
  SramEccTst_BackupDataType* const BackupData
)
{
  uint32 Temp;
  SramEccTst_WdtContextType WdtContext;

  SramEccTst_lResetENDINIT(&WdtContext);
  Temp = (uint32)((__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "(0x920C)" : "=d" (__res) :: "memory"); __res; })));


  BackupData->CpuCacheBypass = (uint8)
  ((Temp & ((uint32)(0x1u) <<
           (uint32)(1u))) >>
                   (1u));


   Temp |= (uint32)(0x1u) <<
           (uint32)(1u);
   _dsync(); do { unsigned __newval = (unsigned) ((Temp)); __asm__ volatile ("mtcr LO:" "(0x920C)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
   SramEccTst_lSetENDINIT(&WdtContext);

}
# 3820 "../30_Bsw/MicroTestLib/Static/SramEccTst.c"
static void SramEccTst_lRestoreCaching
(
  const SramEccTst_BackupDataType* const BackupData
)
{
  uint32 Temp;
  SramEccTst_WdtContextType WdtContext;


  Temp = (uint32)((__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "(0x9204)" : "=d" (__res) :: "memory"); __res; })));
  Temp |= (uint32)(0x1u) <<
          (uint32)(0u);
  _dsync(); do { unsigned __newval = (unsigned) ((Temp)); __asm__ volatile ("mtcr LO:" "(0x9204)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();


  if (0U == BackupData->CpuCacheBypass)
  {
    SramEccTst_lResetENDINIT(&WdtContext);
    Temp = (uint32)((__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "(0x920C)" : "=d" (__res) :: "memory"); __res; })));
    Temp &= ~((uint32)(0x1u) <<
    (uint32)(1u));
    _dsync(); do { unsigned __newval = (unsigned) ((Temp)); __asm__ volatile ("mtcr LO:" "(0x920C)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
    SramEccTst_lSetENDINIT(&WdtContext);
  }

 }
# 4055 "../30_Bsw/MicroTestLib/Static/SramEccTst.c"
static void SramEccTst_lDummyRamAccess
(
  const uint8 MemIdx
)
{
  volatile uint32 Dummy = 0U;

  {if((Dummy) != 0U) { }}

  switch(MemIdx)
  {
    case ( 0U ):

    _dsync();
    Dummy = *(uint32*)((0x70000000U));
    break;

    case ( 2U ):

    _dsync();
    Dummy = *(uint32*)((0x70100000U));
    break;
# 4124 "../30_Bsw/MicroTestLib/Static/SramEccTst.c"
    default:

    break;
  }
}
# 4160 "../30_Bsw/MicroTestLib/Static/SramEccTst.c"
static Sl_TstRsltType SramEccTst_lEnableMbist
(
  const uint8 MemIdx,
  uint32* const MemTestBackup
)
{
  uint32 Timeout;
  Sl_TstRsltType Result = (0x16010aU);
  volatile uint32* MemTestPtr;
  volatile uint32* MemStatPtr;
  uint32 BitMask;
  SramEccTst_WdtContextType WdtContext;
  uint32 Status;
  uint8 McIdx;


  McIdx = SramEccTst_kMcTable[MemIdx];


  if (McIdx < 32U)
  {
    MemTestPtr = (volatile uint32*)(volatile void *)&(*(volatile Ifx_MTU_MEMTEST0 *)0xF0060010u).U;
    MemStatPtr = (volatile uint32*)(volatile void *)&(*(volatile Ifx_MTU_MEMSTAT0 *)0xF0060038u).U;
    BitMask = (uint32)((uint32)1U << McIdx);
  }
  else if (McIdx < 64U)

  {
    MemTestPtr = (volatile uint32*)(volatile void *)&(*(volatile Ifx_MTU_MEMTEST1 *)0xF0060014u).U;
    MemStatPtr = (volatile uint32*)(volatile void *)&(*(volatile Ifx_MTU_MEMSTAT1 *)0xF006003Cu).U;
    BitMask = (uint32)((uint32)1U << (McIdx - 32U));
  }
  else if (McIdx < ( 88U ))
  {
    MemTestPtr = (volatile uint32*)(volatile void *)&(*(volatile Ifx_MTU_MEMTEST2 *)0xF0060018u).U;
    MemStatPtr = (volatile uint32*)(volatile void *)&(*(volatile Ifx_MTU_MEMSTAT2 *)0xF0060040u).U;
    BitMask = (uint32)((uint32)1U << (McIdx - 64U));
  }
  else
  {
    Result = (0x160102U);


    MemTestPtr = 0U;
    MemStatPtr = 0U;
    BitMask = 0U;
  }

  if ((0x16010aU) == Result)
  {

    *MemTestBackup = *MemTestPtr & BitMask;


    SramEccTst_lResetSafetyENDINIT(&WdtContext);
    *MemTestPtr |= BitMask;
    SramEccTst_lSetSafetyENDINIT(&WdtContext);


    Timeout = 0U;
    do
    {
      Timeout++;
      Status = (*MemStatPtr) & BitMask;
    } while ((Timeout < (0x00008000U)) && (Status > 0U));


    if (((*MemStatPtr) & BitMask) > 0U)
    {

      Result = (0x161001U);

      SramEccTst_lResetSafetyENDINIT(&WdtContext);
      *MemTestPtr &= ~BitMask;
      SramEccTst_lSetSafetyENDINIT(&WdtContext);
    }
    else
    {
      Result = (0x1601ffU);
    }
  }

  return Result;
}
# 4276 "../30_Bsw/MicroTestLib/Static/SramEccTst.c"
static Sl_TstRsltType SramEccTst_lRestoreMbist
(
  const uint8 MemIdx,
  const uint32 MemTestBackup
)
{
  uint32 Timeout;
  Sl_TstRsltType Result = (0x16010aU);
  volatile uint32* MemTestPtr;
  volatile uint32* MemStatPtr;
  uint32 BitMask;
  SramEccTst_WdtContextType WdtContext;
  uint32 Status;
  uint8 McIdx;



  if (0U == MemTestBackup)
  {

    McIdx = SramEccTst_kMcTable[MemIdx];


    if (McIdx < 32U)
    {
      MemTestPtr = (volatile uint32*)(volatile void *)&(*(volatile Ifx_MTU_MEMTEST0 *)0xF0060010u).U;
      MemStatPtr = (volatile uint32*)(volatile void *)&(*(volatile Ifx_MTU_MEMSTAT0 *)0xF0060038u).U;
      BitMask = (uint32)((uint32)1U << McIdx);
    }
    else if (McIdx < 64U)
    {
      MemTestPtr = (volatile uint32*)(volatile void *)&(*(volatile Ifx_MTU_MEMTEST1 *)0xF0060014u).U;
      MemStatPtr = (volatile uint32*)(volatile void *)&(*(volatile Ifx_MTU_MEMSTAT1 *)0xF006003Cu).U;
      BitMask = (uint32)((uint32)1U << (McIdx - 32U));
    }
    else if (McIdx < ( 88U ))
    {
      MemTestPtr = (volatile uint32*)(volatile void *)&(*(volatile Ifx_MTU_MEMTEST2 *)0xF0060018u).U;
      MemStatPtr = (volatile uint32*)(volatile void *)&(*(volatile Ifx_MTU_MEMSTAT2 *)0xF0060040u).U;
      BitMask = (uint32)((uint32)1U << (McIdx - 64U));
    }
    else
    {
      Result = (0x160102U);


      MemTestPtr = 0U;
      MemStatPtr = 0U;
      BitMask = 0U;
    }

    if ((0x16010aU) == Result)
    {

      SramEccTst_lResetSafetyENDINIT(&WdtContext);
      *MemTestPtr &= ~BitMask;
      SramEccTst_lSetSafetyENDINIT(&WdtContext);


      Timeout = 0U;
      do
      {
        Timeout++;
        Status = (*MemStatPtr) & BitMask;
      } while ((Timeout < (0x00008000U)) && (Status > 0U));


      if ((*MemStatPtr & BitMask) > 0U)
      {

        Result = (0x161001U);
      }
      else
      {
# 4448 "../30_Bsw/MicroTestLib/Static/SramEccTst.c"
        Result = (0x1601ffU);
      }

    }
  }
  else
  {

    Result = (0x1601ffU);
  }

  return Result;
}
# 4491 "../30_Bsw/MicroTestLib/Static/SramEccTst.c"
static Sl_TstRsltType SramEccTst_lWaitForSmuAlarm
(
  const uint8 SmuGrp,
  const uint8 SmuAlarmNr,
  uint32* const TstSignature
)
{
  Sl_TstRsltType Result = (0x16010aU);
  uint32 AlarmStatus = 0U;
  uint32 Timeout = (2000U);


  while ((Timeout > 0U) &&
         (0U == (((uint32)1U << SmuAlarmNr) & AlarmStatus)))
  {
    Timeout--;
    if (0U != Smu_GetAlarmStatus(SmuGrp, &AlarmStatus))
    {
      AlarmStatus = 0U;
      Timeout = 0U;
      Result = (0x16020eU);
    }
  }



  *TstSignature = (uint32)(__crc32((unsigned_int)(*TstSignature),(unsigned_int)(AlarmStatus & ((uint32)1U << SmuAlarmNr))))
                                                                 ;


  if (0U == (((uint32)1U << SmuAlarmNr) & AlarmStatus))
  {
    if ((0x16010aU) == Result)
    {
      Result = (0x16020dU);
    }
  }
  else
  {

    if (0U != SramEccTst_lSmuClearAlarmStatus(SmuGrp, SmuAlarmNr))
    {
      Result = (0x16020fU);
    }
    else
    {
      Result = (0x1601ffU);
    }
  }

  return Result;
}
# 4580 "../30_Bsw/MicroTestLib/Static/SramEccTst.c"
static Sl_TstRsltType SramEccTst_lBackupMemContent
(
  const uint8 MemIdx,
  const Sl_ParamSetType ParamSetIndex,
  SramEccTst_BackupDataType* const BackupData
)
{
  Sl_TstRsltType Result = (0x16010aU);
  Sl_TstRsltType ResultTmp;
  uint8 RdbflRegIdx;
  uint8 RdbflRegCount;
  uint16 WordlineIdx;
  uint16 WordlineCount;
  Ifx_MC* Mc;
  boolean FuncDevMtuTc008Exists;

  if ((boolean)1 == SramEccTst_ConfigRoot[ParamSetIndex].BackupMemory)
  {

    Mc = SramEccTst_lGetMc(MemIdx);







    WordlineCount = (uint16)SramEccTst_kMemDef[MemIdx]->NrOfEtrRegisters +
                    (uint16)1U;
    if ((2U) > WordlineCount)

    {
      WordlineCount = (2U);
    }


    if (WordlineCount > (6U))

    {
      Result = (0x160104U);
    }
    else
    {

      RdbflRegCount = SramEccTst_lCalcRdbflRegCount(MemIdx);


      FuncDevMtuTc008Exists = SramEccTst_lFuncDevMtuTc008Exists();


      for (WordlineIdx = 0U;
           ((WordlineIdx < WordlineCount) && ((0x16010aU) == Result));
           WordlineIdx++)
      {



        if ((boolean)0 == FuncDevMtuTc008Exists)
        {

          ResultTmp = SramEccTst_lReadWordlineSafe(MemIdx, WordlineIdx);
          if ((0x1601ffU) != ResultTmp)
          {
            Result = ResultTmp;
          }
        }
        else
        {

          SramEccTst_lReadWordline(MemIdx, WordlineIdx);
        }

        if ((0x16010aU) == Result)
        {
          for (RdbflRegIdx = 0U; RdbflRegIdx < RdbflRegCount; RdbflRegIdx++)
          {
            BackupData->MemContentBackup[(WordlineIdx * RdbflRegCount) +
                                         RdbflRegIdx] = Mc->RDBFL[RdbflRegIdx].U;
          }

        }
      }



      if ((0x16010aU) == Result)
      {

        BackupData->MemBackupValid = (boolean)1;


        Result = (0x1601ffU);
      }
    }
  }
  else
  {

    Result = (0x1601ffU);
  }

  return Result;
}
# 4720 "../30_Bsw/MicroTestLib/Static/SramEccTst.c"
static Sl_TstRsltType SramEccTst_lRestoreMemContent
(
  const uint8 MemIdx,
  const SramEccTst_BackupDataType* const BackupData
)
{
  Sl_TstRsltType Result = (0x16010aU);
  Sl_TstRsltType ResultTmp;
  uint8 RdbflRegIdx;
  uint8 RdbflRegCount;
  uint16 WordlineIdx;
  uint16 WordlineCount;
  Ifx_MC* Mc;
  boolean FuncDevMtuTc008Exists;

  if ((boolean)1 == BackupData->MemBackupValid)
  {

    Mc = SramEccTst_lGetMc(MemIdx);







    WordlineCount = (uint16)SramEccTst_kMemDef[MemIdx]->NrOfEtrRegisters +
                    (uint16)1U;
    if ((2U) > WordlineCount)
    {
      WordlineCount = (2U);
    }


    if (WordlineCount > (6U))
    {
      Result = (0x160104U);
    }
    else
    {

      RdbflRegCount = SramEccTst_lCalcRdbflRegCount(MemIdx);


      FuncDevMtuTc008Exists = SramEccTst_lFuncDevMtuTc008Exists();


      for (WordlineIdx = 0U;
           ((WordlineIdx < WordlineCount) && ((0x16010aU) == Result));
           WordlineIdx++)
      {
        for (RdbflRegIdx = 0U; RdbflRegIdx < RdbflRegCount; RdbflRegIdx++)
        {
          Mc->RDBFL[RdbflRegIdx].U = BackupData->MemContentBackup[
                      (WordlineIdx * RdbflRegCount) + RdbflRegIdx];
        }






        if ((boolean)0 == FuncDevMtuTc008Exists)
        {

          ResultTmp = SramEccTst_lWriteWordlineSafe(MemIdx, WordlineIdx);
          if ((0x1601ffU) != ResultTmp)
          {
            Result = ResultTmp;
          }
        }
        else
        {

          SramEccTst_lWriteWordline(MemIdx, WordlineIdx);
        }
      }



      if ((0x16010aU) == Result)
      {
        Result = (0x1601ffU);
      }
    }
  }
  else
  {

    Result = (0x1601ffU);
  }

  return Result;
}
# 4846 "../30_Bsw/MicroTestLib/Static/SramEccTst.c"
static Sl_TstRsltType SramEccTst_lCalcMemoryCrc
(
  const uint8 MemIdx,
  uint32* const Crc
)
{
  Sl_TstRsltType Result = (0x16010aU);
  uint16 WordlineIdx;
  uint16 WordlineStep = (uint16)1U;
  uint16 WordlineCount;
  uint32 WordIdx;
  uint32 WordsPerWordline;
  uint32 MemoryWordIdx;


  *Crc = 0U;


  if (MemIdx >= ((uint8)15U))

  {
    Result = (0x160102U);
  }
  else
  {

    if ((uint32*)((void *)0) == SramEccTst_SramBaseAddrList[MemIdx])
    {
      Result = (0x1601ffU);
    }
    else
    {

      WordsPerWordline = ((uint32)SramEccTst_kMemDef[MemIdx]->NrOfDataBits *
                          (uint32)SramEccTst_kMemDef[MemIdx]->NrOfMemBlocks) *
                         (uint32)SramEccTst_kMemDef[MemIdx]->NrOfMultiplexers;
      if (0U != (WordsPerWordline % ((uint32)32U)))
      {
        Result = (0x160104U);
      }
      else
      {
        WordsPerWordline /= ((uint32)32U);
# 4903 "../30_Bsw/MicroTestLib/Static/SramEccTst.c"
        WordlineCount = (uint16)SramEccTst_kMemDef[MemIdx]->NrOfEtrRegisters +
                        (uint16)1U;
        if ((uint16)(2U) > WordlineCount)

        {
          WordlineCount = (uint16)(2U);
        }


        if (WordlineCount > (uint16)(6U))

        {
          Result = (0x160104U);
        }
        else
        {

          for (WordlineIdx = (uint16)0U;
               WordlineIdx < WordlineCount;
               WordlineIdx += WordlineStep)
          {

            for (WordIdx = 0U; WordIdx < WordsPerWordline; WordIdx++)
            {

              MemoryWordIdx = ((uint32)WordlineIdx * WordsPerWordline) +
                              WordIdx;


              *Crc = (__crc32((unsigned_int)(*Crc),(unsigned_int)(SramEccTst_SramBaseAddrList[MemIdx][MemoryWordIdx])))
                                                                              ;
            }

          }



          Result = (0x1601ffU);
        }
      }
    }
  }

  return Result;
}
# 4983 "../30_Bsw/MicroTestLib/Static/SramEccTst.c"
static Sl_TstRsltType SramEccTst_lCheckMemoryCrc
(
  const uint8 MemIdx,
  const uint32 ExpectedCrc
)
{
  Sl_TstRsltType Result = (0x16010aU);
  Sl_TstRsltType ResultTmp;
  uint32 Crc = 0U;


  ResultTmp = SramEccTst_lCalcMemoryCrc(MemIdx, &Crc);
  if ((0x1601ffU) != ResultTmp)
  {
    Result = ResultTmp;
  }
  else
  {
    if (ExpectedCrc == Crc)
    {
      Result = (0x1601ffU);
    }
    else
    {
      Result = (0x160319U);
    }
  }

  return Result;
}
# 5038 "../30_Bsw/MicroTestLib/Static/SramEccTst.c"
static boolean SramEccTst_lFuncDevMtuTc008Exists
(
  void
)
{
  volatile boolean Result = (boolean)1;
# 5061 "../30_Bsw/MicroTestLib/Static/SramEccTst.c"
  Result = (boolean)0;
# 5099 "../30_Bsw/MicroTestLib/Static/SramEccTst.c"
  return Result;
}
# 5126 "../30_Bsw/MicroTestLib/Static/SramEccTst.c"
static Sl_TstRsltType SramEccTst_lEnableMtuClock
(
    SramEccTst_BackupDataType* const BackupData
)
{
  Sl_TstRsltType Result = (0x161003U);
  uint32 Timeout;
  SramEccTst_WdtContextType WdtContext;


  BackupData->MtuClcDisr = (uint8)((*(volatile Ifx_MTU_CLC *)0xF0060000u).B.DISR);


  SramEccTst_lResetENDINIT(&WdtContext);
  (*(volatile Ifx_MTU_CLC *)0xF0060000u).B.DISR = 0U;
  SramEccTst_lSetENDINIT(&WdtContext);
  Timeout = (0x100U);
  while(((*(volatile Ifx_MTU_CLC *)0xF0060000u).B.DISS > 0U) && (Timeout > 0U))
  {
    Timeout--;
  }
  if ((*(volatile Ifx_MTU_CLC *)0xF0060000u).B.DISS == 0U)
  {
    Result = (0x1601ffU);
  }

  return Result;
}
# 5180 "../30_Bsw/MicroTestLib/Static/SramEccTst.c"
static Sl_TstRsltType SramEccTst_lRestoreMtuClock
(
    const SramEccTst_BackupDataType* const BackupData
)
{
  Sl_TstRsltType Result = (0x161003U);
  uint32 Timeout;
  SramEccTst_WdtContextType WdtContext;


  if (BackupData->MtuClcDisr > 0U)
  {

    SramEccTst_lResetENDINIT(&WdtContext);
    (*(volatile Ifx_MTU_CLC *)0xF0060000u).B.DISR = 1U;
    SramEccTst_lSetENDINIT(&WdtContext);
    Timeout = (0x100U);
    while(((*(volatile Ifx_MTU_CLC *)0xF0060000u).B.DISS == 0U) && (Timeout > 0U))
    {
      Timeout--;
    }
    if ((*(volatile Ifx_MTU_CLC *)0xF0060000u).B.DISS > 0U)
    {
      Result = (0x1601ffU);
    }
  }
  else
  {
    Result = (0x1601ffU);
  }

  return Result;
}
# 5240 "../30_Bsw/MicroTestLib/Static/SramEccTst.c"
static __inline__ uint32 SramEccTst_lCpuPwSequence
(
  const sint8 Wdt,
  const uint32 Password
)
{
  uint32 Result = Password & ((0x000000FCu) | (0x0000FF00u));
  sint8 WdtIdx = Wdt + (sint8)1;

  if ((uint8)WdtIdx < ((uint8)(1U)+(uint8)1U))

  {
    volatile Ifx_SCU_WDTCPU_SR* ScuSsrPtr =
        SramEccTst_kScuWdtPtrList[WdtIdx].WdtssrPtr;



    Result = (Result & (0x0000FF00u)) |
              ((~(Result & (0x000000FCu))) &
              (0x000000FCu));


    if (ScuSsrPtr->B.PAS != 0u)
    {



      uint32 lfsr = Result;
      uint32 bit = ((lfsr>>1) ^ (lfsr>>11) ^ (lfsr>>12) ^ (lfsr>>13)) &
                     0x0004u;
      Result = (((lfsr << 1) | bit) & ((0x000000FCu) | (0x0000FF00u)));
    }
  }

  return Result;
}
# 5303 "../30_Bsw/MicroTestLib/Static/SramEccTst.c"
static __inline__ uint32 SramEccTst_lCpuRelValue
(
  const sint8 Wdt,
  const uint32 TimReload
)
{
  uint32 Result = TimReload & (0xFFFF0000u);
  sint8 WdtIdx = Wdt + (sint8)1;

  if ((uint8)WdtIdx < ((uint8)(1U)+(uint8)1U))

  {
    volatile Ifx_SCU_WDTCPU_SR* ScuSsrPtr =
        SramEccTst_kScuWdtPtrList[WdtIdx].WdtssrPtr;


    if (ScuSsrPtr->B.TCS != 0u)
    {
      Result = (uint32)((~(uint32)ScuSsrPtr->B.TIM) << 16);
    }
  }

  return Result;
}
# 5357 "../30_Bsw/MicroTestLib/Static/SramEccTst.c"
static void SramEccTst_lResetCpuENDINIT
(
  const sint8 Wdt,
  SramEccTst_WdtContextType* const WdtContext
)
{
  sint8 WdtIdx = Wdt + (sint8)1;

  if ((uint8)WdtIdx < ((uint8)(1U)+(uint8)1U))

  {
    uint32 NewValCon0;
    uint32 NewPw;
    uint32 NewRel;
    uint32 ValTemp1;
    uint32 ValTemp2;
    volatile uint32 dummy;

    volatile Ifx_SCU_WDTCPU_CON0* ScuWdtcon0Ptr =
        SramEccTst_kScuWdtPtrList[WdtIdx].Wdtcon0Ptr;
    volatile Ifx_SCU_WDTCPU_SR* ScuSsrPtr =
        SramEccTst_kScuWdtPtrList[WdtIdx].WdtssrPtr;


    NewValCon0 = ScuWdtcon0Ptr->U;


    NewPw = SramEccTst_lCpuPwSequence(Wdt, NewValCon0);


    NewRel = SramEccTst_lCpuRelValue(Wdt, NewValCon0);


    NewValCon0 = ((NewRel) |
                   (NewPw) |
                   (1u));




    ValTemp1 = ScuSsrPtr->U & (uint32)(0xFFFF0000u);
    ValTemp2 = ScuWdtcon0Ptr->U & (uint32)((0x000000FCu) | (0x0000FF00u));
    WdtContext->WdtTimAndPw = ValTemp1 | ValTemp2;

    ScuWdtcon0Ptr->U = NewValCon0;

    NewValCon0 &= ~(0x00000003u);
    NewValCon0 |= 0x2u;

    ScuWdtcon0Ptr->U = NewValCon0;


    dummy = ScuWdtcon0Ptr->U;
    {if((dummy) != 0U) { }}
  }
}
# 5443 "../30_Bsw/MicroTestLib/Static/SramEccTst.c"
static void SramEccTst_lSetCpuENDINIT
(
  const sint8 Wdt,
  const SramEccTst_WdtContextType* const WdtContext
)
{
  sint8 WdtIdx = Wdt + (sint8)1;

  if ((uint8)WdtIdx < ((uint8)(1U)+(uint8)1U))
  {
    uint32 NewValCon0;
    uint32 NewPw;
    uint32 NewRel;
    volatile uint32 dummy;

    volatile Ifx_SCU_WDTCPU_CON0* ScuWdtcon0Ptr =
        SramEccTst_kScuWdtPtrList[WdtIdx].Wdtcon0Ptr;
    volatile Ifx_SCU_WDTCPU_SR* ScuSsrPtr =
        SramEccTst_kScuWdtPtrList[WdtIdx].WdtssrPtr;


    NewValCon0 = ScuWdtcon0Ptr->U;


    NewPw = SramEccTst_lCpuPwSequence(Wdt, NewValCon0);


    NewRel = SramEccTst_lCpuRelValue(Wdt, NewValCon0);


    NewValCon0 = ((NewRel) |
                    (NewPw) |
                    (1u));

    ScuWdtcon0Ptr->U = NewValCon0;


    NewValCon0 &= ~(0xFFFF0000u);


    NewValCon0 |= (WdtContext->WdtTimAndPw +
                   ((ScuSsrPtr->U & (uint32)(0xFFFF0000u)) -
                   (uint32)(0xFFFC0000u)));


    NewValCon0 &= ~((0x000000FCu) | (0x0000FF00u));
    NewValCon0 |= (WdtContext->WdtTimAndPw &
                   (uint32)(0x0000FF00u)) |
                   ((~(WdtContext->WdtTimAndPw &
                       (uint32)(0x000000FCu)))
                   & (uint32)(0x000000FCu));


    NewValCon0 |= 3u;
    ScuWdtcon0Ptr->U = NewValCon0;


    dummy = ScuWdtcon0Ptr->U;
    {if((dummy) != 0U) { }}
  }
}
# 5534 "../30_Bsw/MicroTestLib/Static/SramEccTst.c"
static void SramEccTst_lResetENDINIT
(
  SramEccTst_WdtContextType* const WdtContext
)
{
  uint32 CoreID = ((uint32)((__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "(0xFE1C)" : "=d" (__res) :: "memory"); __res; }))) & (uint32)(3u));

  SramEccTst_lResetCpuENDINIT((sint8)CoreID, WdtContext);
}
# 5573 "../30_Bsw/MicroTestLib/Static/SramEccTst.c"
static void SramEccTst_lResetSafetyENDINIT
(
  SramEccTst_WdtContextType* const WdtContext
)
{
  uint32 NewValCon0;
  uint32 NewPw;
  uint32 NewRel;
  volatile uint32 dummy;


  NewValCon0 = ((*(volatile Ifx_SCU_WDTS_CON0 *)0xF00360F0u)).U;


  NewPw = NewValCon0 & ((0x000000FCu) | (0x0000FF00u));



  NewPw = (NewPw & (0x0000FF00u)) |
              ((~(NewPw & (0x000000FCu))) &
              (0x000000FCu));


  if (((*(volatile Ifx_SCU_WDTS_SR *)0xF00360F8u)).B.PAS != 0u)
  {



    uint32 lfsr = NewPw;
    uint32 bit = ((lfsr>>1) ^ (lfsr>>11) ^ (lfsr>>12) ^ (lfsr>>13)) & 0x0004u;
    NewPw = (((lfsr << 1) | bit) & ((0x000000FCu) | (0x0000FF00u)));
  }



  if (((*(volatile Ifx_SCU_WDTS_SR *)0xF00360F8u)).B.TCS != 0u)
  {
    NewRel = (uint32)((~(uint32)((*(volatile Ifx_SCU_WDTS_SR *)0xF00360F8u)).B.TIM) << 16);
  }
  else
  {
    NewRel = NewValCon0 & (0xFFFF0000u);
  }


  NewValCon0 = ((NewRel) |
                 (NewPw) |
                 (1u));




  WdtContext->WdtTimAndPw = ((*(volatile Ifx_SCU_WDTS_SR *)0xF00360F8u)).U & (uint32)(0xFFFF0000u);
  WdtContext->WdtTimAndPw |= ((*(volatile Ifx_SCU_WDTS_CON0 *)0xF00360F0u)).U & (uint32)((0x000000FCu) | (0x0000FF00u));

  ((*(volatile Ifx_SCU_WDTS_CON0 *)0xF00360F0u)).U = NewValCon0;

  NewValCon0 &= ~(0x00000003u);
  NewValCon0 |= 0x2u;

  ((*(volatile Ifx_SCU_WDTS_CON0 *)0xF00360F0u)).U = NewValCon0;


  dummy = ((*(volatile Ifx_SCU_WDTS_CON0 *)0xF00360F0u)).U;
  {if((dummy) != 0U) { }}
}
# 5666 "../30_Bsw/MicroTestLib/Static/SramEccTst.c"
static void SramEccTst_lSetENDINIT
(
  const SramEccTst_WdtContextType* const WdtContext
)
{
  uint32 CoreID = ((uint32)((__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "(0xFE1C)" : "=d" (__res) :: "memory"); __res; }))) & (uint32)(3u));
  SramEccTst_lSetCpuENDINIT((sint8)CoreID, WdtContext);
}
# 5701 "../30_Bsw/MicroTestLib/Static/SramEccTst.c"
static void SramEccTst_lSetSafetyENDINIT
(
  const SramEccTst_WdtContextType* const WdtContext
)
{
  uint32 NewValCon0;
  uint32 NewPw;
  uint32 NewRel;
  volatile uint32 dummy;


  NewValCon0 = ((*(volatile Ifx_SCU_WDTS_CON0 *)0xF00360F0u)).U;


  NewPw = NewValCon0 & ((0x000000FCu) | (0x0000FF00u));



  NewPw = (NewPw & (0x0000FF00u)) |
          ((~(NewPw & (0x000000FCu))) &
           (0x000000FCu));


  if (((*(volatile Ifx_SCU_WDTS_SR *)0xF00360F8u)).B.PAS != 0u)
  {



    uint32 lfsr = NewPw;
    uint32 bit = ((lfsr>>1) ^ (lfsr>>11) ^ (lfsr>>12) ^ (lfsr>>13)) & 0x0004u;
    NewPw = (((lfsr << 1) | bit) & ((0x000000FCu) | (0x0000FF00u)));
  }



  if (((*(volatile Ifx_SCU_WDTS_SR *)0xF00360F8u)).B.TCS != 0u)
  {
    NewRel = (uint32)((~(uint32)((*(volatile Ifx_SCU_WDTS_SR *)0xF00360F8u)).B.TIM) << 16);
  }
  else
  {
    NewRel = NewValCon0 & (0xFFFF0000u);
  }


  NewValCon0 = ((NewRel) |
                  (NewPw) |
                  (1u));

  ((*(volatile Ifx_SCU_WDTS_CON0 *)0xF00360F0u)).U = NewValCon0;


  NewValCon0 &= ~(0xFFFF0000u);


  NewValCon0 |= (WdtContext->WdtTimAndPw +
                 ((((*(volatile Ifx_SCU_WDTS_SR *)0xF00360F8u)).U & (uint32)(0xFFFF0000u)) -
                 (uint32)(0xFFFC0000u)));


  NewValCon0 &= ~((0x000000FCu) | (0x0000FF00u));
  NewValCon0 |= (WdtContext->WdtTimAndPw &
                 (uint32)(0x0000FF00u)) |
                 ((~(WdtContext->WdtTimAndPw &
                     (uint32)(0x000000FCu)))
                 & (uint32)(0x000000FCu));


  NewValCon0 |= 3u;
  ((*(volatile Ifx_SCU_WDTS_CON0 *)0xF00360F0u)).U = NewValCon0;


  dummy = ((*(volatile Ifx_SCU_WDTS_CON0 *)0xF00360F0u)).U;
  {if((dummy) != 0U) { }}
}
# 5811 "../30_Bsw/MicroTestLib/Static/SramEccTst.c"
static Std_ReturnType SramEccTst_lSmuClearAlarmStatus
(
  uint8 AlarmGroup,
  uint8 AlarmPos
)
{
  Std_ReturnType RetVal;
  uint32 Timeout;
  uint32 AlarmStatusReadback;
  SramEccTst_WdtContextType WdtContext;

  RetVal = 0U;
# 5831 "../30_Bsw/MicroTestLib/Static/SramEccTst.c"
  if((AlarmGroup > (uint8)(6U)) ||
     (AlarmPos > (uint8)(31U)))
  {

     RetVal = (Std_ReturnType)1U;
  }

  else
  {

     SramEccTst_lResetSafetyENDINIT(&WdtContext);


    (*(volatile Ifx_SMU_CMD *)0xF0036820u).U = (0x5U);


    (*(Ifx_SMU *)0xF0036800u).AG[AlarmGroup].U =
                        (unsigned_int)((uint32)0x1U << (uint32)AlarmPos);


    SramEccTst_lSetSafetyENDINIT(&WdtContext);


    Timeout = 0U;
    do
    {

      AlarmStatusReadback =
         (((uint32)((*(Ifx_SMU *)0xF0036800u).AG[AlarmGroup].U) >>
             AlarmPos) & 0x1U);

      Timeout++;

    }while((Timeout < (2000U)) &&
           (AlarmStatusReadback != 0U));

    if(AlarmStatusReadback != 0U)
    {
      RetVal = (Std_ReturnType)1U;
    }
  }


  return RetVal;

}
# 5903 "../30_Bsw/MicroTestLib/Static/SramEccTst.c"
static __inline__ uint32 SramEccTst_lCalcAlmCounterCrc
(
  void
)
{
  uint32 Result;

  Result = (uint32)(__crc32((unsigned_int)(SramEccTst_UnexpAlm.Correctable),(unsigned_int)(SramEccTst_UnexpAlm.Uncorrectable)))
                                                           ;
  Result = (uint32)(__crc32((unsigned_int)(Result),(unsigned_int)(SramEccTst_UnexpAlm.Address)));
  Result = (uint32)(__crc32((unsigned_int)(Result),(unsigned_int)(SramEccTst_UnexpAlm.ErrTrkOvf)));

 return Result;
}
# 5946 "../30_Bsw/MicroTestLib/Static/SramEccTst.c"
static uint32 SramEccTst_lCalcBackupCrc
(
  const uint8 MemIdx,
  const SramEccTst_BackupDataType* const BackupData
)
{
  uint32 i;
  uint32 Result;

  Result = (uint32)(__crc32((unsigned_int)((uint32)BackupData->AlmActionBackupSbeCorr),(unsigned_int)((uint32)BackupData->AlmActionBackupUcErr)))
                                                                  ;
  Result = (uint32)(__crc32((unsigned_int)(Result),(unsigned_int)((uint32)BackupData->AlmActionBackupAdrErr)));
  Result = (uint32)(__crc32((unsigned_int)(Result),(unsigned_int)((uint32)BackupData->AlmActionBackupAdrBufFull)));

  if (( 14U ) == MemIdx)
  {
    Result = (uint32)(__crc32((unsigned_int)(Result),(unsigned_int)((uint32)BackupData->AlmActionBackupLmuEccOnlnMon)));
  }
  Result = (uint32)(__crc32((unsigned_int)(Result),(unsigned_int)((uint32)BackupData->GetAlmActionResult)));
  Result = (uint32)(__crc32((unsigned_int)(Result),(unsigned_int)(BackupData->ClockBackup1)));
  Result = (uint32)(__crc32((unsigned_int)(Result),(unsigned_int)(BackupData->MBistEnable)));
  Result = (uint32)(__crc32((unsigned_int)(Result),(unsigned_int)(BackupData->MemTest)));




  for (i = 0U; i < ((11U) * (6U)); i++)
  {
    Result = (uint32)(__crc32((unsigned_int)(Result),(unsigned_int)((uint32)BackupData->MemContentBackup[i])));
  }
  Result = (uint32)(__crc32((unsigned_int)(Result),(unsigned_int)((uint32)BackupData->MemBackupValid)));
  Result = (uint32)(__crc32((unsigned_int)(Result),(unsigned_int)((uint32)BackupData->MtuClcDisr)));
  Result = (uint32)(__crc32((unsigned_int)(Result),(unsigned_int)((uint32)BackupData->Eccs)));
  Result = (uint32)(__crc32((unsigned_int)(Result),(unsigned_int)((uint32)BackupData->Range)));

  Result = (uint32)(__crc32((unsigned_int)(Result),(unsigned_int)((uint32)BackupData->CpuCacheBypass)));


 return Result;
}
# 6016 "../30_Bsw/MicroTestLib/Static/SramEccTst.c"
Sl_TstRsltType SramEccTst_SramEccTst
(
  const Sl_ParamSetType ParamSetIndex,
  const uint8 TstSeed,
  uint32* const TstSignature
)
{
  Sl_TstRsltType Result = (0x16010aU);
  Sl_TstRsltType ResultTmp;
  SramEccTst_BackupDataType BackupData;
  volatile uint8 i;


  *TstSignature = (uint32)(__crc32((unsigned_int)((uint32)TEST_ID_SRAMECC_TST),(unsigned_int)((uint32)TstSeed)));


  SramEccTst_UnexpAlm.Crc = SramEccTst_lCalcAlmCounterCrc();


  if(ParamSetIndex >= (Sl_ParamSetType)( 1U ))
  {
    Result = (0x160102U);
  }
  else
  {
    ResultTmp = SramEccTst_lEnableMtuClock(&BackupData);
    if ((0x1601ffU) != ResultTmp)
    {
      Result = ResultTmp;
    }
    else
    {



      for (i = 0U;
           (i < ((uint8)15U)) && ((0x16010aU) == Result);
           i++)
      {

        if ((SramEccTst_ConfigRoot[ParamSetIndex].MemorySelect &
             ((uint32)1U << i)) > (uint32)0U)
        {

          if (((void *)0) != SramEccTst_kMemDef[i])
          {

            if(i == (uint8)( 0U ))
            {
              ResultTmp = SramEccTst_lTestDspr0SingleCore(TstSignature, &BackupData);
            }
            else
            {

            ResultTmp = SramEccTst_lTestMemory(i,
                                               ParamSetIndex,
                                               TstSignature,
                                               &BackupData);

            }

            if ((0x1601ffU) != ResultTmp)
            {
              Result = ResultTmp;
            }
          }
          else
          {
            Result = (0x160107U);
          }
        }

      }




      ResultTmp = SramEccTst_lRestoreMtuClock(&BackupData);
      if ((0x1601ffU) != ResultTmp)
      {
        Result = ResultTmp;
      }
      else if ((0x16010aU) == Result)
      {
        Result = (0x1601ffU);
      }
      else
      {

      }

    }
  }


  *TstSignature = (uint32)(__crc32((unsigned_int)(*TstSignature),(unsigned_int)((uint32)Result)));

  return Result;
}
# 6144 "../30_Bsw/MicroTestLib/Static/SramEccTst.c"
SramEccTst_UnexpAlarmType* SramEccTst_GetUnexpEccAlmListPtr(void)
{
  SramEccTst_UnexpAlarmType* Result = ((void *)0);

  if (SramEccTst_lCalcAlmCounterCrc() == SramEccTst_UnexpAlm.Crc)
  {
    Result = &SramEccTst_UnexpAlm;
  }

  return Result;
}


# 1 "../30_Bsw/STL_common/Ifx_MemMap.h" 1
# 2654 "../30_Bsw/STL_common/Ifx_MemMap.h"
#pragma section
# 6158 "../30_Bsw/MicroTestLib/Static/SramEccTst.c" 2





# 1 "../30_Bsw/STL_common/Ifx_MemMap.h" 1
# 2699 "../30_Bsw/STL_common/Ifx_MemMap.h"
#pragma section ".text.STL_ASIL_CODE_NO_OPTIMIZE" ax 4

#pragma GCC optimize "O0"
# 6164 "../30_Bsw/MicroTestLib/Static/SramEccTst.c" 2
# 6195 "../30_Bsw/MicroTestLib/Static/SramEccTst.c"
static uint32 SramEccTst_lCalcBackupCrcSingleCore
(
  const SramEccTst_BackupDataType* const BackupData
)
{
  uint32 i;
  uint32 Result;

  Result = (uint32)(__crc32((unsigned_int)((uint32)BackupData->AlmActionBackupSbeCorr),(unsigned_int)((uint32)BackupData->AlmActionBackupUcErr)))
                                                                  ;
  Result = (uint32)(__crc32((unsigned_int)(Result),(unsigned_int)((uint32)BackupData->AlmActionBackupAdrErr)));
  Result = (uint32)(__crc32((unsigned_int)(Result),(unsigned_int)((uint32)BackupData->AlmActionBackupAdrBufFull)));
  Result = (uint32)(__crc32((unsigned_int)(Result),(unsigned_int)((uint32)BackupData->GetAlmActionResult)));





  for (i = 0U; i < (uint32)((96U)); i++)
  {
    Result = (uint32)(__crc32((unsigned_int)(Result),(unsigned_int)((uint32)BackupData->MemContentBackup[i])));
  }
  Result = (uint32)(__crc32((unsigned_int)(Result),(unsigned_int)((uint32)BackupData->MemBackupValid)));
  Result = (uint32)(__crc32((unsigned_int)(Result),(unsigned_int)((uint32)BackupData->MtuClcDisr)));
  Result = (uint32)(__crc32((unsigned_int)(Result),(unsigned_int)((uint32)BackupData->Eccs)));
  Result = (uint32)(__crc32((unsigned_int)(Result),(unsigned_int)((uint32)BackupData->Range)));




  Result = (uint32)(__crc32((unsigned_int)(Result),(unsigned_int)((uint32)BackupData->CpuCacheBypass)));

 return Result;
}
# 6257 "../30_Bsw/MicroTestLib/Static/SramEccTst.c"
static Sl_TstRsltType SramEccTst_lInitSingleCore
(
  SramEccTst_BackupDataType* const BackupData
)
{
  register uint32 EccsBackup = 0U;
  register uint32 RangeBackup = 0U;
  register uint32 Result = (0x16010aU);

  uint8 Count;
  volatile uint32 Dummy;
  SramEccTst_WdtContextType WdtContext;


  BackupData->MemBackupValid = (boolean)0;
  BackupData->CpuCacheBypass = (uint8)((uint32)0xFFFFFFFFU);
  BackupData->Eccs = (uint16)((uint32)0xFFFFFFFFU);
  BackupData->Range = (uint16)((uint32)0xFFFFFFFFU);




  Result = SramEccTst_lInitSmuAlarms(( 0U ), BackupData);

  if ((0x1601ffU) == Result)
  {

    SramEccTst_lDisableCaching(BackupData);


    for(Count = 0U; Count < (96U); Count++)
    {
      BackupData->MemContentBackup[Count] = ((uint16*)(0x70000000U))[Count];
    }
    BackupData->MemBackupValid = (boolean)1;


    SramEccTst_lResetSafetyENDINIT(&WdtContext);
    _dsync();
    Dummy = *(uint32*)((0x70000000U));
    {if((Dummy) != 0U) { }}
    (*(volatile Ifx_MTU_MEMTEST0 *)0xF0060010u).B.CPU0DSEN = 1U;
# 6310 "../30_Bsw/MicroTestLib/Static/SramEccTst.c"
    do
    {
      __asm("nop");
    } while (((*(volatile Ifx_MTU_MEMSTAT0 *)0xF0060038u).B.CPU0DSAIU != 0U)



              );


    RangeBackup = (*(Ifx_MC *)0xF0061E00u).RANGE.U;



    EccsBackup = (*(Ifx_MC *)0xF0061E00u).ECCS.U;




    (*(volatile Ifx_MTU_MEMTEST0 *)0xF0060010u).B.CPU0DSEN= 0U;
# 6340 "../30_Bsw/MicroTestLib/Static/SramEccTst.c"
    do
    {
      __asm("nop");
    } while (((*(volatile Ifx_MTU_MEMSTAT0 *)0xF0060038u).B.CPU0DSAIU != 0U)



              );


    BackupData->Eccs = (uint16)(EccsBackup&0x0000FFFFU);
    BackupData->Range = (uint16)(RangeBackup&0x0000FFFFU);




    SramEccTst_lSetSafetyENDINIT(&WdtContext);
  }



  BackupData->Crc = SramEccTst_lCalcBackupCrcSingleCore(BackupData);


  return Result;
}
# 6395 "../30_Bsw/MicroTestLib/Static/SramEccTst.c"
static Sl_TstRsltType SramEccTst_lRestoreSingleCore
(
  const SramEccTst_BackupDataType* const BackupData
)

{
  register uint32 EccsBackup = 0U;
  register uint32 RangeBackup = 0U;
  register uint32 Result = (0x16010aU);

  uint8 Count;
  volatile uint32 Dummy;
  SramEccTst_WdtContextType WdtContext;


  if (SramEccTst_lCalcBackupCrcSingleCore(BackupData) != BackupData->Crc)
  {
    Result = (0x160319U);
  }
  else
  {
    if(BackupData->Eccs != (uint16)((uint32)0xFFFFFFFFU))
    {
      EccsBackup = BackupData->Eccs;
      RangeBackup = BackupData->Range;





      SramEccTst_lResetSafetyENDINIT(&WdtContext);
      _dsync();
      Dummy = *(uint32*)((0x70000000U));

      {if((Dummy) != 0U) { }}
      (*(volatile Ifx_MTU_MEMTEST0 *)0xF0060010u).B.CPU0DSEN = 1U;
# 6442 "../30_Bsw/MicroTestLib/Static/SramEccTst.c"
      do
      {
        __asm("nop");
      } while (((*(volatile Ifx_MTU_MEMSTAT0 *)0xF0060038u).B.CPU0DSAIU != 0U)



              );




      (*(Ifx_MC *)0xF0061E00u).ECCS.U = (uint16)(EccsBackup&0x0000FFFFU);
      (*(Ifx_MC *)0xF0061E00u).RANGE.U = (uint16)(RangeBackup&0x0000FFFFU);




      (*(volatile Ifx_MTU_MEMTEST0 *)0xF0060010u).B.CPU0DSEN= 0U;
# 6472 "../30_Bsw/MicroTestLib/Static/SramEccTst.c"
      do
      {
        __asm("nop");
      } while (((*(volatile Ifx_MTU_MEMSTAT0 *)0xF0060038u).B.CPU0DSAIU != 0U)



              );

      SramEccTst_lSetSafetyENDINIT(&WdtContext);
    }

    if (BackupData->MemBackupValid == (boolean)1)
    {

      for(Count = 0U; Count < (96U); Count++)
      {
        ((uint16*)(0x70000000U))[Count] = BackupData->MemContentBackup[Count];
      }

    }
    if(BackupData->CpuCacheBypass != (uint8)((uint32)0xFFFFFFFFU))
    {

      SramEccTst_lRestoreCaching(BackupData);
    }
    if (0U == BackupData->GetAlmActionResult)
    {

      Result = SramEccTst_lRestoreSmuAlarms(( 0U ), BackupData);
    }




    (*(volatile Ifx_MC_ECCD *)0xF0061E10u).U = ((uint16)(0x780FU));
    (*(volatile Ifx_MC_ECCD *)0xF0061E10u).U &= ~(uint16)(((uint32)(0x1u) <<
                           (uint32)(0u)) |
                          ((uint32)(0x1u) <<
                           (uint32)(1u)) |
                          ((uint32)(0x1u) <<
                           (uint32)(2u)) |
                          ((uint32)(0x1u) <<
                           (uint32)(3u)));


    (*(volatile Ifx_MC_ECCD *)0xF0061E10u).U |= (uint16)((uint32)(0x1u) <<
                         (uint32)(4u));
# 6535 "../30_Bsw/MicroTestLib/Static/SramEccTst.c"
  }

  if(Result == (0x16010aU))
  {
    Result = (0x1601ffU);
  }

  return Result;

}
# 6570 "../30_Bsw/MicroTestLib/Static/SramEccTst.c"
static Sl_TstRsltType SramEccTst_lChkAddressMonSingleCore
(
  uint32* const TstSignature
)
{




  register uint32 ResultLoopCount = 0U;
  register uint32 TstSignatureTemp = *TstSignature;
  register Ifx_MC* CurrentMC;
  register uint32 i;

  Sl_TstRsltType Result = (0x16010aU);
  uint8 Count;
  Ifx_MC* MemoryController[1U]=
                                     {
                                       &(*(Ifx_MC *)0xF0061E00u),



                                     };
  volatile uint32 Dummy;
  SramEccTst_WdtContextType WdtContext;

  for(Count = 0U; (Count < 1U) &&
                 ((0x16010aU) == Result); Count++)
  {
    CurrentMC = MemoryController[Count];

    SramEccTst_lResetSafetyENDINIT(&WdtContext);
    _dsync();
    Dummy = ((uint32*)(0x70000000U))[Count*4U];
    {if((Dummy) != 0U) { }}

    (*(volatile Ifx_MTU_MEMTEST0 *)0xF0060010u).B.CPU0DSEN = 1U;
# 6617 "../30_Bsw/MicroTestLib/Static/SramEccTst.c"
    do
    {
      __asm("nop");
    } while (((*(volatile Ifx_MTU_MEMSTAT0 *)0xF0060038u).B.CPU0DSAIU != 0U)



              );


    CurrentMC->ECCD.U &= ~(uint16)(((uint32)(0x1u) <<
                             (uint32)(0u)) |
                            ((uint32)(0x1u) <<
                             (uint32)(1u)) |
                            ((uint32)(0x1u) <<
                             (uint32)(2u)) |
                            ((uint32)(0x1u) <<
                             (uint32)(3u)));





    for (ResultLoopCount = 0U; ResultLoopCount < (11U); ResultLoopCount++)
    {
      CurrentMC->RDBFL[ResultLoopCount].U = SramEccTst_kNoErrPtrn[ResultLoopCount];
    }

    CurrentMC->RANGE.U = 0U;
    _dsync();


    CurrentMC->CONFIG0.U = (uint16)(((uint32)(1U) <<
                              (uint32)(12u)) |
                             ((uint32)(0U) <<
                              (uint32)(0u)));
    CurrentMC->CONFIG1.U = 0U;



    CurrentMC->MCONTROL.U = (uint16)(((uint32)(0x1u) <<
                               (uint32)(3u)) |
                              ((uint32)(0x1u) <<
                               (uint32)(0u))|
                               ((uint32)(1U) <<
                               (uint32)(14U)));
    CurrentMC->MCONTROL.U = (uint16)(((uint32)(0x1u) <<
                              (uint32)(3u))|
                              ((uint32)(1U) <<
                               (uint32)(14U)));

    for(ResultLoopCount = 0U; ResultLoopCount < 50U; ResultLoopCount++)
    {
      __asm("nop");
    }

    ResultLoopCount = (0x16010aU);

    for (i = 1U; (i <= (2U)) &&
                 ((0x16010aU)== ResultLoopCount); i++)
    {
      CurrentMC->ECCS.U &= ~(uint16)((uint32)(0x3u) <<
                            (uint32)(6u));
      CurrentMC->ECCS.U |= (uint16)(i << (6u));





      CurrentMC->CONFIG0.U = (uint16)(((uint32)(1U) <<
                                (uint32)(12u)) |
                               ((uint32)(1U) <<
                                (uint32)(0u)));
      CurrentMC->CONFIG1.U = 0U;

      CurrentMC->MCONTROL.U = (uint16)(((uint32)(0x1u) <<
                                 (uint32)(3u)) |
                                ((uint32)(0x1u) <<
                                 (uint32)(0u))|
                                ((uint32)(1U) <<
                                 (uint32)(14U)));
      CurrentMC->MCONTROL.U = (uint16)(((uint32)(0x1u) <<
                                (uint32)(3u))|
                                ((uint32)(1U) <<
                                 (uint32)(14U)));

      for(ResultLoopCount=0U; ResultLoopCount < 50U; ResultLoopCount++)
      {
        __asm("nop");
      }

      ResultLoopCount = (2000U);


      while((((*(volatile Ifx_SMU_AG *)0xF00369C0u).U & 0x00001000U)== 0U ) && (ResultLoopCount> 0U))
      {
        ResultLoopCount= ResultLoopCount - 1U;
      }


      if(((*(volatile Ifx_SMU_AG *)0xF00369C0u).U & 0x00001000U)== 0U )
      {
        ResultLoopCount = (0x16020dU);
      }
      else
      {
        ResultLoopCount = (0x16010aU);
      }

      CurrentMC->ECCD.U &= ~(uint16)(((uint32)(0x1u) <<
                               (uint32)(0u)) |
                              ((uint32)(0x1u) <<
                               (uint32)(3u)));

      TstSignatureTemp = (*(volatile Ifx_SMU_AG *)0xF00369C0u).U & ((uint32)1U << 12U);

      (*(volatile Ifx_SMU_CMD *)0xF0036820u).U = 5U;


      (*(volatile Ifx_SMU_AG *)0xF00369C0u).U = (uint32)((uint32)1U << 12U);
    }


    CurrentMC->ECCS.U &= ~(uint16)((uint32)(0x3u) <<
                           (uint32)(6u));

    (*(volatile Ifx_MTU_MEMTEST0 *)0xF0060010u).B.CPU0DSEN= 0U;
# 6755 "../30_Bsw/MicroTestLib/Static/SramEccTst.c"
    do
    {
      __asm("nop");
    } while (((*(volatile Ifx_MTU_MEMSTAT0 *)0xF0060038u).B.CPU0DSAIU != 0U)



              );

    SramEccTst_lSetSafetyENDINIT(&WdtContext);
    Result = ResultLoopCount;
  }

  *TstSignature = (uint32)(__crc32((unsigned_int)(*TstSignature),(unsigned_int)(TstSignatureTemp)));
  if(Result == (0x16010aU))
  {
    Result = (0x1601ffU);
  }
  return Result;
}
# 6802 "../30_Bsw/MicroTestLib/Static/SramEccTst.c"
static Sl_TstRsltType SramEccTst_lChkSramMonSingleCore
(
  uint32* const TstSignature
)
{
  Sl_TstRsltType Result = (0x16010aU);




  Result = SramEccTst_lChkSramMonCeSingleCore(TstSignature);

  if ((0x1601ffU) == Result)
  {



    Result = SramEccTst_lChkSramMonUeSingleCore(TstSignature);
    if ((0x1601ffU) == Result)
    {

      Result = SramEccTst_lChkSramMonEovSingleCore(TstSignature);
    }
  }

  return Result;
}
# 6855 "../30_Bsw/MicroTestLib/Static/SramEccTst.c"
static Sl_TstRsltType SramEccTst_lChkSramMonCeSingleCore
(
  uint32* const TstSignature
)
{
  register uint32 ResultLoopCount = 0U;
  register uint32 TstSignatureTmp = *TstSignature;
  register Ifx_MC* CurrentMC;

  Sl_TstRsltType Result = (0x16010aU);
  uint8 Count;
  Ifx_MC* MemoryController[1U]=
                                     {
                                       &(*(Ifx_MC *)0xF0061E00u),



                                     };
  Sl_TstRsltType ResultSmu = (0x16010aU);
  volatile uint32 Dummy;
  SramEccTst_WdtContextType WdtContext;

  for(Count = 0U; (Count < 1U) &&
                 ((0x16010aU) == Result); Count++)
  {
    CurrentMC = MemoryController[Count];


    SramEccTst_lResetSafetyENDINIT(&WdtContext);
    _dsync();
    Dummy = ((uint32*)(0x70000000U))[Count*4U];
    {if((Dummy) != 0U) { }}
# 6897 "../30_Bsw/MicroTestLib/Static/SramEccTst.c"
    (*(volatile Ifx_MTU_MEMTEST0 *)0xF0060010u).B.CPU0DSEN = 1U;
# 6906 "../30_Bsw/MicroTestLib/Static/SramEccTst.c"
    do
    {
      __asm("nop");
    } while (((*(volatile Ifx_MTU_MEMSTAT0 *)0xF0060038u).B.CPU0DSAIU != 0U)



              );

    if(CurrentMC->ECCS.B.ECE != 0U)
    {

      CurrentMC->ECCD.U |= (uint16)((uint32)(0x1u) <<
                             (uint32)(4u));

      CurrentMC->ECCS.U |= (uint16)((uint32)(0x1u) <<
                             (uint32)(4u));


      for (ResultLoopCount = 0U; ResultLoopCount < (11U); ResultLoopCount++)
      {
        CurrentMC->RDBFL[ResultLoopCount].U = SramEccTst_kSingleBitErrPtrn[ResultLoopCount];
      }

      CurrentMC->RANGE.U = (uint16)(SramEccTst_kMemDef[( 0U )]->NrOfEtrRegisters);


      CurrentMC->CONFIG0.U = (uint16)(((uint32)(1U) <<
                                (uint32)(12u)) |
                               ((uint32)(0U) <<
                                (uint32)(0u)));
      CurrentMC->CONFIG1.U = 0U;



      CurrentMC->MCONTROL.U = (uint16)(((uint32)(0x1u) <<
                                 (uint32)(3u)) |
                                ((uint32)(0x1u) <<
                                 (uint32)(0u))|
                                 ((uint32)(1U) <<
                                 (uint32)(14U)));
      CurrentMC->MCONTROL.U = (uint16)(((uint32)(0x1u) <<
                                (uint32)(3u))|
                                ((uint32)(1U) <<
                                 (uint32)(14U)));
      ResultLoopCount = (uint32)((uint16)(0U))<<16U;

      for((ResultLoopCount&=0xFFFF0000U); (ResultLoopCount&0x0000FFFFU) < 50U; ResultLoopCount++)
      {
        __asm("nop");
      }




      CurrentMC->CONFIG0.U = (uint16)(((uint32)(1U) <<
                                (uint32)(12u)) |
                               ((uint32)(1U) <<
                                (uint32)(0u)));
      CurrentMC->CONFIG1.U = 0U;

      CurrentMC->MCONTROL.U = (uint16)(((uint32)(0x1u) <<
                                 (uint32)(3u)) |
                                ((uint32)(0x1u) <<
                                 (uint32)(0u))|
                                ((uint32)(1U) <<
                                 (uint32)(14U)));
      CurrentMC->MCONTROL.U = (uint16)(((uint32)(0x1u) <<
                                (uint32)(3u))|
                                ((uint32)(1U) <<
                                 (uint32)(14U)));

      for((ResultLoopCount&=0xFFFF0000U); (ResultLoopCount&0x0000FFFFU) < 50U; ResultLoopCount++)
      {
        __asm("nop");
      }
      TstSignatureTmp = (uint32)(CurrentMC->ECCD.B.VAL);


      if (((CurrentMC->ECCD.B.VAL) != 1U) || ((CurrentMC->ECCD.B.CERR) != 1U))
      {

        CurrentMC->ECCD.U &= ~(uint16)(((uint32)(0x1u) <<
                                 (uint32)(0u)) |
                                ((uint32)(0x1u) <<
                                 (uint32)(1u)) |
                                ((uint32)(0x1u) <<
                                 (uint32)(2u)));

        ResultLoopCount = (uint32)((uint16)(2U))<<16U;
      }
      else
      {

        CurrentMC->ECCD.U &= ~(uint16)(((uint32)(0x1u) <<
                                 (uint32)(0u)) |
                                ((uint32)(0x1u) <<
                                 (uint32)(1u)) |
                                ((uint32)(0x1u) <<
                                 (uint32)(2u)));



        CurrentMC->MCONTROL.U = (uint16)(((uint32)(0x1u) <<
                                   (uint32)(3u)) |
                                  ((uint32)(0x1u) <<
                                   (uint32)(0u))|
                                  ((uint32)(1U) <<
                                   (uint32)(14U)));
        CurrentMC->MCONTROL.U = (uint16)(((uint32)(0x1u) <<
                                  (uint32)(3u))|
                                  ((uint32)(1U) <<
                                   (uint32)(14U)));


        for((ResultLoopCount&=0xFFFF0000U); (ResultLoopCount&0x0000FFFFU) < 50U; ResultLoopCount++)
        {
          __asm("nop");
        }
        if(CurrentMC->ECCD.B.VAL != 1U)
        {
          ResultLoopCount = (uint32)((uint16)(3U))<<16U;
        }


        CurrentMC->ECCD.U &= ~(uint16)(((uint32)(0x1u) <<
                                   (uint32)(0u)) |
                                  ((uint32)(0x1u) <<
                                   (uint32)(1u)) |
                                  ((uint32)(0x1u) <<
                                   (uint32)(2u)));

      }


      for((ResultLoopCount&=0xFFFF0000U); (ResultLoopCount&0x0000FFFFU) < (11U); ResultLoopCount++)
      {
        CurrentMC->RDBFL[ResultLoopCount&0x0000FFFFU].U = SramEccTst_kNoErrPtrn[ResultLoopCount&0x0000FFFFU];
      }

      CurrentMC->CONFIG0.U = (uint16)(((uint32)(1U) <<
                                (uint32)(12u)) |
                               ((uint32)(0U) <<
                                (uint32)(0u)));
      CurrentMC->CONFIG1.U = 0U;



      CurrentMC->MCONTROL.U = (uint16)(((uint32)(0x1u) <<
                                 (uint32)(3u)) |
                                ((uint32)(0x1u) <<
                                 (uint32)(0u))|
                                 ((uint32)(1U) <<
                                 (uint32)(14U)));
      CurrentMC->MCONTROL.U = (uint16)(((uint32)(0x1u) <<
                                (uint32)(3u))|
                                ((uint32)(1U) <<
                                 (uint32)(14U)));
      for((ResultLoopCount&=0xFFFF0000U); (ResultLoopCount&0x0000FFFFU) < 50U; ResultLoopCount++)
      {
        __asm("nop");
      }
      (*(volatile Ifx_MTU_MEMTEST0 *)0xF0060010u).B.CPU0DSEN = 0U;
# 7080 "../30_Bsw/MicroTestLib/Static/SramEccTst.c"
      do
      {
        __asm("nop");
      } while (((*(volatile Ifx_MTU_MEMSTAT0 *)0xF0060038u).B.CPU0DSAIU != 0U)



              );
      Result = SramEccTst_kLocalResultTbl[ResultLoopCount>>16U];
      *TstSignature = (__crc32((unsigned_int)(*TstSignature),(unsigned_int)(TstSignatureTmp)));

      ResultSmu = SramEccTst_lWaitForSmuAlarm(
           SramEccTst_kMemDef[( 0U )]->SmuAlarmGrp,
           SramEccTst_kMemDef[( 0U )]->SmuNr_SbeCorr,
           TstSignature);
      if((ResultSmu != (0x1601ffU)) && (Result == (0x16010aU)))
      {
        Result = ResultSmu;
      }
    }
    else
    {
      (*(volatile Ifx_MTU_MEMTEST0 *)0xF0060010u).B.CPU0DSEN = 0U;
# 7114 "../30_Bsw/MicroTestLib/Static/SramEccTst.c"
      do
      {
        __asm("nop");
      } while (((*(volatile Ifx_MTU_MEMSTAT0 *)0xF0060038u).B.CPU0DSAIU != 0U)



              );
      Result = (0x161209U);
    }

    SramEccTst_lSetSafetyENDINIT(&WdtContext);
  }


  if(Result == (0x16010aU))
  {
    Result = (0x1601ffU);
  }

  return Result;
}
# 7177 "../30_Bsw/MicroTestLib/Static/SramEccTst.c"
static Sl_TstRsltType SramEccTst_lChkSramMonUeSingleCore
(
  uint32* const TstSignature

)
{




  register uint32 ResultLoopCount = 0U;
  register uint32 WordLineIdxValExp = 0U;
  register Ifx_MC* CurrentMC;
  register uint32 TstSignatureTmp = 0U;

  Sl_TstRsltType Result = (0x16010aU);
  uint8 Count;
  Ifx_MC* MemoryController[1U]=
                                     {
                                       &(*(Ifx_MC *)0xF0061E00u),



                                     };
  volatile uint32 Dummy;
  Sl_TstRsltType ResultSmu = (0x16010aU);
  SramEccTst_WdtContextType WdtContext;


  for(Count = 0U; (Count < 1U) &&
                 ((0x16010aU) == Result); Count++)
  {
    CurrentMC = MemoryController[Count];





    WordLineIdxValExp = ((uint32)(SramEccTst_kMemDef[( 0U )]->NrOfEtrRegisters)-1U);

    WordLineIdxValExp|= ((uint32)3U << 16U);


    SramEccTst_lResetSafetyENDINIT(&WdtContext);
    _dsync();
    Dummy = ((uint32*)(0x70000000U))[Count*4U];
    {if((Dummy) != 0U) { }}
# 7235 "../30_Bsw/MicroTestLib/Static/SramEccTst.c"
    (*(volatile Ifx_MTU_MEMTEST0 *)0xF0060010u).B.CPU0DSEN = 1U;
# 7244 "../30_Bsw/MicroTestLib/Static/SramEccTst.c"
    do
    {
      __asm("nop");
    } while (((*(volatile Ifx_MTU_MEMSTAT0 *)0xF0060038u).B.CPU0DSAIU != 0U)



              );

    while((WordLineIdxValExp & 0x0000FFFFU) > 0U)
    {

      for (ResultLoopCount = 0U; ResultLoopCount < (11U); ResultLoopCount++)
      {
        CurrentMC->RDBFL[ResultLoopCount].U = SramEccTst_kDoubleBitErrPtrn[ResultLoopCount];
      }
      CurrentMC->RANGE.U = (uint16)(WordLineIdxValExp & ((uint16)(0x7fffu)));


      CurrentMC->CONFIG0.U = (uint16)(((uint32)(1U) <<
                                (uint32)(12u)) |
                               ((uint32)(0U) <<
                                (uint32)(0u)));
      CurrentMC->CONFIG1.U = 0U;



      CurrentMC->MCONTROL.U = (uint16)(((uint32)(0x1u) <<
                                 (uint32)(3u)) |
                                ((uint32)(0x1u) <<
                                 (uint32)(0u))|
                                 ((uint32)(1U) <<
                                 (uint32)(14U)));
      CurrentMC->MCONTROL.U = (uint16)(((uint32)(0x1u) <<
                                (uint32)(3u))|
                                ((uint32)(1U) <<
                                 (uint32)(14U)));


      for (ResultLoopCount = 0U; ResultLoopCount < 50U; ResultLoopCount++)
      {
        __asm("nop");
      }




      CurrentMC->CONFIG0.U = (uint16)(((uint32)(1U) <<
                                (uint32)(12u)) |
                               ((uint32)(1U) <<
                                (uint32)(0u)));
      CurrentMC->CONFIG1.U = 0U;

      CurrentMC->MCONTROL.U = (uint16)(((uint32)(0x1u) <<
                                 (uint32)(3u)) |
                                ((uint32)(0x1u) <<
                                 (uint32)(0u))|
                                ((uint32)(1U) <<
                                 (uint32)(14U)));
      CurrentMC->MCONTROL.U = (uint16)(((uint32)(0x1u) <<
                                (uint32)(3u))|
                                ((uint32)(1U) <<
                                 (uint32)(14U)));


      for (ResultLoopCount = 0U; ResultLoopCount < 50U; ResultLoopCount++)
      {
        __asm("nop");
      }


      for (ResultLoopCount = 0U; ResultLoopCount < (11U); ResultLoopCount++)
      {
        CurrentMC->RDBFL[ResultLoopCount].U = SramEccTst_kNoErrPtrn[ResultLoopCount];
      }

      CurrentMC->CONFIG0.U = (uint16)(((uint32)(1U) <<
                                (uint32)(12u)) |
                               ((uint32)(0U) <<
                                (uint32)(0u)));
      CurrentMC->CONFIG1.U = 0U;



      CurrentMC->MCONTROL.U = (uint16)(((uint32)(0x1u) <<
                                 (uint32)(3u)) |
                                ((uint32)(0x1u) <<
                                 (uint32)(0u))|
                                 ((uint32)(1U) <<
                                 (uint32)(14U)));
      CurrentMC->MCONTROL.U = (uint16)(((uint32)(0x1u) <<
                                (uint32)(3u))|
                                ((uint32)(1U) <<
                                 (uint32)(14U)));



      for (ResultLoopCount = 0U; ResultLoopCount < 50U; ResultLoopCount++)
      {
        __asm("nop");
      }

      WordLineIdxValExp = SramEccTst_kLukupTblExpValWLIdx[WordLineIdxValExp & 0xFFFFU];


      ResultLoopCount = (uint32)((uint16)(0U))<<16U;
      if ((CurrentMC->ECCD.B.VAL != ((WordLineIdxValExp&0xFFFF0000U)>>16U)) || (0U == CurrentMC->ECCD.B.UERR))
      {
        ResultLoopCount = (uint32)((uint16)(2U))<<16U;
        WordLineIdxValExp&= 0xFFFF0000U;
      }

      TstSignatureTmp = CurrentMC->ECCD.B.VAL;

      CurrentMC->ECCD.U &= ~(uint16)(((uint32)(0x1u) <<
                               (uint32)(0u)) |
                              ((uint32)(0x1u) <<
                               (uint32)(2u)));

    }

    (*(volatile Ifx_MTU_MEMTEST0 *)0xF0060010u).B.CPU0DSEN = 0U;
# 7377 "../30_Bsw/MicroTestLib/Static/SramEccTst.c"
    do
    {
      __asm("nop");
    } while (((*(volatile Ifx_MTU_MEMSTAT0 *)0xF0060038u).B.CPU0DSAIU != 0U)



              );
    Result = SramEccTst_kLocalResultTbl[ResultLoopCount>>16U];
    *TstSignature = (uint32)(__crc32((unsigned_int)(*TstSignature),(unsigned_int)((uint32)TstSignatureTmp)));

    ResultSmu = SramEccTst_lWaitForSmuAlarm(
           SramEccTst_kMemDef[( 0U )]->SmuAlarmGrp,
           SramEccTst_kMemDef[( 0U )]->SmuNr_UcErr,
           TstSignature);
    if((ResultSmu != (0x1601ffU)) && (Result == (0x16010aU)))
    {
      Result = ResultSmu;
    }


    SramEccTst_lSetSafetyENDINIT(&WdtContext);
  }

  if(Result == (0x16010aU))
  {
    Result = (0x1601ffU);
  }

  return Result;

}
# 7442 "../30_Bsw/MicroTestLib/Static/SramEccTst.c"
static Sl_TstRsltType SramEccTst_lChkSramMonEovSingleCore
(
  uint32* const TstSignature
)
{
  register Sl_TstRsltType Result= (0x16010aU);
  register uint32 LoopCount;
  register Ifx_MC* CurrentMC;

  uint8 Count;
  Ifx_MC* MemoryController[1U]=
                                     {
                                       &(*(Ifx_MC *)0xF0061E00u),



                                     };
  SramEccTst_WdtContextType WdtContext;
  volatile uint32 Dummy;
  Sl_TstRsltType ResultSmuUcrr = (0x16010aU);
  Sl_TstRsltType ResultSmuAdrBufFull = (0x16010aU);

  for(Count = 0U; (Count < 1U) &&
                 ((0x16010aU) == Result); Count++)
  {
    CurrentMC = MemoryController[Count];


    SramEccTst_lResetSafetyENDINIT(&WdtContext);
    _dsync();


    Dummy = ((uint32*)(0x70000000U))[Count*4U];
    {if((Dummy) != 0U) { }}
# 7486 "../30_Bsw/MicroTestLib/Static/SramEccTst.c"
    (*(volatile Ifx_MTU_MEMTEST0 *)0xF0060010u).B.CPU0DSEN = 1U;






    do
    {
      __asm("nop");
    } while (((*(volatile Ifx_MTU_MEMSTAT0 *)0xF0060038u).B.CPU0DSAIU != 0U)



              );



    for (LoopCount = 0U; LoopCount < (11U); LoopCount++)
    {
      CurrentMC->RDBFL[LoopCount].U = SramEccTst_kDoubleBitErrPtrn[LoopCount];
    }

    CurrentMC->RANGE.U = 0U;


    CurrentMC->CONFIG0.U = (uint16)(((uint32)(1U) <<
                  (uint32)(12u)) |
                 ((uint32)(0U) <<
                  (uint32)(0u)));
    CurrentMC->CONFIG1.U = 0U;



    CurrentMC->MCONTROL.U = (uint16)(((uint32)(0x1u) <<
                   (uint32)(3u)) |
                  ((uint32)(0x1u) <<
                   (uint32)(0u))|
                   ((uint32)(1U) <<
                   (uint32)(14U)));
    CurrentMC->MCONTROL.U = (uint16)(((uint32)(0x1u) <<
                  (uint32)(3u))|
                  ((uint32)(1U) <<
                   (uint32)(14U)));


    for (LoopCount = 0U; LoopCount < 50U; LoopCount++)
    {
      __asm("nop");
    }



    CurrentMC->CONFIG0.U = (uint16)(((uint32)(1U) <<
                  (uint32)(12u)) |
                 ((uint32)(1U) <<
                  (uint32)(0u)));
    CurrentMC->CONFIG1.U = 0U;

    CurrentMC->MCONTROL.U = (uint16)(((uint32)(0x1u) <<
                   (uint32)(3u)) |
                  ((uint32)(0x1u) <<
                   (uint32)(0u))|
                  ((uint32)(1U) <<
                   (uint32)(14U)));
    CurrentMC->MCONTROL.U = (uint16)(((uint32)(0x1u) <<
                  (uint32)(3u))|
                  ((uint32)(1U) <<
                   (uint32)(14U)));


    for (LoopCount = 0U; LoopCount < 50U; LoopCount++)
    {
      __asm("nop");
    }

    if (CurrentMC->ECCD.B.EOV != 1U)
    {
      Result = (0x161106U);
    }

     CurrentMC->ECCD.U &= ~(uint16)(((uint32)(0x1u) <<
                                       (uint32)(0u)) |
                                      ((uint32)(0x1u) <<
                                      (uint32)(2u)));

     CurrentMC->ECCD.U |= (uint16)((uint32)(0x1u) <<
                           (uint32)(4u));

    for (LoopCount = 0U; LoopCount < (11U); LoopCount++)
    {
      CurrentMC->RDBFL[LoopCount].U = SramEccTst_kNoErrPtrn[LoopCount];
    }


    CurrentMC->CONFIG0.U = (uint16)(((uint32)(1U) <<
                  (uint32)(12u)) |
                 ((uint32)(0U) <<
                  (uint32)(0u)));
    CurrentMC->CONFIG1.U = 0U;



    CurrentMC->MCONTROL.U = (uint16)(((uint32)(0x1u) <<
                   (uint32)(3u)) |
                  ((uint32)(0x1u) <<
                   (uint32)(0u))|
                   ((uint32)(1U) <<
                   (uint32)(14U)));
    CurrentMC->MCONTROL.U = (uint16)(((uint32)(0x1u) <<
                  (uint32)(3u))|
                  ((uint32)(1U) <<
                   (uint32)(14U)));



    for (LoopCount = 0U; LoopCount < 50U; LoopCount++)
    {
      __asm("nop");
    }


    for (LoopCount = 0U; LoopCount < (11U); LoopCount++)
    {
      CurrentMC->RDBFL[LoopCount].U = SramEccTst_kDoubleBitErrPtrn[LoopCount];
    }


    (*(volatile Ifx_MTU_MEMTEST0 *)0xF0060010u).B.CPU0DSEN = 0U;
# 7626 "../30_Bsw/MicroTestLib/Static/SramEccTst.c"
    do
    {
      __asm("nop");
    } while (((*(volatile Ifx_MTU_MEMSTAT0 *)0xF0060038u).B.CPU0DSAIU != 0U)



              );


    ResultSmuUcrr = SramEccTst_lWaitForSmuAlarm(
       SramEccTst_kMemDef[( 0U )]->SmuAlarmGrp,
       SramEccTst_kMemDef[( 0U )]->SmuNr_UcErr,
       TstSignature);
    if((ResultSmuUcrr != (0x1601ffU)) && (Result == (0x16010aU)))
    {
      Result = ResultSmuUcrr;
    }

    ResultSmuAdrBufFull = SramEccTst_lWaitForSmuAlarm(
      SramEccTst_kMemDef[( 0U )]->SmuAlarmGrp,
      SramEccTst_kMemDef[( 0U )]->SmuNr_AdrBufFull,
      TstSignature);
    if((ResultSmuAdrBufFull != (0x1601ffU)) && (Result == (0x16010aU)))
    {
      Result = ResultSmuAdrBufFull;
    }

    SramEccTst_lSetSafetyENDINIT(&WdtContext);
  }


  if(Result == (0x16010aU))
  {
    Result = (0x1601ffU);
  }

  return Result;
}
# 7703 "../30_Bsw/MicroTestLib/Static/SramEccTst.c"
static Sl_TstRsltType SramEccTst_lTestDspr0SingleCore
(
  uint32* const TstSignature, SramEccTst_BackupDataType* const BackupData
)
{

  Sl_TstRsltType Result = (0x16010aU);
  Sl_TstRsltType ResultRestore = (0x16010aU);


  Result = SramEccTst_lInitSingleCore(BackupData);

  if ((0x1601ffU) == Result)
  {

    Result = SramEccTst_lChkAddressMonSingleCore(TstSignature);

    if ((0x1601ffU) == Result)
    {

      Result = SramEccTst_lChkSramMonSingleCore(TstSignature);
    }
  }

  ResultRestore = SramEccTst_lRestoreSingleCore(BackupData);
  if(Result == (0x1601ffU))
  {
    Result = ResultRestore;
  }

  return Result;
}





# 1 "../30_Bsw/STL_common/Ifx_MemMap.h" 1
# 2713 "../30_Bsw/STL_common/Ifx_MemMap.h"
#pragma GCC reset_options
#pragma section
# 7741 "../30_Bsw/MicroTestLib/Static/SramEccTst.c" 2
