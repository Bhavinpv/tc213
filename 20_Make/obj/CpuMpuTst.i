# 1 "../30_Bsw/MicroTestLib/Static/CpuMpuTst.c"
# 1 "S:\\20_Make//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "../30_Bsw/MicroTestLib/Static/CpuMpuTst.c"
# 40 "../30_Bsw/MicroTestLib/Static/CpuMpuTst.c"
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
# 41 "../30_Bsw/MicroTestLib/Static/CpuMpuTst.c" 2
# 1 "../30_Bsw/Common/TC21x/IfxCpu_bf.h" 1
# 42 "../30_Bsw/MicroTestLib/Static/CpuMpuTst.c" 2
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
# 43 "../30_Bsw/MicroTestLib/Static/CpuMpuTst.c" 2
# 1 "../30_Bsw/MicroTestLib/Static/CpuMpuTst.h" 1
# 43 "../30_Bsw/MicroTestLib/Static/CpuMpuTst.h"
# 1 "../30_Bsw/MicroTestLib/Config/CpuMpuTst_Cfg.h" 1
# 44 "../30_Bsw/MicroTestLib/Static/CpuMpuTst.h" 2
# 1 "../30_Bsw/Common/Platform_Types.h" 1
# 45 "../30_Bsw/MicroTestLib/Static/CpuMpuTst.h" 2
# 1 "../30_Bsw/STL_common/Sl_Timeout.h" 1
# 46 "../30_Bsw/MicroTestLib/Static/CpuMpuTst.h" 2
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
# 47 "../30_Bsw/MicroTestLib/Static/CpuMpuTst.h" 2
# 1 "../30_Bsw/STL_common/Mcal_Compiler.h" 1
# 48 "../30_Bsw/MicroTestLib/Static/CpuMpuTst.h" 2
# 60 "../30_Bsw/MicroTestLib/Static/CpuMpuTst.h"
  typedef uint16 CpuMpuTst_RangeEnType;


  typedef struct CpuMpuTst_TestCfg
  {
    CpuMpuTst_RangeEnType DataRangeEn;
    CpuMpuTst_RangeEnType CodeRangeEn;
  } CpuMpuTst_TestCfgType;





# 1 "../30_Bsw/STL_common/Ifx_MemMap.h" 1
# 2426 "../30_Bsw/STL_common/Ifx_MemMap.h"
#pragma section ".rodata.CONFIGURATION_LT" a
# 74 "../30_Bsw/MicroTestLib/Static/CpuMpuTst.h" 2

extern const CpuMpuTst_TestCfgType CpuMpuTst_ConfigRoot[( 1U )];

# 1 "../30_Bsw/STL_common/Ifx_MemMap.h" 1
# 2437 "../30_Bsw/STL_common/Ifx_MemMap.h"
#pragma section
# 78 "../30_Bsw/MicroTestLib/Static/CpuMpuTst.h" 2




# 1 "../30_Bsw/STL_common/Ifx_MemMap.h" 1
# 2699 "../30_Bsw/STL_common/Ifx_MemMap.h"
#pragma section ".text.STL_ASIL_CODE_NO_OPTIMIZE" ax 4

#pragma GCC optimize "O0"
# 83 "../30_Bsw/MicroTestLib/Static/CpuMpuTst.h" 2

extern Sl_TstRsltType CpuMpuTst_CpuMpuTst(const Sl_ParamSetType ParamSetIndex,
                                          const uint8 TstSeed,
                                          uint32* const TstSignature);

# 1 "../30_Bsw/STL_common/Ifx_MemMap.h" 1
# 2713 "../30_Bsw/STL_common/Ifx_MemMap.h"
#pragma GCC reset_options
#pragma section
# 89 "../30_Bsw/MicroTestLib/Static/CpuMpuTst.h" 2
# 44 "../30_Bsw/MicroTestLib/Static/CpuMpuTst.c" 2
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
# 45 "../30_Bsw/MicroTestLib/Static/CpuMpuTst.c" 2
# 195 "../30_Bsw/MicroTestLib/Static/CpuMpuTst.c"
typedef enum CpuMpuTst_DataRange
{
  MPU_DATA_RANGE00 = 0U,
  MPU_DATA_RANGE01 = 1U,
  MPU_DATA_RANGE02 = 2U,
  MPU_DATA_RANGE03 = 3U,
  MPU_DATA_RANGE04 = 4U,
  MPU_DATA_RANGE05 = 5U,
  MPU_DATA_RANGE06 = 6U,
  MPU_DATA_RANGE07 = 7U,
  MPU_DATA_RANGE08 = 8U,
  MPU_DATA_RANGE09 = 9U,
  MPU_DATA_RANGE10 = 10U,
  MPU_DATA_RANGE11 = 11U,
  MPU_DATA_RANGE12 = 12U,
  MPU_DATA_RANGE13 = 13U,
  MPU_DATA_RANGE14 = 14U,
  MPU_DATA_RANGE15 = 15U
} CpuMpuTst_DataRangeType;


typedef enum CpuMpuTst_CodeRange
{
  MPU_CODE_RANGE00 = 0U,
  MPU_CODE_RANGE01 = 1U,
  MPU_CODE_RANGE02 = 2U,
  MPU_CODE_RANGE03 = 3U,
  MPU_CODE_RANGE04 = 4U,
  MPU_CODE_RANGE05 = 5U,
  MPU_CODE_RANGE06 = 6U,
  MPU_CODE_RANGE07 = 7U
} CpuMpuTst_CodeRangeType;




typedef volatile struct CpuMpuTst_TrapData
{
  volatile uint32 TrapCount;
  volatile uint32 ExpectedTrap;
  volatile uint32 Crc;
} CpuMpuTst_TrapDataType;


typedef struct CpuMpuTst_BackupData
{
  uint32 Syscon;
  uint32 Compat;
  uint32 Dpre;
  uint32 Dpwe;
  uint32 Cpxe;

  uint32 Dpre0;
  uint32 Dpwe0;
  uint32 Cpxe0;

  uint32 Dpr0L;
  uint32 Dpr0U;
  uint32 Dpr1L;
  uint32 Dpr1U;
  uint32 Dpr2L;
  uint32 Dpr2U;
  uint32 Dpr3L;
  uint32 Dpr3U;
  uint32 Dpr4L;
  uint32 Dpr4U;
  uint32 Dpr5L;
  uint32 Dpr5U;
  uint32 Dpr6L;
  uint32 Dpr6U;
  uint32 Dpr7L;
  uint32 Dpr7U;
  uint32 Dpr8L;
  uint32 Dpr8U;
  uint32 Dpr9L;
  uint32 Dpr9U;
  uint32 Dpr10L;
  uint32 Dpr10U;
  uint32 Dpr11L;
  uint32 Dpr11U;
  uint32 Dpr12L;
  uint32 Dpr12U;
  uint32 Dpr13L;
  uint32 Dpr13U;
  uint32 Dpr14L;
  uint32 Dpr14U;
  uint32 Dpr15L;
  uint32 Dpr15U;
  uint32 Cpr0L;
  uint32 Cpr0U;
  uint32 Cpr1L;
  uint32 Cpr1U;
  uint32 Cpr2L;
  uint32 Cpr2U;
  uint32 Cpr3L;
  uint32 Cpr3U;
  uint32 Cpr4L;
  uint32 Cpr4U;
  uint32 Cpr5L;
  uint32 Cpr5U;
  uint32 Cpr6L;
  uint32 Cpr6U;
  uint32 Cpr7L;
  uint32 Cpr7U;
} CpuMpuTst_BackupDataType;


typedef struct CpuMpuTst_TestData
{
  volatile uint32 ExcludedMemory[( 2U )];
  volatile uint32 IncludedMemory[( 2U )];
} CpuMpuTst_TestDataType;


typedef struct CpuMpuTst_CodeRangeCtx
{
  uint32 AccessEnableValue;
  uint32 AccessDisableValue;
} CpuMpuTst_CodeRangeCtxType;


typedef struct CpuMpuTst_DataRangeCtx
{
  uint32 AccessEnableValue;
  uint32 AccessDisableValue;
} CpuMpuTst_DataRangeCtxType;
# 332 "../30_Bsw/MicroTestLib/Static/CpuMpuTst.c"
# 1 "../30_Bsw/STL_common/Ifx_MemMap.h" 1
# 3401 "../30_Bsw/STL_common/Ifx_MemMap.h"
#pragma section ".data.STL_RAM_UNSPECIFIED" aw
# 333 "../30_Bsw/MicroTestLib/Static/CpuMpuTst.c" 2


static CpuMpuTst_TrapDataType CpuMpuTst_TrapData[(1U)];


# 1 "../30_Bsw/STL_common/Ifx_MemMap.h" 1
# 3414 "../30_Bsw/STL_common/Ifx_MemMap.h"
#pragma section
# 339 "../30_Bsw/MicroTestLib/Static/CpuMpuTst.c" 2




# 1 "../30_Bsw/STL_common/Ifx_MemMap.h" 1
# 3456 "../30_Bsw/STL_common/Ifx_MemMap.h"
#pragma section ".bss.CpuMpu.DEFAULT_RAM_8BYTE" awB 8
# 344 "../30_Bsw/MicroTestLib/Static/CpuMpuTst.c" 2

static CpuMpuTst_TestDataType CpuMpuTst_lTestData[(1U)];


# 1 "../30_Bsw/STL_common/Ifx_MemMap.h" 1
# 3470 "../30_Bsw/STL_common/Ifx_MemMap.h"
#pragma section
# 349 "../30_Bsw/MicroTestLib/Static/CpuMpuTst.c" 2
# 358 "../30_Bsw/MicroTestLib/Static/CpuMpuTst.c"
# 1 "../30_Bsw/STL_common/Ifx_MemMap.h" 1
# 2699 "../30_Bsw/STL_common/Ifx_MemMap.h"
#pragma section ".text.STL_ASIL_CODE_NO_OPTIMIZE" ax 4

#pragma GCC optimize "O0"
# 359 "../30_Bsw/MicroTestLib/Static/CpuMpuTst.c" 2

static void CpuMpuTst_lInit(CpuMpuTst_BackupDataType* const BackupData);
static void CpuMpuTst_lRestore(const CpuMpuTst_BackupDataType*
                                 const BackupData);
