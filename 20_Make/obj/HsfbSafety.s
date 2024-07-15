	.file	"HsfbSafety.c"
.section .text,"ax",@progbits
.Ltext0:
	.section .text.MPU_ASIL_CODE,"ax",@progbits
	.align 3
	.global	HsfbSafety_DCDC01_LFD1
	.type	HsfbSafety_DCDC01_LFD1, @function
HsfbSafety_DCDC01_LFD1:
.LFB202:
	.file 1 "../40_Appl/HsfbSafety/HsfbSafety.c"
	.loc 1 71 0
	.loc 1 73 0
	movh.a	%a15, hi:HsfbSafety_SafetyStatus
	ld.hu	%d15, [%a15] lo:HsfbSafety_SafetyStatus
	lea	%a2, [%a15] lo:HsfbSafety_SafetyStatus
	jnz	%d15, .L2
	.loc 1 74 0
	ld.bu	%d2, [%a2] 2
	mov.u	%d15, 65535
	jnz	%d2, .L2
.L3:
	.loc 1 81 0
	movh.a	%a15, hi:HsfbSafety_DW
	lea	%a15, [%a15] lo:HsfbSafety_DW
	ld.h	%d2, [%a15] 54
	add	%d15, %d2
	extr	%d15, %d15, 0, 16
.LVL0:
	.loc 1 82 0
	ge	%d2, %d15, 51
	jz	%d2, .L14
.LVL1:
.L4:
	.loc 1 91 0
	mov	%d15, 1
	st.b	[%a15] 80, %d15
	mov	%d15, 50
	.loc 1 96 0
	st.h	[%a15] 54, %d15
	.loc 1 97 0
	ret
.L2:
	.loc 1 75 0
	movh.a	%a15, hi:Gtm_PwmStatus
	ld.hu	%d2, [%a15] lo:Gtm_PwmStatus
	mov.u	%d15, 65535
	seln	%d15, %d2, %d15, 1
	j	.L3
.LVL2:
.L14:
	.loc 1 85 0
	jltz	%d15, .L11
	.loc 1 90 0
	ne	%d2, %d15, 50
	jz	%d2, .L4
	.loc 1 93 0
	jz	%d15, .L5
	.loc 1 93 0 is_stmt 0 discriminator 1
	ld.bu	%d3, [%a15] 80
	mov	%d2, 1
	jz	%d3, .L5
	.loc 1 93 0 discriminator 3
	st.b	[%a15] 80, %d2
.LVL3:
.L15:
	.loc 1 96 0 is_stmt 1
	st.h	[%a15] 54, %d15
	.loc 1 97 0
	ret
.LVL4:
.L11:
	.loc 1 86 0
	mov	%d15, 0
.LVL5:
.L5:
	.loc 1 93 0 discriminator 2
	mov	%d2, 0
	st.b	[%a15] 80, %d2
	j	.L15
.LFE202:
	.size	HsfbSafety_DCDC01_LFD1, .-HsfbSafety_DCDC01_LFD1
	.align 3
	.global	HsfbSafety_DCDC02_LFD1
	.type	HsfbSafety_DCDC02_LFD1, @function
HsfbSafety_DCDC02_LFD1:
.LFB203:
	.loc 1 108 0
	.loc 1 110 0
	movh.a	%a15, hi:HsfbSafety_SafetyStatus
	lea	%a15, [%a15] lo:HsfbSafety_SafetyStatus
	ld.hu	%d15, [%a15] 8
	jnz	%d15, .L17
	.loc 1 111 0
	ld.bu	%d2, [%a15] 10
	mov.u	%d15, 65535
	jnz	%d2, .L17
	.loc 1 118 0
	movh.a	%a15, hi:HsfbSafety_DW
	lea	%a15, [%a15] lo:HsfbSafety_DW
	ld.h	%d2, [%a15] 52
	add	%d15, %d2
	extr	%d15, %d15, 0, 16
.LVL6:
	.loc 1 119 0
	ge	%d2, %d15, 51
	jz	%d2, .L28
.LVL7:
.L19:
	.loc 1 128 0
	mov	%d15, 1
	st.b	[%a15] 79, %d15
	mov	%d15, 50
	.loc 1 133 0
	st.h	[%a15] 52, %d15
	.loc 1 134 0
	ret
.L17:
	.loc 1 112 0
	movh.a	%a15, hi:Gtm_PwmStatus
	ld.hu	%d2, [%a15] lo:Gtm_PwmStatus
	.loc 1 118 0
	movh.a	%a15, hi:HsfbSafety_DW
	.loc 1 112 0
	mov.u	%d15, 65535
	.loc 1 118 0
	lea	%a15, [%a15] lo:HsfbSafety_DW
	.loc 1 112 0
	seln	%d15, %d2, %d15, 1
	.loc 1 118 0
	ld.h	%d2, [%a15] 52
	add	%d15, %d2
	extr	%d15, %d15, 0, 16
.LVL8:
	.loc 1 119 0
	ge	%d2, %d15, 51
	jnz	%d2, .L19
.LVL9:
.L28:
	.loc 1 122 0
	jltz	%d15, .L26
.LVL10:
	.loc 1 127 0
	ne	%d2, %d15, 50
	jz	%d2, .L19
	.loc 1 130 0
	jz	%d15, .L20
	.loc 1 130 0 is_stmt 0 discriminator 1
	ld.bu	%d3, [%a15] 79
	mov	%d2, 1
	jz	%d3, .L20
	.loc 1 130 0 discriminator 3
	st.b	[%a15] 79, %d2
.LVL11:
.L29:
	.loc 1 133 0 is_stmt 1
	st.h	[%a15] 52, %d15
	.loc 1 134 0
	ret
.L26:
	.loc 1 123 0
	mov	%d15, 0
.L20:
	.loc 1 130 0 discriminator 2
	mov	%d2, 0
	st.b	[%a15] 79, %d2
	j	.L29
.LFE203:
	.size	HsfbSafety_DCDC02_LFD1, .-HsfbSafety_DCDC02_LFD1
	.align 3
	.global	HsfbSafety_DCDC02_SM1
	.type	HsfbSafety_DCDC02_SM1, @function
HsfbSafety_DCDC02_SM1:
.LFB204:
	.loc 1 145 0
	.loc 1 148 0
	movh.a	%a15, hi:HsfbSafety_Enable
	lea	%a15, [%a15] lo:HsfbSafety_Enable
	ld.bu	%d2, [%a15] 8
	mov.u	%d15, 65535
	jz	%d2, .L31
.LVL12:
	.loc 1 149 0
	movh.a	%a15, hi:HsfbSafety_MeasStatus100us
	ld.a	%a15, [%a15] lo:HsfbSafety_MeasStatus100us
	movh	%d3, 16792
	ld.w	%d2, [%a15] 28
	cmp.f	%d2, %d2, %d3
	extr.u	%d2, %d2, 2, 1
	.loc 1 154 0
	seln	%d15, %d2, %d15, 1
.LVL13:
.L31:
	.loc 1 160 0
	movh.a	%a15, hi:HsfbSafety_DW
	lea	%a15, [%a15] lo:HsfbSafety_DW
	ld.h	%d2, [%a15] 50
	add	%d15, %d2
	extr	%d15, %d15, 0, 16
.LVL14:
	.loc 1 161 0
	jlt	%d15, 6, .L43
.LVL15:
.L33:
	.loc 1 170 0
	mov	%d15, 1
	st.b	[%a15] 78, %d15
	mov	%d15, 5
	.loc 1 175 0
	st.h	[%a15] 50, %d15
	.loc 1 176 0
	ret
.LVL16:
.L43:
	.loc 1 164 0
	jltz	%d15, .L40
	.loc 1 169 0
	jeq	%d15, 5, .L33
	.loc 1 172 0
	jz	%d15, .L34
	.loc 1 172 0 is_stmt 0 discriminator 1
	ld.bu	%d3, [%a15] 78
	mov	%d2, 1
	jz	%d3, .L34
	.loc 1 172 0 discriminator 3
	st.b	[%a15] 78, %d2
.LVL17:
.L44:
	.loc 1 175 0 is_stmt 1
	st.h	[%a15] 50, %d15
	.loc 1 176 0
	ret
.LVL18:
.L40:
	.loc 1 165 0
	mov	%d15, 0
.LVL19:
.L34:
	.loc 1 172 0 discriminator 2
	mov	%d2, 0
	st.b	[%a15] 78, %d2
	j	.L44
.LFE204:
	.size	HsfbSafety_DCDC02_SM1, .-HsfbSafety_DCDC02_SM1
	.align 3
	.global	HsfbSafety_DCDC02_SM2
	.type	HsfbSafety_DCDC02_SM2, @function
HsfbSafety_DCDC02_SM2:
.LFB205:
	.loc 1 187 0
	.loc 1 190 0
	movh.a	%a15, hi:HsfbSafety_Enable
	lea	%a15, [%a15] lo:HsfbSafety_Enable
	ld.bu	%d2, [%a15] 9
	mov.u	%d15, 65535
	jz	%d2, .L46
.LVL20:
	.loc 1 191 0
	movh.a	%a15, hi:HsfbSafety_MeasStatus100us
	ld.a	%a15, [%a15] lo:HsfbSafety_MeasStatus100us
	movh	%d3, 16792
	ld.w	%d2, [%a15] 36
	cmp.f	%d2, %d2, %d3
	extr.u	%d2, %d2, 2, 1
	.loc 1 196 0
	seln	%d15, %d2, %d15, 1
.LVL21:
.L46:
	.loc 1 202 0
	movh.a	%a15, hi:HsfbSafety_DW
	lea	%a15, [%a15] lo:HsfbSafety_DW
	ld.h	%d2, [%a15] 48
	add	%d15, %d2
	extr	%d15, %d15, 0, 16
.LVL22:
	.loc 1 203 0
	jlt	%d15, 6, .L58
.LVL23:
.L48:
	.loc 1 212 0
	mov	%d15, 1
	st.b	[%a15] 77, %d15
	mov	%d15, 5
	.loc 1 217 0
	st.h	[%a15] 48, %d15
	.loc 1 218 0
	ret
.LVL24:
.L58:
	.loc 1 206 0
	jltz	%d15, .L55
	.loc 1 211 0
	jeq	%d15, 5, .L48
	.loc 1 214 0
	jz	%d15, .L49
	.loc 1 214 0 is_stmt 0 discriminator 1
	ld.bu	%d3, [%a15] 77
	mov	%d2, 1
	jz	%d3, .L49
	.loc 1 214 0 discriminator 3
	st.b	[%a15] 77, %d2
.LVL25:
.L59:
	.loc 1 217 0 is_stmt 1
	st.h	[%a15] 48, %d15
	.loc 1 218 0
	ret
.LVL26:
.L55:
	.loc 1 207 0
	mov	%d15, 0
.LVL27:
.L49:
	.loc 1 214 0 discriminator 2
	mov	%d2, 0
	st.b	[%a15] 77, %d2
	j	.L59
.LFE205:
	.size	HsfbSafety_DCDC02_SM2, .-HsfbSafety_DCDC02_SM2
	.align 3
	.global	HsfbSafety_DCDC02_SM3
	.type	HsfbSafety_DCDC02_SM3, @function
HsfbSafety_DCDC02_SM3:
.LFB206:
	.loc 1 229 0
	.loc 1 232 0
	movh.a	%a15, hi:HsfbSafety_Enable
	lea	%a15, [%a15] lo:HsfbSafety_Enable
	ld.bu	%d2, [%a15] 10
	mov.u	%d15, 65535
	jz	%d2, .L61
.LVL28:
	.loc 1 233 0
	movh.a	%a15, hi:HsfbSafety_VoutErr
	ld.w	%d2, [%a15] lo:HsfbSafety_VoutErr
	movh	%d3, 15693
	addi	%d3, %d3, -13107
	cmp.f	%d2, %d2, %d3
	extr.u	%d2, %d2, 2, 1
	.loc 1 238 0
	seln	%d15, %d2, %d15, 1
.LVL29:
.L61:
	.loc 1 244 0
	movh.a	%a15, hi:HsfbSafety_DW
	lea	%a15, [%a15] lo:HsfbSafety_DW
	ld.h	%d2, [%a15] 46
	add	%d15, %d2
	extr	%d15, %d15, 0, 16
.LVL30:
	.loc 1 245 0
	ge	%d2, %d15, 11
	jz	%d2, .L73
.LVL31:
.L63:
	.loc 1 254 0
	mov	%d15, 1
	st.b	[%a15] 76, %d15
	mov	%d15, 10
	.loc 1 259 0
	st.h	[%a15] 46, %d15
	.loc 1 260 0
	ret
.LVL32:
.L73:
	.loc 1 248 0
	jltz	%d15, .L70
	.loc 1 253 0
	ne	%d2, %d15, 10
	jz	%d2, .L63
	.loc 1 256 0
	jz	%d15, .L64
	.loc 1 256 0 is_stmt 0 discriminator 1
	ld.bu	%d3, [%a15] 76
	mov	%d2, 1
	jz	%d3, .L64
	.loc 1 256 0 discriminator 3
	st.b	[%a15] 76, %d2
.LVL33:
.L74:
	.loc 1 259 0 is_stmt 1
	st.h	[%a15] 46, %d15
	.loc 1 260 0
	ret
.LVL34:
.L70:
	.loc 1 249 0
	mov	%d15, 0
.LVL35:
.L64:
	.loc 1 256 0 discriminator 2
	mov	%d2, 0
	st.b	[%a15] 76, %d2
	j	.L74
.LFE206:
	.size	HsfbSafety_DCDC02_SM3, .-HsfbSafety_DCDC02_SM3
	.align 3
	.global	HsfbSafety_PWMEn_Calc
	.type	HsfbSafety_PWMEn_Calc, @function
HsfbSafety_PWMEn_Calc:
.LFB207:
	.loc 1 271 0
	.loc 1 272 0
	movh.a	%a15, hi:HsfbSafety_StateStatus
	ld.a	%a15, [%a15] lo:HsfbSafety_StateStatus
	mov	%d2, 0
	ld.bu	%d15, [%a15] 3
	jz	%d15, .L76
	.loc 1 273 0 discriminator 1
	movh.a	%a2, hi:HsfbSafety_SafetyStatus
	.loc 1 272 0 discriminator 1
	ld.hu	%d15, [%a2] lo:HsfbSafety_SafetyStatus
	.loc 1 273 0 discriminator 1
	lea	%a15, [%a2] lo:HsfbSafety_SafetyStatus
	.loc 1 272 0 discriminator 1
	jnz	%d15, .L76
	.loc 1 274 0
	ld.bu	%d15, [%a15] 2
	jnz	%d15, .L76
	.loc 1 276 0
	ld.hu	%d15, [%a15] 8
	jnz	%d15, .L76
	.loc 1 277 0
	ld.bu	%d15, [%a15] 10
	jnz	%d15, .L76
	.loc 1 270 0
	ld.bu	%d2, [%a15] 14
	.loc 1 277 0
	eq	%d2, %d2, 0
.L76:
	.loc 1 272 0 discriminator 3
	movh.a	%a15, hi:HsfbSafety_DW
	lea	%a15, [%a15] lo:HsfbSafety_DW
	st.b	[%a15] 75, %d2
	.loc 1 280 0 discriminator 3
	ret
.LFE207:
	.size	HsfbSafety_PWMEn_Calc, .-HsfbSafety_PWMEn_Calc
	.align 3
	.global	HsfbSafety_Verr_Calc
	.type	HsfbSafety_Verr_Calc, @function
HsfbSafety_Verr_Calc:
.LFB208:
	.loc 1 296 0
.LVL36:
	.loc 1 299 0
	cmp.f	%d15, %d4, %d5
	extr.u	%d15, %d15, 2, 1
	.loc 1 302 0
	sel	%d15, %d15, %d4, %d5
.LVL37:
	.loc 1 305 0
	cmp.f	%d15, %d15, %d6
.LVL38:
	jz.t	%d15, 2, .L95
	.loc 1 307 0
	add.f	%d6, %d4, %d5
.LVL39:
	movh	%d2, 16128
	.loc 1 306 0
	sub.f	%d15, %d4, %d5
.LVL40:
	.loc 1 307 0
	mul.f	%d6, %d6, %d2
.LVL41:
.L85:
	.loc 1 313 0
	div.f	%d6, %d15, %d6
.LVL42:
	.loc 1 314 0
	mov	%d15, 0
	cmp.f	%d15, %d6, %d15
	jnz.t	%d15, 2, .L97
	.loc 1 317 0
	addih	%d6, %d6, 0x8000
.LVL43:
.L97:
	st.w	[%a4]0, %d6
	ret
.LVL44:
.L95:
	.loc 1 309 0
	mov	%d15, 0
	j	.L85
.LFE208:
	.size	HsfbSafety_Verr_Calc, .-HsfbSafety_Verr_Calc
	.section .text.MPU_QM_CODE,"ax",@progbits
	.align 3
	.global	HsfbSafety_AutoDiag_Init
	.type	HsfbSafety_AutoDiag_Init, @function
HsfbSafety_AutoDiag_Init:
.LFB209:
	.loc 1 333 0
.LVL45:
	.loc 1 334 0
	mov	%d15, 0
	st.b	[%a4]0, %d15
	.loc 1 335 0
	st.b	[%a5]0, %d15
	.loc 1 336 0
	st.b	[%a6]0, %d15
	.loc 1 337 0
	ret
.LFE209:
	.size	HsfbSafety_AutoDiag_Init, .-HsfbSafety_AutoDiag_Init
	.section .text.MPU_ASIL_CODE
	.align 3
	.global	HsfbSafety_AutoDiag
	.type	HsfbSafety_AutoDiag, @function
HsfbSafety_AutoDiag:
.LFB210:
	.loc 1 352 0
.LVL46:
	.loc 1 355 0
	ld.bu	%d15, [%a7] 2
	.loc 1 352 0
	ld.hu	%d2, [%SP]0
	ld.hu	%d3, [%SP] 4
	.loc 1 355 0
	jz	%d15, .L112
.LVL47:
.LBB35:
.LBB36:
	.loc 1 365 0
	ld.bu	%d15, [%a7] 3
	jeq	%d15, 2, .L104
.LVL48:
	jeq	%d15, 3, .L105
	jeq	%d15, 1, .L113
	.loc 1 399 0
	jz	%d4, .L110
	.loc 1 400 0
	mov	%d15, 2
	.loc 1 402 0
	mov	%d2, 1
.LVL49:
	.loc 1 400 0
	st.b	[%a7] 3, %d15
	.loc 1 401 0
	mov	%d15, 0
	st.h	[%a7]0, %d15
	.loc 1 402 0
	st.b	[%a4]0, %d2
	.loc 1 403 0
	st.b	[%a5]0, %d15
	.loc 1 404 0
	st.b	[%a6]0, %d15
	ret
.LVL50:
.L112:
.LBE36:
.LBE35:
	.loc 1 357 0
	mov	%d2, 2
	.loc 1 356 0
	mov	%d3, 1
	.loc 1 358 0
	st.h	[%a7]0, %d15
	.loc 1 357 0
	st.b	[%a7] 3, %d2
	.loc 1 358 0
	mov	%d2, 0
	.loc 1 356 0
	st.b	[%a7] 2, %d3
	.loc 1 359 0
	st.b	[%a4]0, %d3
	.loc 1 360 0
	st.b	[%a5]0, %d2
	.loc 1 361 0
	st.b	[%a6]0, %d2
	ret
.LVL51:
.L104:
.LBB38:
.LBB37:
	.loc 1 379 0
	eq	%d15, %d4, 0
	and.ne	%d15, %d5, 0
	jz	%d15, .L99
	.loc 1 380 0
	mov	%d15, 0
	st.b	[%a4]0, %d15
	.loc 1 381 0
	mov	%d15, 3
	st.b	[%a7] 3, %d15
	ret
.L110:
	.loc 1 406 0
	mov	%d15, 1
	st.b	[%a5]0, %d15
	ret
.L105:
	.loc 1 386 0
	ld.h	%d15, [%a7]0
	add	%d15, 1
	extr.u	%d15, %d15, 0, 16
	st.h	[%a7]0, %d15
	.loc 1 387 0
	jnz	%d6, .L108
	.loc 1 389 0
	jge.u	%d2, %d15, .L109
	.loc 1 390 0
	mov	%d15, 1
	st.b	[%a6]0, %d15
.LVL52:
.L108:
	.loc 1 412 0
	mov	%d15, 0
	st.h	[%a7]0, %d15
	.loc 1 413 0
	mov	%d15, 1
	st.b	[%a7] 3, %d15
.LVL53:
.L99:
	ret
.LVL54:
.L113:
	.loc 1 367 0
	ld.h	%d4, [%a7]0
.LVL55:
	add	%d4, 1
	extr.u	%d4, %d4, 0, 16
	st.h	[%a7]0, %d4
	.loc 1 368 0
	jnz	%d7, .L106
	.loc 1 370 0
	jge.u	%d2, %d4, .L107
	.loc 1 371 0
	st.b	[%a6]0, %d15
.LVL56:
.L106:
	.loc 1 417 0
	mov	%d15, 0
	st.h	[%a7]0, %d15
	.loc 1 418 0
	mov	%d15, 4
	st.b	[%a7] 3, %d15
	ret
.LVL57:
.L107:
	.loc 1 374 0
	mov	%d4, 0
	mov	%d5, %d3
.LVL58:
	j	HsfbSafety_SetClrAutoDiag
.LVL59:
.L109:
	.loc 1 393 0
	mov	%d4, 1
.LVL60:
	mov	%d5, %d3
.LVL61:
	j	HsfbSafety_SetClrAutoDiag
.LVL62:
.LVL63:
.LVL64:
.LVL65:
.LVL66:
.LVL67:
.LVL68:
.LVL69:
.LVL70:
.LVL71:
.LVL72:
.LVL73:
.LVL74:
.LVL75:
.LBE37:
.LBE38:
.LFE210:
	.size	HsfbSafety_AutoDiag, .-HsfbSafety_AutoDiag
	.section .text.MPU_QM_CODE
	.align 3
	.global	HsfbSafety_AutoDiagFunc_Init
	.type	HsfbSafety_AutoDiagFunc_Init, @function
HsfbSafety_AutoDiagFunc_Init:
.LFB211:
	.loc 1 432 0
.LVL76:
.LBB39:
.LBB40:
	.loc 1 334 0
	mov	%d15, 0
	movh.a	%a15, hi:HsfbSafety_DW
	lea	%a15, [%a15] lo:HsfbSafety_DW
	.loc 1 335 0
	st.b	[%a15] 73, %d15
	.loc 1 334 0
	st.b	[%a15] 72, %d15
	.loc 1 336 0
	st.b	[%a15] 74, %d15
.LVL77:
.LBE40:
.LBE39:
.LBB41:
.LBB42:
	.loc 1 334 0
	st.b	[%a15] 69, %d15
	.loc 1 335 0
	st.b	[%a15] 70, %d15
	.loc 1 336 0
	st.b	[%a15] 71, %d15
.LBE42:
.LBE41:
	.loc 1 437 0
	st.b	[%a4]0, %d15
	.loc 1 438 0
	ld.bu	%d15, [%a15] 70
	st.b	[%a4] 1, %d15
	.loc 1 439 0
	ld.bu	%d15, [%a15] 73
	st.b	[%a4] 2, %d15
	.loc 1 440 0
	ld.bu	%d15, [%a15] 73
	st.b	[%a4] 3, %d15
	.loc 1 441 0
	ret
.LFE211:
	.size	HsfbSafety_AutoDiagFunc_Init, .-HsfbSafety_AutoDiagFunc_Init
	.section .text.MPU_ASIL_CODE
	.align 3
	.global	HsfbSafety_AutoDiagFunc
	.type	HsfbSafety_AutoDiagFunc, @function
HsfbSafety_AutoDiagFunc:
.LFB212:
	.loc 1 453 0
.LVL78:
	.loc 1 458 0
	ld.bu	%d2, [%a4] 1
	.loc 1 453 0
	sub.a	%SP, 8
.LCFI0:
	.loc 1 458 0
	eq	%d10, %d2, 0
	.loc 1 453 0
	mov.aa	%a14, %a4
	mov.d	%d8, %a5
	mov.aa	%a13, %a6
	mov.aa	%a12, %a7
	.loc 1 457 0
	eq	%d9, %d4, 0
.LVL79:
	.loc 1 459 0
	mov	%d7, 0
	jz	%d10, .L116
.LVL80:
	.loc 1 459 0 is_stmt 0 discriminator 1
	ld.bu	%d3, [%a4] 8
	jz	%d3, .L132
.L116:
	.loc 1 459 0 discriminator 2
	mov	%d5, 0
.L117:
	.loc 1 460 0 is_stmt 1 discriminator 3
	mov	%d6, 0
	jz	%d2, .L118
	.loc 1 451 0
	ld.bu	%d6, [%a14] 8
	.loc 1 460 0
	ne	%d6, %d6, 0
