	.file	"Mcal_WdgLib.c"
.section .text,"ax",@progbits
.Ltext0:
	.section .text.STL_ASIL_CODE,"ax",@progbits
	.align 2
	.type	Mcal_lCpuModifyAccess, @function
Mcal_lCpuModifyAccess:
.LFB22:
	.file 1 "../30_Bsw/STL_common/Mcal_WdgLib.c"
	.loc 1 704 0
.LVL0:
	.loc 1 714 0
	add	%d4, 1
.LVL1:
	.loc 1 713 0
	sh	%d15, %d4, 1
	movh.a	%a15, hi:ScuWdtPtrList
	add	%d4, %d15
	lea	%a15, [%a15] lo:ScuWdtPtrList
	addsc.a	%a12, %a15, %d4, 2
	.loc 1 704 0
	sub.a	%SP, 8
.LCFI0:
	.loc 1 713 0
	ld.a	%a15, [%a12]0
.LVL2:
	.loc 1 704 0
	mov	%d8, %d5
	mov	%d9, %d6
	.loc 1 718 0
	call	Mcal_SuspendAllInterrupts
.LVL3:
	.loc 1 720 0
	ld.w	%d3, [%a15]0
.LVL4:
.LBB22:
.LBB23:
	.loc 1 455 0
	ld.a	%a2, [%a12] 4
	.loc 1 460 0
	nand	%d15, %d3, ~(-253)
	.loc 1 459 0
	mov.u	%d4, 65280
	and	%d4, %d3
	.loc 1 461 0
	and	%d15, %d15, 252
	.loc 1 459 0
	or	%d15, %d4
	.loc 1 464 0
	ld.w	%d4, [%a2]0
.LBE23:
.LBE22:
	.loc 1 721 0
	and	%d5, %d3, 3
.LVL5:
	.loc 1 722 0
	insert	%d2, %d3, 0, 0, 16
.LVL6:
.LBB26:
.LBB25:
	.loc 1 459 0
	mov	%d3, %d15
.LVL7:
	.loc 1 464 0
	jz.t	%d4, 7, .L2
.LVL8:
.LBB24:
	.loc 1 472 0
	sh	%d4, %d15, -11
	sh	%d3, %d15, -1
	xor	%d3, %d4
	sh	%d4, %d15, -12
	xor	%d3, %d4
	sh	%d4, %d15, -13
	xor	%d3, %d4
	and	%d3, %d3, 4
	.loc 1 474 0
	sh	%d4, %d15, 1
	or	%d3, %d4
	mov.u	%d4, 65532
	and	%d3, %d4
.LVL9:
.L2:
.LBE24:
.LBE25:
.LBE26:
.LBB27:
.LBB28:
	.loc 1 508 0
	ld.w	%d6, [%a2]0
	.loc 1 503 0
	mov	%d4, %d2
	.loc 1 508 0
	jz.t	%d6, 8, .L3
	.loc 1 513 0
	ld.w	%d4, [%a2]0
	not	%d4
	insert	%d4, %d4, 0, 0, 16
.LVL10:
.L3:
.LBE28:
.LBE27:
	.loc 1 732 0
	or	%d3, %d3, 1
.LVL11:
	or	%d4, %d3
.LVL12:
	.loc 1 739 0
	movh	%d3, 1
	.loc 1 736 0
	st.w	[%a15]0, %d4
	.loc 1 741 0
	sh	%d4, %d9, 16
.LVL13:
	lt.u	%d9, %d9, %d3
.LVL14:
	sel	%d2, %d9, %d4, %d2
.LVL15:
	.loc 1 745 0
	jge.u	%d8, %d3, .L5
	mov.u	%d4, 65280
	nand	%d15, %d8, ~(-253)
	and	%d4, %d8
	and	%d15, %d15, 252
	or	%d15, %d4
.L5:
.LVL16:
	.loc 1 758 0
	insert	%d2, %d2, 0, 0, 16
.LVL17:
	.loc 1 763 0
	or	%d15, %d2
.LVL18:
	.loc 1 764 0
	or	%d15, %d5
.LVL19:
	.loc 1 767 0
	st.w	[%a15]0, %d15
	.loc 1 770 0
	ld.w	%d15, [%a15]0
.LVL20:
	st.w	[%SP] 4, %d15
	.loc 1 771 0
	ld.w	%d15, [%SP] 4
.LVL21:
	.loc 1 775 0
	lea	%SP, [%SP] 8
	.loc 1 774 0
	j	Mcal_ResumeAllInterrupts
.LVL22:
.LVL23:
.LFE22:
	.size	Mcal_lCpuModifyAccess, .-Mcal_lCpuModifyAccess
	.align 2
	.global	Mcal_ResetCpuENDINIT
	.type	Mcal_ResetCpuENDINIT, @function
Mcal_ResetCpuENDINIT:
.LFB20:
	.loc 1 542 0
.LVL24:
	.loc 1 550 0
	add	%d4, 1
.LVL25:
	.loc 1 549 0
	sh	%d15, %d4, 1
	add	%d4, %d15
	movh.a	%a3, hi:ScuWdtPtrList
	sh	%d4, 2
	lea	%a3, [%a3] lo:ScuWdtPtrList
	addsc.a	%a3, %a3, %d4, 0
.LBB34:
.LBB35:
	.loc 1 459 0
	mov.u	%d15, 65280
.LBE35:
.LBE34:
	.loc 1 549 0
	ld.a	%a15, [%a3]0
.LVL26:
	.loc 1 551 0
	ld.a	%a2, [%a3] 4
.LVL27:
	.loc 1 553 0
	ld.a	%a4, [%a3] 8
.LVL28:
	.loc 1 557 0
	ld.w	%d2, [%a15]0
	.loc 1 554 0
	movh.a	%a3, hi:ScuWdtPtrListRedn
.LVL29:
.LBB41:
.LBB37:
	.loc 1 460 0
	nand	%d3, %d2, ~(-253)
	.loc 1 461 0
	and	%d3, %d3, 252
.LBE37:
.LBE41:
	.loc 1 554 0
	lea	%a3, [%a3] lo:ScuWdtPtrListRedn
.LBB42:
.LBB38:
	.loc 1 459 0
	and	%d15, %d2
.LBE38:
.LBE42:
	.loc 1 554 0
	addsc.a	%a3, %a3, %d4, 0
.LBB43:
.LBB39:
	.loc 1 459 0
	or	%d15, %d3
	.loc 1 464 0
	ld.w	%d3, [%a2]0
.LBE39:
.LBE43:
	.loc 1 542 0
	sub.a	%SP, 8
.LCFI1:
	.loc 1 554 0
	ld.a	%a3, [%a3] 8
.LVL30:
.LBB44:
.LBB40:
	.loc 1 464 0
	jz.t	%d3, 7, .L9
.LVL31:
.LBB36:
	.loc 1 472 0
	sh	%d4, %d15, -11
.LVL32:
	sh	%d3, %d15, -1
	xor	%d3, %d4
	sh	%d4, %d15, -12
	xor	%d3, %d4
	sh	%d4, %d15, -13
	xor	%d3, %d4
	and	%d3, %d3, 4
	.loc 1 474 0
	sh	%d15, 1
.LVL33:
	or	%d15, %d3
	mov.u	%d3, 65532
.LVL34:
	and	%d15, %d3
.LVL35:
.L9:
.LBE36:
.LBE40:
.LBE44:
.LBB45:
.LBB46:
	.loc 1 508 0
	ld.w	%d3, [%a2]0
	jz.t	%d3, 8, .L12
	.loc 1 513 0
	ld.w	%d2, [%a2]0
.LVL36:
	not	%d2
.L12:
	insert	%d2, %d2, 0, 0, 16
.LVL37:
.LBE46:
.LBE45:
	.loc 1 571 0
	ld.w	%d3, [%a15]0
	.loc 1 566 0
	or	%d15, %d15, 1
.LVL38:
	or	%d15, %d2
.LVL39:
	.loc 1 571 0
	mov.u	%d2, 65532
.LVL40:
	and	%d3, %d2
.LVL41:
	.loc 1 572 0
	ld.w	%d2, [%a2]0
	insert	%d2, %d2, 0, 0, 16
	or	%d2, %d3
.LVL42:
	.loc 1 573 0
	st.w	[%a4]0, %d2
	.loc 1 575 0
	not	%d2
.LVL43:
	st.w	[%a3]0, %d2
	.loc 1 577 0
	st.w	[%a15]0, %d15
	.loc 1 580 0
	insert	%d15, %d15, 2, 0, 2
.LVL44:
	.loc 1 583 0
	st.w	[%a15]0, %d15
	.loc 1 586 0
	ld.w	%d15, [%a15]0
.LVL45:
	st.w	[%SP] 4, %d15
	.loc 1 587 0
	ld.w	%d15, [%SP] 4
.LVL46:
	.loc 1 588 0
	ret
.LFE20:
	.size	Mcal_ResetCpuENDINIT, .-Mcal_ResetCpuENDINIT
	.align 2
	.global	Mcal_SetCpuENDINIT
	.type	Mcal_SetCpuENDINIT, @function
Mcal_SetCpuENDINIT:
.LFB21:
	.loc 1 614 0
.LVL47:
	.loc 1 621 0
	add	%d4, 1
.LVL48:
	.loc 1 620 0
	sh	%d15, %d4, 1
	add	%d4, %d15
	movh.a	%a2, hi:ScuWdtPtrList
	sh	%d4, 2
	lea	%a2, [%a2] lo:ScuWdtPtrList
	addsc.a	%a2, %a2, %d4, 0
.LBB52:
.LBB53:
	.loc 1 459 0
	mov.u	%d15, 65280
.LBE53:
.LBE52:
	.loc 1 620 0
	ld.a	%a15, [%a2]0
.LVL49:
	.loc 1 622 0
	ld.a	%a12, [%a2] 4
.LVL50:
	.loc 1 624 0
	ld.a	%a13, [%a2] 8
.LVL51:
	.loc 1 628 0
	ld.w	%d2, [%a15]0
	.loc 1 625 0
	movh.a	%a2, hi:ScuWdtPtrListRedn
.LVL52:
.LBB59:
.LBB55:
	.loc 1 460 0
	nand	%d3, %d2, ~(-253)
	.loc 1 461 0
	and	%d3, %d3, 252
.LBE55:
.LBE59:
	.loc 1 625 0
	lea	%a2, [%a2] lo:ScuWdtPtrListRedn
.LBB60:
.LBB56:
	.loc 1 459 0
	and	%d15, %d2
.LBE56:
.LBE60:
	.loc 1 625 0
	addsc.a	%a2, %a2, %d4, 0
.LBB61:
.LBB57:
	.loc 1 459 0
	or	%d15, %d3
	.loc 1 464 0
	ld.w	%d3, [%a12]0
.LBE57:
.LBE61:
	.loc 1 614 0
	sub.a	%SP, 8
.LCFI2:
	.loc 1 625 0
	ld.a	%a2, [%a2] 8
.LVL53:
.LBB62:
.LBB58:
	.loc 1 464 0
	jz.t	%d3, 7, .L14
.LVL54:
.LBB54:
	.loc 1 472 0
	sh	%d4, %d15, -11
.LVL55:
	sh	%d3, %d15, -1
	xor	%d3, %d4
	sh	%d4, %d15, -12
	xor	%d3, %d4
	sh	%d4, %d15, -13
	xor	%d3, %d4
	and	%d3, %d3, 4
	.loc 1 474 0
	sh	%d15, 1
.LVL56:
	or	%d15, %d3
	mov.u	%d3, 65532
.LVL57:
	and	%d15, %d3
.LVL58:
.L14:
.LBE54:
.LBE58:
.LBE62:
.LBB63:
.LBB64:
	.loc 1 508 0
	ld.w	%d3, [%a12]0
	jz.t	%d3, 8, .L18
	.loc 1 513 0
	ld.w	%d2, [%a12]0
.LVL59:
	not	%d2
.L18:
	insert	%d2, %d2, 0, 0, 16
.LVL60:
.LBE64:
.LBE63:
	.loc 1 637 0
	or	%d15, %d15, 1
