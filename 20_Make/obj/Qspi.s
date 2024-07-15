	.file	"Qspi.c"
.section .text,"ax",@progbits
.Ltext0:
	.section .text.MPU_QM_CODE,"ax",@progbits
	.align 3
	.global	Qspi_Init
	.type	Qspi_Init, @function
Qspi_Init:
.LFB202:
	.file 1 "../30_Bsw/Mcal/Qspi/Qspi.c"
	.loc 1 64 0
	.loc 1 66 0
	mov	%d15, 0
	.loc 1 65 0
	call	Qspi_cfg
	.loc 1 67 0
	movh.a	%a15, hi:Qspi_StrtUpTst_Sts
	.loc 1 70 0
	mov	%d3, -1
	.loc 1 67 0
	st.w	[%a15] lo:Qspi_StrtUpTst_Sts, %d15
	.loc 1 69 0
	movh.a	%a15, hi:Qspi_WWDTest_Ctr
	st.h	[%a15] lo:Qspi_WWDTest_Ctr, %d15
	.loc 1 70 0
	movh.a	%a15, hi:Qspi_SbcStateChng_WaitCtr
	.loc 1 69 0
	mov	%d2, 0
	.loc 1 70 0
	st.b	[%a15] lo:Qspi_SbcStateChng_WaitCtr, %d3
	.loc 1 71 0
	movh.a	%a15, hi:Qspi_WWDT_Status
	st.w	[%a15] lo:Qspi_WWDT_Status, %d15
	.loc 1 72 0
	movh.a	%a15, hi:Qspi_WWDTest_RetryCtr
	st.h	[%a15] lo:Qspi_WWDTest_RetryCtr, %d15
	.loc 1 73 0
	movh.a	%a15, hi:Qspi_ABISTSS_RetryFlag
	st.b	[%a15] lo:Qspi_ABISTSS_RetryFlag, %d2
	.loc 1 74 0
	movh.a	%a15, hi:Qspi_ABISTSS_RetryCtr
	st.h	[%a15] lo:Qspi_ABISTSS_RetryCtr, %d15
	.loc 1 75 0
	movh.a	%a15, hi:Qspi_ABISTInt_RetryFlag
	st.b	[%a15] lo:Qspi_ABISTInt_RetryFlag, %d2
	.loc 1 76 0
	movh.a	%a15, hi:Qspi_ABISTInt_RetryCtr
	st.h	[%a15] lo:Qspi_ABISTInt_RetryCtr, %d15
	.loc 1 77 0
	movh.a	%a15, hi:Qspi_ABIST_Status
	st.w	[%a15] lo:Qspi_ABIST_Status, %d15
	.loc 1 79 0
	movh.a	%a15, hi:Qspi_SBCError
	st.w	[%a15] lo:Qspi_SBCError, %d15
	.loc 1 80 0
	ret
.LFE202:
	.size	Qspi_Init, .-Qspi_Init
	.section .text.MPU_ASIL_CODE,"ax",@progbits
	.align 3
	.global	Qspi_SBC_TxRxData
	.type	Qspi_SBC_TxRxData, @function
Qspi_SBC_TxRxData:
.LFB215:
	.loc 1 876 0
.LVL0:
.LBB6:
.LBB7:
	.loc 1 902 0
	movh.a	%a2, hi:Qspi_SBCError
	ld.w	%d6, [%a2] lo:Qspi_SBCError
.LBE7:
.LBE6:
	.loc 1 876 0
	mov.a	%a15, 4
.LBB11:
.LBB8:
	.loc 1 902 0
	and	%d6, %d6, 64
.LVL1:
.L9:
.LBE8:
.LBE11:
	.loc 1 882 0
	jnz	%d6, .L3
	.loc 1 884 0
	st.w	0xf0001c64, %d4
.L4:
	.loc 1 885 0 discriminator 1
	ld.w	%d15, 0xf0001c40
	jz.t	%d15, 9, .L4
	.loc 1 885 0 is_stmt 0 discriminator 2
	ld.w	%d15, 0xf0001c54
	insert	%d15, %d15, 1, 9, 1
	st.w	0xf0001c54, %d15
.L5:
	.loc 1 885 0 discriminator 1
	ld.w	%d15, 0xf0001c40
	jz.t	%d15, 10, .L5
	.loc 1 885 0 discriminator 2
	ld.w	%d15, 0xf0001c54
.LBB12:
.LBB9:
	.loc 1 902 0 is_stmt 1 discriminator 2
	mov	%d2, 0
.LBE9:
.LBE12:
	.loc 1 885 0 discriminator 2
	insert	%d15, %d15, 1, 10, 1
	st.w	0xf0001c54, %d15
	.loc 1 886 0 discriminator 2
	ld.w	%d5, 0xf0001c90
	extr.u	%d5, %d5, 0, 16
.LVL2:
.LBB13:
.LBB10:
	.loc 1 900 0 discriminator 2
	andn	%d15, %d5, ~(-2)
	extr.u	%d15, %d15, 0, 16
.LVL3:
	.loc 1 901 0 discriminator 2
	and	%d7, %d5, 1
.LVL4:
	.loc 1 904 0 discriminator 2
	jz	%d15, .L6
.LVL5:
.L7:
	.loc 1 907 0
	add	%d3, %d15, -1
	and	%d15, %d3
	.loc 1 906 0
	xor	%d2, %d2, 1
.LVL6:
	.loc 1 904 0
	jnz	%d15, .L7
.LVL7:
.L6:
.LBE10:
.LBE13:
	.loc 1 887 0
	jeq	%d7, %d2, .L16
.LVL8:
.L3:
	.loc 1 891 0
	loop	%a15, .L9
	.loc 1 895 0
	imask	%e2, 1, 6, 1
	lea	%a2, [%a2] lo:Qspi_SBCError
	ldmst	[%a2]0, %e2
	ret
.LVL9:
.L16:
	.loc 1 889 0
	st.h	[%a4]0, %d5
	.loc 1 890 0
	ld.w	%d15, [%a2] lo:Qspi_SBCError
	andn	%d15, %d15, ~(-65)
	st.w	[%a2] lo:Qspi_SBCError, %d15
	.loc 1 891 0
	ret
.LFE215:
	.size	Qspi_SBC_TxRxData, .-Qspi_SBC_TxRxData
	.align 3
	.global	Qspi_SBC_Check_RegStatus
	.type	Qspi_SBC_Check_RegStatus, @function
Qspi_SBC_Check_RegStatus:
.LFB214:
	.loc 1 857 0
	.loc 1 860 0
	mov	%d2, 0
	mov	%d3, 8192
	.loc 1 857 0
	sub.a	%SP, 8
.LCFI0:
	.loc 1 860 0
	movh.a	%a15, hi:Qspi_SBCError
	lea	%a2, [%a15] lo:Qspi_SBCError
	.loc 1 861 0
	mov	%d4, 19457
	lea	%a4, [%SP] 6
	.loc 1 860 0
	ldmst	[%a2]0, %e2
	.loc 1 861 0
	call	Qspi_SBC_TxRxData
	.loc 1 863 0
	ld.w	%d15, [%a15] lo:Qspi_SBCError
.LVL10:
	.loc 1 864 0
	ld.hu	%d4, [%SP] 6
.LVL11:
	.loc 1 863 0
	insert	%d15, %d15, 0, 12, 1
	.loc 1 864 0
	sh	%d4, -1
.LVL12:
	.loc 1 863 0
	st.w	[%a15] lo:Qspi_SBCError, %d15
	.loc 1 864 0
	jz.t	%d4, 4, .L18
	.loc 1 864 0 is_stmt 0 discriminator 1
	jnz.t	%d15, 6, .L18
.L19:
	.loc 1 869 0 is_stmt 1
	jz.t	%d4, 5, .L20
	.loc 1 869 0 is_stmt 0 discriminator 1
	ld.w	%d15, [%a15] lo:Qspi_SBCError
	jz.t	%d15, 6, .L17
.L20:
	.loc 1 871 0 is_stmt 1
	imask	%e2, 1, 13, 1
	lea	%a15, [%a15] lo:Qspi_SBCError
	ldmst	[%a15]0, %e2
.L17:
	ret
.L18:
	.loc 1 866 0
	imask	%e2, 1, 12, 1
	lea	%a2, [%a15] lo:Qspi_SBCError
	ldmst	[%a2]0, %e2
	j	.L19
.LFE214:
	.size	Qspi_SBC_Check_RegStatus, .-Qspi_SBC_Check_RegStatus
.section .srodata,"as",@progbits
	.align 1
.LC0:
	.short	16896
	.short	16385
	.short	18945
	.section .text.MPU_ASIL_CODE
	.align 3
	.global	Qspi_SBC_Check_QVRStatus
	.type	Qspi_SBC_Check_QVRStatus, @function
Qspi_SBC_Check_QVRStatus:
.LFB213:
	.loc 1 837 0
	sub.a	%SP, 16
.LCFI1:
	.loc 1 838 0
	lea	%a15, [%SP] 4
	lea	%a2, [%A0] SM:.LC0
		# #chunks=3, chunksize=2, remains=0
	lea	%a3, 3-1
	0:
	ld.h	%d15, [%a2+]2
	st.h	[%a15+]2, %d15
	loop	%a3, 0b
	.loc 1 843 0
	mov	%d2, 0
	mov	%d3, 8192
	movh.a	%a12, hi:Qspi_SBCError
	lea	%a15, [%a12] lo:Qspi_SBCError
	ldmst	[%a15]0, %e2
.LVL13:
	mov	%d15, 0
	lea	%a15, [%SP] 2
.LVL14:
.L23:
	.loc 1 846 0 discriminator 2
	lea	%a2, [%SP] 10
	addsc.a	%a4, %a2, %d15, 1
	ld.hu	%d4, [+%a15]2
	add	%d15, 1
	call	Qspi_SBC_TxRxData
	.loc 1 844 0 discriminator 2
	jne	%d15, 3, .L23
	.loc 1 849 0
	ld.hu	%d15, [%SP] 10
	jnz.t	%d15, 6, .L24
	.loc 1 849 0 is_stmt 0 discriminator 1
	ld.hu	%d15, [%SP] 12
	jz.t	%d15, 6, .L27
.L24:
	.loc 1 852 0 is_stmt 1
	imask	%e2, 1, 13, 1
	lea	%a12, [%a12] lo:Qspi_SBCError
	ldmst	[%a12]0, %e2
.L22:
	ret
.L27:
	.loc 1 849 0 discriminator 1
	ld.hu	%d15, [%SP] 14
	jnz.t	%d15, 6, .L24
	.loc 1 850 0
	ld.w	%d15, [%a12] lo:Qspi_SBCError
	jnz.t	%d15, 6, .L24
	j	.L22
.LFE213:
	.size	Qspi_SBC_Check_QVRStatus, .-Qspi_SBC_Check_QVRStatus
	.align 3
	.global	Qspi_SBC_Check_NormalState
	.type	Qspi_SBC_Check_NormalState, @function
Qspi_SBC_Check_NormalState:
.LFB212:
	.loc 1 800 0
	.loc 1 803 0
	mov	%d2, 0
	mov	%d3, 2048
	.loc 1 800 0
	sub.a	%SP, 8
.LCFI2:
	.loc 1 803 0
	movh.a	%a15, hi:Qspi_SBCError
	lea	%a2, [%a15] lo:Qspi_SBCError
	.loc 1 804 0
	mov	%d4, 19968
	lea	%a4, [%SP] 6
	.loc 1 803 0
	ldmst	[%a2]0, %e2
	.loc 1 804 0
	call	Qspi_SBC_TxRxData
.LVL15:
	.loc 1 805 0
	ld.hu	%d15, [%SP] 6
.LVL16:
	extr.u	%d15, %d15, 1, 3
.LVL17:
	jeq	%d15, 2, .L32
.L29:
	.loc 1 807 0
	ld.w	%d15, 0xf0000480
	jnz.t	%d15, 0, .L28
	.loc 1 809 0
	imask	%e2, 1, 11, 1
	lea	%a15, [%a15] lo:Qspi_SBCError
	ldmst	[%a15]0, %e2
.L28:
	ret
.L32:
	.loc 1 805 0 discriminator 1
	ld.w	%d15, [%a15] lo:Qspi_SBCError
	jnz.t	%d15, 6, .L29
	ret
.LFE212:
	.size	Qspi_SBC_Check_NormalState, .-Qspi_SBC_Check_NormalState
	.align 3
	.global	Qspi_SBC_Check10ms
	.type	Qspi_SBC_Check10ms, @function
Qspi_SBC_Check10ms:
.LFB204:
	.loc 1 231 0
	.loc 1 232 0
	movh.a	%a15, hi:Qspi_StrtUpTst_Sts
	ld.w	%d15, [%a15] lo:Qspi_StrtUpTst_Sts
	ne	%d15, %d15, 8
	jz	%d15, .L39
	ret
.L39:
	.loc 1 234 0
	movh.a	%a15, hi:Qspi_10msTick
	ld.hu	%d15, [%a15] lo:Qspi_10msTick
	jz	%d15, .L36
	jeq	%d15, 1, .L40
	.loc 1 245 0
	mov	%d15, 0
	st.h	[%a15] lo:Qspi_10msTick, %d15
	ret
.L36:
	.loc 1 238 0
	mov	%d15, 1
	.loc 1 237 0
	call	Qspi_SBC_Check_NormalState
	.loc 1 238 0
	st.h	[%a15] lo:Qspi_10msTick, %d15
	.loc 1 239 0
	ret
.L40:
	.loc 1 242 0
	mov	%d15, 0
	.loc 1 241 0
	call	Qspi_SBC_Check_RegStatus
	.loc 1 242 0
	st.h	[%a15] lo:Qspi_10msTick, %d15
	.loc 1 243 0
	ret
.LFE204:
	.size	Qspi_SBC_Check10ms, .-Qspi_SBC_Check10ms
	.align 3
	.global	Qspi_SBC_WWDTest
	.type	Qspi_SBC_WWDTest, @function
Qspi_SBC_WWDTest:
.LFB211:
	.loc 1 623 0
	.loc 1 625 0
	movh.a	%a15, hi:Qspi_WWDT_Status
	ld.w	%d15, [%a15] lo:Qspi_WWDT_Status
	.loc 1 623 0
	sub.a	%SP, 8
.LCFI3:
	.loc 1 625 0
	jlt.u	%d15, 9, .L65
	.loc 1 792 0
	imask	%e2, 1, 10, 1
	movh.a	%a15, hi:Qspi_SBCError
	.loc 1 793 0
	mov	%d15, 7
	.loc 1 792 0
	lea	%a15, [%a15] lo:Qspi_SBCError
	ldmst	[%a15]0, %e2
	.loc 1 793 0
	movh.a	%a15, hi:Qspi_StrtUpTst_Sts
	st.w	[%a15] lo:Qspi_StrtUpTst_Sts, %d15
.L41:
	ret
.L65:
	.loc 1 625 0
	movh.a	%a2, hi:.L52
	lea	%a2, [%a2] lo:.L52
	addsc.a	%a2, %a2, %d15, 2
	ji	%a2
	.align 2
	.align 2
.L52:
	.code32
	j	.L43
	.code32
	j	.L44
	.code32
	j	.L45
	.code32
	j	.L46
	.code32
	j	.L47
	.code32
	j	.L48
	.code32
	j	.L49
	.code32
	j	.L50
	.code32
	j	.L51
.L50:
	.loc 1 769 0
	mov	%d2, 0
	mov	%d3, 1024
	movh.a	%a15, hi:Qspi_SBCError
	.loc 1 770 0
	mov	%d15, 7
	.loc 1 769 0
	lea	%a15, [%a15] lo:Qspi_SBCError
	ldmst	[%a15]0, %e2
	.loc 1 770 0
	movh.a	%a15, hi:Qspi_StrtUpTst_Sts
	st.w	[%a15] lo:Qspi_StrtUpTst_Sts, %d15
	.loc 1 771 0
	ret
.L51:
	.loc 1 777 0
	movh.a	%a2, hi:Qspi_WWDTest_RetryCtr
	ld.hu	%d15, [%a2] lo:Qspi_WWDTest_RetryCtr
	jge.u	%d15, 3, .L64
	.loc 1 779 0
	add	%d15, 1
	st.h	[%a2] lo:Qspi_WWDTest_RetryCtr, %d15
	.loc 1 780 0
	mov	%d15, 0
	st.w	[%a15] lo:Qspi_WWDT_Status, %d15
	ret
.L43:
	.loc 1 629 0
	mov	%d15, 6
	movh.a	%a2, hi:Qspi_StrtUpTst_Sts
	.loc 1 633 0
	mov	%d2, 1
	.loc 1 629 0
	st.w	[%a2] lo:Qspi_StrtUpTst_Sts, %d15
	.loc 1 630 0
	mov	%d15, 0
	movh.a	%a3, hi:Qspi_WWDT_WdgErrCnt
	lea	%a2, [%a3] lo:Qspi_WWDT_WdgErrCnt
	.loc 1 633 0
	st.w	[%a15] lo:Qspi_WWDT_Status, %d2
	.loc 1 634 0
	movh.a	%a15, hi:Qspi_WWDTest_Ctr
	.loc 1 630 0
	st.h	[%a3] lo:Qspi_WWDT_WdgErrCnt, %d15
	.loc 1 631 0
	st.h	[%a2] 2, %d15
	.loc 1 632 0
	st.h	[%a2] 4, %d15
	.loc 1 634 0
	st.h	[%a15] lo:Qspi_WWDTest_Ctr, %d15
	.loc 1 635 0
	ret
.L44:
	.loc 1 640 0
	movh.a	%a2, hi:Qspi_WWDTest_Ctr
	ld.hu	%d15, [%a2] lo:Qspi_WWDTest_Ctr
	ge.u	%d2, %d15, 140
	jnz	%d2, .L54
	.loc 1 642 0
	add	%d15, 1
	st.h	[%a2] lo:Qspi_WWDTest_Ctr, %d15
	ret
.L45:
	.loc 1 653 0
	movh.a	%a2, hi:Qspi_WWDTest_Ctr
	ld.hu	%d15, [%a2] lo:Qspi_WWDTest_Ctr
	ne	%d15, %d15, 140
	jz	%d15, .L66
.L61:
	.loc 1 763 0
	mov	%d15, 8
	st.w	[%a15] lo:Qspi_WWDT_Status, %d15
	ret
.L46:
	.loc 1 680 0
	movh.a	%a2, hi:-268197340
	lea	%a2, [%a2] lo:-268197340
	ld.w	%d15, [%a2]0
	jz.t	%d15, 8, .L41
	.loc 1 682 0
	mov	%d15, 0
	movh.a	%a2, hi:WdgEnable
	st.h	[%a2] lo:WdgEnable, %d15
	.loc 1 683 0
	mov	%d15, 4
	st.w	[%a15] lo:Qspi_WWDT_Status, %d15
	ret
.L47:
	.loc 1 691 0
	movh.a	%a2, hi:Qspi_WWDTest_Ctr
	ld.hu	%d15, [%a2] lo:Qspi_WWDTest_Ctr
	ge.u	%d2, %d15, 245
	jnz	%d2, .L58
	.loc 1 693 0
	add	%d15, 1
	extr.u	%d15, %d15, 0, 16
	st.h	[%a2] lo:Qspi_WWDTest_Ctr, %d15
	.loc 1 696 0
	lt.u	%d15, %d15, 210
	jnz	%d15, .L41
	.loc 1 698 0
	mov	%d4, 20993
	lea	%a4, [%SP] 6
	call	Qspi_SBC_TxRxData
.LVL18:
	.loc 1 699 0
	ld.hu	%d15, [%SP] 6
.LVL19:
	movh.a	%a2, hi:Qspi_WWDT_WdgErrCnt
	extr.u	%d15, %d15, 1, 4
.LVL20:
	lea	%a2, [%a2] lo:Qspi_WWDT_WdgErrCnt
	st.h	[%a2] 2, %d15
	.loc 1 701 0
	jeq	%d15, 2, .L59
	.loc 1 702 0
	movh.a	%a2, hi:Qspi_SBCError
	ld.w	%d15, [%a2] lo:Qspi_SBCError
	jz.t	%d15, 6, .L58
.L59:
	.loc 1 704 0
	mov	%d15, 5
	st.w	[%a15] lo:Qspi_WWDT_Status, %d15
	ret
.L48:
	.loc 1 727 0
	mov	%d15, 1
	movh.a	%a2, hi:WdgEnable
	st.h	[%a2] lo:WdgEnable, %d15
	.loc 1 728 0
	mov	%d15, 6
	st.w	[%a15] lo:Qspi_WWDT_Status, %d15
	.loc 1 729 0
	ret
.L49:
	.loc 1 735 0
	movh.a	%a2, hi:Qspi_WWDTest_Ctr
	ld.hu	%d15, [%a2] lo:Qspi_WWDTest_Ctr
	ge.u	%d2, %d15, 315
	jnz	%d2, .L61
	.loc 1 737 0
	add	%d15, 1
	extr.u	%d15, %d15, 0, 16
	st.h	[%a2] lo:Qspi_WWDTest_Ctr, %d15
	.loc 1 740 0
	lt.u	%d15, %d15, 280
	jnz	%d15, .L41
	.loc 1 743 0
	mov	%d4, 20993
	lea	%a4, [%SP] 6
	call	Qspi_SBC_TxRxData
.LVL21:
	.loc 1 744 0
	ld.hu	%d15, [%SP] 6
.LVL22:
	movh.a	%a2, hi:Qspi_WWDT_WdgErrCnt
	extr.u	%d15, %d15, 1, 4
.LVL23:
	lea	%a2, [%a2] lo:Qspi_WWDT_WdgErrCnt
	st.h	[%a2] 4, %d15
	.loc 1 746 0
	jeq	%d15, 1, .L62
	.loc 1 747 0
	movh.a	%a2, hi:Qspi_SBCError
	ld.w	%d15, [%a2] lo:Qspi_SBCError
	jz.t	%d15, 6, .L61
.L62:
	.loc 1 749 0
	mov	%d15, 7
	st.w	[%a15] lo:Qspi_WWDT_Status, %d15
	ret
.L64:
	.loc 1 784 0
	mov	%d15, 9
	st.w	[%a15] lo:Qspi_WWDT_Status, %d15
	ret
.L54:
	.loc 1 646 0
	mov	%d15, 2
	st.w	[%a15] lo:Qspi_WWDT_Status, %d15
	ret
.L58:
	.loc 1 719 0
	mov	%d15, 1
	movh.a	%a2, hi:WdgEnable
	st.h	[%a2] lo:WdgEnable, %d15
	.loc 1 720 0
	mov	%d15, 8
	st.w	[%a15] lo:Qspi_WWDT_Status, %d15
	ret
.L66:
	.loc 1 655 0
	mov	%d4, 20993
	lea	%a4, [%SP] 6
	call	Qspi_SBC_TxRxData
.LVL24:
	.loc 1 656 0
	ld.hu	%d15, [%SP] 6
.LVL25:
	movh.a	%a2, hi:Qspi_WWDT_WdgErrCnt
	extr.u	%d15, %d15, 1, 4
.LVL26:
	st.h	[%a2] lo:Qspi_WWDT_WdgErrCnt, %d15
	.loc 1 659 0
	jz	%d15, .L56
	.loc 1 660 0
	movh.a	%a2, hi:Qspi_SBCError
	ld.w	%d15, [%a2] lo:Qspi_SBCError
	jz.t	%d15, 6, .L61
.L56:
	.loc 1 662 0
	mov	%d15, 3
	st.w	[%a15] lo:Qspi_WWDT_Status, %d15
	ret
.LFE211:
	.size	Qspi_SBC_WWDTest, .-Qspi_SBC_WWDTest
.section .srodata,"as",@progbits
	.align 1
.LC1:
	.short	-9146
	.short	-8699
	.short	-7806
	.short	-10234
	.align 1
.LC2:
	.short	-9184
	.short	-8605
	.short	-8095
	.short	-10217
	.align 1
.LC3:
	.short	-15874
	.short	-15361
	.short	-14849
	.section .text.MPU_ASIL_CODE
	.align 3
	.global	Qspi_SBC_ABIST
	.type	Qspi_SBC_ABIST, @function
Qspi_SBC_ABIST:
.LFB210:
	.loc 1 413 0
	sub.a	%SP, 32