static Sl_TstRsltType CpuMpuTst_lTestDataRange
(
  const CpuMpuTst_DataRangeType DataRange,
  const Sl_ParamSetType ParamSetIndex,
  uint32* const TstSignature
);
static Sl_TstRsltType CpuMpuTst_lTestCodeRange
(
  const CpuMpuTst_CodeRangeType CodeRange,
  uint32* const TstSignature
);
static Sl_TstRsltType CpuMpuTst_lSetupDataRange
(
  const CpuMpuTst_DataRangeType DataRange,
  CpuMpuTst_DataRangeCtxType* const DpMask
);
static Sl_TstRsltType CpuMpuTst_lSetupCodeRange
(
  const CpuMpuTst_CodeRangeType CodeRange,
  CpuMpuTst_CodeRangeCtxType* const Context
);

static __inline__ uint32 CpuMpuTst_lCalcCounterCrc(void);

# 1 "../30_Bsw/STL_common/Ifx_MemMap.h" 1
# 2713 "../30_Bsw/STL_common/Ifx_MemMap.h"
#pragma GCC reset_options
#pragma section
# 388 "../30_Bsw/MicroTestLib/Static/CpuMpuTst.c" 2

# 1 "../30_Bsw/STL_common/Ifx_MemMap.h" 1
# 2910 "../30_Bsw/STL_common/Ifx_MemMap.h"
#pragma section ".text.CpuMpuExAccess" ax 8
# 390 "../30_Bsw/MicroTestLib/Static/CpuMpuTst.c" 2




  static void CpuMpuTst_lTestExecuteAccess(void);






# 1 "../30_Bsw/STL_common/Ifx_MemMap.h" 1
# 2922 "../30_Bsw/STL_common/Ifx_MemMap.h"
#pragma section
# 402 "../30_Bsw/MicroTestLib/Static/CpuMpuTst.c" 2

# 1 "../30_Bsw/STL_common/Ifx_MemMap.h" 1
# 2699 "../30_Bsw/STL_common/Ifx_MemMap.h"
#pragma section ".text.STL_ASIL_CODE_NO_OPTIMIZE" ax 4

#pragma GCC optimize "O0"
# 404 "../30_Bsw/MicroTestLib/Static/CpuMpuTst.c" 2
static boolean CpuMpuTst_ProtectionTrapHandler(const uint32 TrapId);

# 1 "../30_Bsw/STL_common/Ifx_MemMap.h" 1
# 2713 "../30_Bsw/STL_common/Ifx_MemMap.h"
#pragma GCC reset_options
#pragma section
# 407 "../30_Bsw/MicroTestLib/Static/CpuMpuTst.c" 2
# 450 "../30_Bsw/MicroTestLib/Static/CpuMpuTst.c"
# 1 "../30_Bsw/STL_common/Ifx_MemMap.h" 1
# 2699 "../30_Bsw/STL_common/Ifx_MemMap.h"
#pragma section ".text.STL_ASIL_CODE_NO_OPTIMIZE" ax 4

