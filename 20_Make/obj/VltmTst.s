	.file	"VltmTst.c"
.section .text,"ax",@progbits
.Ltext0:
	.section .text.STL_ASIL_CODE,"ax",@progbits
	.align 2
	.global	VltmTst_VltmTst
	.type	VltmTst_VltmTst, @function
VltmTst_VltmTst:
.LFB23:
	.file 1 "../30_Bsw/MicroTestLib/Static/VltmTst.c"
	.loc 1 734 0
.LVL0:
	.loc 1 742 0
	movh.a	%a12, hi:-268213856
	lea	%a12, [%a12] lo:-268213856
	ld.w	%d15, [%a12]0
	.loc 1 743 0
	movh.a	%a13, hi:-268213852
	lea	%a13, [%a13] lo:-268213852
	.loc 1 742 0
	sh	%d9, %d15, -31
.LVL1:
	.loc 1 743 0
	ld.w	%d15, [%a13]0
.LVL2:
	.loc 1 734 0
	sub.a	%SP, 32
.LCFI0:
	.loc 1 743 0
	sh	%d10, %d15, -31
.LVL3:
	.loc 1 734 0
	mov.aa	%a15, %a4
.LBB30:
.LBB31:
	.file 2 "../30_Bsw/STL_common/Mcal_Compiler.h"
	.loc 2 400 0
	mov	%d15, 13
.LVL4:
#APP
	# 400 "../30_Bsw/STL_common/Mcal_Compiler.h" 1
	crc32 %d5, %d5, %d15
	# 0 "" 2
.LVL5:
#NO_APP
.LBE31:
.LBE30:
	.loc 1 748 0
	st.w	[%a4]0, %d5
	.loc 1 751 0
	call	Smu_GetSmuState
.LVL6:
	.loc 1 809 0
	movh	%d15, 13
	.loc 1 751 0
	mov	%d8, %d2
	.loc 1 809 0
	addi	%d15, %d15, 524
	.loc 1 751 0
	jeq	%d2, 1, .L36
.LVL7:
.L2:
.LBB32:
.LBB33:
	.loc 2 400 0
	ld.w	%d2, [%a15]0
#APP
	# 400 "../30_Bsw/STL_common/Mcal_Compiler.h" 1
	crc32 %d2, %d15, %d2
	# 0 "" 2
.LVL8:
#NO_APP
.LBE33:
.LBE32:
	.loc 1 812 0
	st.w	[%a15]0, %d2
	.loc 1 814 0
	mov	%d2, %d15
.LVL9:
	ret
.LVL10:
.L36:
	.loc 1 756 0
	movh.a	%a14, hi:-268213848
	lea	%a14, [%a14] lo:-268213848
	ld.w	%d15, [%a14]0
.LVL11:
	.loc 1 755 0
	extr.u	%d15, %d15, 30, 1
.LVL12:
	.loc 1 758 0
	or	%d9, %d15
	.loc 1 765 0
	movh	%d15, 13
	addi	%d15, %d15, 264
	.loc 1 758 0
	jnz	%d9, .L2
	.loc 1 760 0
	jeq	%d10, 1, .L2
	.loc 1 768 0
	movh.a	%a2, hi:-268214096
	lea	%a2, [%a2] lo:-268214096
	ld.w	%d2, [%a2]0
	.loc 1 770 0
	movh	%d15, 13
	addi	%d15, %d15, 263
	.loc 1 768 0
	jz.t	%d2, 10, .L2
.LVL13:
.LBB34:
.LBB35:
	.loc 1 153 0
	st.w	[%SP] 24, %d9
.LVL14:
	.loc 1 156 0
	ld.w	%d15, [%a13]0
	st.w	[%SP] 8, %d15
	.loc 1 157 0
	ld.w	%d15, [%a12]0
	st.w	[%SP] 12, %d15
	.loc 1 160 0
	ld.w	%d15, [%a14]0
	st.w	[%SP] 16, %d15
	.loc 1 164 0
	movh	%d15, 33
	addi	%d15, %d15, 33
	.loc 1 163 0
	mov	%d4, 22960
	call	Mcal_ResetSafetyENDINIT_Timed
	.loc 1 164 0
	st.w	[%a14]0, %d15
	.loc 1 165 0
	call	Mcal_SetSafetyENDINIT_Timed
	.loc 1 169 0
	mov	%d4, 3
	mov	%d5, 11
	lea	%a4, [%SP] 4
	lea	%a5, [%SP] 28
	call	Smu_GetAlarmAction
	.loc 1 173 0
	mov	%d4, 3
	mov	%d5, 12
	lea	%a4, [%SP] 5
	lea	%a5, [%SP] 28
	.loc 1 169 0
	mov	%d15, %d2
.LVL15:
	.loc 1 173 0
	call	Smu_GetAlarmAction
.LVL16:
	.loc 1 177 0
	mov	%d4, 3
	mov	%d5, 15
	lea	%a4, [%SP] 6
	lea	%a5, [%SP] 28
	.loc 1 173 0
	mov	%d10, %d2
.LVL17:
	.loc 1 177 0
	call	Smu_GetAlarmAction
.LVL18:
	mov	%d9, %d2
.LVL19:
	.loc 1 181 0
	mov	%d4, 3
	mov	%d5, 16
	lea	%a4, [%SP] 7
	lea	%a5, [%SP] 28
	.loc 1 202 0
	or	%d15, %d10
.LVL20:
	.loc 1 181 0
	call	Smu_GetAlarmAction
.LVL21:
	.loc 1 202 0
	or	%d15, %d9
	or	%d15, %d2
	and	%d2, %d15, 255
.LVL22:
	jz	%d2, .L3
	.loc 1 207 0
	movh	%d15, 13
	.loc 1 206 0
	st.b	[%SP] 20, %d8
.LVL23:
	.loc 1 207 0
	addi	%d15, %d15, 528
.LVL24:
.L4:
.LBE35:
.LBE34:
.LBB38:
.LBB39:
	.loc 1 736 0
	mov	%d9, 0
.LVL25:
.L7:
.LBE39:
.LBE38:
.LBB45:
.LBB46:
	.loc 1 315 0
	mov	%d4, 22960
	call	Mcal_ResetSafetyENDINIT_Timed
	.loc 1 316 0
	movh.a	%a2, hi:-268213852
	lea	%a2, [%a2] lo:-268213852
	ld.w	%d2, [%SP] 8
	st.w	[%a2]0, %d2
	.loc 1 318 0
	call	Mcal_SetSafetyENDINIT_Timed
	.loc 1 321 0
	mov	%d4, 22960
	call	Mcal_ResetSafetyENDINIT_Timed
	.loc 1 322 0
	movh.a	%a2, hi:-268213856
	lea	%a2, [%a2] lo:-268213856
	ld.w	%d2, [%SP] 12
	st.w	[%a2]0, %d2
	.loc 1 323 0
	call	Mcal_SetSafetyENDINIT_Timed
	.loc 1 326 0
	mov	%d4, 22960
	call	Mcal_ResetSafetyENDINIT_Timed
	.loc 1 327 0
	movh.a	%a2, hi:-268213848
	ld.w	%d2, [%SP] 16
	lea	%a2, [%a2] lo:-268213848
	st.w	[%a2]0, %d2
	.loc 1 328 0
	call	Mcal_SetSafetyENDINIT_Timed
	.loc 1 331 0
	ld.bu	%d2, [%SP] 20
	.loc 1 376 0
	movh	%d8, 13
	addi	%d8, %d8, 511
	.loc 1 331 0
	jnz	%d2, .L16
	.loc 1 333 0
	ld.bu	%d6, [%SP] 4
	mov	%d4, 3
	mov	%d5, 11
	call	Smu_SetAlarmAction
	.loc 1 337 0
	ld.bu	%d6, [%SP] 5
	mov	%d4, 3
	mov	%d5, 12
	.loc 1 333 0
	mov	%d11, %d2
