/*******************************************************************************
 * 4-Header
 ******************************************************************************/
#include "Main_api.h"
#include "Main_cfg.h"
#include "Main_scb.h"
#include "Main_scfg.h"
#include "Scheduler_api.h"
#include "iohwsf.h"
#include "iohwsf_AccessProt.h"
#include "iohwsf_FspTest.h"
#include "Pma_api.h"

/*******************************************************************************
 * Local constants and macros
 ******************************************************************************/
#pragma section ".BMH_validate" a
const uint32 MAIN_mg_au32AbmValidationArea[8] =
{
    0xAAAAAAAAU,
    0x55555555U,
    0xAAAAAAAAU,
    0x55555555U,
    0xAAAAAAAAU,
    0x55555555U,
    0xAAAAAAAAU,
    0x55555555U
};
#pragma section

#pragma section ".COMPATIBILITY_APPL_BTLD_SW" a
const uint8 MAIN_mg_au16CompatibilityApplBtldSwArea[32] =
{
  0x12U,0x34U,
  0x11, 0x21,
  0x12, 0x22,
  0x13, 0x23,
  0x14, 0x24,
  0x15, 0x25,
  0x16, 0x26,
  0x17, 0x27,
  0x18, 0x28,
  0x19, 0x29,
  0x1A, 0x2A,
  0x1B, 0x2B,
  0x1C, 0x2C,
  0x1D, 0x2D,
  0x1E, 0x2E,
  0x1F, 0x2F
};
#pragma section

#pragma section ".COMPATIBILITY_APPL_SW_SW" a
const uint8 MAIN_mg_au16CompatibilityApplSwSwArea[2] =
{
   0x56U,
   0x78U
};
#pragma section

#pragma section ".COMPATIBILITY_APPL_VER" a
const uint32 MAIN_mg_au32CompatibilityApplVerArea[1] =
{
    0xABCDEF55U
};
#pragma section

#define MG_MAX_TRAPS 8u
/*******************************************************************************
 * Global data
 ******************************************************************************/
#define MPU_QM_START_SEC_VAR_NOINIT
#include "MPU_MemMap.h"
MAIN_S_HW_VER Main_HwVer;
bit DebugError[4];
bit Main_InitFin;
static uint32 TRAP_mg_u32TrapBaseAddr;
void (*mg_vTrapDisptab[MG_MAX_TRAPS])(void);
//f32 Debug[3];
#define MPU_QM_STOP_SEC_VAR_NOINIT
#include "MPU_MemMap.h"
/*******************************************************************************
 * Local data
 ******************************************************************************/

/*******************************************************************************
 * Global functions declaration
 ******************************************************************************/
#if MAIN_DEBUG
void Main_DebugInit(void);
void Main_Debug100us(void);
#endif

/*******************************************************************************
 * Local functions declaration
 ******************************************************************************/
static void TriCore_trap_table(void);
static void McalInit(void);
static void BswInit(void);
void Trap_vInit(void);
void mg_vTrapTableRedirection(void);

