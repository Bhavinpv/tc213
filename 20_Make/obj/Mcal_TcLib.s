	.file	"Mcal_TcLib.c"
.section .text,"ax",@progbits
.Ltext0:
	.section .text.STL_ASIL_CODE,"ax",@progbits
	.align 2
	.global	Mcal_GetCoreId
	.type	Mcal_GetCoreId, @function
Mcal_GetCoreId:
.LFB18:
	.file 1 "../30_Bsw/STL_common/Mcal_TcLib.c"
	.loc 1 271 0
.LBB24:
	.loc 1 274 0
#APP
	# 274 "../30_Bsw/STL_common/Mcal_TcLib.c" 1
	mfcr %d2, LO:(0xFE1C)
	# 0 "" 2
.LVL0:
#NO_APP
.LBE24:
	.loc 1 276 0
	and	%d2, %d2, 255
.LVL1:
	ret
.LFE18:
	.size	Mcal_GetCoreId, .-Mcal_GetCoreId
	.align 2
	.global	Mcal_GetDsprReMapAddress
	.type	Mcal_GetDsprReMapAddress, @function
Mcal_GetDsprReMapAddress:
.LFB19:
	.loc 1 299 0
.LVL2:
	.loc 1 307 0
	insert	%d15, %d4, 0, 0, 28
	movh	%d3, 53248
	.loc 1 305 0
	mov	%d2, %d4
	.loc 1 307 0
	jeq	%d15, %d3, .L9
.LVL3:
.L3:
	.loc 1 354 0
	ret
.L9:
.LBB25:
.LBB26:
.LBB27:
	.loc 1 274 0
#APP
	# 274 "../30_Bsw/STL_common/Mcal_TcLib.c" 1
	mfcr %d15, LO:(0xFE1C)
	# 0 "" 2
.LVL4:
#NO_APP
.LBE27:
.LBE26:
.LBE25:
	.loc 1 320 0
	and	%d15, 255
.LVL5:
	jnz	%d15, .L3
	.loc 1 323 0
	insert	%d15, %d4, 0, 28, 4
	mov.u	%d3, 49152
	jge.u	%d15, %d3, .L3
	.loc 1 325 0
	insert	%d2, %d4, 0, 18, 14
.LVL6:
	insert	%d2, %d2, 15, 28, 3
.LVL7:
	.loc 1 354 0
	ret
.LFE19:
	.size	Mcal_GetDsprReMapAddress, .-Mcal_GetDsprReMapAddress
	.align 2
	.global	Mcal_LockResource
	.type	Mcal_LockResource, @function
Mcal_LockResource:
.LFB20:
	.loc 1 499 0
.LVL8:
	.loc 1 506 0
	mov	%d2, 1
	.loc 1 508 0
	jz.a	%a4, .L11
.LVL9:
.LBB28:
.LBB29:
	.file 2 "../30_Bsw/STL_common/Mcal_Compiler.h"
	.loc 2 798 0
	mov	%e2, 1
#APP
	# 798 "../30_Bsw/STL_common/Mcal_Compiler.h" 1
	cmpswap.w [%a4]0, %e2
	# 0 "" 2
.LVL10:
#NO_APP
.LBE29:
.LBE28:
.LBB30:
.LBB31:
	.file 3 "../30_Bsw/STL_common/intrinsics.h"
	.loc 3 190 0
#APP
	# 190 "../30_Bsw/STL_common/intrinsics.h" 1
	dsync
	# 0 "" 2
.LVL11:
#NO_APP
.L11:
.LBE31:
.LBE30:
	.loc 1 519 0
	ret
.LFE20:
	.size	Mcal_LockResource, .-Mcal_LockResource
	.align 2
	.global	Mcal_UnlockResource
	.type	Mcal_UnlockResource, @function
Mcal_UnlockResource:
.LFB21:
	.loc 1 543 0
.LVL12:
	.loc 1 544 0
	jz.a	%a4, .L13
.LBB32:
.LBB33:
	.loc 3 190 0
#APP
	# 190 "../30_Bsw/STL_common/intrinsics.h" 1
	dsync
	# 0 "" 2
#NO_APP
.LBE33:
.LBE32:
	.loc 1 553 0
	mov	%d15, 0
	st.w	[%a4]0, %d15
.L13:
	ret
.LFE21:
	.size	Mcal_UnlockResource, .-Mcal_UnlockResource
	.align 2
	.global	Mcal_GetSpinLock
	.type	Mcal_GetSpinLock, @function
Mcal_GetSpinLock:
.LFB22:
	.loc 1 582 0
.LVL13:
	.loc 1 586 0
	mov	%d2, 1
	.loc 1 588 0
	jz.a	%a4, .L16
.LBB34:
.LBB35:
	.loc 2 798 0
	mov.a	%a15, %d4
	mov	%e6, 1
	add.a	%a15, -1
.LVL14:
.L20:
	mov	%e2, %d7, %d6