.L118:
	.loc 1 460 0 is_stmt 0 discriminator 5
	mov	%d15, 500
	movh.a	%a15, hi:HsfbSafety_DW+72
	lea	%a15, [%a15] lo:HsfbSafety_DW+72
	st.w	[%SP]0, %d15
	mov	%d15, 0
	mov.aa	%a4, %a15
.LVL81:
	lea	%a5, [%a15] 1
	lea	%a6, [%a15] 2
.LVL82:
	lea	%a7, [%a15] -68
.LVL83:
	mov	%d4, %d9
.LVL84:
	st.w	[%SP] 4, %d15
	call	HsfbSafety_AutoDiag
.LVL85:
	.loc 1 466 0 is_stmt 1 discriminator 5
	mov	%d7, 0
	lea	%a15, [%a15] -72
	jz	%d10, .L119
	.loc 1 466 0 is_stmt 0 discriminator 1
	ld.bu	%d15, [%a14] 9
	jz	%d15, .L133
.L119:
	mov	%d5, 0
.L120:
	.loc 1 467 0 is_stmt 1 discriminator 2
	ld.bu	%d15, [%a14] 1
	mov	%d6, 0
	jz	%d15, .L121
	.loc 1 451 0
	ld.bu	%d6, [%a14] 9
	.loc 1 467 0
	ne	%d6, %d6, 0
.L121:
	.loc 1 467 0 is_stmt 0 discriminator 4
	mov	%d15, 10
	movh.a	%a4, hi:HsfbSafety_DW+69
	lea	%a4, [%a4] lo:HsfbSafety_DW+69
	st.w	[%SP]0, %d15
	mov	%d15, 1
	mov	%d4, %d9
	lea	%a5, [%a4] 1
	lea	%a6, [%a4] 2
	mov.aa	%a7, %a15
	st.w	[%SP] 4, %d15
	call	HsfbSafety_AutoDiag
	.loc 1 473 0 is_stmt 1 discriminator 4
	movh.a	%a2, hi:HsfbSafety_SafetyStatus
	ld.bu	%d15, [%a15] 71
	lea	%a2, [%a2] lo:HsfbSafety_SafetyStatus
	st.b	[%a2] 13, %d15
	.loc 1 474 0 discriminator 4
	ld.bu	%d15, [%a15] 74
	st.b	[%a2] 5, %d15
	.loc 1 475 0 discriminator 4
	ld.hu	%d15, [%a15] 72
	eq	%d15, %d15, 0
.LVL86:
	.loc 1 477 0 discriminator 4
	st.b	[%a13]0, %d15
	.loc 1 478 0 discriminator 4
	ld.w	%d3, [%a15] 68
	.loc 1 479 0 discriminator 4
	st.b	[%a13] 2, %d15
	.loc 1 478 0 discriminator 4
	insert	%d2, %d3, 0, 8, 16
	.loc 1 480 0 discriminator 4
	st.b	[%a13] 3, %d15
	.loc 1 478 0 discriminator 4
	xor	%d2, %d3
	eq	%d2, %d2, 0
	st.b	[%a13] 1, %d2
	.loc 1 481 0 discriminator 4
	ld.bu	%d15, [%a15] 73
.LVL87:
	st.b	[%a12]0, %d15
	.loc 1 482 0 discriminator 4
	ld.bu	%d15, [%a15] 70
	st.b	[%a12] 1, %d15
	.loc 1 483 0 discriminator 4
	ld.bu	%d15, [%a15] 73
	st.b	[%a12] 2, %d15
	.loc 1 484 0 discriminator 4
	ld.bu	%d15, [%a15] 73
	st.b	[%a12] 3, %d15
	.loc 1 485 0 discriminator 4
	ret
.L133:
.LVL88:
	.loc 1 467 0 discriminator 3
	ld.bu	%d15, [%a15] 73
	jz	%d15, .L129
	.loc 1 468 0
	mov.a	%a2, %d8
	movh	%d2, 16448
	ld.w	%d15, [%a2] 28
	mov	%d5, 1
	cmp.f	%d15, %d15, %d2
	or.t	%d15, %d15,2, %d15,1
	.loc 1 466 0
	mov	%d7, 1
	.loc 1 468 0
	jnz	%d15, .L120
	j	.L119
.LVL89:
.L132:
	.loc 1 460 0 discriminator 3
	jz	%d4, .L124
	.loc 1 460 0 is_stmt 0 discriminator 1
	ld.w	%d3, [%a5] 28
	movh	%d15, 16448
	cmp.f	%d15, %d3, %d15
	or.t	%d15, %d15,2, %d15,1
	mov	%d5, 1
	.loc 1 459 0 is_stmt 1 discriminator 1
	mov	%d7, 1
	.loc 1 460 0 discriminator 1
	jnz	%d15, .L117
	j	.L116
.LVL90:
.L129:
	.loc 1 466 0
	mov	%d7, 1
	j	.L119
.LVL91:
.L124:
	.loc 1 459 0
	mov	%d7, 1
	j	.L116
.LFE212:
	.size	HsfbSafety_AutoDiagFunc, .-HsfbSafety_AutoDiagFunc
	.section .text.MPU_QM_CODE
	.align 3
	.global	HsfbSafety_AutoDiagState_Init
	.type	HsfbSafety_AutoDiagState_Init, @function
HsfbSafety_AutoDiagState_Init:
.LFB213:
	.loc 1 496 0
.LVL92:
	.loc 1 498 0
	mov	%d15, 0
.LBB43:
.LBB44:
.LBB45:
	.loc 1 334 0
	movh.a	%a15, hi:HsfbSafety_DW
	lea	%a15, [%a15] lo:HsfbSafety_DW
.LBE45:
.LBE44:
.LBE43:
	.loc 1 498 0
	st.b	[%a4]0, %d15
	.loc 1 499 0
	st.b	[%a4] 1, %d15
	.loc 1 500 0
	st.b	[%a4] 2, %d15
	.loc 1 501 0
	st.b	[%a4] 6, %d15
	.loc 1 502 0
	st.b	[%a4] 3, %d15
	.loc 1 503 0
	st.b	[%a4] 7, %d15
	.loc 1 504 0
	st.b	[%a4] 4, %d15
	.loc 1 505 0
	st.b	[%a4] 8, %d15
	.loc 1 506 0
	st.b	[%a4] 5, %d15
	.loc 1 507 0
	st.b	[%a4] 9, %d15
.LVL93:
.LBB50:
.LBB47:
.LBB46:
	.loc 1 334 0
	st.b	[%a15] 72, %d15
	.loc 1 335 0
	st.b	[%a15] 73, %d15
	.loc 1 336 0
	st.b	[%a15] 74, %d15
.LVL94:
.LBE46:
.LBE47:
.LBB48:
.LBB49:
	.loc 1 334 0
	st.b	[%a15] 69, %d15
	.loc 1 335 0
	st.b	[%a15] 70, %d15
	.loc 1 336 0
	st.b	[%a15] 71, %d15
.LBE49:
.LBE48:
.LBE50:
	.loc 1 509 0
	ret
.LFE213:
	.size	HsfbSafety_AutoDiagState_Init, .-HsfbSafety_AutoDiagState_Init
	.section .text.MPU_ASIL_CODE
	.align 3
	.global	HsfbSafety_AutoDiagState
	.type	HsfbSafety_AutoDiagState, @function
HsfbSafety_AutoDiagState:
.LFB214:
	.loc 1 521 0
.LVL95:
	.loc 1 524 0
	movh.a	%a12, hi:HsfbSafety_DW
	lea	%a12, [%a12] lo:HsfbSafety_DW
	ld.bu	%d15, [%a12] 56
	.loc 1 521 0
	sub.a	%SP, 16
.LCFI1:
	.loc 1 521 0
	mov.aa	%a13, %a4
	mov.aa	%a15, %a7
	.loc 1 524 0
	jz	%d15, .L149
	.loc 1 540 0
	ld.bu	%d15, [%a12] 57
	jeq	%d15, 1, .L139
	jeq	%d15, 2, .L150
	.loc 1 590 0
	ld.hu	%d15, [%a4] 16
	jnz	%d15, .L151
	.loc 1 606 0
	mov	%d2, 1
	.loc 1 607 0
	st.b	[%a7] 1, %d15
	.loc 1 608 0
	mov	%d4, 0
	.loc 1 606 0
	st.b	[%a7]0, %d2
.L147:
	.loc 1 608 0
	mov.aa	%a4, %a5
.LVL96:
.L148:
	mov.aa	%a5, %a6
	lea	%a7, [%SP] 8
	lea	%a6, [%SP] 12
	call	HsfbSafety_AutoDiagFunc
	.loc 1 610 0
	ld.bu	%d15, [%SP] 12
	st.b	[%a15] 2, %d15
	.loc 1 611 0
	ld.bu	%d15, [%SP] 13
	st.b	[%a15] 3, %d15
	.loc 1 612 0
	ld.bu	%d15, [%SP] 14
	st.b	[%a15] 4, %d15
	.loc 1 613 0
	ld.bu	%d15, [%SP] 15
	st.b	[%a15] 5, %d15
	.loc 1 614 0
	ld.bu	%d15, [%SP] 8
	st.b	[%a15] 6, %d15
	.loc 1 615 0
	ld.bu	%d15, [%SP] 9
	st.b	[%a15] 7, %d15
	.loc 1 616 0
	ld.bu	%d15, [%SP] 10
	st.b	[%a15] 8, %d15
	.loc 1 617 0
	ld.bu	%d15, [%SP] 11
	st.b	[%a15] 9, %d15
	ret
.LVL97:
.L150:
	.loc 1 565 0
	ld.bu	%d15, [%a7] 6
	jz	%d15, .L142
	.loc 1 565 0 is_stmt 0 discriminator 1
	ld.bu	%d15, [%a7] 7
	jz	%d15, .L142
	ld.bu	%d15, [%a7] 8
	jz	%d15, .L142
	.loc 1 566 0 is_stmt 1
	ld.bu	%d15, [%a7] 9
	jnz	%d15, .L143
.L142:
	.loc 1 566 0 is_stmt 0 discriminator 1
	ld.hu	%d15, [%a13] 16
	jnz	%d15, .L144
.L143:
	.loc 1 567 0 is_stmt 1
	mov	%d4, 0
	mov	%d5, 4
	call	HsfbSafety_SetClrAutoDiag
.LVL98:
	.loc 1 568 0
	mov	%d15, 1
	.loc 1 569 0
	mov	%d2, 0
	.loc 1 568 0
	st.b	[%a12] 57, %d15
	.loc 1 569 0
	st.b	[%a15]0, %d2
	.loc 1 570 0
	st.b	[%a15] 1, %d15
	.loc 1 571 0
	ld.hu	%d15, [%a13] 16
	ne	%d15, %d15, 0
	st.b	[%a12] 81, %d15
	ret
.LVL99:
.L139:
	.loc 1 542 0
	ld.hu	%d2, [%a4] 16
	jz	%d2, .L141
	.loc 1 542 0 is_stmt 0 discriminator 1
	ld.bu	%d8, [%a12] 81
	jz	%d8, .L152
.L141:
	.loc 1 558 0 is_stmt 1
	mov	%d15, 0
	st.b	[%a15]0, %d15
	.loc 1 559 0
	mov	%d15, 1
	st.b	[%a15] 1, %d15
	.loc 1 560 0
	ld.hu	%d15, [%a13] 16
	ne	%d15, %d15, 0
	st.b	[%a12] 81, %d15
	ret
.L149:
	.loc 1 525 0
	mov	%d2, 1
	.loc 1 526 0
	mov	%d3, 3
	.loc 1 529 0
	mov	%d4, 0
	.loc 1 525 0
	st.b	[%a12] 56, %d2
	.loc 1 526 0
	st.b	[%a12] 57, %d3
	.loc 1 527 0
	st.b	[%a7]0, %d2
	.loc 1 528 0
	st.b	[%a7] 1, %d15
	j	.L147
.L151:
	.loc 1 592 0
	mov	%d15, 2
	.loc 1 591 0
	mov	%d4, 1
	mov	%d5, 4
	st.a	[%SP] 4, %a5
	st.a	[%SP]0, %a6
	call	HsfbSafety_SetClrAutoDiag
.LVL100:
	.loc 1 592 0
	st.b	[%a12] 57, %d15
	.loc 1 593 0
	mov	%d15, 0
	.loc 1 595 0
	mov	%d4, 1
	.loc 1 593 0
	st.b	[%a15]0, %d15
	.loc 1 594 0
	st.b	[%a15] 1, %d15
	.loc 1 595 0
	ld.a	%a5, [%SP] 4
	ld.a	%a6, [%SP]0
	mov.aa	%a4, %a5
	j	.L148
.LVL101:
.L144:
	.loc 1 573 0
	mov	%d15, 0
	.loc 1 575 0
	mov	%d4, 1
	.loc 1 573 0
	st.b	[%a15]0, %d15
	.loc 1 574 0
	st.b	[%a15] 1, %d15
	j	.L147
.L152:
	.loc 1 543 0
	mov	%d4, 0
	mov	%d5, 4
	st.a	[%SP] 4, %a5
	st.a	[%SP]0, %a6
	call	HsfbSafety_SetClrAutoDiag
.LVL102:
	.loc 1 544 0
	mov	%d2, 3
	.loc 1 547 0
	mov	%d4, 0
	.loc 1 544 0
	st.b	[%a12] 57, %d2
	.loc 1 545 0
	st.b	[%a15]0, %d15
	.loc 1 546 0
	st.b	[%a15] 1, %d8
	.loc 1 547 0
	ld.a	%a5, [%SP] 4
	ld.a	%a6, [%SP]0
	mov.aa	%a4, %a5
	j	.L148
.LFE214:
	.size	HsfbSafety_AutoDiagState, .-HsfbSafety_AutoDiagState
	.align 3
	.global	HsfbSafety_DCDC01_LFD3
	.type	HsfbSafety_DCDC01_LFD3, @function
HsfbSafety_DCDC01_LFD3:
.LFB215:
	.loc 1 633 0
	.loc 1 636 0
	movh.a	%a15, hi:HsfbSafety_Enable
	lea	%a15, [%a15] lo:HsfbSafety_Enable
	ld.bu	%d2, [%a15] 6
	mov.u	%d15, 65535
	jz	%d2, .L154
.LVL103:
	.loc 1 637 0
	movh.a	%a15, hi:HsfbSafety_VrefErr
	ld.w	%d2, [%a15] lo:HsfbSafety_VrefErr
	movh	%d3, 15524
	addi	%d3, %d3, -10486
	cmp.f	%d2, %d2, %d3
	extr.u	%d2, %d2, 2, 1
	.loc 1 642 0
	seln	%d15, %d2, %d15, 1
.LVL104:
.L154:
	.loc 1 648 0
	movh.a	%a15, hi:HsfbSafety_DW
	lea	%a15, [%a15] lo:HsfbSafety_DW
	ld.h	%d2, [%a15] 44
	add	%d15, %d2
	extr	%d15, %d15, 0, 16
.LVL105:
	.loc 1 649 0
	ge	%d2, %d15, 101
	jz	%d2, .L166
.LVL106:
.L156:
	.loc 1 658 0
	mov	%d15, 1
	st.b	[%a15] 68, %d15
	mov	%d15, 100
	.loc 1 663 0
	st.h	[%a15] 44, %d15
	.loc 1 664 0
	ret
.LVL107:
.L166:
	.loc 1 652 0
	jltz	%d15, .L163
	.loc 1 657 0
	ne	%d2, %d15, 100
	jz	%d2, .L156
	.loc 1 660 0
	jz	%d15, .L157
	.loc 1 660 0 is_stmt 0 discriminator 1
	ld.bu	%d3, [%a15] 68
	mov	%d2, 1
	jz	%d3, .L157
	.loc 1 660 0 discriminator 3
	st.b	[%a15] 68, %d2
.LVL108:
.L167:
	.loc 1 663 0 is_stmt 1
	st.h	[%a15] 44, %d15
	.loc 1 664 0
	ret
.LVL109:
.L163:
	.loc 1 653 0
	mov	%d15, 0
.LVL110:
.L157:
	.loc 1 660 0 discriminator 2
	mov	%d2, 0
	st.b	[%a15] 68, %d2
	j	.L167
.LFE215:
	.size	HsfbSafety_DCDC01_LFD3, .-HsfbSafety_DCDC01_LFD3
	.align 3
	.global	HsfbSafety_DCDC01_LFD4
	.type	HsfbSafety_DCDC01_LFD4, @function
HsfbSafety_DCDC01_LFD4:
.LFB216:
	.loc 1 675 0
	.loc 1 678 0
	movh.a	%a15, hi:HsfbSafety_Enable
	lea	%a15, [%a15] lo:HsfbSafety_Enable
	ld.bu	%d2, [%a15] 7
	mov.u	%d15, 65535
	jz	%d2, .L169
.LVL111:
	.loc 1 679 0
	movh.a	%a15, hi:HsfbSafety_VoutHw1Err
	ld.w	%d2, [%a15] lo:HsfbSafety_VoutHw1Err
	movh	%d3, 15693
	addi	%d3, %d3, -13107
	cmp.f	%d2, %d2, %d3
	extr.u	%d2, %d2, 2, 1
	.loc 1 684 0
	seln	%d15, %d2, %d15, 1
.LVL112:
.L169:
	.loc 1 690 0
	movh.a	%a15, hi:HsfbSafety_DW
	lea	%a15, [%a15] lo:HsfbSafety_DW
	ld.h	%d2, [%a15] 42
	add	%d15, %d2
	extr	%d15, %d15, 0, 16
.LVL113:
	.loc 1 691 0
	ge	%d2, %d15, 101
	jz	%d2, .L181
.LVL114:
.L171:
	.loc 1 700 0
	mov	%d15, 1
	st.b	[%a15] 67, %d15
	mov	%d15, 100
	.loc 1 705 0
	st.h	[%a15] 42, %d15
	.loc 1 706 0
	ret
.LVL115:
.L181:
	.loc 1 694 0
	jltz	%d15, .L178
	.loc 1 699 0
	ne	%d2, %d15, 100
	jz	%d2, .L171
	.loc 1 702 0
	jz	%d15, .L172
	.loc 1 702 0 is_stmt 0 discriminator 1
	ld.bu	%d3, [%a15] 67
	mov	%d2, 1
	jz	%d3, .L172
	.loc 1 702 0 discriminator 3
	st.b	[%a15] 67, %d2
.LVL116:
.L182:
	.loc 1 705 0 is_stmt 1
	st.h	[%a15] 42, %d15
	.loc 1 706 0
	ret
.LVL117:
.L178:
	.loc 1 695 0
	mov	%d15, 0
.LVL118:
.L172:
	.loc 1 702 0 discriminator 2
	mov	%d2, 0
	st.b	[%a15] 67, %d2
	j	.L182
.LFE216:
	.size	HsfbSafety_DCDC01_LFD4, .-HsfbSafety_DCDC01_LFD4
	.align 3
	.global	HsfbSafety_DCDC01_SM1
	.type	HsfbSafety_DCDC01_SM1, @function
HsfbSafety_DCDC01_SM1:
.LFB217:
	.loc 1 717 0
	.loc 1 720 0
	movh.a	%a15, hi:HsfbSafety_Enable
	ld.bu	%d2, [%a15] lo:HsfbSafety_Enable
	mov.u	%d15, 65535
	jz	%d2, .L184
.LVL119:
	.loc 1 721 0
	movh.a	%a15, hi:HsfbSafety_MeasStatus1ms
	ld.a	%a15, [%a15] lo:HsfbSafety_MeasStatus1ms
	movh	%d3, 16768
	ld.w	%d2, [%a15] 28
	cmp.f	%d2, %d2, %d3
	extr.u	%d2, %d2, 2, 1
	.loc 1 726 0
	seln	%d15, %d2, %d15, 1
.LVL120:
.L184:
	.loc 1 732 0
	movh.a	%a15, hi:HsfbSafety_DW
	lea	%a15, [%a15] lo:HsfbSafety_DW
	ld.h	%d2, [%a15] 40
	add	%d15, %d2
	extr	%d15, %d15, 0, 16
.LVL121:
	.loc 1 733 0
	ge	%d2, %d15, 101
	jz	%d2, .L196
.LVL122:
.L186:
	.loc 1 742 0
	mov	%d15, 1
	st.b	[%a15] 66, %d15
	mov	%d15, 100
	.loc 1 747 0
	st.h	[%a15] 40, %d15
	.loc 1 748 0
	ret
.LVL123:
.L196:
	.loc 1 736 0
	jltz	%d15, .L193
	.loc 1 741 0
	ne	%d2, %d15, 100
	jz	%d2, .L186
	.loc 1 744 0
	jz	%d15, .L187
	.loc 1 744 0 is_stmt 0 discriminator 1
	ld.bu	%d3, [%a15] 66
	mov	%d2, 1
	jz	%d3, .L187
	.loc 1 744 0 discriminator 3
	st.b	[%a15] 66, %d2
.LVL124:
.L197:
	.loc 1 747 0 is_stmt 1
	st.h	[%a15] 40, %d15
	.loc 1 748 0
	ret
.LVL125:
.L193:
	.loc 1 737 0
	mov	%d15, 0
.LVL126:
.L187:
	.loc 1 744 0 discriminator 2
	mov	%d2, 0
	st.b	[%a15] 66, %d2
	j	.L197
.LFE217:
	.size	HsfbSafety_DCDC01_SM1, .-HsfbSafety_DCDC01_SM1
	.align 3
	.global	HsfbSafety_DCDC01_SM2
	.type	HsfbSafety_DCDC01_SM2, @function
HsfbSafety_DCDC01_SM2:
.LFB218:
	.loc 1 759 0
	.loc 1 762 0
	movh.a	%a15, hi:HsfbSafety_Enable
	lea	%a15, [%a15] lo:HsfbSafety_Enable
	ld.bu	%d2, [%a15] 1
	mov.u	%d15, 65535
	jz	%d2, .L199
.LVL127:
	.loc 1 763 0
	movh.a	%a15, hi:HsfbSafety_MeasStatus1ms
	ld.a	%a15, [%a15] lo:HsfbSafety_MeasStatus1ms
	movh	%d3, 16768
	ld.w	%d2, [%a15] 36
	cmp.f	%d2, %d2, %d3
	extr.u	%d2, %d2, 2, 1
	.loc 1 768 0
	seln	%d15, %d2, %d15, 1
.LVL128:
.L199:
	.loc 1 774 0
	movh.a	%a15, hi:HsfbSafety_DW
	lea	%a15, [%a15] lo:HsfbSafety_DW
	ld.h	%d2, [%a15] 38
	add	%d15, %d2
	extr	%d15, %d15, 0, 16
.LVL129:
	.loc 1 775 0
	ge	%d2, %d15, 101
	jz	%d2, .L211
.LVL130:
.L201:
	.loc 1 784 0
	mov	%d15, 1
	st.b	[%a15] 65, %d15
	mov	%d15, 100
	.loc 1 789 0
	st.h	[%a15] 38, %d15
	.loc 1 790 0
	ret
.LVL131:
.L211:
	.loc 1 778 0
	jltz	%d15, .L208
	.loc 1 783 0
	ne	%d2, %d15, 100
	jz	%d2, .L201
	.loc 1 786 0
	jz	%d15, .L202
	.loc 1 786 0 is_stmt 0 discriminator 1
	ld.bu	%d3, [%a15] 65
	mov	%d2, 1
	jz	%d3, .L202
	.loc 1 786 0 discriminator 3
	st.b	[%a15] 65, %d2
.LVL132:
.L212:
	.loc 1 789 0 is_stmt 1
	st.h	[%a15] 38, %d15
	.loc 1 790 0
	ret
.LVL133:
.L208:
	.loc 1 779 0
	mov	%d15, 0
.LVL134:
.L202:
	.loc 1 786 0 discriminator 2
	mov	%d2, 0
	st.b	[%a15] 65, %d2
	j	.L212
.LFE218:
	.size	HsfbSafety_DCDC01_SM2, .-HsfbSafety_DCDC01_SM2
	.align 3
	.global	HsfbSafety_DCDC01_SM3
	.type	HsfbSafety_DCDC01_SM3, @function
HsfbSafety_DCDC01_SM3:
.LFB219:
	.loc 1 801 0
	.loc 1 804 0
	movh.a	%a15, hi:HsfbSafety_Enable
	lea	%a15, [%a15] lo:HsfbSafety_Enable
	ld.bu	%d2, [%a15] 2
	mov.u	%d15, 65535
	jz	%d2, .L214
.LVL135:
	.loc 1 805 0
	movh.a	%a15, hi:HsfbSafety_VoutErr
	ld.w	%d2, [%a15] lo:HsfbSafety_VoutErr
	movh	%d3, 15693
	addi	%d3, %d3, -13107
	cmp.f	%d2, %d2, %d3
	extr.u	%d2, %d2, 2, 1
	.loc 1 810 0
	seln	%d15, %d2, %d15, 1
