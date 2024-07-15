	.file	"HsfbDiag.c"
.section .text,"ax",@progbits
.Ltext0:
	.section .text.MPU_ASIL_CODE,"ax",@progbits
	.align 3
	.global	HsfbDiag_ErrCode0_Calc
	.type	HsfbDiag_ErrCode0_Calc, @function
HsfbDiag_ErrCode0_Calc:
.LFB202:
	.file 1 "../40_Appl/HsfbDiag/HsfbDiag.c"
	.loc 1 61 0
	.loc 1 62 0
	movh.a	%a2, hi:Main_HwVer
	lea	%a2, [%a2] lo:Main_HwVer
	ld.w	%d15, [%a2] 12
	.loc 1 64 0
	movh.a	%a2, hi:HsfbDiag_SafetyStatus1ms
	.loc 1 62 0
	eq	%d15, %d15, 15
	.loc 1 64 0
	ld.a	%a2, [%a2] lo:HsfbDiag_SafetyStatus1ms
	.loc 1 62 0
	movh.a	%a3, hi:HsfbDiag_ErrCode0
	lea	%a15, [%a3] lo:HsfbDiag_ErrCode0
	st.b	[%a15] 15, %d15
	.loc 1 63 0
	ld.bu	%d15, [%a2] 5
	st.b	[%a3] lo:HsfbDiag_ErrCode0, %d15
	.loc 1 65 0
	ld.bu	%d15, [%a2] 13
	st.b	[%a15] 1, %d15
	.loc 1 67 0
	ld.bu	%d15, [%a2] 22
	st.b	[%a15] 2, %d15
	.loc 1 69 0
	ld.bu	%d15, [%a2] 21
	.loc 1 71 0
	movh.a	%a2, hi:HsfbDiag_PortStatus1ms
	ld.a	%a2, [%a2] lo:HsfbDiag_PortStatus1ms
	.loc 1 69 0
	st.b	[%a15] 3, %d15
	.loc 1 71 0
	ld.bu	%d15, [%a2]0
	st.b	[%a15] 4, %d15
	.loc 1 72 0
	ld.bu	%d15, [%a2] 1
	st.b	[%a15] 5, %d15
	.loc 1 73 0
	ld.bu	%d15, [%a2] 2
	st.b	[%a15] 6, %d15
	.loc 1 74 0
	mov	%d15, 0
	.loc 1 75 0
	ld.bu	%d2, [%a2] 8
	st.b	[%a15] 8, %d2
	.loc 1 76 0
	ld.bu	%d2, [%a2] 9
	.loc 1 74 0
	st.b	[%a15] 7, %d15
	.loc 1 76 0
	st.b	[%a15] 9, %d2
	.loc 1 77 0
	ld.bu	%d2, [%a2] 6
	st.b	[%a15] 10, %d2
	.loc 1 78 0
	ld.bu	%d2, [%a2] 7
	st.b	[%a15] 11, %d2
	.loc 1 79 0
	ld.bu	%d2, [%a2] 5
	st.b	[%a15] 12, %d2
	.loc 1 80 0
	ld.bu	%d2, [%a2] 4
	st.b	[%a15] 13, %d2
	.loc 1 81 0
	st.b	[%a15] 14, %d15
	.loc 1 82 0
	ret
.LFE202:
	.size	HsfbDiag_ErrCode0_Calc, .-HsfbDiag_ErrCode0_Calc
	.align 3
	.global	HsfbDiag_ErrCode1_Calc
	.type	HsfbDiag_ErrCode1_Calc, @function
HsfbDiag_ErrCode1_Calc:
.LFB203:
	.loc 1 93 0
	.loc 1 95 0
	movh.a	%a15, hi:HsfbDiag_SafetyStatus1ms
	ld.a	%a3, [%a15] lo:HsfbDiag_SafetyStatus1ms
	.loc 1 94 0
	movh.a	%a5, hi:HsfbDiag_ErrCode1
	.loc 1 96 0
	movh.a	%a4, hi:DebugError
	.loc 1 95 0
	ld.bu	%d15, [%a3] 25
	.loc 1 94 0
	lea	%a15, [%a5] lo:HsfbDiag_ErrCode1
	.loc 1 95 0
	eq	%d15, %d15, 0
	.loc 1 96 0
	lea	%a2, [%a4] lo:DebugError
	.loc 1 95 0
	st.b	[%a15] 2, %d15
	.loc 1 96 0
	ld.bu	%d15, [%a2] 3
	st.b	[%a15] 12, %d15
	.loc 1 97 0
	ld.bu	%d15, [%a2] 2
	st.b	[%a15] 13, %d15
	.loc 1 98 0
	ld.bu	%d15, [%a2] 1
	.loc 1 101 0
	movh.a	%a2, hi:HsfbDiag_CtrlStatus15us
	ld.a	%a2, [%a2] lo:HsfbDiag_CtrlStatus15us
	.loc 1 98 0
	st.b	[%a15] 14, %d15
	.loc 1 99 0
	ld.bu	%d15, [%a4] lo:DebugError
	st.b	[%a15] 15, %d15
	.loc 1 100 0
	ld.bu	%d15, [%a2] 12
	st.b	[%a5] lo:HsfbDiag_ErrCode1, %d15
	.loc 1 102 0
	ld.bu	%d15, [%a3] 24
	st.b	[%a15] 1, %d15
	.loc 1 104 0
	ld.bu	%d15, [%a2] 15
	st.b	[%a15] 3, %d15
	.loc 1 106 0
	mov	%d15, 0
	st.b	[%a15] 4, %d15
	.loc 1 107 0
	st.b	[%a15] 5, %d15
	.loc 1 108 0
	st.b	[%a15] 6, %d15
	.loc 1 109 0
	st.b	[%a15] 7, %d15
	.loc 1 110 0
	st.b	[%a15] 8, %d15
	.loc 1 111 0
	st.b	[%a15] 9, %d15
	.loc 1 112 0
	st.b	[%a15] 10, %d15
	.loc 1 113 0
	st.b	[%a15] 11, %d15
	.loc 1 114 0
	ret
.LFE203:
	.size	HsfbDiag_ErrCode1_Calc, .-HsfbDiag_ErrCode1_Calc
	.align 3
	.global	HsfbDiag_MaxCheck
	.type	HsfbDiag_MaxCheck, @function
HsfbDiag_MaxCheck:
.LFB204:
	.loc 1 131 0
.LVL0:
	.loc 1 133 0
	cmp.f	%d4, %d4, %d5
.LVL1:
	.loc 1 136 0
	mov	%d15, 0
	.loc 1 133 0
	jz.t	%d4, 2, .L4
	.loc 1 134 0
	ld.hu	%d15, [%a5]0
.LVL2:
.L4:
	.loc 1 139 0
	ge.u	%d6, %d15, %d6
.LVL3:
	st.b	[%a4]0, %d6
	.loc 1 140 0
	xor	%d6, %d6, 1
	add	%d15, %d6
.LVL4:
	st.h	[%a5]0, %d15
	.loc 1 141 0
	ret
.LFE204:
	.size	HsfbDiag_MaxCheck, .-HsfbDiag_MaxCheck
	.align 3
	.global	HsfbDiag_MaxHysCheck
	.type	HsfbDiag_MaxHysCheck, @function
HsfbDiag_MaxHysCheck:
.LFB205:
	.loc 1 156 0
.LVL5:
	.loc 1 159 0
	cmp.f	%d5, %d4, %d5
.LVL6:
	jz.t	%d5, 2, .L18
.LVL7:
.L11:
	.loc 1 161 0 discriminator 3
	ld.hu	%d15, [%a5]0
.LVL8:
	.loc 1 159 0 discriminator 3
	mov	%d2, 1
.LVL9:
.L12:
	.loc 1 166 0
	ge.u	%d7, %d15, %d7
.LVL10:
	st.b	[%a4]0, %d7
	.loc 1 167 0
	xor	%d7, %d7, 1
	add	%d15, %d7
.LVL11:
	.loc 1 168 0
	st.b	[%a5] 2, %d2
	.loc 1 167 0
	st.h	[%a5]0, %d15
	.loc 1 169 0
	ret
.LVL12:
.L18:
	.loc 1 159 0 discriminator 2
	cmp.f	%d6, %d4, %d6
.LVL13:
	or.t	%d6, %d6,2, %d6,1
	mov	%d2, 0
	.loc 1 163 0 discriminator 2
	mov	%d15, 0
	.loc 1 159 0 discriminator 2
	jz	%d6, .L12
	.loc 1 159 0 is_stmt 0 discriminator 1
	ld.bu	%d3, [%a5] 2
	mov	%d2, 0
	.loc 1 163 0 is_stmt 1 discriminator 1
	mov	%d15, 0
	.loc 1 159 0 discriminator 1
	jz	%d3, .L12
	j	.L11
.LFE205:
	.size	HsfbDiag_MaxHysCheck, .-HsfbDiag_MaxHysCheck
	.align 3
	.global	HsfbDiag_RangeCheck_IproFet
	.type	HsfbDiag_RangeCheck_IproFet, @function
HsfbDiag_RangeCheck_IproFet:
.LFB206:
	.loc 1 180 0
	.loc 1 181 0
	movh.a	%a15, hi:HsfbDiag_MeasStatus1ms
	ld.a	%a15, [%a15] lo:HsfbDiag_MeasStatus1ms
	movh	%d2, 16576
	ld.w	%d15, [%a15] 60
	cmp.f	%d2, %d15, %d2
	or.t	%d2, %d2,0, %d2,1
	jnz	%d2, .L101
	.loc 1 183 0
	movh	%d2, 16608
	cmp.f	%d2, %d15, %d2
	or.t	%d2, %d2,0, %d2,1
	jnz	%d2, .L102
	.loc 1 185 0
	movh	%d2, 16640
	cmp.f	%d2, %d15, %d2
	or.t	%d2, %d2,0, %d2,1
	jnz	%d2, .L103
	.loc 1 187 0
	movh	%d2, 16656
	cmp.f	%d2, %d15, %d2
	or.t	%d2, %d2,0, %d2,1
	jnz	%d2, .L104
	.loc 1 189 0
	movh	%d2, 16672
	cmp.f	%d2, %d15, %d2
	or.t	%d2, %d2,0, %d2,1
	jnz	%d2, .L105
	.loc 1 191 0
	movh	%d2, 16688
	cmp.f	%d2, %d15, %d2
	or.t	%d2, %d2,0, %d2,1
	jnz	%d2, .L106
	.loc 1 193 0
	movh	%d2, 16704
	cmp.f	%d2, %d15, %d2
	or.t	%d2, %d2,0, %d2,1
	jnz	%d2, .L107
	.loc 1 195 0
	movh	%d2, 16720
	cmp.f	%d2, %d15, %d2
	or.t	%d2, %d2,0, %d2,1
	jnz	%d2, .L108
	.loc 1 197 0
	movh	%d2, 16736
	cmp.f	%d2, %d15, %d2
	or.t	%d2, %d2,0, %d2,1
	jnz	%d2, .L109
	.loc 1 199 0
	movh	%d2, 16752
	cmp.f	%d2, %d15, %d2
	or.t	%d2, %d2,0, %d2,1
	jnz	%d2, .L110
	.loc 1 201 0
	movh	%d2, 16768
	cmp.f	%d2, %d15, %d2
	or.t	%d2, %d2,0, %d2,1
	jnz	%d2, .L111
	.loc 1 203 0
	movh	%d2, 16776
	cmp.f	%d2, %d15, %d2
	or.t	%d2, %d2,0, %d2,1
	jnz	%d2, .L112
	.loc 1 205 0
	movh	%d2, 16784
	cmp.f	%d2, %d15, %d2
	or.t	%d2, %d2,0, %d2,1
	jnz	%d2, .L113
	.loc 1 207 0
	movh	%d2, 16792
	cmp.f	%d2, %d15, %d2
	or.t	%d2, %d2,0, %d2,1
	jnz	%d2, .L114
	.loc 1 210 0
	movh	%d2, 16800
	cmp.f	%d15, %d15, %d2
	or.t	%d15, %d15,0, %d15,1
	jz	%d15, .L96
	.loc 1 211 0 discriminator 1
	ld.w	%d15, [%a15] 44
	movh	%d2, 16166
	addi	%d2, %d2, 26214
	cmp.f	%d15, %d15, %d2
	extr.u	%d15, %d15, 2, 1
	j	.L100
.L102:
	.loc 1 184 0
	movh	%d2, 16353
	ld.w	%d15, [%a15] 44
	addi	%d2, %d2, -6816
.L99:
	.loc 1 204 0
	cmp.f	%d15, %d15, %d2
	extr.u	%d15, %d15, 2, 1
.L100:
	movh.a	%a15, hi:HsfbDiag_DW
	lea	%a15, [%a15] lo:HsfbDiag_DW
	st.b	[%a15] 49, %d15
	ret
.L101:
	.loc 1 182 0
	movh	%d2, 16384
	ld.w	%d15, [%a15] 44
	addi	%d2, %d2, 4194
	j	.L99
.L104:
	.loc 1 188 0
	movh	%d2, 16312
	ld.w	%d15, [%a15] 44
	addi	%d2, %d2, 20972
	j	.L99
.L103:
	.loc 1 186 0
	movh	%d2, 16330
	ld.w	%d15, [%a15] 44
	addi	%d2, %d2, 7340
	j	.L99
.L105:
	.loc 1 190 0
	movh	%d2, 16349
	ld.w	%d15, [%a15] 44
	addi	%d2, %d2, 28836
	j	.L99
.L107:
	.loc 1 194 0
	movh	%d2, 16323
	ld.w	%d15, [%a15] 44
	addi	%d2, %d2, -3670
	j	.L99
.L106:
	.loc 1 192 0
	movh	%d2, 16334
	ld.w	%d15, [%a15] 44
	addi	%d2, %d2, -3146
	j	.L99
.L108:
	.loc 1 196 0
	movh	%d2, 16313
	ld.w	%d15, [%a15] 44
	addi	%d2, %d2, 14156
	j	.L99
.L109:
	.loc 1 198 0
	movh	%d2, 16304
	ld.w	%d15, [%a15] 44
	addi	%d2, %d2, -16777
	j	.L99
.L110:
	.loc 1 200 0
	movh	%d2, 16285
	ld.w	%d15, [%a15] 44
	addi	%d2, %d2, -29884
	j	.L99
.L111:
	.loc 1 202 0
	movh	%d2, 16279
	ld.w	%d15, [%a15] 44
	addi	%d2, %d2, -22544
	j	.L99
.L112:
	.loc 1 204 0
	movh	%d2, 16185
	ld.w	%d15, [%a15] 44
	addi	%d2, %d2, -27787
	j	.L99
.L113:
	.loc 1 206 0
	movh	%d2, 16178
	ld.w	%d15, [%a15] 44
	addi	%d2, %d2, -22020
	j	.L99
.L114:
	.loc 1 208 0
	movh	%d2, 16172
	ld.w	%d15, [%a15] 44
	addi	%d2, %d2, -14680
	j	.L99
.L96:
	.loc 1 210 0
	mov	%d15, 0
	j	.L100
.LFE206:
	.size	HsfbDiag_RangeCheck_IproFet, .-HsfbDiag_RangeCheck_IproFet
	.align 3
	.global	HsfbDiag_ErrCode2_Calc
	.type	HsfbDiag_ErrCode2_Calc, @function
HsfbDiag_ErrCode2_Calc:
.LFB207:
	.loc 1 224 0
	.loc 1 233 0
	movh.a	%a15, hi:HsfbDiag_NtcStatus10ms
	ld.a	%a3, [%a15] lo:HsfbDiag_NtcStatus10ms
	.loc 1 234 0
	movh	%d3, 15821
	.loc 1 236 0
	movh.a	%a13, hi:HsfbDiag_SafetyStatus1ms
	.loc 1 234 0
	ld.h	%d2, [%a3] 16
	.loc 1 233 0
	ld.h	%d15, [%a3] 8
	.loc 1 234 0
	itof	%d2, %d2
	addi	%d3, %d3, -13107
	.loc 1 236 0
	ld.a	%a4, [%a13] lo:HsfbDiag_SafetyStatus1ms
	.loc 1 234 0
	mul.f	%d2, %d2, %d3
	.loc 1 233 0
	itof	%d15, %d15
	.loc 1 235 0
	movh.a	%a15, hi:HsfbDiag_ErrCode2
	.loc 1 233 0
	msub.f	%d15, %d2, %d15, %d3
	.loc 1 236 0
	ld.hu	%d3, [%a4]0
	.loc 1 235 0
	lea	%a12, [%a15] lo:HsfbDiag_ErrCode2
	.loc 1 236 0
	ne	%d3, %d3, 0
	.loc 1 233 0
	addih	%d15, %d15, 0x8000
.LVL14:
	.loc 1 236 0
	st.b	[%a15] lo:HsfbDiag_ErrCode2, %d3
	.loc 1 239 0
	ld.hu	%d3, [%a4] 8
	.loc 1 241 0
	movh.a	%a15, hi:HsfbDiag_MeasStatus1ms
	ld.a	%a2, [%a15] lo:HsfbDiag_MeasStatus1ms
	.loc 1 239 0
	ne	%d3, %d3, 0
	.loc 1 241 0
	ld.w	%d4, [%a2] 20
.LVL15:
	.loc 1 239 0
	st.b	[%a12] 2, %d3
