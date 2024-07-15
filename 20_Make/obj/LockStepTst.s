	.file	"LockStepTst.c"
.section .text,"ax",@progbits
.Ltext0:
	.section .text.STL_ASIL_CODE,"ax",@progbits
	.align 2
	.global	LockStepTst_LockStepTst
	.type	LockStepTst_LockStepTst, @function
LockStepTst_LockStepTst:
.LFB18:
	.file 1 "../30_Bsw/MicroTestLib/Static/LockStepTst.c"
	.loc 1 236 0
.LVL0:
	.loc 1 242 0
	mov	%d2, 0
	.loc 1 236 0
	sub.a	%SP, 16
.LCFI0:
	.loc 1 236 0
	mov	%d15, %d5
	mov	%d9, %d4
	mov.aa	%a15, %a4
	.loc 1 242 0
	st.b	[%SP] 12, %d2
.LVL1:
	.loc 1 246 0
	call	Mcal_GetCoreId
.LVL2:
	mov	%d8, %d2
.LVL3:
.LBB16:
.LBB17:
	.file 2 "../30_Bsw/STL_common/Mcal_Compiler.h"
	.loc 2 400 0
	mov	%d5, 24
#APP
	# 400 "../30_Bsw/STL_common/Mcal_Compiler.h" 1
	crc32 %d5, %d15, %d5
	# 0 "" 2
.LVL4:
#NO_APP
.LBE17:
.LBE16:
	.loc 1 254 0
	movh	%d15, 24
.LVL5:
	.loc 1 249 0
	st.w	[%a15]0, %d5
	.loc 1 254 0
	addi	%d15, %d15, 258
	.loc 1 252 0
	jz	%d9, .L27
.LVL6:
.L2:
.LBB18:
.LBB19:
	.loc 2 400 0
#APP
	# 400 "../30_Bsw/STL_common/Mcal_Compiler.h" 1
	crc32 %d5, %d15, %d5
	# 0 "" 2
.LVL7:
#NO_APP
.LBE19:
.LBE18:
	.loc 1 300 0
	st.w	[%a15]0, %d5
	.loc 1 303 0
	mov	%d2, %d15
	ret
.LVL8:
.L27:
	.loc 1 296 0
	movh	%d15, 24
	addi	%d15, %d15, 4099
	.loc 1 257 0
	jnz	%d2, .L2
	.loc 1 259 0
	call	Smu_GetSmuState
.LVL9:
	mov	%d9, %d2
.LVL10:
	jeq	%d2, 1, .L3
	.loc 1 291 0
	movh	%d15, 24
	.loc 1 259 0
	ld.w	%d5, [%a15]0
	.loc 1 291 0
	addi	%d15, %d15, 524
	j	.L2
.L3:
.LVL11:
.LBB20:
.LBB21:
	.loc 1 334 0
	st.w	[%SP] 4, %d8
.LVL12:
	.loc 1 335 0
	st.b	[%SP] 8, %d8
.LVL13:
	.loc 1 339 0
	call	Mcal_GetCoreId
	.loc 1 342 0
	mov	%d4, 0
	mov	%d5, 0
	lea	%a4, [%SP] 12
	lea	%a5, [%SP] 8
	call	Smu_GetAlarmAction
	jz	%d2, .L4
	.loc 1 346 0
	mov	%d15, -1
	st.b	[%SP] 12, %d15
.LVL14:
	.loc 1 348 0
	movh	%d15, 24
	addi	%d15, %d15, 528
.LVL15:
.L7:
.LBE21:
.LBE20:
.LBB23:
.LBB24:
	.loc 1 427 0
	call	Mcal_GetCoreId
	.loc 1 430 0
	ld.bu	%d6, [%SP] 12
	mov	%d4, 0
	mov	%d5, 0
	call	Smu_SetAlarmAction
	.loc 1 433 0
	movh	%d3, 24
	movh	%d4, 24
	addi	%d3, %d3, 511
	addi	%d4, %d4, 529
	seln	%d2, %d2, %d3, %d4
.LVL16:
.LBE24:
.LBE23:
	.loc 1 275 0
	ld.w	%d5, [%a15]0
	.loc 1 273 0
	jne	%d15, %d3, .L2
	.loc 1 275 0
	jeq	%d2, %d15, .L15
	mov	%d15, %d2
.LVL17:
	j	.L2
