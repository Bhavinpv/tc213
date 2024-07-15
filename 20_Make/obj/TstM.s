	.file	"TstM.c"
.section .text,"ax",@progbits
.Ltext0:
	.section .text.MPU_ASIL_CODE,"ax",@progbits
	.align 3
	.global	TstM_Init
	.type	TstM_Init, @function
TstM_Init:
.LFB18:
	.file 1 "../30_Bsw/TstM/Static/TstM.c"
	.loc 1 143 0
.LVL0:
	.loc 1 146 0
	movh.a	%a15, hi:Sl_ConfigRoot
	lea	%a15, [%a15] lo:Sl_ConfigRoot
	mov.aa	%a4, %a15
	call	Sl_PreInit
.LVL1:
	.loc 1 147 0
	jnz	%d2, .L5
.LVL2:
.L2:
	.loc 1 152 0
	mov.aa	%a4, %a15
	call	Sl_Init
.LVL3:
	.loc 1 153 0
	jnz	%d2, .L6
	ret
.L6:
	.loc 1 155 0
	mov	%d4, 6
	j	IOHWSF_vDefaultErrorHandler
.LVL4:
.L5:
	.loc 1 149 0
	mov	%d4, 7
	call	IOHWSF_vDefaultErrorHandler
.LVL5:
	j	.L2
.LFE18:
	.size	TstM_Init, .-TstM_Init
	.align 3
	.global	TstM_PreRunTst
	.type	TstM_PreRunTst, @function
TstM_PreRunTst:
.LFB19:
	.loc 1 181 0
.LVL6:
	.loc 1 181 0
	mov	%d9, %d4
	.loc 1 187 0
	call	IOHWSF_tPreRunPreHook
.LVL7:
	.loc 1 189 0
	jnz	%d2, .L25
.LVL8:
.L8:
	.loc 1 194 0
	movh.a	%a12, hi:TstM_TestSignatures
	lea	%a12, [%a12] lo:TstM_TestSignatures
	movh.a	%a5, hi:TstM_TestResults
	mov	%d4, 5
	mov	%d5, %d9
	mov.aa	%a4, %a12
	lea	%a5, [%a5] lo:TstM_TestResults
	call	Sl_ExecPreRunTst
.LVL9:
	.loc 1 195 0
	jnz	%d2, .L26
.LVL10:
.L9:
	.loc 1 200 0
	jlt.u	%d9, 4, .L27
	movh.a	%a13, hi:TstM_ExpTestSignature
	.loc 1 227 0
	mov	%d15, 0
	mov	%d8, 0
	lea	%a13, [%a13] lo:TstM_ExpTestSignature
	jge.u	%d15, %d8, .L17
.L23:
	.loc 1 229 0
	sh	%d2, %d15, 2
	addsc.a	%a15, %a12, %d2, 0
	addsc.a	%a2, %a13, %d2, 0
	ld.w	%d2, [%a15]0
	ld.a	%a15, [%a2]0
	mov.d	%d3, %a15
	jeq	%d2, %d3, .L18
	.loc 1 231 0
	addi	%d4, %d15, 45
	call	IOHWSF_vDefaultErrorHandler
.L18:
	.loc 1 227 0
	add	%d15, 1
	and	%d15, 255
.LVL11:
	jlt.u	%d15, %d8, .L23
.LVL12:
.L17:
	.loc 1 235 0
	mov	%d4, %d9
	call	IOHWSF_tPreRunPostHook
.LVL13:
	.loc 1 237 0
	jnz	%d2, .L28
	ret
.LVL14:
.L27:
	.loc 1 200 0
	movh.a	%a15, hi:.L15
	lea	%a15, [%a15] lo:.L15
	addsc.a	%a15, %a15, %d9, 2
	ji	%a15
	.align 2
	.align 2
.L15:
	.code32
	j	.L11
	.code32
	j	.L12
	.code32
	j	.L21
	.code32
	j	.L14
.LVL15:
.L26:
	.loc 1 197 0
	mov	%d4, 9
	call	IOHWSF_vDefaultErrorHandler
.LVL16:
	j	.L9
.L21:
	.loc 1 217 0
	mov	%d8, 18
	.loc 1 216 0
	mov	%d15, 17
.L13:
.LVL17:
	movh.a	%a13, hi:TstM_ExpTestSignature
	lea	%a13, [%a13] lo:TstM_ExpTestSignature
	j	.L23