#APP
	# 798 "../30_Bsw/STL_common/Mcal_Compiler.h" 1
	cmpswap.w [%a4]0, %e2
	# 0 "" 2
.LVL15:
#NO_APP
.LBE35:
.LBE34:
.LBB36:
.LBB37:
	.loc 3 190 0
#APP
	# 190 "../30_Bsw/STL_common/intrinsics.h" 1
	dsync
	# 0 "" 2
#NO_APP
.LBE37:
.LBE36:
	.loc 1 601 0
	jz	%d2, .L19
	.loc 1 607 0
	loop	%a15, .L20
	.loc 1 610 0
	mov	%d2, 1
	ret
.L19:
	.loc 1 603 0
	mov	%d2, 0
.LVL16:
.L16:
	.loc 1 614 0
	ret
.LFE22:
	.size	Mcal_GetSpinLock, .-Mcal_GetSpinLock
	.align 2
	.global	Mcal_ReleaseSpinLock
	.type	Mcal_ReleaseSpinLock, @function
Mcal_ReleaseSpinLock:
.LFB23:
	.loc 1 641 0
.LVL17:
	.loc 1 642 0
	jz.a	%a4, .L22
.LBB38:
.LBB39:
	.loc 3 190 0
#APP
	# 190 "../30_Bsw/STL_common/intrinsics.h" 1
	dsync
	# 0 "" 2
#NO_APP
.LBE39:
.LBE38:
	.loc 1 649 0
	mov	%d15, 0
	st.w	[%a4]0, %d15
.L22:
	ret
.LFE23:
	.size	Mcal_ReleaseSpinLock, .-Mcal_ReleaseSpinLock
	.align 2
	.global	Mcal_SuspendAllInterrupts
	.type	Mcal_SuspendAllInterrupts, @function
Mcal_SuspendAllInterrupts:
.LFB24:
	.loc 1 676 0
.LBB40:
	.loc 1 686 0
#APP
	# 686 "../30_Bsw/STL_common/Mcal_TcLib.c" 1
	mfcr %d15, LO:(0xFE1C)
	# 0 "" 2
.LVL18:
#NO_APP
.LBE40:
	.loc 1 688 0
	movh	%d3, hi:Mcal_IntDisableCounter
	addi	%d3, %d3, lo:Mcal_IntDisableCounter
	mov.a	%a15, %d3
	sh	%d15, 2
.LVL19:
	addsc.a	%a2, %a15, %d15, 0
	ld.a	%a15, [%a2]0
	jnz.a	%a15, .L25
.LBB41:
	.loc 1 690 0
#APP
	# 690 "../30_Bsw/STL_common/Mcal_TcLib.c" 1
	mfcr %d2, LO:(0xFE2C)
	# 0 "" 2
.LVL20:
#NO_APP
.LBE41:
.LBB42:
.LBB43:
	.loc 3 166 0
#APP
	# 166 "../30_Bsw/STL_common/intrinsics.h" 1
	disable
	# 0 "" 2
#NO_APP
.LBE43:
.LBE42:
	.loc 1 698 0
	movh.a	%a3, hi:Mcal_SavedIntState
	lea	%a3, [%a3] lo:Mcal_SavedIntState
	addsc.a	%a3, %a3, %d15, 0
	.loc 1 699 0
	ld.a	%a15, [%a2]0
	.loc 1 698 0
	st.w	[%a3]0, %d2
	.loc 1 699 0
	movh.a	%a3, hi:Mcal_SavedIntStateRedn
	lea	%a3, [%a3] lo:Mcal_SavedIntStateRedn
	.loc 1 692 0
	not	%d2
.LVL21:
	.loc 1 699 0
	addsc.a	%a3, %a3, %d15, 0
	st.w	[%a3]0, %d2
.LVL22:
.L25:
	.loc 1 702 0
	mov.d	%d2, %a15
	mov.a	%a2, %d3
	add	%d2, 1
	addsc.a	%a15, %a2, %d15, 0
	st.w	[%a15]0, %d2
	.loc 1 703 0
	movh.a	%a15, hi:Mcal_IntDisableCounterRedn
	lea	%a15, [%a15] lo:Mcal_IntDisableCounterRedn
	addsc.a	%a15, %a15, %d15, 0
	ld.w	%d15, [%a15]0
	add	%d15, -1
	st.w	[%a15]0, %d15
	.loc 1 709 0
	not	%d15
	jeq	%d2, %d15, .L24
	.loc 1 711 0
	mov	%d4, 13
	j	IOHWSF_vDefaultErrorHandler
.L24:
	ret
.LFE24:
	.size	Mcal_SuspendAllInterrupts, .-Mcal_SuspendAllInterrupts
	.align 2
	.global	Mcal_ResumeAllInterrupts
	.type	Mcal_ResumeAllInterrupts, @function
Mcal_ResumeAllInterrupts:
.LFB25:
	.loc 1 740 0
