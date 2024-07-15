	.file	"iohwsf_FspTest.c"
.section .text,"ax",@progbits
.Ltext0:
	.section .text.MPU_ASIL_CODE,"ax",@progbits
	.align 3
	.global	IOHWSF_FSPTEST
	.type	IOHWSF_FSPTEST, @function
IOHWSF_FSPTEST:
.LFB24:
	.file 1 "../30_Bsw/iohw/Static/iohwsf_FspTest.c"
	.loc 1 87 0
	sub.a	%SP, 8
.LCFI0:
	.loc 1 97 0
	mov	%d4, 6144
	mov.aa	%a4, %SP
	call	Qspi_SBC_TxRxData
.LVL0:
	.loc 1 98 0
	ld.hu	%d15, [%SP]0
	.loc 1 101 0
	mov	%d2, 2560
	.loc 1 98 0
	extr.u	%d9, %d15, 1, 8
.LVL1:
	.loc 1 101 0
	insert	%d15, %d15, 0, 9, 6
	.loc 1 104 0
	mov.u	%d4, 48127
	.loc 1 101 0
	or	%d15, %d2
	.loc 1 104 0
	lea	%a4, [%SP] 6
	.loc 1 101 0
	st.h	[%SP]0, %d15
	.loc 1 104 0
	call	Qspi_SBC_TxRxData
	.loc 1 107 0
	mov	%d4, 14848
	lea	%a4, [%SP] 2
	call	Qspi_SBC_TxRxData
.LVL2:
	.loc 1 108 0
	ld.hu	%d15, [%SP] 2
.LVL3:
	extr.u	%d15, %d15, 1, 8
.LVL4:
	st.h	[%SP] 2, %d15
.LVL5:
	.loc 1 109 0
	jnz	%d15, .L14
.L2:
	.loc 1 115 0
	call	Qspi_SBC_Unlock
	.loc 1 118 0
	mov.u	%d4, 35359
	lea	%a4, [%SP] 6
	call	Qspi_SBC_TxRxData
	.loc 1 121 0
	call	Qspi_SBC_Lockup
	.loc 1 124 0
	mov	%e4, 5
	call	Smu_SetAlarmStatus
.LVL6:
	.loc 1 127 0
	mov	%d8, 0
.LVL7:
.L3:
	.loc 1 130 0 discriminator 1
	mov	%d4, 14848
	lea	%a4, [%SP] 2
	call	Qspi_SBC_TxRxData
	.loc 1 131 0 discriminator 1
	ld.hu	%d15, [%SP] 2
.LVL8:
	.loc 1 132 0 discriminator 1
	add	%d8, 1
.LVL9:
	.loc 1 131 0 discriminator 1
	extr.u	%d15, %d15, 1, 8
.LVL10:
	.loc 1 134 0 discriminator 1
	lt.u	%d2, %d8, 65
	.loc 1 131 0 discriminator 1
	st.h	[%SP] 2, %d15
.LVL11:
	.loc 1 134 0 discriminator 1
	nand.t	%d15, %d15,3, %d15,3
	and	%d15, %d2
	jnz	%d15, .L3
	.loc 1 137 0
	jz	%d2, .L15
.L4:
	.loc 1 142 0
	mov	%e4, 5
	call	Smu_ClearAlarmStatus
	jnz	%d2, .L16
.L5:
	.loc 1 147 0
	call	Smu_ReleaseFSP
	jnz	%d2, .L17
.L10:
	.loc 1 153 0 discriminator 1
	call	Smu_GetSmuState
	jne	%d2, 1, .L10
	.loc 1 159 0
	call	Qspi_SBC_Unlock
	.loc 1 162 0
	ld.hu	%d4, [%SP]0
	lea	%a4, [%SP] 6
	call	Qspi_SBC_TxRxData
	.loc 1 165 0
	call	Qspi_SBC_Lockup
	.loc 1 168 0
	mov	%d4, 6144
	lea	%a4, [%SP] 4
	call	Qspi_SBC_TxRxData
.LVL12:
	.loc 1 169 0
	ld.hu	%d15, [%SP] 4
.LVL13:
	extr.u	%d15, %d15, 1, 8
.LVL14:
	st.h	[%SP] 4, %d15
	.loc 1 170 0
	jeq	%d9, %d15, .L8
	.loc 1 172 0
	mov	%d4, 72
	call	IOHWSF_vDefaultErrorHandler
.L8:
	.loc 1 175 0
	mov.u	%d4, 48127
	lea	%a4, [%SP] 6
	call	Qspi_SBC_TxRxData
	.loc 1 178 0
	mov	%d4, 14848
	lea	%a4, [%SP] 2
	call	Qspi_SBC_TxRxData
	.loc 1 179 0
	ld.hu	%d15, [%SP] 2
.LVL15:
	extr.u	%d15, %d15, 1, 8
.LVL16:
	st.h	[%SP] 2, %d15
.LVL17:
	.loc 1 180 0
	jnz	%d15, .L18
	ret
.L18:
	.loc 1 182 0
	mov	%d4, 71
	call	IOHWSF_vDefaultErrorHandler
	ret
