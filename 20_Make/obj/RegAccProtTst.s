	.file	"RegAccProtTst.c"
.section .text,"ax",@progbits
.Ltext0:
	.section .text.STL_ASIL_CODE,"ax",@progbits
	.align 2
	.type	RegAccProtTst_lAccessControlTst, @function
RegAccProtTst_lAccessControlTst:
.LFB21:
	.file 1 "../30_Bsw/MicroTestLib/Static/RegAccProtTst.c"
	.loc 1 571 0
.LVL0:
	sub.a	%SP, 8
.LCFI0:
	.loc 1 571 0
	mov	%d9, %d4
	mov	%d8, %d5
	.loc 1 578 0
	call	Mcal_GetCoreId
.LVL1:
.LBB63:
	.loc 1 583 0
#APP
	# 583 "../30_Bsw/MicroTestLib/Static/RegAccProtTst.c" 1
	mfcr %d15, LO:(0xFE04)
	# 0 "" 2
.LVL2:
#NO_APP
.LBE63:
.LBB64:
.LBB65:
	.file 2 "../30_Bsw/STL_common/intrinsics.h"
	.loc 2 190 0
#APP
	# 190 "../30_Bsw/STL_common/intrinsics.h" 1
	dsync
	# 0 "" 2
#NO_APP
.LBE65:
.LBE64:
	.loc 1 580 0
	jnz	%d8, .L2
.LVL3:
	.loc 1 584 0
	insert	%d15, %d15, 0, 14, 1
.LVL4:
.LBB66:
	.loc 1 585 0
#APP
	# 585 "../30_Bsw/MicroTestLib/Static/RegAccProtTst.c" 1
	mtcr LO:(0xFE04), %d15
	# 0 "" 2
#NO_APP
.LBE66:
.LBB67:
.LBB68:
	.loc 2 184 0
#APP
	# 184 "../30_Bsw/STL_common/intrinsics.h" 1
	isync
	# 0 "" 2
.LVL5:
#NO_APP
.L3:
.LBE68:
.LBE67:
	.loc 1 597 0
	mov	%d15, -1
	.loc 1 595 0
	jeq	%d9, 1, .L4
	.loc 1 601 0
	mov	%d15, 1
	sel	%d15, %d8, %d15, 2
.L4:
.LVL6:
	.loc 1 609 0
	movh.a	%a15, hi:-125771520
	.loc 1 608 0
	mov	%d4, 22960
	.loc 1 609 0
	lea	%a15, [%a15] lo:-125771520
	.loc 1 608 0
	call	Mcal_ResetSafetyENDINIT_Timed
	.loc 1 609 0
	st.w	[%a15]0, %d15
	.loc 1 610 0
	call	Mcal_SetSafetyENDINIT_Timed
	.loc 1 613 0
	ld.w	%d2, [%a15]0
	.loc 1 650 0
	movh	%d8, 9
	addi	%d8, %d8, 4098
	.loc 1 613 0
	jeq	%d2, %d15, .L27
.LVL7:
.L5:
	.loc 1 654 0
	mov	%d2, %d8
	ret
.LVL8:
.L2:
	.loc 1 591 0
	insert	%d15, %d15, 15, 14, 1
.LVL9:
.LBB69:
	.loc 1 592 0
#APP
	# 592 "../30_Bsw/MicroTestLib/Static/RegAccProtTst.c" 1
	mtcr LO:(0xFE04), %d15
	# 0 "" 2
#NO_APP
.LBE69:
.LBB70:
.LBB71:
	.loc 2 184 0
#APP
	# 184 "../30_Bsw/STL_common/intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
	j	.L3
.LVL10:
.L27:
.LBE71:
.LBE70:
	.loc 1 616 0
	mov	%d4, 22960
	call	Mcal_ResetSafetyENDINIT_Timed
	.loc 1 617 0
	mov	%d2, -1
	st.w	[%a15]0, %d2
	.loc 1 618 0
	call	Mcal_SetSafetyENDINIT_Timed
	.loc 1 619 0
	jnz	%d9, .L6
	.loc 1 621 0
	ld.w	%d2, [%a15]0
	.loc 1 623 0
	movh	%d8, 9
	addi	%d8, %d8, 4100
	.loc 1 621 0
	jeq	%d2, -1, .L7
.LBB72:
.LBB73:
	.loc 1 767 0
	st.w	[%SP] 4, %d9
.LVL11:
	.loc 1 769 0
	movh	%d8, 9
	.loc 1 772 0
	call	Mcal_GetCoreId
	lea	%a14, [%SP] 8
	ld.w	%d2, [+%a14]-4
	.loc 1 769 0
	addi	%d8, %d8, 266
	.loc 1 768 0
	mov	%d9, 8192
	j	.L25
.LVL12:
.L29:
	.loc 1 777 0
	ld.w	%d2, [%SP] 4
	add	%d9, -1
.LVL13:
.L25:
	.loc 1 775 0
	and	%d2, %d2, 2
	ne	%d3, %d9, 0
	and.eq	%d3, %d2, 0
	jz	%d3, .L28
.LVL14:
	.loc 1 778 0
	mov	%d4, 0
	mov.aa	%a4, %a14
	call	Smu_GetAlarmStatus
	jz	%d2, .L29
	.loc 1 781 0
	mov.a	%a15, 0
	.loc 1 783 0
	movh	%d8, 9
	.loc 1 781 0
	st.a	[%SP] 4, %a15
.LVL15:
	.loc 1 782 0
	mov	%d9, 0
	.loc 1 783 0
	addi	%d8, %d8, 528
	mov	%d2, 0
	j	.L25
.LVL16:
.L6:
.LBE73:
.LBE72:
	.loc 1 638 0
	ld.w	%d8, [%a15]0
	.loc 1 640 0
	movh	%d15, 9
.LVL17:
	movh	%d2, 9
	ne	%d8, %d8, -1
	addi	%d15, %d15, 511
	addi	%d2, %d2, 4099
	sel	%d8, %d8, %d2, %d15
	j	.L5
