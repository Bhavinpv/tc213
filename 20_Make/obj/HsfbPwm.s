	.file	"HsfbPwm.c"
.section .text,"ax",@progbits
.Ltext0:
	.section .text.MPU_ASIL_CODE,"ax",@progbits
	.align 3
	.global	HsfbPwm_GetData100us
	.type	HsfbPwm_GetData100us, @function
HsfbPwm_GetData100us:
.LFB202:
	.file 1 "../40_Appl/HsfbPwm/HsfbPwm.c"
	.loc 1 78 0
	.loc 1 79 0
	movh.a	%a15, hi:HsfbPwm_MeasStatus100us
	ld.a	%a15, [%a15] lo:HsfbPwm_MeasStatus100us
	movh.a	%a5, hi:HsfbPwm_ToMor
	lea	%a2, [%a5] lo:HsfbPwm_ToMor
	ld.w	%d15, [%a15] 12
	.loc 1 80 0
	movh.a	%a15, hi:HsfbPwm_CtrlStatus100us
	ld.a	%a15, [%a15] lo:HsfbPwm_CtrlStatus100us
	.loc 1 79 0
	st.w	[%a2] 20, %d15
	.loc 1 80 0
	mov	%d2, 1
	ld.bu	%d15, [%a15]0
	jnz	%d15, .L2
	.loc 1 81 0 discriminator 2
	movh.a	%a3, hi:HsfbPwm_SafetyStatus100us
	ld.a	%a3, [%a3] lo:HsfbPwm_SafetyStatus100us
	.loc 1 80 0 discriminator 2
	ld.bu	%d2, [%a3]0
	eq	%d2, %d2, 0
.L2:
	.loc 1 80 0 is_stmt 0 discriminator 3
	movh.a	%a4, hi:HsfbPwm_Status
	lea	%a3, [%a4] lo:HsfbPwm_Status
	st.b	[%a3] 37, %d2
	.loc 1 82 0 is_stmt 1 discriminator 3
	ld.bu	%d15, [%a15] 1
	mov	%d2, 1
	jnz	%d15, .L3
	.loc 1 83 0 discriminator 2
	movh.a	%a6, hi:HsfbPwm_SafetyStatus100us
	ld.a	%a6, [%a6] lo:HsfbPwm_SafetyStatus100us
	.loc 1 82 0 discriminator 2
	ld.bu	%d15, [%a6] 1
	jnz	%d15, .L10
.L3:
	.loc 1 82 0 is_stmt 0 discriminator 3
	st.b	[%a3] 41, %d2
	.loc 1 84 0 is_stmt 1 discriminator 3
	ld.bu	%d15, [%a15] 2
	mov	%d2, 1
	jnz	%d15, .L4
	.loc 1 85 0 discriminator 2
	movh.a	%a15, hi:HsfbPwm_SafetyStatus100us
	ld.a	%a15, [%a15] lo:HsfbPwm_SafetyStatus100us
	.loc 1 84 0 discriminator 2
	ld.bu	%d2, [%a15] 2
	eq	%d2, %d2, 0
.L4:
	.loc 1 86 0 discriminator 3
	movh.a	%a15, hi:HsfbPwm_StateStatus
	ld.a	%a15, [%a15] lo:HsfbPwm_StateStatus
	.loc 1 84 0 discriminator 3
	st.b	[%a3] 45, %d2
	.loc 1 90 0 discriminator 3
	movh.a	%a3, hi:HsfbPwm_Jitter
	.loc 1 86 0 discriminator 3
	ld.bu	%d15, [%a15] 3
	movh.a	%a15, hi:HsfbPwm_StateCmd
	st.b	[%a15] lo:HsfbPwm_StateCmd, %d15
	.loc 1 88 0 discriminator 3
	movh.a	%a15, hi:HsfbPwm_AppRx10ms
	ld.a	%a15, [%a15] lo:HsfbPwm_AppRx10ms
	.loc 1 87 0 discriminator 3
	st.b	[%a5] lo:HsfbPwm_ToMor, %d15
	.loc 1 88 0 discriminator 3
	ld.h	%d15, [%a15] 12
	st.h	[%a4] lo:HsfbPwm_Status, %d15
	.loc 1 89 0 discriminator 3
	ld.h	%d15, [%a15] 14
	st.h	[%a2] 2, %d15
	.loc 1 90 0 discriminator 3
	ld.hu	%d15, [%a15] 24
	eq	%d15, %d15, 0
	st.b	[%a3] lo:HsfbPwm_Jitter, %d15
	.loc 1 91 0 discriminator 3
	ld.hu	%d15, [%a15] 22
	ne	%d15, %d15, 0
	st.b	[%a2] 1, %d15
	.loc 1 92 0 discriminator 3
	ret
.L10:
	.loc 1 82 0
	ld.hu	%d2, [%a2] 8
	ne	%d2, %d2, 0
	j	.L3
.LFE202:
	.size	HsfbPwm_GetData100us, .-HsfbPwm_GetData100us
	.align 3
	.global	HsfbPwm_Jitter100us
	.type	HsfbPwm_Jitter100us, @function
HsfbPwm_Jitter100us:
.LFB203:
	.loc 1 103 0
	.loc 1 105 0
	movh.a	%a4, hi:HsfbPwm_Jitter
	lea	%a15, [%a4] lo:HsfbPwm_Jitter
	ld.w	%d2, [%a15] 16
	movh	%d15, 17530
	cmp.f	%d3, %d2, %d15
	jnz.t	%d3, 2, .L23
	.loc 1 107 0
	movh	%d15, 16256
	cmp.f	%d3, %d2, %d15
	jnz.t	%d3, 0, .L23
.L12:
.LVL0:
	.loc 1 113 0
	ld.w	%d3, [%a15] 8
	movh	%d15, 15949
	addi	%d15, %d15, -13107
	movh.a	%a3, hi:JitterStep
	mul.f	%d15, %d15, %d3
	ld.w	%d3, [%a3] lo:JitterStep
	movh.a	%a2, hi:JitterFrequency
	mul.f	%d15, %d15, %d3
	div.f	%d2, %d15, %d2
.LVL1:
	ld.w	%d15, [%a2] lo:JitterFrequency
	add.f	%d15, %d2, %d15
.LVL2:
	.loc 1 115 0
	movh	%d2, 17076
	cmp.f	%d3, %d15, %d2
	jz.t	%d3, 2, .L30
	.loc 1 116 0
	st.w	[%a15] 4, %d2
	mov	%d3, 1111
	mov	%d15, %d2
.LVL3:
.L16:
	.loc 1 124 0
	ld.bu	%d5, [%a4] lo:HsfbPwm_Jitter
	.loc 1 123 0
	st.h	[%a15] 20, %d3
	.loc 1 127 0
	mov	%d4, 0
	.loc 1 124 0
	jz	%d5, .L19
	.loc 1 125 0
	ld.w	%d4, [%a15] 8
.LVL4:
.L19:
	.loc 1 130 0
	ld.w	%d3, [%a15] 12
	movh.a	%a15, hi:HsfbPwm_DW
	add.f	%d6, %d3, %d4
	.loc 1 131 0
	movh	%d2, 49024
	.loc 1 130 0
	cmp.f	%d6, %d15, %d6
	lea	%a15, [%a15] lo:HsfbPwm_DW
	jnz.t	%d6, 2, .L20
	.loc 1 132 0
	sub.f	%d4, %d3, %d4
.LVL5:
	.loc 1 133 0
	movh	%d2, 16256
	.loc 1 132 0
	cmp.f	%d4, %d15, %d4
	jz.t	%d4, 0, .L32
.L20:
.LVL6:
	.loc 1 141 0
	jnz	%d5, .L33
.L21:
	.loc 1 144 0
	ld.w	%d4, [%a2] lo:JitterFrequency
	.loc 1 148 0
	st.w	[%a15] 64, %d2
	.loc 1 144 0
	sub.f	%d3, %d3, %d4
	movh	%d4, 15821
	addi	%d4, %d4, -13107
	mul.f	%d3, %d3, %d4
	.loc 1 147 0
	st.w	[%a2] lo:JitterFrequency, %d15
	.loc 1 144 0
	st.w	[%a3] lo:JitterStep, %d3
	.loc 1 149 0
	ret
.LVL7:
.L23:
	.loc 1 106 0
	mov	%d2, %d15
	j	.L12
.LVL8:
.L30:
	.loc 1 117 0
	movh	%d2, 16800
	cmp.f	%d3, %d15, %d2
	jz.t	%d3, 0, .L31
	.loc 1 118 0
	st.w	[%a15] 4, %d2
	mov	%d3, 5000
	mov	%d15, %d2
.LVL9:
	j	.L16
.LVL10:
.L31:
	.loc 1 120 0
	movh	%d3, 18371
	addi	%d3, %d3, 20480
	div.f	%d3, %d3, %d15
	st.w	[%a15] 4, %d15
	ftouz	%d3, %d3
	extr.u	%d3, %d3, 0, 16
	j	.L16
.LVL11:
.L32:
	.loc 1 134 0
	ld.w	%d2, [%a15] 64
	movh	%d4, 49024
	cmp.f	%d4, %d2, %d4
	jnz.t	%d4, 1, .L20
	.loc 1 134 0 is_stmt 0 discriminator 1
	movh	%d4, 16256
	cmp.f	%d6, %d2, %d4
	jnz.t	%d6, 1, .L20
	.loc 1 138 0 is_stmt 1
	mov	%d2, %d4
.LVL12:
	.loc 1 141 0
	jz	%d5, .L21
.LVL13:
.L33:
	.loc 1 142 0
	st.w	[%a3] lo:JitterStep, %d2
	.loc 1 147 0
	st.w	[%a2] lo:JitterFrequency, %d15
	.loc 1 148 0
	st.w	[%a15] 64, %d2
	.loc 1 149 0
	ret
.LFE203:
	.size	HsfbPwm_Jitter100us, .-HsfbPwm_Jitter100us
	.align 3
	.global	HsfbPwm_MAF_Calc
	.type	HsfbPwm_MAF_Calc, @function
HsfbPwm_MAF_Calc:
.LFB204:
	.loc 1 160 0
	.loc 1 163 0
	movh.a	%a15, hi:HsfbPwm_DW
	lea	%a15, [%a15] lo:HsfbPwm_DW
	ld.hu	%d3, [%a15] 86
	mov	%d2, 1
	mov	%d5, 0
	.loc 1 164 0
	mov	%d15, 0
	.loc 1 163 0
	jge.u	%d3, 10, .L35
	.loc 1 166 0
	add	%d15, %d3, 1
	addi	%d3, %d3, 13
	extr.u	%d4, %d3, 0, 16
	mov	%d3, 11
	extr	%d2, %d4, 0, 16
	extr.u	%d15, %d15, 0, 16
.LVL14:
	div	%e2, %d2, %d3
	extr	%d5, %d15, 0, 16
	msub	%d4, %d4, %d2, 11
	extr	%d2, %d4, 0, 16
.LVL15:
.L35:
	.loc 1 170 0
	movh.a	%a2, hi:HsfbPwm_ToMor
	lea	%a2, [%a2] lo:HsfbPwm_ToMor
	addsc.a	%a3, %a15, %d5, 2
	ld.w	%d4, [%a2] 20
	.loc 1 172 0
	addsc.a	%a2, %a15, %d2, 2
	.loc 1 170 0
	st.w	[%a3]0, %d4
	.loc 1 172 0
	ld.w	%d2, [%a2]0
	ld.w	%d3, [%a15] 44
	sub.f	%d4, %d4, %d2
	movh	%d2, 15821
	addi	%d2, %d2, -13107
	madd.f	%d4, %d3, %d4, %d2
	.loc 1 176 0
	st.h	[%a15] 86, %d15
	.loc 1 172 0
	st.w	[%a15] 44, %d4
	.loc 1 177 0
	ret
.LFE204:
	.size	HsfbPwm_MAF_Calc, .-HsfbPwm_MAF_Calc
	.align 3
	.global	HsfbPwm_ToMor100us
	.type	HsfbPwm_ToMor100us, @function
HsfbPwm_ToMor100us:
.LFB205:
	.loc 1 188 0
	.loc 1 199 0
	movh.a	%a15, hi:HsfbPwm_DW
	.loc 1 197 0
	call	HsfbPwm_MAF_Calc