.LCFI4:
	.loc 1 418 0
	lea	%a2, [%A0] SM:.LC1
	lea	%a15, [%SP] 2
		# #chunks=4, chunksize=2, remains=0
	lea	%a3, 4-1
	0:
	ld.h	%d15, [%a2+]2
	st.h	[%a15+]2, %d15
	loop	%a3, 0b
	.loc 1 424 0
	lea	%a2, [%A0] SM:.LC2
	lea	%a15, [%SP] 10
		# #chunks=4, chunksize=2, remains=0
	lea	%a3, 4-1
	0:
	ld.h	%d15, [%a2+]2
	st.h	[%a15+]2, %d15
	loop	%a3, 0b
	.loc 1 427 0
	lea	%a2, [%A0] SM:.LC3
	lea	%a15, [%SP] 26
		# #chunks=3, chunksize=2, remains=0
	lea	%a3, 3-1
	0:
	ld.h	%d15, [%a2+]2
	st.h	[%a15+]2, %d15
	loop	%a3, 0b
	.loc 1 432 0
	movh.a	%a12, hi:Qspi_ABIST_Status
	ld.w	%d15, [%a12] lo:Qspi_ABIST_Status
	jlt.u	%d15, 7, .L102
	.loc 1 614 0
	imask	%e2, 1, 7, 1
	movh.a	%a15, hi:Qspi_SBCError
	.loc 1 615 0
	mov	%d15, 4
	.loc 1 614 0
	lea	%a15, [%a15] lo:Qspi_SBCError
	ldmst	[%a15]0, %e2
	.loc 1 615 0
	movh.a	%a15, hi:Qspi_StrtUpTst_Sts
	st.w	[%a15] lo:Qspi_StrtUpTst_Sts, %d15
	ret
.L102:
	.loc 1 432 0
	movh.a	%a15, hi:.L76
	lea	%a15, [%a15] lo:.L76
	addsc.a	%a15, %a15, %d15, 2
	ji	%a15
	.align 2
	.align 2
.L76:
	.code32
	j	.L69
	.code32
	j	.L70
	.code32
	j	.L71
	.code32
	j	.L72
	.code32
	j	.L73
	.code32
	j	.L74
	.code32
	j	.L75
.L74:
	.loc 1 561 0
	movh.a	%a15, hi:Qspi_ABIST_WaitCtr
	ld.hu	%d15, [%a15] lo:Qspi_ABIST_WaitCtr
	jge.u	%d15, 10, .L89
.L101:
	.loc 1 563 0
	add	%d15, 1
	st.h	[%a15] lo:Qspi_ABIST_WaitCtr, %d15
	ret
.L75:
	.loc 1 592 0
	lea	%a12, [%SP] 24
	.loc 1 432 0
	mov	%d15, 0
	lea	%a15, [%SP] 18
.L94:
	.loc 1 603 0 discriminator 2
	addsc.a	%a4, %a15, %d15, 1
	ld.hu	%d4, [+%a12]2
	add	%d15, 1
	call	Qspi_SBC_TxRxData
	.loc 1 601 0 discriminator 2
	jne	%d15, 3, .L94
	.loc 1 605 0
	movh.a	%a15, hi:Qspi_SBCError
	ld.w	%d15, [%a15] lo:Qspi_SBCError
	andn	%d15, %d15, ~(-129)
	st.w	[%a15] lo:Qspi_SBCError, %d15
	.loc 1 606 0
	mov	%d15, 4
	movh.a	%a15, hi:Qspi_StrtUpTst_Sts
	st.w	[%a15] lo:Qspi_StrtUpTst_Sts, %d15
	.loc 1 608 0
	ret
.LVL27:
.L69:
	movh.a	%a14, hi:Qspi_ABIST_Status
	.loc 1 432 0
	mov.aa	%a12, %SP
	mov	%d15, 0
	lea	%a15, [%SP] 18
	lea	%a14, [%a14] lo:Qspi_ABIST_Status
	.loc 1 440 0
	mov.a	%a13, 1
.L77:
	.loc 1 439 0 discriminator 2
	addsc.a	%a4, %a15, %d15, 1
	ld.hu	%d4, [+%a12]2
	.loc 1 440 0 discriminator 2
	add	%d15, 1
	.loc 1 439 0 discriminator 2
	call	Qspi_SBC_TxRxData
	.loc 1 440 0 discriminator 2
	st.a	[%a14]0, %a13
	.loc 1 437 0 discriminator 2
	jne	%d15, 4, .L77
	ret
.L70:
	.loc 1 448 0
	movh.a	%a15, hi:Qspi_ABISTSS_RetryCtr
	ld.hu	%d15, [%a15] lo:Qspi_ABISTSS_RetryCtr
	jlt.u	%d15, 3, .L103
	.loc 1 459 0
	imask	%e2, 1, 8, 1
	movh.a	%a15, hi:Qspi_SBCError
	.loc 1 460 0
	mov	%d15, 7
	.loc 1 459 0
	lea	%a15, [%a15] lo:Qspi_SBCError
	ldmst	[%a15]0, %e2
	.loc 1 460 0
	st.w	[%a12] lo:Qspi_ABIST_Status, %d15
	ret
.L71:
	.loc 1 467 0
	movh.a	%a15, hi:Qspi_ABIST_WaitCtr
	ld.hu	%d15, [%a15] lo:Qspi_ABIST_WaitCtr
	jlt.u	%d15, 10, .L101
	.loc 1 473 0
	mov	%d4, 22529
	lea	%a4, [%SP] 18
	call	Qspi_SBC_TxRxData
	.loc 1 475 0
	ld.hu	%d15, [%SP] 18
	movh.a	%a15, hi:Qspi_SBCError
	sh	%d15, -1
	jz.t	%d15, 0, .L82
	.loc 1 475 0 is_stmt 0 discriminator 1
	ld.w	%d2, [%a15] lo:Qspi_SBCError
	jz.t	%d2, 6, .L83
.L82:
	.loc 1 479 0 is_stmt 1
	extr.u	%d15, %d15, 4, 4
	jeq	%d15, 5, .L104
.L84:
	.loc 1 482 0
	imask	%e2, 1, 8, 1
	.loc 1 483 0
	mov	%d15, 1
	.loc 1 482 0
	lea	%a15, [%a15] lo:Qspi_SBCError
	ldmst	[%a15]0, %e2
	.loc 1 483 0
	movh.a	%a15, hi:Qspi_ABISTSS_RetryFlag
	st.b	[%a15] lo:Qspi_ABISTSS_RetryFlag, %d15
	.loc 1 484 0
	mov	%d15, 0
	st.w	[%a12] lo:Qspi_ABIST_Status, %d15
	ret
.L72:
	.loc 1 506 0
	movh.a	%a13, hi:Qspi_Log
	lea	%a15, [%a13] lo:Qspi_Log
	mov.aa	%a4, %a15
	mov	%d4, 23552
	call	Qspi_SBC_TxRxData
	.loc 1 507 0
	lea	%a4, [%a15] 2
	mov	%d4, 24065
	call	Qspi_SBC_TxRxData
	.loc 1 508 0
	lea	%a4, [%a15] 4
	mov	%d4, 24576
	call	Qspi_SBC_TxRxData
	.loc 1 509 0
	lea	%a4, [%a15] 6
	mov	%d4, 14337
	call	Qspi_SBC_TxRxData
	.loc 1 510 0
	lea	%a4, [%a15] 8
	mov	%d4, 13313
	call	Qspi_SBC_TxRxData
	.loc 1 511 0
	lea	%a4, [%a15] 10
	mov	%d4, 13824
	call	Qspi_SBC_TxRxData
	.loc 1 512 0
	lea	%a4, [%a15] 12
	mov	%d4, 16385
	call	Qspi_SBC_TxRxData
	.loc 1 513 0
	lea	%a4, [%a15] 14
	mov	%d4, 16896
	call	Qspi_SBC_TxRxData
	.loc 1 514 0
	lea	%a4, [%a15] 16
	mov	%d4, 17408
	call	Qspi_SBC_TxRxData
	.loc 1 515 0
	lea	%a4, [%a15] 18
	mov	%d4, 17921
	call	Qspi_SBC_TxRxData
	.loc 1 517 0
	ld.hu	%d15, [%a13] lo:Qspi_Log
	extr.u	%d15, %d15, 1, 8
	st.h	[%a13] lo:Qspi_Log, %d15
	.loc 1 518 0
	ld.hu	%d15, [%a15] 2
	.loc 1 526 0
	lea	%a13, [%SP] 8
	.loc 1 518 0
	extr.u	%d15, %d15, 1, 8
	st.h	[%a15] 2, %d15
	.loc 1 519 0
	ld.hu	%d15, [%a15] 4
	extr.u	%d15, %d15, 1, 8
	st.h	[%a15] 4, %d15
	.loc 1 520 0
	ld.hu	%d15, [%a15] 6
	extr.u	%d15, %d15, 1, 8
	st.h	[%a15] 6, %d15
	.loc 1 521 0
	ld.hu	%d15, [%a15] 8
	extr.u	%d15, %d15, 1, 8
	st.h	[%a15] 8, %d15
	.loc 1 522 0
	ld.hu	%d15, [%a15] 10
	extr.u	%d15, %d15, 1, 8
	st.h	[%a15] 10, %d15
	.loc 1 523 0
	ld.hu	%d15, [%a15] 12
	extr.u	%d15, %d15, 1, 8
	st.h	[%a15] 12, %d15
	.loc 1 524 0
	ld.hu	%d15, [%a15] 14
	extr.u	%d15, %d15, 1, 8
	st.h	[%a15] 14, %d15
	.loc 1 525 0
	ld.hu	%d15, [%a15] 16
	extr.u	%d15, %d15, 1, 8
	st.h	[%a15] 16, %d15
	.loc 1 526 0
	ld.hu	%d15, [%a15] 18
	extr.u	%d15, %d15, 1, 8
	st.h	[%a15] 18, %d15
.LVL28:
	mov	%d15, 0
	lea	%a15, [%SP] 18
.LVL29:
.L86:
	.loc 1 531 0 discriminator 2
	addsc.a	%a4, %a15, %d15, 1
	ld.hu	%d4, [+%a13]2
	add	%d15, 1
	call	Qspi_SBC_TxRxData
	.loc 1 529 0 discriminator 2
	jne	%d15, 4, .L86
.L100:
	.loc 1 592 0
	st.w	[%a12] lo:Qspi_ABIST_Status, %d15
	ret
.L73:
	.loc 1 541 0
	movh.a	%a15, hi:Qspi_ABISTInt_RetryCtr
	ld.hu	%d15, [%a15] lo:Qspi_ABISTInt_RetryCtr
	jlt.u	%d15, 3, .L105
	.loc 1 552 0
	imask	%e2, 1, 9, 1
	movh.a	%a15, hi:Qspi_SBCError
	.loc 1 553 0
	mov	%d15, 7
	.loc 1 552 0
	lea	%a15, [%a15] lo:Qspi_SBCError
	ldmst	[%a15]0, %e2
	.loc 1 553 0
	st.w	[%a12] lo:Qspi_ABIST_Status, %d15
	ret
.L103:
	.loc 1 450 0
	movh.a	%a2, hi:Qspi_ABISTSS_RetryFlag
	ld.bu	%d2, [%a2] lo:Qspi_ABISTSS_RetryFlag
	jeq	%d2, 1, .L106
.L80:
	.loc 1 454 0
	mov	%d15, 0
	movh.a	%a15, hi:Qspi_ABIST_WaitCtr
	st.h	[%a15] lo:Qspi_ABIST_WaitCtr, %d15
	.loc 1 455 0
	mov	%d15, 2
	st.w	[%a12] lo:Qspi_ABIST_Status, %d15
	ret
.L105:
	.loc 1 543 0
	movh.a	%a2, hi:Qspi_ABISTInt_RetryFlag
	ld.bu	%d2, [%a2] lo:Qspi_ABISTInt_RetryFlag
	jeq	%d2, 1, .L107
.L88:
	.loc 1 547 0
	mov	%d15, 0
	movh.a	%a15, hi:Qspi_ABIST_WaitCtr
	st.h	[%a15] lo:Qspi_ABIST_WaitCtr, %d15
	.loc 1 548 0
	mov	%d15, 5
	st.w	[%a12] lo:Qspi_ABIST_Status, %d15
	ret
.L107:
	.loc 1 545 0
	add	%d15, 1
	st.h	[%a15] lo:Qspi_ABISTInt_RetryCtr, %d15
	j	.L88
.L106:
	.loc 1 452 0
	add	%d15, 1
	st.h	[%a15] lo:Qspi_ABISTSS_RetryCtr, %d15
	j	.L80
.L89:
	.loc 1 567 0
	mov	%d4, 22529
	lea	%a4, [%SP] 18
	call	Qspi_SBC_TxRxData
	.loc 1 569 0
	ld.hu	%d15, [%SP] 18
	movh.a	%a15, hi:Qspi_SBCError
	sh	%d15, -1
	jz.t	%d15, 0, .L90
	.loc 1 569 0 is_stmt 0 discriminator 1
	ld.w	%d2, [%a15] lo:Qspi_SBCError
	jz.t	%d2, 6, .L91
.L90:
	.loc 1 572 0 is_stmt 1
	extr.u	%d15, %d15, 4, 4
	jeq	%d15, 5, .L108
.L92:
	.loc 1 575 0
	imask	%e2, 1, 9, 1
	.loc 1 576 0
	mov	%d15, 1
	.loc 1 575 0
	lea	%a15, [%a15] lo:Qspi_SBCError
	ldmst	[%a15]0, %e2
	.loc 1 576 0
	movh.a	%a15, hi:Qspi_ABISTInt_RetryFlag
	st.b	[%a15] lo:Qspi_ABISTInt_RetryFlag, %d15
	.loc 1 577 0
	mov	%d15, 3
	st.w	[%a12] lo:Qspi_ABIST_Status, %d15
	ret
.L104:
	.loc 1 479 0 discriminator 1
	ld.w	%d2, [%a15] lo:Qspi_SBCError
	and	%d15, %d2, 64
	jnz	%d15, .L84
	.loc 1 489 0
	andn	%d2, %d2, ~(-257)
	movh.a	%a15, hi:Qspi_SBCError
	st.w	[%a15] lo:Qspi_SBCError, %d2
	.loc 1 490 0
	movh.a	%a15, hi:Qspi_ABISTSS_RetryFlag
	st.b	[%a15] lo:Qspi_ABISTSS_RetryFlag, %d15
	.loc 1 491 0
	movh.a	%a15, hi:Qspi_ABISTSS_RetryCtr
	st.h	[%a15] lo:Qspi_ABISTSS_RetryCtr, %d15
	.loc 1 492 0
	mov	%d15, 3
	st.w	[%a12] lo:Qspi_ABIST_Status, %d15
	ret
.L108:
	.loc 1 572 0 discriminator 1
	ld.w	%d2, [%a15] lo:Qspi_SBCError
	and	%d15, %d2, 64
	jnz	%d15, .L92
	.loc 1 582 0
	insert	%d2, %d2, 0, 9, 1
	movh.a	%a15, hi:Qspi_SBCError
	st.w	[%a15] lo:Qspi_SBCError, %d2
	.loc 1 583 0
	movh.a	%a15, hi:Qspi_ABISTInt_RetryFlag
	st.b	[%a15] lo:Qspi_ABISTInt_RetryFlag, %d15
	.loc 1 584 0
	movh.a	%a15, hi:Qspi_ABISTInt_RetryCtr
	st.h	[%a15] lo:Qspi_ABISTInt_RetryCtr, %d15
	.loc 1 585 0
	mov	%d15, 6
	st.w	[%a12] lo:Qspi_ABIST_Status, %d15
	ret
.L91:
	.loc 1 591 0
	mov	%d15, 1
	movh.a	%a15, hi:Qspi_ABISTInt_RetryFlag
	st.b	[%a15] lo:Qspi_ABISTInt_RetryFlag, %d15
	.loc 1 592 0
	mov	%d15, 4
	j	.L100
.L83:
	.loc 1 498 0
	mov	%d15, 1
	movh.a	%a15, hi:Qspi_ABISTSS_RetryFlag
	st.b	[%a15] lo:Qspi_ABISTSS_RetryFlag, %d15
	.loc 1 499 0
	mov	%d15, 1
	st.w	[%a12] lo:Qspi_ABIST_Status, %d15
	ret
.LFE210:
	.size	Qspi_SBC_ABIST, .-Qspi_SBC_ABIST
	.align 3
	.global	Qspi_SBC_GotoNormal
	.type	Qspi_SBC_GotoNormal, @function
Qspi_SBC_GotoNormal:
.LFB209:
	.loc 1 389 0
.LVL30:
	sub.a	%SP, 8
.LCFI5:
	.loc 1 398 0
	mov.u	%d4, 43605
	lea	%a4, [%SP] 4
	call	Qspi_SBC_TxRxData
.LVL31:
	mov.u	%d4, 44459
	lea	%a4, [%SP] 6
	call	Qspi_SBC_TxRxData
.LVL32:
	.loc 1 402 0
	mov	%d4, 19968
	lea	%a4, [%SP] 4
	call	Qspi_SBC_TxRxData
	.loc 1 403 0
	ld.hu	%d15, [%SP] 4
	mov.u	%d2, 32852
	jeq	%d15, %d2, .L113
.L110:
	.loc 1 405 0
	ld.w	%d15, 0xf0000480
	jnz.t	%d15, 0, .L109
	.loc 1 407 0
	imask	%e2, 1, 5, 1
	movh.a	%a15, hi:Qspi_SBCError
	lea	%a15, [%a15] lo:Qspi_SBCError
	ldmst	[%a15]0, %e2
.L109:
	ret
.L113:
	.loc 1 403 0 discriminator 1
	movh.a	%a15, hi:Qspi_SBCError
	ld.w	%d15, [%a15] lo:Qspi_SBCError
	jnz.t	%d15, 6, .L110
	ret
.LFE209:
	.size	Qspi_SBC_GotoNormal, .-Qspi_SBC_GotoNormal
.section .rodata,"a",@progbits
	.align 1
.LC4:
	.short	-30192
	.short	-30192
	.short	-29231
	.short	-29166
	.short	-28649
	.short	-28159
	.short	-27647
	.align 1
.LC5:
	.short	6144
	.short	6144
	.short	6657
	.short	7169
	.short	7680
	.short	8193
	.short	8704
	.section .text.MPU_ASIL_CODE
	.align 3
	.global	Qspi_SBC_ReadStatus
	.type	Qspi_SBC_ReadStatus, @function
Qspi_SBC_ReadStatus:
.LFB208:
	.loc 1 329 0
	sub.a	%SP, 48
.LCFI6:
	.loc 1 330 0
	movh.a	%a2, hi:.LC4
	lea	%a15, [%SP] 6
	lea	%a2, [%a2] lo:.LC4
		# #chunks=7, chunksize=2, remains=0
	lea	%a3, 7-1
	0:
	ld.h	%d15, [%a2+]2
	st.h	[%a15+]2, %d15
	loop	%a3, 0b
	.loc 1 332 0
	movh.a	%a2, hi:.LC5
	lea	%a15, [%SP] 20
	lea	%a2, [%a2] lo:.LC5
		# #chunks=7, chunksize=2, remains=0
	lea	%a3, 7-1
	0:
	ld.h	%d15, [%a2+]2
	st.h	[%a15+]2, %d15
	loop	%a3, 0b
	.loc 1 338 0
	movh.a	%a15, hi:Qspi_SBCError
	mov.d	%d2, %a15
	ld.w	%d15, [%a15] lo:Qspi_SBCError
	lea	%a14, [%SP] 18
	andn	%d15, %d15, ~(-9)
	lea	%a13, [%SP] 4
	lea	%a12, [%SP] 32
	st.w	[%a15] lo:Qspi_SBCError, %d15
.LVL33:
	addi	%d8, %d2, lo:Qspi_SBCError
	mov	%d15, 0
	j	.L117
.LVL34:
.L115:
	.loc 1 348 0
	imask	%e2, 1, 3, 1
	mov.a	%a2, %d8
	add	%d15, 1
	ldmst	[%a2]0, %e2
	.loc 1 340 0
	jeq	%d15, 7, .L129
.LVL35:
.L117:
	.loc 1 342 0
	lea	%a2, [%SP] 34
	ld.hu	%d4, [+%a14]2
	addsc.a	%a4, %a2, %d15, 1
	call	Qspi_SBC_TxRxData
.LVL36:
	.loc 1 344 0
	ld.hu	%d3, [+%a13]2
.LVL37:
	.loc 1 345 0
	ld.hu	%d2, [+%a12]2
.LVL38:
	.loc 1 346 0
	extr.u	%d3, %d3, 1, 8
	extr.u	%d2, %d2, 1, 8
	jne	%d3, %d2, .L115
	.loc 1 346 0 is_stmt 0 discriminator 1
	mov.a	%a3, %d8
	ld.w	%d2, [%a3]0
	jnz.t	%d2, 6, .L115
	.loc 1 348 0 is_stmt 1
	add	%d15, 1
	.loc 1 340 0
	jne	%d15, 7, .L117
.L129:
	.loc 1 353 0
	mov	%d4, 5633
	lea	%a4, [%SP] 34
	call	Qspi_SBC_TxRxData
.LVL39:
	.loc 1 354 0
	ld.hu	%d15, [%SP] 34
	jnz.t	%d15, 1, .L118
	.loc 1 354 0 is_stmt 0 discriminator 1
	ld.w	%d15, [%a15] lo:Qspi_SBCError
	jnz.t	%d15, 6, .L118
.L119:
	.loc 1 360 0 is_stmt 1
	mov	%d4, 25089
	lea	%a4, [%SP] 34
	call	Qspi_SBC_TxRxData
	.loc 1 361 0
	ld.hu	%d15, [%SP] 34
	extr.u	%d15, %d15, 1, 8
	jnz	%d15, .L120
	.loc 1 361 0 is_stmt 0 discriminator 1
	ld.w	%d15, [%a15] lo:Qspi_SBCError
	jnz.t	%d15, 6, .L120
.L121:
	.loc 1 366 0 is_stmt 1
	mov	%d4, 25601
	lea	%a4, [%SP] 34
	call	Qspi_SBC_TxRxData
	.loc 1 367 0
	ld.hu	%d15, [%SP] 34
	extr.u	%d15, %d15, 1, 8
	jnz	%d15, .L122
	.loc 1 367 0 is_stmt 0 discriminator 1
	ld.w	%d15, [%a15] lo:Qspi_SBCError
	jnz.t	%d15, 6, .L122
.L123:
	.loc 1 373 0 is_stmt 1
	mov.u	%d4, 63489
	lea	%a4, [%SP] 34
	call	Qspi_SBC_TxRxData
	.loc 1 374 0
	mov	%d4, 30720
	lea	%a4, [%SP] 34
	call	Qspi_SBC_TxRxData
	.loc 1 375 0
	ld.hu	%d15, [%SP] 34
	jnz.t	%d15, 8, .L124
	.loc 1 375 0 is_stmt 0 discriminator 1
	ld.w	%d15, [%a15] lo:Qspi_SBCError
	jz.t	%d15, 6, .L125
.L124:
	.loc 1 377 0 is_stmt 1
	ld.w	%d15, 0xf0000480
	jnz.t	%d15, 0, .L125
	.loc 1 379 0
	imask	%e2, 1, 4, 1
	lea	%a15, [%a15] lo:Qspi_SBCError
	ldmst	[%a15]0, %e2
.L125:
	.loc 1 382 0
	movh.a	%a15, hi:Qspi_SbcStateChng_WaitCtr
	ld.bu	%d15, [%a15] lo:Qspi_SbcStateChng_WaitCtr
	ne	%d15, %d15, 255
	jz	%d15, .L130
	ret
.L118:
	.loc 1 356 0
	imask	%e2, 1, 3, 1
	lea	%a3, [%a15] lo:Qspi_SBCError
	ldmst	[%a3]0, %e2
	j	.L119
.L120:
	.loc 1 363 0
	imask	%e2, 1, 3, 1
	lea	%a2, [%a15] lo:Qspi_SBCError
	ldmst	[%a2]0, %e2
	j	.L121
.L122:
	.loc 1 369 0
	imask	%e2, 1, 3, 1
	lea	%a3, [%a15] lo:Qspi_SBCError
	ldmst	[%a3]0, %e2
	j	.L123
.L130:
	.loc 1 384 0
	st.b	[%a15] lo:Qspi_SbcStateChng_WaitCtr, %d15
	ret
.LFE208:
	.size	Qspi_SBC_ReadStatus, .-Qspi_SBC_ReadStatus
.section .rodata,"a",@progbits
	.align 1
.LC6:
	.short	-30720
	.short	-30192
	.short	-29231
	.short	-29166
	.short	-28649
	.short	-28159
	.short	-27647
	.align 1