.LBB44:
	.loc 1 752 0
#APP
	# 752 "../30_Bsw/STL_common/Mcal_TcLib.c" 1
	mfcr %d15, LO:(0xFE1C)
	# 0 "" 2
.LVL23:
#NO_APP
.LBE44:
	.loc 1 755 0
	movh.a	%a13, hi:Mcal_IntDisableCounter
	sh	%d15, 2
.LVL24:
	lea	%a13, [%a13] lo:Mcal_IntDisableCounter
	addsc.a	%a15, %a13, %d15, 0
	.loc 1 756 0
	movh.a	%a12, hi:Mcal_IntDisableCounterRedn
	lea	%a12, [%a12] lo:Mcal_IntDisableCounterRedn
	.loc 1 755 0
	ld.w	%d8, [%a15]0
.LVL25:
	.loc 1 756 0
	addsc.a	%a15, %a12, %d15, 0
.LVL26:
	ld.w	%d9, [%a15]0
.LVL27:
	.loc 1 757 0
	movh.a	%a15, hi:Mcal_SavedIntState
.LVL28:
	lea	%a15, [%a15] lo:Mcal_SavedIntState
	addsc.a	%a15, %a15, %d15, 0
	.loc 1 763 0
	nor	%d2, %d9, 0
	.loc 1 757 0
	ld.w	%d10, [%a15]0
.LVL29:
	.loc 1 758 0
	movh.a	%a15, hi:Mcal_SavedIntStateRedn
.LVL30:
	lea	%a15, [%a15] lo:Mcal_SavedIntStateRedn
	addsc.a	%a15, %a15, %d15, 0
	ld.w	%d3, [%a15]0
.LVL31:
	.loc 1 763 0
	jeq	%d2, %d8, .L33
.L28:
	.loc 1 766 0
	mov	%d4, 13
	call	IOHWSF_vDefaultErrorHandler
.LVL32:
.L29:
	.loc 1 769 0
	jz	%d8, .L30
	.loc 1 771 0
	add	%d8, -1
.LVL33:
	.loc 1 772 0
	add	%d9, 1
.LVL34:
	.loc 1 775 0
	addsc.a	%a13, %a13, %d15, 0
	.loc 1 776 0
	addsc.a	%a12, %a12, %d15, 0
	.loc 1 775 0
	st.w	[%a13]0, %d8
	.loc 1 776 0
	st.w	[%a12]0, %d9
	.loc 1 779 0
	jz	%d8, .L32
.LVL35:
.L27:
	ret
.LVL36:
.L30:
	.loc 1 775 0
	addsc.a	%a13, %a13, %d15, 0
	.loc 1 776 0
	addsc.a	%a12, %a12, %d15, 0
	.loc 1 775 0
	st.w	[%a13]0, %d8
	.loc 1 776 0
	st.w	[%a12]0, %d9
.LVL37:
.L32:
	.loc 1 781 0
	jz.t	%d10, 15, .L27
.LBB45:
.LBB46:
	.loc 3 172 0
#APP
	# 172 "../30_Bsw/STL_common/intrinsics.h" 1
	enable
	# 0 "" 2
#NO_APP
	ret
.LVL38:
.L33:
.LBE46:
.LBE45:
	.loc 1 764 0 discriminator 1
	nor	%d2, %d3, 0
	.loc 1 763 0 discriminator 1
	jne	%d2, %d10, .L28
	j	.L29
.LFE25:
	.size	Mcal_ResumeAllInterrupts, .-Mcal_ResumeAllInterrupts
	.section .data.STL_RAM_32BIT_NONZERO_INIT,"aw",@progbits
	.align 2
	.type	Mcal_IntDisableCounter, @object
	.size	Mcal_IntDisableCounter, 4
Mcal_IntDisableCounter:
	.zero	4
	.align 2
	.type	Mcal_SavedIntState, @object
	.size	Mcal_SavedIntState, 4
Mcal_SavedIntState:
	.zero	4
	.align 2
	.type	Mcal_SavedIntStateRedn, @object
	.size	Mcal_SavedIntStateRedn, 4
Mcal_SavedIntStateRedn:
	.word	-1
	.align 2
	.type	Mcal_IntDisableCounterRedn, @object
	.size	Mcal_IntDisableCounterRedn, 4
Mcal_IntDisableCounterRedn:
	.word	-1
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
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB23
	.uaword	.LFE23-.LFB23
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB24
	.uaword	.LFE24-.LFB24
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB25
	.uaword	.LFE25-.LFB25
	.align 2