.LVL18:
.L28:
.LBB75:
.LBB74:
	.loc 1 806 0
	movh	%d3, 9
	addi	%d3, %d3, 266
	.loc 1 808 0
	ne	%d4, %d8, %d3
	movh	%d3, 9
	addi	%d3, %d3, 4097
	sel	%d8, %d4, %d8, %d3
	.loc 1 788 0
	jz	%d2, .L7
	.loc 1 791 0
	mov	%d4, 0
	mov	%d5, 1
	call	Smu_ClearAlarmStatus
	.loc 1 794 0
	movh	%d3, 9
	movh	%d8, 9
	addi	%d3, %d3, 511
	addi	%d8, %d8, 527
	sel	%d8, %d2, %d8, %d3
.LVL19:
.L7:
.LBE74:
.LBE75:
.LBB76:
.LBB77:
	.loc 1 693 0
	call	Mcal_GetCoreId
	.loc 1 695 0
	jeq	%d15, 1, .L30
.LBB78:
	.loc 1 705 0
#APP
	# 705 "../30_Bsw/MicroTestLib/Static/RegAccProtTst.c" 1
	mfcr %d15, LO:(0xFE04)
	# 0 "" 2
.LVL20:
#NO_APP
.LBE78:
.LBB79:
.LBB80:
	.loc 2 190 0
#APP
	# 190 "../30_Bsw/STL_common/intrinsics.h" 1
	dsync
	# 0 "" 2
.LVL21:
#NO_APP
.LBE80:
.LBE79:
	.loc 1 706 0
	insert	%d15, %d15, 15, 14, 1
.LVL22:
.LBB81:
	.loc 1 707 0
#APP
	# 707 "../30_Bsw/MicroTestLib/Static/RegAccProtTst.c" 1
	mtcr LO:(0xFE04), %d15
	# 0 "" 2
#NO_APP
.LBE81:
.LBB82:
.LBB83:
	.loc 2 184 0
#APP
	# 184 "../30_Bsw/STL_common/intrinsics.h" 1
	isync
	# 0 "" 2
.LVL23:
#NO_APP
.L14:
.LBE83:
.LBE82:
	.loc 1 711 0
	mov	%d15, -1
.LVL24:
	movh.a	%a15, hi:-125771520
	.loc 1 710 0
	mov	%d4, 22960
	.loc 1 711 0
	lea	%a15, [%a15] lo:-125771520
	.loc 1 710 0
	call	Mcal_ResetSafetyENDINIT_Timed
	.loc 1 711 0
	st.w	[%a15]0, %d15
	.loc 1 712 0
	call	Mcal_SetSafetyENDINIT_Timed
	.loc 1 713 0
	ld.w	%d2, [%a15]0
	.loc 1 715 0
	movh	%d15, 9
	movh	%d3, 9
	addi	%d15, %d15, 511
	addi	%d3, %d3, 4098
	ne	%d2, %d2, -1
	sel	%d2, %d2, %d3, %d15
.LVL25:
.LBE77:
.LBE76:
.LBB91:
.LBB92:
	.loc 2 190 0
#APP
	# 190 "../30_Bsw/STL_common/intrinsics.h" 1
	dsync
	# 0 "" 2
.LVL26:
#NO_APP
.LBE92:
.LBE91:
.LBB93:
	.loc 1 630 0
	mov	%d3, 0
#APP
	# 630 "../30_Bsw/MicroTestLib/Static/RegAccProtTst.c" 1
	mtcr LO:(0x9214), %d3
	# 0 "" 2
#NO_APP
.LBE93:
.LBB94:
.LBB95:
	.loc 2 184 0
#APP
	# 184 "../30_Bsw/STL_common/intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE95:
.LBE94:
	.loc 1 633 0
	ne	%d15, %d8, %d15
	cmovn	%d8, %d15, %d2
.LVL27:
	j	.L5
.LVL28:
.L30:
.LBB96:
.LBB90:
.LBB84:
	.loc 1 698 0
#APP
	# 698 "../30_Bsw/MicroTestLib/Static/RegAccProtTst.c" 1
	mfcr %d15, LO:(0xFE04)
	# 0 "" 2
.LVL29:
#NO_APP
.LBE84:
.LBB85:
.LBB86:
	.loc 2 190 0
#APP
	# 190 "../30_Bsw/STL_common/intrinsics.h" 1
	dsync
	# 0 "" 2
.LVL30:
#NO_APP
.LBE86:
.LBE85:
	.loc 1 699 0
	insert	%d15, %d15, 0, 14, 1
.LVL31:
.LBB87:
	.loc 1 700 0
#APP
	# 700 "../30_Bsw/MicroTestLib/Static/RegAccProtTst.c" 1
	mtcr LO:(0xFE04), %d15
	# 0 "" 2
#NO_APP
.LBE87:
.LBB88:
.LBB89:
	.loc 2 184 0
#APP
	# 184 "../30_Bsw/STL_common/intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
	j	.L14
.LBE89:
.LBE88:
.LBE90:
.LBE96:
.LFE21:
	.size	RegAccProtTst_lAccessControlTst, .-RegAccProtTst_lAccessControlTst
	.align 2
	.global	RegAccProtTst_RegAccProtTst
	.type	RegAccProtTst_RegAccProtTst, @function
RegAccProtTst_RegAccProtTst:
.LFB18:
	.loc 1 302 0
.LVL32:
	sub.a	%SP, 16
.LCFI1:
	.loc 1 302 0
	mov.aa	%a15, %a4
.LBB97:
.LBB98:
	.file 3 "../30_Bsw/STL_common/Mcal_Compiler.h"
	.loc 3 400 0
	mov	%d15, 9
#APP
	# 400 "../30_Bsw/STL_common/Mcal_Compiler.h" 1
	crc32 %d5, %d5, %d15
	# 0 "" 2
.LVL33:
#NO_APP
.LBE98:
.LBE97:
	.loc 1 310 0
	st.w	[%a4]0, %d5
	.loc 1 313 0
	call	Smu_GetSmuState