.LBB18:
.LBB19:
	.loc 1 133 0
	movh	%d3, 17327
	cmp.f	%d3, %d4, %d3
	jz.t	%d3, 2, .L186
	.loc 1 134 0
	movh.a	%a5, hi:HsfbDiag_DW
	lea	%a15, [%a5] lo:HsfbDiag_DW
	ld.hu	%d5, [%a15] 16
.LVL16:
	ge.u	%d3, %d5, 100
	eq	%d6, %d3, 0
	add	%d5, %d6
.LVL17:
	extr.u	%d5, %d5, 0, 16
	.loc 1 139 0
	st.b	[%a12] 4, %d3
.LBE19:
.LBE18:
.LBB23:
.LBB24:
	.loc 1 133 0
	movh	%d3, 50042
	cmp.f	%d4, %d4, %d3
.LBE24:
.LBE23:
.LBB28:
.LBB20:
	.loc 1 140 0
	st.h	[%a15] 16, %d5
.LVL18:
.LBE20:
.LBE28:
.LBB29:
.LBB25:
	.loc 1 133 0
	jz.t	%d4, 0, .L187
.L196:
	.loc 1 134 0
	ld.hu	%d4, [%a15] 14
.LVL19:
	ge.u	%d3, %d4, 100
	eq	%d5, %d3, 0
	add	%d4, %d5
.LVL20:
	extr.u	%d4, %d4, 0, 16
.L118:
	.loc 1 139 0
	st.b	[%a12] 5, %d3
	.loc 1 140 0
	st.h	[%a15] 14, %d4
.LVL21:
.LBE25:
.LBE29:
.LBB30:
.LBB31:
	.loc 1 133 0
	movh	%d3, 17493
	ld.w	%d4, [%a2] 12
	addi	%d3, %d3, -32768
	cmp.f	%d3, %d4, %d3
	jz.t	%d3, 2, .L188
	.loc 1 134 0
	ld.hu	%d4, [%a15] 12
.LVL22:
	ge.u	%d3, %d4, 100
	eq	%d5, %d3, 0
	add	%d4, %d5
.LVL23:
	extr.u	%d4, %d4, 0, 16
.L120:
	.loc 1 139 0
	st.b	[%a12] 6, %d3
.LBE31:
.LBE30:
	.loc 1 247 0
	ld.h	%d3, [%a3]0
.LBB34:
.LBB32:
	.loc 1 140 0
	st.h	[%a15] 12, %d4
.LBE32:
.LBE34:
	.loc 1 247 0
	itof	%d3, %d3
	movh	%d4, 15821
	addi	%d4, %d4, -13107
	mul.f	%d3, %d3, %d4
.LVL24:
.LBB35:
.LBB36:
	.loc 1 159 0
	movh	%d4, 17169
	cmp.f	%d4, %d3, %d4
	jnz.t	%d4, 2, .L122
	movh	%d4, 17136
	cmp.f	%d3, %d3, %d4
.LVL25:
	or.t	%d3, %d3,2, %d3,1
	jz	%d3, .L189
	ld.bu	%d6, [%a15] 10
	mov	%d4, 1
	mov	%d3, 0
	mov	%d5, 0
	jz	%d6, .L123
.L122:
.LVL26:
	.loc 1 161 0
	ld.hu	%d4, [%a15] 8
.LVL27:
	ge.u	%d3, %d4, 100
	eq	%d5, %d3, 0
	add	%d4, %d5
.LVL28:
	extr.u	%d4, %d4, 0, 16
	.loc 1 159 0
	mov	%d5, 1
.LVL29:
.L123:
	.loc 1 167 0
	st.h	[%a15] 8, %d4
	.loc 1 166 0
	st.b	[%a12] 8, %d3
	.loc 1 168 0
	st.b	[%a15] 10, %d5
.LBE36:
.LBE35:
	.loc 1 251 0
	ld.h	%d3, [%a3] 8
	movh	%d4, 15821
	itof	%d3, %d3
	addi	%d4, %d4, -13107
	mul.f	%d3, %d3, %d4
.LVL30:
.LBB38:
.LBB39:
	.loc 1 159 0
	movh	%d4, 17159
	cmp.f	%d4, %d3, %d4
	jnz.t	%d4, 2, .L125
	movh	%d4, 17116
	cmp.f	%d3, %d3, %d4
.LVL31:
	or.t	%d3, %d3,2, %d3,1
	jz	%d3, .L190
	ld.bu	%d6, [%a15] 6
	mov	%d4, 1
	mov	%d3, 0
	mov	%d5, 0
	jz	%d6, .L126
.L125:
.LVL32:
	.loc 1 161 0
	ld.hu	%d4, [%a15] 4
.LVL33:
	ge.u	%d3, %d4, 100
	eq	%d5, %d3, 0
	add	%d4, %d5
.LVL34:
	extr.u	%d4, %d4, 0, 16
	.loc 1 159 0
	mov	%d5, 1
.LVL35:
.L126:
	.loc 1 166 0
	st.b	[%a12] 9, %d3
.LBE39:
.LBE38:
.LBB42:
.LBB43:
	.loc 1 159 0
	movh	%d3, 17159
.LBE43:
.LBE42:
.LBB48:
.LBB40:
	.loc 1 167 0
	st.h	[%a15] 4, %d4
	.loc 1 168 0
	st.b	[%a15] 6, %d5
.LVL36:
.LBE40:
.LBE48:
.LBB49:
.LBB44:
	.loc 1 159 0
	cmp.f	%d3, %d2, %d3
	jnz.t	%d3, 2, .L128
	movh	%d3, 17116
	cmp.f	%d2, %d2, %d3
.LVL37:
	or.t	%d2, %d2,2, %d2,1
	jz	%d2, .L191
	ld.bu	%d5, [%a15] 2
	mov	%d3, 1
	mov	%d2, 0
	mov	%d4, 0
	jz	%d5, .L129
.L128:
.LVL38:
	.loc 1 161 0
	ld.hu	%d3, [%a5] lo:HsfbDiag_DW
.LVL39:
	ge.u	%d2, %d3, 100
	eq	%d4, %d2, 0
	add	%d3, %d4
.LVL40:
	extr.u	%d3, %d3, 0, 16
	.loc 1 159 0
	mov	%d4, 1
.LVL41:
.L129:
	.loc 1 167 0
	st.h	[%a5] lo:HsfbDiag_DW, %d3
.LBE44:
.LBE49:
	.loc 1 259 0
	ld.w	%d3, [%a2] 52
.LVL42:
.LBB50:
.LBB45:
	.loc 1 166 0
	st.b	[%a12] 10, %d2
.LBE45:
.LBE50:
.LBB51:
.LBB52:
	.loc 1 133 0
	movh	%d2, 16768
.LBE52:
.LBE51:
.LBB56:
.LBB46:
	.loc 1 168 0
	st.b	[%a15] 2, %d4
.LBE46:
.LBE56:
.LBB57:
.LBB53:
	.loc 1 133 0
	cmp.f	%d2, %d3, %d2
	jz.t	%d2, 2, .L192
	.loc 1 134 0
	ld.hu	%d4, [%a15] 20
.LVL43:
	ge.u	%d2, %d4, 100
	eq	%d5, %d2, 0
	add	%d4, %d5
.LVL44:
	extr.u	%d4, %d4, 0, 16
.L131:
	.loc 1 139 0
	st.b	[%a12] 11, %d2
.LBE53:
.LBE57:
.LBB58:
.LBB59:
	.loc 1 133 0
	movh	%d2, 16656
.LBE59:
.LBE58:
.LBB63:
.LBB54:
	.loc 1 140 0
	st.h	[%a15] 20, %d4
.LVL45:
.LBE54:
.LBE63:
.LBB64:
.LBB60:
	.loc 1 133 0
	cmp.f	%d3, %d3, %d2
	jz.t	%d3, 0, .L193
	.loc 1 134 0
	ld.hu	%d3, [%a15] 18
.LVL46:
	ge.u	%d2, %d3, 100
	eq	%d4, %d2, 0
	add	%d3, %d4
.LVL47:
	extr.u	%d3, %d3, 0, 16
.L133:
	.loc 1 139 0
	st.b	[%a12] 12, %d2
.LBE60:
.LBE64:
	.loc 1 263 0
	ld.w	%d5, [%a2] 60
	movh	%d2, 16566
	addi	%d2, %d2, 26214
.LBB65:
.LBB61:
	.loc 1 140 0
	st.h	[%a15] 18, %d3
.LBE61:
.LBE65:
	.loc 1 263 0
	cmp.f	%d2, %d5, %d2
	ld.bu	%d3, [%a4] 25
	mov	%d0, 1
	mov	%d4, 1
	jnz.t	%d2, 2, .L137
	.loc 1 264 0 discriminator 2
	eq	%d4, %d3, 0
	mov	%d0, %d4
.L137:
.LVL48:
	.loc 1 265 0 discriminator 3
	mov	%e6, 0
	jz	%d3, .L138
	.loc 1 265 0 is_stmt 0 discriminator 1
	movh	%d6, 16557
	addi	%d6, %d6, -13107
	cmp.f	%d5, %d5, %d6
	and	%d6, %d5, 1
	mov	%d7, %d6
.L138:
.LVL49:
	.loc 1 267 0 is_stmt 1 discriminator 3
	jnz	%d4, .L139
	.loc 1 267 0 is_stmt 0
	ld.hu	%d4, [%a15] 44
.LVL50:
.L140:
	.loc 1 273 0 is_stmt 1
	mov	%e2, 0
	jnz	%d7, .L141
	ld.hu	%d2, [%a15] 46
	ne	%d3, %d2, 0
.L141:
.LVL51:
	.loc 1 279 0
	mov	%d8, 1
	.loc 1 282 0
	mov	%d5, 1
	.loc 1 279 0
	jnz	%d4, .L142
	.loc 1 279 0 is_stmt 0 discriminator 2
	mov	%d8, 0
	jnz	%d3, .L143
	.loc 1 223 0 is_stmt 1 discriminator 1
	ld.bu	%d8, [%a15] 51
	.loc 1 279 0 discriminator 1
	ne	%d8, %d8, 0
.L143:
.LVL52:
	.loc 1 282 0 discriminator 3
	mov	%d5, 0
.LVL53:
.L142:
	.loc 1 290 0
	seln	%d2, %d3, %d2, 1
.LVL54:
	.loc 1 295 0
	add	%d2, %d0
.LVL55:
	.loc 1 287 0
	add	%d6, %d5
	.loc 1 299 0
	addih	%d3, %d15, 0x8000
.LVL56:
	.loc 1 295 0
	st.h	[%a15] 46, %d2
	.loc 1 298 0
	mov	%d2, 0
	cmp.f	%d2, %d15, %d2
	or.t	%d2, %d2,0, %d2,1
	.loc 1 299 0
	sel	%d15, %d2, %d3, %d15
.LVL57:
	.loc 1 302 0
	movh	%d2, 16800
	.loc 1 287 0
	st.h	[%a15] 44, %d6
	.loc 1 297 0
	st.b	[%a15] 51, %d8
	.loc 1 302 0
	cmp.f	%d15, %d15, %d2
.LVL58:
	jz.t	%d15, 2, .L195
	.loc 1 303 0
	ld.hu	%d15, [%a15] 42
.LVL59:
	ne	%d9, %d15, 0
	caddn	%d15, %d15, 1
.LVL60:
	extr.u	%d15, %d15, 0, 16
.L147:
.LVL61:
	.loc 1 309 0
	st.h	[%a15] 42, %d15
	.loc 1 311 0
	call	HsfbDiag_RangeCheck_IproFet
.LVL62:
	.loc 1 312 0
	ld.bu	%d2, [%a15] 49
	mov.u	%d15, 65535
	seln	%d15, %d2, %d15, 1
	.loc 1 318 0
	ld.h	%d2, [%a15] 22
	add	%d15, %d2
	extr	%d15, %d15, 0, 16
.LVL63:
	.loc 1 319 0
	mov	%d2, 3001
	jge	%d15, %d2, .L150
	.loc 1 322 0
	jltz	%d15, .L174
	.loc 1 327 0
	mov	%d2, 3000
	jeq	%d15, %d2, .L150
	.loc 1 330 0
	jz	%d15, .L151
	.loc 1 330 0 is_stmt 0 discriminator 1
	ld.bu	%d2, [%a15] 48
	jz	%d2, .L151
	.loc 1 330 0 discriminator 3
	mov	%d2, 1
	st.b	[%a15] 48, %d2
	mov	%d2, 1
	j	.L153
.LVL64:
.L186:
.LBB66:
.LBB21:
	.loc 1 133 0 is_stmt 1
	mov	%d3, 0
	mov	%d5, 1
	movh.a	%a5, hi:HsfbDiag_DW
	lea	%a15, [%a5] lo:HsfbDiag_DW
	.loc 1 139 0
	st.b	[%a12] 4, %d3
.LBE21:
.LBE66:
.LBB67:
.LBB26:
	.loc 1 133 0
	movh	%d3, 50042
.LBE26:
.LBE67:
.LBB68:
.LBB22:
	.loc 1 140 0
	st.h	[%a15] 16, %d5
.LVL65:
.LBE22:
.LBE68:
.LBB69:
.LBB27:
	.loc 1 133 0
	cmp.f	%d4, %d4, %d3
.LVL66:
	jnz.t	%d4, 0, .L196
.LVL67:
.L187:
	mov	%d4, 1
	mov	%d3, 0
	j	.L118
.LVL68:
.L188:
.LBE27:
.LBE69:
.LBB70:
.LBB33:
	mov	%d4, 1
.LVL69:
	mov	%d3, 0
	j	.L120
.LVL70:
.L139:
.LBE33:
.LBE70:
	.loc 1 268 0
	mov	%d2, 0
	mov	%d4, 0
.LVL71:
	st.h	[%a15] 44, %d2
	j	.L140
.LVL72:
.L150:
	.loc 1 328 0
	mov	%d15, 1
.LVL73:
	mov	%d2, 1
	st.b	[%a15] 48, %d15
	mov	%d15, 3000
.L153:
.LVL74:
	.loc 1 335 0 discriminator 3
	ld.a	%a2, [%a13] lo:HsfbDiag_SafetyStatus1ms
	.loc 1 334 0 discriminator 3
	ld.bu	%d3, [%a2] 2
	st.b	[%a12] 1, %d3
	.loc 1 336 0 discriminator 3
	ld.bu	%d3, [%a2] 10
	st.b	[%a12] 3, %d3
	.loc 1 338 0 discriminator 3
	mov	%d3, 0
	.loc 1 339 0 discriminator 3
	st.b	[%a12] 13, %d8
	.loc 1 340 0 discriminator 3
	st.b	[%a12] 14, %d9
	.loc 1 338 0 discriminator 3
	st.b	[%a12] 7, %d3
	.loc 1 341 0 discriminator 3
	st.b	[%a12] 15, %d2
	.loc 1 342 0 discriminator 3
	st.h	[%a15] 22, %d15
	.loc 1 343 0 discriminator 3
	st.b	[%a15] 50, %d2
	.loc 1 344 0 discriminator 3
	ret
.LVL75:
.L195:
	.loc 1 302 0
	mov	%d15, 1
	mov	%d9, 0
	j	.L147
.LVL76:
.L193:
.LBB71:
.LBB62:
	.loc 1 133 0
	mov	%d3, 1
	mov	%d2, 0
	j	.L133
.LVL77:
.L192:
.LBE62:
.LBE71:
.LBB72:
.LBB55:
	mov	%d4, 1
	mov	%d2, 0
	j	.L131
.LVL78:
.L190:
.LBE55:
.LBE72:
.LBB73:
.LBB41:
	.loc 1 159 0
	mov	%d4, 1
	mov	%d3, 0
	mov	%d5, 0
	j	.L126
.LVL79:
.L189:
.LBE41:
.LBE73:
.LBB74:
.LBB37:
	mov	%d4, 1
	mov	%d3, 0
	mov	%d5, 0
	j	.L123
.LVL80:
.L191:
.LBE37:
.LBE74:
.LBB75:
.LBB47:
	mov	%d3, 1
	mov	%d2, 0
	mov	%d4, 0
	j	.L129
.LVL81:
.L174:
.LBE47:
.LBE75:
	.loc 1 323 0
	mov	%d15, 0
.LVL82:
.L151:
	.loc 1 330 0 discriminator 2
	mov	%d2, 0
	st.b	[%a15] 48, %d2
	ld.bu	%d2, [%a15] 50
	ne	%d2, %d2, 0
	j	.L153
.LFE207:
	.size	HsfbDiag_ErrCode2_Calc, .-HsfbDiag_ErrCode2_Calc
	.align 3
	.global	HsfbDiag_ErrCode3_Calc
	.type	HsfbDiag_ErrCode3_Calc, @function
