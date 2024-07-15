	.file	"SffTst.c"
.section .text,"ax",@progbits
.Ltext0:
	.section .text.STL_ASIL_CODE,"ax",@progbits
	.align 2
	.global	SffTst_SffTst
	.type	SffTst_SffTst, @function
SffTst_SffTst:
.LFB18:
	.file 1 "../30_Bsw/MicroTestLib/Static/SffTst.c"
	.loc 1 227 0
.LVL0:
	sub.a	%SP, 8
.LCFI0:
	.loc 1 227 0
	mov.aa	%a15, %a4
.LBB40:
.LBB41:
	.file 2 "../30_Bsw/STL_common/Mcal_Compiler.h"
	.loc 2 400 0
	mov	%d15, 37
#APP
	# 400 "../30_Bsw/STL_common/Mcal_Compiler.h" 1
	crc32 %d5, %d5, %d15
	# 0 "" 2
.LVL1:
#NO_APP
.LBE41:
.LBE40:
	.loc 1 235 0
	st.w	[%a4]0, %d5
.LVL2:
.LBB42:
.LBB43:
	.loc 1 308 0
	movh	%d15, 37
	.loc 1 306 0
	call	Smu_GetSmuState
.LVL3:
	.loc 1 308 0
	addi	%d15, %d15, 524
	.loc 1 306 0
	jeq	%d2, 1, .L35
.LVL4:
.L2:
	.loc 1 320 0
	ld.w	%d2, [%a15]0
.LVL5:
.L4:
.LBE43:
.LBE42:
.LBB45:
.LBB46:
	.loc 2 400 0
#APP
	# 400 "../30_Bsw/STL_common/Mcal_Compiler.h" 1
	crc32 %d2, %d15, %d2
	# 0 "" 2
.LVL6:
#NO_APP
.LBE46:
.LBE45:
	.loc 1 262 0
	st.w	[%a15]0, %d2
	.loc 1 264 0
	mov	%d2, %d15
.LVL7:
	ret
.LVL8:
.L35:
.LBB47:
.LBB44:
	.loc 1 311 0
	movh.a	%a2, hi:-268211456
	lea	%a2, [%a2] lo:-268211456
	ld.w	%d2, [%a2]0
	.loc 1 313 0
	movh	%d15, 37
	addi	%d15, %d15, 5121
	.loc 1 311 0
	jnz.t	%d2, 0, .L2
	.loc 1 315 0
	mov	%d4, 3
	mov.aa	%a4, %SP
	.loc 1 317 0
	movh	%d15, 37
	.loc 1 315 0
	call	Smu_GetAlarmStatus
	.loc 1 317 0
	addi	%d15, %d15, 526
	.loc 1 315 0
	jnz	%d2, .L2
.LVL9:
	.loc 1 320 0
	ld.w	%d15, [%SP]0
	jz.t	%d15, 27, .L3
	.loc 1 322 0
	movh	%d15, 37
	addi	%d15, %d15, 525
	j	.L2
.L3:
.LVL10:
.LBE44:
.LBE47:
.LBB48:
.LBB49:
	.loc 1 374 0
	mov	%d4, 3
	mov	%d5, 27
	lea	%a4, [%SP] 4
	mov.aa	%a5, %SP
	call	Smu_GetAlarmAction
	jz	%d2, .L36
.LVL11:
	.loc 1 380 0
	mov	%d15, -1
	st.b	[%SP] 4, %d15
.LVL12:
	.loc 1 379 0
	movh	%d15, 37
	addi	%d15, %d15, 528
.LVL13:
.L5:
.LBB50:
.LBB51:
	.loc 2 400 0
	ld.w	%d2, [%a15]0
#APP
	# 400 "../30_Bsw/STL_common/Mcal_Compiler.h" 1
	crc32 %d2, %d15, %d2
	# 0 "" 2
.LVL14:
#NO_APP
.LBE51:
.LBE50:
.LBE49:
.LBE48:
	.loc 1 245 0
	movh	%d3, 37
.LBB55:
.LBB52:
	.loc 1 404 0
	st.w	[%a15]0, %d2
.LBE52:
.LBE55:
	.loc 1 245 0
	addi	%d3, %d3, 511
	jne	%d15, %d3, .L4
.LVL15:
.LBB56:
.LBB57:
	.loc 1 465 0
	mov.a	%a12, 0
	.loc 1 477 0
	mov	%d4, 22960
	.loc 1 465 0
	st.a	[%SP]0, %a12
.LVL16:
	.loc 1 477 0
	call	Mcal_ResetSafetyENDINIT_Timed
.LVL17:
	.loc 1 478 0
	mov	%d2, 188
	movh.a	%a2, hi:-268212172
	lea	%a2, [%a2] lo:-268212172
	st.w	[%a2]0, %d2
	.loc 1 479 0
	mov	%d2, 1
	movh.a	%a3, hi:-268211456
	lea	%a3, [%a3] lo:-268211456
	st.w	[%a3]0, %d2
	.loc 1 480 0
	st.a	[%a2]0, %a12
	.loc 1 481 0
	call	Mcal_SetSafetyENDINIT_Timed
	.loc 1 503 0
	movh.a	%a2, hi:-268211448
	lea	%a2, [%a2] lo:-268211448
	ld.w	%d2, [%a2]0
	and	%d2, %d2, 7
	jeq	%d2, 7, .L7
	movh.a	%a3, hi:-268211448
	mov	%d3, 0
	lea	%a3, [%a3] lo:-268211448
	lea	%a2, 128
.LVL18:
.L9:
	ld.w	%d2, [%a3]0
	.loc 1 506 0
	add	%d3, 1
	.loc 1 503 0
	and	%d2, %d2, 7
	.loc 1 506 0
	and	%d3, %d3, 255
.LVL19:
	.loc 1 503 0
	jeq	%d2, 7, .L8
	loop	%a2, .L9
.LVL20:
.L33:
	.loc 1 509 0
	ld.w	%d15, [%SP]0
.LVL21:
	movh	%d3, 2048
	and	%d3, %d15
	.loc 1 512 0
	movh	%d15, 37
	addi	%d15, %d15, 5122
.LVL22:
.L10:
.LBB58:
.LBB59:
	.loc 2 400 0
	ld.w	%d2, [%a15]0
#APP
	# 400 "../30_Bsw/STL_common/Mcal_Compiler.h" 1
	crc32 %d3, %d3, %d2
	# 0 "" 2