.LVL34:
	.loc 1 349 0
	movh	%d15, 9
	.loc 1 313 0
	mov	%d8, %d2
	.loc 1 349 0
	addi	%d15, %d15, 524
	.loc 1 313 0
	jeq	%d2, 1, .L45
.LVL35:
.L32:
	.loc 1 353 0
	mov	%d2, %d15
	ret
.LVL36:
.L45:
.LBB99:
.LBB100:
	.loc 1 403 0
	call	Mcal_GetCoreId
	.loc 1 406 0
	movh.a	%a2, hi:-125771520
	lea	%a2, [%a2] lo:-125771520
	ld.w	%d15, [%a2]0
	.loc 1 409 0
	mov	%d4, 0
	mov	%d5, 1
	mov.aa	%a4, %SP
	lea	%a5, [%SP] 15
	.loc 1 405 0
	st.w	[%SP] 4, %d15
	.loc 1 409 0
	call	Smu_GetAlarmAction
	jz	%d2, .L33
.LVL37:
	.loc 1 414 0
	mov	%d15, -1
	st.b	[%SP]0, %d15
	.loc 1 412 0
	movh	%d15, 9
	addi	%d15, %d15, 528
.LVL38:
.L36:
.LBE100:
.LBE99:
.LBB102:
.LBB103:
	.loc 1 497 0
	call	Mcal_GetCoreId
	.loc 1 500 0
	mov	%d4, 22960
	call	Mcal_ResetSafetyENDINIT_Timed
	.loc 1 501 0
	movh.a	%a2, hi:-125771520
	lea	%a2, [%a2] lo:-125771520
	ld.w	%d2, [%SP] 4
	st.w	[%a2]0, %d2
	.loc 1 503 0
	call	Mcal_SetSafetyENDINIT_Timed
	.loc 1 507 0
	ld.bu	%d6, [%SP]0
	mov	%d4, 0
	mov	%d5, 1
	call	Smu_SetAlarmAction
	.loc 1 510 0
	movh	%d3, 9
	movh	%d4, 9
	addi	%d3, %d3, 511
	addi	%d4, %d4, 529
	seln	%d2, %d2, %d3, %d4
.LVL39:
.LBE103:
.LBE102:
	.loc 1 343 0
	ne	%d3, %d15, %d3
	sel	%d15, %d3, %d15, %d2
.LVL40:
.LBB104:
.LBB105:
	.loc 3 400 0
	ld.w	%d2, [%a15]0
.LVL41:
#APP
	# 400 "../30_Bsw/STL_common/Mcal_Compiler.h" 1
	crc32 %d2, %d15, %d2
	# 0 "" 2
.LVL42:
#NO_APP
.LBE105:
.LBE104:
	.loc 1 345 0
	st.w	[%a15]0, %d2
	j	.L32
.LVL43:
.L33:
.LBB106:
.LBB101:
	.loc 1 421 0
	mov	%d4, 0
	lea	%a4, [%SP] 8
	.loc 1 423 0
	movh	%d15, 9
	.loc 1 421 0
	call	Smu_GetAlarmStatus
	.loc 1 423 0
	addi	%d15, %d15, 526
	.loc 1 420 0
	jnz	%d2, .L36
.LVL44:
	.loc 1 429 0
	ld.w	%d2, [%SP] 8
	.loc 1 431 0
	movh	%d15, 9
	addi	%d15, %d15, 525
	.loc 1 429 0
	jnz.t	%d2, 1, .L36
	.loc 1 437 0
	mov	%d4, 0
	mov	%d5, 1
	mov	%d6, 0
	call	Smu_SetAlarmAction
	.loc 1 440 0
	movh	%d15, 9
	.loc 1 437 0
	mov	%d9, %d2
	.loc 1 440 0
	addi	%d15, %d15, 529
	.loc 1 436 0
	jnz	%d2, .L36
.LVL45:
.LBE101:
.LBE106:
	.loc 1 320 0
	mov	%d4, 1
	mov	%d5, 1
	call	RegAccProtTst_lAccessControlTst
	mov	%d15, %d2
.LVL46:
.LBB107:
.LBB108:
	.loc 3 400 0
	ld.w	%d2, [%a15]0
.LVL47:
#APP
	# 400 "../30_Bsw/STL_common/Mcal_Compiler.h" 1
	crc32 %d2, %d8, %d2
	# 0 "" 2
.LVL48:
#NO_APP
.LBE108:
.LBE107:
	.loc 1 322 0
	movh	%d10, 9
	.loc 1 321 0
	st.w	[%a15]0, %d2
	.loc 1 322 0
	addi	%d10, %d10, 511
	jne	%d15, %d10, .L36
	.loc 1 324 0
	mov	%d4, 1
	mov	%d5, 0
	call	RegAccProtTst_lAccessControlTst
.LVL49:
	mov	%d15, %d2
.LVL50:
.LBB109:
.LBB110:
	.loc 3 400 0
	ld.w	%d2, [%a15]0
.LVL51:
#APP
	# 400 "../30_Bsw/STL_common/Mcal_Compiler.h" 1
	crc32 %d8, %d8, %d2
	# 0 "" 2
.LVL52:
#NO_APP
.LBE110:
.LBE109:
	.loc 1 325 0
	st.w	[%a15]0, %d8
	.loc 1 326 0
	jne	%d15, %d10, .L36
	.loc 1 329 0
	mov	%d4, 0
	mov	%d5, 1
	call	RegAccProtTst_lAccessControlTst
.LVL53:
	mov	%d15, %d2
.LVL54:
.LBB111:
.LBB112:
	.loc 3 400 0
	ld.w	%d2, [%a15]0
.LVL55:
#APP
	# 400 "../30_Bsw/STL_common/Mcal_Compiler.h" 1
	crc32 %d2, %d9, %d2
	# 0 "" 2
.LVL56:
#NO_APP
.LBE112:
.LBE111:
	.loc 1 330 0
	st.w	[%a15]0, %d2
	.loc 1 331 0
	movh	%d2, 9