.LVL136:
.L214:
	.loc 1 816 0
	movh.a	%a15, hi:HsfbSafety_DW
	lea	%a15, [%a15] lo:HsfbSafety_DW
	ld.h	%d2, [%a15] 36
	add	%d15, %d2
	extr	%d15, %d15, 0, 16
.LVL137:
	.loc 1 817 0
	ge	%d2, %d15, 101
	jz	%d2, .L226
.LVL138:
.L216:
	.loc 1 826 0
	mov	%d15, 1
	st.b	[%a15] 64, %d15
	mov	%d15, 100
	.loc 1 831 0
	st.h	[%a15] 36, %d15
	.loc 1 832 0
	ret
.LVL139:
.L226:
	.loc 1 820 0
	jltz	%d15, .L223
	.loc 1 825 0
	ne	%d2, %d15, 100
	jz	%d2, .L216
	.loc 1 828 0
	jz	%d15, .L217
	.loc 1 828 0 is_stmt 0 discriminator 1
	ld.bu	%d3, [%a15] 64
	mov	%d2, 1
	jz	%d3, .L217
	.loc 1 828 0 discriminator 3
	st.b	[%a15] 64, %d2
.LVL140:
.L227:
	.loc 1 831 0 is_stmt 1
	st.h	[%a15] 36, %d15
	.loc 1 832 0
	ret
.LVL141:
.L223:
	.loc 1 821 0
	mov	%d15, 0
.LVL142:
.L217:
	.loc 1 828 0 discriminator 2
	mov	%d2, 0
	st.b	[%a15] 64, %d2
	j	.L227
.LFE219:
	.size	HsfbSafety_DCDC01_SM3, .-HsfbSafety_DCDC01_SM3
	.align 3
	.global	HsfbSafety_DCDC01_SM4
	.type	HsfbSafety_DCDC01_SM4, @function
HsfbSafety_DCDC01_SM4:
.LFB220:
	.loc 1 843 0
	.loc 1 844 0
	movh.a	%a15, hi:HsfbSafety_Enable
	lea	%a15, [%a15] lo:HsfbSafety_Enable
	ld.bu	%d15, [%a15] 3
	mov	%d2, 0
	jz	%d15, .L229
	.loc 1 845 0 discriminator 1
	movh.a	%a15, hi:HsfbSafety_PortStatus1ms
	ld.a	%a15, [%a15] lo:HsfbSafety_PortStatus1ms
	.loc 1 842 0 discriminator 1
	ld.bu	%d2, [%a15] 8
	.loc 1 844 0 discriminator 1
	ne	%d2, %d2, 0
.L229:
	.loc 1 844 0 is_stmt 0 discriminator 3
	movh.a	%a15, hi:HsfbSafety_SafetyStatus
	lea	%a15, [%a15] lo:HsfbSafety_SafetyStatus
	st.b	[%a15] 3, %d2
	.loc 1 846 0 is_stmt 1 discriminator 3
	ret
.LFE220:
	.size	HsfbSafety_DCDC01_SM4, .-HsfbSafety_DCDC01_SM4
	.align 3
	.global	HsfbSafety_DCDC02_LFD3
	.type	HsfbSafety_DCDC02_LFD3, @function
HsfbSafety_DCDC02_LFD3:
.LFB221:
	.loc 1 857 0
	.loc 1 860 0
	movh.a	%a15, hi:HsfbSafety_Enable
	lea	%a15, [%a15] lo:HsfbSafety_Enable
	ld.bu	%d2, [%a15] 14
	mov.u	%d15, 65535
	jz	%d2, .L232
.LVL143:
	.loc 1 861 0
	movh.a	%a15, hi:HsfbSafety_MeasStatus1ms
	ld.a	%a15, [%a15] lo:HsfbSafety_MeasStatus1ms
	movh	%d3, 16680
	ld.w	%d2, [%a15] 76
	cmp.f	%d2, %d2, %d3
	extr.u	%d2, %d2, 0, 1
	.loc 1 866 0
	seln	%d15, %d2, %d15, 1
.LVL144:
.L232:
	.loc 1 872 0
	movh.a	%a15, hi:HsfbSafety_DW
	lea	%a15, [%a15] lo:HsfbSafety_DW
	ld.h	%d2, [%a15] 34
	add	%d15, %d2
	extr	%d15, %d15, 0, 16
.LVL145:
	.loc 1 873 0
	mov	%d2, 1001
	jlt	%d15, %d2, .L244
.LVL146:
.L234:
	.loc 1 882 0
	mov	%d15, 1
	st.b	[%a15] 63, %d15
	mov	%d15, 1000
	.loc 1 887 0
	st.h	[%a15] 34, %d15
	.loc 1 888 0
	ret
.LVL147:
.L244:
	.loc 1 876 0
	jltz	%d15, .L241
	.loc 1 881 0
	mov	%d2, 1000
	jeq	%d15, %d2, .L234
	.loc 1 884 0
	jz	%d15, .L235
	.loc 1 884 0 is_stmt 0 discriminator 1
	ld.bu	%d3, [%a15] 63
	mov	%d2, 1
	jz	%d3, .L235
	.loc 1 884 0 discriminator 3
	st.b	[%a15] 63, %d2
.LVL148:
.L245:
	.loc 1 887 0 is_stmt 1
	st.h	[%a15] 34, %d15
	.loc 1 888 0
	ret
.LVL149:
.L241:
	.loc 1 877 0
	mov	%d15, 0
.LVL150:
.L235:
	.loc 1 884 0 discriminator 2
	mov	%d2, 0
	st.b	[%a15] 63, %d2
	j	.L245
.LFE221:
	.size	HsfbSafety_DCDC02_LFD3, .-HsfbSafety_DCDC02_LFD3
	.align 3
	.global	HsfbSafety_DCDC02_LFD4
	.type	HsfbSafety_DCDC02_LFD4, @function
HsfbSafety_DCDC02_LFD4:
.LFB222:
	.loc 1 899 0
	.loc 1 902 0
	movh.a	%a15, hi:HsfbSafety_Enable
	lea	%a15, [%a15] lo:HsfbSafety_Enable
	ld.bu	%d2, [%a15] 15
	mov.u	%d15, 65534
	jz	%d2, .L247
.LVL151:
	.loc 1 903 0
	movh.a	%a15, hi:HsfbSafety_VoutHw2Err
	ld.w	%d2, [%a15] lo:HsfbSafety_VoutHw2Err
	movh	%d3, 15780
	addi	%d3, %d3, -10486
	cmp.f	%d2, %d2, %d3
	extr.u	%d2, %d2, 2, 1
	.loc 1 908 0
	seln	%d15, %d2, %d15, 1
.LVL152:
.L247:
	.loc 1 914 0
	movh.a	%a15, hi:HsfbSafety_DW
	lea	%a15, [%a15] lo:HsfbSafety_DW
	ld.h	%d2, [%a15] 32
	add	%d15, %d2
	extr	%d15, %d15, 0, 16
.LVL153:
	.loc 1 915 0
	ge	%d2, %d15, 101
	jz	%d2, .L259
.LVL154:
.L249:
	.loc 1 924 0
	mov	%d15, 1
	st.b	[%a15] 62, %d15
	mov	%d15, 100
	.loc 1 929 0
	st.h	[%a15] 32, %d15
	.loc 1 930 0
	ret
.LVL155:
.L259:
	.loc 1 918 0
	jltz	%d15, .L256
	.loc 1 923 0
	ne	%d2, %d15, 100
	jz	%d2, .L249
	.loc 1 926 0
	jz	%d15, .L250
	.loc 1 926 0 is_stmt 0 discriminator 1
	ld.bu	%d3, [%a15] 62
	mov	%d2, 1
	jz	%d3, .L250
	.loc 1 926 0 discriminator 3
	st.b	[%a15] 62, %d2
.LVL156:
.L260:
	.loc 1 929 0 is_stmt 1
	st.h	[%a15] 32, %d15
	.loc 1 930 0
	ret
.LVL157:
.L256:
	.loc 1 919 0
	mov	%d15, 0
.LVL158:
.L250:
	.loc 1 926 0 discriminator 2
	mov	%d2, 0
	st.b	[%a15] 62, %d2
	j	.L260
.LFE222:
	.size	HsfbSafety_DCDC02_LFD4, .-HsfbSafety_DCDC02_LFD4
	.align 3
	.global	HsfbSafety_DCDC02_SM4
	.type	HsfbSafety_DCDC02_SM4, @function
HsfbSafety_DCDC02_SM4:
.LFB223:
	.loc 1 941 0
	.loc 1 942 0
	movh.a	%a15, hi:HsfbSafety_Enable
	lea	%a15, [%a15] lo:HsfbSafety_Enable
	ld.bu	%d15, [%a15] 11
	mov	%d2, 0
	jz	%d15, .L262
	.loc 1 943 0 discriminator 1
	movh.a	%a15, hi:HsfbSafety_PortStatus1ms
	ld.a	%a15, [%a15] lo:HsfbSafety_PortStatus1ms
	.loc 1 940 0 discriminator 1
	ld.bu	%d2, [%a15] 9
	.loc 1 942 0 discriminator 1
	ne	%d2, %d2, 0
.L262:
	.loc 1 942 0 is_stmt 0 discriminator 3
	movh.a	%a15, hi:HsfbSafety_SafetyStatus
	lea	%a15, [%a15] lo:HsfbSafety_SafetyStatus
	st.b	[%a15] 11, %d2
	.loc 1 944 0 is_stmt 1 discriminator 3
	ret
.LFE223:
	.size	HsfbSafety_DCDC02_SM4, .-HsfbSafety_DCDC02_SM4
	.align 3
	.global	HsfbSafety_DCDC03_LFD1
	.type	HsfbSafety_DCDC03_LFD1, @function
HsfbSafety_DCDC03_LFD1:
.LFB224:
	.loc 1 955 0
	.loc 1 960 0
	movh.a	%a15, hi:HsfbSafety_MeasStatus1ms
	ld.a	%a15, [%a15] lo:HsfbSafety_MeasStatus1ms
	ld.w	%d15, [%a15] 20
	ld.w	%d2, [%a15] 28
	.loc 1 962 0
	ld.w	%d3, [%a15] 12
	.loc 1 960 0
	mul.f	%d2, %d2, %d15
.LVL159:
	.loc 1 962 0
	ld.w	%d15, [%a15] 4
	mul.f	%d15, %d3, %d15
.LVL160:
	.loc 1 964 0
	movh	%d3, 17792
	addi	%d3, %d3, 8192
	cmp.f	%d4, %d15, %d3
	jnz.t	%d4, 2, .L284
	.loc 1 967 0
	movh	%d3, 17096
	cmp.f	%d4, %d15, %d3
	jnz.t	%d4, 0, .L284
.LVL161:
.L265:
	.loc 1 972 0
	div.f	%d4, %d2, %d15
.LVL162:
	.loc 1 974 0
	movh	%d6, 16218
	.loc 1 973 0
	movh	%d15, 17686
	cmp.f	%d15, %d2, %d15
	.loc 1 974 0
	addi	%d6, %d6, -26214
	cmp.f	%d3, %d4, %d6
	.loc 1 973 0
	or.t	%d15, %d15,0, %d15,1
	.loc 1 974 0
	and	%d3, %d3, 1
	.loc 1 973 0
	jnz	%d15, .L269
	.loc 1 975 0
	movh	%d5, 17724
	addi	%d5, %d5, -32768
	.loc 1 976 0
	movh	%d3, 16230
	.loc 1 975 0
	cmp.f	%d5, %d2, %d5
	.loc 1 976 0
	addi	%d3, %d3, 26214
	cmp.f	%d3, %d4, %d3
	.loc 1 975 0
	or.t	%d5, %d5,0, %d5,1
	.loc 1 976 0
	and	%d3, %d3, 1
	.loc 1 975 0
	jz	%d5, .L293
.L269:
.LVL163:
	.loc 1 981 0
	movh.a	%a15, hi:HsfbSafety_Enable
	lea	%a15, [%a15] lo:HsfbSafety_Enable
	ld.bu	%d4, [%a15] 18
.LVL164:
	mov.u	%d15, 65535
	jz	%d4, .L276
	.loc 1 981 0 is_stmt 0 discriminator 1
	movh	%d4, 17658
	cmp.f	%d2, %d2, %d4
.LVL165:
	extr.u	%d2, %d2, 2, 1
	and	%d2, %d3
	seln	%d15, %d2, %d15, 1
.L276:
	.loc 1 987 0 is_stmt 1
	movh.a	%a15, hi:HsfbSafety_DW
	lea	%a15, [%a15] lo:HsfbSafety_DW
	ld.h	%d2, [%a15] 30
	add	%d15, %d2
	extr	%d15, %d15, 0, 16
.LVL166:
	.loc 1 988 0
	mov	%d2, 10001
	jlt	%d15, %d2, .L294
.LVL167:
.L278:
	.loc 1 997 0
	mov	%d15, 1
	st.b	[%a15] 61, %d15
	mov	%d15, 10000
	.loc 1 1002 0
	st.h	[%a15] 30, %d15
	.loc 1 1003 0
	ret
.LVL168:
.L284:
	.loc 1 968 0
	mov	%d15, %d3
.LVL169:
	j	.L265
.LVL170:
.L294:
	.loc 1 991 0
	jltz	%d15, .L288
	.loc 1 996 0
	mov	%d2, 10000
	jeq	%d15, %d2, .L278
	.loc 1 999 0
	jz	%d15, .L279
	.loc 1 999 0 is_stmt 0 discriminator 1
	ld.bu	%d3, [%a15] 61
.LVL171:
	mov	%d2, 1
	jz	%d3, .L279
	.loc 1 999 0 discriminator 3
	st.b	[%a15] 61, %d2
.LVL172:
.L295:
	.loc 1 1002 0 is_stmt 1
	st.h	[%a15] 30, %d15
	.loc 1 1003 0
	ret
.LVL173:
.L293:
	.loc 1 978 0
	movh	%d5, 17761
	cmp.f	%d5, %d2, %d5
	cmp.f	%d3, %d4, %d6
	or.t	%d5, %d5,0, %d5,1
	and	%d3, %d3, 1
	seln	%d3, %d5, %d5, %d3
	j	.L269
.LVL174:
.L288:
	.loc 1 992 0
	mov	%d15, 0
.LVL175:
.L279:
	.loc 1 999 0 discriminator 2
	mov	%d2, 0
	st.b	[%a15] 61, %d2
	j	.L295
.LFE224:
	.size	HsfbSafety_DCDC03_LFD1, .-HsfbSafety_DCDC03_LFD1
	.align 3
	.global	HsfbSafety_DCDC03_SM1
	.type	HsfbSafety_DCDC03_SM1, @function
HsfbSafety_DCDC03_SM1:
.LFB225:
	.loc 1 1014 0
	.loc 1 1017 0
	movh.a	%a15, hi:HsfbSafety_Enable
	lea	%a15, [%a15] lo:HsfbSafety_Enable
	ld.bu	%d2, [%a15] 16
	movh.a	%a15, hi:HsfbSafety_DW
	mov.u	%d15, 65535
	lea	%a15, [%a15] lo:HsfbSafety_DW
	jz	%d2, .L297
	.loc 1 1018 0 discriminator 1
	movh.a	%a2, hi:HsfbSafety_MeasStatus1ms
	ld.a	%a2, [%a2] lo:HsfbSafety_MeasStatus1ms
	ld.w	%d3, [%a15] 20
	.loc 1 1017 0 discriminator 1
	movh	%d4, 16384
	.loc 1 1018 0 discriminator 1
	ld.w	%d2, [%a2] 28
	sub.f	%d3, %d3, %d2
	.loc 1 1017 0 discriminator 1
	cmp.f	%d3, %d3, %d4
	jnz.t	%d3, 2, .L312
.L297:
	.loc 1 1031 0
	ld.h	%d2, [%a15] 28
	add	%d15, %d2
	extr	%d15, %d15, 0, 16
.LVL176:
	.loc 1 1032 0
	mov	%d2, 1001
	jlt	%d15, %d2, .L313
.LVL177:
.L300:
	.loc 1 1041 0
	mov	%d15, 1
	st.b	[%a15] 60, %d15
	mov	%d15, 1000
	.loc 1 1046 0
	st.h	[%a15] 28, %d15
	.loc 1 1047 0
	ret
.LVL178:
.L313:
	.loc 1 1035 0
	jltz	%d15, .L308
	.loc 1 1040 0
	mov	%d2, 1000
	jeq	%d15, %d2, .L300
	.loc 1 1043 0
	jz	%d15, .L301
	.loc 1 1043 0 is_stmt 0 discriminator 1
	ld.bu	%d3, [%a15] 60
	mov	%d2, 1
	jz	%d3, .L301
	.loc 1 1043 0 discriminator 3
	st.b	[%a15] 60, %d2
.LVL179:
.L314:
	.loc 1 1046 0 is_stmt 1
	st.h	[%a15] 28, %d15
	.loc 1 1047 0
	ret
.L312:
.LVL180:
	.loc 1 1021 0 discriminator 3
	ld.w	%d3, [%a2] 20
	mul.f	%d2, %d2, %d3
.LVL181:
	.loc 1 1020 0 discriminator 3
	movh	%d3, 17692
	addi	%d3, %d3, 16384
	cmp.f	%d2, %d2, %d3
	extr.u	%d2, %d2, 0, 1
	.loc 1 1025 0 discriminator 3
	seln	%d15, %d2, %d15, 1
	j	.L297
.LVL182:
.L308:
	.loc 1 1036 0
	mov	%d15, 0
.LVL183:
.L301:
	.loc 1 1043 0 discriminator 2
	mov	%d2, 0
	st.b	[%a15] 60, %d2
	j	.L314
.LFE225:
	.size	HsfbSafety_DCDC03_SM1, .-HsfbSafety_DCDC03_SM1
	.align 3
	.global	HsfbSafety_DCDC05_LFD1
	.type	HsfbSafety_DCDC05_LFD1, @function
HsfbSafety_DCDC05_LFD1:
.LFB226:
	.loc 1 1058 0
	.loc 1 1061 0
	movh.a	%a15, hi:HsfbSafety_Enable
	lea	%a15, [%a15] lo:HsfbSafety_Enable
	ld.bu	%d2, [%a15] 20
	mov.u	%d15, 65535
	jz	%d2, .L316
.LVL184:
	.loc 1 1062 0
	movh.a	%a15, hi:HsfbSafety_Vkl30Err
	ld.w	%d2, [%a15] lo:HsfbSafety_Vkl30Err
	movh	%d3, 15693
	addi	%d3, %d3, -13107
	cmp.f	%d2, %d2, %d3
	extr.u	%d2, %d2, 2, 1
	.loc 1 1067 0
	seln	%d15, %d2, %d15, 1
.LVL185:
.L316:
	.loc 1 1073 0
	movh.a	%a15, hi:HsfbSafety_DW
	lea	%a15, [%a15] lo:HsfbSafety_DW
	ld.h	%d2, [%a15] 26
	add	%d15, %d2
	extr	%d15, %d15, 0, 16
.LVL186:
	.loc 1 1074 0
	ge	%d2, %d15, 101
	jz	%d2, .L328
.LVL187:
.L318:
	.loc 1 1083 0
	mov	%d15, 1
	st.b	[%a15] 59, %d15
	mov	%d15, 100
	.loc 1 1088 0
	st.h	[%a15] 26, %d15
	.loc 1 1089 0
	ret
.LVL188:
.L328:
	.loc 1 1077 0
	jltz	%d15, .L325
	.loc 1 1082 0
	ne	%d2, %d15, 100
	jz	%d2, .L318
	.loc 1 1085 0
	jz	%d15, .L319
	.loc 1 1085 0 is_stmt 0 discriminator 1
	ld.bu	%d3, [%a15] 59
	mov	%d2, 1
	jz	%d3, .L319
	.loc 1 1085 0 discriminator 3
	st.b	[%a15] 59, %d2
.LVL189:
.L329:
	.loc 1 1088 0 is_stmt 1
	st.h	[%a15] 26, %d15
	.loc 1 1089 0
	ret
.LVL190:
.L325:
	.loc 1 1078 0
	mov	%d15, 0
.LVL191:
.L319:
	.loc 1 1085 0 discriminator 2
	mov	%d2, 0
	st.b	[%a15] 59, %d2
	j	.L329
.LFE226:
	.size	HsfbSafety_DCDC05_LFD1, .-HsfbSafety_DCDC05_LFD1
	.align 3
	.global	HsfbSafety_DCDC05_SM1
	.type	HsfbSafety_DCDC05_SM1, @function
HsfbSafety_DCDC05_SM1:
.LFB227:
	.loc 1 1100 0
	.loc 1 1103 0
	movh.a	%a15, hi:HsfbSafety_Enable
	lea	%a15, [%a15] lo:HsfbSafety_Enable
	ld.bu	%d2, [%a15] 19
	mov.u	%d15, 65535
	jz	%d2, .L331
.LVL192:
	.loc 1 1104 0
	movh.a	%a15, hi:HsfbSafety_MeasStatus1ms
	ld.a	%a15, [%a15] lo:HsfbSafety_MeasStatus1ms
	movh	%d3, 16544
	ld.w	%d2, [%a15] 68
	cmp.f	%d2, %d2, %d3
	extr.u	%d2, %d2, 0, 1
	.loc 1 1109 0
	seln	%d15, %d2, %d15, 1
.LVL193:
.L331:
	.loc 1 1115 0
	movh.a	%a15, hi:HsfbSafety_DW
	lea	%a15, [%a15] lo:HsfbSafety_DW
	ld.h	%d2, [%a15] 24
	add	%d15, %d2
	extr	%d15, %d15, 0, 16
.LVL194:
	.loc 1 1116 0
	ge	%d2, %d15, 101
	jz	%d2, .L343
.LVL195:
.L333:
	.loc 1 1125 0
	mov	%d15, 1
	st.b	[%a15] 58, %d15
	mov	%d15, 100
	.loc 1 1130 0
	st.h	[%a15] 24, %d15
	.loc 1 1131 0
	ret
.LVL196:
.L343:
	.loc 1 1119 0
	jltz	%d15, .L340
	.loc 1 1124 0
	ne	%d2, %d15, 100
	jz	%d2, .L333
	.loc 1 1127 0
	jz	%d15, .L334
	.loc 1 1127 0 is_stmt 0 discriminator 1
	ld.bu	%d3, [%a15] 58
	mov	%d2, 1
	jz	%d3, .L334
	.loc 1 1127 0 discriminator 3
	st.b	[%a15] 58, %d2
.LVL197:
.L344:
	.loc 1 1130 0 is_stmt 1
	st.h	[%a15] 24, %d15
	.loc 1 1131 0
	ret
.LVL198:
.L340:
	.loc 1 1120 0
	mov	%d15, 0
.LVL199:
.L334:
	.loc 1 1127 0 discriminator 2
	mov	%d2, 0
	st.b	[%a15] 58, %d2
	j	.L344
.LFE227:
	.size	HsfbSafety_DCDC05_SM1, .-HsfbSafety_DCDC05_SM1
	.section .text.MPU_QM_CODE
	.align 3
	.global	HsfbSafety_Init
	.type	HsfbSafety_Init, @function
HsfbSafety_Init:
.LFB228:
	.loc 1 1142 0
.LVL200:
.LBB51:
.LBB52:
	.loc 1 498 0
	mov	%d15, 0
	movh.a	%a15, hi:HsfbSafety_DW
	lea	%a15, [%a15] lo:HsfbSafety_DW
	st.b	[%a15] 8, %d15
	.loc 1 499 0
	st.b	[%a15] 9, %d15
	.loc 1 500 0
	st.b	[%a15] 10, %d15
	.loc 1 501 0
	st.b	[%a15] 14, %d15
	.loc 1 502 0
	st.b	[%a15] 11, %d15
	.loc 1 503 0
	st.b	[%a15] 15, %d15
	.loc 1 504 0
	st.b	[%a15] 12, %d15
	.loc 1 505 0
	st.b	[%a15] 16, %d15
	.loc 1 506 0
	st.b	[%a15] 13, %d15
	.loc 1 507 0
	st.b	[%a15] 17, %d15
.LVL201:
.LBB53:
.LBB54:
.LBB55:
	.loc 1 334 0
	st.b	[%a15] 72, %d15
	.loc 1 335 0
	st.b	[%a15] 73, %d15
	.loc 1 336 0
	st.b	[%a15] 74, %d15
.LVL202:
.LBE55:
.LBE54:
.LBB56:
.LBB57:
	.loc 1 334 0
	st.b	[%a15] 69, %d15
	.loc 1 335 0
	st.b	[%a15] 70, %d15
	.loc 1 336 0
	st.b	[%a15] 71, %d15
.LBE57:
.LBE56:
.LBE53:
.LBE52:
.LBE51:
	.loc 1 1144 0
	ret