.LVL23:
#NO_APP
.LBE59:
.LBE58:
.LBE57:
.LBE56:
.LBB63:
.LBB64:
	.loc 1 630 0
	mov	%d4, 22960
.LBE64:
.LBE63:
.LBB70:
.LBB60:
	.loc 1 578 0
	st.w	[%a15]0, %d3
.LVL24:
.LBE60:
.LBE70:
.LBB71:
.LBB67:
	.loc 1 630 0
	call	Mcal_ResetSafetyENDINIT_Timed
.LVL25:
	.loc 1 631 0
	mov	%d2, 188
	movh.a	%a2, hi:-268212172
	lea	%a2, [%a2] lo:-268212172
	st.w	[%a2]0, %d2
	.loc 1 632 0
	mov	%d2, 0
	movh.a	%a3, hi:-268211456
	lea	%a3, [%a3] lo:-268211456
	st.w	[%a3]0, %d2
	.loc 1 633 0
	st.w	[%a2]0, %d2
	.loc 1 634 0
	call	Mcal_SetSafetyENDINIT_Timed
	.loc 1 637 0
	mov	%d4, 3
	mov	%d5, 27
	call	Smu_ClearAlarmStatus
	.loc 1 640 0
	movh	%d3, 37
	addi	%d3, %d3, 527
	.loc 1 637 0
	jz	%d2, .L37
.LVL26:
.L21:
.LBB65:
.LBB66:
	.loc 2 400 0
	ld.w	%d2, [%a15]0
#APP
	# 400 "../30_Bsw/STL_common/Mcal_Compiler.h" 1
	crc32 %d2, %d3, %d2
	# 0 "" 2
.LVL27:
#NO_APP
.LBE66:
.LBE65:
.LBE67:
.LBE71:
	.loc 1 253 0
	movh	%d4, 37
	addi	%d4, %d4, 511
	.loc 1 257 0
	ne	%d4, %d15, %d4
.LBB72:
.LBB68:
	.loc 1 660 0
	st.w	[%a15]0, %d2
.LVL28:
.LBE68:
.LBE72:
	.loc 1 257 0
	sel	%d15, %d4, %d15, %d3
.LVL29:
	j	.L4
.LVL30:
.L36:
.LBB73:
.LBB53:
	.loc 1 384 0
	mov	%d4, 3
	mov	%d5, 27
	mov	%d6, 0
	call	Smu_SetAlarmAction
	mov	%d15, %d2
	jz	%d2, .L6
.LVL31:
	.loc 1 389 0
	mov	%d15, -1
	st.b	[%SP] 4, %d15
.LVL32:
	.loc 1 388 0
	movh	%d15, 37
	addi	%d15, %d15, 529
	j	.L5
.LVL33:
.L8:
.LBE53:
.LBE73:
.LBB74:
.LBB61:
	.loc 1 509 0
	extr	%d3, %d3, 0, 8
.LVL34:
	jltz	%d3, .L33
.L7:
	.loc 1 516 0
	movh.a	%a2, hi:-268211452
	lea	%a2, [%a2] lo:-268211452
	ld.w	%d2, [%a2]0
	and	%d2, %d2, 7
.LVL35:
	.loc 1 517 0
	jz	%d2, .L11
	.loc 1 520 0
	ld.w	%d15, [%SP]0
.LVL36:
	movh	%d3, 2048
	and	%d3, %d15
	add	%d2, -2
.LVL37:
	.loc 1 524 0
	movh	%d15, 37
	addi	%d15, %d15, 5125
	.loc 1 520 0
	jge.u	%d2, 6, .L10
	movh.a	%a2, hi:.L19
	lea	%a2, [%a2] lo:.L19
	ld.w	%d15, [%SP]0
	addsc.a	%a2, %a2, %d2, 2
	movh	%d3, 2048
	and	%d3, %d15
	.loc 1 548 0
	movh	%d15, 37
	.loc 1 520 0
	ji	%a2
	.align 2
	.align 2
.L19:
	.code32
	j	.L13
	.code32
	j	.L14
	.code32
	j	.L15
	.code32
	j	.L16
	.code32
	j	.L17
	.code32
	j	.L18
.L16:
.LVL38:
	.loc 1 540 0
	addi	%d15, %d15, 5129
	j	.L10
.LVL39:
.L15:
	.loc 1 536 0
	addi	%d15, %d15, 5128
	j	.L10
.LVL40:
.L14:
	.loc 1 532 0
	addi	%d15, %d15, 5127
	j	.L10
.LVL41:
.L13:
	.loc 1 528 0
	addi	%d15, %d15, 5126
	j	.L10
.LVL42:
.L17:
	.loc 1 544 0
	addi	%d15, %d15, 5130
	j	.L10
.LVL43:
.L18:
	.loc 1 548 0
	addi	%d15, %d15, 5131
	j	.L10
.LVL44:
.L6:
.LBE61:
.LBE74:
.LBB75:
.LBB54:
	.loc 1 396 0
	mov	%d4, 22960
	call	Mcal_ResetSafetyENDINIT_Timed
	.loc 1 397 0
	movh.a	%a2, hi:-268211448
	lea	%a2, [%a2] lo:-268211448
	st.w	[%a2]0, %d15
	.loc 1 398 0
	movh.a	%a2, hi:-268211452
	lea	%a2, [%a2] lo:-268211452
	st.w	[%a2]0, %d15
	.loc 1 400 0
	movh	%d15, 37
	.loc 1 399 0
	call	Mcal_SetSafetyENDINIT_Timed
.LVL45:
	.loc 1 400 0
	addi	%d15, %d15, 511
	j	.L5
.LVL46:
.L37:
.LBE54:
.LBE75:
.LBB76:
.LBB69:
	.loc 1 642 0
	ld.bu	%d6, [%SP] 4
	mov	%d4, 3
	mov	%d5, 27
	call	Smu_SetAlarmAction
	.loc 1 646 0
	movh	%d3, 37
	.loc 1 642 0
	mov	%d8, %d2
	.loc 1 646 0
	addi	%d3, %d3, 529
	.loc 1 642 0
	jnz	%d2, .L21
	.loc 1 653 0
	mov	%d4, 22960
	call	Mcal_ResetSafetyENDINIT_Timed
	.loc 1 654 0
	movh.a	%a2, hi:-268211448
	lea	%a2, [%a2] lo:-268211448
	st.w	[%a2]0, %d8
	.loc 1 655 0
	movh.a	%a2, hi:-268211452
	lea	%a2, [%a2] lo:-268211452
	st.w	[%a2]0, %d8
	.loc 1 656 0
	call	Mcal_SetSafetyENDINIT_Timed