.LVL18:
.L17:
	.loc 1 149 0
	mov	%d4, 73
	call	IOHWSF_vDefaultErrorHandler
	j	.L10
.L16:
	.loc 1 144 0
	movh	%d4, 34
	addi	%d4, %d4, 527
	call	IOHWSF_vDefaultErrorHandler
	j	.L5
.L15:
	.loc 1 139 0
	mov	%d4, 70
	call	IOHWSF_vDefaultErrorHandler
	j	.L4
.LVL19:
.L14:
	.loc 1 111 0
	mov	%d4, 71
	call	IOHWSF_vDefaultErrorHandler
	j	.L2
.LFE24:
	.size	IOHWSF_FSPTEST, .-IOHWSF_FSPTEST
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
	.uaword	.LFB24
	.uaword	.LFE24-.LFB24
	.byte	0x4
	.uaword	.LCFI0-.LFB24
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE0:
.section .text,"ax",@progbits
.Letext0:
	.file 2 "../30_Bsw/Common/Platform_Types.h"
	.file 3 "../30_Bsw/Smu/Static/Smu.h"
	.file 4 "../30_Bsw/iohw/Static/iohwsf.h"
	.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0xe56
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.6.3 build on 2013-05-17"
	.byte	0x1
	.string	"../30_Bsw/iohw/Static/iohwsf_FspTest.c"
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
	.uaword	0x7f
	.uleb128 0x3
	.string	"uint16"
	.byte	0x2
	.byte	0x5d
	.uaword	0x9d
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x3
	.string	"uint32"
	.byte	0x2
	.byte	0x5f
	.uaword	0xdd
	.uleb128 0x3
	.string	"Smu_StateType"
	.byte	0x3
	.byte	0x9e
	.uaword	0xfa
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.string	"long long int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.string	"long long unsigned int"
	.uleb128 0x4
	.byte	0x4
	.byte	0x4
	.byte	0x24
	.uaword	0xd95
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
	.byte	0x1
	.string	"IOHWSF_FSPTEST"
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.uaword	.LFB24
	.uaword	.LFE24
	.uaword	.LLST0
	.uleb128 0x7
	.string	"SysconFigRegBackup"
	.byte	0x1
	.byte	0x58
	.uaword	0x107
	.byte	0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x8
	.string	"u16SyssfRegRead"
	.byte	0x1
	.byte	0x59
	.uaword	0x107
	.uaword	.LLST1
	.uleb128 0x8
	.string	"u16SysconFigRegRead"
	.byte	0x1
	.byte	0x5a
	.uaword	0x107
	.uaword	.LLST2
	.uleb128 0x7
	.string	"u16SysconFigBackupData"
	.byte	0x1
	.byte	0x5b
	.uaword	0x107
	.byte	0x1
	.byte	0x59
	.uleb128 0x7
	.string	"u16Dummy"
	.byte	0x1
	.byte	0x5c
	.uaword	0x107
	.byte	0x2
	.byte	0x91
	.sleb128 -2
	.uleb128 0x8
	.string	"u32FspCounter"
	.byte	0x1
	.byte	0x5d
	.uaword	0x121
	.uaword	.LLST3
	.byte	0
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.byte	0
	.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LFB24
	.uaword	.LCFI0
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI0
	.uaword	.LFE24
	.uahalf	0x2
	.byte	0x8a
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL2
	.uaword	.LVL3
	.uahalf	0x2
	.byte	0x91
	.sleb128 -6
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL5
	.uaword	.LVL8
	.uahalf	0x2
	.byte	0x91
	.sleb128 -6
	.uaword	.LVL10
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL11
	.uaword	.LVL15
	.uahalf	0x2
	.byte	0x91
	.sleb128 -6
	.uaword	.LVL16
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL17
	.uaword	.LFE24
	.uahalf	0x2
	.byte	0x91
	.sleb128 -6
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x2
	.byte	0x91
	.sleb128 -4
	.uaword	.LVL14
	.uaword	.LVL15
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL15
	.uaword	.LVL18
	.uahalf	0x2
	.byte	0x91
	.sleb128 -4
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL7
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
	.section .debug_aranges,"",@progbits
	.uaword	0x1c
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB24
	.uaword	.LFE24-.LFB24
	.uaword	0
	.uaword	0
	.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB24
	.uaword	.LFE24
	.uaword	0
	.uaword	0
	.section .debug_line,"",@progbits
.Ldebug_line0:
	.extern	IOHWSF_vDefaultErrorHandler,STT_FUNC,0
	.extern	Smu_GetSmuState,STT_FUNC,0
	.extern	Smu_ReleaseFSP,STT_FUNC,0
	.extern	Smu_ClearAlarmStatus,STT_FUNC,0
	.extern	Smu_SetAlarmStatus,STT_FUNC,0
	.extern	Qspi_SBC_Lockup,STT_FUNC,0
	.extern	Qspi_SBC_Unlock,STT_FUNC,0
	.extern	Qspi_SBC_TxRxData,STT_FUNC,0
	.ident	"GCC: (HighTec Release v4.6.3.0) 4.6.3 build on 2013-05-17"
