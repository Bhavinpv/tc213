# 1 "../30_Bsw/STL_common/Mcal_Trap.c"
# 1 "S:\\20_Make//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "../30_Bsw/STL_common/Mcal_Trap.c"
# 35 "../30_Bsw/STL_common/Mcal_Trap.c"
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
# 36 "../30_Bsw/STL_common/Mcal_Trap.c" 2
# 1 "../30_Bsw/STL_common/Mcal.h" 1
# 42 "../30_Bsw/STL_common/Mcal.h"
# 1 "../30_Bsw/STL_common/Mcal_TcLib.h" 1
# 40 "../30_Bsw/STL_common/Mcal_TcLib.h"
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
# 37 "../30_Bsw/STL_common/Mcal_Trap.c" 2
# 59 "../30_Bsw/STL_common/Mcal_Trap.c"
# 1 "../30_Bsw/Mpu/MPU_MemMap.h" 1
# 36 "../30_Bsw/Mpu/MPU_MemMap.h"
#pragma section ".bss.MPU_ASIL_VAR_NOINIT" awB 8
# 60 "../30_Bsw/STL_common/Mcal_Trap.c" 2
static uint32 TrapIdentification[8][8];

# 1 "../30_Bsw/Mpu/MPU_MemMap.h" 1
# 49 "../30_Bsw/Mpu/MPU_MemMap.h"
#pragma section
# 63 "../30_Bsw/STL_common/Mcal_Trap.c" 2
# 74 "../30_Bsw/STL_common/Mcal_Trap.c"
void _trap_0( void );
void _trap_1( void );
void _trap_2( void );
void _trap_3( void );
void _trap_4( void );
void _trap_5( void );
void _trap_6( void );
void _trap_7( void );