.LVL18:
.L4:
.LBB25:
.LBB22:
	.loc 1 353 0
	movh.a	%a2, hi:-268213964
	lea	%a2, [%a2] lo:-268213964
	ld.w	%d2, [%a2]0
	.loc 1 385 0
	movh	%d15, 24
	addi	%d15, %d15, 4098
	.loc 1 353 0
	jz.t	%d2, 16, .L7
	.loc 1 357 0
	mov	%d4, 0
	lea	%a4, [%SP] 4
	.loc 1 359 0
	movh	%d15, 24
	.loc 1 357 0
	call	Smu_GetAlarmStatus
	.loc 1 359 0
	addi	%d15, %d15, 526
	.loc 1 356 0
	jnz	%d2, .L7
	.loc 1 364 0
	ld.w	%d2, [%SP] 4
	.loc 1 366 0
	movh	%d15, 24
	addi	%d15, %d15, 525
	.loc 1 364 0
	jnz.t	%d2, 0, .L7
	.loc 1 371 0
	mov	%d4, 0
	mov	%d5, 0
	mov	%d6, 0
	.loc 1 374 0
	movh	%d15, 24
	.loc 1 371 0
	call	Smu_SetAlarmAction
	.loc 1 374 0
	addi	%d15, %d15, 529
	.loc 1 370 0
	jnz	%d2, .L7
.LVL19:
.LBE22:
.LBE25:
.LBB26:
.LBB27:
	.loc 1 473 0
	st.w	[%SP] 8, %d2
.LVL20:
	.loc 1 478 0
	call	Mcal_GetCoreId
	.loc 1 481 0
	movh.a	%a2, hi:-268213956
	lea	%a2, [%a2] lo:-268213956
	st.w	[%a2]0, %d9
	.loc 1 472 0
	movh	%d15, 24
	.loc 1 481 0
	ld.w	%d3, [%SP] 8
	.loc 1 474 0
	lea	%a12, 2000
	.loc 1 472 0
	addi	%d15, %d15, 266
.LVL21:
.L25:
	.loc 1 485 0
	nez.a	%d2, %a12
	.loc 1 484 0
	and	%d4, %d3, 1
	andn	%d3, %d2, %d3
	jz	%d3, .L28
.LVL22:
	.loc 1 490 0
	mov	%d4, 0
	lea	%a4, [%SP] 8
	call	Smu_GetAlarmStatus
	.loc 1 487 0
	add.a	%a12, -1
.LVL23:
	ld.w	%d3, [%SP] 8
	.loc 1 490 0
	jz	%d2, .L25
	.loc 1 492 0
	mov	%d15, 0
	.loc 1 493 0
	mov.a	%a12, 0
.LVL24:
	mov	%d3, 0
	.loc 1 492 0
	st.w	[%SP] 8, %d15
.LVL25:
	.loc 1 494 0
	movh	%d15, 24
	addi	%d15, %d15, 526
	j	.L25
.LVL26:
.L15:
.LBE27:
.LBE26:
	.loc 1 277 0
	movh	%d15, 24
.LVL27:
	addi	%d15, %d15, 511
	j	.L2
.LVL28:
.L28:
.LBB33:
.LBB32:
	.loc 1 499 0
	jnz	%d4, .L29
	.loc 1 514 0
	movh	%d2, 24
	addi	%d2, %d2, 266
	.loc 1 516 0
	ne	%d3, %d15, %d2
	movh	%d2, 24
	addi	%d2, %d2, 4097
	sel	%d15, %d3, %d15, %d2
.L12:
.LVL29:
	.loc 1 521 0
	ld.w	%d2, [%SP] 8
.LBB28:
.LBB29:
	.loc 2 400 0
	ld.w	%d3, [%a15]0
.LBE29:
.LBE28:
	.loc 1 521 0
	and	%d2, %d2, 1
.LBB31:
.LBB30:
	.loc 2 400 0
#APP
	# 400 "../30_Bsw/STL_common/Mcal_Compiler.h" 1
	crc32 %d2, %d2, %d3
	# 0 "" 2
.LVL30:
#NO_APP
.LBE30:
.LBE31:
	.loc 1 521 0
	st.w	[%a15]0, %d2
	j	.L7
.LVL31:
.L29:
	.loc 1 502 0
	mov	%d4, 0
	mov	%d5, 0
	call	Smu_ClearAlarmStatus
	.loc 1 505 0
	movh	%d15, 24
	movh	%d3, 24
	addi	%d15, %d15, 527
	addi	%d3, %d3, 511
	seln	%d15, %d2, %d3, %d15
	j	.L12