HsfbDiag_ErrCode3_Calc:
.LFB208:
	.loc 1 355 0
	.loc 1 356 0
	movh.a	%a3, hi:SafetyError
	lea	%a2, [%a3] lo:SafetyError
	movh.a	%a4, hi:HsfbDiag_ErrCode3
	lea	%a15, [%a4] lo:HsfbDiag_ErrCode3
	ld.bu	%d15, [%a2] 3
	st.b	[%a15] 12, %d15
	.loc 1 357 0
	ld.bu	%d15, [%a2] 2
	st.b	[%a15] 13, %d15
	.loc 1 358 0
	ld.bu	%d15, [%a2] 1
	.loc 1 360 0
	movh.a	%a2, hi:HsfbDiag_CtrlStatus15us
	ld.a	%a2, [%a2] lo:HsfbDiag_CtrlStatus15us
	.loc 1 358 0
	st.b	[%a15] 14, %d15
	.loc 1 359 0
	ld.bu	%d15, [%a3] lo:SafetyError
	st.b	[%a15] 15, %d15
	.loc 1 360 0
	ld.bu	%d15, [%a2] 8
	st.b	[%a4] lo:HsfbDiag_ErrCode3, %d15
	.loc 1 361 0
	ld.bu	%d15, [%a2] 9
	st.b	[%a15] 1, %d15
	.loc 1 363 0
	ld.bu	%d15, [%a2] 10
	st.b	[%a15] 2, %d15
	.loc 1 365 0
	ld.bu	%d15, [%a2] 11
	st.b	[%a15] 3, %d15
	.loc 1 367 0
	mov	%d15, 0
	.loc 1 371 0
	ld.bu	%d2, [%a2] 13
	st.b	[%a15] 8, %d2
	.loc 1 373 0
	ld.bu	%d2, [%a2] 14
	.loc 1 367 0
	st.b	[%a15] 4, %d15
	.loc 1 368 0
	st.b	[%a15] 5, %d15
	.loc 1 369 0
	st.b	[%a15] 6, %d15
	.loc 1 370 0
	st.b	[%a15] 7, %d15
	.loc 1 373 0
	st.b	[%a15] 9, %d2
	.loc 1 375 0
	st.b	[%a15] 10, %d15
	.loc 1 376 0
	st.b	[%a15] 11, %d15
	.loc 1 377 0
	ret
.LFE208:
	.size	HsfbDiag_ErrCode3_Calc, .-HsfbDiag_ErrCode3_Calc
	.align 3
	.global	HsfbDiag_ErrCode_Latch
	.type	HsfbDiag_ErrCode_Latch, @function
HsfbDiag_ErrCode_Latch:
.LFB209:
	.loc 1 388 0
	.loc 1 390 0
	movh.a	%a15, hi:HsfbDiag_LatchReset
	ld.bu	%d15, [%a15] lo:HsfbDiag_LatchReset
	movh.a	%a15, hi:HsfbDiag_DW
	.loc 1 394 0
	movh.a	%a2, hi:HsfbDiag_ErrCode0En
	lea	%a15, [%a15] lo:HsfbDiag_DW
	.loc 1 390 0
	ld.hu	%d3, [%a15] 26
	.loc 1 394 0
	ld.bu	%d4, [%a2] lo:HsfbDiag_ErrCode0En
	.loc 1 390 0
	mov	%d2, 0
	cmovn	%d2, %d15, %d3
	movh.a	%a2, hi:HsfbDiag_ErrMask
	.loc 1 394 0
	mov	%d3, 0
	jz	%d4, .L200
.LVL83:
	ld.h	%d4, [%a2] lo:HsfbDiag_ErrMask
	ld.h	%d3, [%a15] 28
	and	%d3, %d4
	extr.u	%d3, %d3, 0, 16
.LVL84:
.L200:
	.loc 1 400 0
	or	%d2, %d3
	.loc 1 402 0
	ld.h	%d3, [%a15] 28
	movh.a	%a3, hi:HsfbDiag_DiagStatus1ms
	.loc 1 400 0
	st.h	[%a15] 26, %d2
	.loc 1 402 0
	ld.a	%a3, [%a3] lo:HsfbDiag_DiagStatus1ms
	or	%d2, %d3
	.loc 1 406 0
	mov	%d5, 0
	.loc 1 402 0
	st.h	[%a3] 8, %d2
	.loc 1 406 0
	mov	%d2, 0
	.loc 1 404 0
	jnz	%d15, .L202
	ld.hu	%d2, [%a15] 36
	ld.hu	%d5, [%a15] 38
.L202:
	.loc 1 410 0
	lea	%a2, [%a2] lo:HsfbDiag_ErrMask
	ld.hu	%d4, [%a15] 30
	.loc 1 409 0
	ld.h	%d3, [%a2] 2
	and	%d3, %d4
	or	%d3, %d2
	.loc 1 412 0
	or	%d4, %d3
	.loc 1 414 0
	ld.h	%d2, [%a2] 4
	.loc 1 409 0
	st.h	[%a15] 28, %d3
	.loc 1 412 0
	st.h	[%a3] 10, %d4
	.loc 1 415 0
	ld.hu	%d4, [%a15] 32
	.loc 1 414 0
	and	%d2, %d4
	or	%d2, %d5
	.loc 1 417 0
	or	%d4, %d2
	.loc 1 423 0
	ld.h	%d5, [%a2] 6
	.loc 1 414 0
	st.h	[%a15] 30, %d2
	.loc 1 417 0
	st.h	[%a3] 12, %d4
	.loc 1 419 0
	ld.hu	%d4, [%a15] 40
	seln	%d15, %d15, %d4, 0
	.loc 1 424 0
	ld.hu	%d4, [%a15] 24
	.loc 1 423 0
	and	%d5, %d4
	or	%d15, %d5
	.loc 1 426 0
	or	%d4, %d15
	.loc 1 423 0
	st.h	[%a15] 32, %d15
	.loc 1 426 0
	st.h	[%a3] 14, %d4
	.loc 1 428 0
	st.h	[%a15] 36, %d3
	.loc 1 429 0
	st.h	[%a15] 38, %d2
	.loc 1 430 0
	st.h	[%a15] 40, %d15
	.loc 1 431 0
	ret
.LFE209:
	.size	HsfbDiag_ErrCode_Latch, .-HsfbDiag_ErrCode_Latch
	.align 3
	.global	HsfbDiag_ErrCode_Mux
	.type	HsfbDiag_ErrCode_Mux, @function
HsfbDiag_ErrCode_Mux:
.LFB210:
	.loc 1 442 0
	.loc 1 451 0
	movh.a	%a3, hi:HsfbDiag_ErrCode0
	lea	%a15, [%a3] lo:HsfbDiag_ErrCode0
	ld.bu	%d2, [%a15] 1
	.loc 1 452 0
	ld.bu	%d15, [%a15] 2
	.loc 1 451 0
	sh	%d2, 1
	.loc 1 452 0
	sh	%d15, 2
	.loc 1 443 0
	or	%d15, %d2
	ld.bu	%d2, [%a3] lo:HsfbDiag_ErrCode0
	.loc 1 444 0
	ld.bu	%d3, [%a15] 9
	.loc 1 443 0
	or	%d15, %d2
	.loc 1 453 0
	ld.bu	%d2, [%a15] 3
	.loc 1 444 0
	sh	%d3, 1
	.loc 1 453 0
	sh	%d2, 3
	.loc 1 443 0
	or	%d15, %d2
	.loc 1 454 0
	ld.bu	%d2, [%a15] 4
	.loc 1 467 0
	movh.a	%a3, hi:HsfbDiag_ErrCode1
	.loc 1 454 0
	sh	%d2, 4
	.loc 1 443 0
	or	%d15, %d2
	.loc 1 455 0
	ld.bu	%d2, [%a15] 5
	.loc 1 443 0
	movh.a	%a2, hi:HsfbDiag_DW
	.loc 1 455 0
	sh	%d2, 5
	.loc 1 443 0
	or	%d15, %d2
	.loc 1 456 0
	ld.bu	%d2, [%a15] 6
	.loc 1 443 0
	lea	%a2, [%a2] lo:HsfbDiag_DW
	.loc 1 456 0
	sh	%d2, 6
	.loc 1 443 0
	or	%d15, %d2
	.loc 1 457 0
	ld.bu	%d2, [%a15] 7
	sh	%d2, 7
	.loc 1 443 0
	or	%d15, %d2
	.loc 1 445 0
	ld.bu	%d2, [%a15] 10
	sh	%d2, 2
	.loc 1 444 0
	or	%d2, %d3
	.loc 1 445 0
	ld.bu	%d3, [%a15] 8
	.loc 1 444 0
	or	%d2, %d3
	.loc 1 446 0
	ld.bu	%d3, [%a15] 11
	sh	%d3, 3
	.loc 1 444 0
	or	%d2, %d3
	.loc 1 447 0
	ld.bu	%d3, [%a15] 12
	sh	%d3, 4
	.loc 1 443 0
	or	%d2, %d3
	.loc 1 448 0
	ld.bu	%d3, [%a15] 13
	sh	%d3, 5
	.loc 1 443 0
	or	%d2, %d3
	.loc 1 449 0
	ld.bu	%d3, [%a15] 14
	sh	%d3, 6
	.loc 1 443 0
	or	%d2, %d3
	.loc 1 449 0
	ld.bu	%d3, [%a15] 15
	.loc 1 467 0
	lea	%a15, [%a3] lo:HsfbDiag_ErrCode1
	.loc 1 449 0
	sh	%d3, 7
	.loc 1 443 0
	or	%d2, %d3
	sh	%d2, %d2, 8
	or	%d15, %d2
	.loc 1 467 0
	ld.bu	%d2, [%a15] 1
	.loc 1 460 0
	ld.bu	%d3, [%a15] 9
	.loc 1 443 0
	st.h	[%a2] 28, %d15
	.loc 1 468 0
	ld.bu	%d15, [%a15] 2
	.loc 1 467 0
	sh	%d2, 1
	.loc 1 468 0
	sh	%d15, 2
	.loc 1 459 0
	or	%d15, %d2
	ld.bu	%d2, [%a3] lo:HsfbDiag_ErrCode1
	.loc 1 460 0
	sh	%d3, 1
	.loc 1 459 0
	or	%d15, %d2
	.loc 1 469 0
	ld.bu	%d2, [%a15] 3
	.loc 1 484 0
	movh.a	%a3, hi:HsfbDiag_ErrCode2
	.loc 1 469 0
	sh	%d2, 3
	.loc 1 459 0
	or	%d15, %d2
	.loc 1 470 0
	ld.bu	%d2, [%a15] 4
	sh	%d2, 4
	.loc 1 459 0
	or	%d15, %d2
	.loc 1 471 0
	ld.bu	%d2, [%a15] 5
	sh	%d2, 5
	.loc 1 459 0
	or	%d15, %d2
	.loc 1 472 0
	ld.bu	%d2, [%a15] 6
	sh	%d2, 6
	.loc 1 459 0
	or	%d15, %d2
	.loc 1 473 0
	ld.bu	%d2, [%a15] 7
	sh	%d2, 7
	.loc 1 459 0
	or	%d15, %d2
	.loc 1 461 0
	ld.bu	%d2, [%a15] 10
	sh	%d2, 2
	.loc 1 460 0
	or	%d2, %d3
	ld.bu	%d3, [%a15] 8
	or	%d2, %d3
	.loc 1 462 0
	ld.bu	%d3, [%a15] 11
	sh	%d3, 3
	.loc 1 459 0
	or	%d2, %d3
	.loc 1 462 0
	ld.bu	%d3, [%a15] 12
	sh	%d3, 4
	.loc 1 459 0
	or	%d2, %d3
	.loc 1 463 0
	ld.bu	%d3, [%a15] 13
	sh	%d3, 5
	.loc 1 459 0
	or	%d2, %d3
	.loc 1 464 0
	ld.bu	%d3, [%a15] 14
	sh	%d3, 6
	.loc 1 459 0
	or	%d2, %d3
	.loc 1 465 0
	ld.bu	%d3, [%a15] 15
	.loc 1 484 0
	lea	%a15, [%a3] lo:HsfbDiag_ErrCode2
	.loc 1 465 0
	sh	%d3, 7
	.loc 1 459 0
	or	%d2, %d3
	sh	%d2, %d2, 8
	or	%d15, %d2
	st.h	[%a2] 30, %d15
	.loc 1 484 0
	ld.bu	%d2, [%a15] 1
	.loc 1 485 0
	ld.bu	%d15, [%a15] 2
	.loc 1 484 0
	sh	%d2, 1
	.loc 1 485 0
	sh	%d15, 2
	.loc 1 475 0
	or	%d15, %d2
	ld.bu	%d2, [%a3] lo:HsfbDiag_ErrCode2
	.loc 1 476 0
	ld.bu	%d3, [%a15] 9
	.loc 1 475 0
	or	%d15, %d2
	.loc 1 486 0
	ld.bu	%d2, [%a15] 3
	.loc 1 476 0
	sh	%d3, 1
	.loc 1 486 0
	sh	%d2, 3
	.loc 1 475 0
	or	%d15, %d2
	.loc 1 487 0
	ld.bu	%d2, [%a15] 4
	.loc 1 501 0
	movh.a	%a3, hi:HsfbDiag_ErrCode3
	.loc 1 487 0
	sh	%d2, 4
	.loc 1 475 0
	or	%d15, %d2
	.loc 1 488 0
	ld.bu	%d2, [%a15] 5
	sh	%d2, 5
	.loc 1 475 0
	or	%d15, %d2
	.loc 1 489 0
	ld.bu	%d2, [%a15] 6
	sh	%d2, 6
	.loc 1 475 0
	or	%d15, %d2
	.loc 1 490 0
	ld.bu	%d2, [%a15] 7
	sh	%d2, 7
	.loc 1 475 0
	or	%d15, %d2
	.loc 1 477 0
	ld.bu	%d2, [%a15] 10
	sh	%d2, 2
	.loc 1 476 0
	or	%d2, %d3
	ld.bu	%d3, [%a15] 8
	or	%d2, %d3
	.loc 1 478 0
	ld.bu	%d3, [%a15] 11
	sh	%d3, 3
	.loc 1 475 0
	or	%d2, %d3
	.loc 1 479 0
	ld.bu	%d3, [%a15] 12
	sh	%d3, 4
	.loc 1 475 0
	or	%d2, %d3
	.loc 1 480 0
	ld.bu	%d3, [%a15] 13
	sh	%d3, 5
	.loc 1 475 0
	or	%d2, %d3
	.loc 1 481 0
	ld.bu	%d3, [%a15] 14
	sh	%d3, 6
	.loc 1 475 0
	or	%d2, %d3
	.loc 1 482 0
	ld.bu	%d3, [%a15] 15
	.loc 1 501 0
	lea	%a15, [%a3] lo:HsfbDiag_ErrCode3
	.loc 1 482 0
	sh	%d3, 7
	.loc 1 475 0
	or	%d2, %d3
	sh	%d2, %d2, 8
	or	%d15, %d2
	.loc 1 501 0
	ld.bu	%d2, [%a15] 1
	.loc 1 493 0
	ld.bu	%d3, [%a15] 9
	.loc 1 475 0
	st.h	[%a2] 32, %d15
	.loc 1 502 0
	ld.bu	%d15, [%a15] 2
	.loc 1 501 0
	sh	%d2, 1
	.loc 1 502 0
	sh	%d15, 2
	.loc 1 492 0
	or	%d15, %d2
	ld.bu	%d2, [%a3] lo:HsfbDiag_ErrCode3
	.loc 1 493 0
	sh	%d3, 1
	.loc 1 492 0
	or	%d15, %d2
	.loc 1 503 0
	ld.bu	%d2, [%a15] 3
	sh	%d2, 3
	.loc 1 492 0
	or	%d15, %d2
	.loc 1 504 0
	ld.bu	%d2, [%a15] 4
	sh	%d2, 4
	.loc 1 492 0
	or	%d15, %d2
	.loc 1 505 0
	ld.bu	%d2, [%a15] 5
	sh	%d2, 5
	.loc 1 492 0
	or	%d15, %d2
	.loc 1 506 0
	ld.bu	%d2, [%a15] 6
	sh	%d2, 6
	.loc 1 492 0
	or	%d15, %d2
	.loc 1 507 0
	ld.bu	%d2, [%a15] 7
	sh	%d2, 7
	.loc 1 492 0
	or	%d15, %d2
	.loc 1 494 0
	ld.bu	%d2, [%a15] 10
	sh	%d2, 2
	.loc 1 493 0
	or	%d2, %d3
	ld.bu	%d3, [%a15] 8
	or	%d2, %d3
	.loc 1 495 0
	ld.bu	%d3, [%a15] 11
	sh	%d3, 3
	.loc 1 492 0
	or	%d2, %d3
	.loc 1 496 0
	ld.bu	%d3, [%a15] 12
	sh	%d3, 4
	.loc 1 492 0
	or	%d2, %d3
	.loc 1 497 0
	ld.bu	%d3, [%a15] 13
	sh	%d3, 5
	.loc 1 492 0
	or	%d2, %d3
	.loc 1 498 0
	ld.bu	%d3, [%a15] 14
	sh	%d3, 6
	.loc 1 492 0
	or	%d2, %d3
	.loc 1 499 0
	ld.bu	%d3, [%a15] 15
	sh	%d3, 7
	.loc 1 492 0
	or	%d2, %d3
	sh	%d2, %d2, 8
	or	%d15, %d2
	st.h	[%a2] 24, %d15
	.loc 1 509 0
	ret
.LFE210:
	.size	HsfbDiag_ErrCode_Mux, .-HsfbDiag_ErrCode_Mux
	.align 3
	.global	HsfbDiag_Call1ms
	.type	HsfbDiag_Call1ms, @function
HsfbDiag_Call1ms:
.LFB211:
	.loc 1 525 0