.LVL16:
	.loc 1 199 0
	lea	%a15, [%a15] lo:HsfbPwm_DW
	ld.w	%d3, [%a15] 44
	movh	%d2, 17347
	cmp.f	%d2, %d3, %d2
	or.t	%d2, %d2,0, %d2,1
	movh	%d15, 16256
	jnz	%d2, .L38
	movh	%d15, 49024
.L38:
	.loc 1 205 0
	ld.w	%d2, [%a15] 56
	add.f	%d15, %d15, %d2
.LVL17:
	.loc 1 206 0
	movh	%d2, 17530
	cmp.f	%d4, %d15, %d2
	jnz.t	%d4, 2, .L62
	.loc 1 209 0
	mov	%d2, 0
	cmp.f	%d2, %d15, %d2
	extr.u	%d2, %d2, 0, 1
	.loc 1 210 0
	seln	%d15, %d2, %d15, 0
.LVL18:
.L40:
	.loc 1 214 0
	movh	%d2, 17355
	addi	%d2, %d2, -32768
	cmp.f	%d2, %d3, %d2
	or.t	%d2, %d2,2, %d2,1
	mov	%d6, 1
	jnz	%d2, .L41
	.loc 1 214 0 is_stmt 0 discriminator 2
	movh	%d2, 17340
	addi	%d2, %d2, -32768
	cmp.f	%d3, %d3, %d2
	jz.t	%d3, 2, .L78
	.loc 1 215 0 is_stmt 1
	movh	%d2, 17530
	cmp.f	%d2, %d15, %d2
	jz.t	%d2, 0, .L78
	.loc 1 187 0
	ld.bu	%d6, [%a15] 95
	.loc 1 215 0
	ne	%d6, %d6, 0
.L41:
.LVL19:
	.loc 1 217 0 discriminator 3
	movh.a	%a2, hi:HsfbPwm_Status
	ld.hu	%d2, [%a2] lo:HsfbPwm_Status
	movh.a	%a4, hi:HsfbPwm_ToMor
	.loc 1 218 0 discriminator 3
	mov	%d3, 1
	.loc 1 219 0 discriminator 3
	mov	%d7, 0
	lea	%a2, [%a4] lo:HsfbPwm_ToMor
	.loc 1 217 0 discriminator 3
	jnz	%d2, .L44
	.loc 1 221 0
	movh.a	%a3, hi:Main_HwVer
	lea	%a3, [%a3] lo:Main_HwVer
	ld.hu	%d2, [%a3] 22
	jz	%d2, .L45
	.loc 1 223 0 discriminator 1
	ld.hu	%d2, [%a2] 2
	.loc 1 221 0 discriminator 1
	ld.bu	%d3, [%a2] 1
	.loc 1 231 0 discriminator 1
	mov	%d7, 1
	.loc 1 223 0 discriminator 1
	sel	%d3, %d3, %d2, %d6
	.loc 1 231 0 discriminator 1
	ld.bu	%d2, [%a4] lo:HsfbPwm_ToMor
	jz	%d2, .L48
.L44:
.LVL20:
	.loc 1 235 0
	ld.bu	%d5, [%a15] 96
	eq	%d2, %d5, 0
	mov	%d0, %d2
.LVL21:
	.loc 1 236 0
	jz	%d2, .L50
	.loc 1 236 0 is_stmt 0 discriminator 1
	ld.bu	%d2, [%a15] 97
.LVL22:
	jnz	%d2, .L79
	.loc 1 277 0 is_stmt 1
	ld.hu	%d3, [%a15] 82
.LVL23:
.L52:
	.loc 1 241 0
	ld.hu	%d4, [%a15] 84
	st.h	[%a15] 80, %d4
	.loc 1 242 0
	st.b	[%a15] 94, %d7
	.loc 1 245 0
	jeq	%d4, %d3, .L69
.L81:
	.loc 1 245 0 is_stmt 0 discriminator 1
	ld.bu	%d7, [%a15] 94
.LVL24:
	mov.a	%a3, 1
	mov	%d2, 0
	jz	%d7, .L53
	.loc 1 246 0 is_stmt 1
	ld.w	%d7, [%a15] 68
	movh	%d2, 15623
	addi	%d2, %d2, 11010
	add.f	%d2, %d2, %d7
.LVL25:
	.loc 1 251 0
	movh	%d7, 16256
	cmp.f	%d1, %d2, %d7
	jz.t	%d1, 2, .L80
.LVL26:
	.loc 1 270 0
	ld.w	%d2, [%a15] 48
	st.w	[%a2] 16, %d2
	.loc 1 267 0
	st.h	[%a2] 6, %d4
	.loc 1 268 0
	st.h	[%a2] 8, %d5
	.loc 1 269 0
	st.w	[%a2] 12, %d7
	.loc 1 271 0
	st.w	[%a15] 56, %d15
	.loc 1 272 0
	st.b	[%a15] 95, %d6
	.loc 1 252 0
	mov	%d2, %d7
.LVL27:
.L58:
	.loc 1 273 0 discriminator 2
	mov	%d15, 0
.L59:
	.loc 1 273 0 is_stmt 0 discriminator 3
	st.b	[%a15] 96, %d15
	.loc 1 274 0 is_stmt 1 discriminator 3
	st.b	[%a15] 97, %d0
	.loc 1 275 0 discriminator 3
	st.h	[%a15] 84, %d3
	.loc 1 276 0 discriminator 3
	st.w	[%a15] 68, %d2
	.loc 1 277 0 discriminator 3
	ret
.LVL28:
.L62:
	.loc 1 207 0
	mov	%d15, %d2
.LVL29:
	j	.L40
.LVL30:
.L50:
	.loc 1 237 0
	ld.hu	%d4, [%a15] 80
	ld.hu	%d3, [%a15] 82
.LVL31:
	.loc 1 245 0
	jne	%d4, %d3, .L81
.LVL32:
.L69:
	mov.a	%a3, 1
	mov	%d2, 0
.LVL33:
.L53:
	.loc 1 260 0
	jz	%d4, .L82
.L57:
	.loc 1 263 0
	movh	%d7, 16256
	sub.f	%d7, %d7, %d2
	st.w	[%a15] 48, %d7
.L56:
	.loc 1 271 0
	st.w	[%a15] 56, %d15
	.loc 1 273 0
	mov	%d15, 0
.LVL34:
	.loc 1 267 0
	st.h	[%a2] 6, %d4
	.loc 1 268 0
	st.h	[%a2] 8, %d5
	.loc 1 269 0
	st.w	[%a2] 12, %d2
	.loc 1 270 0
	st.w	[%a2] 16, %d7
	.loc 1 272 0
	st.b	[%a15] 95, %d6
	.loc 1 273 0
	cmp.f	%d15, %d2, %d15
	jnz.t	%d15, 1, .L58
	.loc 1 273 0 is_stmt 0 discriminator 1
	mov	%d15, 1
	jnz.a	%a3, .L59
	j	.L58
.LVL35:
.L78:
	.loc 1 215 0 is_stmt 1
	mov	%d6, 0
	j	.L41
.LVL36:
.L82:
	.loc 1 261 0
	st.w	[%a15] 48, %d2
	mov	%d7, %d2
	j	.L56
.LVL37:
.L79:
	.loc 1 237 0
	st.h	[%a15] 82, %d3
	j	.L52
.LVL38:
.L45:
	.loc 1 228 0
	ld.hu	%d3, [%a2] 2
.LVL39:
.L48:
	.loc 1 231 0 discriminator 2
	mov	%d7, 0
	j	.L44
.LVL40:
.L80:
	.loc 1 254 0
	mov	%d7, 0
	cmp.f	%d8, %d2, %d7
	jz.t	%d8, 0, .L83
	.loc 1 255 0
	mov	%d2, %d7
.LVL41:
	.loc 1 260 0
	jnz	%d4, .L57
	j	.L82
.LVL42:
.L83:
	.loc 1 254 0
	jnz.t	%d1, 0, .L53
	mov.a	%a3, 0
	.loc 1 259 0
	ld.w	%d7, [%a15] 48
	j	.L56
.LFE205:
	.size	HsfbPwm_ToMor100us, .-HsfbPwm_ToMor100us
	.section .code_ram,"ax",@progbits
	.align 3
	.global	HsfbPwm_GetData15us
	.type	HsfbPwm_GetData15us, @function
HsfbPwm_GetData15us:
.LFB206:
	.loc 1 288 0
	.loc 1 290 0
	movh.a	%a15, hi:HsfbPwm_CtrlStatus15us
	ld.a	%a2, [%a15] lo:HsfbPwm_CtrlStatus15us
	.loc 1 295 0
	movh.a	%a3, hi:HsfbPwm_MeasStatus100us
	ld.a	%a3, [%a3] lo:HsfbPwm_MeasStatus100us
	.loc 1 290 0
	ld.w	%d2, [%a2]0
	.loc 1 291 0
	ld.w	%d15, [%a2] 4
	.loc 1 292 0
	movh.a	%a2, hi:HsfbPwm_DW
	lea	%a2, [%a2] lo:HsfbPwm_DW
	ld.w	%d3, [%a2] 52
	.loc 1 290 0
	movh.a	%a15, hi:HsfbPwm_Status
	lea	%a15, [%a15] lo:HsfbPwm_Status
	st.w	[%a15] 12, %d2
	.loc 1 291 0
	st.w	[%a15] 24, %d15
	.loc 1 292 0
	sub.f	%d15, %d2, %d3
	.loc 1 295 0
	ld.w	%d2, [%a3] 28
	.loc 1 296 0
	movh.a	%a3, hi:HsfbPwm_ToMor
	.loc 1 292 0
	movh	%d4, 14546
	.loc 1 296 0
	lea	%a3, [%a3] lo:HsfbPwm_ToMor
	.loc 1 292 0
	addi	%d4, %d4, -18665
	.loc 1 295 0
	st.w	[%a15] 88, %d2
	.loc 1 296 0
	ld.w	%d2, [%a3] 16
	.loc 1 292 0
	madd.f	%d15, %d3, %d15, %d4
.LVL43:
	.loc 1 296 0
	movh	%d3, 16384
	sub.f	%d2, %d3, %d2
	.loc 1 294 0
	st.w	[%a15] 4, %d15
	.loc 1 296 0
	mul.f	%d2, %d15, %d2
	.loc 1 298 0
	st.w	[%a2] 52, %d15
	.loc 1 296 0
	st.w	[%a15] 8, %d2
	.loc 1 299 0
	ret
.LFE206:
	.size	HsfbPwm_GetData15us, .-HsfbPwm_GetData15us
	.align 3
	.global	HsfbPwm_SetData15us
	.type	HsfbPwm_SetData15us, @function
HsfbPwm_SetData15us:
.LFB207:
	.loc 1 310 0
	.loc 1 311 0
	movh.a	%a15, hi:HsfbPwm_PwmStatus15us
	ld.a	%a15, [%a15] lo:HsfbPwm_PwmStatus15us
	movh.a	%a2, hi:HsfbPwm_State
	ld.w	%d15, [%a2] lo:HsfbPwm_State
	.loc 1 312 0
	movh.a	%a2, hi:HsfbPwm_ToMor
	lea	%a2, [%a2] lo:HsfbPwm_ToMor
	.loc 1 311 0
	st.w	[%a15]0, %d15
	.loc 1 312 0
	ld.h	%d15, [%a2] 6
	st.h	[%a15] 4, %d15
	.loc 1 313 0
	ld.w	%d15, [%a2] 16
	.loc 1 314 0
	movh.a	%a2, hi:HsfbPwm_Status
	lea	%a2, [%a2] lo:HsfbPwm_Status
	.loc 1 313 0
	st.w	[%a15] 8, %d15
	.loc 1 314 0
	ld.w	%d15, [%a2] 8
	st.w	[%a15] 12, %d15
	.loc 1 315 0
	ret
.LFE207:
	.size	HsfbPwm_SetData15us, .-HsfbPwm_SetData15us
	.align 3
	.global	HsfbPwm_EnDis15us
	.type	HsfbPwm_EnDis15us, @function
HsfbPwm_EnDis15us:
.LFB208:
	.loc 1 326 0
	.loc 1 328 0
	movh.a	%a15, hi:HsfbPwm_Status
	lea	%a15, [%a15] lo:HsfbPwm_Status
	ld.bu	%d3, [%a15] 40
	mov	%d15, 0
	mov	%d2, 0
	jz	%d3, .L87
	.loc 1 328 0 is_stmt 0 discriminator 1
	ld.bu	%d15, [%a15] 41
	eq	%d15, %d15, 0
	mov	%d2, %d15