.LBE32:
.LBE33:
.LFE18:
	.size	LockStepTst_LockStepTst, .-LockStepTst_LockStepTst
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
	.byte	0x4
	.uaword	.LCFI0-.LFB18
	.byte	0xe
	.uleb128 0x10
	.align 2
.LEFDE0:
.section .text,"ax",@progbits
.Letext0:
	.file 3 "../30_Bsw/Common/Platform_Types.h"
	.file 4 "../30_Bsw/STL_common/Mcal_TcLib.h"
	.file 5 "../30_Bsw/STL_common/Sl_ErrorCodes.h"
	.file 6 "../30_Bsw/Common/TC21x/IfxScu_regdef.h"
	.file 7 "../30_Bsw/Smu/Static/Smu.h"
	.file 8 "../30_Bsw/Smu/Static/SmuInt.h"
	.file 9 "../30_Bsw/MicroTestLib/Static/LockStepTst.h"
	.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0xb6c
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.6.3 build on 2013-05-17"
	.byte	0x1
	.string	"../30_Bsw/MicroTestLib/Static/LockStepTst.c"
	.string	"S:\\\\20_Make"
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_ranges0+0x90
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
	.byte	0x3
	.byte	0x5b
	.uaword	0x84
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x3
	.string	"uint32"
	.byte	0x3
	.byte	0x5f
	.uaword	0xe2
	.uleb128 0x3
	.string	"unsigned_int"
	.byte	0x4
	.byte	0x7a
	.uaword	0xbf
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.byte	0x6d
	.uaword	0x4b8
	.uleb128 0x5
	.string	"TEST_ID_GENERIC"
	.sleb128 0
	.uleb128 0x5
	.string	"TEST_ID_CPU_MPU_TST"
	.sleb128 1
	.uleb128 0x5
	.string	"TEST_ID_SFR_CMP_TST"
	.sleb128 2
	.uleb128 0x5
	.string	"TEST_ID_SFR_CRC_TST"
	.sleb128 3
	.uleb128 0x5
	.string	"TEST_ID_SRI_TST"
	.sleb128 4
	.uleb128 0x5
	.string	"TEST_ID_OSC_WDG_TST"
	.sleb128 5
	.uleb128 0x5
	.string	"TEST_ID_BUS_MPU_LFM_TST"
	.sleb128 6
	.uleb128 0x5
	.string	"TEST_ID_TRAP_TST"
	.sleb128 7
	.uleb128 0x5
	.string	"TEST_ID_UNUSED_TST1"
	.sleb128 8
	.uleb128 0x5
	.string	"TEST_ID_REG_ACC_PROT_TST"
	.sleb128 9
	.uleb128 0x5
	.string	"TEST_ID_PMU_ECC_EDC_TST"
	.sleb128 10
	.uleb128 0x5
	.string	"TEST_ID_CPU_WDG_TST"
	.sleb128 11
	.uleb128 0x5
	.string	"TEST_ID_SAFETY_WDG_TST"
	.sleb128 12
	.uleb128 0x5
	.string	"TEST_ID_VLTM_TST"
	.sleb128 13
	.uleb128 0x5
	.string	"TEST_ID_CLKM_TST"
	.sleb128 14
	.uleb128 0x5
	.string	"TEST_ID_CPUSBST_E_TST"
	.sleb128 15
	.uleb128 0x5
	.string	"TEST_ID_CPUSBST_P_TST"
	.sleb128 16
	.uleb128 0x5
	.string	"TEST_ID_SMU_TST_RT"
	.sleb128 17
	.uleb128 0x5
	.string	"TEST_ID_SMU_TST_IRQ"
	.sleb128 18
	.uleb128 0x5
	.string	"TEST_ID_UNUSED_TST2"
	.sleb128 19
	.uleb128 0x5
	.string	"TEST_ID_SMU_TST_NMI"
	.sleb128 20
	.uleb128 0x5
	.string	"TEST_ID_SMU_TST_IDLE"
	.sleb128 21
	.uleb128 0x5
	.string	"TEST_ID_SRAMECC_TST"
	.sleb128 22
	.uleb128 0x5
	.string	"TEST_ID_IR_TST"
	.sleb128 23
	.uleb128 0x5
	.string	"TEST_ID_LOCK_STEP_TST"
	.sleb128 24
	.uleb128 0x5
	.string	"TEST_ID_LMU_REG_ACC_PROT_TST"
	.sleb128 25
	.uleb128 0x5
	.string	"TEST_ID_BUS_LMU_MPU_LFM_TST"
	.sleb128 26
	.uleb128 0x5
	.string	"TEST_ID_MBIST_TST"
	.sleb128 27
	.uleb128 0x5
	.string	"TEST_ID_SPB_TST_RAP"
	.sleb128 28
	.uleb128 0x5
	.string	"TEST_ID_SPB_TST_TIMEOUT"
	.sleb128 29
	.uleb128 0x5
	.string	"TEST_ID_FCE_TST"
	.sleb128 30
	.uleb128 0x5
	.string	"TEST_ID_DMA_CRC_TST"
	.sleb128 31
	.uleb128 0x5
	.string	"TEST_ID_DMA_TIMESTAMP_TST"
	.sleb128 32
	.uleb128 0x5
	.string	"TEST_ID_DMA_SAFELINKEDLIST_TST"
	.sleb128 33
	.uleb128 0x5
	.string	"TEST_ID_IOM_TST"
	.sleb128 34
	.uleb128 0x5
	.string	"TEST_ID_SMU_TST_RST"
	.sleb128 35
	.uleb128 0x5
	.string	"TEST_ID_PFLASH_MON_TST"
	.sleb128 36
	.uleb128 0x5
	.string	"TEST_ID_SFF_TST"
	.sleb128 37
	.uleb128 0x5
	.string	"TEST_ID_PHLSRAM_TST"
	.sleb128 38
	.byte	0
	.uleb128 0x6
	.string	"Sl_TstRsltType"
	.byte	0x5
	.uahalf	0x2a3
	.uaword	0x118
	.uleb128 0x6
	.string	"Sl_ParamSetType"
	.byte	0x5
	.uahalf	0x2ac
	.uaword	0x118
	.uleb128 0x7
	.string	"_Ifx_SCU_LCLCON0_Bits"
	.byte	0x4
	.byte	0x6
	.uahalf	0x232
	.uaword	0x55e
	.uleb128 0x8
	.string	"reserved_0"
	.byte	0x6
	.uahalf	0x234
	.uaword	0xbf
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"LS"
	.byte	0x6
	.uahalf	0x235
	.uaword	0xbf
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"reserved_17"
	.byte	0x6
	.uahalf	0x236
	.uaword	0xbf
	.byte	0x4
	.byte	0xe
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"LSEN"
	.byte	0x6
	.uahalf	0x237
	.uaword	0xbf
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x6
	.string	"Ifx_SCU_LCLCON0_Bits"
	.byte	0x6
	.uahalf	0x238
	.uaword	0x4e7
	.uleb128 0x7
	.string	"_Ifx_SCU_LCLTEST_Bits"
	.byte	0x4
	.byte	0x6
	.uahalf	0x23b
	.uaword	0x5dc
	.uleb128 0x8
	.string	"LCLT0"
	.byte	0x6
	.uahalf	0x23d
	.uaword	0xbf
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"LCLT1"
	.byte	0x6
	.uahalf	0x23e
	.uaword	0xbf
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"reserved_2"
	.byte	0x6
	.uahalf	0x23f
	.uaword	0xbf
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x6
	.string	"Ifx_SCU_LCLTEST_Bits"
	.byte	0x6
	.uahalf	0x240
	.uaword	0x57b
	.uleb128 0x9
	.byte	0x4
	.byte	0x6
	.uahalf	0x59b
	.uaword	0x621
	.uleb128 0xa
	.string	"U"
	.byte	0x6
	.uahalf	0x59d
	.uaword	0xbf
	.uleb128 0xa
	.string	"I"
	.byte	0x6
	.uahalf	0x59e
	.uaword	0xb8
	.uleb128 0xa
	.string	"B"
	.byte	0x6
	.uahalf	0x59f
	.uaword	0x55e
	.byte	0
	.uleb128 0x6
	.string	"Ifx_SCU_LCLCON0"
	.byte	0x6
	.uahalf	0x5a0
	.uaword	0x5f9
	.uleb128 0x9
	.byte	0x4
	.byte	0x6
	.uahalf	0x5a3
	.uaword	0x661
	.uleb128 0xa
	.string	"U"
	.byte	0x6
	.uahalf	0x5a5
	.uaword	0xbf
	.uleb128 0xa
	.string	"I"
	.byte	0x6
	.uahalf	0x5a6
	.uaword	0xb8
	.uleb128 0xa
	.string	"B"
	.byte	0x6
	.uahalf	0x5a7
	.uaword	0x5dc
	.byte	0
	.uleb128 0x6
	.string	"Ifx_SCU_LCLTEST"
	.byte	0x6
	.uahalf	0x5a8
	.uaword	0x639
	.uleb128 0xb
	.byte	0x4
	.byte	0x9
	.byte	0x35
	.uaword	0x696
	.uleb128 0xc
	.string	"SCULCLCON"
	.byte	0x9
	.byte	0x3b
	.uaword	0x621
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xd
	.uaword	0x679
	.uleb128 0x3
	.string	"Smu_StateType"
	.byte	0x7
	.byte	0x9e
	.uaword	0xff
	.uleb128 0x3
	.string	"Smu_AlarmActionType"
	.byte	0x8
	.byte	0x44
	.uaword	0xff
	.uleb128 0x3
	.string	"Smu_FSPActionType"
	.byte	0x8
	.byte	0x46
	.uaword	0xff
	.uleb128 0xe
	.byte	0x1
	.string	"__crc32"
	.byte	0x2
	.uahalf	0x189
	.byte	0x1
	.uaword	0xbf
	.byte	0x3
	.uaword	0x71c
	.uleb128 0xf
	.string	"b"
	.byte	0x2
	.uahalf	0x189
	.uaword	0xbf
	.uleb128 0xf
	.string	"a"
	.byte	0x2
	.uahalf	0x189
	.uaword	0xbf
	.uleb128 0x10
	.string	"res"
	.byte	0x2
	.uahalf	0x18a
	.uaword	0xbf
	.byte	0
	.uleb128 0x11
	.string	"LockStepTst_lInit"
	.byte	0x1
	.uahalf	0x148
	.byte	0x1
	.uaword	0x4b8
	.byte	0x1
	.uaword	0x784
	.uleb128 0x12
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x14a
	.uaword	0x784
	.uleb128 0x13
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x14d
	.uaword	0x4b8
	.uleb128 0x13
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x14e
	.uaword	0x118
	.uleb128 0x10
	.string	"FspActionDummy"
	.byte	0x1
	.uahalf	0x14f
	.uaword	0x6cb
	.uleb128 0x13
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x150
	.uaword	0xff
	.byte	0
	.uleb128 0x14
	.uaword	0x789
	.uleb128 0x15
	.byte	0x4
	.uaword	0x6b0
	.uleb128 0x11
	.string	"LockStepTst_lExecuteTst"
	.byte	0x1
	.uahalf	0x1d3
	.byte	0x1
	.uaword	0x4b8
	.byte	0x1
	.uaword	0x7f6
	.uleb128 0x12
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x1d5
	.uaword	0x7f6
	.uleb128 0x13
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x1d8
	.uaword	0x4b8
	.uleb128 0x13
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x1d9
	.uaword	0x118
	.uleb128 0x10
	.string	"Timeout"
	.byte	0x1
	.uahalf	0x1da
	.uaword	0x118
	.uleb128 0x13
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x1db
	.uaword	0xff
	.byte	0
	.uleb128 0x14
	.uaword	0x7fb
	.uleb128 0x15
	.byte	0x4
	.uaword	0x118
	.uleb128 0x11
	.string	"LockStepTst_lRestore"
	.byte	0x1
	.uahalf	0x1a2
	.byte	0x1
	.uaword	0x4b8
	.byte	0x1
	.uaword	0x849
	.uleb128 0x12
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x1a4
	.uaword	0x849
	.uleb128 0x13
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x1a7
	.uaword	0x4b8
	.uleb128 0x13
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x1a8
	.uaword	0xff
	.byte	0
	.uleb128 0x14
	.uaword	0x84e
	.uleb128 0x15
	.byte	0x4
	.uaword	0x854
	.uleb128 0x14
	.uaword	0x6b0
	.uleb128 0x16
	.byte	0x1
	.string	"LockStepTst_LockStepTst"
	.byte	0x1
	.byte	0xe6
	.byte	0x1
	.uaword	0x4b8
	.uaword	.LFB18
	.uaword	.LFE18
	.uaword	.LLST0
	.uaword	0xa84
	.uleb128 0x17
	.string	"ParamSetIndex"
	.byte	0x1
	.byte	0xe8
	.uaword	0xa84
	.uaword	.LLST1
	.uleb128 0x17
	.string	"TstSeed"
	.byte	0x1
	.byte	0xe9
	.uaword	0xa89
	.uaword	.LLST2
	.uleb128 0x18
	.uaword	.LASF4
	.byte	0x1
	.byte	0xea
	.uaword	0x7f6
	.uaword	.LLST3
	.uleb128 0x19
	.uaword	.LASF1
	.byte	0x1
	.byte	0xed
	.uaword	0x4b8
	.uaword	.LLST4
	.uleb128 0x1a
	.string	"ResultInitExecute"
	.byte	0x1
	.byte	0xee
	.uaword	0x4b8
	.uaword	.LLST5
	.uleb128 0x1a
	.string	"ResultRestore"
	.byte	0x1
	.byte	0xef
	.uaword	0x4b8
	.uaword	.LLST6
	.uleb128 0x1b
	.uaword	.LASF0
	.byte	0x1
	.byte	0xf2
	.uaword	0x6b0
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x19
	.uaword	.LASF3
	.byte	0x1
	.byte	0xf3
	.uaword	0xff
	.uaword	.LLST7
	.uleb128 0x1c
	.uaword	0x6e4
	.uaword	.LBB16
	.uaword	.LBE16
	.byte	0x1
	.byte	0xf9
	.uaword	0x95d
	.uleb128 0x1d
	.uaword	0x705
	.uaword	.LLST8
	.uleb128 0x1e
	.uaword	0x6fb
	.byte	0x18
	.uleb128 0x1f
	.uaword	.LBB17
	.uaword	.LBE17
	.uleb128 0x20
	.uaword	0x70f
	.uaword	.LLST9
	.byte	0
	.byte	0
	.uleb128 0x21
	.uaword	0x6e4
	.uaword	.LBB18
	.uaword	.LBE18
	.byte	0x1
	.uahalf	0x12c
	.uaword	0x997
	.uleb128 0x1d
	.uaword	0x705
	.uaword	.LLST10
	.uleb128 0x1d
	.uaword	0x6fb
	.uaword	.LLST11
	.uleb128 0x1f
	.uaword	.LBB19
	.uaword	.LBE19
	.uleb128 0x20
	.uaword	0x70f
	.uaword	.LLST12
	.byte	0
	.byte	0
	.uleb128 0x22
	.uaword	0x71c
	.uaword	.LBB20
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.uahalf	0x106
	.uaword	0x9db
	.uleb128 0x23
	.uaword	0x73c
	.byte	0x3
	.byte	0x91
	.sleb128 -4
	.byte	0x9f
	.uleb128 0x24
	.uaword	.Ldebug_ranges0+0x18
	.uleb128 0x20
	.uaword	0x748
	.uaword	.LLST13
	.uleb128 0x20
	.uaword	0x754
	.uaword	.LLST14
	.uleb128 0x20
	.uaword	0x760
	.uaword	.LLST15
	.uleb128 0x25
	.uaword	0x777
	.byte	0
	.byte	0
	.uleb128 0x21
	.uaword	0x801
	.uaword	.LBB23
	.uaword	.LBE23
	.byte	0x1
	.uahalf	0x10f
	.uaword	0xa11
	.uleb128 0x1d
	.uaword	0x824
	.uaword	.LLST16
	.uleb128 0x1f
	.uaword	.LBB24
	.uaword	.LBE24
	.uleb128 0x20
	.uaword	0x830
	.uaword	.LLST17
	.uleb128 0x25
	.uaword	0x83c
	.byte	0
	.byte	0
	.uleb128 0x26
	.uaword	0x78f
	.uaword	.LBB26
	.uaword	.Ldebug_ranges0+0x30
	.byte	0x1
	.uahalf	0x10b
	.uleb128 0x1d
	.uaword	0x7b5
	.uaword	.LLST18
	.uleb128 0x24
	.uaword	.Ldebug_ranges0+0x48
	.uleb128 0x20
	.uaword	0x7c1
	.uaword	.LLST19
	.uleb128 0x20
	.uaword	0x7cd
	.uaword	.LLST20
	.uleb128 0x20
	.uaword	0x7d9
	.uaword	.LLST21
	.uleb128 0x25
	.uaword	0x7e9
	.uleb128 0x26
	.uaword	0x6e4
	.uaword	.LBB28
	.uaword	.Ldebug_ranges0+0x60
	.byte	0x1
	.uahalf	0x209
	.uleb128 0x1d
	.uaword	0x705
	.uaword	.LLST22
	.uleb128 0x1d
	.uaword	0x6fb
	.uaword	.LLST23
	.uleb128 0x24
	.uaword	.Ldebug_ranges0+0x78
	.uleb128 0x20
	.uaword	0x70f
	.uaword	.LLST24
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x14
	.uaword	0x4cf
	.uleb128 0x14
	.uaword	0xff
	.uleb128 0x27
	.uaword	0xa9e
	.uaword	0xa9e
	.uleb128 0x28
	.uaword	0xe2
	.byte	0
	.byte	0
	.uleb128 0x15
	.byte	0x4
	.uaword	0xaa4
	.uleb128 0x14
	.uaword	0x696
	.uleb128 0x29
	.string	"LockStepTst_kLockStepEnable"
	.byte	0x1
	.byte	0x5d
	.uaword	0xacc
	.uleb128 0x14
	.uaword	0xa8e
	.uleb128 0x27
	.uaword	0x118
	.uaword	0xae1
	.uleb128 0x28
	.uaword	0xe2
	.byte	0
	.byte	0
	.uleb128 0x29
	.string	"LockStepTst_kFaultInjectionEnable"
	.byte	0x1
	.byte	0x79
	.uaword	0xb0a
	.uleb128 0x14
	.uaword	0xad1
	.uleb128 0x27
	.uaword	0xff
	.uaword	0xb1f
	.uleb128 0x28
	.uaword	0xe2
	.byte	0
	.byte	0
	.uleb128 0x29
	.string	"LockStepTst_kSmuAlarmGrp"
	.byte	0x1
	.byte	0x8f
	.uaword	0xb3f
	.uleb128 0x14
	.uaword	0xb0f
	.uleb128 0x29
	.string	"LockStepTst_LockStepCoreStatus"
	.byte	0x1
	.byte	0x9d
	.uaword	0xb6a
	.uleb128 0x14
	.uaword	0xb0f
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
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xd
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
	.uleb128 0x13
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
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x12
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
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x5
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.byte	0
	.byte	0
	.byte	0
	.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LFB18
	.uaword	.LCFI0
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI0
	.uaword	.LFE18
	.uahalf	0x2
	.byte	0x8a
	.sleb128 16
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL2-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL2-1
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL8
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL0
	.uaword	.LVL2-1
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL0
	.uaword	.LVL2-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL2-1
	.uaword	.LFE18
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL0
	.uaword	.LVL6
	.uahalf	0x6
	.byte	0xc
	.uaword	0x18010a
	.byte	0x9f
	.uaword	.LVL6
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL8
	.uaword	.LFE18
	.uahalf	0x6
	.byte	0xc
	.uaword	0x18010a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL0
	.uaword	.LVL6
	.uahalf	0x6
	.byte	0xc
	.uaword	0x18010a
	.byte	0x9f
	.uaword	.LVL8
	.uaword	.LVL15
	.uahalf	0x6
	.byte	0xc
	.uaword	0x18010a
	.byte	0x9f
	.uaword	.LVL15
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL18
	.uaword	.LVL19
	.uahalf	0x6
	.byte	0xc
	.uaword	0x18010a
	.byte	0x9f
	.uaword	.LVL26
	.uaword	.LVL27
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL0
	.uaword	.LVL6
	.uahalf	0x6
	.byte	0xc
	.uaword	0x18010a
	.byte	0x9f
	.uaword	.LVL8
	.uaword	.LVL16
	.uahalf	0x6
	.byte	0xc
	.uaword	0x18010a
	.byte	0x9f
	.uaword	.LVL18
	.uaword	.LVL26
	.uahalf	0x6
	.byte	0xc
	.uaword	0x18010a
	.byte	0x9f
	.uaword	.LVL28
	.uaword	.LFE18
	.uahalf	0x6
	.byte	0xc
	.uaword	0x18010a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL3
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL6
	.uaword	.LFE18
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL3
	.uaword	.LVL5
	.uahalf	0x7
	.byte	0x7f
	.sleb128 0
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL4
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL8
	.uaword	.LVL9-1
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL6
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL7
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL11
	.uaword	.LVL14
	.uahalf	0x6
	.byte	0xc
	.uaword	0x18010a
	.byte	0x9f
	.uaword	.LVL14
	.uaword	.LVL15
	.uahalf	0x6
	.byte	0xc
	.uaword	0x180210
	.byte	0x9f
	.uaword	.LVL18
	.uaword	.LVL19
	.uahalf	0x6
	.byte	0xc
	.uaword	0x18010a
	.byte	0x9f
	.uaword	.LVL19
	.uaword	.LVL26
	.uahalf	0x6
	.byte	0xc
	.uaword	0x1801ff
	.byte	0x9f
	.uaword	.LVL28
	.uaword	.LFE18
	.uahalf	0x6
	.byte	0xc
	.uaword	0x1801ff
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL6
	.uaword	.LVL8
	.uahalf	0x2
	.byte	0x91
	.sleb128 -12
	.uaword	.LVL12
	.uaword	.LFE18
	.uahalf	0x2
	.byte	0x91
	.sleb128 -12
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL6
	.uaword	.LVL8
	.uahalf	0x2
	.byte	0x91
	.sleb128 -8
	.uaword	.LVL13
	.uaword	.LFE18
	.uahalf	0x2
	.byte	0x91
	.sleb128 -8
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL15
	.uaword	.LVL18
	.uahalf	0x3
	.byte	0x91
	.sleb128 -4
	.byte	0x9f
	.uaword	.LVL26
	.uaword	.LVL28
	.uahalf	0x3
	.byte	0x91
	.sleb128 -4
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL15
	.uaword	.LVL16
	.uahalf	0x6
	.byte	0xc
	.uaword	0x18010a
	.byte	0x9f
	.uaword	.LVL16
	.uaword	.LVL18
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL26
	.uaword	.LVL28
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL19
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL28
	.uaword	.LFE18
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL19
	.uaword	.LVL21
	.uahalf	0x6
	.byte	0xc
	.uaword	0x18010a
	.byte	0x9f
	.uaword	.LVL25
	.uaword	.LVL26
	.uahalf	0x6
	.byte	0xc
	.uaword	0x18020e
	.byte	0x9f
	.uaword	.LVL29
	.uaword	.LVL31
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL6
	.uaword	.LVL8
	.uahalf	0x2
	.byte	0x91
	.sleb128 -8
	.uaword	.LVL15
	.uaword	.LVL18
	.uahalf	0x2
	.byte	0x91
	.sleb128 -8
	.uaword	.LVL20
	.uaword	.LFE18
	.uahalf	0x2
	.byte	0x91
	.sleb128 -8
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x4
	.byte	0xa
	.uahalf	0x7d0
	.byte	0x9f
	.uaword	.LVL21
	.uaword	.LVL22
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL22
	.uaword	.LVL23
	.uahalf	0x3
	.byte	0x8c
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL23
	.uaword	.LVL24
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL25
	.uaword	.LVL26
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL28
	.uaword	.LFE18
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL29
	.uaword	.LVL31
	.uahalf	0x6
	.byte	0x91
	.sleb128 -8
	.byte	0x6
	.byte	0x31
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL29
	.uaword	.LVL31
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL30
	.uaword	.LVL31
	.uahalf	0x1
	.byte	0x52
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
	.uaword	.LFB18
	.uaword	.LFE18-.LFB18
	.uaword	0
	.uaword	0
	.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB20
	.uaword	.LBE20
	.uaword	.LBB25
	.uaword	.LBE25
	.uaword	0
	.uaword	0
	.uaword	.LBB21
	.uaword	.LBE21
	.uaword	.LBB22
	.uaword	.LBE22
	.uaword	0
	.uaword	0
	.uaword	.LBB26
	.uaword	.LBE26
	.uaword	.LBB33
	.uaword	.LBE33
	.uaword	0
	.uaword	0
	.uaword	.LBB27
	.uaword	.LBE27
	.uaword	.LBB32
	.uaword	.LBE32
	.uaword	0
	.uaword	0
	.uaword	.LBB28
	.uaword	.LBE28
	.uaword	.LBB31
	.uaword	.LBE31
	.uaword	0
	.uaword	0
	.uaword	.LBB29
	.uaword	.LBE29
	.uaword	.LBB30
	.uaword	.LBE30
	.uaword	0
	.uaword	0
	.uaword	.LFB18
	.uaword	.LFE18
	.uaword	0
	.uaword	0
	.section .debug_line,"",@progbits
.Ldebug_line0:
	.section .debug_str,"",@progbits
.LASF3:
	.string	"CoreId"
.LASF4:
	.string	"TstSignature"
.LASF0:
	.string	"AlmActionBackupLockStep"
.LASF2:
	.string	"AlmStatus"
.LASF1:
	.string	"Result"
	.extern	Smu_ClearAlarmStatus,STT_FUNC,0
	.extern	Smu_GetAlarmStatus,STT_FUNC,0
	.extern	Smu_SetAlarmAction,STT_FUNC,0
	.extern	Smu_GetAlarmAction,STT_FUNC,0
	.extern	Smu_GetSmuState,STT_FUNC,0
	.extern	Mcal_GetCoreId,STT_FUNC,0
	.ident	"GCC: (HighTec Release v4.6.3.0) 4.6.3 build on 2013-05-17"