.LVL47:
	.loc 1 657 0
	movh	%d3, 37
	addi	%d3, %d3, 511
	j	.L21
.LVL48:
.L11:
.LBE69:
.LBE76:
.LBB77:
.LBB62:
	.loc 1 557 0
	mov	%d4, 3
	mov.aa	%a4, %SP
	call	Smu_GetAlarmStatus
.LVL49:
	.loc 1 564 0
	ld.w	%d4, [%SP]0
	movh	%d3, 2048
	and	%d3, %d4
	.loc 1 567 0
	movh	%d4, 37
	addi	%d4, %d4, 5123
	sel	%d15, %d3, %d15, %d4
.LVL50:
	.loc 1 559 0
	movh	%d4, 37
	addi	%d4, %d4, 526
	seln	%d15, %d2, %d15, %d4
	j	.L10
.LBE62:
.LBE77:
.LFE18:
	.size	SffTst_SffTst, .-SffTst_SffTst
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
	.uleb128 0x8
	.align 2
.LEFDE0:
.section .text,"ax",@progbits
.Letext0:
	.file 3 "../30_Bsw/Common/TC21x/IfxSmu_regdef.h"
	.file 4 "../30_Bsw/Common/Platform_Types.h"
	.file 5 "../30_Bsw/STL_common/Sl_ErrorCodes.h"
	.file 6 "../30_Bsw/Smu/Static/Smu.h"
	.file 7 "../30_Bsw/Smu/Static/SmuInt.h"
	.file 8 "../30_Bsw/STL_common/Mcal_TcLib.h"
	.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x1099
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.6.3 build on 2013-05-17"
	.byte	0x1
	.string	"../30_Bsw/MicroTestLib/Static/SffTst.c"
	.string	"S:\\\\20_Make"
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_ranges0+0x120
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.uaword	0x75
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x4
	.string	"_Ifx_SMU_KEYS_Bits"
	.byte	0x4
	.byte	0x3
	.uahalf	0x133
	.uaword	0xe6
	.uleb128 0x5
	.string	"CFGLCK"
	.byte	0x3
	.uahalf	0x135
	.uaword	0x70
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"PERLCK"
	.byte	0x3
	.uahalf	0x136
	.uaword	0x70
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"reserved_16"
	.byte	0x3
	.uahalf	0x137
	.uaword	0x70
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x6
	.string	"Ifx_SMU_KEYS_Bits"
	.byte	0x3
	.uahalf	0x138
	.uaword	0x85
	.uleb128 0x4
	.string	"_Ifx_SMU_RMCTL_Bits"
	.byte	0x4
	.byte	0x3
	.uahalf	0x169
	.uaword	0x148
	.uleb128 0x5
	.string	"TE"
	.byte	0x3
	.uahalf	0x16b
	.uaword	0x70
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"reserved_1"
	.byte	0x3
	.uahalf	0x16c
	.uaword	0x70
	.byte	0x4
	.byte	0x1f
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x6
	.string	"Ifx_SMU_RMCTL_Bits"
	.byte	0x3
	.uahalf	0x16d
	.uaword	0x100
	.uleb128 0x4
	.string	"_Ifx_SMU_RMEF_Bits"
	.byte	0x4
	.byte	0x3
	.uahalf	0x170
	.uaword	0x3d6
	.uleb128 0x5
	.string	"EF0"
	.byte	0x3
	.uahalf	0x172
	.uaword	0x70
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EF1"
	.byte	0x3
	.uahalf	0x173
	.uaword	0x70
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EF2"
	.byte	0x3
	.uahalf	0x174
	.uaword	0x70
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EF3"
	.byte	0x3
	.uahalf	0x175
	.uaword	0x70
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EF4"
	.byte	0x3
	.uahalf	0x176
	.uaword	0x70
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EF5"
	.byte	0x3
	.uahalf	0x177
	.uaword	0x70
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EF6"
	.byte	0x3
	.uahalf	0x178
	.uaword	0x70
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EF7"
	.byte	0x3
	.uahalf	0x179
	.uaword	0x70
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EF8"
	.byte	0x3
	.uahalf	0x17a
	.uaword	0x70
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EF9"
	.byte	0x3
	.uahalf	0x17b
	.uaword	0x70
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EF10"
	.byte	0x3
	.uahalf	0x17c
	.uaword	0x70
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EF11"
	.byte	0x3
	.uahalf	0x17d
	.uaword	0x70
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EF12"
	.byte	0x3
	.uahalf	0x17e
	.uaword	0x70
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EF13"
	.byte	0x3
	.uahalf	0x17f
	.uaword	0x70
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EF14"
	.byte	0x3
	.uahalf	0x180
	.uaword	0x70
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EF15"
	.byte	0x3
	.uahalf	0x181
	.uaword	0x70
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EF16"
	.byte	0x3
	.uahalf	0x182
	.uaword	0x70
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EF17"
	.byte	0x3
	.uahalf	0x183
	.uaword	0x70
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EF18"
	.byte	0x3
	.uahalf	0x184
	.uaword	0x70
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EF19"
	.byte	0x3
	.uahalf	0x185
	.uaword	0x70
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EF20"
	.byte	0x3
	.uahalf	0x186
	.uaword	0x70
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EF21"
	.byte	0x3
	.uahalf	0x187
	.uaword	0x70
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EF22"
	.byte	0x3
	.uahalf	0x188
	.uaword	0x70
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EF23"
	.byte	0x3
	.uahalf	0x189
	.uaword	0x70
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EF24"
	.byte	0x3
	.uahalf	0x18a
	.uaword	0x70
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EF25"
	.byte	0x3
	.uahalf	0x18b
	.uaword	0x70
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EF26"
	.byte	0x3
	.uahalf	0x18c
	.uaword	0x70
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EF27"
	.byte	0x3
	.uahalf	0x18d
	.uaword	0x70
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EF28"
	.byte	0x3
	.uahalf	0x18e
	.uaword	0x70
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EF29"
	.byte	0x3
	.uahalf	0x18f
	.uaword	0x70
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EF30"
	.byte	0x3
	.uahalf	0x190
	.uaword	0x70
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EF31"
	.byte	0x3
	.uahalf	0x191
	.uaword	0x70
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x6
	.string	"Ifx_SMU_RMEF_Bits"
	.byte	0x3
	.uahalf	0x192
	.uaword	0x163
	.uleb128 0x4
	.string	"_Ifx_SMU_RMSTS_Bits"
	.byte	0x4
	.byte	0x3
	.uahalf	0x195
	.uaword	0x684
	.uleb128 0x5
	.string	"STS0"
	.byte	0x3
	.uahalf	0x197
	.uaword	0x70
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"STS1"
	.byte	0x3
	.uahalf	0x198
	.uaword	0x70
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"STS2"
	.byte	0x3
	.uahalf	0x199
	.uaword	0x70
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"STS3"
	.byte	0x3
	.uahalf	0x19a
	.uaword	0x70
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"STS4"
	.byte	0x3
	.uahalf	0x19b
	.uaword	0x70
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"STS5"
	.byte	0x3
	.uahalf	0x19c
	.uaword	0x70
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"STS6"
	.byte	0x3
	.uahalf	0x19d
	.uaword	0x70
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"STS7"
	.byte	0x3
	.uahalf	0x19e
	.uaword	0x70
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"STS8"
	.byte	0x3
	.uahalf	0x19f
	.uaword	0x70
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"STS9"
	.byte	0x3
	.uahalf	0x1a0
	.uaword	0x70
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"STS10"
	.byte	0x3
	.uahalf	0x1a1
	.uaword	0x70
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"STS11"
	.byte	0x3
	.uahalf	0x1a2
	.uaword	0x70
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"STS12"
	.byte	0x3
	.uahalf	0x1a3
	.uaword	0x70
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"STS13"
	.byte	0x3
	.uahalf	0x1a4
	.uaword	0x70
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"STS14"
	.byte	0x3
	.uahalf	0x1a5
	.uaword	0x70
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"STS15"
	.byte	0x3
	.uahalf	0x1a6
	.uaword	0x70
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"STS16"
	.byte	0x3
	.uahalf	0x1a7
	.uaword	0x70
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"STS17"
	.byte	0x3
	.uahalf	0x1a8
	.uaword	0x70
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"STS18"
	.byte	0x3
	.uahalf	0x1a9
	.uaword	0x70
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"STS19"
	.byte	0x3
	.uahalf	0x1aa
	.uaword	0x70
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"STS20"
	.byte	0x3
	.uahalf	0x1ab
	.uaword	0x70
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"STS21"
	.byte	0x3
	.uahalf	0x1ac
	.uaword	0x70
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"STS22"
	.byte	0x3
	.uahalf	0x1ad
	.uaword	0x70
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"STS23"
	.byte	0x3
	.uahalf	0x1ae
	.uaword	0x70
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"STS24"
	.byte	0x3
	.uahalf	0x1af
	.uaword	0x70
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"STS25"
	.byte	0x3
	.uahalf	0x1b0
	.uaword	0x70
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"STS26"
	.byte	0x3
	.uahalf	0x1b1
	.uaword	0x70
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"STS27"
	.byte	0x3
	.uahalf	0x1b2
	.uaword	0x70
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"STS28"
	.byte	0x3
	.uahalf	0x1b3
	.uaword	0x70
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"STS29"
	.byte	0x3
	.uahalf	0x1b4
	.uaword	0x70
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"STS30"
	.byte	0x3
	.uahalf	0x1b5
	.uaword	0x70
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"STS31"
	.byte	0x3
	.uahalf	0x1b6
	.uaword	0x70
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x6
	.string	"Ifx_SMU_RMSTS_Bits"
	.byte	0x3
	.uahalf	0x1b7
	.uaword	0x3f0
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x7
	.byte	0x4
	.byte	0x3
	.uahalf	0x25b
	.uaword	0x6ce
	.uleb128 0x8
	.string	"U"
	.byte	0x3
	.uahalf	0x25d
	.uaword	0x75
	.uleb128 0x8
	.string	"I"
	.byte	0x3
	.uahalf	0x25e
	.uaword	0x69f
	.uleb128 0x8
	.string	"B"
	.byte	0x3
	.uahalf	0x25f
	.uaword	0xe6
	.byte	0
	.uleb128 0x6
	.string	"Ifx_SMU_KEYS"
	.byte	0x3
	.uahalf	0x260
	.uaword	0x6a6
	.uleb128 0x7
	.byte	0x4
	.byte	0x3
	.uahalf	0x28b
	.uaword	0x70b
	.uleb128 0x8
	.string	"U"
	.byte	0x3
	.uahalf	0x28d
	.uaword	0x75
	.uleb128 0x8
	.string	"I"
	.byte	0x3
	.uahalf	0x28e
	.uaword	0x69f
	.uleb128 0x8
	.string	"B"
	.byte	0x3
	.uahalf	0x28f
	.uaword	0x148
	.byte	0
	.uleb128 0x6
	.string	"Ifx_SMU_RMCTL"
	.byte	0x3
	.uahalf	0x290
	.uaword	0x6e3
	.uleb128 0x7
	.byte	0x4
	.byte	0x3
	.uahalf	0x293
	.uaword	0x749
	.uleb128 0x8
	.string	"U"
	.byte	0x3
	.uahalf	0x295
	.uaword	0x75
	.uleb128 0x8
	.string	"I"
	.byte	0x3
	.uahalf	0x296
	.uaword	0x69f
	.uleb128 0x8
	.string	"B"
	.byte	0x3
	.uahalf	0x297
	.uaword	0x3d6
	.byte	0
	.uleb128 0x6
	.string	"Ifx_SMU_RMEF"
	.byte	0x3
	.uahalf	0x298
	.uaword	0x721
	.uleb128 0x7
	.byte	0x4
	.byte	0x3
	.uahalf	0x29b
	.uaword	0x786
	.uleb128 0x8
	.string	"U"
	.byte	0x3
	.uahalf	0x29d
	.uaword	0x75
	.uleb128 0x8
	.string	"I"
	.byte	0x3
	.uahalf	0x29e
	.uaword	0x69f
	.uleb128 0x8
	.string	"B"
	.byte	0x3
	.uahalf	0x29f
	.uaword	0x684
	.byte	0
	.uleb128 0x6
	.string	"Ifx_SMU_RMSTS"
	.byte	0x3
	.uahalf	0x2a0
	.uaword	0x75e
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.string	"float"
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.string	"double"
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x9
	.string	"uint8"
	.byte	0x4
	.byte	0x5b
	.uaword	0x7b1
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x9
	.string	"uint32"
	.byte	0x4
	.byte	0x5f
	.uaword	0x79c
	.uleb128 0xa
	.byte	0x4
	.byte	0x5
	.byte	0x6d
	.uaword	0xbb4
	.uleb128 0xb
	.string	"TEST_ID_GENERIC"
	.sleb128 0
	.uleb128 0xb
	.string	"TEST_ID_CPU_MPU_TST"
	.sleb128 1
	.uleb128 0xb
	.string	"TEST_ID_SFR_CMP_TST"
	.sleb128 2
	.uleb128 0xb
	.string	"TEST_ID_SFR_CRC_TST"
	.sleb128 3
	.uleb128 0xb
	.string	"TEST_ID_SRI_TST"
	.sleb128 4
	.uleb128 0xb
	.string	"TEST_ID_OSC_WDG_TST"
	.sleb128 5
	.uleb128 0xb
	.string	"TEST_ID_BUS_MPU_LFM_TST"
	.sleb128 6
	.uleb128 0xb
	.string	"TEST_ID_TRAP_TST"
	.sleb128 7
	.uleb128 0xb
	.string	"TEST_ID_UNUSED_TST1"
	.sleb128 8
	.uleb128 0xb
	.string	"TEST_ID_REG_ACC_PROT_TST"
	.sleb128 9
	.uleb128 0xb
	.string	"TEST_ID_PMU_ECC_EDC_TST"
	.sleb128 10
	.uleb128 0xb
	.string	"TEST_ID_CPU_WDG_TST"
	.sleb128 11
	.uleb128 0xb
	.string	"TEST_ID_SAFETY_WDG_TST"
	.sleb128 12
	.uleb128 0xb
	.string	"TEST_ID_VLTM_TST"
	.sleb128 13
	.uleb128 0xb
	.string	"TEST_ID_CLKM_TST"
	.sleb128 14
	.uleb128 0xb
	.string	"TEST_ID_CPUSBST_E_TST"
	.sleb128 15
	.uleb128 0xb
	.string	"TEST_ID_CPUSBST_P_TST"
	.sleb128 16
	.uleb128 0xb
	.string	"TEST_ID_SMU_TST_RT"
	.sleb128 17
	.uleb128 0xb
	.string	"TEST_ID_SMU_TST_IRQ"
	.sleb128 18
	.uleb128 0xb
	.string	"TEST_ID_UNUSED_TST2"
	.sleb128 19
	.uleb128 0xb
	.string	"TEST_ID_SMU_TST_NMI"
	.sleb128 20
	.uleb128 0xb
	.string	"TEST_ID_SMU_TST_IDLE"
	.sleb128 21
	.uleb128 0xb
	.string	"TEST_ID_SRAMECC_TST"
	.sleb128 22
	.uleb128 0xb
	.string	"TEST_ID_IR_TST"
	.sleb128 23
	.uleb128 0xb
	.string	"TEST_ID_LOCK_STEP_TST"
	.sleb128 24
	.uleb128 0xb
	.string	"TEST_ID_LMU_REG_ACC_PROT_TST"
	.sleb128 25
	.uleb128 0xb
	.string	"TEST_ID_BUS_LMU_MPU_LFM_TST"
	.sleb128 26
	.uleb128 0xb
	.string	"TEST_ID_MBIST_TST"
	.sleb128 27
	.uleb128 0xb
	.string	"TEST_ID_SPB_TST_RAP"
	.sleb128 28
	.uleb128 0xb
	.string	"TEST_ID_SPB_TST_TIMEOUT"
	.sleb128 29
	.uleb128 0xb
	.string	"TEST_ID_FCE_TST"
	.sleb128 30
	.uleb128 0xb
	.string	"TEST_ID_DMA_CRC_TST"
	.sleb128 31
	.uleb128 0xb
	.string	"TEST_ID_DMA_TIMESTAMP_TST"
	.sleb128 32
	.uleb128 0xb
	.string	"TEST_ID_DMA_SAFELINKEDLIST_TST"
	.sleb128 33
	.uleb128 0xb
	.string	"TEST_ID_IOM_TST"
	.sleb128 34
	.uleb128 0xb
	.string	"TEST_ID_SMU_TST_RST"
	.sleb128 35
	.uleb128 0xb
	.string	"TEST_ID_PFLASH_MON_TST"
	.sleb128 36
	.uleb128 0xb
	.string	"TEST_ID_SFF_TST"
	.sleb128 37
	.uleb128 0xb
	.string	"TEST_ID_PHLSRAM_TST"
	.sleb128 38
	.byte	0
	.uleb128 0x6
	.string	"Sl_TstRsltType"
	.byte	0x5
	.uahalf	0x2a3
	.uaword	0x828
	.uleb128 0x6
	.string	"Sl_ParamSetType"
	.byte	0x5
	.uahalf	0x2ac
	.uaword	0x828
	.uleb128 0x9
	.string	"Smu_StateType"
	.byte	0x6
	.byte	0x9e
	.uaword	0x80f
	.uleb128 0x9
	.string	"Smu_AlarmActionType"
	.byte	0x7
	.byte	0x44
	.uaword	0x80f
	.uleb128 0x9
	.string	"Smu_FSPActionType"
	.byte	0x7
	.byte	0x46
	.uaword	0x80f
	.uleb128 0x9
	.string	"unsigned_int"
	.byte	0x8
	.byte	0x7a
	.uaword	0x75
	.uleb128 0xc
	.byte	0x1
	.string	"__crc32"
	.byte	0x2
	.uahalf	0x189
	.byte	0x1
	.uaword	0x75
	.byte	0x3
	.uaword	0xc78
	.uleb128 0xd
	.string	"b"
	.byte	0x2
	.uahalf	0x189
	.uaword	0x75
	.uleb128 0xd
	.string	"a"
	.byte	0x2
	.uahalf	0x189
	.uaword	0x75
	.uleb128 0xe
	.string	"res"
	.byte	0x2
	.uahalf	0x18a
	.uaword	0x75
	.byte	0
	.uleb128 0xf
	.string	"SffTst_lCheckPrerequisites"
	.byte	0x1
	.uahalf	0x12d
	.byte	0x1
	.uaword	0xbb4
	.byte	0x1
	.uaword	0xcba
	.uleb128 0x10
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x12f
	.uaword	0xbb4
	.uleb128 0x10
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x130
	.uaword	0x828
	.byte	0
	.uleb128 0xf
	.string	"SffTst_lInit"
	.byte	0x1
	.uahalf	0x16d
	.byte	0x1
	.uaword	0xbb4
	.byte	0x1
	.uaword	0xd11
	.uleb128 0x11
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x16f
	.uaword	0xd11
	.uleb128 0x11
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x170
	.uaword	0xd1c
	.uleb128 0x10
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x173
	.uaword	0xbb4
	.uleb128 0xe
	.string	"FspActionDummy"
	.byte	0x1
	.uahalf	0x174
	.uaword	0xc13
	.byte	0
	.uleb128 0x12
	.uaword	0xd16
	.uleb128 0x13
	.byte	0x4
	.uaword	0xbf8
	.uleb128 0x12
	.uaword	0xd21
	.uleb128 0x13
	.byte	0x4
	.uaword	0x828
	.uleb128 0xf
	.string	"SffTst_lRestore"
	.byte	0x1
	.uahalf	0x26a
	.byte	0x1
	.uaword	0xbb4
	.byte	0x1
	.uaword	0xd6a
	.uleb128 0x11
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x26c
	.uaword	0xd6a
	.uleb128 0x11
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x26d
	.uaword	0xd1c
	.uleb128 0x10
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x270
	.uaword	0xbb4
	.byte	0
	.uleb128 0x12
	.uaword	0xd6f
	.uleb128 0x13
	.byte	0x4
	.uaword	0xd75
	.uleb128 0x12
	.uaword	0xbf8
	.uleb128 0xf
	.string	"SffTst_lTstExecute"
	.byte	0x1
	.uahalf	0x1cb
	.byte	0x1
	.uaword	0xbb4
	.byte	0x1
	.uaword	0xe01
	.uleb128 0x11
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x1cd
	.uaword	0xd1c
	.uleb128 0x10
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x1d0
	.uaword	0xbb4
	.uleb128 0x10
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x1d1
	.uaword	0x828
	.uleb128 0xe
	.string	"RmTimeout"
	.byte	0x1
	.uahalf	0x1d2
	.uaword	0x80f
	.uleb128 0xe
	.string	"SffRmActiveBits"
	.byte	0x1
	.uahalf	0x1d3
	.uaword	0x828
	.uleb128 0xe
	.string	"SffRmErrorBits"
	.byte	0x1
	.uahalf	0x1d4
	.uaword	0x828
	.byte	0
	.uleb128 0x14
	.byte	0x1
	.string	"SffTst_SffTst"
	.byte	0x1
	.byte	0xdd
	.byte	0x1
	.uaword	0xbb4
	.uaword	.LFB18
	.uaword	.LFE18
	.uaword	.LLST0
	.uaword	0x1092
	.uleb128 0x15
	.string	"ParamSetIndex"
	.byte	0x1
	.byte	0xdf
	.uaword	0x1092
	.uaword	.LLST1
	.uleb128 0x15
	.string	"TstSeed"
	.byte	0x1
	.byte	0xe0
	.uaword	0x1097
	.uaword	.LLST2
	.uleb128 0x16
	.uaword	.LASF3
	.byte	0x1
	.byte	0xe1
	.uaword	0xd1c
	.uaword	.LLST3
	.uleb128 0x17
	.uaword	.LASF0
	.byte	0x1
	.byte	0xe4
	.uaword	0xbb4
	.uaword	.LLST4
	.uleb128 0x18
	.string	"TempResult"
	.byte	0x1
	.byte	0xe5
	.uaword	0xbb4
	.uaword	.LLST5
	.uleb128 0x17
	.uaword	.LASF2
	.byte	0x1
	.byte	0xe6
	.uaword	0xbf8
	.uaword	.LLST6
	.uleb128 0x19
	.uaword	0xc40
	.uaword	.LBB40
	.uaword	.LBE40
	.byte	0x1
	.byte	0xeb
	.uaword	0xecd
	.uleb128 0x1a
	.uaword	0xc61
	.uaword	.LLST7
	.uleb128 0x1b
	.uaword	0xc57
	.byte	0x25
	.uleb128 0x1c
	.uaword	.LBB41
	.uaword	.LBE41
	.uleb128 0x1d
	.uaword	0xc6b
	.uaword	.LLST8
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uaword	0xc78
	.uaword	.LBB42
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0xee
	.uaword	0xef9
	.uleb128 0x1f
	.uaword	.Ldebug_ranges0+0x18
	.uleb128 0x1d
	.uaword	0xca1
	.uaword	.LLST9
	.uleb128 0x1d
	.uaword	0xcad
	.uaword	.LLST10
	.byte	0
	.byte	0
	.uleb128 0x20
	.uaword	0xc40
	.uaword	.LBB45
	.uaword	.LBE45
	.byte	0x1
	.uahalf	0x106
	.uaword	0xf33
	.uleb128 0x1a
	.uaword	0xc61
	.uaword	.LLST11
	.uleb128 0x1a
	.uaword	0xc57
	.uaword	.LLST12
	.uleb128 0x1c
	.uaword	.LBB46
	.uaword	.LBE46
	.uleb128 0x1d
	.uaword	0xc6b
	.uaword	.LLST13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uaword	0xcba
	.uaword	.LBB48
	.uaword	.Ldebug_ranges0+0x30
	.byte	0x1
	.byte	0xf3
	.uaword	0xfa4
	.uleb128 0x21
	.uaword	0xce1
	.byte	0x1
	.byte	0x6f
	.uleb128 0x21
	.uaword	0xcd5
	.byte	0x3
	.byte	0x91
	.sleb128 -4
	.byte	0x9f
	.uleb128 0x1f
	.uaword	.Ldebug_ranges0+0x58
	.uleb128 0x1d
	.uaword	0xced
	.uaword	.LLST14
	.uleb128 0x22
	.uaword	0xcf9
	.byte	0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x23
	.uaword	0xc40
	.uaword	.LBB50
	.uaword	.LBE50
	.byte	0x1
	.uahalf	0x194
	.uleb128 0x1a
	.uaword	0xc61
	.uaword	.LLST15
	.uleb128 0x1a
	.uaword	0xc57
	.uaword	.LLST16
	.uleb128 0x1c
	.uaword	.LBB51
	.uaword	.LBE51
	.uleb128 0x1d
	.uaword	0xc6b
	.uaword	.LLST17
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uaword	0xd7a
	.uaword	.LBB56
	.uaword	.Ldebug_ranges0+0x80
	.byte	0x1
	.byte	0xf8
	.uaword	0x102a
	.uleb128 0x1a
	.uaword	0xd9b
	.uaword	.LLST18
	.uleb128 0x1f
	.uaword	.Ldebug_ranges0+0xa8
	.uleb128 0x1d
	.uaword	0xda7
	.uaword	.LLST19
	.uleb128 0x1d
	.uaword	0xdb3
	.uaword	.LLST20
	.uleb128 0x1d
	.uaword	0xdbf
	.uaword	.LLST21
	.uleb128 0x1d
	.uaword	0xde9
	.uaword	.LLST22
	.uleb128 0x1d
	.uaword	0xdd1
	.uaword	.LLST23
	.uleb128 0x23
	.uaword	0xc40
	.uaword	.LBB58
	.uaword	.LBE58
	.byte	0x1
	.uahalf	0x242
	.uleb128 0x1a
	.uaword	0xc61
	.uaword	.LLST24
	.uleb128 0x1a
	.uaword	0xc57
	.uaword	.LLST25
	.uleb128 0x1c
	.uaword	.LBB59
	.uaword	.LBE59
	.uleb128 0x1d
	.uaword	0xc6b
	.uaword	.LLST26
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
	.uaword	0xd27
	.uaword	.LBB63
	.uaword	.Ldebug_ranges0+0xd0
	.byte	0x1
	.byte	0xfb
	.uleb128 0x1a
	.uaword	0xd51
	.uaword	.LLST27
	.uleb128 0x1a
	.uaword	0xd45
	.uaword	.LLST28
	.uleb128 0x1f
	.uaword	.Ldebug_ranges0+0xf8
	.uleb128 0x1d
	.uaword	0xd5d
	.uaword	.LLST29
	.uleb128 0x23
	.uaword	0xc40
	.uaword	.LBB65
	.uaword	.LBE65
	.byte	0x1
	.uahalf	0x294
	.uleb128 0x1a
	.uaword	0xc61
	.uaword	.LLST30
	.uleb128 0x1a
	.uaword	0xc57
	.uaword	.LLST31
	.uleb128 0x1c
	.uaword	.LBB66
	.uaword	.LBE66
	.uleb128 0x1d
	.uaword	0xc6b
	.uaword	.LLST32
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.uaword	0xbcb
	.uleb128 0x12
	.uaword	0x80f
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
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
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
	.uleb128 0x4
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
	.uleb128 0x5
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
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0x12
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0xb
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
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL3-1
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL0
	.uaword	.LVL3-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL3-1
	.uaword	.LFE18
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL0
	.uaword	.LVL4
	.uahalf	0x6
	.byte	0xc
	.uaword	0x25010a
	.byte	0x9f
	.uaword	.LVL5
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL8
	.uaword	.LVL10
	.uahalf	0x6
	.byte	0xc
	.uaword	0x25010a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL0
	.uaword	.LVL5
	.uahalf	0x6
	.byte	0xc
	.uaword	0x25010a
	.byte	0x9f
	.uaword	.LVL8
	.uaword	.LVL28
	.uahalf	0x6
	.byte	0xc
	.uaword	0x25010a
	.byte	0x9f
	.uaword	.LVL30
	.uaword	.LFE18
	.uahalf	0x6
	.byte	0xc
	.uaword	0x25010a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL5
	.uaword	.LVL8
	.uahalf	0x2
	.byte	0x91
	.sleb128 -4
	.uaword	.LVL12
	.uaword	.LVL30
	.uahalf	0x2
	.byte	0x91
	.sleb128 -4
	.uaword	.LVL32
	.uaword	.LVL44
	.uahalf	0x2
	.byte	0x91
	.sleb128 -4
	.uaword	.LVL46
	.uaword	.LFE18
	.uahalf	0x2
	.byte	0x91
	.sleb128 -4
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL0
	.uaword	.LVL1
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
.LLST8:
	.uaword	.LVL1
	.uaword	.LVL3-1
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL2
	.uaword	.LVL4
	.uahalf	0x6
	.byte	0xc
	.uaword	0x25010a
	.byte	0x9f
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL8
	.uaword	.LVL10
	.uahalf	0x6
	.byte	0xc
	.uaword	0x25010a
	.byte	0x9f
	.uaword	.LVL10
	.uaword	.LFE18
	.uahalf	0x6
	.byte	0xc
	.uaword	0x2501ff
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL4
	.uaword	.LVL8
	.uahalf	0x2
	.byte	0x91
	.sleb128 -8
	.uaword	.LVL9
	.uaword	.LFE18
	.uahalf	0x2
	.byte	0x91
	.sleb128 -8
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL5
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL5
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL7
	.uaword	.LVL8
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL10
	.uaword	.LVL11
	.uahalf	0x6
	.byte	0xc
	.uaword	0x25010a
	.byte	0x9f
	.uaword	.LVL11
	.uaword	.LVL13
	.uahalf	0x6
	.byte	0xc
	.uaword	0x250210
	.byte	0x9f
	.uaword	.LVL13
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL30
	.uaword	.LVL31
	.uahalf	0x6
	.byte	0xc
	.uaword	0x25010a
	.byte	0x9f
	.uaword	.LVL31
	.uaword	.LVL33
	.uahalf	0x6
	.byte	0xc
	.uaword	0x250211
	.byte	0x9f
	.uaword	.LVL33
	.uaword	.LVL36
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL44
	.uaword	.LVL45
	.uahalf	0x6
	.byte	0xc
	.uaword	0x25010a
	.byte	0x9f
	.uaword	.LVL45
	.uaword	.LVL46
	.uahalf	0x6
	.byte	0xc
	.uaword	0x2501ff
	.byte	0x9f
	.uaword	.LVL48
	.uaword	.LVL50
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL13
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL33
	.uaword	.LVL36
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL48
	.uaword	.LVL50
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL13
	.uaword	.LVL17-1
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL14
	.uaword	.LVL17-1
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL15
	.uaword	.LVL30
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL33
	.uaword	.LVL44
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL46
	.uaword	.LFE18
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL15
	.uaword	.LVL22
	.uahalf	0x6
	.byte	0xc
	.uaword	0x25010a
	.byte	0x9f
	.uaword	.LVL22
	.uaword	.LVL29
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL33
	.uaword	.LVL38
	.uahalf	0x6
	.byte	0xc
	.uaword	0x25010a
	.byte	0x9f
	.uaword	.LVL38
	.uaword	.LVL39
	.uahalf	0x6
	.byte	0xc
	.uaword	0x251409
	.byte	0x9f
	.uaword	.LVL39
	.uaword	.LVL40
	.uahalf	0x6
	.byte	0xc
	.uaword	0x251408
	.byte	0x9f
	.uaword	.LVL40
	.uaword	.LVL41
	.uahalf	0x6
	.byte	0xc
	.uaword	0x251407
	.byte	0x9f
	.uaword	.LVL41
	.uaword	.LVL42
	.uahalf	0x6
	.byte	0xc
	.uaword	0x251406
	.byte	0x9f
	.uaword	.LVL42
	.uaword	.LVL43
	.uahalf	0x6
	.byte	0xc
	.uaword	0x25140a
	.byte	0x9f
	.uaword	.LVL43
	.uaword	.LVL44
	.uahalf	0x6
	.byte	0xc
	.uaword	0x25140b
	.byte	0x9f
	.uaword	.LVL46
	.uaword	.LVL48
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL48
	.uaword	.LFE18
	.uahalf	0x6
	.byte	0xc
	.uaword	0x25010a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL5
	.uaword	.LVL8
	.uahalf	0x2
	.byte	0x91
	.sleb128 -8
	.uaword	.LVL16
	.uaword	.LVL30
	.uahalf	0x2
	.byte	0x91
	.sleb128 -8
	.uaword	.LVL33
	.uaword	.LVL44
	.uahalf	0x2
	.byte	0x91
	.sleb128 -8
	.uaword	.LVL46
	.uaword	.LFE18
	.uahalf	0x2
	.byte	0x91
	.sleb128 -8
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL16
	.uaword	.LVL18
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL19
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL33
	.uaword	.LVL34
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL16
	.uaword	.LVL22
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL33
	.uaword	.LVL35
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL35
	.uaword	.LVL37
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL37
	.uaword	.LVL44
	.uahalf	0x3
	.byte	0x72
	.sleb128 2
	.byte	0x9f
	.uaword	.LVL48
	.uaword	.LVL49-1
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL16
	.uaword	.LVL30
	.uahalf	0x2
	.byte	0x37
	.byte	0x9f
	.uaword	.LVL33
	.uaword	.LVL44
	.uahalf	0x2
	.byte	0x37
	.byte	0x9f
	.uaword	.LVL46
	.uaword	.LFE18
	.uahalf	0x2
	.byte	0x37
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL22
	.uaword	.LVL23
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL22
	.uaword	.LVL25-1
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL23
	.uaword	.LVL25-1
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL24
	.uaword	.LVL30
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL46
	.uaword	.LVL48
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL24
	.uaword	.LVL30
	.uahalf	0x3
	.byte	0x91
	.sleb128 -4
	.byte	0x9f
	.uaword	.LVL46
	.uaword	.LVL48
	.uahalf	0x3
	.byte	0x91
	.sleb128 -4
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL24
	.uaword	.LVL26
	.uahalf	0x6
	.byte	0xc
	.uaword	0x25010a
	.byte	0x9f
	.uaword	.LVL26
	.uaword	.LVL30
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL46
	.uaword	.LVL47
	.uahalf	0x6
	.byte	0xc
	.uaword	0x25010a
	.byte	0x9f
	.uaword	.LVL47
	.uaword	.LVL48
	.uahalf	0x6
	.byte	0xc
	.uaword	0x2501ff
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL26
	.uaword	.LVL30
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST31:
	.uaword	.LVL26
	.uaword	.LVL30
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST32:
	.uaword	.LVL27
	.uaword	.LVL30
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
	.uaword	.LBB42
	.uaword	.LBE42
	.uaword	.LBB47
	.uaword	.LBE47
	.uaword	0
	.uaword	0
	.uaword	.LBB43
	.uaword	.LBE43
	.uaword	.LBB44
	.uaword	.LBE44
	.uaword	0
	.uaword	0
	.uaword	.LBB48
	.uaword	.LBE48
	.uaword	.LBB55
	.uaword	.LBE55
	.uaword	.LBB73
	.uaword	.LBE73
	.uaword	.LBB75
	.uaword	.LBE75
	.uaword	0
	.uaword	0
	.uaword	.LBB49
	.uaword	.LBE49
	.uaword	.LBB52
	.uaword	.LBE52
	.uaword	.LBB53
	.uaword	.LBE53
	.uaword	.LBB54
	.uaword	.LBE54
	.uaword	0
	.uaword	0
	.uaword	.LBB56
	.uaword	.LBE56
	.uaword	.LBB70
	.uaword	.LBE70
	.uaword	.LBB74
	.uaword	.LBE74
	.uaword	.LBB77
	.uaword	.LBE77
	.uaword	0
	.uaword	0
	.uaword	.LBB57
	.uaword	.LBE57
	.uaword	.LBB60
	.uaword	.LBE60
	.uaword	.LBB61
	.uaword	.LBE61
	.uaword	.LBB62
	.uaword	.LBE62
	.uaword	0
	.uaword	0
	.uaword	.LBB63
	.uaword	.LBE63
	.uaword	.LBB71
	.uaword	.LBE71
	.uaword	.LBB72
	.uaword	.LBE72
	.uaword	.LBB76
	.uaword	.LBE76
	.uaword	0
	.uaword	0
	.uaword	.LBB64
	.uaword	.LBE64
	.uaword	.LBB67
	.uaword	.LBE67
	.uaword	.LBB68
	.uaword	.LBE68
	.uaword	.LBB69
	.uaword	.LBE69
	.uaword	0
	.uaword	0
	.uaword	.LFB18
	.uaword	.LFE18
	.uaword	0
	.uaword	0
	.section .debug_line,"",@progbits
.Ldebug_line0:
	.section .debug_str,"",@progbits
.LASF1:
	.string	"AlarmStatus"
.LASF3:
	.string	"TstSignature"
.LASF2:
	.string	"BackupData"
.LASF0:
	.string	"Result"
	.extern	Smu_SetAlarmAction,STT_FUNC,0
	.extern	Smu_ClearAlarmStatus,STT_FUNC,0
	.extern	Mcal_SetSafetyENDINIT_Timed,STT_FUNC,0
	.extern	Mcal_ResetSafetyENDINIT_Timed,STT_FUNC,0
	.extern	Smu_GetAlarmAction,STT_FUNC,0
	.extern	Smu_GetAlarmStatus,STT_FUNC,0
	.extern	Smu_GetSmuState,STT_FUNC,0
	.ident	"GCC: (HighTec Release v4.6.3.0) 4.6.3 build on 2013-05-17"