.LVL61:
	or	%d15, %d2
.LVL62:
	.loc 1 641 0
	st.w	[%a15]0, %d15
	.loc 1 646 0
	ld.w	%d3, [%a2]0
	ld.w	%d2, [%a13]0
.LVL63:
	not	%d3
	.loc 1 644 0
	insert	%d15, %d15, 0, 16, 16
.LVL64:
	.loc 1 646 0
	jeq	%d2, %d3, .L17
	.loc 1 648 0
	mov	%d4, 13
	call	IOHWSF_vDefaultErrorHandler
.LVL65:
	ld.w	%d2, [%a13]0
.L17:
	.loc 1 653 0
	ld.w	%d3, [%a12]0
	insert	%d3, %d3, 0, 0, 16
	.loc 1 652 0
	addih	%d3, %d3, 4
	add	%d3, %d2
	or	%d3, %d15
.LVL66:
	.loc 1 659 0
	mov.u	%d15, 65280
	and	%d15, %d2
	.loc 1 660 0
	nand	%d2, %d2, ~(-253)
	.loc 1 658 0
	insert	%d3, %d3, 0, 2, 14
.LVL67:
	.loc 1 659 0
	or	%d15, %d15, 3
	.loc 1 661 0
	and	%d2, %d2, 252
	.loc 1 659 0
	or	%d15, %d2
	.loc 1 664 0
	or	%d15, %d3
.LVL68:
	.loc 1 667 0
	st.w	[%a15]0, %d15
	.loc 1 670 0
	ld.w	%d15, [%a15]0
.LVL69:
	st.w	[%SP] 4, %d15
	.loc 1 671 0
	ld.w	%d15, [%SP] 4
.LVL70:
	.loc 1 672 0
	ret
.LFE21:
	.size	Mcal_SetCpuENDINIT, .-Mcal_SetCpuENDINIT
	.align 2
	.global	Mcal_ResetENDINIT
	.type	Mcal_ResetENDINIT, @function
Mcal_ResetENDINIT:
.LFB24:
	.loc 1 871 0
.LBB65:
	.loc 1 876 0
#APP
	# 876 "../30_Bsw/STL_common/Mcal_WdgLib.c" 1
	mfcr %d8, LO:(0xFE1C)
	# 0 "" 2
.LVL71:
#NO_APP
.LBE65:
	.loc 1 886 0
	movh.a	%a12, hi:Mcal_ResetEndInitCounter
	.loc 1 876 0
	and	%d8, %d8, 7
.LVL72:
	.loc 1 886 0
	sh	%d15, %d8, 2
	lea	%a12, [%a12] lo:Mcal_ResetEndInitCounter
	addsc.a	%a15, %a12, %d15, 0
	.loc 1 884 0
	call	Mcal_SuspendAllInterrupts
	.loc 1 886 0
	ld.w	%d9, [%a15]0
.LVL73:
	.loc 1 887 0
	movh.a	%a15, hi:Mcal_ResetEndInitCounterRedn
	lea	%a15, [%a15] lo:Mcal_ResetEndInitCounterRedn
	addsc.a	%a3, %a15, %d15, 0
	ld.w	%d2, [%a3]0
.LVL74:
	not	%d2
.LVL75:
	.loc 1 891 0
	jeq	%d9, %d2, .L20
	.loc 1 893 0
	mov	%d4, 13
	call	IOHWSF_vDefaultErrorHandler
.LVL76:
.L20:
	.loc 1 896 0
	jnz	%d9, .L21
	.loc 1 898 0
	mov	%d4, %d8
	call	Mcal_ResetCpuENDINIT
.L21:
	.loc 1 901 0
	addsc.a	%a2, %a12, %d15, 0
	.loc 1 902 0
	addsc.a	%a15, %a15, %d15, 0
	.loc 1 901 0
	ld.w	%d2, [%a2]0
	add	%d2, 1
	st.w	[%a2]0, %d2
	.loc 1 902 0
	ld.w	%d15, [%a15]0
	add	%d15, -1
	st.w	[%a15]0, %d15
	.loc 1 905 0
	ret
.LFE24:
	.size	Mcal_ResetENDINIT, .-Mcal_ResetENDINIT
	.align 2
	.global	Mcal_SetENDINIT
	.type	Mcal_SetENDINIT, @function
Mcal_SetENDINIT:
.LFB26:
	.loc 1 986 0
.LBB66:
	.loc 1 991 0
#APP
	# 991 "../30_Bsw/STL_common/Mcal_WdgLib.c" 1
	mfcr %d8, LO:(0xFE1C)
	# 0 "" 2
.LVL77:
#NO_APP
.LBE66:
	.loc 1 992 0
	movh.a	%a12, hi:Mcal_ResetEndInitCounter
	.loc 1 991 0
	and	%d8, %d8, 7
.LVL78:
	.loc 1 992 0
	sh	%d15, %d8, 2
	lea	%a12, [%a12] lo:Mcal_ResetEndInitCounter
	addsc.a	%a2, %a12, %d15, 0
	.loc 1 993 0
	movh.a	%a13, hi:Mcal_ResetEndInitCounterRedn
	lea	%a13, [%a13] lo:Mcal_ResetEndInitCounterRedn
	.loc 1 992 0
	ld.w	%d3, [%a2]0
.LVL79:
	.loc 1 993 0
	addsc.a	%a2, %a13, %d15, 0
	ld.w	%d2, [%a2]0
.LVL80:
	not	%d2
.LVL81:
	.loc 1 996 0
	jeq	%d3, %d2, .L23
	.loc 1 998 0
	mov	%d4, 13
	call	IOHWSF_vDefaultErrorHandler
.LVL82:
.L23:
	.loc 1 1003 0
	addsc.a	%a15, %a12, %d15, 0
	ld.w	%d2, [%a15]0
	jz	%d2, .L24
	.loc 1 1005 0
	ld.w	%d2, [%a15]0
	.loc 1 1006 0
	addsc.a	%a2, %a13, %d15, 0
	.loc 1 1005 0
	add	%d2, -1
	st.w	[%a15]0, %d2
	.loc 1 1006 0
	ld.a	%a15, [%a2]0
	add.a	%a15, 1
	st.a	[%a2]0, %a15
.L24:
	.loc 1 1009 0
	addsc.a	%a15, %a12, %d15, 0
	ld.w	%d15, [%a15]0
	jz	%d15, .L26
	.loc 1 1015 0
	j	Mcal_ResumeAllInterrupts
.L26:
	.loc 1 1011 0
	mov	%d4, %d8
	call	Mcal_SetCpuENDINIT
	.loc 1 1015 0
	j	Mcal_ResumeAllInterrupts
.LFE26:
	.size	Mcal_SetENDINIT, .-Mcal_SetENDINIT
	.align 2
	.global	Mcal_ResetSafetyENDINIT_Timed
	.type	Mcal_ResetSafetyENDINIT_Timed, @function
Mcal_ResetSafetyENDINIT_Timed:
.LFB28:
	.loc 1 1090 0
.LVL83:
	.loc 1 1093 0
	movh.a	%a12, hi:Mcal_WdgSafetyEndInitSem
	lea	%a4, [%a12] lo:Mcal_WdgSafetyEndInitSem
	call	Mcal_GetSpinLock
.LVL84:
	.loc 1 1095 0
	jnz	%d2, .L28
	.loc 1 1102 0
	movh.a	%a15, hi:Mcal_WdgSafetyEndInitSemRedn
	ld.w	%d15, [%a15] lo:Mcal_WdgSafetyEndInitSemRedn
	.loc 1 1104 0
	ld.w	%d2, [%a12] lo:Mcal_WdgSafetyEndInitSem
.LVL85:
	.loc 1 1102 0
	add	%d15, -1
	st.w	[%a15] lo:Mcal_WdgSafetyEndInitSemRedn, %d15
	.loc 1 1104 0
	not	%d15
	jeq	%d15, %d2, .L29
	.loc 1 1106 0
	mov	%d4, 13
	call	IOHWSF_vDefaultErrorHandler
.L29:
.LBB67:
.LBB68:
	.loc 1 939 0
	call	Mcal_SuspendAllInterrupts
	.loc 1 943 0
	movh.a	%a15, hi:Mcal_SafetyResetEndInitCounterRedn
	movh.a	%a12, hi:Mcal_SafetyResetEndInitCounter
	ld.w	%d2, [%a15] lo:Mcal_SafetyResetEndInitCounterRedn
	ld.w	%d15, [%a12] lo:Mcal_SafetyResetEndInitCounter
	not	%d2
	jeq	%d2, %d15, .L30
	.loc 1 945 0
	mov	%d4, 13
	call	IOHWSF_vDefaultErrorHandler
	ld.w	%d15, [%a12] lo:Mcal_SafetyResetEndInitCounter
.L30:
	.loc 1 948 0
	jz	%d15, .L33
.L31:
	.loc 1 953 0
	add	%d15, 1
	st.w	[%a12] lo:Mcal_SafetyResetEndInitCounter, %d15
	.loc 1 954 0
	ld.w	%d15, [%a15] lo:Mcal_SafetyResetEndInitCounterRedn
	add	%d15, -1
	st.w	[%a15] lo:Mcal_SafetyResetEndInitCounterRedn, %d15
.LBE68:
.LBE67:
	.loc 1 1117 0
	ret
.L33:
.LBB70:
.LBB69:
	.loc 1 950 0
	mov	%d4, -1
	call	Mcal_ResetCpuENDINIT
	j	.L31
.LVL86:
.L28:
.LBE69:
.LBE70:
	.loc 1 1114 0
	mov	%d4, 14
	j	IOHWSF_vDefaultErrorHandler
.LVL87:
.LFE28:
	.size	Mcal_ResetSafetyENDINIT_Timed, .-Mcal_ResetSafetyENDINIT_Timed
	.align 2
	.global	Mcal_SetSafetyENDINIT_Timed
	.type	Mcal_SetSafetyENDINIT_Timed, @function
Mcal_SetSafetyENDINIT_Timed:
.LFB29:
	.loc 1 1142 0
	.loc 1 1148 0
	movh.a	%a15, hi:Mcal_WdgSafetyEndInitSemRedn
	ld.w	%d15, [%a15] lo:Mcal_WdgSafetyEndInitSemRedn
	movh.a	%a14, hi:Mcal_WdgSafetyEndInitSem
	ld.w	%d2, [%a14] lo:Mcal_WdgSafetyEndInitSem
	not	%d15
	jeq	%d15, %d2, .L35
	.loc 1 1150 0
	mov	%d4, 13
	call	IOHWSF_vDefaultErrorHandler
.L35:
.LBB71:
.LBB72:
	.loc 1 1045 0
	movh.a	%a12, hi:Mcal_SafetyResetEndInitCounterRedn
	movh.a	%a13, hi:Mcal_SafetyResetEndInitCounter
	ld.w	%d2, [%a12] lo:Mcal_SafetyResetEndInitCounterRedn
	ld.w	%d15, [%a13] lo:Mcal_SafetyResetEndInitCounter
	not	%d2
	jeq	%d2, %d15, .L36
	.loc 1 1047 0
	mov	%d4, 13
	call	IOHWSF_vDefaultErrorHandler
	ld.w	%d15, [%a13] lo:Mcal_SafetyResetEndInitCounter
.L36:
	.loc 1 1051 0
	jnz	%d15, .L40
.L37:
	.loc 1 1059 0
	mov	%d4, -1
	call	Mcal_SetCpuENDINIT
	.loc 1 1063 0
	call	Mcal_ResumeAllInterrupts
.LBE72:
.LBE71:
	.loc 1 1157 0
	ld.w	%d15, [%a15] lo:Mcal_WdgSafetyEndInitSemRedn
	.loc 1 1158 0
	lea	%a4, [%a14] lo:Mcal_WdgSafetyEndInitSem
	.loc 1 1157 0
	add	%d15, 1
	st.w	[%a15] lo:Mcal_WdgSafetyEndInitSemRedn, %d15
	.loc 1 1158 0
	j	Mcal_ReleaseSpinLock