#pragma GCC optimize "O0"
# 451 "../30_Bsw/MicroTestLib/Static/CpuMpuTst.c" 2
# 493 "../30_Bsw/MicroTestLib/Static/CpuMpuTst.c"
Sl_TstRsltType CpuMpuTst_CpuMpuTst(const Sl_ParamSetType ParamSetIndex,
                                       const uint8 TstSeed,
                                       uint32* const TstSignature)
{
  Sl_TstRsltType Result = (0x1010aU);
  uint32 TestEnMask;
  uint32 i;
  CpuMpuTst_BackupDataType BackupData;


  *TstSignature = (uint32)((__crc32((unsigned_int)((uint32)TEST_ID_CPU_MPU_TST),(unsigned_int)((uint32)TstSeed))));


  if (ParamSetIndex >= ( 1U ))
  {
    Result = (0x10102U);
  }
  else
  {

    CpuMpuTst_lInit(&BackupData);


    if (TRAP_RegisterTrapHandler (( ( (uint8)1) ),
                    &CpuMpuTst_ProtectionTrapHandler) == ( (TRAP_ErrorType)0x00000000))
    {

      TestEnMask = (uint32)0x00000001U;
      Result = (0x101ffU);
      i = (uint32)0U;
      do
      {
        if ((CpuMpuTst_ConfigRoot[ParamSetIndex].DataRangeEn & TestEnMask) > 0U)
        {
          Result = CpuMpuTst_lTestDataRange((CpuMpuTst_DataRangeType)i,
                                              ParamSetIndex,
                                              TstSignature);
        }

        TestEnMask <<= 1U;

        i++;
      }while ((i < ( 16U )) && ((0x101ffU) == Result));

      if((0x101ffU) == Result)
      {

        TestEnMask = (uint32)0x00000001U;

        i = (uint32)0U;
        do
        {
          if((CpuMpuTst_ConfigRoot[ParamSetIndex].CodeRangeEn & TestEnMask)
              > 0U)
          {
            Result = CpuMpuTst_lTestCodeRange((CpuMpuTst_CodeRangeType)i,
                                                TstSignature);
          }
          i++;

          TestEnMask <<= 1U;

        }while((i < ( 8U )) &&
               ((0x101ffU) == Result));
      }

      if (TRAP_UnregisterTrapHandler (( ( (uint8)1) )) != ( (TRAP_ErrorType)0x00000000))
      {
        Result = (0x11003U);
      }
    }
    else
    {
      Result = (0x11003U);
    }

    CpuMpuTst_lRestore(&BackupData);
  }

  *TstSignature = (uint32)((__crc32((unsigned_int)(*TstSignature),(unsigned_int)((uint32)Result))));

  return Result;
}
# 603 "../30_Bsw/MicroTestLib/Static/CpuMpuTst.c"
static boolean CpuMpuTst_ProtectionTrapHandler(const uint32 TrapId)
{
  uint32 TrapCounterCrc;
  uint8 CoreId;
  uint32 Temp;
  boolean ExpectedTrap = (boolean)0;


  Temp = (uint32)((__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "(0xFE14)" : "=d" (__res) :: "memory"); __res; })));
  Temp = (uint32)Temp & (~((uint32)((uint32)(0x1u) << (1u))));
  _dsync(); do { unsigned __newval = (unsigned) ((Temp)); __asm__ volatile ("mtcr LO:" "(0xFE14)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();


  CoreId = Mcal_GetCoreId();

  TrapCounterCrc = CpuMpuTst_TrapData[CoreId].Crc;
  if (TrapCounterCrc == CpuMpuTst_lCalcCounterCrc())
  {
    switch (TrapId)
    {
      case ( 2U ):
        if (CpuMpuTst_TrapData[CoreId].ExpectedTrap ==
            (uint32)(0x1U))
        {
          ExpectedTrap = (boolean)1;
          CpuMpuTst_TrapData[CoreId].ExpectedTrap = (uint32)(0x0U);


          _dsync(); do { unsigned __newval = (unsigned) ((0x0U)); __asm__ volatile ("mtcr LO:" "(0x9010)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();


          if (( 0xFFFFFFFFU ) != CpuMpuTst_TrapData[CoreId].TrapCount)
          {
            CpuMpuTst_TrapData[CoreId].TrapCount++;
          }
        }
        break;

      case ( 3U ):
        if (CpuMpuTst_TrapData[CoreId].ExpectedTrap ==
            (uint32)(0x2U))
        {
          ExpectedTrap = (boolean)1;
          CpuMpuTst_TrapData[CoreId].ExpectedTrap = (uint32)(0x0U);


          _dsync(); do { unsigned __newval = (unsigned) ((0x0U)); __asm__ volatile ("mtcr LO:" "(0x9010)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();


          if (( 0xFFFFFFFFU ) != CpuMpuTst_TrapData[CoreId].TrapCount)
          {
            CpuMpuTst_TrapData[CoreId].TrapCount++;
          }
        }
        break;

      case ( 4U ):
        if (CpuMpuTst_TrapData[CoreId].ExpectedTrap ==
            (uint32)(0x3U))
        {
          ExpectedTrap = (boolean)1;
          CpuMpuTst_TrapData[CoreId].ExpectedTrap = (uint32)(0x0U);


          if (( 0xFFFFFFFFU ) != CpuMpuTst_TrapData[CoreId].TrapCount)
          {
            CpuMpuTst_TrapData[CoreId].TrapCount++;
          }
        }
        break;

      default:

        break;
    }


    CpuMpuTst_TrapData[CoreId].Crc = CpuMpuTst_lCalcCounterCrc();
  }

  return ExpectedTrap;
}
# 713 "../30_Bsw/MicroTestLib/Static/CpuMpuTst.c"
static void CpuMpuTst_lInit(CpuMpuTst_BackupDataType* const BackupData)
{
  Ifx_CPU_COMPAT compat;
  uint8 CoreId;


  CoreId = Mcal_GetCoreId();


  CpuMpuTst_TrapData[CoreId].ExpectedTrap = (uint32)(0x0U);


  BackupData->Syscon = (uint32)((__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "(0xFE14)" : "=d" (__res) :: "memory"); __res; })));
  BackupData->Compat = (uint32)((__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "(0x9400)" : "=d" (__res) :: "memory"); __res; })));

  BackupData->Dpre = (uint32)((__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "((0xE014))" : "=d" (__res) :: "memory"); __res; })));
  BackupData->Dpwe = (uint32)((__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "((0xE024))" : "=d" (__res) :: "memory"); __res; })));
  BackupData->Cpxe = (uint32)((__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "((0xE004))" : "=d" (__res) :: "memory"); __res; })));





  BackupData->Dpre0 = (uint32)((__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "(0xE010)" : "=d" (__res) :: "memory"); __res; })));
  BackupData->Dpwe0 = (uint32)((__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "(0xE020)" : "=d" (__res) :: "memory"); __res; })));
  BackupData->Cpxe0 = (uint32)((__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "(0xE000)" : "=d" (__res) :: "memory"); __res; })));


  BackupData->Dpr0L = (uint32)((__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "(0xC000)" : "=d" (__res) :: "memory"); __res; })));
  BackupData->Dpr0U = (uint32)((__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "(0xC004)" : "=d" (__res) :: "memory"); __res; })));
  BackupData->Dpr1L = (uint32)((__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "(0xC008)" : "=d" (__res) :: "memory"); __res; })));
  BackupData->Dpr1U = (uint32)((__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "(0xC00C)" : "=d" (__res) :: "memory"); __res; })));
  BackupData->Dpr2L = (uint32)((__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "(0xC010)" : "=d" (__res) :: "memory"); __res; })));
  BackupData->Dpr2U = (uint32)((__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "(0xC014)" : "=d" (__res) :: "memory"); __res; })));
  BackupData->Dpr3L = (uint32)((__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "(0xC018)" : "=d" (__res) :: "memory"); __res; })));
  BackupData->Dpr3U = (uint32)((__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "(0xC01C)" : "=d" (__res) :: "memory"); __res; })));
  BackupData->Dpr4L = (uint32)((__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "(0xC020)" : "=d" (__res) :: "memory"); __res; })));
  BackupData->Dpr4U = (uint32)((__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "(0xC024)" : "=d" (__res) :: "memory"); __res; })));
  BackupData->Dpr5L = (uint32)((__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "(0xC028)" : "=d" (__res) :: "memory"); __res; })));
  BackupData->Dpr5U = (uint32)((__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "(0xC02C)" : "=d" (__res) :: "memory"); __res; })));
  BackupData->Dpr6L = (uint32)((__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "(0xC030)" : "=d" (__res) :: "memory"); __res; })));
  BackupData->Dpr6U = (uint32)((__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "(0xC034)" : "=d" (__res) :: "memory"); __res; })));
  BackupData->Dpr7L = (uint32)((__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "(0xC038)" : "=d" (__res) :: "memory"); __res; })));
  BackupData->Dpr7U = (uint32)((__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "(0xC03C)" : "=d" (__res) :: "memory"); __res; })));
  BackupData->Dpr8L = (uint32)((__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "(0xC040)" : "=d" (__res) :: "memory"); __res; })));
  BackupData->Dpr8U = (uint32)((__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "(0xC044)" : "=d" (__res) :: "memory"); __res; })));
  BackupData->Dpr9L = (uint32)((__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "(0xC048)" : "=d" (__res) :: "memory"); __res; })));
  BackupData->Dpr9U = (uint32)((__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "(0xC04C)" : "=d" (__res) :: "memory"); __res; })));
  BackupData->Dpr10L = (uint32)((__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "(0xC050)" : "=d" (__res) :: "memory"); __res; })));
  BackupData->Dpr10U = (uint32)((__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "(0xC054)" : "=d" (__res) :: "memory"); __res; })));
  BackupData->Dpr11L = (uint32)((__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "(0xC058)" : "=d" (__res) :: "memory"); __res; })));
  BackupData->Dpr11U = (uint32)((__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "(0xC05C)" : "=d" (__res) :: "memory"); __res; })));
  BackupData->Dpr12L = (uint32)((__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "(0xC060)" : "=d" (__res) :: "memory"); __res; })));
  BackupData->Dpr12U = (uint32)((__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "(0xC064)" : "=d" (__res) :: "memory"); __res; })));
  BackupData->Dpr13L = (uint32)((__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "(0xC068)" : "=d" (__res) :: "memory"); __res; })));
  BackupData->Dpr13U = (uint32)((__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "(0xC06C)" : "=d" (__res) :: "memory"); __res; })));
  BackupData->Dpr14L = (uint32)((__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "(0xC070)" : "=d" (__res) :: "memory"); __res; })));
  BackupData->Dpr14U = (uint32)((__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "(0xC074)" : "=d" (__res) :: "memory"); __res; })));
  BackupData->Dpr15L = (uint32)((__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "(0xC078)" : "=d" (__res) :: "memory"); __res; })));
  BackupData->Dpr15U = (uint32)((__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "(0xC07C)" : "=d" (__res) :: "memory"); __res; })));

  BackupData->Cpr0L = (uint32)((__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "(0xD000)" : "=d" (__res) :: "memory"); __res; })));
  BackupData->Cpr0U = (uint32)((__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "(0xD004)" : "=d" (__res) :: "memory"); __res; })));
  BackupData->Cpr1L = (uint32)((__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "(0xD008)" : "=d" (__res) :: "memory"); __res; })));
  BackupData->Cpr1U = (uint32)((__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "(0xD00C)" : "=d" (__res) :: "memory"); __res; })));
  BackupData->Cpr2L = (uint32)((__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "(0xD010)" : "=d" (__res) :: "memory"); __res; })));
  BackupData->Cpr2U = (uint32)((__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "(0xD014)" : "=d" (__res) :: "memory"); __res; })));
  BackupData->Cpr3L = (uint32)((__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "(0xD018)" : "=d" (__res) :: "memory"); __res; })));
  BackupData->Cpr3U = (uint32)((__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "(0xD01C)" : "=d" (__res) :: "memory"); __res; })));
  BackupData->Cpr4L = (uint32)((__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "(0xD020)" : "=d" (__res) :: "memory"); __res; })));
  BackupData->Cpr4U = (uint32)((__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "(0xD024)" : "=d" (__res) :: "memory"); __res; })));
  BackupData->Cpr5L = (uint32)((__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "(0xD028)" : "=d" (__res) :: "memory"); __res; })));
  BackupData->Cpr5U = (uint32)((__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "(0xD02C)" : "=d" (__res) :: "memory"); __res; })));
  BackupData->Cpr6L = (uint32)((__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "(0xD030)" : "=d" (__res) :: "memory"); __res; })));
  BackupData->Cpr6U = (uint32)((__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "(0xD034)" : "=d" (__res) :: "memory"); __res; })));
  BackupData->Cpr7L = (uint32)((__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "(0xD038)" : "=d" (__res) :: "memory"); __res; })));
  BackupData->Cpr7U = (uint32)((__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "(0xD03C)" : "=d" (__res) :: "memory"); __res; })));


  compat.U = BackupData->Compat;
  compat.B.SP = 1U;
  Mcal_ResetSafetyENDINIT_Timed(((uint32)22960U));
  _dsync(); do { unsigned __newval = (unsigned) ((compat.U)); __asm__ volatile ("mtcr LO:" "(0x9400)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
  Mcal_SetSafetyENDINIT_Timed();
}
# 826 "../30_Bsw/MicroTestLib/Static/CpuMpuTst.c"
static void CpuMpuTst_lRestore(const CpuMpuTst_BackupDataType*
                               const BackupData)
{
  _dsync(); do { unsigned __newval = (unsigned) ((BackupData->Dpr0L)); __asm__ volatile ("mtcr LO:" "(0xC000)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
  _dsync(); do { unsigned __newval = (unsigned) ((BackupData->Dpr0U)); __asm__ volatile ("mtcr LO:" "(0xC004)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
  _dsync(); do { unsigned __newval = (unsigned) ((BackupData->Dpr1L)); __asm__ volatile ("mtcr LO:" "(0xC008)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
  _dsync(); do { unsigned __newval = (unsigned) ((BackupData->Dpr1U)); __asm__ volatile ("mtcr LO:" "(0xC00C)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
  _dsync(); do { unsigned __newval = (unsigned) ((BackupData->Dpr2L)); __asm__ volatile ("mtcr LO:" "(0xC010)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
  _dsync(); do { unsigned __newval = (unsigned) ((BackupData->Dpr2U)); __asm__ volatile ("mtcr LO:" "(0xC014)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
  _dsync(); do { unsigned __newval = (unsigned) ((BackupData->Dpr3L)); __asm__ volatile ("mtcr LO:" "(0xC018)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
  _dsync(); do { unsigned __newval = (unsigned) ((BackupData->Dpr3U)); __asm__ volatile ("mtcr LO:" "(0xC01C)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
  _dsync(); do { unsigned __newval = (unsigned) ((BackupData->Dpr4L)); __asm__ volatile ("mtcr LO:" "(0xC020)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
  _dsync(); do { unsigned __newval = (unsigned) ((BackupData->Dpr4U)); __asm__ volatile ("mtcr LO:" "(0xC024)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
  _dsync(); do { unsigned __newval = (unsigned) ((BackupData->Dpr5L)); __asm__ volatile ("mtcr LO:" "(0xC028)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
  _dsync(); do { unsigned __newval = (unsigned) ((BackupData->Dpr5U)); __asm__ volatile ("mtcr LO:" "(0xC02C)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
  _dsync(); do { unsigned __newval = (unsigned) ((BackupData->Dpr6L)); __asm__ volatile ("mtcr LO:" "(0xC030)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
  _dsync(); do { unsigned __newval = (unsigned) ((BackupData->Dpr6U)); __asm__ volatile ("mtcr LO:" "(0xC034)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
  _dsync(); do { unsigned __newval = (unsigned) ((BackupData->Dpr7L)); __asm__ volatile ("mtcr LO:" "(0xC038)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
  _dsync(); do { unsigned __newval = (unsigned) ((BackupData->Dpr7U)); __asm__ volatile ("mtcr LO:" "(0xC03C)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
  _dsync(); do { unsigned __newval = (unsigned) ((BackupData->Dpr8L)); __asm__ volatile ("mtcr LO:" "(0xC040)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
  _dsync(); do { unsigned __newval = (unsigned) ((BackupData->Dpr8U)); __asm__ volatile ("mtcr LO:" "(0xC044)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
  _dsync(); do { unsigned __newval = (unsigned) ((BackupData->Dpr9L)); __asm__ volatile ("mtcr LO:" "(0xC048)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
  _dsync(); do { unsigned __newval = (unsigned) ((BackupData->Dpr9U)); __asm__ volatile ("mtcr LO:" "(0xC04C)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
  _dsync(); do { unsigned __newval = (unsigned) ((BackupData->Dpr10L)); __asm__ volatile ("mtcr LO:" "(0xC050)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
  _dsync(); do { unsigned __newval = (unsigned) ((BackupData->Dpr10U)); __asm__ volatile ("mtcr LO:" "(0xC054)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
  _dsync(); do { unsigned __newval = (unsigned) ((BackupData->Dpr11L)); __asm__ volatile ("mtcr LO:" "(0xC058)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
  _dsync(); do { unsigned __newval = (unsigned) ((BackupData->Dpr11U)); __asm__ volatile ("mtcr LO:" "(0xC05C)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
  _dsync(); do { unsigned __newval = (unsigned) ((BackupData->Dpr12L)); __asm__ volatile ("mtcr LO:" "(0xC060)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
  _dsync(); do { unsigned __newval = (unsigned) ((BackupData->Dpr12U)); __asm__ volatile ("mtcr LO:" "(0xC064)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
  _dsync(); do { unsigned __newval = (unsigned) ((BackupData->Dpr13L)); __asm__ volatile ("mtcr LO:" "(0xC068)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
  _dsync(); do { unsigned __newval = (unsigned) ((BackupData->Dpr13U)); __asm__ volatile ("mtcr LO:" "(0xC06C)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
  _dsync(); do { unsigned __newval = (unsigned) ((BackupData->Dpr14L)); __asm__ volatile ("mtcr LO:" "(0xC070)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
  _dsync(); do { unsigned __newval = (unsigned) ((BackupData->Dpr14U)); __asm__ volatile ("mtcr LO:" "(0xC074)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
  _dsync(); do { unsigned __newval = (unsigned) ((BackupData->Dpr15L)); __asm__ volatile ("mtcr LO:" "(0xC078)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
  _dsync(); do { unsigned __newval = (unsigned) ((BackupData->Dpr15U)); __asm__ volatile ("mtcr LO:" "(0xC07C)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();

  _dsync(); do { unsigned __newval = (unsigned) ((BackupData->Cpr0L)); __asm__ volatile ("mtcr LO:" "(0xD000)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
  _dsync(); do { unsigned __newval = (unsigned) ((BackupData->Cpr0U)); __asm__ volatile ("mtcr LO:" "(0xD004)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
  _dsync(); do { unsigned __newval = (unsigned) ((BackupData->Cpr1L)); __asm__ volatile ("mtcr LO:" "(0xD008)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
  _dsync(); do { unsigned __newval = (unsigned) ((BackupData->Cpr1U)); __asm__ volatile ("mtcr LO:" "(0xD00C)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
  _dsync(); do { unsigned __newval = (unsigned) ((BackupData->Cpr2L)); __asm__ volatile ("mtcr LO:" "(0xD010)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
  _dsync(); do { unsigned __newval = (unsigned) ((BackupData->Cpr2U)); __asm__ volatile ("mtcr LO:" "(0xD014)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
  _dsync(); do { unsigned __newval = (unsigned) ((BackupData->Cpr3L)); __asm__ volatile ("mtcr LO:" "(0xD018)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
  _dsync(); do { unsigned __newval = (unsigned) ((BackupData->Cpr3U)); __asm__ volatile ("mtcr LO:" "(0xD01C)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
  _dsync(); do { unsigned __newval = (unsigned) ((BackupData->Cpr4L)); __asm__ volatile ("mtcr LO:" "(0xD020)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
  _dsync(); do { unsigned __newval = (unsigned) ((BackupData->Cpr4U)); __asm__ volatile ("mtcr LO:" "(0xD024)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
  _dsync(); do { unsigned __newval = (unsigned) ((BackupData->Cpr5L)); __asm__ volatile ("mtcr LO:" "(0xD028)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
  _dsync(); do { unsigned __newval = (unsigned) ((BackupData->Cpr5U)); __asm__ volatile ("mtcr LO:" "(0xD02C)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
  _dsync(); do { unsigned __newval = (unsigned) ((BackupData->Cpr6L)); __asm__ volatile ("mtcr LO:" "(0xD030)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
  _dsync(); do { unsigned __newval = (unsigned) ((BackupData->Cpr6U)); __asm__ volatile ("mtcr LO:" "(0xD034)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
  _dsync(); do { unsigned __newval = (unsigned) ((BackupData->Cpr7L)); __asm__ volatile ("mtcr LO:" "(0xD038)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
  _dsync(); do { unsigned __newval = (unsigned) ((BackupData->Cpr7U)); __asm__ volatile ("mtcr LO:" "(0xD03C)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();






  _dsync(); do { unsigned __newval = (unsigned) ((BackupData->Dpre0)); __asm__ volatile ("mtcr LO:" "(0xE010)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
  _dsync(); do { unsigned __newval = (unsigned) ((BackupData->Dpwe0)); __asm__ volatile ("mtcr LO:" "(0xE020)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
  _dsync(); do { unsigned __newval = (unsigned) ((BackupData->Cpxe0)); __asm__ volatile ("mtcr LO:" "(0xE000)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();


  _dsync(); do { unsigned __newval = (unsigned) ((BackupData->Dpre)); __asm__ volatile ("mtcr LO:" "((0xE014))" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
  _dsync(); do { unsigned __newval = (unsigned) ((BackupData->Dpwe)); __asm__ volatile ("mtcr LO:" "((0xE024))" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
  _dsync(); do { unsigned __newval = (unsigned) ((BackupData->Cpxe)); __asm__ volatile ("mtcr LO:" "((0xE004))" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
  _dsync(); do { unsigned __newval = (unsigned) ((BackupData->Syscon)); __asm__ volatile ("mtcr LO:" "(0xFE14)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();

  Mcal_ResetSafetyENDINIT_Timed(((uint32)22960U));
  _dsync(); do { unsigned __newval = (unsigned) ((BackupData->Compat)); __asm__ volatile ("mtcr LO:" "(0x9400)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
  Mcal_SetSafetyENDINIT_Timed();
}
# 929 "../30_Bsw/MicroTestLib/Static/CpuMpuTst.c"
static __inline__ uint32 CpuMpuTst_lCalcCounterCrc(void)
{
  uint32 Crc = 0U;
  uint8 CoreId;


  CoreId = Mcal_GetCoreId();

  Crc = (uint32)(__crc32((unsigned_int)(Crc),(unsigned_int)(CpuMpuTst_TrapData[CoreId].TrapCount)));
  Crc = (uint32)(__crc32((unsigned_int)(Crc),(unsigned_int)(CpuMpuTst_TrapData[CoreId].ExpectedTrap)));
  return Crc;

}
# 988 "../30_Bsw/MicroTestLib/Static/CpuMpuTst.c"
static Sl_TstRsltType CpuMpuTst_lTestDataRange
(
  const CpuMpuTst_DataRangeType DataRange,
  const Sl_ParamSetType ParamSetIndex,
  uint32* const TstSignature
)
{







  register uint32 Dummy __asm("d8")= 0U;
  register uint32 Temp __asm("d9")= 0U;
  register uint32 Dummy2 __asm("d10")= 0U;
# 1015 "../30_Bsw/MicroTestLib/Static/CpuMpuTst.c"
  Sl_TstRsltType Result;
  CpuMpuTst_DataRangeCtxType DpMask;
  uint32 CalcCounterCrc;
  uint32 TrapCount;
  uint8 CoreId;
  uint32 DataRead;
  uint32 DataExpected;


  DataRead = 0U;
  DataExpected = 0U;

  {if((ParamSetIndex) != 0U) { }}


  CoreId = Mcal_GetCoreId();

  CpuMpuTst_lTestData[CoreId].IncludedMemory[0] = (~((uint32)(0x9ABCDEF0U)));

  CpuMpuTst_TrapData[CoreId].TrapCount= 0U;


  Temp = (uint32)((__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "(0xFE14)" : "=d" (__res) :: "memory"); __res; })));
  Temp = (uint32)Temp & (~((uint32)((uint32)(0x1u) << (1u))));
  _dsync(); do { unsigned __newval = (unsigned) ((Temp)); __asm__ volatile ("mtcr LO:" "(0xFE14)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();


  Result = CpuMpuTst_lSetupDataRange(DataRange, &DpMask);

  if ((0x101ffU) == Result)
  {





    Temp = ((uint32)(((__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "(0xFE04)" : "=d" (__res) :: "memory"); __res; })))) & (~((uint32)((uint32)(0x3u) << (12u)))));
    Temp = ((uint32)Temp | ((uint32)( 1U ) << ((uint32)(12u) )));
    _dsync(); do { unsigned __newval = (unsigned) ((Temp)); __asm__ volatile ("mtcr LO:" "(0xFE04)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();


    _dsync(); do { unsigned __newval = (unsigned) ((DpMask.AccessDisableValue)); __asm__ volatile ("mtcr LO:" "((0xE014))" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
    _dsync(); do { unsigned __newval = (unsigned) ((DpMask.AccessDisableValue)); __asm__ volatile ("mtcr LO:" "((0xE024))" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();



    _dsync(); do { unsigned __newval = (unsigned) ((( 0x00000000U ))); __asm__ volatile ("mtcr LO:" "(0xD000)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
    _dsync(); do { unsigned __newval = (unsigned) ((( 0xFFFFFFF8U ))); __asm__ volatile ("mtcr LO:" "(0xD004)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
    _dsync(); do { unsigned __newval = (unsigned) ((( 0x00000001U ))); __asm__ volatile ("mtcr LO:" "((0xE004))" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();



    _dsync(); do { unsigned __newval = (unsigned) ((DpMask.AccessDisableValue)); __asm__ volatile ("mtcr LO:" "(0xE010)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
    _dsync(); do { unsigned __newval = (unsigned) ((DpMask.AccessDisableValue)); __asm__ volatile ("mtcr LO:" "(0xE020)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
    _dsync(); do { unsigned __newval = (unsigned) ((( 0x00000001U ))); __asm__ volatile ("mtcr LO:" "(0xE000)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();



    Mcal_SuspendAllInterrupts();


    CpuMpuTst_TrapData[CoreId].ExpectedTrap = (uint32)(0x2U);


    CpuMpuTst_TrapData[CoreId].Crc = CpuMpuTst_lCalcCounterCrc();


    Temp = (uint32)((__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "(0xFE14)" : "=d" (__res) :: "memory"); __res; })));
    Temp = (uint32)Temp | (uint32)((uint32)(0x1u) << (1u));
    _dsync(); do { unsigned __newval = (unsigned) ((Temp)); __asm__ volatile ("mtcr LO:" "(0xFE14)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();




    CpuMpuTst_lTestData[CoreId].IncludedMemory[0] = 0U;


    CpuMpuTst_TrapData[CoreId].ExpectedTrap = (uint32)(0x1U);


    CpuMpuTst_TrapData[CoreId].Crc = CpuMpuTst_lCalcCounterCrc();




    Temp = (uint32)Temp | (uint32)((uint32)(0x1u) << (1u));
    _dsync(); do { unsigned __newval = (unsigned) ((Temp)); __asm__ volatile ("mtcr LO:" "(0xFE14)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();




    Dummy = (uint32)CpuMpuTst_lTestData[CoreId].IncludedMemory[0];


    CpuMpuTst_TrapData[CoreId].ExpectedTrap = (uint32)(0x2U);


    CpuMpuTst_TrapData[CoreId].Crc = CpuMpuTst_lCalcCounterCrc();




    Temp = (uint32)Temp | (uint32)((uint32)(0x1u) << (1u));
    _dsync(); do { unsigned __newval = (unsigned) ((Temp)); __asm__ volatile ("mtcr LO:" "(0xFE14)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();




    CpuMpuTst_lTestData[CoreId].ExcludedMemory[0] = 0U;


    CpuMpuTst_TrapData[CoreId].ExpectedTrap = (uint32)(0x1U);


    CpuMpuTst_TrapData[CoreId].Crc = CpuMpuTst_lCalcCounterCrc();




    Temp = (uint32)Temp | (uint32)((uint32)(0x1u) << (1u));
    _dsync(); do { unsigned __newval = (unsigned) ((Temp)); __asm__ volatile ("mtcr LO:" "(0xFE14)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();




    Dummy = (uint32)CpuMpuTst_lTestData[CoreId].ExcludedMemory[0];


    CpuMpuTst_TrapData[CoreId].ExpectedTrap = (uint32)(0x0U);


    CpuMpuTst_TrapData[CoreId].Crc = CpuMpuTst_lCalcCounterCrc();


    Temp = (uint32)( (uint32)Temp & (uint32)(~((uint32)((uint32)(0x1u) << (1u)))) );
    _dsync(); do { unsigned __newval = (unsigned) ((Temp)); __asm__ volatile ("mtcr LO:" "(0xFE14)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();

    _dsync(); do { unsigned __newval = (unsigned) ((DpMask.AccessEnableValue)); __asm__ volatile ("mtcr LO:" "((0xE024))" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();


    Dummy = ((uint32)(0x9ABCDEF0U));


    Temp = (uint32)Temp | (uint32)((uint32)(0x1u) << (1u));
    _dsync(); do { unsigned __newval = (unsigned) ((Temp)); __asm__ volatile ("mtcr LO:" "(0xFE14)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();


    CpuMpuTst_lTestData[CoreId].IncludedMemory[0] = (uint32)Dummy;


    Temp = (uint32)((uint32)Temp & (uint32)(~((uint32)((uint32)(0x1u) << (1u)))));
# 1177 "../30_Bsw/MicroTestLib/Static/CpuMpuTst.c"
    __asm("mtcr 0xfe14, %d9");
    __asm("isync");
# 1188 "../30_Bsw/MicroTestLib/Static/CpuMpuTst.c"
    _dsync(); do { unsigned __newval = (unsigned) ((DpMask.AccessEnableValue)); __asm__ volatile ("mtcr LO:" "((0xE014))" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();


    Temp = (uint32)Temp | (uint32)((uint32)(0x1u) << (1u));
    _dsync(); do { unsigned __newval = (unsigned) ((Temp)); __asm__ volatile ("mtcr LO:" "(0xFE14)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();


    Dummy2 = (uint32)CpuMpuTst_lTestData[CoreId].IncludedMemory[0];


    Temp = (uint32)((uint32)Temp & (uint32)(~((uint32)((uint32)(0x1u) << (1u)))));
# 1210 "../30_Bsw/MicroTestLib/Static/CpuMpuTst.c"
    __asm("mtcr 0xfe14, %d9");
    __asm("isync");
# 1221 "../30_Bsw/MicroTestLib/Static/CpuMpuTst.c"
    Mcal_ResumeAllInterrupts();


    DataRead = (uint32)Dummy2;
    *TstSignature = (uint32)(__crc32((unsigned_int)(*TstSignature),(unsigned_int)((uint32)Dummy2)));
    DataExpected = ((uint32)(0x9ABCDEF0U));


    *TstSignature = (uint32)(__crc32((unsigned_int)(*TstSignature),(unsigned_int)(CpuMpuTst_TrapData[CoreId].Crc)));


    TrapCount= CpuMpuTst_TrapData[CoreId].TrapCount;


    if (DataRead != DataExpected)
    {
      Result = (0x11001U);
    }
    else if ((uint32)( 4U ) != TrapCount)
    {
      Result = (Sl_TstRsltType)((( (Sl_TstRsltType)(((((uint32)(TEST_ID_CPU_MPU_TST)) & (uint32)0xFFFF) << 16U) | ((((uint32)(( (Sl_ErrorGroupIdType)0x10))) & (uint32)0xFF) << 8U) | ((((uint32)((Sl_ErrorIdType)((Sl_ErrorIdType)(0x4) + ((Sl_ErrorIdType)(DataRange))))) & (uint32)0xFF))) )));
    }
    else
    {
      CalcCounterCrc = CpuMpuTst_lCalcCounterCrc();
      if(CpuMpuTst_TrapData[CoreId].Crc == CalcCounterCrc)
      {
        Result = (0x101ffU);
      }
      else
      {
        Result = (0x11002U);
      }
    }
  }

  return Result;
}
# 1296 "../30_Bsw/MicroTestLib/Static/CpuMpuTst.c"
static Sl_TstRsltType CpuMpuTst_lTestCodeRange
(
  const CpuMpuTst_CodeRangeType CodeRange,
  uint32* const TstSignature
)
{
  Sl_TstRsltType Result;
  CpuMpuTst_CodeRangeCtxType CodeRangeContext;
  register uint32 Temp;
  uint32 CalcCounterCrc;
  uint32 TrapCount;
  uint8 CoreId;


  CoreId = Mcal_GetCoreId();


  CpuMpuTst_TrapData[CoreId].TrapCount= 0U;


  Temp = (uint32)((__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "(0xFE14)" : "=d" (__res) :: "memory"); __res; })));
  Temp &= (~((uint32)((uint32)(0x1u) << (1u))));
  _dsync(); do { unsigned __newval = (unsigned) ((Temp)); __asm__ volatile ("mtcr LO:" "(0xFE14)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();



  Result = CpuMpuTst_lSetupCodeRange(CodeRange, &CodeRangeContext);

  if((0x101ffU) == Result)
  {





    Temp = ((uint32)(((__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "(0xFE04)" : "=d" (__res) :: "memory"); __res; })))) & (~((uint32)((uint32)(0x3u) << (12u)))));
    Temp = (Temp | ((uint32)( 1U ) << ((uint32)(12u) )));
    _dsync(); do { unsigned __newval = (unsigned) ((Temp)); __asm__ volatile ("mtcr LO:" "(0xFE04)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();


    _dsync(); do { unsigned __newval = (unsigned) ((( 0x00000000U ))); __asm__ volatile ("mtcr LO:" "(0xC000)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
    _dsync(); do { unsigned __newval = (unsigned) ((( 0xFFFFFFF8U ))); __asm__ volatile ("mtcr LO:" "(0xC004)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
    _dsync(); do { unsigned __newval = (unsigned) ((( 0x00000001U ))); __asm__ volatile ("mtcr LO:" "((0xE014))" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
    _dsync(); do { unsigned __newval = (unsigned) ((( 0x00000001U ))); __asm__ volatile ("mtcr LO:" "((0xE024))" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();




    _dsync(); do { unsigned __newval = (unsigned) ((CodeRangeContext.AccessDisableValue)); __asm__ volatile ("mtcr LO:" "((0xE004))" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();

    _dsync(); do { unsigned __newval = (unsigned) ((CodeRangeContext.AccessDisableValue)); __asm__ volatile ("mtcr LO:" "(0xE000)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();



    Mcal_SuspendAllInterrupts();


    CpuMpuTst_TrapData[CoreId].ExpectedTrap = (uint32)(0x3U);


    CpuMpuTst_TrapData[CoreId].Crc = CpuMpuTst_lCalcCounterCrc();


    Temp = (uint32)((__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "(0xFE14)" : "=d" (__res) :: "memory"); __res; })));
    Temp |= (uint32)((uint32)(0x1u) << (1u));
    _dsync(); do { unsigned __newval = (unsigned) ((Temp)); __asm__ volatile ("mtcr LO:" "(0xFE14)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();


    CpuMpuTst_lTestExecuteAccess();


    CpuMpuTst_TrapData[CoreId].ExpectedTrap = (uint32)(0x0U);


    CpuMpuTst_TrapData[CoreId].Crc = CpuMpuTst_lCalcCounterCrc();




    _dsync(); do { unsigned __newval = (unsigned) ((CodeRangeContext.AccessEnableValue)); __asm__ volatile ("mtcr LO:" "((0xE004))" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();

    _dsync(); do { unsigned __newval = (unsigned) ((CodeRangeContext.AccessEnableValue)); __asm__ volatile ("mtcr LO:" "(0xE000)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();





    Temp |= ((uint32)(0x1u) << (1u));
    _dsync(); do { unsigned __newval = (unsigned) ((Temp)); __asm__ volatile ("mtcr LO:" "(0xFE14)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();




    CpuMpuTst_lTestExecuteAccess();


    Temp &= ~((uint32)(0x1u) << (1u));
    _dsync(); do { unsigned __newval = (unsigned) ((Temp)); __asm__ volatile ("mtcr LO:" "(0xFE14)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();


    Mcal_ResumeAllInterrupts();

    *TstSignature = (uint32)(__crc32((unsigned_int)(*TstSignature),(unsigned_int)(CpuMpuTst_TrapData[CoreId].Crc)));


    TrapCount= CpuMpuTst_TrapData[CoreId].TrapCount;

    if (( 1U ) == TrapCount)
    {
      CalcCounterCrc = CpuMpuTst_lCalcCounterCrc();
      if(CpuMpuTst_TrapData[CoreId].Crc == CalcCounterCrc)
      {
        Result = (0x101ffU);
      }
      else
      {
        Result = (0x11002U);
      }
    }
    else
    {
      Result = (( (Sl_TstRsltType)(((((uint32)(TEST_ID_CPU_MPU_TST)) & (uint32)0xFFFF) << 16U) | ((((uint32)(( (Sl_ErrorGroupIdType)0x20))) & (uint32)0xFF) << 8U) | ((((uint32)((Sl_ErrorIdType)((Sl_ErrorIdType)(20) + ((Sl_ErrorIdType)(CodeRange))))) & (uint32)0xFF))) ));
    }
  }

  return Result;
}
# 1457 "../30_Bsw/MicroTestLib/Static/CpuMpuTst.c"
static Sl_TstRsltType CpuMpuTst_lSetupDataRange
(
  const CpuMpuTst_DataRangeType DataRange,
  CpuMpuTst_DataRangeCtxType* const DpMask
)
{
  Sl_TstRsltType Result = (0x1010aU);
  uint8 CoreId;
  uint32 LowerAddress;
  uint32 UpperAddress;


  CoreId = Mcal_GetCoreId();

  LowerAddress = (uint32)&CpuMpuTst_lTestData[CoreId].IncludedMemory;
  UpperAddress = LowerAddress + (( 2U ) * sizeof(uint32));

  switch (DataRange)
  {
  case MPU_DATA_RANGE00:
    _dsync(); do { unsigned __newval = (unsigned) ((LowerAddress)); __asm__ volatile ("mtcr LO:" "(0xC000)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
    _dsync(); do { unsigned __newval = (unsigned) ((UpperAddress)); __asm__ volatile ("mtcr LO:" "(0xC004)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();

    _dsync(); do { unsigned __newval = (unsigned) ((( 0x00000000U ))); __asm__ volatile ("mtcr LO:" "(0xC008)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
    _dsync(); do { unsigned __newval = (unsigned) (((uint32)&CpuMpuTst_lTestData[CoreId].ExcludedMemory)); __asm__ volatile ("mtcr LO:" "(0xC00C)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
    _dsync(); do { unsigned __newval = (unsigned) ((UpperAddress)); __asm__ volatile ("mtcr LO:" "(0xC010)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
    _dsync(); do { unsigned __newval = (unsigned) ((( 0xFFFFFFF8U ))); __asm__ volatile ("mtcr LO:" "(0xC014)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
    DpMask->AccessDisableValue = ( 0x00000006U );
    DpMask->AccessEnableValue= ( 0x00000007U );
    break;
  case MPU_DATA_RANGE01:
    _dsync(); do { unsigned __newval = (unsigned) ((LowerAddress)); __asm__ volatile ("mtcr LO:" "(0xC008)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
    _dsync(); do { unsigned __newval = (unsigned) ((UpperAddress)); __asm__ volatile ("mtcr LO:" "(0xC00C)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();

    _dsync(); do { unsigned __newval = (unsigned) ((( 0x00000000U ))); __asm__ volatile ("mtcr LO:" "(0xC000)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
    _dsync(); do { unsigned __newval = (unsigned) (((uint32)&CpuMpuTst_lTestData[CoreId].ExcludedMemory)); __asm__ volatile ("mtcr LO:" "(0xC004)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
    _dsync(); do { unsigned __newval = (unsigned) ((UpperAddress)); __asm__ volatile ("mtcr LO:" "(0xC010)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
    _dsync(); do { unsigned __newval = (unsigned) ((( 0xFFFFFFF8U ))); __asm__ volatile ("mtcr LO:" "(0xC014)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
    DpMask->AccessDisableValue = ( 0x00000005U );
    DpMask->AccessEnableValue= ( 0x00000007U );
    break;
  case MPU_DATA_RANGE02:
    _dsync(); do { unsigned __newval = (unsigned) ((LowerAddress)); __asm__ volatile ("mtcr LO:" "(0xC010)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
    _dsync(); do { unsigned __newval = (unsigned) ((UpperAddress)); __asm__ volatile ("mtcr LO:" "(0xC014)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();

    _dsync(); do { unsigned __newval = (unsigned) ((( 0x00000000U ))); __asm__ volatile ("mtcr LO:" "(0xC000)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
    _dsync(); do { unsigned __newval = (unsigned) (((uint32)&CpuMpuTst_lTestData[CoreId].ExcludedMemory)); __asm__ volatile ("mtcr LO:" "(0xC004)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
    _dsync(); do { unsigned __newval = (unsigned) ((UpperAddress)); __asm__ volatile ("mtcr LO:" "(0xC008)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
    _dsync(); do { unsigned __newval = (unsigned) ((( 0xFFFFFFF8U ))); __asm__ volatile ("mtcr LO:" "(0xC00C)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
    DpMask->AccessDisableValue = ( 0x00000003U );
    DpMask->AccessEnableValue= ( 0x00000007U );
    break;
  case MPU_DATA_RANGE03:
    _dsync(); do { unsigned __newval = (unsigned) ((LowerAddress)); __asm__ volatile ("mtcr LO:" "(0xC018)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
    _dsync(); do { unsigned __newval = (unsigned) ((UpperAddress)); __asm__ volatile ("mtcr LO:" "(0xC01C)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();

    _dsync(); do { unsigned __newval = (unsigned) ((( 0x00000000U ))); __asm__ volatile ("mtcr LO:" "(0xC000)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
    _dsync(); do { unsigned __newval = (unsigned) (((uint32)&CpuMpuTst_lTestData[CoreId].ExcludedMemory)); __asm__ volatile ("mtcr LO:" "(0xC004)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
    _dsync(); do { unsigned __newval = (unsigned) ((UpperAddress)); __asm__ volatile ("mtcr LO:" "(0xC008)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
    _dsync(); do { unsigned __newval = (unsigned) ((( 0xFFFFFFF8U ))); __asm__ volatile ("mtcr LO:" "(0xC00C)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
    DpMask->AccessDisableValue = ( 0x00000003U );
    DpMask->AccessEnableValue= ( 0x0000000BU );
    break;
  case MPU_DATA_RANGE04:
    _dsync(); do { unsigned __newval = (unsigned) ((LowerAddress)); __asm__ volatile ("mtcr LO:" "(0xC020)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
    _dsync(); do { unsigned __newval = (unsigned) ((UpperAddress)); __asm__ volatile ("mtcr LO:" "(0xC024)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();

    _dsync(); do { unsigned __newval = (unsigned) ((( 0x00000000U ))); __asm__ volatile ("mtcr LO:" "(0xC000)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
    _dsync(); do { unsigned __newval = (unsigned) (((uint32)&CpuMpuTst_lTestData[CoreId].ExcludedMemory)); __asm__ volatile ("mtcr LO:" "(0xC004)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
    _dsync(); do { unsigned __newval = (unsigned) ((UpperAddress)); __asm__ volatile ("mtcr LO:" "(0xC008)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
    _dsync(); do { unsigned __newval = (unsigned) ((( 0xFFFFFFF8U ))); __asm__ volatile ("mtcr LO:" "(0xC00C)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
    DpMask->AccessDisableValue = ( 0x00000003U );
    DpMask->AccessEnableValue= ( 0x00000013U );
    break;
  case MPU_DATA_RANGE05:
    _dsync(); do { unsigned __newval = (unsigned) ((LowerAddress)); __asm__ volatile ("mtcr LO:" "(0xC028)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
    _dsync(); do { unsigned __newval = (unsigned) ((UpperAddress)); __asm__ volatile ("mtcr LO:" "(0xC02C)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();

    _dsync(); do { unsigned __newval = (unsigned) ((( 0x00000000U ))); __asm__ volatile ("mtcr LO:" "(0xC000)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
    _dsync(); do { unsigned __newval = (unsigned) (((uint32)&CpuMpuTst_lTestData[CoreId].ExcludedMemory)); __asm__ volatile ("mtcr LO:" "(0xC004)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
    _dsync(); do { unsigned __newval = (unsigned) ((UpperAddress)); __asm__ volatile ("mtcr LO:" "(0xC008)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
    _dsync(); do { unsigned __newval = (unsigned) ((( 0xFFFFFFF8U ))); __asm__ volatile ("mtcr LO:" "(0xC00C)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
    DpMask->AccessDisableValue = ( 0x00000003U );
    DpMask->AccessEnableValue= ( 0x00000023U );
    break;
  case MPU_DATA_RANGE06:
    _dsync(); do { unsigned __newval = (unsigned) ((LowerAddress)); __asm__ volatile ("mtcr LO:" "(0xC030)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
    _dsync(); do { unsigned __newval = (unsigned) ((UpperAddress)); __asm__ volatile ("mtcr LO:" "(0xC034)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();

    _dsync(); do { unsigned __newval = (unsigned) ((( 0x00000000U ))); __asm__ volatile ("mtcr LO:" "(0xC000)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
    _dsync(); do { unsigned __newval = (unsigned) (((uint32)&CpuMpuTst_lTestData[CoreId].ExcludedMemory)); __asm__ volatile ("mtcr LO:" "(0xC004)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
    _dsync(); do { unsigned __newval = (unsigned) ((UpperAddress)); __asm__ volatile ("mtcr LO:" "(0xC008)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
    _dsync(); do { unsigned __newval = (unsigned) ((( 0xFFFFFFF8U ))); __asm__ volatile ("mtcr LO:" "(0xC00C)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
    DpMask->AccessDisableValue = ( 0x00000003U );
    DpMask->AccessEnableValue= ( 0x00000043U );
    break;
  case MPU_DATA_RANGE07:
    _dsync(); do { unsigned __newval = (unsigned) ((LowerAddress)); __asm__ volatile ("mtcr LO:" "(0xC038)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
    _dsync(); do { unsigned __newval = (unsigned) ((UpperAddress)); __asm__ volatile ("mtcr LO:" "(0xC03C)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();

    _dsync(); do { unsigned __newval = (unsigned) ((( 0x00000000U ))); __asm__ volatile ("mtcr LO:" "(0xC000)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
    _dsync(); do { unsigned __newval = (unsigned) (((uint32)&CpuMpuTst_lTestData[CoreId].ExcludedMemory)); __asm__ volatile ("mtcr LO:" "(0xC004)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
    _dsync(); do { unsigned __newval = (unsigned) ((UpperAddress)); __asm__ volatile ("mtcr LO:" "(0xC008)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
    _dsync(); do { unsigned __newval = (unsigned) ((( 0xFFFFFFF8U ))); __asm__ volatile ("mtcr LO:" "(0xC00C)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
    DpMask->AccessDisableValue = ( 0x00000003U );
    DpMask->AccessEnableValue= ( 0x00000083U );
    break;
  case MPU_DATA_RANGE08:
    _dsync(); do { unsigned __newval = (unsigned) ((LowerAddress)); __asm__ volatile ("mtcr LO:" "(0xC040)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
    _dsync(); do { unsigned __newval = (unsigned) ((UpperAddress)); __asm__ volatile ("mtcr LO:" "(0xC044)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();

    _dsync(); do { unsigned __newval = (unsigned) ((( 0x00000000U ))); __asm__ volatile ("mtcr LO:" "(0xC000)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
    _dsync(); do { unsigned __newval = (unsigned) (((uint32)&CpuMpuTst_lTestData[CoreId].ExcludedMemory)); __asm__ volatile ("mtcr LO:" "(0xC004)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
    _dsync(); do { unsigned __newval = (unsigned) ((UpperAddress)); __asm__ volatile ("mtcr LO:" "(0xC008)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
    _dsync(); do { unsigned __newval = (unsigned) ((( 0xFFFFFFF8U ))); __asm__ volatile ("mtcr LO:" "(0xC00C)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
    DpMask->AccessDisableValue = ( 0x00000003U );
    DpMask->AccessEnableValue= ( 0x00000103U );
    break;
  case MPU_DATA_RANGE09:
    _dsync(); do { unsigned __newval = (unsigned) ((LowerAddress)); __asm__ volatile ("mtcr LO:" "(0xC048)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
    _dsync(); do { unsigned __newval = (unsigned) ((UpperAddress)); __asm__ volatile ("mtcr LO:" "(0xC04C)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();

    _dsync(); do { unsigned __newval = (unsigned) ((( 0x00000000U ))); __asm__ volatile ("mtcr LO:" "(0xC000)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
    _dsync(); do { unsigned __newval = (unsigned) (((uint32)&CpuMpuTst_lTestData[CoreId].ExcludedMemory)); __asm__ volatile ("mtcr LO:" "(0xC004)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
    _dsync(); do { unsigned __newval = (unsigned) ((UpperAddress)); __asm__ volatile ("mtcr LO:" "(0xC008)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
    _dsync(); do { unsigned __newval = (unsigned) ((( 0xFFFFFFF8U ))); __asm__ volatile ("mtcr LO:" "(0xC00C)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
    DpMask->AccessDisableValue = ( 0x00000003U );
    DpMask->AccessEnableValue= ( 0x00000203U );
    break;
  case MPU_DATA_RANGE10:
    _dsync(); do { unsigned __newval = (unsigned) ((LowerAddress)); __asm__ volatile ("mtcr LO:" "(0xC050)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
    _dsync(); do { unsigned __newval = (unsigned) ((UpperAddress)); __asm__ volatile ("mtcr LO:" "(0xC054)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();

    _dsync(); do { unsigned __newval = (unsigned) ((( 0x00000000U ))); __asm__ volatile ("mtcr LO:" "(0xC000)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
    _dsync(); do { unsigned __newval = (unsigned) (((uint32)&CpuMpuTst_lTestData[CoreId].ExcludedMemory)); __asm__ volatile ("mtcr LO:" "(0xC004)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
    _dsync(); do { unsigned __newval = (unsigned) ((UpperAddress)); __asm__ volatile ("mtcr LO:" "(0xC008)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
    _dsync(); do { unsigned __newval = (unsigned) ((( 0xFFFFFFF8U ))); __asm__ volatile ("mtcr LO:" "(0xC00C)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
    DpMask->AccessDisableValue = ( 0x00000003U );
    DpMask->AccessEnableValue= ( 0x00000403U );
    break;
  case MPU_DATA_RANGE11:
    _dsync(); do { unsigned __newval = (unsigned) ((LowerAddress)); __asm__ volatile ("mtcr LO:" "(0xC058)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
    _dsync(); do { unsigned __newval = (unsigned) ((UpperAddress)); __asm__ volatile ("mtcr LO:" "(0xC05C)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();

     _dsync(); do { unsigned __newval = (unsigned) ((( 0x00000000U ))); __asm__ volatile ("mtcr LO:" "(0xC000)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
    _dsync(); do { unsigned __newval = (unsigned) (((uint32)&CpuMpuTst_lTestData[CoreId].ExcludedMemory)); __asm__ volatile ("mtcr LO:" "(0xC004)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
    _dsync(); do { unsigned __newval = (unsigned) ((UpperAddress)); __asm__ volatile ("mtcr LO:" "(0xC008)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
    _dsync(); do { unsigned __newval = (unsigned) ((( 0xFFFFFFF8U ))); __asm__ volatile ("mtcr LO:" "(0xC00C)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
    DpMask->AccessDisableValue = ( 0x00000003U );
    DpMask->AccessEnableValue= ( 0x00000803U );
    break;
  case MPU_DATA_RANGE12:
    _dsync(); do { unsigned __newval = (unsigned) ((LowerAddress)); __asm__ volatile ("mtcr LO:" "(0xC060)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
    _dsync(); do { unsigned __newval = (unsigned) ((UpperAddress)); __asm__ volatile ("mtcr LO:" "(0xC064)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();

    _dsync(); do { unsigned __newval = (unsigned) ((( 0x00000000U ))); __asm__ volatile ("mtcr LO:" "(0xC000)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
    _dsync(); do { unsigned __newval = (unsigned) (((uint32)&CpuMpuTst_lTestData[CoreId].ExcludedMemory)); __asm__ volatile ("mtcr LO:" "(0xC004)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
    _dsync(); do { unsigned __newval = (unsigned) ((UpperAddress)); __asm__ volatile ("mtcr LO:" "(0xC008)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
    _dsync(); do { unsigned __newval = (unsigned) ((( 0xFFFFFFF8U ))); __asm__ volatile ("mtcr LO:" "(0xC00C)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
    DpMask->AccessDisableValue = ( 0x00000003U );
    DpMask->AccessEnableValue= ( 0x00001003U );
    break;
  case MPU_DATA_RANGE13:
    _dsync(); do { unsigned __newval = (unsigned) ((LowerAddress)); __asm__ volatile ("mtcr LO:" "(0xC068)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
    _dsync(); do { unsigned __newval = (unsigned) ((UpperAddress)); __asm__ volatile ("mtcr LO:" "(0xC06C)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();

    _dsync(); do { unsigned __newval = (unsigned) ((( 0x00000000U ))); __asm__ volatile ("mtcr LO:" "(0xC000)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
    _dsync(); do { unsigned __newval = (unsigned) (((uint32)&CpuMpuTst_lTestData[CoreId].ExcludedMemory)); __asm__ volatile ("mtcr LO:" "(0xC004)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
    _dsync(); do { unsigned __newval = (unsigned) ((UpperAddress)); __asm__ volatile ("mtcr LO:" "(0xC008)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
    _dsync(); do { unsigned __newval = (unsigned) ((( 0xFFFFFFF8U ))); __asm__ volatile ("mtcr LO:" "(0xC00C)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
    DpMask->AccessDisableValue = ( 0x00000003U );
    DpMask->AccessEnableValue= ( 0x00002003U );
    break;
  case MPU_DATA_RANGE14:
    _dsync(); do { unsigned __newval = (unsigned) ((LowerAddress)); __asm__ volatile ("mtcr LO:" "(0xC070)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
    _dsync(); do { unsigned __newval = (unsigned) ((UpperAddress)); __asm__ volatile ("mtcr LO:" "(0xC074)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();

    _dsync(); do { unsigned __newval = (unsigned) ((( 0x00000000U ))); __asm__ volatile ("mtcr LO:" "(0xC000)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
    _dsync(); do { unsigned __newval = (unsigned) (((uint32)&CpuMpuTst_lTestData[CoreId].ExcludedMemory)); __asm__ volatile ("mtcr LO:" "(0xC004)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
    _dsync(); do { unsigned __newval = (unsigned) ((UpperAddress)); __asm__ volatile ("mtcr LO:" "(0xC008)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
    _dsync(); do { unsigned __newval = (unsigned) ((( 0xFFFFFFF8U ))); __asm__ volatile ("mtcr LO:" "(0xC00C)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
    DpMask->AccessDisableValue = ( 0x00000003U );
    DpMask->AccessEnableValue= ( 0x00004003U );
    break;
  case MPU_DATA_RANGE15:
    _dsync(); do { unsigned __newval = (unsigned) ((LowerAddress)); __asm__ volatile ("mtcr LO:" "(0xC078)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
    _dsync(); do { unsigned __newval = (unsigned) ((UpperAddress)); __asm__ volatile ("mtcr LO:" "(0xC07C)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();

    _dsync(); do { unsigned __newval = (unsigned) ((( 0x00000000U ))); __asm__ volatile ("mtcr LO:" "(0xC000)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
    _dsync(); do { unsigned __newval = (unsigned) (((uint32)&CpuMpuTst_lTestData[CoreId].ExcludedMemory)); __asm__ volatile ("mtcr LO:" "(0xC004)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
    _dsync(); do { unsigned __newval = (unsigned) ((UpperAddress)); __asm__ volatile ("mtcr LO:" "(0xC008)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
    _dsync(); do { unsigned __newval = (unsigned) ((( 0xFFFFFFF8U ))); __asm__ volatile ("mtcr LO:" "(0xC00C)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
    DpMask->AccessDisableValue = ( 0x00000003U );
    DpMask->AccessEnableValue= ( 0x00008003U );
    break;
  default:
    Result = (0x10102U);
    break;
  }

  if((0x1010aU) == Result)
  {
    Result = (0x101ffU);
  }
  return Result;
}
# 1698 "../30_Bsw/MicroTestLib/Static/CpuMpuTst.c"
static Sl_TstRsltType CpuMpuTst_lSetupCodeRange
(
  const CpuMpuTst_CodeRangeType CodeRange,
 CpuMpuTst_CodeRangeCtxType* const Context
)
{
  Sl_TstRsltType Result = (0x1010aU);

  switch (CodeRange)
  {
  case MPU_CODE_RANGE00:
    _dsync(); do { unsigned __newval = (unsigned) (((uint32)&CpuMpuTst_lTestExecuteAccess)); __asm__ volatile ("mtcr LO:" "(0xD000)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
    _dsync(); do { unsigned __newval = (unsigned) (((uint32)&CpuMpuTst_lTestExecuteAccess + ( 8U ))); __asm__ volatile ("mtcr LO:" "(0xD004)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync()
                                   ;
    _dsync(); do { unsigned __newval = (unsigned) ((( 0x00000000U ))); __asm__ volatile ("mtcr LO:" "(0xD008)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
    _dsync(); do { unsigned __newval = (unsigned) (((uint32)&CpuMpuTst_lTestExecuteAccess)); __asm__ volatile ("mtcr LO:" "(0xD00C)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
    _dsync(); do { unsigned __newval = (unsigned) (((uint32)&CpuMpuTst_lTestExecuteAccess + ( 8U ))); __asm__ volatile ("mtcr LO:" "(0xD010)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync()
                                   ;
    _dsync(); do { unsigned __newval = (unsigned) ((( 0xFFFFFFF8U ))); __asm__ volatile ("mtcr LO:" "(0xD014)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
    Context->AccessEnableValue = ( 0x00000007U );
    Context->AccessDisableValue = ( 0x00000006U );
    break;
  case MPU_CODE_RANGE01:
    _dsync(); do { unsigned __newval = (unsigned) (((uint32)&CpuMpuTst_lTestExecuteAccess)); __asm__ volatile ("mtcr LO:" "(0xD008)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
    _dsync(); do { unsigned __newval = (unsigned) (((uint32)&CpuMpuTst_lTestExecuteAccess + ( 8U ))); __asm__ volatile ("mtcr LO:" "(0xD00C)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync()
                                   ;
    _dsync(); do { unsigned __newval = (unsigned) ((( 0x00000000U ))); __asm__ volatile ("mtcr LO:" "(0xD000)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
    _dsync(); do { unsigned __newval = (unsigned) (((uint32)&CpuMpuTst_lTestExecuteAccess)); __asm__ volatile ("mtcr LO:" "(0xD004)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
    _dsync(); do { unsigned __newval = (unsigned) (((uint32)&CpuMpuTst_lTestExecuteAccess + ( 8U ))); __asm__ volatile ("mtcr LO:" "(0xD010)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync()
                                   ;
    _dsync(); do { unsigned __newval = (unsigned) ((( 0xFFFFFFF8U ))); __asm__ volatile ("mtcr LO:" "(0xD014)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
    Context->AccessEnableValue = ( 0x00000007U );
    Context->AccessDisableValue = ( 0x00000005U );
    break;
  case MPU_CODE_RANGE02:
    _dsync(); do { unsigned __newval = (unsigned) (((uint32)&CpuMpuTst_lTestExecuteAccess)); __asm__ volatile ("mtcr LO:" "(0xD010)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
    _dsync(); do { unsigned __newval = (unsigned) (((uint32)&CpuMpuTst_lTestExecuteAccess + ( 8U ))); __asm__ volatile ("mtcr LO:" "(0xD014)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync()
                                   ;
    _dsync(); do { unsigned __newval = (unsigned) ((( 0x00000000U ))); __asm__ volatile ("mtcr LO:" "(0xD000)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
    _dsync(); do { unsigned __newval = (unsigned) (((uint32)&CpuMpuTst_lTestExecuteAccess)); __asm__ volatile ("mtcr LO:" "(0xD004)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
    _dsync(); do { unsigned __newval = (unsigned) (((uint32)&CpuMpuTst_lTestExecuteAccess + ( 8U ))); __asm__ volatile ("mtcr LO:" "(0xD008)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync()
                                   ;
    _dsync(); do { unsigned __newval = (unsigned) ((( 0xFFFFFFF8U ))); __asm__ volatile ("mtcr LO:" "(0xD00C)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
    Context->AccessEnableValue = ( 0x00000007U );
    Context->AccessDisableValue = ( 0x00000003U );
    break;
  case MPU_CODE_RANGE03:
    _dsync(); do { unsigned __newval = (unsigned) (((uint32)&CpuMpuTst_lTestExecuteAccess)); __asm__ volatile ("mtcr LO:" "(0xD018)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
    _dsync(); do { unsigned __newval = (unsigned) (((uint32)&CpuMpuTst_lTestExecuteAccess + ( 8U ))); __asm__ volatile ("mtcr LO:" "(0xD01C)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync()
                                   ;
    _dsync(); do { unsigned __newval = (unsigned) ((( 0x00000000U ))); __asm__ volatile ("mtcr LO:" "(0xD000)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
    _dsync(); do { unsigned __newval = (unsigned) (((uint32)&CpuMpuTst_lTestExecuteAccess)); __asm__ volatile ("mtcr LO:" "(0xD004)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
    _dsync(); do { unsigned __newval = (unsigned) (((uint32)&CpuMpuTst_lTestExecuteAccess + ( 8U ))); __asm__ volatile ("mtcr LO:" "(0xD008)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync()
                                   ;
    _dsync(); do { unsigned __newval = (unsigned) ((( 0xFFFFFFF8U ))); __asm__ volatile ("mtcr LO:" "(0xD00C)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
    Context->AccessEnableValue = ( 0x0000000BU );
    Context->AccessDisableValue = ( 0x00000003U );
    break;
  case MPU_CODE_RANGE04:
    _dsync(); do { unsigned __newval = (unsigned) (((uint32)&CpuMpuTst_lTestExecuteAccess)); __asm__ volatile ("mtcr LO:" "(0xD020)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
    _dsync(); do { unsigned __newval = (unsigned) (((uint32)&CpuMpuTst_lTestExecuteAccess + ( 8U ))); __asm__ volatile ("mtcr LO:" "(0xD024)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync()
                                   ;
    _dsync(); do { unsigned __newval = (unsigned) ((( 0x00000000U ))); __asm__ volatile ("mtcr LO:" "(0xD000)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
    _dsync(); do { unsigned __newval = (unsigned) (((uint32)&CpuMpuTst_lTestExecuteAccess)); __asm__ volatile ("mtcr LO:" "(0xD004)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
    _dsync(); do { unsigned __newval = (unsigned) (((uint32)&CpuMpuTst_lTestExecuteAccess + ( 8U ))); __asm__ volatile ("mtcr LO:" "(0xD008)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync()
                                   ;
    _dsync(); do { unsigned __newval = (unsigned) ((( 0xFFFFFFF8U ))); __asm__ volatile ("mtcr LO:" "(0xD00C)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
    Context->AccessEnableValue = ( 0x00000013U );
    Context->AccessDisableValue = ( 0x00000003U );
    break;
  case MPU_CODE_RANGE05:
    _dsync(); do { unsigned __newval = (unsigned) (((uint32)&CpuMpuTst_lTestExecuteAccess)); __asm__ volatile ("mtcr LO:" "(0xD028)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
    _dsync(); do { unsigned __newval = (unsigned) (((uint32)&CpuMpuTst_lTestExecuteAccess + ( 8U ))); __asm__ volatile ("mtcr LO:" "(0xD02C)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync()
                                   ;
    _dsync(); do { unsigned __newval = (unsigned) ((( 0x00000000U ))); __asm__ volatile ("mtcr LO:" "(0xD000)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
    _dsync(); do { unsigned __newval = (unsigned) (((uint32)&CpuMpuTst_lTestExecuteAccess)); __asm__ volatile ("mtcr LO:" "(0xD004)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
    _dsync(); do { unsigned __newval = (unsigned) (((uint32)&CpuMpuTst_lTestExecuteAccess + ( 8U ))); __asm__ volatile ("mtcr LO:" "(0xD008)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync()
                                   ;
    _dsync(); do { unsigned __newval = (unsigned) ((( 0xFFFFFFF8U ))); __asm__ volatile ("mtcr LO:" "(0xD00C)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
    Context->AccessEnableValue = ( 0x00000023U );
    Context->AccessDisableValue = ( 0x00000003U );
    break;
  case MPU_CODE_RANGE06:
    _dsync(); do { unsigned __newval = (unsigned) (((uint32)&CpuMpuTst_lTestExecuteAccess)); __asm__ volatile ("mtcr LO:" "(0xD030)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
    _dsync(); do { unsigned __newval = (unsigned) (((uint32)&CpuMpuTst_lTestExecuteAccess + ( 8U ))); __asm__ volatile ("mtcr LO:" "(0xD034)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync()
                                   ;
    _dsync(); do { unsigned __newval = (unsigned) ((( 0x00000000U ))); __asm__ volatile ("mtcr LO:" "(0xD000)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
    _dsync(); do { unsigned __newval = (unsigned) (((uint32)&CpuMpuTst_lTestExecuteAccess)); __asm__ volatile ("mtcr LO:" "(0xD004)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
    _dsync(); do { unsigned __newval = (unsigned) (((uint32)&CpuMpuTst_lTestExecuteAccess + ( 8U ))); __asm__ volatile ("mtcr LO:" "(0xD008)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync()
                                   ;
    _dsync(); do { unsigned __newval = (unsigned) ((( 0xFFFFFFF8U ))); __asm__ volatile ("mtcr LO:" "(0xD00C)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
    Context->AccessEnableValue = ( 0x00000043U );
    Context->AccessDisableValue = ( 0x00000003U );
    break;
  case MPU_CODE_RANGE07:
    _dsync(); do { unsigned __newval = (unsigned) (((uint32)&CpuMpuTst_lTestExecuteAccess)); __asm__ volatile ("mtcr LO:" "(0xD038)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
    _dsync(); do { unsigned __newval = (unsigned) (((uint32)&CpuMpuTst_lTestExecuteAccess + ( 8U ))); __asm__ volatile ("mtcr LO:" "(0xD03C)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync()
                                   ;
    _dsync(); do { unsigned __newval = (unsigned) ((( 0x00000000U ))); __asm__ volatile ("mtcr LO:" "(0xD000)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
    _dsync(); do { unsigned __newval = (unsigned) (((uint32)&CpuMpuTst_lTestExecuteAccess)); __asm__ volatile ("mtcr LO:" "(0xD004)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
    _dsync(); do { unsigned __newval = (unsigned) (((uint32)&CpuMpuTst_lTestExecuteAccess + ( 8U ))); __asm__ volatile ("mtcr LO:" "(0xD008)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync()
                                   ;
    _dsync(); do { unsigned __newval = (unsigned) ((( 0xFFFFFFF8U ))); __asm__ volatile ("mtcr LO:" "(0xD00C)" ", %0" :: "d" (__newval) : "memory"); } while (0); _isync();
    Context->AccessEnableValue = ( 0x00000083U );
    Context->AccessDisableValue = ( 0x00000003U );
    break;
  default:
    Result = (0x10102U);
    break;
  }

  if((0x1010aU) == Result)
  {
    Result = (0x101ffU);
  }
  return Result;
}


# 1 "../30_Bsw/STL_common/Ifx_MemMap.h" 1
# 2713 "../30_Bsw/STL_common/Ifx_MemMap.h"
#pragma GCC reset_options
#pragma section
# 1818 "../30_Bsw/MicroTestLib/Static/CpuMpuTst.c" 2


# 1 "../30_Bsw/STL_common/Ifx_MemMap.h" 1
# 2910 "../30_Bsw/STL_common/Ifx_MemMap.h"
#pragma section ".text.CpuMpuExAccess" ax 8
# 1821 "../30_Bsw/MicroTestLib/Static/CpuMpuTst.c" 2
# 1846 "../30_Bsw/MicroTestLib/Static/CpuMpuTst.c"
void CpuMpuTst_lTestExecuteAccess(void)
{
  __asm("nop");
  __asm("nop");
  __asm("nop");
  return ;
}


# 1 "../30_Bsw/STL_common/Ifx_MemMap.h" 1
# 2922 "../30_Bsw/STL_common/Ifx_MemMap.h"
#pragma section
# 1856 "../30_Bsw/MicroTestLib/Static/CpuMpuTst.c" 2