.LFE228:
	.size	HsfbSafety_Init, .-HsfbSafety_Init
	.section .code_ram,"ax",@progbits
	.align 3
	.global	HsfbSafety_Call100us
	.type	HsfbSafety_Call100us, @function
HsfbSafety_Call100us:
.LFB229:
	.loc 1 1157 0
.LVL203:
	.loc 1 1158 0
	movh.a	%a15, hi:HsfbSafety_MeasStatus100us
	st.a	[%a15] lo:HsfbSafety_MeasStatus100us, %a4
	.loc 1 1159 0
	movh.a	%a15, hi:HsfbSafety_StateStatus
	st.a	[%a15] lo:HsfbSafety_StateStatus, %a6
	.loc 1 1160 0
	movh.a	%a15, hi:HsfbSafety_200usTick
	ld.w	%d2, [%a15] lo:HsfbSafety_200usTick
	movh	%d15, 16256
	cmp.f	%d3, %d2, %d15
	.loc 1 1157 0
	mov.aa	%a14, %a5
	mov.aa	%a13, %a7
	.loc 1 1160 0
	jz.t	%d3, 0, .L364
	.loc 1 1161 0
	add.f	%d15, %d2, %d15
	st.w	[%a15] lo:HsfbSafety_200usTick, %d15
	.loc 1 1166 0
	ftoiz	%d15, %d15
	jz	%d15, .L349
	ret
.L364:
	.loc 1 1163 0
	mov	%d15, 0
	st.w	[%a15] lo:HsfbSafety_200usTick, %d15
.L349:
	.loc 1 1167 0
	ld.w	%d2, [%a4] 28
	ld.w	%d15, [%a4] 36
.LVL204:
.LBB58:
.LBB59:
	.loc 1 305 0
	movh	%d4, 16656
	.loc 1 299 0
	cmp.f	%d3, %d2, %d15
	extr.u	%d3, %d3, 2, 1
	.loc 1 302 0
	sel	%d3, %d3, %d2, %d15
.LVL205:
	.loc 1 305 0
	cmp.f	%d3, %d3, %d4
.LVL206:
	jnz.t	%d3, 2, .L366
	movh	%d15, 32768
.L353:
	.loc 1 317 0
	movh.a	%a15, hi:HsfbSafety_VoutErr
	st.w	[%a15] lo:HsfbSafety_VoutErr, %d15
.LBE59:
.LBE58:
	.loc 1 1171 0
	movh.a	%a15, hi:HsfbSafety_DW
	lea	%a15, [%a15] lo:HsfbSafety_DW
	movh.a	%a12, hi:HsfbSafety_SafetyStatus
	.loc 1 1170 0
	call	HsfbSafety_DCDC02_SM1
.LVL207:
	.loc 1 1171 0
	lea	%a12, [%a12] lo:HsfbSafety_SafetyStatus
	ld.bu	%d15, [%a15] 78
	st.b	[%a12] 8, %d15
	.loc 1 1172 0
	call	HsfbSafety_DCDC02_SM2
	.loc 1 1173 0
	ld.bu	%d15, [%a15] 77
	st.b	[%a12] 9, %d15
	.loc 1 1174 0
	call	HsfbSafety_DCDC02_SM3
	.loc 1 1175 0
	ld.bu	%d15, [%a15] 76
	st.b	[%a12] 10, %d15
	.loc 1 1176 0
	call	HsfbSafety_PWMEn_Calc
	.loc 1 1177 0
	movh.a	%a3, hi:Safety_PwmEn
	ld.bu	%d15, [%a15] 75
	lea	%a2, [%a3] lo:Safety_PwmEn
	.loc 1 1178 0
	st.h	[%a2] 2, %d15
	.loc 1 1179 0
	st.h	[%a2] 4, %d15
	.loc 1 1177 0
	st.h	[%a3] lo:Safety_PwmEn, %d15
	.loc 1 1180 0
	call	HsfbSafety_DCDC01_LFD1
	.loc 1 1181 0
	call	HsfbSafety_DCDC02_LFD1
	.loc 1 1182 0
	ld.bu	%d15, [%a15] 80
	mov	%d2, 1
	jnz	%d15, .L357
	.loc 1 1182 0 is_stmt 0 discriminator 2
	ld.bu	%d2, [%a15] 79
	ne	%d2, %d2, 0
.L357:
	.loc 1 1183 0 is_stmt 1 discriminator 3
	st.b	[%a12] 4, %d15
	.loc 1 1182 0 discriminator 3
	movh.a	%a2, hi:Safety_WDIDis
	.loc 1 1184 0 discriminator 3
	ld.bu	%d15, [%a15] 79
	st.b	[%a12] 12, %d15
	.loc 1 1182 0 discriminator 3
	st.h	[%a2] lo:Safety_WDIDis, %d2
	.loc 1 1185 0 discriminator 3
	ld.bu	%d15, [%a15] 75
	st.b	[%a13]0, %d15
	.loc 1 1186 0 discriminator 3
	ld.bu	%d15, [%a15] 75
	st.b	[%a13] 1, %d15
	.loc 1 1187 0 discriminator 3
	ld.bu	%d15, [%a15] 75
	st.b	[%a13] 2, %d15
	.loc 1 1188 0 discriminator 3
	ld.w	%d15, [%a14]0
	movh.a	%a15, hi:HsfbSafety_Enable
	eq	%d15, %d15, 3
	lea	%a15, [%a15] lo:HsfbSafety_Enable
	st.b	[%a15] 10, %d15
	ret
.LVL208:
.L366:
.LBB61:
.LBB60:
	.loc 1 306 0
	sub.f	%d3, %d2, %d15
.LVL209:
	.loc 1 307 0
	add.f	%d15, %d2, %d15
.LVL210:
	movh	%d4, 16128
	mul.f	%d15, %d15, %d4
.LVL211:
	.loc 1 314 0
	mov	%d2, 0
.LVL212:
	.loc 1 313 0
	div.f	%d15, %d3, %d15
.LVL213:
	.loc 1 314 0
	cmp.f	%d2, %d15, %d2
	jnz.t	%d2, 2, .L353
	addih	%d15, %d15, 0x8000
.LVL214:
	j	.L353
.LBE60:
.LBE61:
.LFE229:
	.size	HsfbSafety_Call100us, .-HsfbSafety_Call100us
	.section .text.MPU_ASIL_CODE
	.align 3
	.global	HsfbSafety_Call1ms
	.type	HsfbSafety_Call1ms, @function
HsfbSafety_Call1ms:
.LFB230:
	.loc 1 1204 0
.LVL215:
	.loc 1 1207 0
	movh	%d11, hi:HsfbSafety_DW+8
	.loc 1 1206 0
	movh	%d9, hi:HsfbSafety_PortStatus1ms
	.loc 1 1207 0
	addi	%d11, %d11, lo:HsfbSafety_DW+8
	.loc 1 1204 0
	mov.aa	%a13, %a4
	.loc 1 1206 0
	mov.a	%a2, %d9
	.loc 1 1204 0
	mov.d	%d10, %a7
	.loc 1 1205 0
	movh.a	%a15, hi:HsfbSafety_MeasStatus1ms
	.loc 1 1207 0
	mov.a	%a7, %d11
.LVL216:
	.loc 1 1205 0
	st.a	[%a15] lo:HsfbSafety_MeasStatus1ms, %a4
	.loc 1 1204 0
	mov.d	%d8, %a6
	.loc 1 1207 0
	mov.aa	%a4, %a6
.LVL217:
	mov.aa	%a6, %a13
.LVL218:
	.loc 1 1206 0
	st.a	[%a2] lo:HsfbSafety_PortStatus1ms, %a5
	.loc 1 1207 0
	call	HsfbSafety_AutoDiagState
.LVL219:
	.loc 1 1209 0
	ld.w	%d2, [%a13] 60
	ld.w	%d15, [%a13] 68
.LVL220:
.LBB62:
.LBB63:
	.loc 1 305 0
	movh	%d4, 16448
	.loc 1 299 0
	cmp.f	%d3, %d2, %d15
	extr.u	%d3, %d3, 2, 1
	.loc 1 302 0
	sel	%d3, %d3, %d2, %d15
.LVL221:
	.loc 1 305 0
	cmp.f	%d3, %d3, %d4
.LVL222:
	jz.t	%d3, 2, .L414
	.loc 1 306 0
	sub.f	%d3, %d2, %d15
.LVL223:
	.loc 1 307 0
	add.f	%d15, %d2, %d15
	movh	%d4, 16128
	mul.f	%d15, %d15, %d4
.LVL224:
	.loc 1 314 0
	mov	%d2, 0
	.loc 1 313 0
	div.f	%d15, %d3, %d15
.LVL225:
	.loc 1 314 0
	cmp.f	%d2, %d15, %d2
	jz.t	%d2, 2, .L418
.LVL226:
.L370:
	.loc 1 317 0
	movh.a	%a15, hi:HsfbSafety_Vkl30Err
	st.w	[%a15] lo:HsfbSafety_Vkl30Err, %d15
.LBE63:
.LBE62:
	.loc 1 1211 0
	ld.w	%d15, [%a13] 84
.LVL227:
.LBB66:
.LBB67:
	.loc 1 299 0
	movh	%d2, 16544
	cmp.f	%d2, %d15, %d2
	jnz.t	%d2, 0, .L374
.LVL228:
	.loc 1 305 0
	movh	%d2, 16384
	cmp.f	%d2, %d15, %d2
	jnz.t	%d2, 2, .L374
	movh	%d15, 32768
.LVL229:
.L375:
.LBE67:
.LBE66:
	.loc 1 1213 0
	ld.w	%d3, [%a13] 92
	movh	%d2, 16459
.LBB71:
.LBB68:
	.loc 1 317 0
	movh.a	%a15, hi:HsfbSafety_VrefErr
.LBE68:
.LBE71:
	.loc 1 1213 0
	addi	%d2, %d2, -31138
	mul.f	%d2, %d2, %d3
.LBB72:
.LBB69:
	.loc 1 317 0
	st.w	[%a15] lo:HsfbSafety_VrefErr, %d15
.LBE69:
.LBE72:
	.loc 1 1213 0
	ld.w	%d15, [%a13] 28
.LVL230:
.LBB73:
.LBB74:
	.loc 1 305 0
	movh	%d4, 16656
	.loc 1 299 0
	cmp.f	%d3, %d15, %d2
	extr.u	%d3, %d3, 2, 1
	.loc 1 302 0
	sel	%d3, %d3, %d15, %d2
.LVL231:
	.loc 1 305 0
	cmp.f	%d3, %d3, %d4
.LVL232:
	jz.t	%d3, 2, .L416
	.loc 1 306 0
	sub.f	%d3, %d15, %d2
.LVL233:
	.loc 1 307 0
	add.f	%d2, %d15, %d2
.LVL234:
	movh	%d4, 16128
	mul.f	%d2, %d2, %d4
.LVL235:
	.loc 1 313 0
	div.f	%d2, %d3, %d2
.LVL236:
	.loc 1 314 0
	mov	%d3, 0
	cmp.f	%d3, %d2, %d3
	jz.t	%d3, 2, .L419
.LVL237:
.L381:
	.loc 1 317 0
	movh.a	%a15, hi:HsfbSafety_VoutHw1Err
.LBE74:
.LBE73:
	.loc 1 1216 0
	ld.w	%d3, [%a13] 100
.LBB78:
.LBB75:
	.loc 1 317 0
	st.w	[%a15] lo:HsfbSafety_VoutHw1Err, %d2
.LBE75:
.LBE78:
	.loc 1 1216 0
	movh	%d2, 16494
	addi	%d2, %d2, -28880
	mul.f	%d2, %d2, %d3
.LVL238:
.LBB79:
.LBB80:
	.loc 1 305 0
	movh	%d4, 16656
	.loc 1 299 0
	cmp.f	%d3, %d15, %d2
	extr.u	%d3, %d3, 2, 1
	.loc 1 302 0
	sel	%d3, %d3, %d15, %d2
.LVL239:
	.loc 1 305 0
	cmp.f	%d3, %d3, %d4
.LVL240:
	jz.t	%d3, 2, .L417
	.loc 1 306 0
	sub.f	%d3, %d15, %d2
.LVL241:
	.loc 1 307 0
	add.f	%d15, %d15, %d2
	movh	%d4, 16128
	mul.f	%d15, %d15, %d4
.LVL242:
	.loc 1 314 0
	mov	%d2, 0
.LVL243:
	.loc 1 313 0
	div.f	%d15, %d3, %d15
.LVL244:
	.loc 1 314 0
	cmp.f	%d2, %d15, %d2
	jz.t	%d2, 2, .L420
.LVL245:
.L387:
.LBE80:
.LBE79:
.LBB85:
.LBB86:
	.loc 1 942 0
	movh.a	%a14, hi:HsfbSafety_Enable
.LBE86:
.LBE85:
.LBB91:
.LBB81:
	.loc 1 317 0
	movh.a	%a15, hi:HsfbSafety_VoutHw2Err
.LBE81:
.LBE91:
.LBB92:
.LBB87:
	.loc 1 942 0
	lea	%a14, [%a14] lo:HsfbSafety_Enable
.LBE87:
.LBE92:
.LBB93:
.LBB82:
	.loc 1 317 0
	st.w	[%a15] lo:HsfbSafety_VoutHw2Err, %d15
.LBE82:
.LBE93:
.LBB94:
.LBB88:
	.loc 1 942 0
	ld.bu	%d15, [%a14] 11
	mov	%d2, 0
	jz	%d15, .L391
	.loc 1 943 0
	mov.a	%a2, %d9
	ld.a	%a15, [%a2] lo:HsfbSafety_PortStatus1ms
	.loc 1 1201 0
	ld.bu	%d2, [%a15] 9
	.loc 1 942 0
	ne	%d2, %d2, 0
.L391:
	movh	%d12, hi:HsfbSafety_SafetyStatus
	mov.a	%a3, %d12
.LBE88:
.LBE94:
	.loc 1 1221 0
	movh.a	%a15, hi:HsfbSafety_DW
.LBB95:
.LBB89:
	.loc 1 942 0
	lea	%a12, [%a3] lo:HsfbSafety_SafetyStatus
.LBE89:
.LBE95:
	.loc 1 1221 0
	lea	%a15, [%a15] lo:HsfbSafety_DW
.LBB96:
.LBB90:
	.loc 1 942 0
	st.b	[%a12] 11, %d2
.LBE90:
.LBE96:
	.loc 1 1220 0
	call	HsfbSafety_DCDC03_LFD1
.LVL246:
	.loc 1 1221 0
	ld.bu	%d15, [%a15] 61
	st.b	[%a12] 18, %d15
	.loc 1 1222 0
	call	HsfbSafety_DCDC02_LFD3
	.loc 1 1224 0
	mov.a	%a2, %d8
	.loc 1 1223 0
	ld.bu	%d15, [%a15] 63
	st.b	[%a12] 14, %d15
	.loc 1 1224 0
	ld.hu	%d15, [%a2] 8
	movh	%d2, 15396
	utof	%d15, %d15
	addi	%d2, %d2, -10486
	mul.f	%d15, %d15, %d2
	st.w	[%a15] 20, %d15
	.loc 1 1225 0
	call	HsfbSafety_DCDC03_SM1
	.loc 1 1226 0
	ld.bu	%d15, [%a15] 60
	st.b	[%a12] 16, %d15
	.loc 1 1227 0
	call	HsfbSafety_DCDC01_SM1
	.loc 1 1228 0
	mov.a	%a3, %d12
	ld.bu	%d15, [%a15] 66
	st.b	[%a3] lo:HsfbSafety_SafetyStatus, %d15
	.loc 1 1229 0
	call	HsfbSafety_DCDC01_SM2
	.loc 1 1230 0
	ld.bu	%d15, [%a15] 65
	st.b	[%a12] 1, %d15
	.loc 1 1231 0
	call	HsfbSafety_DCDC05_SM1
	.loc 1 1232 0
	ld.bu	%d15, [%a15] 58
	st.b	[%a12] 19, %d15
.LBB97:
.LBB98:
	.loc 1 844 0
	ld.bu	%d15, [%a14] 3
	mov	%d2, 0
	jz	%d15, .L392
	.loc 1 845 0
	mov.a	%a3, %d9
	ld.a	%a2, [%a3] lo:HsfbSafety_PortStatus1ms
	.loc 1 1201 0
	ld.bu	%d2, [%a2] 8
	.loc 1 844 0
	ne	%d2, %d2, 0
.L392:
.LBE98:
.LBE97:
	.loc 1 1234 0
	ld.bu	%d15, [%a15] 9
	.loc 1 1236 0
	mov.a	%a2, %d8
.LBB100:
.LBB99:
	.loc 1 844 0
	st.b	[%a12] 3, %d2
.LBE99:
.LBE100:
	.loc 1 1234 0
	st.b	[%a14] 3, %d15
	.loc 1 1235 0
	st.b	[%a14] 11, %d15
	.loc 1 1236 0
	ld.hu	%d2, [%a2]0
	mov	%d3, 0
	jz	%d2, .L393
	.loc 1 1236 0 is_stmt 0 discriminator 1
	ld.hu	%d2, [%a2] 2
	jnz	%d2, .L393
	.loc 1 1237 0 is_stmt 1
	ld.hu	%d2, [%a2] 12
	jnz	%d2, .L393
	.loc 1 1237 0 is_stmt 0 discriminator 1
	jz	%d15, .L393
	.loc 1 1238 0 is_stmt 1
	ld.w	%d15, [%a13] 20
	movh	%d3, 17312
	cmp.f	%d3, %d15, %d3
	.loc 1 1237 0
	and	%d3, %d3, 1
.L393:
	.loc 1 1236 0 discriminator 3
	st.b	[%a14] 16, %d3
	.loc 1 1240 0 discriminator 3
	call	HsfbSafety_DCDC01_LFD3
	.loc 1 1241 0 discriminator 3
	ld.bu	%d15, [%a15] 68
	st.b	[%a12] 6, %d15
	.loc 1 1242 0 discriminator 3
	call	HsfbSafety_DCDC01_LFD4
	.loc 1 1243 0 discriminator 3
	ld.bu	%d15, [%a15] 67
	st.b	[%a12] 7, %d15
	.loc 1 1244 0 discriminator 3
	call	HsfbSafety_DCDC01_SM3
	.loc 1 1245 0 discriminator 3
	ld.bu	%d15, [%a15] 64
	st.b	[%a12] 2, %d15
	.loc 1 1246 0 discriminator 3
	call	HsfbSafety_DCDC02_LFD4
	.loc 1 1247 0 discriminator 3
	ld.bu	%d15, [%a15] 62
	st.b	[%a12] 15, %d15
	.loc 1 1248 0 discriminator 3
	call	HsfbSafety_DCDC05_LFD1
	.loc 1 1250 0 discriminator 3
	mov.a	%a3, %d10
	.loc 1 1249 0 discriminator 3
	ld.bu	%d15, [%a15] 59
	st.b	[%a12] 20, %d15
	.loc 1 1251 0 discriminator 3
	mov.a	%a2, %d10
	.loc 1 1250 0 discriminator 3
		# #chunks=12, chunksize=2, remains=0
	lea	%a15, 12-1
	0:
	ld.h	%d15, [%a12+]2
	st.h	[%a3+]2, %d15
	loop	%a15, 0b
	.loc 1 1251 0 discriminator 3
	lea	%a15, [%a2] 24
	mov.a	%a2, %d11
		# #chunks=5, chunksize=2, remains=0
	lea	%a3, 5-1
	0:
	ld.h	%d15, [%a2+]2
	st.h	[%a15+]2, %d15
	loop	%a3, 0b
	.loc 1 1252 0 discriminator 3
	ret
.LVL247:
.L417:
.LBB101:
.LBB83:
	.loc 1 305 0
	movh	%d15, 32768
.LVL248:
	j	.L387
.LVL249:
.L416:
.LBE83:
.LBE101:
.LBB102:
.LBB76:
	movh	%d2, 32768
.LVL250:
	j	.L381
.LVL251:
.L374:
.LBE76:
.LBE102:
.LBB103:
.LBB70:
	.loc 1 306 0
	movh	%d2, 16544
	sub.f	%d3, %d2, %d15
.LVL252:
	.loc 1 307 0
	add.f	%d15, %d15, %d2
	movh	%d4, 16128
	mul.f	%d15, %d15, %d4
.LVL253:
	.loc 1 314 0
	mov	%d2, 0
	.loc 1 313 0
	div.f	%d15, %d3, %d15
.LVL254:
	.loc 1 314 0
	cmp.f	%d2, %d15, %d2
	jnz.t	%d2, 2, .L375
	addih	%d15, %d15, 0x8000
.LVL255:
	j	.L375
.LVL256:
.L414:
.LBE70:
.LBE103:
.LBB104:
.LBB64:
	.loc 1 305 0
	movh	%d15, 32768
	j	.L370
.LVL257:
.L420:
.LBE64:
.LBE104:
.LBB105:
.LBB84:
	.loc 1 314 0
	addih	%d15, %d15, 0x8000
.LVL258:
	j	.L387
.LVL259:
.L419:
.LBE84:
.LBE105:
.LBB106:
.LBB77:
	addih	%d2, %d2, 0x8000
.LVL260:
	j	.L381
.LVL261:
.L418:
.LBE77:
.LBE106:
.LBB107:
.LBB65:
	addih	%d15, %d15, 0x8000
.LVL262:
	j	.L370
.LBE65:
.LBE107:
.LFE230:
	.size	HsfbSafety_Call1ms, .-HsfbSafety_Call1ms
	.section .text.MPU_QM_CODE
	.align 3
	.global	HsfbSafety_CallInit
	.type	HsfbSafety_CallInit, @function
HsfbSafety_CallInit:
.LFB231:
	.loc 1 1263 0
	.loc 1 1264 0
	mov	%d15, 0
	movh.a	%a2, hi:HsfbSafety_SafetyStatus
	lea	%a15, [%a2] lo:HsfbSafety_SafetyStatus
	.loc 1 1265 0
	st.b	[%a15] 1, %d15
	.loc 1 1266 0
	st.b	[%a15] 2, %d15
	.loc 1 1267 0
	st.b	[%a15] 3, %d15
	.loc 1 1268 0
	st.b	[%a15] 5, %d15
	.loc 1 1264 0
	st.b	[%a2] lo:HsfbSafety_SafetyStatus, %d15
	.loc 1 1269 0
	st.b	[%a15] 6, %d15
	.loc 1 1270 0
	st.b	[%a15] 8, %d15
	.loc 1 1271 0
	st.b	[%a15] 9, %d15
	.loc 1 1272 0
	st.b	[%a15] 10, %d15
	.loc 1 1273 0
	st.b	[%a15] 11, %d15
	.loc 1 1274 0
	st.b	[%a15] 13, %d15
	.loc 1 1275 0
	st.b	[%a15] 14, %d15
	.loc 1 1276 0
	st.b	[%a15] 16, %d15
	.loc 1 1277 0
	st.b	[%a15] 17, %d15
	.loc 1 1278 0
	st.b	[%a15] 19, %d15
	.loc 1 1279 0
	st.b	[%a15] 20, %d15
	.loc 1 1280 0
	st.b	[%a15] 21, %d15
	.loc 1 1281 0
	st.b	[%a15] 22, %d15
	.loc 1 1283 0
	mov	%d15, 1
	.loc 1 1282 0
	movh.a	%a15, hi:Main_HwVer
	lea	%a15, [%a15] lo:Main_HwVer
	.loc 1 1283 0
	movh.a	%a2, hi:HsfbSafety_Enable
	.loc 1 1282 0
	ld.hu	%d2, [%a15] 30
	.loc 1 1283 0
	lea	%a15, [%a2] lo:HsfbSafety_Enable
	st.b	[%a2] lo:HsfbSafety_Enable, %d15
	.loc 1 1284 0
	st.b	[%a15] 1, %d15
	.loc 1 1285 0
	st.b	[%a15] 2, %d15
	.loc 1 1286 0
	st.b	[%a15] 3, %d15
	.loc 1 1287 0
	st.b	[%a15] 5, %d15
	.loc 1 1282 0
	jnz	%d2, .L425
	.loc 1 1310 0
	st.b	[%a15] 6, %d2
	.loc 1 1311 0
	st.b	[%a15] 7, %d2
	.loc 1 1312 0
	st.b	[%a15] 8, %d15
	.loc 1 1313 0
	st.b	[%a15] 9, %d15
	.loc 1 1314 0
	st.b	[%a15] 10, %d15
	.loc 1 1315 0
	st.b	[%a15] 11, %d15
	.loc 1 1316 0
	st.b	[%a15] 13, %d15
	.loc 1 1317 0
	st.b	[%a15] 14, %d2
	.loc 1 1318 0
	st.b	[%a15] 15, %d2