.LVL85:
	.loc 1 526 0
	movh.a	%a2, hi:HsfbDiag_PortStatus1ms
	st.a	[%a2] lo:HsfbDiag_PortStatus1ms, %a4
	.loc 1 527 0
	movh.a	%a2, hi:HsfbDiag_MeasStatus1ms
	.loc 1 525 0
	ld.a	%a15, [%SP] 4
	.loc 1 527 0
	st.a	[%a2] lo:HsfbDiag_MeasStatus1ms, %a5
	.loc 1 528 0
	movh.a	%a2, hi:HsfbDiag_CtrlStatus15us
	st.a	[%a2] lo:HsfbDiag_CtrlStatus15us, %a6
	.loc 1 525 0
	ld.a	%a12, [%SP] 8
	.loc 1 529 0
	movh.a	%a2, hi:HsfbDiag_NtcStatus10ms
	st.a	[%a2] lo:HsfbDiag_NtcStatus10ms, %a7
	.loc 1 530 0
	movh.a	%a2, hi:HsfbDiag_SafetyStatus1ms
	st.a	[%a2] lo:HsfbDiag_SafetyStatus1ms, %a15
	.loc 1 531 0
	movh.a	%a2, hi:HsfbDiag_DiagStatus1ms
	st.a	[%a2] lo:HsfbDiag_DiagStatus1ms, %a12
	.loc 1 532 0
	ld.a	%a2, [%SP]0
	.loc 1 533 0
	mov	%d2, 0
	.loc 1 532 0
	ld.bu	%d15, [%a2] 4
	movh.a	%a2, hi:HsfbDiag_LatchReset
	st.b	[%a2] lo:HsfbDiag_LatchReset, %d15
	.loc 1 533 0
	ld.hu	%d15, [%a15] 26
	jnz	%d15, .L209
	.loc 1 519 0
	ld.bu	%d2, [%a15] 28
	.loc 1 533 0
	eq	%d2, %d2, 0
.L209:
	.loc 1 533 0 is_stmt 0 discriminator 2
	movh.a	%a15, hi:HsfbDiag_ErrCode0En
	st.b	[%a15] lo:HsfbDiag_ErrCode0En, %d2
	.loc 1 542 0 is_stmt 1 discriminator 2
	movh.a	%a15, hi:HsfbDiag_DW
	lea	%a15, [%a15] lo:HsfbDiag_DW
	.loc 1 536 0 discriminator 2
	call	HsfbDiag_ErrCode0_Calc
.LVL86:
	.loc 1 537 0 discriminator 2
	call	HsfbDiag_ErrCode1_Calc
	.loc 1 538 0 discriminator 2
	call	HsfbDiag_ErrCode2_Calc
	.loc 1 539 0 discriminator 2
	call	HsfbDiag_ErrCode3_Calc
	.loc 1 540 0 discriminator 2
	call	HsfbDiag_ErrCode_Mux
	.loc 1 541 0 discriminator 2
	call	HsfbDiag_ErrCode_Latch
	.loc 1 542 0 discriminator 2
	ld.h	%d15, [%a15] 26
	st.h	[%a12]0, %d15
	.loc 1 543 0 discriminator 2
	ld.h	%d15, [%a15] 28
	st.h	[%a12] 2, %d15
	.loc 1 544 0 discriminator 2
	ld.h	%d15, [%a15] 30
	st.h	[%a12] 4, %d15
	.loc 1 545 0 discriminator 2
	ld.h	%d15, [%a15] 32
	st.h	[%a12] 6, %d15
	.loc 1 546 0 discriminator 2
	ret
.LFE211:
	.size	HsfbDiag_Call1ms, .-HsfbDiag_Call1ms
	.section .text.MPU_QM_CODE,"ax",@progbits
	.align 3
	.global	HsfbDiag_CallInit
	.type	HsfbDiag_CallInit, @function
HsfbDiag_CallInit:
.LFB212:
	.loc 1 557 0
	.loc 1 558 0
	mov	%d15, -624
	.loc 1 560 0
	mov	%d2, -13
	.loc 1 558 0
	movh.a	%a2, hi:HsfbDiag_ErrMask
	lea	%a15, [%a2] lo:HsfbDiag_ErrMask
	st.h	[%a2] lo:HsfbDiag_ErrMask, %d15
	.loc 1 560 0
	st.h	[%a15] 4, %d2
	.loc 1 559 0
	mov	%d15, 0
	.loc 1 561 0
	mov	%d2, 24571
	.loc 1 562 0
	movh.a	%a2, hi:HsfbDiag_EnDis
	.loc 1 559 0
	st.h	[%a15] 2, %d15
	.loc 1 561 0
	st.h	[%a15] 6, %d2
	.loc 1 562 0
	lea	%a15, [%a2] lo:HsfbDiag_EnDis
	.loc 1 563 0
	st.b	[%a15] 1, %d15
	.loc 1 564 0
	st.b	[%a15] 2, %d15
	.loc 1 565 0
	movh.a	%a15, hi:HsfbDiag_ErrCode0En
	st.b	[%a15] lo:HsfbDiag_ErrCode0En, %d15
	.loc 1 566 0
	movh.a	%a15, hi:HsfbDiag_LatchReset
	.loc 1 562 0
	st.b	[%a2] lo:HsfbDiag_EnDis, %d15
	.loc 1 566 0
	st.b	[%a15] lo:HsfbDiag_LatchReset, %d15
	.loc 1 567 0
	ret
.LFE212:
	.size	HsfbDiag_CallInit, .-HsfbDiag_CallInit
	.global	HsfbDiag_DiagStatus1ms
	.section .bss.MPU_ASIL_VAR_NOINIT,"aw",@nobits
	.align 3
	.type	HsfbDiag_DiagStatus1ms, @object
	.size	HsfbDiag_DiagStatus1ms, 4
HsfbDiag_DiagStatus1ms:
	.zero	4
	.global	HsfbDiag_SafetyStatus1ms
	.align 3
	.type	HsfbDiag_SafetyStatus1ms, @object
	.size	HsfbDiag_SafetyStatus1ms, 4
HsfbDiag_SafetyStatus1ms:
	.zero	4
	.global	HsfbDiag_NtcStatus10ms
	.align 3
	.type	HsfbDiag_NtcStatus10ms, @object
	.size	HsfbDiag_NtcStatus10ms, 4
HsfbDiag_NtcStatus10ms:
	.zero	4
	.global	HsfbDiag_CtrlStatus15us
	.align 3
	.type	HsfbDiag_CtrlStatus15us, @object
	.size	HsfbDiag_CtrlStatus15us, 4
HsfbDiag_CtrlStatus15us:
	.zero	4
	.global	HsfbDiag_MeasStatus1ms
	.align 3
	.type	HsfbDiag_MeasStatus1ms, @object
	.size	HsfbDiag_MeasStatus1ms, 4
HsfbDiag_MeasStatus1ms:
	.zero	4
	.global	HsfbDiag_PortStatus1ms
	.align 3
	.type	HsfbDiag_PortStatus1ms, @object
	.size	HsfbDiag_PortStatus1ms, 4
HsfbDiag_PortStatus1ms:
	.zero	4
	.global	HsfbDiag_DW
	.align 3
	.type	HsfbDiag_DW, @object
	.size	HsfbDiag_DW, 52
HsfbDiag_DW:
	.zero	52
	.global	HsfbDiag_ErrCode0En
	.align 3
	.type	HsfbDiag_ErrCode0En, @object
	.size	HsfbDiag_ErrCode0En, 1
HsfbDiag_ErrCode0En:
	.zero	1
	.global	HsfbDiag_LatchReset
	.align 3
	.type	HsfbDiag_LatchReset, @object
	.size	HsfbDiag_LatchReset, 1
HsfbDiag_LatchReset:
	.zero	1
	.global	HsfbDiag_ErrMask
	.align 3
	.type	HsfbDiag_ErrMask, @object
	.size	HsfbDiag_ErrMask, 8
HsfbDiag_ErrMask:
	.zero	8
	.global	HsfbDiag_EnDis
	.align 3
	.type	HsfbDiag_EnDis, @object
	.size	HsfbDiag_EnDis, 4
HsfbDiag_EnDis:
	.zero	4
	.global	HsfbDiag_ErrCode3
	.align 3
	.type	HsfbDiag_ErrCode3, @object
	.size	HsfbDiag_ErrCode3, 16
HsfbDiag_ErrCode3:
	.zero	16
	.global	HsfbDiag_ErrCode2
	.align 3
	.type	HsfbDiag_ErrCode2, @object
	.size	HsfbDiag_ErrCode2, 16
HsfbDiag_ErrCode2:
	.zero	16
	.global	HsfbDiag_ErrCode1
	.align 3
	.type	HsfbDiag_ErrCode1, @object
	.size	HsfbDiag_ErrCode1, 16
HsfbDiag_ErrCode1:
	.zero	16
	.global	HsfbDiag_ErrCode0
	.align 3
	.type	HsfbDiag_ErrCode0, @object
	.size	HsfbDiag_ErrCode0, 16
HsfbDiag_ErrCode0:
	.zero	16
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
	.uaword	.LFB203
	.uaword	.LFE203-.LFB203
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB204
	.uaword	.LFE204-.LFB204
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB205
	.uaword	.LFE205-.LFB205
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB206
	.uaword	.LFE206-.LFB206
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB207
	.uaword	.LFE207-.LFB207
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB208
	.uaword	.LFE208-.LFB208
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB209
	.uaword	.LFE209-.LFB209
	.align 2
.LEFDE14:
.LSFDE16:
	.uaword	.LEFDE16-.LASFDE16
.LASFDE16:
	.uaword	.Lframe0
	.uaword	.LFB210
	.uaword	.LFE210-.LFB210
	.align 2
.LEFDE16:
.LSFDE18:
	.uaword	.LEFDE18-.LASFDE18
.LASFDE18:
	.uaword	.Lframe0
	.uaword	.LFB211
	.uaword	.LFE211-.LFB211
	.align 2
.LEFDE18:
.LSFDE20:
	.uaword	.LEFDE20-.LASFDE20
.LASFDE20:
	.uaword	.Lframe0
	.uaword	.LFB212
	.uaword	.LFE212-.LFB212
	.align 2