.L40:
.LBB74:
.LBB73:
	.loc 1 1054 0
	ld.w	%d2, [%a12] lo:Mcal_SafetyResetEndInitCounterRedn
	.loc 1 1053 0
	add	%d15, -1
	.loc 1 1054 0
	add	%d2, 1
	.loc 1 1053 0
	st.w	[%a13] lo:Mcal_SafetyResetEndInitCounter, %d15
	.loc 1 1054 0
	st.w	[%a12] lo:Mcal_SafetyResetEndInitCounterRedn, %d2
	.loc 1 1057 0
	jz	%d15, .L37
	.loc 1 1063 0
	call	Mcal_ResumeAllInterrupts
.LBE73:
.LBE74:
	.loc 1 1157 0
	ld.w	%d15, [%a15] lo:Mcal_WdgSafetyEndInitSemRedn
	.loc 1 1158 0
	lea	%a4, [%a14] lo:Mcal_WdgSafetyEndInitSem
	.loc 1 1157 0
	add	%d15, 1
	st.w	[%a15] lo:Mcal_WdgSafetyEndInitSemRedn, %d15
	.loc 1 1158 0
	j	Mcal_ReleaseSpinLock
.LFE29:
	.size	Mcal_SetSafetyENDINIT_Timed, .-Mcal_SetSafetyENDINIT_Timed
	.align 2
	.global	Mcal_SafetyModifyAccess
	.type	Mcal_SafetyModifyAccess, @function
Mcal_SafetyModifyAccess:
.LFB30:
	.loc 1 1196 0
.LVL88:
	.loc 1 1196 0
	mov	%d15, %d4
	mov	%d6, %d5
	.loc 1 1197 0
	mov	%d4, -1
.LVL89:
	mov	%d5, %d15
.LVL90:
	j	Mcal_lCpuModifyAccess
.LVL91:
.LFE30:
	.size	Mcal_SafetyModifyAccess, .-Mcal_SafetyModifyAccess
	.align 2
	.global	Mcal_CpuWdtModifyAccess
	.type	Mcal_CpuWdtModifyAccess, @function
Mcal_CpuWdtModifyAccess:
.LFB31:
	.loc 1 1235 0
.LVL92:
	.loc 1 1235 0
	mov	%d15, %d4
	mov	%d6, %d5
.LBB75:
	.loc 1 1236 0
#APP
	# 1236 "../30_Bsw/STL_common/Mcal_WdgLib.c" 1
	mfcr %d4, LO:(0xFE1C)
	# 0 "" 2
.LVL93:
#NO_APP
.LBE75:
	.loc 1 1237 0
	and	%d4, %d4, 7
.LVL94:
	mov	%d5, %d15
.LVL95:
	j	Mcal_lCpuModifyAccess
.LVL96:
.LFE31:
	.size	Mcal_CpuWdtModifyAccess, .-Mcal_CpuWdtModifyAccess
	.align 2
	.global	Mcal_SafetyCheckAccess
	.type	Mcal_SafetyCheckAccess, @function
Mcal_SafetyCheckAccess:
.LFB32:
	.loc 1 1274 0
.LVL97:
.LBB76:
.LBB77:
	.loc 1 813 0
	movh.a	%a15, hi:-268214032
	lea	%a15, [%a15] lo:-268214032
	ld.w	%d15, [%a15]0
.LVL98:
	.loc 1 816 0
	insert	%d15, %d15, 0, 0, 16
.LVL99:
	.loc 1 819 0
	or	%d4, %d15
.LVL100:
	.loc 1 822 0
	movh	%d15, 1
	jge.u	%d5, %d15, .L44
.LVL101:
	.loc 1 825 0
	sh	%d5, %d5, 16
.LVL102:
	insert	%d4, %d5, %d4, 0, 16
.LVL103:
.L44:
	.loc 1 828 0
	or	%d4, %d4, 3
.LVL104:
	.loc 1 831 0
	movh.a	%a15, hi:-268214032
	lea	%a15, [%a15] lo:-268214032
	st.w	[%a15]0, %d4
.LBE77:
.LBE76:
	.loc 1 1276 0
	ret
.LFE32:
	.size	Mcal_SafetyCheckAccess, .-Mcal_SafetyCheckAccess
	.align 2
	.global	Mcal_CpuWdtCheckAccess
	.type	Mcal_CpuWdtCheckAccess, @function
Mcal_CpuWdtCheckAccess:
.LFB33:
	.loc 1 1312 0
.LVL105:
.LBB78:
	.loc 1 1313 0
#APP
	# 1313 "../30_Bsw/STL_common/Mcal_WdgLib.c" 1
	mfcr %d15, LO:(0xFE1C)
	# 0 "" 2
.LVL106:
#NO_APP
.LBE78:
.LBB79:
.LBB80:
	.loc 1 810 0
	and	%d15, %d15, 7
.LVL107:
	.loc 1 809 0
	add	%d15, 1
	sh	%d2, %d15, 1
	movh.a	%a2, hi:ScuWdtPtrList
	add	%d15, %d2
	lea	%a2, [%a2] lo:ScuWdtPtrList
	addsc.a	%a15, %a2, %d15, 2
	ld.a	%a15, [%a15]0
.LVL108:
	.loc 1 813 0
	ld.w	%d15, [%a15]0
.LVL109:
	.loc 1 816 0
	insert	%d15, %d15, 0, 0, 16
.LVL110:
	.loc 1 819 0
	or	%d4, %d15
.LVL111:
	.loc 1 822 0
	movh	%d15, 1
	jge.u	%d5, %d15, .L46
.LVL112:
	.loc 1 825 0
	sh	%d5, %d5, 16
.LVL113:
	insert	%d4, %d5, %d4, 0, 16
.LVL114:
.L46:
	.loc 1 828 0
	or	%d4, %d4, 3
.LVL115:
	.loc 1 831 0
	st.w	[%a15]0, %d4
.LBE80:
.LBE79:
	.loc 1 1315 0
	ret
.LFE33:
	.size	Mcal_CpuWdtCheckAccess, .-Mcal_CpuWdtCheckAccess
	.align 2
	.global	Mcal_SafetyPwSequence
	.type	Mcal_SafetyPwSequence, @function
Mcal_SafetyPwSequence:
.LFB34:
	.loc 1 1340 0
.LVL116:
.LBB84:
.LBB85:
	.loc 1 459 0
	mov.u	%d15, 65280
	.loc 1 460 0
	nand	%d2, %d4, ~(-253)
	.loc 1 464 0
	movh.a	%a15, hi:-268214024
	.loc 1 459 0
	and	%d15, %d4
	.loc 1 461 0
	and	%d2, %d2, 252
	.loc 1 464 0
	lea	%a15, [%a15] lo:-268214024
	.loc 1 459 0
	or	%d2, %d15
.LVL117:
	.loc 1 464 0
	ld.w	%d15, [%a15]0
	jz.t	%d15, 7, .L48
.LVL118:
.LBB86:
	.loc 1 472 0
	sh	%d3, %d2, -11
	sh	%d15, %d2, -1
	xor	%d15, %d3
	sh	%d3, %d2, -12
	xor	%d15, %d3
	sh	%d3, %d2, -13
	xor	%d15, %d3
	and	%d15, %d15, 4
	.loc 1 474 0
	sh	%d2, 1
.LVL119:
	or	%d2, %d15
	mov.u	%d15, 65532
.LVL120:
	and	%d2, %d15
.LVL121:
.L48:
.LBE86:
.LBE85:
.LBE84:
	.loc 1 1342 0
	ret
.LFE34:
	.size	Mcal_SafetyPwSequence, .-Mcal_SafetyPwSequence
	.align 2
	.global	Mcal_CpuWdtPwSequence
	.type	Mcal_CpuWdtPwSequence, @function
Mcal_CpuWdtPwSequence:
.LFB35:
	.loc 1 1368 0
.LVL122:
.LBB91:
	.loc 1 1369 0
#APP
	# 1369 "../30_Bsw/STL_common/Mcal_WdgLib.c" 1
	mfcr %d15, LO:(0xFE1C)
	# 0 "" 2
.LVL123:
#NO_APP
.LBE91:
.LBB92:
.LBB93:
	.loc 1 455 0
	and	%d15, %d15, 7
.LVL124:
	add	%d15, 1
	sh	%d2, %d15, 1
	movh.a	%a2, hi:ScuWdtPtrList
	add	%d15, %d2
	lea	%a2, [%a2] lo:ScuWdtPtrList
	addsc.a	%a15, %a2, %d15, 2
	.loc 1 460 0
	nand	%d2, %d4, ~(-253)
	.loc 1 455 0
	ld.a	%a15, [%a15] 4
.LVL125:
	.loc 1 459 0
	mov.u	%d15, 65280
.LVL126:
	and	%d15, %d4
	.loc 1 461 0
	and	%d2, %d2, 252
	.loc 1 459 0
	or	%d2, %d15
.LVL127:
	.loc 1 464 0
	ld.w	%d15, [%a15]0
	jz.t	%d15, 7, .L50
.LVL128:
.LBB94:
	.loc 1 472 0
	sh	%d3, %d2, -11
	sh	%d15, %d2, -1
	xor	%d15, %d3
	sh	%d3, %d2, -12
	xor	%d15, %d3
	sh	%d3, %d2, -13
	xor	%d15, %d3
	and	%d15, %d15, 4
	.loc 1 474 0
	sh	%d2, 1
.LVL129:
	or	%d2, %d15
	mov.u	%d15, 65532
.LVL130:
	and	%d2, %d15
.LVL131:
.L50:
.LBE94:
.LBE93:
.LBE92:
	.loc 1 1371 0
	ret
.LFE35:
	.size	Mcal_CpuWdtPwSequence, .-Mcal_CpuWdtPwSequence
	.section .data.STL_RAM_32BIT_NONZERO_INIT,"aw",@progbits
	.align 2
	.type	Mcal_ResetEndInitCounterRedn, @object
	.size	Mcal_ResetEndInitCounterRedn, 4
Mcal_ResetEndInitCounterRedn:
	.word	-1
	.align 2
	.type	Mcal_ResetEndInitCounter, @object
	.size	Mcal_ResetEndInitCounter, 4
Mcal_ResetEndInitCounter:
	.zero	4
	.section .rodata.STL_CONST_32BIT,"a",@progbits
	.align 2
	.type	ScuWdtPtrList, @object
	.size	ScuWdtPtrList, 24
ScuWdtPtrList:
	.word	-268214032
	.word	-268214024
	.word	Swdt_TimValue
	.word	-268214016
	.word	-268214008
	.word	Wdt0_TimValue
	.align 2
	.type	ScuWdtPtrListRedn, @object
	.size	ScuWdtPtrListRedn, 24
ScuWdtPtrListRedn:
	.word	-268214032
	.word	-268214024
	.word	Swdt_TimValueRedn
	.word	-268214016
	.word	-268214008
	.word	Wdt0_TimValueRedn
	.section .data.STL_RAM_32BIT_NONZERO_INIT
	.align 2
	.type	Mcal_WdgSafetyEndInitSem, @object
	.size	Mcal_WdgSafetyEndInitSem, 4
Mcal_WdgSafetyEndInitSem:
	.zero	4
	.align 2
	.type	Mcal_WdgSafetyEndInitSemRedn, @object
	.size	Mcal_WdgSafetyEndInitSemRedn, 4
Mcal_WdgSafetyEndInitSemRedn:
	.word	-1
	.align 2
	.type	Mcal_SafetyResetEndInitCounterRedn, @object
	.size	Mcal_SafetyResetEndInitCounterRedn, 4
Mcal_SafetyResetEndInitCounterRedn:
	.word	-1
	.align 2
	.type	Mcal_SafetyResetEndInitCounter, @object
	.size	Mcal_SafetyResetEndInitCounter, 4
Mcal_SafetyResetEndInitCounter:
	.zero	4
	.section .data.STL_RAM_32BIT,"aw",@progbits
	.align 2
	.type	Swdt_TimValue, @object
	.size	Swdt_TimValue, 4
Swdt_TimValue:
	.zero	4
	.align 2
	.type	Wdt0_TimValue, @object
	.size	Wdt0_TimValue, 4