.L424:
	.loc 1 1319 0
	st.b	[%a15] 16, %d15
	.loc 1 1320 0
	st.b	[%a15] 17, %d15
	.loc 1 1321 0
	st.b	[%a15] 18, %d15
	.loc 1 1322 0
	st.b	[%a15] 19, %d15
	.loc 1 1323 0
	st.b	[%a15] 20, %d15
	.loc 1 1324 0
	st.b	[%a15] 21, %d15
	.loc 1 1325 0
	st.b	[%a15] 22, %d15
	ret
.L425:
	.loc 1 1288 0
	st.b	[%a15] 6, %d15
	.loc 1 1289 0
	st.b	[%a15] 7, %d15
	.loc 1 1290 0
	st.b	[%a15] 8, %d15
	.loc 1 1291 0
	st.b	[%a15] 9, %d15
	.loc 1 1292 0
	st.b	[%a15] 10, %d15
	.loc 1 1293 0
	st.b	[%a15] 11, %d15
	.loc 1 1294 0
	st.b	[%a15] 13, %d15
	.loc 1 1295 0
	st.b	[%a15] 14, %d15
	.loc 1 1296 0
	st.b	[%a15] 15, %d15
	j	.L424
.LFE231:
	.size	HsfbSafety_CallInit, .-HsfbSafety_CallInit
	.global	HsfbSafety_PortStatus1ms
	.section .bss.MPU_ASIL_VAR_NOINIT,"aw",@nobits
	.align 3
	.type	HsfbSafety_PortStatus1ms, @object
	.size	HsfbSafety_PortStatus1ms, 4
HsfbSafety_PortStatus1ms:
	.zero	4
	.global	HsfbSafety_StateStatus
	.align 3
	.type	HsfbSafety_StateStatus, @object
	.size	HsfbSafety_StateStatus, 4
HsfbSafety_StateStatus:
	.zero	4
	.global	HsfbSafety_MeasStatus1ms
	.align 3
	.type	HsfbSafety_MeasStatus1ms, @object
	.size	HsfbSafety_MeasStatus1ms, 4
HsfbSafety_MeasStatus1ms:
	.zero	4
	.global	HsfbSafety_MeasStatus100us
	.align 3
	.type	HsfbSafety_MeasStatus100us, @object
	.size	HsfbSafety_MeasStatus100us, 4
HsfbSafety_MeasStatus100us:
	.zero	4
	.global	HsfbSafety_DW
	.align 3
	.type	HsfbSafety_DW, @object
	.size	HsfbSafety_DW, 84
HsfbSafety_DW:
	.zero	84
	.global	HsfbSafety_VoutHw2Err
	.align 3
	.type	HsfbSafety_VoutHw2Err, @object
	.size	HsfbSafety_VoutHw2Err, 4
HsfbSafety_VoutHw2Err:
	.zero	4
	.global	HsfbSafety_VoutHw1Err
	.align 3
	.type	HsfbSafety_VoutHw1Err, @object
	.size	HsfbSafety_VoutHw1Err, 4
HsfbSafety_VoutHw1Err:
	.zero	4
	.global	HsfbSafety_VrefErr
	.align 3
	.type	HsfbSafety_VrefErr, @object
	.size	HsfbSafety_VrefErr, 4
HsfbSafety_VrefErr:
	.zero	4
	.global	HsfbSafety_Vkl30Err
	.align 3
	.type	HsfbSafety_Vkl30Err, @object
	.size	HsfbSafety_Vkl30Err, 4
HsfbSafety_Vkl30Err:
	.zero	4
	.global	HsfbSafety_VoutErr
	.align 3
	.type	HsfbSafety_VoutErr, @object
	.size	HsfbSafety_VoutErr, 4
HsfbSafety_VoutErr:
	.zero	4
	.global	HsfbSafety_200usTick
	.align 3
	.type	HsfbSafety_200usTick, @object
	.size	HsfbSafety_200usTick, 4
HsfbSafety_200usTick:
	.zero	4
	.global	HsfbSafety_Enable
	.align 3
	.type	HsfbSafety_Enable, @object
	.size	HsfbSafety_Enable, 24
HsfbSafety_Enable:
	.zero	24
	.global	HsfbSafety_SafetyStatus
	.align 3
	.type	HsfbSafety_SafetyStatus, @object
	.size	HsfbSafety_SafetyStatus, 24
HsfbSafety_SafetyStatus:
	.zero	24
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
	.byte	0x4
	.uaword	.LCFI0-.LFB212
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE20:
.LSFDE22:
	.uaword	.LEFDE22-.LASFDE22
.LASFDE22:
	.uaword	.Lframe0
	.uaword	.LFB213
	.uaword	.LFE213-.LFB213
	.align 2
.LEFDE22:
.LSFDE24:
	.uaword	.LEFDE24-.LASFDE24
.LASFDE24:
	.uaword	.Lframe0
	.uaword	.LFB214
	.uaword	.LFE214-.LFB214
	.byte	0x4
	.uaword	.LCFI1-.LFB214
	.byte	0xe
	.uleb128 0x10
	.align 2
.LEFDE24:
.LSFDE26:
	.uaword	.LEFDE26-.LASFDE26
.LASFDE26:
	.uaword	.Lframe0
	.uaword	.LFB215
	.uaword	.LFE215-.LFB215
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
.LSFDE34:
	.uaword	.LEFDE34-.LASFDE34
.LASFDE34:
	.uaword	.Lframe0
	.uaword	.LFB219
	.uaword	.LFE219-.LFB219
	.align 2
.LEFDE34:
.LSFDE36:
	.uaword	.LEFDE36-.LASFDE36
.LASFDE36:
	.uaword	.Lframe0
	.uaword	.LFB220
	.uaword	.LFE220-.LFB220
	.align 2
.LEFDE36:
.LSFDE38:
	.uaword	.LEFDE38-.LASFDE38
.LASFDE38:
	.uaword	.Lframe0
	.uaword	.LFB221
	.uaword	.LFE221-.LFB221
	.align 2
.LEFDE38:
.LSFDE40:
	.uaword	.LEFDE40-.LASFDE40
.LASFDE40:
	.uaword	.Lframe0
	.uaword	.LFB222
	.uaword	.LFE222-.LFB222
	.align 2
.LEFDE40:
.LSFDE42:
	.uaword	.LEFDE42-.LASFDE42
.LASFDE42:
	.uaword	.Lframe0
	.uaword	.LFB223
	.uaword	.LFE223-.LFB223
	.align 2
.LEFDE42:
.LSFDE44:
	.uaword	.LEFDE44-.LASFDE44
.LASFDE44:
	.uaword	.Lframe0
	.uaword	.LFB224
	.uaword	.LFE224-.LFB224
	.align 2
.LEFDE44:
.LSFDE46:
	.uaword	.LEFDE46-.LASFDE46
.LASFDE46:
	.uaword	.Lframe0
	.uaword	.LFB225
	.uaword	.LFE225-.LFB225
	.align 2
.LEFDE46:
.LSFDE48:
	.uaword	.LEFDE48-.LASFDE48
.LASFDE48:
	.uaword	.Lframe0
	.uaword	.LFB226
	.uaword	.LFE226-.LFB226
	.align 2
.LEFDE48:
.LSFDE50:
	.uaword	.LEFDE50-.LASFDE50
.LASFDE50:
	.uaword	.Lframe0
	.uaword	.LFB227
	.uaword	.LFE227-.LFB227
	.align 2
.LEFDE50:
.LSFDE52:
	.uaword	.LEFDE52-.LASFDE52
.LASFDE52:
	.uaword	.Lframe0
	.uaword	.LFB228
	.uaword	.LFE228-.LFB228
	.align 2
.LEFDE52:
.LSFDE54:
	.uaword	.LEFDE54-.LASFDE54
.LASFDE54:
	.uaword	.Lframe0
	.uaword	.LFB229
	.uaword	.LFE229-.LFB229
	.align 2
.LEFDE54:
.LSFDE56:
	.uaword	.LEFDE56-.LASFDE56
.LASFDE56:
	.uaword	.Lframe0
	.uaword	.LFB230
	.uaword	.LFE230-.LFB230
	.align 2
.LEFDE56:
.LSFDE58:
	.uaword	.LEFDE58-.LASFDE58
.LASFDE58:
	.uaword	.Lframe0
	.uaword	.LFB231
	.uaword	.LFE231-.LFB231
	.align 2