.LEFDE20:
.section .text,"ax",@progbits
.Letext0:
	.file 2 "../30_Bsw/Common/rtwtypes.h"
	.file 3 "../40_Appl/HsfbDiag/HsfbDiag_struct.h"
	.file 4 "../40_Appl/HsfbMeas/HsfbMeas_struct.h"
	.file 5 "../40_Appl/HsfbState/HsfbState_struct.h"
	.file 6 "../40_Appl/HsfbNtc/HsfbNtc_struct.h"
	.file 7 "../40_Appl/HsfbSafety/HsfbSafety_struct.h"
	.file 8 "../40_Appl/HsfbApp/HsfbApp_struct.h"
	.file 9 "../40_Appl/HsfbCtrl/HsfbCtrl_struct.h"
	.file 10 "../40_Appl/HsfbDiag/HsfbDiag.h"
	.file 11 "../30_Bsw/Common/TC21x/IfxCpu_regdef.h"
	.file 12 "../30_Bsw/Main/Main_api.h"
	.file 13 "../30_Bsw/Mpu/mpu_api.h"
	.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x20e3
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.6.3 build on 2013-05-17"
	.byte	0x1
	.string	"../40_Appl/HsfbDiag/HsfbDiag.c"
	.string	"D:\\\\SVN\\\\IPB-11Kw\\\\LvDc-C01R0P0-Ceramicheater\\\\20_Make"
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_ranges0+0x250
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x3
	.string	"int16_T"
	.byte	0x2
	.byte	0x52
	.uaword	0xc2
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x3
	.string	"uint16_T"
	.byte	0x2
	.byte	0x53
	.uaword	0xdf
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.string	"int32_T"
	.byte	0x2
	.byte	0x54
	.uaword	0x104
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.string	"uint32_T"
	.byte	0x2
	.byte	0x55
	.uaword	0x11b
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x3
	.string	"real32_T"
	.byte	0x2
	.byte	0x56
	.uaword	0x13b
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.string	"float"
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.string	"double"
	.uleb128 0x3
	.string	"real_T"
	.byte	0x2
	.byte	0x5d
	.uaword	0x144
	.uleb128 0x3
	.string	"boolean_T"
	.byte	0x2
	.byte	0x5f
	.uaword	0xa2
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x3
	.string	"s16"
	.byte	0x2
	.byte	0x7e
	.uaword	0xb3
	.uleb128 0x3
	.string	"u16"
	.byte	0x2
	.byte	0x7f
	.uaword	0xcf
	.uleb128 0x3
	.string	"s32"
	.byte	0x2
	.byte	0x80
	.uaword	0xf5
	.uleb128 0x3
	.string	"u32"
	.byte	0x2
	.byte	0x81
	.uaword	0x10b
	.uleb128 0x3
	.string	"f32"
	.byte	0x2
	.byte	0x82
	.uaword	0x12b
	.uleb128 0x3
	.string	"f64"
	.byte	0x2
	.byte	0x83
	.uaword	0x14e
	.uleb128 0x3
	.string	"bit"
	.byte	0x2
	.byte	0x84
	.uaword	0x15c
	.uleb128 0x4
	.byte	0x10
	.byte	0x3
	.byte	0xe
	.uaword	0x316
	.uleb128 0x5
	.string	"AutoDiagOvp16V"
	.byte	0x3
	.byte	0xf
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"AutoDiagOvp19V"
	.byte	0x3
	.byte	0x10
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x5
	.string	"AutoDiagOtp"
	.byte	0x3
	.byte	0x11
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x5
	.string	"AutoDiagKL30"
	.byte	0x3
	.byte	0x12
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x6
	.uaword	.LASF0
	.byte	0x3
	.byte	0x13
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.string	"DrvPriOff"
	.byte	0x3
	.byte	0x14
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0x5
	.string	"DrvSrOff"
	.byte	0x3
	.byte	0x15
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x6
	.uaword	.LASF1
	.byte	0x3
	.byte	0x16
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0x5
	.string	"OvpVout16V"
	.byte	0x3
	.byte	0x17
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"OvpVout19V"
	.byte	0x3
	.byte	0x18
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0x5
	.string	"OcpIoutP"
	.byte	0x3
	.byte	0x19
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x5
	.string	"OcpIoutN"
	.byte	0x3
	.byte	0x1a
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0x5
	.string	"OvpVin"
	.byte	0x3
	.byte	0x1b
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x5
	.string	"OcpCt"
	.byte	0x3
	.byte	0x1c
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0x6
	.uaword	.LASF2
	.byte	0x3
	.byte	0x1d
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0x5
	.string	"HwVerError"
	.byte	0x3
	.byte	0x1e
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.byte	0
	.uleb128 0x3
	.string	"HSFBDIAG_S_ERRCODE0"
	.byte	0x3
	.byte	0x1f
	.uaword	0x1d7
	.uleb128 0x4
	.byte	0x10
	.byte	0x3
	.byte	0x21
	.uaword	0x440
	.uleb128 0x6
	.uaword	.LASF3
	.byte	0x3
	.byte	0x22
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.uaword	.LASF4
	.byte	0x3
	.byte	0x23
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x5
	.string	"AutoDiagNotFin"
	.byte	0x3
	.byte	0x24
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x6
	.uaword	.LASF5
	.byte	0x3
	.byte	0x25
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x6
	.uaword	.LASF6
	.byte	0x3
	.byte	0x26
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.uaword	.LASF7
	.byte	0x3
	.byte	0x27
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0x6
	.uaword	.LASF8
	.byte	0x3
	.byte	0x28
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x6
	.uaword	.LASF9
	.byte	0x3
	.byte	0x29
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0x5
	.string	"Reserved9"
	.byte	0x3
	.byte	0x2a
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.uaword	.LASF1
	.byte	0x3
	.byte	0x2b
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0x6
	.uaword	.LASF10
	.byte	0x3
	.byte	0x2c
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x6
	.uaword	.LASF11
	.byte	0x3
	.byte	0x2d
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0x5
	.string	"Reserved13"
	.byte	0x3
	.byte	0x2e
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x5
	.string	"Reserved14"
	.byte	0x3
	.byte	0x2f
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0x6
	.uaword	.LASF2
	.byte	0x3
	.byte	0x30
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0x5
	.string	"Reserved16"
	.byte	0x3
	.byte	0x31
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.byte	0
	.uleb128 0x3
	.string	"HSFBDIAG_S_ERRCODE1"
	.byte	0x3
	.byte	0x32
	.uaword	0x331
	.uleb128 0x4
	.byte	0x10
	.byte	0x3
	.byte	0x34
	.uaword	0x5b2
	.uleb128 0x5
	.string	"Vout16VHigh"
	.byte	0x3
	.byte	0x35
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"VoutErr1High"
	.byte	0x3
	.byte	0x36
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x5
	.string	"Vout19VHigh"
	.byte	0x3
	.byte	0x37
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x5
	.string	"VoutErr2High"
	.byte	0x3
	.byte	0x38
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x5
	.string	"IoutHigh"
	.byte	0x3
	.byte	0x39
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.string	"IoutLow"
	.byte	0x3
	.byte	0x3a
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0x5
	.string	"VinHigh"
	.byte	0x3
	.byte	0x3b
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x5
	.string	"VinLow"
	.byte	0x3
	.byte	0x3c
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0x5
	.string	"TempPriHigh"
	.byte	0x3
	.byte	0x3d
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"TempSrAHigh"
	.byte	0x3
	.byte	0x3e
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0x5
	.string	"TempSrBHigh"
	.byte	0x3
	.byte	0x3f
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x5
	.string	"VauxHigh"
	.byte	0x3
	.byte	0x40
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0x5
	.string	"VauxLow"
	.byte	0x3
	.byte	0x41
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x5
	.string	"Vkl30Low"
	.byte	0x3
	.byte	0x42
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0x5
	.string	"TempErrSrAB_High"
	.byte	0x3
	.byte	0x43
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0x5
	.string	"IproFet_High"
	.byte	0x3
	.byte	0x44
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.byte	0
	.uleb128 0x3
	.string	"HSFBDIAG_S_ERRCODE2"
	.byte	0x3
	.byte	0x45
	.uaword	0x45b
	.uleb128 0x4
	.byte	0x10
	.byte	0x3
	.byte	0x47
	.uaword	0x6ce
	.uleb128 0x6
	.uaword	.LASF12
	.byte	0x3
	.byte	0x48
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.uaword	.LASF13
	.byte	0x3
	.byte	0x49
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x6
	.uaword	.LASF14
	.byte	0x3
	.byte	0x4a
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x6
	.uaword	.LASF15
	.byte	0x3
	.byte	0x4b
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x6
	.uaword	.LASF6
	.byte	0x3
	.byte	0x4c
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.uaword	.LASF7
	.byte	0x3
	.byte	0x4d
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0x6
	.uaword	.LASF8
	.byte	0x3
	.byte	0x4e
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x6
	.uaword	.LASF9
	.byte	0x3
	.byte	0x4f
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0x6
	.uaword	.LASF16
	.byte	0x3
	.byte	0x50
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.uaword	.LASF17
	.byte	0x3
	.byte	0x51
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0x6
	.uaword	.LASF10
	.byte	0x3
	.byte	0x52
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x6
	.uaword	.LASF11
	.byte	0x3
	.byte	0x53
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0x5
	.string	"FlybackShort"
	.byte	0x3
	.byte	0x54
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x5
	.string	"E2EError"
	.byte	0x3
	.byte	0x55
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0x5
	.string	"SbcError"
	.byte	0x3
	.byte	0x56
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0x5
	.string	"DspError"
	.byte	0x3
	.byte	0x57
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.byte	0
	.uleb128 0x3
	.string	"HSFBDIAG_S_ERRCODE3"
	.byte	0x3
	.byte	0x58
	.uaword	0x5cd
	.uleb128 0x4
	.byte	0x4
	.byte	0x3
	.byte	0x5a
	.uaword	0x726
	.uleb128 0x5
	.string	"PriDis"
	.byte	0x3
	.byte	0x5b
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"SrDis"
	.byte	0x3
	.byte	0x5c
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x5
	.string	"ClampDis"
	.byte	0x3
	.byte	0x5d
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x3
	.string	"HSFBDIAG_S_ENDIS"
	.byte	0x3
	.byte	0x5e
	.uaword	0x6e9
	.uleb128 0x4
	.byte	0x8
	.byte	0x3
	.byte	0x60
	.uaword	0x793
	.uleb128 0x5
	.string	"ErrMask0"
	.byte	0x3
	.byte	0x61
	.uaword	0x195
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"ErrMask1"
	.byte	0x3
	.byte	0x62
	.uaword	0x195
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x5
	.string	"ErrMask2"
	.byte	0x3
	.byte	0x63
	.uaword	0x195
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.string	"ErrMask3"
	.byte	0x3
	.byte	0x64
	.uaword	0x195
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.byte	0
	.uleb128 0x3
	.string	"HSFBDIAG_S_ERRMASK"
	.byte	0x3
	.byte	0x65
	.uaword	0x73e
	.uleb128 0x4
	.byte	0x10
	.byte	0x3
	.byte	0x67
	.uaword	0x852
	.uleb128 0x5
	.string	"ErrCode0"
	.byte	0x3
	.byte	0x68
	.uaword	0x195
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"ErrCode1"
	.byte	0x3
	.byte	0x69
	.uaword	0x195
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x5
	.string	"ErrCode2"
	.byte	0x3
	.byte	0x6a
	.uaword	0x195
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.string	"ErrCode3"
	.byte	0x3
	.byte	0x6b
	.uaword	0x195
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x5
	.string	"WarnCode0"
	.byte	0x3
	.byte	0x6c
	.uaword	0x195
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"WarnCode1"
	.byte	0x3
	.byte	0x6d
	.uaword	0x195
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x5
	.string	"WarnCode2"
	.byte	0x3
	.byte	0x6e
	.uaword	0x195
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x5
	.string	"WarnCode3"
	.byte	0x3
	.byte	0x6f
	.uaword	0x195
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.byte	0
	.uleb128 0x3
	.string	"HSFBDIAG_S_STATUS1MS"
	.byte	0x3
	.byte	0x70
	.uaword	0x7ad
	.uleb128 0x4
	.byte	0x8
	.byte	0x4
	.byte	0xe
	.uaword	0x895
	.uleb128 0x5
	.string	"Data"
	.byte	0x4
	.byte	0xf
	.uaword	0x18a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"Real"
	.byte	0x4
	.byte	0x10
	.uaword	0x1b6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x3
	.string	"HSFBMEAS_S_STATUSDATA"
	.byte	0x4
	.byte	0x11
	.uaword	0x86e
	.uleb128 0x4
	.byte	0x68
	.byte	0x4
	.byte	0x2e
	.uaword	0x990
	.uleb128 0x5
	.string	"Ipri"
	.byte	0x4
	.byte	0x2f
	.uaword	0x895
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"Vin"
	.byte	0x4
	.byte	0x30
	.uaword	0x895
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"Iout"
	.byte	0x4
	.byte	0x31
	.uaword	0x895
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x5
	.string	"Vout"
	.byte	0x4
	.byte	0x32
	.uaword	0x895
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x5
	.string	"VoutDiag"
	.byte	0x4
	.byte	0x33
	.uaword	0x895
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x5
	.string	"IproFet"
	.byte	0x4
	.byte	0x34
	.uaword	0x895
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x5
	.string	"Vaux"
	.byte	0x4
	.byte	0x35
	.uaword	0x895
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x5
	.string	"Vkl30"
	.byte	0x4
	.byte	0x36
	.uaword	0x895
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x5
	.string	"Vkl30C"
	.byte	0x4
	.byte	0x37
	.uaword	0x895
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x5
	.string	"Vcomp"
	.byte	0x4
	.byte	0x38
	.uaword	0x895
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x5
	.string	"VrefDiag"
	.byte	0x4
	.byte	0x39
	.uaword	0x895
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x5
	.string	"Vhw16V"
	.byte	0x4
	.byte	0x3a
	.uaword	0x895
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x5
	.string	"Vhw19V"
	.byte	0x4
	.byte	0x3b
	.uaword	0x895
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.byte	0
	.uleb128 0x3
	.string	"HSFBMEAS_S_STATUS1MS"
	.byte	0x4
	.byte	0x3c
	.uaword	0x8b2
	.uleb128 0x4
	.byte	0xc
	.byte	0x5
	.byte	0xe
	.uaword	0xa4d
	.uleb128 0x5
	.string	"ClrWarning"
	.byte	0x5
	.byte	0xf
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"Error"
	.byte	0x5
	.byte	0x10
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x5
	.string	"Init"
	.byte	0x5
	.byte	0x11
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x5
	.string	"HsfbEn"
	.byte	0x5
	.byte	0x12
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x5
	.string	"Reset"
	.byte	0x5
	.byte	0x13
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.string	"DrvReset"
	.byte	0x5
	.byte	0x14
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0x5
	.string	"ErrReset"
	.byte	0x5
	.byte	0x15
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x5
	.string	"Opm"
	.byte	0x5
	.byte	0x16
	.uaword	0x195
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"Topo"
	.byte	0x5
	.byte	0x17
	.uaword	0x195
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.string	"HSFBSTATE_S_STATUS"
	.byte	0x5
	.byte	0x18
	.uaword	0x9ac
	.uleb128 0x4
	.byte	0x8
	.byte	0x6
	.byte	0xe
	.uaword	0xa8e
	.uleb128 0x5
	.string	"Temp"
	.byte	0x6
	.byte	0xf
	.uaword	0x18a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"Rntc"
	.byte	0x6
	.byte	0x10
	.uaword	0x1a0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x3
	.string	"HSFBNTC_S_NTCSTATUS"
	.byte	0x6
	.byte	0x11
	.uaword	0xa67
	.uleb128 0x4
	.byte	0x30
	.byte	0x6
	.byte	0x1a
	.uaword	0xb18
	.uleb128 0x5
	.string	"Pri"
	.byte	0x6
	.byte	0x1b
	.uaword	0xa8e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"SrA"
	.byte	0x6
	.byte	0x1c
	.uaword	0xa8e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"SrB"
	.byte	0x6
	.byte	0x1d
	.uaword	0xa8e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x5
	.string	"WaterIn"
	.byte	0x6
	.byte	0x1e
	.uaword	0xa8e
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x5
	.string	"WaterOut"
	.byte	0x6
	.byte	0x1f
	.uaword	0xa8e
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x5
	.string	"WaterOutDiag"
	.byte	0x6
	.byte	0x20
	.uaword	0xa8e
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.string	"HSFBNTC_S_STATUS"
	.byte	0x6
	.byte	0x21
	.uaword	0xaa9
	.uleb128 0x4
	.byte	0x18
	.byte	0x7
	.byte	0xe
	.uaword	0xd28
	.uleb128 0x5
	.string	"DCDC01_SM1"
	.byte	0x7
	.byte	0xf
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"DCDC01_SM2"
	.byte	0x7
	.byte	0x10
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x5
	.string	"DCDC01_SM3"
	.byte	0x7
	.byte	0x11
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x5
	.string	"DCDC01_SM4"
	.byte	0x7
	.byte	0x12
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x5
	.string	"DCDC01_LFD1"
	.byte	0x7
	.byte	0x13
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.string	"DCDC01_LFD2"
	.byte	0x7
	.byte	0x14
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0x5
	.string	"DCDC01_LFD3"
	.byte	0x7
	.byte	0x15
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x5
	.string	"DCDC01_LFD4"
	.byte	0x7
	.byte	0x16
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0x5
	.string	"DCDC02_SM1"
	.byte	0x7
	.byte	0x17
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"DCDC02_SM2"
	.byte	0x7
	.byte	0x18
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0x5
	.string	"DCDC02_SM3"
	.byte	0x7
	.byte	0x19
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x5
	.string	"DCDC02_SM4"
	.byte	0x7
	.byte	0x1a
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0x5
	.string	"DCDC02_LFD1"
	.byte	0x7
	.byte	0x1b
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x5
	.string	"DCDC02_LFD2"
	.byte	0x7
	.byte	0x1c
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0x5
	.string	"DCDC02_LFD3"
	.byte	0x7
	.byte	0x1d
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0x5
	.string	"DCDC02_LFD4"
	.byte	0x7
	.byte	0x1e
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.uleb128 0x5
	.string	"DCDC03_SM1"
	.byte	0x7
	.byte	0x1f
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x5
	.string	"DCDC03_SM2"
	.byte	0x7
	.byte	0x20
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0x5
	.string	"DCDC03_LFD1"
	.byte	0x7
	.byte	0x21
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.uleb128 0x5
	.string	"DCDC05_SM1"
	.byte	0x7
	.byte	0x22
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x13
	.uleb128 0x5
	.string	"DCDC05_LFD1"
	.byte	0x7
	.byte	0x23
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x5
	.string	"DCDC05_LFD2"
	.byte	0x7
	.byte	0x24
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x15
	.uleb128 0x5
	.string	"Batt02_LFD5"
	.byte	0x7
	.byte	0x25
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.string	"HSFBSAFETY_S_SAFETYSTATUS"
	.byte	0x7
	.byte	0x26
	.uaword	0xb30
	.uleb128 0x4
	.byte	0xa
	.byte	0x7
	.byte	0x28
	.uaword	0xd9a
	.uleb128 0x6
	.uaword	.LASF4
	.byte	0x7
	.byte	0x29
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"AutoDiagFin"
	.byte	0x7
	.byte	0x2a
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x5
	.string	"EachRun"
	.byte	0x7
	.byte	0x2b
	.uaword	0xd9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x5
	.string	"EachFin"
	.byte	0x7
	.byte	0x2c
	.uaword	0xd9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.byte	0
	.uleb128 0x7
	.uaword	0x1cc
	.uaword	0xdaa
	.uleb128 0x8
	.uaword	0x16d
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.string	"HSFBSAFETY_S_AUTODIAGSTATUS"
	.byte	0x7
	.byte	0x2d
	.uaword	0xd49
	.uleb128 0x4
	.byte	0x22
	.byte	0x7
	.byte	0x2f
	.uaword	0xe06
	.uleb128 0x5
	.string	"SafetyStatus"
	.byte	0x7
	.byte	0x30
	.uaword	0xd28
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"AutoDiagStatus"
	.byte	0x7
	.byte	0x31
	.uaword	0xdaa
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0
	.uleb128 0x3
	.string	"HSFBSAFETY_S_STATUS1MS"
	.byte	0x7
	.byte	0x32
	.uaword	0xdcd
	.uleb128 0x4
	.byte	0xc
	.byte	0x8
	.byte	0x1a
	.uaword	0xf01
	.uleb128 0x6
	.uaword	.LASF0
	.byte	0x8
	.byte	0x1b
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"PriDriveDis"
	.byte	0x8
	.byte	0x1c
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x5
	.string	"SrDriveDis"
	.byte	0x8
	.byte	0x1d
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x5
	.string	"IpriCbc"
	.byte	0x8
	.byte	0x1e
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x5
	.string	"IpriOcp"
	.byte	0x8
	.byte	0x1f
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.string	"VinOvp"
	.byte	0x8
	.byte	0x20
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0x5
	.string	"IoutPOcp"
	.byte	0x8
	.byte	0x21
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x5
	.string	"IoutNOcp"
	.byte	0x8
	.byte	0x22
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0x5
	.string	"Vout16VOvp"
	.byte	0x8
	.byte	0x23
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"Vout19VOvp"
	.byte	0x8
	.byte	0x24
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0x5
	.string	"WaterOutOtp"
	.byte	0x8
	.byte	0x25
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.string	"HSFBAPP_S_PORTSTATUS"
	.byte	0x8
	.byte	0x26
	.uaword	0xe24
	.uleb128 0x4
	.byte	0x8
	.byte	0x9
	.byte	0x14
	.uaword	0xf96
	.uleb128 0x6
	.uaword	.LASF12
	.byte	0x9
	.byte	0x15
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.uaword	.LASF13
	.byte	0x9
	.byte	0x16
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x6
	.uaword	.LASF14
	.byte	0x9
	.byte	0x17
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x6
	.uaword	.LASF15
	.byte	0x9
	.byte	0x18
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x6
	.uaword	.LASF3
	.byte	0x9
	.byte	0x19
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.uaword	.LASF16
	.byte	0x9
	.byte	0x1a
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0x6
	.uaword	.LASF17
	.byte	0x9
	.byte	0x1b
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x6
	.uaword	.LASF5
	.byte	0x9
	.byte	0x1c
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.byte	0
	.uleb128 0x3
	.string	"HSFBCTRL_S_ERROR"
	.byte	0x9
	.byte	0x1d
	.uaword	0xf1d
	.uleb128 0x4
	.byte	0x10
	.byte	0x9
	.byte	0x35
	.uaword	0xff2
	.uleb128 0x5
	.string	"BuckDuty"
	.byte	0x9
	.byte	0x36
	.uaword	0x1b6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"BoostDuty"
	.byte	0x9
	.byte	0x37
	.uaword	0x1b6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.string	"CtrlError"
	.byte	0x9
	.byte	0x38
	.uaword	0xf96
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x3
	.string	"HSFBCTRL_S_STATUS15US"
	.byte	0x9
	.byte	0x39
	.uaword	0xfae
	.uleb128 0x4
	.byte	0x2
	.byte	0xa
	.byte	0x1b
	.uaword	0x1026
	.uleb128 0x6
	.uaword	.LASF18
	.byte	0xa
	.byte	0x1c
	.uaword	0x195
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"DW_HsfbDiag_MaxCheck_T"
	.byte	0xa
	.byte	0x1d
	.uaword	0x100f
	.uleb128 0x4
	.byte	0x4
	.byte	0xa
	.byte	0x24
	.uaword	0x1069
	.uleb128 0x6
	.uaword	.LASF18
	.byte	0xa
	.byte	0x25
	.uaword	0x195
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.uaword	.LASF19
	.byte	0xa
	.byte	0x26
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x3
	.string	"DW_HsfbDiag_MaxHysCheck_T"
	.byte	0xa
	.byte	0x27
	.uaword	0x1044
	.uleb128 0x4
	.byte	0x34
	.byte	0xa
	.byte	0x2e
	.uaword	0x12b3
	.uleb128 0x5
	.string	"MaxHysCheck2"
	.byte	0xa
	.byte	0x2f
	.uaword	0x1069
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"MaxHysCheck1"
	.byte	0xa
	.byte	0x30
	.uaword	0x1069
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.string	"MaxHysCheck"
	.byte	0xa
	.byte	0x31
	.uaword	0x1069
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"MaxCheck5"
	.byte	0xa
	.byte	0x32
	.uaword	0x1026
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x5
	.string	"MaxCheck4"
	.byte	0xa
	.byte	0x33
	.uaword	0x1026
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0x5
	.string	"MaxCheck3"
	.byte	0xa
	.byte	0x34
	.uaword	0x1026
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x5
	.string	"MaxCheck2"
	.byte	0xa
	.byte	0x35
	.uaword	0x1026
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.uleb128 0x5
	.string	"MaxCheck1"
	.byte	0xa
	.byte	0x36
	.uaword	0x1026
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.uaword	.LASF18
	.byte	0xa
	.byte	0x37
	.uaword	0x18a
	.byte	0x2
	.byte	0x23
	.uleb128 0x16
	.uleb128 0x5
	.string	"BitwiseOR_d"
	.byte	0xa
	.byte	0x38
	.uaword	0x195
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x5
	.string	"BitwiseOR_m"
	.byte	0xa
	.byte	0x39
	.uaword	0x195
	.byte	0x2
	.byte	0x23
	.uleb128 0x1a
	.uleb128 0x5
	.string	"BitwiseOR_my"
	.byte	0xa
	.byte	0x3a
	.uaword	0x195
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x5
	.string	"BitwiseOR_g"
	.byte	0xa
	.byte	0x3b
	.uaword	0x195
	.byte	0x2
	.byte	0x23
	.uleb128 0x1e
	.uleb128 0x5
	.string	"BitwiseOR_e"
	.byte	0xa
	.byte	0x3c
	.uaword	0x195
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x5
	.string	"Delay_DSTATE"
	.byte	0xa
	.byte	0x3d
	.uaword	0x195
	.byte	0x2
	.byte	0x23
	.uleb128 0x22
	.uleb128 0x5
	.string	"Delay_DSTATE_j"
	.byte	0xa
	.byte	0x3e
	.uaword	0x195
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x5
	.string	"Delay_DSTATE_d"
	.byte	0xa
	.byte	0x3f
	.uaword	0x195
	.byte	0x2
	.byte	0x23
	.uleb128 0x26
	.uleb128 0x5
	.string	"Delay_DSTATE_o"
	.byte	0xa
	.byte	0x40
	.uaword	0x195
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x5
	.string	"cnt_delay_DSTATE_i"
	.byte	0xa
	.byte	0x41
	.uaword	0x195
	.byte	0x2
	.byte	0x23
	.uleb128 0x2a
	.uleb128 0x5
	.string	"dis_cnt_DSTATE"
	.byte	0xa
	.byte	0x42
	.uaword	0x195
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x5
	.string	"en_cnt_DSTATE"
	.byte	0xa
	.byte	0x43
	.uaword	0x195
	.byte	0x2
	.byte	0x23
	.uleb128 0x2e
	.uleb128 0x5
	.string	"Merge_d"
	.byte	0xa
	.byte	0x44
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x5
	.string	"Merge_k"
	.byte	0xa
	.byte	0x45
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x31
	.uleb128 0x5
	.string	"Delay_DSTATE_k"
	.byte	0xa
	.byte	0x46
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x32
	.uleb128 0x6
	.uaword	.LASF19
	.byte	0xa
	.byte	0x47
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x33
	.byte	0
	.uleb128 0x3
	.string	"DW_HsfbDiag_f_T"
	.byte	0xa
	.byte	0x48
	.uaword	0x108a
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x9
	.uaword	0x11b
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.string	"long long int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.string	"long long unsigned int"
	.uleb128 0xa
	.string	"_Ifx_CPU_PSW_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x204
	.uaword	0x1409
	.uleb128 0xb
	.string	"CDC"
	.byte	0xb
	.uahalf	0x206
	.uaword	0x12d6
	.byte	0x4
	.byte	0x7
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"CDE"
	.byte	0xb
	.uahalf	0x207
	.uaword	0x12d6
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"GW"
	.byte	0xb
	.uahalf	0x208
	.uaword	0x12d6
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"IS"
	.byte	0xb
	.uahalf	0x209
	.uaword	0x12d6
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"IO"
	.byte	0xb
	.uahalf	0x20a
	.uaword	0x12d6
	.byte	0x4
	.byte	0x2
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"PRS"
	.byte	0xb
	.uahalf	0x20b
	.uaword	0x12d6
	.byte	0x4
	.byte	0x2
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"S"
	.byte	0xb
	.uahalf	0x20c
	.uaword	0x12d6
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"reserved_15"
	.byte	0xb
	.uahalf	0x20d
	.uaword	0x12d6
	.byte	0x4
	.byte	0xc
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"SAV"
	.byte	0xb
	.uahalf	0x20e
	.uaword	0x12d6
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"AV"
	.byte	0xb
	.uahalf	0x20f
	.uaword	0x12d6
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"SV"
	.byte	0xb
	.uahalf	0x210
	.uaword	0x12d6
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"V"
	.byte	0xb
	.uahalf	0x211
	.uaword	0x12d6
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"C"
	.byte	0xb
	.uahalf	0x212
	.uaword	0x12d6
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_CPU_PSW_Bits"
	.byte	0xb
	.uahalf	0x213
	.uaword	0x1306
	.uleb128 0xd
	.byte	0x4
	.byte	0xb
	.uahalf	0x467
	.uaword	0x144a
	.uleb128 0xe
	.string	"U"
	.byte	0xb
	.uahalf	0x469
	.uaword	0x11b
	.uleb128 0xe
	.string	"I"
	.byte	0xb
	.uahalf	0x46a
	.uaword	0x104
	.uleb128 0xe
	.string	"B"
	.byte	0xb
	.uahalf	0x46b
	.uaword	0x1409
	.byte	0
	.uleb128 0xc
	.string	"Ifx_CPU_PSW"
	.byte	0xb
	.uahalf	0x46c
	.uaword	0x1422
	.uleb128 0xf
	.byte	0x4
	.byte	0xc
	.byte	0x59
	.uaword	0x159f
	.uleb128 0x10
	.string	"MAIN_E_HW_B0"
	.sleb128 0
	.uleb128 0x10
	.string	"MAIN_E_HW_B01_X10"
	.sleb128 1
	.uleb128 0x10
	.string	"MAIN_E_HW_B01_X10_DV"
	.sleb128 2
	.uleb128 0x10
	.string	"MAIN_E_HW_B02_X10"
	.sleb128 3
	.uleb128 0x10
	.string	"MAIN_E_HW_B02_X10_DV"
	.sleb128 4
	.uleb128 0x10
	.string	"MAIN_E_HW_C0"
	.sleb128 5
	.uleb128 0x10
	.string	"MAIN_E_HW_C0_DV"
	.sleb128 6
	.uleb128 0x10
	.string	"MAIN_E_HW_C1"
	.sleb128 7
	.uleb128 0x10
	.string	"MAIN_E_HW_C1_DV"
	.sleb128 8
	.uleb128 0x10
	.string	"MAIN_E_HW_C1_C01"
	.sleb128 9
	.uleb128 0x10
	.string	"MAIN_E_HW_C1_C01_DV"
	.sleb128 10
	.uleb128 0x10
	.string	"MAIN_E_HW_C1_C02"
	.sleb128 11
	.uleb128 0x10
	.string	"MAIN_E_HW_C1_C02_DV"
	.sleb128 12
	.uleb128 0x10
	.string	"MAIN_E_HW_C1_BAK13"
	.sleb128 13
	.uleb128 0x10
	.string	"MAIN_E_HW_C1_BAK14"
	.sleb128 14
	.uleb128 0x10
	.string	"MAIN_E_HW_Reserved"
	.sleb128 15
	.byte	0
	.uleb128 0x3
	.string	"MAIN_E_HW_VER"
	.byte	0xc
	.byte	0x6a
	.uaword	0x145e
	.uleb128 0x4
	.byte	0x10
	.byte	0xc
	.byte	0x6c
	.uaword	0x1635
	.uleb128 0x5
	.string	"App"
	.byte	0xc
	.byte	0x6d
	.uaword	0x195
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"Meas"
	.byte	0xc
	.byte	0x6e
	.uaword	0x195
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x5
	.string	"Ctrl"
	.byte	0xc
	.byte	0x6f
	.uaword	0x195
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.string	"Pwm"
	.byte	0xc
	.byte	0x70
	.uaword	0x195
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x5
	.string	"Diag"
	.byte	0xc
	.byte	0x71
	.uaword	0x195
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"Ntc"
	.byte	0xc
	.byte	0x72
	.uaword	0x195
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x5
	.string	"State"
	.byte	0xc
	.byte	0x73
	.uaword	0x195
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x5
	.string	"Safety"
	.byte	0xc
	.byte	0x74
	.uaword	0x195
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.byte	0
	.uleb128 0x3
	.string	"MAIN_E_HW_VER_APP"
	.byte	0xc
	.byte	0x75
	.uaword	0x15b4
	.uleb128 0x4
	.byte	0x20
	.byte	0xc
	.byte	0x77
	.uaword	0x16a6
	.uleb128 0x5
	.string	"Code"
	.byte	0xc
	.byte	0x78
	.uaword	0x16a6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"CodeNum"
	.byte	0xc
	.byte	0x79
	.uaword	0x195
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"VerName"
	.byte	0xc
	.byte	0x7a
	.uaword	0x195
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x5
	.string	"Ver"
	.byte	0xc
	.byte	0x7b
	.uaword	0x159f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x5
	.string	"App"
	.byte	0xc
	.byte	0x7c
	.uaword	0x1635
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x7
	.uaword	0x195
	.uaword	0x16b6
	.uleb128 0x8
	.uaword	0x16d
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.string	"MAIN_S_HW_VER"
	.byte	0xc
	.byte	0x7d
	.uaword	0x164e
	.uleb128 0x11
	.byte	0x1
	.string	"HsfbDiag_MaxCheck"
	.byte	0x1
	.byte	0x81
	.byte	0x1
	.byte	0x1
	.uaword	0x173c
	.uleb128 0x12
	.string	"val"
	.byte	0x1
	.byte	0x81
	.uaword	0x1b6
	.uleb128 0x12
	.string	"max"
	.byte	0x1
	.byte	0x81
	.uaword	0x1b6
	.uleb128 0x12
	.string	"max_cnt"
	.byte	0x1
	.byte	0x81
	.uaword	0x195
	.uleb128 0x12
	.string	"max_out"
	.byte	0x1
	.byte	0x81
	.uaword	0x173c
	.uleb128 0x12
	.string	"localDW"
	.byte	0x1
	.byte	0x82
	.uaword	0x1742
	.uleb128 0x13
	.string	"Switch_cb"
	.byte	0x1
	.byte	0x84
	.uaword	0x195
	.byte	0
	.uleb128 0x14
	.byte	0x4
	.uaword	0x1cc
	.uleb128 0x14
	.byte	0x4
	.uaword	0x1026
	.uleb128 0x11
	.byte	0x1
	.string	"HsfbDiag_MaxHysCheck"
	.byte	0x1
	.byte	0x9a
	.byte	0x1
	.byte	0x1
	.uaword	0x17d2
	.uleb128 0x12
	.string	"val"
	.byte	0x1
	.byte	0x9a
	.uaword	0x1b6
	.uleb128 0x12
	.string	"maxH"
	.byte	0x1
	.byte	0x9a
	.uaword	0x1b6
	.uleb128 0x12
	.string	"maxL"
	.byte	0x1
	.byte	0x9a
	.uaword	0x1b6
	.uleb128 0x12
	.string	"max_cnt"
	.byte	0x1
	.byte	0x9a
	.uaword	0x195
	.uleb128 0x12
	.string	"max_out"
	.byte	0x1
	.byte	0x9a
	.uaword	0x173c
	.uleb128 0x12
	.string	"localDW"
	.byte	0x1
	.byte	0x9b
	.uaword	0x17d2
	.uleb128 0x15
	.uaword	.LASF20
	.byte	0x1
	.byte	0x9d
	.uaword	0x195
	.uleb128 0x13
	.string	"Merge_d"
	.byte	0x1
	.byte	0x9e
	.uaword	0x1cc
	.byte	0
	.uleb128 0x14
	.byte	0x4
	.uaword	0x1069
	.uleb128 0x16
	.byte	0x1
	.string	"HsfbDiag_ErrCode0_Calc"
	.byte	0x1
	.byte	0x3c
	.byte	0x1
	.uaword	.LFB202
	.uaword	.LFE202
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0x16
	.byte	0x1
	.string	"HsfbDiag_ErrCode1_Calc"
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.uaword	.LFB203
	.uaword	.LFE203
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0x17
	.uaword	0x16cb
	.uaword	.LFB204
	.uaword	.LFE204
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x186b
	.uleb128 0x18
	.uaword	0x16e7
	.uaword	.LLST0
	.uleb128 0x19
	.uaword	0x16f2
	.byte	0x1
	.byte	0x55
	.uleb128 0x18
	.uaword	0x16fd
	.uaword	.LLST1
	.uleb128 0x19
	.uaword	0x170c
	.byte	0x1
	.byte	0x64
	.uleb128 0x19
	.uaword	0x171b
	.byte	0x1
	.byte	0x65
	.uleb128 0x1a
	.uaword	0x172a
	.uaword	.LLST2
	.byte	0
	.uleb128 0x17
	.uaword	0x1748
	.uaword	.LFB205
	.uaword	.LFE205
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x18c2
	.uleb128 0x19
	.uaword	0x1767
	.byte	0x1
	.byte	0x54
	.uleb128 0x18
	.uaword	0x1772
	.uaword	.LLST3
	.uleb128 0x18
	.uaword	0x177e
	.uaword	.LLST4
	.uleb128 0x18
	.uaword	0x178a
	.uaword	.LLST5
	.uleb128 0x19
	.uaword	0x1799
	.byte	0x1
	.byte	0x64
	.uleb128 0x19
	.uaword	0x17a8
	.byte	0x1
	.byte	0x65
	.uleb128 0x1a
	.uaword	0x17b7
	.uaword	.LLST6
	.uleb128 0x1a
	.uaword	0x17c2
	.uaword	.LLST7
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.string	"HsfbDiag_RangeCheck_IproFet"
	.byte	0x1
	.byte	0xb3
	.byte	0x1
	.uaword	.LFB206
	.uaword	.LFE206
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0x1b
	.byte	0x1
	.string	"HsfbDiag_ErrCode2_Calc"
	.byte	0x1
	.byte	0xdf
	.byte	0x1
	.uaword	.LFB207
	.uaword	.LFE207
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x1c8d
	.uleb128 0x1c
	.string	"Sum_f"
	.byte	0x1
	.byte	0xe1
	.uaword	0x18a
	.uaword	.LLST8
	.uleb128 0x1c
	.string	"RelationalOperator_cu"
	.byte	0x1
	.byte	0xe2
	.uaword	0x1cc
	.uaword	.LLST9
	.uleb128 0x1c
	.string	"Merge"
	.byte	0x1
	.byte	0xe3
	.uaword	0x1cc
	.uaword	.LLST10
	.uleb128 0x1c
	.string	"RelationalOperator_jh"
	.byte	0x1
	.byte	0xe4
	.uaword	0x1cc
	.uaword	.LLST11
	.uleb128 0x1c
	.string	"LogicalOperator1"
	.byte	0x1
	.byte	0xe5
	.uaword	0x1cc
	.uaword	.LLST12
	.uleb128 0x1c
	.string	"LogicalOperator_p"
	.byte	0x1
	.byte	0xe6
	.uaword	0x1cc
	.uaword	.LLST13
	.uleb128 0x1d
	.uaword	.LASF20
	.byte	0x1
	.byte	0xe7
	.uaword	0x195
	.uaword	.LLST14
	.uleb128 0x1c
	.string	"Add"
	.byte	0x1
	.byte	0xe8
	.uaword	0x1b6
	.uaword	.LLST15
	.uleb128 0x1e
	.uaword	0x16cb
	.uaword	.LBB18
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0xf1
	.uaword	0x1a28
	.uleb128 0x19
	.uaword	0x171b
	.byte	0x6
	.byte	0x3
	.uaword	HsfbDiag_DW+16
	.byte	0x9f
	.uleb128 0x19
	.uaword	0x170c
	.byte	0x6
	.byte	0x3
	.uaword	HsfbDiag_ErrCode2+4
	.byte	0x9f
	.uleb128 0x1f
	.uaword	0x16fd
	.byte	0x64
	.uleb128 0x20
	.uaword	0x16f2
	.byte	0x4
	.uaword	0x43af0000
	.uleb128 0x18
	.uaword	0x16e7
	.uaword	.LLST16
	.uleb128 0x21
	.uaword	.Ldebug_ranges0+0x28
	.uleb128 0x1a
	.uaword	0x172a
	.uaword	.LLST17
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uaword	0x16cb
	.uaword	.LBB23
	.uaword	.Ldebug_ranges0+0x50
	.byte	0x1
	.byte	0xf3
	.uaword	0x1a78
	.uleb128 0x18
	.uaword	0x171b
	.uaword	.LLST18
	.uleb128 0x18
	.uaword	0x170c
	.uaword	.LLST19
	.uleb128 0x18
	.uaword	0x16fd
	.uaword	.LLST20
	.uleb128 0x18
	.uaword	0x16f2
	.uaword	.LLST21
	.uleb128 0x18
	.uaword	0x16e7
	.uaword	.LLST22
	.uleb128 0x21
	.uaword	.Ldebug_ranges0+0x78
	.uleb128 0x1a
	.uaword	0x172a
	.uaword	.LLST23
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uaword	0x16cb
	.uaword	.LBB30
	.uaword	.Ldebug_ranges0+0xa0
	.byte	0x1
	.byte	0xf5
	.uaword	0x1ac8
	.uleb128 0x18
	.uaword	0x171b
	.uaword	.LLST24
	.uleb128 0x18
	.uaword	0x170c
	.uaword	.LLST25
	.uleb128 0x18
	.uaword	0x16fd
	.uaword	.LLST26
	.uleb128 0x18
	.uaword	0x16f2
	.uaword	.LLST27
	.uleb128 0x18
	.uaword	0x16e7
	.uaword	.LLST28
	.uleb128 0x21
	.uaword	.Ldebug_ranges0+0xc0
	.uleb128 0x1a
	.uaword	0x172a
	.uaword	.LLST29
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uaword	0x1748
	.uaword	.LBB35
	.uaword	.Ldebug_ranges0+0xe0
	.byte	0x1
	.byte	0xf7
	.uaword	0x1b2a
	.uleb128 0x18
	.uaword	0x17a8
	.uaword	.LLST30
	.uleb128 0x18
	.uaword	0x1799
	.uaword	.LLST31
	.uleb128 0x18
	.uaword	0x178a
	.uaword	.LLST32
	.uleb128 0x18
	.uaword	0x177e
	.uaword	.LLST33
	.uleb128 0x18
	.uaword	0x1772
	.uaword	.LLST34
	.uleb128 0x18
	.uaword	0x1767
	.uaword	.LLST35
	.uleb128 0x21
	.uaword	.Ldebug_ranges0+0xf8
	.uleb128 0x1a
	.uaword	0x17b7
	.uaword	.LLST36
	.uleb128 0x1a
	.uaword	0x17c2
	.uaword	.LLST37
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uaword	0x1748
	.uaword	.LBB38
	.uaword	.Ldebug_ranges0+0x110
	.byte	0x1
	.byte	0xfb
	.uaword	0x1b8c
	.uleb128 0x18
	.uaword	0x17a8
	.uaword	.LLST38
	.uleb128 0x18
	.uaword	0x1799
	.uaword	.LLST39
	.uleb128 0x18
	.uaword	0x178a
	.uaword	.LLST40
	.uleb128 0x18
	.uaword	0x177e
	.uaword	.LLST41
	.uleb128 0x18
	.uaword	0x1772
	.uaword	.LLST42
	.uleb128 0x18
	.uaword	0x1767
	.uaword	.LLST43
	.uleb128 0x21
	.uaword	.Ldebug_ranges0+0x130
	.uleb128 0x1a
	.uaword	0x17b7
	.uaword	.LLST44
	.uleb128 0x1a
	.uaword	0x17c2
	.uaword	.LLST45
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uaword	0x1748
	.uaword	.LBB42
	.uaword	.Ldebug_ranges0+0x150
	.byte	0x1
	.byte	0xff
	.uaword	0x1bee
	.uleb128 0x18
	.uaword	0x17a8
	.uaword	.LLST46
	.uleb128 0x18
	.uaword	0x1799
	.uaword	.LLST47
	.uleb128 0x18
	.uaword	0x178a
	.uaword	.LLST48
	.uleb128 0x18
	.uaword	0x177e
	.uaword	.LLST49
	.uleb128 0x18
	.uaword	0x1772
	.uaword	.LLST50
	.uleb128 0x18
	.uaword	0x1767
	.uaword	.LLST51
	.uleb128 0x21
	.uaword	.Ldebug_ranges0+0x180
	.uleb128 0x1a
	.uaword	0x17b7
	.uaword	.LLST52
	.uleb128 0x1a
	.uaword	0x17c2
	.uaword	.LLST53
	.byte	0
	.byte	0
	.uleb128 0x22
	.uaword	0x16cb
	.uaword	.LBB51
	.uaword	.Ldebug_ranges0+0x1b0
	.byte	0x1
	.uahalf	0x103
	.uaword	0x1c3f
	.uleb128 0x18
	.uaword	0x171b
	.uaword	.LLST54
	.uleb128 0x18
	.uaword	0x170c
	.uaword	.LLST55
	.uleb128 0x18
	.uaword	0x16fd
	.uaword	.LLST56
	.uleb128 0x18
	.uaword	0x16f2
	.uaword	.LLST57
	.uleb128 0x18
	.uaword	0x16e7
	.uaword	.LLST58
	.uleb128 0x21
	.uaword	.Ldebug_ranges0+0x1d8
	.uleb128 0x1a
	.uaword	0x172a
	.uaword	.LLST59
	.byte	0
	.byte	0
	.uleb128 0x23
	.uaword	0x16cb
	.uaword	.LBB58
	.uaword	.Ldebug_ranges0+0x200
	.byte	0x1
	.uahalf	0x105
	.uleb128 0x18
	.uaword	0x171b
	.uaword	.LLST60
	.uleb128 0x18
	.uaword	0x170c
	.uaword	.LLST61
	.uleb128 0x18
	.uaword	0x16fd
	.uaword	.LLST62
	.uleb128 0x18
	.uaword	0x16f2
	.uaword	.LLST63
	.uleb128 0x18
	.uaword	0x16e7
	.uaword	.LLST64
	.uleb128 0x21
	.uaword	.Ldebug_ranges0+0x228
	.uleb128 0x1a
	.uaword	0x172a
	.uaword	.LLST65
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.string	"HsfbDiag_ErrCode3_Calc"
	.byte	0x1
	.uahalf	0x162
	.byte	0x1
	.uaword	.LFB208
	.uaword	.LFE208
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0x25
	.byte	0x1
	.string	"HsfbDiag_ErrCode_Latch"
	.byte	0x1
	.uahalf	0x183
	.byte	0x1
	.uaword	.LFB209
	.uaword	.LFE209
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x1cf2
	.uleb128 0x26
	.string	"tmp"
	.byte	0x1
	.uahalf	0x185
	.uaword	0x195
	.uaword	.LLST66
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.string	"HsfbDiag_ErrCode_Mux"
	.byte	0x1
	.uahalf	0x1b9
	.byte	0x1
	.uaword	.LFB210
	.uaword	.LFE210
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0x25
	.byte	0x1
	.string	"HsfbDiag_Call1ms"
	.byte	0x1
	.uahalf	0x207
	.byte	0x1
	.uaword	.LFB211
	.uaword	.LFE211
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x1df3
	.uleb128 0x27
	.string	"PortStatus1ms"
	.byte	0x1
	.uahalf	0x207
	.uaword	0x1df3
	.uaword	.LLST67
	.uleb128 0x27
	.string	"MeasStatus1ms"
	.byte	0x1
	.uahalf	0x208
	.uaword	0x1dfe
	.uaword	.LLST68
	.uleb128 0x27
	.string	"CtrlStatus15us"
	.byte	0x1
	.uahalf	0x209
	.uaword	0x1e09
	.uaword	.LLST69
	.uleb128 0x27
	.string	"NtcStatus10ms"
	.byte	0x1
	.uahalf	0x20a
	.uaword	0x1e14
	.uaword	.LLST70
	.uleb128 0x28
	.string	"StateStatus"
	.byte	0x1
	.uahalf	0x20b
	.uaword	0x1e1f
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x28
	.string	"SafetyStatus1ms"
	.byte	0x1
	.uahalf	0x20b
	.uaword	0x1e2a
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x28
	.string	"DiagStatus1ms"
	.byte	0x1
	.uahalf	0x20c
	.uaword	0x1e35
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0
	.uleb128 0x14
	.byte	0x4
	.uaword	0x1df9
	.uleb128 0x29
	.uaword	0xf01
	.uleb128 0x14
	.byte	0x4
	.uaword	0x1e04
	.uleb128 0x29
	.uaword	0x990
	.uleb128 0x14
	.byte	0x4
	.uaword	0x1e0f
	.uleb128 0x29
	.uaword	0xff2
	.uleb128 0x14
	.byte	0x4
	.uaword	0x1e1a
	.uleb128 0x29
	.uaword	0xb18
	.uleb128 0x14
	.byte	0x4
	.uaword	0x1e25
	.uleb128 0x29
	.uaword	0xa4d
	.uleb128 0x14
	.byte	0x4
	.uaword	0x1e30
	.uleb128 0x29
	.uaword	0xe06
	.uleb128 0x14
	.byte	0x4
	.uaword	0x852
	.uleb128 0x24
	.byte	0x1
	.string	"HsfbDiag_CallInit"
	.byte	0x1
	.uahalf	0x22c
	.byte	0x1
	.uaword	.LFB212
	.uaword	.LFE212
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0x2a
	.string	"HsfbDiag_ErrCode0"
	.byte	0x1
	.byte	0x14
	.uaword	0x316
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	HsfbDiag_ErrCode0
	.uleb128 0x2a
	.string	"HsfbDiag_ErrCode1"
	.byte	0x1
	.byte	0x15
	.uaword	0x440
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	HsfbDiag_ErrCode1
	.uleb128 0x2a
	.string	"HsfbDiag_ErrCode2"
	.byte	0x1
	.byte	0x16
	.uaword	0x5b2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	HsfbDiag_ErrCode2
	.uleb128 0x2a
	.string	"HsfbDiag_ErrCode3"
	.byte	0x1
	.byte	0x17
	.uaword	0x6ce
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	HsfbDiag_ErrCode3
	.uleb128 0x2a
	.string	"HsfbDiag_EnDis"
	.byte	0x1
	.byte	0x18
	.uaword	0x726
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	HsfbDiag_EnDis
	.uleb128 0x2a
	.string	"HsfbDiag_ErrMask"
	.byte	0x1
	.byte	0x19
	.uaword	0x793
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	HsfbDiag_ErrMask
	.uleb128 0x2a
	.string	"HsfbDiag_LatchReset"
	.byte	0x1
	.byte	0x1a
	.uaword	0x1cc
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	HsfbDiag_LatchReset
	.uleb128 0x2a
	.string	"HsfbDiag_ErrCode0En"
	.byte	0x1
	.byte	0x1b
	.uaword	0x1cc
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	HsfbDiag_ErrCode0En
	.uleb128 0x2a
	.string	"HsfbDiag_DW"
	.byte	0x1
	.byte	0x22
	.uaword	0x12b3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	HsfbDiag_DW
	.uleb128 0x2b
	.string	"PSWReg_Rd0"
	.byte	0xd
	.byte	0x45
	.uaword	0x144a
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.string	"PSWReg_Rd1"
	.byte	0xd
	.byte	0x46
	.uaword	0x144a
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.string	"PSWReg_Rd2"
	.byte	0xd
	.byte	0x47
	.uaword	0x144a
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.string	"PSWReg_Rd3"
	.byte	0xd
	.byte	0x48
	.uaword	0x144a
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.string	"Main_HwVer"
	.byte	0xc
	.byte	0x89
	.uaword	0x16b6
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.string	"SafetyError"
	.byte	0xc
	.byte	0x8b
	.uaword	0xd9a
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.string	"DebugError"
	.byte	0xc
	.byte	0x8c
	.uaword	0xd9a
	.byte	0x1
	.byte	0x1
	.uleb128 0x2a
	.string	"HsfbDiag_PortStatus1ms"
	.byte	0x1
	.byte	0x2b
	.uaword	0x1df3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	HsfbDiag_PortStatus1ms
	.uleb128 0x2a
	.string	"HsfbDiag_MeasStatus1ms"
	.byte	0x1
	.byte	0x2c
	.uaword	0x1dfe
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	HsfbDiag_MeasStatus1ms
	.uleb128 0x2a
	.string	"HsfbDiag_CtrlStatus15us"
	.byte	0x1
	.byte	0x2d
	.uaword	0x1e09
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	HsfbDiag_CtrlStatus15us
	.uleb128 0x2a
	.string	"HsfbDiag_NtcStatus10ms"
	.byte	0x1
	.byte	0x2e
	.uaword	0x1e14
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	HsfbDiag_NtcStatus10ms
	.uleb128 0x2a
	.string	"HsfbDiag_SafetyStatus1ms"
	.byte	0x1
	.byte	0x2f
	.uaword	0x1e2a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	HsfbDiag_SafetyStatus1ms
	.uleb128 0x2a
	.string	"HsfbDiag_DiagStatus1ms"
	.byte	0x1
	.byte	0x30
	.uaword	0x1e35
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	HsfbDiag_DiagStatus1ms
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
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
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
	.uleb128 0x17
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xa
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
	.uleb128 0x24
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL3
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL2
	.uaword	.LVL4
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL5
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL5
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL5
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL12
	.uaword	.LFE205
	.uahalf	0x1
	.byte	0x57
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL8
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL7
	.uaword	.LVL9
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL63
	.uaword	.LVL64
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL72
	.uaword	.LVL73
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL81
	.uaword	.LVL82
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL51
	.uaword	.LVL56
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL52
	.uaword	.LVL53
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL50
	.uaword	.LVL62-1
	.uahalf	0x7
	.byte	0x74
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.uaword	.LVL75
	.uaword	.LVL76
	.uahalf	0x7
	.byte	0x74
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL48
	.uaword	.LVL50
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL61
	.uaword	.LVL64
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL70
	.uaword	.LVL71
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL72
	.uaword	.LVL75
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL81
	.uaword	.LFE207
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL49
	.uaword	.LVL62-1
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL70
	.uaword	.LVL72
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL74
	.uaword	.LVL75
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL75
	.uaword	.LVL76
	.uahalf	0x1
	.byte	0x57
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL52
	.uaword	.LVL53
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL53
	.uaword	.LVL54
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL54
	.uaword	.LVL55
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL59
	.uaword	.LVL60
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL14
	.uaword	.LVL58
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL64
	.uaword	.LVL72
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL76
	.uaword	.LVL81
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL15
	.uaword	.LVL62-1
	.uahalf	0x8
	.byte	0x3
	.uaword	HsfbDiag_MeasStatus1ms
	.byte	0x6
	.byte	0x23
	.uleb128 0x14
	.uaword	.LVL64
	.uaword	.LVL66
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL66
	.uaword	.LVL72
	.uahalf	0x2
	.byte	0x82
	.sleb128 20
	.uaword	.LVL75
	.uaword	.LVL81
	.uahalf	0x2
	.byte	0x82
	.sleb128 20
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL16
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL18
	.uaword	.LVL64
	.uahalf	0x6
	.byte	0x3
	.uaword	HsfbDiag_DW+14
	.byte	0x9f
	.uaword	.LVL65
	.uaword	.LFE207
	.uahalf	0x6
	.byte	0x3
	.uaword	HsfbDiag_DW+14
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL18
	.uaword	.LVL64
	.uahalf	0x6
	.byte	0x3
	.uaword	HsfbDiag_ErrCode2+5
	.byte	0x9f
	.uaword	.LVL65
	.uaword	.LFE207
	.uahalf	0x6
	.byte	0x3
	.uaword	HsfbDiag_ErrCode2+5
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL18
	.uaword	.LVL64
	.uahalf	0x3
	.byte	0x8
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL65
	.uaword	.LFE207
	.uahalf	0x3
	.byte	0x8
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL65
	.uaword	.LVL66
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL66
	.uaword	.LVL67
	.uahalf	0x2
	.byte	0x82
	.sleb128 20
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL18
	.uaword	.LVL64
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0xc37a0000
	.uaword	.LVL65
	.uaword	.LFE207
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0xc37a0000
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL19
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL21
	.uaword	.LVL64
	.uahalf	0x6
	.byte	0x3
	.uaword	HsfbDiag_DW+12
	.byte	0x9f
	.uaword	.LVL68
	.uaword	.LFE207
	.uahalf	0x6
	.byte	0x3
	.uaword	HsfbDiag_DW+12
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL21
	.uaword	.LVL64
	.uahalf	0x6
	.byte	0x3
	.uaword	HsfbDiag_ErrCode2+6
	.byte	0x9f
	.uaword	.LVL68
	.uaword	.LFE207
	.uahalf	0x6
	.byte	0x3
	.uaword	HsfbDiag_ErrCode2+6
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL21
	.uaword	.LVL64
	.uahalf	0x3
	.byte	0x8
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL68
	.uaword	.LFE207
	.uahalf	0x3
	.byte	0x8
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL21
	.uaword	.LVL64
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0x44548000
	.uaword	.LVL68
	.uaword	.LFE207
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0x44548000
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL21
	.uaword	.LVL62-1
	.uahalf	0x8
	.byte	0x3
	.uaword	HsfbDiag_MeasStatus1ms
	.byte	0x6
	.byte	0x23
	.uleb128 0xc
	.uaword	.LVL68
	.uaword	.LVL69
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL69
	.uaword	.LVL72
	.uahalf	0x2
	.byte	0x82
	.sleb128 12
	.uaword	.LVL75
	.uaword	.LVL81
	.uahalf	0x2
	.byte	0x82
	.sleb128 12
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL22
	.uaword	.LVL23
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL24
	.uaword	.LVL64
	.uahalf	0x6
	.byte	0x3
	.uaword	HsfbDiag_DW+8
	.byte	0x9f
	.uaword	.LVL70
	.uaword	.LFE207
	.uahalf	0x6
	.byte	0x3
	.uaword	HsfbDiag_DW+8
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST31:
	.uaword	.LVL24
	.uaword	.LVL64
	.uahalf	0x6
	.byte	0x3
	.uaword	HsfbDiag_ErrCode2+8
	.byte	0x9f
	.uaword	.LVL70
	.uaword	.LFE207
	.uahalf	0x6
	.byte	0x3
	.uaword	HsfbDiag_ErrCode2+8
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST32:
	.uaword	.LVL24
	.uaword	.LVL64
	.uahalf	0x3
	.byte	0x8
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL70
	.uaword	.LFE207
	.uahalf	0x3
	.byte	0x8
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST33:
	.uaword	.LVL24
	.uaword	.LVL64
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0x42f00000
	.uaword	.LVL70
	.uaword	.LFE207
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0x42f00000
	.uaword	0
	.uaword	0