.LC7:
	.short	2049
	.short	2560
	.short	3072
	.short	3585
	.short	4097
	.short	4608
	.short	5120
	.section .text.MPU_ASIL_CODE
	.align 3
	.global	Qspi_SBC_Config
	.type	Qspi_SBC_Config, @function
Qspi_SBC_Config:
.LFB207:
	.loc 1 297 0
	sub.a	%SP, 48
.LCFI7:
	.loc 1 298 0
	movh.a	%a2, hi:.LC6
	lea	%a15, [%SP] 6
	lea	%a2, [%a2] lo:.LC6
		# #chunks=7, chunksize=2, remains=0
	lea	%a3, 7-1
	0:
	ld.h	%d15, [%a2+]2
	st.h	[%a15+]2, %d15
	loop	%a3, 0b
	.loc 1 300 0
	movh.a	%a2, hi:.LC7
	lea	%a15, [%SP] 20
	lea	%a2, [%a2] lo:.LC7
		# #chunks=7, chunksize=2, remains=0
	lea	%a3, 7-1
	0:
	ld.h	%d15, [%a2+]2
	st.h	[%a15+]2, %d15
	loop	%a3, 0b
	.loc 1 306 0
	movh.a	%a15, hi:Qspi_SBCError
	ld.w	%d15, [%a15] lo:Qspi_SBCError
	andn	%d15, %d15, ~(-5)
	st.w	[%a15] lo:Qspi_SBCError, %d15
.LVL40:
	lea	%a15, [%SP] 4
	mov.aa	%a12, %a15
	mov	%d15, 0
.LVL41:
.L132:
	.loc 1 310 0 discriminator 2
	lea	%a2, [%SP] 34
	addsc.a	%a4, %a2, %d15, 1
	ld.hu	%d4, [+%a12]2
	add	%d15, 1
	call	Qspi_SBC_TxRxData
	.loc 1 308 0 discriminator 2
	jne	%d15, 7, .L132
	movh.a	%a14, hi:Qspi_SBCError
	.loc 1 308 0 is_stmt 0
	lea	%a13, [%SP] 18
	lea	%a12, [%SP] 32
	mov	%d15, 0
	lea	%a14, [%a14] lo:Qspi_SBCError
	j	.L135
.LVL42:
.L133:
	.loc 1 323 0 is_stmt 1
	imask	%e2, 1, 2, 1
	add	%d15, 1
	ldmst	[%a14]0, %e2
	.loc 1 314 0
	jeq	%d15, 7, .L139
.LVL43:
.L135:
	.loc 1 316 0
	lea	%a3, [%SP] 34
	ld.hu	%d4, [+%a13]2
	addsc.a	%a4, %a3, %d15, 1
	call	Qspi_SBC_TxRxData
.LVL44:
	.loc 1 320 0
	ld.hu	%d2, [+%a12]2
.LVL45:
	.loc 1 318 0
	ld.hu	%d3, [+%a15]2
.LVL46:
	xor	%d2, %d3
	.loc 1 321 0
	extr.u	%d2, %d2, 1, 8
	ne	%d2, %d2, 255
	jnz	%d2, .L133
	.loc 1 321 0 is_stmt 0 discriminator 1
	ld.w	%d2, [%a14]0
	jnz.t	%d2, 6, .L133
	.loc 1 323 0 is_stmt 1
	add	%d15, 1
	.loc 1 314 0
	jne	%d15, 7, .L135
.L139:
	.loc 1 326 0
	ret
.LFE207:
	.size	Qspi_SBC_Config, .-Qspi_SBC_Config
.section .srodata,"as",@progbits
	.align 1
.LC8:
	.short	-30786
	.short	-31128
	.short	-30851
	.short	-30827
	.section .text.MPU_ASIL_CODE
	.align 3
	.global	Qspi_SBC_Lockup
	.type	Qspi_SBC_Lockup, @function
Qspi_SBC_Lockup:
.LFB206:
	.loc 1 274 0
	sub.a	%SP, 16
.LCFI8:
	.loc 1 275 0
	mov.aa	%a15, %SP
	lea	%a2, [%A0] SM:.LC8
		# #chunks=4, chunksize=2, remains=0
	lea	%a3, 4-1
	0:
	ld.h	%d15, [%a2+]2
	st.h	[%a15+]2, %d15
	loop	%a3, 0b
	.loc 1 280 0
	movh.a	%a12, hi:Qspi_SBCError
	lea	%a15, [%SP] -2
	ld.w	%d15, [%a12] lo:Qspi_SBCError
	andn	%d15, %d15, ~(-3)
	st.w	[%a12] lo:Qspi_SBCError, %d15
.LVL47:
	mov	%d15, 0
.LVL48:
.L141:
	.loc 1 284 0 discriminator 2
	lea	%a2, [%SP] 8
	addsc.a	%a4, %a2, %d15, 1
	ld.hu	%d4, [+%a15]2
	add	%d15, 1
	call	Qspi_SBC_TxRxData
	.loc 1 282 0 discriminator 2
	jne	%d15, 4, .L141
	.loc 1 288 0
	mov	%d4, 20480
	lea	%a4, [%SP] 8
	call	Qspi_SBC_TxRxData
	.loc 1 290 0
	ld.hu	%d15, [%SP] 8
	mov.u	%d2, 33250
	jeq	%d15, %d2, .L146
.L142:
	.loc 1 292 0
	imask	%e2, 1, 1, 1
	lea	%a12, [%a12] lo:Qspi_SBCError
	ldmst	[%a12]0, %e2
	ret
.L146:
	.loc 1 290 0 discriminator 1
	ld.w	%d15, [%a12] lo:Qspi_SBCError
	jnz.t	%d15, 6, .L142
	ret
.LFE206:
	.size	Qspi_SBC_Lockup, .-Qspi_SBC_Lockup
.section .srodata,"as",@progbits
	.align 1
.LC9:
	.short	-30890
	.short	-30754
	.short	-31059
	.short	-31195
	.section .text.MPU_ASIL_CODE
	.align 3
	.global	Qspi_SBC_Unlock
	.type	Qspi_SBC_Unlock, @function
Qspi_SBC_Unlock:
.LFB205:
	.loc 1 252 0
	sub.a	%SP, 16
.LCFI9:
	.loc 1 253 0
	mov.aa	%a15, %SP
	lea	%a2, [%A0] SM:.LC9
		# #chunks=4, chunksize=2, remains=0
	lea	%a3, 4-1
	0:
	ld.h	%d15, [%a2+]2
	st.h	[%a15+]2, %d15
	loop	%a3, 0b
	.loc 1 258 0
	movh.a	%a12, hi:Qspi_SBCError
	lea	%a15, [%SP] -2
	ld.w	%d15, [%a12] lo:Qspi_SBCError
	andn	%d15, %d15, ~(-2)
	st.w	[%a12] lo:Qspi_SBCError, %d15
.LVL49:
	mov	%d15, 0
.LVL50:
.L148:
	.loc 1 262 0 discriminator 2
	lea	%a2, [%SP] 8
	addsc.a	%a4, %a2, %d15, 1
	ld.hu	%d4, [+%a15]2
	add	%d15, 1
	call	Qspi_SBC_TxRxData
	.loc 1 260 0 discriminator 2
	jne	%d15, 4, .L148
	.loc 1 266 0
	mov	%d4, 20480
	lea	%a4, [%SP] 8
	call	Qspi_SBC_TxRxData
	.loc 1 267 0
	ld.hu	%d15, [%SP] 8
	mov.u	%d2, 33249
	jeq	%d15, %d2, .L153
.L149:
	.loc 1 269 0
	imask	%e2, 1, 0, 1
	lea	%a12, [%a12] lo:Qspi_SBCError
	ldmst	[%a12]0, %e2
	ret
.L153:
	.loc 1 267 0 discriminator 1
	ld.w	%d15, [%a12] lo:Qspi_SBCError
	jnz.t	%d15, 6, .L149
	ret
.LFE205:
	.size	Qspi_SBC_Unlock, .-Qspi_SBC_Unlock
	.align 3
	.global	Qspi_StartUp
	.type	Qspi_StartUp, @function
Qspi_StartUp:
.LFB203:
	.loc 1 87 0
	.loc 1 88 0
	movh.a	%a15, hi:Qspi_StrtUpTst_Sts
	ld.w	%d15, [%a15] lo:Qspi_StrtUpTst_Sts
	add	%d15, -1
	jge.u	%d15, 7, .L154
	movh.a	%a2, hi:.L161
	lea	%a2, [%a2] lo:.L161
	addsc.a	%a2, %a2, %d15, 2
	ji	%a2
	.align 2
	.align 2
.L161:
	.code32
	j	.L156
	.code32
	j	.L157
	.code32
	j	.L158
	.code32
	j	.L159
	.code32
	j	.L154
	.code32
	j	.L154
	.code32
	j	.L160
.L160:
	.loc 1 193 0
	mov	%d15, 8
	st.w	[%a15] lo:Qspi_StrtUpTst_Sts, %d15
.L154:
	ret
.L159:
	.loc 1 163 0
	movh.a	%a12, hi:Qspi_SBCError
	ld.w	%d15, [%a12] lo:Qspi_SBCError
	jz.t	%d15, 7, .L170
.L168:
	.loc 1 177 0
	mov	%d15, 8
	st.w	[%a15] lo:Qspi_StrtUpTst_Sts, %d15
	ret
.L157:
	.loc 1 135 0
	movh.a	%a2, hi:Qspi_SbcStateChng_WaitCtr
	ld.bu	%d15, [%a2] lo:Qspi_SbcStateChng_WaitCtr
	ne	%d2, %d15, 200
	jz	%d2, .L171
	.loc 1 149 0
	add	%d15, 1
	st.b	[%a2] lo:Qspi_SbcStateChng_WaitCtr, %d15
	ret
.L158:
	.loc 1 155 0
	movh.a	%a15, hi:Main_HwVer
	lea	%a15, [%a15] lo:Main_HwVer
	ld.w	%d15, [%a15] 12
	add	%d15, -1
	jlt.u	%d15, 4, .L154
	.loc 1 157 0
	j	Qspi_SBC_ABIST
.L156:
	.loc 1 98 0
	movh.a	%a12, hi:Qspi_SBCError
	.loc 1 97 0
	call	Qspi_SBC_Unlock
	.loc 1 98 0
	ld.w	%d15, [%a12] lo:Qspi_SBCError
	jnz.t	%d15, 0, .L168
	.loc 1 100 0
	call	Qspi_SBC_Config
	.loc 1 101 0
	ld.w	%d15, [%a12] lo:Qspi_SBCError
	jnz.t	%d15, 2, .L168
	.loc 1 103 0
	call	Qspi_SBC_Lockup
	.loc 1 104 0
	ld.w	%d15, [%a12] lo:Qspi_SBCError
	jnz.t	%d15, 1, .L168
	.loc 1 106 0
	call	Qspi_SBC_ReadStatus
	.loc 1 108 0
	ld.w	%d15, [%a12] lo:Qspi_SBCError
	and	%d15, %d15, 24
	.loc 1 107 0
	jnz	%d15, .L168
	.loc 1 110 0
	mov	%d15, 2
	st.w	[%a15] lo:Qspi_StrtUpTst_Sts, %d15
	ret
.L170:
	.loc 1 165 0
	call	Qspi_SBC_GotoNormal
	.loc 1 166 0
	ld.w	%d15, [%a12] lo:Qspi_SBCError
	jnz.t	%d15, 5, .L168
	.loc 1 168 0
	mov	%d15, 5
	st.w	[%a15] lo:Qspi_StrtUpTst_Sts, %d15
	ret
.L171:
	.loc 1 137 0
	call	Qspi_SBC_GotoNormal
	.loc 1 138 0
	movh.a	%a2, hi:Qspi_SBCError
	ld.w	%d15, [%a2] lo:Qspi_SBCError
	jnz.t	%d15, 5, .L168
	.loc 1 140 0
	mov	%d15, 3
	st.w	[%a15] lo:Qspi_StrtUpTst_Sts, %d15
	ret
.LFE203:
	.size	Qspi_StartUp, .-Qspi_StartUp
	.align 3
	.global	Qspi_SBC_ParityCheck
	.type	Qspi_SBC_ParityCheck, @function
Qspi_SBC_ParityCheck:
.LFB216:
	.loc 1 899 0
.LVL51:
	.loc 1 900 0
	andn	%d15, %d4, ~(-2)
	extr.u	%d15, %d15, 0, 16
.LVL52:
	.loc 1 901 0
	and	%d4, %d4, 1
.LVL53:
	.loc 1 902 0
	mov	%d2, 0
	.loc 1 904 0
	jz	%d15, .L173
.LVL54:
.L174:
	.loc 1 907 0
	add	%d3, %d15, -1
	and	%d15, %d3
	.loc 1 906 0
	xor	%d2, %d2, 1
.LVL55:
	.loc 1 904 0
	jnz	%d15, .L174
.LVL56:
.L173:
	.loc 1 911 0
	eq	%d2, %d4, %d2
	ret
.LFE216:
	.size	Qspi_SBC_ParityCheck, .-Qspi_SBC_ParityCheck
	.align 3
	.global	Qspi_TestCmd_Calc
	.type	Qspi_TestCmd_Calc, @function
Qspi_TestCmd_Calc:
.LFB217:
	.loc 1 914 0
.LVL57:
	.loc 1 917 0
	ld.h	%d2, [%a4]0
	andn	%d2, %d2, ~(-2)
	st.h	[%a4]0, %d2
	.loc 1 918 0
	extr.u	%d2, %d2, 0, 16
.LVL58:
	.loc 1 920 0
	jz	%d2, .L177
.LVL59:
.L180:
	.loc 1 922 0
	ld.h	%d3, [%a4]0
	mov	%d15, %d3
	insn.t	%d15, %d15,0, %d3,0
	st.h	[%a4]0, %d15
	.loc 1 923 0
	add	%d15, %d2, -1
	and	%d2, %d15
.LVL60:
	.loc 1 920 0
	jnz	%d2, .L180
.LVL61:
.L177:
	ret
.LFE217:
	.size	Qspi_TestCmd_Calc, .-Qspi_TestCmd_Calc
	.align 3
	.global	Qspi_Cmd_Test10ms
	.type	Qspi_Cmd_Test10ms, @function
Qspi_Cmd_Test10ms:
.LFB218:
	.loc 1 928 0
.LVL62:
	.loc 1 929 0
	ld.hu	%d15, [%a4]0
	jz	%d15, .L182
.LVL63:
.LBB14:
.LBB15:
	.loc 1 917 0
	ld.h	%d2, [%a4] 2
	.loc 1 920 0
	mov	%d15, 0
	.loc 1 917 0
	andn	%d2, %d2, ~(-2)
	st.h	[%a4] 2, %d2
	.loc 1 918 0
	extr.u	%d2, %d2, 0, 16
.LVL64:
	.loc 1 920 0
	jz	%d2, .L184
.LVL65:
.L189:
	.loc 1 922 0
	ld.h	%d3, [%a4] 2
	mov	%d15, %d3
	insn.t	%d15, %d15,0, %d3,0
	st.h	[%a4] 2, %d15
	.loc 1 923 0
	add	%d15, %d2, -1
	and	%d2, %d15
.LVL66:
	.loc 1 920 0
	jnz	%d2, .L189
	ld.hu	%d15, [%a4] 2
.LVL67:
.L184:
.LBE15:
.LBE14:
	.loc 1 932 0
	st.w	0xf0001c64, %d15
.L186:
	.loc 1 933 0 discriminator 1
	ld.w	%d15, 0xf0001c40
	jz.t	%d15, 9, .L186
	.loc 1 933 0 is_stmt 0 discriminator 2
	ld.w	%d15, 0xf0001c54
	insert	%d15, %d15, 1, 9, 1
	st.w	0xf0001c54, %d15
.L187:
	.loc 1 933 0 discriminator 1
	ld.w	%d15, 0xf0001c40
	jz.t	%d15, 10, .L187
	.loc 1 933 0 discriminator 2
	ld.w	%d15, 0xf0001c54
	insert	%d15, %d15, 1, 10, 1
	st.w	0xf0001c54, %d15
	.loc 1 934 0 is_stmt 1 discriminator 2
	ld.w	%d15, 0xf0001c90
	st.h	[%a4] 4, %d15
	.loc 1 935 0 discriminator 2
	mov	%d15, 0
	st.h	[%a4]0, %d15
.LVL68:
.L182:
	ret
.LFE218:
	.size	Qspi_Cmd_Test10ms, .-Qspi_Cmd_Test10ms
	.global	Qspi_StrtUpTst_Sts
	.section .bss.MPU_ASIL_VAR_NOINIT,"aw",@nobits
	.align 3
	.type	Qspi_StrtUpTst_Sts, @object
	.size	Qspi_StrtUpTst_Sts, 4
Qspi_StrtUpTst_Sts:
	.zero	4
	.global	Qspi_SBCError
	.align 3
	.type	Qspi_SBCError, @object
	.size	Qspi_SBCError, 4
Qspi_SBCError:
	.zero	4
	.align 3
	.type	Qspi_WWDTest_Ctr, @object
	.size	Qspi_WWDTest_Ctr, 2
Qspi_WWDTest_Ctr:
	.zero	2
	.align 3
	.type	Qspi_SbcStateChng_WaitCtr, @object
	.size	Qspi_SbcStateChng_WaitCtr, 1
Qspi_SbcStateChng_WaitCtr:
	.zero	1
	.align 3
	.type	Qspi_WWDT_Status, @object
	.size	Qspi_WWDT_Status, 4
Qspi_WWDT_Status:
	.zero	4
	.align 3
	.type	Qspi_WWDTest_RetryCtr, @object
	.size	Qspi_WWDTest_RetryCtr, 2
Qspi_WWDTest_RetryCtr:
	.zero	2
	.align 3
	.type	Qspi_ABISTSS_RetryFlag, @object
	.size	Qspi_ABISTSS_RetryFlag, 1
Qspi_ABISTSS_RetryFlag:
	.zero	1
	.align 3
	.type	Qspi_ABISTSS_RetryCtr, @object
	.size	Qspi_ABISTSS_RetryCtr, 2
Qspi_ABISTSS_RetryCtr:
	.zero	2
	.align 3
	.type	Qspi_ABISTInt_RetryFlag, @object
	.size	Qspi_ABISTInt_RetryFlag, 1
Qspi_ABISTInt_RetryFlag:
	.zero	1
	.align 3
	.type	Qspi_ABISTInt_RetryCtr, @object
	.size	Qspi_ABISTInt_RetryCtr, 2
Qspi_ABISTInt_RetryCtr:
	.zero	2
	.align 3
	.type	Qspi_ABIST_Status, @object
	.size	Qspi_ABIST_Status, 4
Qspi_ABIST_Status:
	.zero	4
	.align 3
	.type	Qspi_10msTick, @object
	.size	Qspi_10msTick, 2
Qspi_10msTick:
	.zero	2
	.align 3
	.type	Qspi_ABIST_WaitCtr, @object
	.size	Qspi_ABIST_WaitCtr, 2
Qspi_ABIST_WaitCtr:
	.zero	2
	.align 3
	.type	Qspi_Log, @object
	.size	Qspi_Log, 20
Qspi_Log:
	.zero	20
	.align 3
	.type	Qspi_WWDT_WdgErrCnt, @object
	.size	Qspi_WWDT_WdgErrCnt, 6
Qspi_WWDT_WdgErrCnt:
	.zero	6
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
	.uaword	.LFB202
	.uaword	.LFE202-.LFB202
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB215
	.uaword	.LFE215-.LFB215
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB214
	.uaword	.LFE214-.LFB214
	.byte	0x4
	.uaword	.LCFI0-.LFB214
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB213
	.uaword	.LFE213-.LFB213
	.byte	0x4
	.uaword	.LCFI1-.LFB213
	.byte	0xe
	.uleb128 0x10
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB212
	.uaword	.LFE212-.LFB212
	.byte	0x4
	.uaword	.LCFI2-.LFB212
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB204
	.uaword	.LFE204-.LFB204
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB211
	.uaword	.LFE211-.LFB211
	.byte	0x4
	.uaword	.LCFI3-.LFB211
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB210
	.uaword	.LFE210-.LFB210
	.byte	0x4
	.uaword	.LCFI4-.LFB210
	.byte	0xe
	.uleb128 0x20
	.align 2
.LEFDE14:
.LSFDE16:
	.uaword	.LEFDE16-.LASFDE16
.LASFDE16:
	.uaword	.Lframe0
	.uaword	.LFB209
	.uaword	.LFE209-.LFB209
	.byte	0x4
	.uaword	.LCFI5-.LFB209
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE16:
.LSFDE18:
	.uaword	.LEFDE18-.LASFDE18
.LASFDE18:
	.uaword	.Lframe0
	.uaword	.LFB208
	.uaword	.LFE208-.LFB208
	.byte	0x4
	.uaword	.LCFI6-.LFB208
	.byte	0xe
	.uleb128 0x30
	.align 2
.LEFDE18:
.LSFDE20:
	.uaword	.LEFDE20-.LASFDE20
.LASFDE20:
	.uaword	.Lframe0
	.uaword	.LFB207
	.uaword	.LFE207-.LFB207
	.byte	0x4
	.uaword	.LCFI7-.LFB207
	.byte	0xe
	.uleb128 0x30
	.align 2
.LEFDE20:
.LSFDE22:
	.uaword	.LEFDE22-.LASFDE22
.LASFDE22:
	.uaword	.Lframe0
	.uaword	.LFB206
	.uaword	.LFE206-.LFB206
	.byte	0x4
	.uaword	.LCFI8-.LFB206
	.byte	0xe
	.uleb128 0x10
	.align 2
.LEFDE22:
.LSFDE24:
	.uaword	.LEFDE24-.LASFDE24
.LASFDE24:
	.uaword	.Lframe0
	.uaword	.LFB205
	.uaword	.LFE205-.LFB205
	.byte	0x4
	.uaword	.LCFI9-.LFB205
	.byte	0xe
	.uleb128 0x10
	.align 2
.LEFDE24:
.LSFDE26:
	.uaword	.LEFDE26-.LASFDE26
.LASFDE26:
	.uaword	.Lframe0
	.uaword	.LFB203
	.uaword	.LFE203-.LFB203
	.align 2
.LEFDE26:
.LSFDE28:
	.uaword	.LEFDE28-.LASFDE28
.LASFDE28:
	.uaword	.Lframe0
	.uaword	.LFB216
	.uaword	.LFE216-.LFB216
	.align 2
.LEFDE28:
.LSFDE30:
	.uaword	.LEFDE30-.LASFDE30
.LASFDE30:
	.uaword	.Lframe0
	.uaword	.LFB217
	.uaword	.LFE217-.LFB217
	.align 2
.LEFDE30:
.LSFDE32:
	.uaword	.LEFDE32-.LASFDE32
.LASFDE32:
	.uaword	.Lframe0
	.uaword	.LFB218
	.uaword	.LFE218-.LFB218
	.align 2