.LVL18:
.L12:
	.loc 1 211 0
	mov	%d8, 17
	.loc 1 210 0
	mov	%d15, 10
	j	.L13
.L11:
	.loc 1 205 0
	mov	%d8, 10
	.loc 1 204 0
	mov	%d15, 0
	j	.L13
.L14:
.LVL19:
	.loc 1 223 0
	mov	%d8, 19
	.loc 1 222 0
	mov	%d15, 18
	.loc 1 224 0
	j	.L13
.LVL20:
.L28:
	.loc 1 239 0
	mov	%d4, 10
	j	IOHWSF_vDefaultErrorHandler
.LVL21:
.L25:
	.loc 1 191 0
	mov	%d4, 8
	call	IOHWSF_vDefaultErrorHandler
.LVL22:
	j	.L8
.LFE19:
	.size	TstM_PreRunTst, .-TstM_PreRunTst
	.align 3
	.global	TstM_InvalidateData
	.type	TstM_InvalidateData, @function
TstM_InvalidateData:
.LFB20:
	.loc 1 263 0
.LVL23:
	.loc 1 263 0
	movh.a	%a15, hi:TstM_TestResults
	lea	%a15, [%a15] lo:TstM_TestResults
	mov	%e2, 0
	lea	%a2, 10-1
	0:
	st.d	[%a15+]8, %e2
	loop	%a2, 0b
	st.w	[%a15+]4, %d2
	movh.a	%a15, hi:TstM_TestSignatures
	lea	%a15, [%a15] lo:TstM_TestSignatures
	mov	%e2, 0
	lea	%a2, 10-1
	0:
	st.d	[%a15+]8, %e2
	loop	%a2, 0b
	st.w	[%a15+]4, %d2
	.loc 1 271 0
	ret
.LFE20:
	.size	TstM_InvalidateData, .-TstM_InvalidateData
	.align 3
	.global	TstM_Run
	.type	TstM_Run, @function
TstM_Run:
.LFB21:
	.loc 1 301 0
.LVL24:
	.loc 1 304 0
	movh.a	%a15, hi:TstM_TestSignatures
	lea	%a15, [%a15] lo:TstM_TestSignatures
	movh.a	%a5, hi:TstM_TestResults
	mov	%d4, 5
	mov	%d5, 0
	mov.aa	%a4, %a15
	lea	%a5, [%a5] lo:TstM_TestResults
	call	Sl_ExecRunTst
.LVL25:
	.loc 1 305 0
	jnz	%d2, .L33
.LVL26:
.L31:
	.loc 1 310 0
	ld.a	%a15, [%a15] 76
	movh.a	%a2, hi:TstM_ExpTestSignature
	lea	%a2, [%a2] lo:TstM_ExpTestSignature
	ld.w	%d15, [%a2] 76
	mov.d	%d2, %a15
	jeq	%d2, %d15, .L30
	.loc 1 312 0
	mov	%d4, 64
	j	IOHWSF_vDefaultErrorHandler
.L30:
	ret
.LVL27:
.L33:
	.loc 1 307 0
	mov	%d4, 11
	call	IOHWSF_vDefaultErrorHandler
.LVL28:
	j	.L31
.LFE21:
	.size	TstM_Run, .-TstM_Run
	.align 3
	.global	TstM_SRCRegestersCheck
	.type	TstM_SRCRegestersCheck, @function
TstM_SRCRegestersCheck:
.LFB22:
	.loc 1 336 0
.LVL29:
	.loc 1 339 0
	movh.a	%a15, hi:TstM_TestSignatures
	lea	%a15, [%a15] lo:TstM_TestSignatures
	movh.a	%a5, hi:TstM_TestResults
	mov	%d4, 5
	mov	%d5, 1
	mov.aa	%a4, %a15
	lea	%a5, [%a5] lo:TstM_TestResults
	call	Sl_ExecRunTst
.LVL30:
	.loc 1 340 0
	jnz	%d2, .L37
.LVL31:
.L35:
	.loc 1 345 0
	ld.a	%a15, [%a15] 80
	movh.a	%a2, hi:TstM_ExpTestSignature
	lea	%a2, [%a2] lo:TstM_ExpTestSignature
	ld.w	%d15, [%a2] 80
	mov.d	%d2, %a15
	jeq	%d2, %d15, .L34
	.loc 1 347 0
	mov	%d4, 65
	j	IOHWSF_vDefaultErrorHandler
.L34:
	ret