.LVL26:
	.loc 1 337 0
	call	Smu_SetAlarmAction
.LVL27:
	.loc 1 341 0
	ld.bu	%d6, [%SP] 6
	mov	%d4, 3
	mov	%d5, 15
	.loc 1 337 0
	mov	%d12, %d2
.LVL28:
	.loc 1 341 0
	call	Smu_SetAlarmAction
.LVL29:
	.loc 1 345 0
	ld.bu	%d6, [%SP] 7
	mov	%d4, 3
	mov	%d5, 16
	.loc 1 341 0
	mov	%d10, %d2
.LVL30:
	.loc 1 345 0
	call	Smu_SetAlarmAction
.LVL31:
	.loc 1 363 0
	or	%d3, %d12, %d11
	or	%d3, %d10
	or	%d2, %d3
.LVL32:
	.loc 1 367 0
	movh	%d4, 13
	.loc 1 363 0
	and	%d2, %d2, 255
	.loc 1 367 0
	addi	%d4, %d4, 529
	seln	%d8, %d2, %d8, %d4
.LVL33:
.L16:
.LBE46:
.LBE45:
	.loc 1 793 0
	movh	%d2, 13
	addi	%d2, %d2, 511
	jne	%d15, %d2, .L2
	.loc 1 796 0
	eq	%d15, %d9, %d15
.LVL34:
	sel	%d15, %d15, %d8, %d9
	j	.L2
.LVL35:
.L3:
.LBB47:
.LBB36:
	.loc 1 214 0
	mov	%d4, 3
	lea	%a4, [%SP] 24
	.loc 1 211 0
	st.b	[%SP] 20, %d15
	.loc 1 224 0
	movh	%d15, 13
	.loc 1 214 0
	call	Smu_GetAlarmStatus
	.loc 1 224 0
	addi	%d15, %d15, 526
	.loc 1 214 0
	jnz	%d2, .L4
	.loc 1 217 0
	movh	%d15, 2
	ld.w	%d2, [%SP] 24
	addi	%d15, %d15, -26624
	and	%d15, %d2
	jz	%d15, .L6
	.loc 1 219 0
	movh	%d15, 13
	addi	%d15, %d15, 525
.LVL36:
	j	.L4
.LVL37:
.L6:
	.loc 1 230 0
	mov	%d4, 3
	mov	%d5, 11
	mov	%d6, 0
	call	Smu_SetAlarmAction
	.loc 1 234 0
	mov	%d4, 3
	mov	%d5, 12
	mov	%d6, 0
	.loc 1 230 0
	mov	%d15, %d2
.LVL38:
	.loc 1 234 0
	call	Smu_SetAlarmAction
.LVL39:
	.loc 1 238 0
	mov	%d4, 3
	mov	%d5, 15
	mov	%d6, 0
	.loc 1 234 0
	mov	%d9, %d2
.LVL40:
	.loc 1 238 0
	call	Smu_SetAlarmAction
.LVL41:
	mov	%d8, %d2
.LVL42:
	.loc 1 242 0
	mov	%d4, 3
	mov	%d5, 16
	mov	%d6, 0
	.loc 1 260 0
	or	%d15, %d9
.LVL43:
	.loc 1 242 0
	call	Smu_SetAlarmAction
.LVL44:
	.loc 1 260 0
	or	%d15, %d8
	or	%d2, %d15
.LVL45:
	and	%d2, %d2, 255
	jz	%d2, .L17
	.loc 1 264 0
	movh	%d15, 13
	addi	%d15, %d15, 529
	j	.L4
.L17:
.LVL46:
.LBE36:
.LBE47:
.LBB48:
.LBB49:
	.loc 1 491 0
	mov	%d15, -128
	.loc 1 488 0
	mov	%d4, 22960
	.loc 1 486 0
	st.w	[%SP] 28, %d2
.LVL47:
	.loc 1 488 0
	call	Mcal_ResetSafetyENDINIT_Timed
	.loc 1 491 0
	st.b	[%a12] 2, %d15
	.loc 1 497 0
	movh	%d15, 255
	addi	%d15, %d15, 255
	.loc 1 492 0
	call	Mcal_SetSafetyENDINIT_Timed
	.loc 1 496 0
	mov	%d4, 22960
	call	Mcal_ResetSafetyENDINIT_Timed
	.loc 1 497 0
	st.w	[%a12]0, %d15
	.loc 1 498 0
	call	Mcal_SetSafetyENDINIT_Timed
	.loc 1 500 0
	mov	%d4, 22960
	call	Mcal_ResetSafetyENDINIT_Timed
	.loc 1 501 0
	st.w	[%a13]0, %d15
	.loc 1 502 0
	call	Mcal_SetSafetyENDINIT_Timed
.LVL48:
	lea	%a12, 2000
	.loc 1 520 0
	mov.u	%d15, 34816
.LVL49:
.L10:
	.loc 1 509 0
	mov	%d4, 3
	lea	%a4, [%SP] 28
	call	Smu_GetAlarmStatus
.LVL50:
	.loc 1 511 0
	jnz	%d2, .L8
	.loc 1 520 0
	ld.w	%d2, [%SP] 28
.LVL51:
	and	%d3, %d2, %d15
	jeq	%d3, %d15, .L23
	add.a	%a12, -1
	.loc 1 507 0
	jnz.a	%a12, .L10
	.loc 1 545 0
	movh	%d15, 13
	addi	%d15, %d15, 12293
	.loc 1 543 0
	jz.t	%d2, 15, .L11
	.loc 1 548 0
	mov	%d15, 2048
	and	%d4, %d15, %d2
	movh	%d3, 13
	movh	%d15, 13
	addi	%d3, %d3, 266
	addi	%d15, %d15, 12294
	seln	%d15, %d4, %d15, %d3
	j	.L11
.LVL52:
.L8:
	.loc 1 513 0
	movh	%d15, 13
.LBE49:
.LBE48:
.LBB56:
.LBB37:
	.loc 1 260 0
	ld.w	%d2, [%SP] 28
.LVL53:
.LBE37:
.LBE56:
.LBB57:
.LBB54:
	.loc 1 513 0
	addi	%d15, %d15, 528
.LVL54:
.L11:
	.loc 1 557 0
	mov.u	%d3, 34816
.LBB50:
.LBB51:
	.loc 2 400 0
	ld.w	%d4, [%a15]0
.LBE51:
.LBE50:
	.loc 1 557 0
	and	%d2, %d3