Wdt0_TimValue:
	.zero	4
	.align 2
	.type	Swdt_TimValueRedn, @object
	.size	Swdt_TimValueRedn, 4
Swdt_TimValueRedn:
	.zero	4
	.align 2
	.type	Wdt0_TimValueRedn, @object
	.size	Wdt0_TimValueRedn, 4
Wdt0_TimValueRedn:
	.zero	4
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
	.uaword	.LFB22
	.uaword	.LFE22-.LFB22
	.byte	0x4
	.uaword	.LCFI0-.LFB22
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB20
	.uaword	.LFE20-.LFB20
	.byte	0x4
	.uaword	.LCFI1-.LFB20
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB21
	.uaword	.LFE21-.LFB21
	.byte	0x4
	.uaword	.LCFI2-.LFB21
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB24
	.uaword	.LFE24-.LFB24
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB26
	.uaword	.LFE26-.LFB26
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB28
	.uaword	.LFE28-.LFB28
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB29
	.uaword	.LFE29-.LFB29
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB30
	.uaword	.LFE30-.LFB30
	.align 2
.LEFDE14:
.LSFDE16:
	.uaword	.LEFDE16-.LASFDE16
.LASFDE16:
	.uaword	.Lframe0
	.uaword	.LFB31
	.uaword	.LFE31-.LFB31
	.align 2
.LEFDE16:
.LSFDE18:
	.uaword	.LEFDE18-.LASFDE18
.LASFDE18:
	.uaword	.Lframe0
	.uaword	.LFB32
	.uaword	.LFE32-.LFB32
	.align 2
.LEFDE18:
.LSFDE20:
	.uaword	.LEFDE20-.LASFDE20
.LASFDE20:
	.uaword	.Lframe0
	.uaword	.LFB33
	.uaword	.LFE33-.LFB33
	.align 2
.LEFDE20:
.LSFDE22:
	.uaword	.LEFDE22-.LASFDE22
.LASFDE22:
	.uaword	.Lframe0
	.uaword	.LFB34
	.uaword	.LFE34-.LFB34
	.align 2
.LEFDE22:
.LSFDE24:
	.uaword	.LEFDE24-.LASFDE24
.LASFDE24:
	.uaword	.Lframe0
	.uaword	.LFB35
	.uaword	.LFE35-.LFB35
	.align 2