.LVL32:
.L37:
	.loc 1 342 0
	mov	%d4, 12
	call	IOHWSF_vDefaultErrorHandler
.LVL33:
	j	.L35
.LFE22:
	.size	TstM_SRCRegestersCheck, .-TstM_SRCRegestersCheck
	.global	TstM_TestSignatures
	.section .bss.MPU_ASIL_VAR_NOINIT,"aw",@nobits
	.align 3
	.type	TstM_TestSignatures, @object
	.size	TstM_TestSignatures, 84
TstM_TestSignatures:
	.zero	84
	.global	TstM_TestResults
	.align 3
	.type	TstM_TestResults, @object
	.size	TstM_TestResults, 84
TstM_TestResults:
	.zero	84
	.section .debug_frame,"",@progbits
.Lframe0:
	.uaword	.LECIE0-.LSCIE0
.LSCIE0:
	.uaword	0xffffffff
	.byte	0x1
	.string	""
	.uleb128 0x1
	.sleb128 1
	.byte	0x1b
	.byte	0xc
	.uleb128 0x1a
	.uleb128 0
	.align 2
.LECIE0:
.LSFDE0:
	.uaword	.LEFDE0-.LASFDE0
.LASFDE0:
	.uaword	.Lframe0
	.uaword	.LFB18
	.uaword	.LFE18-.LFB18
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB19
	.uaword	.LFE19-.LFB19
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB20
	.uaword	.LFE20-.LFB20
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB21
	.uaword	.LFE21-.LFB21
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB22
	.uaword	.LFE22-.LFB22
	.align 2