.LVL55:
.LBB53:
.LBB52:
	.loc 2 400 0
#APP
	# 400 "../30_Bsw/STL_common/Mcal_Compiler.h" 1
	crc32 %d2, %d2, %d4
	# 0 "" 2
.LVL56:
#NO_APP
.LBE52:
.LBE53:
	.loc 1 557 0
	st.w	[%a15]0, %d2
.LBE54:
.LBE57:
	.loc 1 781 0
	movh	%d2, 13
.LVL57:
	addi	%d2, %d2, 511
	jeq	%d15, %d2, .L37
.LVL58:
.L12:
.LBB58:
.LBB59:
	.loc 1 419 0
	mov	%d4, 3
	mov	%d5, 11
	call	Smu_ClearAlarmStatus
	.loc 1 420 0
	mov	%d4, 3
	mov	%d5, 12
	.loc 1 419 0
	mov	%d9, %d2
.LVL59:
	.loc 1 420 0
	call	Smu_ClearAlarmStatus
.LVL60:
	.loc 1 421 0
	mov	%d4, 3
	mov	%d5, 15
	.loc 1 420 0
	mov	%d10, %d2
.LVL61:
	.loc 1 421 0
	call	Smu_ClearAlarmStatus
.LVL62:
	.loc 1 422 0
	mov	%d4, 3
	mov	%d5, 16
	.loc 1 421 0
	mov	%d8, %d2
.LVL63:
	.loc 1 422 0
	call	Smu_ClearAlarmStatus
.LVL64:
	.loc 1 433 0
	or	%d3, %d10, %d9
	or	%d3, %d8
	or	%d2, %d3
.LVL65:
	.loc 1 437 0
	movh	%d4, 13
	movh	%d5, 13
	.loc 1 433 0
	and	%d2, %d2, 255
	.loc 1 437 0
	addi	%d4, %d4, 527
	addi	%d5, %d5, 511
	seln	%d9, %d2, %d5, %d4
.LVL66:
	j	.L7
.LVL67:
.L23:
.LBE59:
.LBE58:
.LBB60:
.LBB55:
	.loc 1 529 0
	movh	%d15, 13
	addi	%d15, %d15, 511
.LVL68:
	j	.L11
.LVL69:
.L37:
.LBE55:
.LBE60:
.LBB61:
.LBB44:
	.loc 1 601 0
	mov.a	%a12, 0
	.loc 1 605 0
	mov	%d4, 22960
.LVL70:
	.loc 1 601 0
	st.a	[%SP] 28, %a12
.LVL71:
	.loc 1 605 0
	call	Mcal_ResetSafetyENDINIT_Timed
.LVL72:
	.loc 1 606 0
	movh.a	%a2, hi:-268213856
	lea	%a2, [%a2] lo:-268213856
	st.a	[%a2]0, %a12
	.loc 1 607 0
	call	Mcal_SetSafetyENDINIT_Timed
	.loc 1 609 0
	mov	%d4, 22960
	call	Mcal_ResetSafetyENDINIT_Timed
	.loc 1 610 0
	movh.a	%a2, hi:-268213852
	lea	%a2, [%a2] lo:-268213852
	st.a	[%a2]0, %a12
	.loc 1 628 0
	movh	%d8, 1
.LVL73:
	.loc 1 611 0
	call	Mcal_SetSafetyENDINIT_Timed
.LVL74:
	lea	%a12, 2000
	.loc 1 628 0
	addi	%d8, %d8, 4096
.LVL75:
.L14:
	.loc 1 618 0
	mov	%d4, 3
	lea	%a4, [%SP] 28
	call	Smu_GetAlarmStatus
.LVL76:
	.loc 1 619 0
	jnz	%d2, .L26
	.loc 1 628 0
	ld.w	%d2, [%SP] 28
.LVL77:
	and	%d3, %d2, %d8
	jeq	%d3, %d8, .L15
	add.a	%a12, -1
	.loc 1 616 0
	jnz.a	%a12, .L14
	.loc 1 653 0
	movh	%d15, 13
.LVL78:
	addi	%d15, %d15, 12290
	.loc 1 651 0
	jz.t	%d2, 16, .L15
	.loc 1 656 0
	mov	%d15, 4096
	and	%d4, %d15, %d2
	movh	%d3, 13
	movh	%d15, 13
	addi	%d3, %d3, 266
	addi	%d15, %d15, 12291
	seln	%d15, %d4, %d15, %d3
	j	.L15
.LVL79:
.L26:
	.loc 1 621 0
	movh	%d15, 13
.LVL80:
	ld.w	%d2, [%SP] 28
.LVL81:
	addi	%d15, %d15, 528
.LVL82:
.L15:
	.loc 1 665 0
	movh	%d3, 1
	addi	%d3, %d3, 4096
.LBB40:
.LBB41:
	.loc 2 400 0
	ld.w	%d4, [%a15]0
.LBE41:
.LBE40:
	.loc 1 665 0
	and	%d2, %d3
.LBB43:
.LBB42:
	.loc 2 400 0
#APP
	# 400 "../30_Bsw/STL_common/Mcal_Compiler.h" 1
	crc32 %d2, %d2, %d4
	# 0 "" 2
.LVL83:
#NO_APP
.LBE42:
.LBE43:
	.loc 1 665 0
	st.w	[%a15]0, %d2
	j	.L12
.LBE44:
.LBE61:
.LFE23:
	.size	VltmTst_VltmTst, .-VltmTst_VltmTst
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
	.uaword	.LFB23
	.uaword	.LFE23-.LFB23
	.byte	0x4
	.uaword	.LCFI0-.LFB23
	.byte	0xe
	.uleb128 0x20
	.align 2