.LEFDE24:
.section .text,"ax",@progbits
.Letext0:
	.file 2 "../30_Bsw/Common/Platform_Types.h"
	.file 3 "../30_Bsw/Common/Std_Types.h"
	.file 4 "../30_Bsw/Common/TC21x/IfxScu_regdef.h"
	.file 5 "../30_Bsw/iohw/Static/iohwsf.h"
	.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x1c6a
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.6.3 build on 2013-05-17"
	.byte	0x1
	.string	"../30_Bsw/STL_common/Mcal_WdgLib.c"
	.string	"S:\\\\20_Make"
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_ranges0+0x120
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
	.string	"sint8"
	.byte	0x2
	.byte	0x5a
	.uaword	0x6c
	.uleb128 0x3
	.string	"uint8"
	.byte	0x2
	.byte	0x5b
	.uaword	0x7b
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x3
	.string	"uint32"
	.byte	0x2
	.byte	0x5f
	.uaword	0xd9
	.uleb128 0x3
	.string	"Std_ReturnType"
	.byte	0x3
	.byte	0x71
	.uaword	0x103
	.uleb128 0x4
	.string	"_Ifx_SCU_WDTCPU_CON0_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x405
	.uaword	0x1af
	.uleb128 0x5
	.string	"ENDINIT"
	.byte	0x4
	.uahalf	0x407
	.uaword	0x1af
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"LCK"
	.byte	0x4
	.uahalf	0x408
	.uaword	0x1af
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"PW"
	.byte	0x4
	.uahalf	0x409
	.uaword	0x1af
	.byte	0x4
	.byte	0xe
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"REL"
	.byte	0x4
	.uahalf	0x40a
	.uaword	0x1af
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x6
	.uaword	0xb6
	.uleb128 0x7
	.string	"Ifx_SCU_WDTCPU_CON0_Bits"
	.byte	0x4
	.uahalf	0x40b
	.uaword	0x140
	.uleb128 0x4
	.string	"_Ifx_SCU_WDTCPU_SR_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x41d
	.uaword	0x2b8
	.uleb128 0x5
	.string	"AE"
	.byte	0x4
	.uahalf	0x41f
	.uaword	0xb6
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"OE"
	.byte	0x4
	.uahalf	0x420
	.uaword	0xb6
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"IS0"
	.byte	0x4
	.uahalf	0x421
	.uaword	0xb6
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"DS"
	.byte	0x4
	.uahalf	0x422
	.uaword	0xb6
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"TO"
	.byte	0x4
	.uahalf	0x423
	.uaword	0xb6
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"IS1"
	.byte	0x4
	.uahalf	0x424
	.uaword	0xb6
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"US"
	.byte	0x4
	.uahalf	0x425
	.uaword	0xb6
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"PAS"
	.byte	0x4
	.uahalf	0x426
	.uaword	0xb6
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"TCS"
	.byte	0x4
	.uahalf	0x427
	.uaword	0xb6
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"TCT"
	.byte	0x4
	.uahalf	0x428
	.uaword	0xb6
	.byte	0x4
	.byte	0x7
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"TIM"
	.byte	0x4
	.uahalf	0x429
	.uaword	0xb6
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x7
	.string	"Ifx_SCU_WDTCPU_SR_Bits"
	.byte	0x4
	.uahalf	0x42a
	.uaword	0x1d5
	.uleb128 0x8
	.byte	0x4
	.byte	0x4
	.uahalf	0x6bb
	.uaword	0x2ff
	.uleb128 0x9
	.string	"U"
	.byte	0x4
	.uahalf	0x6bd
	.uaword	0xb6
	.uleb128 0x9
	.string	"I"
	.byte	0x4
	.uahalf	0x6be
	.uaword	0xaf
	.uleb128 0x9
	.string	"B"
	.byte	0x4
	.uahalf	0x6bf
	.uaword	0x1b4
	.byte	0
	.uleb128 0x7
	.string	"Ifx_SCU_WDTCPU_CON0"
	.byte	0x4
	.uahalf	0x6c0
	.uaword	0x2d7
	.uleb128 0x8
	.byte	0x4
	.byte	0x4
	.uahalf	0x6cb
	.uaword	0x343
	.uleb128 0x9
	.string	"U"
	.byte	0x4
	.uahalf	0x6cd
	.uaword	0xb6
	.uleb128 0x9
	.string	"I"
	.byte	0x4
	.uahalf	0x6ce
	.uaword	0xaf
	.uleb128 0x9
	.string	"B"
	.byte	0x4
	.uahalf	0x6cf
	.uaword	0x2b8
	.byte	0
	.uleb128 0x7
	.string	"Ifx_SCU_WDTCPU_SR"
	.byte	0x4
	.uahalf	0x6d0
	.uaword	0x31b
	.uleb128 0xa
	.byte	0x4
	.byte	0x5
	.byte	0x24
	.uaword	0xf83
	.uleb128 0xb
	.string	"IOHWSF_E_SSCHECK"
	.sleb128 0
	.uleb128 0xb
	.string	"IOHWSF_E_SMU_CONFIGURATION_CHECK"
	.sleb128 1
	.uleb128 0xb
	.string	"IOHWSF_E_ISR_UNHANDLED_ISR"
	.sleb128 2
	.uleb128 0xb
	.string	"IOHWSF_E_ISR_100U_SOURCE_ERR"
	.sleb128 3
	.uleb128 0xb
	.string	"IOHWSF_E_ISR_1M_SOURCE_ERR"
	.sleb128 4
	.uleb128 0xb
	.string	"IOHWSF_E_ISR_10M_SOURCE_ERR"
	.sleb128 5
	.uleb128 0xb
	.string	"IOHWSF_E_SAFETLIB_INIT"
	.sleb128 6
	.uleb128 0xb
	.string	"IOHWSF_E_SAFETLIB_PRE_INIT"
	.sleb128 7
	.uleb128 0xb
	.string	"IOHWSF_E_SAFETLIB_PRERUN_PREHOOK"
	.sleb128 8
	.uleb128 0xb
	.string	"IOHWSF_E_SAFETLIB_PRERUN_TEST_FAIL"
	.sleb128 9
	.uleb128 0xb
	.string	"IOHWSF_E_SAFETLIB_PRERUN_POSTHOOK"
	.sleb128 10
	.uleb128 0xb
	.string	"IOHWSF_E_SAFETLIB_RUN_TEST_FAIL"
	.sleb128 11
	.uleb128 0xb
	.string	"IOHWSF_E_SAFETLIB_SRC_REG_CHECK_FAIL"
	.sleb128 12
	.uleb128 0xb
	.string	"IOHWSF_E_MCAL_DIV_INCONSISTENCY"
	.sleb128 13
	.uleb128 0xb
	.string	"IOHWSF_E_MCAL_SPINLOCK_TIMEOUT"
	.sleb128 14
	.uleb128 0xb
	.string	"IOHWSF_E_TRAP_VIRTUAL_ADDRESS_FILL"
	.sleb128 15
	.uleb128 0xb
	.string	"IOHWSF_E_TRAP_VIRTUAL_ADDRESS_PROTECTION"
	.sleb128 16
	.uleb128 0xb
	.string	"IOHWSF_E_TRAP_PRIVILEGE_INSTRUCTION"
	.sleb128 17
	.uleb128 0xb
	.string	"IOHWSF_E_TRAP_MEMORY_PROTECTION_READ"
	.sleb128 18
	.uleb128 0xb
	.string	"IOHWSF_E_TRAP_MEMORY_PROTECTION_WRITE"
	.sleb128 19
	.uleb128 0xb
	.string	"IOHWSF_E_TRAP_MEMORY_PROTECTION_EXECUTION"
	.sleb128 20
	.uleb128 0xb
	.string	"IOHWSF_E_TRAP_PROTECTION_PERIPHERAL_ACCESS"
	.sleb128 21
	.uleb128 0xb
	.string	"IOHWSF_E_TRAP_MEMORY_PROTECTION_NULL_ADDRESS"
	.sleb128 22
	.uleb128 0xb
	.string	"IOHWSF_E_TRAP_GLOBAL_REGISTER_WRITE_PROTECTION"
	.sleb128 23
	.uleb128 0xb
	.string	"IOHWSF_E_TRAP_ILLEGAL_OPCODE"
	.sleb128 24
	.uleb128 0xb
	.string	"IOHWSF_E_TRAP_UNIMPLEMENTED_OPCODE"
	.sleb128 25
	.uleb128 0xb
	.string	"IOHWSF_E_TRAP_INVALID_OPERAND_SPECIFICATION"
	.sleb128 26
	.uleb128 0xb
	.string	"IOHWSF_E_TRAP_DATA_ADDRESS_ALIGNMENT"
	.sleb128 27
	.uleb128 0xb
	.string	"IOHWSF_E_TRAP_INVALID_LOCAL_MEMORY_ADDRESS"
	.sleb128 28
	.uleb128 0xb
	.string	"IOHWSF_E_TRAP_FREE_CONTEXT_LIST_DEPLETION"
	.sleb128 29
	.uleb128 0xb
	.string	"IOHWSF_E_TRAP_CALL_DEPTH_OVERFLOW"
	.sleb128 30
	.uleb128 0xb
	.string	"IOHWSF_E_TRAP_CALL_DEPTH_UNDERFLOW"
	.sleb128 31
	.uleb128 0xb
	.string	"IOHWSF_E_TRAP_FREE_CONTEXT_LIST_UNDERFLOW"
	.sleb128 32
	.uleb128 0xb
	.string	"IOHWSF_E_TRAP_CALL_STACK_UNDERFLOW"
	.sleb128 33
	.uleb128 0xb
	.string	"IOHWSF_E_TRAP_CONTEXT_TYPE"
	.sleb128 34
	.uleb128 0xb
	.string	"IOHWSF_E_TRAP_NESTING_ERROR"
	.sleb128 35
	.uleb128 0xb
	.string	"IOHWSF_E_TRAP_PROGRAM_FETCH_SYNCHRONOUS_ERROR"
	.sleb128 36
	.uleb128 0xb
	.string	"IOHWSF_E_TRAP_DATA_ACCESS_SYNCHRONOUS_ERROR"
	.sleb128 37
	.uleb128 0xb
	.string	"IOHWSF_E_TRAP_DATA_ACCESS_ASYNCHRONOUS_ERROR"
	.sleb128 38
	.uleb128 0xb
	.string	"IOHWSF_E_TRAP_ARITHEMETIC_OVERFLOW"
	.sleb128 39
	.uleb128 0xb
	.string	"IOHWSF_E_TRAP_STICKY_ARITHEMETIC_OVERFLOW"
	.sleb128 40
	.uleb128 0xb
	.string	"IOHWSF_E_TRAP_UNEXPECTED_SYSTEM_CALL"
	.sleb128 41
	.uleb128 0xb
	.string	"IOHWSF_E_TRAP_UNEXPECTED_NMI"
	.sleb128 42
	.uleb128 0xb
	.string	"IOHWSF_E_TRAP_UNDEFINED_TIN"
	.sleb128 43
	.uleb128 0xb
	.string	"IOHWSF_E_CORE0_NOT_IN_SAFE_STATE"
	.sleb128 44
	.uleb128 0xb
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_TRAP_TST"
	.sleb128 45
	.uleb128 0xb
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_CLKM_TST"
	.sleb128 46
	.uleb128 0xb
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_SRAM_ECC_TST"
	.sleb128 47
	.uleb128 0xb
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_PMU_ECC_EDC_TST"
	.sleb128 48
	.uleb128 0xb
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_SRI_TST"
	.sleb128 49
	.uleb128 0xb
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_SPB_TST_TIMEOUT"
	.sleb128 50
	.uleb128 0xb
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_SFF_TST"
	.sleb128 51
	.uleb128 0xb
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_SPB_TST_RAP"
	.sleb128 52
	.uleb128 0xb
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_CPU_MPU_TST"
	.sleb128 53
	.uleb128 0xb
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_CPUBUSMPULFM_TST"
	.sleb128 54
	.uleb128 0xb
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_REG_ACC_PROT_TST"
	.sleb128 55
	.uleb128 0xb
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_CPU_WDG_TST"
	.sleb128 56
	.uleb128 0xb
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_SAFETY_WDG_TST"
	.sleb128 57
	.uleb128 0xb
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_SMU_TST_NMI"
	.sleb128 58
	.uleb128 0xb
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_SMU_TST_IRQ"
	.sleb128 59
	.uleb128 0xb
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_SMU_TST_RT"
	.sleb128 60
	.uleb128 0xb
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_VLM_TST"
	.sleb128 61
	.uleb128 0xb
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_IR_TST"
	.sleb128 62
	.uleb128 0xb
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_LOCK_STEP_TST"
	.sleb128 63
	.uleb128 0xb
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_SFR_CMP_TST"
	.sleb128 64
	.uleb128 0xb
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_SRC_REG_CHECK_TST"
	.sleb128 65
	.uleb128 0xb
	.string	"IOHWSF_E_FLASH_TEST_PATTERN_NOT_FLSHED"
	.sleb128 66
	.uleb128 0xb
	.string	"IOHWSF_E_SETUP_FSP_PIN"
	.sleb128 67
	.uleb128 0xb
	.string	"IOHWSF_E_SMU_LOCK_CFG_TST"
	.sleb128 68
	.uleb128 0xb
	.string	"IOHWSF_E_SAFETY_ISR_RESET"
	.sleb128 69
	.uleb128 0xb
	.string	"IOHWSF_E_TLF_ERR_DETECTION_TIMEOUT"
	.sleb128 70
	.uleb128 0xb
	.string	"IOHWSF_E_TLF_SYS_FLAGS_NOT_CLEARED"
	.sleb128 71
	.uleb128 0xb
	.string	"IOHWSF_E_TLF_RESTORE_FAILED"
	.sleb128 72
	.uleb128 0xb
	.string	"IOHWSF_E_RELEASE_FSP_FAILED"
	.sleb128 73
	.uleb128 0xb
	.string	"IOHWSF_E_UDS_ECU_RESET_REQ"
	.sleb128 74
	.uleb128 0xb
	.string	"IOHWSF_E_UDS_SRAM_ECCPREAOU_FAILED"
	.sleb128 75
	.byte	0
	.uleb128 0xc
	.uaword	.LASF0
	.byte	0xc
	.byte	0x1
	.byte	0x77
	.uaword	0xfd3
	.uleb128 0xd
	.string	"Wdtcon0Ptr"
	.byte	0x1
	.byte	0x7a
	.uaword	0xfd3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"WdtssrPtr"
	.byte	0x1
	.byte	0x7c
	.uaword	0xfde
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"WdtSaveValuePtr"
	.byte	0x1
	.byte	0x7e
	.uaword	0xfe9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.uaword	0xfd9
	.uleb128 0x6
	.uaword	0x2ff
	.uleb128 0xe
	.byte	0x4
	.uaword	0xfe4
	.uleb128 0x6
	.uaword	0x343
	.uleb128 0xe
	.byte	0x4
	.uaword	0x11c
	.uleb128 0xf
	.uaword	.LASF0
	.byte	0x1
	.byte	0x7f
	.uaword	0xf83
	.uleb128 0x10
	.string	"Mcal_lCpuRelValue"
	.byte	0x1
	.uahalf	0x1f5
	.byte	0x1
	.uaword	0x11c
	.byte	0x1
	.uaword	0x1054
	.uleb128 0x11
	.string	"wdt"
	.byte	0x1
	.uahalf	0x1f5
	.uaword	0x1054
	.uleb128 0x11
	.string	"TimReload"
	.byte	0x1
	.uahalf	0x1f5
	.uaword	0x1059
	.uleb128 0x12
	.string	"Result"
	.byte	0x1
	.uahalf	0x1f7
	.uaword	0x11c
	.uleb128 0x13
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x1f9
	.uaword	0xfde
	.byte	0
	.uleb128 0x14
	.uaword	0xf6
	.uleb128 0x14
	.uaword	0x11c
	.uleb128 0x15
	.string	"Mcal_lResetSafetyENDINIT"
	.byte	0x1
	.uahalf	0x3a3
	.byte	0x1
	.byte	0x1
	.uleb128 0x15
	.string	"Mcal_lSetSafetyENDINIT"
	.byte	0x1
	.uahalf	0x412
	.byte	0x1
	.byte	0x1
	.uleb128 0x16
	.string	"Mcal_lCpuCheckAccess"
	.byte	0x1
	.uahalf	0x320
	.byte	0x1
	.byte	0x1
	.uaword	0x10f6
	.uleb128 0x11
	.string	"wdt"
	.byte	0x1
	.uahalf	0x322
	.uaword	0x1054
	.uleb128 0x17
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x323
	.uaword	0x1059
	.uleb128 0x17
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x324
	.uaword	0x1059
	.uleb128 0x13
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x327
	.uaword	0x11c
	.uleb128 0x13
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x329
	.uaword	0xfd3
	.byte	0
	.uleb128 0x10
	.string	"Mcal_lCpuPwSequence"
	.byte	0x1
	.uahalf	0x1c3
	.byte	0x1
	.uaword	0x11c
	.byte	0x1
	.uaword	0x1167
	.uleb128 0x11
	.string	"wdt"
	.byte	0x1
	.uahalf	0x1c3
	.uaword	0x1054
	.uleb128 0x17
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x1c3
	.uaword	0x1059
	.uleb128 0x12
	.string	"Result"
	.byte	0x1
	.uahalf	0x1c5
	.uaword	0x11c
	.uleb128 0x13
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x1c7
	.uaword	0xfde
	.uleb128 0x18
	.uleb128 0x12
	.string	"lfsr"
	.byte	0x1
	.uahalf	0x1d7
	.uaword	0x11c
	.uleb128 0x12
	.string	"bit"
	.byte	0x1
	.uahalf	0x1d8
	.uaword	0x11c
	.byte	0
	.byte	0
	.uleb128 0x19
	.string	"Mcal_lCpuModifyAccess"
	.byte	0x1
	.uahalf	0x2ba
	.byte	0x1
	.uaword	.LFB22
	.uaword	.LFE22
	.uaword	.LLST0
	.uaword	0x12d8
	.uleb128 0x1a
	.string	"wdt"
	.byte	0x1
	.uahalf	0x2bc
	.uaword	0x1054
	.uaword	.LLST1
	.uleb128 0x1b
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x2bd
	.uaword	0x1059
	.uaword	.LLST2
	.uleb128 0x1b
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x2be
	.uaword	0x1059
	.uaword	.LLST3
	.uleb128 0x1c
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x2c1
	.uaword	0x11c
	.uaword	.LLST4
	.uleb128 0x1d
	.string	"NewPw"
	.byte	0x1
	.uahalf	0x2c2
	.uaword	0x11c
	.byte	0x1
	.byte	0x53
	.uleb128 0x1e
	.uaword	.LASF9
	.byte	0x1
	.uahalf	0x2c3
	.uaword	0x11c
	.byte	0x1
	.byte	0x54
	.uleb128 0x1f
	.string	"NewTimer"
	.byte	0x1
	.uahalf	0x2c4
	.uaword	0x11c
	.uaword	.LLST5
	.uleb128 0x12
	.string	"NewPwd"
	.byte	0x1
	.uahalf	0x2c5
	.uaword	0x11c
	.uleb128 0x1f
	.string	"CurrState"
	.byte	0x1
	.uahalf	0x2c6
	.uaword	0x11c
	.uaword	.LLST6
	.uleb128 0x1f
	.string	"dummy"
	.byte	0x1
	.uahalf	0x2c7
	.uaword	0x12d8
	.uaword	.LLST7
	.uleb128 0x1e
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x2c9
	.uaword	0xfd3
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.uleb128 0x20
	.uaword	0x10f6
	.uaword	.LBB22
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.uahalf	0x2d6
	.uaword	0x12a1
	.uleb128 0x21
	.uaword	0x1124
	.uaword	.LLST8
	.uleb128 0x22
	.uaword	0x1118
	.uleb128 0x23
	.uaword	.Ldebug_ranges0+0x18
	.uleb128 0x24
	.uaword	0x1130
	.uaword	.LLST9
	.uleb128 0x25
	.uaword	0x113f
	.byte	0x2
	.byte	0x8c
	.sleb128 4
	.uleb128 0x26
	.uaword	.LBB24
	.uaword	.LBE24
	.uleb128 0x24
	.uaword	0x114c
	.uaword	.LLST10
	.uleb128 0x24
	.uaword	0x1159
	.uaword	.LLST11
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x27
	.uaword	0xffa
	.uaword	.LBB27
	.uaword	.LBE27
	.byte	0x1
	.uahalf	0x2d9
	.uleb128 0x22
	.uaword	0x1026
	.uleb128 0x22
	.uaword	0x101a
	.uleb128 0x26
	.uaword	.LBB28
	.uaword	.LBE28
	.uleb128 0x24
	.uaword	0x1038
	.uaword	.LLST12
	.uleb128 0x25
	.uaword	0x1047
	.byte	0x2
	.byte	0x8c
	.sleb128 4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x6
	.uaword	0x11c
	.uleb128 0x28
	.byte	0x1
	.string	"Mcal_ResetCpuENDINIT"
	.byte	0x1
	.uahalf	0x21d
	.byte	0x1
	.uaword	.LFB20
	.uaword	.LFE20
	.uaword	.LLST13
	.uaword	0x1436
	.uleb128 0x1a
	.string	"wdt"
	.byte	0x1
	.uahalf	0x21d
	.uaword	0x1054
	.uaword	.LLST14
	.uleb128 0x1c
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x21f
	.uaword	0x11c
	.uaword	.LLST15
	.uleb128 0x1d
	.string	"NewPw"
	.byte	0x1
	.uahalf	0x220
	.uaword	0x11c
	.byte	0x1
	.byte	0x5f
	.uleb128 0x1e
	.uaword	.LASF9
	.byte	0x1
	.uahalf	0x221
	.uaword	0x11c
	.byte	0x1
	.byte	0x52
	.uleb128 0x1f
	.string	"Temp"
	.byte	0x1
	.uahalf	0x222
	.uaword	0x11c
	.uaword	.LLST16
	.uleb128 0x1f
	.string	"dummy"
	.byte	0x1
	.uahalf	0x223
	.uaword	0x12d8
	.uaword	.LLST17
	.uleb128 0x1c
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x225
	.uaword	0xfd3
	.uaword	.LLST18
	.uleb128 0x1c
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x227
	.uaword	0xfde
	.uaword	.LLST19
	.uleb128 0x1c
	.uaword	.LASF10
	.byte	0x1
	.uahalf	0x229
	.uaword	0xfe9
	.uaword	.LLST20
	.uleb128 0x1e
	.uaword	.LASF11
	.byte	0x1
	.uahalf	0x22a
	.uaword	0xfe9
	.byte	0x1
	.byte	0x63
	.uleb128 0x20
	.uaword	0x10f6
	.uaword	.LBB34
	.uaword	.Ldebug_ranges0+0x30
	.byte	0x1
	.uahalf	0x230
	.uaword	0x13fc
	.uleb128 0x21
	.uaword	0x1124
	.uaword	.LLST21
	.uleb128 0x22
	.uaword	0x1118
	.uleb128 0x23
	.uaword	.Ldebug_ranges0+0x60
	.uleb128 0x24
	.uaword	0x1130
	.uaword	.LLST22
	.uleb128 0x25
	.uaword	0x113f
	.byte	0x1
	.byte	0x62
	.uleb128 0x26
	.uaword	.LBB36
	.uaword	.LBE36
	.uleb128 0x24
	.uaword	0x114c
	.uaword	.LLST23
	.uleb128 0x24
	.uaword	0x1159
	.uaword	.LLST24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x27
	.uaword	0xffa
	.uaword	.LBB45
	.uaword	.LBE45
	.byte	0x1
	.uahalf	0x233
	.uleb128 0x21
	.uaword	0x1026
	.uaword	.LLST25
	.uleb128 0x22
	.uaword	0x101a
	.uleb128 0x26
	.uaword	.LBB46
	.uaword	.LBE46
	.uleb128 0x24
	.uaword	0x1038
	.uaword	.LLST26
	.uleb128 0x25
	.uaword	0x1047
	.byte	0x1
	.byte	0x62
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.string	"Mcal_SetCpuENDINIT"
	.byte	0x1
	.uahalf	0x265
	.byte	0x1
	.uaword	.LFB21
	.uaword	.LFE21
	.uaword	.LLST27
	.uaword	0x157e
	.uleb128 0x1a
	.string	"wdt"
	.byte	0x1
	.uahalf	0x265
	.uaword	0x1054
	.uaword	.LLST28
	.uleb128 0x1c
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x267
	.uaword	0x11c
	.uaword	.LLST29
	.uleb128 0x1d
	.string	"NewPw"
	.byte	0x1
	.uahalf	0x268
	.uaword	0x11c
	.byte	0x1
	.byte	0x5f
	.uleb128 0x1e
	.uaword	.LASF9
	.byte	0x1
	.uahalf	0x269
	.uaword	0x11c
	.byte	0x1
	.byte	0x52
	.uleb128 0x1f
	.string	"dummy"
	.byte	0x1
	.uahalf	0x26a
	.uaword	0x12d8
	.uaword	.LLST30
	.uleb128 0x1c
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x26c
	.uaword	0xfd3
	.uaword	.LLST31
	.uleb128 0x1c
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x26e
	.uaword	0xfde
	.uaword	.LLST32
	.uleb128 0x1c
	.uaword	.LASF10
	.byte	0x1
	.uahalf	0x270
	.uaword	0xfe9
	.uaword	.LLST33
	.uleb128 0x1c
	.uaword	.LASF11
	.byte	0x1
	.uahalf	0x271
	.uaword	0xfe9
	.uaword	.LLST34
	.uleb128 0x20
	.uaword	0x10f6
	.uaword	.LBB52
	.uaword	.Ldebug_ranges0+0x90
	.byte	0x1
	.uahalf	0x277
	.uaword	0x1544
	.uleb128 0x21
	.uaword	0x1124
	.uaword	.LLST35
	.uleb128 0x22
	.uaword	0x1118
	.uleb128 0x23
	.uaword	.Ldebug_ranges0+0xc0
	.uleb128 0x24
	.uaword	0x1130
	.uaword	.LLST36
	.uleb128 0x25
	.uaword	0x113f
	.byte	0x1
	.byte	0x6c
	.uleb128 0x26
	.uaword	.LBB54
	.uaword	.LBE54
	.uleb128 0x24
	.uaword	0x114c
	.uaword	.LLST37
	.uleb128 0x24
	.uaword	0x1159
	.uaword	.LLST38
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x27
	.uaword	0xffa
	.uaword	.LBB63
	.uaword	.LBE63
	.byte	0x1
	.uahalf	0x27a
	.uleb128 0x21
	.uaword	0x1026
	.uaword	.LLST39
	.uleb128 0x22
	.uaword	0x101a
	.uleb128 0x26
	.uaword	.LBB64
	.uaword	.LBE64
	.uleb128 0x24
	.uaword	0x1038
	.uaword	.LLST40
	.uleb128 0x25
	.uaword	0x1047
	.byte	0x1
	.byte	0x6c
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.string	"Mcal_ResetENDINIT"
	.byte	0x1
	.uahalf	0x366
	.byte	0x1
	.uaword	.LFB24
	.uaword	.LFE24
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x15f3
	.uleb128 0x1d
	.string	"CoreID"
	.byte	0x1
	.uahalf	0x368
	.uaword	0x11c
	.byte	0x1
	.byte	0x58
	.uleb128 0x1d
	.string	"Ctr"
	.byte	0x1
	.uahalf	0x369
	.uaword	0x11c
	.byte	0x1
	.byte	0x59
	.uleb128 0x1f
	.string	"CtrRedn"
	.byte	0x1
	.uahalf	0x36a
	.uaword	0x11c
	.uaword	.LLST41
	.uleb128 0x26
	.uaword	.LBB65
	.uaword	.LBE65
	.uleb128 0x1c
	.uaword	.LASF12
	.byte	0x1
	.uahalf	0x36c
	.uaword	0xb6
	.uaword	.LLST42
	.byte	0
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.string	"Mcal_SetENDINIT"
	.byte	0x1
	.uahalf	0x3d9
	.byte	0x1
	.uaword	.LFB26
	.uaword	.LFE26
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x1668
	.uleb128 0x1d
	.string	"CoreID"
	.byte	0x1
	.uahalf	0x3db
	.uaword	0x11c
	.byte	0x1
	.byte	0x58
	.uleb128 0x1f
	.string	"Ctr"
	.byte	0x1
	.uahalf	0x3dc
	.uaword	0x11c
	.uaword	.LLST43
	.uleb128 0x1f
	.string	"CtrRedn"
	.byte	0x1
	.uahalf	0x3dd
	.uaword	0x11c
	.uaword	.LLST44
	.uleb128 0x26
	.uaword	.LBB66
	.uaword	.LBE66
	.uleb128 0x1c
	.uaword	.LASF12
	.byte	0x1
	.uahalf	0x3df
	.uaword	0xb6
	.uaword	.LLST45
	.byte	0
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.string	"Mcal_ResetSafetyENDINIT_Timed"
	.byte	0x1
	.uahalf	0x441
	.byte	0x1
	.uaword	.LFB28
	.uaword	.LFE28
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x16d3
	.uleb128 0x1a
	.string	"TimeOut"
	.byte	0x1
	.uahalf	0x441
	.uaword	0x11c
	.uaword	.LLST46
	.uleb128 0x1f
	.string	"RetVal"
	.byte	0x1
	.uahalf	0x443
	.uaword	0x12a
	.uaword	.LLST47
	.uleb128 0x2a
	.uaword	0x105e
	.uaword	.LBB67
	.uaword	.Ldebug_ranges0+0xf0
	.byte	0x1
	.uahalf	0x456
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.string	"Mcal_SetSafetyENDINIT_Timed"
	.byte	0x1
	.uahalf	0x475
	.byte	0x1
	.uaword	.LFB29
	.uaword	.LFE29
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x1715
	.uleb128 0x2a
	.uaword	0x107d
	.uaword	.LBB71
	.uaword	.Ldebug_ranges0+0x108
	.byte	0x1
	.uahalf	0x481
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.string	"Mcal_SafetyModifyAccess"
	.byte	0x1
	.uahalf	0x4ab
	.byte	0x1
	.uaword	.LFB30
	.uaword	.LFE30
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x1763
	.uleb128 0x1b
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x4ab
	.uaword	0x1059
	.uaword	.LLST48
	.uleb128 0x1b
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x4ab
	.uaword	0x1059
	.uaword	.LLST49
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.string	"Mcal_CpuWdtModifyAccess"
	.byte	0x1
	.uahalf	0x4d2
	.byte	0x1
	.uaword	.LFB31
	.uaword	.LFE31
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x17db
	.uleb128 0x1b
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x4d2
	.uaword	0x1059
	.uaword	.LLST50
	.uleb128 0x1b
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x4d2
	.uaword	0x1059
	.uaword	.LLST51
	.uleb128 0x1c
	.uaword	.LASF13
	.byte	0x1
	.uahalf	0x4d4
	.uaword	0x103
	.uaword	.LLST52
	.uleb128 0x26
	.uaword	.LBB75
	.uaword	.LBE75
	.uleb128 0x1c
	.uaword	.LASF12
	.byte	0x1
	.uahalf	0x4d4
	.uaword	0xb6
	.uaword	.LLST53
	.byte	0
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.string	"Mcal_SafetyCheckAccess"
	.byte	0x1
	.uahalf	0x4f9
	.byte	0x1
	.uaword	.LFB32
	.uaword	.LFE32
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x186e
	.uleb128 0x1b
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x4f9
	.uaword	0x1059
	.uaword	.LLST54
	.uleb128 0x1b
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x4f9
	.uaword	0x1059
	.uaword	.LLST55
	.uleb128 0x27
	.uaword	0x109a
	.uaword	.LBB76
	.uaword	.LBE76
	.byte	0x1
	.uahalf	0x4fb
	.uleb128 0x21
	.uaword	0x10d1
	.uaword	.LLST56
	.uleb128 0x21
	.uaword	0x10c5
	.uaword	.LLST54
	.uleb128 0x2b
	.uaword	0x10b9
	.sleb128 -1
	.uleb128 0x26
	.uaword	.LBB77
	.uaword	.LBE77
	.uleb128 0x24
	.uaword	0x10dd
	.uaword	.LLST58
	.uleb128 0x2c
	.uaword	0x10e9
	.sleb128 -268214032
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.string	"Mcal_CpuWdtCheckAccess"
	.byte	0x1
	.uahalf	0x51f
	.byte	0x1
	.uaword	.LFB33
	.uaword	.LFE33
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x1931
	.uleb128 0x1b
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x51f
	.uaword	0x1059
	.uaword	.LLST59
	.uleb128 0x1b
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x51f
	.uaword	0x1059
	.uaword	.LLST60
	.uleb128 0x1c
	.uaword	.LASF13
	.byte	0x1
	.uahalf	0x521
	.uaword	0x103
	.uaword	.LLST61
	.uleb128 0x2d
	.uaword	.LBB78
	.uaword	.LBE78
	.uaword	0x18e8
	.uleb128 0x1c
	.uaword	.LASF12
	.byte	0x1
	.uahalf	0x521
	.uaword	0xb6
	.uaword	.LLST62
	.byte	0
	.uleb128 0x27
	.uaword	0x109a
	.uaword	.LBB79
	.uaword	.LBE79
	.byte	0x1
	.uahalf	0x522
	.uleb128 0x21
	.uaword	0x10d1
	.uaword	.LLST63
	.uleb128 0x21
	.uaword	0x10c5
	.uaword	.LLST64
	.uleb128 0x21
	.uaword	0x10b9
	.uaword	.LLST61
	.uleb128 0x26
	.uaword	.LBB80
	.uaword	.LBE80
	.uleb128 0x24
	.uaword	0x10dd
	.uaword	.LLST66
	.uleb128 0x24
	.uaword	0x10e9
	.uaword	.LLST67
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.byte	0x1
	.string	"Mcal_SafetyPwSequence"
	.byte	0x1
	.uahalf	0x53b
	.byte	0x1
	.uaword	0x11c
	.uaword	.LFB34
	.uaword	.LFE34
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x19c6
	.uleb128 0x2f
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x53b
	.uaword	0x1059
	.byte	0x1
	.byte	0x54
	.uleb128 0x27
	.uaword	0x10f6
	.uaword	.LBB84
	.uaword	.LBE84
	.byte	0x1
	.uahalf	0x53d
	.uleb128 0x30
	.uaword	0x1124
	.byte	0x1
	.byte	0x54
	.uleb128 0x2b
	.uaword	0x1118
	.sleb128 -1
	.uleb128 0x26
	.uaword	.LBB85
	.uaword	.LBE85
	.uleb128 0x24
	.uaword	0x1130
	.uaword	.LLST68
	.uleb128 0x2c
	.uaword	0x113f
	.sleb128 -268214024
	.uleb128 0x26
	.uaword	.LBB86
	.uaword	.LBE86
	.uleb128 0x24
	.uaword	0x114c
	.uaword	.LLST69
	.uleb128 0x24
	.uaword	0x1159
	.uaword	.LLST70
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.byte	0x1
	.string	"Mcal_CpuWdtPwSequence"
	.byte	0x1
	.uahalf	0x557
	.byte	0x1
	.uaword	0x11c
	.uaword	.LFB35
	.uaword	.LFE35
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x1a8d
	.uleb128 0x1b
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x557
	.uaword	0x1059
	.uaword	.LLST71
	.uleb128 0x1c
	.uaword	.LASF13
	.byte	0x1
	.uahalf	0x559
	.uaword	0x103
	.uaword	.LLST72
	.uleb128 0x2d
	.uaword	.LBB91
	.uaword	.LBE91
	.uaword	0x1a33
	.uleb128 0x1c
	.uaword	.LASF12
	.byte	0x1
	.uahalf	0x559
	.uaword	0xb6
	.uaword	.LLST73
	.byte	0
	.uleb128 0x27
	.uaword	0x10f6
	.uaword	.LBB92
	.uaword	.LBE92
	.byte	0x1
	.uahalf	0x55a
	.uleb128 0x30
	.uaword	0x1124
	.byte	0x1
	.byte	0x54
	.uleb128 0x21
	.uaword	0x1118
	.uaword	.LLST72
	.uleb128 0x26
	.uaword	.LBB93
	.uaword	.LBE93
	.uleb128 0x24
	.uaword	0x1130
	.uaword	.LLST75
	.uleb128 0x24
	.uaword	0x113f
	.uaword	.LLST76
	.uleb128 0x26
	.uaword	.LBB94
	.uaword	.LBE94
	.uleb128 0x24
	.uaword	0x114c
	.uaword	.LLST77
	.uleb128 0x24
	.uaword	0x1159
	.uaword	.LLST78
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x31
	.uaword	0x11c
	.uaword	0x1a9d
	.uleb128 0x32
	.uaword	0xd9
	.byte	0
	.byte	0
	.uleb128 0x33
	.string	"Mcal_ResetEndInitCounter"
	.byte	0x1
	.byte	0xa3
	.uaword	0x1ac3
	.byte	0x5
	.byte	0x3
	.uaword	Mcal_ResetEndInitCounter
	.uleb128 0x6
	.uaword	0x1a8d
	.uleb128 0x33
	.string	"Mcal_ResetEndInitCounterRedn"
	.byte	0x1
	.byte	0xa4
	.uaword	0x1af2
	.byte	0x5
	.byte	0x3
	.uaword	Mcal_ResetEndInitCounterRedn
	.uleb128 0x6
	.uaword	0x1a8d
	.uleb128 0x33
	.string	"Mcal_SafetyResetEndInitCounter"
	.byte	0x1
	.byte	0xa9
	.uaword	0x11c
	.byte	0x5
	.byte	0x3
	.uaword	Mcal_SafetyResetEndInitCounter
	.uleb128 0x33
	.string	"Mcal_SafetyResetEndInitCounterRedn"
	.byte	0x1
	.byte	0xaa
	.uaword	0x11c
	.byte	0x5
	.byte	0x3
	.uaword	Mcal_SafetyResetEndInitCounterRedn
	.uleb128 0x33
	.string	"Mcal_WdgSafetyEndInitSem"
	.byte	0x1
	.byte	0xad
	.uaword	0x11c
	.byte	0x5
	.byte	0x3
	.uaword	Mcal_WdgSafetyEndInitSem
	.uleb128 0x33
	.string	"Mcal_WdgSafetyEndInitSemRedn"
	.byte	0x1
	.byte	0xae
	.uaword	0x11c
	.byte	0x5
	.byte	0x3
	.uaword	Mcal_WdgSafetyEndInitSemRedn
	.uleb128 0x33
	.string	"Swdt_TimValue"
	.byte	0x1
	.byte	0xe0
	.uaword	0x11c
	.byte	0x5
	.byte	0x3
	.uaword	Swdt_TimValue
	.uleb128 0x33
	.string	"Swdt_TimValueRedn"
	.byte	0x1
	.byte	0xe1
	.uaword	0x11c
	.byte	0x5
	.byte	0x3
	.uaword	Swdt_TimValueRedn
	.uleb128 0x33
	.string	"Wdt0_TimValue"
	.byte	0x1
	.byte	0xe2
	.uaword	0x11c
	.byte	0x5
	.byte	0x3
	.uaword	Wdt0_TimValue
	.uleb128 0x33
	.string	"Wdt0_TimValueRedn"
	.byte	0x1
	.byte	0xe3
	.uaword	0x11c
	.byte	0x5
	.byte	0x3
	.uaword	Wdt0_TimValueRedn
	.uleb128 0x31
	.uaword	0xfef
	.uaword	0x1c27
	.uleb128 0x32
	.uaword	0xd9
	.byte	0x1
	.byte	0
	.uleb128 0x1d
	.string	"ScuWdtPtrList"
	.byte	0x1
	.uahalf	0x11a
	.uaword	0x1c43
	.byte	0x5
	.byte	0x3
	.uaword	ScuWdtPtrList
	.uleb128 0x14
	.uaword	0x1c17
	.uleb128 0x1d
	.string	"ScuWdtPtrListRedn"
	.byte	0x1
	.uahalf	0x13f
	.uaword	0x1c68
	.byte	0x5
	.byte	0x3
	.uaword	ScuWdtPtrListRedn
	.uleb128 0x14
	.uaword	0x1c17
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
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0xb
	.byte	0x1
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
	.uleb128 0x6
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x6
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
	.uleb128 0x1d
	.byte	0
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.uaword	.LFB22
	.uaword	.LCFI0
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI0
	.uaword	.LFE22
	.uahalf	0x2
	.byte	0x8a
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL0
	.uaword	.LVL3-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL3-1
	.uaword	.LFE22
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL0
	.uaword	.LVL3-1
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL3-1
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL4
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL13
	.uaword	.LVL16
	.uahalf	0x3
	.byte	0x8c
	.sleb128 0
	.byte	0x6
	.uaword	.LVL18
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL20
	.uaword	.LVL23-1
	.uahalf	0x3
	.byte	0x8c
	.sleb128 0
	.byte	0x6
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL6
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL5
	.uaword	.LVL22-1
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL21
	.uaword	.LFE22
	.uahalf	0x2
	.byte	0x91
	.sleb128 -4
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL7
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL9
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL8
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL8
	.uaword	.LVL9
	.uahalf	0x16
	.byte	0x7f
	.sleb128 0
	.byte	0x3b
	.byte	0x25
	.byte	0x7f
	.sleb128 0
	.byte	0x31
	.byte	0x25
	.byte	0x27
	.byte	0x7f
	.sleb128 0
	.byte	0x3c
	.byte	0x25
	.byte	0x27
	.byte	0x7f
	.sleb128 0
	.byte	0x3d
	.byte	0x25
	.byte	0x27
	.byte	0x34
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL9
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL10
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LFB20
	.uaword	.LCFI1
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI1
	.uaword	.LFE20
	.uahalf	0x2
	.byte	0x8a
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL24
	.uaword	.LVL25
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL30
	.uaword	.LVL36
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL39
	.uaword	.LVL42
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL42
	.uaword	.LVL44
	.uahalf	0x6
	.byte	0x7f
	.sleb128 0
	.byte	0x9
	.byte	0xfc
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL44
	.uaword	.LVL45
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL45
	.uaword	.LFE20
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL41
	.uaword	.LVL42
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL42
	.uaword	.LVL43
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL43
	.uaword	.LFE20
	.uahalf	0x2
	.byte	0x84
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL45
	.uaword	.LVL46
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL46
	.uaword	.LFE20
	.uahalf	0x2
	.byte	0x91
	.sleb128 -4
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL26
	.uaword	.LVL29
	.uahalf	0x2
	.byte	0x83
	.sleb128 0
	.uaword	.LVL29
	.uaword	.LVL32
	.uahalf	0x8
	.byte	0x74
	.sleb128 0
	.byte	0x3
	.uaword	ScuWdtPtrList
	.byte	0x22
	.uaword	.LVL32
	.uaword	.LFE20
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL27
	.uaword	.LVL29
	.uahalf	0x2
	.byte	0x83
	.sleb128 4
	.uaword	.LVL29
	.uaword	.LFE20
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL28
	.uaword	.LVL29
	.uahalf	0x2
	.byte	0x83
	.sleb128 8
	.uaword	.LVL29
	.uaword	.LFE20
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL30
	.uaword	.LVL36
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL30
	.uaword	.LVL33
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL35
	.uaword	.LVL38
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL31
	.uaword	.LVL33
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL31
	.uaword	.LVL33
	.uahalf	0x16
	.byte	0x7f
	.sleb128 0
	.byte	0x3b
	.byte	0x25
	.byte	0x7f
	.sleb128 0
	.byte	0x31
	.byte	0x25
	.byte	0x27
	.byte	0x7f
	.sleb128 0
	.byte	0x3c
	.byte	0x25
	.byte	0x27
	.byte	0x7f
	.sleb128 0
	.byte	0x3d
	.byte	0x25
	.byte	0x27
	.byte	0x34
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL33
	.uaword	.LVL34
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL35
	.uaword	.LVL36
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL35
	.uaword	.LVL36
	.uahalf	0x8
	.byte	0x72
	.sleb128 0
	.byte	0x11
	.sleb128 -65536
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL37
	.uaword	.LVL40
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LFB21
	.uaword	.LCFI2
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI2
	.uaword	.LFE21
	.uahalf	0x2
	.byte	0x8a
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL47
	.uaword	.LVL48
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL53
	.uaword	.LVL59
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL62
	.uaword	.LVL66
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL66
	.uaword	.LVL67
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL68
	.uaword	.LVL69
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL69
	.uaword	.LFE21
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL69
	.uaword	.LVL70
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL70
	.uaword	.LFE21
	.uahalf	0x2
	.byte	0x91
	.sleb128 -4
	.uaword	0
	.uaword	0