.LVL57:
	addi	%d2, %d2, 511
	jne	%d15, %d2, .L36
	.loc 1 334 0
	mov	%d4, 0
	mov	%d5, 0
	call	RegAccProtTst_lAccessControlTst
.LVL58:
	mov	%d15, %d2
.LVL59:
.LBB113:
.LBB114:
	.loc 3 400 0
	ld.w	%d2, [%a15]0
.LVL60:
#APP
	# 400 "../30_Bsw/STL_common/Mcal_Compiler.h" 1
	crc32 %d9, %d9, %d2
	# 0 "" 2
.LVL61:
#NO_APP
.LBE114:
.LBE113:
	.loc 1 335 0
	st.w	[%a15]0, %d9
	j	.L36
.LFE18:
	.size	RegAccProtTst_RegAccProtTst, .-RegAccProtTst_RegAccProtTst
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
	.uaword	.LFB21
	.uaword	.LFE21-.LFB21
	.byte	0x4
	.uaword	.LCFI0-.LFB21
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB18
	.uaword	.LFE18-.LFB18
	.byte	0x4
	.uaword	.LCFI1-.LFB18
	.byte	0xe
	.uleb128 0x10
	.align 2
.LEFDE2:
.section .text,"ax",@progbits
.Letext0:
	.file 4 "../30_Bsw/Common/Platform_Types.h"
	.file 5 "../30_Bsw/STL_common/Mcal_TcLib.h"
	.file 6 "../30_Bsw/STL_common/Sl_ErrorCodes.h"
	.file 7 "../30_Bsw/Smu/Static/Smu.h"
	.file 8 "../30_Bsw/Smu/Static/SmuInt.h"
	.file 9 "../30_Bsw/Common/TC21x/IfxCpu_regdef.h"
	.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0xe54
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.6.3 build on 2013-05-17"
	.byte	0x1
	.string	"../30_Bsw/MicroTestLib/Static/RegAccProtTst.c"
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
	.byte	0x4
	.byte	0x5b
	.uaword	0x86
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x3
	.string	"uint32"
	.byte	0x4
	.byte	0x5f
	.uaword	0xe4
	.uleb128 0x3
	.string	"boolean"
	.byte	0x4
	.byte	0x63
	.uaword	0x86
	.uleb128 0x3
	.string	"unsigned_int"
	.byte	0x5
	.byte	0x7a
	.uaword	0xc1
	.uleb128 0x4
	.byte	0x4
	.byte	0x6
	.byte	0x6d
	.uaword	0x4c9
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
	.byte	0x6
	.uahalf	0x2a3
	.uaword	0x11a
	.uleb128 0x6
	.string	"Sl_ParamSetType"
	.byte	0x6
	.uahalf	0x2ac
	.uaword	0x11a
	.uleb128 0x3
	.string	"Smu_StateType"
	.byte	0x7
	.byte	0x9e
	.uaword	0x101
	.uleb128 0x3
	.string	"Smu_AlarmActionType"
	.byte	0x8
	.byte	0x44
	.uaword	0x101
	.uleb128 0x3
	.string	"Smu_FSPActionType"
	.byte	0x8
	.byte	0x46
	.uaword	0x101
	.uleb128 0x7
	.string	"_Ifx_CPU_SPROT_ACCENA_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x22e
	.uaword	0x577
	.uleb128 0x8
	.string	"EN"
	.byte	0x9
	.uahalf	0x230
	.uaword	0xc1
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x6
	.string	"Ifx_CPU_SPROT_ACCENA_Bits"
	.byte	0x9
	.uahalf	0x231
	.uaword	0x541
	.uleb128 0x9
	.byte	0x4
	.byte	0x9
	.uahalf	0x47f
	.uaword	0x5c1
	.uleb128 0xa
	.string	"U"
	.byte	0x9
	.uahalf	0x481
	.uaword	0xc1
	.uleb128 0xa
	.string	"I"
	.byte	0x9
	.uahalf	0x482
	.uaword	0xba
	.uleb128 0xa
	.string	"B"
	.byte	0x9
	.uahalf	0x483
	.uaword	0x577
	.byte	0
	.uleb128 0x6
	.string	"Ifx_CPU_SPROT_ACCENA"
	.byte	0x9
	.uahalf	0x484
	.uaword	0x599
	.uleb128 0xb
	.uaword	.LASF0
	.byte	0x8
	.byte	0x1
	.byte	0x59
	.uaword	0x62a
	.uleb128 0xc
	.string	"AlmActionBackupCpuMpu"
	.byte	0x1
	.byte	0x5b
	.uaword	0x50d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"CpuSprotAccenaBackup"
	.byte	0x1
	.byte	0x5d
	.uaword	0x11a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0xd
	.uaword	.LASF0
	.byte	0x1
	.byte	0x5f
	.uaword	0x5de
	.uleb128 0xe
	.string	"_dsync"
	.byte	0x2
	.byte	0xbc
	.byte	0x1
	.byte	0x3
	.uleb128 0xe
	.string	"_isync"
	.byte	0x2
	.byte	0xb6
	.byte	0x1
	.byte	0x3
	.uleb128 0xf
	.string	"RegAccProtTst_lWaitForSmuAlarm"
	.byte	0x1
	.uahalf	0x2fd
	.byte	0x1
	.uaword	0x4c9
	.byte	0x1
	.uaword	0x6af
	.uleb128 0x10
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x2ff
	.uaword	0x11a
	.uleb128 0x11
	.string	"Timeout"
	.byte	0x1
	.uahalf	0x300
	.uaword	0x11a
	.uleb128 0x10
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x301
	.uaword	0x4c9
	.uleb128 0x10
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x302
	.uaword	0x101
	.byte	0
	.uleb128 0xf
	.string	"RegAccProtTst_lEnableAccessToAllMasters"
	.byte	0x1
	.uahalf	0x2af
	.byte	0x1
	.uaword	0x4c9
	.byte	0x1
	.uaword	0x75f
	.uleb128 0x12
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x2af
	.uaword	0x11a
	.uleb128 0x11
	.string	"Temp"
	.byte	0x1
	.uahalf	0x2b1
	.uaword	0x11a
	.uleb128 0x10
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x2b2
	.uaword	0x4c9
	.uleb128 0x10
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x2b3
	.uaword	0x101
	.uleb128 0x13
	.uaword	0x72a
	.uleb128 0x11
	.string	"__res"
	.byte	0x1
	.uahalf	0x2ba
	.uaword	0xc1
	.byte	0
	.uleb128 0x13
	.uaword	0x73c
	.uleb128 0x10
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x2bc
	.uaword	0xc1
	.byte	0
	.uleb128 0x13
	.uaword	0x750
	.uleb128 0x11
	.string	"__res"
	.byte	0x1
	.uahalf	0x2c1
	.uaword	0xc1
	.byte	0
	.uleb128 0x14
	.uleb128 0x10
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x2c3
	.uaword	0xc1
	.byte	0
	.byte	0
	.uleb128 0x15
	.byte	0x1
	.string	"__crc32"
	.byte	0x3
	.uahalf	0x189
	.byte	0x1
	.uaword	0xc1
	.byte	0x3
	.uaword	0x797
	.uleb128 0x16
	.string	"b"
	.byte	0x3
	.uahalf	0x189
	.uaword	0xc1
	.uleb128 0x16
	.string	"a"
	.byte	0x3
	.uahalf	0x189
	.uaword	0xc1
	.uleb128 0x11
	.string	"res"
	.byte	0x3
	.uahalf	0x18a
	.uaword	0xc1
	.byte	0
	.uleb128 0xf
	.string	"RegAccProtTst_lInit"
	.byte	0x1
	.uahalf	0x189
	.byte	0x1
	.uaword	0x4c9
	.byte	0x1
	.uaword	0x801
	.uleb128 0x12
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x18b
	.uaword	0x801
	.uleb128 0x10
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x18e
	.uaword	0x4c9
	.uleb128 0x10
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x18f
	.uaword	0x11a
	.uleb128 0x11
	.string	"FspActionDummy"
	.byte	0x1
	.uahalf	0x190
	.uaword	0x528
	.uleb128 0x10
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x191
	.uaword	0x101
	.byte	0
	.uleb128 0x17
	.uaword	0x806
	.uleb128 0x18
	.byte	0x4
	.uaword	0x62a
	.uleb128 0xf
	.string	"RegAccProtTst_lRestore"
	.byte	0x1
	.uahalf	0x1e9
	.byte	0x1
	.uaword	0x4c9
	.byte	0x1
	.uaword	0x856
	.uleb128 0x12
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x1eb
	.uaword	0x856
	.uleb128 0x10
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x1ee
	.uaword	0x4c9
	.uleb128 0x10
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x1ef
	.uaword	0x101
	.byte	0
	.uleb128 0x17
	.uaword	0x85b
	.uleb128 0x18
	.byte	0x4
	.uaword	0x861
	.uleb128 0x17
	.uaword	0x62a
	.uleb128 0x19
	.string	"RegAccProtTst_lAccessControlTst"
	.byte	0x1
	.uahalf	0x236
	.byte	0x1
	.uaword	0x4c9
	.uaword	.LFB21
	.uaword	.LFE21
	.uaword	.LLST0
	.uaword	0xaf4
	.uleb128 0x1a
	.string	"AccessControl"
	.byte	0x1
	.uahalf	0x238
	.uaword	0x128
	.uaword	.LLST1
	.uleb128 0x1a
	.string	"CpuPsw"
	.byte	0x1
	.uahalf	0x238
	.uaword	0x128
	.uaword	.LLST2
	.uleb128 0x1b
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x23c
	.uaword	0x4c9
	.uaword	.LLST3
	.uleb128 0x1c
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x23d
	.uaword	0x4c9
	.byte	0x1
	.byte	0x52
	.uleb128 0x1d
	.string	"Temp"
	.byte	0x1
	.uahalf	0x23e
	.uaword	0x11a
	.uaword	.LLST4
	.uleb128 0x1b
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x23f
	.uaword	0x11a
	.uaword	.LLST5
	.uleb128 0x10
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x240
	.uaword	0x101
	.uleb128 0x1e
	.uaword	.LBB63
	.uaword	.LBE63
	.uaword	0x937
	.uleb128 0x1d
	.string	"__res"
	.byte	0x1
	.uahalf	0x247
	.uaword	0xc1
	.uaword	.LLST6
	.byte	0
	.uleb128 0x1f
	.uaword	0x635
	.uaword	.LBB64
	.uaword	.LBE64
	.byte	0x1
	.uahalf	0x249
	.uleb128 0x1e
	.uaword	.LBB66
	.uaword	.LBE66
	.uaword	0x965
	.uleb128 0x1b
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x249
	.uaword	0xc1
	.uaword	.LLST7
	.byte	0
	.uleb128 0x1f
	.uaword	0x641
	.uaword	.LBB67
	.uaword	.LBE67
	.byte	0x1
	.uahalf	0x249
	.uleb128 0x1e
	.uaword	.LBB69
	.uaword	.LBE69
	.uaword	0x993
	.uleb128 0x1b
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x250
	.uaword	0xc1
	.uaword	.LLST8
	.byte	0
	.uleb128 0x1f
	.uaword	0x641
	.uaword	.LBB70
	.uaword	.LBE70
	.byte	0x1
	.uahalf	0x250
	.uleb128 0x20
	.uaword	0x64d
	.uaword	.LBB72
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.uahalf	0x273
	.uaword	0x9de
	.uleb128 0x21
	.uaword	.Ldebug_ranges0+0x18
	.uleb128 0x22
	.uaword	0x67a
	.uaword	.LLST9
	.uleb128 0x22
	.uaword	0x686
	.uaword	.LLST10
	.uleb128 0x22
	.uaword	0x696
	.uaword	.LLST11
	.uleb128 0x23
	.uaword	0x6a2
	.byte	0
	.byte	0
	.uleb128 0x20
	.uaword	0x6af
	.uaword	.LBB76
	.uaword	.Ldebug_ranges0+0x30
	.byte	0x1
	.uahalf	0x275
	.uaword	0xab5
	.uleb128 0x24
	.uaword	0x6e5
	.uaword	.LLST12
	.uleb128 0x21
	.uaword	.Ldebug_ranges0+0x48
	.uleb128 0x22
	.uaword	0x6f1
	.uaword	.LLST13
	.uleb128 0x22
	.uaword	0x6fe
	.uaword	.LLST14
	.uleb128 0x23
	.uaword	0x70a
	.uleb128 0x1e
	.uaword	.LBB78
	.uaword	.LBE78
	.uaword	0xa2e
	.uleb128 0x22
	.uaword	0x741
	.uaword	.LLST15
	.byte	0
	.uleb128 0x1f
	.uaword	0x635
	.uaword	.LBB79
	.uaword	.LBE79
	.byte	0x1
	.uahalf	0x2c3
	.uleb128 0x1e
	.uaword	.LBB81
	.uaword	.LBE81
	.uaword	0xa55
	.uleb128 0x22
	.uaword	0x751
	.uaword	.LLST16
	.byte	0
	.uleb128 0x1f
	.uaword	0x641
	.uaword	.LBB82
	.uaword	.LBE82
	.byte	0x1
	.uahalf	0x2c3
	.uleb128 0x1e
	.uaword	.LBB84
	.uaword	.LBE84
	.uaword	0xa7c
	.uleb128 0x22
	.uaword	0x71b
	.uaword	.LLST17
	.byte	0
	.uleb128 0x1f
	.uaword	0x635
	.uaword	.LBB85
	.uaword	.LBE85
	.byte	0x1
	.uahalf	0x2bc
	.uleb128 0x1e
	.uaword	.LBB87
	.uaword	.LBE87
	.uaword	0xaa3
	.uleb128 0x22
	.uaword	0x72f
	.uaword	.LLST18
	.byte	0
	.uleb128 0x1f
	.uaword	0x641
	.uaword	.LBB88
	.uaword	.LBE88
	.byte	0x1
	.uahalf	0x2bc
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uaword	0x635
	.uaword	.LBB91
	.uaword	.LBE91
	.byte	0x1
	.uahalf	0x276
	.uleb128 0x1e
	.uaword	.LBB93
	.uaword	.LBE93
	.uaword	0xae3
	.uleb128 0x1b
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x276
	.uaword	0xc1
	.uaword	.LLST19
	.byte	0
	.uleb128 0x1f
	.uaword	0x641
	.uaword	.LBB94
	.uaword	.LBE94
	.byte	0x1
	.uahalf	0x276
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.string	"RegAccProtTst_RegAccProtTst"
	.byte	0x1
	.uahalf	0x128
	.byte	0x1
	.uaword	0x4c9
	.uaword	.LFB18
	.uaword	.LFE18
	.uaword	.LLST20
	.uaword	0xd5a
	.uleb128 0x1a
	.string	"ParamSetIndex"
	.byte	0x1
	.uahalf	0x12a
	.uaword	0xd5a
	.uaword	.LLST21
	.uleb128 0x1a
	.string	"TstSeed"
	.byte	0x1
	.uahalf	0x12b
	.uaword	0xd5f
	.uaword	.LLST22
	.uleb128 0x1a
	.string	"TstSignature"
	.byte	0x1
	.uahalf	0x12c
	.uaword	0xd64
	.uaword	.LLST23
	.uleb128 0x1b
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x12f
	.uaword	0x4c9
	.uaword	.LLST24
	.uleb128 0x1c
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x130
	.uaword	0x4c9
	.byte	0x1
	.byte	0x52
	.uleb128 0x1c
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x131
	.uaword	0x62a
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x26
	.uaword	0x75f
	.uaword	.LBB97
	.uaword	.LBE97
	.byte	0x1
	.uahalf	0x137
	.uaword	0xbd5
	.uleb128 0x24
	.uaword	0x780
	.uaword	.LLST25
	.uleb128 0x27
	.uaword	0x776
	.byte	0x9
	.uleb128 0x28
	.uaword	.LBB98
	.uaword	.LBE98
	.uleb128 0x22
	.uaword	0x78a
	.uaword	.LLST26
	.byte	0
	.byte	0
	.uleb128 0x20
	.uaword	0x797
	.uaword	.LBB99
	.uaword	.Ldebug_ranges0+0x60
	.byte	0x1
	.uahalf	0x13c
	.uaword	0xc16
	.uleb128 0x29
	.uaword	0x7b9
	.byte	0x1
	.byte	0x6a
	.uleb128 0x21
	.uaword	.Ldebug_ranges0+0x78
	.uleb128 0x22
	.uaword	0x7c5
	.uaword	.LLST27
	.uleb128 0x22
	.uaword	0x7d1
	.uaword	.LLST28
	.uleb128 0x2a
	.uaword	0x7dd
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x23
	.uaword	0x7f4
	.byte	0
	.byte	0
	.uleb128 0x26
	.uaword	0x80c
	.uaword	.LBB102
	.uaword	.LBE102
	.byte	0x1
	.uahalf	0x154
	.uaword	0xc4c
	.uleb128 0x24
	.uaword	0x831
	.uaword	.LLST29
	.uleb128 0x28
	.uaword	.LBB103
	.uaword	.LBE103
	.uleb128 0x22
	.uaword	0x83d
	.uaword	.LLST30
	.uleb128 0x23
	.uaword	0x849
	.byte	0
	.byte	0
	.uleb128 0x26
	.uaword	0x75f
	.uaword	.LBB104
	.uaword	.LBE104
	.byte	0x1
	.uahalf	0x159
	.uaword	0xc86
	.uleb128 0x24
	.uaword	0x780
	.uaword	.LLST31
	.uleb128 0x24
	.uaword	0x776
	.uaword	.LLST32
	.uleb128 0x28
	.uaword	.LBB105
	.uaword	.LBE105
	.uleb128 0x22
	.uaword	0x78a
	.uaword	.LLST33
	.byte	0
	.byte	0
	.uleb128 0x26
	.uaword	0x75f
	.uaword	.LBB107
	.uaword	.LBE107
	.byte	0x1
	.uahalf	0x141
	.uaword	0xcbd
	.uleb128 0x27
	.uaword	0x780
	.byte	0x1
	.uleb128 0x24
	.uaword	0x776
	.uaword	.LLST34
	.uleb128 0x28
	.uaword	.LBB108
	.uaword	.LBE108
	.uleb128 0x22
	.uaword	0x78a
	.uaword	.LLST35
	.byte	0
	.byte	0
	.uleb128 0x26
	.uaword	0x75f
	.uaword	.LBB109
	.uaword	.LBE109
	.byte	0x1
	.uahalf	0x145
	.uaword	0xcf2
	.uleb128 0x27
	.uaword	0x780
	.byte	0x1
	.uleb128 0x24
	.uaword	0x776
	.uaword	.LLST36
	.uleb128 0x28
	.uaword	.LBB110
	.uaword	.LBE110
	.uleb128 0x2a
	.uaword	0x78a
	.byte	0x1
	.byte	0x58
	.byte	0
	.byte	0
	.uleb128 0x26
	.uaword	0x75f
	.uaword	.LBB111
	.uaword	.LBE111
	.byte	0x1
	.uahalf	0x14a
	.uaword	0xd29
	.uleb128 0x27
	.uaword	0x780
	.byte	0
	.uleb128 0x24
	.uaword	0x776
	.uaword	.LLST37
	.uleb128 0x28
	.uaword	.LBB112
	.uaword	.LBE112
	.uleb128 0x22
	.uaword	0x78a
	.uaword	.LLST38
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uaword	0x75f
	.uaword	.LBB113
	.uaword	.LBE113
	.byte	0x1
	.uahalf	0x14f
	.uleb128 0x27
	.uaword	0x780
	.byte	0
	.uleb128 0x29
	.uaword	0x776
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x28
	.uaword	.LBB114
	.uaword	.LBE114
	.uleb128 0x2a
	.uaword	0x78a
	.byte	0x1
	.byte	0x59
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x17
	.uaword	0x4e0
	.uleb128 0x17
	.uaword	0x101
	.uleb128 0x17
	.uaword	0xd69
	.uleb128 0x18
	.byte	0x4
	.uaword	0x11a
	.uleb128 0x2c
	.uaword	0x11a
	.uaword	0xd7f
	.uleb128 0x2d
	.uaword	0xe4
	.byte	0
	.byte	0
	.uleb128 0x2e
	.string	"RegAccProtTst_kNonSafeDMIMasterEnable"
	.byte	0x1
	.byte	0x6d
	.uaword	0xdac
	.uleb128 0x17
	.uaword	0xd6f
	.uleb128 0x2e
	.string	"RegAccProtTst_kSafeDMIMasterEnable"
	.byte	0x1
	.byte	0x79
	.uaword	0xddb
	.uleb128 0x17
	.uaword	0xd6f
	.uleb128 0x2c
	.uaword	0x101
	.uaword	0xdf0
	.uleb128 0x2d
	.uaword	0xe4
	.byte	0
	.byte	0
	.uleb128 0x2e
	.string	"RegAccProtTst_kSmuAlmGrp"
	.byte	0x1
	.byte	0x8c
	.uaword	0xe10
	.uleb128 0x17
	.uaword	0xde0
	.uleb128 0x2c
	.uaword	0xe25
	.uaword	0xe25
	.uleb128 0x2d
	.uaword	0xe4
	.byte	0
	.byte	0
	.uleb128 0x18
	.byte	0x4
	.uaword	0xe2b
	.uleb128 0x2f
	.uaword	0x5c1
	.uleb128 0x2e
	.string	"RegAccProtTst_ACCENARegGrp"
	.byte	0x1
	.byte	0x9e
	.uaword	0xe52
	.uleb128 0x17
	.uaword	0xe15
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0xb
	.byte	0x1
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x2f
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
	.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LFB21
	.uaword	.LCFI0
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI0
	.uaword	.LFE21
	.uahalf	0x2
	.byte	0x8a
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL1-1
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL0
	.uaword	.LVL1-1
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL7
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL19
	.uaword	.LVL27
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL28
	.uaword	.LFE21
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL2
	.uaword	.LVL4
	.uahalf	0x7
	.byte	0x7f
	.sleb128 0
	.byte	0xb
	.uahalf	0xbfff
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL8
	.uaword	.LVL9
	.uahalf	0x7
	.byte	0x7f
	.sleb128 0
	.byte	0xb
	.uahalf	0xbfff
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL10
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL18
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL28
	.uaword	.LVL29
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL2
	.uaword	.LVL4
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL8
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL3
	.uaword	.LVL4
	.uahalf	0x7
	.byte	0x7f
	.sleb128 0
	.byte	0xb
	.uahalf	0xbfff
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL8
	.uaword	.LVL9
	.uahalf	0x7
	.byte	0x7f
	.sleb128 0
	.byte	0xa
	.uahalf	0x4000
	.byte	0x21
	.byte	0x9f
	.uaword	.LVL9
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL7
	.uaword	.LVL8
	.uahalf	0x2
	.byte	0x8e
	.sleb128 -4
	.uaword	.LVL11
	.uaword	.LVL16
	.uahalf	0x2
	.byte	0x91
	.sleb128 -4
	.uaword	.LVL18
	.uaword	.LFE21
	.uahalf	0x2
	.byte	0x91
	.sleb128 -4
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x4
	.byte	0xa
	.uahalf	0x2000
	.byte	0x9f
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x3
	.byte	0x79
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL13
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL14
	.uaword	.LVL15
	.uahalf	0x3
	.byte	0x79
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL15
	.uaword	.LVL16
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL18
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x6
	.byte	0xc
	.uaword	0x9010a
	.byte	0x9f
	.uaword	.LVL15
	.uaword	.LVL16
	.uahalf	0x6
	.byte	0xc
	.uaword	0x90210
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL19
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL28
	.uaword	.LVL29
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL20
	.uaword	.LVL22
	.uahalf	0x7
	.byte	0x7f
	.sleb128 0
	.byte	0xa
	.uahalf	0x4000
	.byte	0x21
	.byte	0x9f
	.uaword	.LVL22
	.uaword	.LVL24
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL29
	.uaword	.LVL31
	.uahalf	0x7
	.byte	0x7f
	.sleb128 0
	.byte	0xb
	.uahalf	0xbfff
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL31
	.uaword	.LFE21
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL25
	.uaword	.LVL28
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL20
	.uaword	.LVL22
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL21
	.uaword	.LVL22
	.uahalf	0x7
	.byte	0x7f
	.sleb128 0
	.byte	0xa
	.uahalf	0x4000
	.byte	0x21
	.byte	0x9f
	.uaword	.LVL22
	.uaword	.LVL23
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL29
	.uaword	.LVL31
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL30
	.uaword	.LVL31
	.uahalf	0x7
	.byte	0x7f
	.sleb128 0
	.byte	0xb
	.uahalf	0xbfff
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL31
	.uaword	.LFE21
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL26
	.uaword	.LVL28
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LFB18
	.uaword	.LCFI1
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI1
	.uaword	.LFE18
	.uahalf	0x2
	.byte	0x8a
	.sleb128 16
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL32
	.uaword	.LVL34-1
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL32
	.uaword	.LVL33
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL32
	.uaword	.LVL34-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL34-1
	.uaword	.LFE18
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL35
	.uaword	.LVL36
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL38
	.uaword	.LVL43
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL46
	.uaword	.LVL47
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL47
	.uaword	.LVL50
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL50
	.uaword	.LVL51
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL51
	.uaword	.LVL54
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL54
	.uaword	.LVL55
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL55
	.uaword	.LVL59
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL59
	.uaword	.LVL60
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL60
	.uaword	.LFE18
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL32
	.uaword	.LVL33
	.uahalf	0x7
	.byte	0x75
	.sleb128 0
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL33
	.uaword	.LVL34-1
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL37
	.uaword	.LVL38
	.uahalf	0x6
	.byte	0xc
	.uaword	0x90210
	.byte	0x9f
	.uaword	.LVL45
	.uaword	.LFE18
	.uahalf	0x6
	.byte	0xc
	.uaword	0x901ff
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL35
	.uaword	.LVL36
	.uahalf	0x2
	.byte	0x91
	.sleb128 -8
	.uaword	.LVL38
	.uaword	.LVL43
	.uahalf	0x2
	.byte	0x91
	.sleb128 -8
	.uaword	.LVL44
	.uaword	.LFE18
	.uahalf	0x2
	.byte	0x91
	.sleb128 -8
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL38
	.uaword	.LVL43
	.uahalf	0x1
	.byte	0x6a
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL39
	.uaword	.LVL41
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST31:
	.uaword	.LVL40
	.uaword	.LVL43
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST32:
	.uaword	.LVL40
	.uaword	.LVL43
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST33:
	.uaword	.LVL42
	.uaword	.LVL43
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST34:
	.uaword	.LVL46
	.uaword	.LVL49-1
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST35:
	.uaword	.LVL48
	.uaword	.LVL49-1
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST36:
	.uaword	.LVL50
	.uaword	.LVL53-1
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST37:
	.uaword	.LVL54
	.uaword	.LVL58-1
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST38:
	.uaword	.LVL56
	.uaword	.LVL57
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL57
	.uaword	.LVL58-1
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	0
	.uaword	0
	.section .debug_aranges,"",@progbits
	.uaword	0x24
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB21
	.uaword	.LFE21-.LFB21
	.uaword	.LFB18
	.uaword	.LFE18-.LFB18
	.uaword	0
	.uaword	0
	.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB72
	.uaword	.LBE72
	.uaword	.LBB75
	.uaword	.LBE75
	.uaword	0
	.uaword	0
	.uaword	.LBB73
	.uaword	.LBE73
	.uaword	.LBB74
	.uaword	.LBE74
	.uaword	0
	.uaword	0
	.uaword	.LBB76
	.uaword	.LBE76
	.uaword	.LBB96
	.uaword	.LBE96
	.uaword	0
	.uaword	0
	.uaword	.LBB77
	.uaword	.LBE77
	.uaword	.LBB90
	.uaword	.LBE90
	.uaword	0
	.uaword	0
	.uaword	.LBB99
	.uaword	.LBE99
	.uaword	.LBB106
	.uaword	.LBE106
	.uaword	0
	.uaword	0
	.uaword	.LBB100
	.uaword	.LBE100
	.uaword	.LBB101
	.uaword	.LBE101
	.uaword	0
	.uaword	0
	.uaword	.LFB21
	.uaword	.LFE21
	.uaword	.LFB18
	.uaword	.LFE18
	.uaword	0
	.uaword	0
	.section .debug_line,"",@progbits
.Ldebug_line0:
	.section .debug_str,"",@progbits
.LASF5:
	.string	"AccEnable"
.LASF7:
	.string	"ResultTmp"
.LASF4:
	.string	"__newval"
.LASF0:
	.string	"RegAccProtTst_BackupDataType"
.LASF3:
	.string	"CoreId"
.LASF6:
	.string	"BackupData"
.LASF1:
	.string	"AlmStatus"
.LASF2:
	.string	"Result"
	.extern	Smu_SetAlarmAction,STT_FUNC,0
	.extern	Smu_GetAlarmAction,STT_FUNC,0
	.extern	Smu_GetSmuState,STT_FUNC,0
	.extern	Smu_ClearAlarmStatus,STT_FUNC,0
	.extern	Smu_GetAlarmStatus,STT_FUNC,0
	.extern	Mcal_SetSafetyENDINIT_Timed,STT_FUNC,0
	.extern	Mcal_ResetSafetyENDINIT_Timed,STT_FUNC,0
	.extern	Mcal_GetCoreId,STT_FUNC,0
	.ident	"GCC: (HighTec Release v4.6.3.0) 4.6.3 build on 2013-05-17"