.LEFDE58:
.section .text,"ax",@progbits
.Letext0:
	.file 2 "../30_Bsw/Common/rtwtypes.h"
	.file 3 "../40_Appl/HsfbSafety/HsfbSafety_struct.h"
	.file 4 "../40_Appl/HsfbMeas/HsfbMeas_struct.h"
	.file 5 "../40_Appl/HsfbPwm/HsfbPwm_enum.h"
	.file 6 "../40_Appl/HsfbPwm/HsfbPwm_struct.h"
	.file 7 "../40_Appl/HsfbState/HsfbState_struct.h"
	.file 8 "../40_Appl/HsfbApp/HsfbApp_struct.h"
	.file 9 "../40_Appl/HsfbSafety/HsfbSafety.h"
	.file 10 "../30_Bsw/Common/TC21x/IfxCpu_regdef.h"
	.file 11 "../30_Bsw/Main/Main_api.h"
	.file 12 "../30_Bsw/Mpu/mpu_api.h"
	.file 13 "../30_Bsw/Mcal/Gtm/Gtm_api.h"
	.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x2599
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.6.3 build on 2013-05-17"
	.byte	0x1
	.string	"../40_Appl/HsfbSafety/HsfbSafety.c"
	.string	"D:\\\\SVN\\\\IPB-11Kw\\\\LvDc-C01R0P0-Ceramicheater\\\\20_Make"
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_ranges0+0x218
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x3
	.string	"uint8_T"
	.byte	0x2
	.byte	0x51
	.uaword	0xb5
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x3
	.string	"int16_T"
	.byte	0x2
	.byte	0x52
	.uaword	0xd5
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x3
	.string	"uint16_T"
	.byte	0x2
	.byte	0x53
	.uaword	0xf2
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.string	"int32_T"
	.byte	0x2
	.byte	0x54
	.uaword	0x117
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.string	"uint32_T"
	.byte	0x2
	.byte	0x55
	.uaword	0x12e
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x3
	.string	"real32_T"
	.byte	0x2
	.byte	0x56
	.uaword	0x14e
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
	.uaword	0xb5
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
	.uaword	0xa6
	.uleb128 0x3
	.string	"s16"
	.byte	0x2
	.byte	0x7e
	.uaword	0xc6
	.uleb128 0x3
	.string	"u16"
	.byte	0x2
	.byte	0x7f
	.uaword	0xe2
	.uleb128 0x3
	.string	"s32"
	.byte	0x2
	.byte	0x80
	.uaword	0x108
	.uleb128 0x3
	.string	"u32"
	.byte	0x2
	.byte	0x81
	.uaword	0x11e
	.uleb128 0x3
	.string	"f32"
	.byte	0x2
	.byte	0x82
	.uaword	0x13e
	.uleb128 0x3
	.string	"bit"
	.byte	0x2
	.byte	0x84
	.uaword	0x161
	.uleb128 0x4
	.byte	0x18
	.byte	0x3
	.byte	0xe
	.uaword	0x3d3
	.uleb128 0x5
	.string	"DCDC01_SM1"
	.byte	0x3
	.byte	0xf
	.uaword	0x1d0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"DCDC01_SM2"
	.byte	0x3
	.byte	0x10
	.uaword	0x1d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x5
	.string	"DCDC01_SM3"
	.byte	0x3
	.byte	0x11
	.uaword	0x1d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x5
	.string	"DCDC01_SM4"
	.byte	0x3
	.byte	0x12
	.uaword	0x1d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x5
	.string	"DCDC01_LFD1"
	.byte	0x3
	.byte	0x13
	.uaword	0x1d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.string	"DCDC01_LFD2"
	.byte	0x3
	.byte	0x14
	.uaword	0x1d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0x5
	.string	"DCDC01_LFD3"
	.byte	0x3
	.byte	0x15
	.uaword	0x1d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x5
	.string	"DCDC01_LFD4"
	.byte	0x3
	.byte	0x16
	.uaword	0x1d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0x5
	.string	"DCDC02_SM1"
	.byte	0x3
	.byte	0x17
	.uaword	0x1d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"DCDC02_SM2"
	.byte	0x3
	.byte	0x18
	.uaword	0x1d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0x5
	.string	"DCDC02_SM3"
	.byte	0x3
	.byte	0x19
	.uaword	0x1d0
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x5
	.string	"DCDC02_SM4"
	.byte	0x3
	.byte	0x1a
	.uaword	0x1d0
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0x5
	.string	"DCDC02_LFD1"
	.byte	0x3
	.byte	0x1b
	.uaword	0x1d0
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x5
	.string	"DCDC02_LFD2"
	.byte	0x3
	.byte	0x1c
	.uaword	0x1d0
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0x5
	.string	"DCDC02_LFD3"
	.byte	0x3
	.byte	0x1d
	.uaword	0x1d0
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0x5
	.string	"DCDC02_LFD4"
	.byte	0x3
	.byte	0x1e
	.uaword	0x1d0
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.uleb128 0x5
	.string	"DCDC03_SM1"
	.byte	0x3
	.byte	0x1f
	.uaword	0x1d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x5
	.string	"DCDC03_SM2"
	.byte	0x3
	.byte	0x20
	.uaword	0x1d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0x5
	.string	"DCDC03_LFD1"
	.byte	0x3
	.byte	0x21
	.uaword	0x1d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.uleb128 0x5
	.string	"DCDC05_SM1"
	.byte	0x3
	.byte	0x22
	.uaword	0x1d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x13
	.uleb128 0x5
	.string	"DCDC05_LFD1"
	.byte	0x3
	.byte	0x23
	.uaword	0x1d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x5
	.string	"DCDC05_LFD2"
	.byte	0x3
	.byte	0x24
	.uaword	0x1d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x15
	.uleb128 0x5
	.string	"Batt02_LFD5"
	.byte	0x3
	.byte	0x25
	.uaword	0x1d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.string	"HSFBSAFETY_S_SAFETYSTATUS"
	.byte	0x3
	.byte	0x26
	.uaword	0x1db
	.uleb128 0x4
	.byte	0xa
	.byte	0x3
	.byte	0x28
	.uaword	0x43d
	.uleb128 0x6
	.uaword	.LASF0
	.byte	0x3
	.byte	0x29
	.uaword	0x1d0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.uaword	.LASF1
	.byte	0x3
	.byte	0x2a
	.uaword	0x1d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x5
	.string	"EachRun"
	.byte	0x3
	.byte	0x2b
	.uaword	0x43d
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x5
	.string	"EachFin"
	.byte	0x3
	.byte	0x2c
	.uaword	0x43d
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.byte	0
	.uleb128 0x7
	.uaword	0x1d0
	.uaword	0x44d
	.uleb128 0x8
	.uaword	0x172
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.string	"HSFBSAFETY_S_AUTODIAGSTATUS"
	.byte	0x3
	.byte	0x2d
	.uaword	0x3f4
	.uleb128 0x4
	.byte	0x22
	.byte	0x3
	.byte	0x2f
	.uaword	0x4a9
	.uleb128 0x5
	.string	"SafetyStatus"
	.byte	0x3
	.byte	0x30
	.uaword	0x3d3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"AutoDiagStatus"
	.byte	0x3
	.byte	0x31
	.uaword	0x44d
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0
	.uleb128 0x3
	.string	"HSFBSAFETY_S_STATUS1MS"
	.byte	0x3
	.byte	0x32
	.uaword	0x470
	.uleb128 0x4
	.byte	0x4
	.byte	0x3
	.byte	0x34
	.uaword	0x501
	.uleb128 0x5
	.string	"PriEn"
	.byte	0x3
	.byte	0x35
	.uaword	0x1d0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"SrEn"
	.byte	0x3
	.byte	0x36
	.uaword	0x1d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x5
	.string	"ClampEn"
	.byte	0x3
	.byte	0x37
	.uaword	0x1d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x3
	.string	"HSFBSAFETY_S_STATUS100US"
	.byte	0x3
	.byte	0x38
	.uaword	0x4c7
	.uleb128 0x4
	.byte	0x8
	.byte	0x4
	.byte	0xe
	.uaword	0x548
	.uleb128 0x5
	.string	"Data"
	.byte	0x4
	.byte	0xf
	.uaword	0x199
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"Real"
	.byte	0x4
	.byte	0x10
	.uaword	0x1c5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x3
	.string	"HSFBMEAS_S_STATUSDATA"
	.byte	0x4
	.byte	0x11
	.uaword	0x521
	.uleb128 0x4
	.byte	0x30
	.byte	0x4
	.byte	0x25
	.uaword	0x5c9
	.uleb128 0x5
	.string	"Ipri"
	.byte	0x4
	.byte	0x26
	.uaword	0x548
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"Vin"
	.byte	0x4
	.byte	0x27
	.uaword	0x548
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"Iout"
	.byte	0x4
	.byte	0x28
	.uaword	0x548
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x5
	.string	"Vout"
	.byte	0x4
	.byte	0x29
	.uaword	0x548
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.uaword	.LASF2
	.byte	0x4
	.byte	0x2a
	.uaword	0x548
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x5
	.string	"IproFet"
	.byte	0x4
	.byte	0x2b
	.uaword	0x548
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.string	"HSFBMEAS_S_STATUS100US"
	.byte	0x4
	.byte	0x2c
	.uaword	0x565
	.uleb128 0x4
	.byte	0x68
	.byte	0x4
	.byte	0x2e
	.uaword	0x6c0
	.uleb128 0x5
	.string	"Ipri"
	.byte	0x4
	.byte	0x2f
	.uaword	0x548
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"Vin"
	.byte	0x4
	.byte	0x30
	.uaword	0x548
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"Iout"
	.byte	0x4
	.byte	0x31
	.uaword	0x548
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x5
	.string	"Vout"
	.byte	0x4
	.byte	0x32
	.uaword	0x548
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.uaword	.LASF2
	.byte	0x4
	.byte	0x33
	.uaword	0x548
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x5
	.string	"IproFet"
	.byte	0x4
	.byte	0x34
	.uaword	0x548
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x5
	.string	"Vaux"
	.byte	0x4
	.byte	0x35
	.uaword	0x548
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x5
	.string	"Vkl30"
	.byte	0x4
	.byte	0x36
	.uaword	0x548
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x5
	.string	"Vkl30C"
	.byte	0x4
	.byte	0x37
	.uaword	0x548
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x5
	.string	"Vcomp"
	.byte	0x4
	.byte	0x38
	.uaword	0x548
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x5
	.string	"VrefDiag"
	.byte	0x4
	.byte	0x39
	.uaword	0x548
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x5
	.string	"Vhw16V"
	.byte	0x4
	.byte	0x3a
	.uaword	0x548
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x5
	.string	"Vhw19V"
	.byte	0x4
	.byte	0x3b
	.uaword	0x548
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.byte	0
	.uleb128 0x3
	.string	"HSFBMEAS_S_STATUS1MS"
	.byte	0x4
	.byte	0x3c
	.uaword	0x5e7
	.uleb128 0x9
	.byte	0x4
	.byte	0x5
	.byte	0xe
	.uaword	0x765
	.uleb128 0xa
	.string	"HSFBPWM_E_STATE_None"
	.sleb128 0
	.uleb128 0xa
	.string	"HSFBPWM_E_STATE_Reset"
	.sleb128 1
	.uleb128 0xa
	.string	"HSFBPWM_E_STATE_Charge"
	.sleb128 2
	.uleb128 0xa
	.string	"HSFBPWM_E_STATE_SteadyRun"
	.sleb128 3
	.uleb128 0xa
	.string	"HSFBPWM_E_STATE_Discharge"
	.sleb128 4
	.byte	0
	.uleb128 0x3
	.string	"HSFBPWM_E_STATE"
	.byte	0x5
	.byte	0x14
	.uaword	0x6dc
	.uleb128 0x4
	.byte	0x10
	.byte	0x6
	.byte	0x1b
	.uaword	0x7d0
	.uleb128 0x5
	.string	"PwmState"
	.byte	0x6
	.byte	0x1c
	.uaword	0x765
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.uaword	.LASF3
	.byte	0x6
	.byte	0x1d
	.uaword	0x1a4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.string	"TopoState"
	.byte	0x6
	.byte	0x1e
	.uaword	0x1c5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"IpriPwmGain"
	.byte	0x6
	.byte	0x1f
	.uaword	0x1c5
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x3
	.string	"HSFBPWM_S_STATUS15US"
	.byte	0x6
	.byte	0x20
	.uaword	0x77c
	.uleb128 0x4
	.byte	0xc
	.byte	0x7
	.byte	0xe
	.uaword	0x88d
	.uleb128 0x5
	.string	"ClrWarning"
	.byte	0x7
	.byte	0xf
	.uaword	0x1d0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"Error"
	.byte	0x7
	.byte	0x10
	.uaword	0x1d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x5
	.string	"Init"
	.byte	0x7
	.byte	0x11
	.uaword	0x1d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x5
	.string	"HsfbEn"
	.byte	0x7
	.byte	0x12
	.uaword	0x1d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x5
	.string	"Reset"
	.byte	0x7
	.byte	0x13
	.uaword	0x1d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.string	"DrvReset"
	.byte	0x7
	.byte	0x14
	.uaword	0x1d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0x5
	.string	"ErrReset"
	.byte	0x7
	.byte	0x15
	.uaword	0x1d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x5
	.string	"Opm"
	.byte	0x7
	.byte	0x16
	.uaword	0x1a4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"Topo"
	.byte	0x7
	.byte	0x17
	.uaword	0x1a4
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.string	"HSFBSTATE_S_STATUS"
	.byte	0x7
	.byte	0x18
	.uaword	0x7ec
	.uleb128 0x4
	.byte	0xc
	.byte	0x8
	.byte	0x1a
	.uaword	0x98c
	.uleb128 0x5
	.string	"FastTurnOff"
	.byte	0x8
	.byte	0x1b
	.uaword	0x1d0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"PriDriveDis"
	.byte	0x8
	.byte	0x1c
	.uaword	0x1d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x5
	.string	"SrDriveDis"
	.byte	0x8
	.byte	0x1d
	.uaword	0x1d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x5
	.string	"IpriCbc"
	.byte	0x8
	.byte	0x1e
	.uaword	0x1d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x5
	.string	"IpriOcp"
	.byte	0x8
	.byte	0x1f
	.uaword	0x1d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.string	"VinOvp"
	.byte	0x8
	.byte	0x20
	.uaword	0x1d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0x5
	.string	"IoutPOcp"
	.byte	0x8
	.byte	0x21
	.uaword	0x1d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x5
	.string	"IoutNOcp"
	.byte	0x8
	.byte	0x22
	.uaword	0x1d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0x5
	.string	"Vout16VOvp"
	.byte	0x8
	.byte	0x23
	.uaword	0x1d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"Vout19VOvp"
	.byte	0x8
	.byte	0x24
	.uaword	0x1d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0x5
	.string	"WaterOutOtp"
	.byte	0x8
	.byte	0x25
	.uaword	0x1d0
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.string	"HSFBAPP_S_PORTSTATUS"
	.byte	0x8
	.byte	0x26
	.uaword	0x8a7
	.uleb128 0x4
	.byte	0x1a
	.byte	0x8
	.byte	0x28
	.uaword	0xaad
	.uleb128 0x6
	.uaword	.LASF4
	.byte	0x8
	.byte	0x29
	.uaword	0x1a4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"ClrFault"
	.byte	0x8
	.byte	0x2a
	.uaword	0x1a4
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x5
	.string	"CanTimeOut"
	.byte	0x8
	.byte	0x2b
	.uaword	0x1a4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.string	"IoutRef"
	.byte	0x8
	.byte	0x2c
	.uaword	0x1a4
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x5
	.string	"VoutRef"
	.byte	0x8
	.byte	0x2d
	.uaword	0x1a4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"VinRef"
	.byte	0x8
	.byte	0x2e
	.uaword	0x1a4
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x5
	.string	"Operation"
	.byte	0x8
	.byte	0x2f
	.uaword	0x1a4
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.uaword	.LASF3
	.byte	0x8
	.byte	0x30
	.uaword	0x1a4
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0x5
	.string	"AutoDiagEn"
	.byte	0x8
	.byte	0x31
	.uaword	0x1a4
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x5
	.string	"PeakCurrentEn"
	.byte	0x8
	.byte	0x32
	.uaword	0x1a4
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.uleb128 0x5
	.string	"TestPulseEn"
	.byte	0x8
	.byte	0x33
	.uaword	0x1a4
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x5
	.string	"AutoSwitchDis"
	.byte	0x8
	.byte	0x34
	.uaword	0x1a4
	.byte	0x2
	.byte	0x23
	.uleb128 0x16
	.uleb128 0x5
	.string	"JitterDis"
	.byte	0x8
	.byte	0x35
	.uaword	0x1a4
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0
	.uleb128 0x3
	.string	"HSFBAPP_S_RX"
	.byte	0x8
	.byte	0x36
	.uaword	0x9a8
	.uleb128 0x4
	.byte	0x4
	.byte	0x9
	.byte	0x1d
	.uaword	0xb1c
	.uleb128 0x5
	.string	"DelayCnt"
	.byte	0x9
	.byte	0x1e
	.uaword	0x1a4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"is_active_c10_HsfbSafety"
	.byte	0x9
	.byte	0x1f
	.uaword	0x18f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x5
	.string	"is_c10_HsfbSafety"
	.byte	0x9
	.byte	0x20
	.uaword	0x18f
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0
	.uleb128 0x3
	.string	"DW_HsfbSafety_AutoDiag_T"
	.byte	0x9
	.byte	0x21
	.uaword	0xac1
	.uleb128 0x4
	.byte	0x54
	.byte	0x9
	.byte	0x28
	.uaword	0xf76
	.uleb128 0x5
	.string	"sf_OVP19V_AutoDiag"
	.byte	0x9
	.byte	0x29
	.uaword	0xb1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"sf_OVP16V_AutoDiag"
	.byte	0x9
	.byte	0x2a
	.uaword	0xb1c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.uaword	.LASF5
	.byte	0x9
	.byte	0x2b
	.uaword	0x44d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"Gain3"
	.byte	0x9
	.byte	0x2c
	.uaword	0x1c5
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x5
	.string	"cnt_delay_DSTATE"
	.byte	0x9
	.byte	0x2d
	.uaword	0x199
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x5
	.string	"cnt_delay_DSTATE_f"
	.byte	0x9
	.byte	0x2e
	.uaword	0x199
	.byte	0x2
	.byte	0x23
	.uleb128 0x1a
	.uleb128 0x5
	.string	"cnt_delay_DSTATE_p"
	.byte	0x9
	.byte	0x2f
	.uaword	0x199
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x5
	.string	"cnt_delay_DSTATE_e"
	.byte	0x9
	.byte	0x30
	.uaword	0x199
	.byte	0x2
	.byte	0x23
	.uleb128 0x1e
	.uleb128 0x5
	.string	"cnt_delay_DSTATE_l"
	.byte	0x9
	.byte	0x31
	.uaword	0x199
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x5
	.string	"cnt_delay_DSTATE_o"
	.byte	0x9
	.byte	0x32
	.uaword	0x199
	.byte	0x2
	.byte	0x23
	.uleb128 0x22
	.uleb128 0x5
	.string	"cnt_delay_DSTATE_h"
	.byte	0x9
	.byte	0x33
	.uaword	0x199
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x5
	.string	"cnt_delay_DSTATE_l1"
	.byte	0x9
	.byte	0x34
	.uaword	0x199
	.byte	0x2
	.byte	0x23
	.uleb128 0x26
	.uleb128 0x5
	.string	"cnt_delay_DSTATE_p3"
	.byte	0x9
	.byte	0x35
	.uaword	0x199
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x5
	.string	"cnt_delay_DSTATE_hn"
	.byte	0x9
	.byte	0x36
	.uaword	0x199
	.byte	0x2
	.byte	0x23
	.uleb128 0x2a
	.uleb128 0x5
	.string	"cnt_delay_DSTATE_et"
	.byte	0x9
	.byte	0x37
	.uaword	0x199
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x5
	.string	"cnt_delay_DSTATE_d"
	.byte	0x9
	.byte	0x38
	.uaword	0x199
	.byte	0x2
	.byte	0x23
	.uleb128 0x2e
	.uleb128 0x5
	.string	"cnt_delay_DSTATE_px"
	.byte	0x9
	.byte	0x39
	.uaword	0x199
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x5
	.string	"cnt_delay_DSTATE_a"
	.byte	0x9
	.byte	0x3a
	.uaword	0x199
	.byte	0x2
	.byte	0x23
	.uleb128 0x32
	.uleb128 0x5
	.string	"cnt_delay_DSTATE_fh"
	.byte	0x9
	.byte	0x3b
	.uaword	0x199
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x5
	.string	"cnt_delay_DSTATE_ol"
	.byte	0x9
	.byte	0x3c
	.uaword	0x199
	.byte	0x2
	.byte	0x23
	.uleb128 0x36
	.uleb128 0x5
	.string	"is_active_c7_HsfbSafety"
	.byte	0x9
	.byte	0x3d
	.uaword	0x18f
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x5
	.string	"is_c7_HsfbSafety"
	.byte	0x9
	.byte	0x3e
	.uaword	0x18f
	.byte	0x2
	.byte	0x23
	.uleb128 0x39
	.uleb128 0x5
	.string	"Merge"
	.byte	0x9
	.byte	0x3f
	.uaword	0x1d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x3a
	.uleb128 0x5
	.string	"Merge_k"
	.byte	0x9
	.byte	0x40
	.uaword	0x1d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x3b
	.uleb128 0x5
	.string	"Merge_c"
	.byte	0x9
	.byte	0x41
	.uaword	0x1d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x5
	.string	"Merge_o"
	.byte	0x9
	.byte	0x42
	.uaword	0x1d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x3d
	.uleb128 0x5
	.string	"Merge_p"
	.byte	0x9
	.byte	0x43
	.uaword	0x1d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x3e
	.uleb128 0x5
	.string	"Merge_l"
	.byte	0x9
	.byte	0x44
	.uaword	0x1d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x3f
	.uleb128 0x5
	.string	"Merge_d"
	.byte	0x9
	.byte	0x45
	.uaword	0x1d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x5
	.string	"Merge_n"
	.byte	0x9
	.byte	0x46
	.uaword	0x1d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x41
	.uleb128 0x5
	.string	"Merge_f"
	.byte	0x9
	.byte	0x47
	.uaword	0x1d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x42
	.uleb128 0x5
	.string	"Merge_pr"
	.byte	0x9
	.byte	0x48
	.uaword	0x1d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x43
	.uleb128 0x5
	.string	"Merge_e"
	.byte	0x9
	.byte	0x49
	.uaword	0x1d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x6
	.uaword	.LASF0
	.byte	0x9
	.byte	0x4a
	.uaword	0x1d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x45
	.uleb128 0x6
	.uaword	.LASF1
	.byte	0x9
	.byte	0x4b
	.uaword	0x1d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0x6
	.uaword	.LASF6
	.byte	0x9
	.byte	0x4c
	.uaword	0x1d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0x5
	.string	"AutoDiagWait_l"
	.byte	0x9
	.byte	0x4d
	.uaword	0x1d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x5
	.string	"AutoDiagFin_b"
	.byte	0x9
	.byte	0x4e
	.uaword	0x1d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x49
	.uleb128 0x5
	.string	"AutoDiagErr_j"
	.byte	0x9
	.byte	0x4f
	.uaword	0x1d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4a
	.uleb128 0x5
	.string	"LogicalOperator3_a"
	.byte	0x9
	.byte	0x50
	.uaword	0x1d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4b
	.uleb128 0x5
	.string	"Merge_dz"
	.byte	0x9
	.byte	0x51
	.uaword	0x1d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x5
	.string	"Merge_p2"
	.byte	0x9
	.byte	0x52
	.uaword	0x1d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4d
	.uleb128 0x5
	.string	"Merge_j"
	.byte	0x9
	.byte	0x53
	.uaword	0x1d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4e
	.uleb128 0x5
	.string	"Merge_m"
	.byte	0x9
	.byte	0x54
	.uaword	0x1d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4f
	.uleb128 0x5
	.string	"Merge_ok"
	.byte	0x9
	.byte	0x55
	.uaword	0x1d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x5
	.string	"LastEnable"
	.byte	0x9
	.byte	0x56
	.uaword	0x1d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x51
	.byte	0
	.uleb128 0x3
	.string	"DW_HsfbSafety_f_T"
	.byte	0x9
	.byte	0x57
	.uaword	0xb3c
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0xb
	.uaword	0x12e
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
	.byte	0xa
	.uahalf	0x204
	.uaword	0x10ce
	.uleb128 0xd
	.string	"CDC"
	.byte	0xa
	.uahalf	0x206
	.uaword	0xf9b
	.byte	0x4
	.byte	0x7
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CDE"
	.byte	0xa
	.uahalf	0x207
	.uaword	0xf9b
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"GW"
	.byte	0xa
	.uahalf	0x208
	.uaword	0xf9b
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"IS"
	.byte	0xa
	.uahalf	0x209
	.uaword	0xf9b
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"IO"
	.byte	0xa
	.uahalf	0x20a
	.uaword	0xf9b
	.byte	0x4
	.byte	0x2
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PRS"
	.byte	0xa
	.uahalf	0x20b
	.uaword	0xf9b
	.byte	0x4
	.byte	0x2
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"S"
	.byte	0xa
	.uahalf	0x20c
	.uaword	0xf9b
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"reserved_15"
	.byte	0xa
	.uahalf	0x20d
	.uaword	0xf9b
	.byte	0x4
	.byte	0xc
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"SAV"
	.byte	0xa
	.uahalf	0x20e
	.uaword	0xf9b
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"AV"
	.byte	0xa
	.uahalf	0x20f
	.uaword	0xf9b
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"SV"
	.byte	0xa
	.uahalf	0x210
	.uaword	0xf9b
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"V"
	.byte	0xa
	.uahalf	0x211
	.uaword	0xf9b
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"C"
	.byte	0xa
	.uahalf	0x212
	.uaword	0xf9b
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xe
	.string	"Ifx_CPU_PSW_Bits"
	.byte	0xa
	.uahalf	0x213
	.uaword	0xfcb
	.uleb128 0xf
	.byte	0x4
	.byte	0xa
	.uahalf	0x467
	.uaword	0x110f
	.uleb128 0x10
	.string	"U"
	.byte	0xa
	.uahalf	0x469
	.uaword	0x12e
	.uleb128 0x10
	.string	"I"
	.byte	0xa
	.uahalf	0x46a
	.uaword	0x117
	.uleb128 0x10
	.string	"B"
	.byte	0xa
	.uahalf	0x46b
	.uaword	0x10ce
	.byte	0
	.uleb128 0xe
	.string	"Ifx_CPU_PSW"
	.byte	0xa
	.uahalf	0x46c
	.uaword	0x10e7
	.uleb128 0x9
	.byte	0x4
	.byte	0xb
	.byte	0x59
	.uaword	0x1264
	.uleb128 0xa
	.string	"MAIN_E_HW_B0"
	.sleb128 0
	.uleb128 0xa
	.string	"MAIN_E_HW_B01_X10"
	.sleb128 1
	.uleb128 0xa
	.string	"MAIN_E_HW_B01_X10_DV"
	.sleb128 2
	.uleb128 0xa
	.string	"MAIN_E_HW_B02_X10"
	.sleb128 3
	.uleb128 0xa
	.string	"MAIN_E_HW_B02_X10_DV"
	.sleb128 4
	.uleb128 0xa
	.string	"MAIN_E_HW_C0"
	.sleb128 5
	.uleb128 0xa
	.string	"MAIN_E_HW_C0_DV"
	.sleb128 6
	.uleb128 0xa
	.string	"MAIN_E_HW_C1"
	.sleb128 7
	.uleb128 0xa
	.string	"MAIN_E_HW_C1_DV"
	.sleb128 8
	.uleb128 0xa
	.string	"MAIN_E_HW_C1_C01"
	.sleb128 9
	.uleb128 0xa
	.string	"MAIN_E_HW_C1_C01_DV"
	.sleb128 10
	.uleb128 0xa
	.string	"MAIN_E_HW_C1_C02"
	.sleb128 11
	.uleb128 0xa
	.string	"MAIN_E_HW_C1_C02_DV"
	.sleb128 12
	.uleb128 0xa
	.string	"MAIN_E_HW_C1_BAK13"
	.sleb128 13
	.uleb128 0xa
	.string	"MAIN_E_HW_C1_BAK14"
	.sleb128 14
	.uleb128 0xa
	.string	"MAIN_E_HW_Reserved"
	.sleb128 15
	.byte	0
	.uleb128 0x3
	.string	"MAIN_E_HW_VER"
	.byte	0xb
	.byte	0x6a
	.uaword	0x1123
	.uleb128 0x4
	.byte	0x10
	.byte	0xb
	.byte	0x6c
	.uaword	0x12fa
	.uleb128 0x5
	.string	"App"
	.byte	0xb
	.byte	0x6d
	.uaword	0x1a4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"Meas"
	.byte	0xb
	.byte	0x6e
	.uaword	0x1a4
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x5
	.string	"Ctrl"
	.byte	0xb
	.byte	0x6f
	.uaword	0x1a4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.string	"Pwm"
	.byte	0xb
	.byte	0x70
	.uaword	0x1a4
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x5
	.string	"Diag"
	.byte	0xb
	.byte	0x71
	.uaword	0x1a4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"Ntc"
	.byte	0xb
	.byte	0x72
	.uaword	0x1a4
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x5
	.string	"State"
	.byte	0xb
	.byte	0x73
	.uaword	0x1a4
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x5
	.string	"Safety"
	.byte	0xb
	.byte	0x74
	.uaword	0x1a4
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.byte	0
	.uleb128 0x3
	.string	"MAIN_E_HW_VER_APP"
	.byte	0xb
	.byte	0x75
	.uaword	0x1279
	.uleb128 0x4
	.byte	0x20
	.byte	0xb
	.byte	0x77
	.uaword	0x136b
	.uleb128 0x5
	.string	"Code"
	.byte	0xb
	.byte	0x78
	.uaword	0x136b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"CodeNum"
	.byte	0xb
	.byte	0x79
	.uaword	0x1a4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"VerName"
	.byte	0xb
	.byte	0x7a
	.uaword	0x1a4
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x5
	.string	"Ver"
	.byte	0xb
	.byte	0x7b
	.uaword	0x1264
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x5
	.string	"App"
	.byte	0xb
	.byte	0x7c
	.uaword	0x12fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x7
	.uaword	0x1a4
	.uaword	0x137b
	.uleb128 0x8
	.uaword	0x172
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.string	"MAIN_S_HW_VER"
	.byte	0xb
	.byte	0x7d
	.uaword	0x1313
	.uleb128 0x11
	.byte	0x1
	.string	"HsfbSafety_AutoDiag"
	.byte	0x1
	.uahalf	0x15d
	.byte	0x1
	.byte	0x1
	.uaword	0x145a
	.uleb128 0x12
	.string	"Reset"
	.byte	0x1
	.uahalf	0x15d
	.uaword	0x1d0
	.uleb128 0x13
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x15d
	.uaword	0x1d0
	.uleb128 0x12
	.string	"SetCond"
	.byte	0x1
	.uahalf	0x15d
	.uaword	0x1d0
	.uleb128 0x12
	.string	"ClrCond"
	.byte	0x1
	.uahalf	0x15d
	.uaword	0x1d0
	.uleb128 0x12
	.string	"DelayMax"
	.byte	0x1
	.uahalf	0x15e
	.uaword	0x1a4
	.uleb128 0x12
	.string	"Type"
	.byte	0x1
	.uahalf	0x15e
	.uaword	0x1a4
	.uleb128 0x13
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x15e
	.uaword	0x145a
	.uleb128 0x13
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x15e
	.uaword	0x145a
	.uleb128 0x13
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x15e
	.uaword	0x145a
	.uleb128 0x12
	.string	"localDW"
	.byte	0x1
	.uahalf	0x15f
	.uaword	0x1460
	.uleb128 0x14
	.string	"guard1"
	.byte	0x1
	.uahalf	0x161
	.uaword	0x1d0
	.uleb128 0x14
	.string	"guard2"
	.byte	0x1
	.uahalf	0x162
	.uaword	0x1d0
	.byte	0
	.uleb128 0x15
	.byte	0x4
	.uaword	0x1d0
	.uleb128 0x15
	.byte	0x4
	.uaword	0xb1c
	.uleb128 0x11
	.byte	0x1
	.string	"HsfbSafety_AutoDiag_Init"
	.byte	0x1
	.uahalf	0x14b
	.byte	0x1
	.byte	0x1
	.uaword	0x14af
	.uleb128 0x13
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x14b
	.uaword	0x145a
	.uleb128 0x13
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x14b
	.uaword	0x145a
	.uleb128 0x13
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x14c
	.uaword	0x145a
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.string	"HsfbSafety_AutoDiagFunc_Init"
	.byte	0x1
	.uahalf	0x1af
	.byte	0x1
	.byte	0x1
	.uaword	0x14e4
	.uleb128 0x12
	.string	"Fin"
	.byte	0x1
	.uahalf	0x1af
	.uaword	0x145a
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.string	"HsfbSafety_AutoDiagState_Init"
	.byte	0x1
	.uahalf	0x1ef
	.byte	0x1
	.byte	0x1
	.uaword	0x1526
	.uleb128 0x13
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x1ef
	.uaword	0x1526
	.uleb128 0x16
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x1f1
	.uaword	0x43d
	.byte	0
	.uleb128 0x15
	.byte	0x4
	.uaword	0x44d
	.uleb128 0x11
	.byte	0x1
	.string	"HsfbSafety_Verr_Calc"
	.byte	0x1
	.uahalf	0x127
	.byte	0x1
	.byte	0x1
	.uaword	0x15a5
	.uleb128 0x12
	.string	"Vreal"
	.byte	0x1
	.uahalf	0x127
	.uaword	0x1c5
	.uleb128 0x12
	.string	"Vdiag"
	.byte	0x1
	.uahalf	0x127
	.uaword	0x1c5
	.uleb128 0x12
	.string	"Vth"
	.byte	0x1
	.uahalf	0x127
	.uaword	0x1c5
	.uleb128 0x12
	.string	"Verr"
	.byte	0x1
	.uahalf	0x127
	.uaword	0x15a5
	.uleb128 0x14
	.string	"Switch_efd"
	.byte	0x1
	.uahalf	0x129
	.uaword	0x1c5
	.uleb128 0x14
	.string	"Switch1"
	.byte	0x1
	.uahalf	0x12a
	.uaword	0x1c5
	.byte	0
	.uleb128 0x15
	.byte	0x4
	.uaword	0x1c5
	.uleb128 0x17
	.byte	0x1
	.string	"HsfbSafety_DCDC02_SM4"
	.byte	0x1
	.uahalf	0x3ac
	.byte	0x1
	.byte	0x1
	.uleb128 0x17
	.byte	0x1
	.string	"HsfbSafety_DCDC01_SM4"
	.byte	0x1
	.uahalf	0x34a
	.byte	0x1
	.byte	0x1
	.uleb128 0x18
	.byte	0x1
	.string	"HsfbSafety_DCDC01_LFD1"
	.byte	0x1
	.byte	0x46
	.byte	0x1
	.uaword	.LFB202
	.uaword	.LFE202
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x1620
	.uleb128 0x19
	.string	"Sum"
	.byte	0x1
	.byte	0x48
	.uaword	0x199
	.uaword	.LLST0
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.string	"HsfbSafety_DCDC02_LFD1"
	.byte	0x1
	.byte	0x6b
	.byte	0x1
	.uaword	.LFB203
	.uaword	.LFE203
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x165b
	.uleb128 0x19
	.string	"Sum"
	.byte	0x1
	.byte	0x6d
	.uaword	0x199
	.uaword	.LLST1
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.string	"HsfbSafety_DCDC02_SM1"
	.byte	0x1
	.byte	0x90
	.byte	0x1
	.uaword	.LFB204
	.uaword	.LFE204
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x16a0
	.uleb128 0x19
	.string	"Sum"
	.byte	0x1
	.byte	0x92
	.uaword	0x199
	.uaword	.LLST2
	.uleb128 0x1a
	.string	"tmp"
	.byte	0x1
	.byte	0x93
	.uaword	0x1d0
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.string	"HsfbSafety_DCDC02_SM2"
	.byte	0x1
	.byte	0xba
	.byte	0x1
	.uaword	.LFB205
	.uaword	.LFE205
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x16e5
	.uleb128 0x19
	.string	"Sum"
	.byte	0x1
	.byte	0xbc
	.uaword	0x199
	.uaword	.LLST3
	.uleb128 0x1a
	.string	"tmp"
	.byte	0x1
	.byte	0xbd
	.uaword	0x1d0
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.string	"HsfbSafety_DCDC02_SM3"
	.byte	0x1
	.byte	0xe4
	.byte	0x1
	.uaword	.LFB206
	.uaword	.LFE206
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x172a
	.uleb128 0x19
	.string	"Sum"
	.byte	0x1
	.byte	0xe6
	.uaword	0x199
	.uaword	.LLST4
	.uleb128 0x1a
	.string	"tmp"
	.byte	0x1
	.byte	0xe7
	.uaword	0x1d0
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.string	"HsfbSafety_PWMEn_Calc"
	.byte	0x1
	.uahalf	0x10e
	.byte	0x1
	.uaword	.LFB207
	.uaword	.LFE207
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0x1c
	.uaword	0x152c
	.uaword	.LFB208
	.uaword	.LFE208
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x1796
	.uleb128 0x1d
	.uaword	0x154c
	.byte	0x1
	.byte	0x54
	.uleb128 0x1d
	.uaword	0x155a
	.byte	0x1
	.byte	0x55
	.uleb128 0x1e
	.uaword	0x1568
	.uaword	.LLST5
	.uleb128 0x1d
	.uaword	0x1574
	.byte	0x1
	.byte	0x64
	.uleb128 0x1f
	.uaword	0x1581
	.uaword	.LLST6
	.uleb128 0x1f
	.uaword	0x1594
	.uaword	.LLST7
	.byte	0
	.uleb128 0x1c
	.uaword	0x1466
	.uaword	.LFB209
	.uaword	.LFE209
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x17c0
	.uleb128 0x1d
	.uaword	0x148a
	.byte	0x1
	.byte	0x64
	.uleb128 0x1d
	.uaword	0x1496
	.byte	0x1
	.byte	0x65
	.uleb128 0x1d
	.uaword	0x14a2
	.byte	0x1
	.byte	0x66
	.byte	0
	.uleb128 0x1c
	.uaword	0x1390
	.uaword	.LFB210
	.uaword	.LFE210
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x18bc
	.uleb128 0x1e
	.uaword	0x13af
	.uaword	.LLST8
	.uleb128 0x1e
	.uaword	0x13bd
	.uaword	.LLST9
	.uleb128 0x1e
	.uaword	0x13c9
	.uaword	.LLST10
	.uleb128 0x1e
	.uaword	0x13d9
	.uaword	.LLST11
	.uleb128 0x1d
	.uaword	0x13e9
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1d
	.uaword	0x13fa
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1e
	.uaword	0x1407
	.uaword	.LLST12
	.uleb128 0x1e
	.uaword	0x1413
	.uaword	.LLST13
	.uleb128 0x1e
	.uaword	0x141f
	.uaword	.LLST14
	.uleb128 0x1e
	.uaword	0x142b
	.uaword	.LLST15
	.uleb128 0x20
	.uaword	0x143b
	.byte	0
	.uleb128 0x20
	.uaword	0x144a
	.byte	0
	.uleb128 0x21
	.uaword	0x1390
	.uaword	.LBB35
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.uahalf	0x15d
	.uleb128 0x1e
	.uaword	0x142b
	.uaword	.LLST16
	.uleb128 0x1e
	.uaword	0x141f
	.uaword	.LLST17
	.uleb128 0x1e
	.uaword	0x1413
	.uaword	.LLST18
	.uleb128 0x1e
	.uaword	0x1407
	.uaword	.LLST19
	.uleb128 0x1e
	.uaword	0x13fa
	.uaword	.LLST20
	.uleb128 0x1e
	.uaword	0x13e9
	.uaword	.LLST21
	.uleb128 0x1e
	.uaword	0x13d9
	.uaword	.LLST22
	.uleb128 0x1e
	.uaword	0x13c9
	.uaword	.LLST23
	.uleb128 0x1e
	.uaword	0x13bd
	.uaword	.LLST24
	.uleb128 0x1e
	.uaword	0x13af
	.uaword	.LLST25
	.uleb128 0x22
	.uaword	.Ldebug_ranges0+0x18
	.uleb128 0x1f
	.uaword	0x143b
	.uaword	.LLST26
	.uleb128 0x1f
	.uaword	0x144a
	.uaword	.LLST27
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uaword	0x14af
	.uaword	.LFB211
	.uaword	.LFE211
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x1946
	.uleb128 0x1d
	.uaword	0x14d7
	.byte	0x1
	.byte	0x64
	.uleb128 0x23
	.uaword	0x1466
	.uaword	.LBB39
	.uaword	.LBE39
	.byte	0x1
	.uahalf	0x1b1
	.uaword	0x1910
	.uleb128 0x1d
	.uaword	0x14a2
	.byte	0x6
	.byte	0x3
	.uaword	HsfbSafety_DW+74
	.byte	0x9f
	.uleb128 0x1d
	.uaword	0x1496
	.byte	0x6
	.byte	0x3
	.uaword	HsfbSafety_DW+73
	.byte	0x9f
	.uleb128 0x1d
	.uaword	0x148a
	.byte	0x6
	.byte	0x3
	.uaword	HsfbSafety_DW+72
	.byte	0x9f
	.byte	0
	.uleb128 0x24
	.uaword	0x1466
	.uaword	.LBB41
	.uaword	.LBE41
	.byte	0x1
	.uahalf	0x1b3
	.uleb128 0x1d
	.uaword	0x14a2
	.byte	0x6
	.byte	0x3
	.uaword	HsfbSafety_DW+71
	.byte	0x9f
	.uleb128 0x1d
	.uaword	0x1496
	.byte	0x6
	.byte	0x3
	.uaword	HsfbSafety_DW+70
	.byte	0x9f
	.uleb128 0x1d
	.uaword	0x148a
	.byte	0x6
	.byte	0x3
	.uaword	HsfbSafety_DW+69
	.byte	0x9f
	.byte	0
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.string	"HsfbSafety_AutoDiagFunc"
	.byte	0x1
	.uahalf	0x1c3
	.byte	0x1
	.uaword	.LFB212
	.uaword	.LFE212
	.uaword	.LLST28
	.uaword	0x1a23
	.uleb128 0x26
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x1c3
	.uaword	0x1d0
	.uaword	.LLST29
	.uleb128 0x27
	.string	"Port"
	.byte	0x1
	.uahalf	0x1c3
	.uaword	0x1a23
	.uaword	.LLST30
	.uleb128 0x27
	.string	"Meas"
	.byte	0x1
	.uahalf	0x1c4
	.uaword	0x1a2e
	.uaword	.LLST31
	.uleb128 0x27
	.string	"Run"
	.byte	0x1
	.uahalf	0x1c4
	.uaword	0x145a
	.uaword	.LLST32
	.uleb128 0x27
	.string	"Fin"
	.byte	0x1
	.uahalf	0x1c4
	.uaword	0x145a
	.uaword	.LLST33
	.uleb128 0x28
	.string	"LogicalOperator8"
	.byte	0x1
	.uahalf	0x1c6
	.uaword	0x1d0
	.uaword	.LLST34
	.uleb128 0x29
	.string	"LogicalOperator1_d"
	.byte	0x1
	.uahalf	0x1c7
	.uaword	0x1d0
	.byte	0x1
	.uleb128 0x28
	.string	"LogicalOperator1_k_tmp"
	.byte	0x1
	.uahalf	0x1c8
	.uaword	0x1d0
	.uaword	.LLST35
	.byte	0
	.uleb128 0x15
	.byte	0x4
	.uaword	0x1a29
	.uleb128 0x2a
	.uaword	0x98c
	.uleb128 0x15
	.byte	0x4
	.uaword	0x1a34
	.uleb128 0x2a
	.uaword	0x6c0
	.uleb128 0x1c
	.uaword	0x14e4
	.uaword	.LFB213
	.uaword	.LFE213
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x1ae5
	.uleb128 0x1d
	.uaword	0x150d
	.byte	0x1
	.byte	0x64
	.uleb128 0x2b
	.uaword	0x1519
	.uleb128 0x21
	.uaword	0x14af
	.uaword	.LBB43
	.uaword	.Ldebug_ranges0+0x30
	.byte	0x1
	.uahalf	0x1fc
	.uleb128 0x1d
	.uaword	0x14d7
	.byte	0x6
	.byte	0xf2
	.uaword	.Ldebug_info0+5401
	.sleb128 0
	.uleb128 0x2c
	.uaword	0x1466
	.uaword	.LBB44
	.uaword	.Ldebug_ranges0+0x48
	.byte	0x1
	.uahalf	0x1b1
	.uaword	0x1aae
	.uleb128 0x1d
	.uaword	0x14a2
	.byte	0x6
	.byte	0x3
	.uaword	HsfbSafety_DW+74
	.byte	0x9f
	.uleb128 0x1d
	.uaword	0x1496
	.byte	0x6
	.byte	0x3
	.uaword	HsfbSafety_DW+73
	.byte	0x9f
	.uleb128 0x1d
	.uaword	0x148a
	.byte	0x6
	.byte	0x3
	.uaword	HsfbSafety_DW+72
	.byte	0x9f
	.byte	0
	.uleb128 0x24
	.uaword	0x1466
	.uaword	.LBB48
	.uaword	.LBE48
	.byte	0x1
	.uahalf	0x1b3
	.uleb128 0x1d
	.uaword	0x14a2
	.byte	0x6
	.byte	0x3
	.uaword	HsfbSafety_DW+71
	.byte	0x9f
	.uleb128 0x1d
	.uaword	0x1496
	.byte	0x6
	.byte	0x3
	.uaword	HsfbSafety_DW+70
	.byte	0x9f
	.uleb128 0x1d
	.uaword	0x148a
	.byte	0x6
	.byte	0x3
	.uaword	HsfbSafety_DW+69
	.byte	0x9f
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.string	"HsfbSafety_AutoDiagState"
	.byte	0x1
	.uahalf	0x207
	.byte	0x1
	.uaword	.LFB214
	.uaword	.LFE214
	.uaword	.LLST36
	.uaword	0x1b81
	.uleb128 0x27
	.string	"Rx"
	.byte	0x1
	.uahalf	0x207
	.uaword	0x1b81
	.uaword	.LLST37
	.uleb128 0x27
	.string	"Port"
	.byte	0x1
	.uahalf	0x208
	.uaword	0x1a23
	.uaword	.LLST38
	.uleb128 0x27
	.string	"Meas"
	.byte	0x1
	.uahalf	0x208
	.uaword	0x1a2e
	.uaword	.LLST39
	.uleb128 0x26
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x208
	.uaword	0x1526
	.uaword	.LLST40
	.uleb128 0x2d
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x20a
	.uaword	0x43d
	.byte	0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x2e
	.string	"SignalConversion"
	.byte	0x1
	.uahalf	0x20b
	.uaword	0x43d
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.byte	0
	.uleb128 0x15
	.byte	0x4
	.uaword	0x1b87
	.uleb128 0x2a
	.uaword	0xaad
	.uleb128 0x2f
	.byte	0x1
	.string	"HsfbSafety_DCDC01_LFD3"
	.byte	0x1
	.uahalf	0x278
	.byte	0x1
	.uaword	.LFB215
	.uaword	.LFE215
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x1bd5
	.uleb128 0x28
	.string	"Sum"
	.byte	0x1
	.uahalf	0x27a
	.uaword	0x199
	.uaword	.LLST41
	.uleb128 0x14
	.string	"tmp"
	.byte	0x1
	.uahalf	0x27b
	.uaword	0x1d0
	.byte	0
	.uleb128 0x2f
	.byte	0x1
	.string	"HsfbSafety_DCDC01_LFD4"
	.byte	0x1
	.uahalf	0x2a2
	.byte	0x1
	.uaword	.LFB216
	.uaword	.LFE216
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x1c1e
	.uleb128 0x28
	.string	"Sum"
	.byte	0x1
	.uahalf	0x2a4
	.uaword	0x199
	.uaword	.LLST42
	.uleb128 0x14
	.string	"tmp"
	.byte	0x1
	.uahalf	0x2a5
	.uaword	0x1d0
	.byte	0
	.uleb128 0x2f
	.byte	0x1
	.string	"HsfbSafety_DCDC01_SM1"
	.byte	0x1
	.uahalf	0x2cc
	.byte	0x1
	.uaword	.LFB217
	.uaword	.LFE217
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x1c66
	.uleb128 0x28
	.string	"Sum"
	.byte	0x1
	.uahalf	0x2ce
	.uaword	0x199
	.uaword	.LLST43
	.uleb128 0x14
	.string	"tmp"
	.byte	0x1
	.uahalf	0x2cf
	.uaword	0x1d0
	.byte	0
	.uleb128 0x2f
	.byte	0x1
	.string	"HsfbSafety_DCDC01_SM2"
	.byte	0x1
	.uahalf	0x2f6
	.byte	0x1
	.uaword	.LFB218
	.uaword	.LFE218
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x1cae
	.uleb128 0x28
	.string	"Sum"
	.byte	0x1
	.uahalf	0x2f8
	.uaword	0x199
	.uaword	.LLST44
	.uleb128 0x14
	.string	"tmp"
	.byte	0x1
	.uahalf	0x2f9
	.uaword	0x1d0
	.byte	0
	.uleb128 0x2f
	.byte	0x1
	.string	"HsfbSafety_DCDC01_SM3"
	.byte	0x1
	.uahalf	0x320
	.byte	0x1
	.uaword	.LFB219
	.uaword	.LFE219
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x1cf6
	.uleb128 0x28
	.string	"Sum"
	.byte	0x1
	.uahalf	0x322
	.uaword	0x199
	.uaword	.LLST45
	.uleb128 0x14
	.string	"tmp"
	.byte	0x1
	.uahalf	0x323
	.uaword	0x1d0
	.byte	0
	.uleb128 0x30
	.uaword	0x15c8
	.uaword	.LFB220
	.uaword	.LFE220
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0x2f
	.byte	0x1
	.string	"HsfbSafety_DCDC02_LFD3"
	.byte	0x1
	.uahalf	0x358
	.byte	0x1
	.uaword	.LFB221
	.uaword	.LFE221
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x1d4f
	.uleb128 0x28
	.string	"Sum"
	.byte	0x1
	.uahalf	0x35a
	.uaword	0x199
	.uaword	.LLST46
	.uleb128 0x14
	.string	"tmp"
	.byte	0x1
	.uahalf	0x35b
	.uaword	0x1d0
	.byte	0
	.uleb128 0x2f
	.byte	0x1
	.string	"HsfbSafety_DCDC02_LFD4"
	.byte	0x1
	.uahalf	0x382
	.byte	0x1
	.uaword	.LFB222
	.uaword	.LFE222
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x1d98
	.uleb128 0x28
	.string	"Sum"
	.byte	0x1
	.uahalf	0x384
	.uaword	0x199
	.uaword	.LLST47
	.uleb128 0x14
	.string	"tmp"
	.byte	0x1
	.uahalf	0x385
	.uaword	0x1d0
	.byte	0
	.uleb128 0x30
	.uaword	0x15ab
	.uaword	.LFB223
	.uaword	.LFE223
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0x2f
	.byte	0x1
	.string	"HsfbSafety_DCDC03_LFD1"
	.byte	0x1
	.uahalf	0x3ba
	.byte	0x1
	.uaword	.LFB224
	.uaword	.LFE224
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x1e21
	.uleb128 0x28
	.string	"Divide"
	.byte	0x1
	.uahalf	0x3bc
	.uaword	0x1c5
	.uaword	.LLST48
	.uleb128 0x28
	.string	"Divide2"
	.byte	0x1
	.uahalf	0x3bd
	.uaword	0x1c5
	.uaword	.LLST49
	.uleb128 0x28
	.string	"Sum"
	.byte	0x1
	.uahalf	0x3be
	.uaword	0x199
	.uaword	.LLST50
	.uleb128 0x28
	.string	"Divide_0"
	.byte	0x1
	.uahalf	0x3bf
	.uaword	0x1d0
	.uaword	.LLST51
	.byte	0
	.uleb128 0x2f
	.byte	0x1
	.string	"HsfbSafety_DCDC03_SM1"
	.byte	0x1
	.uahalf	0x3f5
	.byte	0x1
	.uaword	.LFB225
	.uaword	.LFE225
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x1e78
	.uleb128 0x14
	.string	"LogicalOperator1_k"
	.byte	0x1
	.uahalf	0x3f7
	.uaword	0x1d0
	.uleb128 0x28
	.string	"Sum"
	.byte	0x1
	.uahalf	0x3f8
	.uaword	0x199
	.uaword	.LLST52
	.byte	0
	.uleb128 0x2f
	.byte	0x1
	.string	"HsfbSafety_DCDC05_LFD1"
	.byte	0x1
	.uahalf	0x421
	.byte	0x1
	.uaword	.LFB226
	.uaword	.LFE226
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x1ec1
	.uleb128 0x28
	.string	"Sum"
	.byte	0x1
	.uahalf	0x423
	.uaword	0x199
	.uaword	.LLST53
	.uleb128 0x14
	.string	"tmp"
	.byte	0x1
	.uahalf	0x424
	.uaword	0x1d0
	.byte	0
	.uleb128 0x2f
	.byte	0x1
	.string	"HsfbSafety_DCDC05_SM1"
	.byte	0x1
	.uahalf	0x44b
	.byte	0x1
	.uaword	.LFB227
	.uaword	.LFE227
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x1f09
	.uleb128 0x28
	.string	"Sum"
	.byte	0x1
	.uahalf	0x44d
	.uaword	0x199
	.uaword	.LLST54
	.uleb128 0x14
	.string	"tmp"
	.byte	0x1
	.uahalf	0x44e
	.uaword	0x1d0
	.byte	0
	.uleb128 0x2f
	.byte	0x1
	.string	"HsfbSafety_Init"
	.byte	0x1
	.uahalf	0x475
	.byte	0x1
	.uaword	.LFB228
	.uaword	.LFE228
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x1fe6
	.uleb128 0x24
	.uaword	0x14e4
	.uaword	.LBB51
	.uaword	.LBE51
	.byte	0x1
	.uahalf	0x477
	.uleb128 0x1d
	.uaword	0x150d
	.byte	0x6
	.byte	0x3
	.uaword	HsfbSafety_DW+8
	.byte	0x9f
	.uleb128 0x31
	.uaword	.LBB52
	.uaword	.LBE52
	.uleb128 0x2b
	.uaword	0x1519
	.uleb128 0x24
	.uaword	0x14af
	.uaword	.LBB53
	.uaword	.LBE53
	.byte	0x1
	.uahalf	0x1fc
	.uleb128 0x1d
	.uaword	0x14d7
	.byte	0x6
	.byte	0xf2
	.uaword	.Ldebug_info0+8019
	.sleb128 0
	.uleb128 0x23
	.uaword	0x1466
	.uaword	.LBB54
	.uaword	.LBE54
	.byte	0x1
	.uahalf	0x1b1
	.uaword	0x1fad
	.uleb128 0x1d
	.uaword	0x14a2
	.byte	0x6
	.byte	0x3
	.uaword	HsfbSafety_DW+74
	.byte	0x9f
	.uleb128 0x1d
	.uaword	0x1496
	.byte	0x6
	.byte	0x3
	.uaword	HsfbSafety_DW+73
	.byte	0x9f
	.uleb128 0x1d
	.uaword	0x148a
	.byte	0x6
	.byte	0x3
	.uaword	HsfbSafety_DW+72
	.byte	0x9f
	.byte	0
	.uleb128 0x24
	.uaword	0x1466
	.uaword	.LBB56
	.uaword	.LBE56
	.byte	0x1
	.uahalf	0x1b3
	.uleb128 0x1d
	.uaword	0x14a2
	.byte	0x6
	.byte	0x3
	.uaword	HsfbSafety_DW+71
	.byte	0x9f
	.uleb128 0x1d
	.uaword	0x1496
	.byte	0x6
	.byte	0x3
	.uaword	HsfbSafety_DW+70
	.byte	0x9f
	.uleb128 0x1d
	.uaword	0x148a
	.byte	0x6
	.byte	0x3
	.uaword	HsfbSafety_DW+69
	.byte	0x9f
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2f
	.byte	0x1
	.string	"HsfbSafety_Call100us"
	.byte	0x1
	.uahalf	0x482
	.byte	0x1
	.uaword	.LFB229
	.uaword	.LFE229
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x20ce
	.uleb128 0x27
	.string	"MeasStatus100us"
	.byte	0x1
	.uahalf	0x482
	.uaword	0x20ce
	.uaword	.LLST55
	.uleb128 0x27
	.string	"PwmStatus15us"
	.byte	0x1
	.uahalf	0x483
	.uaword	0x20d9
	.uaword	.LLST56
	.uleb128 0x27
	.string	"StateStatus"
	.byte	0x1
	.uahalf	0x483
	.uaword	0x20e4
	.uaword	.LLST57
	.uleb128 0x27
	.string	"SafetyStatus100us"
	.byte	0x1
	.uahalf	0x484
	.uaword	0x20ef
	.uaword	.LLST58
	.uleb128 0x21
	.uaword	0x152c
	.uaword	.LBB58
	.uaword	.Ldebug_ranges0+0x60
	.byte	0x1
	.uahalf	0x48f
	.uleb128 0x1d
	.uaword	0x1574
	.byte	0x6
	.byte	0x3
	.uaword	HsfbSafety_VoutErr
	.byte	0x9f
	.uleb128 0x32
	.uaword	0x1568
	.byte	0x4
	.uaword	0x41100000
	.uleb128 0x1e
	.uaword	0x155a
	.uaword	.LLST59
	.uleb128 0x1e
	.uaword	0x154c
	.uaword	.LLST60
	.uleb128 0x22
	.uaword	.Ldebug_ranges0+0x78
	.uleb128 0x1f
	.uaword	0x1581
	.uaword	.LLST61
	.uleb128 0x1f
	.uaword	0x1594
	.uaword	.LLST62
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.byte	0x4
	.uaword	0x20d4
	.uleb128 0x2a
	.uaword	0x5c9
	.uleb128 0x15
	.byte	0x4
	.uaword	0x20df
	.uleb128 0x2a
	.uaword	0x7d0
	.uleb128 0x15
	.byte	0x4
	.uaword	0x20ea
	.uleb128 0x2a
	.uaword	0x88d
	.uleb128 0x15
	.byte	0x4
	.uaword	0x501
	.uleb128 0x2f
	.byte	0x1
	.string	"HsfbSafety_Call1ms"
	.byte	0x1
	.uahalf	0x4b1
	.byte	0x1
	.uaword	.LFB230
	.uaword	.LFE230
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x22ec
	.uleb128 0x27
	.string	"MeasStatus1ms"
	.byte	0x1
	.uahalf	0x4b1
	.uaword	0x1a2e
	.uaword	.LLST63
	.uleb128 0x27
	.string	"PortStatus1ms"
	.byte	0x1
	.uahalf	0x4b2
	.uaword	0x1a23
	.uaword	.LLST64
	.uleb128 0x27
	.string	"AppRx10ms"
	.byte	0x1
	.uahalf	0x4b2
	.uaword	0x1b81
	.uaword	.LLST65
	.uleb128 0x27
	.string	"SafetyStatus1ms"
	.byte	0x1
	.uahalf	0x4b3
	.uaword	0x22ec
	.uaword	.LLST66
	.uleb128 0x2c
	.uaword	0x152c
	.uaword	.LBB62
	.uaword	.Ldebug_ranges0+0x90
	.byte	0x1
	.uahalf	0x4b9
	.uaword	0x21d8
	.uleb128 0x1d
	.uaword	0x1574
	.byte	0x6
	.byte	0x3
	.uaword	HsfbSafety_Vkl30Err
	.byte	0x9f
	.uleb128 0x32
	.uaword	0x1568
	.byte	0x4
	.uaword	0x40400000
	.uleb128 0x1e
	.uaword	0x155a
	.uaword	.LLST67
	.uleb128 0x1e
	.uaword	0x154c
	.uaword	.LLST68
	.uleb128 0x22
	.uaword	.Ldebug_ranges0+0xb0
	.uleb128 0x1f
	.uaword	0x1581
	.uaword	.LLST69
	.uleb128 0x1f
	.uaword	0x1594
	.uaword	.LLST70
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uaword	0x152c
	.uaword	.LBB66
	.uaword	.Ldebug_ranges0+0xd0
	.byte	0x1
	.uahalf	0x4bb
	.uaword	0x2229
	.uleb128 0x1e
	.uaword	0x1574
	.uaword	.LLST71
	.uleb128 0x1e
	.uaword	0x1568
	.uaword	.LLST72
	.uleb128 0x1e
	.uaword	0x155a
	.uaword	.LLST73
	.uleb128 0x1e
	.uaword	0x154c
	.uaword	.LLST74
	.uleb128 0x22
	.uaword	.Ldebug_ranges0+0xf8
	.uleb128 0x1f
	.uaword	0x1581
	.uaword	.LLST75
	.uleb128 0x1f
	.uaword	0x1594
	.uaword	.LLST76
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uaword	0x152c
	.uaword	.LBB73
	.uaword	.Ldebug_ranges0+0x120
	.byte	0x1
	.uahalf	0x4bd
	.uaword	0x227a
	.uleb128 0x1e
	.uaword	0x1574
	.uaword	.LLST77
	.uleb128 0x1e
	.uaword	0x1568
	.uaword	.LLST78
	.uleb128 0x1e
	.uaword	0x155a
	.uaword	.LLST79
	.uleb128 0x1e
	.uaword	0x154c
	.uaword	.LLST80
	.uleb128 0x22
	.uaword	.Ldebug_ranges0+0x148
	.uleb128 0x1f
	.uaword	0x1581
	.uaword	.LLST81
	.uleb128 0x1f
	.uaword	0x1594
	.uaword	.LLST82
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uaword	0x152c
	.uaword	.LBB79
	.uaword	.Ldebug_ranges0+0x170
	.byte	0x1
	.uahalf	0x4c0
	.uaword	0x22cb
	.uleb128 0x1e
	.uaword	0x1574
	.uaword	.LLST83
	.uleb128 0x1e
	.uaword	0x1568
	.uaword	.LLST84
	.uleb128 0x1e
	.uaword	0x155a
	.uaword	.LLST85
	.uleb128 0x1e
	.uaword	0x154c
	.uaword	.LLST86
	.uleb128 0x22
	.uaword	.Ldebug_ranges0+0x1a0
	.uleb128 0x1f
	.uaword	0x1581
	.uaword	.LLST87
	.uleb128 0x1f
	.uaword	0x1594
	.uaword	.LLST88
	.byte	0
	.byte	0
	.uleb128 0x33
	.uaword	0x15ab
	.uaword	.LBB85
	.uaword	.Ldebug_ranges0+0x1d0
	.byte	0x1
	.uahalf	0x4c3
	.uleb128 0x33
	.uaword	0x15c8
	.uaword	.LBB97
	.uaword	.Ldebug_ranges0+0x200
	.byte	0x1
	.uahalf	0x4d1
	.byte	0
	.uleb128 0x15
	.byte	0x4
	.uaword	0x4a9
	.uleb128 0x1b
	.byte	0x1
	.string	"HsfbSafety_CallInit"
	.byte	0x1
	.uahalf	0x4ee
	.byte	0x1
	.uaword	.LFB231
	.uaword	.LFE231
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0x34
	.string	"HsfbSafety_SafetyStatus"
	.byte	0x1
	.byte	0x20
	.uaword	0x3d3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	HsfbSafety_SafetyStatus
	.uleb128 0x34
	.string	"HsfbSafety_Enable"
	.byte	0x1
	.byte	0x21
	.uaword	0x3d3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	HsfbSafety_Enable
	.uleb128 0x34
	.string	"HsfbSafety_200usTick"
	.byte	0x1
	.byte	0x22
	.uaword	0x1c5
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	HsfbSafety_200usTick
	.uleb128 0x34
	.string	"HsfbSafety_VoutErr"
	.byte	0x1
	.byte	0x23
	.uaword	0x1c5
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	HsfbSafety_VoutErr
	.uleb128 0x34
	.string	"HsfbSafety_Vkl30Err"
	.byte	0x1
	.byte	0x24
	.uaword	0x1c5
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	HsfbSafety_Vkl30Err
	.uleb128 0x34
	.string	"HsfbSafety_VrefErr"
	.byte	0x1
	.byte	0x25
	.uaword	0x1c5
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	HsfbSafety_VrefErr
	.uleb128 0x34
	.string	"HsfbSafety_VoutHw1Err"
	.byte	0x1
	.byte	0x26
	.uaword	0x1c5
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	HsfbSafety_VoutHw1Err
	.uleb128 0x34
	.string	"HsfbSafety_VoutHw2Err"
	.byte	0x1
	.byte	0x27
	.uaword	0x1c5
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	HsfbSafety_VoutHw2Err
	.uleb128 0x34
	.string	"HsfbSafety_DW"
	.byte	0x1
	.byte	0x2e
	.uaword	0xf76
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	HsfbSafety_DW
	.uleb128 0x35
	.string	"PSWReg_Rd0"
	.byte	0xc
	.byte	0x45
	.uaword	0x110f
	.byte	0x1
	.byte	0x1
	.uleb128 0x35
	.string	"PSWReg_Rd1"
	.byte	0xc
	.byte	0x46
	.uaword	0x110f
	.byte	0x1
	.byte	0x1
	.uleb128 0x35
	.string	"PSWReg_Rd2"
	.byte	0xc
	.byte	0x47
	.uaword	0x110f
	.byte	0x1
	.byte	0x1
	.uleb128 0x35
	.string	"PSWReg_Rd3"
	.byte	0xc
	.byte	0x48
	.uaword	0x110f
	.byte	0x1
	.byte	0x1
	.uleb128 0x35
	.string	"Main_HwVer"
	.byte	0xb
	.byte	0x89
	.uaword	0x137b
	.byte	0x1
	.byte	0x1
	.uleb128 0x7
	.uaword	0x1a4
	.uaword	0x24bc
	.uleb128 0x8
	.uaword	0x172
	.byte	0x2
	.byte	0
	.uleb128 0x35
	.string	"Safety_PwmEn"
	.byte	0xd
	.byte	0x2b
	.uaword	0x24ac
	.byte	0x1
	.byte	0x1
	.uleb128 0x35
	.string	"Gtm_PwmStatus"
	.byte	0xd
	.byte	0x2c
	.uaword	0x1a4
	.byte	0x1
	.byte	0x1
	.uleb128 0x35
	.string	"Safety_WDIDis"
	.byte	0xd
	.byte	0x2d
	.uaword	0x1a4
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.string	"HsfbSafety_MeasStatus100us"
	.byte	0x1
	.byte	0x37
	.uaword	0x20ce
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	HsfbSafety_MeasStatus100us
	.uleb128 0x34
	.string	"HsfbSafety_MeasStatus1ms"
	.byte	0x1
	.byte	0x38
	.uaword	0x1a2e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	HsfbSafety_MeasStatus1ms
	.uleb128 0x34
	.string	"HsfbSafety_StateStatus"
	.byte	0x1
	.byte	0x39
	.uaword	0x20e4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	HsfbSafety_StateStatus
	.uleb128 0x34
	.string	"HsfbSafety_PortStatus1ms"
	.byte	0x1
	.byte	0x3a
	.uaword	0x1a23
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	HsfbSafety_PortStatus1ms
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
	.uleb128 0xa
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
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
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
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
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
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
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x29
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x30
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
	.uleb128 0x31
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.byte	0x5f
	.uaword	.LVL2
	.uaword	.LVL3
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL8
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL10
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL14
	.uaword	.LVL15
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL16
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL18
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL22
	.uaword	.LVL23
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL24
	.uaword	.LVL25
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL26
	.uaword	.LVL27
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL30
	.uaword	.LVL31
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL32
	.uaword	.LVL33
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL34
	.uaword	.LVL35
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL36
	.uaword	.LVL39
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL44
	.uaword	.LFE208
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL37
	.uaword	.LVL38
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL40
	.uaword	.LVL42
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL42
	.uaword	.LVL43
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL41
	.uaword	.LVL42
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL46
	.uaword	.LVL55
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL59
	.uaword	.LVL60
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL46
	.uaword	.LVL58
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL59
	.uaword	.LVL61
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL46
	.uaword	.LVL59-1
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL59
	.uaword	.LVL67-1
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL46
	.uaword	.LVL59-1
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL59
	.uaword	.LVL66-1
	.uahalf	0x1
	.byte	0x57
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL46
	.uaword	.LVL48
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL50
	.uaword	.LVL59-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL59
	.uaword	.LVL65-1
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL46
	.uaword	.LVL48
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL50
	.uaword	.LVL59-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL59
	.uaword	.LVL64-1
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL46
	.uaword	.LVL48
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL50
	.uaword	.LVL59-1
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL59
	.uaword	.LVL63-1
	.uahalf	0x1
	.byte	0x66
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL46
	.uaword	.LVL59-1
	.uahalf	0x1
	.byte	0x67
	.uaword	.LVL59
	.uaword	.LVL62-1
	.uahalf	0x1
	.byte	0x67
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL47
	.uaword	.LVL50
	.uahalf	0x1
	.byte	0x67
	.uaword	.LVL51
	.uaword	.LVL59-1
	.uahalf	0x1
	.byte	0x67
	.uaword	.LVL59
	.uaword	.LVL68-1
	.uahalf	0x1
	.byte	0x67
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL47
	.uaword	.LVL50
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL51
	.uaword	.LVL59-1
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL59
	.uaword	.LVL69-1
	.uahalf	0x1
	.byte	0x66
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL47
	.uaword	.LVL50
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL51
	.uaword	.LVL59-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL59
	.uaword	.LVL70-1
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL47
	.uaword	.LVL50
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL51
	.uaword	.LVL59-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL59
	.uaword	.LVL71-1
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL47
	.uaword	.LVL50
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL51
	.uaword	.LVL59-1
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL59
	.uaword	.LVL72-1
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL47
	.uaword	.LVL49
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL51
	.uaword	.LVL59-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL59
	.uaword	.LVL73-1
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL47
	.uaword	.LVL50
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL51
	.uaword	.LVL59-1
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL59
	.uaword	.LVL74-1
	.uahalf	0x1
	.byte	0x57
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL47
	.uaword	.LVL50
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL51
	.uaword	.LVL59-1
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL59
	.uaword	.LVL75-1
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL47
	.uaword	.LVL50
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL51
	.uaword	.LVL58
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL59
	.uaword	.LVL61
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL47
	.uaword	.LVL50
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL51
	.uaword	.LVL55
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL59
	.uaword	.LVL60
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL47
	.uaword	.LVL50
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL51
	.uaword	.LVL56
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL56
	.uaword	.LVL57
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL57
	.uaword	.LFE210
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL47
	.uaword	.LVL50
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL51
	.uaword	.LVL52
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL52
	.uaword	.LVL53
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL54
	.uaword	.LFE210
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LFB212
	.uaword	.LCFI0
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI0
	.uaword	.LFE212
	.uahalf	0x2
	.byte	0x8a
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL78
	.uaword	.LVL84
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL89
	.uaword	.LVL90
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL91
	.uaword	.LFE212
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL78
	.uaword	.LVL81
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL81
	.uaword	.LFE212
	.uahalf	0x1
	.byte	0x6e
	.uaword	0
	.uaword	0