.LEFDE8:
.section .text,"ax",@progbits
.Letext0:
	.file 2 "../30_Bsw/Common/Platform_Types.h"
	.file 3 "../30_Bsw/Common/Std_Types.h"
	.file 4 "../30_Bsw/STL_common/Sl_ErrorCodes.h"
	.file 5 "../30_Bsw/Smu/Static/Smu.h"
	.file 6 "../30_Bsw/TstHandler/Static/TstHandler.h"
	.file 7 "../30_Bsw/iohw/Static/iohwsf.h"
	.file 8 "../30_Bsw/TstM/Config/TstM_Cfg.h"
	.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x144c
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.6.3 build on 2013-05-17"
	.byte	0x1
	.string	"../30_Bsw/TstM/Static/TstM.c"
	.string	"S:\\\\20_Make"
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_ranges0+0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.string	"float"
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.string	"double"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x3
	.string	"uint8"
	.byte	0x2
	.byte	0x5b
	.uaword	0x75
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x3
	.string	"uint32"
	.byte	0x2
	.byte	0x5f
	.uaword	0xd3
	.uleb128 0x3
	.string	"Std_ReturnType"
	.byte	0x3
	.byte	0x71
	.uaword	0xf0
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.byte	0x24
	.uaword	0xd53
	.uleb128 0x5
	.string	"IOHWSF_E_SSCHECK"
	.sleb128 0
	.uleb128 0x5
	.string	"IOHWSF_E_SMU_CONFIGURATION_CHECK"
	.sleb128 1
	.uleb128 0x5
	.string	"IOHWSF_E_ISR_UNHANDLED_ISR"
	.sleb128 2
	.uleb128 0x5
	.string	"IOHWSF_E_ISR_100U_SOURCE_ERR"
	.sleb128 3
	.uleb128 0x5
	.string	"IOHWSF_E_ISR_1M_SOURCE_ERR"
	.sleb128 4
	.uleb128 0x5
	.string	"IOHWSF_E_ISR_10M_SOURCE_ERR"
	.sleb128 5
	.uleb128 0x5
	.string	"IOHWSF_E_SAFETLIB_INIT"
	.sleb128 6
	.uleb128 0x5
	.string	"IOHWSF_E_SAFETLIB_PRE_INIT"
	.sleb128 7
	.uleb128 0x5
	.string	"IOHWSF_E_SAFETLIB_PRERUN_PREHOOK"
	.sleb128 8
	.uleb128 0x5
	.string	"IOHWSF_E_SAFETLIB_PRERUN_TEST_FAIL"
	.sleb128 9
	.uleb128 0x5
	.string	"IOHWSF_E_SAFETLIB_PRERUN_POSTHOOK"
	.sleb128 10
	.uleb128 0x5
	.string	"IOHWSF_E_SAFETLIB_RUN_TEST_FAIL"
	.sleb128 11
	.uleb128 0x5
	.string	"IOHWSF_E_SAFETLIB_SRC_REG_CHECK_FAIL"
	.sleb128 12
	.uleb128 0x5
	.string	"IOHWSF_E_MCAL_DIV_INCONSISTENCY"
	.sleb128 13
	.uleb128 0x5
	.string	"IOHWSF_E_MCAL_SPINLOCK_TIMEOUT"
	.sleb128 14
	.uleb128 0x5
	.string	"IOHWSF_E_TRAP_VIRTUAL_ADDRESS_FILL"
	.sleb128 15
	.uleb128 0x5
	.string	"IOHWSF_E_TRAP_VIRTUAL_ADDRESS_PROTECTION"
	.sleb128 16
	.uleb128 0x5
	.string	"IOHWSF_E_TRAP_PRIVILEGE_INSTRUCTION"
	.sleb128 17
	.uleb128 0x5
	.string	"IOHWSF_E_TRAP_MEMORY_PROTECTION_READ"
	.sleb128 18
	.uleb128 0x5
	.string	"IOHWSF_E_TRAP_MEMORY_PROTECTION_WRITE"
	.sleb128 19
	.uleb128 0x5
	.string	"IOHWSF_E_TRAP_MEMORY_PROTECTION_EXECUTION"
	.sleb128 20
	.uleb128 0x5
	.string	"IOHWSF_E_TRAP_PROTECTION_PERIPHERAL_ACCESS"
	.sleb128 21
	.uleb128 0x5
	.string	"IOHWSF_E_TRAP_MEMORY_PROTECTION_NULL_ADDRESS"
	.sleb128 22
	.uleb128 0x5
	.string	"IOHWSF_E_TRAP_GLOBAL_REGISTER_WRITE_PROTECTION"
	.sleb128 23
	.uleb128 0x5
	.string	"IOHWSF_E_TRAP_ILLEGAL_OPCODE"
	.sleb128 24
	.uleb128 0x5
	.string	"IOHWSF_E_TRAP_UNIMPLEMENTED_OPCODE"
	.sleb128 25
	.uleb128 0x5
	.string	"IOHWSF_E_TRAP_INVALID_OPERAND_SPECIFICATION"
	.sleb128 26
	.uleb128 0x5
	.string	"IOHWSF_E_TRAP_DATA_ADDRESS_ALIGNMENT"
	.sleb128 27
	.uleb128 0x5
	.string	"IOHWSF_E_TRAP_INVALID_LOCAL_MEMORY_ADDRESS"
	.sleb128 28
	.uleb128 0x5
	.string	"IOHWSF_E_TRAP_FREE_CONTEXT_LIST_DEPLETION"
	.sleb128 29
	.uleb128 0x5
	.string	"IOHWSF_E_TRAP_CALL_DEPTH_OVERFLOW"
	.sleb128 30
	.uleb128 0x5
	.string	"IOHWSF_E_TRAP_CALL_DEPTH_UNDERFLOW"
	.sleb128 31
	.uleb128 0x5
	.string	"IOHWSF_E_TRAP_FREE_CONTEXT_LIST_UNDERFLOW"
	.sleb128 32
	.uleb128 0x5
	.string	"IOHWSF_E_TRAP_CALL_STACK_UNDERFLOW"
	.sleb128 33
	.uleb128 0x5
	.string	"IOHWSF_E_TRAP_CONTEXT_TYPE"
	.sleb128 34
	.uleb128 0x5
	.string	"IOHWSF_E_TRAP_NESTING_ERROR"
	.sleb128 35
	.uleb128 0x5
	.string	"IOHWSF_E_TRAP_PROGRAM_FETCH_SYNCHRONOUS_ERROR"
	.sleb128 36
	.uleb128 0x5
	.string	"IOHWSF_E_TRAP_DATA_ACCESS_SYNCHRONOUS_ERROR"
	.sleb128 37
	.uleb128 0x5
	.string	"IOHWSF_E_TRAP_DATA_ACCESS_ASYNCHRONOUS_ERROR"
	.sleb128 38
	.uleb128 0x5
	.string	"IOHWSF_E_TRAP_ARITHEMETIC_OVERFLOW"
	.sleb128 39
	.uleb128 0x5
	.string	"IOHWSF_E_TRAP_STICKY_ARITHEMETIC_OVERFLOW"
	.sleb128 40
	.uleb128 0x5
	.string	"IOHWSF_E_TRAP_UNEXPECTED_SYSTEM_CALL"
	.sleb128 41
	.uleb128 0x5
	.string	"IOHWSF_E_TRAP_UNEXPECTED_NMI"
	.sleb128 42
	.uleb128 0x5
	.string	"IOHWSF_E_TRAP_UNDEFINED_TIN"
	.sleb128 43
	.uleb128 0x5
	.string	"IOHWSF_E_CORE0_NOT_IN_SAFE_STATE"
	.sleb128 44
	.uleb128 0x5
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_TRAP_TST"
	.sleb128 45
	.uleb128 0x5
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_CLKM_TST"
	.sleb128 46
	.uleb128 0x5
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_SRAM_ECC_TST"
	.sleb128 47
	.uleb128 0x5
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_PMU_ECC_EDC_TST"
	.sleb128 48
	.uleb128 0x5
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_SRI_TST"
	.sleb128 49
	.uleb128 0x5
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_SPB_TST_TIMEOUT"
	.sleb128 50
	.uleb128 0x5
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_SFF_TST"
	.sleb128 51
	.uleb128 0x5
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_SPB_TST_RAP"
	.sleb128 52
	.uleb128 0x5
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_CPU_MPU_TST"
	.sleb128 53
	.uleb128 0x5
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_CPUBUSMPULFM_TST"
	.sleb128 54
	.uleb128 0x5
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_REG_ACC_PROT_TST"
	.sleb128 55
	.uleb128 0x5
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_CPU_WDG_TST"
	.sleb128 56
	.uleb128 0x5
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_SAFETY_WDG_TST"
	.sleb128 57
	.uleb128 0x5
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_SMU_TST_NMI"
	.sleb128 58
	.uleb128 0x5
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_SMU_TST_IRQ"
	.sleb128 59
	.uleb128 0x5
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_SMU_TST_RT"
	.sleb128 60
	.uleb128 0x5
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_VLM_TST"
	.sleb128 61
	.uleb128 0x5
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_IR_TST"
	.sleb128 62
	.uleb128 0x5
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_LOCK_STEP_TST"
	.sleb128 63
	.uleb128 0x5
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_SFR_CMP_TST"
	.sleb128 64
	.uleb128 0x5
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_SRC_REG_CHECK_TST"
	.sleb128 65
	.uleb128 0x5
	.string	"IOHWSF_E_FLASH_TEST_PATTERN_NOT_FLSHED"
	.sleb128 66
	.uleb128 0x5
	.string	"IOHWSF_E_SETUP_FSP_PIN"
	.sleb128 67
	.uleb128 0x5
	.string	"IOHWSF_E_SMU_LOCK_CFG_TST"
	.sleb128 68
	.uleb128 0x5
	.string	"IOHWSF_E_SAFETY_ISR_RESET"
	.sleb128 69
	.uleb128 0x5
	.string	"IOHWSF_E_TLF_ERR_DETECTION_TIMEOUT"
	.sleb128 70
	.uleb128 0x5
	.string	"IOHWSF_E_TLF_SYS_FLAGS_NOT_CLEARED"
	.sleb128 71
	.uleb128 0x5
	.string	"IOHWSF_E_TLF_RESTORE_FAILED"
	.sleb128 72
	.uleb128 0x5
	.string	"IOHWSF_E_RELEASE_FSP_FAILED"
	.sleb128 73
	.uleb128 0x5
	.string	"IOHWSF_E_UDS_ECU_RESET_REQ"
	.sleb128 74
	.uleb128 0x5
	.string	"IOHWSF_E_UDS_SRAM_ECCPREAOU_FAILED"
	.sleb128 75
	.byte	0
	.uleb128 0x6
	.string	"Sl_TstRsltType"
	.byte	0x4
	.uahalf	0x2a3
	.uaword	0x109
	.uleb128 0x6
	.string	"Sl_ParamSetType"
	.byte	0x4
	.uahalf	0x2ac
	.uaword	0x109
	.uleb128 0x7
	.byte	0x4
	.uaword	0x109
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0x84
	.byte	0x5
	.byte	0xa1
	.uaword	0xe1d
	.uleb128 0x9
	.string	"FSPCfg"
	.byte	0x5
	.byte	0xa3
	.uaword	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"AGCCfg"
	.byte	0x5
	.byte	0xa4
	.uaword	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.string	"RTCCfg"
	.byte	0x5
	.byte	0xa5
	.uaword	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.string	"RTAC0Cfg"
	.byte	0x5
	.byte	0xa6
	.uaword	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.string	"RTAC1Cfg"
	.byte	0x5
	.byte	0xa7
	.uaword	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.string	"AlarmConfig"
	.byte	0x5
	.byte	0xa8
	.uaword	0xe1d
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.string	"AlarmFspConfig"
	.byte	0x5
	.byte	0xa9
	.uaword	0xe2d
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.byte	0
	.uleb128 0xa
	.uaword	0x109
	.uaword	0xe2d
	.uleb128 0xb
	.uaword	0xd3
	.byte	0x14
	.byte	0
	.uleb128 0xa
	.uaword	0x109
	.uaword	0xe3d
	.uleb128 0xb
	.uaword	0xd3
	.byte	0x6
	.byte	0
	.uleb128 0xc
	.uaword	.LASF0
	.byte	0x5
	.byte	0xaa
	.uaword	0xd88
	.uleb128 0x3
	.string	"Sl_TstIndexType"
	.byte	0x6
	.byte	0x48
	.uaword	0xf0
	.uleb128 0x8
	.uaword	.LASF1
	.byte	0xc
	.byte	0x6
	.byte	0x58
	.uaword	0xea3
	.uleb128 0xd
	.uaword	.LASF2
	.byte	0x6
	.byte	0x5a
	.uaword	0xe48
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"ParamSetIdx"
	.byte	0x6
	.byte	0x5b
	.uaword	0xd6a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.string	"AlarmPos"
	.byte	0x6
	.byte	0x5c
	.uaword	0xf0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0xc
	.uaword	.LASF1
	.byte	0x6
	.byte	0x5d
	.uaword	0xe5f
	.uleb128 0x3
	.string	"Th_TestLibFuncPtrType"
	.byte	0x6
	.byte	0x60
	.uaword	0xecb
	.uleb128 0x7
	.byte	0x4
	.uaword	0xed1
	.uleb128 0xe
	.byte	0x1
	.uaword	0xd53
	.uaword	0xeeb
	.uleb128 0xf
	.uaword	0xd6a
	.uleb128 0xf
	.uaword	0xf0
	.uleb128 0xf
	.uaword	0xd82
	.byte	0
	.uleb128 0x8
	.uaword	.LASF3
	.byte	0x24
	.byte	0x6
	.byte	0x68
	.uaword	0x104c
	.uleb128 0x9
	.string	"TestGroupEarlyPreRunPtr"
	.byte	0x6
	.byte	0x6a
	.uaword	0x104c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"TestGroupPreRunPtr"
	.byte	0x6
	.byte	0x6b
	.uaword	0x104c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.string	"TestGroupRunPtr"
	.byte	0x6
	.byte	0x6c
	.uaword	0x104c
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.string	"TestGroupPostRunPtr"
	.byte	0x6
	.byte	0x6d
	.uaword	0x104c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.string	"Th_TestLibFuncPtr"
	.byte	0x6
	.byte	0x6e
	.uaword	0x1057
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.string	"SmuConfigAddrPrerun"
	.byte	0x6
	.byte	0x6f
	.uaword	0x1062
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.string	"SmuConfigAddrRuntime"
	.byte	0x6
	.byte	0x70
	.uaword	0x1062
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.string	"GroupCountEarlyPreRun"
	.byte	0x6
	.byte	0x71
	.uaword	0xf0
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x9
	.string	"GroupCountPreRun"
	.byte	0x6
	.byte	0x72
	.uaword	0xf0
	.byte	0x2
	.byte	0x23
	.uleb128 0x1d
	.uleb128 0x9
	.string	"GroupCountRuntime"
	.byte	0x6
	.byte	0x73
	.uaword	0xf0
	.byte	0x2
	.byte	0x23
	.uleb128 0x1e
	.uleb128 0x9
	.string	"GroupCountPostRun"
	.byte	0x6
	.byte	0x74
	.uaword	0xf0
	.byte	0x2
	.byte	0x23
	.uleb128 0x1f
	.uleb128 0x9
	.string	"CoreId"
	.byte	0x6
	.byte	0x75
	.uaword	0xf0
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.uaword	0x1052
	.uleb128 0x10
	.uaword	0xea3
	.uleb128 0x7
	.byte	0x4
	.uaword	0x105d
	.uleb128 0x10
	.uaword	0xeae
	.uleb128 0x7
	.byte	0x4
	.uaword	0x1068
	.uleb128 0x10
	.uaword	0xe3d
	.uleb128 0xc
	.uaword	.LASF3
	.byte	0x6
	.byte	0x76
	.uaword	0xeeb
	.uleb128 0x4
	.byte	0x4
	.byte	0x8
	.byte	0x29
	.uaword	0x1259
	.uleb128 0x5
	.string	"TSTM_PRERUN_TRAP"
	.sleb128 0
	.uleb128 0x5
	.string	"TSTM_PRERUN_CLKM"
	.sleb128 1
	.uleb128 0x5
	.string	"TSTM_PRERUN_SRAM_ECC"
	.sleb128 2
	.uleb128 0x5
	.string	"TSTM_PRERUN_PMU_EECC_EDC"
	.sleb128 3
	.uleb128 0x5
	.string	"TSTM_PRERUN_SRI"
	.sleb128 4
	.uleb128 0x5
	.string	"TSTM_PRERUN_SPB_TIMEOUT"
	.sleb128 5
	.uleb128 0x5
	.string	"TSTM_PRERUN_SFF"
	.sleb128 6
	.uleb128 0x5
	.string	"TSTM_PRERUN_SPB_RAP"
	.sleb128 7
	.uleb128 0x5
	.string	"TSTM_PRERUN_CPU_MPU"
	.sleb128 8
	.uleb128 0x5
	.string	"TSTM_PRERUN_CPUBUSMPULFM"
	.sleb128 9
	.uleb128 0x5
	.string	"TSTM_PRERUN_REG_ACC_PROT"
	.sleb128 10
	.uleb128 0x5
	.string	"TSTM_PRERUN_CPU_WDG"
	.sleb128 11
	.uleb128 0x5
	.string	"TSTM_PRERUN_SAFETY_WDG"
	.sleb128 12
	.uleb128 0x5
	.string	"TSTM_PRERUN_SMU_NMI"
	.sleb128 13
	.uleb128 0x5
	.string	"TSTM_PRERUN_SMU_IRQ"
	.sleb128 14
	.uleb128 0x5
	.string	"TSTM_PRERUN_SMU_RT"
	.sleb128 15
	.uleb128 0x5
	.string	"TSTM_PRERUN_VLTMTST"
	.sleb128 16
	.uleb128 0x5
	.string	"TSTM_PRERUN_IR"
	.sleb128 17
	.uleb128 0x5
	.string	"TSTM_PRERUN_LOCKSTEP"
	.sleb128 18
	.uleb128 0x5
	.string	"TSTM_RUN_SFR_CMP"
	.sleb128 19
	.uleb128 0x5
	.string	"TSTM_RUN_SRC_REGESTERS_CHECK"
	.sleb128 20
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.string	"TstM_Init"
	.byte	0x1
	.byte	0x8e
	.byte	0x1
	.uaword	.LFB18
	.uaword	.LFE18
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x1287
	.uleb128 0x12
	.uaword	.LASF4
	.byte	0x1
	.byte	0x90
	.uaword	0x117
	.uaword	.LLST0
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.string	"TstM_PreRunTst"
	.byte	0x1
	.byte	0xb4
	.byte	0x1
	.uaword	.LFB19
	.uaword	.LFE19
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x130b
	.uleb128 0x13
	.string	"GroupIndex"
	.byte	0x1
	.byte	0xb4
	.uaword	0xf0
	.uaword	.LLST1
	.uleb128 0x12
	.uaword	.LASF4
	.byte	0x1
	.byte	0xb6
	.uaword	0x117
	.uaword	.LLST2
	.uleb128 0x12
	.uaword	.LASF2
	.byte	0x1
	.byte	0xb7
	.uaword	0xe48
	.uaword	.LLST3
	.uleb128 0x14
	.string	"TstIdxStart"
	.byte	0x1
	.byte	0xb8
	.uaword	0xe48
	.uaword	.LLST4
	.uleb128 0x14
	.string	"TstIdxEnd"
	.byte	0x1
	.byte	0xb9
	.uaword	0xe48
	.uaword	.LLST5
	.byte	0
	.uleb128 0x15
	.byte	0x1
	.string	"TstM_InvalidateData"
	.byte	0x1
	.uahalf	0x106
	.byte	0x1
	.uaword	.LFB20
	.uaword	.LFE20
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x1342
	.uleb128 0x16
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x108
	.uaword	0xe48
	.byte	0
	.byte	0
	.uleb128 0x15
	.byte	0x1
	.string	"TstM_Run"
	.byte	0x1
	.uahalf	0x12c
	.byte	0x1
	.uaword	.LFB21
	.uaword	.LFE21
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x1371
	.uleb128 0x17
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x12e
	.uaword	0x117
	.uaword	.LLST6
	.byte	0
	.uleb128 0x15
	.byte	0x1
	.string	"TstM_SRCRegestersCheck"
	.byte	0x1
	.uahalf	0x14f
	.byte	0x1
	.uaword	.LFB22
	.uaword	.LFE22
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x13ae
	.uleb128 0x17
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x151
	.uaword	0x117
	.uaword	.LLST7
	.byte	0
	.uleb128 0xa
	.uaword	0x106d
	.uaword	0x13be
	.uleb128 0xb
	.uaword	0xd3
	.byte	0
	.byte	0
	.uleb128 0x18
	.string	"Sl_ConfigRoot"
	.byte	0x6
	.byte	0x7d
	.uaword	0x13d5
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.uaword	0x13ae
	.uleb128 0xa
	.uaword	0xd53
	.uaword	0x13ea
	.uleb128 0xb
	.uaword	0xd3
	.byte	0x14
	.byte	0
	.uleb128 0x19
	.string	"TstM_TestResults"
	.byte	0x1
	.byte	0x5f
	.uaword	0x13da
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	TstM_TestResults
	.uleb128 0x18
	.string	"TstM_ExpTestSignature"
	.byte	0x1
	.byte	0x65
	.uaword	0x1428
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.uaword	0xe1d
	.uleb128 0x19
	.string	"TstM_TestSignatures"
	.byte	0x1
	.byte	0x6b
	.uaword	0xe1d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	TstM_TestSignatures
	.byte	0
	.section .debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0x8
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1b
	.uleb128 0x8
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x10
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x4
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.byte	0
	.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL3
	.uaword	.LVL4-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL4
	.uaword	.LVL5-1
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL6
	.uaword	.LVL7-1
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL7
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL9
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL13
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL15
	.uaword	.LVL16-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL20
	.uaword	.LVL21-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL21
	.uaword	.LVL22-1
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL17
	.uaword	.LVL18
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL17
	.uaword	.LVL18
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL19
	.uaword	.LVL20
	.uahalf	0x2
	.byte	0x42
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL17
	.uaword	.LVL18
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL19
	.uaword	.LVL20
	.uahalf	0x2
	.byte	0x43
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL24
	.uaword	.LVL25
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL25
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL27
	.uaword	.LVL28-1
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL29
	.uaword	.LVL30
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL30
	.uaword	.LVL31
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL32
	.uaword	.LVL33-1
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
	.section .debug_aranges,"",@progbits
	.uaword	0x3c
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB18
	.uaword	.LFE18-.LFB18
	.uaword	.LFB19
	.uaword	.LFE19-.LFB19
	.uaword	.LFB20
	.uaword	.LFE20-.LFB20
	.uaword	.LFB21
	.uaword	.LFE21-.LFB21
	.uaword	.LFB22
	.uaword	.LFE22-.LFB22
	.uaword	0
	.uaword	0
	.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB18
	.uaword	.LFE18
	.uaword	.LFB19
	.uaword	.LFE19
	.uaword	.LFB20
	.uaword	.LFE20
	.uaword	.LFB21
	.uaword	.LFE21
	.uaword	.LFB22
	.uaword	.LFE22
	.uaword	0
	.uaword	0
	.section .debug_line,"",@progbits
.Ldebug_line0:
	.section .debug_str,"",@progbits
.LASF2:
	.string	"TstIdx"
.LASF0:
	.string	"Smu_ConfigType"
.LASF3:
	.string	"Sl_ConfigType"
.LASF4:
	.string	"Result"
.LASF1:
	.string	"Th_TestlibTestSetType"
	.extern	Sl_ExecRunTst,STT_FUNC,0
	.extern	IOHWSF_tPreRunPostHook,STT_FUNC,0
	.extern	TstM_ExpTestSignature,STT_OBJECT,84
	.extern	Sl_ExecPreRunTst,STT_FUNC,0
	.extern	IOHWSF_tPreRunPreHook,STT_FUNC,0
	.extern	IOHWSF_vDefaultErrorHandler,STT_FUNC,0
	.extern	Sl_Init,STT_FUNC,0
	.extern	Sl_PreInit,STT_FUNC,0
	.extern	Sl_ConfigRoot,STT_OBJECT,36
	.ident	"GCC: (HighTec Release v4.6.3.0) 4.6.3 build on 2013-05-17"