.LLST34:
	.uaword	.LVL24
	.uaword	.LVL64
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0x43110000
	.uaword	.LVL70
	.uaword	.LFE207
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0x43110000
	.uaword	0
	.uaword	0
.LLST35:
	.uaword	.LVL24
	.uaword	.LVL25
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST36:
	.uaword	.LVL27
	.uaword	.LVL28
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST37:
	.uaword	.LVL26
	.uaword	.LVL29
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST38:
	.uaword	.LVL30
	.uaword	.LVL64
	.uahalf	0x6
	.byte	0x3
	.uaword	HsfbDiag_DW+4
	.byte	0x9f
	.uaword	.LVL70
	.uaword	.LVL79
	.uahalf	0x6
	.byte	0x3
	.uaword	HsfbDiag_DW+4
	.byte	0x9f
	.uaword	.LVL80
	.uaword	.LFE207
	.uahalf	0x6
	.byte	0x3
	.uaword	HsfbDiag_DW+4
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST39:
	.uaword	.LVL30
	.uaword	.LVL64
	.uahalf	0x6
	.byte	0x3
	.uaword	HsfbDiag_ErrCode2+9
	.byte	0x9f
	.uaword	.LVL70
	.uaword	.LVL79
	.uahalf	0x6
	.byte	0x3
	.uaword	HsfbDiag_ErrCode2+9
	.byte	0x9f
	.uaword	.LVL80
	.uaword	.LFE207
	.uahalf	0x6
	.byte	0x3
	.uaword	HsfbDiag_ErrCode2+9
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST40:
	.uaword	.LVL30
	.uaword	.LVL64
	.uahalf	0x3
	.byte	0x8
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL70
	.uaword	.LVL79
	.uahalf	0x3
	.byte	0x8
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL80
	.uaword	.LFE207
	.uahalf	0x3
	.byte	0x8
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST41:
	.uaword	.LVL30
	.uaword	.LVL64
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0x42dc0000
	.uaword	.LVL70
	.uaword	.LVL79
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0x42dc0000
	.uaword	.LVL80
	.uaword	.LFE207
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0x42dc0000
	.uaword	0
	.uaword	0