.LEFDE0:
.section .text,"ax",@progbits
.Letext0:
	.file 3 "../30_Bsw/Common/Platform_Types.h"
	.file 4 "../30_Bsw/Common/Std_Types.h"
	.file 5 "../30_Bsw/STL_common/Mcal_TcLib.h"
	.file 6 "../30_Bsw/STL_common/Sl_ErrorCodes.h"
	.file 7 "../30_Bsw/Smu/Static/Smu.h"
	.file 8 "../30_Bsw/Smu/Static/SmuInt.h"
	.file 9 "../30_Bsw/MicroTestLib/Static/VltmTst.h"
	.file 10 "../30_Bsw/Common/TC21x/IfxScu_regdef.h"
	.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x1150
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.6.3 build on 2013-05-17"
	.byte	0x1
	.string	"../30_Bsw/MicroTestLib/Static/VltmTst.c"
	.string	"S:\\\\20_Make"
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_ranges0+0x110
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
	.uaword	0x80
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x3
	.string	"uint32"
	.byte	0x3
	.byte	0x5f
	.uaword	0xde
	.uleb128 0x3
	.string	"boolean"
	.byte	0x3
	.byte	0x63
	.uaword	0x80
	.uleb128 0x3
	.string	"Std_ReturnType"
	.byte	0x4
	.byte	0x71
	.uaword	0xfb
	.uleb128 0x3
	.string	"unsigned_int"
	.byte	0x5
	.byte	0x7a
	.uaword	0xbb
	.uleb128 0x4
	.byte	0x4
	.byte	0x6
	.byte	0x6d
	.uaword	0x4d9
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
	.uaword	0x114
	.uleb128 0x6
	.string	"Sl_ParamSetType"
	.byte	0x6
	.uahalf	0x2ac
	.uaword	0x114
	.uleb128 0x3
	.string	"Smu_StateType"
	.byte	0x7
	.byte	0x9e
	.uaword	0xfb
	.uleb128 0x3
	.string	"Smu_AlarmActionType"
	.byte	0x8
	.byte	0x44
	.uaword	0xfb
	.uleb128 0x3
	.string	"Smu_FSPActionType"
	.byte	0x8
	.byte	0x46
	.uaword	0xfb
	.uleb128 0x7
	.string	"VltmTst_BackupData"
	.byte	0x14
	.byte	0x9
	.byte	0xa6
	.uaword	0x65e
	.uleb128 0x8
	.string	"AlmActionBackupVDD_UV"
	.byte	0x9
	.byte	0xa9
	.uaword	0x51d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"AlmActionBackupVDD_OV"
	.byte	0x9
	.byte	0xab
	.uaword	0x51d
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x8
	.string	"AlmActionBackupVDDP3_UV"
	.byte	0x9
	.byte	0xad
	.uaword	0x51d
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x8
	.string	"AlmActionBackupVDDP3_OV"
	.byte	0x9
	.byte	0xaf
	.uaword	0x51d
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x8
	.string	"EvrOvMon_Backup"
	.byte	0x9
	.byte	0xb7
	.uaword	0x114
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.string	"EvrUvMon_Backup"
	.byte	0x9
	.byte	0xb9
	.uaword	0x114
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.string	"EvrMonCtrl_Backup"
	.byte	0x9
	.byte	0xbb
	.uaword	0x114
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.string	"GetAlmActionResult"
	.byte	0x9
	.byte	0xbd
	.uaword	0x131
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x3
	.string	"VltmTst_BackupDataType"
	.byte	0x9
	.byte	0xbe
	.uaword	0x551
	.uleb128 0x9
	.string	"_Ifx_SCU_EVRMONCTRL_Bits"
	.byte	0x4
	.byte	0xa
	.uahalf	0x13d
	.uaword	0x784
	.uleb128 0xa
	.string	"EVR13OVMOD"
	.byte	0xa
	.uahalf	0x13f
	.uaword	0xbb
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.uaword	.LASF0
	.byte	0xa
	.uahalf	0x140
	.uaword	0xbb
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"EVR13UVMOD"
	.byte	0xa
	.uahalf	0x141
	.uaword	0xbb
	.byte	0x4
	.byte	0x2
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.uaword	.LASF1
	.byte	0xa
	.uahalf	0x142
	.uaword	0xbb
	.byte	0x4
	.byte	0xa
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"SWDOVMOD"
	.byte	0xa
	.uahalf	0x143
	.uaword	0xbb
	.byte	0x4
	.byte	0x2
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"reserved_18"
	.byte	0xa
	.uahalf	0x144
	.uaword	0xbb
	.byte	0x4
	.byte	0x2
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"SWDUVMOD"
	.byte	0xa
	.uahalf	0x145
	.uaword	0xbb
	.byte	0x4
	.byte	0x2
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"reserved_22"
	.byte	0xa
	.uahalf	0x146
	.uaword	0xbb
	.byte	0x4
	.byte	0x8
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"SLCK"
	.byte	0xa
	.uahalf	0x147
	.uaword	0xbb
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"reserved_31"
	.byte	0xa
	.uahalf	0x148
	.uaword	0xbb
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x6
	.string	"Ifx_SCU_EVRMONCTRL_Bits"
	.byte	0xa
	.uahalf	0x149
	.uaword	0x67c
	.uleb128 0x9
	.string	"_Ifx_SCU_EVROVMON_Bits"
	.byte	0x4
	.byte	0xa
	.uahalf	0x14c
	.uaword	0x83e
	.uleb128 0xa
	.string	"EVR13OVVAL"
	.byte	0xa
	.uahalf	0x14e
	.uaword	0xbb
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.uaword	.LASF2
	.byte	0xa
	.uahalf	0x14f
	.uaword	0xbb
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"SWDOVVAL"
	.byte	0xa
	.uahalf	0x150
	.uaword	0xbb
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.uaword	.LASF3
	.byte	0xa
	.uahalf	0x151
	.uaword	0xbb
	.byte	0x4
	.byte	0x6
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"SLCK"
	.byte	0xa
	.uahalf	0x152
	.uaword	0xbb
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"LCK"
	.byte	0xa
	.uahalf	0x153
	.uaword	0xbb
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x6
	.string	"Ifx_SCU_EVROVMON_Bits"
	.byte	0xa
	.uahalf	0x154
	.uaword	0x7a4
	.uleb128 0x9
	.string	"_Ifx_SCU_EVRSTAT_Bits"
	.byte	0x4
	.byte	0xa
	.uahalf	0x196
	.uaword	0x971
	.uleb128 0xa
	.string	"EVR13"
	.byte	0xa
	.uahalf	0x198
	.uaword	0xbb
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"OV13"
	.byte	0xa
	.uahalf	0x199
	.uaword	0xbb
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.uaword	.LASF0
	.byte	0xa
	.uahalf	0x19a
	.uaword	0xbb
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"OVSWD"
	.byte	0xa
	.uahalf	0x19b
	.uaword	0xbb
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"UV13"
	.byte	0xa
	.uahalf	0x19c
	.uaword	0xbb
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.uaword	.LASF1
	.byte	0xa
	.uahalf	0x19d
	.uaword	0xbb
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"UVSWD"
	.byte	0xa
	.uahalf	0x19e
	.uaword	0xbb
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.uaword	.LASF2
	.byte	0xa
	.uahalf	0x19f
	.uaword	0xbb
	.byte	0x4
	.byte	0x2
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"BGPROK"
	.byte	0xa
	.uahalf	0x1a0
	.uaword	0xbb
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"reserved_11"
	.byte	0xa
	.uahalf	0x1a1
	.uaword	0xbb
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"SCMOD"
	.byte	0xa
	.uahalf	0x1a2
	.uaword	0xbb
	.byte	0x4
	.byte	0x2
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"reserved_14"
	.byte	0xa
	.uahalf	0x1a3
	.uaword	0xbb
	.byte	0x4
	.byte	0x12
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x6
	.string	"Ifx_SCU_EVRSTAT_Bits"
	.byte	0xa
	.uahalf	0x1a4
	.uaword	0x85c
	.uleb128 0x9
	.string	"_Ifx_SCU_EVRUVMON_Bits"
	.byte	0x4
	.byte	0xa
	.uahalf	0x1a7
	.uaword	0xa28
	.uleb128 0xa
	.string	"EVR13UVVAL"
	.byte	0xa
	.uahalf	0x1a9
	.uaword	0xbb
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.uaword	.LASF2
	.byte	0xa
	.uahalf	0x1aa
	.uaword	0xbb
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"SWDUVVAL"
	.byte	0xa
	.uahalf	0x1ab
	.uaword	0xbb
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.uaword	.LASF3
	.byte	0xa
	.uahalf	0x1ac
	.uaword	0xbb
	.byte	0x4
	.byte	0x6
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"SLCK"
	.byte	0xa
	.uahalf	0x1ad
	.uaword	0xbb
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"LCK"
	.byte	0xa
	.uahalf	0x1ae
	.uaword	0xbb
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x6
	.string	"Ifx_SCU_EVRUVMON_Bits"
	.byte	0xa
	.uahalf	0x1af
	.uaword	0x98e
	.uleb128 0xc
	.byte	0x4
	.byte	0xa
	.uahalf	0x503
	.uaword	0xa6e
	.uleb128 0xd
	.string	"U"
	.byte	0xa
	.uahalf	0x505
	.uaword	0xbb
	.uleb128 0xd
	.string	"I"
	.byte	0xa
	.uahalf	0x506
	.uaword	0xb4
	.uleb128 0xd
	.string	"B"
	.byte	0xa
	.uahalf	0x507
	.uaword	0x784
	.byte	0
	.uleb128 0x6
	.string	"Ifx_SCU_EVRMONCTRL"
	.byte	0xa
	.uahalf	0x508
	.uaword	0xa46
	.uleb128 0xc
	.byte	0x4
	.byte	0xa
	.uahalf	0x50b
	.uaword	0xab1
	.uleb128 0xd
	.string	"U"
	.byte	0xa
	.uahalf	0x50d
	.uaword	0xbb
	.uleb128 0xd
	.string	"I"
	.byte	0xa
	.uahalf	0x50e
	.uaword	0xb4
	.uleb128 0xd
	.string	"B"
	.byte	0xa
	.uahalf	0x50f
	.uaword	0x83e
	.byte	0
	.uleb128 0x6
	.string	"Ifx_SCU_EVROVMON"
	.byte	0xa
	.uahalf	0x510
	.uaword	0xa89
	.uleb128 0xc
	.byte	0x4
	.byte	0xa
	.uahalf	0x53b
	.uaword	0xaf2
	.uleb128 0xd
	.string	"U"
	.byte	0xa
	.uahalf	0x53d
	.uaword	0xbb
	.uleb128 0xd
	.string	"I"
	.byte	0xa
	.uahalf	0x53e
	.uaword	0xb4
	.uleb128 0xd
	.string	"B"
	.byte	0xa
	.uahalf	0x53f
	.uaword	0x971
	.byte	0
	.uleb128 0x6
	.string	"Ifx_SCU_EVRSTAT"
	.byte	0xa
	.uahalf	0x540
	.uaword	0xaca
	.uleb128 0xc
	.byte	0x4
	.byte	0xa
	.uahalf	0x543
	.uaword	0xb32
	.uleb128 0xd
	.string	"U"
	.byte	0xa
	.uahalf	0x545
	.uaword	0xbb
	.uleb128 0xd
	.string	"I"
	.byte	0xa
	.uahalf	0x546
	.uaword	0xb4
	.uleb128 0xd
	.string	"B"
	.byte	0xa
	.uahalf	0x547
	.uaword	0xa28
	.byte	0
	.uleb128 0x6
	.string	"Ifx_SCU_EVRUVMON"
	.byte	0xa
	.uahalf	0x548
	.uaword	0xb0a
	.uleb128 0xe
	.byte	0x1
	.string	"__crc32"
	.byte	0x2
	.uahalf	0x189
	.byte	0x1
	.uaword	0xbb
	.byte	0x3
	.uaword	0xb83
	.uleb128 0xf
	.string	"b"
	.byte	0x2
	.uahalf	0x189
	.uaword	0xbb
	.uleb128 0xf
	.string	"a"
	.byte	0x2
	.uahalf	0x189
	.uaword	0xbb
	.uleb128 0x10
	.string	"res"
	.byte	0x2
	.uahalf	0x18a
	.uaword	0xbb
	.byte	0
	.uleb128 0x11
	.string	"VltmTst_lClearSMUAlarms"
	.byte	0x1
	.uahalf	0x197
	.byte	0x1
	.uaword	0x4d9
	.byte	0x1
	.uaword	0xbe6
	.uleb128 0x12
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x199
	.uaword	0x4d9
	.uleb128 0x12
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x19a
	.uaword	0x131
	.uleb128 0x12
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x19b
	.uaword	0x131
	.uleb128 0x12
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x19c
	.uaword	0x131
	.uleb128 0x12
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x19d
	.uaword	0x131
	.byte	0
	.uleb128 0x13
	.string	"VltmTst_lInit"
	.byte	0x1
	.byte	0x8a
	.byte	0x1
	.uaword	0x4d9
	.byte	0x1
	.uaword	0xc5f
	.uleb128 0x14
	.uaword	.LASF9
	.byte	0x1
	.byte	0x8b
	.uaword	0xc5f
	.uleb128 0x15
	.uaword	.LASF4
	.byte	0x1
	.byte	0x8d
	.uaword	0x4d9
	.uleb128 0x15
	.uaword	.LASF5
	.byte	0x1
	.byte	0x8e
	.uaword	0x131
	.uleb128 0x15
	.uaword	.LASF6
	.byte	0x1
	.byte	0x8f
	.uaword	0x131
	.uleb128 0x15
	.uaword	.LASF7
	.byte	0x1
	.byte	0x90
	.uaword	0x131
	.uleb128 0x15
	.uaword	.LASF8
	.byte	0x1
	.byte	0x91
	.uaword	0x131
	.uleb128 0x16
	.string	"FspDummy"
	.byte	0x1
	.byte	0x98
	.uaword	0x538
	.uleb128 0x15
	.uaword	.LASF10
	.byte	0x1
	.byte	0x99
	.uaword	0x114
	.byte	0
	.uleb128 0x17
	.uaword	0xc64
	.uleb128 0x18
	.byte	0x4
	.uaword	0x65e
	.uleb128 0x11
	.string	"VltmTst_lCheckUnderVoltage"
	.byte	0x1
	.uahalf	0x1dd
	.byte	0x1
	.uaword	0x4d9
	.byte	0x1
	.uaword	0xce4
	.uleb128 0x19
	.uaword	.LASF11
	.byte	0x1
	.uahalf	0x1df
	.uaword	0xce4
	.uleb128 0x12
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x1e2
	.uaword	0x4d9
	.uleb128 0x10
	.string	"Timeout"
	.byte	0x1
	.uahalf	0x1e3
	.uaword	0x114
	.uleb128 0x10
	.string	"EndLoop"
	.byte	0x1
	.uahalf	0x1e4
	.uaword	0x122
	.uleb128 0x12
	.uaword	.LASF12
	.byte	0x1
	.uahalf	0x1e5
	.uaword	0x131
	.uleb128 0x12
	.uaword	.LASF10
	.byte	0x1
	.uahalf	0x1e6
	.uaword	0x114
	.byte	0
	.uleb128 0x17
	.uaword	0xce9
	.uleb128 0x18
	.byte	0x4
	.uaword	0x114
	.uleb128 0x11
	.string	"VltmTst_lCheckOverVoltage"
	.byte	0x1
	.uahalf	0x250
	.byte	0x1
	.uaword	0x4d9
	.byte	0x1
	.uaword	0xd68
	.uleb128 0x19
	.uaword	.LASF11
	.byte	0x1
	.uahalf	0x252
	.uaword	0xce4
	.uleb128 0x12
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x255
	.uaword	0x4d9
	.uleb128 0x10
	.string	"Timeout"
	.byte	0x1
	.uahalf	0x256
	.uaword	0x114
	.uleb128 0x10
	.string	"EndLoop"
	.byte	0x1
	.uahalf	0x257
	.uaword	0x122
	.uleb128 0x12
	.uaword	.LASF12
	.byte	0x1
	.uahalf	0x258
	.uaword	0x131
	.uleb128 0x12
	.uaword	.LASF10
	.byte	0x1
	.uahalf	0x259
	.uaword	0x114
	.byte	0
	.uleb128 0x11
	.string	"VltmTst_lRestore"
	.byte	0x1
	.uahalf	0x12d
	.byte	0x1
	.uaword	0x4d9
	.byte	0x1
	.uaword	0xdd0
	.uleb128 0x19
	.uaword	.LASF9
	.byte	0x1
	.uahalf	0x12e
	.uaword	0xdd0
	.uleb128 0x12
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x130
	.uaword	0x4d9
	.uleb128 0x12
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x131
	.uaword	0x131
	.uleb128 0x12
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x132
	.uaword	0x131
	.uleb128 0x12
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x133
	.uaword	0x131
	.uleb128 0x12
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x134
	.uaword	0x131
	.byte	0
	.uleb128 0x17
	.uaword	0xdd5
	.uleb128 0x18
	.byte	0x4
	.uaword	0xddb
	.uleb128 0x17
	.uaword	0x65e
	.uleb128 0x1a
	.byte	0x1
	.string	"VltmTst_VltmTst"
	.byte	0x1
	.uahalf	0x2d8
	.byte	0x1
	.uaword	0x4d9
	.uaword	.LFB23
	.uaword	.LFE23
	.uaword	.LLST0
	.uaword	0x1149
	.uleb128 0x1b
	.string	"ParamSetIndex"
	.byte	0x1
	.uahalf	0x2da
	.uaword	0x1149
	.uaword	.LLST1
	.uleb128 0x1b
	.string	"TstSeed"
	.byte	0x1
	.uahalf	0x2db
	.uaword	0x114e
	.uaword	.LLST2
	.uleb128 0x1c
	.uaword	.LASF11
	.byte	0x1
	.uahalf	0x2dc
	.uaword	0xce4
	.uaword	.LLST3
	.uleb128 0x1d
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x2df
	.uaword	0x4d9
	.uaword	.LLST4
	.uleb128 0x1e
	.string	"ResClrSmuAlm"
	.byte	0x1
	.uahalf	0x2e0
	.uaword	0x4d9
	.uaword	.LLST5
	.uleb128 0x1f
	.string	"ResRestore"
	.byte	0x1
	.uahalf	0x2e1
	.uaword	0x4d9
	.byte	0x1
	.byte	0x58
	.uleb128 0x20
	.uaword	.LASF9
	.byte	0x1
	.uahalf	0x2e2
	.uaword	0x65e
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1e
	.string	"EvrMonCtrl"
	.byte	0x1
	.uahalf	0x2e4
	.uaword	0x114
	.uaword	.LLST6
	.uleb128 0x1e
	.string	"EvruvMon"
	.byte	0x1
	.uahalf	0x2e6
	.uaword	0x114
	.uaword	.LLST7
	.uleb128 0x1e
	.string	"EvrovMon"
	.byte	0x1
	.uahalf	0x2e7
	.uaword	0x114
	.uaword	.LLST8
	.uleb128 0x21
	.uaword	0xb4b
	.uaword	.LBB30
	.uaword	.LBE30
	.byte	0x1
	.uahalf	0x2ec
	.uaword	0xf0d
	.uleb128 0x22
	.uaword	0xb6c
	.uaword	.LLST9
	.uleb128 0x23
	.uaword	0xb62
	.byte	0xd
	.uleb128 0x24
	.uaword	.LBB31
	.uaword	.LBE31
	.uleb128 0x25
	.uaword	0xb76
	.uaword	.LLST10
	.byte	0
	.byte	0
	.uleb128 0x21
	.uaword	0xb4b
	.uaword	.LBB32
	.uaword	.LBE32
	.byte	0x1
	.uahalf	0x32c
	.uaword	0xf47
	.uleb128 0x22
	.uaword	0xb6c
	.uaword	.LLST11
	.uleb128 0x22
	.uaword	0xb62
	.uaword	.LLST12
	.uleb128 0x24
	.uaword	.LBB33
	.uaword	.LBE33
	.uleb128 0x25
	.uaword	0xb76
	.uaword	.LLST13
	.byte	0
	.byte	0
	.uleb128 0x26
	.uaword	0xbe6
	.uaword	.LBB34
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.uahalf	0x307
	.uaword	0xfa9
	.uleb128 0x27
	.uaword	0xc01
	.byte	0x3
	.byte	0x91
	.sleb128 -28
	.byte	0x9f
	.uleb128 0x28
	.uaword	.Ldebug_ranges0+0x20
	.uleb128 0x25
	.uaword	0xc0c
	.uaword	.LLST14
	.uleb128 0x25
	.uaword	0xc17
	.uaword	.LLST15
	.uleb128 0x25
	.uaword	0xc22
	.uaword	.LLST16
	.uleb128 0x25
	.uaword	0xc2d
	.uaword	.LLST17
	.uleb128 0x25
	.uaword	0xc38
	.uaword	.LLST18
	.uleb128 0x29
	.uaword	0xc43
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x25
	.uaword	0xc53
	.uaword	.LLST19
	.byte	0
	.byte	0
	.uleb128 0x26
	.uaword	0xcef
	.uaword	.LBB38
	.uaword	.Ldebug_ranges0+0x40
	.byte	0x1
	.uahalf	0x310
	.uaword	0x102e
	.uleb128 0x27
	.uaword	0xd17
	.byte	0x1
	.byte	0x6f
	.uleb128 0x28
	.uaword	.Ldebug_ranges0+0x58
	.uleb128 0x25
	.uaword	0xd23
	.uaword	.LLST20
	.uleb128 0x25
	.uaword	0xd2f
	.uaword	.LLST21
	.uleb128 0x25
	.uaword	0xd3f
	.uaword	.LLST22
	.uleb128 0x25
	.uaword	0xd4f
	.uaword	.LLST23
	.uleb128 0x25
	.uaword	0xd5b
	.uaword	.LLST24
	.uleb128 0x2a
	.uaword	0xb4b
	.uaword	.LBB40
	.uaword	.Ldebug_ranges0+0x70
	.byte	0x1
	.uahalf	0x299
	.uleb128 0x27
	.uaword	0xb6c
	.byte	0xa
	.byte	0x91
	.sleb128 -4
	.byte	0x6
	.byte	0xc
	.uaword	0x11000
	.byte	0x1a
	.byte	0x9f
	.uleb128 0x27
	.uaword	0xb62
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x28
	.uaword	.Ldebug_ranges0+0x88
	.uleb128 0x29
	.uaword	0xb76
	.byte	0x1
	.byte	0x52
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x21
	.uaword	0xd68
	.uaword	.LBB45
	.uaword	.LBE45
	.byte	0x1
	.uahalf	0x317
	.uaword	0x1083
	.uleb128 0x22
	.uaword	0xd87
	.uaword	.LLST25
	.uleb128 0x24
	.uaword	.LBB46
	.uaword	.LBE46
	.uleb128 0x25
	.uaword	0xd93
	.uaword	.LLST26
	.uleb128 0x25
	.uaword	0xd9f
	.uaword	.LLST27
	.uleb128 0x25
	.uaword	0xdab
	.uaword	.LLST28
	.uleb128 0x25
	.uaword	0xdb7
	.uaword	.LLST29
	.uleb128 0x25
	.uaword	0xdc3
	.uaword	.LLST30
	.byte	0
	.byte	0
	.uleb128 0x26
	.uaword	0xc6a
	.uaword	.LBB48
	.uaword	.Ldebug_ranges0+0xa0
	.byte	0x1
	.uahalf	0x30c
	.uaword	0x1104
	.uleb128 0x27
	.uaword	0xc93
	.byte	0x1
	.byte	0x6f
	.uleb128 0x28
	.uaword	.Ldebug_ranges0+0xc0
	.uleb128 0x25
	.uaword	0xc9f
	.uaword	.LLST31
	.uleb128 0x25
	.uaword	0xcab
	.uaword	.LLST32
	.uleb128 0x25
	.uaword	0xcbb
	.uaword	.LLST33
	.uleb128 0x25
	.uaword	0xccb
	.uaword	.LLST34
	.uleb128 0x25
	.uaword	0xcd7
	.uaword	.LLST35
	.uleb128 0x2a
	.uaword	0xb4b
	.uaword	.LBB50
	.uaword	.Ldebug_ranges0+0xe0
	.byte	0x1
	.uahalf	0x22d
	.uleb128 0x22
	.uaword	0xb6c
	.uaword	.LLST36
	.uleb128 0x22
	.uaword	0xb62
	.uaword	.LLST37
	.uleb128 0x28
	.uaword	.Ldebug_ranges0+0xf8
	.uleb128 0x25
	.uaword	0xb76
	.uaword	.LLST38
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uaword	0xb83
	.uaword	.LBB58
	.uaword	.LBE58
	.byte	0x1
	.uahalf	0x313
	.uleb128 0x24
	.uaword	.LBB59
	.uaword	.LBE59
	.uleb128 0x2c
	.uaword	0xba9
	.uleb128 0x25
	.uaword	0xbb5
	.uaword	.LLST39
	.uleb128 0x25
	.uaword	0xbc1
	.uaword	.LLST40
	.uleb128 0x25
	.uaword	0xbcd
	.uaword	.LLST41
	.uleb128 0x25
	.uaword	0xbd9
	.uaword	.LLST42
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x17
	.uaword	0x4f0
	.uleb128 0x17
	.uaword	0xfb
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
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xb
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0x13
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
	.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LFB23
	.uaword	.LCFI0
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI0
	.uaword	.LFE23
	.uahalf	0x2
	.byte	0x8a
	.sleb128 32
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL6-1
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL0
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL0
	.uaword	.LVL6-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL6-1
	.uaword	.LFE23
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL7
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL25
	.uaword	.LVL34
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL58
	.uaword	.LVL67
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL0
	.uaword	.LVL7
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL10
	.uaword	.LVL25
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL25
	.uaword	.LVL35
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL35
	.uaword	.LFE23
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL0
	.uaword	.LVL7
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL10
	.uaword	.LVL11
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0xb
	.byte	0x7f
	.sleb128 0
	.byte	0xc
	.uaword	0x40000000
	.byte	0x1a
	.byte	0x4e
	.byte	0x25
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x9
	.byte	0x7f
	.sleb128 0
	.byte	0x4f
	.byte	0x25
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL3
	.uaword	.LVL4
	.uahalf	0x9
	.byte	0x7f
	.sleb128 0
	.byte	0x4f
	.byte	0x25
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL3
	.uaword	.LVL5
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
.LLST10:
	.uaword	.LVL5
	.uaword	.LVL6-1
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL7
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL7
	.uaword	.LVL10
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL8
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL9
	.uaword	.LVL10
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL13
	.uaword	.LVL23
	.uahalf	0x6
	.byte	0xc
	.uaword	0xd010a
	.byte	0x9f
	.uaword	.LVL23
	.uaword	.LVL24
	.uahalf	0x6
	.byte	0xc
	.uaword	0xd0210
	.byte	0x9f
	.uaword	.LVL24
	.uaword	.LVL25
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL35
	.uaword	.LVL36
	.uahalf	0x6
	.byte	0xc
	.uaword	0xd010a
	.byte	0x9f
	.uaword	.LVL36
	.uaword	.LVL37
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL37
	.uaword	.LFE23
	.uahalf	0x6
	.byte	0xc
	.uaword	0xd010a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL13
	.uaword	.LVL15
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL15
	.uaword	.LVL16-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL16-1
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL38
	.uaword	.LVL39-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL39-1
	.uaword	.LVL43
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL13
	.uaword	.LVL17
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL17
	.uaword	.LVL18-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL18-1
	.uaword	.LVL24
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL35
	.uaword	.LVL40
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL40
	.uaword	.LVL41-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL41-1
	.uaword	.LVL59
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL67
	.uaword	.LFE23
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL13
	.uaword	.LVL19
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL19
	.uaword	.LVL21-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL21-1
	.uaword	.LVL24
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL35
	.uaword	.LVL40
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL42
	.uaword	.LVL44-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL44-1
	.uaword	.LVL58
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL67
	.uaword	.LVL73
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL13
	.uaword	.LVL21
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL21
	.uaword	.LVL22
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL44
	.uaword	.LVL45
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL7
	.uaword	.LVL10
	.uahalf	0x2
	.byte	0x91
	.sleb128 -8
	.uaword	.LVL14
	.uaword	.LFE23
	.uahalf	0x2
	.byte	0x91
	.sleb128 -8
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL69
	.uaword	.LVL82
	.uahalf	0x6
	.byte	0xc
	.uaword	0xd010a
	.byte	0x9f
	.uaword	.LVL82
	.uaword	.LFE23
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL69
	.uaword	.LVL74
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL74
	.uaword	.LVL75
	.uahalf	0x4
	.byte	0xa
	.uahalf	0x7d0
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL69
	.uaword	.LVL82
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL69
	.uaword	.LVL75
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL76
	.uaword	.LVL77
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL79
	.uaword	.LVL81
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL7
	.uaword	.LVL10
	.uahalf	0x2
	.byte	0x91
	.sleb128 -4
	.uaword	.LVL25
	.uaword	.LVL35
	.uahalf	0x2
	.byte	0x91
	.sleb128 -4
	.uaword	.LVL58
	.uaword	.LVL67
	.uahalf	0x2
	.byte	0x91
	.sleb128 -4
	.uaword	.LVL71
	.uaword	.LFE23
	.uahalf	0x2
	.byte	0x91
	.sleb128 -4
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL25
	.uaword	.LVL35
	.uahalf	0x3
	.byte	0x91
	.sleb128 -28
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL33
	.uaword	.LVL35
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL25
	.uaword	.LVL26
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL26
	.uaword	.LVL27-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL27-1
	.uaword	.LVL33
	.uahalf	0x1
	.byte	0x5b
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL25
	.uaword	.LVL28
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL28
	.uaword	.LVL29-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL29-1
	.uaword	.LVL33
	.uahalf	0x1
	.byte	0x5c
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL25
	.uaword	.LVL30
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL30
	.uaword	.LVL31-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL31-1
	.uaword	.LVL33
	.uahalf	0x1
	.byte	0x5a
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL25
	.uaword	.LVL31
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL31
	.uaword	.LVL32
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST31:
	.uaword	.LVL46
	.uaword	.LVL54
	.uahalf	0x6
	.byte	0xc
	.uaword	0xd010a
	.byte	0x9f
	.uaword	.LVL54
	.uaword	.LVL58
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL67
	.uaword	.LVL68
	.uahalf	0x6
	.byte	0xc
	.uaword	0xd010a
	.byte	0x9f
	.uaword	.LVL68
	.uaword	.LVL69
	.uahalf	0x6
	.byte	0xc
	.uaword	0xd01ff
	.byte	0x9f
	.uaword	.LVL69
	.uaword	.LVL78
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL79
	.uaword	.LVL80
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST32:
	.uaword	.LVL46
	.uaword	.LVL48
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL48
	.uaword	.LVL49
	.uahalf	0x4
	.byte	0xa
	.uahalf	0x7d0
	.byte	0x9f
	.uaword	.LVL68
	.uaword	.LVL69
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST33:
	.uaword	.LVL46
	.uaword	.LVL54
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL67
	.uaword	.LVL68
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL68
	.uaword	.LVL69
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST34:
	.uaword	.LVL46
	.uaword	.LVL49
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL50
	.uaword	.LVL51
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL52
	.uaword	.LVL53
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST35:
	.uaword	.LVL7
	.uaword	.LVL10
	.uahalf	0x2
	.byte	0x91
	.sleb128 -4
	.uaword	.LVL25
	.uaword	.LVL35
	.uahalf	0x2
	.byte	0x91
	.sleb128 -4
	.uaword	.LVL47
	.uaword	.LFE23
	.uahalf	0x2
	.byte	0x91
	.sleb128 -4
	.uaword	0
	.uaword	0