.LLST31:
	.uaword	.LVL49
	.uaword	.LVL52
	.uahalf	0x2
	.byte	0x82
	.sleb128 0
	.uaword	.LVL52
	.uaword	.LVL55
	.uahalf	0x8
	.byte	0x74
	.sleb128 0
	.byte	0x3
	.uaword	ScuWdtPtrList
	.byte	0x22
	.uaword	.LVL55
	.uaword	.LFE21
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST32:
	.uaword	.LVL50
	.uaword	.LVL52
	.uahalf	0x2
	.byte	0x82
	.sleb128 4
	.uaword	.LVL52
	.uaword	.LFE21
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST33:
	.uaword	.LVL51
	.uaword	.LVL52
	.uahalf	0x2
	.byte	0x82
	.sleb128 8
	.uaword	.LVL52
	.uaword	.LFE21
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST34:
	.uaword	.LVL53
	.uaword	.LVL65-1
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST35:
	.uaword	.LVL53
	.uaword	.LVL59
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST36:
	.uaword	.LVL53
	.uaword	.LVL56
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL58
	.uaword	.LVL61
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST37:
	.uaword	.LVL54
	.uaword	.LVL56
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST38:
	.uaword	.LVL54
	.uaword	.LVL56
	.uahalf	0x16
	.byte	0x7f
	.sleb128 0
	.byte	0x3b
	.byte	0x25
	.byte	0x7f
	.sleb128 0
	.byte	0x31
	.byte	0x25
	.byte	0x27
	.byte	0x7f
	.sleb128 0
	.byte	0x3c
	.byte	0x25
	.byte	0x27
	.byte	0x7f
	.sleb128 0
	.byte	0x3d
	.byte	0x25
	.byte	0x27
	.byte	0x34
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL56
	.uaword	.LVL57
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST39:
	.uaword	.LVL58
	.uaword	.LVL59
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST40:
	.uaword	.LVL58
	.uaword	.LVL59
	.uahalf	0x8
	.byte	0x72
	.sleb128 0
	.byte	0x11
	.sleb128 -65536
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL60
	.uaword	.LVL63
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST41:
	.uaword	.LVL74
	.uaword	.LVL75
	.uahalf	0x4
	.byte	0x72
	.sleb128 0
	.byte	0x20
	.byte	0x9f
	.uaword	.LVL75
	.uaword	.LVL76-1
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST42:
	.uaword	.LVL71
	.uaword	.LVL72
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST43:
	.uaword	.LVL79
	.uaword	.LVL82-1
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST44:
	.uaword	.LVL80
	.uaword	.LVL81
	.uahalf	0x4
	.byte	0x72
	.sleb128 0
	.byte	0x20
	.byte	0x9f
	.uaword	.LVL81
	.uaword	.LVL82-1
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST45:
	.uaword	.LVL77
	.uaword	.LVL78
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST46:
	.uaword	.LVL83
	.uaword	.LVL84-1
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST47:
	.uaword	.LVL84
	.uaword	.LVL85
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL86
	.uaword	.LVL87-1
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST48:
	.uaword	.LVL88
	.uaword	.LVL89
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL89
	.uaword	.LFE30
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST49:
	.uaword	.LVL88
	.uaword	.LVL90
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL90
	.uaword	.LVL91-1
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST50:
	.uaword	.LVL92
	.uaword	.LVL93
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL93
	.uaword	.LFE31
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST51:
	.uaword	.LVL92
	.uaword	.LVL95
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL95
	.uaword	.LVL96-1
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST52:
	.uaword	.LVL93
	.uaword	.LVL94
	.uahalf	0x5
	.byte	0x74
	.sleb128 0
	.byte	0x37
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST53:
	.uaword	.LVL93
	.uaword	.LVL94
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST54:
	.uaword	.LVL97
	.uaword	.LVL100
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST55:
	.uaword	.LVL97
	.uaword	.LVL101
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST56:
	.uaword	.LVL97
	.uaword	.LVL102
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST58:
	.uaword	.LVL98
	.uaword	.LVL99
	.uahalf	0x6
	.byte	0x7f
	.sleb128 0
	.byte	0x9
	.byte	0xfc
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL99
	.uaword	.LVL100
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL100
	.uaword	.LVL101
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL101
	.uaword	.LVL103
	.uahalf	0x7
	.byte	0x74
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x25
	.byte	0x9f
	.uaword	.LVL103
	.uaword	.LFE32
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST59:
	.uaword	.LVL105
	.uaword	.LVL111
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST60:
	.uaword	.LVL105
	.uaword	.LVL112
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST61:
	.uaword	.LVL106
	.uaword	.LVL107
	.uahalf	0x5
	.byte	0x7f
	.sleb128 0
	.byte	0x37
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST62:
	.uaword	.LVL106
	.uaword	.LVL107
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST63:
	.uaword	.LVL106
	.uaword	.LVL113
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST64:
	.uaword	.LVL106
	.uaword	.LVL111
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST66:
	.uaword	.LVL109
	.uaword	.LVL110
	.uahalf	0x6
	.byte	0x7f
	.sleb128 0
	.byte	0x9
	.byte	0xfc
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL110
	.uaword	.LVL111
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL111
	.uaword	.LVL112
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL112
	.uaword	.LVL114
	.uahalf	0x7
	.byte	0x74
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x25
	.byte	0x9f
	.uaword	.LVL114
	.uaword	.LFE33
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST67:
	.uaword	.LVL108
	.uaword	.LVL109
	.uahalf	0x7
	.byte	0x7f
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x82
	.sleb128 0
	.byte	0x22
	.uaword	.LVL109
	.uaword	.LFE33
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST68:
	.uaword	.LVL117
	.uaword	.LVL119
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL121
	.uaword	.LFE34
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST69:
	.uaword	.LVL118
	.uaword	.LVL119
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST70:
	.uaword	.LVL118
	.uaword	.LVL119
	.uahalf	0x16
	.byte	0x72
	.sleb128 0
	.byte	0x3b
	.byte	0x25
	.byte	0x72
	.sleb128 0
	.byte	0x31
	.byte	0x25
	.byte	0x27
	.byte	0x72
	.sleb128 0
	.byte	0x3c
	.byte	0x25
	.byte	0x27
	.byte	0x72
	.sleb128 0
	.byte	0x3d
	.byte	0x25
	.byte	0x27
	.byte	0x34
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL119
	.uaword	.LVL120
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST71:
	.uaword	.LVL122
	.uaword	.LVL128
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL131
	.uaword	.LFE35
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST72:
	.uaword	.LVL123
	.uaword	.LVL124
	.uahalf	0x5
	.byte	0x7f
	.sleb128 0
	.byte	0x37
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST73:
	.uaword	.LVL123
	.uaword	.LVL124
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST75:
	.uaword	.LVL127
	.uaword	.LVL129
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL131
	.uaword	.LFE35
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST76:
	.uaword	.LVL125
	.uaword	.LVL126
	.uahalf	0x9
	.byte	0x7f
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x82
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x4
	.uaword	.LVL126
	.uaword	.LFE35
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST77:
	.uaword	.LVL128
	.uaword	.LVL129
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST78:
	.uaword	.LVL128
	.uaword	.LVL129
	.uahalf	0x16
	.byte	0x72
	.sleb128 0
	.byte	0x3b
	.byte	0x25
	.byte	0x72
	.sleb128 0
	.byte	0x31
	.byte	0x25
	.byte	0x27
	.byte	0x72
	.sleb128 0
	.byte	0x3c
	.byte	0x25
	.byte	0x27
	.byte	0x72
	.sleb128 0
	.byte	0x3d
	.byte	0x25
	.byte	0x27
	.byte	0x34
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL129
	.uaword	.LVL130
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
	.section .debug_aranges,"",@progbits
	.uaword	0x7c
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB22
	.uaword	.LFE22-.LFB22
	.uaword	.LFB20
	.uaword	.LFE20-.LFB20
	.uaword	.LFB21
	.uaword	.LFE21-.LFB21
	.uaword	.LFB24
	.uaword	.LFE24-.LFB24
	.uaword	.LFB26
	.uaword	.LFE26-.LFB26
	.uaword	.LFB28
	.uaword	.LFE28-.LFB28
	.uaword	.LFB29
	.uaword	.LFE29-.LFB29
	.uaword	.LFB30
	.uaword	.LFE30-.LFB30
	.uaword	.LFB31
	.uaword	.LFE31-.LFB31
	.uaword	.LFB32
	.uaword	.LFE32-.LFB32
	.uaword	.LFB33
	.uaword	.LFE33-.LFB33
	.uaword	.LFB34
	.uaword	.LFE34-.LFB34
	.uaword	.LFB35
	.uaword	.LFE35-.LFB35
	.uaword	0
	.uaword	0
	.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB22
	.uaword	.LBE22
	.uaword	.LBB26
	.uaword	.LBE26
	.uaword	0
	.uaword	0
	.uaword	.LBB23
	.uaword	.LBE23
	.uaword	.LBB25
	.uaword	.LBE25
	.uaword	0
	.uaword	0
	.uaword	.LBB34
	.uaword	.LBE34
	.uaword	.LBB41
	.uaword	.LBE41
	.uaword	.LBB42
	.uaword	.LBE42
	.uaword	.LBB43
	.uaword	.LBE43
	.uaword	.LBB44
	.uaword	.LBE44
	.uaword	0
	.uaword	0
	.uaword	.LBB35
	.uaword	.LBE35
	.uaword	.LBB37
	.uaword	.LBE37
	.uaword	.LBB38
	.uaword	.LBE38
	.uaword	.LBB39
	.uaword	.LBE39
	.uaword	.LBB40
	.uaword	.LBE40
	.uaword	0
	.uaword	0
	.uaword	.LBB52
	.uaword	.LBE52
	.uaword	.LBB59
	.uaword	.LBE59
	.uaword	.LBB60
	.uaword	.LBE60
	.uaword	.LBB61
	.uaword	.LBE61
	.uaword	.LBB62
	.uaword	.LBE62
	.uaword	0
	.uaword	0
	.uaword	.LBB53
	.uaword	.LBE53
	.uaword	.LBB55
	.uaword	.LBE55
	.uaword	.LBB56
	.uaword	.LBE56
	.uaword	.LBB57
	.uaword	.LBE57
	.uaword	.LBB58
	.uaword	.LBE58
	.uaword	0
	.uaword	0
	.uaword	.LBB67
	.uaword	.LBE67
	.uaword	.LBB70
	.uaword	.LBE70
	.uaword	0
	.uaword	0
	.uaword	.LBB71
	.uaword	.LBE71
	.uaword	.LBB74
	.uaword	.LBE74
	.uaword	0
	.uaword	0
	.uaword	.LFB22
	.uaword	.LFE22
	.uaword	.LFB20
	.uaword	.LFE20
	.uaword	.LFB21
	.uaword	.LFE21
	.uaword	.LFB24
	.uaword	.LFE24
	.uaword	.LFB26
	.uaword	.LFE26
	.uaword	.LFB28
	.uaword	.LFE28
	.uaword	.LFB29
	.uaword	.LFE29
	.uaword	.LFB30
	.uaword	.LFE30
	.uaword	.LFB31
	.uaword	.LFE31
	.uaword	.LFB32
	.uaword	.LFE32
	.uaword	.LFB33
	.uaword	.LFE33
	.uaword	.LFB34
	.uaword	.LFE34
	.uaword	.LFB35
	.uaword	.LFE35
	.uaword	0
	.uaword	0
	.section .debug_line,"",@progbits