# 1 "../30_Bsw/Mpu/MPU_MemMap.h" 1
# 242 "../30_Bsw/Mpu/MPU_MemMap.h"
#pragma section ".text.MPU_ASIL_CODE" ax 8
# 86 "../30_Bsw/STL_common/Mcal_Trap.c" 2
# 105 "../30_Bsw/STL_common/Mcal_Trap.c"
void _trap_0( void )
{
  uint32 tin;

  __asm ("svlcx");

  { __asm__ ("mov \t%0,%%d15":"=d" (tin)); };


  TrapIdentification[0][tin] = 1;
  switch(tin)
   {
     case 0:
          IOHWSF_vDefaultErrorHandler(IOHWSF_E_TRAP_VIRTUAL_ADDRESS_FILL);
          break;

     case 1:
          IOHWSF_vDefaultErrorHandler(IOHWSF_E_TRAP_VIRTUAL_ADDRESS_PROTECTION);
          break;

     default:
          IOHWSF_vDefaultErrorHandler(IOHWSF_E_TRAP_UNDEFINED_TIN);
          break;
   }
  __asm ("rslcx \n");
  __asm ("rfe \n");
}
# 151 "../30_Bsw/STL_common/Mcal_Trap.c"
void _trap_1( void )
{
  uint32 tin;

  __asm ("svlcx");

  { __asm__ ("mov \t%0,%%d15":"=d" (tin)); };

  TrapIdentification[1][tin] = 1;
  switch(tin)
   {
     case 1:
          IOHWSF_vDefaultErrorHandler(IOHWSF_E_TRAP_PRIVILEGE_INSTRUCTION);
          break;

     case 2:
          IOHWSF_vDefaultErrorHandler(IOHWSF_E_TRAP_MEMORY_PROTECTION_READ);
          break;

     case 3:
          IOHWSF_vDefaultErrorHandler(IOHWSF_E_TRAP_MEMORY_PROTECTION_WRITE);
          break;

     case 4:
          IOHWSF_vDefaultErrorHandler(IOHWSF_E_TRAP_MEMORY_PROTECTION_EXECUTION);
          break;

     case 5:
          IOHWSF_vDefaultErrorHandler(IOHWSF_E_TRAP_PROTECTION_PERIPHERAL_ACCESS);
          break;

     case 6:
          IOHWSF_vDefaultErrorHandler(IOHWSF_E_TRAP_MEMORY_PROTECTION_NULL_ADDRESS);
          break;

     case 7:
          IOHWSF_vDefaultErrorHandler(IOHWSF_E_TRAP_GLOBAL_REGISTER_WRITE_PROTECTION);
          break;


     default:
          IOHWSF_vDefaultErrorHandler(IOHWSF_E_TRAP_UNDEFINED_TIN);
          break;
   }
  __asm ("rslcx\n");
  __asm ("rfe \n");
}
# 217 "../30_Bsw/STL_common/Mcal_Trap.c"
void _trap_2( void )
{
  uint32 tin;

  __asm ("svlcx");

  { __asm__ ("mov \t%0,%%d15":"=d" (tin)); };

  TrapIdentification[2][tin] = 1;
  switch(tin)
   {
     case 1:
          IOHWSF_vDefaultErrorHandler(IOHWSF_E_TRAP_ILLEGAL_OPCODE);
          break;

     case 2:
          IOHWSF_vDefaultErrorHandler(IOHWSF_E_TRAP_UNIMPLEMENTED_OPCODE);
          break;

     case 3:
          IOHWSF_vDefaultErrorHandler(IOHWSF_E_TRAP_INVALID_OPERAND_SPECIFICATION);
          break;

     case 4:
          IOHWSF_vDefaultErrorHandler(IOHWSF_E_TRAP_DATA_ADDRESS_ALIGNMENT);
          break;

     case 5:
          IOHWSF_vDefaultErrorHandler(IOHWSF_E_TRAP_INVALID_LOCAL_MEMORY_ADDRESS);
          break;

     default:
          IOHWSF_vDefaultErrorHandler(IOHWSF_E_TRAP_UNDEFINED_TIN);
          break;
   }
  __asm ("rslcx \n");
  __asm ("rfe \n");
}
# 275 "../30_Bsw/STL_common/Mcal_Trap.c"
void _trap_3( void )
{


  uint32 tin;

  __asm ("svlcx");

  { __asm__ ("mov \t%0,%%d15":"=d" (tin)); };

  TrapIdentification[3][tin] = 1;

  switch(tin)
  {
     case 1:
         IOHWSF_vDefaultErrorHandler(IOHWSF_E_TRAP_FREE_CONTEXT_LIST_DEPLETION);
         break;

     case 2:
          IOHWSF_vDefaultErrorHandler(IOHWSF_E_TRAP_CALL_DEPTH_OVERFLOW);
          break;

     case 3:
         IOHWSF_vDefaultErrorHandler(IOHWSF_E_TRAP_CALL_DEPTH_UNDERFLOW);
         break;

     case 4:
         IOHWSF_vDefaultErrorHandler(IOHWSF_E_TRAP_FREE_CONTEXT_LIST_UNDERFLOW);
         break;

     case 5:
         IOHWSF_vDefaultErrorHandler(IOHWSF_E_TRAP_CALL_STACK_UNDERFLOW);
         break;

     case 6:
         IOHWSF_vDefaultErrorHandler(IOHWSF_E_TRAP_CONTEXT_TYPE);
         break;

     case 7:
         IOHWSF_vDefaultErrorHandler(IOHWSF_E_TRAP_NESTING_ERROR);
         break;

     default:
          IOHWSF_vDefaultErrorHandler(IOHWSF_E_TRAP_UNDEFINED_TIN);
          break;
  }
  __asm ("rslcx \n");
  __asm ("rfe \n");





}
# 349 "../30_Bsw/STL_common/Mcal_Trap.c"
void _trap_4( void )
{
  uint32 tin;

  __asm ("svlcx\n");

  { __asm__ ("mov \t%0,%%d15":"=d" (tin)); };

  TrapIdentification[4][tin] = 1;
  switch(tin)
   {
     case 1:
          IOHWSF_vDefaultErrorHandler(IOHWSF_E_TRAP_PROGRAM_FETCH_SYNCHRONOUS_ERROR);
          break;

     case 2:
          IOHWSF_vDefaultErrorHandler(IOHWSF_E_TRAP_DATA_ACCESS_SYNCHRONOUS_ERROR);
          break;

     case 3:
          IOHWSF_vDefaultErrorHandler(IOHWSF_E_TRAP_DATA_ACCESS_ASYNCHRONOUS_ERROR);
          break;

     default:
          IOHWSF_vDefaultErrorHandler(IOHWSF_E_TRAP_UNDEFINED_TIN);
          break;
   }
  __asm ("rslcx \n");
  __asm ("rfe \n");
}
# 398 "../30_Bsw/STL_common/Mcal_Trap.c"
void _trap_5( void )
{
  uint32 tin;

  __asm ("svlcx");

  { __asm__ ("mov \t%0,%%d15":"=d" (tin)); };

  TrapIdentification[5][tin] = 1;
  switch(tin)
   {
     case 1:
          IOHWSF_vDefaultErrorHandler(IOHWSF_E_TRAP_ARITHEMETIC_OVERFLOW);
          break;

     case 2:
          IOHWSF_vDefaultErrorHandler(IOHWSF_E_TRAP_STICKY_ARITHEMETIC_OVERFLOW);
          break;

     default:
          IOHWSF_vDefaultErrorHandler(IOHWSF_E_TRAP_UNDEFINED_TIN);
          break;
   }
  __asm ("rslcx \n");
  __asm ("rfe \n");
}
# 448 "../30_Bsw/STL_common/Mcal_Trap.c"
void _trap_6( void )
{

    uint8 tin;
  __asm ("svlcx");

  { __asm__ ("mov \t%0,%%d15":"=d" (tin)); };





  TrapIdentification[6][0] = tin;
  IOHWSF_vDefaultErrorHandler(IOHWSF_E_TRAP_UNEXPECTED_SYSTEM_CALL);
  __asm ("rslcx \n");
  __asm ("rfe \n");
}
# 486 "../30_Bsw/STL_common/Mcal_Trap.c"
void _trap_7( void )
{
  uint32 tin;

  __asm ("svlcx");
  { __asm__ ("mov \t%0,%%d15":"=d" (tin)); };

  TrapIdentification[7][tin] = 1;
  switch(tin)
   {
     case 0:
          IOHWSF_vDefaultErrorHandler(IOHWSF_E_TRAP_UNEXPECTED_NMI);
          break;

     default:
          IOHWSF_vDefaultErrorHandler(IOHWSF_E_TRAP_UNDEFINED_TIN);
          break;
   }
  __asm ("rslcx \n");
  __asm ("rfe \n");
}