.L87:
.LVL44:
	.loc 1 330 0 is_stmt 1 discriminator 3
	movh.a	%a3, hi:Pwm_PwmEn
	lea	%a2, [%a3] lo:Pwm_PwmEn
	.loc 1 331 0 discriminator 3
	ld.bu	%d3, [%a15] 36
	.loc 1 329 0 discriminator 3
	st.b	[%a15] 42, %d2
	.loc 1 330 0 discriminator 3
	st.h	[%a2] 2, %d15
	.loc 1 331 0 discriminator 3
	mov	%d2, 0
.LVL45:
	mov	%d15, 0
	jz	%d3, .L88
	.loc 1 331 0 is_stmt 0 discriminator 1
	ld.bu	%d15, [%a15] 37
	eq	%d15, %d15, 0
	mov	%d2, %d15
.L88:
.LVL46:
	.loc 1 334 0 is_stmt 1 discriminator 3
	ld.bu	%d3, [%a15] 44
	.loc 1 332 0 discriminator 3
	st.b	[%a15] 38, %d2
	.loc 1 333 0 discriminator 3
	st.h	[%a3] lo:Pwm_PwmEn, %d15
	.loc 1 334 0 discriminator 3
	mov	%d2, 0
.LVL47:
	mov	%d15, 0
	jz	%d3, .L89
	.loc 1 334 0 is_stmt 0 discriminator 1
	ld.bu	%d15, [%a15] 45
	eq	%d15, %d15, 0
	mov	%d2, %d15
.L89:
.LVL48:
	.loc 1 336 0 is_stmt 1 discriminator 3
	st.b	[%a15] 46, %d2
	.loc 1 337 0 discriminator 3
	st.h	[%a2] 4, %d15
	.loc 1 338 0 discriminator 3
	ret
.LFE208:
	.size	HsfbPwm_EnDis15us, .-HsfbPwm_EnDis15us
	.section .text.MPU_QM_CODE,"ax",@progbits
	.align 3
	.global	HsfbPwm_State15us_Init
	.type	HsfbPwm_State15us_Init, @function
HsfbPwm_State15us_Init:
.LFB210:
	.loc 1 379 0
	.loc 1 380 0
	mov	%d15, 0
	movh.a	%a15, hi:HsfbPwm_DW
	lea	%a15, [%a15] lo:HsfbPwm_DW
	st.w	[%a15] 76, %d15
	.loc 1 381 0
	ret
.LFE210:
	.size	HsfbPwm_State15us_Init, .-HsfbPwm_State15us_Init
	.section .code_ram
	.align 3
	.global	HsfbPwm_State15us
	.type	HsfbPwm_State15us, @function
HsfbPwm_State15us:
.LFB211:
	.loc 1 392 0
	.loc 1 395 0
	movh.a	%a15, hi:HsfbPwm_Jitter
	lea	%a15, [%a15] lo:HsfbPwm_Jitter
	ld.hu	%d15, [%a15] 20
	movh.a	%a2, hi:HsfbPwm_Period
	.loc 1 396 0
	sh	%d2, %d15, -1
	.loc 1 395 0
	st.h	[%a2] lo:HsfbPwm_Period, %d15
	.loc 1 397 0
	add	%d15, 1
	.loc 1 395 0
	lea	%a15, [%a2] lo:HsfbPwm_Period
	.loc 1 399 0
	movh.a	%a12, hi:HsfbPwm_Status
	.loc 1 396 0
	st.h	[%a15] 2, %d2
	.loc 1 397 0
	st.h	[%a15] 4, %d15
	.loc 1 399 0
	lea	%a15, [%a12] lo:HsfbPwm_Status
	ld.w	%d15, [%a15] 16
	ld.w	%d2, [%a15] 12
	cmp.f	%d2, %d2, %d15
	jz.t	%d2, 2, .L98
	.loc 1 400 0
	st.w	[%a15] 12, %d15
.L98:
	.loc 1 403 0
	ld.w	%d15, [%a15] 28
	ld.w	%d2, [%a15] 24
	cmp.f	%d2, %d2, %d15
	jz.t	%d2, 2, .L100
	.loc 1 404 0
	st.w	[%a15] 24, %d15
.L100:
	.loc 1 407 0
	call	HsfbPwm_Sync
	.loc 1 408 0
	ld.hu	%d2, [%a12] lo:HsfbPwm_Status
.LVL49:
	.loc 1 410 0
	movh.a	%a12, hi:HsfbPwm_DW
	lea	%a12, [%a12] lo:HsfbPwm_DW
	.loc 1 409 0
	movh.a	%a2, hi:HsfbPwm_ToMor
	.loc 1 410 0
	ld.bu	%d15, [%a12] 88
	.loc 1 409 0
	lea	%a2, [%a2] lo:HsfbPwm_ToMor
	ld.hu	%d3, [%a2] 6
.LVL50:
	.loc 1 410 0
	jz	%d15, .L131
	.loc 1 414 0
	ld.w	%d15, [%a12] 76
	jeq	%d15, 2, .L106
	jeq	%d15, 4, .L107
	.loc 1 416 0
	movh.a	%a2, hi:HsfbPwm_StateCmd
	.loc 1 414 0
	jeq	%d15, 1, .L132
	.loc 1 461 0
	ld.bu	%d15, [%a2] lo:HsfbPwm_StateCmd
	jz	%d15, .L133
.LVL51:
.LBB6:
.LBB7:
	.loc 1 352 0
	jnz	%d2, .L115
	jeq	%d3, 1, .L134
.LVL52:
.L115:
	.loc 1 363 0
	mov	%d15, 0
	st.w	[%a12] 72, %d15
.LVL53:
.L119:
.LBE7:
.LBE6:
	.loc 1 473 0
	call	HsfbPwm_SteadyRun
.LVL54:
	.loc 1 474 0
	mov	%d15, 0
.LVL55:
.L130:
	movh.a	%a2, hi:HsfbPwm_ChargeState
	.loc 1 475 0
	ld.w	%d2, [%a12] 76
	.loc 1 474 0
	st.w	[%a2] lo:HsfbPwm_ChargeState, %d15
	.loc 1 475 0
	movh.a	%a2, hi:HsfbPwm_DischargeState
	st.w	[%a2] lo:HsfbPwm_DischargeState, %d15
	ne	%d15, %d2, 1
	j	.L103
.LVL56:
.L131:
	.loc 1 411 0
	mov	%d15, 1
	.loc 1 412 0
	mov	%d2, 1
.LVL57:
	.loc 1 411 0
	st.b	[%a12] 88, %d15
	.loc 1 412 0
	mov	%d15, 1
	st.w	[%a12] 76, %d15
	mov	%d15, 0
.LVL58:
.L103:
	.loc 1 481 0
	movh.a	%a2, hi:HsfbPwm_State
	st.w	[%a2] lo:HsfbPwm_State, %d2
	.loc 1 482 0
	st.b	[%a15] 36, %d15
	.loc 1 483 0
	st.b	[%a15] 40, %d15
	.loc 1 484 0
	st.b	[%a15] 44, %d15
	.loc 1 485 0
	ret
.LVL59:
.L106:
	.loc 1 449 0
	movh.a	%a13, hi:HsfbPwm_ChargeState
	ld.w	%d2, [%a13] lo:HsfbPwm_ChargeState
.LVL60:
	movh	%d15, 16256
	addi	%d15, %d15, -12906
	cmp.f	%d15, %d2, %d15
	or.t	%d15, %d15,2, %d15,1
	jz	%d15, .L128
	.loc 1 450 0
	call	HsfbPwm_Charge
.LVL61:
	.loc 1 451 0
	ld.w	%d2, [%a13] lo:HsfbPwm_ChargeState
	movh	%d15, 14922
	addi	%d15, %d15, -23001
	add.f	%d15, %d2, %d15
	.loc 1 452 0
	mov	%d2, 3
	.loc 1 451 0
	st.w	[%a13] lo:HsfbPwm_ChargeState, %d15
	.loc 1 452 0
	mov	%d15, 3
	st.w	[%a12] 76, %d15
	mov	%d15, 1
	j	.L103
.LVL62:
.L132:
	.loc 1 416 0
	ld.bu	%d15, [%a2] lo:HsfbPwm_StateCmd
	jz	%d15, .L108
	.loc 1 418 0
	mov	%d15, 0
	.loc 1 417 0
	call	HsfbPwm_Reset
.LVL63:
	.loc 1 418 0
	movh.a	%a2, hi:HsfbPwm_StartState
	st.w	[%a2] lo:HsfbPwm_StartState, %d15
	.loc 1 419 0
	movh.a	%a2, hi:HsfbPwm_ChargeState
	st.w	[%a2] lo:HsfbPwm_ChargeState, %d15
	.loc 1 420 0
	movh.a	%a2, hi:HsfbPwm_DischargeState
	st.w	[%a2] lo:HsfbPwm_DischargeState, %d15
	.loc 1 421 0
	mov	%d15, 4
	mov	%d2, 4
	st.w	[%a12] 76, %d15
	mov	%d15, 1
	j	.L103
.LVL64:
.L107:
	.loc 1 431 0
	movh.a	%a13, hi:HsfbPwm_DischargeState
	ld.w	%d4, [%a13] lo:HsfbPwm_DischargeState
	movh	%d15, 16256
	addi	%d15, %d15, -12906
	cmp.f	%d15, %d4, %d15
	or.t	%d15, %d15,2, %d15,1
	jz	%d15, .L127
	.loc 1 432 0
	jnz	%d2, .L111
	.loc 1 432 0 is_stmt 0 discriminator 1
	jeq	%d3, 1, .L135
.L111:
	.loc 1 438 0 is_stmt 1
	call	HsfbPwm_Discharge
.LVL65:
	.loc 1 439 0
	ld.w	%d2, [%a13] lo:HsfbPwm_DischargeState
	movh	%d15, 14922
	addi	%d15, %d15, -23001
	add.f	%d15, %d2, %d15
	.loc 1 440 0
	mov	%d2, 3
	.loc 1 439 0
	st.w	[%a13] lo:HsfbPwm_DischargeState, %d15
	.loc 1 440 0
	mov	%d15, 3
	st.w	[%a12] 76, %d15
	mov	%d15, 1
	j	.L103
.LVL66:
.L128:
	.loc 1 454 0
	call	HsfbPwm_Charge
.LVL67:
	.loc 1 455 0
	ld.w	%d2, [%a13] lo:HsfbPwm_ChargeState
	movh	%d15, 14922
	addi	%d15, %d15, -23001
	add.f	%d15, %d2, %d15
	ld.w	%d2, [%a12] 76
	st.w	[%a13] lo:HsfbPwm_ChargeState, %d15
	ne	%d15, %d2, 1
	j	.L103
.LVL68:
.L108:
	.loc 1 424 0
	mov	%d15, 0
	.loc 1 423 0
	call	HsfbPwm_Reset
.LVL69:
	.loc 1 424 0
	movh.a	%a2, hi:HsfbPwm_StartState
	st.w	[%a2] lo:HsfbPwm_StartState, %d15
	j	.L130
.LVL70:
.L133:
	.loc 1 463 0
	mov	%d15, 0
	.loc 1 462 0
	call	HsfbPwm_SteadyRun
.LVL71:
	.loc 1 463 0
	movh.a	%a2, hi:HsfbPwm_ChargeState
	st.w	[%a2] lo:HsfbPwm_ChargeState, %d15
	.loc 1 464 0
	movh.a	%a2, hi:HsfbPwm_DischargeState
	st.w	[%a2] lo:HsfbPwm_DischargeState, %d15
	.loc 1 465 0
	mov	%d15, 1
	mov	%d2, 1
	st.w	[%a12] 76, %d15
	mov	%d15, 0
	j	.L103
.LVL72:
.L134:
.LBB11:
.LBB8:
	.loc 1 353 0
	ld.w	%d15, [%a15] 12
	ld.w	%d3, [%a15] 20
.LVL73:
	cmp.f	%d15, %d15, %d3
	jz.t	%d15, 0, .L115
	.loc 1 355 0
	ld.w	%d4, [%a12] 72
	movh	%d3, 18302
	utof	%d15, %d4
	addi	%d3, %d3, -6144
	cmp.f	%d15, %d15, %d3
	jz.t	%d15, 2, .L129