.LEFDE32:
.section .text,"ax",@progbits
.Letext0:
	.file 2 "../30_Bsw/Common/TC21x/IfxQspi_regdef.h"
	.file 3 "../30_Bsw/Common/rtwtypes.h"
	.file 4 "../30_Bsw/Common/Platform_Types.h"
	.file 5 "../30_Bsw/Mcal/Qspi/Qspi.h"
	.file 6 "../30_Bsw/Common/TC21x/IfxCpu_regdef.h"
	.file 7 "../30_Bsw/Common/TC21x/IfxPort_regdef.h"
	.file 8 "../30_Bsw/Main/Main_api.h"
	.file 9 "../30_Bsw/Common/TC21x/IfxCbs_regdef.h"
	.file 10 "../30_Bsw/Mpu/mpu_api.h"
	.file 11 "../30_Bsw/Mcal/Port/Port_api.h"
	.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x46bb
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.6.3 build on 2013-05-17"
	.byte	0x1
	.string	"../30_Bsw/Mcal/Qspi/Qspi.c"
	.string	"D:\\\\SVN\\\\IPB-11Kw\\\\LvDc-C01R0P0-Ceramicheater\\\\20_Make"
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_ranges0+0x50
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x3
	.string	"_Ifx_QSPI_DATAENTRY_Bits"
	.byte	0x4
	.byte	0x2
	.byte	0x89
	.uaword	0xd0
	.uleb128 0x4
	.string	"E"
	.byte	0x2
	.byte	0x8b
	.uaword	0x8f
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_QSPI_DATAENTRY_Bits"
	.byte	0x2
	.byte	0x8c
	.uaword	0x9f
	.uleb128 0x3
	.string	"_Ifx_QSPI_FLAGSCLEAR_Bits"
	.byte	0x4
	.byte	0x2
	.byte	0x9d
	.uaword	0x1a5
	.uleb128 0x4
	.string	"ERRORCLEARS"
	.byte	0x2
	.byte	0x9f
	.uaword	0x8f
	.byte	0x4
	.byte	0x9
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"TXC"
	.byte	0x2
	.byte	0xa0
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"RXC"
	.byte	0x2
	.byte	0xa1
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"PT1C"
	.byte	0x2
	.byte	0xa2
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"PT2C"
	.byte	0x2
	.byte	0xa3
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.uaword	.LASF0
	.byte	0x2
	.byte	0xa4
	.uaword	0x8f
	.byte	0x4
	.byte	0x2
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"USRC"
	.byte	0x2
	.byte	0xa5
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.uaword	.LASF1
	.byte	0x2
	.byte	0xa6
	.uaword	0x8f
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_QSPI_FLAGSCLEAR_Bits"
	.byte	0x2
	.byte	0xa7
	.uaword	0xef
	.uleb128 0x7
	.string	"_Ifx_QSPI_RXEXIT_Bits"
	.byte	0x4
	.byte	0x2
	.uahalf	0x10b
	.uaword	0x1f5
	.uleb128 0x8
	.string	"E"
	.byte	0x2
	.uahalf	0x10d
	.uaword	0x8f
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x9
	.string	"Ifx_QSPI_RXEXIT_Bits"
	.byte	0x2
	.uahalf	0x10e
	.uaword	0x1c5
	.uleb128 0x7
	.string	"_Ifx_QSPI_STATUS_Bits"
	.byte	0x4
	.byte	0x2
	.uahalf	0x129
	.uaword	0x33d
	.uleb128 0x8
	.string	"ERRORFLAGS"
	.byte	0x2
	.uahalf	0x12b
	.uaword	0x8f
	.byte	0x4
	.byte	0x9
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TXF"
	.byte	0x2
	.uahalf	0x12c
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"RXF"
	.byte	0x2
	.uahalf	0x12d
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"PT1F"
	.byte	0x2
	.uahalf	0x12e
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"PT2F"
	.byte	0x2
	.uahalf	0x12f
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0x130
	.uaword	0x8f
	.byte	0x4
	.byte	0x2
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"USRF"
	.byte	0x2
	.uahalf	0x131
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TXFIFOLEVEL"
	.byte	0x2
	.uahalf	0x132
	.uaword	0x8f
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"RXFIFOLEVEL"
	.byte	0x2
	.uahalf	0x133
	.uaword	0x8f
	.byte	0x4
	.byte	0x3
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"SLAVESEL"
	.byte	0x2
	.uahalf	0x134
	.uaword	0x8f
	.byte	0x4
	.byte	0x4
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"RPV"
	.byte	0x2
	.uahalf	0x135
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TPV"
	.byte	0x2
	.uahalf	0x136
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"PHASE"
	.byte	0x2
	.uahalf	0x137
	.uaword	0x8f
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x9
	.string	"Ifx_QSPI_STATUS_Bits"
	.byte	0x2
	.uahalf	0x138
	.uaword	0x212
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0xb
	.byte	0x4
	.byte	0x2
	.uahalf	0x177
	.uaword	0x389
	.uleb128 0xc
	.string	"U"
	.byte	0x2
	.uahalf	0x179
	.uaword	0x8f
	.uleb128 0xc
	.string	"I"
	.byte	0x2
	.uahalf	0x17a
	.uaword	0x35a
	.uleb128 0xc
	.string	"B"
	.byte	0x2
	.uahalf	0x17b
	.uaword	0xd0
	.byte	0
	.uleb128 0x9
	.string	"Ifx_QSPI_DATAENTRY"
	.byte	0x2
	.uahalf	0x17c
	.uaword	0x361
	.uleb128 0xb
	.byte	0x4
	.byte	0x2
	.uahalf	0x187
	.uaword	0x3cc
	.uleb128 0xc
	.string	"U"
	.byte	0x2
	.uahalf	0x189
	.uaword	0x8f
	.uleb128 0xc
	.string	"I"
	.byte	0x2
	.uahalf	0x18a
	.uaword	0x35a
	.uleb128 0xc
	.string	"B"
	.byte	0x2
	.uahalf	0x18b
	.uaword	0x1a5
	.byte	0
	.uleb128 0x9
	.string	"Ifx_QSPI_FLAGSCLEAR"
	.byte	0x2
	.uahalf	0x18c
	.uaword	0x3a4
	.uleb128 0xb
	.byte	0x4
	.byte	0x2
	.uahalf	0x1d7
	.uaword	0x410
	.uleb128 0xc
	.string	"U"
	.byte	0x2
	.uahalf	0x1d9
	.uaword	0x8f
	.uleb128 0xc
	.string	"I"
	.byte	0x2
	.uahalf	0x1da
	.uaword	0x35a
	.uleb128 0xc
	.string	"B"
	.byte	0x2
	.uahalf	0x1db
	.uaword	0x1f5
	.byte	0
	.uleb128 0x9
	.string	"Ifx_QSPI_RXEXIT"
	.byte	0x2
	.uahalf	0x1dc
	.uaword	0x3e8
	.uleb128 0xb
	.byte	0x4
	.byte	0x2
	.uahalf	0x1ef
	.uaword	0x450
	.uleb128 0xc
	.string	"U"
	.byte	0x2
	.uahalf	0x1f1
	.uaword	0x8f
	.uleb128 0xc
	.string	"I"
	.byte	0x2
	.uahalf	0x1f2
	.uaword	0x35a
	.uleb128 0xc
	.string	"B"
	.byte	0x2
	.uahalf	0x1f3
	.uaword	0x33d
	.byte	0
	.uleb128 0x9
	.string	"Ifx_QSPI_STATUS"
	.byte	0x2
	.uahalf	0x1f4
	.uaword	0x428
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0xd
	.uaword	0x47d
	.uaword	0x49e
	.uleb128 0xe
	.uaword	0x468
	.byte	0x7
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x5
	.string	"uint8_T"
	.byte	0x3
	.byte	0x51
	.uaword	0x47d
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x5
	.string	"uint16_T"
	.byte	0x3
	.byte	0x53
	.uaword	0x4d9
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x5
	.string	"uint32_T"
	.byte	0x3
	.byte	0x55
	.uaword	0x8f
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.string	"float"
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.string	"double"
	.uleb128 0x5
	.string	"boolean_T"
	.byte	0x3
	.byte	0x5f
	.uaword	0x47d
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x5
	.string	"u8"
	.byte	0x3
	.byte	0x7d
	.uaword	0x4ad
	.uleb128 0x5
	.string	"u16"
	.byte	0x3
	.byte	0x7f
	.uaword	0x4c9
	.uleb128 0x5
	.string	"u32"
	.byte	0x3
	.byte	0x81
	.uaword	0x4ef
	.uleb128 0x5
	.string	"bit"
	.byte	0x3
	.byte	0x84
	.uaword	0x512
	.uleb128 0x5
	.string	"uint16"
	.byte	0x4
	.byte	0x5d
	.uaword	0x4d9
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.string	"long long int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.string	"long long unsigned int"
	.uleb128 0xf
	.uaword	0x8f
	.uleb128 0xd
	.uaword	0x47d
	.uaword	0x5b0
	.uleb128 0xe
	.uaword	0x468
	.byte	0x17
	.byte	0
	.uleb128 0xd
	.uaword	0x47d
	.uaword	0x5c0
	.uleb128 0xe
	.uaword	0x468
	.byte	0xf
	.byte	0
	.uleb128 0xd
	.uaword	0x47d
	.uaword	0x5d0
	.uleb128 0xe
	.uaword	0x468
	.byte	0x13
	.byte	0
	.uleb128 0x10
	.uaword	.LASF2
	.byte	0x4
	.byte	0x5
	.byte	0x8e
	.uaword	0x745
	.uleb128 0x4
	.string	"Unlock"
	.byte	0x5
	.byte	0x90
	.uaword	0x54b
	.byte	0x1
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"LockUp"
	.byte	0x5
	.byte	0x91
	.uaword	0x54b
	.byte	0x1
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"Config"
	.byte	0x5
	.byte	0x92
	.uaword	0x54b
	.byte	0x1
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"ReadStatus"
	.byte	0x5
	.byte	0x93
	.uaword	0x54b
	.byte	0x1
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"MPSConfig"
	.byte	0x5
	.byte	0x94
	.uaword	0x54b
	.byte	0x1
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"GotoNormal"
	.byte	0x5
	.byte	0x95
	.uaword	0x54b
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"ParityCheck"
	.byte	0x5
	.byte	0x96
	.uaword	0x54b
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"ABISTFin"
	.byte	0x5
	.byte	0x98
	.uaword	0x54b
	.byte	0x1
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"ABISTSS"
	.byte	0x5
	.byte	0x99
	.uaword	0x54b
	.byte	0x1
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x4
	.string	"ABISTInt"
	.byte	0x5
	.byte	0x9a
	.uaword	0x54b
	.byte	0x1
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x4
	.string	"WWDEnCnt"
	.byte	0x5
	.byte	0x9b
	.uaword	0x54b
	.byte	0x1
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x4
	.string	"NormalState"
	.byte	0x5
	.byte	0x9d
	.uaword	0x54b
	.byte	0x1
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x4
	.string	"QCOStatus"
	.byte	0x5
	.byte	0x9e
	.uaword	0x54b
	.byte	0x1
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x4
	.string	"QVRStatus"
	.byte	0x5
	.byte	0x9f
	.uaword	0x54b
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x4
	.string	"Reserved1"
	.byte	0x5
	.byte	0xa1
	.uaword	0x535
	.byte	0x2
	.byte	0x2
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"Reserved2"
	.byte	0x5
	.byte	0xa2
	.uaword	0x535
	.byte	0x2
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x11
	.uaword	.LASF2
	.byte	0x5
	.byte	0xa3
	.uaword	0x5d0
	.uleb128 0x12
	.uaword	.LASF3
	.byte	0x4
	.byte	0x5
	.byte	0xa5
	.uaword	0x773
	.uleb128 0x13
	.string	"all"
	.byte	0x5
	.byte	0xa6
	.uaword	0x540
	.uleb128 0x13
	.string	"bit"
	.byte	0x5
	.byte	0xa7
	.uaword	0x745
	.byte	0
	.uleb128 0x11
	.uaword	.LASF3
	.byte	0x5
	.byte	0xa8
	.uaword	0x750
	.uleb128 0x10
	.uaword	.LASF4
	.byte	0x2
	.byte	0x5
	.byte	0xaa
	.uaword	0x7de
	.uleb128 0x4
	.string	"Parity"
	.byte	0x5
	.byte	0xab
	.uaword	0x54b
	.byte	0x1
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"Data"
	.byte	0x5
	.byte	0xac
	.uaword	0x54b
	.byte	0x1
	.byte	0x8
	.uaxword	0xffffffffffffffff
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"Address"
	.byte	0x5
	.byte	0xad
	.uaword	0x54b
	.byte	0x1
	.byte	0x6
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x4
	.string	"Dir"
	.byte	0x5
	.byte	0xae
	.uaword	0x54b
	.byte	0x1
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0
	.uleb128 0x11
	.uaword	.LASF4
	.byte	0x5
	.byte	0xaf
	.uaword	0x77e
	.uleb128 0x12
	.uaword	.LASF5
	.byte	0x2
	.byte	0x5
	.byte	0xb1
	.uaword	0x80c
	.uleb128 0x13
	.string	"all"
	.byte	0x5
	.byte	0xb2
	.uaword	0x535
	.uleb128 0x13
	.string	"bit"
	.byte	0x5
	.byte	0xb3
	.uaword	0x7de
	.byte	0
	.uleb128 0x11
	.uaword	.LASF5
	.byte	0x5
	.byte	0xb4
	.uaword	0x7e9
	.uleb128 0x10
	.uaword	.LASF6
	.byte	0x6
	.byte	0x5
	.byte	0xb6
	.uaword	0x851
	.uleb128 0x15
	.string	"Enable"
	.byte	0x5
	.byte	0xb7
	.uaword	0x535
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x16
	.uaword	.LASF7
	.byte	0x5
	.byte	0xb8
	.uaword	0x80c
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x16
	.uaword	.LASF8
	.byte	0x5
	.byte	0xb9
	.uaword	0x80c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x11
	.uaword	.LASF6
	.byte	0x5
	.byte	0xba
	.uaword	0x817
	.uleb128 0x17
	.byte	0x4
	.byte	0x5
	.byte	0xbd
	.uaword	0x942
	.uleb128 0x18
	.string	"QSPI_TEST_INIT"
	.sleb128 0
	.uleb128 0x18
	.string	"QSPI_TEST_STARTED"
	.sleb128 1
	.uleb128 0x18
	.string	"QSPI_SBC_STATUS_READ"
	.sleb128 2
	.uleb128 0x18
	.string	"QSPI_SBC_IN_NORMAL_STATE"
	.sleb128 3
	.uleb128 0x18
	.string	"QSPI_SBC_ABIST_COMPLETED"
	.sleb128 4
	.uleb128 0x18
	.string	"QSPI_SBC_NORMAL_AFTER_ABIST"
	.sleb128 5
	.uleb128 0x18
	.string	"QSPI_SBC_WWDTEST_RUNNING"
	.sleb128 6
	.uleb128 0x18
	.string	"QSPI_SBC_WWDTEST_COMPLETED"
	.sleb128 7
	.uleb128 0x18
	.string	"QSPI_TEST_FINISHED"
	.sleb128 8
	.byte	0
	.uleb128 0x5
	.string	"QSPI_E_TEST_STS"
	.byte	0x5
	.byte	0xc7
	.uaword	0x85c
	.uleb128 0x17
	.byte	0x4
	.byte	0x5
	.byte	0xca
	.uaword	0xa43
	.uleb128 0x18
	.string	"QSPI_WWDT_INIT"
	.sleb128 0
	.uleb128 0x18
	.string	"QSPI_WWDT_RUN_TIMER0"
	.sleb128 1
	.uleb128 0x18
	.string	"QSPI_WWDT_RD_ERRCTR"
	.sleb128 2
	.uleb128 0x18
	.string	"QSPI_WWDT_DIS_WDGTRIG"
	.sleb128 3
	.uleb128 0x18
	.string	"QSPI_WWDT_RUN_TIMER1"
	.sleb128 4
	.uleb128 0x18
	.string	"QSPI_WWDT_EN_WDGTRIG"
	.sleb128 5
	.uleb128 0x18
	.string	"QSPI_WWDT_RUN_TIMER2"
	.sleb128 6
	.uleb128 0x18
	.string	"QSPI_WWDT_SUCCESS"
	.sleb128 7
	.uleb128 0x18
	.string	"QSPI_WWDT_RETRY_TEST"
	.sleb128 8
	.uleb128 0x18
	.string	"QSPI_WWDT_FAULT_DETECTED"
	.sleb128 9
	.byte	0
	.uleb128 0x5
	.string	"QSPI_E_WWDT_STS"
	.byte	0x5
	.byte	0xd5
	.uaword	0x959
	.uleb128 0x17
	.byte	0x4
	.byte	0x5
	.byte	0xd8
	.uaword	0xb27
	.uleb128 0x18
	.string	"QSPI_ABIST_START"
	.sleb128 0
	.uleb128 0x18
	.string	"QSPI_ABIST_SST_CHK_RETRY"
	.sleb128 1
	.uleb128 0x18
	.string	"QSPI_ABIST_SST_CHK_STATUS"
	.sleb128 2
	.uleb128 0x18
	.string	"QSPI_ABIST_INTT_START"
	.sleb128 3
	.uleb128 0x18
	.string	"QSPI_ABIST_INTT_CHK_RETRY"
	.sleb128 4
	.uleb128 0x18
	.string	"QSPI_ABIST_INTT_CHK_STATUS"
	.sleb128 5
	.uleb128 0x18
	.string	"QSPI_ABIST_SUCCESS"
	.sleb128 6
	.uleb128 0x18
	.string	"QSPI_ABIST_FAILED"
	.sleb128 7
	.byte	0
	.uleb128 0x5
	.string	"QSPI_E_ABIST_STS"
	.byte	0x5
	.byte	0xe1
	.uaword	0xa5a
	.uleb128 0x7
	.string	"_Ifx_CPU_PSW_Bits"
	.byte	0x4
	.byte	0x6
	.uahalf	0x204
	.uaword	0xc3a
	.uleb128 0x8
	.string	"CDC"
	.byte	0x6
	.uahalf	0x206
	.uaword	0x59b
	.byte	0x4
	.byte	0x7
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"CDE"
	.byte	0x6
	.uahalf	0x207
	.uaword	0x59b
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"GW"
	.byte	0x6
	.uahalf	0x208
	.uaword	0x59b
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"IS"
	.byte	0x6
	.uahalf	0x209
	.uaword	0x59b
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"IO"
	.byte	0x6
	.uahalf	0x20a
	.uaword	0x59b
	.byte	0x4
	.byte	0x2
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"PRS"
	.byte	0x6
	.uahalf	0x20b
	.uaword	0x59b
	.byte	0x4
	.byte	0x2
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"S"
	.byte	0x6
	.uahalf	0x20c
	.uaword	0x59b
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF9
	.byte	0x6
	.uahalf	0x20d
	.uaword	0x59b
	.byte	0x4
	.byte	0xc
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"SAV"
	.byte	0x6
	.uahalf	0x20e
	.uaword	0x59b
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"AV"
	.byte	0x6
	.uahalf	0x20f
	.uaword	0x59b
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"SV"
	.byte	0x6
	.uahalf	0x210
	.uaword	0x59b
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"V"
	.byte	0x6
	.uahalf	0x211
	.uaword	0x59b
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"C"
	.byte	0x6
	.uahalf	0x212
	.uaword	0x59b
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CPU_PSW_Bits"
	.byte	0x6
	.uahalf	0x213
	.uaword	0xb3f
	.uleb128 0xb
	.byte	0x4
	.byte	0x6
	.uahalf	0x467
	.uaword	0xc7b
	.uleb128 0xc
	.string	"U"
	.byte	0x6
	.uahalf	0x469
	.uaword	0x8f
	.uleb128 0xc
	.string	"I"
	.byte	0x6
	.uahalf	0x46a
	.uaword	0x35a
	.uleb128 0xc
	.string	"B"
	.byte	0x6
	.uahalf	0x46b
	.uaword	0xc3a
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CPU_PSW"
	.byte	0x6
	.uahalf	0x46c
	.uaword	0xc53
	.uleb128 0xd
	.uaword	0x47d
	.uaword	0xc9f
	.uleb128 0xe
	.uaword	0x468
	.byte	0xe7
	.byte	0
	.uleb128 0xd
	.uaword	0x535
	.uaword	0xcaf
	.uleb128 0xe
	.uaword	0x468
	.byte	0x9
	.byte	0
	.uleb128 0x3
	.string	"_Ifx_P_IN_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0x76
	.uaword	0xdde
	.uleb128 0x4
	.string	"P0"
	.byte	0x7
	.byte	0x78
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"P1"
	.byte	0x7
	.byte	0x79
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"P2"
	.byte	0x7
	.byte	0x7a
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"P3"
	.byte	0x7
	.byte	0x7b
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"P4"
	.byte	0x7
	.byte	0x7c
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"P5"
	.byte	0x7
	.byte	0x7d
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"P6"
	.byte	0x7
	.byte	0x7e
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"P7"
	.byte	0x7
	.byte	0x7f
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"P8"
	.byte	0x7
	.byte	0x80
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"P9"
	.byte	0x7
	.byte	0x81
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"P10"
	.byte	0x7
	.byte	0x82
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"P11"
	.byte	0x7
	.byte	0x83
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"P12"
	.byte	0x7
	.byte	0x84
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"P13"
	.byte	0x7
	.byte	0x85
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"P14"
	.byte	0x7
	.byte	0x86
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"P15"
	.byte	0x7
	.byte	0x87
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.uaword	.LASF1
	.byte	0x7
	.byte	0x88
	.uaword	0x8f
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_P_IN_Bits"
	.byte	0x7
	.byte	0x89
	.uaword	0xcaf
	.uleb128 0xb
	.byte	0x4
	.byte	0x7
	.uahalf	0x1ef
	.uaword	0xe1b
	.uleb128 0xc
	.string	"U"
	.byte	0x7
	.uahalf	0x1f1
	.uaword	0x8f
	.uleb128 0xc
	.string	"I"
	.byte	0x7
	.uahalf	0x1f2
	.uaword	0x35a
	.uleb128 0xc
	.string	"B"
	.byte	0x7
	.uahalf	0x1f3
	.uaword	0xdde
	.byte	0
	.uleb128 0x9
	.string	"Ifx_P_IN"
	.byte	0x7
	.uahalf	0x1f4
	.uaword	0xdf3
	.uleb128 0x17
	.byte	0x4
	.byte	0x8
	.byte	0x59
	.uaword	0xf6d
	.uleb128 0x18
	.string	"MAIN_E_HW_B0"
	.sleb128 0
	.uleb128 0x18
	.string	"MAIN_E_HW_B01_X10"
	.sleb128 1
	.uleb128 0x18
	.string	"MAIN_E_HW_B01_X10_DV"
	.sleb128 2
	.uleb128 0x18
	.string	"MAIN_E_HW_B02_X10"
	.sleb128 3
	.uleb128 0x18
	.string	"MAIN_E_HW_B02_X10_DV"
	.sleb128 4
	.uleb128 0x18
	.string	"MAIN_E_HW_C0"
	.sleb128 5
	.uleb128 0x18
	.string	"MAIN_E_HW_C0_DV"
	.sleb128 6
	.uleb128 0x18
	.string	"MAIN_E_HW_C1"
	.sleb128 7
	.uleb128 0x18
	.string	"MAIN_E_HW_C1_DV"
	.sleb128 8
	.uleb128 0x18
	.string	"MAIN_E_HW_C1_C01"
	.sleb128 9
	.uleb128 0x18
	.string	"MAIN_E_HW_C1_C01_DV"
	.sleb128 10
	.uleb128 0x18
	.string	"MAIN_E_HW_C1_C02"
	.sleb128 11
	.uleb128 0x18
	.string	"MAIN_E_HW_C1_C02_DV"
	.sleb128 12
	.uleb128 0x18
	.string	"MAIN_E_HW_C1_BAK13"
	.sleb128 13
	.uleb128 0x18
	.string	"MAIN_E_HW_C1_BAK14"
	.sleb128 14
	.uleb128 0x18
	.string	"MAIN_E_HW_Reserved"
	.sleb128 15
	.byte	0
	.uleb128 0x5
	.string	"MAIN_E_HW_VER"
	.byte	0x8
	.byte	0x6a
	.uaword	0xe2c
	.uleb128 0x19
	.byte	0x10
	.byte	0x8
	.byte	0x6c
	.uaword	0x1003
	.uleb128 0x15
	.string	"App"
	.byte	0x8
	.byte	0x6d
	.uaword	0x535
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"Meas"
	.byte	0x8
	.byte	0x6e
	.uaword	0x535
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x15
	.string	"Ctrl"
	.byte	0x8
	.byte	0x6f
	.uaword	0x535
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x15
	.string	"Pwm"
	.byte	0x8
	.byte	0x70
	.uaword	0x535
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x15
	.string	"Diag"
	.byte	0x8
	.byte	0x71
	.uaword	0x535
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x15
	.string	"Ntc"
	.byte	0x8
	.byte	0x72
	.uaword	0x535
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x15
	.string	"State"
	.byte	0x8
	.byte	0x73
	.uaword	0x535
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x15
	.string	"Safety"
	.byte	0x8
	.byte	0x74
	.uaword	0x535
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.byte	0
	.uleb128 0x5
	.string	"MAIN_E_HW_VER_APP"
	.byte	0x8
	.byte	0x75
	.uaword	0xf82
	.uleb128 0x19
	.byte	0x20
	.byte	0x8
	.byte	0x77
	.uaword	0x1074
	.uleb128 0x15
	.string	"Code"
	.byte	0x8
	.byte	0x78
	.uaword	0x1074
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"CodeNum"
	.byte	0x8
	.byte	0x79
	.uaword	0x535
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x15
	.string	"VerName"
	.byte	0x8
	.byte	0x7a
	.uaword	0x535
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x15
	.string	"Ver"
	.byte	0x8
	.byte	0x7b
	.uaword	0xf6d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x15
	.string	"App"
	.byte	0x8
	.byte	0x7c
	.uaword	0x1003
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0xd
	.uaword	0x535
	.uaword	0x1084
	.uleb128 0xe
	.uaword	0x468
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.string	"MAIN_S_HW_VER"
	.byte	0x8
	.byte	0x7d
	.uaword	0x101c
	.uleb128 0x3
	.string	"_Ifx_CBS_COMDATA_Bits"
	.byte	0x4
	.byte	0x9
	.byte	0x2d
	.uaword	0x10ca
	.uleb128 0x4
	.string	"DATA"
	.byte	0x9
	.byte	0x2f
	.uaword	0x8f
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_CBS_COMDATA_Bits"
	.byte	0x9
	.byte	0x30
	.uaword	0x1099
	.uleb128 0x3
	.string	"_Ifx_CBS_ICTSA_Bits"
	.byte	0x4
	.byte	0x9
	.byte	0x33
	.uaword	0x1115
	.uleb128 0x4
	.string	"ADDR"
	.byte	0x9
	.byte	0x35
	.uaword	0x8f
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_CBS_ICTSA_Bits"
	.byte	0x9
	.byte	0x36
	.uaword	0x10e6
	.uleb128 0x3
	.string	"_Ifx_CBS_ICTTA_Bits"
	.byte	0x4
	.byte	0x9
	.byte	0x39
	.uaword	0x115e
	.uleb128 0x4
	.string	"ADDR"
	.byte	0x9
	.byte	0x3b
	.uaword	0x8f
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_CBS_ICTTA_Bits"
	.byte	0x9
	.byte	0x3c
	.uaword	0x112f
	.uleb128 0x3
	.string	"_Ifx_CBS_INTMOD_Bits"
	.byte	0x4
	.byte	0x9
	.byte	0x3f
	.uaword	0x1311
	.uleb128 0x4
	.string	"SET_CRS"
	.byte	0x9
	.byte	0x41
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"SET_CWS"
	.byte	0x9
	.byte	0x42
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"SET_CS"
	.byte	0x9
	.byte	0x43
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"CLR_CS"
	.byte	0x9
	.byte	0x44
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"CHANNEL_P"
	.byte	0x9
	.byte	0x45
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"CHANNEL"
	.byte	0x9
	.byte	0x46
	.uaword	0x8f
	.byte	0x4
	.byte	0x3
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.uaword	.LASF10
	.byte	0x9
	.byte	0x47
	.uaword	0x8f
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"SET_INT_MOD"
	.byte	0x9
	.byte	0x48
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"reserved_17"
	.byte	0x9
	.byte	0x49
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"SET_INT_TRC"
	.byte	0x9
	.byte	0x4a
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"CLR_INT_TRC"
	.byte	0x9
	.byte	0x4b
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"TRC_MOD_P"
	.byte	0x9
	.byte	0x4c
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"TRC_MOD"
	.byte	0x9
	.byte	0x4d
	.uaword	0x8f
	.byte	0x4
	.byte	0x2
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"reserved_23"
	.byte	0x9
	.byte	0x4e
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"INT_MOD"
	.byte	0x9
	.byte	0x4f
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"INT_TRC"
	.byte	0x9
	.byte	0x50
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"reserved_26"
	.byte	0x9
	.byte	0x51
	.uaword	0x8f
	.byte	0x4
	.byte	0x6
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_CBS_INTMOD_Bits"
	.byte	0x9
	.byte	0x52
	.uaword	0x1178
	.uleb128 0x3
	.string	"_Ifx_CBS_IOSR_Bits"
	.byte	0x4
	.byte	0x9
	.byte	0x55
	.uaword	0x13f6
	.uleb128 0x6
	.uaword	.LASF11
	.byte	0x9
	.byte	0x57
	.uaword	0x8f
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"CRSYNC"
	.byte	0x9
	.byte	0x58
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"CWSYNC"
	.byte	0x9
	.byte	0x59
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"CW_ACK"
	.byte	0x9
	.byte	0x5a
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"COM_SYNC"
	.byte	0x9
	.byte	0x5b
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"HOSTED"
	.byte	0x9
	.byte	0x5c
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.uaword	.LASF12
	.byte	0x9
	.byte	0x5d
	.uaword	0x8f
	.byte	0x4
	.byte	0x3
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"CHANNEL"
	.byte	0x9
	.byte	0x5e
	.uaword	0x8f
	.byte	0x4
	.byte	0x3
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.uaword	.LASF9
	.byte	0x9
	.byte	0x5f
	.uaword	0x8f
	.byte	0x4
	.byte	0x11
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_CBS_IOSR_Bits"
	.byte	0x9
	.byte	0x60
	.uaword	0x132c
	.uleb128 0x3
	.string	"_Ifx_CBS_JDPID_Bits"
	.byte	0x4
	.byte	0x9
	.byte	0x63
	.uaword	0x146c
	.uleb128 0x4
	.string	"MODREV"
	.byte	0x9
	.byte	0x65
	.uaword	0x8f
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"MODTYPE"
	.byte	0x9
	.byte	0x66
	.uaword	0x8f
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"MODNUMBER"
	.byte	0x9
	.byte	0x67
	.uaword	0x8f
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_CBS_JDPID_Bits"
	.byte	0x9
	.byte	0x68
	.uaword	0x140f
	.uleb128 0x3
	.string	"_Ifx_CBS_JTAGID_Bits"
	.byte	0x4
	.byte	0x9
	.byte	0x6b
	.uaword	0x14b9
	.uleb128 0x4
	.string	"JTAG_ID"
	.byte	0x9
	.byte	0x6d
	.uaword	0x8f
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_CBS_JTAGID_Bits"
	.byte	0x9
	.byte	0x6e
	.uaword	0x1486
	.uleb128 0x3
	.string	"_Ifx_CBS_OCNTRL_Bits"
	.byte	0x4
	.byte	0x9
	.byte	0x71
	.uaword	0x174e
	.uleb128 0x4
	.string	"OC0_P"
	.byte	0x9
	.byte	0x73
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"OC0"
	.byte	0x9
	.byte	0x74
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"OC1_P"
	.byte	0x9
	.byte	0x75
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"OC1"
	.byte	0x9
	.byte	0x76
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"OC2_P"
	.byte	0x9
	.byte	0x77
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"OC2"
	.byte	0x9
	.byte	0x78
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"OC3_P"
	.byte	0x9
	.byte	0x79
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"OC3"
	.byte	0x9
	.byte	0x7a
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"OC4_P"
	.byte	0x9
	.byte	0x7b
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"OC4"
	.byte	0x9
	.byte	0x7c
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"OC5_P"
	.byte	0x9
	.byte	0x7d
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"OC5"
	.byte	0x9
	.byte	0x7e
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"WDTSUS_P"
	.byte	0x9
	.byte	0x7f
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"WDTSUS"
	.byte	0x9
	.byte	0x80
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"STABLE_P"
	.byte	0x9
	.byte	0x81
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"STABLE"
	.byte	0x9
	.byte	0x82
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"OJC0_P"
	.byte	0x9
	.byte	0x83
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"OJC0"
	.byte	0x9
	.byte	0x84
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"OJC1_P"
	.byte	0x9
	.byte	0x85
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"OJC1"
	.byte	0x9
	.byte	0x86
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"OJC2_P"
	.byte	0x9
	.byte	0x87
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"OJC2"
	.byte	0x9
	.byte	0x88
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"OJC3_P"
	.byte	0x9
	.byte	0x89
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"OJC3"
	.byte	0x9
	.byte	0x8a
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"OJC4_P"
	.byte	0x9
	.byte	0x8b
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"OJC4"
	.byte	0x9
	.byte	0x8c
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"OJC5_P"
	.byte	0x9
	.byte	0x8d
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"OJC5"
	.byte	0x9
	.byte	0x8e
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"OJC6_P"
	.byte	0x9
	.byte	0x8f
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"OJC6"
	.byte	0x9
	.byte	0x90
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"OJC7_P"
	.byte	0x9
	.byte	0x91
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"OJC7"
	.byte	0x9
	.byte	0x92
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_CBS_OCNTRL_Bits"
	.byte	0x9
	.byte	0x93
	.uaword	0x14d4
	.uleb128 0x3
	.string	"_Ifx_CBS_OEC_Bits"
	.byte	0x4
	.byte	0x9
	.byte	0x96
	.uaword	0x182c
	.uleb128 0x4
	.string	"PAT"
	.byte	0x9
	.byte	0x98
	.uaword	0x8f
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"DS"
	.byte	0x9
	.byte	0x99
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"OCO"
	.byte	0x9
	.byte	0x9a
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.uaword	.LASF13
	.byte	0x9
	.byte	0x9b
	.uaword	0x8f
	.byte	0x4
	.byte	0x6
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"IF_LCK_P"
	.byte	0x9
	.byte	0x9c
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"IF_LCK"
	.byte	0x9
	.byte	0x9d
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"AUT_OK_P"
	.byte	0x9
	.byte	0x9e
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"AUT_OK"
	.byte	0x9
	.byte	0x9f
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.uaword	.LASF14
	.byte	0x9
	.byte	0xa0
	.uaword	0x8f
	.byte	0x4
	.byte	0xc
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_CBS_OEC_Bits"
	.byte	0x9
	.byte	0xa1
	.uaword	0x1769
	.uleb128 0x3
	.string	"_Ifx_CBS_OIFM_Bits"
	.byte	0x4
	.byte	0x9
	.byte	0xa4
	.uaword	0x18f8
	.uleb128 0x4
	.string	"DAPMODE"
	.byte	0x9
	.byte	0xa6
	.uaword	0x8f
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"DAPRST"
	.byte	0x9
	.byte	0xa7
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.uaword	.LASF15
	.byte	0x9
	.byte	0xa8
	.uaword	0x8f
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"F_JTAG"
	.byte	0x9
	.byte	0xa9
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"N_JTAG"
	.byte	0x9
	.byte	0xaa
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.uaword	.LASF13
	.byte	0x9
	.byte	0xab
	.uaword	0x8f
	.byte	0x4
	.byte	0x2
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"PADCTL"
	.byte	0x9
	.byte	0xac
	.uaword	0x8f
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.uaword	.LASF1
	.byte	0x9
	.byte	0xad
	.uaword	0x8f
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_CBS_OIFM_Bits"
	.byte	0x9
	.byte	0xae
	.uaword	0x1844
	.uleb128 0x3
	.string	"_Ifx_CBS_OSTATE_Bits"
	.byte	0x4
	.byte	0x9
	.byte	0xb1
	.uaword	0x1ab7
	.uleb128 0x4
	.string	"OEN"
	.byte	0x9
	.byte	0xb3
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"OC0"
	.byte	0x9
	.byte	0xb4
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"OC1"
	.byte	0x9
	.byte	0xb5
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"OC2"
	.byte	0x9
	.byte	0xb6
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"ENIDIS"
	.byte	0x9
	.byte	0xb7
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"EECTRC"
	.byte	0x9
	.byte	0xb8
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"EECDIS"
	.byte	0x9
	.byte	0xb9
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"WDTSUS"
	.byte	0x9
	.byte	0xba
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"HARR"
	.byte	0x9
	.byte	0xbb
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"OJC1"
	.byte	0x9
	.byte	0xbc
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"OJC2"
	.byte	0x9
	.byte	0xbd
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"OJC3"
	.byte	0x9
	.byte	0xbe
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"RSTCL0"
	.byte	0x9
	.byte	0xbf
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"RSTCL1"
	.byte	0x9
	.byte	0xc0
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"OJC6"
	.byte	0x9
	.byte	0xc1
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"RSTCL3"
	.byte	0x9
	.byte	0xc2
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"IF_LCK"
	.byte	0x9
	.byte	0xc3
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"AUT_OK"
	.byte	0x9
	.byte	0xc4
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"STABLE"
	.byte	0x9
	.byte	0xc5
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"OCO"
	.byte	0x9
	.byte	0xc6
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.uaword	.LASF14
	.byte	0x9
	.byte	0xc7
	.uaword	0x8f
	.byte	0x4
	.byte	0xc
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_CBS_OSTATE_Bits"
	.byte	0x9
	.byte	0xc8
	.uaword	0x1911
	.uleb128 0x3
	.string	"_Ifx_CBS_TCCB_Bits"
	.byte	0x4
	.byte	0x9
	.byte	0xcb
	.uaword	0x1b40
	.uleb128 0x4
	.string	"C0"
	.byte	0x9
	.byte	0xcd
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"C1"
	.byte	0x9
	.byte	0xce
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"C2"
	.byte	0x9
	.byte	0xcf
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.uaword	.LASF16
	.byte	0x9
	.byte	0xd0
	.uaword	0x8f
	.byte	0x4
	.byte	0x1c
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"HSM"
	.byte	0x9
	.byte	0xd1
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_CBS_TCCB_Bits"
	.byte	0x9
	.byte	0xd2
	.uaword	0x1ad2
	.uleb128 0x3
	.string	"_Ifx_CBS_TCCH_Bits"
	.byte	0x4
	.byte	0x9
	.byte	0xd5
	.uaword	0x1bc7
	.uleb128 0x4
	.string	"C0"
	.byte	0x9
	.byte	0xd7
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"C1"
	.byte	0x9
	.byte	0xd8
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"C2"
	.byte	0x9
	.byte	0xd9
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.uaword	.LASF16
	.byte	0x9
	.byte	0xda
	.uaword	0x8f
	.byte	0x4
	.byte	0x1c
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"HSM"
	.byte	0x9
	.byte	0xdb
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_CBS_TCCH_Bits"
	.byte	0x9
	.byte	0xdc
	.uaword	0x1b59
	.uleb128 0x3
	.string	"_Ifx_CBS_TCIP_Bits"
	.byte	0x4
	.byte	0x9
	.byte	0xdf
	.uaword	0x1c8d
	.uleb128 0x4
	.string	"P0"
	.byte	0x9
	.byte	0xe1
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"P1"
	.byte	0x9
	.byte	0xe2
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"P2"
	.byte	0x9
	.byte	0xe3
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"P3"
	.byte	0x9
	.byte	0xe4
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"P4"
	.byte	0x9
	.byte	0xe5
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"P5"
	.byte	0x9
	.byte	0xe6
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"P6"
	.byte	0x9
	.byte	0xe7
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"P7"
	.byte	0x9
	.byte	0xe8
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.uaword	.LASF10
	.byte	0x9
	.byte	0xe9
	.uaword	0x8f
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_CBS_TCIP_Bits"
	.byte	0x9
	.byte	0xea
	.uaword	0x1be0
	.uleb128 0x3
	.string	"_Ifx_CBS_TCM_Bits"
	.byte	0x4
	.byte	0x9
	.byte	0xed
	.uaword	0x1d4c
	.uleb128 0x4
	.string	"BRK"
	.byte	0x9
	.byte	0xef
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"SUS"
	.byte	0x9
	.byte	0xf0
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"reserved_2"
	.byte	0x9
	.byte	0xf1
	.uaword	0x8f
	.byte	0x4
	.byte	0x6
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"T0"
	.byte	0x9
	.byte	0xf2
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"T1"
	.byte	0x9
	.byte	0xf3
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"T2"
	.byte	0x9
	.byte	0xf4
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"T3"
	.byte	0x9
	.byte	0xf5
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.uaword	.LASF17
	.byte	0x9
	.byte	0xf6
	.uaword	0x8f
	.byte	0x4
	.byte	0x14
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_CBS_TCM_Bits"
	.byte	0x9
	.byte	0xf7
	.uaword	0x1ca6
	.uleb128 0x3
	.string	"_Ifx_CBS_TCTGB_Bits"
	.byte	0x4
	.byte	0x9
	.byte	0xfa
	.uaword	0x1da7
	.uleb128 0x4
	.string	"OTGB0"
	.byte	0x9
	.byte	0xfc
	.uaword	0x8f
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"OTGB1"
	.byte	0x9
	.byte	0xfd
	.uaword	0x8f
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_CBS_TCTGB_Bits"
	.byte	0x9
	.byte	0xfe
	.uaword	0x1d64
	.uleb128 0x7
	.string	"_Ifx_CBS_TCTL_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x101
	.uaword	0x1e80
	.uleb128 0xa
	.uaword	.LASF11
	.byte	0x9
	.uahalf	0x103
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TL1"
	.byte	0x9
	.uahalf	0x104
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TL2"
	.byte	0x9
	.uahalf	0x105
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TL3"
	.byte	0x9
	.uahalf	0x106
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TL4"
	.byte	0x9
	.uahalf	0x107
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TL5"
	.byte	0x9
	.uahalf	0x108
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TL6"
	.byte	0x9
	.uahalf	0x109
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TL7"
	.byte	0x9
	.uahalf	0x10a
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF10
	.byte	0x9
	.uahalf	0x10b
	.uaword	0x8f
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CBS_TCTL_Bits"
	.byte	0x9
	.uahalf	0x10c
	.uaword	0x1dc1
	.uleb128 0x7
	.string	"_Ifx_CBS_TIPR_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x10f
	.uaword	0x1f4f
	.uleb128 0x8
	.string	"PIN0"
	.byte	0x9
	.uahalf	0x111
	.uaword	0x8f
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"PIN1"
	.byte	0x9
	.uahalf	0x112
	.uaword	0x8f
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"PIN2"
	.byte	0x9
	.uahalf	0x113
	.uaword	0x8f
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"PIN3"
	.byte	0x9
	.uahalf	0x114
	.uaword	0x8f
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"PIN4"
	.byte	0x9
	.uahalf	0x115
	.uaword	0x8f
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"PIN5"
	.byte	0x9
	.uahalf	0x116
	.uaword	0x8f
	.byte	0x4
	.byte	0x4
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"PIN6"
	.byte	0x9
	.uahalf	0x117
	.uaword	0x8f
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"PIN7"
	.byte	0x9
	.uahalf	0x118
	.uaword	0x8f
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CBS_TIPR_Bits"
	.byte	0x9
	.uahalf	0x119
	.uaword	0x1e9a
	.uleb128 0x7
	.string	"_Ifx_CBS_TL1ST_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x11c
	.uaword	0x201c
	.uleb128 0x8
	.string	"C0"
	.byte	0x9
	.uahalf	0x11e
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"C1"
	.byte	0x9
	.uahalf	0x11f
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"C2"
	.byte	0x9
	.uahalf	0x120
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF16
	.byte	0x9
	.uahalf	0x121
	.uaword	0x8f
	.byte	0x4
	.byte	0x19
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"HSS"
	.byte	0x9
	.uahalf	0x122
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"DMA"
	.byte	0x9
	.uahalf	0x123
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"reserved_30"
	.byte	0x9
	.uahalf	0x124
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"HSM"
	.byte	0x9
	.uahalf	0x125
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CBS_TL1ST_Bits"
	.byte	0x9
	.uahalf	0x126
	.uaword	0x1f69
	.uleb128 0x7
	.string	"_Ifx_CBS_TLC_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x129
	.uaword	0x20f1
	.uleb128 0xa
	.uaword	.LASF11
	.byte	0x9
	.uahalf	0x12b
	.uaword	0x8f
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TLSP1"
	.byte	0x9
	.uahalf	0x12c
	.uaword	0x8f
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TLSP2"
	.byte	0x9
	.uahalf	0x12d
	.uaword	0x8f
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TLSP3"
	.byte	0x9
	.uahalf	0x12e
	.uaword	0x8f
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TLSP4"
	.byte	0x9
	.uahalf	0x12f
	.uaword	0x8f
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TLSP5"
	.byte	0x9
	.uahalf	0x130
	.uaword	0x8f
	.byte	0x4
	.byte	0x4
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TLSP6"
	.byte	0x9
	.uahalf	0x131
	.uaword	0x8f
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TLSP7"
	.byte	0x9
	.uahalf	0x132
	.uaword	0x8f
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CBS_TLC_Bits"
	.byte	0x9
	.uahalf	0x133
	.uaword	0x2037
	.uleb128 0x7
	.string	"_Ifx_CBS_TLCC_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x136
	.uaword	0x21b4
	.uleb128 0x8
	.string	"TGL"
	.byte	0x9
	.uahalf	0x138
	.uaword	0x8f
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"LE"
	.byte	0x9
	.uahalf	0x139
	.uaword	0x8f
	.byte	0x4
	.byte	0x3
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"reserved_7"
	.byte	0x9
	.uahalf	0x13a
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"CLR"
	.byte	0x9
	.uahalf	0x13b
	.uaword	0x8f
	.byte	0x4
	.byte	0x2
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF13
	.byte	0x9
	.uahalf	0x13c
	.uaword	0x8f
	.byte	0x4
	.byte	0x2
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"STOP"
	.byte	0x9
	.uahalf	0x13d
	.uaword	0x8f
	.byte	0x4
	.byte	0x2
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"reserved_14"
	.byte	0x9
	.uahalf	0x13e
	.uaword	0x8f
	.byte	0x4
	.byte	0x12
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CBS_TLCC_Bits"
	.byte	0x9
	.uahalf	0x13f
	.uaword	0x210a
	.uleb128 0x7
	.string	"_Ifx_CBS_TLCHE_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x142
	.uaword	0x2246
	.uleb128 0xa
	.uaword	.LASF11
	.byte	0x9
	.uahalf	0x144
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TL1"
	.byte	0x9
	.uahalf	0x145
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TL2"
	.byte	0x9
	.uahalf	0x146
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TL3"
	.byte	0x9
	.uahalf	0x147
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF15
	.byte	0x9
	.uahalf	0x148
	.uaword	0x8f
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CBS_TLCHE_Bits"
	.byte	0x9
	.uahalf	0x149
	.uaword	0x21ce
	.uleb128 0x7
	.string	"_Ifx_CBS_TLCHS_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x14c
	.uaword	0x22d9
	.uleb128 0xa
	.uaword	.LASF11
	.byte	0x9
	.uahalf	0x14e
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TL1"
	.byte	0x9
	.uahalf	0x14f
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TL2"
	.byte	0x9
	.uahalf	0x150
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TL3"
	.byte	0x9
	.uahalf	0x151
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF15
	.byte	0x9
	.uahalf	0x152
	.uaword	0x8f
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CBS_TLCHS_Bits"
	.byte	0x9
	.uahalf	0x153
	.uaword	0x2261
	.uleb128 0x7
	.string	"_Ifx_CBS_TLCV_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x156
	.uaword	0x2333
	.uleb128 0x8
	.string	"CV"
	.byte	0x9
	.uahalf	0x158
	.uaword	0x8f
	.byte	0x4
	.byte	0x1f
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"SO"
	.byte	0x9
	.uahalf	0x159
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CBS_TLCV_Bits"
	.byte	0x9
	.uahalf	0x15a
	.uaword	0x22f4
	.uleb128 0x7
	.string	"_Ifx_CBS_TLS_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x15d
	.uaword	0x240b
	.uleb128 0xa
	.uaword	.LASF11
	.byte	0x9
	.uahalf	0x15f
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TL1"
	.byte	0x9
	.uahalf	0x160
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TL2"
	.byte	0x9
	.uahalf	0x161
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TL3"
	.byte	0x9
	.uahalf	0x162
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TL4"
	.byte	0x9
	.uahalf	0x163
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TL5"
	.byte	0x9
	.uahalf	0x164
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TL6"
	.byte	0x9
	.uahalf	0x165
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TL7"
	.byte	0x9
	.uahalf	0x166
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF10
	.byte	0x9
	.uahalf	0x167
	.uaword	0x8f
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CBS_TLS_Bits"
	.byte	0x9
	.uahalf	0x168
	.uaword	0x234d
	.uleb128 0x7
	.string	"_Ifx_CBS_TLT_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x16b
	.uaword	0x248f
	.uleb128 0x8
	.string	"TGL"
	.byte	0x9
	.uahalf	0x16d
	.uaword	0x8f
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"VTZ"
	.byte	0x9
	.uahalf	0x16e
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"reserved_5"
	.byte	0x9
	.uahalf	0x16f
	.uaword	0x8f
	.byte	0x4
	.byte	0xb
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TIM"
	.byte	0x9
	.uahalf	0x170
	.uaword	0x8f
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CBS_TLT_Bits"
	.byte	0x9
	.uahalf	0x171
	.uaword	0x2424
	.uleb128 0x7
	.string	"_Ifx_CBS_TLTTH_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x174
	.uaword	0x2568
	.uleb128 0xa
	.uaword	.LASF11
	.byte	0x9
	.uahalf	0x176
	.uaword	0x8f
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TL1"
	.byte	0x9
	.uahalf	0x177
	.uaword	0x8f
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TL2"
	.byte	0x9
	.uahalf	0x178
	.uaword	0x8f
	.byte	0x4
	.byte	0x2
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TL3"
	.byte	0x9
	.uahalf	0x179
	.uaword	0x8f
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TL4"
	.byte	0x9
	.uahalf	0x17a
	.uaword	0x8f
	.byte	0x4
	.byte	0x2
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TL5"
	.byte	0x9
	.uahalf	0x17b
	.uaword	0x8f
	.byte	0x4
	.byte	0x2
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TL6"
	.byte	0x9
	.uahalf	0x17c
	.uaword	0x8f
	.byte	0x4
	.byte	0x2
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TL7"
	.byte	0x9
	.uahalf	0x17d
	.uaword	0x8f
	.byte	0x4
	.byte	0x2
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF1
	.byte	0x9
	.uahalf	0x17e
	.uaword	0x8f
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CBS_TLTTH_Bits"
	.byte	0x9
	.uahalf	0x17f
	.uaword	0x24a8
	.uleb128 0x7
	.string	"_Ifx_CBS_TOPPS_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x182
	.uaword	0x264b
	.uleb128 0x8
	.string	"PIN0"
	.byte	0x9
	.uahalf	0x184
	.uaword	0x8f
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"PIN1"
	.byte	0x9
	.uahalf	0x185
	.uaword	0x8f
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"PIN2"
	.byte	0x9
	.uahalf	0x186
	.uaword	0x8f
	.byte	0x4
	.byte	0x2
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"PIN3"
	.byte	0x9
	.uahalf	0x187
	.uaword	0x8f
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"PIN4"
	.byte	0x9
	.uahalf	0x188
	.uaword	0x8f
	.byte	0x4
	.byte	0x2
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"PIN5"
	.byte	0x9
	.uahalf	0x189
	.uaword	0x8f
	.byte	0x4
	.byte	0x2
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"PIN6"
	.byte	0x9
	.uahalf	0x18a
	.uaword	0x8f
	.byte	0x4
	.byte	0x2
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"PIN7"
	.byte	0x9
	.uahalf	0x18b
	.uaword	0x8f
	.byte	0x4
	.byte	0x2
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF1
	.byte	0x9
	.uahalf	0x18c
	.uaword	0x8f
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CBS_TOPPS_Bits"
	.byte	0x9
	.uahalf	0x18d
	.uaword	0x2583
	.uleb128 0x7
	.string	"_Ifx_CBS_TOPR_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x190
	.uaword	0x271b
	.uleb128 0x8
	.string	"PIN0"
	.byte	0x9
	.uahalf	0x192
	.uaword	0x8f
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"PIN1"
	.byte	0x9
	.uahalf	0x193
	.uaword	0x8f
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"PIN2"
	.byte	0x9
	.uahalf	0x194
	.uaword	0x8f
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"PIN3"
	.byte	0x9
	.uahalf	0x195
	.uaword	0x8f
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"PIN4"
	.byte	0x9
	.uahalf	0x196
	.uaword	0x8f
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"PIN5"
	.byte	0x9
	.uahalf	0x197
	.uaword	0x8f
	.byte	0x4
	.byte	0x4
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"PIN6"
	.byte	0x9
	.uahalf	0x198
	.uaword	0x8f
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"PIN7"
	.byte	0x9
	.uahalf	0x199
	.uaword	0x8f
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CBS_TOPR_Bits"
	.byte	0x9
	.uahalf	0x19a
	.uaword	0x2666
	.uleb128 0x7
	.string	"_Ifx_CBS_TRC_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x19d
	.uaword	0x27d4
	.uleb128 0x8
	.string	"HALT"
	.byte	0x9
	.uahalf	0x19f
	.uaword	0x8f
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF18
	.byte	0x9
	.uahalf	0x1a0
	.uaword	0x8f
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"BT1"
	.byte	0x9
	.uahalf	0x1a1
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF12
	.byte	0x9
	.uahalf	0x1a2
	.uaword	0x8f
	.byte	0x4
	.byte	0xb
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"BRKIN"
	.byte	0x9
	.uahalf	0x1a3
	.uaword	0x8f
	.byte	0x4
	.byte	0x4
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"SUSIN"
	.byte	0x9
	.uahalf	0x1a4
	.uaword	0x8f
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF19
	.byte	0x9
	.uahalf	0x1a5
	.uaword	0x8f
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CBS_TRC_Bits"
	.byte	0x9
	.uahalf	0x1a6
	.uaword	0x2735
	.uleb128 0x7
	.string	"_Ifx_CBS_TREC_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x1a9
	.uaword	0x28a2
	.uleb128 0x8
	.string	"TR0EV"
	.byte	0x9
	.uahalf	0x1ab
	.uaword	0x8f
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF15
	.byte	0x9
	.uahalf	0x1ac
	.uaword	0x8f
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TR2EV"
	.byte	0x9
	.uahalf	0x1ad
	.uaword	0x8f
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF17
	.byte	0x9
	.uahalf	0x1ae
	.uaword	0x8f
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TR4EV"
	.byte	0x9
	.uahalf	0x1af
	.uaword	0x8f
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF14
	.byte	0x9
	.uahalf	0x1b0
	.uaword	0x8f
	.byte	0x4
	.byte	0x4
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TR6EV"
	.byte	0x9
	.uahalf	0x1b1
	.uaword	0x8f
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF19
	.byte	0x9
	.uahalf	0x1b2
	.uaword	0x8f
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CBS_TREC_Bits"
	.byte	0x9
	.uahalf	0x1b3
	.uaword	0x27ed
	.uleb128 0x7
	.string	"_Ifx_CBS_TRHSM_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x1b6
	.uaword	0x295d
	.uleb128 0x8
	.string	"HALT"
	.byte	0x9
	.uahalf	0x1b8
	.uaword	0x8f
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF18
	.byte	0x9
	.uahalf	0x1b9
	.uaword	0x8f
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"BT1"
	.byte	0x9
	.uahalf	0x1ba
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF12
	.byte	0x9
	.uahalf	0x1bb
	.uaword	0x8f
	.byte	0x4
	.byte	0xb
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"BRKIN"
	.byte	0x9
	.uahalf	0x1bc
	.uaword	0x8f
	.byte	0x4
	.byte	0x4
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"SUSIN"
	.byte	0x9
	.uahalf	0x1bd
	.uaword	0x8f
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF19
	.byte	0x9
	.uahalf	0x1be
	.uaword	0x8f
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CBS_TRHSM_Bits"
	.byte	0x9
	.uahalf	0x1bf
	.uaword	0x28bc
	.uleb128 0x7
	.string	"_Ifx_CBS_TRIG_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x1c2
	.uaword	0x2b0d
	.uleb128 0x8
	.string	"TRGx_0"
	.byte	0x9
	.uahalf	0x1c4
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TRGx_1"
	.byte	0x9
	.uahalf	0x1c5
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TRGx_2"
	.byte	0x9
	.uahalf	0x1c6
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TRGx_3"
	.byte	0x9
	.uahalf	0x1c7
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TRGx_4"
	.byte	0x9
	.uahalf	0x1c8
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TRGx_5"
	.byte	0x9
	.uahalf	0x1c9
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TRGx_6"
	.byte	0x9
	.uahalf	0x1ca
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TRGx_7"
	.byte	0x9
	.uahalf	0x1cb
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TRGx_8"
	.byte	0x9
	.uahalf	0x1cc
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TRGx_9"
	.byte	0x9
	.uahalf	0x1cd
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TRGx_10"
	.byte	0x9
	.uahalf	0x1ce
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TRGx_11"
	.byte	0x9
	.uahalf	0x1cf
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TRGx_12"
	.byte	0x9
	.uahalf	0x1d0
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TRGx_13"
	.byte	0x9
	.uahalf	0x1d1
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TRGx_14"
	.byte	0x9
	.uahalf	0x1d2
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TRGx_15"
	.byte	0x9
	.uahalf	0x1d3
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF1
	.byte	0x9
	.uahalf	0x1d4
	.uaword	0x8f
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"x"
	.byte	0x9
	.uahalf	0x1d5
	.uaword	0x8f
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CBS_TRIG_Bits"
	.byte	0x9
	.uahalf	0x1d6
	.uaword	0x2978
	.uleb128 0x7
	.string	"_Ifx_CBS_TRIGC_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x1d9
	.uaword	0x2cbd
	.uleb128 0x8
	.string	"TRGx_0"
	.byte	0x9
	.uahalf	0x1db
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TRGx_1"
	.byte	0x9
	.uahalf	0x1dc
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TRGx_2"
	.byte	0x9
	.uahalf	0x1dd
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TRGx_3"
	.byte	0x9
	.uahalf	0x1de
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TRGx_4"
	.byte	0x9
	.uahalf	0x1df
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TRGx_5"
	.byte	0x9
	.uahalf	0x1e0
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TRGx_6"
	.byte	0x9
	.uahalf	0x1e1
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TRGx_7"
	.byte	0x9
	.uahalf	0x1e2
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TRGx_8"
	.byte	0x9
	.uahalf	0x1e3
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TRGx_9"
	.byte	0x9
	.uahalf	0x1e4
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TRGx_10"
	.byte	0x9
	.uahalf	0x1e5
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TRGx_11"
	.byte	0x9
	.uahalf	0x1e6
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TRGx_12"
	.byte	0x9
	.uahalf	0x1e7
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TRGx_13"
	.byte	0x9
	.uahalf	0x1e8
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TRGx_14"
	.byte	0x9
	.uahalf	0x1e9
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TRGx_15"
	.byte	0x9
	.uahalf	0x1ea
	.uaword	0x8f
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF1
	.byte	0x9
	.uahalf	0x1eb
	.uaword	0x8f
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"x"
	.byte	0x9
	.uahalf	0x1ec
	.uaword	0x8f
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CBS_TRIGC_Bits"
	.byte	0x9
	.uahalf	0x1ed
	.uaword	0x2b27
	.uleb128 0x7
	.string	"_Ifx_CBS_TRIGS_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x1f0
	.uaword	0x2d1d
	.uleb128 0x8
	.string	"BITNUM"
	.byte	0x9
	.uahalf	0x1f2
	.uaword	0x8f
	.byte	0x4
	.byte	0xd
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x9
	.uahalf	0x1f3
	.uaword	0x8f
	.byte	0x4
	.byte	0x13
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CBS_TRIGS_Bits"
	.byte	0x9
	.uahalf	0x1f4
	.uaword	0x2cd8
	.uleb128 0x7
	.string	"_Ifx_CBS_TRMC_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x1f7
	.uaword	0x2dc6
	.uleb128 0xa
	.uaword	.LASF11
	.byte	0x9
	.uahalf	0x1f9
	.uaword	0x8f
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF18
	.byte	0x9
	.uahalf	0x1fa
	.uaword	0x8f
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"SUSOUT"
	.byte	0x9
	.uahalf	0x1fb
	.uaword	0x8f
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF17
	.byte	0x9
	.uahalf	0x1fc
	.uaword	0x8f
	.byte	0x4
	.byte	0x8
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"BRKIN"
	.byte	0x9
	.uahalf	0x1fd
	.uaword	0x8f
	.byte	0x4
	.byte	0x4
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF20
	.byte	0x9
	.uahalf	0x1fe
	.uaword	0x8f
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CBS_TRMC_Bits"
	.byte	0x9
	.uahalf	0x1ff
	.uaword	0x2d38
	.uleb128 0x7
	.string	"_Ifx_CBS_TRMT_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x202
	.uaword	0x2e57
	.uleb128 0x8
	.string	"TG0"
	.byte	0x9
	.uahalf	0x204
	.uaword	0x8f
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TG1"
	.byte	0x9
	.uahalf	0x205
	.uaword	0x8f
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TG2"
	.byte	0x9
	.uahalf	0x206
	.uaword	0x8f
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TG3"
	.byte	0x9
	.uahalf	0x207
	.uaword	0x8f
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF1
	.byte	0x9
	.uahalf	0x208
	.uaword	0x8f
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CBS_TRMT_Bits"
	.byte	0x9
	.uahalf	0x209
	.uaword	0x2de0
	.uleb128 0x7
	.string	"_Ifx_CBS_TRSS_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x20c
	.uaword	0x2ee9
	.uleb128 0x8
	.string	"TT"
	.byte	0x9
	.uahalf	0x20e
	.uaword	0x8f
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF15
	.byte	0x9
	.uahalf	0x20f
	.uaword	0x8f
	.byte	0x4
	.byte	0xc
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"SRC0"
	.byte	0x9
	.uahalf	0x210
	.uaword	0x8f
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"SRC1"
	.byte	0x9
	.uahalf	0x211
	.uaword	0x8f
	.byte	0x4
	.byte	0x4
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF20
	.byte	0x9
	.uahalf	0x212
	.uaword	0x8f
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CBS_TRSS_Bits"
	.byte	0x9
	.uahalf	0x213
	.uaword	0x2e71
	.uleb128 0x7
	.string	"_Ifx_CBS_TRTGB_H_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x216
	.uaword	0x2fb9
	.uleb128 0x8
	.string	"TG8"
	.byte	0x9
	.uahalf	0x218
	.uaword	0x8f
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TG9"
	.byte	0x9
	.uahalf	0x219
	.uaword	0x8f
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TG10"
	.byte	0x9
	.uahalf	0x21a
	.uaword	0x8f
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TG11"
	.byte	0x9
	.uahalf	0x21b
	.uaword	0x8f
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TG12"
	.byte	0x9
	.uahalf	0x21c
	.uaword	0x8f
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TG13"
	.byte	0x9
	.uahalf	0x21d
	.uaword	0x8f
	.byte	0x4
	.byte	0x4
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TG14"
	.byte	0x9
	.uahalf	0x21e
	.uaword	0x8f
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TG15"
	.byte	0x9
	.uahalf	0x21f
	.uaword	0x8f
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CBS_TRTGB_H_Bits"
	.byte	0x9
	.uahalf	0x220
	.uaword	0x2f03
	.uleb128 0x7
	.string	"_Ifx_CBS_TRTGB_L_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x223
	.uaword	0x3086
	.uleb128 0x8
	.string	"TG0"
	.byte	0x9
	.uahalf	0x225
	.uaword	0x8f
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TG1"
	.byte	0x9
	.uahalf	0x226
	.uaword	0x8f
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TG2"
	.byte	0x9
	.uahalf	0x227
	.uaword	0x8f
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TG3"
	.byte	0x9
	.uahalf	0x228
	.uaword	0x8f
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TG4"
	.byte	0x9
	.uahalf	0x229
	.uaword	0x8f
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TG5"
	.byte	0x9
	.uahalf	0x22a
	.uaword	0x8f
	.byte	0x4
	.byte	0x4
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TG6"
	.byte	0x9
	.uahalf	0x22b
	.uaword	0x8f
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TG7"
	.byte	0x9
	.uahalf	0x22c
	.uaword	0x8f
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CBS_TRTGB_L_Bits"
	.byte	0x9
	.uahalf	0x22d
	.uaword	0x2fd6
	.uleb128 0xb
	.byte	0x4
	.byte	0x9
	.uahalf	0x235
	.uaword	0x30cb
	.uleb128 0xc
	.string	"U"
	.byte	0x9
	.uahalf	0x238
	.uaword	0x8f
	.uleb128 0xc
	.string	"I"
	.byte	0x9
	.uahalf	0x23a
	.uaword	0x35a
	.uleb128 0xc
	.string	"B"
	.byte	0x9
	.uahalf	0x23c
	.uaword	0x10ca
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CBS_COMDATA"
	.byte	0x9
	.uahalf	0x23d
	.uaword	0x30a3
	.uleb128 0xb
	.byte	0x4
	.byte	0x9
	.uahalf	0x240
	.uaword	0x310b
	.uleb128 0xc
	.string	"U"
	.byte	0x9
	.uahalf	0x243
	.uaword	0x8f
	.uleb128 0xc
	.string	"I"
	.byte	0x9
	.uahalf	0x245
	.uaword	0x35a
	.uleb128 0xc
	.string	"B"
	.byte	0x9
	.uahalf	0x247
	.uaword	0x1115
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CBS_ICTSA"
	.byte	0x9
	.uahalf	0x248
	.uaword	0x30e3
	.uleb128 0xb
	.byte	0x4
	.byte	0x9
	.uahalf	0x24b
	.uaword	0x3149
	.uleb128 0xc
	.string	"U"
	.byte	0x9
	.uahalf	0x24e
	.uaword	0x8f
	.uleb128 0xc
	.string	"I"
	.byte	0x9
	.uahalf	0x250
	.uaword	0x35a
	.uleb128 0xc
	.string	"B"
	.byte	0x9
	.uahalf	0x252
	.uaword	0x115e
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CBS_ICTTA"
	.byte	0x9
	.uahalf	0x253
	.uaword	0x3121
	.uleb128 0xb
	.byte	0x4
	.byte	0x9
	.uahalf	0x256
	.uaword	0x3187
	.uleb128 0xc
	.string	"U"
	.byte	0x9
	.uahalf	0x259
	.uaword	0x8f
	.uleb128 0xc
	.string	"I"
	.byte	0x9
	.uahalf	0x25b
	.uaword	0x35a
	.uleb128 0xc
	.string	"B"
	.byte	0x9
	.uahalf	0x25d
	.uaword	0x1311
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CBS_INTMOD"
	.byte	0x9
	.uahalf	0x25e
	.uaword	0x315f
	.uleb128 0xb
	.byte	0x4
	.byte	0x9
	.uahalf	0x261
	.uaword	0x31c6
	.uleb128 0xc
	.string	"U"
	.byte	0x9
	.uahalf	0x264
	.uaword	0x8f
	.uleb128 0xc
	.string	"I"
	.byte	0x9
	.uahalf	0x266
	.uaword	0x35a
	.uleb128 0xc
	.string	"B"
	.byte	0x9
	.uahalf	0x268
	.uaword	0x13f6
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CBS_IOSR"
	.byte	0x9
	.uahalf	0x269
	.uaword	0x319e
	.uleb128 0xb
	.byte	0x4
	.byte	0x9
	.uahalf	0x26c
	.uaword	0x3203
	.uleb128 0xc
	.string	"U"
	.byte	0x9
	.uahalf	0x26f
	.uaword	0x8f
	.uleb128 0xc
	.string	"I"
	.byte	0x9
	.uahalf	0x271
	.uaword	0x35a
	.uleb128 0xc
	.string	"B"
	.byte	0x9
	.uahalf	0x273
	.uaword	0x146c
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CBS_JDPID"
	.byte	0x9
	.uahalf	0x274
	.uaword	0x31db
	.uleb128 0xb
	.byte	0x4
	.byte	0x9
	.uahalf	0x277
	.uaword	0x3241
	.uleb128 0xc
	.string	"U"
	.byte	0x9
	.uahalf	0x27a
	.uaword	0x8f
	.uleb128 0xc
	.string	"I"
	.byte	0x9
	.uahalf	0x27c
	.uaword	0x35a
	.uleb128 0xc
	.string	"B"
	.byte	0x9
	.uahalf	0x27e
	.uaword	0x14b9
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CBS_JTAGID"
	.byte	0x9
	.uahalf	0x27f
	.uaword	0x3219
	.uleb128 0xb
	.byte	0x4
	.byte	0x9
	.uahalf	0x282
	.uaword	0x3280
	.uleb128 0xc
	.string	"U"
	.byte	0x9
	.uahalf	0x285
	.uaword	0x8f
	.uleb128 0xc
	.string	"I"
	.byte	0x9
	.uahalf	0x287
	.uaword	0x35a
	.uleb128 0xc
	.string	"B"
	.byte	0x9
	.uahalf	0x289
	.uaword	0x174e
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CBS_OCNTRL"
	.byte	0x9
	.uahalf	0x28a
	.uaword	0x3258
	.uleb128 0xb
	.byte	0x4
	.byte	0x9
	.uahalf	0x28d
	.uaword	0x32bf
	.uleb128 0xc
	.string	"U"
	.byte	0x9
	.uahalf	0x290
	.uaword	0x8f
	.uleb128 0xc
	.string	"I"
	.byte	0x9
	.uahalf	0x292
	.uaword	0x35a
	.uleb128 0xc
	.string	"B"
	.byte	0x9
	.uahalf	0x294
	.uaword	0x182c
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CBS_OEC"
	.byte	0x9
	.uahalf	0x295
	.uaword	0x3297
	.uleb128 0xb
	.byte	0x4
	.byte	0x9
	.uahalf	0x298
	.uaword	0x32fb
	.uleb128 0xc
	.string	"U"
	.byte	0x9
	.uahalf	0x29b
	.uaword	0x8f
	.uleb128 0xc
	.string	"I"
	.byte	0x9
	.uahalf	0x29d
	.uaword	0x35a
	.uleb128 0xc
	.string	"B"
	.byte	0x9
	.uahalf	0x29f
	.uaword	0x18f8
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CBS_OIFM"
	.byte	0x9
	.uahalf	0x2a0
	.uaword	0x32d3
	.uleb128 0xb
	.byte	0x4
	.byte	0x9
	.uahalf	0x2a3
	.uaword	0x3338
	.uleb128 0xc
	.string	"U"
	.byte	0x9
	.uahalf	0x2a6
	.uaword	0x8f
	.uleb128 0xc
	.string	"I"
	.byte	0x9
	.uahalf	0x2a8
	.uaword	0x35a
	.uleb128 0xc
	.string	"B"
	.byte	0x9
	.uahalf	0x2aa
	.uaword	0x1ab7
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CBS_OSTATE"
	.byte	0x9
	.uahalf	0x2ab
	.uaword	0x3310
	.uleb128 0xb
	.byte	0x4
	.byte	0x9
	.uahalf	0x2ae
	.uaword	0x3377
	.uleb128 0xc
	.string	"U"
	.byte	0x9
	.uahalf	0x2b1
	.uaword	0x8f
	.uleb128 0xc
	.string	"I"
	.byte	0x9
	.uahalf	0x2b3
	.uaword	0x35a
	.uleb128 0xc
	.string	"B"
	.byte	0x9
	.uahalf	0x2b5
	.uaword	0x1b40
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CBS_TCCB"
	.byte	0x9
	.uahalf	0x2b6
	.uaword	0x334f
	.uleb128 0xb
	.byte	0x4
	.byte	0x9
	.uahalf	0x2b9
	.uaword	0x33b4
	.uleb128 0xc
	.string	"U"
	.byte	0x9
	.uahalf	0x2bc
	.uaword	0x8f
	.uleb128 0xc
	.string	"I"
	.byte	0x9
	.uahalf	0x2be
	.uaword	0x35a
	.uleb128 0xc
	.string	"B"
	.byte	0x9
	.uahalf	0x2c0
	.uaword	0x1bc7
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CBS_TCCH"
	.byte	0x9
	.uahalf	0x2c1
	.uaword	0x338c
	.uleb128 0xb
	.byte	0x4
	.byte	0x9
	.uahalf	0x2c4
	.uaword	0x33f1
	.uleb128 0xc
	.string	"U"
	.byte	0x9
	.uahalf	0x2c7
	.uaword	0x8f
	.uleb128 0xc
	.string	"I"
	.byte	0x9
	.uahalf	0x2c9
	.uaword	0x35a
	.uleb128 0xc
	.string	"B"
	.byte	0x9
	.uahalf	0x2cb
	.uaword	0x1c8d
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CBS_TCIP"
	.byte	0x9
	.uahalf	0x2cc
	.uaword	0x33c9
	.uleb128 0xb
	.byte	0x4
	.byte	0x9
	.uahalf	0x2cf
	.uaword	0x342e
	.uleb128 0xc
	.string	"U"
	.byte	0x9
	.uahalf	0x2d2
	.uaword	0x8f
	.uleb128 0xc
	.string	"I"
	.byte	0x9
	.uahalf	0x2d4
	.uaword	0x35a
	.uleb128 0xc
	.string	"B"
	.byte	0x9
	.uahalf	0x2d6
	.uaword	0x1d4c
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CBS_TCM"
	.byte	0x9
	.uahalf	0x2d7
	.uaword	0x3406
	.uleb128 0xb
	.byte	0x4
	.byte	0x9
	.uahalf	0x2da
	.uaword	0x346a
	.uleb128 0xc
	.string	"U"
	.byte	0x9
	.uahalf	0x2dd
	.uaword	0x8f
	.uleb128 0xc
	.string	"I"
	.byte	0x9
	.uahalf	0x2df
	.uaword	0x35a
	.uleb128 0xc
	.string	"B"
	.byte	0x9
	.uahalf	0x2e1
	.uaword	0x1da7
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CBS_TCTGB"
	.byte	0x9
	.uahalf	0x2e2
	.uaword	0x3442
	.uleb128 0xb
	.byte	0x4
	.byte	0x9
	.uahalf	0x2e5
	.uaword	0x34a8
	.uleb128 0xc
	.string	"U"
	.byte	0x9
	.uahalf	0x2e8
	.uaword	0x8f
	.uleb128 0xc
	.string	"I"
	.byte	0x9
	.uahalf	0x2ea
	.uaword	0x35a
	.uleb128 0xc
	.string	"B"
	.byte	0x9
	.uahalf	0x2ec
	.uaword	0x1e80
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CBS_TCTL"
	.byte	0x9
	.uahalf	0x2ed
	.uaword	0x3480
	.uleb128 0xb
	.byte	0x4
	.byte	0x9
	.uahalf	0x2f0
	.uaword	0x34e5
	.uleb128 0xc
	.string	"U"
	.byte	0x9
	.uahalf	0x2f3
	.uaword	0x8f
	.uleb128 0xc
	.string	"I"
	.byte	0x9
	.uahalf	0x2f5
	.uaword	0x35a
	.uleb128 0xc
	.string	"B"
	.byte	0x9
	.uahalf	0x2f7
	.uaword	0x1f4f
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CBS_TIPR"
	.byte	0x9
	.uahalf	0x2f8
	.uaword	0x34bd
	.uleb128 0xb
	.byte	0x4
	.byte	0x9
	.uahalf	0x2fb
	.uaword	0x3522
	.uleb128 0xc
	.string	"U"
	.byte	0x9
	.uahalf	0x2fe
	.uaword	0x8f
	.uleb128 0xc
	.string	"I"
	.byte	0x9
	.uahalf	0x300
	.uaword	0x35a
	.uleb128 0xc
	.string	"B"
	.byte	0x9
	.uahalf	0x302
	.uaword	0x201c
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CBS_TL1ST"
	.byte	0x9
	.uahalf	0x303
	.uaword	0x34fa
	.uleb128 0xb
	.byte	0x4
	.byte	0x9
	.uahalf	0x306
	.uaword	0x3560
	.uleb128 0xc
	.string	"U"
	.byte	0x9
	.uahalf	0x309
	.uaword	0x8f
	.uleb128 0xc
	.string	"I"
	.byte	0x9
	.uahalf	0x30b
	.uaword	0x35a
	.uleb128 0xc
	.string	"B"
	.byte	0x9
	.uahalf	0x30d
	.uaword	0x20f1
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CBS_TLC"
	.byte	0x9
	.uahalf	0x30e
	.uaword	0x3538
	.uleb128 0xb
	.byte	0x4
	.byte	0x9
	.uahalf	0x311
	.uaword	0x359c
	.uleb128 0xc
	.string	"U"
	.byte	0x9
	.uahalf	0x314
	.uaword	0x8f
	.uleb128 0xc
	.string	"I"
	.byte	0x9
	.uahalf	0x316
	.uaword	0x35a
	.uleb128 0xc
	.string	"B"
	.byte	0x9
	.uahalf	0x318
	.uaword	0x21b4
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CBS_TLCC"
	.byte	0x9
	.uahalf	0x319
	.uaword	0x3574
	.uleb128 0xb
	.byte	0x4
	.byte	0x9
	.uahalf	0x31c
	.uaword	0x35d9
	.uleb128 0xc
	.string	"U"
	.byte	0x9
	.uahalf	0x31f
	.uaword	0x8f
	.uleb128 0xc
	.string	"I"
	.byte	0x9
	.uahalf	0x321
	.uaword	0x35a
	.uleb128 0xc
	.string	"B"
	.byte	0x9
	.uahalf	0x323
	.uaword	0x2246
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CBS_TLCHE"
	.byte	0x9
	.uahalf	0x324
	.uaword	0x35b1
	.uleb128 0xb
	.byte	0x4
	.byte	0x9
	.uahalf	0x327
	.uaword	0x3617
	.uleb128 0xc
	.string	"U"
	.byte	0x9
	.uahalf	0x32a
	.uaword	0x8f
	.uleb128 0xc
	.string	"I"
	.byte	0x9
	.uahalf	0x32c
	.uaword	0x35a
	.uleb128 0xc
	.string	"B"
	.byte	0x9
	.uahalf	0x32e
	.uaword	0x22d9
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CBS_TLCHS"
	.byte	0x9
	.uahalf	0x32f
	.uaword	0x35ef
	.uleb128 0xb
	.byte	0x4
	.byte	0x9
	.uahalf	0x332
	.uaword	0x3655
	.uleb128 0xc
	.string	"U"
	.byte	0x9
	.uahalf	0x335
	.uaword	0x8f
	.uleb128 0xc
	.string	"I"
	.byte	0x9
	.uahalf	0x337
	.uaword	0x35a
	.uleb128 0xc
	.string	"B"
	.byte	0x9
	.uahalf	0x339
	.uaword	0x2333
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CBS_TLCV"
	.byte	0x9
	.uahalf	0x33a
	.uaword	0x362d
	.uleb128 0xb
	.byte	0x4
	.byte	0x9
	.uahalf	0x33d
	.uaword	0x3692
	.uleb128 0xc
	.string	"U"
	.byte	0x9
	.uahalf	0x340
	.uaword	0x8f
	.uleb128 0xc
	.string	"I"
	.byte	0x9
	.uahalf	0x342
	.uaword	0x35a
	.uleb128 0xc
	.string	"B"
	.byte	0x9
	.uahalf	0x344
	.uaword	0x240b
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CBS_TLS"
	.byte	0x9
	.uahalf	0x345
	.uaword	0x366a
	.uleb128 0xb
	.byte	0x4
	.byte	0x9
	.uahalf	0x348
	.uaword	0x36ce
	.uleb128 0xc
	.string	"U"
	.byte	0x9
	.uahalf	0x34b
	.uaword	0x8f
	.uleb128 0xc
	.string	"I"
	.byte	0x9
	.uahalf	0x34d
	.uaword	0x35a
	.uleb128 0xc
	.string	"B"
	.byte	0x9
	.uahalf	0x34f
	.uaword	0x248f
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CBS_TLT"
	.byte	0x9
	.uahalf	0x350
	.uaword	0x36a6
	.uleb128 0xb
	.byte	0x4
	.byte	0x9
	.uahalf	0x353
	.uaword	0x370a
	.uleb128 0xc
	.string	"U"
	.byte	0x9
	.uahalf	0x356
	.uaword	0x8f
	.uleb128 0xc
	.string	"I"
	.byte	0x9
	.uahalf	0x358
	.uaword	0x35a
	.uleb128 0xc
	.string	"B"
	.byte	0x9
	.uahalf	0x35a
	.uaword	0x2568
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CBS_TLTTH"
	.byte	0x9
	.uahalf	0x35b
	.uaword	0x36e2
	.uleb128 0xb
	.byte	0x4
	.byte	0x9
	.uahalf	0x35e
	.uaword	0x3748
	.uleb128 0xc
	.string	"U"
	.byte	0x9
	.uahalf	0x361
	.uaword	0x8f
	.uleb128 0xc
	.string	"I"
	.byte	0x9
	.uahalf	0x363
	.uaword	0x35a
	.uleb128 0xc
	.string	"B"
	.byte	0x9
	.uahalf	0x365
	.uaword	0x264b
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CBS_TOPPS"
	.byte	0x9
	.uahalf	0x366
	.uaword	0x3720
	.uleb128 0xb
	.byte	0x4
	.byte	0x9
	.uahalf	0x369
	.uaword	0x3786
	.uleb128 0xc
	.string	"U"
	.byte	0x9
	.uahalf	0x36c
	.uaword	0x8f
	.uleb128 0xc
	.string	"I"
	.byte	0x9
	.uahalf	0x36e
	.uaword	0x35a
	.uleb128 0xc
	.string	"B"
	.byte	0x9
	.uahalf	0x370
	.uaword	0x271b
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CBS_TOPR"
	.byte	0x9
	.uahalf	0x371
	.uaword	0x375e
	.uleb128 0xb
	.byte	0x4
	.byte	0x9
	.uahalf	0x374
	.uaword	0x37c3
	.uleb128 0xc
	.string	"U"
	.byte	0x9
	.uahalf	0x377
	.uaword	0x8f
	.uleb128 0xc
	.string	"I"
	.byte	0x9
	.uahalf	0x379
	.uaword	0x35a
	.uleb128 0xc
	.string	"B"
	.byte	0x9
	.uahalf	0x37b
	.uaword	0x27d4
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CBS_TRC"
	.byte	0x9
	.uahalf	0x37c
	.uaword	0x379b
	.uleb128 0xb
	.byte	0x4
	.byte	0x9
	.uahalf	0x37f
	.uaword	0x37ff
	.uleb128 0xc
	.string	"U"
	.byte	0x9
	.uahalf	0x382
	.uaword	0x8f
	.uleb128 0xc
	.string	"I"
	.byte	0x9
	.uahalf	0x384
	.uaword	0x35a
	.uleb128 0xc
	.string	"B"
	.byte	0x9
	.uahalf	0x386
	.uaword	0x28a2
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CBS_TREC"
	.byte	0x9
	.uahalf	0x387
	.uaword	0x37d7
	.uleb128 0xb
	.byte	0x4
	.byte	0x9
	.uahalf	0x38a
	.uaword	0x383c
	.uleb128 0xc
	.string	"U"
	.byte	0x9
	.uahalf	0x38d
	.uaword	0x8f
	.uleb128 0xc
	.string	"I"
	.byte	0x9
	.uahalf	0x38f
	.uaword	0x35a
	.uleb128 0xc
	.string	"B"
	.byte	0x9
	.uahalf	0x391
	.uaword	0x295d
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CBS_TRHSM"
	.byte	0x9
	.uahalf	0x392
	.uaword	0x3814
	.uleb128 0xb
	.byte	0x4
	.byte	0x9
	.uahalf	0x395
	.uaword	0x387a
	.uleb128 0xc
	.string	"U"
	.byte	0x9
	.uahalf	0x398
	.uaword	0x8f
	.uleb128 0xc
	.string	"I"
	.byte	0x9
	.uahalf	0x39a
	.uaword	0x35a
	.uleb128 0xc
	.string	"B"
	.byte	0x9
	.uahalf	0x39c
	.uaword	0x2b0d
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CBS_TRIG"
	.byte	0x9
	.uahalf	0x39d
	.uaword	0x3852
	.uleb128 0xb
	.byte	0x4
	.byte	0x9
	.uahalf	0x3a0
	.uaword	0x38b7
	.uleb128 0xc
	.string	"U"
	.byte	0x9
	.uahalf	0x3a3
	.uaword	0x8f
	.uleb128 0xc
	.string	"I"
	.byte	0x9
	.uahalf	0x3a5
	.uaword	0x35a
	.uleb128 0xc
	.string	"B"
	.byte	0x9
	.uahalf	0x3a7
	.uaword	0x2cbd
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CBS_TRIGC"
	.byte	0x9
	.uahalf	0x3a8
	.uaword	0x388f
	.uleb128 0xb
	.byte	0x4
	.byte	0x9
	.uahalf	0x3ab
	.uaword	0x38f5
	.uleb128 0xc
	.string	"U"
	.byte	0x9
	.uahalf	0x3ae
	.uaword	0x8f
	.uleb128 0xc
	.string	"I"
	.byte	0x9
	.uahalf	0x3b0
	.uaword	0x35a
	.uleb128 0xc
	.string	"B"
	.byte	0x9
	.uahalf	0x3b2
	.uaword	0x2d1d
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CBS_TRIGS"
	.byte	0x9
	.uahalf	0x3b3
	.uaword	0x38cd
	.uleb128 0xb
	.byte	0x4
	.byte	0x9
	.uahalf	0x3b6
	.uaword	0x3933
	.uleb128 0xc
	.string	"U"
	.byte	0x9
	.uahalf	0x3b9
	.uaword	0x8f
	.uleb128 0xc
	.string	"I"
	.byte	0x9
	.uahalf	0x3bb
	.uaword	0x35a
	.uleb128 0xc
	.string	"B"
	.byte	0x9
	.uahalf	0x3bd
	.uaword	0x2dc6
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CBS_TRMC"
	.byte	0x9
	.uahalf	0x3be
	.uaword	0x390b
	.uleb128 0xb
	.byte	0x4
	.byte	0x9
	.uahalf	0x3c1
	.uaword	0x3970
	.uleb128 0xc
	.string	"U"
	.byte	0x9
	.uahalf	0x3c4
	.uaword	0x8f
	.uleb128 0xc
	.string	"I"
	.byte	0x9
	.uahalf	0x3c6
	.uaword	0x35a
	.uleb128 0xc
	.string	"B"
	.byte	0x9
	.uahalf	0x3c8
	.uaword	0x2e57
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CBS_TRMT"
	.byte	0x9
	.uahalf	0x3c9
	.uaword	0x3948
	.uleb128 0xb
	.byte	0x4
	.byte	0x9
	.uahalf	0x3cc
	.uaword	0x39ad
	.uleb128 0xc
	.string	"U"
	.byte	0x9
	.uahalf	0x3cf
	.uaword	0x8f
	.uleb128 0xc
	.string	"I"
	.byte	0x9
	.uahalf	0x3d1
	.uaword	0x35a
	.uleb128 0xc
	.string	"B"
	.byte	0x9
	.uahalf	0x3d3
	.uaword	0x2ee9
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CBS_TRSS"
	.byte	0x9
	.uahalf	0x3d4
	.uaword	0x3985
	.uleb128 0xb
	.byte	0x4
	.byte	0x9
	.uahalf	0x3d7
	.uaword	0x39ea
	.uleb128 0xc
	.string	"U"
	.byte	0x9
	.uahalf	0x3da
	.uaword	0x8f
	.uleb128 0xc
	.string	"I"
	.byte	0x9
	.uahalf	0x3dc
	.uaword	0x35a
	.uleb128 0xc
	.string	"B"
	.byte	0x9
	.uahalf	0x3de
	.uaword	0x2fb9
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CBS_TRTGB_H"
	.byte	0x9
	.uahalf	0x3df
	.uaword	0x39c2
	.uleb128 0xb
	.byte	0x4
	.byte	0x9
	.uahalf	0x3e2
	.uaword	0x3a2a
	.uleb128 0xc
	.string	"U"
	.byte	0x9
	.uahalf	0x3e5
	.uaword	0x8f
	.uleb128 0xc
	.string	"I"
	.byte	0x9
	.uahalf	0x3e7
	.uaword	0x35a
	.uleb128 0xc
	.string	"B"
	.byte	0x9
	.uahalf	0x3e9
	.uaword	0x3086
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CBS_TRTGB_L"
	.byte	0x9
	.uahalf	0x3ea
	.uaword	0x3a02
	.uleb128 0x7
	.string	"_Ifx_CBS_TRTGB"
	.byte	0x8
	.byte	0x9
	.uahalf	0x3f5
	.uaword	0x3a75
	.uleb128 0x1a
	.string	"L"
	.byte	0x9
	.uahalf	0x3f7
	.uaword	0x3a2a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x1a
	.string	"H"
	.byte	0x9
	.uahalf	0x3f8
	.uaword	0x39ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x1b
	.string	"_Ifx_CBS"
	.uahalf	0x200
	.byte	0x9
	.uahalf	0x406
	.uaword	0x3db4
	.uleb128 0x1c
	.uaword	.LASF11
	.byte	0x9
	.uahalf	0x408
	.uaword	0x48e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x1a
	.string	"JDPID"
	.byte	0x9
	.uahalf	0x409
	.uaword	0x3203
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1a
	.string	"OIFM"
	.byte	0x9
	.uahalf	0x40a
	.uaword	0x32fb
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x1a
	.string	"TIPR"
	.byte	0x9
	.uahalf	0x40b
	.uaword	0x34e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1a
	.string	"TOPR"
	.byte	0x9
	.uahalf	0x40c
	.uaword	0x3786
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x1a
	.string	"TOPPS"
	.byte	0x9
	.uahalf	0x40d
	.uaword	0x3748
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x1a
	.string	"TCIP"
	.byte	0x9
	.uahalf	0x40e
	.uaword	0x33f1
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x1a
	.string	"TRC"
	.byte	0x9
	.uahalf	0x40f
	.uaword	0x3db4
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1c
	.uaword	.LASF20
	.byte	0x9
	.uahalf	0x410
	.uaword	0x5c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1a
	.string	"TRHSM"
	.byte	0x9
	.uahalf	0x411
	.uaword	0x383c
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x1a
	.string	"TRMC"
	.byte	0x9
	.uahalf	0x412
	.uaword	0x3933
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x1a
	.string	"TLCC"
	.byte	0x9
	.uahalf	0x413
	.uaword	0x3dc4
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x1a
	.string	"reserved_48"
	.byte	0x9
	.uahalf	0x414
	.uaword	0x48e
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x1a
	.string	"TLCV"
	.byte	0x9
	.uahalf	0x415
	.uaword	0x3dd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x1a
	.string	"reserved_58"
	.byte	0x9
	.uahalf	0x416
	.uaword	0x48e
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x1a
	.string	"TRSS"
	.byte	0x9
	.uahalf	0x417
	.uaword	0x39ad
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x1a
	.string	"JTAGID"
	.byte	0x9
	.uahalf	0x418
	.uaword	0x3241
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x1a
	.string	"COMDATA"
	.byte	0x9
	.uahalf	0x419
	.uaword	0x30cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x1a
	.string	"IOSR"
	.byte	0x9
	.uahalf	0x41a
	.uaword	0x31c6
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x1a
	.string	"TLS"
	.byte	0x9
	.uahalf	0x41b
	.uaword	0x3692
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x1a
	.string	"TCTL"
	.byte	0x9
	.uahalf	0x41c
	.uaword	0x34a8
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x1a
	.string	"OEC"
	.byte	0x9
	.uahalf	0x41d
	.uaword	0x32bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x1a
	.string	"OCNTRL"
	.byte	0x9
	.uahalf	0x41e
	.uaword	0x3280
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x1a
	.string	"OSTATE"
	.byte	0x9
	.uahalf	0x41f
	.uaword	0x3338
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x1a
	.string	"INTMOD"
	.byte	0x9
	.uahalf	0x420
	.uaword	0x3187
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x1a
	.string	"ICTSA"
	.byte	0x9
	.uahalf	0x421
	.uaword	0x310b
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x1a
	.string	"ICTTA"
	.byte	0x9
	.uahalf	0x422
	.uaword	0x3149
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x1a
	.string	"TLC"
	.byte	0x9
	.uahalf	0x423
	.uaword	0x3560
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x1a
	.string	"TL1ST"
	.byte	0x9
	.uahalf	0x424
	.uaword	0x3522
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x1a
	.string	"TLCHE"
	.byte	0x9
	.uahalf	0x425
	.uaword	0x35d9
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x1a
	.string	"TLCHS"
	.byte	0x9
	.uahalf	0x426
	.uaword	0x3617
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0x1a
	.string	"TRIGS"
	.byte	0x9
	.uahalf	0x427
	.uaword	0x38f5
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x1a
	.string	"TRIGC"
	.byte	0x9
	.uahalf	0x428
	.uaword	0x38b7
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0x1a
	.string	"TLT"
	.byte	0x9
	.uahalf	0x429
	.uaword	0x36ce
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0x1a
	.string	"TLTTH"
	.byte	0x9
	.uahalf	0x42a
	.uaword	0x370a
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0x1a
	.string	"TCCB"
	.byte	0x9
	.uahalf	0x42b
	.uaword	0x3377
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x1a
	.string	"TCCH"
	.byte	0x9
	.uahalf	0x42c
	.uaword	0x33b4
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0x1a
	.string	"TCTGB"
	.byte	0x9
	.uahalf	0x42d
	.uaword	0x346a
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0x1a
	.string	"TCM"
	.byte	0x9
	.uahalf	0x42e
	.uaword	0x342e
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0x1a
	.string	"TREC"
	.byte	0x9
	.uahalf	0x42f
	.uaword	0x3de4
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0x1a
	.string	"reserved_C4"
	.byte	0x9
	.uahalf	0x430
	.uaword	0x5a0
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0x1a
	.string	"TRMT"
	.byte	0x9
	.uahalf	0x431
	.uaword	0x3970
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0x1a
	.string	"TRTGB"
	.byte	0x9
	.uahalf	0x432
	.uaword	0x3e04
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0x1a
	.string	"reserved_F0"
	.byte	0x9
	.uahalf	0x433
	.uaword	0x5b0
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0x1a
	.string	"TRIG"
	.byte	0x9
	.uahalf	0x434
	.uaword	0x3e09
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0x1a
	.string	"reserved_118"
	.byte	0x9
	.uahalf	0x435
	.uaword	0xc8f
	.byte	0x3
	.byte	0x23
	.uleb128 0x118
	.byte	0
	.uleb128 0xd
	.uaword	0x37c3
	.uaword	0x3dc4
	.uleb128 0xe
	.uaword	0x468
	.byte	0
	.byte	0
	.uleb128 0xd
	.uaword	0x359c
	.uaword	0x3dd4
	.uleb128 0xe
	.uaword	0x468
	.byte	0x1
	.byte	0
	.uleb128 0xd
	.uaword	0x3655
	.uaword	0x3de4
	.uleb128 0xe
	.uaword	0x468
	.byte	0x1
	.byte	0
	.uleb128 0xd
	.uaword	0x37ff
	.uaword	0x3df4
	.uleb128 0xe
	.uaword	0x468
	.byte	0
	.byte	0
	.uleb128 0xd
	.uaword	0x3a42
	.uaword	0x3e04
	.uleb128 0xe
	.uaword	0x468
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.uaword	0x3df4
	.uleb128 0xd
	.uaword	0x387a
	.uaword	0x3e19
	.uleb128 0xe
	.uaword	0x468
	.byte	0x5
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CBS"
	.byte	0x9
	.uahalf	0x436
	.uaword	0x3e29
	.uleb128 0xf
	.uaword	0x3a75
	.uleb128 0x1d
	.byte	0x1
	.string	"Qspi_SBC_ParityCheck"
	.byte	0x1
	.uahalf	0x382
	.byte	0x1
	.uaword	0x54b
	.byte	0x1
	.uaword	0x3e9b
	.uleb128 0x1e
	.string	"data"
	.byte	0x1
	.uahalf	0x382
	.uaword	0x535
	.uleb128 0x1f
	.string	"data_temp"
	.byte	0x1
	.uahalf	0x384
	.uaword	0x535
	.uleb128 0x1f
	.string	"parity_input"
	.byte	0x1
	.uahalf	0x385
	.uaword	0x54b
	.uleb128 0x1f
	.string	"parity_calc"
	.byte	0x1
	.uahalf	0x386
	.uaword	0x54b
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.string	"Qspi_TestCmd_Calc"
	.byte	0x1
	.uahalf	0x391
	.byte	0x1
	.byte	0x1
	.uaword	0x3ed4
	.uleb128 0x1e
	.string	"v"
	.byte	0x1
	.uahalf	0x391
	.uaword	0x3ed4
	.uleb128 0x1f
	.string	"Cmd_Temp"
	.byte	0x1
	.uahalf	0x393
	.uaword	0x535
	.byte	0
	.uleb128 0x21
	.byte	0x4
	.uaword	0x80c
	.uleb128 0x22
	.byte	0x1
	.string	"Qspi_Init"
	.byte	0x1
	.byte	0x3f
	.byte	0x1
	.uaword	.LFB202
	.uaword	.LFE202
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0x23
	.byte	0x1
	.string	"Qspi_SBC_TxRxData"
	.byte	0x1
	.uahalf	0x36b
	.byte	0x1
	.uaword	.LFB215
	.uaword	.LFE215
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x3f94
	.uleb128 0x24
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x36b
	.uaword	0x535
	.byte	0x1
	.byte	0x54
	.uleb128 0x24
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x36b
	.uaword	0x3f94
	.byte	0x1
	.byte	0x64
	.uleb128 0x25
	.string	"RxTemp"
	.byte	0x1
	.uahalf	0x36d
	.uaword	0x535
	.uaword	.LLST0
	.uleb128 0x25
	.string	"i"
	.byte	0x1
	.uahalf	0x36e
	.uaword	0x535
	.uaword	.LLST1
	.uleb128 0x26
	.uaword	0x3e2e
	.uaword	.LBB6
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.uahalf	0x377
	.uleb128 0x27
	.uaword	0x3e52
	.uaword	.LLST0
	.uleb128 0x28
	.uaword	.Ldebug_ranges0+0x28
	.uleb128 0x29
	.uaword	0x3e5f
	.uaword	.LLST3
	.uleb128 0x29
	.uaword	0x3e71
	.uaword	.LLST4
	.uleb128 0x29
	.uaword	0x3e86
	.uaword	.LLST5
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x21
	.byte	0x4
	.uaword	0x535
	.uleb128 0x2a
	.byte	0x1
	.string	"Qspi_SBC_Check_RegStatus"
	.byte	0x1
	.uahalf	0x358
	.byte	0x1
	.uaword	.LFB214
	.uaword	.LFE214
	.uaword	.LLST6
	.uaword	0x3fda
	.uleb128 0x2b
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x35a
	.uaword	0x535
	.uaword	.LLST7
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.string	"Qspi_SBC_Check_QVRStatus"
	.byte	0x1
	.uahalf	0x344
	.byte	0x1
	.uaword	.LFB213
	.uaword	.LFE213
	.uaword	.LLST8
	.uaword	0x4036
	.uleb128 0x2c
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x346
	.uaword	0x4036
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x2c
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x348
	.uaword	0x4036
	.byte	0x2
	.byte	0x91
	.sleb128 -6
	.uleb128 0x25
	.string	"i"
	.byte	0x1
	.uahalf	0x349
	.uaword	0x535
	.uaword	.LLST9
	.byte	0
	.uleb128 0xd
	.uaword	0x535
	.uaword	0x4046
	.uleb128 0xe
	.uaword	0x468
	.byte	0x2
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.string	"Qspi_SBC_Check_NormalState"
	.byte	0x1
	.uahalf	0x31f
	.byte	0x1
	.uaword	.LFB212
	.uaword	.LFE212
	.uaword	.LLST10
	.uaword	0x4088
	.uleb128 0x2b
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x321
	.uaword	0x535
	.uaword	.LLST11
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.string	"Qspi_SBC_Check10ms"
	.byte	0x1
	.byte	0xe6
	.byte	0x1
	.uaword	.LFB204
	.uaword	.LFE204
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0x2a
	.byte	0x1
	.string	"Qspi_SBC_WWDTest"
	.byte	0x1
	.uahalf	0x26e
	.byte	0x1
	.uaword	.LFB211
	.uaword	.LFE211
	.uaword	.LLST12
	.uaword	0x40e3
	.uleb128 0x2b
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x270
	.uaword	0x535
	.uaword	.LLST13
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.string	"Qspi_SBC_ABIST"
	.byte	0x1
	.uahalf	0x19c
	.byte	0x1
	.uaword	.LFB210
	.uaword	.LFE210
	.uaword	.LLST14
	.uaword	0x4164
	.uleb128 0x2d
	.string	"TxDataSS"
	.byte	0x1
	.uahalf	0x1a2
	.uaword	0x1074
	.byte	0x2
	.byte	0x91
	.sleb128 -30
	.uleb128 0x2d
	.string	"TxDataInt"
	.byte	0x1
	.uahalf	0x1a8
	.uaword	0x1074
	.byte	0x2
	.byte	0x91
	.sleb128 -22
	.uleb128 0x2d
	.string	"TxDataClr"
	.byte	0x1
	.uahalf	0x1ab
	.uaword	0x4036
	.byte	0x2
	.byte	0x91
	.sleb128 -6
	.uleb128 0x2c
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x1ad
	.uaword	0x1074
	.byte	0x2
	.byte	0x91
	.sleb128 -14
	.uleb128 0x25
	.string	"i"
	.byte	0x1
	.uahalf	0x1ae
	.uaword	0x535
	.uaword	.LLST15
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.string	"Qspi_SBC_GotoNormal"
	.byte	0x1
	.uahalf	0x184
	.byte	0x1
	.uaword	.LFB209
	.uaword	.LFE209
	.uaword	.LLST16
	.uaword	0x41b8
	.uleb128 0x2e
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x186
	.uaword	0x41b8
	.uleb128 0x2c
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x188
	.uaword	0x41b8
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x25
	.string	"i"
	.byte	0x1
	.uahalf	0x189
	.uaword	0x535
	.uaword	.LLST17
	.byte	0
	.uleb128 0xd
	.uaword	0x535
	.uaword	0x41c8
	.uleb128 0xe
	.uaword	0x468
	.byte	0x1
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.string	"Qspi_SBC_ReadStatus"
	.byte	0x1
	.uahalf	0x148
	.byte	0x1
	.uaword	.LFB208
	.uaword	.LFE208
	.uaword	.LLST18
	.uaword	0x424e
	.uleb128 0x2c
	.uaword	.LASF21
	.byte	0x1
	.uahalf	0x14a
	.uaword	0x424e
	.byte	0x2
	.byte	0x91
	.sleb128 -42
	.uleb128 0x2c
	.uaword	.LASF22
	.byte	0x1
	.uahalf	0x14c
	.uaword	0x424e
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2c
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x14e
	.uaword	0x424e
	.byte	0x2
	.byte	0x91
	.sleb128 -14
	.uleb128 0x2b
	.uaword	.LASF23
	.byte	0x1
	.uahalf	0x14f
	.uaword	0x556
	.uaword	.LLST19
	.uleb128 0x2b
	.uaword	.LASF24
	.byte	0x1
	.uahalf	0x14f
	.uaword	0x556
	.uaword	.LLST20
	.uleb128 0x25
	.string	"i"
	.byte	0x1
	.uahalf	0x150
	.uaword	0x535
	.uaword	.LLST21
	.byte	0
	.uleb128 0xd
	.uaword	0x535
	.uaword	0x425e
	.uleb128 0xe
	.uaword	0x468
	.byte	0x6
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.string	"Qspi_SBC_Config"
	.byte	0x1
	.uahalf	0x128
	.byte	0x1
	.uaword	.LFB207
	.uaword	.LFE207
	.uaword	.LLST22
	.uaword	0x42e0
	.uleb128 0x2c
	.uaword	.LASF21
	.byte	0x1
	.uahalf	0x12a
	.uaword	0x424e
	.byte	0x2
	.byte	0x91
	.sleb128 -42
	.uleb128 0x2c
	.uaword	.LASF22
	.byte	0x1
	.uahalf	0x12c
	.uaword	0x424e
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2c
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x12e
	.uaword	0x424e
	.byte	0x2
	.byte	0x91
	.sleb128 -14
	.uleb128 0x2b
	.uaword	.LASF23
	.byte	0x1
	.uahalf	0x12f
	.uaword	0x535
	.uaword	.LLST23
	.uleb128 0x2b
	.uaword	.LASF24
	.byte	0x1
	.uahalf	0x12f
	.uaword	0x535
	.uaword	.LLST24
	.uleb128 0x25
	.string	"i"
	.byte	0x1
	.uahalf	0x130
	.uaword	0x535
	.uaword	.LLST25
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.string	"Qspi_SBC_Lockup"
	.byte	0x1
	.uahalf	0x111
	.byte	0x1
	.uaword	.LFB206
	.uaword	.LFE206
	.uaword	.LLST26
	.uaword	0x4333
	.uleb128 0x2c
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x113
	.uaword	0x1074
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x2c
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x115
	.uaword	0x1074
	.byte	0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x25
	.string	"i"
	.byte	0x1
	.uahalf	0x116
	.uaword	0x535
	.uaword	.LLST27
	.byte	0
	.uleb128 0x2f
	.byte	0x1
	.string	"Qspi_SBC_Unlock"
	.byte	0x1
	.byte	0xfb
	.byte	0x1
	.uaword	.LFB205
	.uaword	.LFE205
	.uaword	.LLST28
	.uaword	0x4383
	.uleb128 0x30
	.uaword	.LASF7
	.byte	0x1
	.byte	0xfd
	.uaword	0x1074
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x30
	.uaword	.LASF8
	.byte	0x1
	.byte	0xff
	.uaword	0x1074
	.byte	0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x25
	.string	"i"
	.byte	0x1
	.uahalf	0x100
	.uaword	0x535
	.uaword	.LLST29
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.string	"Qspi_StartUp"
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.uaword	.LFB203
	.uaword	.LFE203
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0x31
	.uaword	0x3e2e
	.uaword	.LFB216
	.uaword	.LFE216
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x43d7
	.uleb128 0x27
	.uaword	0x3e52
	.uaword	.LLST30
	.uleb128 0x29
	.uaword	0x3e5f
	.uaword	.LLST31
	.uleb128 0x32
	.uaword	0x3e71
	.byte	0x1
	.byte	0x54
	.uleb128 0x29
	.uaword	0x3e86
	.uaword	.LLST32
	.byte	0
	.uleb128 0x31
	.uaword	0x3e9b
	.uaword	.LFB217
	.uaword	.LFE217
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x43fc
	.uleb128 0x33
	.uaword	0x3eb8
	.byte	0x1
	.byte	0x64
	.uleb128 0x29
	.uaword	0x3ec2
	.uaword	.LLST33
	.byte	0
	.uleb128 0x23
	.byte	0x1
	.string	"Qspi_Cmd_Test10ms"
	.byte	0x1
	.uahalf	0x39f
	.byte	0x1
	.uaword	.LFB218
	.uaword	.LFE218
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x445d
	.uleb128 0x34
	.string	"v"
	.byte	0x1
	.uahalf	0x39f
	.uaword	0x445d
	.byte	0x1
	.byte	0x64
	.uleb128 0x35
	.uaword	0x3e9b
	.uaword	.LBB14
	.uaword	.LBE14
	.byte	0x1
	.uahalf	0x3a3
	.uleb128 0x27
	.uaword	0x3eb8
	.uaword	.LLST34
	.uleb128 0x36
	.uaword	.LBB15
	.uaword	.LBE15
	.uleb128 0x29
	.uaword	0x3ec2
	.uaword	.LLST35
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x21
	.byte	0x4
	.uaword	0x851
	.uleb128 0x37
	.string	"Qspi_10msTick"
	.byte	0x1
	.byte	0x1e
	.uaword	0x535
	.byte	0x5
	.byte	0x3
	.uaword	Qspi_10msTick
	.uleb128 0x37
	.string	"Qspi_Log"
	.byte	0x1
	.byte	0x1f
	.uaword	0xc9f
	.byte	0x5
	.byte	0x3
	.uaword	Qspi_Log
	.uleb128 0x37
	.string	"Qspi_WWDT_Status"
	.byte	0x1
	.byte	0x21
	.uaword	0xa43
	.byte	0x5
	.byte	0x3
	.uaword	Qspi_WWDT_Status
	.uleb128 0x37
	.string	"Qspi_ABIST_Status"
	.byte	0x1
	.byte	0x22
	.uaword	0xb27
	.byte	0x5
	.byte	0x3
	.uaword	Qspi_ABIST_Status
	.uleb128 0x37
	.string	"Qspi_WWDTest_Ctr"
	.byte	0x1
	.byte	0x23
	.uaword	0x535
	.byte	0x5
	.byte	0x3
	.uaword	Qspi_WWDTest_Ctr
	.uleb128 0x37
	.string	"Qspi_WWDTest_RetryCtr"
	.byte	0x1
	.byte	0x24
	.uaword	0x535
	.byte	0x5
	.byte	0x3
	.uaword	Qspi_WWDTest_RetryCtr
	.uleb128 0x37
	.string	"Qspi_SbcStateChng_WaitCtr"
	.byte	0x1
	.byte	0x25
	.uaword	0x52b
	.byte	0x5
	.byte	0x3
	.uaword	Qspi_SbcStateChng_WaitCtr
	.uleb128 0x37
	.string	"Qspi_ABIST_WaitCtr"
	.byte	0x1
	.byte	0x26
	.uaword	0x535
	.byte	0x5
	.byte	0x3
	.uaword	Qspi_ABIST_WaitCtr
	.uleb128 0x37
	.string	"Qspi_WWDT_WdgErrCnt"
	.byte	0x1
	.byte	0x27
	.uaword	0x4036
	.byte	0x5
	.byte	0x3
	.uaword	Qspi_WWDT_WdgErrCnt
	.uleb128 0x37
	.string	"Qspi_ABISTSS_RetryFlag"
	.byte	0x1
	.byte	0x28
	.uaword	0x52b
	.byte	0x5
	.byte	0x3
	.uaword	Qspi_ABISTSS_RetryFlag
	.uleb128 0x37
	.string	"Qspi_ABISTSS_RetryCtr"
	.byte	0x1
	.byte	0x29
	.uaword	0x535
	.byte	0x5
	.byte	0x3
	.uaword	Qspi_ABISTSS_RetryCtr
	.uleb128 0x37
	.string	"Qspi_ABISTInt_RetryFlag"
	.byte	0x1
	.byte	0x2a
	.uaword	0x52b
	.byte	0x5
	.byte	0x3
	.uaword	Qspi_ABISTInt_RetryFlag
	.uleb128 0x37
	.string	"Qspi_ABISTInt_RetryCtr"
	.byte	0x1
	.byte	0x2b
	.uaword	0x535
	.byte	0x5
	.byte	0x3
	.uaword	Qspi_ABISTInt_RetryCtr
	.uleb128 0x38
	.string	"Qspi_SBCError"
	.byte	0x1
	.byte	0x1b
	.uaword	0x773
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Qspi_SBCError
	.uleb128 0x38
	.string	"Qspi_StrtUpTst_Sts"
	.byte	0x1
	.byte	0x1c
	.uaword	0x942
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Qspi_StrtUpTst_Sts
	.uleb128 0x39
	.string	"PSWReg_Rd0"
	.byte	0xa
	.byte	0x45
	.uaword	0xc7b
	.byte	0x1
	.byte	0x1
	.uleb128 0x39
	.string	"PSWReg_Rd1"
	.byte	0xa
	.byte	0x46
	.uaword	0xc7b
	.byte	0x1
	.byte	0x1
	.uleb128 0x39
	.string	"PSWReg_Rd2"
	.byte	0xa
	.byte	0x47
	.uaword	0xc7b
	.byte	0x1
	.byte	0x1
	.uleb128 0x39
	.string	"PSWReg_Rd3"
	.byte	0xa
	.byte	0x48
	.uaword	0xc7b
	.byte	0x1
	.byte	0x1
	.uleb128 0x39
	.string	"Main_HwVer"
	.byte	0x8
	.byte	0x89
	.uaword	0x1084
	.byte	0x1
	.byte	0x1
	.uleb128 0x39
	.string	"WdgEnable"
	.byte	0xb
	.byte	0xa4
	.uaword	0x535
	.byte	0x1
	.byte	0x1
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
	.uleb128 0x4
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
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x17
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
	.uleb128 0x13
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
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0x7
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x34
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x35
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
	.uleb128 0x36
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
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
	.byte	0
	.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL2
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL9
	.uaword	.LFE215
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL3
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL4
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL9
	.uaword	.LFE215
	.uahalf	0x1
	.byte	0x57
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LFB214
	.uaword	.LCFI0
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI0
	.uaword	.LFE214
	.uahalf	0x2
	.byte	0x8a
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL10
	.uaword	.LVL11
	.uahalf	0x2
	.byte	0x91
	.sleb128 -2
	.uaword	.LVL12
	.uaword	.LFE214
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LFB213
	.uaword	.LCFI1
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI1
	.uaword	.LFE213
	.uahalf	0x2
	.byte	0x8a
	.sleb128 16
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL13
	.uaword	.LVL14
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LFB212
	.uaword	.LCFI2
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI2
	.uaword	.LFE212
	.uahalf	0x2
	.byte	0x8a
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL15
	.uaword	.LVL16
	.uahalf	0x2
	.byte	0x91
	.sleb128 -2
	.uaword	.LVL17
	.uaword	.LFE212
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LFB211
	.uaword	.LCFI3
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI3
	.uaword	.LFE211
	.uahalf	0x2
	.byte	0x8a
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL18
	.uaword	.LVL19
	.uahalf	0x2
	.byte	0x91
	.sleb128 -2
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL21
	.uaword	.LVL22
	.uahalf	0x2
	.byte	0x91
	.sleb128 -2
	.uaword	.LVL23
	.uaword	.LVL24
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL24
	.uaword	.LVL25
	.uahalf	0x2
	.byte	0x91
	.sleb128 -2
	.uaword	.LVL26
	.uaword	.LFE211
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LFB210
	.uaword	.LCFI4
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI4
	.uaword	.LFE210
	.uahalf	0x2
	.byte	0x8a
	.sleb128 32
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL28
	.uaword	.LVL29
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LFB209
	.uaword	.LCFI5
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI5
	.uaword	.LFE209
	.uahalf	0x2
	.byte	0x8a
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL30
	.uaword	.LVL31
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL31
	.uaword	.LVL32
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL32
	.uaword	.LFE209
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LFB208
	.uaword	.LCFI6
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI6
	.uaword	.LFE208
	.uahalf	0x2
	.byte	0x8a
	.sleb128 48
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL34
	.uaword	.LVL35
	.uahalf	0xa
	.byte	0x8d
	.sleb128 -2
	.byte	0x94
	.byte	0x2
	.byte	0x31
	.byte	0x25
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL36
	.uaword	.LVL37
	.uahalf	0xa
	.byte	0x8d
	.sleb128 0
	.byte	0x94
	.byte	0x2
	.byte	0x31
	.byte	0x25
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL37
	.uaword	.LVL39-1
	.uahalf	0xa
	.byte	0x8d
	.sleb128 -2
	.byte	0x94
	.byte	0x2
	.byte	0x31
	.byte	0x25
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL34
	.uaword	.LVL35
	.uahalf	0xa
	.byte	0x8c
	.sleb128 -2
	.byte	0x94
	.byte	0x2
	.byte	0x31
	.byte	0x25
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL36
	.uaword	.LVL38
	.uahalf	0xa
	.byte	0x8c
	.sleb128 0
	.byte	0x94
	.byte	0x2
	.byte	0x31
	.byte	0x25
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL38
	.uaword	.LVL39-1
	.uahalf	0xa
	.byte	0x8c
	.sleb128 -2
	.byte	0x94
	.byte	0x2
	.byte	0x31
	.byte	0x25
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL33
	.uaword	.LVL34
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LFB207
	.uaword	.LCFI7
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI7
	.uaword	.LFE207
	.uahalf	0x2
	.byte	0x8a
	.sleb128 48
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL42
	.uaword	.LVL43
	.uahalf	0xa
	.byte	0x8f
	.sleb128 -2
	.byte	0x94
	.byte	0x2
	.byte	0x31
	.byte	0x25
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL44
	.uaword	.LVL46
	.uahalf	0xa
	.byte	0x8f
	.sleb128 0
	.byte	0x94
	.byte	0x2
	.byte	0x31
	.byte	0x25
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL46
	.uaword	.LFE207
	.uahalf	0xa
	.byte	0x8f
	.sleb128 -2
	.byte	0x94
	.byte	0x2
	.byte	0x31
	.byte	0x25
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL42
	.uaword	.LVL43
	.uahalf	0xa
	.byte	0x8c
	.sleb128 -2
	.byte	0x94
	.byte	0x2
	.byte	0x31
	.byte	0x25
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL44
	.uaword	.LVL45
	.uahalf	0xa
	.byte	0x8c
	.sleb128 0
	.byte	0x94
	.byte	0x2
	.byte	0x31
	.byte	0x25
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL45
	.uaword	.LFE207
	.uahalf	0xa
	.byte	0x8c
	.sleb128 -2
	.byte	0x94
	.byte	0x2
	.byte	0x31
	.byte	0x25
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL40
	.uaword	.LVL41
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LFB206
	.uaword	.LCFI8
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI8
	.uaword	.LFE206
	.uahalf	0x2
	.byte	0x8a
	.sleb128 16
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL47
	.uaword	.LVL48
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LFB205
	.uaword	.LCFI9
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI9
	.uaword	.LFE205
	.uahalf	0x2
	.byte	0x8a
	.sleb128 16
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL49
	.uaword	.LVL50
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL51
	.uaword	.LVL53
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST31:
	.uaword	.LVL52
	.uaword	.LVL54
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL55
	.uaword	.LVL56
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST32:
	.uaword	.LVL53
	.uaword	.LVL54
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL55
	.uaword	.LVL56
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST33:
	.uaword	.LVL58
	.uaword	.LVL59
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL60
	.uaword	.LVL61
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST34:
	.uaword	.LVL63
	.uaword	.LVL68
	.uahalf	0x3
	.byte	0x84
	.sleb128 2
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST35:
	.uaword	.LVL64
	.uaword	.LVL65
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL66
	.uaword	.LVL67
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
	.section .debug_aranges,"",@progbits
	.uaword	0x9c
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB202
	.uaword	.LFE202-.LFB202
	.uaword	.LFB215
	.uaword	.LFE215-.LFB215
	.uaword	.LFB214
	.uaword	.LFE214-.LFB214
	.uaword	.LFB213
	.uaword	.LFE213-.LFB213
	.uaword	.LFB212
	.uaword	.LFE212-.LFB212
	.uaword	.LFB204
	.uaword	.LFE204-.LFB204
	.uaword	.LFB211
	.uaword	.LFE211-.LFB211
	.uaword	.LFB210
	.uaword	.LFE210-.LFB210
	.uaword	.LFB209
	.uaword	.LFE209-.LFB209
	.uaword	.LFB208
	.uaword	.LFE208-.LFB208
	.uaword	.LFB207
	.uaword	.LFE207-.LFB207
	.uaword	.LFB206
	.uaword	.LFE206-.LFB206
	.uaword	.LFB205
	.uaword	.LFE205-.LFB205
	.uaword	.LFB203
	.uaword	.LFE203-.LFB203
	.uaword	.LFB216
	.uaword	.LFE216-.LFB216
	.uaword	.LFB217
	.uaword	.LFE217-.LFB217
	.uaword	.LFB218
	.uaword	.LFE218-.LFB218
	.uaword	0
	.uaword	0
	.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB6
	.uaword	.LBE6
	.uaword	.LBB11
	.uaword	.LBE11
	.uaword	.LBB12
	.uaword	.LBE12
	.uaword	.LBB13
	.uaword	.LBE13
	.uaword	0
	.uaword	0
	.uaword	.LBB7
	.uaword	.LBE7
	.uaword	.LBB8
	.uaword	.LBE8
	.uaword	.LBB9
	.uaword	.LBE9
	.uaword	.LBB10
	.uaword	.LBE10
	.uaword	0
	.uaword	0
	.uaword	.LFB202
	.uaword	.LFE202
	.uaword	.LFB215
	.uaword	.LFE215
	.uaword	.LFB214
	.uaword	.LFE214
	.uaword	.LFB213
	.uaword	.LFE213
	.uaword	.LFB212
	.uaword	.LFE212
	.uaword	.LFB204
	.uaword	.LFE204
	.uaword	.LFB211
	.uaword	.LFE211
	.uaword	.LFB210
	.uaword	.LFE210
	.uaword	.LFB209
	.uaword	.LFE209
	.uaword	.LFB208
	.uaword	.LFE208
	.uaword	.LFB207
	.uaword	.LFE207
	.uaword	.LFB206
	.uaword	.LFE206
	.uaword	.LFB205
	.uaword	.LFE205
	.uaword	.LFB203
	.uaword	.LFE203
	.uaword	.LFB216
	.uaword	.LFE216
	.uaword	.LFB217
	.uaword	.LFE217
	.uaword	.LFB218
	.uaword	.LFE218
	.uaword	0
	.uaword	0
	.section .debug_line,"",@progbits