.LLST42:
	.uaword	.LVL30
	.uaword	.LVL64
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0x43070000
	.uaword	.LVL70
	.uaword	.LVL79
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0x43070000
	.uaword	.LVL80
	.uaword	.LFE207
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0x43070000
	.uaword	0
	.uaword	0
.LLST43:
	.uaword	.LVL30
	.uaword	.LVL31
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST44:
	.uaword	.LVL33
	.uaword	.LVL34
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST45:
	.uaword	.LVL32
	.uaword	.LVL35
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST46:
	.uaword	.LVL36
	.uaword	.LVL64
	.uahalf	0x6
	.byte	0x3
	.uaword	HsfbDiag_DW
	.byte	0x9f
	.uaword	.LVL70
	.uaword	.LVL78
	.uahalf	0x6
	.byte	0x3
	.uaword	HsfbDiag_DW
	.byte	0x9f
	.uaword	.LVL80
	.uaword	.LFE207
	.uahalf	0x6
	.byte	0x3
	.uaword	HsfbDiag_DW
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST47:
	.uaword	.LVL36
	.uaword	.LVL64
	.uahalf	0x6
	.byte	0x3
	.uaword	HsfbDiag_ErrCode2+10
	.byte	0x9f
	.uaword	.LVL70
	.uaword	.LVL78
	.uahalf	0x6
	.byte	0x3
	.uaword	HsfbDiag_ErrCode2+10
	.byte	0x9f
	.uaword	.LVL80
	.uaword	.LFE207
	.uahalf	0x6
	.byte	0x3
	.uaword	HsfbDiag_ErrCode2+10
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST48:
	.uaword	.LVL36
	.uaword	.LVL64
	.uahalf	0x3
	.byte	0x8
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL70
	.uaword	.LVL78
	.uahalf	0x3
	.byte	0x8
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL80
	.uaword	.LFE207
	.uahalf	0x3
	.byte	0x8
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST49:
	.uaword	.LVL36
	.uaword	.LVL64
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0x42dc0000
	.uaword	.LVL70
	.uaword	.LVL78
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0x42dc0000
	.uaword	.LVL80
	.uaword	.LFE207
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0x42dc0000
	.uaword	0
	.uaword	0