# 1 "../30_Bsw/Mpu/MPU_MemMap.h" 1
# 255 "../30_Bsw/Mpu/MPU_MemMap.h"
#pragma section
# 509 "../30_Bsw/STL_common/Mcal_Trap.c" 2






# 1 "../30_Bsw/STL_common/Ifx_MemMap.h" 1
# 4095 "../30_Bsw/STL_common/Ifx_MemMap.h"
#pragma section ".traptab_cpu0" ax 32
# 516 "../30_Bsw/STL_common/Mcal_Trap.c" 2
# 575 "../30_Bsw/STL_common/Mcal_Trap.c"
void cpu0_trap_0 (void)
{



  __asm (".align 8");
  __asm("j       _trap_0");


  __asm(".align 5");
  __asm("j       _trap_1");


  __asm(".align 5");
  __asm("j       _trap_2");


  __asm(".align 5");
  __asm("j       _trap_3");


  __asm(".align 5");
  __asm("j       _trap_4");


  __asm(".align 5");
  __asm("j       _trap_5");


  __asm(".align 5");
  __asm("j       _trap_6");


  __asm(".align 5");
  __asm("j       _trap_7");

}
# 662 "../30_Bsw/STL_common/Mcal_Trap.c"
# 1 "../30_Bsw/STL_common/Ifx_MemMap.h" 1
# 4107 "../30_Bsw/STL_common/Ifx_MemMap.h"
#pragma section
# 663 "../30_Bsw/STL_common/Mcal_Trap.c" 2