.Ldebug_line0:
	.section .debug_str,"",@progbits
.LASF8:
	.string	"NewReload"
.LASF1:
	.string	"ScuSsrPtr"
.LASF4:
	.string	"NewValCon0"
.LASF5:
	.string	"ScuWdtcon0Ptr"
.LASF7:
	.string	"NewPassword"
.LASF0:
	.string	"ScuWdtPtrType"
.LASF2:
	.string	"CheckPassword"
.LASF6:
	.string	"Password"
.LASF9:
	.string	"NewRel"
.LASF11:
	.string	"WdtTimPwSavePtrRedn"
.LASF3:
	.string	"CheckTimer"
.LASF10:
	.string	"WdtTimPwSavePtr"
.LASF12:
	.string	"__res"
.LASF13:
	.string	"CoreId"
	.extern	Mcal_ReleaseSpinLock,STT_FUNC,0
	.extern	Mcal_GetSpinLock,STT_FUNC,0
	.extern	IOHWSF_vDefaultErrorHandler,STT_FUNC,0
	.extern	Mcal_ResumeAllInterrupts,STT_FUNC,0
	.extern	Mcal_SuspendAllInterrupts,STT_FUNC,0
	.ident	"GCC: (HighTec Release v4.6.3.0) 4.6.3 build on 2013-05-17"