.LLST36:
	.uaword	.LVL54
	.uaword	.LVL55
	.uahalf	0x7
	.byte	0x72
	.sleb128 0
	.byte	0xa
	.uahalf	0x8800
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL55
	.uaword	.LVL56
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST37:
	.uaword	.LVL54
	.uaword	.LVL58
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	.LVL69
	.uaword	.LVL70
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL70
	.uaword	.LVL72-1
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
	.uaword	.LVL58
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	.LVL69
	.uaword	.LVL72-1
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST39:
	.uaword	.LVL58
	.uaword	.LVL59
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL59
	.uaword	.LVL60-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL60-1
	.uaword	.LVL66
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST40:
	.uaword	.LVL58
	.uaword	.LVL61
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL61
	.uaword	.LVL62-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL62-1
	.uaword	.LVL67
	.uahalf	0x1
	.byte	0x5a
	.uaword	0
	.uaword	0
.LLST41:
	.uaword	.LVL58
	.uaword	.LVL63
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL63
	.uaword	.LVL64-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL64-1
	.uaword	.LVL67
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST42:
	.uaword	.LVL58
	.uaword	.LVL64
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL64
	.uaword	.LVL65
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
	.uaword	.LFB23
	.uaword	.LFE23-.LFB23
	.uaword	0
	.uaword	0
	.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB34
	.uaword	.LBE34
	.uaword	.LBB47
	.uaword	.LBE47
	.uaword	.LBB56
	.uaword	.LBE56
	.uaword	0
	.uaword	0
	.uaword	.LBB35
	.uaword	.LBE35
	.uaword	.LBB36
	.uaword	.LBE36
	.uaword	.LBB37
	.uaword	.LBE37
	.uaword	0
	.uaword	0
	.uaword	.LBB38
	.uaword	.LBE38
	.uaword	.LBB61
	.uaword	.LBE61
	.uaword	0
	.uaword	0
	.uaword	.LBB39
	.uaword	.LBE39
	.uaword	.LBB44
	.uaword	.LBE44
	.uaword	0
	.uaword	0
	.uaword	.LBB40
	.uaword	.LBE40
	.uaword	.LBB43
	.uaword	.LBE43
	.uaword	0
	.uaword	0
	.uaword	.LBB41
	.uaword	.LBE41
	.uaword	.LBB42
	.uaword	.LBE42
	.uaword	0
	.uaword	0
	.uaword	.LBB48
	.uaword	.LBE48
	.uaword	.LBB57
	.uaword	.LBE57
	.uaword	.LBB60
	.uaword	.LBE60
	.uaword	0
	.uaword	0
	.uaword	.LBB49
	.uaword	.LBE49
	.uaword	.LBB54
	.uaword	.LBE54
	.uaword	.LBB55
	.uaword	.LBE55
	.uaword	0
	.uaword	0
	.uaword	.LBB50
	.uaword	.LBE50
	.uaword	.LBB53
	.uaword	.LBE53
	.uaword	0
	.uaword	0
	.uaword	.LBB51
	.uaword	.LBE51
	.uaword	.LBB52
	.uaword	.LBE52
	.uaword	0
	.uaword	0
	.uaword	.LFB23
	.uaword	.LFE23
	.uaword	0
	.uaword	0
	.section .debug_line,"",@progbits