.LEFDE14:
.section .text,"ax",@progbits
.Letext0:
	.file 4 "../30_Bsw/Common/Platform_Types.h"
	.file 5 "../30_Bsw/Common/Std_Types.h"
	.file 6 "../30_Bsw/STL_common/Mcal_TcLib.h"
	.file 7 "../30_Bsw/iohw/Static/iohwsf.h"
	.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x1356
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.6.3 build on 2013-05-17"
	.byte	0x1
	.string	"../30_Bsw/STL_common/Mcal_TcLib.c"
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
	.byte	0x4
	.byte	0x5b
	.uaword	0x7a
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x3
	.string	"uint32"
	.byte	0x4
	.byte	0x5f
	.uaword	0xd8
	.uleb128 0x3
	.string	"Std_ReturnType"
	.byte	0x5
	.byte	0x71
	.uaword	0xf5
	.uleb128 0x4
	.uaword	0xb5
	.uleb128 0x3
	.string	"unsigned_int"
	.byte	0x6
	.byte	0x7a
	.uaword	0xb5
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.byte	0x24
	.uaword	0xd71
	.uleb128 0x6
	.string	"IOHWSF_E_SSCHECK"
	.sleb128 0
	.uleb128 0x6
	.string	"IOHWSF_E_SMU_CONFIGURATION_CHECK"
	.sleb128 1
	.uleb128 0x6
	.string	"IOHWSF_E_ISR_UNHANDLED_ISR"
	.sleb128 2
	.uleb128 0x6
	.string	"IOHWSF_E_ISR_100U_SOURCE_ERR"
	.sleb128 3
	.uleb128 0x6
	.string	"IOHWSF_E_ISR_1M_SOURCE_ERR"
	.sleb128 4
	.uleb128 0x6
	.string	"IOHWSF_E_ISR_10M_SOURCE_ERR"
	.sleb128 5
	.uleb128 0x6
	.string	"IOHWSF_E_SAFETLIB_INIT"
	.sleb128 6
	.uleb128 0x6
	.string	"IOHWSF_E_SAFETLIB_PRE_INIT"
	.sleb128 7
	.uleb128 0x6
	.string	"IOHWSF_E_SAFETLIB_PRERUN_PREHOOK"
	.sleb128 8
	.uleb128 0x6
	.string	"IOHWSF_E_SAFETLIB_PRERUN_TEST_FAIL"
	.sleb128 9
	.uleb128 0x6
	.string	"IOHWSF_E_SAFETLIB_PRERUN_POSTHOOK"
	.sleb128 10
	.uleb128 0x6
	.string	"IOHWSF_E_SAFETLIB_RUN_TEST_FAIL"
	.sleb128 11
	.uleb128 0x6
	.string	"IOHWSF_E_SAFETLIB_SRC_REG_CHECK_FAIL"
	.sleb128 12
	.uleb128 0x6
	.string	"IOHWSF_E_MCAL_DIV_INCONSISTENCY"
	.sleb128 13
	.uleb128 0x6
	.string	"IOHWSF_E_MCAL_SPINLOCK_TIMEOUT"
	.sleb128 14
	.uleb128 0x6
	.string	"IOHWSF_E_TRAP_VIRTUAL_ADDRESS_FILL"
	.sleb128 15
	.uleb128 0x6
	.string	"IOHWSF_E_TRAP_VIRTUAL_ADDRESS_PROTECTION"
	.sleb128 16
	.uleb128 0x6
	.string	"IOHWSF_E_TRAP_PRIVILEGE_INSTRUCTION"
	.sleb128 17
	.uleb128 0x6
	.string	"IOHWSF_E_TRAP_MEMORY_PROTECTION_READ"
	.sleb128 18
	.uleb128 0x6
	.string	"IOHWSF_E_TRAP_MEMORY_PROTECTION_WRITE"
	.sleb128 19
	.uleb128 0x6
	.string	"IOHWSF_E_TRAP_MEMORY_PROTECTION_EXECUTION"
	.sleb128 20
	.uleb128 0x6
	.string	"IOHWSF_E_TRAP_PROTECTION_PERIPHERAL_ACCESS"
	.sleb128 21
	.uleb128 0x6
	.string	"IOHWSF_E_TRAP_MEMORY_PROTECTION_NULL_ADDRESS"
	.sleb128 22
	.uleb128 0x6
	.string	"IOHWSF_E_TRAP_GLOBAL_REGISTER_WRITE_PROTECTION"
	.sleb128 23
	.uleb128 0x6
	.string	"IOHWSF_E_TRAP_ILLEGAL_OPCODE"
	.sleb128 24
	.uleb128 0x6
	.string	"IOHWSF_E_TRAP_UNIMPLEMENTED_OPCODE"
	.sleb128 25
	.uleb128 0x6
	.string	"IOHWSF_E_TRAP_INVALID_OPERAND_SPECIFICATION"
	.sleb128 26
	.uleb128 0x6
	.string	"IOHWSF_E_TRAP_DATA_ADDRESS_ALIGNMENT"
	.sleb128 27
	.uleb128 0x6
	.string	"IOHWSF_E_TRAP_INVALID_LOCAL_MEMORY_ADDRESS"
	.sleb128 28
	.uleb128 0x6
	.string	"IOHWSF_E_TRAP_FREE_CONTEXT_LIST_DEPLETION"
	.sleb128 29
	.uleb128 0x6
	.string	"IOHWSF_E_TRAP_CALL_DEPTH_OVERFLOW"
	.sleb128 30
	.uleb128 0x6
	.string	"IOHWSF_E_TRAP_CALL_DEPTH_UNDERFLOW"
	.sleb128 31
	.uleb128 0x6
	.string	"IOHWSF_E_TRAP_FREE_CONTEXT_LIST_UNDERFLOW"
	.sleb128 32
	.uleb128 0x6
	.string	"IOHWSF_E_TRAP_CALL_STACK_UNDERFLOW"
	.sleb128 33
	.uleb128 0x6
	.string	"IOHWSF_E_TRAP_CONTEXT_TYPE"
	.sleb128 34
	.uleb128 0x6
	.string	"IOHWSF_E_TRAP_NESTING_ERROR"
	.sleb128 35
	.uleb128 0x6
	.string	"IOHWSF_E_TRAP_PROGRAM_FETCH_SYNCHRONOUS_ERROR"
	.sleb128 36
	.uleb128 0x6
	.string	"IOHWSF_E_TRAP_DATA_ACCESS_SYNCHRONOUS_ERROR"
	.sleb128 37
	.uleb128 0x6
	.string	"IOHWSF_E_TRAP_DATA_ACCESS_ASYNCHRONOUS_ERROR"
	.sleb128 38
	.uleb128 0x6
	.string	"IOHWSF_E_TRAP_ARITHEMETIC_OVERFLOW"
	.sleb128 39
	.uleb128 0x6
	.string	"IOHWSF_E_TRAP_STICKY_ARITHEMETIC_OVERFLOW"
	.sleb128 40
	.uleb128 0x6
	.string	"IOHWSF_E_TRAP_UNEXPECTED_SYSTEM_CALL"
	.sleb128 41
	.uleb128 0x6
	.string	"IOHWSF_E_TRAP_UNEXPECTED_NMI"
	.sleb128 42
	.uleb128 0x6
	.string	"IOHWSF_E_TRAP_UNDEFINED_TIN"
	.sleb128 43
	.uleb128 0x6
	.string	"IOHWSF_E_CORE0_NOT_IN_SAFE_STATE"
	.sleb128 44
	.uleb128 0x6
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_TRAP_TST"
	.sleb128 45
	.uleb128 0x6
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_CLKM_TST"
	.sleb128 46
	.uleb128 0x6
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_SRAM_ECC_TST"
	.sleb128 47
	.uleb128 0x6
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_PMU_ECC_EDC_TST"
	.sleb128 48
	.uleb128 0x6
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_SRI_TST"
	.sleb128 49
	.uleb128 0x6
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_SPB_TST_TIMEOUT"
	.sleb128 50
	.uleb128 0x6
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_SFF_TST"
	.sleb128 51
	.uleb128 0x6
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_SPB_TST_RAP"
	.sleb128 52
	.uleb128 0x6
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_CPU_MPU_TST"
	.sleb128 53
	.uleb128 0x6
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_CPUBUSMPULFM_TST"
	.sleb128 54
	.uleb128 0x6
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_REG_ACC_PROT_TST"
	.sleb128 55
	.uleb128 0x6
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_CPU_WDG_TST"
	.sleb128 56
	.uleb128 0x6
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_SAFETY_WDG_TST"
	.sleb128 57
	.uleb128 0x6
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_SMU_TST_NMI"
	.sleb128 58
	.uleb128 0x6
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_SMU_TST_IRQ"
	.sleb128 59
	.uleb128 0x6
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_SMU_TST_RT"
	.sleb128 60
	.uleb128 0x6
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_VLM_TST"
	.sleb128 61
	.uleb128 0x6
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_IR_TST"
	.sleb128 62
	.uleb128 0x6
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_LOCK_STEP_TST"
	.sleb128 63
	.uleb128 0x6
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_SFR_CMP_TST"
	.sleb128 64
	.uleb128 0x6
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_SRC_REG_CHECK_TST"
	.sleb128 65
	.uleb128 0x6
	.string	"IOHWSF_E_FLASH_TEST_PATTERN_NOT_FLSHED"
	.sleb128 66
	.uleb128 0x6
	.string	"IOHWSF_E_SETUP_FSP_PIN"
	.sleb128 67
	.uleb128 0x6
	.string	"IOHWSF_E_SMU_LOCK_CFG_TST"
	.sleb128 68
	.uleb128 0x6
	.string	"IOHWSF_E_SAFETY_ISR_RESET"
	.sleb128 69
	.uleb128 0x6
	.string	"IOHWSF_E_TLF_ERR_DETECTION_TIMEOUT"
	.sleb128 70
	.uleb128 0x6
	.string	"IOHWSF_E_TLF_SYS_FLAGS_NOT_CLEARED"
	.sleb128 71
	.uleb128 0x6
	.string	"IOHWSF_E_TLF_RESTORE_FAILED"
	.sleb128 72
	.uleb128 0x6
	.string	"IOHWSF_E_RELEASE_FSP_FAILED"
	.sleb128 73
	.uleb128 0x6
	.string	"IOHWSF_E_UDS_ECU_RESET_REQ"
	.sleb128 74
	.uleb128 0x6
	.string	"IOHWSF_E_UDS_SRAM_ECCPREAOU_FAILED"
	.sleb128 75
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.string	"Mcal_GetCoreId"
	.byte	0x1
	.uahalf	0x10e
	.byte	0x1
	.uaword	0xf5
	.byte	0x1
	.uaword	0xdaa
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x110
	.uaword	0xf5
	.uleb128 0x9
	.uleb128 0x8
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x112
	.uaword	0xb5
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.string	"cmpswap_w"
	.byte	0x2
	.uahalf	0x318
	.byte	0x1
	.uaword	0xb5
	.byte	0x3
	.uaword	0xe02
	.uleb128 0xa
	.string	"address"
	.byte	0x2
	.uahalf	0x318
	.uaword	0xe02
	.uleb128 0xa
	.string	"value"
	.byte	0x2
	.uahalf	0x319
	.uaword	0xb5
	.uleb128 0xa
	.string	"condition"
	.byte	0x2
	.uahalf	0x319
	.uaword	0xb5
	.uleb128 0xb
	.string	"reg64"
	.byte	0x2
	.uahalf	0x31b
	.uaword	0xe08
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.uaword	0x132
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.string	"long long unsigned int"
	.uleb128 0xd
	.string	"_dsync"
	.byte	0x3
	.byte	0xbc
	.byte	0x1
	.byte	0x3
	.uleb128 0xd
	.string	"_disable"
	.byte	0x3
	.byte	0xa4
	.byte	0x1
	.byte	0x3
	.uleb128 0xd
	.string	"_enable"
	.byte	0x3
	.byte	0xaa
	.byte	0x1
	.byte	0x3
	.uleb128 0xe
	.uaword	0xd71
	.uaword	.LFB18
	.uaword	.LFE18
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0xe7a
	.uleb128 0xf
	.uaword	0xd8f
	.uaword	.LLST0
	.uleb128 0x10
	.uaword	.LBB24
	.uaword	.LBE24
	.uleb128 0xf
	.uaword	0xd9c
	.uaword	.LLST0
	.byte	0
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.string	"Mcal_GetDsprReMapAddress"
	.byte	0x1
	.uahalf	0x12a
	.byte	0x1
	.uaword	0x10e
	.uaword	.LFB19
	.uaword	.LFE19
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0xf1e
	.uleb128 0x12
	.string	"Address"
	.byte	0x1
	.uahalf	0x12a
	.uaword	0x10e
	.uaword	.LLST2
	.uleb128 0x13
	.string	"RetAddress"
	.byte	0x1
	.uahalf	0x12c
	.uaword	0x10e
	.uaword	.LLST3
	.uleb128 0xb
	.string	"CoreId"
	.byte	0x1
	.uahalf	0x12d
	.uaword	0xf5
	.uleb128 0x14
	.uaword	0xd71
	.uaword	.LBB25
	.uaword	.LBE25
	.byte	0x1
	.uahalf	0x135
	.uleb128 0x10
	.uaword	.LBB26
	.uaword	.LBE26
	.uleb128 0xf
	.uaword	0xd8f
	.uaword	.LLST4
	.uleb128 0x10
	.uaword	.LBB27
	.uaword	.LBE27
	.uleb128 0xf
	.uaword	0xd9c
	.uaword	.LLST4
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.string	"Mcal_LockResource"
	.byte	0x1
	.uahalf	0x1f2
	.byte	0x1
	.uaword	0x10e
	.uaword	.LFB20
	.uaword	.LFE20
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0xfbb
	.uleb128 0x15
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x1f2
	.uaword	0xfbb
	.byte	0x1
	.byte	0x64
	.uleb128 0x16
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x1f8
	.uaword	0x10e
	.uaword	.LLST6
	.uleb128 0x17
	.uaword	0xdaa
	.uaword	.LBB28
	.uaword	.LBE28
	.byte	0x1
	.uahalf	0x1fe
	.uaword	0xfaa
	.uleb128 0x18
	.uaword	0xde1
	.uaword	.LLST7
	.uleb128 0x18
	.uaword	0xdd3
	.uaword	.LLST8
	.uleb128 0x18
	.uaword	0xdc3
	.uaword	.LLST9
	.uleb128 0x10
	.uaword	.LBB29
	.uaword	.LBE29
	.uleb128 0xf
	.uaword	0xdf3
	.uaword	.LLST10
	.byte	0
	.byte	0
	.uleb128 0x19
	.uaword	0xe22
	.uaword	.LBB30
	.uaword	.LBE30
	.byte	0x1
	.uahalf	0x203
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.uaword	0x10e
	.uleb128 0x1a
	.byte	0x1
	.string	"Mcal_UnlockResource"
	.byte	0x1
	.uahalf	0x21e
	.byte	0x1
	.uaword	.LFB21
	.uaword	.LFE21
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x1009
	.uleb128 0x15
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x21e
	.uaword	0xfbb
	.byte	0x1
	.byte	0x64
	.uleb128 0x19
	.uaword	0xe22
	.uaword	.LBB32
	.uaword	.LBE32
	.byte	0x1
	.uahalf	0x225
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.string	"Mcal_GetSpinLock"
	.byte	0x1
	.uahalf	0x245
	.byte	0x1
	.uaword	0x11c
	.uaword	.LFB22
	.uaword	.LFE22
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x10d1
	.uleb128 0x15
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x245
	.uaword	0xfbb
	.byte	0x1
	.byte	0x64
	.uleb128 0x12
	.string	"Timeout"
	.byte	0x1
	.uahalf	0x245
	.uaword	0x10e
	.uaword	.LLST11
	.uleb128 0x16
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x247
	.uaword	0x11c
	.uaword	.LLST12
	.uleb128 0x13
	.string	"SpinLockVal"
	.byte	0x1
	.uahalf	0x248
	.uaword	0x10e
	.uaword	.LLST13
	.uleb128 0x17
	.uaword	0xdaa
	.uaword	.LBB34
	.uaword	.LBE34
	.byte	0x1
	.uahalf	0x252
	.uaword	0x10c0
	.uleb128 0x18
	.uaword	0xde1
	.uaword	.LLST14
	.uleb128 0x18
	.uaword	0xdd3
	.uaword	.LLST15
	.uleb128 0x18
	.uaword	0xdc3
	.uaword	.LLST16
	.uleb128 0x10
	.uaword	.LBB35
	.uaword	.LBE35
	.uleb128 0xf
	.uaword	0xdf3
	.uaword	.LLST17
	.byte	0
	.byte	0
	.uleb128 0x19
	.uaword	0xe22
	.uaword	.LBB36
	.uaword	.LBE36
	.byte	0x1
	.uahalf	0x257
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.string	"Mcal_ReleaseSpinLock"
	.byte	0x1
	.uahalf	0x280
	.byte	0x1
	.uaword	.LFB23
	.uaword	.LFE23
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x111a
	.uleb128 0x15
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x280
	.uaword	0xfbb
	.byte	0x1
	.byte	0x64
	.uleb128 0x19
	.uaword	0xe22
	.uaword	.LBB38
	.uaword	.LBE38
	.byte	0x1
	.uahalf	0x287
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.string	"Mcal_SuspendAllInterrupts"
	.byte	0x1
	.uahalf	0x2a3
	.byte	0x1
	.uaword	.LFB24
	.uaword	.LFE24
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x11d7
	.uleb128 0x13
	.string	"CoreID"
	.byte	0x1
	.uahalf	0x2a6
	.uaword	0x10e
	.uaword	.LLST18
	.uleb128 0x13
	.string	"ICRState"
	.byte	0x1
	.uahalf	0x2a7
	.uaword	0x10e
	.uaword	.LLST19
	.uleb128 0x13
	.string	"ICRStateRedn"
	.byte	0x1
	.uahalf	0x2a8
	.uaword	0x10e
	.uaword	.LLST20
	.uleb128 0x1b
	.uaword	.LBB40
	.uaword	.LBE40
	.uaword	0x11a8
	.uleb128 0x16
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x2ae
	.uaword	0xb5
	.uaword	.LLST18
	.byte	0
	.uleb128 0x1b
	.uaword	.LBB41
	.uaword	.LBE41
	.uaword	0x11c6
	.uleb128 0x16
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x2b2
	.uaword	0xb5
	.uaword	.LLST19
	.byte	0
	.uleb128 0x19
	.uaword	0xe2e
	.uaword	.LBB42
	.uaword	.LBE42
	.byte	0x1
	.uahalf	0x2b7
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.string	"Mcal_ResumeAllInterrupts"
	.byte	0x1
	.uahalf	0x2e3
	.byte	0x1
	.uaword	.LFB25
	.uaword	.LFE25
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x12b9
	.uleb128 0x13
	.string	"CoreID"
	.byte	0x1
	.uahalf	0x2e6
	.uaword	0x10e
	.uaword	.LLST23
	.uleb128 0x13
	.string	"IntDisableCntr"
	.byte	0x1
	.uahalf	0x2e7
	.uaword	0x10e
	.uaword	.LLST24
	.uleb128 0x13
	.string	"IntDisableCntrRedn"
	.byte	0x1
	.uahalf	0x2e8
	.uaword	0x10e
	.uaword	.LLST25
	.uleb128 0x13
	.string	"SavedIntState"
	.byte	0x1
	.uahalf	0x2e9
	.uaword	0x10e
	.uaword	.LLST26
	.uleb128 0x13
	.string	"SavedIntStateRedn"
	.byte	0x1
	.uahalf	0x2ea
	.uaword	0x10e
	.uaword	.LLST27
	.uleb128 0x1b
	.uaword	.LBB44
	.uaword	.LBE44
	.uaword	0x12a8
	.uleb128 0x16
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x2f0
	.uaword	0xb5
	.uaword	.LLST23
	.byte	0
	.uleb128 0x19
	.uaword	0xe3c
	.uaword	.LBB45
	.uaword	.LBE45
	.byte	0x1
	.uahalf	0x311
	.byte	0
	.uleb128 0x1c
	.uaword	0x10e
	.uaword	0x12c9
	.uleb128 0x1d
	.uaword	0xd8
	.byte	0
	.byte	0
	.uleb128 0x1e
	.string	"Mcal_SavedIntState"
	.byte	0x1
	.byte	0x83
	.uaword	0x12b9
	.byte	0x5
	.byte	0x3
	.uaword	Mcal_SavedIntState
	.uleb128 0x1e
	.string	"Mcal_IntDisableCounter"
	.byte	0x1
	.byte	0x84
	.uaword	0x12b9
	.byte	0x5
	.byte	0x3
	.uaword	Mcal_IntDisableCounter
	.uleb128 0x1e
	.string	"Mcal_SavedIntStateRedn"
	.byte	0x1
	.byte	0x85
	.uaword	0x12b9
	.byte	0x5
	.byte	0x3
	.uaword	Mcal_SavedIntStateRedn
	.uleb128 0x1e
	.string	"Mcal_IntDisableCounterRedn"
	.byte	0x1
	.byte	0x86
	.uaword	0x12b9
	.byte	0x5
	.byte	0x3
	.uaword	Mcal_IntDisableCounterRedn
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
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x5
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
	.uleb128 0xb
	.uleb128 0x34
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
	.uleb128 0xc
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0xf
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
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
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x13
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x14
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x5
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
	.uleb128 0xa
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x1d
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.byte	0
	.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL2
	.uaword	.LVL3
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL3
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL6
	.uaword	.LFE19
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL2
	.uaword	.LVL3
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL3
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL7
	.uaword	.LFE19
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL8
	.uaword	.LVL10
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL11
	.uaword	.LFE20
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL9
	.uaword	.LVL11
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL9
	.uaword	.LVL11
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL9
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL9
	.uaword	.LVL10
	.uahalf	0xa
	.byte	0x9e
	.uleb128 0x8
	.uaxword	0x1
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL13
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL13
	.uaword	.LVL16
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL16
	.uaword	.LFE22
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL14
	.uaword	.LVL15
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL14
	.uaword	.LVL16
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL14
	.uaword	.LVL16
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL14
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL14
	.uaword	.LVL15
	.uahalf	0xa
	.byte	0x9e
	.uleb128 0x8
	.uaxword	0x1
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL18
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL21
	.uaword	.LVL22
	.uahalf	0x4
	.byte	0x72
	.sleb128 0
	.byte	0x20
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x4
	.byte	0x72
	.sleb128 0
	.byte	0x20
	.byte	0x9f
	.uaword	.LVL21
	.uaword	.LVL22
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL23
	.uaword	.LVL24
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL25
	.uaword	.LVL26
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	.LVL26
	.uaword	.LVL35
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL36
	.uaword	.LVL37
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL38
	.uaword	.LFE25
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL27
	.uaword	.LVL28
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	.LVL28
	.uaword	.LVL33
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL33
	.uaword	.LVL34
	.uahalf	0x3
	.byte	0x79
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL34
	.uaword	.LFE25
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL29
	.uaword	.LVL30
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	.LVL30
	.uaword	.LFE25
	.uahalf	0x1
	.byte	0x5a
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL31
	.uaword	.LVL32-1
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	.LVL38
	.uaword	.LFE25
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
	.section .debug_aranges,"",@progbits
	.uaword	0x54
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
	.uaword	.LFB23
	.uaword	.LFE23-.LFB23
	.uaword	.LFB24
	.uaword	.LFE24-.LFB24
	.uaword	.LFB25
	.uaword	.LFE25-.LFB25
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
	.uaword	.LFB23
	.uaword	.LFE23
	.uaword	.LFB24
	.uaword	.LFE24
	.uaword	.LFB25
	.uaword	.LFE25
	.uaword	0
	.uaword	0
	.section .debug_line,"",@progbits
.Ldebug_line0:
	.section .debug_str,"",@progbits
.LASF1:
	.string	"__res"
.LASF0:
	.string	"RetVal"
.LASF3:
	.string	"SpinLckPtr"
.LASF2:
	.string	"ResourcePtr"
	.extern	IOHWSF_vDefaultErrorHandler,STT_FUNC,0
	.ident	"GCC: (HighTec Release v4.6.3.0) 4.6.3 build on 2013-05-17"