/********************************************************************************
**                      Private Macro Definitions                             **
*******************************************************************************/
#ifndef _lint
/* defines for trap table */
/*lint -save -e961 -e960 Suppress MISRA warning for function-like macro and using of #  */
# define DEFINE_TRAP(i)     \
    __asm (".globl __trap_" #i);    \
    __asm ("__trap_" #i ":");   \
    __asm ("svlcx");      \
    __asm ("movh.a %a15,hi:mg_vTrapDisptab+(4*" #i ")"); \
    __asm ("ld.w %d4,[%a15]lo:mg_vTrapDisptab+(4*" #i ")"); \
    __asm ("mov.a %a15, %d4");  \
    __asm ("mov %d4,%d15");   \
    __asm ("calli %a15");     \
    __asm ("rslcx");      \
    __asm ("rfe");      \
    __asm (".align 5")
/*lint -restore */
#endif


#ifndef _lint
__asm ("            \n\
  .section .Mpu_traptab, \"ax\", @progbits  \n\
  .align 8        \n\
  .globl TriCore_trap_table   \n\
TriCore_trap_table:       \n\
");
DEFINE_TRAP(0);   /* trap class 0 (Reset/MMU) */
DEFINE_TRAP(1);   /* trap class 1 (Internal Protection Traps) */
DEFINE_TRAP(2);   /* trap class 2 (Instruction Errors) */
DEFINE_TRAP(3);   /* trap class 3 (Context Management) */
DEFINE_TRAP(4);   /* trap class 4 (System Bus and Peripheral Errors) */
DEFINE_TRAP(5);   /* trap class 5 (Assertion Traps) */
DEFINE_TRAP(6);   /* trap class 6 (System Call) */
DEFINE_TRAP(7);   /* trap class 7 (Non-Maskable Interrupt) */
__asm (".text");
#endif


/*******************************************************************************
 * SCB - Main entry point called from _Core0_start
 ******************************************************************************/
#define MPU_QM_START_SEC_CODE
#include "MPU_MemMap.h"

int __attribute__ ((optimize("O0"))) core0_main(void)
{
  /*
  * !!WATCHDOG0 AND SAFETY WATCHDOG ARE DISABLED HERE!!
  * Enable the watchdog in the demo if it is required and also service the watchdog periodically
  * */
//  Debug[0] = 0.00001*STM0_TIM0.U;
#if (PMA_ENABLE)
  Pma_vInit();
#endif /*PMA_ENABLE*/

	IOHWSF_vMcSafeStartUpChecks();
	
	IOHWSF_vMcSafeSwitchToRunState();
  IfxScuWdt_disableCpuWatchdog (IfxScuWdt_getCpuWatchdogPassword ());
  IfxScuWdt_disableSafetyWatchdog (IfxScuWdt_getSafetyWatchdogPassword ());
    
  Main_InitFin = 0;
  Main_GetHwVer(&Main_HwVer);
  Main_GetHwVerApp();
  McalInit();
  IOHWSF_vSrcRegestersCheck();
  BswInit();

  Adc_StartUp();

  HsfbApp_initialize();
  HsfbApp_CallInit();
  KL30_AutoDiag();
  Trap_vInit();
  mg_vTrapTableRedirection();

#if (MEMORY_PROTECTION_ENABLED)
    /* Configure memory protection */
  mpu_vInit();
#endif /* MEMORY_PROTECTION_ENABLED */
 IOHWSF_ACCESSPROT_vConfigureAccessProtection();
 IOHWSF_FSPTEST();

  __asm ("enable");

#if MAIN_DEBUG
  Main_DebugInit();
#endif

  
  while (1)
  {
    //
  }

  return (1);
}

/*******************************************************************************
 * API Get Build Date/Time Sw Version, Info
 ******************************************************************************/
void delay_us_main(u32 time)
{
  u32 time0 = STM0_TIM1.U;

  while(0.16*(STM0_TIM1.U - time0) < time);
}

void delay_ms_main(u32 time)
{
  u32 time0 = STM0_TIM4.U;

  while(0.65536*(STM0_TIM4.U - time0) < time);
}

u32 Main_GetBuildDate(void)
{
    u16 BcdY = Dsp_Decimal2Bcd((u16)BUILD_YEAR );
    u16 BcdM = Dsp_Decimal2Bcd((u16)BUILD_MONTH);
    u16 BcdD = Dsp_Decimal2Bcd((u16)BUILD_DATE );
    u32 BcdDate = (((u32)BcdY << 16) |
                   ((u32)BcdM <<  8) |
                   ((u32)BcdD      ));
    return BcdDate;
}

u32 Main_GetBuildTime(void)
{
    u16 BcdH = Dsp_Decimal2Bcd((u16)BUILD_HOUR);
    u16 BcdM = Dsp_Decimal2Bcd((u16)BUILD_MIN );
    u16 BcdS = Dsp_Decimal2Bcd((u16)BUILD_SEC );
    u32 BcdTime = (((u32)BcdH << 16) |
                   ((u32)BcdM <<  8) |
                   ((u32)BcdS      ));
    return BcdTime;
}

u32 Main_GetSwVersion(void)
{
  u32 y;
  y = (((u32)MAIN_VER_X << 28) |
     ((u32)MAIN_VER_N << 24) |
     ((u32)MAIN_VER_R << 16) |
     ((u32)MAIN_VER_P <<  8) |
     ((u32)MAIN_VER_T      ));
  return y;
}

void Main_GetBuildInfo(MAIN_S_BUILD_INFO* BuildInfo)
{
  BuildInfo->Year  = BUILD_YEAR;
  BuildInfo->Month = BUILD_MONTH;
  BuildInfo->Day   = BUILD_DATE;
  BuildInfo->Hour  = BUILD_HOUR;
  BuildInfo->Min   = BUILD_MIN;
  BuildInfo->Sec   = BUILD_SEC;
}

void Main_GetHwVer(MAIN_S_HW_VER* HwVer)
{
  u16 HwVer_X,HwVer_N;

  // Hardware code
  HwVer->Code[0] = P33_IN.B.P10;  // REV_00
  HwVer->Code[1] = P33_IN.B.P5;    // REV_01
  HwVer->Code[2] = P33_IN.B.P6;    // REV_02
  HwVer->Code[3] = P33_IN.B.P7;    // REV_03
  HwVer->CodeNum = (HwVer->Code[0] << 3) |
           (HwVer->Code[1] << 2) |
           (HwVer->Code[2] << 1) |
           (HwVer->Code[3]     );
  // Hardware version
  if(HwVer->CodeNum >= (u16)MAIN_E_HW_Reserved)
  {
    HwVer->Ver = MAIN_E_HW_Reserved;
  }
  else
  {
    HwVer->Ver = (MAIN_E_HW_VER)HwVer->CodeNum;
  }
  switch(HwVer->Ver)
  {
	case MAIN_E_HW_B0: 			HwVer_X = 0x0B; HwVer_N = 0x00; break;
	case MAIN_E_HW_B01_X10: 	HwVer_X = 0x0B; HwVer_N = 0x01; break;
	case MAIN_E_HW_B01_X10_DV: 	HwVer_X = 0x0B; HwVer_N = 0x01; break;
	case MAIN_E_HW_B02_X10: 	HwVer_X = 0x0B; HwVer_N = 0x02; break;
	case MAIN_E_HW_B02_X10_DV: 	HwVer_X = 0x0B; HwVer_N = 0x02; break;
	case MAIN_E_HW_C0: 			HwVer_X = 0x0C; HwVer_N = 0x00; break;
	case MAIN_E_HW_C0_DV: 		HwVer_X = 0x0C; HwVer_N = 0x00; break;
	case MAIN_E_HW_C1: 			HwVer_X = 0x0C; HwVer_N = 0x10; break;
	case MAIN_E_HW_C1_DV: 		HwVer_X = 0x0C; HwVer_N = 0x10; break;
	case MAIN_E_HW_C1_C01: 	    HwVer_X = 0x0C; HwVer_N = 0x10; break;
	case MAIN_E_HW_C1_C01_DV: 	HwVer_X = 0x0C; HwVer_N = 0x10; break;
	case MAIN_E_HW_C1_C02: 	    HwVer_X = 0x0C; HwVer_N = 0x10; break;
	case MAIN_E_HW_C1_C02_DV: 	HwVer_X = 0x0C; HwVer_N = 0x10; break;
	case MAIN_E_HW_C1_BAK13: 	HwVer_X = 0x0C; HwVer_N = 0x10; break;
	case MAIN_E_HW_C1_BAK14: 	HwVer_X = 0x0C; HwVer_N = 0x10; break;
	case MAIN_E_HW_Reserved: 	HwVer_X = 0x00; HwVer_N = 0x00; break;
  }
  HwVer->VerName = (HwVer_X << 8) | (HwVer_N);
}

void Main_GetHwVerApp(void)
{
	HWVER_APP.Pwm     = (HWVER_C0 || HWVER_C1);
	HWVER_APP.Safety  = (HWVER_C0 || HWVER_C1);
	HWVER_APP.Meas    = (HWVER_C1); //new CT sense, new KL30 gain//ID >= 7
	if(HWVER_B0 || HWVER_B01 || HWVER_B02)
	{
		HWVER_APP.Ntc = 0;          //ID = 1-4
	}
	else if(HWVER_C0 || HWVER_C1_C01_Pre)
	{
		HWVER_APP.Ntc = 1;         //ID = 5-8
	}
	else
	{
		HWVER_APP.Ntc = 2;        //ID >= 9
	}
}

u32 Main_UdsGetHwVer(void)
{
  return ((u32)HWVER_VERNAME << 16) | ((u32)HWVER_CODENUM);
}

/*******************************************************************************
 * Local functions implementation
 ******************************************************************************/
static void McalInit(void)
{
  /* MCal Init */
  Port_Init();
  Adc_Init();
  Gtm_Init();
  // Smu_Init();
  CANDriver_Init();
  Qspi_Init();
  Safety_Cfg();
}

static void BswInit(void)
{
  ComServ_Init();
  TpInit(0);
  Uds_Init();
}

void Trap_vInit(void)
{
  /* Initialize the trap handlers.  */
  mg_vTrapDisptab[0] = &_trap_0;
  mg_vTrapDisptab[1] = &_trap_1;
  mg_vTrapDisptab[2] = &_trap_2;
  mg_vTrapDisptab[3] = &_trap_3;
  mg_vTrapDisptab[4] = &_trap_4;
  mg_vTrapDisptab[5] = &_trap_5;
  mg_vTrapDisptab[6] = &_trap_6;
  mg_vTrapDisptab[7] = &_trap_7;
} /* Trap_vInit */


void mg_vTrapTableRedirection(void)
{
    IfxScuWdt_clearCpuEndinit(IfxScuWdt_getCpuWatchdogPassword());
    /* Save trap base register */
    TRAP_mg_u32TrapBaseAddr = __mfcr(CPU_BTV);

    /* Set redirected trap base register */
    __mtcr(CPU_BTV, (uint32)&TriCore_trap_table);
    IfxScuWdt_setCpuEndinit(IfxScuWdt_getCpuWatchdogPassword());
}


void mg_vTrapTableRestore(void)
{
    IfxScuWdt_clearCpuEndinit(IfxScuWdt_getCpuWatchdogPassword());
    /* Restore trap base register */
    __mtcr(CPU_BTV, TRAP_mg_u32TrapBaseAddr);
    IfxScuWdt_setCpuEndinit(IfxScuWdt_getCpuWatchdogPassword());
}


#define MPU_QM_STOP_SEC_CODE
#include "MPU_MemMap.h"
/*******************************************************************************
 * Debug functions implementation
 ******************************************************************************/
#if MAIN_DEBUG
MAIN_DEBUG_DEF MainDebug;

static const struct DSP_S_SinTableF32 SinTableF32[128] = {
    { 0.99997741040562f, 6.16035045583353e-08f },
    { 0.999826817480839f, 2.03285428662651e-06f },
    { 0.999525654361458f, 9.54768047611985e-06f },
    { 0.999073966267554f, 2.62999411626776e-05f },
    { 0.99847182135964f, 5.59807225666252e-05f },
    { 0.997719310310647f, 0.000102277197235507f },
    { 0.996816546328455f, 0.000168871552582883f },
    { 0.995763665411197f, 0.000259439856068717f },
    { 0.994560826309718f, 0.000377650939621939f },
    { 0.993208209776662f, 0.000527165283593696f },
    { 0.991706019865547f, 0.000711634036344538f },
    { 0.990054482864475f, 0.000934697589384058f },
    { 0.988253847025796f, 0.00119998497288467f },
    { 0.986304383857685f, 0.00151111229096344f },
    { 0.984206387117915f, 0.00187168180556626f },
    { 0.981960172032905f, 0.00228528102973864f },
    { 0.979566077723177f, 0.00275548113099352f },
    { 0.977024464132111f, 0.00328583657650424f },
    { 0.974335714541514f, 0.00387988348109246f },
    { 0.971500233401472f, 0.00454113852778855f },
    { 0.968518447802146f, 0.00527309828449928f },
    { 0.965390807353624f, 0.00607923788239827f },
    { 0.962117781903141f, 0.00696301006038718f },
    { 0.958699865605037f, 0.0079278437364808f },
    { 0.955137572400249f, 0.00897714341646184f },
    { 0.951431438989935f, 0.0101142883584885f },
    { 0.947582023386209f, 0.0113426308422363f },
    { 0.943589905873307f, 0.012665495117618f },
    { 0.939455686274266f, 0.0140861770161849f },
    { 0.935179989425085f, 0.0156079429017243f },
    { 0.930763456937192f, 0.0172340279450327f },
    { 0.926206754969415f, 0.0189676358629735f },
    { 0.921510569857655f, 0.0208119374635797f },
    { 0.916675608918364f, 0.0227700691479797f },
    { 0.911702599765216f, 0.0248451339616774f },
    { 0.906592291337857f, 0.0270401981947866f },
    { 0.901345453563998f, 0.0293582913388536f },
    { 0.895962876075343f, 0.0318024061957396f },
    { 0.890445370873344f, 0.0343754954891188f },
    { 0.884793766907592f, 0.0370804735146135f },
    { 0.879008917269585f, 0.0399202138044492f },
    { 0.873091690557201f, 0.0428975485717784f },
    { 0.867042980614069f, 0.0460152668596757f },
    { 0.860863697390934f, 0.049276116268242f },
    { 0.854554770850413f, 0.0526827973340082f },
    { 0.848117151139709f, 0.0562379687300194f },
    { 0.841551809086208f, 0.0599442408905694f },
    { 0.834859730903538f, 0.0638041793865623f },
    { 0.828041927735689f, 0.0678202993537265f },
    { 0.82109942374751f, 0.0719950709292355f },
    { 0.814033265023043f, 0.0763309127074882f },
    { 0.806844515195208f, 0.0808301929716084f },
    { 0.799534258520789f, 0.0854952295357529f },
    { 0.792103595037041f, 0.0903282904359528f },
    { 0.784553643141079f, 0.0953315869278354f },
    { 0.776885540926509f, 0.100507280368756f },
    { 0.769100441437642f, 0.105857478038958f },
    { 0.761199519101085f, 0.11138422949213f },
    { 0.753183963158985f, 0.117089532221053f },
    { 0.74505497974907f, 0.122975324936918f },
    { 0.736813794270024f, 0.129043490291389f },
    { 0.728461646707046f, 0.135295852973036f },
    { 0.719999798581567f, 0.141734178295618f },
    { 0.711429517234603f, 0.148360175656038f },
    { 0.702752097704654f, 0.155175490822456f },
    { 0.693968848246317f, 0.162181712561109f },
    { 0.685081089541824f, 0.169380365956925f },
    { 0.676090156889959f, 0.176772916689981f },
    { 0.666997410974172f, 0.184360765114544f },
    { 0.657804216476534f, 0.192145251830853f },
    { 0.648511958616628f, 0.2001276528192f },
    { 0.639122039442033f, 0.208309181324714f },
    { 0.629635867311763f, 0.216690983490806f },
    { 0.620054877482594f, 0.225274139402931f },
    { 0.610380508706808f, 0.23405967120973f },
    { 0.600614218028964f, 0.24304852612233f },
    { 0.590757477801015f, 0.252241591410101f },
    { 0.5808117718564f, 0.261639680178339f },
    { 0.570778596122034f, 0.27124354637529f },
    { 0.560659464497972f, 0.28105387036333f },
    { 0.550455900131782f, 0.291071264205401f },
    { 0.540169438808926f, 0.301296275941471f },
    { 0.529801630450829f, 0.311729378617671f },
    { 0.519354033584399f, 0.322370979488754f },
    { 0.50882822728532f, 0.333221416293557f },
    { 0.498225791188708f, 0.344280951232669f },
    { 0.487548325114261f, 0.355549782712735f },
    { 0.476797433931578f, 0.367028037814776f },
    { 0.465974741470851f, 0.378715765802544f },
    { 0.455081874513366f, 0.390612950610221f },
    { 0.444120471922623f, 0.402719503584834f },
    { 0.433092187854498f, 0.415035261226005f },
    { 0.421998681634913f, 0.427559991899121f },
    { 0.41084162463446f, 0.440293387567769f },
    { 0.399622694722896f, 0.453235073660752f },
    { 0.388343583721971f, 0.466384597061211f },
    { 0.377005991401865f, 0.47974143235048f },
    { 0.365611620750426f, 0.493304982119714f },
    { 0.354162192255568f, 0.507074579001113f },
    { 0.342659427632949f, 0.521049478061161f },
    { 0.331105058063503f, 0.535228862975015f },
    { 0.319500829598153f, 0.549611842350783f },
    { 0.307848479952668f, 0.564197454251907f },
    { 0.296149773672995f, 0.578984659489615f },
    { 0.284406466245296f, 0.593972350573825f },
    { 0.272620329086387f, 0.60915933813661f },
    { 0.26079313691335f, 0.624544369842103f },
    { 0.248926667629027f, 0.640126111228789f },
    { 0.237022714150792f, 0.655903160282882f },
    { 0.225083063371809f, 0.671874037881056f },
    { 0.213109517479494f, 0.688037191652025f },
    { 0.201103877145354f, 0.704391000054011f },
    { 0.189067951480238f, 0.720933761503374f },
    { 0.177003554429005f, 0.737663710590616f },
    { 0.164912499610807f, 0.754579001430726f },
    { 0.152796610165454f, 0.771677718579601f },
    { 0.14065771021739f, 0.78895787725932f },
    { 0.128497626226406f, 0.806417412910107f },
    { 0.116318193532796f, 0.824054195329112f },
    { 0.104121241581235f, 0.841866025479964f },
    { 0.0919086108989584f, 0.859850621552984f },
    { 0.0796821386941596f, 0.878005641287052f },
    { 0.0674436651617945f, 0.896328664784933f },
    { 0.0551950359217075f, 0.914817208100134f },
    { 0.0429380958587851f, 0.933468709620009f },
    { 0.0306746872473126f, 0.952280548318146f },
    { 0.0184066600664278f, 0.971250020667497f },
    { 0.00613586203372533f, 0.99037436087635f }
};

f32 Dsp_CosF32(f32 rad)
{
  f32 x = rad;
  f32 result, sign = 1.0f;
  f32 a, b;
  u32 idx;

  x = DSP_PI2 - x;

  if (x > DSP_PI) {
  x = x - ((sint32)((x + DSP_PI) * DSP_2PIINV) * DSP_2PI);
  } else if (x < -DSP_PI) {
  x = x - ((sint32)((x - DSP_PI) * DSP_2PIINV) * DSP_2PI);
  }

  if (x < 0.0f) {
  sign = -sign;
  x = -x;
  }

  if (x > DSP_PI2) {
  x = DSP_PI - x;
  }

  if (x == DSP_PI2) {
  return sign;
  }
  idx = (sint32) (x * (DSP_128 / DSP_PI2));
  a = SinTableF32[idx].a;
  b = SinTableF32[idx].b;
  result = (a * x) + b;

  result = (sign > 0.0f)? result : -result;

  return result;
}

f32 Dsp_SinF32(f32 rad)
{
  f32 x = rad;
  f32 result, sign = 1.0f;
  f32 a, b;
  u32 idx;

  if (x > DSP_PI) {
  x = x - ((sint32)((x + DSP_PI) * DSP_2PIINV) * DSP_2PI);
  } else if (x < -DSP_PI) {
  x = x - ((sint32)((x - DSP_PI) * DSP_2PIINV) * DSP_2PI);
  }

  if (x < 0.0f) {
  sign = -sign;
  x = -x;
  }

  if (x > DSP_PI2) {
  x = DSP_PI - x;
  }

  if (x==DSP_PI2) {
  return sign;
  }
  idx = (sint32) (x * (DSP_128 / DSP_PI2));
  a = SinTableF32[idx].a;
  b = SinTableF32[idx].b;
  result = (a * x) + b;

  result = (sign > 0.0f)? result : -result;

  return result;
}

void clear_struct(void* p_struct, unsigned int size)
{
    unsigned char* p = p_struct;

    while(size > 0)
    {
        *p = 0;
         p ++;
         size --;
    }
}

void opll_calc(OPLL_DEF *v)
{
    v->Angle += v->Freq*F2A;
    if(v->Angle > PI2)
    {
      v->Angle -= PI2;
      MainDebug.FreeCnt[0]++;
    }
    v->Cosref = Dsp_CosF32(v->Angle);
    v->Sinref = Dsp_SinF32(v->Angle);

    v->Cosh[0] = 1;
    v->Sinh[0] = 0;
    v->Cosh[1] = v->Cosref;
  v->Sinh[1] = v->Sinref;
  v->Cosh[2] = 1 - 2*v->Sinref*v->Sinref;
  v->Sinh[2] = 2*v->Cosref*v->Sinref;
}

void spll_calc(SPLL_DEF *v)
{
  #define SPLL_TS  (0.0001)
  #define SPLL_KP  (0.3*PI2)
  #define SPLL_KI  (20*PI2*SPLL_TS)

  float32 Vf_coef;
  float32 Wr_temp;

  Vf_coef    = v->FreqFil*F2A;
  v->Vfi      = v->Input - v->Bias;        // step 0, calc vfi
  v->Vfa     += Vf_coef*v->Vfe[1];          // step 1, calc vfa
  v->Vfb     += Vf_coef*v->Vfa;               // step 2, calc vfb
  v->Vfe[1]  = 2*v->Vfe[0] - v->Vfb;        // step 3, calc vfe1
  v->Vfe[0]  = v->Vfi - v->Vfa;              // step 4, calc vfe0
  v->Vfe[2] += 0.0001*(v->Vfe[0] - v->Vfe[2]);  // step 5, calc vfe2
  v->Vfo     = v->Vfb - 2*v->Vfe[2];        // step 6, calc vfo

//  v->Ds = Cosref*v->Alpha + Sinref*v->Beta ;
//  v->Qs = Cosref*v->Beta  - Sinref*v->Alpha;
  v->Vfd = v->Cosref*v->Vfa + v->Sinref*v->Vfo;
  v->Vfq = v->Cosref*v->Vfo - v->Sinref*v->Vfa;

  Wr_temp = 0.9*PI2*v->FreqRate;
  v->Adev  = SPLL_KP*v->Vfq;
  v->Aint += SPLL_KI*v->Vfq;
  if(v->Aint > Wr_temp) v->Aint = Wr_temp;
  else if(v->Aint < -Wr_temp) v->Aint = -Wr_temp;
  v->Aout  = v->Adev + v->Aint;
  v->AFreq = v->Aout + 1.1*Wr_temp;
  v->Freq  = v->AFreq*PI2D;
  if(!v->FreqFil) v->FreqFil = v->FreqRate;
  v->FreqFil += 0.001*(v->Freq - v->FreqFil);

  v->Angle += v->Freq*F2A;
    if(v->Angle > PI2) v->Angle -= PI2;
    v->Cosref = Dsp_CosF32(v->Angle);
    v->Sinref = Dsp_SinF32(v->Angle);

    v->Cosh[0] = 1;
    v->Sinh[0] = 0;
    v->Cosh[1] = v->Cosref;
  v->Sinh[1] = v->Sinref;
  v->Cosh[2] = 1 - 2*v->Sinref*v->Sinref;
  v->Sinh[2] = 2*v->Cosref*v->Sinref;
}

void harm_det_init(HARM_DET_DEF *v)
{
  clear_struct(v,sizeof(*v));
  v->Kfil = 0.001;
  v->IhNum = 2;
}

void harm_det_calc(HARM_DET_DEF *v,OPLL_DEF *p)
{
  u16 i;

  v->IhSum = 0;
  for(i=0;i<v->IhNum;i++)
  {
    v->Ih[i].DsFil += 2*v->IhDev*p->Cosh[i]*v->Kfil;
    v->Ih[i].QsFil -= 2*v->IhDev*p->Sinh[i]*v->Kfil;
    v->Ih[i].Fil = v->Ih[i].DsFil*p->Cosh[i] - v->Ih[i].QsFil*p->Sinh[i];
    v->IhSum += v->Ih[i].Fil;
  }
  v->IhDev = v->Input - v->IhSum;
}

void Main_DebugInit(void)
{
  clear_struct(&MainDebug,sizeof(MainDebug));
  MainDebug.IhGain = 0;
  MainDebug.PllSel = 0;
  MainDebug.IoutTrig = 275;
  MainDebug.OPLL.Freq = 100;
  MainDebug.SPLL.FreqRate = 100;
  harm_det_init(&MainDebug.Vout);
  harm_det_init(&MainDebug.Iout);
  harm_det_init(&MainDebug.Vref);
  harm_det_init(&MainDebug.Duty);
}

void Main_Log100us(void)
{
  if(MainDebug.Iout.Input > MainDebug.IoutTrig && MainDebug.LogEnCnt <= 500)
  {
    MainDebug.LogEnCnt++;
  }
  else if(MainDebug.Iout.Input < 30)
  {
    MainDebug.LogEnCnt = 0;
  }

  MainDebug.LogCnt++;
  if(MainDebug.LogCnt > 250) // 25ms
  {
    if(MainDebug.LogNum < 20 && MainDebug.LogEnCnt >= 500)
    {
      MainDebug.Log[0][MainDebug.LogNum] = MainDebug.Vout.Ih[0].DsFil;
      MainDebug.Log[1][MainDebug.LogNum] = MainDebug.Vout.Ih[1].DsFil;
      MainDebug.Log[2][MainDebug.LogNum] = MainDebug.Vout.Ih[1].QsFil;

      MainDebug.Log[3][MainDebug.LogNum] = MainDebug.Iout.Ih[0].DsFil;
      MainDebug.Log[4][MainDebug.LogNum] = MainDebug.Iout.Ih[1].DsFil;
      MainDebug.Log[5][MainDebug.LogNum] = MainDebug.Iout.Ih[1].QsFil;

      MainDebug.Log[6][MainDebug.LogNum] = MainDebug.Vref.Ih[0].DsFil;
      MainDebug.Log[7][MainDebug.LogNum] = MainDebug.Vref.Ih[1].DsFil;
      MainDebug.Log[8][MainDebug.LogNum] = MainDebug.Vref.Ih[1].QsFil;

      MainDebug.Log[9][MainDebug.LogNum] = MainDebug.Duty.Ih[0].DsFil;
      MainDebug.Log[10][MainDebug.LogNum] = MainDebug.Duty.Ih[1].DsFil;
      MainDebug.Log[11][MainDebug.LogNum] = MainDebug.Duty.Ih[1].QsFil;
      MainDebug.LogNum++;
    }
    MainDebug.LogCnt = 0;
  }

  MainDebug.FreeCnt[1]++;
  MainDebug.FreeDev = MainDebug.FreeCnt[1] - (10000.0/MainDebug.OPLL.Freq)*MainDebug.FreeCnt[0];
}

void Main_Debug100us(void)
{
  MainDebug.Vout.Input = MeasStatus100us.Vout.Real;
  MainDebug.Iout.Input = MeasStatus100us.Iout.Real;
  MainDebug.Vref.Input = HsfbCtrl_DW.Switch_ju;
  MainDebug.Duty.Input = CtrlStatus15us.BuckDuty;
  MainDebug.Vout.Kfil = MainDebug.Iout.Kfil;
  MainDebug.Vref.Kfil = MainDebug.Iout.Kfil;
  MainDebug.Duty.Kfil = MainDebug.Iout.Kfil;

  if(!MainDebug.PllSel)
  {
    opll_calc(&MainDebug.OPLL);
    MainDebug.Ihref = MainDebug.IhGain*MainDebug.OPLL.Cosref;
  }
  else
  {
    MainDebug.SPLL.Input = MainDebug.Iout.Input;
    spll_calc(&MainDebug.SPLL);
    MainDebug.OPLL.Cosh[0] = MainDebug.SPLL.Cosh[0];
    MainDebug.OPLL.Sinh[0] = MainDebug.SPLL.Sinh[0];
    MainDebug.OPLL.Cosh[1] = MainDebug.SPLL.Cosh[1];
    MainDebug.OPLL.Sinh[1] = MainDebug.SPLL.Sinh[1];
    MainDebug.OPLL.Cosh[2] = MainDebug.SPLL.Cosh[2];
    MainDebug.OPLL.Sinh[2] = MainDebug.SPLL.Sinh[2];
  }

  harm_det_calc(&MainDebug.Vout,&MainDebug.OPLL);
  harm_det_calc(&MainDebug.Iout,&MainDebug.OPLL);
  harm_det_calc(&MainDebug.Vref,&MainDebug.OPLL);
  harm_det_calc(&MainDebug.Duty,&MainDebug.OPLL);

  Main_Log100us();
  if(MainDebug.Reset)
  {
    Main_DebugInit();
    MainDebug.Reset = 0;
  }
}
#endif