.Ldebug_line0:
	.section .debug_str,"",@progbits
.LASF0:
	.string	"reserved_2"
.LASF5:
	.string	"SmuResult1"
.LASF1:
	.string	"reserved_6"
.LASF2:
	.string	"reserved_8"
.LASF6:
	.string	"SmuResult2"
.LASF8:
	.string	"SmuResult4"
.LASF12:
	.string	"SmuResult"
.LASF10:
	.string	"AlarmStatus"
.LASF11:
	.string	"TstSignature"
.LASF4:
	.string	"Result"
.LASF7:
	.string	"SmuResult3"
.LASF9:
	.string	"Vltm_BackupData"
.LASF3:
	.string	"reserved_24"
	.extern	Smu_ClearAlarmStatus,STT_FUNC,0
	.extern	Smu_GetAlarmStatus,STT_FUNC,0
	.extern	Smu_SetAlarmAction,STT_FUNC,0
	.extern	Smu_GetAlarmAction,STT_FUNC,0
	.extern	Mcal_SetSafetyENDINIT_Timed,STT_FUNC,0
	.extern	Mcal_ResetSafetyENDINIT_Timed,STT_FUNC,0
	.extern	Smu_GetSmuState,STT_FUNC,0
	.ident	"GCC: (HighTec Release v4.6.3.0) 4.6.3 build on 2013-05-17"