.Ldebug_line0:
	.section .debug_str,"",@progbits
.LASF3:
	.string	"QSPI_S_ERROR"
.LASF7:
	.string	"TxData"
.LASF8:
	.string	"RxData"
.LASF5:
	.string	"QSPI_S_TEST_CMD"
.LASF6:
	.string	"QSPI_S_TEST"
.LASF11:
	.string	"reserved_0"
.LASF16:
	.string	"reserved_3"
.LASF15:
	.string	"reserved_4"
.LASF10:
	.string	"reserved_8"
.LASF12:
	.string	"reserved_9"
.LASF22:
	.string	"TxDataRead"
.LASF24:
	.string	"RxResult"
.LASF2:
	.string	"QSPI_S_ERROR_BIT"
.LASF21:
	.string	"TxDataWrite"
.LASF23:
	.string	"TxResult"
.LASF13:
	.string	"reserved_10"
.LASF17:
	.string	"reserved_12"
.LASF0:
	.string	"reserved_13"
.LASF9:
	.string	"reserved_15"
.LASF1:
	.string	"reserved_16"
.LASF14:
	.string	"reserved_20"
.LASF20:
	.string	"reserved_24"
.LASF4:
	.string	"QSPI_S_TEST_CMD_BIT"
.LASF18:
	.string	"BRKOUT"
.LASF19:
	.string	"reserved_28"
	.extern	Main_HwVer,STT_OBJECT,32
	.extern	WdgEnable,STT_OBJECT,2
	.extern	Qspi_cfg,STT_FUNC,0
	.ident	"GCC: (HighTec Release v4.6.3.0) 4.6.3 build on 2013-05-17"