.LLST31:
	.uaword	.LVL78
	.uaword	.LVL80
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL80
	.uaword	.LFE212
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST32:
	.uaword	.LVL78
	.uaword	.LVL82
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL82
	.uaword	.LFE212
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST33:
	.uaword	.LVL78
	.uaword	.LVL83
	.uahalf	0x1
	.byte	0x67
	.uaword	.LVL83
	.uaword	.LFE212
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST34:
	.uaword	.LVL79
	.uaword	.LVL84
	.uahalf	0x5
	.byte	0x74
	.sleb128 0
	.byte	0x30
	.byte	0x29
	.byte	0x9f
	.uaword	.LVL86
	.uaword	.LVL87
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL89
	.uaword	.LVL90
	.uahalf	0x5
	.byte	0x74
	.sleb128 0
	.byte	0x30
	.byte	0x29
	.byte	0x9f
	.uaword	.LVL91
	.uaword	.LFE212
	.uahalf	0x5
	.byte	0x74
	.sleb128 0
	.byte	0x30
	.byte	0x29
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST35:
	.uaword	.LVL79
	.uaword	.LVL85-1
	.uahalf	0x5
	.byte	0x72
	.sleb128 0
	.byte	0x30
	.byte	0x29
	.byte	0x9f
	.uaword	.LVL89
	.uaword	.LVL90
	.uahalf	0x5
	.byte	0x72
	.sleb128 0
	.byte	0x30
	.byte	0x29
	.byte	0x9f
	.uaword	.LVL91
	.uaword	.LFE212
	.uahalf	0x5
	.byte	0x72
	.sleb128 0
	.byte	0x30
	.byte	0x29
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST36:
	.uaword	.LFB214
	.uaword	.LCFI1
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI1
	.uaword	.LFE214
	.uahalf	0x2
	.byte	0x8a
	.sleb128 16
	.uaword	0
	.uaword	0