.LVL74:
.LBE8:
.LBE11:
	.loc 1 469 0
	mov	%d15, 0
.LBB12:
.LBB9:
	.loc 1 357 0
	st.w	[%a12] 72, %d2
.LBE9:
.LBE12:
	.loc 1 468 0
	call	HsfbPwm_SteadyRun
.LVL75:
	.loc 1 469 0
	movh.a	%a2, hi:HsfbPwm_ChargeState
	st.w	[%a2] lo:HsfbPwm_ChargeState, %d15
	.loc 1 470 0
	movh.a	%a2, hi:HsfbPwm_DischargeState
	st.w	[%a2] lo:HsfbPwm_DischargeState, %d15
	.loc 1 471 0
	mov	%d15, 2
	mov	%d2, 2
	st.w	[%a12] 76, %d15
	mov	%d15, 1
	j	.L103
.LVL76:
.L127:
	.loc 1 443 0
	call	HsfbPwm_Discharge
.LVL77:
	.loc 1 444 0
	ld.w	%d2, [%a13] lo:HsfbPwm_DischargeState
	movh	%d15, 14922
	addi	%d15, %d15, -23001
	add.f	%d15, %d2, %d15
	ld.w	%d2, [%a12] 76
	st.w	[%a13] lo:HsfbPwm_DischargeState, %d15
	ne	%d15, %d2, 1
	j	.L103
.LVL78:
.L135:
	.loc 1 434 0
	call	HsfbPwm_Discharge
.LVL79:
	.loc 1 435 0
	ld.w	%d2, [%a13] lo:HsfbPwm_DischargeState
	movh	%d15, 14922
	addi	%d15, %d15, -23001
	add.f	%d15, %d2, %d15
	.loc 1 436 0
	mov	%d2, 2
	.loc 1 435 0
	st.w	[%a13] lo:HsfbPwm_DischargeState, %d15
	.loc 1 436 0
	mov	%d15, 2
	st.w	[%a12] 76, %d15
	mov	%d15, 1
	j	.L103
.LVL80:
.L129:
.LBB13:
.LBB10:
	.loc 1 359 0
	add	%d4, 1
	st.w	[%a12] 72, %d4
.LVL81:
	j	.L119
.LBE10:
.LBE13:
.LFE211:
	.size	HsfbPwm_State15us, .-HsfbPwm_State15us
	.section .text.MPU_QM_CODE
	.align 3
	.global	HsfbPwm_Init
	.type	HsfbPwm_Init, @function
HsfbPwm_Init:
.LFB212:
	.loc 1 496 0
.LBB14:
.LBB15:
	.loc 1 380 0
	mov	%d15, 0
	movh.a	%a15, hi:HsfbPwm_DW
	lea	%a15, [%a15] lo:HsfbPwm_DW
	st.w	[%a15] 76, %d15
.LBE15:
.LBE14:
	.loc 1 498 0
	ret
.LFE212:
	.size	HsfbPwm_Init, .-HsfbPwm_Init
	.section .code_ram
	.align 3
	.global	HsfbPwm_Call100us
	.type	HsfbPwm_Call100us, @function
HsfbPwm_Call100us:
.LFB213:
	.loc 1 512 0
.LVL82:
	.loc 1 513 0
	movh.a	%a15, hi:HsfbPwm_MeasStatus100us
	st.a	[%a15] lo:HsfbPwm_MeasStatus100us, %a4
	.loc 1 514 0
	movh.a	%a15, hi:HsfbPwm_CtrlStatus100us
	st.a	[%a15] lo:HsfbPwm_CtrlStatus100us, %a5
	.loc 1 515 0
	movh.a	%a15, hi:HsfbPwm_StateStatus
	st.a	[%a15] lo:HsfbPwm_StateStatus, %a6
	.loc 1 516 0
	movh.a	%a15, hi:HsfbPwm_AppRx10ms
	st.a	[%a15] lo:HsfbPwm_AppRx10ms, %a7
	.loc 1 517 0
	ld.w	%d15, [%SP]0
	movh.a	%a15, hi:HsfbPwm_SafetyStatus100us
	st.w	[%a15] lo:HsfbPwm_SafetyStatus100us, %d15
	.loc 1 518 0
	call	HsfbPwm_GetData100us
.LVL83:
	.loc 1 519 0
	call	HsfbPwm_Jitter100us
	.loc 1 520 0
	j	HsfbPwm_ToMor100us
.LFE213:
	.size	HsfbPwm_Call100us, .-HsfbPwm_Call100us
	.align 3
	.global	HsfbPwm_Call15us
	.type	HsfbPwm_Call15us, @function
HsfbPwm_Call15us:
.LFB214:
	.loc 1 534 0
.LVL84:
	.loc 1 535 0
	movh.a	%a15, hi:HsfbPwm_CtrlStatus15us
	st.a	[%a15] lo:HsfbPwm_CtrlStatus15us, %a4
	.loc 1 536 0
	movh.a	%a15, hi:HsfbPwm_MeasStatus100us
	st.a	[%a15] lo:HsfbPwm_MeasStatus100us, %a5
	.loc 1 537 0
	movh.a	%a15, hi:HsfbPwm_PwmStatus15us
	st.a	[%a15] lo:HsfbPwm_PwmStatus15us, %a6
	.loc 1 538 0
	call	HsfbPwm_GetData15us
.LVL85:
	.loc 1 539 0
	call	HsfbPwm_State15us
	.loc 1 540 0
	call	HsfbPwm_EnDis15us
	.loc 1 541 0
	j	HsfbPwm_SetData15us
.LFE214:
	.size	HsfbPwm_Call15us, .-HsfbPwm_Call15us
	.section .text.MPU_QM_CODE
	.align 3
	.global	HsfbPwm_CallInit
	.type	HsfbPwm_CallInit, @function
HsfbPwm_CallInit:
.LFB215:
	.loc 1 553 0
.LVL86:
	.loc 1 557 0
	movh	%d15, 16448
	.loc 1 556 0
	mov	%d2, 1538
	movh.a	%a15, hi:HsfbPwm_Jitter
	lea	%a15, [%a15] lo:HsfbPwm_Jitter
	.loc 1 557 0
	st.w	[%a15] 8, %d15
	.loc 1 559 0
	movh	%d3, 16416
	.loc 1 558 0
	movh	%d15, 17026
	.loc 1 560 0
	movh.a	%a2, hi:HsfbPwm_Period
	.loc 1 556 0
	st.h	[%a15] 20, %d2
	.loc 1 560 0
	st.h	[%a2] lo:HsfbPwm_Period, %d2
	.loc 1 561 0
	mov	%d2, 769
	.loc 1 558 0
	st.w	[%a15] 12, %d15
	.loc 1 559 0
	st.w	[%a15] 16, %d3
	.loc 1 560 0
	lea	%a15, [%a2] lo:HsfbPwm_Period
	.loc 1 561 0
	st.h	[%a15] 2, %d2
	.loc 1 562 0
	mov	%d2, 1539
	.loc 1 565 0
	movh	%d3, 16118
	addi	%d3, %d3, -15729
	.loc 1 562 0
	st.h	[%a15] 4, %d2
	.loc 1 564 0
	mov	%d2, 0
	movh.a	%a15, hi:HsfbPwm_Status
	lea	%a15, [%a15] lo:HsfbPwm_Status
	st.w	[%a15] 12, %d2
	.loc 1 567 0
	st.w	[%a15] 24, %d2
	.loc 1 568 0
	movh	%d2, 16246
	addi	%d2, %d2, -15729
	.loc 1 565 0
	st.w	[%a15] 16, %d3
	.loc 1 566 0
	movh	%d3, 15524
	.loc 1 568 0
	st.w	[%a15] 28, %d2
	.loc 1 569 0
	movh	%d2, 15652
	.loc 1 566 0
	addi	%d3, %d3, -10486
	.loc 1 569 0
	addi	%d2, %d2, -10486
	.loc 1 566 0
	st.w	[%a15] 20, %d3
	.loc 1 569 0
	st.w	[%a15] 32, %d2
	.loc 1 570 0
	movh.a	%a15, hi:JitterFrequency
	st.w	[%a15] lo:JitterFrequency, %d15
	.loc 1 571 0
	movh	%d15, 16256
	movh.a	%a15, hi:JitterStep
	st.w	[%a15] lo:JitterStep, %d15
	.loc 1 572 0
	ret
.LFE215:
	.size	HsfbPwm_CallInit, .-HsfbPwm_CallInit
	.global	HsfbPwm_PwmStatus15us
	.section .bss.MPU_ASIL_VAR_NOINIT,"aw",@nobits
	.align 3
	.type	HsfbPwm_PwmStatus15us, @object
	.size	HsfbPwm_PwmStatus15us, 4
HsfbPwm_PwmStatus15us:
	.zero	4
	.global	HsfbPwm_SafetyStatus100us
	.align 3
	.type	HsfbPwm_SafetyStatus100us, @object
	.size	HsfbPwm_SafetyStatus100us, 4
HsfbPwm_SafetyStatus100us:
	.zero	4
	.global	HsfbPwm_AppRx10ms
	.align 3
	.type	HsfbPwm_AppRx10ms, @object
	.size	HsfbPwm_AppRx10ms, 4
HsfbPwm_AppRx10ms:
	.zero	4
	.global	HsfbPwm_StateStatus
	.align 3
	.type	HsfbPwm_StateStatus, @object
	.size	HsfbPwm_StateStatus, 4
HsfbPwm_StateStatus:
	.zero	4
	.global	HsfbPwm_CtrlStatus100us
	.align 3
	.type	HsfbPwm_CtrlStatus100us, @object
	.size	HsfbPwm_CtrlStatus100us, 4
HsfbPwm_CtrlStatus100us:
	.zero	4
	.global	HsfbPwm_MeasStatus100us
	.align 3
	.type	HsfbPwm_MeasStatus100us, @object
	.size	HsfbPwm_MeasStatus100us, 4
HsfbPwm_MeasStatus100us:
	.zero	4
	.global	HsfbPwm_CtrlStatus15us
	.align 3
	.type	HsfbPwm_CtrlStatus15us, @object
	.size	HsfbPwm_CtrlStatus15us, 4
HsfbPwm_CtrlStatus15us:
	.zero	4
	.global	HsfbPwm_DW
	.align 3
	.type	HsfbPwm_DW, @object
	.size	HsfbPwm_DW, 104
HsfbPwm_DW:
	.zero	104
	.global	HsfbPwm_State
	.align 3
	.type	HsfbPwm_State, @object
	.size	HsfbPwm_State, 4
HsfbPwm_State:
	.zero	4
	.global	HsfbPwm_DischargeState
	.align 3
	.type	HsfbPwm_DischargeState, @object
	.size	HsfbPwm_DischargeState, 4
HsfbPwm_DischargeState:
	.zero	4
	.global	HsfbPwm_ChargeState
	.align 3
	.type	HsfbPwm_ChargeState, @object
	.size	HsfbPwm_ChargeState, 4
HsfbPwm_ChargeState:
	.zero	4
	.global	HsfbPwm_StartState
	.align 3
	.type	HsfbPwm_StartState, @object
	.size	HsfbPwm_StartState, 4
HsfbPwm_StartState:
	.zero	4
	.global	HsfbPwm_StateCmd
	.align 3
	.type	HsfbPwm_StateCmd, @object
	.size	HsfbPwm_StateCmd, 1
HsfbPwm_StateCmd:
	.zero	1
	.global	HsfbPwm_Period
	.align 3
	.type	HsfbPwm_Period, @object
	.size	HsfbPwm_Period, 10
HsfbPwm_Period:
	.zero	10
	.global	HsfbPwm_ToMor
	.align 3
	.type	HsfbPwm_ToMor, @object
	.size	HsfbPwm_ToMor, 24
HsfbPwm_ToMor:
	.zero	24
	.global	HsfbPwm_Jitter
	.align 3
	.type	HsfbPwm_Jitter, @object
	.size	HsfbPwm_Jitter, 24
HsfbPwm_Jitter:
	.zero	24
	.global	HsfbPwm_Status
	.align 3
	.type	HsfbPwm_Status, @object
	.size	HsfbPwm_Status, 96
HsfbPwm_Status:
	.zero	96
	.align 3
	.type	JitterStep, @object
	.size	JitterStep, 4