.LLST50:
	.uaword	.LVL36
	.uaword	.LVL64
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0x43070000
	.uaword	.LVL70
	.uaword	.LVL78
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0x43070000
	.uaword	.LVL80
	.uaword	.LFE207
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0x43070000
	.uaword	0
	.uaword	0
.LLST51:
	.uaword	.LVL36
	.uaword	.LVL37
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST52:
	.uaword	.LVL39
	.uaword	.LVL40
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST53:
	.uaword	.LVL38
	.uaword	.LVL41
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST54:
	.uaword	.LVL42
	.uaword	.LVL64
	.uahalf	0x6
	.byte	0x3
	.uaword	HsfbDiag_DW+20
	.byte	0x9f
	.uaword	.LVL70
	.uaword	.LVL78
	.uahalf	0x6
	.byte	0x3
	.uaword	HsfbDiag_DW+20
	.byte	0x9f
	.uaword	.LVL81
	.uaword	.LFE207
	.uahalf	0x6
	.byte	0x3
	.uaword	HsfbDiag_DW+20
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST55:
	.uaword	.LVL42
	.uaword	.LVL64
	.uahalf	0x6
	.byte	0x3
	.uaword	HsfbDiag_ErrCode2+11
	.byte	0x9f
	.uaword	.LVL70
	.uaword	.LVL78
	.uahalf	0x6
	.byte	0x3
	.uaword	HsfbDiag_ErrCode2+11
	.byte	0x9f
	.uaword	.LVL81
	.uaword	.LFE207
	.uahalf	0x6
	.byte	0x3
	.uaword	HsfbDiag_ErrCode2+11
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST56:
	.uaword	.LVL42
	.uaword	.LVL64
	.uahalf	0x3
	.byte	0x8
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL70
	.uaword	.LVL78
	.uahalf	0x3
	.byte	0x8
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL81
	.uaword	.LFE207
	.uahalf	0x3
	.byte	0x8
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST57:
	.uaword	.LVL42
	.uaword	.LVL64
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0x41800000
	.uaword	.LVL70
	.uaword	.LVL78
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0x41800000
	.uaword	.LVL81
	.uaword	.LFE207
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0x41800000
	.uaword	0
	.uaword	0
.LLST58:
	.uaword	.LVL42
	.uaword	.LVL62-1
	.uahalf	0x8
	.byte	0x3
	.uaword	HsfbDiag_MeasStatus1ms
	.byte	0x6
	.byte	0x23
	.uleb128 0x34
	.uaword	.LVL70
	.uaword	.LVL72
	.uahalf	0x2
	.byte	0x82
	.sleb128 52
	.uaword	.LVL75
	.uaword	.LVL78
	.uahalf	0x2
	.byte	0x82
	.sleb128 52
	.uaword	0
	.uaword	0
.LLST59:
	.uaword	.LVL43
	.uaword	.LVL44
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST60:
	.uaword	.LVL45
	.uaword	.LVL64
	.uahalf	0x6
	.byte	0x3
	.uaword	HsfbDiag_DW+18
	.byte	0x9f
	.uaword	.LVL70
	.uaword	.LVL77
	.uahalf	0x6
	.byte	0x3
	.uaword	HsfbDiag_DW+18
	.byte	0x9f
	.uaword	.LVL81
	.uaword	.LFE207
	.uahalf	0x6
	.byte	0x3
	.uaword	HsfbDiag_DW+18
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST61:
	.uaword	.LVL45
	.uaword	.LVL64
	.uahalf	0x6
	.byte	0x3
	.uaword	HsfbDiag_ErrCode2+12
	.byte	0x9f
	.uaword	.LVL70
	.uaword	.LVL77
	.uahalf	0x6
	.byte	0x3
	.uaword	HsfbDiag_ErrCode2+12
	.byte	0x9f
	.uaword	.LVL81
	.uaword	.LFE207
	.uahalf	0x6
	.byte	0x3
	.uaword	HsfbDiag_ErrCode2+12
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST62:
	.uaword	.LVL45
	.uaword	.LVL64
	.uahalf	0x3
	.byte	0x8
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL70
	.uaword	.LVL77
	.uahalf	0x3
	.byte	0x8
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL81
	.uaword	.LFE207
	.uahalf	0x3
	.byte	0x8
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST63:
	.uaword	.LVL45
	.uaword	.LVL62-1
	.uahalf	0x8
	.byte	0x3
	.uaword	HsfbDiag_MeasStatus1ms
	.byte	0x6
	.byte	0x23
	.uleb128 0x34
	.uaword	.LVL70
	.uaword	.LVL72
	.uahalf	0x2
	.byte	0x82
	.sleb128 52
	.uaword	.LVL75
	.uaword	.LVL77
	.uahalf	0x2
	.byte	0x82
	.sleb128 52
	.uaword	0
	.uaword	0
.LLST64:
	.uaword	.LVL45
	.uaword	.LVL64
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0x41100000
	.uaword	.LVL70
	.uaword	.LVL77
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0x41100000
	.uaword	.LVL81
	.uaword	.LFE207
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0x41100000
	.uaword	0
	.uaword	0
.LLST65:
	.uaword	.LVL46
	.uaword	.LVL47
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST66:
	.uaword	.LVL83
	.uaword	.LVL84
	.uahalf	0x5
	.byte	0x3
	.uaword	HsfbDiag_DW+28
	.uaword	0
	.uaword	0
.LLST67:
	.uaword	.LVL85
	.uaword	.LVL86-1
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST68:
	.uaword	.LVL85
	.uaword	.LVL86-1
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST69:
	.uaword	.LVL85
	.uaword	.LVL86-1
	.uahalf	0x1
	.byte	0x66
	.uaword	0
	.uaword	0
.LLST70:
	.uaword	.LVL85
	.uaword	.LVL86-1
	.uahalf	0x1
	.byte	0x67
	.uaword	0
	.uaword	0
	.section .debug_aranges,"",@progbits
	.uaword	0x6c
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB202
	.uaword	.LFE202-.LFB202
	.uaword	.LFB203
	.uaword	.LFE203-.LFB203
	.uaword	.LFB204
	.uaword	.LFE204-.LFB204
	.uaword	.LFB205
	.uaword	.LFE205-.LFB205
	.uaword	.LFB206
	.uaword	.LFE206-.LFB206
	.uaword	.LFB207
	.uaword	.LFE207-.LFB207
	.uaword	.LFB208
	.uaword	.LFE208-.LFB208
	.uaword	.LFB209
	.uaword	.LFE209-.LFB209
	.uaword	.LFB210
	.uaword	.LFE210-.LFB210
	.uaword	.LFB211
	.uaword	.LFE211-.LFB211
	.uaword	.LFB212
	.uaword	.LFE212-.LFB212
	.uaword	0
	.uaword	0
	.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB18
	.uaword	.LBE18
	.uaword	.LBB28
	.uaword	.LBE28
	.uaword	.LBB66
	.uaword	.LBE66
	.uaword	.LBB68
	.uaword	.LBE68
	.uaword	0
	.uaword	0
	.uaword	.LBB19
	.uaword	.LBE19
	.uaword	.LBB20
	.uaword	.LBE20
	.uaword	.LBB21
	.uaword	.LBE21
	.uaword	.LBB22
	.uaword	.LBE22
	.uaword	0
	.uaword	0
	.uaword	.LBB23
	.uaword	.LBE23
	.uaword	.LBB29
	.uaword	.LBE29
	.uaword	.LBB67
	.uaword	.LBE67
	.uaword	.LBB69
	.uaword	.LBE69
	.uaword	0
	.uaword	0
	.uaword	.LBB24
	.uaword	.LBE24
	.uaword	.LBB25
	.uaword	.LBE25
	.uaword	.LBB26
	.uaword	.LBE26
	.uaword	.LBB27
	.uaword	.LBE27
	.uaword	0
	.uaword	0
	.uaword	.LBB30
	.uaword	.LBE30
	.uaword	.LBB34
	.uaword	.LBE34
	.uaword	.LBB70
	.uaword	.LBE70
	.uaword	0
	.uaword	0
	.uaword	.LBB31
	.uaword	.LBE31
	.uaword	.LBB32
	.uaword	.LBE32
	.uaword	.LBB33
	.uaword	.LBE33
	.uaword	0
	.uaword	0
	.uaword	.LBB35
	.uaword	.LBE35
	.uaword	.LBB74
	.uaword	.LBE74
	.uaword	0
	.uaword	0
	.uaword	.LBB36
	.uaword	.LBE36
	.uaword	.LBB37
	.uaword	.LBE37
	.uaword	0
	.uaword	0
	.uaword	.LBB38
	.uaword	.LBE38
	.uaword	.LBB48
	.uaword	.LBE48
	.uaword	.LBB73
	.uaword	.LBE73
	.uaword	0
	.uaword	0
	.uaword	.LBB39
	.uaword	.LBE39
	.uaword	.LBB40
	.uaword	.LBE40
	.uaword	.LBB41
	.uaword	.LBE41
	.uaword	0
	.uaword	0
	.uaword	.LBB42
	.uaword	.LBE42
	.uaword	.LBB49
	.uaword	.LBE49
	.uaword	.LBB50
	.uaword	.LBE50
	.uaword	.LBB56
	.uaword	.LBE56
	.uaword	.LBB75
	.uaword	.LBE75
	.uaword	0
	.uaword	0
	.uaword	.LBB43
	.uaword	.LBE43
	.uaword	.LBB44
	.uaword	.LBE44
	.uaword	.LBB45
	.uaword	.LBE45
	.uaword	.LBB46
	.uaword	.LBE46
	.uaword	.LBB47
	.uaword	.LBE47
	.uaword	0
	.uaword	0
	.uaword	.LBB51
	.uaword	.LBE51
	.uaword	.LBB57
	.uaword	.LBE57
	.uaword	.LBB63
	.uaword	.LBE63
	.uaword	.LBB72
	.uaword	.LBE72
	.uaword	0
	.uaword	0
	.uaword	.LBB52
	.uaword	.LBE52
	.uaword	.LBB53
	.uaword	.LBE53
	.uaword	.LBB54
	.uaword	.LBE54
	.uaword	.LBB55
	.uaword	.LBE55
	.uaword	0
	.uaword	0
	.uaword	.LBB58
	.uaword	.LBE58
	.uaword	.LBB64
	.uaword	.LBE64
	.uaword	.LBB65
	.uaword	.LBE65
	.uaword	.LBB71
	.uaword	.LBE71
	.uaword	0
	.uaword	0
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
	.uaword	.LFB202
	.uaword	.LFE202
	.uaword	.LFB203
	.uaword	.LFE203
	.uaword	.LFB204
	.uaword	.LFE204
	.uaword	.LFB205
	.uaword	.LFE205
	.uaword	.LFB206
	.uaword	.LFE206
	.uaword	.LFB207
	.uaword	.LFE207
	.uaword	.LFB208
	.uaword	.LFE208
	.uaword	.LFB209
	.uaword	.LFE209
	.uaword	.LFB210
	.uaword	.LFE210
	.uaword	.LFB211
	.uaword	.LFE211
	.uaword	.LFB212
	.uaword	.LFE212
	.uaword	0
	.uaword	0
	.section .debug_line,"",@progbits
.Ldebug_line0:
	.section .debug_str,"",@progbits
.LASF5:
	.string	"BoostRampFail"
.LASF4:
	.string	"AutoDiagWait"
.LASF6:
	.string	"Reserved5"
.LASF7:
	.string	"Reserved6"
.LASF8:
	.string	"Reserved7"
.LASF9:
	.string	"Reserved8"
.LASF17:
	.string	"BoostVinShort"
.LASF14:
	.string	"BuckPowerLow"
.LASF15:
	.string	"BuckVinShort"
.LASF1:
	.string	"Reserved10"
.LASF10:
	.string	"Reserved11"
.LASF11:
	.string	"Reserved12"
.LASF12:
	.string	"BuckVoltage"
.LASF2:
	.string	"Reserved15"
.LASF13:
	.string	"BuckTopology"
.LASF19:
	.string	"out_delay_DSTATE"
.LASF3:
	.string	"BoostRampFin"
.LASF16:
	.string	"BoostVoutLimit"
.LASF0:
	.string	"FastTurnOff"
.LASF20:
	.string	"Switch_b"
.LASF18:
	.string	"cnt_delay_DSTATE"
	.extern	SafetyError,STT_OBJECT,4
	.extern	DebugError,STT_OBJECT,4
	.extern	Main_HwVer,STT_OBJECT,32
	.ident	"GCC: (HighTec Release v4.6.3.0) 4.6.3 build on 2013-05-17"