.LLST37:
	.uaword	.LVL95
	.uaword	.LVL96
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL96
	.uaword	.LFE214
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST38:
	.uaword	.LVL95
	.uaword	.LVL96
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL97
	.uaword	.LVL98-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL99
	.uaword	.LVL100-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL101
	.uaword	.LVL102-1
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST39:
	.uaword	.LVL95
	.uaword	.LVL96
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL97
	.uaword	.LVL98-1
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL99
	.uaword	.LVL100-1
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL101
	.uaword	.LVL102-1
	.uahalf	0x1
	.byte	0x66
	.uaword	0
	.uaword	0
.LLST40:
	.uaword	.LVL95
	.uaword	.LVL96
	.uahalf	0x1
	.byte	0x67
	.uaword	.LVL96
	.uaword	.LFE214
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST41:
	.uaword	.LVL105
	.uaword	.LVL106
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL107
	.uaword	.LVL108
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL109
	.uaword	.LVL110
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST42:
	.uaword	.LVL113
	.uaword	.LVL114
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL115
	.uaword	.LVL116
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL117
	.uaword	.LVL118
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST43:
	.uaword	.LVL121
	.uaword	.LVL122
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL123
	.uaword	.LVL124
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL125
	.uaword	.LVL126
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST44:
	.uaword	.LVL129
	.uaword	.LVL130
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL131
	.uaword	.LVL132
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL133
	.uaword	.LVL134
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST45:
	.uaword	.LVL137
	.uaword	.LVL138
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL139
	.uaword	.LVL140
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL141
	.uaword	.LVL142
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST46:
	.uaword	.LVL145
	.uaword	.LVL146
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL147
	.uaword	.LVL148
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL149
	.uaword	.LVL150
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST47:
	.uaword	.LVL153
	.uaword	.LVL154
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL155
	.uaword	.LVL156
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL157
	.uaword	.LVL158
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST48:
	.uaword	.LVL159
	.uaword	.LVL165
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL168
	.uaword	.LVL170
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL173
	.uaword	.LVL174
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST49:
	.uaword	.LVL160
	.uaword	.LVL162
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL162
	.uaword	.LVL164
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL168
	.uaword	.LVL169
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL173
	.uaword	.LVL174
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST50:
	.uaword	.LVL166
	.uaword	.LVL167
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL170
	.uaword	.LVL172
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL174
	.uaword	.LVL175
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST51:
	.uaword	.LVL163
	.uaword	.LVL168
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL170
	.uaword	.LVL171
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL174
	.uaword	.LVL175
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST52:
	.uaword	.LVL176
	.uaword	.LVL177
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL178
	.uaword	.LVL179
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL182
	.uaword	.LVL183
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST53:
	.uaword	.LVL186
	.uaword	.LVL187
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL188
	.uaword	.LVL189
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL190
	.uaword	.LVL191
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST54:
	.uaword	.LVL194
	.uaword	.LVL195
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL196
	.uaword	.LVL197
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL198
	.uaword	.LVL199
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST55:
	.uaword	.LVL203
	.uaword	.LVL207-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL208
	.uaword	.LFE229
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST56:
	.uaword	.LVL203
	.uaword	.LVL207-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL207-1
	.uaword	.LFE229
	.uahalf	0x1
	.byte	0x6e
	.uaword	0
	.uaword	0
.LLST57:
	.uaword	.LVL203
	.uaword	.LVL207-1
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL208
	.uaword	.LFE229
	.uahalf	0x1
	.byte	0x66
	.uaword	0
	.uaword	0
.LLST58:
	.uaword	.LVL203
	.uaword	.LVL207-1
	.uahalf	0x1
	.byte	0x67
	.uaword	.LVL207-1
	.uaword	.LFE229
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST59:
	.uaword	.LVL204
	.uaword	.LVL207-1
	.uahalf	0x2
	.byte	0x84
	.sleb128 36
	.uaword	.LVL208
	.uaword	.LVL210
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL210
	.uaword	.LFE229
	.uahalf	0x2
	.byte	0x84
	.sleb128 36
	.uaword	0
	.uaword	0
.LLST60:
	.uaword	.LVL204
	.uaword	.LVL207-1
	.uahalf	0x2
	.byte	0x84
	.sleb128 28
	.uaword	.LVL208
	.uaword	.LVL212
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL212
	.uaword	.LFE229
	.uahalf	0x2
	.byte	0x84
	.sleb128 28
	.uaword	0
	.uaword	0
.LLST61:
	.uaword	.LVL205
	.uaword	.LVL206
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL209
	.uaword	.LVL213
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL213
	.uaword	.LVL214
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST62:
	.uaword	.LVL211
	.uaword	.LVL213
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST63:
	.uaword	.LVL215
	.uaword	.LVL217
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL217
	.uaword	.LFE230
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST64:
	.uaword	.LVL215
	.uaword	.LVL219-1
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST65:
	.uaword	.LVL215
	.uaword	.LVL218
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL218
	.uaword	.LFE230
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST66:
	.uaword	.LVL215
	.uaword	.LVL216
	.uahalf	0x1
	.byte	0x67
	.uaword	.LVL216
	.uaword	.LFE230
	.uahalf	0x1
	.byte	0x5a
	.uaword	0
	.uaword	0
.LLST67:
	.uaword	.LVL220
	.uaword	.LVL246-1
	.uahalf	0x3
	.byte	0x8d
	.sleb128 68
	.uaword	.LVL247
	.uaword	.LFE230
	.uahalf	0x3
	.byte	0x8d
	.sleb128 68
	.uaword	0
	.uaword	0
.LLST68:
	.uaword	.LVL220
	.uaword	.LVL246-1
	.uahalf	0x2
	.byte	0x8d
	.sleb128 60
	.uaword	.LVL247
	.uaword	.LFE230
	.uahalf	0x2
	.byte	0x8d
	.sleb128 60
	.uaword	0
	.uaword	0
.LLST69:
	.uaword	.LVL221
	.uaword	.LVL222
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL223
	.uaword	.LVL225
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL225
	.uaword	.LVL226
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL261
	.uaword	.LVL262
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST70:
	.uaword	.LVL224
	.uaword	.LVL225
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST71:
	.uaword	.LVL227
	.uaword	.LVL256
	.uahalf	0x6
	.byte	0x3
	.uaword	HsfbSafety_VrefErr
	.byte	0x9f
	.uaword	.LVL257
	.uaword	.LVL261
	.uahalf	0x6
	.byte	0x3
	.uaword	HsfbSafety_VrefErr
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST72:
	.uaword	.LVL227
	.uaword	.LVL256
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0x40000000
	.uaword	.LVL257
	.uaword	.LVL261
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0x40000000
	.uaword	0
	.uaword	0
.LLST73:
	.uaword	.LVL227
	.uaword	.LVL246-1
	.uahalf	0x3
	.byte	0x8d
	.sleb128 84
	.uaword	.LVL247
	.uaword	.LVL256
	.uahalf	0x3
	.byte	0x8d
	.sleb128 84
	.uaword	.LVL257
	.uaword	.LVL261
	.uahalf	0x3
	.byte	0x8d
	.sleb128 84
	.uaword	0
	.uaword	0
.LLST74:
	.uaword	.LVL227
	.uaword	.LVL256
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0x40a00000
	.uaword	.LVL257
	.uaword	.LVL261
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0x40a00000
	.uaword	0
	.uaword	0
.LLST75:
	.uaword	.LVL228
	.uaword	.LVL229
	.uahalf	0x3
	.byte	0x8d
	.sleb128 84
	.uaword	.LVL252
	.uaword	.LVL254
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL254
	.uaword	.LVL255
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST76:
	.uaword	.LVL253
	.uaword	.LVL254
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST77:
	.uaword	.LVL230
	.uaword	.LVL251
	.uahalf	0x6
	.byte	0x3
	.uaword	HsfbSafety_VoutHw1Err
	.byte	0x9f
	.uaword	.LVL257
	.uaword	.LVL261
	.uahalf	0x6
	.byte	0x3
	.uaword	HsfbSafety_VoutHw1Err
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST78:
	.uaword	.LVL230
	.uaword	.LVL251
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0x41100000
	.uaword	.LVL257
	.uaword	.LVL261
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0x41100000
	.uaword	0
	.uaword	0
.LLST79:
	.uaword	.LVL230
	.uaword	.LVL234
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL249
	.uaword	.LVL250
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST80:
	.uaword	.LVL230
	.uaword	.LVL246-1
	.uahalf	0x2
	.byte	0x8d
	.sleb128 28
	.uaword	.LVL247
	.uaword	.LVL248
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL248
	.uaword	.LVL251
	.uahalf	0x2
	.byte	0x8d
	.sleb128 28
	.uaword	.LVL257
	.uaword	.LVL261
	.uahalf	0x2
	.byte	0x8d
	.sleb128 28
	.uaword	0
	.uaword	0
.LLST81:
	.uaword	.LVL231
	.uaword	.LVL232
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL233
	.uaword	.LVL236
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL236
	.uaword	.LVL237
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL259
	.uaword	.LVL260
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST82:
	.uaword	.LVL235
	.uaword	.LVL236
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST83:
	.uaword	.LVL238
	.uaword	.LVL249
	.uahalf	0x6
	.byte	0x3
	.uaword	HsfbSafety_VoutHw2Err
	.byte	0x9f
	.uaword	.LVL257
	.uaword	.LVL259
	.uahalf	0x6
	.byte	0x3
	.uaword	HsfbSafety_VoutHw2Err
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST84:
	.uaword	.LVL238
	.uaword	.LVL249
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0x41100000
	.uaword	.LVL257
	.uaword	.LVL259
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0x41100000
	.uaword	0
	.uaword	0
.LLST85:
	.uaword	.LVL238
	.uaword	.LVL243
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL247
	.uaword	.LVL249
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST86:
	.uaword	.LVL238
	.uaword	.LVL246-1
	.uahalf	0x2
	.byte	0x8d
	.sleb128 28
	.uaword	.LVL247
	.uaword	.LVL248
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL248
	.uaword	.LVL249
	.uahalf	0x2
	.byte	0x8d
	.sleb128 28
	.uaword	.LVL257
	.uaword	.LVL259
	.uahalf	0x2
	.byte	0x8d
	.sleb128 28
	.uaword	0
	.uaword	0
.LLST87:
	.uaword	.LVL239
	.uaword	.LVL240
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL241
	.uaword	.LVL244
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL244
	.uaword	.LVL245
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL257
	.uaword	.LVL258
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST88:
	.uaword	.LVL242
	.uaword	.LVL244
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
	.section .debug_aranges,"",@progbits
	.uaword	0x104
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
	.uaword	.LFB213
	.uaword	.LFE213-.LFB213
	.uaword	.LFB214
	.uaword	.LFE214-.LFB214
	.uaword	.LFB215
	.uaword	.LFE215-.LFB215
	.uaword	.LFB216
	.uaword	.LFE216-.LFB216
	.uaword	.LFB217
	.uaword	.LFE217-.LFB217
	.uaword	.LFB218
	.uaword	.LFE218-.LFB218
	.uaword	.LFB219
	.uaword	.LFE219-.LFB219
	.uaword	.LFB220
	.uaword	.LFE220-.LFB220
	.uaword	.LFB221
	.uaword	.LFE221-.LFB221
	.uaword	.LFB222
	.uaword	.LFE222-.LFB222
	.uaword	.LFB223
	.uaword	.LFE223-.LFB223
	.uaword	.LFB224
	.uaword	.LFE224-.LFB224
	.uaword	.LFB225
	.uaword	.LFE225-.LFB225
	.uaword	.LFB226
	.uaword	.LFE226-.LFB226
	.uaword	.LFB227
	.uaword	.LFE227-.LFB227
	.uaword	.LFB228
	.uaword	.LFE228-.LFB228
	.uaword	.LFB229
	.uaword	.LFE229-.LFB229
	.uaword	.LFB230
	.uaword	.LFE230-.LFB230
	.uaword	.LFB231
	.uaword	.LFE231-.LFB231
	.uaword	0
	.uaword	0
	.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB35
	.uaword	.LBE35
	.uaword	.LBB38
	.uaword	.LBE38
	.uaword	0
	.uaword	0
	.uaword	.LBB36
	.uaword	.LBE36
	.uaword	.LBB37
	.uaword	.LBE37
	.uaword	0
	.uaword	0
	.uaword	.LBB43
	.uaword	.LBE43
	.uaword	.LBB50
	.uaword	.LBE50
	.uaword	0
	.uaword	0
	.uaword	.LBB44
	.uaword	.LBE44
	.uaword	.LBB47
	.uaword	.LBE47
	.uaword	0
	.uaword	0
	.uaword	.LBB58
	.uaword	.LBE58
	.uaword	.LBB61
	.uaword	.LBE61
	.uaword	0
	.uaword	0
	.uaword	.LBB59
	.uaword	.LBE59
	.uaword	.LBB60
	.uaword	.LBE60
	.uaword	0
	.uaword	0
	.uaword	.LBB62
	.uaword	.LBE62
	.uaword	.LBB104
	.uaword	.LBE104
	.uaword	.LBB107
	.uaword	.LBE107
	.uaword	0
	.uaword	0
	.uaword	.LBB63
	.uaword	.LBE63
	.uaword	.LBB64
	.uaword	.LBE64
	.uaword	.LBB65
	.uaword	.LBE65
	.uaword	0
	.uaword	0
	.uaword	.LBB66
	.uaword	.LBE66
	.uaword	.LBB71
	.uaword	.LBE71
	.uaword	.LBB72
	.uaword	.LBE72
	.uaword	.LBB103
	.uaword	.LBE103
	.uaword	0
	.uaword	0
	.uaword	.LBB67
	.uaword	.LBE67
	.uaword	.LBB68
	.uaword	.LBE68
	.uaword	.LBB69
	.uaword	.LBE69
	.uaword	.LBB70
	.uaword	.LBE70
	.uaword	0
	.uaword	0
	.uaword	.LBB73
	.uaword	.LBE73
	.uaword	.LBB78
	.uaword	.LBE78
	.uaword	.LBB102
	.uaword	.LBE102
	.uaword	.LBB106
	.uaword	.LBE106
	.uaword	0
	.uaword	0
	.uaword	.LBB74
	.uaword	.LBE74
	.uaword	.LBB75
	.uaword	.LBE75
	.uaword	.LBB76
	.uaword	.LBE76
	.uaword	.LBB77
	.uaword	.LBE77
	.uaword	0
	.uaword	0
	.uaword	.LBB79
	.uaword	.LBE79
	.uaword	.LBB91
	.uaword	.LBE91
	.uaword	.LBB93
	.uaword	.LBE93
	.uaword	.LBB101
	.uaword	.LBE101
	.uaword	.LBB105
	.uaword	.LBE105
	.uaword	0
	.uaword	0
	.uaword	.LBB80
	.uaword	.LBE80
	.uaword	.LBB81
	.uaword	.LBE81
	.uaword	.LBB82
	.uaword	.LBE82
	.uaword	.LBB83
	.uaword	.LBE83
	.uaword	.LBB84
	.uaword	.LBE84
	.uaword	0
	.uaword	0
	.uaword	.LBB85
	.uaword	.LBE85
	.uaword	.LBB92
	.uaword	.LBE92
	.uaword	.LBB94
	.uaword	.LBE94
	.uaword	.LBB95
	.uaword	.LBE95
	.uaword	.LBB96
	.uaword	.LBE96
	.uaword	0
	.uaword	0
	.uaword	.LBB97
	.uaword	.LBE97
	.uaword	.LBB100
	.uaword	.LBE100
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
	.uaword	.LFB213
	.uaword	.LFE213
	.uaword	.LFB214
	.uaword	.LFE214
	.uaword	.LFB215
	.uaword	.LFE215
	.uaword	.LFB216
	.uaword	.LFE216
	.uaword	.LFB217
	.uaword	.LFE217
	.uaword	.LFB218
	.uaword	.LFE218
	.uaword	.LFB219
	.uaword	.LFE219
	.uaword	.LFB220
	.uaword	.LFE220
	.uaword	.LFB221
	.uaword	.LFE221
	.uaword	.LFB222
	.uaword	.LFE222
	.uaword	.LFB223
	.uaword	.LFE223
	.uaword	.LFB224
	.uaword	.LFE224
	.uaword	.LFB225
	.uaword	.LFE225
	.uaword	.LFB226
	.uaword	.LFE226
	.uaword	.LFB227
	.uaword	.LFE227
	.uaword	.LFB228
	.uaword	.LFE228
	.uaword	.LFB229
	.uaword	.LFE229
	.uaword	.LFB230
	.uaword	.LFE230
	.uaword	.LFB231
	.uaword	.LFE231
	.uaword	0
	.uaword	0
	.section .debug_line,"",@progbits
.Ldebug_line0:
	.section .debug_str,"",@progbits
.LASF3:
	.string	"Topology"
.LASF1:
	.string	"AutoDiagFin"
.LASF0:
	.string	"AutoDiagWait"
.LASF4:
	.string	"Enable"
.LASF5:
	.string	"Status"
.LASF6:
	.string	"AutoDiagErr"
.LASF2:
	.string	"VoutDiag"
.LASF7:
	.string	"SignalConversion1"
	.extern	Main_HwVer,STT_OBJECT,32
	.extern	Safety_WDIDis,STT_OBJECT,2
	.extern	Safety_PwmEn,STT_OBJECT,6
	.extern	HsfbSafety_SetClrAutoDiag,STT_FUNC,0
	.extern	Gtm_PwmStatus,STT_OBJECT,2
	.ident	"GCC: (HighTec Release v4.6.3.0) 4.6.3 build on 2013-05-17"