JitterStep:
	.zero	4
	.align 3
	.type	JitterFrequency, @object
	.size	JitterFrequency, 4
JitterFrequency:
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
	.uaword	.LFB210
	.uaword	.LFE210-.LFB210
	.align 2
.LEFDE14:
.LSFDE16:
	.uaword	.LEFDE16-.LASFDE16
.LASFDE16:
	.uaword	.Lframe0
	.uaword	.LFB211
	.uaword	.LFE211-.LFB211
	.align 2
.LEFDE16:
.LSFDE18:
	.uaword	.LEFDE18-.LASFDE18
.LASFDE18:
	.uaword	.Lframe0
	.uaword	.LFB212
	.uaword	.LFE212-.LFB212
	.align 2
.LEFDE18:
.LSFDE20:
	.uaword	.LEFDE20-.LASFDE20
.LASFDE20:
	.uaword	.Lframe0
	.uaword	.LFB213
	.uaword	.LFE213-.LFB213
	.align 2
.LEFDE20:
.LSFDE22:
	.uaword	.LEFDE22-.LASFDE22
.LASFDE22:
	.uaword	.Lframe0
	.uaword	.LFB214
	.uaword	.LFE214-.LFB214
	.align 2
.LEFDE22:
.LSFDE24:
	.uaword	.LEFDE24-.LASFDE24
.LASFDE24:
	.uaword	.Lframe0
	.uaword	.LFB215
	.uaword	.LFE215-.LFB215
	.align 2
