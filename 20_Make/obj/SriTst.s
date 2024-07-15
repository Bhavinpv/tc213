	.file	"SriTst.c"
.section .text,"ax",@progbits
.Ltext0:
	.section .rodata.STL_CONST_8BIT,"a",@progbits
	.type	SriTst_CurrentCpuSriAlm, @object
	.size	SriTst_CurrentCpuSriAlm, 1
SriTst_CurrentCpuSriAlm:
	.zero	1
	.section .data.STL_RAM_8BIT,"aw",@progbits
	.type	Sri_MppTrapCount, @object
	.size	Sri_MppTrapCount, 1
Sri_MppTrapCount:
	.zero	1
	.type	Sri_DseTrapCount, @object
	.size	Sri_DseTrapCount, 1
Sri_DseTrapCount:
	.zero	1
	.type	Sri_DaeTrapCount, @object
	.size	Sri_DaeTrapCount, 1
Sri_DaeTrapCount:
	.zero	1
	.type	Sri_DietrTrapCount, @object
	.size	Sri_DietrTrapCount, 1
Sri_DietrTrapCount:
	.zero	1
	.type	Sri_PietrTrapCount, @object
	.size	Sri_PietrTrapCount, 1
Sri_PietrTrapCount:
	.zero	1
	.section .data.STL_RAM_32BIT,"aw",@progbits
	.align 2
	.type	Sri_ExpectedTrapClass, @object
	.size	Sri_ExpectedTrapClass, 4
Sri_ExpectedTrapClass:
	.zero	4
	.align 2
	.type	Sri_ExpectedTrapId, @object
	.size	Sri_ExpectedTrapId, 4
Sri_ExpectedTrapId:
	.zero	4
	.section .rodata.MTL_SRI_EDC_BUSERROR_TST,"a",@progbits
	.align 5
	.type	dummy, @object
	.size	dummy, 32
dummy:
	.zero	32
	.section .text.STL_ASIL_CODE_NO_OPTIMIZE,"ax",@progbits
	.align 2
	.global	SriTst_SriTst
	.type	SriTst_SriTst, @function
SriTst_SriTst:
.LFB18:
	.file 1 "../30_Bsw/MicroTestLib/Static/SriTst.c"
	.loc 1 657 0
	mov.aa	%a14, %SP
.LCFI0:
	sub.a	%SP, 88
.LCFI1:
	st.w	[%a14] -76, %d4
	mov	%d15, %d5
	st.a	[%a14] -84, %a4
	st.b	[%a14] -77, %d15
	.loc 1 658 0
	movh	%d15, 4
	addi	%d15, %d15, 266
	st.w	[%a14] -4, %d15
	.loc 1 659 0
	movh	%d15, 4
	addi	%d15, %d15, 266
	st.w	[%a14] -8, %d15
	.loc 1 663 0
	ld.bu	%d15, [%a14] -77
	mov.a	%a15, 4
	st.a	[%a14] -12, %a15
	st.w	[%a14] -16, %d15
.LBB160:
.LBB161:
	.file 2 "../30_Bsw/STL_common/Mcal_Compiler.h"
	.loc 2 400 0
	ld.w	%d15, [%a14] -12
	ld.a	%a15, [%a14] -16
	mov.d	%d1, %a15
#APP
	# 400 "../30_Bsw/STL_common/Mcal_Compiler.h" 1
	crc32 %d15, %d1, %d15
	# 0 "" 2
#NO_APP
	st.w	[%a14] -20, %d15
	.loc 2 401 0
	ld.w	%d15, [%a14] -20
.LBE161:
.LBE160:
	.loc 1 663 0
	ld.a	%a15, [%a14] -84
	st.w	[%a15]0, %d15
	.loc 1 667 0
	ld.w	%d15, [%a14] -76
	jz	%d15, .L2
	.loc 1 669 0
	movh	%d15, 4
	addi	%d15, %d15, 258
	st.w	[%a14] -4, %d15
	j	.L3
.L2:
	.loc 1 671 0
	call	Smu_GetSmuState
	mov	%d15, %d2
	jeq	%d15, 1, .L4
	.loc 1 673 0
	movh	%d15, 4
	addi	%d15, %d15, 524
	st.w	[%a14] -4, %d15
	j	.L3
.L4:
	.loc 1 677 0
	mov.d	%d1, %a14
	addi	%d15, %d1, -72
	mov.a	%a4, %d15
	call	SriTst_lInit
	st.w	[%a14] -4, %d2
	.loc 1 678 0
	ld.a	%a15, [%a14] -4
	movh	%d15, 4
	addi	%d15, %d15, 511
	mov.d	%d1, %a15
	jne	%d1, %d15, .L5
	.loc 1 681 0
	ld.w	%d4, [%a14] -76
	ld.a	%a4, [%a14] -84
	call	SriTst_lCPUDecodersTst
	st.w	[%a14] -4, %d2
	.loc 1 683 0
	ld.a	%a15, [%a14] -4
	movh	%d15, 4
	addi	%d15, %d15, 511
	mov.d	%d1, %a15
	jne	%d1, %d15, .L5
	.loc 1 686 0
	ld.w	%d4, [%a14] -76
	ld.a	%a4, [%a14] -84
	call	SriTst_lAdditionalDecodersTst
	st.w	[%a14] -4, %d2
	.loc 1 691 0
	ld.a	%a15, [%a14] -4
	movh	%d15, 4
	addi	%d15, %d15, 511
	mov.d	%d1, %a15
	jne	%d1, %d15, .L5
	.loc 1 693 0
	ld.w	%d4, [%a14] -76
	ld.a	%a4, [%a14] -84
	call	SriTst_lSriBusErrorsTst
	st.w	[%a14] -4, %d2
.L5:
	.loc 1 699 0
	mov.d	%d1, %a14
	addi	%d15, %d1, -72
	mov.a	%a4, %d15
	call	SriTst_lRestore
	st.w	[%a14] -8, %d2
	.loc 1 701 0
	ld.a	%a15, [%a14] -4
	movh	%d15, 4
	addi	%d15, %d15, 511
	mov.d	%d1, %a15
	jne	%d1, %d15, .L3
	.loc 1 703 0
	ld.w	%d15, [%a14] -8
	st.w	[%a14] -4, %d15
.L3:
	.loc 1 709 0
	ld.w	%d15, [%a14] -84
	mov.a	%a7, %d15
	ld.w	%d15, [%a7]0
	st.w	[%a14] -24, %d15
	ld.w	%d15, [%a14] -4
	st.w	[%a14] -28, %d15
.LBB162:
.LBB163:
	.loc 2 400 0
	ld.w	%d15, [%a14] -24
	ld.a	%a15, [%a14] -28
	mov.d	%d1, %a15
#APP
	# 400 "../30_Bsw/STL_common/Mcal_Compiler.h" 1
	crc32 %d15, %d1, %d15
	# 0 "" 2
#NO_APP
	st.w	[%a14] -32, %d15
	.loc 2 401 0
	ld.w	%d15, [%a14] -32
.LBE163:
.LBE162:
	.loc 1 709 0
	ld.a	%a15, [%a14] -84
	st.w	[%a15]0, %d15
	.loc 1 711 0
	ld.w	%d15, [%a14] -4
	.loc 1 712 0
	mov	%d2, %d15
	ret
.LFE18:
	.size	SriTst_SriTst, .-SriTst_SriTst
	.align 2
	.type	SriTst_lInit, @function
SriTst_lInit:
.LFB19:
	.loc 1 756 0
	mov.aa	%a14, %SP
.LCFI2:
	sub.a	%SP, 56
.LCFI3:
	st.a	[%a14] -52, %a4
	.loc 1 757 0
	movh	%d15, 4
	addi	%d15, %d15, 266
	st.w	[%a14] -4, %d15
	.loc 1 762 0
	mov	%d15, 0
	st.w	[%a14] -32, %d15
	.loc 1 763 0
	mov	%d15, 0
	st.w	[%a14] -36, %d15
	.loc 1 764 0
	mov	%d15, 0
	st.w	[%a14] -40, %d15
	.loc 1 765 0
	mov	%d15, 0
	st.w	[%a14] -44, %d15
	.loc 1 766 0
	mov	%d15, 0
	st.w	[%a14] -12, %d15
	.loc 1 771 0
	call	Mcal_GetCoreId
	mov	%d15, %d2
	st.b	[%a14] -13, %d15
	.loc 1 774 0
	movh	%d15, hi:Sri_ExpectedTrapClass
	mov.a	%a2, %d15
	lea	%a15, [%a2] lo:Sri_ExpectedTrapClass
	mov	%d15, 0
	st.w	[%a15]0, %d15
	.loc 1 775 0
	movh	%d15, hi:Sri_ExpectedTrapId
	mov.a	%a7, %d15
	lea	%a15, [%a7] lo:Sri_ExpectedTrapId
	mov	%d15, 0
	st.w	[%a15]0, %d15
	.loc 1 778 0
	ld.w	%d15, [%a14] -52
	mov.a	%a15, 0
	mov.d	%d1, %a15
	mov.a	%a2, %d15
	st.b	[%a2] 36, %d1
	.loc 1 779 0
	ld.w	%d15, [%a14] -52
	mov.a	%a15, 0
	mov.d	%d1, %a15
	mov.a	%a2, %d15
	st.b	[%a2] 37, %d1
	.loc 1 782 0
	ld.bu	%d15, [%a14] -13
	jnz	%d15, .L24
.L8:
	.loc 1 785 0
	movh	%d15, 63617
	addi	%d15, %d15, -1264
	mov.a	%a7, %d15
	ld.a	%a15, [%a7]0
	ld.w	%d15, [%a14] -52
	mov.aa	%a7, %a15
	mov.a	%a2, %d15
	st.a	[%a2] 12, %a7
	.loc 1 786 0
	movh	%d15, 63617
	addi	%d15, %d15, -1260
	mov.a	%a2, %d15
	ld.a	%a15, [%a2]0
	ld.w	%d15, [%a14] -52
	mov.aa	%a2, %a15
	mov.a	%a7, %d15
	st.a	[%a7] 16, %a2
	.loc 1 787 0
	movh	%d15, 63617
	addi	%d15, %d15, -1256
	mov.a	%a7, %d15
	ld.a	%a15, [%a7]0
	ld.w	%d15, [%a14] -52
	mov.aa	%a7, %a15
	mov.a	%a2, %d15
	st.a	[%a2] 20, %a7
	.loc 1 788 0
	movh	%d15, 63617
	addi	%d15, %d15, -1280
	mov.a	%a2, %d15
	ld.a	%a15, [%a2]0
	ld.w	%d15, [%a14] -52
	mov.aa	%a2, %a15
	mov.a	%a7, %d15
	st.a	[%a7] 28, %a2
	.loc 1 791 0
	ld.w	%d15, [%a14] -52
	mov.a	%a15, 0
	mov.aa	%a2, %a15
	mov.a	%a7, %d15
	st.a	[%a7] 24, %a2
	.loc 1 792 0
	mov	%d15, 0
	st.w	[%a14] -8, %d15
	j	.L9
.L11:
	.loc 1 794 0
	movh	%d15, 63617
	addi	%d2, %d15, -1280
	ld.a	%a15, [%a14] -8
	mov.d	%d15, %a15
	sh	%d15, 1
	mov.d	%d1, %a15
	add	%d15, %d1
	sh	%d15, 2
	add	%d15, %d2
	addi	%d15, %d15, 16
	mov.a	%a2, %d15
	ld.w	%d15, [%a2]0
	jgez	%d15, .L10
	.loc 1 797 0
	ld.w	%d15, [%a14] -52
	mov.a	%a7, %d15
	ld.a	%a15, [%a7] 24
	ld.w	%d15, [%a14] -8
	mov	%d2, 1
	sh	%d15, %d2, %d15
	mov.d	%d1, %a15
	or	%d15, %d1
	ld.a	%a15, [%a14] -52
	st.w	[%a15] 24, %d15
.L10:
	.loc 1 792 0
	ld.w	%d15, [%a14] -8
	add	%d15, 1
	st.w	[%a14] -8, %d15
.L9:
	.loc 1 792 0 is_stmt 0 discriminator 1
	ld.w	%d15, [%a14] -8
	jlt.u	%d15, 8, .L11
	.loc 1 803 0 is_stmt 1
	movh	%d15, 61443
	addi	%d15, %d15, 25060
	movh.a	%a15, 2
	add.a	%a15, 1
	mov.a	%a2, %d15
	st.a	[%a2]0, %a15
	.loc 1 805 0
	j	.L12
.L24:
	.loc 1 858 0
	nop
.L12:
	.loc 1 862 0
	movh	%d15, 61443
	addi	%d15, %d15, 25056
	mov.a	%a7, %d15
	ld.a	%a15, [%a7]0
	ld.w	%d15, [%a14] -52
	mov.aa	%a7, %a15
	mov.a	%a2, %d15
	st.a	[%a2] 32, %a7
.LBB164:
	.loc 1 865 0
#APP
	# 865 "../30_Bsw/MicroTestLib/Static/SriTst.c" 1
	mfcr %d15, LO:(0x1030)
	# 0 "" 2
#NO_APP
	st.w	[%a14] -20, %d15
	ld.a	%a15, [%a14] -20
.LBE164:
	ld.w	%d15, [%a14] -52
	mov.aa	%a7, %a15
	mov.a	%a2, %d15
	st.a	[%a2] 8, %a7
	.loc 1 869 0
	ld.w	%d15, [%a14] -52
	mov.a	%a15, %d15
	add.a	%a15, 2
	mov.d	%d1, %a14
	addi	%d15, %d1, -28
	mov	%d4, 2
	mov	%d5, 21
	mov.aa	%a4, %a15
	mov.a	%a5, %d15
	call	Smu_GetAlarmAction
	mov	%d15, %d2
	st.b	[%a14] -21, %d15
	.loc 1 874 0
	ld.w	%d15, [%a14] -52
	mov.a	%a15, %d15
	add.a	%a15, 3
	mov.d	%d1, %a14
	addi	%d15, %d1, -28
	mov	%d4, 2
	mov	%d5, 22
	mov.aa	%a4, %a15
	mov.a	%a5, %d15
	call	Smu_GetAlarmAction
	mov	%d15, %d2
	st.b	[%a14] -22, %d15
	.loc 1 879 0
	ld.w	%d15, [%a14] -52
	mov.a	%a15, %d15
	add.a	%a15, 4
	mov.d	%d1, %a14
	addi	%d15, %d1, -28
	mov	%d4, 2
	mov	%d5, 23
	mov.aa	%a4, %a15
	mov.a	%a5, %d15
	call	Smu_GetAlarmAction
	mov	%d15, %d2
	st.b	[%a14] -23, %d15
	.loc 1 884 0
	ld.w	%d15, [%a14] -52
	mov.a	%a15, %d15
	add.a	%a15, 5
	mov.d	%d1, %a14
	addi	%d15, %d1, -28
	mov	%d4, 3
	mov	%d5, 30
	mov.aa	%a4, %a15
	mov.a	%a5, %d15
	call	Smu_GetAlarmAction
	mov	%d15, %d2
	st.b	[%a14] -24, %d15
	.loc 1 889 0
	ld.bu	%d15, [%a14] -13
	movh.a	%a15, hi:SriTst_CurrentCpuSriAlm
	lea	%a15, [%a15] lo:SriTst_CurrentCpuSriAlm
	mov.d	%d1, %a15
	add	%d15, %d1
	mov.a	%a2, %d15
	ld.bu	%d15, [%a2]0
	mov.a	%a15, %d15
	ld.w	%d2, [%a14] -52
	mov.d	%d1, %a14
	addi	%d15, %d1, -28
	mov.d	%d4, %a15
	mov	%d5, 19
	mov.a	%a4, %d2
	mov.a	%a5, %d15
	call	Smu_GetAlarmAction
	mov	%d15, %d2
	st.b	[%a14] -25, %d15
	.loc 1 894 0
	ld.bu	%d15, [%a14] -13
	movh.a	%a15, hi:SriTst_CurrentCpuSriAlm
	lea	%a15, [%a15] lo:SriTst_CurrentCpuSriAlm
	mov.d	%d1, %a15
	add	%d15, %d1
	mov.a	%a2, %d15
	ld.bu	%d15, [%a2]0
	mov.a	%a15, %d15
	ld.w	%d15, [%a14] -52
	add	%d2, %d15, 1
	mov.d	%d1, %a14
	addi	%d15, %d1, -28
	mov.d	%d4, %a15
	mov	%d5, 18
	mov.a	%a4, %d2
	mov.a	%a5, %d15
	call	Smu_GetAlarmAction
	mov	%d15, %d2
	st.b	[%a14] -26, %d15
	.loc 1 899 0
	ld.w	%d15, [%a14] -52
	mov.a	%a15, %d15
	add.a	%a15, 6
	mov.d	%d1, %a14
	addi	%d15, %d1, -28
	mov	%d4, 0
	mov	%d5, 7
	mov.aa	%a4, %a15
	mov.a	%a5, %d15
	call	Smu_GetAlarmAction
	mov	%d15, %d2
	st.b	[%a14] -27, %d15
	.loc 1 904 0
	ld.bu	%d15, [%a14] -21
	jnz	%d15, .L13
	.loc 1 904 0 is_stmt 0 discriminator 1
	ld.bu	%d15, [%a14] -22
	jnz	%d15, .L13
	ld.bu	%d15, [%a14] -23
	jnz	%d15, .L13
	ld.bu	%d15, [%a14] -24
	jnz	%d15, .L13
	.loc 1 905 0 is_stmt 1
	ld.bu	%d15, [%a14] -25
	jnz	%d15, .L13
	.loc 1 905 0 is_stmt 0 discriminator 1
	ld.bu	%d15, [%a14] -26
	jnz	%d15, .L13
	ld.bu	%d15, [%a14] -27
	jz	%d15, .L14
.L13:
	.loc 1 908 0 is_stmt 1
	movh	%d15, 4
	addi	%d15, %d15, 528
	st.w	[%a14] -4, %d15
	.loc 1 909 0
	ld.w	%d15, [%a14] -52
	mov.a	%a15, 1
	mov.d	%d1, %a15
	mov.a	%a2, %d15
	st.b	[%a2] 7, %d1
	j	.L15
.L14:
	.loc 1 916 0
	ld.w	%d15, [%a14] -52
	mov.a	%a15, 0
	mov.d	%d1, %a15
	mov.a	%a2, %d15
	st.b	[%a2] 7, %d1
.L15:
	.loc 1 923 0
	ld.a	%a15, [%a14] -4
	movh	%d15, 4
	addi	%d15, %d15, 266
	mov.d	%d1, %a15
	jne	%d1, %d15, .L16
	.loc 1 925 0
	mov.d	%d1, %a14
	addi	%d15, %d1, -32
	mov	%d4, 2
	mov.a	%a4, %d15
	call	Smu_GetAlarmStatus
	mov	%d15, %d2
	st.b	[%a14] -21, %d15
	.loc 1 926 0
	mov.d	%d1, %a14
	addi	%d15, %d1, -36
	mov	%d4, 3
	mov.a	%a4, %d15
	call	Smu_GetAlarmStatus
	mov	%d15, %d2
	st.b	[%a14] -22, %d15
	.loc 1 927 0
	ld.bu	%d15, [%a14] -13
	movh.a	%a15, hi:SriTst_CurrentCpuSriAlm
	lea	%a15, [%a15] lo:SriTst_CurrentCpuSriAlm
	mov.d	%d1, %a15
	add	%d15, %d1
	mov.a	%a2, %d15
	ld.bu	%d15, [%a2]0
	mov.a	%a15, %d15
	mov.d	%d1, %a14
	addi	%d15, %d1, -40
	mov.d	%d4, %a15
	mov.a	%a4, %d15
	call	Smu_GetAlarmStatus
	mov	%d15, %d2
	st.b	[%a14] -23, %d15
	.loc 1 929 0
	mov.d	%d1, %a14
	addi	%d15, %d1, -44
	mov	%d4, 0
	mov.a	%a4, %d15
	call	Smu_GetAlarmStatus
	mov	%d15, %d2
	st.b	[%a14] -24, %d15
	.loc 1 930 0
	ld.bu	%d15, [%a14] -21
	jnz	%d15, .L17
	.loc 1 930 0 is_stmt 0 discriminator 1
	ld.bu	%d15, [%a14] -22
	jnz	%d15, .L17
	ld.bu	%d15, [%a14] -23
	jnz	%d15, .L17
	.loc 1 931 0 is_stmt 1
	ld.bu	%d15, [%a14] -24
	jz	%d15, .L18
.L17:
	.loc 1 933 0
	movh	%d15, 4
	addi	%d15, %d15, 526
	st.w	[%a14] -4, %d15
	j	.L16
.L18:
	.loc 1 938 0
	ld.a	%a15, [%a14] -40
	movh	%d15, 12
	mov.d	%d1, %a15
	and	%d1, %d15
	mov.a	%a15, %d1
	.loc 1 940 0
	ld.w	%d2, [%a14] -32
	movh	%d15, 32
	and	%d15, %d2
	.loc 1 939 0
	mov.d	%d1, %a15
	or	%d1, %d15
	mov.a	%a15, %d1
	.loc 1 941 0
	ld.w	%d2, [%a14] -32
	movh	%d15, 64
	and	%d15, %d2
	.loc 1 940 0
	mov.d	%d1, %a15
	or	%d1, %d15
	mov.a	%a15, %d1
	.loc 1 942 0
	ld.w	%d2, [%a14] -32
	movh	%d15, 128
	and	%d15, %d2
	.loc 1 941 0
	mov.d	%d1, %a15
	or	%d1, %d15
	mov.a	%a15, %d1
	.loc 1 943 0
	ld.w	%d2, [%a14] -36
	movh	%d15, 16384
	and	%d15, %d2
	.loc 1 942 0
	mov.d	%d1, %a15
	or	%d1, %d15
	mov.a	%a15, %d1
	.loc 1 944 0
	ld.w	%d15, [%a14] -44
	and	%d15, %d15, 128
	.loc 1 938 0
	mov.d	%d1, %a15
	or	%d15, %d1
	st.w	[%a14] -12, %d15
	.loc 1 945 0
	ld.w	%d15, [%a14] -12
	jz	%d15, .L16
	.loc 1 947 0
	movh	%d15, 4
	addi	%d15, %d15, 525
	st.w	[%a14] -4, %d15
.L16:
	.loc 1 954 0
	ld.a	%a15, [%a14] -4
	movh	%d15, 4
	addi	%d15, %d15, 266
	mov.d	%d1, %a15
	jne	%d1, %d15, .L19
	.loc 1 956 0
	mov	%d4, 2
	mov	%d5, 21
	mov	%d6, 0
	call	Smu_SetAlarmAction
	mov	%d15, %d2
	st.b	[%a14] -21, %d15
	.loc 1 959 0
	mov	%d4, 2
	mov	%d5, 22
	mov	%d6, 0
	call	Smu_SetAlarmAction
	mov	%d15, %d2
	st.b	[%a14] -22, %d15
	.loc 1 962 0
	mov	%d4, 2
	mov	%d5, 23
	mov	%d6, 0
	call	Smu_SetAlarmAction
	mov	%d15, %d2
	st.b	[%a14] -23, %d15
	.loc 1 965 0
	mov	%d4, 3
	mov	%d5, 30
	mov	%d6, 0
	call	Smu_SetAlarmAction
	mov	%d15, %d2
	st.b	[%a14] -24, %d15
	.loc 1 968 0
	ld.bu	%d15, [%a14] -13
	movh.a	%a15, hi:SriTst_CurrentCpuSriAlm
	lea	%a15, [%a15] lo:SriTst_CurrentCpuSriAlm
	mov.d	%d1, %a15
	add	%d15, %d1
	mov.a	%a2, %d15
	ld.bu	%d15, [%a2]0
	mov	%d4, %d15
	mov	%d5, 19
	mov	%d6, 0
	call	Smu_SetAlarmAction
	mov	%d15, %d2
	st.b	[%a14] -25, %d15
	.loc 1 971 0
	ld.bu	%d15, [%a14] -13
	movh.a	%a15, hi:SriTst_CurrentCpuSriAlm
	lea	%a15, [%a15] lo:SriTst_CurrentCpuSriAlm
	mov.d	%d1, %a15
	add	%d15, %d1
	mov.a	%a2, %d15
	ld.bu	%d15, [%a2]0
	mov	%d4, %d15
	mov	%d5, 18
	mov	%d6, 0
	call	Smu_SetAlarmAction
	mov	%d15, %d2
	st.b	[%a14] -26, %d15
	.loc 1 974 0
	mov	%d4, 0
	mov	%d5, 7
	mov	%d6, 0
	call	Smu_SetAlarmAction
	mov	%d15, %d2
	st.b	[%a14] -27, %d15
	.loc 1 978 0
	ld.bu	%d15, [%a14] -21
	jnz	%d15, .L20
	.loc 1 978 0 is_stmt 0 discriminator 1
	ld.bu	%d15, [%a14] -22
	jnz	%d15, .L20
	ld.bu	%d15, [%a14] -23
	jnz	%d15, .L20
	ld.bu	%d15, [%a14] -24
	jnz	%d15, .L20
	.loc 1 979 0 is_stmt 1
	ld.bu	%d15, [%a14] -25
	jnz	%d15, .L20
	.loc 1 979 0 is_stmt 0 discriminator 1
	ld.bu	%d15, [%a14] -26
	jnz	%d15, .L20
	ld.bu	%d15, [%a14] -27
	jz	%d15, .L21
.L20:
	.loc 1 983 0 is_stmt 1
	movh	%d15, 4
	addi	%d15, %d15, 529
	st.w	[%a14] -4, %d15
	j	.L19
.L21:
	.loc 1 991 0
	movh	%d15, hi:Sri_MppTrapCount
	mov.a	%a7, %d15
	lea	%a15, [%a7] lo:Sri_MppTrapCount
	mov	%d15, 0
	st.b	[%a15]0, %d15
	.loc 1 992 0
	movh	%d15, hi:Sri_DseTrapCount
	mov.a	%a2, %d15
	lea	%a15, [%a2] lo:Sri_DseTrapCount
	mov	%d15, 0
	st.b	[%a15]0, %d15
	.loc 1 993 0
	movh	%d15, hi:Sri_DaeTrapCount
	mov.a	%a7, %d15
	lea	%a15, [%a7] lo:Sri_DaeTrapCount
	mov	%d15, 0
	st.b	[%a15]0, %d15
	.loc 1 994 0
	movh	%d15, hi:Sri_DietrTrapCount
	mov.a	%a2, %d15
	lea	%a15, [%a2] lo:Sri_DietrTrapCount
	mov	%d15, 0
	st.b	[%a15]0, %d15
	.loc 1 995 0
	movh	%d15, hi:Sri_PietrTrapCount
	mov.a	%a7, %d15
	lea	%a15, [%a7] lo:Sri_PietrTrapCount
	mov	%d15, 0
	st.b	[%a15]0, %d15
	.loc 1 998 0
	mov	%d4, 1
	movh	%d15, hi:SriTst_lProtectionTrapHandler
	mov.a	%a2, %d15
	lea	%a4, [%a2] lo:SriTst_lProtectionTrapHandler
	call	TRAP_RegisterTrapHandler
	st.w	[%a14] -4, %d2
	.loc 1 1000 0
	ld.w	%d15, [%a14] -4
	jnz	%d15, .L22
	.loc 1 1002 0
	ld.w	%d15, [%a14] -52
	mov.a	%a15, 1
	mov.d	%d1, %a15
	mov.a	%a2, %d15
	st.b	[%a2] 36, %d1
	.loc 1 1003 0
	mov	%d4, 4
	movh	%d15, hi:SriTst_lBusErrorTrapHandler
	mov.a	%a7, %d15
	lea	%a4, [%a7] lo:SriTst_lBusErrorTrapHandler
	call	TRAP_RegisterTrapHandler
	st.w	[%a14] -4, %d2
	.loc 1 1005 0
	ld.w	%d15, [%a14] -4
	jnz	%d15, .L23
	.loc 1 1007 0
	ld.w	%d15, [%a14] -52
	mov.a	%a15, 1
	mov.d	%d1, %a15
	mov.a	%a2, %d15
	st.b	[%a2] 37, %d1
	.loc 1 1008 0
	movh	%d15, 4
	addi	%d15, %d15, 511
	st.w	[%a14] -4, %d15
	j	.L19
.L23:
	.loc 1 1012 0
	movh	%d15, 4
	addi	%d15, %d15, 16390
	st.w	[%a14] -4, %d15
	j	.L19
.L22:
	.loc 1 1017 0
	movh	%d15, 4
	addi	%d15, %d15, 16390
	st.w	[%a14] -4, %d15
.L19:
	.loc 1 1025 0
	ld.w	%d15, [%a14] -4
	.loc 1 1026 0
	mov	%d2, %d15
	ret
.LFE19:
	.size	SriTst_lInit, .-SriTst_lInit
	.align 2
	.type	SriTst_lRestore, @function
SriTst_lRestore:
.LFB20:
	.loc 1 1065 0
	mov.aa	%a14, %SP
.LCFI4:
	sub.a	%SP, 32
.LCFI5:
	st.a	[%a14] -28, %a4
	.loc 1 1066 0
	movh	%d15, 4
	addi	%d15, %d15, 266
	st.w	[%a14] -4, %d15
	.loc 1 1072 0
	call	Mcal_GetCoreId
	mov	%d15, %d2
	st.b	[%a14] -5, %d15
	.loc 1 1075 0
	movh	%d15, 63488
	addi	%d15, %d15, 8208
	movh.a	%a15, 64
	lea	%a15, [%a15] 4096
	mov.a	%a7, %d15
	st.a	[%a7]0, %a15
	.loc 1 1078 0
	mov	%d4, 22960
	call	Mcal_ResetSafetyENDINIT_Timed
	.loc 1 1079 0
	movh	%d15, 61443
	addi	%d15, %d15, 25056
	ld.a	%a15, [%a14] -28
	ld.a	%a15, [%a15] 32
	mov.a	%a7, %d15
	st.a	[%a7]0, %a15
	.loc 1 1080 0
	call	Mcal_SetSafetyENDINIT_Timed
	.loc 1 1083 0
	ld.bu	%d15, [%a14] -5
	jnz	%d15, .L34
.L27:
	.loc 1 1087 0
	movh	%d15, 63617
	addi	%d15, %d15, -1264
	mov.a	%a15, 0
	mov.a	%a7, %d15
	st.a	[%a7]0, %a15
	.loc 1 1089 0
	movh	%d15, 63617
	addi	%d15, %d15, -1260
	ld.a	%a15, [%a14] -28
	ld.a	%a15, [%a15] 16
	mov.a	%a7, %d15
	st.a	[%a7]0, %a15
	.loc 1 1090 0
	movh	%d15, 63617
	addi	%d15, %d15, -1256
	ld.a	%a15, [%a14] -28
	ld.a	%a15, [%a15] 20
	mov.a	%a7, %d15
	st.a	[%a7]0, %a15
	.loc 1 1091 0
	movh	%d15, 63617
	addi	%d15, %d15, -1264
	ld.a	%a15, [%a14] -28
	ld.a	%a15, [%a15] 12
	mov.a	%a7, %d15
	st.a	[%a7]0, %a15
	.loc 1 1094 0
	movh	%d15, 63617
	addi	%d15, %d15, -1280
	ld.a	%a15, [%a14] -28
	ld.a	%a15, [%a15] 24
	mov.a	%a7, %d15
	st.a	[%a7]0, %a15
	.loc 1 1095 0
	movh	%d15, 61443
	addi	%d15, %d15, 25060
	movh.a	%a15, 1
	add.a	%a15, 1
	mov.a	%a7, %d15
	st.a	[%a7]0, %a15
.LBB165:
.LBB166:
	.file 3 "../30_Bsw/STL_common/intrinsics.h"
	.loc 3 184 0
#APP
	# 184 "../30_Bsw/STL_common/intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE166:
.LBE165:
	.loc 1 1103 0
	movh	%d15, 63617
	addi	%d15, %d15, -1280
	ld.a	%a15, [%a14] -28
	ld.a	%a15, [%a15] 28
	mov.a	%a7, %d15
	st.a	[%a7]0, %a15
	.loc 1 1104 0
	j	.L28
.L34:
	.loc 1 1156 0
	nop
.L28:
	.loc 1 1160 0
	call	Mcal_ResetENDINIT
.LBB167:
.LBB168:
	.loc 3 190 0
#APP
	# 190 "../30_Bsw/STL_common/intrinsics.h" 1
	dsync
	# 0 "" 2
#NO_APP
.LBE168:
.LBE167:
.LBB169:
	.loc 1 1161 0
	ld.w	%d15, [%a14] -28
	mov.a	%a7, %d15
	ld.w	%d15, [%a7] 8
	st.w	[%a14] -12, %d15
	ld.w	%d15, [%a14] -12
#APP
	# 1161 "../30_Bsw/MicroTestLib/Static/SriTst.c" 1
	mtcr LO:(0x1030), %d15
	# 0 "" 2
#NO_APP
.LBE169:
.LBB170:
.LBB171:
	.loc 3 184 0
#APP
	# 184 "../30_Bsw/STL_common/intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE171:
.LBE170:
	.loc 1 1162 0
	call	Mcal_SetENDINIT
	.loc 1 1165 0
	ld.w	%d15, [%a14] -28
	mov.a	%a7, %d15
	ld.bu	%d15, [%a7] 36
	jz	%d15, .L29
	.loc 1 1167 0
	mov	%d4, 1
	call	TRAP_UnregisterTrapHandler
	mov	%d15, %d2
	jz	%d15, .L29
	.loc 1 1169 0
	movh	%d15, 4
	addi	%d15, %d15, 16390
	st.w	[%a14] -4, %d15
.L29:
	.loc 1 1172 0
	ld.w	%d15, [%a14] -28
	mov.a	%a7, %d15
	ld.bu	%d15, [%a7] 37
	jz	%d15, .L30
	.loc 1 1174 0
	mov	%d4, 4
	call	TRAP_UnregisterTrapHandler
	mov	%d15, %d2
	jz	%d15, .L30
	.loc 1 1176 0
	movh	%d15, 4
	addi	%d15, %d15, 16390
	st.w	[%a14] -4, %d15
.L30:
	.loc 1 1181 0
	movh	%d15, 63600
	mov.a	%a7, %d15
	lea	%a15, [%a7] 68
	movh	%d15, 63600
	addi	%d15, %d15, 68
	mov.a	%a7, %d15
	ld.w	%d15, [%a7]0
	or	%d15, %d15, 16
	st.w	[%a15]0, %d15
	.loc 1 1191 0
	movh	%d15, 63600
	mov.a	%a7, %d15
	lea	%a15, [%a7] 324
	movh	%d15, 63600
	addi	%d15, %d15, 324
	mov.a	%a7, %d15
	ld.w	%d15, [%a7]0
	or	%d15, %d15, 16
	st.w	[%a15]0, %d15
	.loc 1 1193 0
	movh	%d15, 63600
	mov.a	%a7, %d15
	lea	%a15, [%a7] 452
	movh	%d15, 63600
	addi	%d15, %d15, 452
	mov.a	%a7, %d15
	ld.w	%d15, [%a7]0
	or	%d15, %d15, 16
	st.w	[%a15]0, %d15
	.loc 1 1195 0
	movh	%d15, 63600
	mov.a	%a7, %d15
	lea	%a15, [%a7] 516
	movh	%d15, 63600
	addi	%d15, %d15, 516
	mov.a	%a7, %d15
	ld.w	%d15, [%a7]0
	or	%d15, %d15, 16
	st.w	[%a15]0, %d15
	.loc 1 1201 0
	movh	%d15, 63600
	mov.a	%a15, %d15
	add.a	%a15, 4
	movh	%d15, 63600
	add	%d15, 4
	mov.a	%a7, %d15
	ld.w	%d15, [%a7]0
	or	%d15, %d15, 16
	st.w	[%a15]0, %d15
	.loc 1 1205 0
	movh	%d15, 63600
	addi	%d15, %d15, 1040
	mov.a	%a7, %d15
	ld.w	%d15, [%a7]0
	movh	%d15, 63600
	addi	%d15, %d15, 1040
	movh.a	%a15, 32978
	lea	%a15, [%a15] -32559
	mov.a	%a7, %d15
	st.a	[%a7]0, %a15
	.loc 1 1206 0
	movh	%d15, 63600
	addi	%d15, %d15, 1044
	mov.a	%a7, %d15
	ld.w	%d15, [%a7]0
	movh	%d15, 63600
	addi	%d15, %d15, 1044
	movh.a	%a15, 12322
	lea	%a15, [%a15] -32559
	mov.a	%a7, %d15
	st.a	[%a7]0, %a15
	.loc 1 1215 0
	ld.w	%d15, [%a14] -28
	mov.a	%a7, %d15
	ld.bu	%d15, [%a7] 7
	jnz	%d15, .L31
	.loc 1 1219 0
	ld.w	%d15, [%a14] -28
	.loc 1 1217 0
	mov.a	%a7, %d15
	ld.bu	%d15, [%a7] 2
	mov	%d4, 2
	mov	%d5, 21
	mov	%d6, %d15
	call	Smu_SetAlarmAction
	mov	%d15, %d2
	st.b	[%a14] -13, %d15
	.loc 1 1222 0
	ld.w	%d15, [%a14] -28
	.loc 1 1220 0
	mov.a	%a7, %d15
	ld.bu	%d15, [%a7] 3
	mov	%d4, 2
	mov	%d5, 22
	mov	%d6, %d15
	call	Smu_SetAlarmAction
	mov	%d15, %d2
	st.b	[%a14] -14, %d15
	.loc 1 1225 0
	ld.w	%d15, [%a14] -28
	.loc 1 1223 0
	mov.a	%a7, %d15
	ld.bu	%d15, [%a7] 4
	mov	%d4, 2
	mov	%d5, 23
	mov	%d6, %d15
	call	Smu_SetAlarmAction
	mov	%d15, %d2
	st.b	[%a14] -15, %d15
	.loc 1 1228 0
	ld.w	%d15, [%a14] -28
	.loc 1 1226 0
	mov.a	%a7, %d15
	ld.bu	%d15, [%a7] 5
	mov	%d4, 3
	mov	%d5, 30
	mov	%d6, %d15
	call	Smu_SetAlarmAction
	mov	%d15, %d2
	st.b	[%a14] -16, %d15
	.loc 1 1229 0
	ld.bu	%d15, [%a14] -5
	movh.a	%a15, hi:SriTst_CurrentCpuSriAlm
	lea	%a15, [%a15] lo:SriTst_CurrentCpuSriAlm
	mov.d	%d1, %a15
	add	%d15, %d1
	mov.a	%a7, %d15
	ld.bu	%d15, [%a7]0
	mov.a	%a15, %d15
	.loc 1 1231 0
	ld.w	%d15, [%a14] -28
	.loc 1 1229 0
	mov.a	%a7, %d15
	ld.bu	%d15, [%a7]0
	mov.d	%d4, %a15
	mov	%d5, 19
	mov	%d6, %d15
	call	Smu_SetAlarmAction
	mov	%d15, %d2
	st.b	[%a14] -17, %d15
	.loc 1 1232 0
	ld.bu	%d15, [%a14] -5
	movh.a	%a15, hi:SriTst_CurrentCpuSriAlm
	lea	%a15, [%a15] lo:SriTst_CurrentCpuSriAlm
	mov.d	%d1, %a15
	add	%d15, %d1
	mov.a	%a7, %d15
	ld.bu	%d15, [%a7]0
	mov.a	%a15, %d15
	.loc 1 1234 0
	ld.w	%d15, [%a14] -28
	.loc 1 1232 0
	mov.a	%a7, %d15
	ld.bu	%d15, [%a7] 1
	mov.d	%d4, %a15
	mov	%d5, 18
	mov	%d6, %d15
	call	Smu_SetAlarmAction
	mov	%d15, %d2
	st.b	[%a14] -18, %d15
	.loc 1 1237 0
	ld.w	%d15, [%a14] -28
	.loc 1 1235 0
	mov.a	%a7, %d15
	ld.bu	%d15, [%a7] 6
	mov	%d4, 0
	mov	%d5, 7
	mov	%d6, %d15
	call	Smu_SetAlarmAction
	mov	%d15, %d2
	st.b	[%a14] -19, %d15
	.loc 1 1239 0
	ld.bu	%d15, [%a14] -13
	jnz	%d15, .L32
	.loc 1 1239 0 is_stmt 0 discriminator 1
	ld.bu	%d15, [%a14] -14
	jnz	%d15, .L32
	ld.bu	%d15, [%a14] -15
	jnz	%d15, .L32
	ld.bu	%d15, [%a14] -16
	jnz	%d15, .L32
	.loc 1 1240 0 is_stmt 1
	ld.bu	%d15, [%a14] -17
	jnz	%d15, .L32
	.loc 1 1240 0 is_stmt 0 discriminator 1
	ld.bu	%d15, [%a14] -18
	jnz	%d15, .L32
	ld.bu	%d15, [%a14] -19
	jz	%d15, .L31
.L32:
	.loc 1 1243 0 is_stmt 1
	movh	%d15, 4
	addi	%d15, %d15, 529
	st.w	[%a14] -4, %d15
.L31:
	.loc 1 1250 0
	ld.a	%a15, [%a14] -4
	movh	%d15, 4
	addi	%d15, %d15, 266
	mov.d	%d1, %a15
	jne	%d1, %d15, .L33
	.loc 1 1252 0
	movh	%d15, 4
	addi	%d15, %d15, 511
	st.w	[%a14] -4, %d15
.L33:
	.loc 1 1255 0
	ld.w	%d15, [%a14] -4
	.loc 1 1256 0
	mov	%d2, %d15
	ret
.LFE20:
	.size	SriTst_lRestore, .-SriTst_lRestore
	.align 2
	.type	SriTst_lProtectionTrapHandler, @function
SriTst_lProtectionTrapHandler:
.LFB21:
	.loc 1 1288 0
	mov.aa	%a14, %SP
.LCFI6:
	sub.a	%SP, 16
.LCFI7:
	st.w	[%a14] -12, %d4
	.loc 1 1289 0
	mov	%d15, 0
	st.b	[%a14] -1, %d15
	.loc 1 1292 0
	ld.w	%d15, [%a14] -12
	jne	%d15, 5, .L36
	.loc 1 1293 0 discriminator 1
	movh	%d15, hi:Sri_ExpectedTrapClass
	addi	%d15, %d15, lo:Sri_ExpectedTrapClass
	mov.a	%a7, %d15
	ld.w	%d15, [%a7]0
	.loc 1 1292 0 discriminator 1
	jne	%d15, 1, .L36
	.loc 1 1294 0
	movh	%d15, hi:Sri_ExpectedTrapId
	addi	%d15, %d15, lo:Sri_ExpectedTrapId
	mov.a	%a7, %d15
	ld.w	%d15, [%a7]0
	.loc 1 1293 0
	jne	%d15, 5, .L36
	.loc 1 1296 0
	mov	%d15, 1
	st.b	[%a14] -1, %d15
	.loc 1 1299 0
	movh	%d15, hi:Sri_ExpectedTrapClass
	mov.a	%a7, %d15
	lea	%a15, [%a7] lo:Sri_ExpectedTrapClass
	mov	%d15, 0
	st.w	[%a15]0, %d15
	.loc 1 1300 0
	movh	%d15, hi:Sri_ExpectedTrapId
	mov.a	%a7, %d15
	lea	%a15, [%a7] lo:Sri_ExpectedTrapId
	mov	%d15, 0
	st.w	[%a15]0, %d15
	.loc 1 1302 0
	movh	%d15, hi:Sri_MppTrapCount
	addi	%d15, %d15, lo:Sri_MppTrapCount
	mov.a	%a7, %d15
	ld.bu	%d15, [%a7]0
	eq	%d15, %d15, 255
	jnz	%d15, .L37
	.loc 1 1304 0
	movh	%d15, hi:Sri_MppTrapCount
	addi	%d15, %d15, lo:Sri_MppTrapCount
	mov.a	%a7, %d15
	ld.bu	%d15, [%a7]0
	add	%d15, 1
	and	%d15, 255
	movh.a	%a15, hi:Sri_MppTrapCount
	lea	%a15, [%a15] lo:Sri_MppTrapCount
	st.b	[%a15]0, %d15
.L37:
.LBB172:
.LBB173:
	.loc 3 190 0
#APP
	# 190 "../30_Bsw/STL_common/intrinsics.h" 1
	dsync
	# 0 "" 2
#NO_APP
.LBE173:
.LBE172:
.LBB174:
	.loc 1 1308 0
	mov	%d15, 0
	st.w	[%a14] -8, %d15
	ld.w	%d15, [%a14] -8
#APP
	# 1308 "../30_Bsw/MicroTestLib/Static/SriTst.c" 1
	mtcr LO:(0x9010), %d15
	# 0 "" 2
#NO_APP
.LBE174:
.LBB175:
.LBB176:
	.loc 3 184 0
#APP
	# 184 "../30_Bsw/STL_common/intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE176:
.LBE175:
	.loc 1 1308 0
	j	.L38
.L36:
	.loc 1 1314 0
	movh	%d15, hi:Sri_MppTrapCount
	mov.a	%a7, %d15
	lea	%a15, [%a7] lo:Sri_MppTrapCount
	mov	%d15, 0
	st.b	[%a15]0, %d15
.L38:
	.loc 1 1319 0
	ld.bu	%d15, [%a14] -1
	.loc 1 1320 0
	mov	%d2, %d15
	ret
.LFE21:
	.size	SriTst_lProtectionTrapHandler, .-SriTst_lProtectionTrapHandler
	.align 2
	.type	SriTst_lBusErrorTrapHandler, @function
SriTst_lBusErrorTrapHandler:
.LFB22:
	.loc 1 1353 0
	mov.aa	%a14, %SP
.LCFI8:
	sub.a	%SP, 32
.LCFI9:
	st.w	[%a14] -28, %d4
	.loc 1 1354 0
	mov	%d15, 0
	st.b	[%a14] -1, %d15
	.loc 1 1356 0
	ld.w	%d15, [%a14] -28
	add	%d15, -2
	jge.u	%d15, 5, .L40
	movh.a	%a15, hi:.L45
	lea	%a15, [%a15] lo:.L45
	mul	%d15, %d15, 4
	addsc.a	%a15, %a15, %d15, 0
	ji	%a15
	.align 2
	.align 2
.L45:
	.code32
	j	.L41
	.code32
	j	.L42
	.code32
	j	.L40
	.code32
	j	.L43
	.code32
	j	.L44
.L41:
	.loc 1 1359 0
	movh	%d15, hi:Sri_ExpectedTrapClass
	addi	%d15, %d15, lo:Sri_ExpectedTrapClass
	mov.a	%a7, %d15
	ld.w	%d15, [%a7]0
	jne	%d15, 4, .L56
	.loc 1 1360 0 discriminator 1
	movh	%d15, hi:Sri_ExpectedTrapId
	addi	%d15, %d15, lo:Sri_ExpectedTrapId
	mov.a	%a7, %d15
	ld.w	%d15, [%a7]0
	.loc 1 1359 0 discriminator 1
	jne	%d15, 2, .L56
	.loc 1 1362 0
	mov	%d15, 1
	st.b	[%a14] -1, %d15
	.loc 1 1365 0
	movh	%d15, hi:Sri_DseTrapCount
	addi	%d15, %d15, lo:Sri_DseTrapCount
	mov.a	%a7, %d15
	ld.bu	%d15, [%a7]0
	eq	%d15, %d15, 255
	jnz	%d15, .L47
	.loc 1 1367 0
	movh	%d15, hi:Sri_DseTrapCount
	addi	%d15, %d15, lo:Sri_DseTrapCount
	mov.a	%a7, %d15
	ld.bu	%d15, [%a7]0
	add	%d15, 1
	and	%d15, 255
	movh.a	%a15, hi:Sri_DseTrapCount
	lea	%a15, [%a15] lo:Sri_DseTrapCount
	st.b	[%a15]0, %d15
.L47:
.LBB177:
.LBB178:
	.loc 3 190 0
#APP
	# 190 "../30_Bsw/STL_common/intrinsics.h" 1
	dsync
	# 0 "" 2
#NO_APP
.LBE178:
.LBE177:
.LBB179:
	.loc 1 1371 0
	mov	%d15, 0
	st.w	[%a14] -8, %d15
	ld.w	%d15, [%a14] -8
#APP
	# 1371 "../30_Bsw/MicroTestLib/Static/SriTst.c" 1
	mtcr LO:(0x9010), %d15
	# 0 "" 2
#NO_APP
.LBE179:
.LBB180:
.LBB181:
	.loc 3 184 0
#APP
	# 184 "../30_Bsw/STL_common/intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE181:
.LBE180:
	.loc 1 1374 0
	j	.L56
.L42:
	.loc 1 1377 0
	movh	%d15, hi:Sri_ExpectedTrapClass
	addi	%d15, %d15, lo:Sri_ExpectedTrapClass
	mov.a	%a7, %d15
	ld.w	%d15, [%a7]0
	jne	%d15, 4, .L57
	.loc 1 1378 0 discriminator 1
	movh	%d15, hi:Sri_ExpectedTrapId
	addi	%d15, %d15, lo:Sri_ExpectedTrapId
	mov.a	%a7, %d15
	ld.w	%d15, [%a7]0
	.loc 1 1377 0 discriminator 1
	jne	%d15, 3, .L57
	.loc 1 1380 0
	mov	%d15, 1
	st.b	[%a14] -1, %d15
	.loc 1 1383 0
	movh	%d15, hi:Sri_DaeTrapCount
	addi	%d15, %d15, lo:Sri_DaeTrapCount
	mov.a	%a7, %d15
	ld.bu	%d15, [%a7]0
	eq	%d15, %d15, 255
	jnz	%d15, .L50
	.loc 1 1385 0
	movh	%d15, hi:Sri_DaeTrapCount
	addi	%d15, %d15, lo:Sri_DaeTrapCount
	mov.a	%a7, %d15
	ld.bu	%d15, [%a7]0
	add	%d15, 1
	and	%d15, 255
	movh.a	%a15, hi:Sri_DaeTrapCount
	lea	%a15, [%a15] lo:Sri_DaeTrapCount
	st.b	[%a15]0, %d15
.L50:
.LBB182:
.LBB183:
	.loc 3 190 0
#APP
	# 190 "../30_Bsw/STL_common/intrinsics.h" 1
	dsync
	# 0 "" 2
#NO_APP
.LBE183:
.LBE182:
.LBB184:
	.loc 1 1389 0
	mov	%d15, 0
	st.w	[%a14] -12, %d15
	ld.w	%d15, [%a14] -12
#APP
	# 1389 "../30_Bsw/MicroTestLib/Static/SriTst.c" 1
	mtcr LO:(0x9018), %d15
	# 0 "" 2
#NO_APP
.LBE184:
.LBB185:
.LBB186:
	.loc 3 184 0
#APP
	# 184 "../30_Bsw/STL_common/intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE186:
.LBE185:
	.loc 1 1392 0
	j	.L57
.L43:
	.loc 1 1399 0
	movh	%d15, hi:Sri_ExpectedTrapClass
	addi	%d15, %d15, lo:Sri_ExpectedTrapClass
	mov.a	%a7, %d15
	ld.w	%d15, [%a7]0
	jne	%d15, 4, .L58
	.loc 1 1400 0 discriminator 1
	movh	%d15, hi:Sri_ExpectedTrapId
	addi	%d15, %d15, lo:Sri_ExpectedTrapId
	mov.a	%a7, %d15
	ld.w	%d15, [%a7]0
	.loc 1 1399 0 discriminator 1
	jne	%d15, 5, .L58
	.loc 1 1402 0
	mov	%d15, 1
	st.b	[%a14] -1, %d15
	.loc 1 1405 0
	movh	%d15, hi:Sri_PietrTrapCount
	addi	%d15, %d15, lo:Sri_PietrTrapCount
	mov.a	%a7, %d15
	ld.bu	%d15, [%a7]0
	eq	%d15, %d15, 255
	jnz	%d15, .L52
	.loc 1 1407 0
	movh	%d15, hi:Sri_PietrTrapCount
	addi	%d15, %d15, lo:Sri_PietrTrapCount
	mov.a	%a7, %d15
	ld.bu	%d15, [%a7]0
	add	%d15, 1
	and	%d15, 255
	movh.a	%a15, hi:Sri_PietrTrapCount
	lea	%a15, [%a15] lo:Sri_PietrTrapCount
	st.b	[%a15]0, %d15
.L52:
.LBB187:
.LBB188:
	.loc 3 190 0
#APP
	# 190 "../30_Bsw/STL_common/intrinsics.h" 1
	dsync
	# 0 "" 2
#NO_APP
.LBE188:
.LBE187:
.LBB189:
	.loc 1 1411 0
	mov	%d15, 0
	st.w	[%a14] -16, %d15
	ld.w	%d15, [%a14] -16
#APP
	# 1411 "../30_Bsw/MicroTestLib/Static/SriTst.c" 1
	mtcr LO:(0x9214), %d15
	# 0 "" 2
#NO_APP
.LBE189:
.LBB190:
.LBB191:
	.loc 3 184 0
#APP
	# 184 "../30_Bsw/STL_common/intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE191:
.LBE190:
	.loc 1 1414 0
	j	.L58
.L44:
	.loc 1 1420 0
	movh	%d15, hi:Sri_ExpectedTrapClass
	addi	%d15, %d15, lo:Sri_ExpectedTrapClass
	mov.a	%a7, %d15
	ld.w	%d15, [%a7]0
	jne	%d15, 4, .L59
	.loc 1 1421 0 discriminator 1
	movh	%d15, hi:Sri_ExpectedTrapId
	addi	%d15, %d15, lo:Sri_ExpectedTrapId
	mov.a	%a7, %d15
	ld.w	%d15, [%a7]0
	.loc 1 1420 0 discriminator 1
	jne	%d15, 6, .L59
	.loc 1 1423 0
	mov	%d15, 1
	st.b	[%a14] -1, %d15
	.loc 1 1426 0
	movh	%d15, hi:Sri_DietrTrapCount
	addi	%d15, %d15, lo:Sri_DietrTrapCount
	mov.a	%a7, %d15
	ld.bu	%d15, [%a7]0
	eq	%d15, %d15, 255
	jnz	%d15, .L54
	.loc 1 1428 0
	movh	%d15, hi:Sri_DietrTrapCount
	addi	%d15, %d15, lo:Sri_DietrTrapCount
	mov.a	%a7, %d15
	ld.bu	%d15, [%a7]0
	add	%d15, 1
	and	%d15, 255
	movh.a	%a15, hi:Sri_DietrTrapCount
	lea	%a15, [%a15] lo:Sri_DietrTrapCount
	st.b	[%a15]0, %d15
.L54:
.LBB192:
.LBB193:
	.loc 3 190 0
#APP
	# 190 "../30_Bsw/STL_common/intrinsics.h" 1
	dsync
	# 0 "" 2
#NO_APP
.LBE193:
.LBE192:
.LBB194:
	.loc 1 1432 0
	mov	%d15, 0
	st.w	[%a14] -20, %d15
	ld.w	%d15, [%a14] -20
#APP
	# 1432 "../30_Bsw/MicroTestLib/Static/SriTst.c" 1
	mtcr LO:(0x9024), %d15
	# 0 "" 2
#NO_APP
.LBE194:
.LBB195:
.LBB196:
	.loc 3 184 0
#APP
	# 184 "../30_Bsw/STL_common/intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE196:
.LBE195:
	.loc 1 1435 0
	j	.L59
.L40:
	.loc 1 1438 0
	movh	%d15, hi:Sri_DseTrapCount
	mov.a	%a7, %d15
	lea	%a15, [%a7] lo:Sri_DseTrapCount
	mov	%d15, 0
	st.b	[%a15]0, %d15
	.loc 1 1439 0
	movh	%d15, hi:Sri_DaeTrapCount
	mov.a	%a7, %d15
	lea	%a15, [%a7] lo:Sri_DaeTrapCount
	mov	%d15, 0
	st.b	[%a15]0, %d15
	.loc 1 1440 0
	movh	%d15, hi:Sri_PietrTrapCount
	mov.a	%a7, %d15
	lea	%a15, [%a7] lo:Sri_PietrTrapCount
	mov	%d15, 0
	st.b	[%a15]0, %d15
	.loc 1 1441 0
	movh	%d15, hi:Sri_DietrTrapCount
	mov.a	%a7, %d15
	lea	%a15, [%a7] lo:Sri_DietrTrapCount
	mov	%d15, 0
	st.b	[%a15]0, %d15
	.loc 1 1442 0
	j	.L48
.L56:
	.loc 1 1374 0
	nop
	j	.L48
.L57:
	.loc 1 1392 0
	nop
	j	.L48
.L58:
	.loc 1 1414 0
	nop
	j	.L48
.L59:
	.loc 1 1435 0
	nop
.L48:
	.loc 1 1445 0
	ld.bu	%d15, [%a14] -1
	jne	%d15, 1, .L55
	.loc 1 1448 0
	movh	%d15, hi:Sri_ExpectedTrapClass
	mov.a	%a7, %d15
	lea	%a15, [%a7] lo:Sri_ExpectedTrapClass
	mov	%d15, 0
	st.w	[%a15]0, %d15
	.loc 1 1449 0
	movh	%d15, hi:Sri_ExpectedTrapId
	mov.a	%a7, %d15
	lea	%a15, [%a7] lo:Sri_ExpectedTrapId
	mov	%d15, 0
	st.w	[%a15]0, %d15
.L55:
	.loc 1 1452 0
	ld.bu	%d15, [%a14] -1
	.loc 1 1453 0
	mov	%d2, %d15
	ret
.LFE22:
	.size	SriTst_lBusErrorTrapHandler, .-SriTst_lBusErrorTrapHandler
	.align 2
	.type	SriTst_lSriBusErrorsTst, @function
SriTst_lSriBusErrorsTst:
.LFB23:
	.loc 1 1506 0
	mov.aa	%a14, %SP
.LCFI10:
	sub.a	%SP, 16
.LCFI11:
	st.w	[%a14] -12, %d4
	st.a	[%a14] -16, %a4
	.loc 1 1507 0
	movh	%d15, 4
	addi	%d15, %d15, 266
	st.w	[%a14] -4, %d15
	.loc 1 1518 0
	ld.a	%a4, [%a14] -16
	call	SriTst_lUser0AccTst
	st.w	[%a14] -4, %d2
	.loc 1 1519 0
	ld.a	%a15, [%a14] -4
	movh	%d15, 4
	addi	%d15, %d15, 511
	mov.d	%d1, %a15
	jne	%d1, %d15, .L61
	.loc 1 1524 0
	ld.a	%a4, [%a14] -16
	call	SriTst_lUser1AccTst
	st.w	[%a14] -4, %d2
	.loc 1 1527 0
	movh	%d15, 61444
	addi	%d2, %d15, -32696
	movh	%d15, 61444
	addi	%d15, %d15, -32696
	mov.a	%a7, %d15
	ld.a	%a15, [%a7]0
	movh	%d15, 10559
	addi	%d15, %d15, 7423
	mov.d	%d1, %a15
	and	%d15, %d1
	movh.a	%a15, 512
	mov.d	%d1, %a15
	or	%d15, %d1
	mov.a	%a7, %d2
	st.w	[%a7]0, %d15
	.loc 1 1529 0
	mov	%d4, 3
	mov	%d5, 30
	call	Smu_ClearAlarmStatus
	mov	%d15, %d2
	st.b	[%a14] -5, %d15
	.loc 1 1530 0
	ld.bu	%d15, [%a14] -5
	jz	%d15, .L62
	.loc 1 1534 0
	ld.a	%a15, [%a14] -4
	movh	%d15, 4
	addi	%d15, %d15, 511
	mov.d	%d1, %a15
	jne	%d1, %d15, .L62
	.loc 1 1536 0
	movh	%d15, 4
	addi	%d15, %d15, 527
	st.w	[%a14] -4, %d15
.L62:
	.loc 1 1540 0
	ld.a	%a15, [%a14] -4
	movh	%d15, 4
	addi	%d15, %d15, 511
	mov.d	%d1, %a15
	jne	%d1, %d15, .L61
	.loc 1 1545 0
	ld.a	%a4, [%a14] -16
	call	SriTst_lUnmappedAdrTst
	st.w	[%a14] -4, %d2
	.loc 1 1547 0
	movh	%d15, 61444
	addi	%d2, %d15, -32696
	movh	%d15, 61444
	addi	%d15, %d15, -32696
	mov.a	%a7, %d15
	ld.a	%a15, [%a7]0
	movh	%d15, 10559
	addi	%d15, %d15, 7423
	mov.d	%d1, %a15
	and	%d15, %d1
	movh.a	%a15, 512
	mov.d	%d1, %a15
	or	%d15, %d1
	mov.a	%a7, %d2
	st.w	[%a7]0, %d15
	.loc 1 1548 0
	mov	%d4, 3
	mov	%d5, 30
	call	Smu_ClearAlarmStatus
	mov	%d15, %d2
	st.b	[%a14] -5, %d15
	.loc 1 1549 0
	ld.bu	%d15, [%a14] -5
	jz	%d15, .L63
	.loc 1 1553 0
	ld.a	%a15, [%a14] -4
	movh	%d15, 4
	addi	%d15, %d15, 511
	mov.d	%d1, %a15
	jne	%d1, %d15, .L63
	.loc 1 1555 0
	movh	%d15, 4
	addi	%d15, %d15, 527
	st.w	[%a14] -4, %d15
.L63:
	.loc 1 1559 0
	ld.a	%a15, [%a14] -4
	movh	%d15, 4
	addi	%d15, %d15, 511
	mov.d	%d1, %a15
	jne	%d1, %d15, .L61
	.loc 1 1564 0
	ld.a	%a4, [%a14] -16
	call	SriTst_lUnsupportedOCTst
	st.w	[%a14] -4, %d2
	.loc 1 1566 0
	movh	%d15, 61444
	addi	%d2, %d15, -32696
	movh	%d15, 61444
	addi	%d15, %d15, -32696
	mov.a	%a7, %d15
	ld.a	%a15, [%a7]0
	movh	%d15, 10559
	addi	%d15, %d15, 7423
	mov.d	%d1, %a15
	and	%d15, %d1
	movh.a	%a15, 512
	mov.d	%d1, %a15
	or	%d15, %d1
	mov.a	%a7, %d2
	st.w	[%a7]0, %d15
	.loc 1 1567 0
	mov	%d4, 3
	mov	%d5, 30
	call	Smu_ClearAlarmStatus
	mov	%d15, %d2
	st.b	[%a14] -5, %d15
	.loc 1 1568 0
	ld.bu	%d15, [%a14] -5
	jz	%d15, .L64
	.loc 1 1572 0
	ld.a	%a15, [%a14] -4
	movh	%d15, 4
	addi	%d15, %d15, 511
	mov.d	%d1, %a15
	jne	%d1, %d15, .L64
	.loc 1 1574 0
	movh	%d15, 4
	addi	%d15, %d15, 527
	st.w	[%a14] -4, %d15
.L64:
	.loc 1 1577 0
	ld.a	%a15, [%a14] -4
	movh	%d15, 4
	addi	%d15, %d15, 511
	mov.d	%d1, %a15
	jne	%d1, %d15, .L61
	.loc 1 1583 0
	ld.w	%d4, [%a14] -12
	ld.a	%a4, [%a14] -16
	call	SriTst_lInvalidTransactionIdTst
	st.w	[%a14] -4, %d2
	.loc 1 1584 0
	movh	%d15, 61444
	addi	%d2, %d15, -32696
	movh	%d15, 61444
	addi	%d15, %d15, -32696
	mov.a	%a7, %d15
	ld.a	%a15, [%a7]0
	movh	%d15, 10559
	addi	%d15, %d15, 7423
	mov.d	%d1, %a15
	and	%d15, %d1
	movh.a	%a15, 512
	mov.d	%d1, %a15
	or	%d15, %d1
	mov.a	%a7, %d2
	st.w	[%a7]0, %d15
.L61:
	.loc 1 1608 0
	ld.w	%d15, [%a14] -4
	.loc 1 1609 0
	mov	%d2, %d15
	ret
.LFE23:
	.size	SriTst_lSriBusErrorsTst, .-SriTst_lSriBusErrorsTst
	.align 2
	.type	SriTst_lInvalidTransactionIdTst, @function
SriTst_lInvalidTransactionIdTst:
.LFB24:
	.loc 1 1759 0
	mov.aa	%a14, %SP
.LCFI12:
	sub.a	%SP, 80
.LCFI13:
	st.w	[%a14] -76, %d4
	st.a	[%a14] -80, %a4
	.loc 1 1760 0
	movh	%d15, 4
	addi	%d15, %d15, 266
	st.w	[%a14] -4, %d15
	.loc 1 1765 0
	mov	%d15, 0
	st.w	[%a14] -56, %d15
	.loc 1 1767 0
	mov	%d15, 0
	st.w	[%a14] -64, %d15
	mov	%d15, 0
	st.w	[%a14] -60, %d15
	.loc 1 1773 0
	movh	%d15, 4096
	st.w	[%a14] -72, %d15
	.loc 1 1785 0
	call	Mcal_GetCoreId
	mov	%d15, %d2
	st.b	[%a14] -5, %d15
	.loc 1 1789 0
	movh	%d15, hi:SriTst_ConfigRoot
	mov.a	%a7, %d15
	lea	%a15, [%a7] lo:SriTst_ConfigRoot
	ld.w	%d15, [%a14] -76
	mul	%d15, %d15, 28
	mov.d	%d1, %a15
	add	%d15, %d1
	addi	%d15, %d15, 8
	mov.a	%a7, %d15
	ld.w	%d15, [%a7]0
	st.w	[%a14] -12, %d15
	.loc 1 1790 0
	ld.w	%d15, [%a14] -12
	mov.a	%a7, %d15
	ld.w	%d15, [%a7]0
	st.w	[%a14] -64, %d15
	.loc 1 1791 0
	ld.w	%d15, [%a14] -12
	mov.a	%a7, %d15
	ld.w	%d15, [%a7] 4
	st.w	[%a14] -60, %d15
	.loc 1 1794 0
	mov.d	%d1, %a14
	addi	%d15, %d1, -52
	mov.a	%a4, %d15
	call	SriTst_lEnableMtuClock
	st.w	[%a14] -16, %d2
	.loc 1 1795 0
	ld.a	%a15, [%a14] -16
	movh	%d15, 4
	addi	%d15, %d15, 511
	mov.d	%d1, %a15
	jne	%d1, %d15, .L66
	.loc 1 1798 0
	ld.bu	%d15, [%a14] -5
	ld.a	%a4, [%a14] -12
	mov	%d4, %d15
	call	SriTst_lInjectPsprError
	st.w	[%a14] -16, %d2
	.loc 1 1799 0
	ld.a	%a15, [%a14] -16
	movh	%d15, 4
	addi	%d15, %d15, 511
	mov.d	%d1, %a15
	jne	%d1, %d15, .L67
	.loc 1 1802 0
	movh	%d15, 63600
	addi	%d15, %d15, 1048
	mov.a	%a7, %d15
	ld.w	%d15, [%a7]0
	st.w	[%a14] -20, %d15
	.loc 1 1803 0
	movh	%d15, 63600
	mov.a	%a7, %d15
	lea	%a15, [%a7] 1048
	movh	%d15, 63600
	addi	%d15, %d15, 1048
	mov.a	%a7, %d15
	ld.w	%d2, [%a7]0
	ld.bu	%d15, [%a14] -5
	sh	%d15, 2
	mov.d	%d1, %a14
	add	%d15, %d1
	addi	%d15, %d15, -72
	mov.a	%a7, %d15
	ld.w	%d15, [%a7]0
	or	%d15, %d2
	st.w	[%a15]0, %d15
	.loc 1 1806 0
	movh	%d15, hi:Sri_ExpectedTrapClass
	mov.a	%a7, %d15
	lea	%a15, [%a7] lo:Sri_ExpectedTrapClass
	mov	%d15, 4
	st.w	[%a15]0, %d15
	.loc 1 1807 0
	movh	%d15, hi:Sri_ExpectedTrapId
	mov.a	%a7, %d15
	lea	%a15, [%a7] lo:Sri_ExpectedTrapId
	mov	%d15, 2
	st.w	[%a15]0, %d15
	.loc 1 1810 0
	ld.w	%d15, [%a14] -12
	mov.a	%a7, %d15
	ld.w	%d15, [%a7]0
	st.w	[%a14] -56, %d15
	.loc 1 1813 0
	ld.w	%d15, [%a14] -80
	mov.a	%a7, %d15
	ld.a	%a15, [%a7]0
	movh	%d15, hi:Sri_DseTrapCount
	addi	%d15, %d15, lo:Sri_DseTrapCount
	mov.a	%a7, %d15
	ld.bu	%d15, [%a7]0
	st.a	[%a14] -28, %a15
	st.w	[%a14] -32, %d15
.LBB197:
.LBB198:
	.loc 2 400 0
	ld.w	%d15, [%a14] -28
	ld.a	%a15, [%a14] -32
	mov.d	%d1, %a15
#APP
	# 400 "../30_Bsw/STL_common/Mcal_Compiler.h" 1
	crc32 %d15, %d1, %d15
	# 0 "" 2
#NO_APP
	st.w	[%a14] -36, %d15
	.loc 2 401 0
	ld.w	%d15, [%a14] -36
.LBE198:
.LBE197:
	.loc 1 1813 0
	ld.a	%a15, [%a14] -80
	st.w	[%a15]0, %d15
	.loc 1 1816 0
	movh	%d15, hi:Sri_DseTrapCount
	addi	%d15, %d15, lo:Sri_DseTrapCount
	mov.a	%a7, %d15
	ld.bu	%d15, [%a7]0
	jeq	%d15, 1, .L68
	.loc 1 1818 0
	movh	%d15, 4
	addi	%d15, %d15, 16405
	st.w	[%a14] -4, %d15
.L68:
	.loc 1 1822 0
	ld.w	%d15, [%a14] -80
	mov.a	%a7, %d15
	ld.a	%a15, [%a7]0
	movh	%d15, 63600
	addi	%d15, %d15, 1044
	mov.a	%a7, %d15
	ld.w	%d2, [%a7]0
	ld.bu	%d15, [%a14] -5
	sh	%d15, 2
	mov.d	%d1, %a14
	add	%d15, %d1
	addi	%d15, %d15, -72
	mov.a	%a7, %d15
	ld.w	%d15, [%a7]0
	and	%d15, %d2
	st.a	[%a14] -40, %a15
	st.w	[%a14] -44, %d15
.LBB199:
.LBB200:
	.loc 2 400 0
	ld.w	%d15, [%a14] -40
	ld.a	%a15, [%a14] -44
	mov.d	%d1, %a15
#APP
	# 400 "../30_Bsw/STL_common/Mcal_Compiler.h" 1
	crc32 %d15, %d1, %d15
	# 0 "" 2
#NO_APP
	st.w	[%a14] -48, %d15
	.loc 2 401 0
	ld.w	%d15, [%a14] -48
.LBE200:
.LBE199:
	.loc 1 1822 0
	ld.a	%a15, [%a14] -80
	st.w	[%a15]0, %d15
	.loc 1 1827 0
	movh	%d15, 63600
	addi	%d15, %d15, 1044
	mov.a	%a7, %d15
	ld.a	%a15, [%a7]0
	ld.bu	%d15, [%a14] -5
	sh	%d15, 2
	mov.d	%d1, %a14
	add	%d15, %d1
	addi	%d15, %d15, -72
	mov.a	%a7, %d15
	ld.w	%d15, [%a7]0
	mov.d	%d1, %a15
	and	%d15, %d1
	jnz	%d15, .L69
	.loc 1 1829 0
	movh	%d15, 4
	addi	%d15, %d15, 16405
	st.w	[%a14] -4, %d15
.L69:
	.loc 1 1833 0
	ld.a	%a15, [%a14] -12
	mov.d	%d1, %a14
	addi	%d15, %d1, -64
	mov.a	%a7, %d15
#APP
	# 1833 "../30_Bsw/MicroTestLib/Static/SriTst.c" 1
	                           
   mov.aa %a2,%a7          
   ld.d   %e4,[%a2+]0    
   st.d   [%a15+]0,%e4      

	# 0 "" 2
	.loc 1 1836 0
#NO_APP
	movh	%d15, 63600
	mov.a	%a7, %d15
	lea	%a15, [%a7] 1044
	ld.bu	%d15, [%a14] -5
	sh	%d15, 2
	mov.d	%d1, %a14
	add	%d15, %d1
	addi	%d15, %d15, -72
	mov.a	%a7, %d15
	ld.w	%d15, [%a7]0
	st.w	[%a15]0, %d15
	.loc 1 1839 0
	ld.bu	%d15, [%a14] -5
	jnz	%d15, .L70
.LBB201:
.LBB202:
	.loc 3 190 0
#APP
	# 190 "../30_Bsw/STL_common/intrinsics.h" 1
	dsync
	# 0 "" 2
#NO_APP
.LBE202:
.LBE201:
.LBB203:
	.loc 1 1841 0
	mov	%d15, 0
	st.w	[%a14] -24, %d15
	ld.w	%d15, [%a14] -24
#APP
	# 1841 "../30_Bsw/MicroTestLib/Static/SriTst.c" 1
	mtcr LO:(0x9214), %d15
	# 0 "" 2
#NO_APP
.LBE203:
.LBB204:
.LBB205:
	.loc 3 184 0
#APP
	# 184 "../30_Bsw/STL_common/intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
	j	.L71
.L70:
.LBE205:
.LBE204:
	.loc 1 1845 0
	movh	%d15, 63618
	addi	%d15, %d15, -28140
	mov.a	%a15, 0
	mov.a	%a7, %d15
	st.a	[%a7]0, %a15
.L71:
	.loc 1 1849 0
	mov	%d4, 0
	mov	%d5, 7
	call	Smu_ClearAlarmStatus
	mov	%d15, %d2
	jz	%d15, .L72
	.loc 1 1852 0
	movh	%d15, 4
	addi	%d15, %d15, 527
	st.w	[%a14] -4, %d15
.L72:
	.loc 1 1857 0
	mov	%d4, 3
	mov	%d5, 30
	call	Smu_ClearAlarmStatus
	mov	%d15, %d2
	jz	%d15, .L73
	.loc 1 1860 0
	movh	%d15, 4
	addi	%d15, %d15, 527
	st.w	[%a14] -4, %d15
.L73:
	.loc 1 1865 0
	movh	%d15, 63600
	addi	%d15, %d15, 1048
	ld.a	%a15, [%a14] -20
	mov.a	%a7, %d15
	st.a	[%a7]0, %a15
	j	.L74
.L67:
	.loc 1 1869 0
	ld.w	%d15, [%a14] -16
	st.w	[%a14] -4, %d15
.L74:
	.loc 1 1872 0
	ld.bu	%d15, [%a14] -5
	jnz	%d15, .L75
	.loc 1 1881 0
	movh	%d15, 61446
	mov.a	%a7, %d15
	lea	%a15, [%a7] 8208
	mov	%d15, 30735
	st.h	[%a15]0, %d15
	.loc 1 1882 0
	movh	%d15, 61446
	addi	%d15, %d15, 8208
	mov.a	%a7, %d15
	ld.hu	%d15, [%a7]0
	st.h	[%a14] -66, %d15
	.loc 1 1883 0
	ld.hu	%d15, [%a14] -66
	andn	%d15, %d15, ~(-16)
	extr.u	%d15, %d15, 0, 16
	st.h	[%a14] -66, %d15
	.loc 1 1893 0
	ld.hu	%d15, [%a14] -66
	or	%d15, %d15, 16
	extr.u	%d15, %d15, 0, 16
	st.h	[%a14] -66, %d15
	.loc 1 1895 0
	movh	%d15, 61446
	mov.a	%a7, %d15
	lea	%a15, [%a7] 8208
	mov	%d15, 30735
	st.h	[%a15]0, %d15
	.loc 1 1896 0
	movh	%d15, 61446
	mov.a	%a7, %d15
	lea	%a15, [%a7] 8208
	ld.hu	%d15, [%a14] -66
	st.h	[%a15]0, %d15
	j	.L76
.L75:
	.loc 1 1905 0
	mov	%d4, 22960
	call	Mcal_ResetSafetyENDINIT_Timed
	.loc 1 1906 0
	call	SriTst_lEnablePspr0Mc
	st.w	[%a14] -16, %d2
	.loc 1 1907 0
	ld.a	%a15, [%a14] -16
	movh	%d15, 4
	addi	%d15, %d15, 511
	mov.d	%d1, %a15
	jne	%d1, %d15, .L77
	.loc 1 1909 0
	movh	%d15, 61446
	mov.a	%a7, %d15
	lea	%a15, [%a7] 8208
	movh	%d15, 61446
	addi	%d15, %d15, 8208
	mov.a	%a7, %d15
	ld.hu	%d15, [%a7]0
	andn	%d15, %d15, ~(-16)
	extr.u	%d15, %d15, 0, 16
	st.h	[%a15]0, %d15
	.loc 1 1919 0
	movh	%d15, 61446
	mov.a	%a7, %d15
	lea	%a15, [%a7] 8208
	movh	%d15, 61446
	addi	%d15, %d15, 8208
	mov.a	%a7, %d15
	ld.hu	%d15, [%a7]0
	or	%d15, %d15, 16
	extr.u	%d15, %d15, 0, 16
	st.h	[%a15]0, %d15
	.loc 1 1923 0
	call	SriTst_lDisablePspr0Mc
	st.w	[%a14] -16, %d2
	.loc 1 1924 0
	ld.a	%a15, [%a14] -16
	movh	%d15, 4
	addi	%d15, %d15, 511
	mov.d	%d1, %a15
	jeq	%d1, %d15, .L78
	.loc 1 1926 0
	ld.w	%d15, [%a14] -16
	st.w	[%a14] -4, %d15
	j	.L78
.L77:
	.loc 1 1931 0
	ld.w	%d15, [%a14] -16
	st.w	[%a14] -4, %d15
.L78:
	.loc 1 1933 0
	call	Mcal_SetSafetyENDINIT_Timed
.L76:
	.loc 1 1936 0
	ld.w	%d15, [%a14] -52
	jz	%d15, .L79
	.loc 1 1938 0
	call	SriTst_lDisableMtuClock
	st.w	[%a14] -16, %d2
	.loc 1 1939 0
	ld.a	%a15, [%a14] -16
	movh	%d15, 4
	addi	%d15, %d15, 511
	mov.d	%d1, %a15
	jeq	%d1, %d15, .L79
	.loc 1 1941 0
	ld.w	%d15, [%a14] -16
	st.w	[%a14] -4, %d15
	j	.L79
.L66:
	.loc 1 1947 0
	ld.w	%d15, [%a14] -16
	st.w	[%a14] -4, %d15
.L79:
	.loc 1 1951 0
	ld.a	%a15, [%a14] -4
	movh	%d15, 4
	addi	%d15, %d15, 266
	mov.d	%d1, %a15
	jne	%d1, %d15, .L80
	.loc 1 1953 0
	movh	%d15, 4
	addi	%d15, %d15, 511
	st.w	[%a14] -4, %d15
.L80:
	.loc 1 1957 0
	movh	%d15, hi:Sri_DseTrapCount
	mov.a	%a7, %d15
	lea	%a15, [%a7] lo:Sri_DseTrapCount
	mov	%d15, 0
	st.b	[%a15]0, %d15
	.loc 1 1958 0
	ld.w	%d15, [%a14] -56
	.loc 1 1959 0
	ld.w	%d15, [%a14] -4
	.loc 1 1960 0
	mov	%d2, %d15
	ret
.LFE24:
	.size	SriTst_lInvalidTransactionIdTst, .-SriTst_lInvalidTransactionIdTst
	.align 2
	.type	SriTst_lInjectPsprError, @function
SriTst_lInjectPsprError:
.LFB25:
	.loc 1 2006 0
	mov.aa	%a14, %SP
.LCFI14:
	sub.a	%SP, 64
.LCFI15:
	st.a	[%a14] -60, %a4
	mov	%d15, %d4
	st.b	[%a14] -61, %d15
	.loc 1 2009 0
	mov	%d15, 0
	st.w	[%a14] -8, %d15
	.loc 1 2010 0
	movh	%d15, 4
	addi	%d15, %d15, 266
	st.w	[%a14] -12, %d15
	.loc 1 2012 0
	movh	%d15, 61446
	addi	%d15, %d15, 8352
	st.w	[%a14] -16, %d15
	.loc 1 2013 0
	movh	%d15, 42406
	addi	%d15, %d15, -23131
	st.w	[%a14] -48, %d15
	movh	%d15, 42406
	addi	%d15, %d15, -23131
	st.w	[%a14] -44, %d15
	.loc 1 2022 0
	ld.bu	%d15, [%a14] -61
	jnz	%d15, .L82
	.loc 1 2024 0
	call	Mcal_ResetENDINIT
.LBB206:
	.loc 1 2025 0
#APP
	# 2025 "../30_Bsw/MicroTestLib/Static/SriTst.c" 1
	mfcr %d15, LO:(0x920C)
	# 0 "" 2
#NO_APP
	st.w	[%a14] -20, %d15
	ld.w	%d15, [%a14] -20
.LBE206:
	st.w	[%a14] -24, %d15
	.loc 1 2028 0
	ld.w	%d15, [%a14] -24
	and	%d15, %d15, 2
	st.w	[%a14] -8, %d15
	.loc 1 2031 0
	ld.w	%d15, [%a14] -24
	or	%d15, %d15, 2
	st.w	[%a14] -24, %d15
.LBB207:
.LBB208:
	.loc 3 190 0
#APP
	# 190 "../30_Bsw/STL_common/intrinsics.h" 1
	dsync
	# 0 "" 2
#NO_APP
.LBE208:
.LBE207:
.LBB209:
	.loc 1 2032 0
	ld.w	%d15, [%a14] -24
	st.w	[%a14] -28, %d15
	ld.w	%d15, [%a14] -28
#APP
	# 2032 "../30_Bsw/MicroTestLib/Static/SriTst.c" 1
	mtcr LO:(0x920C), %d15
	# 0 "" 2
#NO_APP
.LBE209:
.LBB210:
.LBB211:
	.loc 3 184 0
#APP
	# 184 "../30_Bsw/STL_common/intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE211:
.LBE210:
	.loc 1 2033 0
	call	Mcal_SetENDINIT
.L82:
	.loc 1 2037 0
	call	Mcal_SuspendAllInterrupts
.LBB212:
.LBB213:
	.loc 3 190 0
#APP
	# 190 "../30_Bsw/STL_common/intrinsics.h" 1
	dsync
	# 0 "" 2
#NO_APP
.LBE213:
.LBE212:
	.loc 1 2043 0
	ld.w	%d15, [%a14] -60
	mov.a	%a7, %d15
	ld.w	%d15, [%a7]0
	st.w	[%a14] -52, %d15
	.loc 1 2046 0
	mov	%d4, 22960
	call	Mcal_ResetSafetyENDINIT_Timed
	.loc 1 2047 0
	call	SriTst_lEnablePspr0Mc
	st.w	[%a14] -32, %d2
	.loc 1 2048 0
	ld.a	%a15, [%a14] -32
	movh	%d15, 4
	addi	%d15, %d15, 511
	mov.d	%d1, %a15
	jne	%d1, %d15, .L83
	.loc 1 2051 0
	ld.w	%d15, [%a14] -16
	mov.a	%a15, 3
	mov.d	%d1, %a15
	mov.a	%a7, %d15
	st.h	[%a7]0, %d1
	.loc 1 2052 0
	mov	%d15, 1
	st.b	[%a14] -1, %d15
	j	.L84
.L85:
	.loc 1 2054 0 discriminator 2
	ld.bu	%d15, [%a14] -1
	sh	%d15, 1
	ld.a	%a15, [%a14] -16
	mov.d	%d1, %a15
	add	%d15, %d1
	mov.a	%a15, 0
	mov.d	%d1, %a15
	mov.a	%a7, %d15
	st.h	[%a7]0, %d1
	.loc 1 2052 0 discriminator 2
	ld.b	%d15, [%a14] -1
	add	%d15, 1
	st.b	[%a14] -1, %d15
.L84:
	.loc 1 2052 0 is_stmt 0 discriminator 1
	ld.bu	%d15, [%a14] -1
	jlt.u	%d15, 5, .L85
	.loc 1 2058 0 is_stmt 1
	movh	%d15, 61446
	mov.a	%a7, %d15
	lea	%a15, [%a7] 8206
	movh	%d15, 61446
	addi	%d15, %d15, 8206
	mov.a	%a7, %d15
	ld.hu	%d15, [%a7]0
	or	%d15, %d15, 32
	extr.u	%d15, %d15, 0, 16
	st.h	[%a15]0, %d15
	.loc 1 2061 0
	call	SriTst_lDisablePspr0Mc
	st.w	[%a14] -32, %d2
	.loc 1 2062 0
	ld.a	%a15, [%a14] -32
	movh	%d15, 4
	addi	%d15, %d15, 511
	mov.d	%d1, %a15
	jne	%d1, %d15, .L86
	.loc 1 2065 0
	ld.a	%a15, [%a14] -60
	mov.d	%d1, %a14
	addi	%d15, %d1, -48
	mov.a	%a7, %d15
#APP
	# 2065 "../30_Bsw/MicroTestLib/Static/SriTst.c" 1
	                           
   mov.aa %a2,%a7          
   ld.d   %e4,[%a2+]0    
   st.d   [%a15+]0,%e4      

	# 0 "" 2
#NO_APP
.LBB214:
.LBB215:
	.loc 3 190 0
#APP
	# 190 "../30_Bsw/STL_common/intrinsics.h" 1
	dsync
	# 0 "" 2
#NO_APP
.LBE215:
.LBE214:
	.loc 1 2073 0
	ld.w	%d15, [%a14] -60
	mov.a	%a7, %d15
	ld.w	%d15, [%a7] 8
	st.w	[%a14] -52, %d15
	.loc 1 2076 0
	call	SriTst_lEnablePspr0Mc
	st.w	[%a14] -32, %d2
	.loc 1 2077 0
	ld.a	%a15, [%a14] -32
	movh	%d15, 4
	addi	%d15, %d15, 511
	mov.d	%d1, %a15
	jne	%d1, %d15, .L87
	.loc 1 2080 0
	movh	%d15, 61446
	mov.a	%a7, %d15
	lea	%a15, [%a7] 8206
	movh	%d15, 61446
	addi	%d15, %d15, 8206
	mov.a	%a7, %d15
	ld.hu	%d15, [%a7]0
	andn	%d15, %d15, ~(-33)
	extr.u	%d15, %d15, 0, 16
	st.h	[%a15]0, %d15
	.loc 1 2083 0
	call	SriTst_lDisablePspr0Mc
	st.w	[%a14] -12, %d2
	j	.L88
.L87:
	.loc 1 2087 0
	ld.w	%d15, [%a14] -32
	st.w	[%a14] -12, %d15
	j	.L88
.L86:
	.loc 1 2092 0
	ld.w	%d15, [%a14] -32
	st.w	[%a14] -12, %d15
	j	.L88
.L83:
	.loc 1 2097 0
	ld.w	%d15, [%a14] -32
	st.w	[%a14] -12, %d15
.L88:
	.loc 1 2100 0
	call	Mcal_SetSafetyENDINIT_Timed
	.loc 1 2103 0
	call	Mcal_ResumeAllInterrupts
	.loc 1 2106 0
	ld.bu	%d15, [%a14] -61
	jnz	%d15, .L89
	.loc 1 2108 0
	ld.w	%d15, [%a14] -8
	jnz	%d15, .L89
	.loc 1 2110 0
	call	Mcal_ResetENDINIT
.LBB216:
	.loc 1 2111 0
#APP
	# 2111 "../30_Bsw/MicroTestLib/Static/SriTst.c" 1
	mfcr %d15, LO:(0x920C)
	# 0 "" 2
#NO_APP
	st.w	[%a14] -36, %d15
	ld.w	%d15, [%a14] -36
.LBE216:
	st.w	[%a14] -24, %d15
	.loc 1 2112 0
	ld.w	%d15, [%a14] -24
	andn	%d15, %d15, ~(-3)
	st.w	[%a14] -24, %d15
.LBB217:
.LBB218:
	.loc 3 190 0
#APP
	# 190 "../30_Bsw/STL_common/intrinsics.h" 1
	dsync
	# 0 "" 2
#NO_APP
.LBE218:
.LBE217:
.LBB219:
	.loc 1 2113 0
	ld.w	%d15, [%a14] -24
	st.w	[%a14] -40, %d15
	ld.w	%d15, [%a14] -40
#APP
	# 2113 "../30_Bsw/MicroTestLib/Static/SriTst.c" 1
	mtcr LO:(0x920C), %d15
	# 0 "" 2
#NO_APP
.LBE219:
.LBB220:
.LBB221:
	.loc 3 184 0
#APP
	# 184 "../30_Bsw/STL_common/intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE221:
.LBE220:
	.loc 1 2114 0
	call	Mcal_SetENDINIT
.L89:
	.loc 1 2118 0
	ld.w	%d15, [%a14] -52
	.loc 1 2119 0
	ld.w	%d15, [%a14] -12
	.loc 1 2120 0
	mov	%d2, %d15
	ret
.LFE25:
	.size	SriTst_lInjectPsprError, .-SriTst_lInjectPsprError
	.align 2
	.type	SriTst_lEnablePspr0Mc, @function
SriTst_lEnablePspr0Mc:
.LFB26:
	.loc 1 2163 0
	mov.aa	%a14, %SP
.LCFI16:
	sub.a	%SP, 16
.LCFI17:
	.loc 1 2167 0
	movh	%d15, 4
	addi	%d15, %d15, 266
	st.w	[%a14] -12, %d15
	.loc 1 2170 0
	movh	%d15, 63488
	addi	%d15, %d15, 8240
	mov.a	%a7, %d15
	ld.w	%d15, [%a7]0
	and	%d15, %d15, 12
	ne	%d15, %d15, 12
	jnz	%d15, .L91
	.loc 1 2172 0
	movh	%d15, 1
	st.w	[%a14] -8, %d15
	j	.L92
.L91:
	.loc 1 2176 0
	movh	%d15, 3
	st.w	[%a14] -8, %d15
.L92:
	.loc 1 2185 0
	movh	%d15, 61446
	mov.a	%a7, %d15
	lea	%a15, [%a7] 16
	movh	%d15, 61446
	addi	%d15, %d15, 16
	mov.a	%a7, %d15
	ld.w	%d2, [%a7]0
	ld.w	%d15, [%a14] -8
	or	%d15, %d2
	st.w	[%a15]0, %d15
	.loc 1 2188 0
	mov	%d15, 0
	st.w	[%a14] -4, %d15
.L94:
	.loc 1 2191 0 discriminator 1
	ld.w	%d15, [%a14] -4
	add	%d15, 1
	st.w	[%a14] -4, %d15
	.loc 1 2192 0 discriminator 1
	movh	%d15, 61446
	addi	%d15, %d15, 56
	mov.a	%a7, %d15
	ld.a	%a15, [%a7]0
	ld.w	%d15, [%a14] -8
	mov.d	%d1, %a15
	and	%d15, %d1
	st.w	[%a14] -16, %d15
	.loc 1 2193 0 discriminator 1
	ld.a	%a15, [%a14] -4
	movh	%d15, 1
	mov.d	%d1, %a15
	jge.u	%d1, %d15, .L93
	ld.w	%d15, [%a14] -16
	jnz	%d15, .L94
.L93:
	.loc 1 2196 0
	movh	%d15, 61446
	addi	%d15, %d15, 56
	mov.a	%a7, %d15
	ld.a	%a15, [%a7]0
	ld.w	%d15, [%a14] -8
	mov.d	%d1, %a15
	and	%d15, %d1
	jz	%d15, .L95
	.loc 1 2199 0
	movh	%d15, 4
	addi	%d15, %d15, 16408
	st.w	[%a14] -12, %d15
	.loc 1 2202 0
	movh	%d15, 61446
	mov.a	%a7, %d15
	lea	%a15, [%a7] 16
	movh	%d15, 61446
	addi	%d15, %d15, 16
	mov.a	%a7, %d15
	ld.w	%d2, [%a7]0
	ld.w	%d15, [%a14] -8
	not	%d15
	and	%d15, %d2
	st.w	[%a15]0, %d15
	j	.L96
.L95:
	.loc 1 2206 0
	movh	%d15, 4
	addi	%d15, %d15, 511
	st.w	[%a14] -12, %d15
.L96:
	.loc 1 2209 0
	ld.w	%d15, [%a14] -12
	.loc 1 2210 0
	mov	%d2, %d15
	ret
.LFE26:
	.size	SriTst_lEnablePspr0Mc, .-SriTst_lEnablePspr0Mc
	.align 2
	.type	SriTst_lDisablePspr0Mc, @function
SriTst_lDisablePspr0Mc:
.LFB27:
	.loc 1 2245 0
	mov.aa	%a14, %SP
.LCFI18:
	sub.a	%SP, 16
.LCFI19:
	.loc 1 2249 0
	movh	%d15, 4
	addi	%d15, %d15, 266
	st.w	[%a14] -12, %d15
	.loc 1 2252 0
	movh	%d15, 63488
	addi	%d15, %d15, 8240
	mov.a	%a7, %d15
	ld.w	%d15, [%a7]0
	and	%d15, %d15, 12
	ne	%d15, %d15, 12
	jnz	%d15, .L98
	.loc 1 2254 0
	movh	%d15, 1
	st.w	[%a14] -8, %d15
	j	.L99
.L98:
	.loc 1 2258 0
	movh	%d15, 3
	st.w	[%a14] -8, %d15
.L99:
	.loc 1 2262 0
	movh	%d15, 61446
	mov.a	%a7, %d15
	lea	%a15, [%a7] 16
	movh	%d15, 61446
	addi	%d15, %d15, 16
	mov.a	%a7, %d15
	ld.w	%d2, [%a7]0
	ld.w	%d15, [%a14] -8
	not	%d15
	and	%d15, %d2
	st.w	[%a15]0, %d15
	.loc 1 2264 0
	mov	%d15, 0
	st.w	[%a14] -4, %d15
.L101:
	.loc 1 2267 0 discriminator 1
	ld.w	%d15, [%a14] -4
	add	%d15, 1
	st.w	[%a14] -4, %d15
	.loc 1 2268 0 discriminator 1
	movh	%d15, 61446
	addi	%d15, %d15, 56
	mov.a	%a7, %d15
	ld.a	%a15, [%a7]0
	ld.w	%d15, [%a14] -8
	mov.d	%d1, %a15
	and	%d15, %d1
	st.w	[%a14] -16, %d15
	.loc 1 2269 0 discriminator 1
	ld.a	%a15, [%a14] -4
	movh	%d15, 1
	mov.d	%d1, %a15
	jge.u	%d1, %d15, .L100
	ld.w	%d15, [%a14] -16
	jnz	%d15, .L101
.L100:
	.loc 1 2272 0
	movh	%d15, 61446
	addi	%d15, %d15, 56
	mov.a	%a7, %d15
	ld.a	%a15, [%a7]0
	ld.w	%d15, [%a14] -8
	mov.d	%d1, %a15
	and	%d15, %d1
	jz	%d15, .L102
	.loc 1 2275 0
	movh	%d15, 4
	addi	%d15, %d15, 16408
	st.w	[%a14] -12, %d15
	j	.L103
.L102:
	.loc 1 2279 0
	movh	%d15, 4
	addi	%d15, %d15, 511
	st.w	[%a14] -12, %d15
.L103:
	.loc 1 2282 0
	ld.w	%d15, [%a14] -12
	.loc 1 2283 0
	mov	%d2, %d15
	ret
.LFE27:
	.size	SriTst_lDisablePspr0Mc, .-SriTst_lDisablePspr0Mc
	.align 2
	.type	SriTst_lEnableMtuClock, @function
SriTst_lEnableMtuClock:
.LFB28:
	.loc 1 2315 0
	mov.aa	%a14, %SP
.LCFI20:
	sub.a	%SP, 16
.LCFI21:
	st.a	[%a14] -12, %a4
	.loc 1 2316 0
	movh	%d15, 4
	addi	%d15, %d15, 16406
	st.w	[%a14] -4, %d15
	.loc 1 2320 0
	movh	%d15, 61446
	mov.a	%a7, %d15
	ld.w	%d15, [%a7]0
	and	%d15, %d15, 1
	ld.a	%a15, [%a14] -12
	st.w	[%a15]0, %d15
	.loc 1 2323 0
	call	Mcal_ResetENDINIT
	.loc 1 2324 0
	movh.a	%a15, 61446
	movh	%d15, 61446
	mov.a	%a7, %d15
	ld.w	%d15, [%a7]0
	andn	%d15, %d15, ~(-2)
	st.w	[%a15]0, %d15
	.loc 1 2325 0
	call	Mcal_SetENDINIT
	.loc 1 2326 0
	mov	%d15, 256
	st.w	[%a14] -8, %d15
	.loc 1 2327 0
	j	.L105
.L107:
	.loc 1 2329 0
	ld.w	%d15, [%a14] -8
	add	%d15, -1
	st.w	[%a14] -8, %d15
.L105:
	.loc 1 2327 0 discriminator 1
	movh	%d15, 61446
	mov.a	%a7, %d15
	ld.w	%d15, [%a7]0
	and	%d15, %d15, 2
	jz	%d15, .L106
	.loc 1 2327 0 is_stmt 0 discriminator 2
	ld.w	%d15, [%a14] -8
	jnz	%d15, .L107
.L106:
	.loc 1 2331 0 is_stmt 1
	movh	%d15, 61446
	mov.a	%a7, %d15
	ld.w	%d15, [%a7]0
	and	%d15, %d15, 2
	jnz	%d15, .L108
	.loc 1 2333 0
	movh	%d15, 4
	addi	%d15, %d15, 511
	st.w	[%a14] -4, %d15
.L108:
	.loc 1 2336 0
	ld.w	%d15, [%a14] -4
	.loc 1 2337 0
	mov	%d2, %d15
	ret
.LFE28:
	.size	SriTst_lEnableMtuClock, .-SriTst_lEnableMtuClock
	.align 2
	.type	SriTst_lDisableMtuClock, @function
SriTst_lDisableMtuClock:
.LFB29:
	.loc 1 2368 0
	mov.aa	%a14, %SP
.LCFI22:
	sub.a	%SP, 8
.LCFI23:
	.loc 1 2369 0
	movh	%d15, 4
	addi	%d15, %d15, 16406
	st.w	[%a14] -4, %d15
	.loc 1 2373 0
	call	Mcal_ResetENDINIT
	.loc 1 2374 0
	movh.a	%a15, 61446
	movh	%d15, 61446
	mov.a	%a7, %d15
	ld.w	%d15, [%a7]0
	or	%d15, %d15, 1
	st.w	[%a15]0, %d15
	.loc 1 2375 0
	call	Mcal_SetENDINIT
	.loc 1 2376 0
	mov	%d15, 256
	st.w	[%a14] -8, %d15
	.loc 1 2377 0
	j	.L110
.L112:
	.loc 1 2379 0
	ld.w	%d15, [%a14] -8
	add	%d15, -1
	st.w	[%a14] -8, %d15
.L110:
	.loc 1 2377 0 discriminator 1
	movh	%d15, 61446
	mov.a	%a7, %d15
	ld.w	%d15, [%a7]0
	and	%d15, %d15, 2
	jnz	%d15, .L111
	.loc 1 2377 0 is_stmt 0 discriminator 2
	ld.w	%d15, [%a14] -8
	jnz	%d15, .L112
.L111:
	.loc 1 2381 0 is_stmt 1
	movh	%d15, 61446
	mov.a	%a7, %d15
	ld.w	%d15, [%a7]0
	and	%d15, %d15, 2
	jz	%d15, .L113
	.loc 1 2383 0
	movh	%d15, 4
	addi	%d15, %d15, 511
	st.w	[%a14] -4, %d15
.L113:
	.loc 1 2386 0
	ld.w	%d15, [%a14] -4
	.loc 1 2387 0
	mov	%d2, %d15
	ret
.LFE29:
	.size	SriTst_lDisableMtuClock, .-SriTst_lDisableMtuClock
	.align 2
	.type	SriTst_lSlaveAddrDecoderTst, @function
SriTst_lSlaveAddrDecoderTst:
.LFB30:
	.loc 1 2441 0
	mov.aa	%a14, %SP
.LCFI24:
	sub.a	%SP, 72
.LCFI25:
	st.a	[%a14] -60, %a4
	st.a	[%a14] -64, %a5
	mov.a	%a15, %d4
	mov	%d15, %d5
	mov.d	%d1, %a15
	st.b	[%a14] -65, %d1
	st.b	[%a14] -66, %d15
	.loc 1 2443 0
	movh	%d15, 4
	addi	%d15, %d15, 266
	st.w	[%a14] -4, %d15
	.loc 1 2444 0
	mov	%d15, 1
	st.b	[%a14] -15, %d15
	.loc 1 2445 0
	mov	%d15, 1
	st.b	[%a14] -16, %d15
	.loc 1 2448 0
	mov	%d15, 1
	st.w	[%a14] -12, %d15
	.loc 1 2449 0
	mov	%d15, 0
	st.b	[%a14] -13, %d15
	.loc 1 2450 0
	ld.w	%d15, [%a14] -64
	st.w	[%a14] -20, %d15
	.loc 1 2451 0
	mov	%d15, 0
	st.w	[%a14] -56, %d15
	.loc 1 2452 0
	mov	%d15, 1
	st.b	[%a14] -14, %d15
	.loc 1 2457 0
	j	.L115
.L124:
	.loc 1 2460 0
	call	Mcal_ResetENDINIT
	.loc 1 2463 0
	movh	%d15, hi:Sri_ExpectedTrapClass
	mov.a	%a7, %d15
	lea	%a15, [%a7] lo:Sri_ExpectedTrapClass
	mov	%d15, 4
	st.w	[%a15]0, %d15
	.loc 1 2464 0
	movh	%d15, hi:Sri_ExpectedTrapId
	mov.a	%a7, %d15
	lea	%a15, [%a7] lo:Sri_ExpectedTrapId
	mov	%d15, 2
	st.w	[%a15]0, %d15
	.loc 1 2466 0
	ld.a	%a15, [%a14] -12
	movh	%d15, 32768
	mov.d	%d1, %a15
	or	%d15, %d1
	st.w	[%a14] -24, %d15
.LBB222:
.LBB223:
	.loc 3 190 0
#APP
	# 190 "../30_Bsw/STL_common/intrinsics.h" 1
	dsync
	# 0 "" 2
#NO_APP
.LBE223:
.LBE222:
.LBB224:
	.loc 1 2467 0
	ld.w	%d15, [%a14] -24
	st.w	[%a14] -28, %d15
	ld.w	%d15, [%a14] -28
#APP
	# 2467 "../30_Bsw/MicroTestLib/Static/SriTst.c" 1
	mtcr LO:(0x1030), %d15
	# 0 "" 2
#NO_APP
.LBE224:
.LBB225:
.LBB226:
	.loc 3 184 0
#APP
	# 184 "../30_Bsw/STL_common/intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE226:
.LBE225:
	.loc 1 2470 0
	ld.w	%d15, [%a14] -20
	mov.a	%a7, %d15
	ld.w	%d15, [%a7]0
	st.w	[%a14] -56, %d15
	.loc 1 2472 0
	call	Mcal_SetENDINIT
	.loc 1 2475 0
	mov	%d15, 0
	st.w	[%a14] -52, %d15
	.loc 1 2476 0
	mov	%d15, 2000
	st.w	[%a14] -8, %d15
	.loc 1 2479 0
	j	.L116
.L118:
	.loc 1 2481 0
	ld.w	%d15, [%a14] -8
	add	%d15, -1
	st.w	[%a14] -8, %d15
	.loc 1 2483 0
	ld.bu	%d1, [%a14] -65
	mov.a	%a15, %d1
	mov.d	%d2, %a14
	addi	%d15, %d2, -52
	mov.d	%d4, %a15
	mov.a	%a4, %d15
	call	Smu_GetAlarmStatus
	mov	%d15, %d2
	st.b	[%a14] -29, %d15
	.loc 1 2484 0
	ld.bu	%d15, [%a14] -29
	jz	%d15, .L116
	.loc 1 2486 0
	mov	%d15, 0
	st.w	[%a14] -52, %d15
	.loc 1 2487 0
	mov	%d15, 0
	st.w	[%a14] -8, %d15
.L116:
	.loc 1 2479 0 discriminator 1
	ld.w	%d15, [%a14] -52
	ld.bu	%d1, [%a14] -66
	mov.a	%a15, %d1
	mov.d	%d1, %a15
	rsub	%d2, %d1, 0
	sh	%d2, %d15, %d2
	mov	%d15, %d2
	and	%d15, %d15, 1
	jnz	%d15, .L117
	.loc 1 2479 0 is_stmt 0 discriminator 2
	ld.w	%d15, [%a14] -8
	jnz	%d15, .L118
.L117:
	.loc 1 2493 0 is_stmt 1
	ld.w	%d15, [%a14] -52
	ld.bu	%d2, [%a14] -66
	mov.a	%a15, %d2
	mov.d	%d2, %a15
	rsub	%d1, %d2, 0
	sh	%d1, %d15, %d1
	mov	%d15, %d1
	and	%d15, %d15, 1
	jnz	%d15, .L119
	.loc 1 2495 0
	movh	%d15, 4
	addi	%d15, %d15, 16401
	st.w	[%a14] -4, %d15
	.loc 1 2496 0
	mov	%d15, 0
	st.b	[%a14] -14, %d15
	j	.L120
.L119:
	.loc 1 2501 0
	ld.bu	%d15, [%a14] -65
	mov.a	%a15, %d15
	ld.bu	%d15, [%a14] -66
	mov.d	%d4, %a15
	mov	%d5, %d15
	call	Smu_ClearAlarmStatus
	mov	%d15, %d2
	st.b	[%a14] -15, %d15
	.loc 1 2502 0
	mov	%d4, 3
	mov	%d5, 30
	call	Smu_ClearAlarmStatus
	mov	%d15, %d2
	st.b	[%a14] -16, %d15
	.loc 1 2504 0
	ld.bu	%d15, [%a14] -15
	jnz	%d15, .L121
	.loc 1 2504 0 is_stmt 0 discriminator 1
	ld.bu	%d15, [%a14] -16
	jz	%d15, .L122
.L121:
	.loc 1 2506 0 is_stmt 1
	movh	%d15, 4
	addi	%d15, %d15, 527
	st.w	[%a14] -4, %d15
	.loc 1 2507 0
	mov	%d15, 0
	st.b	[%a14] -14, %d15
	j	.L120
.L122:
	.loc 1 2512 0
	ld.w	%d15, [%a14] -12
	sh	%d15, 1
	st.w	[%a14] -12, %d15
	.loc 1 2513 0
	ld.w	%d15, [%a14] -60
	mov.a	%a7, %d15
	ld.w	%d15, [%a7]0
	st.w	[%a14] -40, %d15
	ld.w	%d15, [%a14] -12
	st.w	[%a14] -44, %d15
.LBB227:
.LBB228:
	.loc 2 400 0
	ld.w	%d15, [%a14] -40
	ld.a	%a15, [%a14] -44
	mov.d	%d1, %a15
#APP
	# 400 "../30_Bsw/STL_common/Mcal_Compiler.h" 1
	crc32 %d15, %d1, %d15
	# 0 "" 2
#NO_APP
	st.w	[%a14] -48, %d15
	.loc 2 401 0
	ld.w	%d15, [%a14] -48
.LBE228:
.LBE227:
	.loc 1 2513 0
	ld.a	%a15, [%a14] -60
	st.w	[%a15]0, %d15
.L120:
	.loc 1 2516 0
	ld.b	%d15, [%a14] -13
	add	%d15, 1
	st.b	[%a14] -13, %d15
.L115:
	.loc 1 2457 0 discriminator 1
	ld.bu	%d15, [%a14] -13
	jge.u	%d15, 8, .L123
	.loc 1 2457 0 is_stmt 0 discriminator 2
	ld.bu	%d15, [%a14] -14
	jnz	%d15, .L124
.L123:
	.loc 1 2519 0 is_stmt 1
	ld.a	%a15, [%a14] -4
	movh	%d15, 4
	addi	%d15, %d15, 266
	mov.d	%d2, %a15
	jne	%d2, %d15, .L125
	.loc 1 2522 0
	movh	%d15, hi:Sri_DseTrapCount
	addi	%d15, %d15, lo:Sri_DseTrapCount
	mov.a	%a7, %d15
	ld.bu	%d15, [%a7]0
	eq	%d15, %d15, 8
	jnz	%d15, .L126
	.loc 1 2524 0
	movh	%d15, 4
	addi	%d15, %d15, 16404
	st.w	[%a14] -4, %d15
	j	.L125
.L126:
	.loc 1 2529 0
	movh	%d15, 4
	addi	%d15, %d15, 511
	st.w	[%a14] -4, %d15
.L125:
.LBB229:
.LBB230:
	.loc 3 190 0
#APP
	# 190 "../30_Bsw/STL_common/intrinsics.h" 1
	dsync
	# 0 "" 2
#NO_APP
.LBE230:
.LBE229:
.LBB231:
	.loc 1 2533 0
	mov	%d15, 0
	st.w	[%a14] -36, %d15
	ld.w	%d15, [%a14] -36
#APP
	# 2533 "../30_Bsw/MicroTestLib/Static/SriTst.c" 1
	mtcr LO:(0x9214), %d15
	# 0 "" 2
#NO_APP
.LBE231:
.LBB232:
.LBB233:
	.loc 3 184 0
#APP
	# 184 "../30_Bsw/STL_common/intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE233:
.LBE232:
	.loc 1 2536 0
	movh	%d15, hi:Sri_DseTrapCount
	mov.a	%a7, %d15
	lea	%a15, [%a7] lo:Sri_DseTrapCount
	mov	%d15, 0
	st.b	[%a15]0, %d15
	.loc 1 2537 0
	ld.w	%d15, [%a14] -56
	.loc 1 2539 0
	ld.w	%d15, [%a14] -4
	.loc 1 2540 0
	mov	%d2, %d15
	ret
.LFE30:
	.size	SriTst_lSlaveAddrDecoderTst, .-SriTst_lSlaveAddrDecoderTst
	.align 2
	.type	SriTst_lSlaveAddrDecoderXbarTst, @function
SriTst_lSlaveAddrDecoderXbarTst:
.LFB31:
	.loc 1 2586 0
	mov.aa	%a14, %SP
.LCFI26:
	sub.a	%SP, 56
.LCFI27:
	st.a	[%a14] -52, %a4
	.loc 1 2588 0
	movh	%d15, 4
	addi	%d15, %d15, 266
	st.w	[%a14] -4, %d15
	.loc 1 2589 0
	mov	%d15, 1
	st.b	[%a14] -15, %d15
	.loc 1 2590 0
	mov	%d15, 1
	st.b	[%a14] -16, %d15
	.loc 1 2593 0
	mov	%d15, 1
	st.w	[%a14] -12, %d15
	.loc 1 2594 0
	mov	%d15, 0
	st.b	[%a14] -13, %d15
	.loc 1 2595 0
	mov	%d15, 0
	st.w	[%a14] -48, %d15
	.loc 1 2596 0
	mov	%d15, 1
	st.b	[%a14] -14, %d15
	.loc 1 2600 0
	j	.L128
.L137:
	.loc 1 2603 0
	call	Mcal_ResetENDINIT
	.loc 1 2606 0
	movh	%d15, hi:Sri_ExpectedTrapClass
	mov.a	%a7, %d15
	lea	%a15, [%a7] lo:Sri_ExpectedTrapClass
	mov	%d15, 4
	st.w	[%a15]0, %d15
	.loc 1 2607 0
	movh	%d15, hi:Sri_ExpectedTrapId
	mov.a	%a7, %d15
	lea	%a15, [%a7] lo:Sri_ExpectedTrapId
	mov	%d15, 2
	st.w	[%a15]0, %d15
	.loc 1 2609 0
	ld.a	%a15, [%a14] -12
	movh	%d15, 32768
	mov.d	%d1, %a15
	or	%d15, %d1
	st.w	[%a14] -20, %d15
.LBB234:
.LBB235:
	.loc 3 190 0
#APP
	# 190 "../30_Bsw/STL_common/intrinsics.h" 1
	dsync
	# 0 "" 2
#NO_APP
.LBE235:
.LBE234:
.LBB236:
	.loc 1 2610 0
	ld.w	%d15, [%a14] -20
	st.w	[%a14] -24, %d15
	ld.w	%d15, [%a14] -24
#APP
	# 2610 "../30_Bsw/MicroTestLib/Static/SriTst.c" 1
	mtcr LO:(0x1030), %d15
	# 0 "" 2
#NO_APP
.LBE236:
.LBB237:
.LBB238:
	.loc 3 184 0
#APP
	# 184 "../30_Bsw/STL_common/intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE238:
.LBE237:
	.loc 1 2612 0
	movh	%d15, 63600
	addi	%d15, %d15, 1032
	mov.a	%a7, %d15
	ld.w	%d15, [%a7]0
	st.w	[%a14] -48, %d15
	.loc 1 2614 0
	call	Mcal_SetENDINIT
	.loc 1 2617 0
	mov	%d15, 0
	st.w	[%a14] -44, %d15
	.loc 1 2618 0
	mov	%d15, 2000
	st.w	[%a14] -8, %d15
	.loc 1 2621 0
	j	.L129
.L131:
	.loc 1 2624 0
	ld.w	%d15, [%a14] -8
	add	%d15, -1
	st.w	[%a14] -8, %d15
	.loc 1 2626 0
	mov.d	%d1, %a14
	addi	%d15, %d1, -44
	mov	%d4, 2
	mov.a	%a4, %d15
	call	Smu_GetAlarmStatus
	mov	%d15, %d2
	st.b	[%a14] -25, %d15
	.loc 1 2627 0
	ld.bu	%d15, [%a14] -25
	jz	%d15, .L129
	.loc 1 2629 0
	mov	%d15, 0
	st.w	[%a14] -44, %d15
	.loc 1 2630 0
	mov	%d15, 0
	st.w	[%a14] -8, %d15
.L129:
	.loc 1 2621 0 discriminator 1
	ld.a	%a15, [%a14] -44
	movh	%d15, 32
	mov.d	%d1, %a15
	and	%d15, %d1
	jnz	%d15, .L130
	.loc 1 2621 0 is_stmt 0 discriminator 2
	ld.w	%d15, [%a14] -8
	jnz	%d15, .L131
.L130:
	.loc 1 2636 0 is_stmt 1
	ld.a	%a15, [%a14] -44
	movh	%d15, 32
	mov.d	%d1, %a15
	and	%d15, %d1
	jnz	%d15, .L132
	.loc 1 2638 0
	movh	%d15, 4
	addi	%d15, %d15, 16401
	st.w	[%a14] -4, %d15
	.loc 1 2639 0
	mov	%d15, 0
	st.b	[%a14] -14, %d15
	j	.L133
.L132:
	.loc 1 2644 0
	mov	%d4, 2
	mov	%d5, 21
	call	Smu_ClearAlarmStatus
	mov	%d15, %d2
	st.b	[%a14] -15, %d15
	.loc 1 2646 0
	mov	%d4, 3
	mov	%d5, 30
	call	Smu_ClearAlarmStatus
	mov	%d15, %d2
	st.b	[%a14] -16, %d15
	.loc 1 2648 0
	ld.bu	%d15, [%a14] -15
	jnz	%d15, .L134
	.loc 1 2648 0 is_stmt 0 discriminator 1
	ld.bu	%d15, [%a14] -16
	jz	%d15, .L135
.L134:
	.loc 1 2650 0 is_stmt 1
	movh	%d15, 4
	addi	%d15, %d15, 527
	st.w	[%a14] -4, %d15
	.loc 1 2651 0
	mov	%d15, 0
	st.b	[%a14] -14, %d15
	j	.L133
.L135:
	.loc 1 2656 0
	ld.w	%d15, [%a14] -12
	sh	%d15, 1
	st.w	[%a14] -12, %d15
	.loc 1 2657 0
	ld.w	%d15, [%a14] -52
	mov.a	%a7, %d15
	ld.w	%d15, [%a7]0
	st.w	[%a14] -32, %d15
	ld.w	%d15, [%a14] -12
	st.w	[%a14] -36, %d15
.LBB239:
.LBB240:
	.loc 2 400 0
	ld.w	%d15, [%a14] -32
	ld.a	%a15, [%a14] -36
	mov.d	%d1, %a15
#APP
	# 400 "../30_Bsw/STL_common/Mcal_Compiler.h" 1
	crc32 %d15, %d1, %d15
	# 0 "" 2
#NO_APP
	st.w	[%a14] -40, %d15
	.loc 2 401 0
	ld.w	%d15, [%a14] -40
.LBE240:
.LBE239:
	.loc 1 2657 0
	ld.a	%a15, [%a14] -52
	st.w	[%a15]0, %d15
.L133:
	.loc 1 2660 0
	ld.b	%d15, [%a14] -13
	add	%d15, 1
	st.b	[%a14] -13, %d15
.L128:
	.loc 1 2600 0 discriminator 1
	ld.bu	%d15, [%a14] -13
	jge.u	%d15, 8, .L136
	.loc 1 2600 0 is_stmt 0 discriminator 2
	ld.bu	%d15, [%a14] -14
	jnz	%d15, .L137
.L136:
	.loc 1 2663 0 is_stmt 1
	ld.a	%a15, [%a14] -4
	movh	%d15, 4
	addi	%d15, %d15, 266
	mov.d	%d1, %a15
	jne	%d1, %d15, .L138
	.loc 1 2666 0
	movh	%d15, hi:Sri_DseTrapCount
	addi	%d15, %d15, lo:Sri_DseTrapCount
	mov.a	%a7, %d15
	ld.bu	%d15, [%a7]0
	eq	%d15, %d15, 8
	jnz	%d15, .L139
	.loc 1 2668 0
	movh	%d15, 4
	addi	%d15, %d15, 16404
	st.w	[%a14] -4, %d15
	j	.L138
.L139:
	.loc 1 2673 0
	movh	%d15, 4
	addi	%d15, %d15, 511
	st.w	[%a14] -4, %d15
.L138:
	.loc 1 2678 0
	movh	%d15, hi:Sri_DseTrapCount
	mov.a	%a7, %d15
	lea	%a15, [%a7] lo:Sri_DseTrapCount
	mov	%d15, 0
	st.b	[%a15]0, %d15
	.loc 1 2679 0
	ld.w	%d15, [%a14] -48
	.loc 1 2681 0
	ld.w	%d15, [%a14] -4
	.loc 1 2682 0
	mov	%d2, %d15
	ret
.LFE31:
	.size	SriTst_lSlaveAddrDecoderXbarTst, .-SriTst_lSlaveAddrDecoderXbarTst
	.align 2
	.type	SriTst_lSlaveDataDecoderTst, @function
SriTst_lSlaveDataDecoderTst:
.LFB32:
	.loc 1 2730 0
	mov.aa	%a14, %SP
.LCFI28:
	sub.a	%SP, 80
.LCFI29:
	st.a	[%a14] -68, %a4
	st.a	[%a14] -72, %a5
	mov.a	%a15, %d4
	mov	%d15, %d5
	mov.d	%d1, %a15
	st.b	[%a14] -73, %d1
	st.b	[%a14] -74, %d15
	.loc 1 2731 0
	movh	%d15, 4
	addi	%d15, %d15, 266
	st.w	[%a14] -4, %d15
	.loc 1 2734 0
	mov	%d15, 1
	st.w	[%a14] -12, %d15
	.loc 1 2735 0
	mov	%d15, 0
	st.b	[%a14] -13, %d15
	.loc 1 2736 0
	ld.w	%d15, [%a14] -72
	st.w	[%a14] -20, %d15
	.loc 1 2737 0
	mov	%d15, 0
	st.w	[%a14] -64, %d15
	.loc 1 2738 0
	ld.w	%d15, [%a14] -20
	mov.a	%a7, %d15
	ld.w	%d15, [%a7]0
	st.w	[%a14] -24, %d15
	.loc 1 2739 0
	mov	%d15, 1
	st.b	[%a14] -14, %d15
	.loc 1 2744 0
	j	.L141
.L149:
	.loc 1 2747 0
	call	Mcal_ResetENDINIT
	.loc 1 2748 0
	ld.a	%a15, [%a14] -12
	movh	%d15, 32768
	addi	%d15, %d15, 256
	mov.d	%d1, %a15
	or	%d15, %d1
	st.w	[%a14] -28, %d15
.LBB241:
.LBB242:
	.loc 3 190 0
#APP
	# 190 "../30_Bsw/STL_common/intrinsics.h" 1
	dsync
	# 0 "" 2
#NO_APP
.LBE242:
.LBE241:
.LBB243:
	.loc 1 2749 0
	ld.w	%d15, [%a14] -28
	st.w	[%a14] -32, %d15
	ld.w	%d15, [%a14] -32
#APP
	# 2749 "../30_Bsw/MicroTestLib/Static/SriTst.c" 1
	mtcr LO:(0x1030), %d15
	# 0 "" 2
#NO_APP
.LBE243:
.LBB244:
.LBB245:
	.loc 3 184 0
#APP
	# 184 "../30_Bsw/STL_common/intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE245:
.LBE244:
	.loc 1 2752 0
	ld.a	%a15, [%a14] -64
	ld.w	%d15, [%a14] -20
	mov.a	%a7, %d15
	st.a	[%a7]0, %a15
	.loc 1 2754 0
	call	Mcal_SetENDINIT
	.loc 1 2757 0
	mov	%d15, 0
	st.w	[%a14] -60, %d15
	.loc 1 2758 0
	mov	%d15, 2000
	st.w	[%a14] -8, %d15
	.loc 1 2761 0
	j	.L142
.L144:
	.loc 1 2764 0
	ld.w	%d15, [%a14] -8
	add	%d15, -1
	st.w	[%a14] -8, %d15
	.loc 1 2765 0
	ld.bu	%d1, [%a14] -73
	mov.a	%a15, %d1
	mov.d	%d2, %a14
	addi	%d15, %d2, -60
	mov.d	%d4, %a15
	mov.a	%a4, %d15
	call	Smu_GetAlarmStatus
	mov	%d15, %d2
	st.b	[%a14] -33, %d15
	.loc 1 2766 0
	ld.bu	%d15, [%a14] -33
	jz	%d15, .L142
	.loc 1 2768 0
	mov	%d15, 0
	st.w	[%a14] -60, %d15
	.loc 1 2769 0
	mov	%d15, 0
	st.w	[%a14] -8, %d15
.L142:
	.loc 1 2761 0 discriminator 1
	ld.w	%d15, [%a14] -60
	ld.bu	%d1, [%a14] -74
	mov.a	%a15, %d1
	mov.d	%d1, %a15
	rsub	%d2, %d1, 0
	sh	%d2, %d15, %d2
	mov	%d15, %d2
	and	%d15, %d15, 1
	jnz	%d15, .L143
	.loc 1 2761 0 is_stmt 0 discriminator 2
	ld.w	%d15, [%a14] -8
	jnz	%d15, .L144
.L143:
	.loc 1 2775 0 is_stmt 1
	ld.w	%d15, [%a14] -60
	ld.bu	%d2, [%a14] -74
	mov.a	%a15, %d2
	mov.d	%d2, %a15
	rsub	%d1, %d2, 0
	sh	%d1, %d15, %d1
	mov	%d15, %d1
	and	%d15, %d15, 1
	jnz	%d15, .L145
	.loc 1 2777 0
	movh	%d15, 4
	addi	%d15, %d15, 16403
	st.w	[%a14] -4, %d15
	.loc 1 2778 0
	mov	%d15, 0
	st.b	[%a14] -14, %d15
	j	.L146
.L145:
	.loc 1 2783 0
	ld.bu	%d15, [%a14] -73
	mov.a	%a15, %d15
	ld.bu	%d15, [%a14] -74
	mov.d	%d4, %a15
	mov	%d5, %d15
	call	Smu_ClearAlarmStatus
	mov	%d15, %d2
	st.b	[%a14] -33, %d15
	.loc 1 2784 0
	ld.bu	%d15, [%a14] -33
	jz	%d15, .L147
	.loc 1 2786 0
	movh	%d15, 4
	addi	%d15, %d15, 527
	st.w	[%a14] -4, %d15
	.loc 1 2787 0
	mov	%d15, 0
	st.b	[%a14] -14, %d15
	j	.L146
.L147:
	.loc 1 2792 0
	ld.w	%d15, [%a14] -12
	sh	%d15, 1
	st.w	[%a14] -12, %d15
	.loc 1 2793 0
	ld.w	%d15, [%a14] -68
	mov.a	%a7, %d15
	ld.w	%d15, [%a7]0
	st.w	[%a14] -48, %d15
	ld.w	%d15, [%a14] -12
	st.w	[%a14] -52, %d15
.LBB246:
.LBB247:
	.loc 2 400 0
	ld.w	%d15, [%a14] -48
	ld.a	%a15, [%a14] -52
	mov.d	%d1, %a15
#APP
	# 400 "../30_Bsw/STL_common/Mcal_Compiler.h" 1
	crc32 %d15, %d1, %d15
	# 0 "" 2
#NO_APP
	st.w	[%a14] -56, %d15
	.loc 2 401 0
	ld.w	%d15, [%a14] -56
.LBE247:
.LBE246:
	.loc 1 2793 0
	ld.a	%a15, [%a14] -68
	st.w	[%a15]0, %d15
.L146:
	.loc 1 2796 0
	ld.b	%d15, [%a14] -13
	add	%d15, 1
	st.b	[%a14] -13, %d15
.L141:
	.loc 1 2744 0 discriminator 1
	ld.bu	%d15, [%a14] -13
	jge.u	%d15, 8, .L148
	.loc 1 2744 0 is_stmt 0 discriminator 2
	ld.bu	%d15, [%a14] -14
	jnz	%d15, .L149
.L148:
	.loc 1 2800 0 is_stmt 1
	ld.w	%d15, [%a14] -20
	ld.a	%a15, [%a14] -24
	mov.a	%a7, %d15
	st.a	[%a7]0, %a15
	.loc 1 2803 0
	ld.a	%a15, [%a14] -4
	movh	%d15, 4
	addi	%d15, %d15, 266
	mov.d	%d1, %a15
	jne	%d1, %d15, .L150
	.loc 1 2805 0
	movh	%d15, 4
	addi	%d15, %d15, 511
	st.w	[%a14] -4, %d15
.L150:
.LBB248:
.LBB249:
	.loc 3 190 0
#APP
	# 190 "../30_Bsw/STL_common/intrinsics.h" 1
	dsync
	# 0 "" 2
#NO_APP
.LBE249:
.LBE248:
.LBB250:
	.loc 1 2808 0
	mov	%d15, 0
	st.w	[%a14] -40, %d15
	ld.w	%d15, [%a14] -40
#APP
	# 2808 "../30_Bsw/MicroTestLib/Static/SriTst.c" 1
	mtcr LO:(0x9024), %d15
	# 0 "" 2
#NO_APP
.LBE250:
.LBB251:
.LBB252:
	.loc 3 184 0
#APP
	# 184 "../30_Bsw/STL_common/intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE252:
.LBE251:
.LBB253:
.LBB254:
	.loc 3 190 0
#APP
	# 190 "../30_Bsw/STL_common/intrinsics.h" 1
	dsync
	# 0 "" 2
#NO_APP
.LBE254:
.LBE253:
.LBB255:
	.loc 1 2809 0
	mov	%d15, 0
	st.w	[%a14] -44, %d15
	ld.w	%d15, [%a14] -44
#APP
	# 2809 "../30_Bsw/MicroTestLib/Static/SriTst.c" 1
	mtcr LO:(0x9214), %d15
	# 0 "" 2
#NO_APP
.LBE255:
.LBB256:
.LBB257:
	.loc 3 184 0
#APP
	# 184 "../30_Bsw/STL_common/intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE257:
.LBE256:
	.loc 1 2811 0
	ld.w	%d15, [%a14] -4
	.loc 1 2812 0
	mov	%d2, %d15
	ret
.LFE32:
	.size	SriTst_lSlaveDataDecoderTst, .-SriTst_lSlaveDataDecoderTst
	.align 2
	.type	SriTst_lSlaveDataDecoderXbarTst, @function
SriTst_lSlaveDataDecoderXbarTst:
.LFB33:
	.loc 1 2854 0
	mov.aa	%a14, %SP
.LCFI30:
	sub.a	%SP, 56
.LCFI31:
	st.a	[%a14] -52, %a4
	.loc 1 2855 0
	movh	%d15, 4
	addi	%d15, %d15, 266
	st.w	[%a14] -4, %d15
	.loc 1 2858 0
	mov	%d15, 1
	st.w	[%a14] -12, %d15
	.loc 1 2859 0
	mov	%d15, 0
	st.b	[%a14] -13, %d15
	.loc 1 2861 0
	mov	%d15, 1
	st.b	[%a14] -14, %d15
	.loc 1 2871 0
	movh	%d15, 63600
	addi	%d15, %d15, 1048
	mov.a	%a7, %d15
	ld.w	%d15, [%a7]0
	st.w	[%a14] -48, %d15
	.loc 1 2874 0
	j	.L152
.L160:
	.loc 1 2877 0
	call	Mcal_ResetENDINIT
	.loc 1 2878 0
	ld.a	%a15, [%a14] -12
	movh	%d15, 32768
	addi	%d15, %d15, 256
	mov.d	%d1, %a15
	or	%d15, %d1
	st.w	[%a14] -20, %d15
.LBB258:
.LBB259:
	.loc 3 190 0
#APP
	# 190 "../30_Bsw/STL_common/intrinsics.h" 1
	dsync
	# 0 "" 2
#NO_APP
.LBE259:
.LBE258:
.LBB260:
	.loc 1 2879 0
	ld.w	%d15, [%a14] -20
	st.w	[%a14] -24, %d15
	ld.w	%d15, [%a14] -24
#APP
	# 2879 "../30_Bsw/MicroTestLib/Static/SriTst.c" 1
	mtcr LO:(0x1030), %d15
	# 0 "" 2
#NO_APP
.LBE260:
.LBB261:
.LBB262:
	.loc 3 184 0
#APP
	# 184 "../30_Bsw/STL_common/intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE262:
.LBE261:
	.loc 1 2881 0
	movh	%d15, 63600
	addi	%d15, %d15, 1048
	ld.a	%a15, [%a14] -48
	mov.a	%a7, %d15
	st.a	[%a7]0, %a15
	.loc 1 2883 0
	call	Mcal_SetENDINIT
	.loc 1 2886 0
	mov	%d15, 0
	st.w	[%a14] -44, %d15
	.loc 1 2887 0
	mov	%d15, 2000
	st.w	[%a14] -8, %d15
	.loc 1 2890 0
	j	.L153
.L155:
	.loc 1 2893 0
	ld.w	%d15, [%a14] -8
	add	%d15, -1
	st.w	[%a14] -8, %d15
	.loc 1 2894 0
	mov.d	%d1, %a14
	addi	%d15, %d1, -44
	mov	%d4, 2
	mov.a	%a4, %d15
	call	Smu_GetAlarmStatus
	mov	%d15, %d2
	st.b	[%a14] -25, %d15
	.loc 1 2895 0
	ld.bu	%d15, [%a14] -25
	jz	%d15, .L153
	.loc 1 2897 0
	mov	%d15, 0
	st.w	[%a14] -44, %d15
	.loc 1 2898 0
	mov	%d15, 0
	st.w	[%a14] -8, %d15
.L153:
	.loc 1 2890 0 discriminator 1
	ld.a	%a15, [%a14] -44
	movh	%d15, 64
	mov.d	%d1, %a15
	and	%d15, %d1
	jnz	%d15, .L154
	.loc 1 2890 0 is_stmt 0 discriminator 2
	ld.w	%d15, [%a14] -8
	jnz	%d15, .L155
.L154:
	.loc 1 2904 0 is_stmt 1
	ld.a	%a15, [%a14] -44
	movh	%d15, 64
	mov.d	%d1, %a15
	and	%d15, %d1
	jnz	%d15, .L156
	.loc 1 2906 0
	movh	%d15, 4
	addi	%d15, %d15, 16403
	st.w	[%a14] -4, %d15
	.loc 1 2907 0
	mov	%d15, 0
	st.b	[%a14] -14, %d15
	j	.L157
.L156:
	.loc 1 2912 0
	mov	%d4, 2
	mov	%d5, 22
	call	Smu_ClearAlarmStatus
	mov	%d15, %d2
	st.b	[%a14] -25, %d15
	.loc 1 2914 0
	ld.bu	%d15, [%a14] -25
	jz	%d15, .L158
	.loc 1 2916 0
	movh	%d15, 4
	addi	%d15, %d15, 527
	st.w	[%a14] -4, %d15
	.loc 1 2917 0
	mov	%d15, 0
	st.b	[%a14] -14, %d15
	j	.L157
.L158:
	.loc 1 2922 0
	ld.w	%d15, [%a14] -12
	sh	%d15, 1
	st.w	[%a14] -12, %d15
	.loc 1 2923 0
	ld.w	%d15, [%a14] -52
	mov.a	%a7, %d15
	ld.w	%d15, [%a7]0
	st.w	[%a14] -32, %d15
	ld.w	%d15, [%a14] -12
	st.w	[%a14] -36, %d15
.LBB263:
.LBB264:
	.loc 2 400 0
	ld.w	%d15, [%a14] -32
	ld.a	%a15, [%a14] -36
	mov.d	%d1, %a15
#APP
	# 400 "../30_Bsw/STL_common/Mcal_Compiler.h" 1
	crc32 %d15, %d1, %d15
	# 0 "" 2
#NO_APP
	st.w	[%a14] -40, %d15
	.loc 2 401 0
	ld.w	%d15, [%a14] -40
.LBE264:
.LBE263:
	.loc 1 2923 0
	ld.a	%a15, [%a14] -52
	st.w	[%a15]0, %d15
.L157:
	.loc 1 2926 0
	ld.b	%d15, [%a14] -13
	add	%d15, 1
	st.b	[%a14] -13, %d15
.L152:
	.loc 1 2874 0 discriminator 1
	ld.bu	%d15, [%a14] -13
	jge.u	%d15, 8, .L159
	.loc 1 2874 0 is_stmt 0 discriminator 2
	ld.bu	%d15, [%a14] -14
	jnz	%d15, .L160
.L159:
	.loc 1 2930 0 is_stmt 1
	ld.a	%a15, [%a14] -4
	movh	%d15, 4
	addi	%d15, %d15, 266
	mov.d	%d1, %a15
	jne	%d1, %d15, .L161
	.loc 1 2932 0
	movh	%d15, 4
	addi	%d15, %d15, 511
	st.w	[%a14] -4, %d15
.L161:
	.loc 1 2935 0
	ld.w	%d15, [%a14] -4
	.loc 1 2936 0
	mov	%d2, %d15
	ret
.LFE33:
	.size	SriTst_lSlaveDataDecoderXbarTst, .-SriTst_lSlaveDataDecoderXbarTst
	.align 2
	.type	SriTst_lMasterDataDecoderTst, @function
SriTst_lMasterDataDecoderTst:
.LFB34:
	.loc 1 2985 0
	mov.aa	%a14, %SP
.LCFI32:
	sub.a	%SP, 72
.LCFI33:
	st.a	[%a14] -60, %a4
	st.a	[%a14] -64, %a5
	mov.a	%a15, %d4
	mov	%d15, %d5
	mov.d	%d1, %a15
	st.b	[%a14] -65, %d1
	st.b	[%a14] -66, %d15
	.loc 1 2986 0
	movh	%d15, 4
	addi	%d15, %d15, 266
	st.w	[%a14] -4, %d15
	.loc 1 2989 0
	mov	%d15, 1
	st.w	[%a14] -12, %d15
	.loc 1 2990 0
	mov	%d15, 0
	st.b	[%a14] -13, %d15
	.loc 1 2991 0
	ld.w	%d15, [%a14] -64
	st.w	[%a14] -20, %d15
	.loc 1 2992 0
	mov	%d15, 0
	st.w	[%a14] -56, %d15
	.loc 1 2993 0
	mov	%d15, 1
	st.b	[%a14] -14, %d15
	.loc 1 2998 0
	j	.L163
.L171:
	.loc 1 3003 0
	call	Mcal_SuspendAllInterrupts
	.loc 1 3006 0
	call	Mcal_ResetENDINIT
	.loc 1 3009 0
	movh	%d15, hi:Sri_ExpectedTrapClass
	mov.a	%a7, %d15
	lea	%a15, [%a7] lo:Sri_ExpectedTrapClass
	mov	%d15, 4
	st.w	[%a15]0, %d15
	.loc 1 3010 0
	movh	%d15, hi:Sri_ExpectedTrapId
	mov.a	%a7, %d15
	lea	%a15, [%a7] lo:Sri_ExpectedTrapId
	mov	%d15, 6
	st.w	[%a15]0, %d15
	.loc 1 3012 0
	ld.a	%a15, [%a14] -12
	movh	%d15, 32768
	addi	%d15, %d15, 512
	mov.d	%d1, %a15
	or	%d15, %d1
	st.w	[%a14] -24, %d15
.LBB265:
.LBB266:
	.loc 3 190 0
#APP
	# 190 "../30_Bsw/STL_common/intrinsics.h" 1
	dsync
	# 0 "" 2
#NO_APP
.LBE266:
.LBE265:
.LBB267:
	.loc 1 3013 0
	ld.w	%d15, [%a14] -24
	st.w	[%a14] -28, %d15
	ld.w	%d15, [%a14] -28
#APP
	# 3013 "../30_Bsw/MicroTestLib/Static/SriTst.c" 1
	mtcr LO:(0x1030), %d15
	# 0 "" 2
#NO_APP
.LBE267:
.LBB268:
.LBB269:
	.loc 3 184 0
#APP
	# 184 "../30_Bsw/STL_common/intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE269:
.LBE268:
	.loc 1 3015 0
	ld.w	%d15, [%a14] -20
	mov.a	%a7, %d15
	ld.w	%d15, [%a7]0
	st.w	[%a14] -56, %d15
	.loc 1 3017 0
	call	Mcal_SetENDINIT
	.loc 1 3019 0
	call	Mcal_ResumeAllInterrupts
	.loc 1 3022 0
	mov	%d15, 0
	st.w	[%a14] -52, %d15
	.loc 1 3023 0
	mov	%d15, 2000
	st.w	[%a14] -8, %d15
	.loc 1 3026 0
	j	.L164
.L166:
	.loc 1 3029 0
	ld.w	%d15, [%a14] -8
	add	%d15, -1
	st.w	[%a14] -8, %d15
	.loc 1 3030 0
	ld.bu	%d1, [%a14] -65
	mov.a	%a15, %d1
	mov.d	%d2, %a14
	addi	%d15, %d2, -52
	mov.d	%d4, %a15
	mov.a	%a4, %d15
	call	Smu_GetAlarmStatus
	mov	%d15, %d2
	st.b	[%a14] -29, %d15
	.loc 1 3031 0
	ld.bu	%d15, [%a14] -29
	jz	%d15, .L164
	.loc 1 3033 0
	mov	%d15, 0
	st.w	[%a14] -52, %d15
	.loc 1 3034 0
	mov	%d15, 0
	st.w	[%a14] -8, %d15
.L164:
	.loc 1 3026 0 discriminator 1
	ld.w	%d15, [%a14] -52
	ld.bu	%d1, [%a14] -66
	mov.a	%a15, %d1
	mov.d	%d1, %a15
	rsub	%d2, %d1, 0
	sh	%d2, %d15, %d2
	mov	%d15, %d2
	and	%d15, %d15, 1
	jnz	%d15, .L165
	.loc 1 3026 0 is_stmt 0 discriminator 2
	ld.w	%d15, [%a14] -8
	jnz	%d15, .L166
.L165:
	.loc 1 3040 0 is_stmt 1
	ld.w	%d15, [%a14] -52
	ld.bu	%d2, [%a14] -66
	mov.a	%a15, %d2
	mov.d	%d2, %a15
	rsub	%d1, %d2, 0
	sh	%d1, %d15, %d1
	mov	%d15, %d1
	and	%d15, %d15, 1
	jnz	%d15, .L167
	.loc 1 3042 0
	movh	%d15, 4
	addi	%d15, %d15, 16402
	st.w	[%a14] -4, %d15
	.loc 1 3043 0
	mov	%d15, 0
	st.b	[%a14] -14, %d15
	j	.L168
.L167:
	.loc 1 3048 0
	ld.bu	%d15, [%a14] -65
	mov.a	%a15, %d15
	ld.bu	%d15, [%a14] -66
	mov.d	%d4, %a15
	mov	%d5, %d15
	call	Smu_ClearAlarmStatus
	mov	%d15, %d2
	st.b	[%a14] -29, %d15
	.loc 1 3049 0
	ld.bu	%d15, [%a14] -29
	jz	%d15, .L169
	.loc 1 3051 0
	movh	%d15, 4
	addi	%d15, %d15, 527
	st.w	[%a14] -4, %d15
	.loc 1 3052 0
	mov	%d15, 0
	st.b	[%a14] -14, %d15
	j	.L168
.L169:
	.loc 1 3057 0
	ld.w	%d15, [%a14] -12
	sh	%d15, 1
	st.w	[%a14] -12, %d15
	.loc 1 3058 0
	ld.w	%d15, [%a14] -60
	mov.a	%a7, %d15
	ld.w	%d15, [%a7]0
	st.w	[%a14] -40, %d15
	ld.w	%d15, [%a14] -12
	st.w	[%a14] -44, %d15
.LBB270:
.LBB271:
	.loc 2 400 0
	ld.w	%d15, [%a14] -40
	ld.a	%a15, [%a14] -44
	mov.d	%d1, %a15
#APP
	# 400 "../30_Bsw/STL_common/Mcal_Compiler.h" 1
	crc32 %d15, %d1, %d15
	# 0 "" 2
#NO_APP
	st.w	[%a14] -48, %d15
	.loc 2 401 0
	ld.w	%d15, [%a14] -48
.LBE271:
.LBE270:
	.loc 1 3058 0
	ld.a	%a15, [%a14] -60
	st.w	[%a15]0, %d15
.L168:
	.loc 1 3061 0
	ld.b	%d15, [%a14] -13
	add	%d15, 1
	st.b	[%a14] -13, %d15
.L163:
	.loc 1 2998 0 discriminator 1
	ld.bu	%d15, [%a14] -13
	jge.u	%d15, 8, .L170
	.loc 1 2998 0 is_stmt 0 discriminator 2
	ld.bu	%d15, [%a14] -14
	jnz	%d15, .L171
.L170:
	.loc 1 3065 0 is_stmt 1
	ld.a	%a15, [%a14] -4
	movh	%d15, 4
	addi	%d15, %d15, 266
	mov.d	%d2, %a15
	jne	%d2, %d15, .L172
	.loc 1 3067 0
	movh	%d15, hi:Sri_DietrTrapCount
	addi	%d15, %d15, lo:Sri_DietrTrapCount
	mov.a	%a7, %d15
	ld.bu	%d15, [%a7]0
	ne	%d15, %d15, 8
	jnz	%d15, .L173
	.loc 1 3069 0
	movh	%d15, 4
	addi	%d15, %d15, 511
	st.w	[%a14] -4, %d15
	j	.L172
.L173:
	.loc 1 3073 0
	movh	%d15, 4
	addi	%d15, %d15, 16409
	st.w	[%a14] -4, %d15
.L172:
.LBB272:
.LBB273:
	.loc 3 190 0
#APP
	# 190 "../30_Bsw/STL_common/intrinsics.h" 1
	dsync
	# 0 "" 2
#NO_APP
.LBE273:
.LBE272:
.LBB274:
	.loc 1 3078 0
	mov	%d15, 0
	st.w	[%a14] -36, %d15
	ld.w	%d15, [%a14] -36
#APP
	# 3078 "../30_Bsw/MicroTestLib/Static/SriTst.c" 1
	mtcr LO:(0x9024), %d15
	# 0 "" 2
#NO_APP
.LBE274:
.LBB275:
.LBB276:
	.loc 3 184 0
#APP
	# 184 "../30_Bsw/STL_common/intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE276:
.LBE275:
	.loc 1 3081 0
	movh	%d15, hi:Sri_DietrTrapCount
	mov.a	%a7, %d15
	lea	%a15, [%a7] lo:Sri_DietrTrapCount
	mov	%d15, 0
	st.b	[%a15]0, %d15
	.loc 1 3082 0
	ld.w	%d15, [%a14] -56
	.loc 1 3084 0
	ld.w	%d15, [%a14] -4
	.loc 1 3085 0
	mov	%d2, %d15
	ret
.LFE34:
	.size	SriTst_lMasterDataDecoderTst, .-SriTst_lMasterDataDecoderTst
	.align 2
	.type	SriTst_lMasterDataDecoderPMITst, @function
SriTst_lMasterDataDecoderPMITst:
.LFB35:
	.loc 1 3133 0
	mov.aa	%a14, %SP
.LCFI34:
	sub.a	%SP, 64
.LCFI35:
	st.a	[%a14] -60, %a4
	st.a	[%a14] -64, %a5
	.loc 1 3134 0
	movh	%d15, 4
	addi	%d15, %d15, 266
	st.w	[%a14] -4, %d15
	.loc 1 3137 0
	mov	%d15, 1
	st.w	[%a14] -12, %d15
	.loc 1 3138 0
	mov	%d15, 0
	st.b	[%a14] -13, %d15
	.loc 1 3139 0
	ld.w	%d15, [%a14] -64
	st.w	[%a14] -20, %d15
	.loc 1 3140 0
	ld.w	%d15, [%a14] -64
	mov.a	%a7, %d15
	ld.w	%d15, [%a7]0
	st.w	[%a14] -24, %d15
	.loc 1 3142 0
	mov	%d15, 1
	st.b	[%a14] -14, %d15
	.loc 1 3147 0
	call	Mcal_GetCoreId
	mov	%d15, %d2
	st.b	[%a14] -25, %d15
	.loc 1 3156 0
	ld.a	%a15, [%a14] -20
	mov	%d15, -28672
	st.h	[%a15]0, %d15
	.loc 1 3157 0
	ld.w	%d15, [%a14] -20
	mov.a	%a15, %d15
	add.a	%a15, 2
	mov	%d15, -28672
	st.h	[%a15]0, %d15
	.loc 1 3160 0
	j	.L175
.L183:
	.loc 1 3165 0
	call	Mcal_SuspendAllInterrupts
	.loc 1 3167 0
	call	Mcal_ResetENDINIT
	.loc 1 3170 0
	movh	%d15, hi:Sri_ExpectedTrapClass
	mov.a	%a7, %d15
	lea	%a15, [%a7] lo:Sri_ExpectedTrapClass
	mov	%d15, 4
	st.w	[%a15]0, %d15
	.loc 1 3171 0
	movh	%d15, hi:Sri_ExpectedTrapId
	mov.a	%a7, %d15
	lea	%a15, [%a7] lo:Sri_ExpectedTrapId
	mov	%d15, 5
	st.w	[%a15]0, %d15
.LBB277:
.LBB278:
	.loc 3 184 0
#APP
	# 184 "../30_Bsw/STL_common/intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE278:
.LBE277:
	.loc 1 3178 0
	ld.w	%d15, [%a14] -64
#APP
	# 3178 "../30_Bsw/MicroTestLib/Static/SriTst.c" 1
	mov.a %a2, %d15 

	# 0 "" 2
	.loc 1 3187 0
#NO_APP
	ld.a	%a15, [%a14] -12
	movh	%d15, 32768
	addi	%d15, %d15, 512
	mov.d	%d1, %a15
	or	%d15, %d1
	st.w	[%a14] -32, %d15
.LBB279:
.LBB280:
	.loc 3 190 0
#APP
	# 190 "../30_Bsw/STL_common/intrinsics.h" 1
	dsync
	# 0 "" 2
#NO_APP
.LBE280:
.LBE279:
.LBB281:
	.loc 1 3188 0
	ld.w	%d15, [%a14] -32
	st.w	[%a14] -36, %d15
	ld.w	%d15, [%a14] -36
#APP
	# 3188 "../30_Bsw/MicroTestLib/Static/SriTst.c" 1
	mtcr LO:(0x1030), %d15
	# 0 "" 2
#NO_APP
.LBE281:
.LBB282:
.LBB283:
	.loc 3 184 0
#APP
	# 184 "../30_Bsw/STL_common/intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE283:
.LBE282:
	.loc 1 3194 0
#APP
	# 3194 "../30_Bsw/MicroTestLib/Static/SriTst.c" 1
	calli %a2
	# 0 "" 2
	.loc 1 3202 0
#NO_APP
	call	Mcal_SetENDINIT
	.loc 1 3204 0
	call	Mcal_ResumeAllInterrupts
	.loc 1 3207 0
	mov	%d15, 0
	st.w	[%a14] -56, %d15
	.loc 1 3208 0
	mov	%d15, 2000
	st.w	[%a14] -8, %d15
	.loc 1 3211 0
	j	.L176
.L178:
	.loc 1 3214 0
	ld.w	%d15, [%a14] -8
	add	%d15, -1
	st.w	[%a14] -8, %d15
	.loc 1 3215 0
	ld.bu	%d15, [%a14] -25
	movh.a	%a15, hi:SriTst_CurrentCpuSriAlm
	lea	%a15, [%a15] lo:SriTst_CurrentCpuSriAlm
	mov.d	%d1, %a15
	add	%d15, %d1
	mov.a	%a7, %d15
	ld.bu	%d15, [%a7]0
	mov.a	%a15, %d15
	mov.d	%d1, %a14
	addi	%d15, %d1, -56
	mov.d	%d4, %a15
	mov.a	%a4, %d15
	call	Smu_GetAlarmStatus
	mov	%d15, %d2
	st.b	[%a14] -37, %d15
	.loc 1 3217 0
	ld.bu	%d15, [%a14] -37
	jz	%d15, .L176
	.loc 1 3219 0
	mov	%d15, 0
	st.w	[%a14] -56, %d15
	.loc 1 3220 0
	mov	%d15, 0
	st.w	[%a14] -8, %d15
.L176:
	.loc 1 3211 0 discriminator 1
	ld.a	%a15, [%a14] -56
	movh	%d15, 4
	mov.d	%d1, %a15
	and	%d15, %d1
	jnz	%d15, .L177
	.loc 1 3211 0 is_stmt 0 discriminator 2
	ld.w	%d15, [%a14] -8
	jnz	%d15, .L178
.L177:
	.loc 1 3227 0 is_stmt 1
	ld.a	%a15, [%a14] -56
	movh	%d15, 4
	mov.d	%d1, %a15
	and	%d15, %d1
	jnz	%d15, .L179
	.loc 1 3229 0
	movh	%d15, 4
	addi	%d15, %d15, 16402
	st.w	[%a14] -4, %d15
	.loc 1 3230 0
	mov	%d15, 0
	st.b	[%a14] -14, %d15
	j	.L180
.L179:
	.loc 1 3235 0
	ld.bu	%d15, [%a14] -25
	movh.a	%a15, hi:SriTst_CurrentCpuSriAlm
	lea	%a15, [%a15] lo:SriTst_CurrentCpuSriAlm
	mov.d	%d1, %a15
	add	%d15, %d1
	mov.a	%a7, %d15
	ld.bu	%d15, [%a7]0
	mov	%d4, %d15
	mov	%d5, 18
	call	Smu_ClearAlarmStatus
	mov	%d15, %d2
	st.b	[%a14] -37, %d15
	.loc 1 3237 0
	ld.bu	%d15, [%a14] -37
	jz	%d15, .L181
	.loc 1 3239 0
	movh	%d15, 4
	addi	%d15, %d15, 527
	st.w	[%a14] -4, %d15
	.loc 1 3240 0
	mov	%d15, 0
	st.b	[%a14] -14, %d15
	j	.L180
.L181:
	.loc 1 3245 0
	ld.w	%d15, [%a14] -12
	sh	%d15, 1
	st.w	[%a14] -12, %d15
	.loc 1 3246 0
	ld.w	%d15, [%a14] -60
	mov.a	%a7, %d15
	ld.w	%d15, [%a7]0
	st.w	[%a14] -44, %d15
	ld.w	%d15, [%a14] -12
	st.w	[%a14] -48, %d15
.LBB284:
.LBB285:
	.loc 2 400 0
	ld.w	%d15, [%a14] -44
	ld.a	%a15, [%a14] -48
	mov.d	%d1, %a15
#APP
	# 400 "../30_Bsw/STL_common/Mcal_Compiler.h" 1
	crc32 %d15, %d1, %d15
	# 0 "" 2
#NO_APP
	st.w	[%a14] -52, %d15
	.loc 2 401 0
	ld.w	%d15, [%a14] -52
.LBE285:
.LBE284:
	.loc 1 3246 0
	ld.a	%a15, [%a14] -60
	st.w	[%a15]0, %d15
.L180:
	.loc 1 3249 0
	ld.b	%d15, [%a14] -13
	add	%d15, 1
	st.b	[%a14] -13, %d15
.L175:
	.loc 1 3160 0 discriminator 1
	ld.bu	%d15, [%a14] -13
	jge.u	%d15, 8, .L182
	.loc 1 3160 0 is_stmt 0 discriminator 2
	ld.bu	%d15, [%a14] -14
	jnz	%d15, .L183
.L182:
	.loc 1 3253 0 is_stmt 1
	ld.w	%d15, [%a14] -64
	ld.a	%a15, [%a14] -24
	mov.a	%a7, %d15
	st.a	[%a7]0, %a15
	.loc 1 3256 0
	ld.a	%a15, [%a14] -4
	movh	%d15, 4
	addi	%d15, %d15, 266
	mov.d	%d1, %a15
	jne	%d1, %d15, .L184
	.loc 1 3258 0
	movh	%d15, hi:Sri_PietrTrapCount
	addi	%d15, %d15, lo:Sri_PietrTrapCount
	mov.a	%a7, %d15
	ld.bu	%d15, [%a7]0
	ne	%d15, %d15, 8
	jnz	%d15, .L185
	.loc 1 3260 0
	movh	%d15, 4
	addi	%d15, %d15, 511
	st.w	[%a14] -4, %d15
	j	.L184
.L185:
	.loc 1 3264 0
	movh	%d15, 4
	addi	%d15, %d15, 16409
	st.w	[%a14] -4, %d15
.L184:
	.loc 1 3269 0
	movh	%d15, hi:Sri_PietrTrapCount
	mov.a	%a7, %d15
	lea	%a15, [%a7] lo:Sri_PietrTrapCount
	mov	%d15, 0
	st.b	[%a15]0, %d15
	.loc 1 3271 0
	ld.w	%d15, [%a14] -4
	.loc 1 3272 0
	mov	%d2, %d15
	ret
.LFE35:
	.size	SriTst_lMasterDataDecoderPMITst, .-SriTst_lMasterDataDecoderPMITst
	.align 2
	.type	SriTst_lCPUDecodersTst, @function
SriTst_lCPUDecodersTst:
.LFB36:
	.loc 1 3329 0
	mov.aa	%a14, %SP
.LCFI36:
	sub.a	%SP, 24
.LCFI37:
	st.w	[%a14] -20, %d4
	st.a	[%a14] -24, %a4
	.loc 1 3336 0
	call	Mcal_GetCoreId
	mov	%d15, %d2
	st.b	[%a14] -9, %d15
	.loc 1 3338 0
	ld.bu	%d15, [%a14] -9
	movh.a	%a15, hi:SriTst_CurrentCpuSriAlm
	lea	%a15, [%a15] lo:SriTst_CurrentCpuSriAlm
	mov.d	%d1, %a15
	add	%d15, %d1
	mov.a	%a7, %d15
	ld.b	%d15, [%a7]0
	st.b	[%a14] -10, %d15
	.loc 1 3340 0
	ld.bu	%d15, [%a14] -9
	mov	%d4, %d15
	call	SriTst_lEnableOverlay
	.loc 1 3350 0
	movh	%d15, hi:dummy
	mov.a	%a7, %d15
	lea	%a15, [%a7] lo:dummy
	movh	%d15, 8192
	mov.d	%d1, %a15
	or	%d15, %d1
	.loc 1 3349 0
	ld.bu	%d1, [%a14] -10
	mov.a	%a15, %d1
	ld.a	%a4, [%a14] -24
	mov.a	%a5, %d15
	mov.d	%d4, %a15
	mov	%d5, 18
	call	SriTst_lSlaveAddrDecoderTst
	st.w	[%a14] -8, %d2
	.loc 1 3354 0
	ld.a	%a15, [%a14] -8
	movh	%d15, 4
	addi	%d15, %d15, 511
	mov.d	%d1, %a15
	jne	%d1, %d15, .L187
	.loc 1 3362 0
	movh	%d15, hi:dummy
	mov.a	%a7, %d15
	lea	%a15, [%a7] lo:dummy
	movh	%d15, 8192
	mov.d	%d1, %a15
	or	%d15, %d1
	.loc 1 3361 0
	ld.bu	%d1, [%a14] -10
	mov.a	%a15, %d1
	ld.a	%a4, [%a14] -24
	mov.a	%a5, %d15
	mov.d	%d4, %a15
	mov	%d5, 19
	call	SriTst_lSlaveDataDecoderTst
	st.w	[%a14] -8, %d2
	.loc 1 3366 0
	movh	%d15, 61444
	addi	%d2, %d15, -32696
	movh	%d15, 61444
	addi	%d15, %d15, -32696
	mov.a	%a7, %d15
	ld.a	%a15, [%a7]0
	movh	%d15, 10559
	addi	%d15, %d15, 7423
	mov.d	%d1, %a15
	and	%d15, %d1
	movh.a	%a15, 512
	mov.d	%d1, %a15
	or	%d15, %d1
	mov.a	%a7, %d2
	st.w	[%a7]0, %d15
	.loc 1 3368 0
	ld.a	%a15, [%a14] -8
	movh	%d15, 4
	addi	%d15, %d15, 511
	mov.d	%d1, %a15
	jne	%d1, %d15, .L188
	.loc 1 3372 0
	movh	%d15, hi:dummy
	mov.a	%a7, %d15
	lea	%a15, [%a7] lo:dummy
	movh	%d15, 8192
	mov.d	%d1, %a15
	or	%d15, %d1
	.loc 1 3371 0
	ld.bu	%d1, [%a14] -10
	mov.a	%a15, %d1
	ld.a	%a4, [%a14] -24
	mov.a	%a5, %d15
	mov.d	%d4, %a15
	mov	%d5, 19
	call	SriTst_lMasterDataDecoderTst
	st.w	[%a14] -8, %d2
	.loc 1 3376 0
	ld.a	%a15, [%a14] -8
	movh	%d15, 4
	addi	%d15, %d15, 511
	mov.d	%d1, %a15
	jne	%d1, %d15, .L189
	.loc 1 3378 0
	ld.bu	%d15, [%a14] -9
	mov	%d4, %d15
	call	SriTst_lDisableOverlay
	.loc 1 3381 0
	ld.bu	%d2, [%a14] -9
	movh	%d15, hi:SriTst_ConfigRoot
	addi	%d3, %d15, lo:SriTst_ConfigRoot
	ld.a	%a15, [%a14] -20
	mov.d	%d15, %a15
	sh	%d15, 3
	mov.d	%d1, %a15
	sub	%d15, %d1
	add	%d15, %d2
	add	%d15, 2
	sh	%d15, 2
	add	%d15, %d3
	mov.a	%a7, %d15
	ld.a	%a15, [%a7]0
	ld.bu	%d15, [%a14] -10
	ld.a	%a4, [%a14] -24
	mov.aa	%a5, %a15
	mov	%d4, %d15
	mov	%d5, 18
	call	SriTst_lSlaveAddrDecoderTst
	st.w	[%a14] -8, %d2
	.loc 1 3386 0
	ld.a	%a15, [%a14] -8
	movh	%d15, 4
	addi	%d15, %d15, 511
	mov.d	%d1, %a15
	jne	%d1, %d15, .L190
	.loc 1 3389 0
	ld.bu	%d2, [%a14] -9
	movh	%d15, hi:SriTst_ConfigRoot
	addi	%d3, %d15, lo:SriTst_ConfigRoot
	ld.a	%a15, [%a14] -20
	mov.d	%d15, %a15
	sh	%d15, 3
	mov.d	%d1, %a15
	sub	%d15, %d1
	add	%d15, %d2
	add	%d15, 2
	sh	%d15, 2
	add	%d15, %d3
	mov.a	%a7, %d15
	ld.a	%a15, [%a7]0
	ld.bu	%d15, [%a14] -10
	ld.a	%a4, [%a14] -24
	mov.aa	%a5, %a15
	mov	%d4, %d15
	mov	%d5, 18
	call	SriTst_lSlaveDataDecoderTst
	st.w	[%a14] -8, %d2
	.loc 1 3394 0
	ld.a	%a15, [%a14] -8
	movh	%d15, 4
	addi	%d15, %d15, 511
	mov.d	%d1, %a15
	jne	%d1, %d15, .L191
	.loc 1 3397 0
	ld.bu	%d2, [%a14] -9
	movh	%d15, hi:SriTst_ConfigRoot
	addi	%d3, %d15, lo:SriTst_ConfigRoot
	ld.a	%a15, [%a14] -20
	mov.d	%d15, %a15
	sh	%d15, 3
	mov.d	%d1, %a15
	sub	%d15, %d1
	add	%d15, %d2
	add	%d15, 3
	sh	%d15, 2
	add	%d15, %d3
	mov.a	%a7, %d15
	ld.w	%d15, [%a7]0
	ld.a	%a4, [%a14] -24
	mov.a	%a5, %d15
	call	SriTst_lMasterDataDecoderPMITst
	st.w	[%a14] -8, %d2
	.loc 1 3400 0
	ld.a	%a15, [%a14] -8
	movh	%d15, 4
	addi	%d15, %d15, 511
	mov.d	%d1, %a15
	jne	%d1, %d15, .L192
	.loc 1 3402 0
	ld.w	%d15, [%a14] -8
	st.w	[%a14] -4, %d15
	j	.L193
.L192:
	.loc 1 3406 0
	movh	%d15, 4
	addi	%d15, %d15, 16642
	st.w	[%a14] -4, %d15
	j	.L193
.L191:
	.loc 1 3411 0
	movh	%d15, 4
	addi	%d15, %d15, 16641
	st.w	[%a14] -4, %d15
	j	.L193
.L190:
	.loc 1 3416 0
	movh	%d15, 4
	addi	%d15, %d15, 16643
	st.w	[%a14] -4, %d15
	j	.L193
.L189:
	.loc 1 3421 0
	movh	%d15, 4
	addi	%d15, %d15, 16645
	st.w	[%a14] -4, %d15
	.loc 1 3422 0
	ld.bu	%d15, [%a14] -9
	mov	%d4, %d15
	call	SriTst_lDisableOverlay
	j	.L193
.L188:
	.loc 1 3427 0
	movh	%d15, 4
	addi	%d15, %d15, 16644
	st.w	[%a14] -4, %d15
	.loc 1 3428 0
	ld.bu	%d15, [%a14] -9
	mov	%d4, %d15
	call	SriTst_lDisableOverlay
	j	.L193
.L187:
	.loc 1 3434 0
	movh	%d15, 4
	addi	%d15, %d15, 16646
	st.w	[%a14] -4, %d15
	.loc 1 3435 0
	ld.bu	%d15, [%a14] -9
	mov	%d4, %d15
	call	SriTst_lDisableOverlay
.L193:
	.loc 1 3438 0
	ld.a	%a15, [%a14] -8
	movh	%d15, 4
	addi	%d15, %d15, 527
	mov.d	%d1, %a15
	jne	%d1, %d15, .L194
	.loc 1 3440 0
	ld.w	%d15, [%a14] -8
	st.w	[%a14] -4, %d15
.L194:
	.loc 1 3443 0
	ld.w	%d15, [%a14] -4
	.loc 1 3444 0
	mov	%d2, %d15
	ret
.LFE36:
	.size	SriTst_lCPUDecodersTst, .-SriTst_lCPUDecodersTst
	.align 2
	.type	SriTst_lEnableOverlay, @function
SriTst_lEnableOverlay:
.LFB37:
	.loc 1 3476 0
	mov.aa	%a14, %SP
.LCFI38:
	sub.a	%SP, 16
.LCFI39:
	mov	%d15, %d4
	st.b	[%a14] -9, %d15
	.loc 1 3478 0
	movh	%d15, hi:dummy
	addi	%d15, %d15, lo:dummy
	st.w	[%a14] -4, %d15
	.loc 1 3481 0
	ld.a	%a15, [%a14] -4
	movh	%d15, 4096
	addi	%d15, %d15, -32
	mov.d	%d1, %a15
	and	%d15, %d1
	st.w	[%a14] -4, %d15
	.loc 1 3484 0
	ld.w	%d15, [%a14] -4
	sh	%d15, -5
	st.w	[%a14] -4, %d15
	.loc 1 3487 0
	ld.bu	%d15, [%a14] -9
	jnz	%d15, .L199
.L197:
	.loc 1 3490 0
	movh	%d15, 63617
	addi	%d15, %d15, -1264
	mov.a	%a15, 0
	mov.a	%a7, %d15
	st.a	[%a7]0, %a15
	.loc 1 3493 0
	movh	%d15, 63617
	addi	%d15, %d15, -1256
	lea	%a15, 268435456
	lea	%a15, [%a15] -32
	mov.a	%a7, %d15
	st.a	[%a7]0, %a15
	.loc 1 3495 0
	movh	%d15, 63617
	mov.a	%a7, %d15
	lea	%a15, [%a7] -1260
	ld.w	%d2, [%a14] -4
	mov	%d15, -1
	sh	%d15, %d15, -9
	and	%d2, %d15
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, %d2, 5, 23
	st.w	[%a15]0, %d15
	.loc 1 3496 0
	mov	%d4, 22960
	call	Mcal_ResetSafetyENDINIT_Timed
.LBB286:
.LBB287:
	.loc 3 190 0
#APP
	# 190 "../30_Bsw/STL_common/intrinsics.h" 1
	dsync
	# 0 "" 2
#NO_APP
.LBE287:
.LBE286:
	.loc 1 3498 0
	movh	%d15, 61443
	mov.a	%a7, %d15
	lea	%a15, [%a7] 25056
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 1, 0, 1
	st.w	[%a15]0, %d15
	.loc 1 3500 0
	movh	%d15, 63617
	addi	%d15, %d15, -1264
	movh.a	%a15, 63617
	lea	%a15, [%a15] -1264
	ld.a	%a15, [%a15]0
	mov.a	%a7, %d15
	st.a	[%a7]0, %a15
	.loc 1 3502 0
	movh	%d15, 63617
	mov.a	%a7, %d15
	lea	%a15, [%a7] -1264
	movh	%d15, 63617
	addi	%d15, %d15, -1264
	mov.a	%a7, %d15
	ld.w	%d2, [%a7]0
	movh	%d15, 32768
	or	%d15, %d2
	st.w	[%a15]0, %d15
	.loc 1 3503 0
	call	Mcal_SetSafetyENDINIT_Timed
	.loc 1 3504 0
	j	.L195
.L199:
	.loc 1 3545 0
	nop
.L195:
	.loc 1 3547 0
	ret
.LFE37:
	.size	SriTst_lEnableOverlay, .-SriTst_lEnableOverlay
	.align 2
	.type	SriTst_lDisableOverlay, @function
SriTst_lDisableOverlay:
.LFB38:
	.loc 1 3578 0
	mov.aa	%a14, %SP
.LCFI40:
	sub.a	%SP, 8
.LCFI41:
	mov	%d15, %d4
	st.b	[%a14] -1, %d15
	.loc 1 3579 0
	mov	%d4, 22960
	call	Mcal_ResetSafetyENDINIT_Timed
.LBB288:
.LBB289:
	.loc 3 190 0
#APP
	# 190 "../30_Bsw/STL_common/intrinsics.h" 1
	dsync
	# 0 "" 2
#NO_APP
.LBE289:
.LBE288:
	.loc 1 3583 0
	ld.bu	%d15, [%a14] -1
	jnz	%d15, .L204
.L202:
	.loc 1 3587 0
	movh	%d15, 63617
	addi	%d15, %d15, -1264
	mov.a	%a15, 0
	mov.a	%a7, %d15
	st.a	[%a7]0, %a15
	.loc 1 3588 0
	movh	%d15, 61443
	mov.a	%a7, %d15
	lea	%a15, [%a7] 25056
	ld.w	%d15, [%a15]0
	andn	%d15, %d15, ~(-2)
	st.w	[%a15]0, %d15
	.loc 1 3589 0
	j	.L203
.L204:
	.loc 1 3608 0
	nop
.L203:
.LBB290:
.LBB291:
	.loc 3 190 0
#APP
	# 190 "../30_Bsw/STL_common/intrinsics.h" 1
	dsync
	# 0 "" 2
#NO_APP
.LBE291:
.LBE290:
	.loc 1 3612 0
	call	Mcal_SetSafetyENDINIT_Timed
	.loc 1 3613 0
	ret
.LFE38:
	.size	SriTst_lDisableOverlay, .-SriTst_lDisableOverlay
	.align 2
	.type	SriTst_lAdditionalDecodersTst, @function
SriTst_lAdditionalDecodersTst:
.LFB39:
	.loc 1 3665 0
	mov.aa	%a14, %SP
.LCFI42:
	sub.a	%SP, 16
.LCFI43:
	st.w	[%a14] -12, %d4
	st.a	[%a14] -16, %a4
	.loc 1 3666 0
	movh	%d15, 4
	addi	%d15, %d15, 266
	st.w	[%a14] -4, %d15
	.loc 1 3670 0
	call	Mcal_GetCoreId
	mov	%d15, %d2
	st.b	[%a14] -5, %d15
	.loc 1 3677 0
	ld.bu	%d1, [%a14] -5
	mov.a	%a15, %d1
	movh	%d15, hi:SriTst_ConfigRoot
	addi	%d2, %d15, lo:SriTst_ConfigRoot
	ld.w	%d15, [%a14] -12
	mul	%d15, %d15, 28
	mov.d	%d1, %a15
	add	%d15, %d1
	add	%d15, %d2
	mov.a	%a7, %d15
	ld.bu	%d15, [%a7]0
	jne	%d15, 1, .L206
	.loc 1 3679 0
	ld.bu	%d2, [%a14] -5
	movh	%d15, hi:SriTst_ConfigRoot
	addi	%d3, %d15, lo:SriTst_ConfigRoot
	ld.a	%a15, [%a14] -12
	mov.d	%d15, %a15
	sh	%d15, 3
	mov.d	%d1, %a15
	sub	%d15, %d1
	add	%d15, %d2
	add	%d15, 4
	sh	%d15, 2
	add	%d15, %d3
	mov.a	%a7, %d15
	ld.w	%d15, [%a7]0
	ld.a	%a4, [%a14] -16
	mov.a	%a5, %d15
	call	SriTst_lLMUDecoderTst
	st.w	[%a14] -4, %d2
	.loc 1 3681 0
	movh	%d15, 61444
	addi	%d2, %d15, -32696
	movh	%d15, 61444
	addi	%d15, %d15, -32696
	mov.a	%a7, %d15
	ld.a	%a15, [%a7]0
	movh	%d15, 10559
	addi	%d15, %d15, 7423
	mov.d	%d1, %a15
	and	%d15, %d1
	movh.a	%a15, 512
	mov.d	%d1, %a15
	or	%d15, %d1
	mov.a	%a7, %d2
	st.w	[%a7]0, %d15
.L206:
	.loc 1 3688 0
	ld.bu	%d1, [%a14] -5
	mov.a	%a15, %d1
	movh	%d15, hi:SriTst_ConfigRoot
	addi	%d2, %d15, lo:SriTst_ConfigRoot
	ld.w	%d15, [%a14] -12
	mul	%d15, %d15, 28
	mov.d	%d1, %a15
	add	%d15, %d1
	add	%d15, %d2
	mov.a	%a7, %d15
	ld.bu	%d15, [%a7] 1
	jne	%d15, 1, .L207
	.loc 1 3690 0
	ld.a	%a15, [%a14] -4
	movh	%d15, 4
	addi	%d15, %d15, 266
	mov.d	%d1, %a15
	jeq	%d1, %d15, .L208
	.loc 1 3690 0 is_stmt 0 discriminator 1
	ld.a	%a15, [%a14] -4
	movh	%d15, 4
	addi	%d15, %d15, 511
	mov.d	%d1, %a15
	jne	%d1, %d15, .L207
.L208:
	.loc 1 3692 0 is_stmt 1
	ld.bu	%d2, [%a14] -5
	movh	%d15, hi:SriTst_ConfigRoot
	addi	%d3, %d15, lo:SriTst_ConfigRoot
	ld.a	%a15, [%a14] -12
	mov.d	%d15, %a15
	sh	%d15, 3
	mov.d	%d1, %a15
	sub	%d15, %d1
	add	%d15, %d2
	add	%d15, 5
	sh	%d15, 2
	add	%d15, %d3
	mov.a	%a7, %d15
	ld.w	%d15, [%a7]0
	ld.a	%a4, [%a14] -16
	mov.a	%a5, %d15
	call	SriTst_lPMUDFlashDecoderTst
	st.w	[%a14] -4, %d2
	.loc 1 3694 0
	movh	%d15, 61444
	addi	%d2, %d15, -32696
	movh	%d15, 61444
	addi	%d15, %d15, -32696
	mov.a	%a7, %d15
	ld.a	%a15, [%a7]0
	movh	%d15, 10559
	addi	%d15, %d15, 7423
	mov.d	%d1, %a15
	and	%d15, %d1
	movh.a	%a15, 512
	mov.d	%d1, %a15
	or	%d15, %d1
	mov.a	%a7, %d2
	st.w	[%a7]0, %d15
.L207:
	.loc 1 3702 0
	ld.bu	%d1, [%a14] -5
	mov.a	%a15, %d1
	movh	%d15, hi:SriTst_ConfigRoot
	addi	%d2, %d15, lo:SriTst_ConfigRoot
	ld.w	%d15, [%a14] -12
	mul	%d15, %d15, 28
	mov.d	%d1, %a15
	add	%d15, %d1
	add	%d15, %d2
	mov.a	%a7, %d15
	ld.bu	%d15, [%a7] 2
	jne	%d15, 1, .L209
	.loc 1 3704 0
	ld.a	%a15, [%a14] -4
	movh	%d15, 4
	addi	%d15, %d15, 266
	mov.d	%d1, %a15
	jeq	%d1, %d15, .L210
	.loc 1 3704 0 is_stmt 0 discriminator 1
	ld.a	%a15, [%a14] -4
	movh	%d15, 4
	addi	%d15, %d15, 511
	mov.d	%d1, %a15
	jne	%d1, %d15, .L209
.L210:
	.loc 1 3706 0 is_stmt 1
	ld.bu	%d2, [%a14] -5
	movh	%d15, hi:SriTst_ConfigRoot
	addi	%d3, %d15, lo:SriTst_ConfigRoot
	ld.a	%a15, [%a14] -12
	mov.d	%d15, %a15
	sh	%d15, 3
	mov.d	%d1, %a15
	sub	%d15, %d1
	add	%d15, %d2
	add	%d15, 6
	sh	%d15, 2
	add	%d15, %d3
	mov.a	%a7, %d15
	ld.w	%d15, [%a7]0
	ld.a	%a4, [%a14] -16
	mov.a	%a5, %d15
	call	SriTst_lPMUPFlashDecoderTst
	st.w	[%a14] -4, %d2
	.loc 1 3708 0
	movh	%d15, 61444
	addi	%d2, %d15, -32696
	movh	%d15, 61444
	addi	%d15, %d15, -32696
	mov.a	%a7, %d15
	ld.a	%a15, [%a7]0
	movh	%d15, 10559
	addi	%d15, %d15, 7423
	mov.d	%d1, %a15
	and	%d15, %d1
	movh.a	%a15, 512
	mov.d	%d1, %a15
	or	%d15, %d1
	mov.a	%a7, %d2
	st.w	[%a7]0, %d15
.L209:
	.loc 1 3713 0
	ld.bu	%d1, [%a14] -5
	mov.a	%a15, %d1
	movh	%d15, hi:SriTst_ConfigRoot
	addi	%d2, %d15, lo:SriTst_ConfigRoot
	ld.w	%d15, [%a14] -12
	mul	%d15, %d15, 28
	mov.d	%d1, %a15
	add	%d15, %d1
	add	%d15, %d2
	mov.a	%a7, %d15
	ld.bu	%d15, [%a7] 3
	jne	%d15, 1, .L211
	.loc 1 3715 0
	ld.a	%a15, [%a14] -4
	movh	%d15, 4
	addi	%d15, %d15, 266
	mov.d	%d1, %a15
	jeq	%d1, %d15, .L212
	.loc 1 3715 0 is_stmt 0 discriminator 1
	ld.a	%a15, [%a14] -4
	movh	%d15, 4
	addi	%d15, %d15, 511
	mov.d	%d1, %a15
	jne	%d1, %d15, .L211
.L212:
	.loc 1 3717 0 is_stmt 1
	ld.w	%d4, [%a14] -12
	ld.a	%a4, [%a14] -16
	call	SriTst_lDMADecoderTst
	st.w	[%a14] -4, %d2
.L211:
	.loc 1 3722 0
	ld.bu	%d15, [%a14] -5
	mov.a	%a15, %d15
	movh	%d15, hi:SriTst_ConfigRoot
	addi	%d2, %d15, lo:SriTst_ConfigRoot
	ld.w	%d15, [%a14] -12
	mul	%d15, %d15, 28
	add	%d15, %d2
	mov.d	%d1, %a15
	add	%d15, %d1
	add	%d15, 4
	mov.a	%a7, %d15
	ld.bu	%d15, [%a7]0
	jne	%d15, 1, .L213
	.loc 1 3724 0
	ld.a	%a15, [%a14] -4
	movh	%d15, 4
	addi	%d15, %d15, 266
	mov.d	%d1, %a15
	jeq	%d1, %d15, .L214
	.loc 1 3724 0 is_stmt 0 discriminator 1
	ld.a	%a15, [%a14] -4
	movh	%d15, 4
	addi	%d15, %d15, 511
	mov.d	%d1, %a15
	jne	%d1, %d15, .L213
.L214:
	.loc 1 3729 0 is_stmt 1
	ld.a	%a4, [%a14] -16
	call	SriTst_lSlaveAddrDecoderXbarTst
	st.w	[%a14] -4, %d2
	.loc 1 3730 0
	movh	%d15, 61444
	addi	%d2, %d15, -32696
	movh	%d15, 61444
	addi	%d15, %d15, -32696
	mov.a	%a7, %d15
	ld.a	%a15, [%a7]0
	movh	%d15, 10559
	addi	%d15, %d15, 7423
	mov.d	%d1, %a15
	and	%d15, %d1
	movh.a	%a15, 512
	mov.d	%d1, %a15
	or	%d15, %d1
	mov.a	%a7, %d2
	st.w	[%a7]0, %d15
	.loc 1 3732 0
	ld.a	%a15, [%a14] -4
	movh	%d15, 4
	addi	%d15, %d15, 511
	mov.d	%d1, %a15
	jne	%d1, %d15, .L213
	.loc 1 3735 0
	ld.a	%a4, [%a14] -16
	call	SriTst_lSlaveDataDecoderXbarTst
	st.w	[%a14] -4, %d2
.L213:
	.loc 1 3740 0
	ld.a	%a15, [%a14] -4
	movh	%d15, 4
	addi	%d15, %d15, 266
	mov.d	%d1, %a15
	jne	%d1, %d15, .L215
	.loc 1 3742 0
	movh	%d15, 4
	addi	%d15, %d15, 511
	st.w	[%a14] -4, %d15
.L215:
	.loc 1 3745 0
	ld.w	%d15, [%a14] -4
	.loc 1 3746 0
	mov	%d2, %d15
	ret
.LFE39:
	.size	SriTst_lAdditionalDecodersTst, .-SriTst_lAdditionalDecodersTst
	.align 2
	.type	SriTst_lLMUDecoderTst, @function
SriTst_lLMUDecoderTst:
.LFB40:
	.loc 1 3786 0
	mov.aa	%a14, %SP
.LCFI44:
	sub.a	%SP, 16
.LCFI45:
	st.a	[%a14] -12, %a4
	st.a	[%a14] -16, %a5
	.loc 1 3790 0
	ld.a	%a4, [%a14] -12
	ld.a	%a5, [%a14] -16
	mov	%d4, 2
	mov	%d5, 21
	call	SriTst_lSlaveAddrDecoderTst
	st.w	[%a14] -4, %d2
	.loc 1 3794 0
	ld.a	%a15, [%a14] -4
	movh	%d15, 4
	addi	%d15, %d15, 511
	mov.d	%d1, %a15
	jne	%d1, %d15, .L217
	.loc 1 3797 0
	ld.a	%a4, [%a14] -12
	ld.a	%a5, [%a14] -16
	mov	%d4, 2
	mov	%d5, 22
	call	SriTst_lSlaveDataDecoderTst
	st.w	[%a14] -4, %d2
	.loc 1 3801 0
	ld.a	%a15, [%a14] -4
	movh	%d15, 4
	addi	%d15, %d15, 511
	mov.d	%d1, %a15
	jeq	%d1, %d15, .L218
	.loc 1 3803 0
	movh	%d15, 4
	addi	%d15, %d15, 16903
	st.w	[%a14] -4, %d15
	j	.L218
.L217:
	.loc 1 3808 0
	movh	%d15, 4
	addi	%d15, %d15, 16904
	st.w	[%a14] -4, %d15
.L218:
	.loc 1 3815 0
	call	Mcal_ResetENDINIT
	.loc 1 3817 0
	movh	%d15, 63600
	mov.a	%a7, %d15
	lea	%a15, [%a7] 2080
	movh	%d15, 63600
	addi	%d15, %d15, 2080
	mov.a	%a7, %d15
	ld.w	%d15, [%a7]0
	andn	%d15, %d15, ~(-197)
	st.w	[%a15]0, %d15
	.loc 1 3819 0
	call	Mcal_SetENDINIT
	.loc 1 3821 0
	ld.w	%d15, [%a14] -4
	.loc 1 3822 0
	mov	%d2, %d15
	ret
.LFE40:
	.size	SriTst_lLMUDecoderTst, .-SriTst_lLMUDecoderTst
	.align 2
	.type	SriTst_lPMUDFlashDecoderTst, @function
SriTst_lPMUDFlashDecoderTst:
.LFB41:
	.loc 1 3864 0
	mov.aa	%a14, %SP
.LCFI46:
	sub.a	%SP, 16
.LCFI47:
	st.a	[%a14] -12, %a4
	st.a	[%a14] -16, %a5
	.loc 1 3868 0
	ld.a	%a4, [%a14] -12
	ld.a	%a5, [%a14] -16
	mov	%d4, 2
	mov	%d5, 21
	call	SriTst_lSlaveAddrDecoderTst
	st.w	[%a14] -4, %d2
	.loc 1 3872 0
	ld.a	%a15, [%a14] -4
	movh	%d15, 4
	addi	%d15, %d15, 511
	mov.d	%d1, %a15
	jne	%d1, %d15, .L220
	.loc 1 3875 0
	ld.a	%a4, [%a14] -12
	ld.a	%a5, [%a14] -16
	mov	%d4, 2
	mov	%d5, 22
	call	SriTst_lSlaveDataDecoderTst
	st.w	[%a14] -4, %d2
	.loc 1 3879 0
	ld.a	%a15, [%a14] -4
	movh	%d15, 4
	addi	%d15, %d15, 511
	mov.d	%d1, %a15
	jeq	%d1, %d15, .L221
	.loc 1 3881 0
	movh	%d15, 4
	addi	%d15, %d15, 17161
	st.w	[%a14] -4, %d15
	j	.L221
.L220:
	.loc 1 3886 0
	movh	%d15, 4
	addi	%d15, %d15, 17162
	st.w	[%a14] -4, %d15
.L221:
	.loc 1 3889 0
	ld.w	%d15, [%a14] -4
	.loc 1 3890 0
	mov	%d2, %d15
	ret
.LFE41:
	.size	SriTst_lPMUDFlashDecoderTst, .-SriTst_lPMUDFlashDecoderTst
	.align 2
	.type	SriTst_lPMUPFlashDecoderTst, @function
SriTst_lPMUPFlashDecoderTst:
.LFB42:
	.loc 1 3927 0
	mov.aa	%a14, %SP
.LCFI48:
	sub.a	%SP, 16
.LCFI49:
	st.a	[%a14] -12, %a4
	st.a	[%a14] -16, %a5
	.loc 1 3931 0
	ld.a	%a4, [%a14] -12
	ld.a	%a5, [%a14] -16
	mov	%d4, 2
	mov	%d5, 21
	call	SriTst_lSlaveAddrDecoderTst
	st.w	[%a14] -4, %d2
	.loc 1 3935 0
	ld.a	%a15, [%a14] -4
	movh	%d15, 4
	addi	%d15, %d15, 511
	mov.d	%d1, %a15
	jeq	%d1, %d15, .L223
	.loc 1 3937 0
	movh	%d15, 4
	addi	%d15, %d15, 17163
	st.w	[%a14] -4, %d15
.L223:
	.loc 1 3940 0
	ld.w	%d15, [%a14] -4
	.loc 1 3941 0
	mov	%d2, %d15
	ret
.LFE42:
	.size	SriTst_lPMUPFlashDecoderTst, .-SriTst_lPMUPFlashDecoderTst
	.align 2
	.type	SriTst_lDMADecoderTst, @function
SriTst_lDMADecoderTst:
.LFB43:
	.loc 1 3979 0
	mov.aa	%a14, %SP
.LCFI50:
	sub.a	%SP, 56
.LCFI51:
	st.w	[%a14] -52, %d4
	st.a	[%a14] -56, %a4
	.loc 1 3981 0
	mov	%d15, 256
	st.w	[%a14] -8, %d15
	.loc 1 3982 0
	mov	%d15, 0
	st.w	[%a14] -12, %d15
	.loc 1 3993 0
	call	Mcal_GetCoreId
	mov	%d15, %d2
	st.b	[%a14] -13, %d15
	.loc 1 3996 0
	ld.bu	%d2, [%a14] -13
	movh	%d15, hi:SriTst_ConfigRoot
	addi	%d3, %d15, lo:SriTst_ConfigRoot
	ld.a	%a15, [%a14] -52
	mov.d	%d15, %a15
	sh	%d15, 3
	mov.d	%d1, %a15
	sub	%d15, %d1
	add	%d15, %d2
	add	%d15, 3
	sh	%d15, 2
	add	%d15, %d3
	mov.a	%a7, %d15
	ld.w	%d15, [%a7]0
	mov.a	%a7, %d15
	ld.w	%d15, [%a7] 4
	st.w	[%a14] -20, %d15
	.loc 1 3999 0
	movh	%d15, 61441
	mov.a	%a7, %d15
	ld.w	%d15, [%a7]0
	and	%d15, %d15, 2
	jz	%d15, .L225
	.loc 1 4002 0
	movh	%d15, 61441
	mov.a	%a7, %d15
	ld.w	%d15, [%a7]0
	st.w	[%a14] -12, %d15
	.loc 1 4004 0
	call	Mcal_ResetENDINIT
	.loc 1 4006 0
	movh.a	%a15, 61441
	ld.w	%d15, [%a15]0
	andn	%d15, %d15, ~(-2)
	st.w	[%a15]0, %d15
	.loc 1 4007 0
	call	Mcal_SetENDINIT
.L226:
	.loc 1 4010 0 discriminator 1
	ld.w	%d15, [%a14] -8
	add	%d15, -1
	st.w	[%a14] -8, %d15
	.loc 1 4013 0 discriminator 1
	movh	%d15, 61441
	mov.a	%a7, %d15
	ld.w	%d15, [%a7]0
	and	%d15, %d15, 2
	jz	%d15, .L225
	ld.w	%d15, [%a14] -8
	jnz	%d15, .L226
.L225:
	.loc 1 4017 0
	movh	%d15, 61441
	mov.a	%a7, %d15
	ld.w	%d15, [%a7]0
	and	%d15, %d15, 2
	jz	%d15, .L227
	.loc 1 4019 0
	movh	%d15, 4
	addi	%d15, %d15, 16407
	st.w	[%a14] -4, %d15
	j	.L228
.L227:
	.loc 1 4024 0
	movh	%d15, 61441
	addi	%d15, %d15, 8212
	mov.a	%a7, %d15
	ld.w	%d15, [%a7]0
	st.w	[%a14] -24, %d15
	.loc 1 4025 0
	movh	%d15, 61441
	addi	%d15, %d15, 8200
	mov.a	%a7, %d15
	ld.w	%d15, [%a7]0
	st.w	[%a14] -28, %d15
	.loc 1 4026 0
	movh	%d15, 61441
	addi	%d15, %d15, 8204
	mov.a	%a7, %d15
	ld.w	%d15, [%a7]0
	st.w	[%a14] -32, %d15
	.loc 1 4027 0
	movh	%d15, 61441
	addi	%d15, %d15, 8192
	mov.a	%a7, %d15
	ld.w	%d15, [%a7]0
	st.w	[%a14] -36, %d15
	.loc 1 4028 0
	movh	%d15, 61441
	addi	%d15, %d15, 8196
	mov.a	%a7, %d15
	ld.w	%d15, [%a7]0
	st.w	[%a14] -40, %d15
	.loc 1 4031 0
	movh	%d15, 61441
	mov.a	%a7, %d15
	lea	%a15, [%a7] 8212
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 8, 0, 14
	st.w	[%a15]0, %d15
	.loc 1 4032 0
	movh	%d15, 61441
	mov.a	%a7, %d15
	lea	%a15, [%a7] 8212
	ld.w	%d15, [%a15]0
	movh	%d2, 65529
	add	%d2, -1
	and	%d15, %d2
	st.w	[%a15]0, %d15
	.loc 1 4033 0
	movh	%d15, 61441
	mov.a	%a7, %d15
	lea	%a15, [%a7] 8212
	ld.w	%d15, [%a15]0
	movh	%d2, 65528
	add	%d2, -1
	and	%d15, %d2
	st.w	[%a15]0, %d15
	.loc 1 4034 0
	movh	%d15, 61441
	mov.a	%a7, %d15
	lea	%a15, [%a7] 8212
	ld.w	%d15, [%a15]0
	movh	%d2, 65520
	add	%d2, -1
	and	%d15, %d2
	st.w	[%a15]0, %d15
	.loc 1 4035 0
	movh	%d15, 61441
	mov.a	%a7, %d15
	lea	%a15, [%a7] 8212
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 2, 21, 3
	st.w	[%a15]0, %d15
	.loc 1 4036 0
	movh	%d15, 61441
	mov.a	%a7, %d15
	lea	%a15, [%a7] 8212
	ld.w	%d15, [%a15]0
	movh	%d2, 63744
	add	%d2, -1
	and	%d15, %d2
	st.w	[%a15]0, %d15
	.loc 1 4039 0
	ld.w	%d4, [%a14] -52
	ld.a	%a4, [%a14] -56
	call	SriTst_lDoDMADecoderTst
	st.w	[%a14] -4, %d2
	.loc 1 4042 0
	movh	%d15, 61441
	addi	%d15, %d15, 8212
	ld.a	%a15, [%a14] -24
	mov.a	%a7, %d15
	st.a	[%a7]0, %a15
	.loc 1 4043 0
	movh	%d15, 61441
	addi	%d15, %d15, 8200
	ld.a	%a15, [%a14] -28
	mov.a	%a7, %d15
	st.a	[%a7]0, %a15
	.loc 1 4044 0
	movh	%d15, 61441
	addi	%d15, %d15, 8204
	ld.a	%a15, [%a14] -32
	mov.a	%a7, %d15
	st.a	[%a7]0, %a15
	.loc 1 4045 0
	movh	%d15, 61441
	addi	%d15, %d15, 8192
	ld.a	%a15, [%a14] -36
	mov.a	%a7, %d15
	st.a	[%a7]0, %a15
	.loc 1 4046 0
	movh	%d15, 61441
	addi	%d15, %d15, 8196
	ld.a	%a15, [%a14] -40
	mov.a	%a7, %d15
	st.a	[%a7]0, %a15
	.loc 1 4047 0
	movh	%d15, 61441
	mov.a	%a7, %d15
	lea	%a15, [%a7] 8220
	movh	%d15, 61441
	addi	%d15, %d15, 8220
	mov.a	%a7, %d15
	ld.w	%d2, [%a7]0
	movh	%d15, 1024
	or	%d15, %d2
	st.w	[%a15]0, %d15
	.loc 1 4049 0
	ld.bu	%d2, [%a14] -13
	movh	%d15, hi:SriTst_ConfigRoot
	addi	%d3, %d15, lo:SriTst_ConfigRoot
	ld.a	%a15, [%a14] -52
	mov.d	%d15, %a15
	sh	%d15, 3
	mov.d	%d1, %a15
	sub	%d15, %d1
	add	%d15, %d2
	add	%d15, 3
	sh	%d15, 2
	add	%d15, %d3
	mov.a	%a7, %d15
	ld.w	%d15, [%a7]0
	add	%d15, 4
	ld.a	%a15, [%a14] -20
	mov.a	%a7, %d15
	st.a	[%a7]0, %a15
	.loc 1 4052 0
	ld.w	%d15, [%a14] -12
	jz	%d15, .L229
	.loc 1 4054 0
	call	Mcal_ResetENDINIT
	.loc 1 4055 0
	movh	%d15, 61441
	ld.a	%a15, [%a14] -12
	mov.a	%a7, %d15
	st.a	[%a7]0, %a15
	.loc 1 4056 0
	call	Mcal_SetENDINIT
	.loc 1 4059 0
	movh	%d15, 61441
	mov.a	%a7, %d15
	ld.w	%d15, [%a7]0
	st.w	[%a14] -44, %d15
	.loc 1 4060 0
	ld.w	%d15, [%a14] -44
.L229:
	.loc 1 4064 0
	ld.a	%a15, [%a14] -4
	movh	%d15, 4
	addi	%d15, %d15, 511
	mov.d	%d1, %a15
	jeq	%d1, %d15, .L228
	.loc 1 4066 0
	movh	%d15, 4
	addi	%d15, %d15, 17420
	st.w	[%a14] -4, %d15
.L228:
	.loc 1 4070 0
	ld.w	%d15, [%a14] -4
	.loc 1 4071 0
	mov	%d2, %d15
	ret
.LFE43:
	.size	SriTst_lDMADecoderTst, .-SriTst_lDMADecoderTst
	.align 2
	.type	SriTst_lDoDMADecoderTst, @function
SriTst_lDoDMADecoderTst:
.LFB44:
	.loc 1 4116 0
	mov.aa	%a14, %SP
.LCFI52:
	sub.a	%SP, 56
.LCFI53:
	st.w	[%a14] -52, %d4
	st.a	[%a14] -56, %a4
	.loc 1 4117 0
	movh	%d15, 4
	addi	%d15, %d15, 266
	st.w	[%a14] -4, %d15
	.loc 1 4120 0
	mov	%d15, 1
	st.w	[%a14] -12, %d15
	.loc 1 4121 0
	mov	%d15, 0
	st.b	[%a14] -13, %d15
	.loc 1 4123 0
	mov	%d15, 1
	st.b	[%a14] -14, %d15
	.loc 1 4128 0
	call	Mcal_GetCoreId
	mov	%d15, %d2
	st.b	[%a14] -15, %d15
	.loc 1 4131 0
	j	.L231
.L239:
	.loc 1 4134 0
	movh	%d15, 61441
	addi	%d2, %d15, 8200
	.loc 1 4135 0
	ld.bu	%d3, [%a14] -15
	movh	%d15, hi:SriTst_ConfigRoot
	addi	%d4, %d15, lo:SriTst_ConfigRoot
	ld.a	%a15, [%a14] -52
	mov.d	%d15, %a15
	sh	%d15, 3
	mov.d	%d1, %a15
	sub	%d15, %d1
	add	%d15, %d3
	add	%d15, 3
	sh	%d15, 2
	add	%d15, %d4
	mov.a	%a7, %d15
	ld.w	%d15, [%a7]0
	.loc 1 4134 0
	mov.a	%a7, %d2
	st.w	[%a7]0, %d15
	.loc 1 4138 0
	movh	%d15, 61441
	addi	%d2, %d15, 8204
	.loc 1 4139 0
	ld.bu	%d3, [%a14] -15
	movh	%d15, hi:SriTst_ConfigRoot
	addi	%d4, %d15, lo:SriTst_ConfigRoot
	ld.a	%a15, [%a14] -52
	mov.d	%d15, %a15
	sh	%d15, 3
	mov.d	%d1, %a15
	sub	%d15, %d1
	add	%d15, %d3
	add	%d15, 3
	sh	%d15, 2
	add	%d15, %d4
	mov.a	%a7, %d15
	ld.w	%d15, [%a7]0
	add	%d15, 4
	.loc 1 4138 0
	mov.a	%a7, %d2
	st.w	[%a7]0, %d15
	.loc 1 4145 0
	call	Mcal_SuspendAllInterrupts
	.loc 1 4147 0
	call	Mcal_ResetENDINIT
	.loc 1 4148 0
	ld.a	%a15, [%a14] -12
	movh	%d15, 32768
	addi	%d15, %d15, 512
	mov.d	%d1, %a15
	or	%d15, %d1
	st.w	[%a14] -20, %d15
.LBB292:
.LBB293:
	.loc 3 190 0
#APP
	# 190 "../30_Bsw/STL_common/intrinsics.h" 1
	dsync
	# 0 "" 2
#NO_APP
.LBE293:
.LBE292:
.LBB294:
	.loc 1 4149 0
	ld.w	%d15, [%a14] -20
	st.w	[%a14] -24, %d15
	ld.w	%d15, [%a14] -24
#APP
	# 4149 "../30_Bsw/MicroTestLib/Static/SriTst.c" 1
	mtcr LO:(0x1030), %d15
	# 0 "" 2
#NO_APP
.LBE294:
.LBB295:
.LBB296:
	.loc 3 184 0
#APP
	# 184 "../30_Bsw/STL_common/intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE296:
.LBE295:
	.loc 1 4151 0
	movh	%d15, 61441
	mov.a	%a7, %d15
	lea	%a15, [%a7] 8220
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 1, 31, 1
	st.w	[%a15]0, %d15
	.loc 1 4152 0
#APP
	# 4152 "../30_Bsw/MicroTestLib/Static/SriTst.c" 1
	nop
	# 0 "" 2
	.loc 1 4153 0
	# 4153 "../30_Bsw/MicroTestLib/Static/SriTst.c" 1
	nop
	# 0 "" 2
	.loc 1 4154 0
#NO_APP
	call	Mcal_SetENDINIT
	.loc 1 4156 0
	call	Mcal_ResumeAllInterrupts
	.loc 1 4159 0
	mov	%d15, 0
	st.w	[%a14] -44, %d15
	.loc 1 4160 0
	mov	%d15, 2000
	st.w	[%a14] -8, %d15
	.loc 1 4163 0
	j	.L232
.L234:
	.loc 1 4166 0
	ld.w	%d15, [%a14] -8
	add	%d15, -1
	st.w	[%a14] -8, %d15
	.loc 1 4167 0
	mov.d	%d1, %a14
	addi	%d15, %d1, -44
	mov	%d4, 2
	mov.a	%a4, %d15
	call	Smu_GetAlarmStatus
	mov	%d15, %d2
	jz	%d15, .L232
	.loc 1 4169 0
	mov	%d15, 0
	st.w	[%a14] -44, %d15
	.loc 1 4170 0
	mov	%d15, 0
	st.w	[%a14] -8, %d15
.L232:
	.loc 1 4163 0 discriminator 1
	ld.a	%a15, [%a14] -44
	movh	%d15, 128
	mov.d	%d1, %a15
	and	%d15, %d1
	jnz	%d15, .L233
	.loc 1 4163 0 is_stmt 0 discriminator 2
	ld.w	%d15, [%a14] -8
	jnz	%d15, .L234
.L233:
	.loc 1 4177 0 is_stmt 1
	ld.a	%a15, [%a14] -44
	movh	%d15, 128
	mov.d	%d1, %a15
	and	%d15, %d1
	jnz	%d15, .L235
	.loc 1 4179 0
	movh	%d15, 4
	addi	%d15, %d15, 16403
	st.w	[%a14] -4, %d15
	.loc 1 4180 0
	mov	%d15, 0
	st.b	[%a14] -14, %d15
	j	.L236
.L235:
	.loc 1 4185 0
	mov	%d4, 2
	mov	%d5, 23
	call	Smu_ClearAlarmStatus
	mov	%d15, %d2
	st.b	[%a14] -25, %d15
	.loc 1 4187 0
	ld.bu	%d15, [%a14] -25
	jz	%d15, .L237
	.loc 1 4189 0
	movh	%d15, 4
	addi	%d15, %d15, 527
	st.w	[%a14] -4, %d15
	.loc 1 4190 0
	mov	%d15, 0
	st.b	[%a14] -14, %d15
	j	.L236
.L237:
	.loc 1 4195 0
	ld.w	%d15, [%a14] -12
	sh	%d15, 1
	st.w	[%a14] -12, %d15
	.loc 1 4196 0
	ld.w	%d15, [%a14] -56
	mov.a	%a7, %d15
	ld.w	%d15, [%a7]0
	st.w	[%a14] -32, %d15
	ld.w	%d15, [%a14] -12
	st.w	[%a14] -36, %d15
.LBB297:
.LBB298:
	.loc 2 400 0
	ld.w	%d15, [%a14] -32
	ld.a	%a15, [%a14] -36
	mov.d	%d1, %a15
#APP
	# 400 "../30_Bsw/STL_common/Mcal_Compiler.h" 1
	crc32 %d15, %d1, %d15
	# 0 "" 2
#NO_APP
	st.w	[%a14] -40, %d15
	.loc 2 401 0
	ld.w	%d15, [%a14] -40
.LBE298:
.LBE297:
	.loc 1 4196 0
	ld.a	%a15, [%a14] -56
	st.w	[%a15]0, %d15
.L236:
	.loc 1 4199 0
	ld.b	%d15, [%a14] -13
	add	%d15, 1
	st.b	[%a14] -13, %d15
.L231:
	.loc 1 4131 0 discriminator 1
	ld.bu	%d15, [%a14] -13
	jge.u	%d15, 8, .L238
	.loc 1 4131 0 is_stmt 0 discriminator 2
	ld.bu	%d15, [%a14] -14
	jnz	%d15, .L239
.L238:
	.loc 1 4203 0 is_stmt 1
	ld.a	%a15, [%a14] -4
	movh	%d15, 4
	addi	%d15, %d15, 266
	mov.d	%d1, %a15
	jne	%d1, %d15, .L240
	.loc 1 4205 0
	movh	%d15, 4
	addi	%d15, %d15, 511
	st.w	[%a14] -4, %d15
.L240:
	.loc 1 4208 0
	ld.w	%d15, [%a14] -4
	.loc 1 4209 0
	mov	%d2, %d15
	ret
.LFE44:
	.size	SriTst_lDoDMADecoderTst, .-SriTst_lDoDMADecoderTst
	.align 2
	.type	SriTst_lUser0AccTst, @function
SriTst_lUser0AccTst:
.LFB45:
	.loc 1 4252 0
	mov.aa	%a14, %SP
.LCFI54:
	sub.a	%SP, 40
.LCFI55:
	st.a	[%a14] -36, %a4
	.loc 1 4254 0
	mov	%d15, 0
	st.w	[%a14] -32, %d15
.LBB299:
	.loc 1 4260 0
#APP
	# 4260 "../30_Bsw/MicroTestLib/Static/SriTst.c" 1
	mfcr %d15, LO:(0xFE04)
	# 0 "" 2
#NO_APP
	st.w	[%a14] -8, %d15
	ld.w	%d15, [%a14] -8
.LBE299:
	st.w	[%a14] -12, %d15
	.loc 1 4261 0
	ld.a	%a15, [%a14] -12
	mov	%d15, -3073
	mov.d	%d1, %a15
	and	%d15, %d1
	st.w	[%a14] -12, %d15
.LBB300:
.LBB301:
	.loc 3 190 0
#APP
	# 190 "../30_Bsw/STL_common/intrinsics.h" 1
	dsync
	# 0 "" 2
#NO_APP
.LBE301:
.LBE300:
.LBB302:
	.loc 1 4263 0
	ld.w	%d15, [%a14] -12
	st.w	[%a14] -16, %d15
	ld.w	%d15, [%a14] -16
#APP
	# 4263 "../30_Bsw/MicroTestLib/Static/SriTst.c" 1
	mtcr LO:(0xFE04), %d15
	# 0 "" 2
#NO_APP
.LBE302:
.LBB303:
.LBB304:
	.loc 3 184 0
#APP
	# 184 "../30_Bsw/STL_common/intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE304:
.LBE303:
	.loc 1 4265 0
	ld.w	%d15, [%a14] -32
	.loc 1 4268 0
	movh	%d15, hi:Sri_ExpectedTrapClass
	mov.a	%a7, %d15
	lea	%a15, [%a7] lo:Sri_ExpectedTrapClass
	mov	%d15, 1
	st.w	[%a15]0, %d15
	.loc 1 4269 0
	movh	%d15, hi:Sri_ExpectedTrapId
	mov.a	%a7, %d15
	lea	%a15, [%a7] lo:Sri_ExpectedTrapId
	mov	%d15, 5
	st.w	[%a15]0, %d15
	.loc 1 4272 0
	movh	%d15, 63488
	addi	%d15, %d15, 8212
	mov.a	%a7, %d15
	ld.w	%d15, [%a7]0
	st.w	[%a14] -32, %d15
	.loc 1 4273 0
#APP
	# 4273 "../30_Bsw/MicroTestLib/Static/SriTst.c" 1
	nop
	# 0 "" 2
	.loc 1 4274 0
	# 4274 "../30_Bsw/MicroTestLib/Static/SriTst.c" 1
	nop
	# 0 "" 2
	.loc 1 4277 0
#NO_APP
	movh	%d15, hi:Sri_MppTrapCount
	addi	%d15, %d15, lo:Sri_MppTrapCount
	mov.a	%a7, %d15
	ld.bu	%d15, [%a7]0
	jeq	%d15, 1, .L242
	.loc 1 4279 0
	movh	%d15, 4
	addi	%d15, %d15, 16400
	st.w	[%a14] -4, %d15
	j	.L243
.L242:
	.loc 1 4283 0
	movh	%d15, 4
	addi	%d15, %d15, 511
	st.w	[%a14] -4, %d15
.L243:
	.loc 1 4287 0
	ld.w	%d15, [%a14] -36
	mov.a	%a7, %d15
	ld.a	%a15, [%a7]0
	movh	%d15, hi:Sri_MppTrapCount
	addi	%d15, %d15, lo:Sri_MppTrapCount
	mov.a	%a7, %d15
	ld.bu	%d15, [%a7]0
	st.a	[%a14] -20, %a15
	st.w	[%a14] -24, %d15
.LBB305:
.LBB306:
	.loc 2 400 0
	ld.w	%d15, [%a14] -20
	ld.a	%a15, [%a14] -24
	mov.d	%d1, %a15
#APP
	# 400 "../30_Bsw/STL_common/Mcal_Compiler.h" 1
	crc32 %d15, %d1, %d15
	# 0 "" 2
#NO_APP
	st.w	[%a14] -28, %d15
	.loc 2 401 0
	ld.w	%d15, [%a14] -28
.LBE306:
.LBE305:
	.loc 1 4287 0
	ld.a	%a15, [%a14] -36
	st.w	[%a15]0, %d15
	.loc 1 4290 0
	movh	%d15, hi:Sri_MppTrapCount
	mov.a	%a7, %d15
	lea	%a15, [%a7] lo:Sri_MppTrapCount
	mov	%d15, 0
	st.b	[%a15]0, %d15
	.loc 1 4292 0
	ld.w	%d15, [%a14] -4
	.loc 1 4293 0
	mov	%d2, %d15
	ret
.LFE45:
	.size	SriTst_lUser0AccTst, .-SriTst_lUser0AccTst
	.align 2
	.type	SriTst_lUser1AccTst, @function
SriTst_lUser1AccTst:
.LFB46:
	.loc 1 4335 0
	mov.aa	%a14, %SP
.LCFI56:
	sub.a	%SP, 40
.LCFI57:
	st.a	[%a14] -36, %a4
.LBB307:
	.loc 1 4343 0
#APP
	# 4343 "../30_Bsw/MicroTestLib/Static/SriTst.c" 1
	mfcr %d15, LO:(0xFE04)
	# 0 "" 2
#NO_APP
	st.w	[%a14] -8, %d15
	ld.w	%d15, [%a14] -8
.LBE307:
	st.w	[%a14] -12, %d15
	.loc 1 4344 0
	ld.a	%a15, [%a14] -12
	mov	%d15, -3073
	mov.d	%d1, %a15
	and	%d15, %d1
	st.w	[%a14] -12, %d15
	.loc 1 4345 0
	ld.a	%a15, [%a14] -12
	mov	%d15, 1024
	mov.d	%d1, %a15
	or	%d15, %d1
	st.w	[%a14] -12, %d15
.LBB308:
.LBB309:
	.loc 3 190 0
#APP
	# 190 "../30_Bsw/STL_common/intrinsics.h" 1
	dsync
	# 0 "" 2
#NO_APP
.LBE309:
.LBE308:
.LBB310:
	.loc 1 4346 0
	ld.w	%d15, [%a14] -12
	st.w	[%a14] -16, %d15
	ld.w	%d15, [%a14] -16
#APP
	# 4346 "../30_Bsw/MicroTestLib/Static/SriTst.c" 1
	mtcr LO:(0xFE04), %d15
	# 0 "" 2
#NO_APP
.LBE310:
.LBB311:
.LBB312:
	.loc 3 184 0
#APP
	# 184 "../30_Bsw/STL_common/intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE312:
.LBE311:
	.loc 1 4349 0
	movh	%d15, hi:Sri_ExpectedTrapClass
	mov.a	%a7, %d15
	lea	%a15, [%a7] lo:Sri_ExpectedTrapClass
	mov	%d15, 4
	st.w	[%a15]0, %d15
	.loc 1 4350 0
	movh	%d15, hi:Sri_ExpectedTrapId
	mov.a	%a7, %d15
	lea	%a15, [%a7] lo:Sri_ExpectedTrapId
	mov	%d15, 3
	st.w	[%a15]0, %d15
	.loc 1 4355 0
	movh	%d15, 63488
	addi	%d15, %d15, 8212
	mov.a	%a7, %d15
	ld.w	%d15, [%a7]0
	st.w	[%a14] -32, %d15
	.loc 1 4356 0
	call	Mcal_ResetENDINIT
	.loc 1 4357 0
	movh	%d15, 63488
	addi	%d15, %d15, 8212
	ld.a	%a15, [%a14] -32
	mov.a	%a7, %d15
	st.a	[%a7]0, %a15
	.loc 1 4358 0
	call	Mcal_SetENDINIT
	.loc 1 4361 0
	movh	%d15, hi:Sri_DaeTrapCount
	addi	%d15, %d15, lo:Sri_DaeTrapCount
	mov.a	%a7, %d15
	ld.bu	%d15, [%a7]0
	jeq	%d15, 1, .L245
	.loc 1 4363 0
	movh	%d15, 4
	addi	%d15, %d15, 16399
	st.w	[%a14] -4, %d15
	j	.L246
.L245:
	.loc 1 4367 0
	movh	%d15, 4
	addi	%d15, %d15, 511
	st.w	[%a14] -4, %d15
.L246:
	.loc 1 4371 0
	ld.w	%d15, [%a14] -36
	mov.a	%a7, %d15
	ld.a	%a15, [%a7]0
	movh	%d15, hi:Sri_DaeTrapCount
	addi	%d15, %d15, lo:Sri_DaeTrapCount
	mov.a	%a7, %d15
	ld.bu	%d15, [%a7]0
	st.a	[%a14] -20, %a15
	st.w	[%a14] -24, %d15
.LBB313:
.LBB314:
	.loc 2 400 0
	ld.w	%d15, [%a14] -20
	ld.a	%a15, [%a14] -24
	mov.d	%d1, %a15
#APP
	# 400 "../30_Bsw/STL_common/Mcal_Compiler.h" 1
	crc32 %d15, %d1, %d15
	# 0 "" 2
#NO_APP
	st.w	[%a14] -28, %d15
	.loc 2 401 0
	ld.w	%d15, [%a14] -28
.LBE314:
.LBE313:
	.loc 1 4371 0
	ld.a	%a15, [%a14] -36
	st.w	[%a15]0, %d15
	.loc 1 4374 0
	movh	%d15, hi:Sri_DaeTrapCount
	mov.a	%a7, %d15
	lea	%a15, [%a7] lo:Sri_DaeTrapCount
	mov	%d15, 0
	st.b	[%a15]0, %d15
	.loc 1 4376 0
	ld.w	%d15, [%a14] -4
	.loc 1 4377 0
	mov	%d2, %d15
	ret
.LFE46:
	.size	SriTst_lUser1AccTst, .-SriTst_lUser1AccTst
	.align 2
	.type	SriTst_lUnmappedAdrTst, @function
SriTst_lUnmappedAdrTst:
.LFB47:
	.loc 1 4414 0
	mov.aa	%a14, %SP
.LCFI58:
	sub.a	%SP, 32
.LCFI59:
	st.a	[%a14] -28, %a4
	.loc 1 4415 0
	movh	%d15, 63488
	addi	%d15, %d15, 1024
	st.w	[%a14] -8, %d15
	.loc 1 4416 0
	mov	%d15, 0
	st.w	[%a14] -24, %d15
	.loc 1 4417 0
	movh	%d15, 4
	addi	%d15, %d15, 266
	st.w	[%a14] -4, %d15
	.loc 1 4420 0
	movh	%d15, hi:Sri_ExpectedTrapClass
	mov.a	%a7, %d15
	lea	%a15, [%a7] lo:Sri_ExpectedTrapClass
	mov	%d15, 4
	st.w	[%a15]0, %d15
	.loc 1 4421 0
	movh	%d15, hi:Sri_ExpectedTrapId
	mov.a	%a7, %d15
	lea	%a15, [%a7] lo:Sri_ExpectedTrapId
	mov	%d15, 2
	st.w	[%a15]0, %d15
	.loc 1 4424 0
	ld.w	%d15, [%a14] -8
	mov.a	%a7, %d15
	ld.w	%d15, [%a7]0
	st.w	[%a14] -24, %d15
	.loc 1 4427 0
	ld.w	%d15, [%a14] -28
	mov.a	%a7, %d15
	ld.a	%a15, [%a7]0
	movh	%d15, hi:Sri_DseTrapCount
	addi	%d15, %d15, lo:Sri_DseTrapCount
	mov.a	%a7, %d15
	ld.bu	%d15, [%a7]0
	st.a	[%a14] -12, %a15
	st.w	[%a14] -16, %d15
.LBB315:
.LBB316:
	.loc 2 400 0
	ld.w	%d15, [%a14] -12
	ld.a	%a15, [%a14] -16
	mov.d	%d1, %a15
#APP
	# 400 "../30_Bsw/STL_common/Mcal_Compiler.h" 1
	crc32 %d15, %d1, %d15
	# 0 "" 2
#NO_APP
	st.w	[%a14] -20, %d15
	.loc 2 401 0
	ld.w	%d15, [%a14] -20
.LBE316:
.LBE315:
	.loc 1 4427 0
	ld.a	%a15, [%a14] -28
	st.w	[%a15]0, %d15
	.loc 1 4430 0
	movh	%d15, hi:Sri_DseTrapCount
	addi	%d15, %d15, lo:Sri_DseTrapCount
	mov.a	%a7, %d15
	ld.bu	%d15, [%a7]0
	jeq	%d15, 1, .L248
	.loc 1 4432 0
	movh	%d15, 4
	addi	%d15, %d15, 16398
	st.w	[%a14] -4, %d15
	j	.L249
.L248:
	.loc 1 4436 0
	movh	%d15, 4
	addi	%d15, %d15, 511
	st.w	[%a14] -4, %d15
.L249:
	.loc 1 4440 0
	movh	%d15, hi:Sri_DseTrapCount
	mov.a	%a7, %d15
	lea	%a15, [%a7] lo:Sri_DseTrapCount
	mov	%d15, 0
	st.b	[%a15]0, %d15
	.loc 1 4441 0
	ld.w	%d15, [%a14] -24
	.loc 1 4443 0
	ld.w	%d15, [%a14] -4
	.loc 1 4444 0
	mov	%d2, %d15
	ret
.LFE47:
	.size	SriTst_lUnmappedAdrTst, .-SriTst_lUnmappedAdrTst
	.align 2
	.type	SriTst_lUnsupportedOCTst, @function
SriTst_lUnsupportedOCTst:
.LFB48:
	.loc 1 4486 0
	mov.aa	%a14, %SP
.LCFI60:
	sub.a	%SP, 32
.LCFI61:
	st.a	[%a14] -28, %a4
	.loc 1 4488 0
	mov	%d15, 0
	st.b	[%a14] -21, %d15
	.loc 1 4489 0
	movh	%d15, 4
	addi	%d15, %d15, 266
	st.w	[%a14] -4, %d15
	.loc 1 4492 0
	movh	%d15, hi:Sri_ExpectedTrapClass
	mov.a	%a7, %d15
	lea	%a15, [%a7] lo:Sri_ExpectedTrapClass
	mov	%d15, 4
	st.w	[%a15]0, %d15
	.loc 1 4493 0
	movh	%d15, hi:Sri_ExpectedTrapId
	mov.a	%a7, %d15
	lea	%a15, [%a7] lo:Sri_ExpectedTrapId
	mov	%d15, 2
	st.w	[%a15]0, %d15
	.loc 1 4499 0
	movh	%d15, 63617
	addi	%d15, %d15, -8192
	st.w	[%a14] -8, %d15
	.loc 1 4500 0
	ld.w	%d15, [%a14] -8
	mov.a	%a7, %d15
	ld.bu	%d15, [%a7]0
	st.b	[%a14] -21, %d15
	.loc 1 4503 0
	ld.w	%d15, [%a14] -28
	mov.a	%a7, %d15
	ld.a	%a15, [%a7]0
	movh	%d15, hi:Sri_DseTrapCount
	addi	%d15, %d15, lo:Sri_DseTrapCount
	mov.a	%a7, %d15
	ld.bu	%d15, [%a7]0
	st.a	[%a14] -12, %a15
	st.w	[%a14] -16, %d15
.LBB317:
.LBB318:
	.loc 2 400 0
	ld.w	%d15, [%a14] -12
	ld.a	%a15, [%a14] -16
	mov.d	%d1, %a15
#APP
	# 400 "../30_Bsw/STL_common/Mcal_Compiler.h" 1
	crc32 %d15, %d1, %d15
	# 0 "" 2
#NO_APP
	st.w	[%a14] -20, %d15
	.loc 2 401 0
	ld.w	%d15, [%a14] -20
.LBE318:
.LBE317:
	.loc 1 4503 0
	ld.a	%a15, [%a14] -28
	st.w	[%a15]0, %d15
	.loc 1 4506 0
	movh	%d15, hi:Sri_DseTrapCount
	addi	%d15, %d15, lo:Sri_DseTrapCount
	mov.a	%a7, %d15
	ld.bu	%d15, [%a7]0
	jeq	%d15, 1, .L251
	.loc 1 4508 0
	movh	%d15, 4
	addi	%d15, %d15, 16397
	st.w	[%a14] -4, %d15
	j	.L252
.L251:
	.loc 1 4512 0
	movh	%d15, 4
	addi	%d15, %d15, 511
	st.w	[%a14] -4, %d15
.L252:
	.loc 1 4516 0
	movh	%d15, hi:Sri_DseTrapCount
	mov.a	%a7, %d15
	lea	%a15, [%a7] lo:Sri_DseTrapCount
	mov	%d15, 0
	st.b	[%a15]0, %d15
	.loc 1 4517 0
	ld.bu	%d15, [%a14] -21
	.loc 1 4519 0
	ld.w	%d15, [%a14] -4
	.loc 1 4520 0
	mov	%d2, %d15
	ret
.LFE48:
	.size	SriTst_lUnsupportedOCTst, .-SriTst_lUnsupportedOCTst
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
	.byte	0xd
	.uleb128 0x1e
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB19
	.uaword	.LFE19-.LFB19
	.byte	0x4
	.uaword	.LCFI2-.LFB19
	.byte	0xd
	.uleb128 0x1e
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB20
	.uaword	.LFE20-.LFB20
	.byte	0x4
	.uaword	.LCFI4-.LFB20
	.byte	0xd
	.uleb128 0x1e
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB21
	.uaword	.LFE21-.LFB21
	.byte	0x4
	.uaword	.LCFI6-.LFB21
	.byte	0xd
	.uleb128 0x1e
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB22
	.uaword	.LFE22-.LFB22
	.byte	0x4
	.uaword	.LCFI8-.LFB22
	.byte	0xd
	.uleb128 0x1e
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB23
	.uaword	.LFE23-.LFB23
	.byte	0x4
	.uaword	.LCFI10-.LFB23
	.byte	0xd
	.uleb128 0x1e
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB24
	.uaword	.LFE24-.LFB24
	.byte	0x4
	.uaword	.LCFI12-.LFB24
	.byte	0xd
	.uleb128 0x1e
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB25
	.uaword	.LFE25-.LFB25
	.byte	0x4
	.uaword	.LCFI14-.LFB25
	.byte	0xd
	.uleb128 0x1e
	.align 2
.LEFDE14:
.LSFDE16:
	.uaword	.LEFDE16-.LASFDE16
.LASFDE16:
	.uaword	.Lframe0
	.uaword	.LFB26
	.uaword	.LFE26-.LFB26
	.byte	0x4
	.uaword	.LCFI16-.LFB26
	.byte	0xd
	.uleb128 0x1e
	.align 2
.LEFDE16:
.LSFDE18:
	.uaword	.LEFDE18-.LASFDE18
.LASFDE18:
	.uaword	.Lframe0
	.uaword	.LFB27
	.uaword	.LFE27-.LFB27
	.byte	0x4
	.uaword	.LCFI18-.LFB27
	.byte	0xd
	.uleb128 0x1e
	.align 2
.LEFDE18:
.LSFDE20:
	.uaword	.LEFDE20-.LASFDE20
.LASFDE20:
	.uaword	.Lframe0
	.uaword	.LFB28
	.uaword	.LFE28-.LFB28
	.byte	0x4
	.uaword	.LCFI20-.LFB28
	.byte	0xd
	.uleb128 0x1e
	.align 2
.LEFDE20:
.LSFDE22:
	.uaword	.LEFDE22-.LASFDE22
.LASFDE22:
	.uaword	.Lframe0
	.uaword	.LFB29
	.uaword	.LFE29-.LFB29
	.byte	0x4
	.uaword	.LCFI22-.LFB29
	.byte	0xd
	.uleb128 0x1e
	.align 2
.LEFDE22:
.LSFDE24:
	.uaword	.LEFDE24-.LASFDE24
.LASFDE24:
	.uaword	.Lframe0
	.uaword	.LFB30
	.uaword	.LFE30-.LFB30
	.byte	0x4
	.uaword	.LCFI24-.LFB30
	.byte	0xd
	.uleb128 0x1e
	.align 2
.LEFDE24:
.LSFDE26:
	.uaword	.LEFDE26-.LASFDE26
.LASFDE26:
	.uaword	.Lframe0
	.uaword	.LFB31
	.uaword	.LFE31-.LFB31
	.byte	0x4
	.uaword	.LCFI26-.LFB31
	.byte	0xd
	.uleb128 0x1e
	.align 2
.LEFDE26:
.LSFDE28:
	.uaword	.LEFDE28-.LASFDE28
.LASFDE28:
	.uaword	.Lframe0
	.uaword	.LFB32
	.uaword	.LFE32-.LFB32
	.byte	0x4
	.uaword	.LCFI28-.LFB32
	.byte	0xd
	.uleb128 0x1e
	.align 2
.LEFDE28:
.LSFDE30:
	.uaword	.LEFDE30-.LASFDE30
.LASFDE30:
	.uaword	.Lframe0
	.uaword	.LFB33
	.uaword	.LFE33-.LFB33
	.byte	0x4
	.uaword	.LCFI30-.LFB33
	.byte	0xd
	.uleb128 0x1e
	.align 2
.LEFDE30:
.LSFDE32:
	.uaword	.LEFDE32-.LASFDE32
.LASFDE32:
	.uaword	.Lframe0
	.uaword	.LFB34
	.uaword	.LFE34-.LFB34
	.byte	0x4
	.uaword	.LCFI32-.LFB34
	.byte	0xd
	.uleb128 0x1e
	.align 2
.LEFDE32:
.LSFDE34:
	.uaword	.LEFDE34-.LASFDE34
.LASFDE34:
	.uaword	.Lframe0
	.uaword	.LFB35
	.uaword	.LFE35-.LFB35
	.byte	0x4
	.uaword	.LCFI34-.LFB35
	.byte	0xd
	.uleb128 0x1e
	.align 2
.LEFDE34:
.LSFDE36:
	.uaword	.LEFDE36-.LASFDE36
.LASFDE36:
	.uaword	.Lframe0
	.uaword	.LFB36
	.uaword	.LFE36-.LFB36
	.byte	0x4
	.uaword	.LCFI36-.LFB36
	.byte	0xd
	.uleb128 0x1e
	.align 2
.LEFDE36:
.LSFDE38:
	.uaword	.LEFDE38-.LASFDE38
.LASFDE38:
	.uaword	.Lframe0
	.uaword	.LFB37
	.uaword	.LFE37-.LFB37
	.byte	0x4
	.uaword	.LCFI38-.LFB37
	.byte	0xd
	.uleb128 0x1e
	.align 2
.LEFDE38:
.LSFDE40:
	.uaword	.LEFDE40-.LASFDE40
.LASFDE40:
	.uaword	.Lframe0
	.uaword	.LFB38
	.uaword	.LFE38-.LFB38
	.byte	0x4
	.uaword	.LCFI40-.LFB38
	.byte	0xd
	.uleb128 0x1e
	.align 2
.LEFDE40:
.LSFDE42:
	.uaword	.LEFDE42-.LASFDE42
.LASFDE42:
	.uaword	.Lframe0
	.uaword	.LFB39
	.uaword	.LFE39-.LFB39
	.byte	0x4
	.uaword	.LCFI42-.LFB39
	.byte	0xd
	.uleb128 0x1e
	.align 2
.LEFDE42:
.LSFDE44:
	.uaword	.LEFDE44-.LASFDE44
.LASFDE44:
	.uaword	.Lframe0
	.uaword	.LFB40
	.uaword	.LFE40-.LFB40
	.byte	0x4
	.uaword	.LCFI44-.LFB40
	.byte	0xd
	.uleb128 0x1e
	.align 2
.LEFDE44:
.LSFDE46:
	.uaword	.LEFDE46-.LASFDE46
.LASFDE46:
	.uaword	.Lframe0
	.uaword	.LFB41
	.uaword	.LFE41-.LFB41
	.byte	0x4
	.uaword	.LCFI46-.LFB41
	.byte	0xd
	.uleb128 0x1e
	.align 2
.LEFDE46:
.LSFDE48:
	.uaword	.LEFDE48-.LASFDE48
.LASFDE48:
	.uaword	.Lframe0
	.uaword	.LFB42
	.uaword	.LFE42-.LFB42
	.byte	0x4
	.uaword	.LCFI48-.LFB42
	.byte	0xd
	.uleb128 0x1e
	.align 2
.LEFDE48:
.LSFDE50:
	.uaword	.LEFDE50-.LASFDE50
.LASFDE50:
	.uaword	.Lframe0
	.uaword	.LFB43
	.uaword	.LFE43-.LFB43
	.byte	0x4
	.uaword	.LCFI50-.LFB43
	.byte	0xd
	.uleb128 0x1e
	.align 2
.LEFDE50:
.LSFDE52:
	.uaword	.LEFDE52-.LASFDE52
.LASFDE52:
	.uaword	.Lframe0
	.uaword	.LFB44
	.uaword	.LFE44-.LFB44
	.byte	0x4
	.uaword	.LCFI52-.LFB44
	.byte	0xd
	.uleb128 0x1e
	.align 2
.LEFDE52:
.LSFDE54:
	.uaword	.LEFDE54-.LASFDE54
.LASFDE54:
	.uaword	.Lframe0
	.uaword	.LFB45
	.uaword	.LFE45-.LFB45
	.byte	0x4
	.uaword	.LCFI54-.LFB45
	.byte	0xd
	.uleb128 0x1e
	.align 2
.LEFDE54:
.LSFDE56:
	.uaword	.LEFDE56-.LASFDE56
.LASFDE56:
	.uaword	.Lframe0
	.uaword	.LFB46
	.uaword	.LFE46-.LFB46
	.byte	0x4
	.uaword	.LCFI56-.LFB46
	.byte	0xd
	.uleb128 0x1e
	.align 2
.LEFDE56:
.LSFDE58:
	.uaword	.LEFDE58-.LASFDE58
.LASFDE58:
	.uaword	.Lframe0
	.uaword	.LFB47
	.uaword	.LFE47-.LFB47
	.byte	0x4
	.uaword	.LCFI58-.LFB47
	.byte	0xd
	.uleb128 0x1e
	.align 2
.LEFDE58:
.LSFDE60:
	.uaword	.LEFDE60-.LASFDE60
.LASFDE60:
	.uaword	.Lframe0
	.uaword	.LFB48
	.uaword	.LFE48-.LFB48
	.byte	0x4
	.uaword	.LCFI60-.LFB48
	.byte	0xd
	.uleb128 0x1e
	.align 2
.LEFDE60:
.section .text,"ax",@progbits
.Letext0:
	.file 4 "../30_Bsw/Common/Platform_Types.h"
	.file 5 "../30_Bsw/Common/Std_Types.h"
	.file 6 "../30_Bsw/STL_common/Mcal_TcLib.h"
	.file 7 "../30_Bsw/STL_common/Sl_ErrorCodes.h"
	.file 8 "../30_Bsw/MicroTestLib/Static/SriTst.h"
	.file 9 "../30_Bsw/Smu/Static/Smu.h"
	.file 10 "../30_Bsw/Smu/Static/SmuInt.h"
	.file 11 "../30_Bsw/MicroTestLib/Static/Mtl_Trap.h"
	.file 12 "../30_Bsw/Common/TC21x/IfxCpu_regdef.h"
	.file 13 "../30_Bsw/Common/TC21x/IfxScu_regdef.h"
	.file 14 "../30_Bsw/Common/TC21x/IfxMc_regdef.h"
	.file 15 "../30_Bsw/Common/TC21x/IfxMtu_regdef.h"
	.file 16 "../30_Bsw/Common/TC21x/IfxLmu_regdef.h"
	.file 17 "../30_Bsw/Common/TC21x/IfxDma_regdef.h"
	.file 18 "../30_Bsw/Common/TC21x/IfxOvc_regdef.h"
	.file 19 "../30_Bsw/Common/TC21x/IfxFlash_regdef.h"
	.file 20 "../30_Bsw/Common/TC21x/IfxXbar_regdef.h"
	.file 21 "../30_Bsw/Common/TC21x/IfxSrc_regdef.h"
	.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x4f87
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.6.3 build on 2013-05-17"
	.byte	0x1
	.string	"../30_Bsw/MicroTestLib/Static/SriTst.c"
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
	.uaword	0x7f
	.uleb128 0x3
	.string	"uint16"
	.byte	0x4
	.byte	0x5d
	.uaword	0x9d
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x3
	.string	"uint32"
	.byte	0x4
	.byte	0x5f
	.uaword	0xdd
	.uleb128 0x3
	.string	"boolean"
	.byte	0x4
	.byte	0x63
	.uaword	0x7f
	.uleb128 0x3
	.string	"Std_ReturnType"
	.byte	0x5
	.byte	0x71
	.uaword	0xfa
	.uleb128 0x3
	.string	"unsigned_int"
	.byte	0x6
	.byte	0x7a
	.uaword	0xba
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.byte	0x6d
	.uaword	0x4e6
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
	.byte	0x7
	.uahalf	0x2a3
	.uaword	0x121
	.uleb128 0x6
	.string	"Sl_ParamSetType"
	.byte	0x7
	.uahalf	0x2ac
	.uaword	0x121
	.uleb128 0x7
	.string	"SriTst_Config"
	.byte	0x1c
	.byte	0x8
	.byte	0xcb
	.uaword	0x616
	.uleb128 0x8
	.string	"LmuTstEN"
	.byte	0x8
	.byte	0xcd
	.uaword	0x616
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"PmuDFlashTstEN"
	.byte	0x8
	.byte	0xce
	.uaword	0x616
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x8
	.string	"PmuPFlashTstEN"
	.byte	0x8
	.byte	0xcf
	.uaword	0x616
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x8
	.string	"DmaTstEN"
	.byte	0x8
	.byte	0xd0
	.uaword	0x616
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x8
	.string	"XbarTstEN"
	.byte	0x8
	.byte	0xd1
	.uaword	0x616
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.string	"SriTstPSPRTstAdr"
	.byte	0x8
	.byte	0xd2
	.uaword	0x626
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.string	"SriTstDSPRTstAdr"
	.byte	0x8
	.byte	0xd3
	.uaword	0x626
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.uaword	.LASF0
	.byte	0x8
	.byte	0xd4
	.uaword	0x626
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.string	"SriTstDFlashTstAdr"
	.byte	0x8
	.byte	0xd5
	.uaword	0x626
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x8
	.string	"SriTstPFlashTstAdr"
	.byte	0x8
	.byte	0xd6
	.uaword	0x626
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0
	.uleb128 0xa
	.uaword	0xfa
	.uaword	0x626
	.uleb128 0xb
	.uaword	0xdd
	.byte	0
	.byte	0
	.uleb128 0xa
	.uaword	0x636
	.uaword	0x636
	.uleb128 0xb
	.uaword	0xdd
	.byte	0
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.uaword	0x121
	.uleb128 0x3
	.string	"SriTst_ConfigType"
	.byte	0x8
	.byte	0xd8
	.uaword	0x515
	.uleb128 0x3
	.string	"Smu_StateType"
	.byte	0x9
	.byte	0x9e
	.uaword	0xfa
	.uleb128 0x3
	.string	"Smu_AlarmActionType"
	.byte	0xa
	.byte	0x44
	.uaword	0xfa
	.uleb128 0x3
	.string	"Smu_FSPActionType"
	.byte	0xa
	.byte	0x46
	.uaword	0xfa
	.uleb128 0xd
	.uaword	0x121
	.uleb128 0x3
	.string	"TRAP_ErrorType"
	.byte	0xb
	.byte	0x66
	.uaword	0x121
	.uleb128 0xe
	.uaword	0xba
	.uleb128 0xf
	.string	"_Ifx_CPU_PIETR_Bits"
	.byte	0x4
	.byte	0xc
	.uahalf	0x1d1
	.uaword	0x7a0
	.uleb128 0x10
	.string	"IED"
	.byte	0xc
	.uahalf	0x1d3
	.uaword	0x6b9
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.string	"IE_T"
	.byte	0xc
	.uahalf	0x1d4
	.uaword	0x6b9
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.string	"IE_C"
	.byte	0xc
	.uahalf	0x1d5
	.uaword	0x6b9
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.string	"IE_S"
	.byte	0xc
	.uahalf	0x1d6
	.uaword	0x6b9
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.string	"IE_BI"
	.byte	0xc
	.uahalf	0x1d7
	.uaword	0x6b9
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.string	"E_INFO"
	.byte	0xc
	.uahalf	0x1d8
	.uaword	0x6b9
	.byte	0x4
	.byte	0x6
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.string	"IE_DUAL"
	.byte	0xc
	.uahalf	0x1d9
	.uaword	0x6b9
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.string	"IE_SP"
	.byte	0xc
	.uahalf	0x1da
	.uaword	0x6b9
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.string	"IE_BS"
	.byte	0xc
	.uahalf	0x1db
	.uaword	0x6b9
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.uaword	.LASF1
	.byte	0xc
	.uahalf	0x1dc
	.uaword	0x6b9
	.byte	0x4
	.byte	0x12
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x6
	.string	"Ifx_CPU_PIETR_Bits"
	.byte	0xc
	.uahalf	0x1dd
	.uaword	0x6be
	.uleb128 0xf
	.string	"_Ifx_CPU_SPROT_RGN_LA_Bits"
	.byte	0x4
	.byte	0xc
	.uahalf	0x246
	.uaword	0x805
	.uleb128 0x11
	.uaword	.LASF2
	.byte	0xc
	.uahalf	0x248
	.uaword	0xba
	.byte	0x4
	.byte	0x5
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.string	"ADDR"
	.byte	0xc
	.uahalf	0x249
	.uaword	0xba
	.byte	0x4
	.byte	0x1b
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x6
	.string	"Ifx_CPU_SPROT_RGN_LA_Bits"
	.byte	0xc
	.uahalf	0x24a
	.uaword	0x7bb
	.uleb128 0x12
	.byte	0x4
	.byte	0xc
	.uahalf	0x43f
	.uaword	0x84f
	.uleb128 0x13
	.string	"U"
	.byte	0xc
	.uahalf	0x441
	.uaword	0xba
	.uleb128 0x13
	.string	"I"
	.byte	0xc
	.uahalf	0x442
	.uaword	0xb3
	.uleb128 0x13
	.string	"B"
	.byte	0xc
	.uahalf	0x443
	.uaword	0x7a0
	.byte	0
	.uleb128 0x6
	.string	"Ifx_CPU_PIETR"
	.byte	0xc
	.uahalf	0x444
	.uaword	0x827
	.uleb128 0x12
	.byte	0x4
	.byte	0xc
	.uahalf	0x49f
	.uaword	0x88d
	.uleb128 0x13
	.string	"U"
	.byte	0xc
	.uahalf	0x4a1
	.uaword	0xba
	.uleb128 0x13
	.string	"I"
	.byte	0xc
	.uahalf	0x4a2
	.uaword	0xb3
	.uleb128 0x13
	.string	"B"
	.byte	0xc
	.uahalf	0x4a3
	.uaword	0x805
	.byte	0
	.uleb128 0x6
	.string	"Ifx_CPU_SPROT_RGN_LA"
	.byte	0xc
	.uahalf	0x4a4
	.uaword	0x865
	.uleb128 0xa
	.uaword	0x7f
	.uaword	0x8ba
	.uleb128 0xb
	.uaword	0xdd
	.byte	0xb
	.byte	0
	.uleb128 0xf
	.string	"_Ifx_SCU_OVCCON_Bits"
	.byte	0x4
	.byte	0xd
	.uahalf	0x272
	.uaword	0x9c5
	.uleb128 0x10
	.string	"CSEL0"
	.byte	0xd
	.uahalf	0x274
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.string	"CSEL1"
	.byte	0xd
	.uahalf	0x275
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.string	"CSEL2"
	.byte	0xd
	.uahalf	0x276
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.uaword	.LASF3
	.byte	0xd
	.uahalf	0x277
	.uaword	0xba
	.byte	0x4
	.byte	0xd
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.string	"OVSTRT"
	.byte	0xd
	.uahalf	0x278
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.string	"OVSTP"
	.byte	0xd
	.uahalf	0x279
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.string	"DCINVAL"
	.byte	0xd
	.uahalf	0x27a
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.string	"reserved_19"
	.byte	0xd
	.uahalf	0x27b
	.uaword	0xba
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.string	"OVCONF"
	.byte	0xd
	.uahalf	0x27c
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.string	"POVCONF"
	.byte	0xd
	.uahalf	0x27d
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.string	"reserved_26"
	.byte	0xd
	.uahalf	0x27e
	.uaword	0xba
	.byte	0x4
	.byte	0x6
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x6
	.string	"Ifx_SCU_OVCCON_Bits"
	.byte	0xd
	.uahalf	0x27f
	.uaword	0x8ba
	.uleb128 0xf
	.string	"_Ifx_SCU_OVCENABLE_Bits"
	.byte	0x4
	.byte	0xd
	.uahalf	0x282
	.uaword	0xa51
	.uleb128 0x10
	.string	"OVEN0"
	.byte	0xd
	.uahalf	0x284
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.string	"OVEN1"
	.byte	0xd
	.uahalf	0x285
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.string	"OVEN2"
	.byte	0xd
	.uahalf	0x286
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.uaword	.LASF3
	.byte	0xd
	.uahalf	0x287
	.uaword	0xba
	.byte	0x4
	.byte	0x1d
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x6
	.string	"Ifx_SCU_OVCENABLE_Bits"
	.byte	0xd
	.uahalf	0x288
	.uaword	0x9e1
	.uleb128 0x12
	.byte	0x4
	.byte	0xd
	.uahalf	0x5cb
	.uaword	0xa98
	.uleb128 0x13
	.string	"U"
	.byte	0xd
	.uahalf	0x5cd
	.uaword	0xba
	.uleb128 0x13
	.string	"I"
	.byte	0xd
	.uahalf	0x5ce
	.uaword	0xb3
	.uleb128 0x13
	.string	"B"
	.byte	0xd
	.uahalf	0x5cf
	.uaword	0x9c5
	.byte	0
	.uleb128 0x6
	.string	"Ifx_SCU_OVCCON"
	.byte	0xd
	.uahalf	0x5d0
	.uaword	0xa70
	.uleb128 0x12
	.byte	0x4
	.byte	0xd
	.uahalf	0x5d3
	.uaword	0xad7
	.uleb128 0x13
	.string	"U"
	.byte	0xd
	.uahalf	0x5d5
	.uaword	0xba
	.uleb128 0x13
	.string	"I"
	.byte	0xd
	.uahalf	0x5d6
	.uaword	0xb3
	.uleb128 0x13
	.string	"B"
	.byte	0xd
	.uahalf	0x5d7
	.uaword	0xa51
	.byte	0
	.uleb128 0x6
	.string	"Ifx_SCU_OVCENABLE"
	.byte	0xd
	.uahalf	0x5d8
	.uaword	0xaaf
	.uleb128 0xe
	.uaword	0x9d
	.uleb128 0x7
	.string	"_Ifx_MC_ECCD_Bits"
	.byte	0x2
	.byte	0xe
	.byte	0x3d
	.uaword	0xbe4
	.uleb128 0x14
	.string	"SERR"
	.byte	0xe
	.byte	0x3f
	.uaword	0xaf1
	.byte	0x2
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"CERR"
	.byte	0xe
	.byte	0x40
	.uaword	0xaf1
	.byte	0x2
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"UERR"
	.byte	0xe
	.byte	0x41
	.uaword	0xaf1
	.byte	0x2
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"AERR"
	.byte	0xe
	.byte	0x42
	.uaword	0xaf1
	.byte	0x2
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"TRC"
	.byte	0xe
	.byte	0x43
	.uaword	0xaf1
	.byte	0x2
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"VAL"
	.byte	0xe
	.byte	0x44
	.uaword	0xaf1
	.byte	0x2
	.byte	0x5
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.uaword	.LASF4
	.byte	0xe
	.byte	0x45
	.uaword	0xaf1
	.byte	0x2
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"CENE"
	.byte	0xe
	.byte	0x46
	.uaword	0xaf1
	.byte	0x2
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"UENE"
	.byte	0xe
	.byte	0x47
	.uaword	0xaf1
	.byte	0x2
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"AENE"
	.byte	0xe
	.byte	0x48
	.uaword	0xaf1
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"ECE"
	.byte	0xe
	.byte	0x49
	.uaword	0xaf1
	.byte	0x2
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"EOV"
	.byte	0xe
	.byte	0x4a
	.uaword	0xaf1
	.byte	0x2
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_MC_ECCD_Bits"
	.byte	0xe
	.byte	0x4b
	.uaword	0xaf6
	.uleb128 0x7
	.string	"_Ifx_MC_ECCS_Bits"
	.byte	0x2
	.byte	0xe
	.byte	0x4e
	.uaword	0xcd0
	.uleb128 0x14
	.string	"CENE"
	.byte	0xe
	.byte	0x50
	.uaword	0xaf1
	.byte	0x2
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"UENE"
	.byte	0xe
	.byte	0x51
	.uaword	0xaf1
	.byte	0x2
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"AENE"
	.byte	0xe
	.byte	0x52
	.uaword	0xaf1
	.byte	0x2
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"ECE"
	.byte	0xe
	.byte	0x53
	.uaword	0xaf1
	.byte	0x2
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"TRE"
	.byte	0xe
	.byte	0x54
	.uaword	0xaf1
	.byte	0x2
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"BFLE"
	.byte	0xe
	.byte	0x55
	.uaword	0xaf1
	.byte	0x2
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"SFLE"
	.byte	0xe
	.byte	0x56
	.uaword	0xaf1
	.byte	0x2
	.byte	0x2
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"ECCMAP"
	.byte	0xe
	.byte	0x57
	.uaword	0xaf1
	.byte	0x2
	.byte	0x2
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"TC_WAY_SEL"
	.byte	0xe
	.byte	0x58
	.uaword	0xaf1
	.byte	0x2
	.byte	0x2
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.uaword	.LASF5
	.byte	0xe
	.byte	0x59
	.uaword	0xaf1
	.byte	0x2
	.byte	0x4
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_MC_ECCS_Bits"
	.byte	0xe
	.byte	0x5a
	.uaword	0xbfc
	.uleb128 0x7
	.string	"_Ifx_MC_RDBFL_Bits"
	.byte	0x2
	.byte	0xe
	.byte	0x86
	.uaword	0xd17
	.uleb128 0x14
	.string	"WDATA"
	.byte	0xe
	.byte	0x88
	.uaword	0xaf1
	.byte	0x2
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_MC_RDBFL_Bits"
	.byte	0xe
	.byte	0x89
	.uaword	0xce8
	.uleb128 0x16
	.byte	0x2
	.byte	0xe
	.byte	0xa7
	.uaword	0xd54
	.uleb128 0x17
	.string	"U"
	.byte	0xe
	.byte	0xa9
	.uaword	0x9d
	.uleb128 0x17
	.string	"I"
	.byte	0xe
	.byte	0xaa
	.uaword	0x90
	.uleb128 0x17
	.string	"B"
	.byte	0xe
	.byte	0xab
	.uaword	0xbe4
	.byte	0
	.uleb128 0x3
	.string	"Ifx_MC_ECCD"
	.byte	0xe
	.byte	0xac
	.uaword	0xd30
	.uleb128 0x16
	.byte	0x2
	.byte	0xe
	.byte	0xaf
	.uaword	0xd8b
	.uleb128 0x17
	.string	"U"
	.byte	0xe
	.byte	0xb1
	.uaword	0x9d
	.uleb128 0x17
	.string	"I"
	.byte	0xe
	.byte	0xb2
	.uaword	0x90
	.uleb128 0x17
	.string	"B"
	.byte	0xe
	.byte	0xb3
	.uaword	0xcd0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_MC_ECCS"
	.byte	0xe
	.byte	0xb4
	.uaword	0xd67
	.uleb128 0x16
	.byte	0x2
	.byte	0xe
	.byte	0xd7
	.uaword	0xdc2
	.uleb128 0x17
	.string	"U"
	.byte	0xe
	.byte	0xd9
	.uaword	0x9d
	.uleb128 0x17
	.string	"I"
	.byte	0xe
	.byte	0xda
	.uaword	0x90
	.uleb128 0x17
	.string	"B"
	.byte	0xe
	.byte	0xdb
	.uaword	0xd17
	.byte	0
	.uleb128 0x3
	.string	"Ifx_MC_RDBFL"
	.byte	0xe
	.byte	0xdc
	.uaword	0xd9e
	.uleb128 0x7
	.string	"_Ifx_MTU_CLC_Bits"
	.byte	0x4
	.byte	0xf
	.byte	0x58
	.uaword	0xe4b
	.uleb128 0x14
	.string	"DISR"
	.byte	0xf
	.byte	0x5a
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"DISS"
	.byte	0xf
	.byte	0x5b
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"Resvd"
	.byte	0xf
	.byte	0x5c
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"EDIS"
	.byte	0xf
	.byte	0x5d
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.uaword	.LASF6
	.byte	0xf
	.byte	0x5e
	.uaword	0xba
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_MTU_CLC_Bits"
	.byte	0xf
	.byte	0x5f
	.uaword	0xdd6
	.uleb128 0x7
	.string	"_Ifx_MTU_MEMSTAT0_Bits"
	.byte	0x4
	.byte	0xf
	.byte	0x7d
	.uaword	0x10c3
	.uleb128 0x14
	.string	"CPU2DSAIU"
	.byte	0xf
	.byte	0x7f
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.uaword	.LASF7
	.byte	0xf
	.byte	0x80
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"CPU2DTAIU"
	.byte	0xf
	.byte	0x81
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"CPU2PSAIU"
	.byte	0xf
	.byte	0x82
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.uaword	.LASF6
	.byte	0xf
	.byte	0x83
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"CPU2PTAIU"
	.byte	0xf
	.byte	0x84
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"CPU1DSAIU"
	.byte	0xf
	.byte	0x85
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"reserved_7"
	.byte	0xf
	.byte	0x86
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"CPU1DTAIU"
	.byte	0xf
	.byte	0x87
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"CPU1PSAIU"
	.byte	0xf
	.byte	0x88
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.uaword	.LASF4
	.byte	0xf
	.byte	0x89
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"CPU1PTAIU"
	.byte	0xf
	.byte	0x8a
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.uaword	.LASF5
	.byte	0xf
	.byte	0x8b
	.uaword	0xba
	.byte	0x4
	.byte	0x2
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"CPU0DSAIU"
	.byte	0xf
	.byte	0x8c
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"reserved_15"
	.byte	0xf
	.byte	0x8d
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"CPU0PSAIU"
	.byte	0xf
	.byte	0x8e
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"CPU0PTAIU"
	.byte	0xf
	.byte	0x8f
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.uaword	.LASF8
	.byte	0xf
	.byte	0x90
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"CPU0DxAIU"
	.byte	0xf
	.byte	0x91
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"CPU1DS2AIU"
	.byte	0xf
	.byte	0x92
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"CPU2DS2AIU"
	.byte	0xf
	.byte	0x93
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.uaword	.LASF9
	.byte	0xf
	.byte	0x94
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"HSMCAIU"
	.byte	0xf
	.byte	0x95
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"HSMTAIU"
	.byte	0xf
	.byte	0x96
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"HSMRAIU"
	.byte	0xf
	.byte	0x97
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"FSI0AIU"
	.byte	0xf
	.byte	0x98
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.uaword	.LASF10
	.byte	0xf
	.byte	0x99
	.uaword	0xba
	.byte	0x4
	.byte	0x5
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_MTU_MEMSTAT0_Bits"
	.byte	0xf
	.byte	0x9a
	.uaword	0xe63
	.uleb128 0x7
	.string	"_Ifx_MTU_MEMTEST0_Bits"
	.byte	0x4
	.byte	0xf
	.byte	0xa9
	.uaword	0x127f
	.uleb128 0x14
	.string	"CPU2XEN"
	.byte	0xf
	.byte	0xab
	.uaword	0xba
	.byte	0x4
	.byte	0x6
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"CPU1XEN"
	.byte	0xf
	.byte	0xac
	.uaword	0xba
	.byte	0x4
	.byte	0x6
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"LMUEN"
	.byte	0xf
	.byte	0xad
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"MMCDSEN"
	.byte	0xf
	.byte	0xae
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"CPU0DSEN"
	.byte	0xf
	.byte	0xaf
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"Res"
	.byte	0xf
	.byte	0xb0
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"CPU0PSEN"
	.byte	0xf
	.byte	0xb1
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"CPU0PTEN"
	.byte	0xf
	.byte	0xb2
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.uaword	.LASF8
	.byte	0xf
	.byte	0xb3
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"CPU0DTEN"
	.byte	0xf
	.byte	0xb4
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"CPUXDS2EN"
	.byte	0xf
	.byte	0xb5
	.uaword	0xba
	.byte	0x4
	.byte	0x2
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"ETHEN"
	.byte	0xf
	.byte	0xb6
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.uaword	.LASF11
	.byte	0xf
	.byte	0xb7
	.uaword	0xba
	.byte	0x4
	.byte	0x3
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"FSI0EN"
	.byte	0xf
	.byte	0xb8
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.uaword	.LASF10
	.byte	0xf
	.byte	0xb9
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"GTMFEN"
	.byte	0xf
	.byte	0xba
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"GTMM0EN"
	.byte	0xf
	.byte	0xbb
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"GTMM1EN"
	.byte	0xf
	.byte	0xbc
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"GTM1AEN"
	.byte	0xf
	.byte	0xbd
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_MTU_MEMTEST0_Bits"
	.byte	0xf
	.byte	0xbe
	.uaword	0x10e0
	.uleb128 0x16
	.byte	0x4
	.byte	0xf
	.byte	0xfa
	.uaword	0x12c0
	.uleb128 0x17
	.string	"U"
	.byte	0xf
	.byte	0xfc
	.uaword	0xba
	.uleb128 0x17
	.string	"I"
	.byte	0xf
	.byte	0xfd
	.uaword	0xb3
	.uleb128 0x17
	.string	"B"
	.byte	0xf
	.byte	0xfe
	.uaword	0xe4b
	.byte	0
	.uleb128 0x3
	.string	"Ifx_MTU_CLC"
	.byte	0xf
	.byte	0xff
	.uaword	0x129c
	.uleb128 0x12
	.byte	0x4
	.byte	0xf
	.uahalf	0x112
	.uaword	0x12fb
	.uleb128 0x13
	.string	"U"
	.byte	0xf
	.uahalf	0x114
	.uaword	0xba
	.uleb128 0x13
	.string	"I"
	.byte	0xf
	.uahalf	0x115
	.uaword	0xb3
	.uleb128 0x13
	.string	"B"
	.byte	0xf
	.uahalf	0x116
	.uaword	0x10c3
	.byte	0
	.uleb128 0x6
	.string	"Ifx_MTU_MEMSTAT0"
	.byte	0xf
	.uahalf	0x117
	.uaword	0x12d3
	.uleb128 0x12
	.byte	0x4
	.byte	0xf
	.uahalf	0x12a
	.uaword	0x133c
	.uleb128 0x13
	.string	"U"
	.byte	0xf
	.uahalf	0x12c
	.uaword	0xba
	.uleb128 0x13
	.string	"I"
	.byte	0xf
	.uahalf	0x12d
	.uaword	0xb3
	.uleb128 0x13
	.string	"B"
	.byte	0xf
	.uahalf	0x12e
	.uaword	0x127f
	.byte	0
	.uleb128 0x6
	.string	"Ifx_MTU_MEMTEST0"
	.byte	0xf
	.uahalf	0x12f
	.uaword	0x1314
	.uleb128 0x7
	.string	"_Ifx_LMU_MEMCON_Bits"
	.byte	0x4
	.byte	0x10
	.byte	0x6e
	.uaword	0x144c
	.uleb128 0x14
	.string	"OLDAEN"
	.byte	0x10
	.byte	0x70
	.uaword	0x6b9
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"POLDAEN"
	.byte	0x10
	.byte	0x71
	.uaword	0x6b9
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.uaword	.LASF12
	.byte	0x10
	.byte	0x72
	.uaword	0x6b9
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"ERERR"
	.byte	0x10
	.byte	0x73
	.uaword	0x6b9
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.uaword	.LASF6
	.byte	0x10
	.byte	0x74
	.uaword	0x6b9
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"EWERR"
	.byte	0x10
	.byte	0x75
	.uaword	0x6b9
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"DATAERR"
	.byte	0x10
	.byte	0x76
	.uaword	0x6b9
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"ADDERR"
	.byte	0x10
	.byte	0x77
	.uaword	0x6b9
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.uaword	.LASF13
	.byte	0x10
	.byte	0x78
	.uaword	0x6b9
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"WSTATES"
	.byte	0x10
	.byte	0x79
	.uaword	0x6b9
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"reserved_16"
	.byte	0x10
	.byte	0x7a
	.uaword	0x6b9
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_LMU_MEMCON_Bits"
	.byte	0x10
	.byte	0x7b
	.uaword	0x1355
	.uleb128 0x16
	.byte	0x4
	.byte	0x10
	.byte	0xa9
	.uaword	0x148b
	.uleb128 0x17
	.string	"U"
	.byte	0x10
	.byte	0xab
	.uaword	0xba
	.uleb128 0x17
	.string	"I"
	.byte	0x10
	.byte	0xac
	.uaword	0xb3
	.uleb128 0x17
	.string	"B"
	.byte	0x10
	.byte	0xad
	.uaword	0x144c
	.byte	0
	.uleb128 0x3
	.string	"Ifx_LMU_MEMCON"
	.byte	0x10
	.byte	0xae
	.uaword	0x1467
	.uleb128 0xf
	.string	"_Ifx_DMA_CH_CHCFGR_Bits"
	.byte	0x4
	.byte	0x11
	.uahalf	0x1c0
	.uaword	0x159a
	.uleb128 0x10
	.string	"TREL"
	.byte	0x11
	.uahalf	0x1c2
	.uaword	0xba
	.byte	0x4
	.byte	0xe
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.uaword	.LASF1
	.byte	0x11
	.uahalf	0x1c3
	.uaword	0xba
	.byte	0x4
	.byte	0x2
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.string	"BLKM"
	.byte	0x11
	.uahalf	0x1c4
	.uaword	0xba
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.string	"RROAT"
	.byte	0x11
	.uahalf	0x1c5
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.string	"CHMODE"
	.byte	0x11
	.uahalf	0x1c6
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.string	"CHDW"
	.byte	0x11
	.uahalf	0x1c7
	.uaword	0xba
	.byte	0x4
	.byte	0x3
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.string	"PATSEL"
	.byte	0x11
	.uahalf	0x1c8
	.uaword	0xba
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.uaword	.LASF10
	.byte	0x11
	.uahalf	0x1c9
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.string	"PRSEL"
	.byte	0x11
	.uahalf	0x1ca
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.uaword	.LASF14
	.byte	0x11
	.uahalf	0x1cb
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.string	"DMAPRIO"
	.byte	0x11
	.uahalf	0x1cc
	.uaword	0xba
	.byte	0x4
	.byte	0x2
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x6
	.string	"Ifx_DMA_CH_CHCFGR_Bits"
	.byte	0x11
	.uahalf	0x1cd
	.uaword	0x14a1
	.uleb128 0xf
	.string	"_Ifx_DMA_CH_CHCSR_Bits"
	.byte	0x4
	.byte	0x11
	.uahalf	0x1d0
	.uaword	0x170f
	.uleb128 0x10
	.string	"TCOUNT"
	.byte	0x11
	.uahalf	0x1d2
	.uaword	0xba
	.byte	0x4
	.byte	0xe
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.uaword	.LASF1
	.byte	0x11
	.uahalf	0x1d3
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.string	"LXO"
	.byte	0x11
	.uahalf	0x1d4
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.string	"WRPS"
	.byte	0x11
	.uahalf	0x1d5
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.string	"WRPD"
	.byte	0x11
	.uahalf	0x1d6
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.string	"ICH"
	.byte	0x11
	.uahalf	0x1d7
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.string	"IPM"
	.byte	0x11
	.uahalf	0x1d8
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.string	"reserved_20"
	.byte	0x11
	.uahalf	0x1d9
	.uaword	0xba
	.byte	0x4
	.byte	0x2
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.string	"BUFFER"
	.byte	0x11
	.uahalf	0x1da
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.string	"FROZEN"
	.byte	0x11
	.uahalf	0x1db
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.string	"SWB"
	.byte	0x11
	.uahalf	0x1dc
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.string	"CWRP"
	.byte	0x11
	.uahalf	0x1dd
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.string	"CICH"
	.byte	0x11
	.uahalf	0x1de
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.string	"SIT"
	.byte	0x11
	.uahalf	0x1df
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.uaword	.LASF15
	.byte	0x11
	.uahalf	0x1e0
	.uaword	0xba
	.byte	0x4
	.byte	0x3
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.string	"SCH"
	.byte	0x11
	.uahalf	0x1e1
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x6
	.string	"Ifx_DMA_CH_CHCSR_Bits"
	.byte	0x11
	.uahalf	0x1e2
	.uaword	0x15b9
	.uleb128 0xf
	.string	"_Ifx_DMA_CH_DADR_Bits"
	.byte	0x4
	.byte	0x11
	.uahalf	0x1e5
	.uaword	0x1760
	.uleb128 0x10
	.string	"DADR"
	.byte	0x11
	.uahalf	0x1e7
	.uaword	0xba
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x6
	.string	"Ifx_DMA_CH_DADR_Bits"
	.byte	0x11
	.uahalf	0x1e8
	.uaword	0x172d
	.uleb128 0xf
	.string	"_Ifx_DMA_CH_RDCRCR_Bits"
	.byte	0x4
	.byte	0x11
	.uahalf	0x1eb
	.uaword	0x17b3
	.uleb128 0x10
	.string	"RDCRC"
	.byte	0x11
	.uahalf	0x1ed
	.uaword	0xba
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x6
	.string	"Ifx_DMA_CH_RDCRCR_Bits"
	.byte	0x11
	.uahalf	0x1ee
	.uaword	0x177d
	.uleb128 0xf
	.string	"_Ifx_DMA_CH_SADR_Bits"
	.byte	0x4
	.byte	0x11
	.uahalf	0x1f1
	.uaword	0x1805
	.uleb128 0x10
	.string	"SADR"
	.byte	0x11
	.uahalf	0x1f3
	.uaword	0xba
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x6
	.string	"Ifx_DMA_CH_SADR_Bits"
	.byte	0x11
	.uahalf	0x1f4
	.uaword	0x17d2
	.uleb128 0xf
	.string	"_Ifx_DMA_CH_SDCRCR_Bits"
	.byte	0x4
	.byte	0x11
	.uahalf	0x1f7
	.uaword	0x1858
	.uleb128 0x10
	.string	"SDCRC"
	.byte	0x11
	.uahalf	0x1f9
	.uaword	0xba
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x6
	.string	"Ifx_DMA_CH_SDCRCR_Bits"
	.byte	0x11
	.uahalf	0x1fa
	.uaword	0x1822
	.uleb128 0xf
	.string	"_Ifx_DMA_CLC_Bits"
	.byte	0x4
	.byte	0x11
	.uahalf	0x203
	.uaword	0x18f0
	.uleb128 0x10
	.string	"DISR"
	.byte	0x11
	.uahalf	0x205
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.string	"DISS"
	.byte	0x11
	.uahalf	0x206
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.uaword	.LASF12
	.byte	0x11
	.uahalf	0x207
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.string	"EDIS"
	.byte	0x11
	.uahalf	0x208
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.uaword	.LASF6
	.byte	0x11
	.uahalf	0x209
	.uaword	0xba
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x6
	.string	"Ifx_DMA_CLC_Bits"
	.byte	0x11
	.uahalf	0x20a
	.uaword	0x1877
	.uleb128 0x12
	.byte	0x4
	.byte	0x11
	.uahalf	0x368
	.uaword	0x1931
	.uleb128 0x13
	.string	"U"
	.byte	0x11
	.uahalf	0x36a
	.uaword	0xba
	.uleb128 0x13
	.string	"I"
	.byte	0x11
	.uahalf	0x36b
	.uaword	0xb3
	.uleb128 0x13
	.string	"B"
	.byte	0x11
	.uahalf	0x36c
	.uaword	0x159a
	.byte	0
	.uleb128 0x6
	.string	"Ifx_DMA_CH_CHCFGR"
	.byte	0x11
	.uahalf	0x36d
	.uaword	0x1909
	.uleb128 0x12
	.byte	0x4
	.byte	0x11
	.uahalf	0x370
	.uaword	0x1973
	.uleb128 0x13
	.string	"U"
	.byte	0x11
	.uahalf	0x372
	.uaword	0xba
	.uleb128 0x13
	.string	"I"
	.byte	0x11
	.uahalf	0x373
	.uaword	0xb3
	.uleb128 0x13
	.string	"B"
	.byte	0x11
	.uahalf	0x374
	.uaword	0x170f
	.byte	0
	.uleb128 0x6
	.string	"Ifx_DMA_CH_CHCSR"
	.byte	0x11
	.uahalf	0x375
	.uaword	0x194b
	.uleb128 0x12
	.byte	0x4
	.byte	0x11
	.uahalf	0x378
	.uaword	0x19b4
	.uleb128 0x13
	.string	"U"
	.byte	0x11
	.uahalf	0x37a
	.uaword	0xba
	.uleb128 0x13
	.string	"I"
	.byte	0x11
	.uahalf	0x37b
	.uaword	0xb3
	.uleb128 0x13
	.string	"B"
	.byte	0x11
	.uahalf	0x37c
	.uaword	0x1760
	.byte	0
	.uleb128 0x6
	.string	"Ifx_DMA_CH_DADR"
	.byte	0x11
	.uahalf	0x37d
	.uaword	0x198c
	.uleb128 0x12
	.byte	0x4
	.byte	0x11
	.uahalf	0x380
	.uaword	0x19f4
	.uleb128 0x13
	.string	"U"
	.byte	0x11
	.uahalf	0x382
	.uaword	0xba
	.uleb128 0x13
	.string	"I"
	.byte	0x11
	.uahalf	0x383
	.uaword	0xb3
	.uleb128 0x13
	.string	"B"
	.byte	0x11
	.uahalf	0x384
	.uaword	0x17b3
	.byte	0
	.uleb128 0x6
	.string	"Ifx_DMA_CH_RDCRCR"
	.byte	0x11
	.uahalf	0x385
	.uaword	0x19cc
	.uleb128 0x12
	.byte	0x4
	.byte	0x11
	.uahalf	0x388
	.uaword	0x1a36
	.uleb128 0x13
	.string	"U"
	.byte	0x11
	.uahalf	0x38a
	.uaword	0xba
	.uleb128 0x13
	.string	"I"
	.byte	0x11
	.uahalf	0x38b
	.uaword	0xb3
	.uleb128 0x13
	.string	"B"
	.byte	0x11
	.uahalf	0x38c
	.uaword	0x1805
	.byte	0
	.uleb128 0x6
	.string	"Ifx_DMA_CH_SADR"
	.byte	0x11
	.uahalf	0x38d
	.uaword	0x1a0e
	.uleb128 0x12
	.byte	0x4
	.byte	0x11
	.uahalf	0x390
	.uaword	0x1a76
	.uleb128 0x13
	.string	"U"
	.byte	0x11
	.uahalf	0x392
	.uaword	0xba
	.uleb128 0x13
	.string	"I"
	.byte	0x11
	.uahalf	0x393
	.uaword	0xb3
	.uleb128 0x13
	.string	"B"
	.byte	0x11
	.uahalf	0x394
	.uaword	0x1858
	.byte	0
	.uleb128 0x6
	.string	"Ifx_DMA_CH_SDCRCR"
	.byte	0x11
	.uahalf	0x395
	.uaword	0x1a4e
	.uleb128 0x12
	.byte	0x4
	.byte	0x11
	.uahalf	0x3a0
	.uaword	0x1ab8
	.uleb128 0x13
	.string	"U"
	.byte	0x11
	.uahalf	0x3a2
	.uaword	0xba
	.uleb128 0x13
	.string	"I"
	.byte	0x11
	.uahalf	0x3a3
	.uaword	0xb3
	.uleb128 0x13
	.string	"B"
	.byte	0x11
	.uahalf	0x3a4
	.uaword	0x18f0
	.byte	0
	.uleb128 0x6
	.string	"Ifx_DMA_CLC"
	.byte	0x11
	.uahalf	0x3a5
	.uaword	0x1a90
	.uleb128 0x7
	.string	"_Ifx_OVC_BLK_OMASK_Bits"
	.byte	0x4
	.byte	0x12
	.byte	0x2d
	.uaword	0x1b33
	.uleb128 0x15
	.uaword	.LASF2
	.byte	0x12
	.byte	0x2f
	.uaword	0x6b9
	.byte	0x4
	.byte	0x5
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"OMASK"
	.byte	0x12
	.byte	0x30
	.uaword	0x6b9
	.byte	0x4
	.byte	0xc
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"ONE"
	.byte	0x12
	.byte	0x31
	.uaword	0x6b9
	.byte	0x4
	.byte	0xb
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.uaword	.LASF15
	.byte	0x12
	.byte	0x32
	.uaword	0x6b9
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_OVC_BLK_OMASK_Bits"
	.byte	0x12
	.byte	0x33
	.uaword	0x1acc
	.uleb128 0x7
	.string	"_Ifx_OVC_BLK_OTAR_Bits"
	.byte	0x4
	.byte	0x12
	.byte	0x36
	.uaword	0x1ba6
	.uleb128 0x15
	.uaword	.LASF2
	.byte	0x12
	.byte	0x38
	.uaword	0x6b9
	.byte	0x4
	.byte	0x5
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"TBASE"
	.byte	0x12
	.byte	0x39
	.uaword	0x6b9
	.byte	0x4
	.byte	0x17
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.uaword	.LASF15
	.byte	0x12
	.byte	0x3a
	.uaword	0x6b9
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_OVC_BLK_OTAR_Bits"
	.byte	0x12
	.byte	0x3b
	.uaword	0x1b51
	.uleb128 0x7
	.string	"_Ifx_OVC_BLK_RABR_Bits"
	.byte	0x4
	.byte	0x12
	.byte	0x3e
	.uaword	0x1c4d
	.uleb128 0x15
	.uaword	.LASF2
	.byte	0x12
	.byte	0x40
	.uaword	0x6b9
	.byte	0x4
	.byte	0x5
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"OBASE"
	.byte	0x12
	.byte	0x41
	.uaword	0x6b9
	.byte	0x4
	.byte	0x11
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.uaword	.LASF9
	.byte	0x12
	.byte	0x42
	.uaword	0x6b9
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"OMEM"
	.byte	0x12
	.byte	0x43
	.uaword	0x6b9
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.uaword	.LASF10
	.byte	0x12
	.byte	0x44
	.uaword	0x6b9
	.byte	0x4
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"OVEN"
	.byte	0x12
	.byte	0x45
	.uaword	0x6b9
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_OVC_BLK_RABR_Bits"
	.byte	0x12
	.byte	0x46
	.uaword	0x1bc3
	.uleb128 0x7
	.string	"_Ifx_OVC_OSEL_Bits"
	.byte	0x4
	.byte	0x12
	.byte	0x49
	.uaword	0x1d3f
	.uleb128 0x14
	.string	"SHOVEN0"
	.byte	0x12
	.byte	0x4b
	.uaword	0x6b9
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"SHOVEN1"
	.byte	0x12
	.byte	0x4c
	.uaword	0x6b9
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"SHOVEN2"
	.byte	0x12
	.byte	0x4d
	.uaword	0x6b9
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"SHOVEN3"
	.byte	0x12
	.byte	0x4e
	.uaword	0x6b9
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"SHOVEN4"
	.byte	0x12
	.byte	0x4f
	.uaword	0x6b9
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"SHOVEN5"
	.byte	0x12
	.byte	0x50
	.uaword	0x6b9
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"SHOVEN6"
	.byte	0x12
	.byte	0x51
	.uaword	0x6b9
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"SHOVEN7"
	.byte	0x12
	.byte	0x52
	.uaword	0x6b9
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.uaword	.LASF13
	.byte	0x12
	.byte	0x53
	.uaword	0x6b9
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_OVC_OSEL_Bits"
	.byte	0x12
	.byte	0x54
	.uaword	0x1c6a
	.uleb128 0x16
	.byte	0x4
	.byte	0x12
	.byte	0x5c
	.uaword	0x1d7c
	.uleb128 0x17
	.string	"U"
	.byte	0x12
	.byte	0x5e
	.uaword	0xba
	.uleb128 0x17
	.string	"I"
	.byte	0x12
	.byte	0x5f
	.uaword	0xb3
	.uleb128 0x17
	.string	"B"
	.byte	0x12
	.byte	0x60
	.uaword	0x1b33
	.byte	0
	.uleb128 0x3
	.string	"Ifx_OVC_BLK_OMASK"
	.byte	0x12
	.byte	0x61
	.uaword	0x1d58
	.uleb128 0x16
	.byte	0x4
	.byte	0x12
	.byte	0x64
	.uaword	0x1db9
	.uleb128 0x17
	.string	"U"
	.byte	0x12
	.byte	0x66
	.uaword	0xba
	.uleb128 0x17
	.string	"I"
	.byte	0x12
	.byte	0x67
	.uaword	0xb3
	.uleb128 0x17
	.string	"B"
	.byte	0x12
	.byte	0x68
	.uaword	0x1ba6
	.byte	0
	.uleb128 0x3
	.string	"Ifx_OVC_BLK_OTAR"
	.byte	0x12
	.byte	0x69
	.uaword	0x1d95
	.uleb128 0x16
	.byte	0x4
	.byte	0x12
	.byte	0x6c
	.uaword	0x1df5
	.uleb128 0x17
	.string	"U"
	.byte	0x12
	.byte	0x6e
	.uaword	0xba
	.uleb128 0x17
	.string	"I"
	.byte	0x12
	.byte	0x6f
	.uaword	0xb3
	.uleb128 0x17
	.string	"B"
	.byte	0x12
	.byte	0x70
	.uaword	0x1c4d
	.byte	0
	.uleb128 0x3
	.string	"Ifx_OVC_BLK_RABR"
	.byte	0x12
	.byte	0x71
	.uaword	0x1dd1
	.uleb128 0x16
	.byte	0x4
	.byte	0x12
	.byte	0x74
	.uaword	0x1e31
	.uleb128 0x17
	.string	"U"
	.byte	0x12
	.byte	0x76
	.uaword	0xba
	.uleb128 0x17
	.string	"I"
	.byte	0x12
	.byte	0x77
	.uaword	0xb3
	.uleb128 0x17
	.string	"B"
	.byte	0x12
	.byte	0x78
	.uaword	0x1d3f
	.byte	0
	.uleb128 0x3
	.string	"Ifx_OVC_OSEL"
	.byte	0x12
	.byte	0x79
	.uaword	0x1e0d
	.uleb128 0x7
	.string	"_Ifx_OVC_BLK"
	.byte	0xc
	.byte	0x12
	.byte	0x84
	.uaword	0x1e89
	.uleb128 0x8
	.string	"RABR"
	.byte	0x12
	.byte	0x86
	.uaword	0x1df5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"OTAR"
	.byte	0x12
	.byte	0x87
	.uaword	0x1db9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.string	"OMASK"
	.byte	0x12
	.byte	0x88
	.uaword	0x1d7c
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x18
	.string	"_Ifx_OVC"
	.uahalf	0x200
	.byte	0x12
	.byte	0x96
	.uaword	0x1edd
	.uleb128 0x8
	.string	"OSEL"
	.byte	0x12
	.byte	0x98
	.uaword	0x1e31
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF6
	.byte	0x12
	.byte	0x99
	.uaword	0x8aa
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.string	"BLK"
	.byte	0x12
	.byte	0x9a
	.uaword	0x1eed
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.string	"reserved_70"
	.byte	0x12
	.byte	0x9b
	.uaword	0x1ef2
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.byte	0
	.uleb128 0xa
	.uaword	0x1e45
	.uaword	0x1eed
	.uleb128 0xb
	.uaword	0xdd
	.byte	0x7
	.byte	0
	.uleb128 0xe
	.uaword	0x1edd
	.uleb128 0xa
	.uaword	0x7f
	.uaword	0x1f03
	.uleb128 0x19
	.uaword	0xdd
	.uahalf	0x18f
	.byte	0
	.uleb128 0x3
	.string	"Ifx_OVC"
	.byte	0x12
	.byte	0x9c
	.uaword	0x1f12
	.uleb128 0xe
	.uaword	0x1e89
	.uleb128 0x7
	.string	"_Ifx_FLASH_FCON_Bits"
	.byte	0x4
	.byte	0x13
	.byte	0xae
	.uaword	0x2080
	.uleb128 0x14
	.string	"WSPFLASH"
	.byte	0x13
	.byte	0xb0
	.uaword	0xba
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"WSECPF"
	.byte	0x13
	.byte	0xb1
	.uaword	0xba
	.byte	0x4
	.byte	0x2
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"WSDFLASH"
	.byte	0x13
	.byte	0xb2
	.uaword	0xba
	.byte	0x4
	.byte	0x6
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"WSECDF"
	.byte	0x13
	.byte	0xb3
	.uaword	0xba
	.byte	0x4
	.byte	0x3
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"IDLE"
	.byte	0x13
	.byte	0xb4
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"ESLDIS"
	.byte	0x13
	.byte	0xb5
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"SLEEP"
	.byte	0x13
	.byte	0xb6
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"NSAFECC"
	.byte	0x13
	.byte	0xb7
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"STALL"
	.byte	0x13
	.byte	0xb8
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"RES21"
	.byte	0x13
	.byte	0xb9
	.uaword	0xba
	.byte	0x4
	.byte	0x2
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"RES23"
	.byte	0x13
	.byte	0xba
	.uaword	0xba
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"VOPERM"
	.byte	0x13
	.byte	0xbb
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"SQERM"
	.byte	0x13
	.byte	0xbc
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"PROERM"
	.byte	0x13
	.byte	0xbd
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.uaword	.LASF10
	.byte	0x13
	.byte	0xbe
	.uaword	0xba
	.byte	0x4
	.byte	0x3
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"PR5V"
	.byte	0x13
	.byte	0xbf
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"EOBM"
	.byte	0x13
	.byte	0xc0
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_FLASH_FCON_Bits"
	.byte	0x13
	.byte	0xc1
	.uaword	0x1f17
	.uleb128 0x7
	.string	"_Ifx_FLASH_FSR_Bits"
	.byte	0x4
	.byte	0x13
	.byte	0xdd
	.uaword	0x2303
	.uleb128 0x14
	.string	"FABUSY"
	.byte	0x13
	.byte	0xdf
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"D0BUSY"
	.byte	0x13
	.byte	0xe0
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"RES1"
	.byte	0x13
	.byte	0xe1
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"P0BUSY"
	.byte	0x13
	.byte	0xe2
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"RES4"
	.byte	0x13
	.byte	0xe3
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"RES5"
	.byte	0x13
	.byte	0xe4
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"RES6"
	.byte	0x13
	.byte	0xe5
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"PROG"
	.byte	0x13
	.byte	0xe6
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"ERASE"
	.byte	0x13
	.byte	0xe7
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"PFPAGE"
	.byte	0x13
	.byte	0xe8
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"DFPAGE"
	.byte	0x13
	.byte	0xe9
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"OPER"
	.byte	0x13
	.byte	0xea
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"SQER"
	.byte	0x13
	.byte	0xeb
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"PROER"
	.byte	0x13
	.byte	0xec
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"PFSBER"
	.byte	0x13
	.byte	0xed
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"PFDBER"
	.byte	0x13
	.byte	0xee
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"PFMBER"
	.byte	0x13
	.byte	0xef
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"RES17"
	.byte	0x13
	.byte	0xf0
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"DFSBER"
	.byte	0x13
	.byte	0xf1
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"DFDBER"
	.byte	0x13
	.byte	0xf2
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"DFTBER"
	.byte	0x13
	.byte	0xf3
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"DFMBER"
	.byte	0x13
	.byte	0xf4
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"SRIADDERR"
	.byte	0x13
	.byte	0xf5
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.uaword	.LASF11
	.byte	0x13
	.byte	0xf6
	.uaword	0xba
	.byte	0x4
	.byte	0x2
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"PVER"
	.byte	0x13
	.byte	0xf7
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"EVER"
	.byte	0x13
	.byte	0xf8
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"SPND"
	.byte	0x13
	.byte	0xf9
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"SLM"
	.byte	0x13
	.byte	0xfa
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.uaword	.LASF14
	.byte	0x13
	.byte	0xfb
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"ORIER"
	.byte	0x13
	.byte	0xfc
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.uaword	.LASF16
	.byte	0x13
	.byte	0xfd
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_FLASH_FSR_Bits"
	.byte	0x13
	.byte	0xfe
	.uaword	0x209b
	.uleb128 0xf
	.string	"_Ifx_FLASH_PROCOND_Bits"
	.byte	0x4
	.byte	0x13
	.uahalf	0x122
	.uaword	0x247f
	.uleb128 0x10
	.string	"L"
	.byte	0x13
	.uahalf	0x124
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.string	"NSAFECC"
	.byte	0x13
	.uahalf	0x125
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.string	"RAMIN"
	.byte	0x13
	.uahalf	0x126
	.uaword	0xba
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.string	"RAMINSEL"
	.byte	0x13
	.uahalf	0x127
	.uaword	0xba
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.string	"RES8"
	.byte	0x13
	.uahalf	0x128
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.string	"RES9"
	.byte	0x13
	.uahalf	0x129
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.string	"RES10"
	.byte	0x13
	.uahalf	0x12a
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.string	"RES11"
	.byte	0x13
	.uahalf	0x12b
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.string	"RES12"
	.byte	0x13
	.uahalf	0x12c
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.string	"RES13"
	.byte	0x13
	.uahalf	0x12d
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.string	"RES14"
	.byte	0x13
	.uahalf	0x12e
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.string	"RES15"
	.byte	0x13
	.uahalf	0x12f
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.string	"ESR0CNT"
	.byte	0x13
	.uahalf	0x130
	.uaword	0xba
	.byte	0x4
	.byte	0xc
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.string	"RES29"
	.byte	0x13
	.uahalf	0x131
	.uaword	0xba
	.byte	0x4
	.byte	0x2
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.string	"RES30"
	.byte	0x13
	.uahalf	0x132
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.string	"RPRO"
	.byte	0x13
	.uahalf	0x133
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x6
	.string	"Ifx_FLASH_PROCOND_Bits"
	.byte	0x13
	.uahalf	0x134
	.uaword	0x231d
	.uleb128 0x12
	.byte	0x4
	.byte	0x13
	.uahalf	0x274
	.uaword	0x24c6
	.uleb128 0x13
	.string	"U"
	.byte	0x13
	.uahalf	0x276
	.uaword	0xba
	.uleb128 0x13
	.string	"I"
	.byte	0x13
	.uahalf	0x277
	.uaword	0xb3
	.uleb128 0x13
	.string	"B"
	.byte	0x13
	.uahalf	0x278
	.uaword	0x2080
	.byte	0
	.uleb128 0x6
	.string	"Ifx_FLASH_FCON"
	.byte	0x13
	.uahalf	0x279
	.uaword	0x249e
	.uleb128 0x12
	.byte	0x4
	.byte	0x13
	.uahalf	0x284
	.uaword	0x2505
	.uleb128 0x13
	.string	"U"
	.byte	0x13
	.uahalf	0x286
	.uaword	0xba
	.uleb128 0x13
	.string	"I"
	.byte	0x13
	.uahalf	0x287
	.uaword	0xb3
	.uleb128 0x13
	.string	"B"
	.byte	0x13
	.uahalf	0x288
	.uaword	0x2303
	.byte	0
	.uleb128 0x6
	.string	"Ifx_FLASH_FSR"
	.byte	0x13
	.uahalf	0x289
	.uaword	0x24dd
	.uleb128 0x12
	.byte	0x4
	.byte	0x13
	.uahalf	0x2a4
	.uaword	0x2543
	.uleb128 0x13
	.string	"U"
	.byte	0x13
	.uahalf	0x2a6
	.uaword	0xba
	.uleb128 0x13
	.string	"I"
	.byte	0x13
	.uahalf	0x2a7
	.uaword	0xb3
	.uleb128 0x13
	.string	"B"
	.byte	0x13
	.uahalf	0x2a8
	.uaword	0x247f
	.byte	0
	.uleb128 0x6
	.string	"Ifx_FLASH_PROCOND"
	.byte	0x13
	.uahalf	0x2a9
	.uaword	0x251b
	.uleb128 0x7
	.string	"_Ifx_XBAR_ARBCON_Bits"
	.byte	0x4
	.byte	0x14
	.byte	0x58
	.uaword	0x2608
	.uleb128 0x14
	.string	"PRERREN"
	.byte	0x14
	.byte	0x5a
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"SCERREN"
	.byte	0x14
	.byte	0x5b
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"SETPRINT"
	.byte	0x14
	.byte	0x5c
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"SETSCINT"
	.byte	0x14
	.byte	0x5d
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"INTACK"
	.byte	0x14
	.byte	0x5e
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.uaword	.LASF17
	.byte	0x14
	.byte	0x5f
	.uaword	0xba
	.byte	0x4
	.byte	0xf
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"SPC"
	.byte	0x14
	.byte	0x60
	.uaword	0xba
	.byte	0x4
	.byte	0xc
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_XBAR_ARBCON_Bits"
	.byte	0x14
	.byte	0x61
	.uaword	0x255d
	.uleb128 0x7
	.string	"_Ifx_XBAR_ID_Bits"
	.byte	0x4
	.byte	0x14
	.byte	0xf4
	.uaword	0x267f
	.uleb128 0x14
	.string	"MODREV"
	.byte	0x14
	.byte	0xf6
	.uaword	0xba
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"MODTYPE"
	.byte	0x14
	.byte	0xf7
	.uaword	0xba
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"MODNUMBER"
	.byte	0x14
	.byte	0xf8
	.uaword	0xba
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_XBAR_ID_Bits"
	.byte	0x14
	.byte	0xf9
	.uaword	0x2624
	.uleb128 0x7
	.string	"_Ifx_XBAR_IDINTEN_Bits"
	.byte	0x4
	.byte	0x14
	.byte	0xfc
	.uaword	0x27e0
	.uleb128 0x14
	.string	"ENSCI0"
	.byte	0x14
	.byte	0xfe
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.uaword	.LASF7
	.byte	0x14
	.byte	0xff
	.uaword	0xba
	.byte	0x4
	.byte	0x3
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.string	"ENSCI4"
	.byte	0x14
	.uahalf	0x100
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.uaword	.LASF17
	.byte	0x14
	.uahalf	0x101
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.string	"ENSCI6"
	.byte	0x14
	.uahalf	0x102
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.string	"ENSCI7"
	.byte	0x14
	.uahalf	0x103
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.uaword	.LASF13
	.byte	0x14
	.uahalf	0x104
	.uaword	0xba
	.byte	0x4
	.byte	0x7
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.string	"ENSCID"
	.byte	0x14
	.uahalf	0x105
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.string	"ENMCI0"
	.byte	0x14
	.uahalf	0x106
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.uaword	.LASF18
	.byte	0x14
	.uahalf	0x107
	.uaword	0xba
	.byte	0x4
	.byte	0x4
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.string	"ENMCI5"
	.byte	0x14
	.uahalf	0x108
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.uaword	.LASF9
	.byte	0x14
	.uahalf	0x109
	.uaword	0xba
	.byte	0x4
	.byte	0x6
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.string	"ENMCI12"
	.byte	0x14
	.uahalf	0x10a
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.string	"ENMCI13"
	.byte	0x14
	.uahalf	0x10b
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.uaword	.LASF19
	.byte	0x14
	.uahalf	0x10c
	.uaword	0xba
	.byte	0x4
	.byte	0x2
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x6
	.string	"Ifx_XBAR_IDINTEN_Bits"
	.byte	0x14
	.uahalf	0x10d
	.uaword	0x2697
	.uleb128 0xf
	.string	"_Ifx_XBAR_IDINTSAT_Bits"
	.byte	0x4
	.byte	0x14
	.uahalf	0x110
	.uaword	0x294c
	.uleb128 0x10
	.string	"IDSCI0"
	.byte	0x14
	.uahalf	0x112
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.uaword	.LASF7
	.byte	0x14
	.uahalf	0x113
	.uaword	0xba
	.byte	0x4
	.byte	0x3
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.string	"IDCSCI4"
	.byte	0x14
	.uahalf	0x114
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.uaword	.LASF17
	.byte	0x14
	.uahalf	0x115
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.string	"IDSCI6"
	.byte	0x14
	.uahalf	0x116
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.string	"IDSCI7"
	.byte	0x14
	.uahalf	0x117
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.uaword	.LASF13
	.byte	0x14
	.uahalf	0x118
	.uaword	0xba
	.byte	0x4
	.byte	0x7
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.string	"IDSCID"
	.byte	0x14
	.uahalf	0x119
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.string	"IDMCI0"
	.byte	0x14
	.uahalf	0x11a
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.uaword	.LASF18
	.byte	0x14
	.uahalf	0x11b
	.uaword	0xba
	.byte	0x4
	.byte	0x4
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.string	"IDMCI5"
	.byte	0x14
	.uahalf	0x11c
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.uaword	.LASF9
	.byte	0x14
	.uahalf	0x11d
	.uaword	0xba
	.byte	0x4
	.byte	0x6
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.string	"IDMCI12"
	.byte	0x14
	.uahalf	0x11e
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.string	"IDMCI13"
	.byte	0x14
	.uahalf	0x11f
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.uaword	.LASF19
	.byte	0x14
	.uahalf	0x120
	.uaword	0xba
	.byte	0x4
	.byte	0x2
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x6
	.string	"Ifx_XBAR_IDINTSAT_Bits"
	.byte	0x14
	.uahalf	0x121
	.uaword	0x27fe
	.uleb128 0xf
	.string	"_Ifx_XBAR_INTSAT_Bits"
	.byte	0x4
	.byte	0x14
	.uahalf	0x124
	.uaword	0x2ad1
	.uleb128 0x10
	.string	"SCSCI0"
	.byte	0x14
	.uahalf	0x126
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.uaword	.LASF7
	.byte	0x14
	.uahalf	0x127
	.uaword	0xba
	.byte	0x4
	.byte	0x3
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.string	"SCSCI4"
	.byte	0x14
	.uahalf	0x128
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.uaword	.LASF17
	.byte	0x14
	.uahalf	0x129
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.string	"SCSCI6"
	.byte	0x14
	.uahalf	0x12a
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.string	"SCSCI7"
	.byte	0x14
	.uahalf	0x12b
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.uaword	.LASF13
	.byte	0x14
	.uahalf	0x12c
	.uaword	0xba
	.byte	0x4
	.byte	0x7
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.string	"SCSCID"
	.byte	0x14
	.uahalf	0x12d
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.string	"PRSCI0"
	.byte	0x14
	.uahalf	0x12e
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.uaword	.LASF18
	.byte	0x14
	.uahalf	0x12f
	.uaword	0xba
	.byte	0x4
	.byte	0x3
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.string	"PRSCI4"
	.byte	0x14
	.uahalf	0x130
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.uaword	.LASF20
	.byte	0x14
	.uahalf	0x131
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.string	"PRSCI6"
	.byte	0x14
	.uahalf	0x132
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.string	"PRSCI7"
	.byte	0x14
	.uahalf	0x133
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.string	"reserved_24"
	.byte	0x14
	.uahalf	0x134
	.uaword	0xba
	.byte	0x4
	.byte	0x7
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.string	"PRSCID"
	.byte	0x14
	.uahalf	0x135
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x6
	.string	"Ifx_XBAR_INTSAT_Bits"
	.byte	0x14
	.uahalf	0x136
	.uaword	0x296b
	.uleb128 0x12
	.byte	0x4
	.byte	0x14
	.uahalf	0x15e
	.uaword	0x2b16
	.uleb128 0x13
	.string	"U"
	.byte	0x14
	.uahalf	0x160
	.uaword	0xba
	.uleb128 0x13
	.string	"I"
	.byte	0x14
	.uahalf	0x161
	.uaword	0xb3
	.uleb128 0x13
	.string	"B"
	.byte	0x14
	.uahalf	0x162
	.uaword	0x2608
	.byte	0
	.uleb128 0x6
	.string	"Ifx_XBAR_ARBCON"
	.byte	0x14
	.uahalf	0x163
	.uaword	0x2aee
	.uleb128 0x12
	.byte	0x4
	.byte	0x14
	.uahalf	0x1de
	.uaword	0x2b56
	.uleb128 0x13
	.string	"U"
	.byte	0x14
	.uahalf	0x1e0
	.uaword	0xba
	.uleb128 0x13
	.string	"I"
	.byte	0x14
	.uahalf	0x1e1
	.uaword	0xb3
	.uleb128 0x13
	.string	"B"
	.byte	0x14
	.uahalf	0x1e2
	.uaword	0x267f
	.byte	0
	.uleb128 0x6
	.string	"Ifx_XBAR_ID"
	.byte	0x14
	.uahalf	0x1e3
	.uaword	0x2b2e
	.uleb128 0x12
	.byte	0x4
	.byte	0x14
	.uahalf	0x1e6
	.uaword	0x2b92
	.uleb128 0x13
	.string	"U"
	.byte	0x14
	.uahalf	0x1e8
	.uaword	0xba
	.uleb128 0x13
	.string	"I"
	.byte	0x14
	.uahalf	0x1e9
	.uaword	0xb3
	.uleb128 0x13
	.string	"B"
	.byte	0x14
	.uahalf	0x1ea
	.uaword	0x27e0
	.byte	0
	.uleb128 0x6
	.string	"Ifx_XBAR_IDINTEN"
	.byte	0x14
	.uahalf	0x1eb
	.uaword	0x2b6a
	.uleb128 0x12
	.byte	0x4
	.byte	0x14
	.uahalf	0x1ee
	.uaword	0x2bd3
	.uleb128 0x13
	.string	"U"
	.byte	0x14
	.uahalf	0x1f0
	.uaword	0xba
	.uleb128 0x13
	.string	"I"
	.byte	0x14
	.uahalf	0x1f1
	.uaword	0xb3
	.uleb128 0x13
	.string	"B"
	.byte	0x14
	.uahalf	0x1f2
	.uaword	0x294c
	.byte	0
	.uleb128 0x6
	.string	"Ifx_XBAR_IDINTSAT"
	.byte	0x14
	.uahalf	0x1f3
	.uaword	0x2bab
	.uleb128 0x12
	.byte	0x4
	.byte	0x14
	.uahalf	0x1f6
	.uaword	0x2c15
	.uleb128 0x13
	.string	"U"
	.byte	0x14
	.uahalf	0x1f8
	.uaword	0xba
	.uleb128 0x13
	.string	"I"
	.byte	0x14
	.uahalf	0x1f9
	.uaword	0xb3
	.uleb128 0x13
	.string	"B"
	.byte	0x14
	.uahalf	0x1fa
	.uaword	0x2ad1
	.byte	0
	.uleb128 0x6
	.string	"Ifx_XBAR_INTSAT"
	.byte	0x14
	.uahalf	0x1fb
	.uaword	0x2bed
	.uleb128 0x7
	.string	"_Ifx_SRC_SRCR_Bits"
	.byte	0x4
	.byte	0x15
	.byte	0x2d
	.uaword	0x2d51
	.uleb128 0x14
	.string	"SRPN"
	.byte	0x15
	.byte	0x2f
	.uaword	0xba
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.uaword	.LASF13
	.byte	0x15
	.byte	0x30
	.uaword	0xba
	.byte	0x4
	.byte	0x2
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"SRE"
	.byte	0x15
	.byte	0x31
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"TOS"
	.byte	0x15
	.byte	0x32
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.uaword	.LASF5
	.byte	0x15
	.byte	0x33
	.uaword	0xba
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"ECC"
	.byte	0x15
	.byte	0x34
	.uaword	0xba
	.byte	0x4
	.byte	0x5
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.uaword	.LASF20
	.byte	0x15
	.byte	0x35
	.uaword	0xba
	.byte	0x4
	.byte	0x3
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"SRR"
	.byte	0x15
	.byte	0x36
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"CLRR"
	.byte	0x15
	.byte	0x37
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"SETR"
	.byte	0x15
	.byte	0x38
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"IOV"
	.byte	0x15
	.byte	0x39
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"IOVCLR"
	.byte	0x15
	.byte	0x3a
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"SWS"
	.byte	0x15
	.byte	0x3b
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"SWSCLR"
	.byte	0x15
	.byte	0x3c
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.uaword	.LASF16
	.byte	0x15
	.byte	0x3d
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_SRCR_Bits"
	.byte	0x15
	.byte	0x3e
	.uaword	0x2c2d
	.uleb128 0x16
	.byte	0x4
	.byte	0x15
	.byte	0x46
	.uaword	0x2d8e
	.uleb128 0x17
	.string	"U"
	.byte	0x15
	.byte	0x48
	.uaword	0xba
	.uleb128 0x17
	.string	"I"
	.byte	0x15
	.byte	0x49
	.uaword	0xb3
	.uleb128 0x17
	.string	"B"
	.byte	0x15
	.byte	0x4a
	.uaword	0x2d51
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_SRCR"
	.byte	0x15
	.byte	0x4b
	.uaword	0x2d6a
	.uleb128 0xf
	.string	"SriTst_BackupData"
	.byte	0x28
	.byte	0x1
	.uahalf	0x108
	.uaword	0x2fc7
	.uleb128 0x1a
	.string	"AlmActionBackupSRICPUxDMI"
	.byte	0x1
	.uahalf	0x10a
	.uaword	0x66a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x1a
	.string	"AlmActionBackupSRICPUxPMI"
	.byte	0x1
	.uahalf	0x10b
	.uaword	0x66a
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x1a
	.string	"AlmActionBackupECCAdr"
	.byte	0x1
	.uahalf	0x10c
	.uaword	0x66a
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x1a
	.string	"AlmActionBackupECCWrite"
	.byte	0x1
	.uahalf	0x10d
	.uaword	0x66a
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x1a
	.string	"AlmActionBackupECCRead"
	.byte	0x1
	.uahalf	0x10e
	.uaword	0x66a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1a
	.string	"AlmActionBackupSRI"
	.byte	0x1
	.uahalf	0x10f
	.uaword	0x66a
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0x1a
	.string	"AlmActionBackupPsprUcErr"
	.byte	0x1
	.uahalf	0x110
	.uaword	0x66a
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x1a
	.string	"GetAlmActionResult"
	.byte	0x1
	.uahalf	0x111
	.uaword	0x13e
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0x1a
	.string	"SegenBackup"
	.byte	0x1
	.uahalf	0x112
	.uaword	0x121
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1a
	.string	"OvcRabr0Backup"
	.byte	0x1
	.uahalf	0x113
	.uaword	0x121
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x1a
	.string	"OvcOtar0Backup"
	.byte	0x1
	.uahalf	0x114
	.uaword	0x121
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1a
	.string	"OvcOmask0Backup"
	.byte	0x1
	.uahalf	0x115
	.uaword	0x121
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x1a
	.string	"OvcOvEnBackup"
	.byte	0x1
	.uahalf	0x116
	.uaword	0x121
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x1a
	.string	"OvcOselBackup"
	.byte	0x1
	.uahalf	0x117
	.uaword	0x121
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x1a
	.string	"OvcEnableBackup"
	.byte	0x1
	.uahalf	0x118
	.uaword	0x121
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1a
	.string	"ProtectionTrapRegistered"
	.byte	0x1
	.uahalf	0x119
	.uaword	0x12f
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1a
	.string	"BusErrorTrapRegistered"
	.byte	0x1
	.uahalf	0x11a
	.uaword	0x12f
	.byte	0x2
	.byte	0x23
	.uleb128 0x25
	.byte	0
	.uleb128 0x6
	.string	"SriTst_BackupDataType"
	.byte	0x1
	.uahalf	0x11b
	.uaword	0x2da2
	.uleb128 0x1b
	.string	"_dsync"
	.byte	0x3
	.byte	0xbc
	.byte	0x1
	.byte	0x3
	.uleb128 0x1b
	.string	"_isync"
	.byte	0x3
	.byte	0xb6
	.byte	0x1
	.byte	0x3
	.uleb128 0x1c
	.byte	0x1
	.string	"__crc32"
	.byte	0x2
	.uahalf	0x189
	.byte	0x1
	.uaword	0xba
	.byte	0x3
	.uaword	0x3035
	.uleb128 0x1d
	.string	"b"
	.byte	0x2
	.uahalf	0x189
	.uaword	0xba
	.uleb128 0x1d
	.string	"a"
	.byte	0x2
	.uahalf	0x189
	.uaword	0xba
	.uleb128 0x1e
	.string	"res"
	.byte	0x2
	.uahalf	0x18a
	.uaword	0xba
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.string	"SriTst_SriTst"
	.byte	0x1
	.uahalf	0x28b
	.byte	0x1
	.uaword	0x4e6
	.uaword	.LFB18
	.uaword	.LFE18
	.uaword	.LLST0
	.uaword	0x3131
	.uleb128 0x20
	.uaword	.LASF21
	.byte	0x1
	.uahalf	0x28d
	.uaword	0x3131
	.byte	0x3
	.byte	0x8e
	.sleb128 -76
	.uleb128 0x21
	.string	"TstSeed"
	.byte	0x1
	.uahalf	0x28e
	.uaword	0x3136
	.byte	0x3
	.byte	0x8e
	.sleb128 -77
	.uleb128 0x20
	.uaword	.LASF22
	.byte	0x1
	.uahalf	0x28f
	.uaword	0x313b
	.byte	0x3
	.byte	0x8e
	.sleb128 -84
	.uleb128 0x22
	.uaword	.LASF23
	.byte	0x1
	.uahalf	0x292
	.uaword	0x4e6
	.byte	0x2
	.byte	0x8e
	.sleb128 -4
	.uleb128 0x23
	.string	"ResRestore"
	.byte	0x1
	.uahalf	0x293
	.uaword	0x4e6
	.byte	0x2
	.byte	0x8e
	.sleb128 -8
	.uleb128 0x22
	.uaword	.LASF24
	.byte	0x1
	.uahalf	0x294
	.uaword	0x2fc7
	.byte	0x3
	.byte	0x8e
	.sleb128 -72
	.uleb128 0x24
	.uaword	0x2ffd
	.uaword	.LBB160
	.uaword	.LBE160
	.byte	0x1
	.uahalf	0x297
	.uaword	0x30fd
	.uleb128 0x25
	.uaword	0x301e
	.byte	0x2
	.byte	0x8e
	.sleb128 -16
	.uleb128 0x25
	.uaword	0x3014
	.byte	0x2
	.byte	0x8e
	.sleb128 -12
	.uleb128 0x26
	.uaword	.LBB161
	.uaword	.LBE161
	.uleb128 0x27
	.uaword	0x3028
	.byte	0x2
	.byte	0x8e
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x28
	.uaword	0x2ffd
	.uaword	.LBB162
	.uaword	.LBE162
	.byte	0x1
	.uahalf	0x2c5
	.uleb128 0x25
	.uaword	0x301e
	.byte	0x2
	.byte	0x8e
	.sleb128 -28
	.uleb128 0x25
	.uaword	0x3014
	.byte	0x2
	.byte	0x8e
	.sleb128 -24
	.uleb128 0x26
	.uaword	.LBB163
	.uaword	.LBE163
	.uleb128 0x27
	.uaword	0x3028
	.byte	0x2
	.byte	0x8e
	.sleb128 -32
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.uaword	0x4fd
	.uleb128 0xd
	.uaword	0xfa
	.uleb128 0xd
	.uaword	0x636
	.uleb128 0x29
	.string	"SriTst_lInit"
	.byte	0x1
	.uahalf	0x2f0
	.byte	0x1
	.uaword	0x4e6
	.uaword	.LFB19
	.uaword	.LFE19
	.uaword	.LLST1
	.uaword	0x32ad
	.uleb128 0x20
	.uaword	.LASF24
	.byte	0x1
	.uahalf	0x2f2
	.uaword	0x32ad
	.byte	0x2
	.byte	0x8e
	.sleb128 -52
	.uleb128 0x22
	.uaword	.LASF23
	.byte	0x1
	.uahalf	0x2f5
	.uaword	0x4e6
	.byte	0x2
	.byte	0x8e
	.sleb128 -4
	.uleb128 0x22
	.uaword	.LASF25
	.byte	0x1
	.uahalf	0x2f6
	.uaword	0x13e
	.byte	0x2
	.byte	0x8e
	.sleb128 -21
	.uleb128 0x22
	.uaword	.LASF26
	.byte	0x1
	.uahalf	0x2f6
	.uaword	0x13e
	.byte	0x2
	.byte	0x8e
	.sleb128 -22
	.uleb128 0x22
	.uaword	.LASF27
	.byte	0x1
	.uahalf	0x2f6
	.uaword	0x13e
	.byte	0x2
	.byte	0x8e
	.sleb128 -23
	.uleb128 0x22
	.uaword	.LASF28
	.byte	0x1
	.uahalf	0x2f6
	.uaword	0x13e
	.byte	0x2
	.byte	0x8e
	.sleb128 -24
	.uleb128 0x22
	.uaword	.LASF29
	.byte	0x1
	.uahalf	0x2f7
	.uaword	0x13e
	.byte	0x2
	.byte	0x8e
	.sleb128 -25
	.uleb128 0x22
	.uaword	.LASF30
	.byte	0x1
	.uahalf	0x2f7
	.uaword	0x13e
	.byte	0x2
	.byte	0x8e
	.sleb128 -26
	.uleb128 0x22
	.uaword	.LASF31
	.byte	0x1
	.uahalf	0x2f7
	.uaword	0x13e
	.byte	0x2
	.byte	0x8e
	.sleb128 -27
	.uleb128 0x23
	.string	"FspActionBackup"
	.byte	0x1
	.uahalf	0x2f9
	.uaword	0x685
	.byte	0x2
	.byte	0x8e
	.sleb128 -28
	.uleb128 0x23
	.string	"AlarmStatus1"
	.byte	0x1
	.uahalf	0x2fa
	.uaword	0x121
	.byte	0x2
	.byte	0x8e
	.sleb128 -32
	.uleb128 0x23
	.string	"AlarmStatus2"
	.byte	0x1
	.uahalf	0x2fb
	.uaword	0x121
	.byte	0x2
	.byte	0x8e
	.sleb128 -36
	.uleb128 0x23
	.string	"AlarmStatus3"
	.byte	0x1
	.uahalf	0x2fc
	.uaword	0x121
	.byte	0x2
	.byte	0x8e
	.sleb128 -40
	.uleb128 0x23
	.string	"AlarmStatus4"
	.byte	0x1
	.uahalf	0x2fd
	.uaword	0x121
	.byte	0x2
	.byte	0x8e
	.sleb128 -44
	.uleb128 0x22
	.uaword	.LASF32
	.byte	0x1
	.uahalf	0x2fe
	.uaword	0x121
	.byte	0x2
	.byte	0x8e
	.sleb128 -12
	.uleb128 0x22
	.uaword	.LASF33
	.byte	0x1
	.uahalf	0x2ff
	.uaword	0xfa
	.byte	0x2
	.byte	0x8e
	.sleb128 -13
	.uleb128 0x23
	.string	"i"
	.byte	0x1
	.uahalf	0x300
	.uaword	0x121
	.byte	0x2
	.byte	0x8e
	.sleb128 -8
	.uleb128 0x26
	.uaword	.LBB164
	.uaword	.LBE164
	.uleb128 0x22
	.uaword	.LASF34
	.byte	0x1
	.uahalf	0x361
	.uaword	0xba
	.byte	0x2
	.byte	0x8e
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0xd
	.uaword	0x32b2
	.uleb128 0xc
	.byte	0x4
	.uaword	0x2fc7
	.uleb128 0x29
	.string	"SriTst_lRestore"
	.byte	0x1
	.uahalf	0x425
	.byte	0x1
	.uaword	0x4e6
	.uaword	.LFB20
	.uaword	.LFE20
	.uaword	.LLST2
	.uaword	0x33c5
	.uleb128 0x20
	.uaword	.LASF24
	.byte	0x1
	.uahalf	0x427
	.uaword	0x33c5
	.byte	0x2
	.byte	0x8e
	.sleb128 -28
	.uleb128 0x22
	.uaword	.LASF23
	.byte	0x1
	.uahalf	0x42a
	.uaword	0x4e6
	.byte	0x2
	.byte	0x8e
	.sleb128 -4
	.uleb128 0x22
	.uaword	.LASF25
	.byte	0x1
	.uahalf	0x42b
	.uaword	0x13e
	.byte	0x2
	.byte	0x8e
	.sleb128 -13
	.uleb128 0x22
	.uaword	.LASF26
	.byte	0x1
	.uahalf	0x42b
	.uaword	0x13e
	.byte	0x2
	.byte	0x8e
	.sleb128 -14
	.uleb128 0x22
	.uaword	.LASF27
	.byte	0x1
	.uahalf	0x42b
	.uaword	0x13e
	.byte	0x2
	.byte	0x8e
	.sleb128 -15
	.uleb128 0x22
	.uaword	.LASF28
	.byte	0x1
	.uahalf	0x42b
	.uaword	0x13e
	.byte	0x2
	.byte	0x8e
	.sleb128 -16
	.uleb128 0x22
	.uaword	.LASF29
	.byte	0x1
	.uahalf	0x42c
	.uaword	0x13e
	.byte	0x2
	.byte	0x8e
	.sleb128 -17
	.uleb128 0x22
	.uaword	.LASF30
	.byte	0x1
	.uahalf	0x42c
	.uaword	0x13e
	.byte	0x2
	.byte	0x8e
	.sleb128 -18
	.uleb128 0x22
	.uaword	.LASF31
	.byte	0x1
	.uahalf	0x42c
	.uaword	0x13e
	.byte	0x2
	.byte	0x8e
	.sleb128 -19
	.uleb128 0x22
	.uaword	.LASF33
	.byte	0x1
	.uahalf	0x42d
	.uaword	0xfa
	.byte	0x2
	.byte	0x8e
	.sleb128 -5
	.uleb128 0x2a
	.uaword	0x2ff1
	.uaword	.LBB165
	.uaword	.LBE165
	.byte	0x1
	.uahalf	0x44c
	.uleb128 0x2a
	.uaword	0x2fe5
	.uaword	.LBB167
	.uaword	.LBE167
	.byte	0x1
	.uahalf	0x489
	.uleb128 0x2b
	.uaword	.LBB169
	.uaword	.LBE169
	.uaword	0x33b4
	.uleb128 0x22
	.uaword	.LASF35
	.byte	0x1
	.uahalf	0x489
	.uaword	0xba
	.byte	0x2
	.byte	0x8e
	.sleb128 -12
	.byte	0
	.uleb128 0x2a
	.uaword	0x2ff1
	.uaword	.LBB170
	.uaword	.LBE170
	.byte	0x1
	.uahalf	0x489
	.byte	0
	.uleb128 0xd
	.uaword	0x33ca
	.uleb128 0xc
	.byte	0x4
	.uaword	0x33d0
	.uleb128 0xd
	.uaword	0x2fc7
	.uleb128 0x29
	.string	"SriTst_lProtectionTrapHandler"
	.byte	0x1
	.uahalf	0x504
	.byte	0x1
	.uaword	0x12f
	.uaword	.LFB21
	.uaword	.LFE21
	.uaword	.LLST3
	.uaword	0x346b
	.uleb128 0x21
	.string	"TrapId"
	.byte	0x1
	.uahalf	0x506
	.uaword	0x69e
	.byte	0x2
	.byte	0x8e
	.sleb128 -12
	.uleb128 0x22
	.uaword	.LASF36
	.byte	0x1
	.uahalf	0x509
	.uaword	0x12f
	.byte	0x2
	.byte	0x8e
	.sleb128 -1
	.uleb128 0x2a
	.uaword	0x2fe5
	.uaword	.LBB172
	.uaword	.LBE172
	.byte	0x1
	.uahalf	0x51c
	.uleb128 0x2b
	.uaword	.LBB174
	.uaword	.LBE174
	.uaword	0x345a
	.uleb128 0x22
	.uaword	.LASF35
	.byte	0x1
	.uahalf	0x51c
	.uaword	0xba
	.byte	0x2
	.byte	0x8e
	.sleb128 -8
	.byte	0
	.uleb128 0x2a
	.uaword	0x2ff1
	.uaword	.LBB175
	.uaword	.LBE175
	.byte	0x1
	.uahalf	0x51c
	.byte	0
	.uleb128 0x29
	.string	"SriTst_lBusErrorTrapHandler"
	.byte	0x1
	.uahalf	0x545
	.byte	0x1
	.uaword	0x12f
	.uaword	.LFB22
	.uaword	.LFE22
	.uaword	.LLST4
	.uaword	0x35b6
	.uleb128 0x21
	.string	"TrapId"
	.byte	0x1
	.uahalf	0x547
	.uaword	0x69e
	.byte	0x2
	.byte	0x8e
	.sleb128 -28
	.uleb128 0x22
	.uaword	.LASF36
	.byte	0x1
	.uahalf	0x54a
	.uaword	0x12f
	.byte	0x2
	.byte	0x8e
	.sleb128 -1
	.uleb128 0x2a
	.uaword	0x2fe5
	.uaword	.LBB177
	.uaword	.LBE177
	.byte	0x1
	.uahalf	0x55b
	.uleb128 0x2b
	.uaword	.LBB179
	.uaword	.LBE179
	.uaword	0x34ee
	.uleb128 0x22
	.uaword	.LASF35
	.byte	0x1
	.uahalf	0x55b
	.uaword	0xba
	.byte	0x2
	.byte	0x8e
	.sleb128 -8
	.byte	0
	.uleb128 0x2a
	.uaword	0x2ff1
	.uaword	.LBB180
	.uaword	.LBE180
	.byte	0x1
	.uahalf	0x55b
	.uleb128 0x2a
	.uaword	0x2fe5
	.uaword	.LBB182
	.uaword	.LBE182
	.byte	0x1
	.uahalf	0x56d
	.uleb128 0x2b
	.uaword	.LBB184
	.uaword	.LBE184
	.uaword	0x352b
	.uleb128 0x22
	.uaword	.LASF35
	.byte	0x1
	.uahalf	0x56d
	.uaword	0xba
	.byte	0x2
	.byte	0x8e
	.sleb128 -12
	.byte	0
	.uleb128 0x2a
	.uaword	0x2ff1
	.uaword	.LBB185
	.uaword	.LBE185
	.byte	0x1
	.uahalf	0x56d
	.uleb128 0x2a
	.uaword	0x2fe5
	.uaword	.LBB187
	.uaword	.LBE187
	.byte	0x1
	.uahalf	0x583
	.uleb128 0x2b
	.uaword	.LBB189
	.uaword	.LBE189
	.uaword	0x3568
	.uleb128 0x22
	.uaword	.LASF35
	.byte	0x1
	.uahalf	0x583
	.uaword	0xba
	.byte	0x2
	.byte	0x8e
	.sleb128 -16
	.byte	0
	.uleb128 0x2a
	.uaword	0x2ff1
	.uaword	.LBB190
	.uaword	.LBE190
	.byte	0x1
	.uahalf	0x583
	.uleb128 0x2a
	.uaword	0x2fe5
	.uaword	.LBB192
	.uaword	.LBE192
	.byte	0x1
	.uahalf	0x598
	.uleb128 0x2b
	.uaword	.LBB194
	.uaword	.LBE194
	.uaword	0x35a5
	.uleb128 0x22
	.uaword	.LASF35
	.byte	0x1
	.uahalf	0x598
	.uaword	0xba
	.byte	0x2
	.byte	0x8e
	.sleb128 -20
	.byte	0
	.uleb128 0x2a
	.uaword	0x2ff1
	.uaword	.LBB195
	.uaword	.LBE195
	.byte	0x1
	.uahalf	0x598
	.byte	0
	.uleb128 0x29
	.string	"SriTst_lSriBusErrorsTst"
	.byte	0x1
	.uahalf	0x5dd
	.byte	0x1
	.uaword	0x4e6
	.uaword	.LFB23
	.uaword	.LFE23
	.uaword	.LLST5
	.uaword	0x3624
	.uleb128 0x20
	.uaword	.LASF21
	.byte	0x1
	.uahalf	0x5df
	.uaword	0x3131
	.byte	0x2
	.byte	0x8e
	.sleb128 -12
	.uleb128 0x20
	.uaword	.LASF22
	.byte	0x1
	.uahalf	0x5e0
	.uaword	0x313b
	.byte	0x2
	.byte	0x8e
	.sleb128 -16
	.uleb128 0x22
	.uaword	.LASF23
	.byte	0x1
	.uahalf	0x5e3
	.uaword	0x4e6
	.byte	0x2
	.byte	0x8e
	.sleb128 -4
	.uleb128 0x22
	.uaword	.LASF37
	.byte	0x1
	.uahalf	0x5e4
	.uaword	0x13e
	.byte	0x2
	.byte	0x8e
	.sleb128 -5
	.byte	0
	.uleb128 0x29
	.string	"SriTst_lInvalidTransactionIdTst"
	.byte	0x1
	.uahalf	0x6da
	.byte	0x1
	.uaword	0x4e6
	.uaword	.LFB24
	.uaword	.LFE24
	.uaword	.LLST6
	.uaword	0x37ef
	.uleb128 0x20
	.uaword	.LASF21
	.byte	0x1
	.uahalf	0x6dc
	.uaword	0x3131
	.byte	0x3
	.byte	0x8e
	.sleb128 -76
	.uleb128 0x20
	.uaword	.LASF22
	.byte	0x1
	.uahalf	0x6dd
	.uaword	0x313b
	.byte	0x3
	.byte	0x8e
	.sleb128 -80
	.uleb128 0x22
	.uaword	.LASF23
	.byte	0x1
	.uahalf	0x6e0
	.uaword	0x4e6
	.byte	0x2
	.byte	0x8e
	.sleb128 -4
	.uleb128 0x22
	.uaword	.LASF38
	.byte	0x1
	.uahalf	0x6e1
	.uaword	0x4e6
	.byte	0x2
	.byte	0x8e
	.sleb128 -16
	.uleb128 0x22
	.uaword	.LASF39
	.byte	0x1
	.uahalf	0x6e2
	.uaword	0x636
	.byte	0x2
	.byte	0x8e
	.sleb128 -12
	.uleb128 0x22
	.uaword	.LASF40
	.byte	0x1
	.uahalf	0x6e3
	.uaword	0x121
	.byte	0x2
	.byte	0x8e
	.sleb128 -52
	.uleb128 0x23
	.string	"XbarIdIntEnBackup"
	.byte	0x1
	.uahalf	0x6e4
	.uaword	0x121
	.byte	0x2
	.byte	0x8e
	.sleb128 -20
	.uleb128 0x23
	.string	"Dummy"
	.byte	0x1
	.uahalf	0x6e5
	.uaword	0x37ef
	.byte	0x2
	.byte	0x8e
	.sleb128 -56
	.uleb128 0x22
	.uaword	.LASF33
	.byte	0x1
	.uahalf	0x6e6
	.uaword	0xfa
	.byte	0x2
	.byte	0x8e
	.sleb128 -5
	.uleb128 0x23
	.string	"MemoryBackup"
	.byte	0x1
	.uahalf	0x6e7
	.uaword	0x37f4
	.byte	0x2
	.byte	0x8e
	.sleb128 -64
	.uleb128 0x23
	.string	"DummyW_MtuTc_005"
	.byte	0x1
	.uahalf	0x6e8
	.uaword	0x3804
	.byte	0x3
	.byte	0x8e
	.sleb128 -66
	.uleb128 0x23
	.string	"IdMciBitTbl"
	.byte	0x1
	.uahalf	0x6ed
	.uaword	0x3819
	.byte	0x3
	.byte	0x8e
	.sleb128 -72
	.uleb128 0x24
	.uaword	0x2ffd
	.uaword	.LBB197
	.uaword	.LBE197
	.byte	0x1
	.uahalf	0x715
	.uaword	0x377a
	.uleb128 0x25
	.uaword	0x301e
	.byte	0x2
	.byte	0x8e
	.sleb128 -32
	.uleb128 0x25
	.uaword	0x3014
	.byte	0x2
	.byte	0x8e
	.sleb128 -28
	.uleb128 0x26
	.uaword	.LBB198
	.uaword	.LBE198
	.uleb128 0x27
	.uaword	0x3028
	.byte	0x2
	.byte	0x8e
	.sleb128 -36
	.byte	0
	.byte	0
	.uleb128 0x24
	.uaword	0x2ffd
	.uaword	.LBB199
	.uaword	.LBE199
	.byte	0x1
	.uahalf	0x71e
	.uaword	0x37b1
	.uleb128 0x25
	.uaword	0x301e
	.byte	0x2
	.byte	0x8e
	.sleb128 -44
	.uleb128 0x25
	.uaword	0x3014
	.byte	0x2
	.byte	0x8e
	.sleb128 -40
	.uleb128 0x26
	.uaword	.LBB200
	.uaword	.LBE200
	.uleb128 0x27
	.uaword	0x3028
	.byte	0x2
	.byte	0x8e
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uaword	0x2fe5
	.uaword	.LBB201
	.uaword	.LBE201
	.byte	0x1
	.uahalf	0x731
	.uleb128 0x2b
	.uaword	.LBB203
	.uaword	.LBE203
	.uaword	0x37de
	.uleb128 0x22
	.uaword	.LASF35
	.byte	0x1
	.uahalf	0x731
	.uaword	0xba
	.byte	0x2
	.byte	0x8e
	.sleb128 -24
	.byte	0
	.uleb128 0x2a
	.uaword	0x2ff1
	.uaword	.LBB204
	.uaword	.LBE204
	.byte	0x1
	.uahalf	0x731
	.byte	0
	.uleb128 0xe
	.uaword	0x121
	.uleb128 0xa
	.uaword	0x121
	.uaword	0x3804
	.uleb128 0xb
	.uaword	0xdd
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.uaword	0x107
	.uleb128 0xa
	.uaword	0x154
	.uaword	0x3819
	.uleb128 0xb
	.uaword	0xdd
	.byte	0
	.byte	0
	.uleb128 0xd
	.uaword	0x3809
	.uleb128 0x29
	.string	"SriTst_lInjectPsprError"
	.byte	0x1
	.uahalf	0x7d1
	.byte	0x1
	.uaword	0x4e6
	.uaword	.LFB25
	.uaword	.LFE25
	.uaword	.LLST7
	.uaword	0x39c9
	.uleb128 0x20
	.uaword	.LASF39
	.byte	0x1
	.uahalf	0x7d3
	.uaword	0x313b
	.byte	0x2
	.byte	0x8e
	.sleb128 -60
	.uleb128 0x20
	.uaword	.LASF33
	.byte	0x1
	.uahalf	0x7d4
	.uaword	0x3136
	.byte	0x2
	.byte	0x8e
	.sleb128 -61
	.uleb128 0x23
	.string	"i"
	.byte	0x1
	.uahalf	0x7d7
	.uaword	0xfa
	.byte	0x2
	.byte	0x8e
	.sleb128 -1
	.uleb128 0x22
	.uaword	.LASF37
	.byte	0x1
	.uahalf	0x7d8
	.uaword	0x121
	.byte	0x2
	.byte	0x8e
	.sleb128 -24
	.uleb128 0x23
	.string	"CpuCacheBypass"
	.byte	0x1
	.uahalf	0x7d9
	.uaword	0x121
	.byte	0x2
	.byte	0x8e
	.sleb128 -8
	.uleb128 0x22
	.uaword	.LASF23
	.byte	0x1
	.uahalf	0x7da
	.uaword	0x4e6
	.byte	0x2
	.byte	0x8e
	.sleb128 -12
	.uleb128 0x22
	.uaword	.LASF38
	.byte	0x1
	.uahalf	0x7db
	.uaword	0x4e6
	.byte	0x2
	.byte	0x8e
	.sleb128 -32
	.uleb128 0x23
	.string	"McRdbfl"
	.byte	0x1
	.uahalf	0x7dc
	.uaword	0x39c9
	.byte	0x2
	.byte	0x8e
	.sleb128 -16
	.uleb128 0x22
	.uaword	.LASF41
	.byte	0x1
	.uahalf	0x7dd
	.uaword	0x37f4
	.byte	0x2
	.byte	0x8e
	.sleb128 -48
	.uleb128 0x23
	.string	"Dummy"
	.byte	0x1
	.uahalf	0x7df
	.uaword	0x37ef
	.byte	0x2
	.byte	0x8e
	.sleb128 -52
	.uleb128 0x2b
	.uaword	.LBB206
	.uaword	.LBE206
	.uaword	0x3911
	.uleb128 0x22
	.uaword	.LASF34
	.byte	0x1
	.uahalf	0x7e9
	.uaword	0xba
	.byte	0x2
	.byte	0x8e
	.sleb128 -20
	.byte	0
	.uleb128 0x2a
	.uaword	0x2fe5
	.uaword	.LBB207
	.uaword	.LBE207
	.byte	0x1
	.uahalf	0x7f0
	.uleb128 0x2b
	.uaword	.LBB209
	.uaword	.LBE209
	.uaword	0x393e
	.uleb128 0x22
	.uaword	.LASF35
	.byte	0x1
	.uahalf	0x7f0
	.uaword	0xba
	.byte	0x2
	.byte	0x8e
	.sleb128 -28
	.byte	0
	.uleb128 0x2a
	.uaword	0x2ff1
	.uaword	.LBB210
	.uaword	.LBE210
	.byte	0x1
	.uahalf	0x7f0
	.uleb128 0x2a
	.uaword	0x2fe5
	.uaword	.LBB212
	.uaword	.LBE212
	.byte	0x1
	.uahalf	0x7fa
	.uleb128 0x2a
	.uaword	0x2fe5
	.uaword	.LBB214
	.uaword	.LBE214
	.byte	0x1
	.uahalf	0x818
	.uleb128 0x2b
	.uaword	.LBB216
	.uaword	.LBE216
	.uaword	0x398b
	.uleb128 0x22
	.uaword	.LASF34
	.byte	0x1
	.uahalf	0x83f
	.uaword	0xba
	.byte	0x2
	.byte	0x8e
	.sleb128 -36
	.byte	0
	.uleb128 0x2a
	.uaword	0x2fe5
	.uaword	.LBB217
	.uaword	.LBE217
	.byte	0x1
	.uahalf	0x841
	.uleb128 0x2b
	.uaword	.LBB219
	.uaword	.LBE219
	.uaword	0x39b8
	.uleb128 0x22
	.uaword	.LASF35
	.byte	0x1
	.uahalf	0x841
	.uaword	0xba
	.byte	0x2
	.byte	0x8e
	.sleb128 -40
	.byte	0
	.uleb128 0x2a
	.uaword	0x2ff1
	.uaword	.LBB220
	.uaword	.LBE220
	.byte	0x1
	.uahalf	0x841
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.uaword	0x39cf
	.uleb128 0xe
	.uaword	0xdc2
	.uleb128 0x29
	.string	"SriTst_lEnablePspr0Mc"
	.byte	0x1
	.uahalf	0x86f
	.byte	0x1
	.uaword	0x4e6
	.uaword	.LFB26
	.uaword	.LFE26
	.uaword	.LLST8
	.uaword	0x3a43
	.uleb128 0x23
	.string	"Status"
	.byte	0x1
	.uahalf	0x874
	.uaword	0x121
	.byte	0x2
	.byte	0x8e
	.sleb128 -16
	.uleb128 0x22
	.uaword	.LASF42
	.byte	0x1
	.uahalf	0x875
	.uaword	0x121
	.byte	0x2
	.byte	0x8e
	.sleb128 -4
	.uleb128 0x22
	.uaword	.LASF43
	.byte	0x1
	.uahalf	0x876
	.uaword	0x121
	.byte	0x2
	.byte	0x8e
	.sleb128 -8
	.uleb128 0x22
	.uaword	.LASF23
	.byte	0x1
	.uahalf	0x877
	.uaword	0x4e6
	.byte	0x2
	.byte	0x8e
	.sleb128 -12
	.byte	0
	.uleb128 0x29
	.string	"SriTst_lDisablePspr0Mc"
	.byte	0x1
	.uahalf	0x8c1
	.byte	0x1
	.uaword	0x4e6
	.uaword	.LFB27
	.uaword	.LFE27
	.uaword	.LLST9
	.uaword	0x3ab3
	.uleb128 0x23
	.string	"Status"
	.byte	0x1
	.uahalf	0x8c6
	.uaword	0x121
	.byte	0x2
	.byte	0x8e
	.sleb128 -16
	.uleb128 0x22
	.uaword	.LASF42
	.byte	0x1
	.uahalf	0x8c7
	.uaword	0x121
	.byte	0x2
	.byte	0x8e
	.sleb128 -4
	.uleb128 0x22
	.uaword	.LASF43
	.byte	0x1
	.uahalf	0x8c8
	.uaword	0x121
	.byte	0x2
	.byte	0x8e
	.sleb128 -8
	.uleb128 0x22
	.uaword	.LASF23
	.byte	0x1
	.uahalf	0x8c9
	.uaword	0x4e6
	.byte	0x2
	.byte	0x8e
	.sleb128 -12
	.byte	0
	.uleb128 0x29
	.string	"SriTst_lEnableMtuClock"
	.byte	0x1
	.uahalf	0x907
	.byte	0x1
	.uaword	0x4e6
	.uaword	.LFB28
	.uaword	.LFE28
	.uaword	.LLST10
	.uaword	0x3b11
	.uleb128 0x20
	.uaword	.LASF40
	.byte	0x1
	.uahalf	0x909
	.uaword	0x313b
	.byte	0x2
	.byte	0x8e
	.sleb128 -12
	.uleb128 0x22
	.uaword	.LASF23
	.byte	0x1
	.uahalf	0x90c
	.uaword	0x4e6
	.byte	0x2
	.byte	0x8e
	.sleb128 -4
	.uleb128 0x22
	.uaword	.LASF42
	.byte	0x1
	.uahalf	0x90d
	.uaword	0x121
	.byte	0x2
	.byte	0x8e
	.sleb128 -8
	.byte	0
	.uleb128 0x29
	.string	"SriTst_lDisableMtuClock"
	.byte	0x1
	.uahalf	0x93c
	.byte	0x1
	.uaword	0x4e6
	.uaword	.LFB29
	.uaword	.LFE29
	.uaword	.LLST11
	.uaword	0x3b61
	.uleb128 0x22
	.uaword	.LASF23
	.byte	0x1
	.uahalf	0x941
	.uaword	0x4e6
	.byte	0x2
	.byte	0x8e
	.sleb128 -4
	.uleb128 0x22
	.uaword	.LASF42
	.byte	0x1
	.uahalf	0x942
	.uaword	0x121
	.byte	0x2
	.byte	0x8e
	.sleb128 -8
	.byte	0
	.uleb128 0x29
	.string	"SriTst_lSlaveAddrDecoderTst"
	.byte	0x1
	.uahalf	0x982
	.byte	0x1
	.uaword	0x4e6
	.uaword	.LFB30
	.uaword	.LFE30
	.uaword	.LLST12
	.uaword	0x3d42
	.uleb128 0x20
	.uaword	.LASF22
	.byte	0x1
	.uahalf	0x984
	.uaword	0x313b
	.byte	0x2
	.byte	0x8e
	.sleb128 -60
	.uleb128 0x20
	.uaword	.LASF44
	.byte	0x1
	.uahalf	0x985
	.uaword	0x313b
	.byte	0x2
	.byte	0x8e
	.sleb128 -64
	.uleb128 0x20
	.uaword	.LASF45
	.byte	0x1
	.uahalf	0x986
	.uaword	0xfa
	.byte	0x3
	.byte	0x8e
	.sleb128 -65
	.uleb128 0x20
	.uaword	.LASF46
	.byte	0x1
	.uahalf	0x987
	.uaword	0xfa
	.byte	0x3
	.byte	0x8e
	.sleb128 -66
	.uleb128 0x22
	.uaword	.LASF23
	.byte	0x1
	.uahalf	0x98b
	.uaword	0x4e6
	.byte	0x2
	.byte	0x8e
	.sleb128 -4
	.uleb128 0x23
	.string	"RetVal1"
	.byte	0x1
	.uahalf	0x98c
	.uaword	0x13e
	.byte	0x2
	.byte	0x8e
	.sleb128 -15
	.uleb128 0x23
	.string	"RetVal2"
	.byte	0x1
	.uahalf	0x98d
	.uaword	0x13e
	.byte	0x2
	.byte	0x8e
	.sleb128 -16
	.uleb128 0x22
	.uaword	.LASF42
	.byte	0x1
	.uahalf	0x98e
	.uaword	0x121
	.byte	0x2
	.byte	0x8e
	.sleb128 -8
	.uleb128 0x22
	.uaword	.LASF32
	.byte	0x1
	.uahalf	0x98f
	.uaword	0x121
	.byte	0x2
	.byte	0x8e
	.sleb128 -52
	.uleb128 0x22
	.uaword	.LASF47
	.byte	0x1
	.uahalf	0x990
	.uaword	0x121
	.byte	0x2
	.byte	0x8e
	.sleb128 -12
	.uleb128 0x22
	.uaword	.LASF48
	.byte	0x1
	.uahalf	0x991
	.uaword	0xfa
	.byte	0x2
	.byte	0x8e
	.sleb128 -13
	.uleb128 0x22
	.uaword	.LASF49
	.byte	0x1
	.uahalf	0x992
	.uaword	0x3d42
	.byte	0x2
	.byte	0x8e
	.sleb128 -20
	.uleb128 0x22
	.uaword	.LASF41
	.byte	0x1
	.uahalf	0x993
	.uaword	0x37ef
	.byte	0x2
	.byte	0x8e
	.sleb128 -56
	.uleb128 0x22
	.uaword	.LASF50
	.byte	0x1
	.uahalf	0x994
	.uaword	0xfa
	.byte	0x2
	.byte	0x8e
	.sleb128 -14
	.uleb128 0x22
	.uaword	.LASF37
	.byte	0x1
	.uahalf	0x995
	.uaword	0x13e
	.byte	0x2
	.byte	0x8e
	.sleb128 -29
	.uleb128 0x22
	.uaword	.LASF51
	.byte	0x1
	.uahalf	0x996
	.uaword	0x121
	.byte	0x2
	.byte	0x8e
	.sleb128 -24
	.uleb128 0x2a
	.uaword	0x2fe5
	.uaword	.LBB222
	.uaword	.LBE222
	.byte	0x1
	.uahalf	0x9a3
	.uleb128 0x2b
	.uaword	.LBB224
	.uaword	.LBE224
	.uaword	0x3cbd
	.uleb128 0x22
	.uaword	.LASF35
	.byte	0x1
	.uahalf	0x9a3
	.uaword	0xba
	.byte	0x2
	.byte	0x8e
	.sleb128 -28
	.byte	0
	.uleb128 0x2a
	.uaword	0x2ff1
	.uaword	.LBB225
	.uaword	.LBE225
	.byte	0x1
	.uahalf	0x9a3
	.uleb128 0x24
	.uaword	0x2ffd
	.uaword	.LBB227
	.uaword	.LBE227
	.byte	0x1
	.uahalf	0x9d1
	.uaword	0x3d04
	.uleb128 0x25
	.uaword	0x301e
	.byte	0x2
	.byte	0x8e
	.sleb128 -44
	.uleb128 0x25
	.uaword	0x3014
	.byte	0x2
	.byte	0x8e
	.sleb128 -40
	.uleb128 0x26
	.uaword	.LBB228
	.uaword	.LBE228
	.uleb128 0x27
	.uaword	0x3028
	.byte	0x2
	.byte	0x8e
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uaword	0x2fe5
	.uaword	.LBB229
	.uaword	.LBE229
	.byte	0x1
	.uahalf	0x9e5
	.uleb128 0x2b
	.uaword	.LBB231
	.uaword	.LBE231
	.uaword	0x3d31
	.uleb128 0x22
	.uaword	.LASF35
	.byte	0x1
	.uahalf	0x9e5
	.uaword	0xba
	.byte	0x2
	.byte	0x8e
	.sleb128 -36
	.byte	0
	.uleb128 0x2a
	.uaword	0x2ff1
	.uaword	.LBB232
	.uaword	.LBE232
	.byte	0x1
	.uahalf	0x9e5
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.uaword	0x37ef
	.uleb128 0x29
	.string	"SriTst_lSlaveAddrDecoderXbarTst"
	.byte	0x1
	.uahalf	0xa16
	.byte	0x1
	.uaword	0x4e6
	.uaword	.LFB31
	.uaword	.LFE31
	.uaword	.LLST13
	.uaword	0x3eae
	.uleb128 0x20
	.uaword	.LASF22
	.byte	0x1
	.uahalf	0xa18
	.uaword	0x313b
	.byte	0x2
	.byte	0x8e
	.sleb128 -52
	.uleb128 0x22
	.uaword	.LASF23
	.byte	0x1
	.uahalf	0xa1c
	.uaword	0x4e6
	.byte	0x2
	.byte	0x8e
	.sleb128 -4
	.uleb128 0x23
	.string	"RetVal1"
	.byte	0x1
	.uahalf	0xa1d
	.uaword	0x13e
	.byte	0x2
	.byte	0x8e
	.sleb128 -15
	.uleb128 0x23
	.string	"RetVal2"
	.byte	0x1
	.uahalf	0xa1e
	.uaword	0x13e
	.byte	0x2
	.byte	0x8e
	.sleb128 -16
	.uleb128 0x22
	.uaword	.LASF42
	.byte	0x1
	.uahalf	0xa1f
	.uaword	0x121
	.byte	0x2
	.byte	0x8e
	.sleb128 -8
	.uleb128 0x22
	.uaword	.LASF32
	.byte	0x1
	.uahalf	0xa20
	.uaword	0x121
	.byte	0x2
	.byte	0x8e
	.sleb128 -44
	.uleb128 0x22
	.uaword	.LASF47
	.byte	0x1
	.uahalf	0xa21
	.uaword	0x121
	.byte	0x2
	.byte	0x8e
	.sleb128 -12
	.uleb128 0x22
	.uaword	.LASF48
	.byte	0x1
	.uahalf	0xa22
	.uaword	0xfa
	.byte	0x2
	.byte	0x8e
	.sleb128 -13
	.uleb128 0x22
	.uaword	.LASF41
	.byte	0x1
	.uahalf	0xa23
	.uaword	0x37ef
	.byte	0x2
	.byte	0x8e
	.sleb128 -48
	.uleb128 0x22
	.uaword	.LASF50
	.byte	0x1
	.uahalf	0xa24
	.uaword	0xfa
	.byte	0x2
	.byte	0x8e
	.sleb128 -14
	.uleb128 0x22
	.uaword	.LASF37
	.byte	0x1
	.uahalf	0xa25
	.uaword	0x13e
	.byte	0x2
	.byte	0x8e
	.sleb128 -25
	.uleb128 0x22
	.uaword	.LASF51
	.byte	0x1
	.uahalf	0xa26
	.uaword	0x121
	.byte	0x2
	.byte	0x8e
	.sleb128 -20
	.uleb128 0x2a
	.uaword	0x2fe5
	.uaword	.LBB234
	.uaword	.LBE234
	.byte	0x1
	.uahalf	0xa32
	.uleb128 0x2b
	.uaword	.LBB236
	.uaword	.LBE236
	.uaword	0x3e6a
	.uleb128 0x22
	.uaword	.LASF35
	.byte	0x1
	.uahalf	0xa32
	.uaword	0xba
	.byte	0x2
	.byte	0x8e
	.sleb128 -24
	.byte	0
	.uleb128 0x2a
	.uaword	0x2ff1
	.uaword	.LBB237
	.uaword	.LBE237
	.byte	0x1
	.uahalf	0xa32
	.uleb128 0x28
	.uaword	0x2ffd
	.uaword	.LBB239
	.uaword	.LBE239
	.byte	0x1
	.uahalf	0xa61
	.uleb128 0x25
	.uaword	0x301e
	.byte	0x2
	.byte	0x8e
	.sleb128 -36
	.uleb128 0x25
	.uaword	0x3014
	.byte	0x2
	.byte	0x8e
	.sleb128 -32
	.uleb128 0x26
	.uaword	.LBB240
	.uaword	.LBE240
	.uleb128 0x27
	.uaword	0x3028
	.byte	0x2
	.byte	0x8e
	.sleb128 -40
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x29
	.string	"SriTst_lSlaveDataDecoderTst"
	.byte	0x1
	.uahalf	0xaa3
	.byte	0x1
	.uaword	0x4e6
	.uaword	.LFB32
	.uaword	.LFE32
	.uaword	.LLST14
	.uaword	0x40b7
	.uleb128 0x20
	.uaword	.LASF22
	.byte	0x1
	.uahalf	0xaa5
	.uaword	0x313b
	.byte	0x3
	.byte	0x8e
	.sleb128 -68
	.uleb128 0x20
	.uaword	.LASF44
	.byte	0x1
	.uahalf	0xaa6
	.uaword	0x313b
	.byte	0x3
	.byte	0x8e
	.sleb128 -72
	.uleb128 0x20
	.uaword	.LASF45
	.byte	0x1
	.uahalf	0xaa7
	.uaword	0xfa
	.byte	0x3
	.byte	0x8e
	.sleb128 -73
	.uleb128 0x20
	.uaword	.LASF46
	.byte	0x1
	.uahalf	0xaa8
	.uaword	0xfa
	.byte	0x3
	.byte	0x8e
	.sleb128 -74
	.uleb128 0x22
	.uaword	.LASF23
	.byte	0x1
	.uahalf	0xaab
	.uaword	0x4e6
	.byte	0x2
	.byte	0x8e
	.sleb128 -4
	.uleb128 0x22
	.uaword	.LASF42
	.byte	0x1
	.uahalf	0xaac
	.uaword	0x121
	.byte	0x2
	.byte	0x8e
	.sleb128 -8
	.uleb128 0x22
	.uaword	.LASF32
	.byte	0x1
	.uahalf	0xaad
	.uaword	0x121
	.byte	0x2
	.byte	0x8e
	.sleb128 -60
	.uleb128 0x22
	.uaword	.LASF47
	.byte	0x1
	.uahalf	0xaae
	.uaword	0x121
	.byte	0x2
	.byte	0x8e
	.sleb128 -12
	.uleb128 0x22
	.uaword	.LASF48
	.byte	0x1
	.uahalf	0xaaf
	.uaword	0xfa
	.byte	0x2
	.byte	0x8e
	.sleb128 -13
	.uleb128 0x22
	.uaword	.LASF49
	.byte	0x1
	.uahalf	0xab0
	.uaword	0x3d42
	.byte	0x2
	.byte	0x8e
	.sleb128 -20
	.uleb128 0x22
	.uaword	.LASF41
	.byte	0x1
	.uahalf	0xab1
	.uaword	0x37ef
	.byte	0x2
	.byte	0x8e
	.sleb128 -64
	.uleb128 0x22
	.uaword	.LASF52
	.byte	0x1
	.uahalf	0xab2
	.uaword	0x121
	.byte	0x2
	.byte	0x8e
	.sleb128 -24
	.uleb128 0x22
	.uaword	.LASF50
	.byte	0x1
	.uahalf	0xab3
	.uaword	0xfa
	.byte	0x2
	.byte	0x8e
	.sleb128 -14
	.uleb128 0x22
	.uaword	.LASF37
	.byte	0x1
	.uahalf	0xab4
	.uaword	0x13e
	.byte	0x2
	.byte	0x8e
	.sleb128 -33
	.uleb128 0x22
	.uaword	.LASF51
	.byte	0x1
	.uahalf	0xab5
	.uaword	0x121
	.byte	0x2
	.byte	0x8e
	.sleb128 -28
	.uleb128 0x2a
	.uaword	0x2fe5
	.uaword	.LBB241
	.uaword	.LBE241
	.byte	0x1
	.uahalf	0xabd
	.uleb128 0x2b
	.uaword	.LBB243
	.uaword	.LBE243
	.uaword	0x3ff5
	.uleb128 0x22
	.uaword	.LASF35
	.byte	0x1
	.uahalf	0xabd
	.uaword	0xba
	.byte	0x2
	.byte	0x8e
	.sleb128 -32
	.byte	0
	.uleb128 0x2a
	.uaword	0x2ff1
	.uaword	.LBB244
	.uaword	.LBE244
	.byte	0x1
	.uahalf	0xabd
	.uleb128 0x24
	.uaword	0x2ffd
	.uaword	.LBB246
	.uaword	.LBE246
	.byte	0x1
	.uahalf	0xae9
	.uaword	0x403c
	.uleb128 0x25
	.uaword	0x301e
	.byte	0x2
	.byte	0x8e
	.sleb128 -52
	.uleb128 0x25
	.uaword	0x3014
	.byte	0x2
	.byte	0x8e
	.sleb128 -48
	.uleb128 0x26
	.uaword	.LBB247
	.uaword	.LBE247
	.uleb128 0x27
	.uaword	0x3028
	.byte	0x2
	.byte	0x8e
	.sleb128 -56
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uaword	0x2fe5
	.uaword	.LBB248
	.uaword	.LBE248
	.byte	0x1
	.uahalf	0xaf8
	.uleb128 0x2b
	.uaword	.LBB250
	.uaword	.LBE250
	.uaword	0x4069
	.uleb128 0x22
	.uaword	.LASF35
	.byte	0x1
	.uahalf	0xaf8
	.uaword	0xba
	.byte	0x2
	.byte	0x8e
	.sleb128 -40
	.byte	0
	.uleb128 0x2a
	.uaword	0x2ff1
	.uaword	.LBB251
	.uaword	.LBE251
	.byte	0x1
	.uahalf	0xaf8
	.uleb128 0x2a
	.uaword	0x2fe5
	.uaword	.LBB253
	.uaword	.LBE253
	.byte	0x1
	.uahalf	0xaf9
	.uleb128 0x2b
	.uaword	.LBB255
	.uaword	.LBE255
	.uaword	0x40a6
	.uleb128 0x22
	.uaword	.LASF35
	.byte	0x1
	.uahalf	0xaf9
	.uaword	0xba
	.byte	0x2
	.byte	0x8e
	.sleb128 -44
	.byte	0
	.uleb128 0x2a
	.uaword	0x2ff1
	.uaword	.LBB256
	.uaword	.LBE256
	.byte	0x1
	.uahalf	0xaf9
	.byte	0
	.uleb128 0x29
	.string	"SriTst_lSlaveDataDecoderXbarTst"
	.byte	0x1
	.uahalf	0xb22
	.byte	0x1
	.uaword	0x4e6
	.uaword	.LFB33
	.uaword	.LFE33
	.uaword	.LLST15
	.uaword	0x41f7
	.uleb128 0x20
	.uaword	.LASF22
	.byte	0x1
	.uahalf	0xb24
	.uaword	0x313b
	.byte	0x2
	.byte	0x8e
	.sleb128 -52
	.uleb128 0x22
	.uaword	.LASF23
	.byte	0x1
	.uahalf	0xb27
	.uaword	0x4e6
	.byte	0x2
	.byte	0x8e
	.sleb128 -4
	.uleb128 0x22
	.uaword	.LASF42
	.byte	0x1
	.uahalf	0xb28
	.uaword	0x121
	.byte	0x2
	.byte	0x8e
	.sleb128 -8
	.uleb128 0x22
	.uaword	.LASF32
	.byte	0x1
	.uahalf	0xb29
	.uaword	0x121
	.byte	0x2
	.byte	0x8e
	.sleb128 -44
	.uleb128 0x22
	.uaword	.LASF47
	.byte	0x1
	.uahalf	0xb2a
	.uaword	0x121
	.byte	0x2
	.byte	0x8e
	.sleb128 -12
	.uleb128 0x22
	.uaword	.LASF48
	.byte	0x1
	.uahalf	0xb2b
	.uaword	0xfa
	.byte	0x2
	.byte	0x8e
	.sleb128 -13
	.uleb128 0x22
	.uaword	.LASF41
	.byte	0x1
	.uahalf	0xb2c
	.uaword	0x37ef
	.byte	0x2
	.byte	0x8e
	.sleb128 -48
	.uleb128 0x22
	.uaword	.LASF50
	.byte	0x1
	.uahalf	0xb2d
	.uaword	0xfa
	.byte	0x2
	.byte	0x8e
	.sleb128 -14
	.uleb128 0x22
	.uaword	.LASF37
	.byte	0x1
	.uahalf	0xb2e
	.uaword	0x13e
	.byte	0x2
	.byte	0x8e
	.sleb128 -25
	.uleb128 0x22
	.uaword	.LASF51
	.byte	0x1
	.uahalf	0xb2f
	.uaword	0x121
	.byte	0x2
	.byte	0x8e
	.sleb128 -20
	.uleb128 0x2a
	.uaword	0x2fe5
	.uaword	.LBB258
	.uaword	.LBE258
	.byte	0x1
	.uahalf	0xb3f
	.uleb128 0x2b
	.uaword	.LBB260
	.uaword	.LBE260
	.uaword	0x41b3
	.uleb128 0x22
	.uaword	.LASF35
	.byte	0x1
	.uahalf	0xb3f
	.uaword	0xba
	.byte	0x2
	.byte	0x8e
	.sleb128 -24
	.byte	0
	.uleb128 0x2a
	.uaword	0x2ff1
	.uaword	.LBB261
	.uaword	.LBE261
	.byte	0x1
	.uahalf	0xb3f
	.uleb128 0x28
	.uaword	0x2ffd
	.uaword	.LBB263
	.uaword	.LBE263
	.byte	0x1
	.uahalf	0xb6b
	.uleb128 0x25
	.uaword	0x301e
	.byte	0x2
	.byte	0x8e
	.sleb128 -36
	.uleb128 0x25
	.uaword	0x3014
	.byte	0x2
	.byte	0x8e
	.sleb128 -32
	.uleb128 0x26
	.uaword	.LBB264
	.uaword	.LBE264
	.uleb128 0x27
	.uaword	0x3028
	.byte	0x2
	.byte	0x8e
	.sleb128 -40
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x29
	.string	"SriTst_lMasterDataDecoderTst"
	.byte	0x1
	.uahalf	0xba2
	.byte	0x1
	.uaword	0x4e6
	.uaword	.LFB34
	.uaword	.LFE34
	.uaword	.LLST16
	.uaword	0x43b3
	.uleb128 0x20
	.uaword	.LASF22
	.byte	0x1
	.uahalf	0xba4
	.uaword	0x313b
	.byte	0x2
	.byte	0x8e
	.sleb128 -60
	.uleb128 0x20
	.uaword	.LASF44
	.byte	0x1
	.uahalf	0xba5
	.uaword	0x313b
	.byte	0x2
	.byte	0x8e
	.sleb128 -64
	.uleb128 0x20
	.uaword	.LASF45
	.byte	0x1
	.uahalf	0xba6
	.uaword	0xfa
	.byte	0x3
	.byte	0x8e
	.sleb128 -65
	.uleb128 0x20
	.uaword	.LASF46
	.byte	0x1
	.uahalf	0xba7
	.uaword	0xfa
	.byte	0x3
	.byte	0x8e
	.sleb128 -66
	.uleb128 0x22
	.uaword	.LASF23
	.byte	0x1
	.uahalf	0xbaa
	.uaword	0x4e6
	.byte	0x2
	.byte	0x8e
	.sleb128 -4
	.uleb128 0x22
	.uaword	.LASF42
	.byte	0x1
	.uahalf	0xbab
	.uaword	0x121
	.byte	0x2
	.byte	0x8e
	.sleb128 -8
	.uleb128 0x22
	.uaword	.LASF32
	.byte	0x1
	.uahalf	0xbac
	.uaword	0x121
	.byte	0x2
	.byte	0x8e
	.sleb128 -52
	.uleb128 0x22
	.uaword	.LASF47
	.byte	0x1
	.uahalf	0xbad
	.uaword	0x121
	.byte	0x2
	.byte	0x8e
	.sleb128 -12
	.uleb128 0x22
	.uaword	.LASF48
	.byte	0x1
	.uahalf	0xbae
	.uaword	0xfa
	.byte	0x2
	.byte	0x8e
	.sleb128 -13
	.uleb128 0x22
	.uaword	.LASF49
	.byte	0x1
	.uahalf	0xbaf
	.uaword	0x3d42
	.byte	0x2
	.byte	0x8e
	.sleb128 -20
	.uleb128 0x22
	.uaword	.LASF41
	.byte	0x1
	.uahalf	0xbb0
	.uaword	0x37ef
	.byte	0x2
	.byte	0x8e
	.sleb128 -56
	.uleb128 0x22
	.uaword	.LASF50
	.byte	0x1
	.uahalf	0xbb1
	.uaword	0xfa
	.byte	0x2
	.byte	0x8e
	.sleb128 -14
	.uleb128 0x22
	.uaword	.LASF37
	.byte	0x1
	.uahalf	0xbb2
	.uaword	0x13e
	.byte	0x2
	.byte	0x8e
	.sleb128 -29
	.uleb128 0x22
	.uaword	.LASF51
	.byte	0x1
	.uahalf	0xbb3
	.uaword	0x121
	.byte	0x2
	.byte	0x8e
	.sleb128 -24
	.uleb128 0x2a
	.uaword	0x2fe5
	.uaword	.LBB265
	.uaword	.LBE265
	.byte	0x1
	.uahalf	0xbc5
	.uleb128 0x2b
	.uaword	.LBB267
	.uaword	.LBE267
	.uaword	0x432e
	.uleb128 0x22
	.uaword	.LASF35
	.byte	0x1
	.uahalf	0xbc5
	.uaword	0xba
	.byte	0x2
	.byte	0x8e
	.sleb128 -28
	.byte	0
	.uleb128 0x2a
	.uaword	0x2ff1
	.uaword	.LBB268
	.uaword	.LBE268
	.byte	0x1
	.uahalf	0xbc5
	.uleb128 0x24
	.uaword	0x2ffd
	.uaword	.LBB270
	.uaword	.LBE270
	.byte	0x1
	.uahalf	0xbf2
	.uaword	0x4375
	.uleb128 0x25
	.uaword	0x301e
	.byte	0x2
	.byte	0x8e
	.sleb128 -44
	.uleb128 0x25
	.uaword	0x3014
	.byte	0x2
	.byte	0x8e
	.sleb128 -40
	.uleb128 0x26
	.uaword	.LBB271
	.uaword	.LBE271
	.uleb128 0x27
	.uaword	0x3028
	.byte	0x2
	.byte	0x8e
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uaword	0x2fe5
	.uaword	.LBB272
	.uaword	.LBE272
	.byte	0x1
	.uahalf	0xc06
	.uleb128 0x2b
	.uaword	.LBB274
	.uaword	.LBE274
	.uaword	0x43a2
	.uleb128 0x22
	.uaword	.LASF35
	.byte	0x1
	.uahalf	0xc06
	.uaword	0xba
	.byte	0x2
	.byte	0x8e
	.sleb128 -36
	.byte	0
	.uleb128 0x2a
	.uaword	0x2ff1
	.uaword	.LBB275
	.uaword	.LBE275
	.byte	0x1
	.uahalf	0xc06
	.byte	0
	.uleb128 0x29
	.string	"SriTst_lMasterDataDecoderPMITst"
	.byte	0x1
	.uahalf	0xc38
	.byte	0x1
	.uaword	0x4e6
	.uaword	.LFB35
	.uaword	.LFE35
	.uaword	.LLST17
	.uaword	0x453a
	.uleb128 0x20
	.uaword	.LASF22
	.byte	0x1
	.uahalf	0xc3a
	.uaword	0x313b
	.byte	0x2
	.byte	0x8e
	.sleb128 -60
	.uleb128 0x20
	.uaword	.LASF44
	.byte	0x1
	.uahalf	0xc3b
	.uaword	0x313b
	.byte	0x2
	.byte	0x8e
	.sleb128 -64
	.uleb128 0x22
	.uaword	.LASF23
	.byte	0x1
	.uahalf	0xc3e
	.uaword	0x4e6
	.byte	0x2
	.byte	0x8e
	.sleb128 -4
	.uleb128 0x22
	.uaword	.LASF42
	.byte	0x1
	.uahalf	0xc3f
	.uaword	0x121
	.byte	0x2
	.byte	0x8e
	.sleb128 -8
	.uleb128 0x22
	.uaword	.LASF32
	.byte	0x1
	.uahalf	0xc40
	.uaword	0x121
	.byte	0x2
	.byte	0x8e
	.sleb128 -56
	.uleb128 0x22
	.uaword	.LASF47
	.byte	0x1
	.uahalf	0xc41
	.uaword	0x121
	.byte	0x2
	.byte	0x8e
	.sleb128 -12
	.uleb128 0x22
	.uaword	.LASF48
	.byte	0x1
	.uahalf	0xc42
	.uaword	0xfa
	.byte	0x2
	.byte	0x8e
	.sleb128 -13
	.uleb128 0x23
	.string	"PtrTestAddr16"
	.byte	0x1
	.uahalf	0xc43
	.uaword	0x453a
	.byte	0x2
	.byte	0x8e
	.sleb128 -20
	.uleb128 0x22
	.uaword	.LASF52
	.byte	0x1
	.uahalf	0xc44
	.uaword	0x121
	.byte	0x2
	.byte	0x8e
	.sleb128 -24
	.uleb128 0x22
	.uaword	.LASF33
	.byte	0x1
	.uahalf	0xc45
	.uaword	0xfa
	.byte	0x2
	.byte	0x8e
	.sleb128 -25
	.uleb128 0x22
	.uaword	.LASF50
	.byte	0x1
	.uahalf	0xc46
	.uaword	0xfa
	.byte	0x2
	.byte	0x8e
	.sleb128 -14
	.uleb128 0x22
	.uaword	.LASF37
	.byte	0x1
	.uahalf	0xc47
	.uaword	0x13e
	.byte	0x2
	.byte	0x8e
	.sleb128 -37
	.uleb128 0x22
	.uaword	.LASF51
	.byte	0x1
	.uahalf	0xc48
	.uaword	0x121
	.byte	0x2
	.byte	0x8e
	.sleb128 -32
	.uleb128 0x2a
	.uaword	0x2ff1
	.uaword	.LBB277
	.uaword	.LBE277
	.byte	0x1
	.uahalf	0xc69
	.uleb128 0x2a
	.uaword	0x2fe5
	.uaword	.LBB279
	.uaword	.LBE279
	.byte	0x1
	.uahalf	0xc74
	.uleb128 0x2b
	.uaword	.LBB281
	.uaword	.LBE281
	.uaword	0x44f6
	.uleb128 0x22
	.uaword	.LASF35
	.byte	0x1
	.uahalf	0xc74
	.uaword	0xba
	.byte	0x2
	.byte	0x8e
	.sleb128 -36
	.byte	0
	.uleb128 0x2a
	.uaword	0x2ff1
	.uaword	.LBB282
	.uaword	.LBE282
	.byte	0x1
	.uahalf	0xc74
	.uleb128 0x28
	.uaword	0x2ffd
	.uaword	.LBB284
	.uaword	.LBE284
	.byte	0x1
	.uahalf	0xcae
	.uleb128 0x25
	.uaword	0x301e
	.byte	0x2
	.byte	0x8e
	.sleb128 -48
	.uleb128 0x25
	.uaword	0x3014
	.byte	0x2
	.byte	0x8e
	.sleb128 -44
	.uleb128 0x26
	.uaword	.LBB285
	.uaword	.LBE285
	.uleb128 0x27
	.uaword	0x3028
	.byte	0x2
	.byte	0x8e
	.sleb128 -52
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.uaword	0x3804
	.uleb128 0x29
	.string	"SriTst_lCPUDecodersTst"
	.byte	0x1
	.uahalf	0xcfc
	.byte	0x1
	.uaword	0x4e6
	.uaword	.LFB36
	.uaword	.LFE36
	.uaword	.LLST18
	.uaword	0x45d4
	.uleb128 0x20
	.uaword	.LASF21
	.byte	0x1
	.uahalf	0xcfe
	.uaword	0x3131
	.byte	0x2
	.byte	0x8e
	.sleb128 -20
	.uleb128 0x20
	.uaword	.LASF22
	.byte	0x1
	.uahalf	0xcff
	.uaword	0x313b
	.byte	0x2
	.byte	0x8e
	.sleb128 -24
	.uleb128 0x22
	.uaword	.LASF23
	.byte	0x1
	.uahalf	0xd02
	.uaword	0x4e6
	.byte	0x2
	.byte	0x8e
	.sleb128 -4
	.uleb128 0x23
	.string	"TmpResult"
	.byte	0x1
	.uahalf	0xd03
	.uaword	0x4e6
	.byte	0x2
	.byte	0x8e
	.sleb128 -8
	.uleb128 0x22
	.uaword	.LASF33
	.byte	0x1
	.uahalf	0xd04
	.uaword	0xfa
	.byte	0x2
	.byte	0x8e
	.sleb128 -9
	.uleb128 0x23
	.string	"SriAlm"
	.byte	0x1
	.uahalf	0xd05
	.uaword	0xfa
	.byte	0x2
	.byte	0x8e
	.sleb128 -10
	.byte	0
	.uleb128 0x2c
	.string	"SriTst_lEnableOverlay"
	.byte	0x1
	.uahalf	0xd90
	.byte	0x1
	.uaword	.LFB37
	.uaword	.LFE37
	.uaword	.LLST19
	.uaword	0x463c
	.uleb128 0x20
	.uaword	.LASF33
	.byte	0x1
	.uahalf	0xd92
	.uaword	0xfa
	.byte	0x2
	.byte	0x8e
	.sleb128 -9
	.uleb128 0x23
	.string	"targetBaseAddress"
	.byte	0x1
	.uahalf	0xd96
	.uaword	0x37ef
	.byte	0x2
	.byte	0x8e
	.sleb128 -4
	.uleb128 0x2a
	.uaword	0x2fe5
	.uaword	.LBB286
	.uaword	.LBE286
	.byte	0x1
	.uahalf	0xda9
	.byte	0
	.uleb128 0x2c
	.string	"SriTst_lDisableOverlay"
	.byte	0x1
	.uahalf	0xdf6
	.byte	0x1
	.uaword	.LFB38
	.uaword	.LFE38
	.uaword	.LLST20
	.uaword	0x4698
	.uleb128 0x20
	.uaword	.LASF33
	.byte	0x1
	.uahalf	0xdf8
	.uaword	0xfa
	.byte	0x2
	.byte	0x8e
	.sleb128 -1
	.uleb128 0x2a
	.uaword	0x2fe5
	.uaword	.LBB288
	.uaword	.LBE288
	.byte	0x1
	.uahalf	0xdfc
	.uleb128 0x2a
	.uaword	0x2fe5
	.uaword	.LBB290
	.uaword	.LBE290
	.byte	0x1
	.uahalf	0xe1b
	.byte	0
	.uleb128 0x29
	.string	"SriTst_lAdditionalDecodersTst"
	.byte	0x1
	.uahalf	0xe4c
	.byte	0x1
	.uaword	0x4e6
	.uaword	.LFB39
	.uaword	.LFE39
	.uaword	.LLST21
	.uaword	0x470c
	.uleb128 0x20
	.uaword	.LASF21
	.byte	0x1
	.uahalf	0xe4e
	.uaword	0x3131
	.byte	0x2
	.byte	0x8e
	.sleb128 -12
	.uleb128 0x20
	.uaword	.LASF22
	.byte	0x1
	.uahalf	0xe4f
	.uaword	0x313b
	.byte	0x2
	.byte	0x8e
	.sleb128 -16
	.uleb128 0x22
	.uaword	.LASF23
	.byte	0x1
	.uahalf	0xe52
	.uaword	0x4e6
	.byte	0x2
	.byte	0x8e
	.sleb128 -4
	.uleb128 0x22
	.uaword	.LASF33
	.byte	0x1
	.uahalf	0xe53
	.uaword	0xfa
	.byte	0x2
	.byte	0x8e
	.sleb128 -5
	.byte	0
	.uleb128 0x29
	.string	"SriTst_lLMUDecoderTst"
	.byte	0x1
	.uahalf	0xec5
	.byte	0x1
	.uaword	0x4e6
	.uaword	.LFB40
	.uaword	.LFE40
	.uaword	.LLST22
	.uaword	0x4769
	.uleb128 0x20
	.uaword	.LASF22
	.byte	0x1
	.uahalf	0xec7
	.uaword	0x313b
	.byte	0x2
	.byte	0x8e
	.sleb128 -12
	.uleb128 0x20
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0xec8
	.uaword	0x313b
	.byte	0x2
	.byte	0x8e
	.sleb128 -16
	.uleb128 0x22
	.uaword	.LASF23
	.byte	0x1
	.uahalf	0xecb
	.uaword	0x4e6
	.byte	0x2
	.byte	0x8e
	.sleb128 -4
	.byte	0
	.uleb128 0x29
	.string	"SriTst_lPMUDFlashDecoderTst"
	.byte	0x1
	.uahalf	0xf13
	.byte	0x1
	.uaword	0x4e6
	.uaword	.LFB41
	.uaword	.LFE41
	.uaword	.LLST23
	.uaword	0x47de
	.uleb128 0x20
	.uaword	.LASF22
	.byte	0x1
	.uahalf	0xf15
	.uaword	0x313b
	.byte	0x2
	.byte	0x8e
	.sleb128 -12
	.uleb128 0x21
	.string	"SriTstPMUDFlashTstAdr"
	.byte	0x1
	.uahalf	0xf16
	.uaword	0x313b
	.byte	0x2
	.byte	0x8e
	.sleb128 -16
	.uleb128 0x22
	.uaword	.LASF23
	.byte	0x1
	.uahalf	0xf19
	.uaword	0x4e6
	.byte	0x2
	.byte	0x8e
	.sleb128 -4
	.byte	0
	.uleb128 0x29
	.string	"SriTst_lPMUPFlashDecoderTst"
	.byte	0x1
	.uahalf	0xf52
	.byte	0x1
	.uaword	0x4e6
	.uaword	.LFB42
	.uaword	.LFE42
	.uaword	.LLST24
	.uaword	0x4853
	.uleb128 0x20
	.uaword	.LASF22
	.byte	0x1
	.uahalf	0xf54
	.uaword	0x313b
	.byte	0x2
	.byte	0x8e
	.sleb128 -12
	.uleb128 0x21
	.string	"SriTstPMUPFlashTstAdr"
	.byte	0x1
	.uahalf	0xf55
	.uaword	0x313b
	.byte	0x2
	.byte	0x8e
	.sleb128 -16
	.uleb128 0x22
	.uaword	.LASF23
	.byte	0x1
	.uahalf	0xf58
	.uaword	0x4e6
	.byte	0x2
	.byte	0x8e
	.sleb128 -4
	.byte	0
	.uleb128 0x29
	.string	"SriTst_lDMADecoderTst"
	.byte	0x1
	.uahalf	0xf86
	.byte	0x1
	.uaword	0x4e6
	.uaword	.LFB43
	.uaword	.LFE43
	.uaword	.LLST25
	.uaword	0x4997
	.uleb128 0x20
	.uaword	.LASF21
	.byte	0x1
	.uahalf	0xf88
	.uaword	0x3131
	.byte	0x2
	.byte	0x8e
	.sleb128 -52
	.uleb128 0x20
	.uaword	.LASF22
	.byte	0x1
	.uahalf	0xf89
	.uaword	0x313b
	.byte	0x2
	.byte	0x8e
	.sleb128 -56
	.uleb128 0x22
	.uaword	.LASF23
	.byte	0x1
	.uahalf	0xf8c
	.uaword	0x4e6
	.byte	0x2
	.byte	0x8e
	.sleb128 -4
	.uleb128 0x22
	.uaword	.LASF42
	.byte	0x1
	.uahalf	0xf8d
	.uaword	0x121
	.byte	0x2
	.byte	0x8e
	.sleb128 -8
	.uleb128 0x23
	.string	"DmaClcBackup"
	.byte	0x1
	.uahalf	0xf8e
	.uaword	0x121
	.byte	0x2
	.byte	0x8e
	.sleb128 -12
	.uleb128 0x23
	.string	"DmaChBackup"
	.byte	0x1
	.uahalf	0xf8f
	.uaword	0x121
	.byte	0x2
	.byte	0x8e
	.sleb128 -24
	.uleb128 0x23
	.string	"DmaChSourceBackup"
	.byte	0x1
	.uahalf	0xf90
	.uaword	0x121
	.byte	0x2
	.byte	0x8e
	.sleb128 -28
	.uleb128 0x23
	.string	"DmaChDestBackup"
	.byte	0x1
	.uahalf	0xf91
	.uaword	0x121
	.byte	0x2
	.byte	0x8e
	.sleb128 -32
	.uleb128 0x23
	.string	"DmaChRdataCrcBackup"
	.byte	0x1
	.uahalf	0xf92
	.uaword	0x121
	.byte	0x2
	.byte	0x8e
	.sleb128 -36
	.uleb128 0x23
	.string	"DmaChSDaddrCrcBackup"
	.byte	0x1
	.uahalf	0xf93
	.uaword	0x121
	.byte	0x2
	.byte	0x8e
	.sleb128 -40
	.uleb128 0x22
	.uaword	.LASF33
	.byte	0x1
	.uahalf	0xf94
	.uaword	0xfa
	.byte	0x2
	.byte	0x8e
	.sleb128 -13
	.uleb128 0x23
	.string	"backup"
	.byte	0x1
	.uahalf	0xf95
	.uaword	0x121
	.byte	0x2
	.byte	0x8e
	.sleb128 -20
	.uleb128 0x23
	.string	"Dummy"
	.byte	0x1
	.uahalf	0xf96
	.uaword	0x37ef
	.byte	0x2
	.byte	0x8e
	.sleb128 -44
	.byte	0
	.uleb128 0x29
	.string	"SriTst_lDoDMADecoderTst"
	.byte	0x1
	.uahalf	0x100f
	.byte	0x1
	.uaword	0x4e6
	.uaword	.LFB44
	.uaword	.LFE44
	.uaword	.LLST26
	.uaword	0x4ade
	.uleb128 0x20
	.uaword	.LASF21
	.byte	0x1
	.uahalf	0x1011
	.uaword	0x3131
	.byte	0x2
	.byte	0x8e
	.sleb128 -52
	.uleb128 0x20
	.uaword	.LASF22
	.byte	0x1
	.uahalf	0x1012
	.uaword	0x313b
	.byte	0x2
	.byte	0x8e
	.sleb128 -56
	.uleb128 0x22
	.uaword	.LASF23
	.byte	0x1
	.uahalf	0x1015
	.uaword	0x4e6
	.byte	0x2
	.byte	0x8e
	.sleb128 -4
	.uleb128 0x22
	.uaword	.LASF42
	.byte	0x1
	.uahalf	0x1016
	.uaword	0x121
	.byte	0x2
	.byte	0x8e
	.sleb128 -8
	.uleb128 0x22
	.uaword	.LASF32
	.byte	0x1
	.uahalf	0x1017
	.uaword	0x121
	.byte	0x2
	.byte	0x8e
	.sleb128 -44
	.uleb128 0x22
	.uaword	.LASF47
	.byte	0x1
	.uahalf	0x1018
	.uaword	0x121
	.byte	0x2
	.byte	0x8e
	.sleb128 -12
	.uleb128 0x22
	.uaword	.LASF48
	.byte	0x1
	.uahalf	0x1019
	.uaword	0xfa
	.byte	0x2
	.byte	0x8e
	.sleb128 -13
	.uleb128 0x22
	.uaword	.LASF33
	.byte	0x1
	.uahalf	0x101a
	.uaword	0xfa
	.byte	0x2
	.byte	0x8e
	.sleb128 -15
	.uleb128 0x22
	.uaword	.LASF50
	.byte	0x1
	.uahalf	0x101b
	.uaword	0xfa
	.byte	0x2
	.byte	0x8e
	.sleb128 -14
	.uleb128 0x22
	.uaword	.LASF37
	.byte	0x1
	.uahalf	0x101c
	.uaword	0x13e
	.byte	0x2
	.byte	0x8e
	.sleb128 -25
	.uleb128 0x22
	.uaword	.LASF51
	.byte	0x1
	.uahalf	0x101d
	.uaword	0x121
	.byte	0x2
	.byte	0x8e
	.sleb128 -20
	.uleb128 0x2a
	.uaword	0x2fe5
	.uaword	.LBB292
	.uaword	.LBE292
	.byte	0x1
	.uahalf	0x1035
	.uleb128 0x2b
	.uaword	.LBB294
	.uaword	.LBE294
	.uaword	0x4a9a
	.uleb128 0x22
	.uaword	.LASF35
	.byte	0x1
	.uahalf	0x1035
	.uaword	0xba
	.byte	0x2
	.byte	0x8e
	.sleb128 -24
	.byte	0
	.uleb128 0x2a
	.uaword	0x2ff1
	.uaword	.LBB295
	.uaword	.LBE295
	.byte	0x1
	.uahalf	0x1035
	.uleb128 0x28
	.uaword	0x2ffd
	.uaword	.LBB297
	.uaword	.LBE297
	.byte	0x1
	.uahalf	0x1064
	.uleb128 0x25
	.uaword	0x301e
	.byte	0x2
	.byte	0x8e
	.sleb128 -36
	.uleb128 0x25
	.uaword	0x3014
	.byte	0x2
	.byte	0x8e
	.sleb128 -32
	.uleb128 0x26
	.uaword	.LBB298
	.uaword	.LBE298
	.uleb128 0x27
	.uaword	0x3028
	.byte	0x2
	.byte	0x8e
	.sleb128 -40
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x29
	.string	"SriTst_lUser0AccTst"
	.byte	0x1
	.uahalf	0x1098
	.byte	0x1
	.uaword	0x4e6
	.uaword	.LFB45
	.uaword	.LFE45
	.uaword	.LLST27
	.uaword	0x4bd5
	.uleb128 0x20
	.uaword	.LASF22
	.byte	0x1
	.uahalf	0x109a
	.uaword	0x313b
	.byte	0x2
	.byte	0x8e
	.sleb128 -36
	.uleb128 0x23
	.string	"Psw"
	.byte	0x1
	.uahalf	0x109d
	.uaword	0x121
	.byte	0x2
	.byte	0x8e
	.sleb128 -12
	.uleb128 0x22
	.uaword	.LASF53
	.byte	0x1
	.uahalf	0x109e
	.uaword	0x37ef
	.byte	0x2
	.byte	0x8e
	.sleb128 -32
	.uleb128 0x22
	.uaword	.LASF23
	.byte	0x1
	.uahalf	0x109f
	.uaword	0x4e6
	.byte	0x2
	.byte	0x8e
	.sleb128 -4
	.uleb128 0x2b
	.uaword	.LBB299
	.uaword	.LBE299
	.uaword	0x4b64
	.uleb128 0x22
	.uaword	.LASF34
	.byte	0x1
	.uahalf	0x10a4
	.uaword	0xba
	.byte	0x2
	.byte	0x8e
	.sleb128 -8
	.byte	0
	.uleb128 0x2a
	.uaword	0x2fe5
	.uaword	.LBB300
	.uaword	.LBE300
	.byte	0x1
	.uahalf	0x10a7
	.uleb128 0x2b
	.uaword	.LBB302
	.uaword	.LBE302
	.uaword	0x4b91
	.uleb128 0x22
	.uaword	.LASF35
	.byte	0x1
	.uahalf	0x10a7
	.uaword	0xba
	.byte	0x2
	.byte	0x8e
	.sleb128 -16
	.byte	0
	.uleb128 0x2a
	.uaword	0x2ff1
	.uaword	.LBB303
	.uaword	.LBE303
	.byte	0x1
	.uahalf	0x10a7
	.uleb128 0x28
	.uaword	0x2ffd
	.uaword	.LBB305
	.uaword	.LBE305
	.byte	0x1
	.uahalf	0x10bf
	.uleb128 0x25
	.uaword	0x301e
	.byte	0x2
	.byte	0x8e
	.sleb128 -24
	.uleb128 0x25
	.uaword	0x3014
	.byte	0x2
	.byte	0x8e
	.sleb128 -20
	.uleb128 0x26
	.uaword	.LBB306
	.uaword	.LBE306
	.uleb128 0x27
	.uaword	0x3028
	.byte	0x2
	.byte	0x8e
	.sleb128 -28
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x29
	.string	"SriTst_lUser1AccTst"
	.byte	0x1
	.uahalf	0x10eb
	.byte	0x1
	.uaword	0x4e6
	.uaword	.LFB46
	.uaword	.LFE46
	.uaword	.LLST28
	.uaword	0x4ccc
	.uleb128 0x20
	.uaword	.LASF22
	.byte	0x1
	.uahalf	0x10ed
	.uaword	0x313b
	.byte	0x2
	.byte	0x8e
	.sleb128 -36
	.uleb128 0x23
	.string	"Psw"
	.byte	0x1
	.uahalf	0x10f0
	.uaword	0x121
	.byte	0x2
	.byte	0x8e
	.sleb128 -12
	.uleb128 0x22
	.uaword	.LASF53
	.byte	0x1
	.uahalf	0x10f1
	.uaword	0x37ef
	.byte	0x2
	.byte	0x8e
	.sleb128 -32
	.uleb128 0x22
	.uaword	.LASF23
	.byte	0x1
	.uahalf	0x10f2
	.uaword	0x4e6
	.byte	0x2
	.byte	0x8e
	.sleb128 -4
	.uleb128 0x2b
	.uaword	.LBB307
	.uaword	.LBE307
	.uaword	0x4c5b
	.uleb128 0x22
	.uaword	.LASF34
	.byte	0x1
	.uahalf	0x10f7
	.uaword	0xba
	.byte	0x2
	.byte	0x8e
	.sleb128 -8
	.byte	0
	.uleb128 0x2a
	.uaword	0x2fe5
	.uaword	.LBB308
	.uaword	.LBE308
	.byte	0x1
	.uahalf	0x10fa
	.uleb128 0x2b
	.uaword	.LBB310
	.uaword	.LBE310
	.uaword	0x4c88
	.uleb128 0x22
	.uaword	.LASF35
	.byte	0x1
	.uahalf	0x10fa
	.uaword	0xba
	.byte	0x2
	.byte	0x8e
	.sleb128 -16
	.byte	0
	.uleb128 0x2a
	.uaword	0x2ff1
	.uaword	.LBB311
	.uaword	.LBE311
	.byte	0x1
	.uahalf	0x10fa
	.uleb128 0x28
	.uaword	0x2ffd
	.uaword	.LBB313
	.uaword	.LBE313
	.byte	0x1
	.uahalf	0x1113
	.uleb128 0x25
	.uaword	0x301e
	.byte	0x2
	.byte	0x8e
	.sleb128 -24
	.uleb128 0x25
	.uaword	0x3014
	.byte	0x2
	.byte	0x8e
	.sleb128 -20
	.uleb128 0x26
	.uaword	.LBB314
	.uaword	.LBE314
	.uleb128 0x27
	.uaword	0x3028
	.byte	0x2
	.byte	0x8e
	.sleb128 -28
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x29
	.string	"SriTst_lUnmappedAdrTst"
	.byte	0x1
	.uahalf	0x113a
	.byte	0x1
	.uaword	0x4e6
	.uaword	.LFB47
	.uaword	.LFE47
	.uaword	.LLST29
	.uaword	0x4d6c
	.uleb128 0x20
	.uaword	.LASF22
	.byte	0x1
	.uahalf	0x113c
	.uaword	0x313b
	.byte	0x2
	.byte	0x8e
	.sleb128 -28
	.uleb128 0x22
	.uaword	.LASF49
	.byte	0x1
	.uahalf	0x113f
	.uaword	0x3d42
	.byte	0x2
	.byte	0x8e
	.sleb128 -8
	.uleb128 0x22
	.uaword	.LASF41
	.byte	0x1
	.uahalf	0x1140
	.uaword	0x37ef
	.byte	0x2
	.byte	0x8e
	.sleb128 -24
	.uleb128 0x22
	.uaword	.LASF23
	.byte	0x1
	.uahalf	0x1141
	.uaword	0x4e6
	.byte	0x2
	.byte	0x8e
	.sleb128 -4
	.uleb128 0x28
	.uaword	0x2ffd
	.uaword	.LBB315
	.uaword	.LBE315
	.byte	0x1
	.uahalf	0x114b
	.uleb128 0x25
	.uaword	0x301e
	.byte	0x2
	.byte	0x8e
	.sleb128 -16
	.uleb128 0x25
	.uaword	0x3014
	.byte	0x2
	.byte	0x8e
	.sleb128 -12
	.uleb128 0x26
	.uaword	.LBB316
	.uaword	.LBE316
	.uleb128 0x27
	.uaword	0x3028
	.byte	0x2
	.byte	0x8e
	.sleb128 -20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x29
	.string	"SriTst_lUnsupportedOCTst"
	.byte	0x1
	.uahalf	0x1182
	.byte	0x1
	.uaword	0x4e6
	.uaword	.LFB48
	.uaword	.LFE48
	.uaword	.LLST30
	.uaword	0x4e17
	.uleb128 0x20
	.uaword	.LASF22
	.byte	0x1
	.uahalf	0x1184
	.uaword	0x313b
	.byte	0x2
	.byte	0x8e
	.sleb128 -28
	.uleb128 0x23
	.string	"PtrTestAddr8"
	.byte	0x1
	.uahalf	0x1187
	.uaword	0x4e17
	.byte	0x2
	.byte	0x8e
	.sleb128 -8
	.uleb128 0x22
	.uaword	.LASF41
	.byte	0x1
	.uahalf	0x1188
	.uaword	0x4e1d
	.byte	0x2
	.byte	0x8e
	.sleb128 -21
	.uleb128 0x22
	.uaword	.LASF23
	.byte	0x1
	.uahalf	0x1189
	.uaword	0x4e6
	.byte	0x2
	.byte	0x8e
	.sleb128 -4
	.uleb128 0x28
	.uaword	0x2ffd
	.uaword	.LBB317
	.uaword	.LBE317
	.byte	0x1
	.uahalf	0x1197
	.uleb128 0x25
	.uaword	0x301e
	.byte	0x2
	.byte	0x8e
	.sleb128 -16
	.uleb128 0x25
	.uaword	0x3014
	.byte	0x2
	.byte	0x8e
	.sleb128 -12
	.uleb128 0x26
	.uaword	.LBB318
	.uaword	.LBE318
	.uleb128 0x27
	.uaword	0x3028
	.byte	0x2
	.byte	0x8e
	.sleb128 -20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.uaword	0x4e1d
	.uleb128 0xe
	.uaword	0xfa
	.uleb128 0x23
	.string	"SriTst_CurrentCpuSriAlm"
	.byte	0x1
	.uahalf	0x128
	.uaword	0x4e48
	.byte	0x5
	.byte	0x3
	.uaword	SriTst_CurrentCpuSriAlm
	.uleb128 0xd
	.uaword	0x616
	.uleb128 0x23
	.string	"Sri_MppTrapCount"
	.byte	0x1
	.uahalf	0x137
	.uaword	0x4e1d
	.byte	0x5
	.byte	0x3
	.uaword	Sri_MppTrapCount
	.uleb128 0x23
	.string	"Sri_DseTrapCount"
	.byte	0x1
	.uahalf	0x138
	.uaword	0x4e1d
	.byte	0x5
	.byte	0x3
	.uaword	Sri_DseTrapCount
	.uleb128 0x23
	.string	"Sri_DaeTrapCount"
	.byte	0x1
	.uahalf	0x139
	.uaword	0x4e1d
	.byte	0x5
	.byte	0x3
	.uaword	Sri_DaeTrapCount
	.uleb128 0x23
	.string	"Sri_DietrTrapCount"
	.byte	0x1
	.uahalf	0x13a
	.uaword	0x4e1d
	.byte	0x5
	.byte	0x3
	.uaword	Sri_DietrTrapCount
	.uleb128 0x23
	.string	"Sri_PietrTrapCount"
	.byte	0x1
	.uahalf	0x13b
	.uaword	0x4e1d
	.byte	0x5
	.byte	0x3
	.uaword	Sri_PietrTrapCount
	.uleb128 0x23
	.string	"Sri_ExpectedTrapClass"
	.byte	0x1
	.uahalf	0x141
	.uaword	0x121
	.byte	0x5
	.byte	0x3
	.uaword	Sri_ExpectedTrapClass
	.uleb128 0x23
	.string	"Sri_ExpectedTrapId"
	.byte	0x1
	.uahalf	0x142
	.uaword	0x121
	.byte	0x5
	.byte	0x3
	.uaword	Sri_ExpectedTrapId
	.uleb128 0xa
	.uaword	0x121
	.uaword	0x4f41
	.uleb128 0xb
	.uaword	0xdd
	.byte	0x7
	.byte	0
	.uleb128 0x23
	.string	"dummy"
	.byte	0x1
	.uahalf	0x14c
	.uaword	0x4f55
	.byte	0x5
	.byte	0x3
	.uaword	dummy
	.uleb128 0xd
	.uaword	0x4f31
	.uleb128 0xa
	.uaword	0x63c
	.uaword	0x4f6a
	.uleb128 0xb
	.uaword	0xdd
	.byte	0
	.byte	0
	.uleb128 0x2d
	.string	"SriTst_ConfigRoot"
	.byte	0x8
	.byte	0xe2
	.uaword	0x4f85
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.uaword	0x4f5a
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x17
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0x5
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
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uaword	.LFB18
	.uaword	.LCFI0
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI0
	.uaword	.LFE18
	.uahalf	0x2
	.byte	0x8e
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LFB19
	.uaword	.LCFI2
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI2
	.uaword	.LFE19
	.uahalf	0x2
	.byte	0x8e
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LFB20
	.uaword	.LCFI4
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI4
	.uaword	.LFE20
	.uahalf	0x2
	.byte	0x8e
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LFB21
	.uaword	.LCFI6
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI6
	.uaword	.LFE21
	.uahalf	0x2
	.byte	0x8e
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LFB22
	.uaword	.LCFI8
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI8
	.uaword	.LFE22
	.uahalf	0x2
	.byte	0x8e
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LFB23
	.uaword	.LCFI10
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI10
	.uaword	.LFE23
	.uahalf	0x2
	.byte	0x8e
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LFB24
	.uaword	.LCFI12
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI12
	.uaword	.LFE24
	.uahalf	0x2
	.byte	0x8e
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LFB25
	.uaword	.LCFI14
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI14
	.uaword	.LFE25
	.uahalf	0x2
	.byte	0x8e
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LFB26
	.uaword	.LCFI16
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI16
	.uaword	.LFE26
	.uahalf	0x2
	.byte	0x8e
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LFB27
	.uaword	.LCFI18
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI18
	.uaword	.LFE27
	.uahalf	0x2
	.byte	0x8e
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LFB28
	.uaword	.LCFI20
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI20
	.uaword	.LFE28
	.uahalf	0x2
	.byte	0x8e
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LFB29
	.uaword	.LCFI22
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI22
	.uaword	.LFE29
	.uahalf	0x2
	.byte	0x8e
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LFB30
	.uaword	.LCFI24
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI24
	.uaword	.LFE30
	.uahalf	0x2
	.byte	0x8e
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LFB31
	.uaword	.LCFI26
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI26
	.uaword	.LFE31
	.uahalf	0x2
	.byte	0x8e
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LFB32
	.uaword	.LCFI28
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI28
	.uaword	.LFE32
	.uahalf	0x2
	.byte	0x8e
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LFB33
	.uaword	.LCFI30
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI30
	.uaword	.LFE33
	.uahalf	0x2
	.byte	0x8e
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LFB34
	.uaword	.LCFI32
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI32
	.uaword	.LFE34
	.uahalf	0x2
	.byte	0x8e
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LFB35
	.uaword	.LCFI34
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI34
	.uaword	.LFE35
	.uahalf	0x2
	.byte	0x8e
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LFB36
	.uaword	.LCFI36
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI36
	.uaword	.LFE36
	.uahalf	0x2
	.byte	0x8e
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LFB37
	.uaword	.LCFI38
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI38
	.uaword	.LFE37
	.uahalf	0x2
	.byte	0x8e
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LFB38
	.uaword	.LCFI40
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI40
	.uaword	.LFE38
	.uahalf	0x2
	.byte	0x8e
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LFB39
	.uaword	.LCFI42
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI42
	.uaword	.LFE39
	.uahalf	0x2
	.byte	0x8e
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LFB40
	.uaword	.LCFI44
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI44
	.uaword	.LFE40
	.uahalf	0x2
	.byte	0x8e
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LFB41
	.uaword	.LCFI46
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI46
	.uaword	.LFE41
	.uahalf	0x2
	.byte	0x8e
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LFB42
	.uaword	.LCFI48
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI48
	.uaword	.LFE42
	.uahalf	0x2
	.byte	0x8e
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LFB43
	.uaword	.LCFI50
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI50
	.uaword	.LFE43
	.uahalf	0x2
	.byte	0x8e
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LFB44
	.uaword	.LCFI52
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI52
	.uaword	.LFE44
	.uahalf	0x2
	.byte	0x8e
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LFB45
	.uaword	.LCFI54
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI54
	.uaword	.LFE45
	.uahalf	0x2
	.byte	0x8e
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LFB46
	.uaword	.LCFI56
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI56
	.uaword	.LFE46
	.uahalf	0x2
	.byte	0x8e
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LFB47
	.uaword	.LCFI58
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI58
	.uaword	.LFE47
	.uahalf	0x2
	.byte	0x8e
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LFB48
	.uaword	.LCFI60
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI60
	.uaword	.LFE48
	.uahalf	0x2
	.byte	0x8e
	.sleb128 0
	.uaword	0
	.uaword	0
	.section .debug_aranges,"",@progbits
	.uaword	0x10c
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
	.uaword	.LFB26
	.uaword	.LFE26-.LFB26
	.uaword	.LFB27
	.uaword	.LFE27-.LFB27
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
	.uaword	.LFB36
	.uaword	.LFE36-.LFB36
	.uaword	.LFB37
	.uaword	.LFE37-.LFB37
	.uaword	.LFB38
	.uaword	.LFE38-.LFB38
	.uaword	.LFB39
	.uaword	.LFE39-.LFB39
	.uaword	.LFB40
	.uaword	.LFE40-.LFB40
	.uaword	.LFB41
	.uaword	.LFE41-.LFB41
	.uaword	.LFB42
	.uaword	.LFE42-.LFB42
	.uaword	.LFB43
	.uaword	.LFE43-.LFB43
	.uaword	.LFB44
	.uaword	.LFE44-.LFB44
	.uaword	.LFB45
	.uaword	.LFE45-.LFB45
	.uaword	.LFB46
	.uaword	.LFE46-.LFB46
	.uaword	.LFB47
	.uaword	.LFE47-.LFB47
	.uaword	.LFB48
	.uaword	.LFE48-.LFB48
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
	.uaword	.LFB26
	.uaword	.LFE26
	.uaword	.LFB27
	.uaword	.LFE27
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
	.uaword	.LFB36
	.uaword	.LFE36
	.uaword	.LFB37
	.uaword	.LFE37
	.uaword	.LFB38
	.uaword	.LFE38
	.uaword	.LFB39
	.uaword	.LFE39
	.uaword	.LFB40
	.uaword	.LFE40
	.uaword	.LFB41
	.uaword	.LFE41
	.uaword	.LFB42
	.uaword	.LFE42
	.uaword	.LFB43
	.uaword	.LFE43
	.uaword	.LFB44
	.uaword	.LFE44
	.uaword	.LFB45
	.uaword	.LFE45
	.uaword	.LFB46
	.uaword	.LFE46
	.uaword	.LFB47
	.uaword	.LFE47
	.uaword	.LFB48
	.uaword	.LFE48
	.uaword	0
	.uaword	0
	.section .debug_line,"",@progbits
.Ldebug_line0:
	.section .debug_str,"",@progbits
.LASF14:
	.string	"reserved_29"
.LASF48:
	.string	"LoopCnt"
.LASF33:
	.string	"CoreId"
.LASF52:
	.string	"TestBackup"
.LASF32:
	.string	"AlarmStatus"
.LASF47:
	.string	"EccInversion"
.LASF43:
	.string	"MemTestMask"
.LASF23:
	.string	"Result"
.LASF36:
	.string	"TrapExpected"
.LASF34:
	.string	"__res"
.LASF2:
	.string	"reserved_0"
.LASF7:
	.string	"reserved_1"
.LASF12:
	.string	"reserved_2"
.LASF3:
	.string	"reserved_3"
.LASF6:
	.string	"reserved_4"
.LASF17:
	.string	"reserved_5"
.LASF13:
	.string	"reserved_8"
.LASF37:
	.string	"Temp"
.LASF16:
	.string	"reserved_31"
.LASF49:
	.string	"PtrTestAddr32"
.LASF45:
	.string	"AlarmGroup"
.LASF19:
	.string	"reserved_30"
.LASF41:
	.string	"TestData"
.LASF35:
	.string	"__newval"
.LASF38:
	.string	"ResultTmp"
.LASF42:
	.string	"Timeout"
.LASF46:
	.string	"SMUAlarm"
.LASF24:
	.string	"Sri_BackupData"
.LASF9:
	.string	"reserved_22"
.LASF21:
	.string	"ParamSetIndex"
.LASF4:
	.string	"reserved_10"
.LASF5:
	.string	"reserved_12"
.LASF1:
	.string	"reserved_14"
.LASF22:
	.string	"TstSignature"
.LASF18:
	.string	"reserved_17"
.LASF8:
	.string	"reserved_18"
.LASF51:
	.string	"ErrorInj"
.LASF39:
	.string	"TestAddress"
.LASF44:
	.string	"SlaveAddress"
.LASF50:
	.string	"LoopBreak"
.LASF25:
	.string	"SmuResult1"
.LASF26:
	.string	"SmuResult2"
.LASF27:
	.string	"SmuResult3"
.LASF28:
	.string	"SmuResult4"
.LASF29:
	.string	"SmuResult5"
.LASF30:
	.string	"SmuResult6"
.LASF31:
	.string	"SmuResult7"
.LASF53:
	.string	"Flash0Fcon"
.LASF0:
	.string	"SriTstLMUTstAdr"
.LASF20:
	.string	"reserved_21"
.LASF40:
	.string	"MtuClcBackup"
.LASF11:
	.string	"reserved_23"
.LASF10:
	.string	"reserved_27"
.LASF15:
	.string	"reserved_28"
	.extern	Mcal_ResumeAllInterrupts,STT_FUNC,0
	.extern	Mcal_SuspendAllInterrupts,STT_FUNC,0
	.extern	SriTst_ConfigRoot,STT_OBJECT,28
	.extern	Smu_ClearAlarmStatus,STT_FUNC,0
	.extern	TRAP_UnregisterTrapHandler,STT_FUNC,0
	.extern	Mcal_SetENDINIT,STT_FUNC,0
	.extern	Mcal_ResetENDINIT,STT_FUNC,0
	.extern	Mcal_SetSafetyENDINIT_Timed,STT_FUNC,0
	.extern	Mcal_ResetSafetyENDINIT_Timed,STT_FUNC,0
	.extern	TRAP_RegisterTrapHandler,STT_FUNC,0
	.extern	Smu_SetAlarmAction,STT_FUNC,0
	.extern	Smu_GetAlarmStatus,STT_FUNC,0
	.extern	Smu_GetAlarmAction,STT_FUNC,0
	.extern	Mcal_GetCoreId,STT_FUNC,0
	.extern	Smu_GetSmuState,STT_FUNC,0
	.ident	"GCC: (HighTec Release v4.6.3.0) 4.6.3 build on 2013-05-17"