.LEFDE24:
.section .text,"ax",@progbits
.Letext0:
	.file 2 "../30_Bsw/Common/rtwtypes.h"
	.file 3 "../40_Appl/HsfbPwm/HsfbPwm_enum.h"
	.file 4 "../40_Appl/HsfbPwm/HsfbPwm_struct.h"
	.file 5 "../40_Appl/HsfbCtrl/HsfbCtrl_struct.h"
	.file 6 "../40_Appl/HsfbMeas/HsfbMeas_struct.h"
	.file 7 "../40_Appl/HsfbState/HsfbState_struct.h"
	.file 8 "../40_Appl/HsfbSafety/HsfbSafety_struct.h"
	.file 9 "../40_Appl/HsfbApp/HsfbApp_struct.h"
	.file 10 "../40_Appl/HsfbPwm/HsfbPwm.h"
	.file 11 "../30_Bsw/Common/TC21x/IfxCpu_regdef.h"
	.file 12 "../30_Bsw/Main/Main_api.h"
	.file 13 "../30_Bsw/Mpu/mpu_api.h"
	.file 14 "../30_Bsw/Mcal/Gtm/Gtm_api.h"
	.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x19de
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.6.3 build on 2013-05-17"
	.byte	0x1
	.string	"../40_Appl/HsfbPwm/HsfbPwm.c"
	.string	"D:\\\\SVN\\\\IPB-11Kw\\\\LvDc-C01R0P0-Ceramicheater\\\\20_Make"
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_ranges0+0x50
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x3
	.string	"uint8_T"
	.byte	0x2
	.byte	0x51
	.uaword	0xaf
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x3
	.string	"int16_T"
	.byte	0x2
	.byte	0x52
	.uaword	0xcf
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x3
	.string	"uint16_T"
	.byte	0x2
	.byte	0x53
	.uaword	0xec
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.string	"int32_T"
	.byte	0x2
	.byte	0x54
	.uaword	0x111
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.string	"uint32_T"
	.byte	0x2
	.byte	0x55
	.uaword	0x128
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x3
	.string	"real32_T"
	.byte	0x2
	.byte	0x56
	.uaword	0x148
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.string	"float"
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.string	"double"
	.uleb128 0x3
	.string	"boolean_T"
	.byte	0x2
	.byte	0x5f
	.uaword	0xaf
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x3
	.string	"u8"
	.byte	0x2
	.byte	0x7d
	.uaword	0xa0
	.uleb128 0x3
	.string	"s16"
	.byte	0x2
	.byte	0x7e
	.uaword	0xc0
	.uleb128 0x3
	.string	"u16"
	.byte	0x2
	.byte	0x7f
	.uaword	0xdc
	.uleb128 0x3
	.string	"s32"
	.byte	0x2
	.byte	0x80
	.uaword	0x102
	.uleb128 0x3
	.string	"u32"
	.byte	0x2
	.byte	0x81
	.uaword	0x118
	.uleb128 0x3
	.string	"f32"
	.byte	0x2
	.byte	0x82
	.uaword	0x138
	.uleb128 0x3
	.string	"bit"
	.byte	0x2
	.byte	0x84
	.uaword	0x15b
	.uleb128 0x4
	.byte	0x4
	.byte	0x3
	.byte	0xe
	.uaword	0x25e
	.uleb128 0x5
	.string	"HSFBPWM_E_STATE_None"
	.sleb128 0
	.uleb128 0x5
	.string	"HSFBPWM_E_STATE_Reset"
	.sleb128 1
	.uleb128 0x5
	.string	"HSFBPWM_E_STATE_Charge"
	.sleb128 2
	.uleb128 0x5
	.string	"HSFBPWM_E_STATE_SteadyRun"
	.sleb128 3
	.uleb128 0x5
	.string	"HSFBPWM_E_STATE_Discharge"
	.sleb128 4
	.byte	0
	.uleb128 0x3
	.string	"HSFBPWM_E_STATE"
	.byte	0x3
	.byte	0x14
	.uaword	0x1d5
	.uleb128 0x6
	.byte	0xc
	.byte	0x4
	.byte	0xf
	.uaword	0x2a9
	.uleb128 0x7
	.string	"Duty"
	.byte	0x4
	.byte	0x10
	.uaword	0x1bf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"Max"
	.byte	0x4
	.byte	0x11
	.uaword	0x1bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"Min"
	.byte	0x4
	.byte	0x12
	.uaword	0x1bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x3
	.string	"HSFBPWM_S_DUTY"
	.byte	0x4
	.byte	0x13
	.uaword	0x275
	.uleb128 0x6
	.byte	0x4
	.byte	0x4
	.byte	0x15
	.uaword	0x2f1
	.uleb128 0x7
	.string	"En"
	.byte	0x4
	.byte	0x16
	.uaword	0x1ca
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"Dis"
	.byte	0x4
	.byte	0x17
	.uaword	0x1ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x7
	.string	"Out"
	.byte	0x4
	.byte	0x18
	.uaword	0x1ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x3
	.string	"HSFBPWM_S_ENDIS"
	.byte	0x4
	.byte	0x19
	.uaword	0x2bf
	.uleb128 0x6
	.byte	0x10
	.byte	0x4
	.byte	0x1b
	.uaword	0x34e
	.uleb128 0x7
	.string	"PwmState"
	.byte	0x4
	.byte	0x1c
	.uaword	0x25e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0x4
	.byte	0x1d
	.uaword	0x19e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.uaword	.LASF1
	.byte	0x4
	.byte	0x1e
	.uaword	0x1bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.uaword	.LASF2
	.byte	0x4
	.byte	0x1f
	.uaword	0x1bf
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x3
	.string	"HSFBPWM_S_STATUS15US"
	.byte	0x4
	.byte	0x20
	.uaword	0x308
	.uleb128 0x6
	.byte	0x60
	.byte	0x4
	.byte	0x22
	.uaword	0x445
	.uleb128 0x8
	.uaword	.LASF3
	.byte	0x4
	.byte	0x23
	.uaword	0x19e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"BuckDutyFil"
	.byte	0x4
	.byte	0x24
	.uaword	0x1bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.uaword	.LASF2
	.byte	0x4
	.byte	0x25
	.uaword	0x1bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.uaword	.LASF4
	.byte	0x4
	.byte	0x26
	.uaword	0x2a9
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.uaword	.LASF5
	.byte	0x4
	.byte	0x27
	.uaword	0x2a9
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"PriEn"
	.byte	0x4
	.byte	0x28
	.uaword	0x2f1
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.string	"SrEn"
	.byte	0x4
	.byte	0x29
	.uaword	0x2f1
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x7
	.string	"ClampEn"
	.byte	0x4
	.byte	0x2a
	.uaword	0x2f1
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x7
	.string	"DriverSR0"
	.byte	0x4
	.byte	0x2b
	.uaword	0x445
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x7
	.string	"DriverSR1"
	.byte	0x4
	.byte	0x2c
	.uaword	0x445
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x7
	.string	"Vout100us"
	.byte	0x4
	.byte	0x2d
	.uaword	0x1bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x7
	.string	"FlagRecharge"
	.byte	0x4
	.byte	0x2e
	.uaword	0x19e
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.byte	0
	.uleb128 0x9
	.uaword	0x19e
	.uaword	0x455
	.uleb128 0xa
	.uaword	0x16c
	.byte	0x9
	.byte	0
	.uleb128 0x3
	.string	"HSFBPWM_S_STATUS"
	.byte	0x4
	.byte	0x2f
	.uaword	0x36a
	.uleb128 0x6
	.byte	0x1
	.byte	0x4
	.byte	0x31
	.uaword	0x484
	.uleb128 0x8
	.uaword	.LASF6
	.byte	0x4
	.byte	0x32
	.uaword	0x1ca
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"HSFBPWM_S_STATECMD"
	.byte	0x4
	.byte	0x33
	.uaword	0x46d
	.uleb128 0x6
	.byte	0xa
	.byte	0x4
	.byte	0x35
	.uaword	0x4f2
	.uleb128 0x7
	.string	"Prd"
	.byte	0x4
	.byte	0x36
	.uaword	0x19e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"HPrd"
	.byte	0x4
	.byte	0x37
	.uaword	0x19e
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x7
	.string	"MPrd"
	.byte	0x4
	.byte	0x38
	.uaword	0x19e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"DPrd"
	.byte	0x4
	.byte	0x39
	.uaword	0x19e
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x7
	.string	"DHPrd"
	.byte	0x4
	.byte	0x3a
	.uaword	0x19e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x3
	.string	"HSFBPWM_S_PERIOD"
	.byte	0x4
	.byte	0x3b
	.uaword	0x49e
	.uleb128 0x6
	.byte	0x18
	.byte	0x4
	.byte	0x3d
	.uaword	0x57d
	.uleb128 0x8
	.uaword	.LASF6
	.byte	0x4
	.byte	0x3e
	.uaword	0x1ca
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"Freq"
	.byte	0x4
	.byte	0x3f
	.uaword	0x1bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"FreqRange"
	.byte	0x4
	.byte	0x40
	.uaword	0x1bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"FreqRate"
	.byte	0x4
	.byte	0x41
	.uaword	0x1bf
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"FreqPeriod"
	.byte	0x4
	.byte	0x42
	.uaword	0x1bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"Period"
	.byte	0x4
	.byte	0x43
	.uaword	0x19e
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0
	.uleb128 0x3
	.string	"HSFBPWM_S_JITTER"
	.byte	0x4
	.byte	0x44
	.uaword	0x50a
	.uleb128 0x6
	.byte	0x18
	.byte	0x4
	.byte	0x46
	.uaword	0x643
	.uleb128 0x8
	.uaword	.LASF6
	.byte	0x4
	.byte	0x47
	.uaword	0x1ca
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF7
	.byte	0x4
	.byte	0x48
	.uaword	0x1ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x7
	.string	"TopologyIn"
	.byte	0x4
	.byte	0x49
	.uaword	0x19e
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x7
	.string	"TopologyInT"
	.byte	0x4
	.byte	0x4a
	.uaword	0x19e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"TopologyOut"
	.byte	0x4
	.byte	0x4b
	.uaword	0x19e
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x7
	.string	"MorphSign"
	.byte	0x4
	.byte	0x4c
	.uaword	0x19e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"MorphState"
	.byte	0x4
	.byte	0x4d
	.uaword	0x1bf
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.uaword	.LASF1
	.byte	0x4
	.byte	0x4e
	.uaword	0x1bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"VinFil"
	.byte	0x4
	.byte	0x4f
	.uaword	0x1bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0
	.uleb128 0x3
	.string	"HSFBPWM_S_TOMOR"
	.byte	0x4
	.byte	0x50
	.uaword	0x595
	.uleb128 0x6
	.byte	0x4
	.byte	0x5
	.byte	0xe
	.uaword	0x697
	.uleb128 0x7
	.string	"PriDis"
	.byte	0x5
	.byte	0xf
	.uaword	0x1ca
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"SrDis"
	.byte	0x5
	.byte	0x10
	.uaword	0x1ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x7
	.string	"ClampDis"
	.byte	0x5
	.byte	0x11
	.uaword	0x1ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x3
	.string	"HSFBCTRL_S_ENDIS"
	.byte	0x5
	.byte	0x12
	.uaword	0x65a
	.uleb128 0x6
	.byte	0x8
	.byte	0x5
	.byte	0x14
	.uaword	0x773
	.uleb128 0x7
	.string	"BuckVoltage"
	.byte	0x5
	.byte	0x15
	.uaword	0x1ca
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"BuckTopology"
	.byte	0x5
	.byte	0x16
	.uaword	0x1ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x7
	.string	"BuckPowerLow"
	.byte	0x5
	.byte	0x17
	.uaword	0x1ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x7
	.string	"BuckVinShort"
	.byte	0x5
	.byte	0x18
	.uaword	0x1ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x7
	.string	"BoostRampFin"
	.byte	0x5
	.byte	0x19
	.uaword	0x1ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"BoostVoutLimit"
	.byte	0x5
	.byte	0x1a
	.uaword	0x1ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0x7
	.string	"BoostVinShort"
	.byte	0x5
	.byte	0x1b
	.uaword	0x1ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x7
	.string	"BoostRampFail"
	.byte	0x5
	.byte	0x1c
	.uaword	0x1ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.byte	0
	.uleb128 0x3
	.string	"HSFBCTRL_S_ERROR"
	.byte	0x5
	.byte	0x1d
	.uaword	0x6af
	.uleb128 0x6
	.byte	0x4
	.byte	0x5
	.byte	0x31
	.uaword	0x7a8
	.uleb128 0x7
	.string	"CtrlEnDis"
	.byte	0x5
	.byte	0x32
	.uaword	0x697
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"HSFBCTRL_S_STATUS100US"
	.byte	0x5
	.byte	0x33
	.uaword	0x78b
	.uleb128 0x6
	.byte	0x10
	.byte	0x5
	.byte	0x35
	.uaword	0x7ff
	.uleb128 0x8
	.uaword	.LASF4
	.byte	0x5
	.byte	0x36
	.uaword	0x1bf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF5
	.byte	0x5
	.byte	0x37
	.uaword	0x1bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"CtrlError"
	.byte	0x5
	.byte	0x38
	.uaword	0x773
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x3
	.string	"HSFBCTRL_S_STATUS15US"
	.byte	0x5
	.byte	0x39
	.uaword	0x7c6
	.uleb128 0x6
	.byte	0x8
	.byte	0x6
	.byte	0xe
	.uaword	0x843
	.uleb128 0x7
	.string	"Data"
	.byte	0x6
	.byte	0xf
	.uaword	0x193
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"Real"
	.byte	0x6
	.byte	0x10
	.uaword	0x1bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x3
	.string	"HSFBMEAS_S_STATUSDATA"
	.byte	0x6
	.byte	0x11
	.uaword	0x81c
	.uleb128 0x6
	.byte	0x30
	.byte	0x6
	.byte	0x25
	.uaword	0x8c9
	.uleb128 0x7
	.string	"Ipri"
	.byte	0x6
	.byte	0x26
	.uaword	0x843
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"Vin"
	.byte	0x6
	.byte	0x27
	.uaword	0x843
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"Iout"
	.byte	0x6
	.byte	0x28
	.uaword	0x843
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"Vout"
	.byte	0x6
	.byte	0x29
	.uaword	0x843
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"VoutDiag"
	.byte	0x6
	.byte	0x2a
	.uaword	0x843
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.string	"IproFet"
	.byte	0x6
	.byte	0x2b
	.uaword	0x843
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.string	"HSFBMEAS_S_STATUS100US"
	.byte	0x6
	.byte	0x2c
	.uaword	0x860
	.uleb128 0x6
	.byte	0xc
	.byte	0x7
	.byte	0xe
	.uaword	0x988
	.uleb128 0x7
	.string	"ClrWarning"
	.byte	0x7
	.byte	0xf
	.uaword	0x1ca
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"Error"
	.byte	0x7
	.byte	0x10
	.uaword	0x1ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x7
	.string	"Init"
	.byte	0x7
	.byte	0x11
	.uaword	0x1ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x7
	.string	"HsfbEn"
	.byte	0x7
	.byte	0x12
	.uaword	0x1ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x7
	.string	"Reset"
	.byte	0x7
	.byte	0x13
	.uaword	0x1ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"DrvReset"
	.byte	0x7
	.byte	0x14
	.uaword	0x1ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0x7
	.string	"ErrReset"
	.byte	0x7
	.byte	0x15
	.uaword	0x1ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x7
	.string	"Opm"
	.byte	0x7
	.byte	0x16
	.uaword	0x19e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"Topo"
	.byte	0x7
	.byte	0x17
	.uaword	0x19e
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.string	"HSFBSTATE_S_STATUS"
	.byte	0x7
	.byte	0x18
	.uaword	0x8e7
	.uleb128 0x6
	.byte	0x4
	.byte	0x8
	.byte	0x34
	.uaword	0x9dc
	.uleb128 0x7
	.string	"PriEn"
	.byte	0x8
	.byte	0x35
	.uaword	0x1ca
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"SrEn"
	.byte	0x8
	.byte	0x36
	.uaword	0x1ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x7
	.string	"ClampEn"
	.byte	0x8
	.byte	0x37
	.uaword	0x1ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x3
	.string	"HSFBSAFETY_S_STATUS100US"
	.byte	0x8
	.byte	0x38
	.uaword	0x9a2
	.uleb128 0x6
	.byte	0x1a
	.byte	0x9
	.byte	0x28
	.uaword	0xaf1
	.uleb128 0x8
	.uaword	.LASF6
	.byte	0x9
	.byte	0x29
	.uaword	0x19e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"ClrFault"
	.byte	0x9
	.byte	0x2a
	.uaword	0x19e
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x7
	.string	"CanTimeOut"
	.byte	0x9
	.byte	0x2b
	.uaword	0x19e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"IoutRef"
	.byte	0x9
	.byte	0x2c
	.uaword	0x19e
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x7
	.string	"VoutRef"
	.byte	0x9
	.byte	0x2d
	.uaword	0x19e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"VinRef"
	.byte	0x9
	.byte	0x2e
	.uaword	0x19e
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x8
	.uaword	.LASF3
	.byte	0x9
	.byte	0x2f
	.uaword	0x19e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0x9
	.byte	0x30
	.uaword	0x19e
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0x7
	.string	"AutoDiagEn"
	.byte	0x9
	.byte	0x31
	.uaword	0x19e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"PeakCurrentEn"
	.byte	0x9
	.byte	0x32
	.uaword	0x19e
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.uleb128 0x7
	.string	"TestPulseEn"
	.byte	0x9
	.byte	0x33
	.uaword	0x19e
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x8
	.uaword	.LASF7
	.byte	0x9
	.byte	0x34
	.uaword	0x19e
	.byte	0x2
	.byte	0x23
	.uleb128 0x16
	.uleb128 0x7
	.string	"JitterDis"
	.byte	0x9
	.byte	0x35
	.uaword	0x19e
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0
	.uleb128 0x3
	.string	"HSFBAPP_S_RX"
	.byte	0x9
	.byte	0x36
	.uaword	0x9fc
	.uleb128 0x6
	.byte	0x68
	.byte	0xa
	.byte	0x21
	.uaword	0xddb
	.uleb128 0x7
	.string	"Assignment_nw"
	.byte	0xa
	.byte	0x22
	.uaword	0xddb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"Sum1_c"
	.byte	0xa
	.byte	0x23
	.uaword	0x1bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x7
	.string	"In"
	.byte	0xa
	.byte	0x24
	.uaword	0x1bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x7
	.string	"y_delay_DSTATE"
	.byte	0xa
	.byte	0x25
	.uaword	0x1bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x7
	.string	"limit_delay_DSTATE"
	.byte	0xa
	.byte	0x26
	.uaword	0x1bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x7
	.string	"out_delay_DSTATE"
	.byte	0xa
	.byte	0x27
	.uaword	0x1bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x7
	.string	"Delay1_DSTATE"
	.byte	0xa
	.byte	0x28
	.uaword	0x1bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x7
	.string	"Memory_PreviousInput"
	.byte	0xa
	.byte	0x29
	.uaword	0x1bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x7
	.string	"RechargeCnt"
	.byte	0xa
	.byte	0x2a
	.uaword	0x1b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x7
	.string	"HsfbPwm_State_o"
	.byte	0xa
	.byte	0x2b
	.uaword	0x25e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x7
	.string	"In_b"
	.byte	0xa
	.byte	0x2c
	.uaword	0x19e
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x7
	.string	"In_o"
	.byte	0xa
	.byte	0x2d
	.uaword	0x19e
	.byte	0x2
	.byte	0x23
	.uleb128 0x52
	.uleb128 0x7
	.string	"transfer_delay_DSTATE"
	.byte	0xa
	.byte	0x2e
	.uaword	0x19e
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x7
	.string	"free_cnt_delay_DSTATE"
	.byte	0xa
	.byte	0x2f
	.uaword	0x19e
	.byte	0x2
	.byte	0x23
	.uleb128 0x56
	.uleb128 0x7
	.string	"is_active_c9_HsfbPwm"
	.byte	0xa
	.byte	0x30
	.uaword	0x189
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x7
	.string	"is_active_c11_HsfbPwm"
	.byte	0xa
	.byte	0x31
	.uaword	0x189
	.byte	0x2
	.byte	0x23
	.uleb128 0x59
	.uleb128 0x7
	.string	"is_active_Pri"
	.byte	0xa
	.byte	0x32
	.uaword	0x189
	.byte	0x2
	.byte	0x23
	.uleb128 0x5a
	.uleb128 0x7
	.string	"is_active_Sr"
	.byte	0xa
	.byte	0x33
	.uaword	0x189
	.byte	0x2
	.byte	0x23
	.uleb128 0x5b
	.uleb128 0x7
	.string	"is_active_Clamp"
	.byte	0xa
	.byte	0x34
	.uaword	0x189
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x7
	.string	"is_active_Saux"
	.byte	0xa
	.byte	0x35
	.uaword	0x189
	.byte	0x2
	.byte	0x23
	.uleb128 0x5d
	.uleb128 0x7
	.string	"In_n"
	.byte	0xa
	.byte	0x36
	.uaword	0x1ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x5e
	.uleb128 0x7
	.string	"out_delay_DSTATE_i"
	.byte	0xa
	.byte	0x37
	.uaword	0x1ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x5f
	.uleb128 0x7
	.string	"state_delay_DSTATE"
	.byte	0xa
	.byte	0x38
	.uaword	0x1ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x7
	.string	"transfer_delay2_DSTATE"
	.byte	0xa
	.byte	0x39
	.uaword	0x1ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x61
	.uleb128 0x7
	.string	"oper_buck"
	.byte	0xa
	.byte	0x3a
	.uaword	0x1ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x62
	.uleb128 0x7
	.string	"oper_boost"
	.byte	0xa
	.byte	0x3b
	.uaword	0x1ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x63
	.uleb128 0x7
	.string	"topo_fb"
	.byte	0xa
	.byte	0x3c
	.uaword	0x1ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x7
	.string	"topo_hb"
	.byte	0xa
	.byte	0x3d
	.uaword	0x1ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x65
	.uleb128 0x7
	.string	"dmin_buck"
	.byte	0xa
	.byte	0x3e
	.uaword	0x1ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x66
	.uleb128 0x7
	.string	"dmin_boost"
	.byte	0xa
	.byte	0x3f
	.uaword	0x1ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x67
	.byte	0
	.uleb128 0x9
	.uaword	0x1bf
	.uaword	0xdeb
	.uleb128 0xa
	.uaword	0x16c
	.byte	0xa
	.byte	0
	.uleb128 0x3
	.string	"DW_HsfbPwm_f_T"
	.byte	0xa
	.byte	0x40
	.uaword	0xb05
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0xb
	.uaword	0x128
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.string	"long long int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.string	"long long unsigned int"
	.uleb128 0xc
	.string	"_Ifx_CPU_PSW_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x204
	.uaword	0xf40
	.uleb128 0xd
	.string	"CDC"
	.byte	0xb
	.uahalf	0x206
	.uaword	0xe0d
	.byte	0x4
	.byte	0x7
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CDE"
	.byte	0xb
	.uahalf	0x207
	.uaword	0xe0d
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"GW"
	.byte	0xb
	.uahalf	0x208
	.uaword	0xe0d
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"IS"
	.byte	0xb
	.uahalf	0x209
	.uaword	0xe0d
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"IO"
	.byte	0xb
	.uahalf	0x20a
	.uaword	0xe0d
	.byte	0x4
	.byte	0x2
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PRS"
	.byte	0xb
	.uahalf	0x20b
	.uaword	0xe0d
	.byte	0x4
	.byte	0x2
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"S"
	.byte	0xb
	.uahalf	0x20c
	.uaword	0xe0d
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"reserved_15"
	.byte	0xb
	.uahalf	0x20d
	.uaword	0xe0d
	.byte	0x4
	.byte	0xc
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"SAV"
	.byte	0xb
	.uahalf	0x20e
	.uaword	0xe0d
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"AV"
	.byte	0xb
	.uahalf	0x20f
	.uaword	0xe0d
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"SV"
	.byte	0xb
	.uahalf	0x210
	.uaword	0xe0d
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"V"
	.byte	0xb
	.uahalf	0x211
	.uaword	0xe0d
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"C"
	.byte	0xb
	.uahalf	0x212
	.uaword	0xe0d
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xe
	.string	"Ifx_CPU_PSW_Bits"
	.byte	0xb
	.uahalf	0x213
	.uaword	0xe3d
	.uleb128 0xf
	.byte	0x4
	.byte	0xb
	.uahalf	0x467
	.uaword	0xf81
	.uleb128 0x10
	.string	"U"
	.byte	0xb
	.uahalf	0x469
	.uaword	0x128
	.uleb128 0x10
	.string	"I"
	.byte	0xb
	.uahalf	0x46a
	.uaword	0x111
	.uleb128 0x10
	.string	"B"
	.byte	0xb
	.uahalf	0x46b
	.uaword	0xf40
	.byte	0
	.uleb128 0xe
	.string	"Ifx_CPU_PSW"
	.byte	0xb
	.uahalf	0x46c
	.uaword	0xf59
	.uleb128 0x4
	.byte	0x4
	.byte	0xc
	.byte	0x59
	.uaword	0x10d6
	.uleb128 0x5
	.string	"MAIN_E_HW_B0"
	.sleb128 0
	.uleb128 0x5
	.string	"MAIN_E_HW_B01_X10"
	.sleb128 1
	.uleb128 0x5
	.string	"MAIN_E_HW_B01_X10_DV"
	.sleb128 2
	.uleb128 0x5
	.string	"MAIN_E_HW_B02_X10"
	.sleb128 3
	.uleb128 0x5
	.string	"MAIN_E_HW_B02_X10_DV"
	.sleb128 4
	.uleb128 0x5
	.string	"MAIN_E_HW_C0"
	.sleb128 5
	.uleb128 0x5
	.string	"MAIN_E_HW_C0_DV"
	.sleb128 6
	.uleb128 0x5
	.string	"MAIN_E_HW_C1"
	.sleb128 7
	.uleb128 0x5
	.string	"MAIN_E_HW_C1_DV"
	.sleb128 8
	.uleb128 0x5
	.string	"MAIN_E_HW_C1_C01"
	.sleb128 9
	.uleb128 0x5
	.string	"MAIN_E_HW_C1_C01_DV"
	.sleb128 10
	.uleb128 0x5
	.string	"MAIN_E_HW_C1_C02"
	.sleb128 11
	.uleb128 0x5
	.string	"MAIN_E_HW_C1_C02_DV"
	.sleb128 12
	.uleb128 0x5
	.string	"MAIN_E_HW_C1_BAK13"
	.sleb128 13
	.uleb128 0x5
	.string	"MAIN_E_HW_C1_BAK14"
	.sleb128 14
	.uleb128 0x5
	.string	"MAIN_E_HW_Reserved"
	.sleb128 15
	.byte	0
	.uleb128 0x3
	.string	"MAIN_E_HW_VER"
	.byte	0xc
	.byte	0x6a
	.uaword	0xf95
	.uleb128 0x6
	.byte	0x10
	.byte	0xc
	.byte	0x6c
	.uaword	0x116c
	.uleb128 0x7
	.string	"App"
	.byte	0xc
	.byte	0x6d
	.uaword	0x19e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"Meas"
	.byte	0xc
	.byte	0x6e
	.uaword	0x19e
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x7
	.string	"Ctrl"
	.byte	0xc
	.byte	0x6f
	.uaword	0x19e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"Pwm"
	.byte	0xc
	.byte	0x70
	.uaword	0x19e
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x7
	.string	"Diag"
	.byte	0xc
	.byte	0x71
	.uaword	0x19e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"Ntc"
	.byte	0xc
	.byte	0x72
	.uaword	0x19e
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x7
	.string	"State"
	.byte	0xc
	.byte	0x73
	.uaword	0x19e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"Safety"
	.byte	0xc
	.byte	0x74
	.uaword	0x19e
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.byte	0
	.uleb128 0x3
	.string	"MAIN_E_HW_VER_APP"
	.byte	0xc
	.byte	0x75
	.uaword	0x10eb
	.uleb128 0x6
	.byte	0x20
	.byte	0xc
	.byte	0x77
	.uaword	0x11dd
	.uleb128 0x7
	.string	"Code"
	.byte	0xc
	.byte	0x78
	.uaword	0x11dd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"CodeNum"
	.byte	0xc
	.byte	0x79
	.uaword	0x19e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"VerName"
	.byte	0xc
	.byte	0x7a
	.uaword	0x19e
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x7
	.string	"Ver"
	.byte	0xc
	.byte	0x7b
	.uaword	0x10d6
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"App"
	.byte	0xc
	.byte	0x7c
	.uaword	0x116c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x9
	.uaword	0x19e
	.uaword	0x11ed
	.uleb128 0xa
	.uaword	0x16c
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.string	"MAIN_S_HW_VER"
	.byte	0xc
	.byte	0x7d
	.uaword	0x1185
	.uleb128 0x11
	.string	"HsfbPwm_EventRecharge"
	.byte	0x1
	.uahalf	0x15c
	.byte	0x1
	.uaword	0x1ca
	.byte	0x1
	.uaword	0x1249
	.uleb128 0x12
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x15c
	.uaword	0x1249
	.uleb128 0x12
	.uaword	.LASF9
	.byte	0x1
	.uahalf	0x15d
	.uaword	0x1249
	.uleb128 0x13
	.string	"y"
	.byte	0x1
	.uahalf	0x15f
	.uaword	0x1ca
	.byte	0
	.uleb128 0x14
	.byte	0x4
	.uaword	0x124f
	.uleb128 0x15
	.uaword	0x19e
	.uleb128 0x16
	.byte	0x1
	.string	"HsfbPwm_State15us_Init"
	.byte	0x1
	.uahalf	0x17a
	.byte	0x1
	.byte	0x1
	.uleb128 0x17
	.byte	0x1
	.string	"HsfbPwm_GetData100us"
	.byte	0x1
	.byte	0x4d
	.byte	0x1
	.uaword	.LFB202
	.uaword	.LFE202
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0x18
	.byte	0x1
	.string	"HsfbPwm_Jitter100us"
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.uaword	.LFB203
	.uaword	.LFE203
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x12d4
	.uleb128 0x19
	.string	"Delay1_l"
	.byte	0x1
	.byte	0x68
	.uaword	0x1bf
	.uaword	.LLST0
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.string	"HsfbPwm_MAF_Calc"
	.byte	0x1
	.byte	0x9f
	.byte	0x1
	.uaword	.LFB204
	.uaword	.LFE204
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x1327
	.uleb128 0x1a
	.string	"Switch_c"
	.byte	0x1
	.byte	0xa1
	.uaword	0x19e
	.byte	0x1
	.byte	0x5f
	.uleb128 0x1b
	.string	"DataTypeConversion3"
	.byte	0x1
	.byte	0xa2
	.uaword	0x193
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.string	"HsfbPwm_ToMor100us"
	.byte	0x1
	.byte	0xbb
	.byte	0x1
	.uaword	.LFB205
	.uaword	.LFE205
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x1405
	.uleb128 0x19
	.string	"RelationalOperator_n"
	.byte	0x1
	.byte	0xbd
	.uaword	0x1ca
	.uaword	.LLST1
	.uleb128 0x1c
	.string	"DataTypeConversion1"
	.byte	0x1
	.byte	0xbe
	.uaword	0x193
	.uahalf	0x3e8
	.uleb128 0x19
	.string	"Switch1_j0"
	.byte	0x1
	.byte	0xbf
	.uaword	0x1bf
	.uaword	.LLST2
	.uleb128 0x19
	.string	"Sum_ky"
	.byte	0x1
	.byte	0xc0
	.uaword	0x1bf
	.uaword	.LLST3
	.uleb128 0x19
	.string	"LogicalOperator1_c"
	.byte	0x1
	.byte	0xc1
	.uaword	0x1ca
	.uaword	.LLST4
	.uleb128 0x19
	.string	"Merge_g"
	.byte	0x1
	.byte	0xc2
	.uaword	0x1ca
	.uaword	.LLST5
	.uleb128 0x19
	.string	"Switch1_j"
	.byte	0x1
	.byte	0xc3
	.uaword	0x19e
	.uaword	.LLST6
	.uleb128 0x1b
	.string	"tmp"
	.byte	0x1
	.byte	0xc4
	.uaword	0x193
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.string	"HsfbPwm_GetData15us"
	.byte	0x1
	.uahalf	0x11f
	.byte	0x1
	.uaword	.LFB206
	.uaword	.LFE206
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x1440
	.uleb128 0x1e
	.string	"Sum1_e"
	.byte	0x1
	.uahalf	0x121
	.uaword	0x1bf
	.byte	0x1
	.byte	0x5f
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.string	"HsfbPwm_SetData15us"
	.byte	0x1
	.uahalf	0x135
	.byte	0x1
	.uaword	.LFB207
	.uaword	.LFE207
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0x1d
	.byte	0x1
	.string	"HsfbPwm_EnDis15us"
	.byte	0x1
	.uahalf	0x145
	.byte	0x1
	.uaword	.LFB208
	.uaword	.LFE208
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x14ac
	.uleb128 0x20
	.string	"LogicalOperator_fj"
	.byte	0x1
	.uahalf	0x147
	.uaword	0x1ca
	.uaword	.LLST7
	.byte	0
	.uleb128 0x21
	.uaword	0x1254
	.uaword	.LFB210
	.uaword	.LFE210
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0x1d
	.byte	0x1
	.string	"HsfbPwm_State15us"
	.byte	0x1
	.uahalf	0x187
	.byte	0x1
	.uaword	.LFB211
	.uaword	.LFE211
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x152d
	.uleb128 0x22
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x189
	.uaword	0x19e
	.uaword	.LLST8
	.uleb128 0x22
	.uaword	.LASF9
	.byte	0x1
	.uahalf	0x18a
	.uaword	0x19e
	.uaword	.LLST9
	.uleb128 0x23
	.uaword	0x1202
	.uaword	.LBB6
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.uahalf	0x1d2
	.uleb128 0x24
	.uaword	0x1232
	.uaword	.LLST10
	.uleb128 0x25
	.uaword	.Ldebug_ranges0+0x28
	.uleb128 0x26
	.uaword	0x123e
	.uaword	.LLST11
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.string	"HsfbPwm_Init"
	.byte	0x1
	.uahalf	0x1ef
	.byte	0x1
	.uaword	.LFB212
	.uaword	.LFE212
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x1560
	.uleb128 0x27
	.uaword	0x1254
	.uaword	.LBB14
	.uaword	.LBE14
	.byte	0x1
	.uahalf	0x1f1
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.string	"HsfbPwm_Call100us"
	.byte	0x1
	.uahalf	0x1fc
	.byte	0x1
	.uaword	.LFB213
	.uaword	.LFE213
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x15ff
	.uleb128 0x28
	.uaword	.LASF10
	.byte	0x1
	.uahalf	0x1fc
	.uaword	0x15ff
	.uaword	.LLST12
	.uleb128 0x29
	.string	"CtrlStatus100us"
	.byte	0x1
	.uahalf	0x1fd
	.uaword	0x160a
	.uaword	.LLST13
	.uleb128 0x29
	.string	"StateStatus"
	.byte	0x1
	.uahalf	0x1fd
	.uaword	0x1615
	.uaword	.LLST14
	.uleb128 0x29
	.string	"AppRx10ms"
	.byte	0x1
	.uahalf	0x1fe
	.uaword	0x1620
	.uaword	.LLST15
	.uleb128 0x2a
	.string	"SafetyStatus100us"
	.byte	0x1
	.uahalf	0x1ff
	.uaword	0x162b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.byte	0x4
	.uaword	0x1605
	.uleb128 0x15
	.uaword	0x8c9
	.uleb128 0x14
	.byte	0x4
	.uaword	0x1610
	.uleb128 0x15
	.uaword	0x7a8
	.uleb128 0x14
	.byte	0x4
	.uaword	0x161b
	.uleb128 0x15
	.uaword	0x988
	.uleb128 0x14
	.byte	0x4
	.uaword	0x1626
	.uleb128 0x15
	.uaword	0xaf1
	.uleb128 0x14
	.byte	0x4
	.uaword	0x1631
	.uleb128 0x15
	.uaword	0x9dc
	.uleb128 0x1d
	.byte	0x1
	.string	"HsfbPwm_Call15us"
	.byte	0x1
	.uahalf	0x213
	.byte	0x1
	.uaword	.LFB214
	.uaword	.LFE214
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x16a2
	.uleb128 0x29
	.string	"CtrlStatus15us"
	.byte	0x1
	.uahalf	0x213
	.uaword	0x16a2
	.uaword	.LLST16
	.uleb128 0x28
	.uaword	.LASF10
	.byte	0x1
	.uahalf	0x214
	.uaword	0x15ff
	.uaword	.LLST17
	.uleb128 0x29
	.string	"PwmStatus15us"
	.byte	0x1
	.uahalf	0x215
	.uaword	0x16ad
	.uaword	.LLST18
	.byte	0
	.uleb128 0x14
	.byte	0x4
	.uaword	0x16a8
	.uleb128 0x15
	.uaword	0x7ff
	.uleb128 0x14
	.byte	0x4
	.uaword	0x34e
	.uleb128 0x1d
	.byte	0x1
	.string	"HsfbPwm_CallInit"
	.byte	0x1
	.uahalf	0x228
	.byte	0x1
	.uaword	.LFB215
	.uaword	.LFE215
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x16f7
	.uleb128 0x2b
	.string	"HsfbPwm_Jitter_tmp"
	.byte	0x1
	.uahalf	0x22a
	.uaword	0x19e
	.uahalf	0x602
	.byte	0
	.uleb128 0x1a
	.string	"JitterFrequency"
	.byte	0x1
	.byte	0x26
	.uaword	0x1bf
	.byte	0x5
	.byte	0x3
	.uaword	JitterFrequency
	.uleb128 0x1a
	.string	"JitterStep"
	.byte	0x1
	.byte	0x27
	.uaword	0x1bf
	.byte	0x5
	.byte	0x3
	.uaword	JitterStep
	.uleb128 0x2c
	.string	"HsfbPwm_Status"
	.byte	0x1
	.byte	0x15
	.uaword	0x455
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	HsfbPwm_Status
	.uleb128 0x2c
	.string	"HsfbPwm_Jitter"
	.byte	0x1
	.byte	0x16
	.uaword	0x57d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	HsfbPwm_Jitter
	.uleb128 0x2c
	.string	"HsfbPwm_ToMor"
	.byte	0x1
	.byte	0x17
	.uaword	0x643
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	HsfbPwm_ToMor
	.uleb128 0x2c
	.string	"HsfbPwm_Period"
	.byte	0x1
	.byte	0x18
	.uaword	0x4f2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	HsfbPwm_Period
	.uleb128 0x2c
	.string	"HsfbPwm_StateCmd"
	.byte	0x1
	.byte	0x19
	.uaword	0x484
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	HsfbPwm_StateCmd
	.uleb128 0x2c
	.string	"HsfbPwm_StartState"
	.byte	0x1
	.byte	0x1a
	.uaword	0x1bf
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	HsfbPwm_StartState
	.uleb128 0x2c
	.string	"HsfbPwm_ChargeState"
	.byte	0x1
	.byte	0x1b
	.uaword	0x1bf
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	HsfbPwm_ChargeState
	.uleb128 0x2c
	.string	"HsfbPwm_DischargeState"
	.byte	0x1
	.byte	0x1c
	.uaword	0x1bf
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	HsfbPwm_DischargeState
	.uleb128 0x2c
	.string	"HsfbPwm_State"
	.byte	0x1
	.byte	0x1d
	.uaword	0x25e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	HsfbPwm_State
	.uleb128 0x2c
	.string	"HsfbPwm_DW"
	.byte	0x1
	.byte	0x2e
	.uaword	0xdeb
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	HsfbPwm_DW
	.uleb128 0x2d
	.string	"PSWReg_Rd0"
	.byte	0xd
	.byte	0x45
	.uaword	0xf81
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.string	"PSWReg_Rd1"
	.byte	0xd
	.byte	0x46
	.uaword	0xf81
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.string	"PSWReg_Rd2"
	.byte	0xd
	.byte	0x47
	.uaword	0xf81
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.string	"PSWReg_Rd3"
	.byte	0xd
	.byte	0x48
	.uaword	0xf81
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.string	"Main_HwVer"
	.byte	0xc
	.byte	0x89
	.uaword	0x11ed
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.uaword	0x19e
	.uaword	0x18cf
	.uleb128 0xa
	.uaword	0x16c
	.byte	0x2
	.byte	0
	.uleb128 0x2d
	.string	"Pwm_PwmEn"
	.byte	0xe
	.byte	0x2a
	.uaword	0x18bf
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.string	"HsfbPwm_CtrlStatus15us"
	.byte	0x1
	.byte	0x3b
	.uaword	0x16a2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	HsfbPwm_CtrlStatus15us
	.uleb128 0x2c
	.string	"HsfbPwm_MeasStatus100us"
	.byte	0x1
	.byte	0x3c
	.uaword	0x15ff
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	HsfbPwm_MeasStatus100us
	.uleb128 0x2c
	.string	"HsfbPwm_CtrlStatus100us"
	.byte	0x1
	.byte	0x3d
	.uaword	0x160a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	HsfbPwm_CtrlStatus100us
	.uleb128 0x2c
	.string	"HsfbPwm_StateStatus"
	.byte	0x1
	.byte	0x3e
	.uaword	0x1615
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	HsfbPwm_StateStatus
	.uleb128 0x2c
	.string	"HsfbPwm_AppRx10ms"
	.byte	0x1
	.byte	0x3f
	.uaword	0x1620
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	HsfbPwm_AppRx10ms
	.uleb128 0x2c
	.string	"HsfbPwm_SafetyStatus100us"
	.byte	0x1
	.byte	0x40
	.uaword	0x162b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	HsfbPwm_SafetyStatus100us
	.uleb128 0x2c
	.string	"HsfbPwm_PwmStatus15us"
	.byte	0x1
	.byte	0x41
	.uaword	0x16ad
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	HsfbPwm_PwmStatus15us
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x26
	.byte	0
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
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x5
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x2e
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
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
	.uleb128 0x6
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL2
	.uaword	.LVL3
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL8
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL10
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL13
	.uaword	.LFE203
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL20
	.uaword	.LVL24
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL30
	.uaword	.LVL33
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL37
	.uaword	.LVL38
	.uahalf	0x1
	.byte	0x57
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL25
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL26
	.uaword	.LVL27
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0x3f800000
	.uaword	.LVL40
	.uaword	.LVL41
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL42
	.uaword	.LFE205
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL17
	.uaword	.LVL27
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL28
	.uaword	.LVL29
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL30
	.uaword	.LVL34
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL34
	.uaword	.LVL35
	.uahalf	0x5
	.byte	0x3
	.uaword	HsfbPwm_DW+56
	.uaword	.LVL35
	.uaword	.LFE205
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL21
	.uaword	.LVL22
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL30
	.uaword	.LVL32
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL19
	.uaword	.LVL28
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL30
	.uaword	.LVL35
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL36
	.uaword	.LFE205
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL20
	.uaword	.LVL23
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL30
	.uaword	.LVL31
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL37
	.uaword	.LVL38
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL44
	.uaword	.LVL45
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL46
	.uaword	.LVL47
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL48
	.uaword	.LFE208
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL49
	.uaword	.LVL54-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL56
	.uaword	.LVL57
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL59
	.uaword	.LVL60
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL62
	.uaword	.LVL63-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL64
	.uaword	.LVL65-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL68
	.uaword	.LVL69-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL70
	.uaword	.LVL71-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL72
	.uaword	.LVL75-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL76
	.uaword	.LVL77-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL78
	.uaword	.LVL79-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL80
	.uaword	.LFE211
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL50
	.uaword	.LVL52
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL56
	.uaword	.LVL58
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL59
	.uaword	.LVL61-1
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL62
	.uaword	.LVL63-1
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL64
	.uaword	.LVL65-1
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL66
	.uaword	.LVL67-1
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL68
	.uaword	.LVL69-1
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL70
	.uaword	.LVL71-1
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL72
	.uaword	.LVL73
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL76
	.uaword	.LVL77-1
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL78
	.uaword	.LVL79-1
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL51
	.uaword	.LVL55
	.uahalf	0x6
	.byte	0xf2
	.uaword	.Ldebug_info0+5363
	.sleb128 0
	.uaword	.LVL72
	.uaword	.LVL76
	.uahalf	0x6
	.byte	0xf2
	.uaword	.Ldebug_info0+5363
	.sleb128 0
	.uaword	.LVL80
	.uaword	.LFE211
	.uahalf	0x6
	.byte	0xf2
	.uaword	.Ldebug_info0+5363
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL53
	.uaword	.LVL55
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL74
	.uaword	.LVL76
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL81
	.uaword	.LFE211
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL82
	.uaword	.LVL83-1
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL82
	.uaword	.LVL83-1
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL82
	.uaword	.LVL83-1
	.uahalf	0x1
	.byte	0x66
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL82
	.uaword	.LVL83-1
	.uahalf	0x1
	.byte	0x67
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL84
	.uaword	.LVL85-1
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL84
	.uaword	.LVL85-1
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL84
	.uaword	.LVL85-1
	.uahalf	0x1
	.byte	0x66
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
	.uaword	.LFB210
	.uaword	.LFE210-.LFB210
	.uaword	.LFB211
	.uaword	.LFE211-.LFB211
	.uaword	.LFB212
	.uaword	.LFE212-.LFB212
	.uaword	.LFB213
	.uaword	.LFE213-.LFB213
	.uaword	.LFB214
	.uaword	.LFE214-.LFB214
	.uaword	.LFB215
	.uaword	.LFE215-.LFB215
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
	.uaword	.LFB210
	.uaword	.LFE210
	.uaword	.LFB211
	.uaword	.LFE211
	.uaword	.LFB212
	.uaword	.LFE212
	.uaword	.LFB213
	.uaword	.LFE213
	.uaword	.LFB214
	.uaword	.LFE214
	.uaword	.LFB215
	.uaword	.LFE215
	.uaword	0
	.uaword	0
	.section .debug_line,"",@progbits
.Ldebug_line0:
	.section .debug_str,"",@progbits
.LASF10:
	.string	"MeasStatus100us"
.LASF6:
	.string	"Enable"
.LASF2:
	.string	"IpriPwmGain"
.LASF3:
	.string	"Operation"
.LASF4:
	.string	"BuckDuty"
.LASF7:
	.string	"AutoSwitchDis"
.LASF9:
	.string	"DataStoreRead2_mi"
.LASF1:
	.string	"TopoState"
.LASF5:
	.string	"BoostDuty"
.LASF0:
	.string	"Topology"
.LASF8:
	.string	"DataStoreRead1_cr"
	.extern	HsfbPwm_Discharge,STT_FUNC,0
	.extern	HsfbPwm_Reset,STT_FUNC,0
	.extern	HsfbPwm_Charge,STT_FUNC,0
	.extern	HsfbPwm_SteadyRun,STT_FUNC,0
	.extern	HsfbPwm_Sync,STT_FUNC,0
	.extern	Pwm_PwmEn,STT_OBJECT,6
	.extern	Main_HwVer,STT_OBJECT,32
	.ident	"GCC: (HighTec Release v4.6.3.0) 4.6.3 build on 2013-05-17"
