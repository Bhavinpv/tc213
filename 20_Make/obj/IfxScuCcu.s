	.file	"IfxScuCcu.c"
.section .text,"ax",@progbits
.Ltext0:
	.section .text.MPU_QM_CODE,"ax",@progbits
	.align 3
	.global	IfxScuCcu_calculateSysPllDividers
	.type	IfxScuCcu_calculateSysPllDividers, @function
IfxScuCcu_calculateSysPllDividers:
.LFB188:
	.file 1 "../30_Bsw/Mcal/Scu/IfxScuCcu.c"
	.loc 1 101 0
.LVL0:
.LBB25:
	.loc 1 138 0
	movh	%d14, 3662
	addi	%d14, %d14, 7169
	.loc 1 136 0
	ge.u	%d14, %d4, %d14
	mov	%d15, 1
	sel	%d14, %d14, %d15, 2
	.loc 1 138 0
	sh	%d7, %d14, 4
	.loc 1 133 0
	movh	%d2, 3052
	.loc 1 147 0
	movh.a	%a12, hi:-8000000
	movh.a	%a7, hi:16000001
	.loc 1 153 0
	movh.a	%a6, hi:-400000000
	movh.a	%a5, hi:400000001
.LBE25:
	.loc 1 104 0
	ld.w	%d1, [%a4] 64
.LVL1:
.LBB28:
	.loc 1 138 0
	mov.a	%a3, %d7
	.loc 1 133 0
	addi	%d2, %d2, -15872
	mov	%d3, 0
	.loc 1 128 0
	mov	%e12, 0
	mov	%d11, 0
	.loc 1 143 0
	mov	%d9, 16
	.loc 1 145 0
	mov.a	%a13, 0
	.loc 1 147 0
	lea	%a12, [%a12] lo:-8000000
	lea	%a7, [%a7] lo:16000001
	.loc 1 153 0
	lea	%a6, [%a6] lo:-400000000
	lea	%a5, [%a5] lo:400000001
	mov.a	%a2, 15
.LVL2:
.L9:
	.loc 1 145 0
	div.u	%e6, %d1, %d9
	.loc 1 147 0
	mov.d	%d15, %a12
	mov.d	%d7, %a13
	addx	%d6, %d6, %d15
	addc	%d5, %d7, -1
	eq	%d15, %d5, 0
	mov.d	%d7, %a7
	and.ge.u	%d15, %d6, %d7
	or.ne	%d15, %d5, 0
	jnz	%d15, .L3
	.loc 1 100 0
	mov	%d8, %d9
	mov	%d10, 1
.L8:
.LVL3:
	.loc 1 151 0
	mul.u	%e6, %d10, %d4
	.loc 1 153 0
	mov.d	%d15, %a6
	addx	%d6, %d6, %d15
	addc	%d5, %d7, -1
	eq	%d15, %d5, 0
	mov.d	%d7, %a5
	and.ge.u	%d15, %d6, %d7
	or.ne	%d15, %d5, 0
	jnz	%d15, .L4
	mov	%d5, 1
	lea	%a15, 127
.L7:
.LBB26:
	.loc 1 158 0
	div.u	%e6, %d5, %d8
	mul	%d6, %d1
	sub	%d6, %d4
	.loc 1 160 0
	jz	%d6, .L12
	.loc 1 170 0
	eq	%d15, %d3, 0
	and.lt.u	%d15, %d6, %d2
	or.ne	%d15, %d3, 0
	jz	%d15, .L6
	mov	%d2, %d6
	mov	%d3, 0
	mov	%e12, %d5, %d9
	mov	%d11, %d10
.L6:
.LVL4:
.LBE26:
	.loc 1 155 0
	add	%d5, 1
.LVL5:
	loop	%a15, .L7
.LVL6:
.L4:
	.loc 1 149 0
	mov.d	%d15, %a3
	add	%d10, %d14
.LVL7:
	add	%d8, %d15
	lt.u	%d15, %d10, 129
	jnz	%d15, .L8
.LVL8:
.L3:
	.loc 1 143 0
	mov.a	%a15, %d14
	add	%d9, -1
.LVL9:
	sub.a	%a3, %a3, %a15
	loop	%a2, .L9
.LVL10:
.L5:
	.loc 1 185 0
	movh	%d15, 20972
	addi	%d15, %d15, -31457
	sh	%d4, 1
.LVL11:
	mul.u	%e4, %d4, %d15
	eq	%d15, %d3, 0
	sh	%d4, %d5, -5
	and.ge.u	%d15, %d2, %d4
	or.ne	%d15, %d3, 0
	.loc 1 195 0
	mov	%d2, 1
.LVL12:
	.loc 1 185 0
	jnz	%d15, .L10
	.loc 1 187 0
	add	%d13, -1
.LVL13:
	.loc 1 188 0
	add	%d12, -1
.LVL14:
	.loc 1 189 0
	add	%d11, -1
.LVL15:
	.loc 1 190 0
	movh.a	%a15, 0
	.loc 1 187 0
	st.b	[%a4] 9, %d13
	.loc 1 188 0
	st.b	[%a4] 8, %d12
	.loc 1 189 0
	st.b	[%a4] 10, %d11
	.loc 1 190 0
	st.a	[%a4] 12, %a15
	.loc 1 191 0
	st.b	[%a4]0, %d15
	.loc 1 102 0
	mov	%d2, 0
.LVL16:
.L10:
.LBE28:
	.loc 1 200 0
	ret
.LVL17:
.L12:
.LBB29:
.LBB27:
	.loc 1 160 0
	mov	%e12, %d5, %d9
	mov	%d11, %d10
	mov	%e2, 0
	j	.L5
.LBE27:
.LBE29:
.LFE188:
	.size	IfxScuCcu_calculateSysPllDividers, .-IfxScuCcu_calculateSysPllDividers
	.align 3
	.global	IfxScuCcu_getOsc0Frequency
	.type	IfxScuCcu_getOsc0Frequency, @function
IfxScuCcu_getOsc0Frequency:
.LFB196:
	.loc 1 400 0
	.loc 1 401 0
	movh.a	%a15, hi:IfxScuCcu_xtalFrequency
	ld.w	%d2, [%a15] lo:IfxScuCcu_xtalFrequency
	.loc 1 402 0
	utof	%d2, %d2
	ret
.LFE196:
	.size	IfxScuCcu_getOsc0Frequency, .-IfxScuCcu_getOsc0Frequency
	.align 3
	.global	IfxScuCcu_getOscFrequency
	.type	IfxScuCcu_getOscFrequency, @function
IfxScuCcu_getOscFrequency:
.LFB197:
	.loc 1 406 0
	.loc 1 409 0
	movh.a	%a15, hi:-268214220
	lea	%a15, [%a15] lo:-268214220
	ld.w	%d2, [%a15]0
	movh	%d15, 12288
	and	%d15, %d2
	.loc 1 411 0
	movh	%d2, 19647
	addi	%d2, %d2, -17376
	.loc 1 409 0
	jz	%d15, .L21
.LBB32:
.LBB33:
	.loc 1 413 0
	ld.w	%d2, [%a15]0
	movh	%d15, 12288
	and	%d15, %d2
	movh	%d3, 4096
	.loc 1 420 0
	mov	%d2, 0
	.loc 1 413 0
	jeq	%d15, %d3, .L25
.L21:
.LVL18:
.LBE33:
.LBE32:
	.loc 1 424 0
	ret
.LVL19:
.L25:
.LBB35:
.LBB34:
	.loc 1 415 0
	movh.a	%a15, hi:IfxScuCcu_xtalFrequency
	ld.w	%d2, [%a15] lo:IfxScuCcu_xtalFrequency
	utof	%d2, %d2
.LVL20:
.LBE34:
.LBE35:
	.loc 1 424 0
	ret
.LFE197:
	.size	IfxScuCcu_getOscFrequency, .-IfxScuCcu_getOscFrequency
	.align 3
	.global	IfxScuCcu_getPllFrequency
	.type	IfxScuCcu_getPllFrequency, @function
IfxScuCcu_getPllFrequency:
.LFB198:
	.loc 1 428 0
.LVL21:
	.loc 1 435 0
	movh.a	%a15, hi:-268214272
	lea	%a15, [%a15] lo:-268214272
	.loc 1 433 0
	call	IfxScuCcu_getOscFrequency
.LVL22:
	.loc 1 435 0
	ld.w	%d15, [%a15] 20
	jnz.t	%d15, 0, .L30
	.loc 1 440 0
	ld.w	%d15, [%a15] 20
	jnz.t	%d15, 3, .L31
	.loc 1 448 0
	ld.w	%d4, [%a15] 24
	ld.w	%d3, [%a15] 28
	ld.w	%d15, [%a15] 24
	extr.u	%d4, %d4, 9, 7
	extr.u	%d15, %d15, 24, 4
	and	%d3, %d3, 127
	add	%d15, 1
	madd	%d15, %d15, %d3, %d15
	add	%d4, 1
	itof	%d4, %d4
	itof	%d15, %d15
	mul.f	%d2, %d4, %d2
.LVL23:
	div.f	%d2, %d2, %d15
.LVL24:
	.loc 1 452 0
	ret
.LVL25:
.L31:
	.loc 1 443 0
	ld.w	%d2, [%a15] 28
.LVL26:
	movh	%d15, 19647
	and	%d2, %d2, 127
	add	%d2, 1
	itof	%d2, %d2
	addi	%d15, %d15, -17376
	div.f	%d2, %d15, %d2
.LVL27:
	ret
.LVL28:
.L30:
	.loc 1 438 0
	ld.w	%d15, [%a15] 28
	extr.u	%d15, %d15, 16, 7
	add	%d15, 1
	itof	%d15, %d15
	div.f	%d2, %d2, %d15
.LVL29:
	ret
.LFE198:
	.size	IfxScuCcu_getPllFrequency, .-IfxScuCcu_getPllFrequency
	.align 3
	.global	IfxScuCcu_getPllVcoFrequency
	.type	IfxScuCcu_getPllVcoFrequency, @function
IfxScuCcu_getPllVcoFrequency:
.LFB199:
	.loc 1 456 0
	.loc 1 459 0
	movh.a	%a15, hi:-268214252
	lea	%a15, [%a15] lo:-268214252
	ld.w	%d15, [%a15]0
	.loc 1 462 0
	movh	%d2, 19647
	addi	%d2, %d2, -17376
	.loc 1 459 0
	jz.t	%d15, 3, .L35
.LVL30:
	.loc 1 471 0
	ret
.LVL31:
.L35:
.LBB38:
.LBB39:
	.loc 1 467 0
	movh.a	%a15, hi:-268214248
	call	IfxScuCcu_getOscFrequency
	lea	%a15, [%a15] lo:-268214248
	ld.w	%d3, [%a15]0
	ld.w	%d15, [%a15]0
	extr.u	%d3, %d3, 9, 7
	extr.u	%d15, %d15, 24, 4
	add	%d3, 1
	itof	%d3, %d3
	add	%d15, 1
	mul.f	%d2, %d2, %d3
	itof	%d15, %d15
	div.f	%d2, %d2, %d15
.LVL32:
.LBE39:
.LBE38:
	.loc 1 471 0
	ret
.LFE199:
	.size	IfxScuCcu_getPllVcoFrequency, .-IfxScuCcu_getPllVcoFrequency
	.align 3
	.global	IfxScuCcu_getSourceFrequency
	.type	IfxScuCcu_getSourceFrequency, @function
IfxScuCcu_getSourceFrequency:
.LFB200:
	.loc 1 475 0
	.loc 1 478 0
	movh.a	%a15, hi:-268214224
	lea	%a15, [%a15] lo:-268214224
	ld.w	%d15, [%a15]0
	.loc 1 481 0
	movh	%d2, 19647
	.loc 1 478 0
	extr.u	%d15, %d15, 28, 2
	.loc 1 481 0
	addi	%d2, %d2, -17376
	.loc 1 478 0
	jz	%d15, .L37
	.loc 1 487 0
	mov	%d2, 0
	.loc 1 478 0
	jeq	%d15, 1, .L42
.L37:
.LVL33:
	.loc 1 492 0
	ret
.LVL34:
.L42:
	.loc 1 484 0
	j	IfxScuCcu_getPllFrequency
.LFE200:
	.size	IfxScuCcu_getSourceFrequency, .-IfxScuCcu_getSourceFrequency
	.align 3
	.type	IfxScuCcu_wait, @function
IfxScuCcu_wait:
.LFB212:
	.loc 1 1119 0
.LVL35:
.LBB40:
.LBB41:
	.file 2 "../30_Bsw/Mcal/Scu/IfxScuCcu.h"
	.loc 2 1034 0
	movh.a	%a15, hi:-268214220
.LBE41:
.LBE40:
	.loc 1 1119 0
	mov	%d15, %d4
.LBB43:
.LBB42:
	.loc 2 1034 0
	lea	%a15, [%a15] lo:-268214220
	call	IfxScuCcu_getSourceFrequency
.LVL36:
	ld.w	%d4, [%a15]0
	extr.u	%d4, %d4, 8, 4
	itof	%d4, %d4
	div.f	%d2, %d2, %d4
.LBE42:
.LBE43:
	.loc 1 1120 0
	mul.f	%d4, %d15, %d2
	.loc 1 1121 0
	ld.w	%d2, 0xf0000010
	.loc 1 1120 0
	ftouz	%d4, %d4
.LVL37:
.L44:
	.loc 1 1123 0 discriminator 1
	ld.w	%d15, 0xf0000010
	sub	%d15, %d2
	jlt.u	%d15, %d4, .L44
	.loc 1 1132 0
	ret
.LFE212:
	.size	IfxScuCcu_wait, .-IfxScuCcu_wait
	.align 3
	.global	IfxScuCcu_getMaxFrequency
	.type	IfxScuCcu_getMaxFrequency, @function
IfxScuCcu_getMaxFrequency:
.LFB194:
	.loc 1 334 0
	.loc 1 339 0
	movh.a	%a15, hi:-268214224
	.loc 1 337 0
	call	IfxScuCcu_getSourceFrequency
	.loc 1 339 0
	lea	%a15, [%a15] lo:-268214224
	ld.w	%d3, [%a15]0
	.loc 1 337 0
	mov	%d15, %d2
.LVL38:
	.loc 1 339 0
	extr.u	%d3, %d3, 12, 4
	.loc 1 366 0
	mov	%d2, 0
.LVL39:
	.loc 1 339 0
	jge.u	%d3, 5, .L47
	movh.a	%a15, hi:.L53
	lea	%a15, [%a15] lo:.L53
	addsc.a	%a15, %a15, %d3, 2
	ji	%a15
	.align 2
	.align 2
.L53:
	.code32
	j	.L48
	.code32
	j	.L49
	.code32
	j	.L50
	.code32
	j	.L51
	.code32
	j	.L52
.L52:
	.loc 1 363 0
	movh	%d2, 17136
	div.f	%d2, %d15, %d2
.LVL40:
.L47:
	.loc 1 371 0
	ret
.LVL41:
.L51:
	.loc 1 360 0
	movh	%d2, 17008
	div.f	%d2, %d15, %d2
.LVL42:
	.loc 1 361 0
	ret
.LVL43:
.L48:
	.loc 1 343 0
	movh.a	%a15, hi:-268214196
	lea	%a15, [%a15] lo:-268214196
	ld.w	%d3, [%a15]0
	.loc 1 345 0
	mov	%d2, %d15
	.loc 1 343 0
	and	%d3, %d3, 15
	jz	%d3, .L47
	.loc 1 349 0
	ld.w	%d15, [%a15]0
.LVL44:
	and	%d15, %d15, 15
	itof	%d15, %d15
	div.f	%d2, %d2, %d15
.LVL45:
	ret
.LVL46:
.L49:
	.loc 1 354 0
	movh	%d2, 16752
	div.f	%d2, %d15, %d2
.LVL47:
	.loc 1 355 0
	ret
.LVL48:
.L50:
	.loc 1 357 0
	movh	%d2, 16880
	div.f	%d2, %d15, %d2
.LVL49:
	.loc 1 358 0
	ret
.LFE194:
	.size	IfxScuCcu_getMaxFrequency, .-IfxScuCcu_getMaxFrequency
	.align 3
	.global	IfxScuCcu_getBaud2Frequency
	.type	IfxScuCcu_getBaud2Frequency, @function
IfxScuCcu_getBaud2Frequency:
.LFB189:
	.loc 1 204 0
	.loc 1 206 0
	movh.a	%a15, hi:-268214224
	lea	%a15, [%a15] lo:-268214224
	ld.w	%d15, [%a15]0
.LVL50:
	.loc 1 210 0
	mov	%d2, 0
	.loc 1 206 0
	extr.u	%d8, %d15, 4, 4
.LVL51:
	.loc 1 208 0
	and	%d15, %d15, 240
.LVL52:
	jnz	%d15, .L59
.LVL53:
	.loc 1 218 0
	ret
.LVL54:
.L59:
	.loc 1 214 0
	call	IfxScuCcu_getMaxFrequency
	itof	%d8, %d8
	div.f	%d2, %d2, %d8
.LVL55:
	.loc 1 218 0
	ret
.LFE189:
	.size	IfxScuCcu_getBaud2Frequency, .-IfxScuCcu_getBaud2Frequency
	.align 3
	.global	IfxScuCcu_getBbbFrequency
	.type	IfxScuCcu_getBbbFrequency, @function
IfxScuCcu_getBbbFrequency:
.LFB190:
	.loc 1 222 0
	.loc 1 227 0
	movh.a	%a15, hi:-268214224
	.loc 1 225 0
	call	IfxScuCcu_getSourceFrequency
	.loc 1 227 0
	lea	%a15, [%a15] lo:-268214224
	ld.w	%d3, [%a15]0
	.loc 1 225 0
	mov	%d15, %d2
.LVL56:
	.loc 1 227 0
	extr.u	%d3, %d3, 12, 4
	.loc 1 254 0
	mov	%d2, 0
.LVL57:
	.loc 1 227 0
	jge.u	%d3, 5, .L61
	movh.a	%a15, hi:.L67
	lea	%a15, [%a15] lo:.L67
	addsc.a	%a15, %a15, %d3, 2
	ji	%a15
	.align 2
	.align 2
.L67:
	.code32
	j	.L62
	.code32
	j	.L63
	.code32
	j	.L64
	.code32
	j	.L65
	.code32
	j	.L66
.L66:
	.loc 1 251 0
	movh	%d2, 17264
	div.f	%d2, %d15, %d2
.LVL58:
.L61:
	.loc 1 259 0
	ret
.LVL59:
.L65:
	.loc 1 248 0
	movh	%d2, 17136
	div.f	%d2, %d15, %d2
.LVL60:
	.loc 1 249 0
	ret
.LVL61:
.L62:
	.loc 1 231 0
	movh.a	%a15, hi:-268214208
	lea	%a15, [%a15] lo:-268214208
	ld.w	%d3, [%a15]0
	.loc 1 233 0
	mov	%d2, 0
	.loc 1 231 0
	and	%d3, %d3, 15
	jz	%d3, .L61
	.loc 1 237 0
	ld.w	%d2, [%a15]0
	and	%d2, %d2, 15
	itof	%d2, %d2
	div.f	%d2, %d15, %d2
.LVL62:
	ret
.LVL63:
.L63:
	.loc 1 242 0
	movh	%d2, 16880
	div.f	%d2, %d15, %d2
.LVL64:
	.loc 1 243 0
	ret
.LVL65:
.L64:
	.loc 1 245 0
	movh	%d2, 17008
	div.f	%d2, %d15, %d2
.LVL66:
	.loc 1 246 0
	ret
.LFE190:
	.size	IfxScuCcu_getBbbFrequency, .-IfxScuCcu_getBbbFrequency
	.align 3
	.global	IfxScuCcu_getSpbFrequency
	.type	IfxScuCcu_getSpbFrequency, @function
IfxScuCcu_getSpbFrequency:
.LFB201:
	.loc 1 496 0
	.loc 1 501 0
	movh.a	%a15, hi:-268214224
	.loc 1 499 0
	call	IfxScuCcu_getSourceFrequency
	.loc 1 501 0
	lea	%a15, [%a15] lo:-268214224
	ld.w	%d3, [%a15]0
	.loc 1 499 0
	mov	%d15, %d2
.LVL67:
	.loc 1 501 0
	extr.u	%d3, %d3, 12, 4
	.loc 1 528 0
	mov	%d2, 0
.LVL68:
	.loc 1 501 0
	jge.u	%d3, 5, .L71
	movh.a	%a15, hi:.L77
	lea	%a15, [%a15] lo:.L77
	addsc.a	%a15, %a15, %d3, 2
	ji	%a15
	.align 2
	.align 2
.L77:
	.code32
	j	.L72
	.code32
	j	.L73
	.code32
	j	.L74
	.code32
	j	.L75
	.code32
	j	.L76
.L76:
	.loc 1 525 0
	movh	%d2, 17264
	div.f	%d2, %d15, %d2
.LVL69:
.L71:
	.loc 1 533 0
	ret
.LVL70:
.L75:
	.loc 1 522 0
	movh	%d2, 17136
	div.f	%d2, %d15, %d2
.LVL71:
	.loc 1 523 0
	ret
.LVL72:
.L72:
	.loc 1 505 0
	movh.a	%a15, hi:-268214224
	lea	%a15, [%a15] lo:-268214224
	ld.w	%d3, [%a15]0
	movh	%d2, 15
	and	%d3, %d2
	.loc 1 507 0
	mov	%d2, 0
	.loc 1 505 0
	jz	%d3, .L71
	.loc 1 511 0
	ld.w	%d2, [%a15]0
	extr.u	%d2, %d2, 16, 4
	itof	%d2, %d2
	div.f	%d2, %d15, %d2
.LVL73:
	ret
.LVL74:
.L73:
	.loc 1 516 0
	movh	%d2, 16880
	div.f	%d2, %d15, %d2
.LVL75:
	.loc 1 517 0
	ret
.LVL76:
.L74:
	.loc 1 519 0
	movh	%d2, 17008
	div.f	%d2, %d15, %d2
.LVL77:
	.loc 1 520 0
	ret
.LFE201:
	.size	IfxScuCcu_getSpbFrequency, .-IfxScuCcu_getSpbFrequency
	.align 3
	.global	IfxScuCcu_getModuleFrequency
	.type	IfxScuCcu_getModuleFrequency, @function
IfxScuCcu_getModuleFrequency:
.LFB195:
	.loc 1 375 0
	.loc 1 379 0
	movh.a	%a15, hi:-268214216
	lea	%a15, [%a15] lo:-268214216
	ld.w	%d15, [%a15]0
.LVL78:
	.loc 1 380 0
	call	IfxScuCcu_getSpbFrequency
	mov	%d3, %d2
	.loc 1 382 0
	mov.u	%d2, 49152
	.loc 1 379 0
	insert	%d8, %d15, 0, 10, 22
.LVL79:
	.loc 1 382 0
	and	%d15, %d2
.LVL80:
	mov	%d2, 16384
	jeq	%d15, %d2, .L84
	.loc 1 386 0
	mov.u	%d4, 32768
	.loc 1 392 0
	mov	%d2, 0
	.loc 1 386 0
	jeq	%d15, %d4, .L85
.LVL81:
	.loc 1 396 0
	ret
.LVL82:
.L85:
	.loc 1 388 0
	itof	%d2, %d8
	movh	%d15, 14976
	mul.f	%d2, %d2, %d3
	mul.f	%d2, %d2, %d15
.LVL83:
	.loc 1 396 0
	ret
.LVL84:
.L84:
	.loc 1 384 0
	mov	%d2, 1024
	sub	%d2, %d8
	itof	%d2, %d2
	div.f	%d2, %d3, %d2
.LVL85:
	ret
.LFE195:
	.size	IfxScuCcu_getModuleFrequency, .-IfxScuCcu_getModuleFrequency
	.align 3
	.global	IfxScuCcu_getSriFrequency
	.type	IfxScuCcu_getSriFrequency, @function
IfxScuCcu_getSriFrequency:
.LFB202:
	.loc 1 537 0
	.loc 1 542 0
	movh.a	%a15, hi:-268214224
	.loc 1 540 0
	call	IfxScuCcu_getSourceFrequency
	.loc 1 542 0
	lea	%a15, [%a15] lo:-268214224
	ld.w	%d3, [%a15]0
	.loc 1 540 0
	mov	%d15, %d2
.LVL86:
	.loc 1 542 0
	extr.u	%d3, %d3, 12, 4
	.loc 1 569 0
	mov	%d2, 0
.LVL87:
	.loc 1 542 0
	jge.u	%d3, 5, .L87
	movh.a	%a15, hi:.L93
	lea	%a15, [%a15] lo:.L93
	addsc.a	%a15, %a15, %d3, 2
	ji	%a15
	.align 2
	.align 2
.L93:
	.code32
	j	.L88
	.code32
	j	.L89
	.code32
	j	.L90
	.code32
	j	.L91
	.code32
	j	.L92
.L92:
	.loc 1 566 0
	movh	%d2, 17264
	div.f	%d2, %d15, %d2
.LVL88:
.L87:
	.loc 1 574 0
	ret
.LVL89:
.L91:
	.loc 1 563 0
	movh	%d2, 17136
	div.f	%d2, %d15, %d2
.LVL90:
	.loc 1 564 0
	ret
.LVL91:
.L88:
	.loc 1 546 0
	movh.a	%a15, hi:-268214224
	lea	%a15, [%a15] lo:-268214224
	ld.w	%d3, [%a15]0
	mov	%d2, 3840
	and	%d3, %d2
	.loc 1 548 0
	mov	%d2, 0
	.loc 1 546 0
	jz	%d3, .L87
	.loc 1 552 0
	ld.w	%d2, [%a15]0
	extr.u	%d2, %d2, 8, 4
	itof	%d2, %d2
	div.f	%d2, %d15, %d2
.LVL92:
	ret
.LVL93:
.L89:
	.loc 1 557 0
	movh	%d2, 16880
	div.f	%d2, %d15, %d2
.LVL94:
	.loc 1 558 0
	ret
.LVL95:
.L90:
	.loc 1 560 0
	movh	%d2, 17008
	div.f	%d2, %d15, %d2
.LVL96:
	.loc 1 561 0
	ret
.LFE202:
	.size	IfxScuCcu_getSriFrequency, .-IfxScuCcu_getSriFrequency
	.align 3
	.global	IfxScuCcu_getFsiFrequency
	.type	IfxScuCcu_getFsiFrequency, @function
IfxScuCcu_getFsiFrequency:
.LFB193:
	.loc 1 311 0
	.loc 1 313 0
	movh.a	%a15, hi:-268214224
	lea	%a15, [%a15] lo:-268214224
	ld.w	%d15, [%a15]0
.LVL97:
	.loc 1 315 0
	movh	%d3, 768
	and	%d3, %d15
	.loc 1 313 0
	extr.u	%d8, %d15, 24, 2
.LVL98:
	.loc 1 317 0
	mov	%d2, 0
	.loc 1 315 0
	jnz	%d3, .L99
.LVL99:
.L97:
	.loc 1 330 0
	ret
.LVL100:
.L99:
	.loc 1 321 0
	call	IfxScuCcu_getSriFrequency
.LVL101:
	.loc 1 323 0
	mov	%d3, 3840
	and	%d15, %d3
.LVL102:
	mov	%d5, 512
	mov	%d4, 256
	eq	%d3, %d15, %d5
	or.eq	%d3, %d15, %d4
	jz	%d3, .L97
	.loc 1 325 0
	itof	%d8, %d8
	div.f	%d2, %d2, %d8
.LVL103:
	.loc 1 330 0
	ret
.LFE193:
	.size	IfxScuCcu_getFsiFrequency, .-IfxScuCcu_getFsiFrequency
	.align 3
	.global	IfxScuCcu_getFsi2Frequency
	.type	IfxScuCcu_getFsi2Frequency, @function
IfxScuCcu_getFsi2Frequency:
.LFB192:
	.loc 1 288 0
	.loc 1 290 0
	movh.a	%a15, hi:-268214224
	lea	%a15, [%a15] lo:-268214224
	ld.w	%d15, [%a15]0
.LVL104:
	.loc 1 292 0
	movh	%d3, 48
	and	%d3, %d15
	.loc 1 290 0
	extr.u	%d8, %d15, 20, 2
.LVL105:
	.loc 1 294 0
	mov	%d2, 0
	.loc 1 292 0
	jnz	%d3, .L103
.LVL106:
.L101:
	.loc 1 307 0
	ret
.LVL107:
.L103:
	.loc 1 298 0
	call	IfxScuCcu_getSriFrequency
.LVL108:
	.loc 1 300 0
	mov	%d3, 3840
	and	%d15, %d3
.LVL109:
	mov	%d5, 512
	mov	%d4, 256
	eq	%d3, %d15, %d5
	or.eq	%d3, %d15, %d4
	jz	%d3, .L101
	.loc 1 302 0
	itof	%d8, %d8
	div.f	%d2, %d2, %d8
.LVL110:
	.loc 1 307 0
	ret
.LFE192:
	.size	IfxScuCcu_getFsi2Frequency, .-IfxScuCcu_getFsi2Frequency
	.align 3
	.global	IfxScuCcu_getCpuFrequency
	.type	IfxScuCcu_getCpuFrequency, @function
IfxScuCcu_getCpuFrequency:
.LFB191:
	.loc 1 263 0
.LVL111:
	.loc 1 263 0
	mov	%d15, %d4
	.loc 1 264 0
	call	IfxScuCcu_getSriFrequency
.LVL112:
	.loc 1 267 0
	jnz	%d15, .L108
	.loc 1 270 0
	movh.a	%a15, hi:-268214144
	lea	%a15, [%a15] lo:-268214144
	ld.w	%d15, [%a15]0
.LVL113:
	.loc 1 278 0
	jz	%d15, .L105
	.loc 1 280 0
	sh	%d15, -6
.LVL114:
	utof	%d15, %d15
	mul.f	%d2, %d2, %d15
.LVL115:
	ret
.LVL116:
.L108:
	.loc 1 274 0
	mov	%d2, 0
.LVL117:
.L105:
	.loc 1 284 0
	ret
.LFE191:
	.size	IfxScuCcu_getCpuFrequency, .-IfxScuCcu_getCpuFrequency
	.align 3
	.global	IfxScuCcu_init
	.type	IfxScuCcu_init, @function
IfxScuCcu_init:
.LFB203:
	.loc 1 578 0
.LVL118:
	.loc 1 583 0
	ld.w	%d15, [%a4] 64
	movh.a	%a13, hi:IfxScuCcu_xtalFrequency
	.loc 1 578 0
	mov.aa	%a12, %a4
	.loc 1 583 0
	st.w	[%a13] lo:IfxScuCcu_xtalFrequency, %d15
	.loc 1 585 0
	call	IfxScuWdt_getCpuWatchdogPassword
.LVL119:
	mov	%d10, %d2
.LVL120:
	.loc 1 591 0
	movh.a	%a15, hi:-268213968
	.loc 1 586 0
	call	IfxScuWdt_getSafetyWatchdogPassword
.LVL121:
	.loc 1 591 0
	lea	%a15, [%a15] lo:-268213968
	.loc 1 590 0
	mov	%d4, %d10
	.loc 1 586 0
	mov	%d8, %d2
.LVL122:
	.loc 1 590 0
	call	IfxScuWdt_clearCpuEndinit
.LVL123:
	.loc 1 591 0
	ld.w	%d11, [%a15]0
	.loc 1 592 0
	ld.w	%d15, [%a15]0
	.loc 1 593 0
	mov	%d4, %d10
	.loc 1 592 0
	insert	%d15, %d15, 1, 3, 1
	.loc 1 591 0
	extr.u	%d11, %d11, 3, 1
	.loc 1 592 0
	st.w	[%a15]0, %d15
	.loc 1 593 0
	call	IfxScuWdt_setCpuEndinit
	.loc 1 598 0
	mov	%d4, %d8
	call	IfxScuWdt_clearSafetyEndinit
	.loc 1 600 0
	movh.a	%a2, hi:-268214224
	lea	%a2, [%a2] lo:-268214224
.L110:
	.loc 1 600 0 is_stmt 0 discriminator 1
	ld.w	%d15, [%a2]0
	movh.a	%a15, hi:-268214224
	lea	%a15, [%a15] lo:-268214224
	jltz	%d15, .L110
	.loc 1 606 0 is_stmt 1
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 0, 28, 2
	st.w	[%a15]0, %d15
	.loc 1 607 0
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 1, 30, 1
	st.w	[%a15]0, %d15
	.loc 1 610 0
	movh.a	%a15, hi:-268214248
	lea	%a15, [%a15] lo:-268214248
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 1, 4, 1
	st.w	[%a15]0, %d15
	.loc 1 614 0
	movh.a	%a15, hi:-268214224
	lea	%a15, [%a15] lo:-268214224
.L111:
	.loc 1 614 0 is_stmt 0 discriminator 1
	ld.w	%d15, [%a15]0
	jltz	%d15, .L111
	.loc 1 620 0 is_stmt 1
	movh.a	%a15, hi:-268214220
	lea	%a15, [%a15] lo:-268214220
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 1, 28, 2
	st.w	[%a15]0, %d15
	.loc 1 621 0
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 1, 30, 1
	st.w	[%a15]0, %d15
.LVL124:
.LBB44:
.LBB45:
	.loc 1 835 0
	movh.a	%a15, hi:-268214256
	lea	%a15, [%a15] lo:-268214256
	.loc 1 831 0
	call	IfxScuWdt_getCpuWatchdogPassword
	.loc 1 835 0
	ld.w	%d15, [%a15]0
	.loc 1 831 0
	mov	%d9, %d2
.LVL125:
	.loc 1 835 0
	andn	%d15, %d15, ~(-97)
	.loc 1 846 0
	movh.a	%a2, hi:-268214256
	lea	%a2, [%a2] lo:-268214256
	.loc 1 835 0
	st.w	[%a15]0, %d15
	.loc 1 841 0
	ld.w	%d6, [%a13] lo:IfxScuCcu_xtalFrequency
	movh	%d15, 27488
	addi	%d15, %d15, -13717
	mul.u	%e6, %d6, %d15
	ld.w	%d15, [%a15]0
	sh	%d2, %d7, -20
.LVL126:
	add	%d2, -1
	insert	%d15, %d15, %d2, 16, 5
	st.w	[%a15]0, %d15
	.loc 1 843 0
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 1, 2, 1
	st.w	[%a15]0, %d15
	.loc 1 846 0
	lea	%a15, 639
.LVL127:
.L112:
	ld.w	%d15, [%a2]0
	jz.t	%d15, 1, .L114
	ld.w	%d15, [%a2]0
	jnz.t	%d15, 8, .L142
.L114:
	.loc 1 843 0
	loop	%a15, .L112
.LVL128:
	.loc 1 860 0
	movh.a	%a15, hi:-268213972
	.loc 1 859 0
	mov	%d4, %d9
	.loc 1 860 0
	lea	%a15, [%a15] lo:-268213972
	.loc 1 859 0
	call	IfxScuWdt_clearCpuEndinit
	.loc 1 860 0
	ld.w	%d15, [%a15]0
	.loc 1 862 0
	mov	%d4, %d9
	.loc 1 860 0
	insert	%d15, %d15, 1, 3, 1
.LBE45:
.LBE44:
	.loc 1 852 0
	mov	%d9, 1
.LVL129:
.LBB48:
.LBB46:
	.loc 1 860 0
	st.w	[%a15]0, %d15
	.loc 1 861 0
	movh.a	%a15, hi:-268213968
	lea	%a15, [%a15] lo:-268213968
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 1, 3, 1
	st.w	[%a15]0, %d15
	.loc 1 862 0
	call	IfxScuWdt_setCpuEndinit
.LVL130:
.LBE46:
.LBE48:
	.loc 1 625 0
	mov	%d4, %d8
	call	IfxScuWdt_setSafetyEndinit
	j	.L116
.LVL131:
.L142:
.LBB49:
.LBB47:
	.loc 1 860 0
	movh.a	%a15, hi:-268213972
	lea	%a15, [%a15] lo:-268213972
	.loc 1 859 0
	mov	%d4, %d9
	call	IfxScuWdt_clearCpuEndinit
	.loc 1 860 0
	ld.w	%d15, [%a15]0
	.loc 1 862 0
	mov	%d4, %d9
	.loc 1 860 0
	insert	%d15, %d15, 1, 3, 1
	st.w	[%a15]0, %d15
	.loc 1 861 0
	movh.a	%a15, hi:-268213968
	lea	%a15, [%a15] lo:-268213968
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 1, 3, 1
	st.w	[%a15]0, %d15
	.loc 1 862 0
	call	IfxScuWdt_setCpuEndinit
.LBE47:
.LBE49:
	.loc 1 625 0
	mov	%d4, %d8
	call	IfxScuWdt_setSafetyEndinit
.LBB50:
	.loc 1 637 0
	mov	%d4, %d8
	.loc 1 639 0
	movh.a	%a15, hi:-268214252
	.loc 1 637 0
	call	IfxScuWdt_clearSafetyEndinit
	.loc 1 639 0
	lea	%a15, [%a15] lo:-268214252
.L117:
	.loc 1 639 0 is_stmt 0 discriminator 1
	ld.w	%d15, [%a15]0
	jz.t	%d15, 5, .L117
	.loc 1 645 0 is_stmt 1
	movh.a	%a15, hi:-268214244
	lea	%a15, [%a15] lo:-268214244
	ld.w	%d15, [%a15]0
	ld.bu	%d2, [%a12] 10
	.loc 1 664 0
	movh	%d4, 14418
	.loc 1 645 0
	insert	%d15, %d15, %d2, 0, 7
	.loc 1 664 0
	addi	%d4, %d4, -18665
	.loc 1 645 0
	st.w	[%a15]0, %d15
	.loc 1 649 0
	movh.a	%a15, hi:-268214248
	lea	%a15, [%a15] lo:-268214248
	ld.w	%d15, [%a15]0
	ld.bu	%d2, [%a12] 8
	insert	%d15, %d15, %d2, 24, 4
	st.w	[%a15]0, %d15
	.loc 1 650 0
	ld.w	%d15, [%a15]0
	ld.bu	%d2, [%a12] 9
	insert	%d15, %d15, %d2, 9, 7
	st.w	[%a15]0, %d15
	.loc 1 654 0
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 1, 6, 1
	st.w	[%a15]0, %d15
	.loc 1 656 0
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 0, 16, 1
	st.w	[%a15]0, %d15
	.loc 1 658 0
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 1, 5, 1
	st.w	[%a15]0, %d15
	.loc 1 659 0
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 1, 16, 1
	st.w	[%a15]0, %d15
	.loc 1 662 0
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 1, 18, 1
	st.w	[%a15]0, %d15
	.loc 1 666 0
	movh.a	%a15, hi:-268214252
	.loc 1 664 0
	call	IfxScuCcu_wait
	.loc 1 666 0
	lea	%a15, [%a15] lo:-268214252
.L118:
	.loc 1 666 0 is_stmt 0 discriminator 1
	ld.w	%d15, [%a15]0
	jz.t	%d15, 2, .L118
	.loc 1 672 0 is_stmt 1
	movh.a	%a15, hi:-268214248
	lea	%a15, [%a15] lo:-268214248
	ld.w	%d15, [%a15]0
	andn	%d15, %d15, ~(-2)
	st.w	[%a15]0, %d15
	.loc 1 674 0
	movh.a	%a15, hi:-268214224
	lea	%a15, [%a15] lo:-268214224
.L119:
	.loc 1 674 0 is_stmt 0 discriminator 1
	ld.w	%d15, [%a15]0
	movh.a	%a2, hi:-268214224
	lea	%a2, [%a2] lo:-268214224
	jltz	%d15, .L119
	.loc 1 680 0 is_stmt 1
	ld.w	%d15, [%a2]0
	.loc 1 683 0
	movh.a	%a15, hi:-268214224
	.loc 1 680 0
	insert	%d15, %d15, 1, 28, 2
	.loc 1 683 0
	lea	%a15, [%a15] lo:-268214224
	.loc 1 680 0
	st.w	[%a2]0, %d15
.L120:
	.loc 1 683 0 discriminator 1
	ld.w	%d15, [%a15]0
	movh.a	%a13, hi:-268214224
	lea	%a13, [%a13] lo:-268214224
	jltz	%d15, .L120
	.loc 1 690 0
	ld.w	%d4, [%a12] 12
	.loc 1 702 0
	movh.a	%a15, hi:-268214220
	.loc 1 690 0
	call	IfxScuCcu_wait
.LBB51:
	.loc 1 694 0
	ld.w	%d2, [%a13]0
	ld.w	%d15, [%a12] 20
	.loc 1 696 0
	ld.w	%d3, [%a12] 16
	.loc 1 694 0
	andn	%d2, %d2, %d15
	.loc 1 696 0
	and	%d15, %d3
	or	%d15, %d2
.LVL132:
	.loc 1 697 0
	insert	%d15, %d15, 1, 28, 2
.LVL133:
.LBE51:
	.loc 1 702 0
	lea	%a15, [%a15] lo:-268214220
.LBB52:
	.loc 1 698 0
	insert	%d15, %d15, 1, 30, 1
	.loc 1 699 0
	st.w	[%a13]0, %d15
.L121:
.LBE52:
	.loc 1 702 0 discriminator 1
	ld.w	%d15, [%a15]0
.LVL134:
	movh.a	%a2, hi:-268214220
	lea	%a2, [%a2] lo:-268214220
	jltz	%d15, .L121
.LBB53:
	.loc 1 711 0
	ld.w	%d15, [%a12] 28
	ld.w	%d2, [%a2]0
	.loc 1 713 0
	ld.w	%d3, [%a12] 24
	.loc 1 711 0
	andn	%d2, %d2, %d15
	.loc 1 713 0
	and	%d15, %d3
	or	%d15, %d2
.LVL135:
	.loc 1 714 0
	insert	%d15, %d15, 1, 28, 2
.LVL136:
.LBE53:
	.loc 1 719 0
	movh.a	%a15, hi:-268214208
.LBB54:
	.loc 1 715 0
	insert	%d15, %d15, 1, 30, 1
.LBE54:
	.loc 1 719 0
	lea	%a15, [%a15] lo:-268214208
.LBB55:
	.loc 1 716 0
	st.w	[%a2]0, %d15
.L122:
.LBE55:
	.loc 1 719 0 discriminator 1
	ld.w	%d15, [%a15]0
.LVL137:
	movh.a	%a2, hi:-268214208
	lea	%a2, [%a2] lo:-268214208
	jltz	%d15, .L122
.LBB56:
	.loc 1 728 0
	ld.w	%d15, [%a12] 36
	ld.w	%d2, [%a2]0
	.loc 1 730 0
	ld.w	%d3, [%a12] 32
	.loc 1 728 0
	andn	%d2, %d2, %d15
	.loc 1 730 0
	and	%d15, %d3
	or	%d15, %d2
.LVL138:
	.loc 1 731 0
	insert	%d15, %d15, 1, 30, 1
.LVL139:
.LBE56:
	.loc 1 735 0
	movh.a	%a15, hi:-268214196
	lea	%a15, [%a15] lo:-268214196
.LBB57:
	.loc 1 732 0
	st.w	[%a2]0, %d15
.L123:
.LBE57:
	.loc 1 735 0 discriminator 1
	ld.w	%d15, [%a15]0
.LVL140:
	movh.a	%a2, hi:-268214196
	lea	%a2, [%a2] lo:-268214196
	jltz	%d15, .L123
.LBB58:
	.loc 1 742 0
	ld.w	%d2, [%a2]0
	ld.w	%d15, [%a12] 44
	.loc 1 744 0
	ld.w	%d3, [%a12] 40
	.loc 1 742 0
	andn	%d2, %d2, %d15
	.loc 1 744 0
	and	%d15, %d3
	or	%d15, %d2
.LVL141:
	.loc 1 745 0
	insert	%d15, %d15, 1, 30, 1
.LVL142:
.LBE58:
.LBB59:
	.loc 1 751 0
	movh.a	%a15, hi:-268214144
	lea	%a15, [%a15] lo:-268214144
	.loc 1 753 0
	ld.w	%d3, [%a12] 48
.LBE59:
.LBB60:
	.loc 1 746 0
	st.w	[%a2]0, %d15
.LBE60:
.LBB61:
	.loc 1 751 0
	ld.w	%d2, [%a15]0
	ld.w	%d15, [%a12] 52
.LVL143:
.LBE61:
	.loc 1 758 0
	mov	%d4, %d8
.LBB62:
	.loc 1 751 0
	andn	%d2, %d2, %d15
.LVL144:
	.loc 1 753 0
	and	%d15, %d3
	or	%d15, %d2
.LVL145:
.LBE62:
	.loc 1 830 0
	mov	%d9, 0
.LVL146:
.LBB63:
	.loc 1 754 0
	st.w	[%a15]0, %d15
.LBE63:
.LBB64:
	.loc 1 764 0
	movh.a	%a15, hi:-134209516
.LBE64:
	.loc 1 758 0
	call	IfxScuWdt_setSafetyEndinit
.LBB65:
	.loc 1 764 0
	lea	%a15, [%a15] lo:-134209516
	ld.w	%d15, [%a12] 60
.LVL147:
	.loc 1 768 0
	ld.w	%d3, [%a12] 56
	.loc 1 764 0
	ld.w	%d2, [%a15]0
.LVL148:
	.loc 1 770 0
	mov	%d4, %d10
	.loc 1 767 0
	andn	%d2, %d2, %d15
.LVL149:
	.loc 1 768 0
	and	%d15, %d3
	or	%d15, %d2
.LVL150:
	.loc 1 770 0
	call	IfxScuWdt_clearCpuEndinit
	.loc 1 772 0
	mov	%d4, %d10
	.loc 1 771 0
	st.w	[%a15]0, %d15
	.loc 1 772 0
	call	IfxScuWdt_setCpuEndinit
.LVL151:
.LBE65:
	.loc 1 777 0
	ld.bu	%d15, [%a12]0
.LVL152:
	jz	%d15, .L116
	.loc 1 783 0
	movh.a	%a15, hi:-268214252
	.loc 1 790 0
	movh.a	%a14, hi:-268214244
	.loc 1 783 0
	lea	%a15, [%a15] lo:-268214252
	.loc 1 790 0
	lea	%a14, [%a14] lo:-268214244
.LVL153:
.L126:
	.loc 1 780 0
	mov	%d4, %d8
	call	IfxScuWdt_clearSafetyEndinit
.L124:
	.loc 1 783 0 discriminator 1
	ld.w	%d15, [%a15]0
	jz.t	%d15, 5, .L124
	.loc 1 790 0
	sh	%d15, %d9, 1
	mov.a	%a2, %d15
	ld.w	%d15, [%a12] 4
	addsc.a	%a13, %a2, %d9, 0
	.loc 1 791 0
	mov	%d4, %d8
	.loc 1 790 0
	add.a	%a13, %a13
	add.a	%a13, %a13
	addsc.a	%a2, %a13, %d15, 0
	ld.w	%d15, [%a14]0
	ld.bu	%d2, [%a2]0
	insert	%d15, %d15, %d2, 0, 7
	st.w	[%a14]0, %d15
	.loc 1 791 0
	call	IfxScuWdt_setSafetyEndinit
	.loc 1 795 0
	ld.w	%d15, [%a12] 4
	addsc.a	%a2, %a13, %d15, 0
	ld.a	%a3, [%a2] 8
	jz.a	%a3, .L125
	.loc 1 797 0
	calli	%a3
	ld.w	%d15, [%a12] 4
	addsc.a	%a2, %a13, %d15, 0
.L125:
	.loc 1 801 0
	ld.w	%d4, [%a2] 4
	.loc 1 777 0
	add	%d9, 1
	.loc 1 801 0
	call	IfxScuCcu_wait
	.loc 1 777 0
	ld.bu	%d15, [%a12]0
	and	%d9, %d9, 255
.LVL154:
	jlt.u	%d9, %d15, .L126
	.loc 1 830 0
	mov	%d9, 0
.LVL155:
.L116:
.LBE50:
	.loc 1 807 0
	movh.a	%a15, hi:-268214248
	.loc 1 806 0
	mov	%d4, %d8
	.loc 1 807 0
	lea	%a15, [%a15] lo:-268214248
	.loc 1 806 0
	call	IfxScuWdt_clearSafetyEndinit
	.loc 1 807 0
	ld.w	%d15, [%a15]0
	.loc 1 808 0
	mov	%d4, %d8
	.loc 1 807 0
	andn	%d15, %d15, ~(-65)
	st.w	[%a15]0, %d15
	.loc 1 808 0
	call	IfxScuWdt_setSafetyEndinit
	.loc 1 813 0
	movh.a	%a15, hi:-268213972
	.loc 1 812 0
	mov	%d4, %d10
	.loc 1 813 0
	lea	%a15, [%a15] lo:-268213972
	.loc 1 812 0
	call	IfxScuWdt_clearCpuEndinit
	.loc 1 813 0
	ld.w	%d15, [%a15]0
	.loc 1 815 0
	mov	%d4, %d10
	.loc 1 813 0
	insert	%d15, %d15, 1, 3, 1
	st.w	[%a15]0, %d15
	.loc 1 814 0
	movh.a	%a15, hi:-268213968
	lea	%a15, [%a15] lo:-268213968
	ld.w	%d15, [%a15]0
	ins.t	%d15, %d15,3, %d11,0
	st.w	[%a15]0, %d15
	.loc 1 815 0
	call	IfxScuWdt_setCpuEndinit
	.loc 1 818 0
	mov	%d2, %d9
	ret
.LFE203:
	.size	IfxScuCcu_init, .-IfxScuCcu_init
	.align 3
	.global	IfxScuCcu_initConfig
	.type	IfxScuCcu_initConfig, @function
IfxScuCcu_initConfig:
.LFB204:
	.loc 1 822 0
.LVL156:
	.loc 1 823 0
	movh.a	%a15, hi:IfxScuCcu_defaultClockConfig
	lea	%a15, [%a15] lo:IfxScuCcu_defaultClockConfig
		# #chunks=8, chunksize=8, remains=4
	lea	%a2, 8-1
	0:
	ld.d	%e2, [%a15+]8
	st.d	[%a4+]8, %e2
	loop	%a2, 0b
	ld.w	%d2, [%a15+]4
	st.w	[%a4+]4, %d2
.LVL157:
	.loc 1 824 0
	ret
.LFE204:
	.size	IfxScuCcu_initConfig, .-IfxScuCcu_initConfig
	.align 3
	.global	IfxScuCcu_setCpuFrequency
	.type	IfxScuCcu_setCpuFrequency, @function
IfxScuCcu_setCpuFrequency:
.LFB206:
	.loc 1 869 0
.LVL158:
	.loc 1 869 0
	mov	%e10, %d4, %d5
	.loc 1 874 0
	call	IfxScuCcu_getSriFrequency
.LVL159:
	.loc 1 876 0
	cmp.f	%d15, %d10, %d2
	or.t	%d15, %d15,2, %d15,1
	.loc 1 874 0
	mov	%d8, %d2
.LVL160:
	.loc 1 878 0
	mov	%d9, 0
	.loc 1 876 0
	jnz	%d15, .L145
	.loc 1 882 0
	movh	%d9, 17024
	mul.f	%d9, %d10, %d9
	div.f	%d9, %d9, %d2
	ftouz	%d9, %d9
.LVL161:
.L145:
	.loc 1 885 0
	call	IfxScuWdt_getSafetyWatchdogPassword
.LVL162:
	.loc 1 888 0
	mov	%d4, %d2
	.loc 1 885 0
	mov	%d15, %d2
.LVL163:
	.loc 1 888 0
	call	IfxScuWdt_clearSafetyEndinit
.LVL164:
	.loc 1 890 0
	jnz	%d11, .L146
	.loc 1 893 0
	movh.a	%a15, hi:-268214144
	lea	%a15, [%a15] lo:-268214144
	st.w	[%a15]0, %d9
.L146:
	.loc 1 899 0
	mov	%d4, %d15
	call	IfxScuWdt_setSafetyEndinit
	.loc 1 902 0
	jz	%d9, .L148
	.loc 1 904 0
	sh	%d9, -6
.LVL165:
	utof	%d9, %d9
	mul.f	%d8, %d8, %d9
.LVL166:
.L148:
	.loc 1 908 0
	mov	%d2, %d8
	ret
.LFE206:
	.size	IfxScuCcu_setCpuFrequency, .-IfxScuCcu_setCpuFrequency
	.align 3
	.global	IfxScuCcu_setGtmFrequency
	.type	IfxScuCcu_setGtmFrequency, @function
IfxScuCcu_setGtmFrequency:
.LFB207:
	.loc 1 912 0
.LVL167:
	.loc 1 914 0
	movh.a	%a15, hi:-268214220
	lea	%a15, [%a15] lo:-268214220
	.loc 1 912 0
	mov	%d8, %d4
	.loc 1 914 0
	ld.w	%d15, [%a15]0
.LVL168:
	.loc 1 916 0
	call	IfxScuCcu_getSourceFrequency
.LVL169:
	.loc 1 917 0
	div.f	%d2, %d2, %d8
.LVL170:
	ftoiz	%d3, %d2
	itof	%d4, %d3
	sub.f	%d2, %d2, %d4
	movh	%d4, 16128
	cmp.f	%d2, %d2, %d4
	extr.u	%d2, %d2, 2, 1
	add	%d2, %d3
.LVL171:
.LBB66:
.LBB67:
	.file 3 "../30_Bsw/Compilers/IfxCpu_IntrinsicsGnuc.h"
	.loc 3 114 0
	mov	%d3, 1
#APP
	# 114 "../30_Bsw/Compilers/IfxCpu_IntrinsicsGnuc.h" 1
	max.u %d2, %d2, %d3
	# 0 "" 2
.LVL172:
#NO_APP
.LBE67:
.LBE66:
	.loc 1 921 0
	addi	%d3, %d2, -7
	jge.u	%d3, 7, .L154
	.loc 1 923 0 discriminator 1
	andn	%d2, %d2, ~(-2)
.LVL173:
.L157:
	.loc 1 926 0
	and	%d9, %d2, 15
.L156:
	.loc 1 933 0
	insert	%d15, %d15, %d9, 12, 4
	.loc 1 931 0
	call	IfxScuWdt_getSafetyWatchdogPassword
	.loc 1 934 0
	insert	%d15, %d15, 1, 30, 1
	.loc 1 932 0
	mov	%d4, %d2
	.loc 1 935 0
	movh.a	%a15, hi:-268214220
	.loc 1 931 0
	mov	%d8, %d2
.LVL174:
	.loc 1 935 0
	lea	%a15, [%a15] lo:-268214220
	.loc 1 932 0
	call	IfxScuWdt_clearSafetyEndinit
.LVL175:
	.loc 1 937 0
	mov	%d4, %d8
	.loc 1 935 0
	st.w	[%a15]0, %d15
	.loc 1 937 0
	call	IfxScuWdt_setSafetyEndinit
.LBB68:
.LBB69:
	.loc 2 1013 0
	call	IfxScuCcu_getSourceFrequency
	ld.w	%d15, [%a15]0
.LVL176:
	extr.u	%d15, %d15, 12, 4
	itof	%d15, %d15
.LBE69:
.LBE68:
	.loc 1 940 0
	div.f	%d2, %d2, %d15
	ret
.LVL177:
.L154:
	.loc 1 926 0
	eq	%d3, %d2, 14
	mov	%d9, 12
	jnz	%d3, .L156
	j	.L157
.LFE207:
	.size	IfxScuCcu_setGtmFrequency, .-IfxScuCcu_setGtmFrequency
	.align 3
	.global	IfxScuCcu_setPll2Frequency
	.type	IfxScuCcu_setPll2Frequency, @function
IfxScuCcu_setPll2Frequency:
.LFB208:
	.loc 1 944 0
.LVL178:
	.loc 1 944 0
	mov	%d15, %d4
	.loc 1 945 0
	call	IfxScuWdt_getSafetyWatchdogPassword
.LVL179:
	mov	%d8, %d2
.LVL180:
	.loc 1 946 0
	call	IfxScuCcu_getPllVcoFrequency
.LVL181:
	.loc 1 948 0
	mov	%d4, %d8
	.loc 1 946 0
	mov	%d9, %d2
.LVL182:
	.loc 1 948 0
	call	IfxScuWdt_clearSafetyEndinit
.LVL183:
	.loc 1 946 0
	div.f	%d2, %d9, %d15
	movh	%d15, 16256
.LVL184:
	.loc 1 949 0
	movh.a	%a15, hi:-268214244
	.loc 1 946 0
	sub.f	%d2, %d2, %d15
	.loc 1 949 0
	lea	%a15, [%a15] lo:-268214244
	ld.w	%d15, [%a15]0
	.loc 1 946 0
	ftouz	%d2, %d2
.LVL185:
	.loc 1 950 0
	mov	%d4, %d8
	.loc 1 949 0
	insert	%d15, %d15, %d2, 8, 7
	st.w	[%a15]0, %d15
	.loc 1 950 0
	call	IfxScuWdt_setSafetyEndinit
.LVL186:
.LBB70:
.LBB71:
	.loc 2 1020 0
	call	IfxScuCcu_getPllVcoFrequency
	ld.w	%d15, [%a15]0
	extr.u	%d15, %d15, 8, 7
	add	%d15, 1
	itof	%d15, %d15
.LBE71:
.LBE70:
	.loc 1 953 0
	div.f	%d2, %d2, %d15
	ret
.LFE208:
	.size	IfxScuCcu_setPll2Frequency, .-IfxScuCcu_setPll2Frequency
	.align 3
	.global	IfxScuCcu_setSpbFrequency
	.type	IfxScuCcu_setSpbFrequency, @function
IfxScuCcu_setSpbFrequency:
.LFB209:
	.loc 1 957 0
.LVL187:
	.loc 1 957 0
	mov	%d15, %d4
	.loc 1 962 0
	call	IfxScuCcu_getSourceFrequency
.LVL188:
	.loc 1 963 0
	div.f	%d2, %d2, %d15
.LVL189:
.LBB72:
.LBB73:
	.loc 3 114 0
	mov	%d15, 2
.LVL190:
.LBE73:
.LBE72:
	.loc 1 963 0
	ftouz	%d2, %d2
.LVL191:
.LBB75:
.LBB74:
	.loc 3 114 0
#APP
	# 114 "../30_Bsw/Compilers/IfxCpu_IntrinsicsGnuc.h" 1
	max.u %d15, %d2, %d15
	# 0 "" 2
.LVL192:
#NO_APP
.LBE74:
.LBE75:
	.loc 1 966 0
	add	%d2, %d15, -7
.LVL193:
	jge.u	%d2, 7, .L162
	.loc 1 968 0 discriminator 1
	andn	%d15, %d15, ~(-2)
.LVL194:
.L166:
	.loc 1 971 0
	and	%d10, %d15, 15
.L164:
	.loc 1 976 0
	call	IfxScuWdt_getCpuWatchdogPassword
	mov	%d8, %d2
.LVL195:
	.loc 1 977 0
	call	IfxScuWdt_getSafetyWatchdogPassword
.LVL196:
	.loc 1 979 0
	mov	%d4, %d8
	.loc 1 980 0
	movh.a	%a15, hi:-268213968
	lea	%a15, [%a15] lo:-268213968
	.loc 1 977 0
	mov	%d9, %d2
.LVL197:
	.loc 1 979 0
	call	IfxScuWdt_clearCpuEndinit
.LVL198:
	.loc 1 980 0
	ld.w	%d2, [%a15]0
	mov	%d15, 992
	or	%d15, %d2
	.loc 1 981 0
	mov	%d4, %d8
	.loc 1 980 0
	st.w	[%a15]0, %d15
	.loc 1 981 0
	call	IfxScuWdt_setCpuEndinit
	.loc 1 983 0
	mov	%d4, %d9
	call	IfxScuWdt_clearSafetyEndinit
	.loc 1 984 0
	movh.a	%a2, hi:-268214224
	lea	%a2, [%a2] lo:-268214224
	ld.w	%d15, [%a2]0
	.loc 1 988 0
	mov	%d4, %d9
	.loc 1 985 0
	insert	%d15, %d15, %d10, 16, 4
.LVL199:
	.loc 1 986 0
	insert	%d15, %d15, 1, 30, 1
	.loc 1 987 0
	st.w	[%a2]0, %d15
	.loc 1 988 0
	call	IfxScuWdt_setSafetyEndinit
	.loc 1 990 0
	mov	%d4, %d8
	call	IfxScuWdt_clearCpuEndinit
	.loc 1 991 0
	ld.w	%d15, [%a15]0
.LVL200:
	.loc 1 992 0
	mov	%d4, %d8
	.loc 1 991 0
	insert	%d15, %d15, 0, 5, 5
	st.w	[%a15]0, %d15
	.loc 1 994 0
	movh.a	%a15, hi:-268214224
	.loc 1 992 0
	call	IfxScuWdt_setCpuEndinit
	.loc 1 994 0
	lea	%a15, [%a15] lo:-268214224
.L165:
	.loc 1 994 0 is_stmt 0 discriminator 1
	ld.w	%d15, [%a15]0
	jltz	%d15, .L165
	.loc 1 997 0 is_stmt 1
	j	IfxScuCcu_getSpbFrequency
.LVL201:
.L162:
	.loc 1 971 0
	eq	%d2, %d15, 14
	mov	%d10, 12
	jnz	%d2, .L164
	j	.L166
.LFE209:
	.size	IfxScuCcu_setSpbFrequency, .-IfxScuCcu_setSpbFrequency
	.align 3
	.global	IfxScuCcu_setSriFrequency
	.type	IfxScuCcu_setSriFrequency, @function
IfxScuCcu_setSriFrequency:
.LFB210:
	.loc 1 1002 0
.LVL202:
	.loc 1 1002 0
	mov	%d15, %d4
	.loc 1 1004 0
	call	IfxScuCcu_getSourceFrequency
.LVL203:
	.loc 1 1007 0
	div.f	%d2, %d2, %d15
.LVL204:
	ftoiz	%d3, %d2
	itof	%d15, %d3
.LVL205:
	sub.f	%d2, %d2, %d15
	movh	%d15, 16128
	cmp.f	%d15, %d2, %d15
	extr.u	%d15, %d15, 2, 1
.LBB76:
.LBB77:
	.loc 3 114 0
	mov	%d2, 1
.LBE77:
.LBE76:
	.loc 1 1007 0
	add	%d15, %d3
.LVL206:
.LBB79:
.LBB78:
	.loc 3 114 0
#APP
	# 114 "../30_Bsw/Compilers/IfxCpu_IntrinsicsGnuc.h" 1
	max.u %d15, %d15, %d2
	# 0 "" 2
.LVL207:
#NO_APP
.LBE78:
.LBE79:
	.loc 1 1010 0
	add	%d2, %d15, -7
	jge.u	%d2, 7, .L173
	.loc 1 1012 0 discriminator 1
	andn	%d15, %d15, ~(-2)
.LVL208:
.L177:
	.loc 1 1015 0
	and	%d9, %d15, 15
.L175:
	.loc 1 1020 0
	call	IfxScuWdt_getSafetyWatchdogPassword
	.loc 1 1023 0
	movh.a	%a15, hi:-268214224
	.loc 1 1021 0
	mov	%d4, %d2
	.loc 1 1023 0
	lea	%a15, [%a15] lo:-268214224
	.loc 1 1020 0
	mov	%d8, %d2
.LVL209:
	.loc 1 1021 0
	call	IfxScuWdt_clearSafetyEndinit
.LVL210:
	.loc 1 1023 0
	ld.w	%d15, [%a15]0
	.loc 1 1028 0
	mov	%d4, %d8
	.loc 1 1024 0
	insert	%d15, %d15, %d9, 8, 4
.LVL211:
	.loc 1 1025 0
	insert	%d15, %d15, 1, 30, 1
	.loc 1 1026 0
	st.w	[%a15]0, %d15
	.loc 1 1028 0
	call	IfxScuWdt_setSafetyEndinit
.L176:
	.loc 1 1030 0 discriminator 1
	ld.w	%d15, [%a15]0
.LVL212:
	jltz	%d15, .L176
	.loc 1 1033 0
	j	IfxScuCcu_getSriFrequency
.LVL213:
.L173:
	.loc 1 1015 0
	eq	%d2, %d15, 14
	mov	%d9, 12
	jnz	%d2, .L175
	j	.L177
.LFE210:
	.size	IfxScuCcu_setSriFrequency, .-IfxScuCcu_setSriFrequency
	.align 3
	.global	IfxScuCcu_switchToBackupClock
	.type	IfxScuCcu_switchToBackupClock, @function
IfxScuCcu_switchToBackupClock:
.LFB211:
	.loc 1 1039 0
.LVL214:
	.loc 1 1044 0
	movh.a	%a15, hi:-268214224
	lea	%a15, [%a15] lo:-268214224
	ld.w	%d2, [%a15]0
	movh	%d15, 12288
	and	%d15, %d2
	.loc 1 1039 0
	mov.aa	%a12, %a4
	.loc 1 1044 0
	jnz	%d15, .L192
	ret
.L192:
	.loc 1 1049 0
	call	IfxScuWdt_getSafetyWatchdogPassword
.LVL215:
	mov	%d8, %d2
.LVL216:
	.loc 1 1050 0
	call	IfxScuWdt_getCpuWatchdogPassword
.LVL217:
	.loc 1 1053 0
	ld.bu	%d9, [%a12]0
	.loc 1 1050 0
	mov	%d10, %d2
.LVL218:
	.loc 1 1053 0
	jz	%d9, .L183
	.loc 1 1038 0
	add	%d9, -1
.LVL219:
	.loc 1 1053 0
	mov.a	%a15, %d9
	.loc 1 1066 0
	movh.a	%a14, hi:-268214244
	.loc 1 1053 0
	add.a	%a13, %a15, %a15
	addsc.a	%a13, %a13, %d9, 0
	.loc 1 1059 0
	movh.a	%a15, hi:-268214252
	.loc 1 1053 0
	add.a	%a13, %a13
	add.a	%a13, %a13
	.loc 1 1059 0
	lea	%a15, [%a15] lo:-268214252
	.loc 1 1066 0
	lea	%a14, [%a14] lo:-268214244
.LVL220:
.L185:
	.loc 1 1056 0
	mov	%d4, %d8
	call	IfxScuWdt_clearSafetyEndinit
.L184:
	.loc 1 1059 0 discriminator 1
	ld.w	%d15, [%a15]0
	jz.t	%d15, 5, .L184
	.loc 1 1066 0
	ld.w	%d15, [%a12] 4
	.loc 1 1067 0
	mov	%d4, %d8
	.loc 1 1066 0
	addsc.a	%a2, %a13, %d15, 0
	ld.w	%d15, [%a14]0
	ld.bu	%d3, [%a2]0
	insert	%d15, %d15, %d3, 0, 7
	st.w	[%a14]0, %d15
	.loc 1 1067 0
	call	IfxScuWdt_setSafetyEndinit
	.loc 1 1070 0
	ld.w	%d15, [%a12] 4
	addsc.a	%a2, %a13, %d15, 0
	.loc 1 1053 0
	lea	%a13, [%a13] -12
	.loc 1 1070 0
	ld.w	%d4, [%a2] 4
	call	IfxScuCcu_wait
.LVL221:
	.loc 1 1053 0
	jz	%d9, .L183
	add	%d9, -1
.LVL222:
	j	.L185
.LVL223:
.L183:
	.loc 1 1077 0
	movh.a	%a15, hi:-268213968
	lea	%a15, [%a15] lo:-268213968
	.loc 1 1076 0
	mov	%d4, %d10
	call	IfxScuWdt_clearCpuEndinit
	.loc 1 1077 0
	ld.w	%d9, [%a15]0
.LVL224:
	.loc 1 1078 0
	ld.w	%d15, [%a15]0
	.loc 1 1079 0
	mov	%d4, %d10
	.loc 1 1078 0
	insert	%d15, %d15, 1, 3, 1
	.loc 1 1077 0
	extr.u	%d9, %d9, 3, 1
	.loc 1 1078 0
	st.w	[%a15]0, %d15
	.loc 1 1079 0
	call	IfxScuWdt_setCpuEndinit
	.loc 1 1084 0
	mov	%d4, %d8
	call	IfxScuWdt_clearSafetyEndinit
	.loc 1 1086 0
	movh.a	%a2, hi:-268214224
	lea	%a2, [%a2] lo:-268214224
.L186:
	.loc 1 1086 0 is_stmt 0 discriminator 1
	ld.w	%d15, [%a2]0
	movh.a	%a15, hi:-268214224
	lea	%a15, [%a15] lo:-268214224
	jltz	%d15, .L186
	.loc 1 1092 0 is_stmt 1
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 0, 28, 2
	st.w	[%a15]0, %d15
	.loc 1 1093 0
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 1, 30, 1
	st.w	[%a15]0, %d15
.L187:
	.loc 1 1095 0 discriminator 1
	ld.w	%d15, [%a15]0
	jltz	%d15, .L187
	.loc 1 1102 0
	movh.a	%a15, hi:-268214248
	lea	%a15, [%a15] lo:-268214248
	ld.w	%d15, [%a15]0
	.loc 1 1106 0
	mov	%d4, %d8
	.loc 1 1102 0
	insert	%d15, %d15, 1, 4, 1
	st.w	[%a15]0, %d15
	.loc 1 1105 0
	ld.w	%d15, [%a15]0
	andn	%d15, %d15, ~(-65)
	st.w	[%a15]0, %d15
	.loc 1 1106 0
	call	IfxScuWdt_setSafetyEndinit
	.loc 1 1111 0
	movh.a	%a15, hi:-268213972
	lea	%a15, [%a15] lo:-268213972
	.loc 1 1110 0
	mov	%d4, %d10
	call	IfxScuWdt_clearCpuEndinit
	.loc 1 1111 0
	ld.w	%d15, [%a15]0
	.loc 1 1113 0
	mov	%d4, %d10
	.loc 1 1111 0
	insert	%d15, %d15, 1, 3, 1
	st.w	[%a15]0, %d15
	.loc 1 1112 0
	movh.a	%a15, hi:-268213968
	lea	%a15, [%a15] lo:-268213968
	ld.w	%d15, [%a15]0
	ins.t	%d15, %d15,3, %d9,0
	st.w	[%a15]0, %d15
	.loc 1 1113 0
	j	IfxScuWdt_setCpuEndinit
.LFE211:
	.size	IfxScuCcu_switchToBackupClock, .-IfxScuCcu_switchToBackupClock
	.global	IfxScuCcu_defaultClockConfig
	.section .rodata.MPU_QM_CONST,"a",@progbits
	.align 2
	.type	IfxScuCcu_defaultClockConfig, @object
	.size	IfxScuCcu_defaultClockConfig, 68
IfxScuCcu_defaultClockConfig:
	.byte	2
	.zero	3
	.word	IfxScuCcu_aDefaultPllConfigSteps
	.byte	1
	.byte	59
	.byte	7
	.zero	1
	.word	961656599
	.word	34734352
	.word	54464496
	.word	34803969
	.word	268435215
	.word	2
	.word	15
	.word	1
	.word	15
	.word	0
	.word	63
	.word	4947
	.word	32767
	.word	20000000
	.section .data.MPU_QM_VAR_INIT,"aw",@progbits
	.align 3
	.type	IfxScuCcu_xtalFrequency, @object
	.size	IfxScuCcu_xtalFrequency, 4
IfxScuCcu_xtalFrequency:
	.word	20000000
	.section .rodata.MPU_QM_CONST
	.align 2
	.type	IfxScuCcu_aDefaultPllConfigSteps, @object
	.size	IfxScuCcu_aDefaultPllConfigSteps, 24
IfxScuCcu_aDefaultPllConfigSteps:
	.byte	6
	.zero	3
	.word	953267991
	.word	0
	.byte	5
	.zero	3
	.word	953267991
	.word	0
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
	.uaword	.LFB188
	.uaword	.LFE188-.LFB188
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB196
	.uaword	.LFE196-.LFB196
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB197
	.uaword	.LFE197-.LFB197
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB198
	.uaword	.LFE198-.LFB198
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB199
	.uaword	.LFE199-.LFB199
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB200
	.uaword	.LFE200-.LFB200
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB212
	.uaword	.LFE212-.LFB212
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB194
	.uaword	.LFE194-.LFB194
	.align 2
.LEFDE14:
.LSFDE16:
	.uaword	.LEFDE16-.LASFDE16
.LASFDE16:
	.uaword	.Lframe0
	.uaword	.LFB189
	.uaword	.LFE189-.LFB189
	.align 2
.LEFDE16:
.LSFDE18:
	.uaword	.LEFDE18-.LASFDE18
.LASFDE18:
	.uaword	.Lframe0
	.uaword	.LFB190
	.uaword	.LFE190-.LFB190
	.align 2
.LEFDE18:
.LSFDE20:
	.uaword	.LEFDE20-.LASFDE20
.LASFDE20:
	.uaword	.Lframe0
	.uaword	.LFB201
	.uaword	.LFE201-.LFB201
	.align 2
.LEFDE20:
.LSFDE22:
	.uaword	.LEFDE22-.LASFDE22
.LASFDE22:
	.uaword	.Lframe0
	.uaword	.LFB195
	.uaword	.LFE195-.LFB195
	.align 2
.LEFDE22:
.LSFDE24:
	.uaword	.LEFDE24-.LASFDE24
.LASFDE24:
	.uaword	.Lframe0
	.uaword	.LFB202
	.uaword	.LFE202-.LFB202
	.align 2
.LEFDE24:
.LSFDE26:
	.uaword	.LEFDE26-.LASFDE26
.LASFDE26:
	.uaword	.Lframe0
	.uaword	.LFB193
	.uaword	.LFE193-.LFB193
	.align 2
.LEFDE26:
.LSFDE28:
	.uaword	.LEFDE28-.LASFDE28
.LASFDE28:
	.uaword	.Lframe0
	.uaword	.LFB192
	.uaword	.LFE192-.LFB192
	.align 2
.LEFDE28:
.LSFDE30:
	.uaword	.LEFDE30-.LASFDE30
.LASFDE30:
	.uaword	.Lframe0
	.uaword	.LFB191
	.uaword	.LFE191-.LFB191
	.align 2
.LEFDE30:
.LSFDE32:
	.uaword	.LEFDE32-.LASFDE32
.LASFDE32:
	.uaword	.Lframe0
	.uaword	.LFB203
	.uaword	.LFE203-.LFB203
	.align 2
.LEFDE32:
.LSFDE34:
	.uaword	.LEFDE34-.LASFDE34
.LASFDE34:
	.uaword	.Lframe0
	.uaword	.LFB204
	.uaword	.LFE204-.LFB204
	.align 2
.LEFDE34:
.LSFDE36:
	.uaword	.LEFDE36-.LASFDE36
.LASFDE36:
	.uaword	.Lframe0
	.uaword	.LFB206
	.uaword	.LFE206-.LFB206
	.align 2
.LEFDE36:
.LSFDE38:
	.uaword	.LEFDE38-.LASFDE38
.LASFDE38:
	.uaword	.Lframe0
	.uaword	.LFB207
	.uaword	.LFE207-.LFB207
	.align 2
.LEFDE38:
.LSFDE40:
	.uaword	.LEFDE40-.LASFDE40
.LASFDE40:
	.uaword	.Lframe0
	.uaword	.LFB208
	.uaword	.LFE208-.LFB208
	.align 2
.LEFDE40:
.LSFDE42:
	.uaword	.LEFDE42-.LASFDE42
.LASFDE42:
	.uaword	.Lframe0
	.uaword	.LFB209
	.uaword	.LFE209-.LFB209
	.align 2
.LEFDE42:
.LSFDE44:
	.uaword	.LEFDE44-.LASFDE44
.LASFDE44:
	.uaword	.Lframe0
	.uaword	.LFB210
	.uaword	.LFE210-.LFB210
	.align 2
.LEFDE44:
.LSFDE46:
	.uaword	.LEFDE46-.LASFDE46
.LASFDE46:
	.uaword	.Lframe0
	.uaword	.LFB211
	.uaword	.LFE211-.LFB211
	.align 2
.LEFDE46:
.section .text,"ax",@progbits
.Letext0:
	.file 4 "../30_Bsw/Common/TC21x/IfxScu_cfg.h"
	.file 5 "../30_Bsw/Common/Platform_Types.h"
	.file 6 "../30_Bsw/Common/Ifx_Types.h"
	.file 7 "../30_Bsw/Common/TC21x/IfxScu_regdef.h"
	.file 8 "../30_Bsw/Common/TC21x/IfxCpu_cfg.h"
	.file 9 "../30_Bsw/Common/TC21x/IfxStm_regdef.h"
	.file 10 "../30_Bsw/Common/TC21x/IfxFlash_regdef.h"
	.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x7a3e
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.6.3 build on 2013-05-17"
	.byte	0x1
	.string	"../30_Bsw/Mcal/Scu/IfxScuCcu.c"
	.string	"S:\\\\20_Make"
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_ranges0+0x1c8
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.uahalf	0x4ec
	.uaword	0xad
	.uleb128 0x3
	.string	"IfxScu_CCUCON0_CLKSEL_fBack"
	.sleb128 0
	.uleb128 0x3
	.string	"IfxScu_CCUCON0_CLKSEL_fPll"
	.sleb128 1
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.uahalf	0x4f3
	.uaword	0xf1
	.uleb128 0x3
	.string	"IfxScu_CCUCON1_INSEL_fOsc1"
	.sleb128 0
	.uleb128 0x3
	.string	"IfxScu_CCUCON1_INSEL_fOsc0"
	.sleb128 1
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x4
	.byte	0x4
	.byte	0x4
	.string	"float"
	.uleb128 0x4
	.byte	0x8
	.byte	0x4
	.string	"double"
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x5
	.string	"uint8"
	.byte	0x5
	.byte	0x5b
	.uaword	0x100
	.uleb128 0x5
	.string	"uint16"
	.byte	0x5
	.byte	0x5d
	.uaword	0x11e
	.uleb128 0x5
	.string	"sint32"
	.byte	0x5
	.byte	0x5e
	.uaword	0x1a4
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x5
	.string	"uint32"
	.byte	0x5
	.byte	0x5f
	.uaword	0x15e
	.uleb128 0x5
	.string	"float32"
	.byte	0x5
	.byte	0x60
	.uaword	0x14b
	.uleb128 0x5
	.string	"boolean"
	.byte	0x5
	.byte	0x63
	.uaword	0x100
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.string	"long long int"
	.uleb128 0x5
	.string	"uint64"
	.byte	0x6
	.byte	0x25
	.uaword	0x1fb
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.string	"long long unsigned int"
	.uleb128 0x6
	.string	"_Ifx_SCU_ACCEN0_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0x2d
	.uaword	0x469
	.uleb128 0x7
	.string	"EN0"
	.byte	0x7
	.byte	0x2f
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN1"
	.byte	0x7
	.byte	0x30
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN2"
	.byte	0x7
	.byte	0x31
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN3"
	.byte	0x7
	.byte	0x32
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN4"
	.byte	0x7
	.byte	0x33
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN5"
	.byte	0x7
	.byte	0x34
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN6"
	.byte	0x7
	.byte	0x35
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN7"
	.byte	0x7
	.byte	0x36
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN8"
	.byte	0x7
	.byte	0x37
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN9"
	.byte	0x7
	.byte	0x38
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN10"
	.byte	0x7
	.byte	0x39
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN11"
	.byte	0x7
	.byte	0x3a
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN12"
	.byte	0x7
	.byte	0x3b
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN13"
	.byte	0x7
	.byte	0x3c
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN14"
	.byte	0x7
	.byte	0x3d
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN15"
	.byte	0x7
	.byte	0x3e
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN16"
	.byte	0x7
	.byte	0x3f
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN17"
	.byte	0x7
	.byte	0x40
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN18"
	.byte	0x7
	.byte	0x41
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN19"
	.byte	0x7
	.byte	0x42
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN20"
	.byte	0x7
	.byte	0x43
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN21"
	.byte	0x7
	.byte	0x44
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN22"
	.byte	0x7
	.byte	0x45
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN23"
	.byte	0x7
	.byte	0x46
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN24"
	.byte	0x7
	.byte	0x47
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN25"
	.byte	0x7
	.byte	0x48
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN26"
	.byte	0x7
	.byte	0x49
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN27"
	.byte	0x7
	.byte	0x4a
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN28"
	.byte	0x7
	.byte	0x4b
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN29"
	.byte	0x7
	.byte	0x4c
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN30"
	.byte	0x7
	.byte	0x4d
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN31"
	.byte	0x7
	.byte	0x4e
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_SCU_ACCEN0_Bits"
	.byte	0x7
	.byte	0x4f
	.uaword	0x215
	.uleb128 0x6
	.string	"_Ifx_SCU_ACCEN1_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0x52
	.uaword	0x4b3
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0x7
	.byte	0x54
	.uaword	0x13b
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_SCU_ACCEN1_Bits"
	.byte	0x7
	.byte	0x55
	.uaword	0x484
	.uleb128 0x6
	.string	"_Ifx_SCU_ARSTDIS_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0x58
	.uaword	0x53d
	.uleb128 0x7
	.string	"STM0DIS"
	.byte	0x7
	.byte	0x5a
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"STM1DIS"
	.byte	0x7
	.byte	0x5b
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"STM2DIS"
	.byte	0x7
	.byte	0x5c
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF1
	.byte	0x7
	.byte	0x5d
	.uaword	0x13b
	.byte	0x4
	.byte	0x1d
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_SCU_ARSTDIS_Bits"
	.byte	0x7
	.byte	0x5e
	.uaword	0x4ce
	.uleb128 0x6
	.string	"_Ifx_SCU_CCUCON0_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0x61
	.uaword	0x65a
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0x7
	.byte	0x63
	.uaword	0x13b
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"BAUD2DIV"
	.byte	0x7
	.byte	0x64
	.uaword	0x13b
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"SRIDIV"
	.byte	0x7
	.byte	0x65
	.uaword	0x13b
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"LPDIV"
	.byte	0x7
	.byte	0x66
	.uaword	0x13b
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"SPBDIV"
	.byte	0x7
	.byte	0x67
	.uaword	0x13b
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"FSI2DIV"
	.byte	0x7
	.byte	0x68
	.uaword	0x13b
	.byte	0x4
	.byte	0x2
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF2
	.byte	0x7
	.byte	0x69
	.uaword	0x13b
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"FSIDIV"
	.byte	0x7
	.byte	0x6a
	.uaword	0x13b
	.byte	0x4
	.byte	0x2
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF3
	.byte	0x7
	.byte	0x6b
	.uaword	0x13b
	.byte	0x4
	.byte	0x2
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"CLKSEL"
	.byte	0x7
	.byte	0x6c
	.uaword	0x13b
	.byte	0x4
	.byte	0x2
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"UP"
	.byte	0x7
	.byte	0x6d
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"LCK"
	.byte	0x7
	.byte	0x6e
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_SCU_CCUCON0_Bits"
	.byte	0x7
	.byte	0x6f
	.uaword	0x559
	.uleb128 0x6
	.string	"_Ifx_SCU_CCUCON1_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0x72
	.uaword	0x75e
	.uleb128 0x7
	.string	"CANDIV"
	.byte	0x7
	.byte	0x74
	.uaword	0x13b
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"ERAYDIV"
	.byte	0x7
	.byte	0x75
	.uaword	0x13b
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"STMDIV"
	.byte	0x7
	.byte	0x76
	.uaword	0x13b
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"GTMDIV"
	.byte	0x7
	.byte	0x77
	.uaword	0x13b
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"ETHDIV"
	.byte	0x7
	.byte	0x78
	.uaword	0x13b
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"ASCLINFDIV"
	.byte	0x7
	.byte	0x79
	.uaword	0x13b
	.byte	0x4
	.byte	0x4
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"ASCLINSDIV"
	.byte	0x7
	.byte	0x7a
	.uaword	0x13b
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"INSEL"
	.byte	0x7
	.byte	0x7b
	.uaword	0x13b
	.byte	0x4
	.byte	0x2
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"UP"
	.byte	0x7
	.byte	0x7c
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"LCK"
	.byte	0x7
	.byte	0x7d
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_SCU_CCUCON1_Bits"
	.byte	0x7
	.byte	0x7e
	.uaword	0x676
	.uleb128 0x6
	.string	"_Ifx_SCU_CCUCON2_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0x81
	.uaword	0x7df
	.uleb128 0x7
	.string	"BBBDIV"
	.byte	0x7
	.byte	0x83
	.uaword	0x13b
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF4
	.byte	0x7
	.byte	0x84
	.uaword	0x13b
	.byte	0x4
	.byte	0x1a
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"UP"
	.byte	0x7
	.byte	0x85
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"LCK"
	.byte	0x7
	.byte	0x86
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_SCU_CCUCON2_Bits"
	.byte	0x7
	.byte	0x87
	.uaword	0x77a
	.uleb128 0x6
	.string	"_Ifx_SCU_CCUCON3_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0x8a
	.uaword	0x8cc
	.uleb128 0x7
	.string	"PLLDIV"
	.byte	0x7
	.byte	0x8c
	.uaword	0x13b
	.byte	0x4
	.byte	0x6
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"PLLSEL"
	.byte	0x7
	.byte	0x8d
	.uaword	0x13b
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"PLLERAYDIV"
	.byte	0x7
	.byte	0x8e
	.uaword	0x13b
	.byte	0x4
	.byte	0x6
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"PLLERAYSEL"
	.byte	0x7
	.byte	0x8f
	.uaword	0x13b
	.byte	0x4
	.byte	0x2
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"SRIDIV"
	.byte	0x7
	.byte	0x90
	.uaword	0x13b
	.byte	0x4
	.byte	0x6
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"SRISEL"
	.byte	0x7
	.byte	0x91
	.uaword	0x13b
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF5
	.byte	0x7
	.byte	0x92
	.uaword	0x13b
	.byte	0x4
	.byte	0x6
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"UP"
	.byte	0x7
	.byte	0x93
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"LCK"
	.byte	0x7
	.byte	0x94
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_SCU_CCUCON3_Bits"
	.byte	0x7
	.byte	0x95
	.uaword	0x7fb
	.uleb128 0x6
	.string	"_Ifx_SCU_CCUCON4_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0x98
	.uaword	0x9b1
	.uleb128 0x7
	.string	"SPBDIV"
	.byte	0x7
	.byte	0x9a
	.uaword	0x13b
	.byte	0x4
	.byte	0x6
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"SPBSEL"
	.byte	0x7
	.byte	0x9b
	.uaword	0x13b
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"GTMDIV"
	.byte	0x7
	.byte	0x9c
	.uaword	0x13b
	.byte	0x4
	.byte	0x6
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"GTMSEL"
	.byte	0x7
	.byte	0x9d
	.uaword	0x13b
	.byte	0x4
	.byte	0x2
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"STMDIV"
	.byte	0x7
	.byte	0x9e
	.uaword	0x13b
	.byte	0x4
	.byte	0x6
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"STMSEL"
	.byte	0x7
	.byte	0x9f
	.uaword	0x13b
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF5
	.byte	0x7
	.byte	0xa0
	.uaword	0x13b
	.byte	0x4
	.byte	0x6
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"UP"
	.byte	0x7
	.byte	0xa1
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"LCK"
	.byte	0x7
	.byte	0xa2
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_SCU_CCUCON4_Bits"
	.byte	0x7
	.byte	0xa3
	.uaword	0x8e8
	.uleb128 0x6
	.string	"_Ifx_SCU_CCUCON5_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0xa6
	.uaword	0xa32
	.uleb128 0x7
	.string	"MAXDIV"
	.byte	0x7
	.byte	0xa8
	.uaword	0x13b
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF4
	.byte	0x7
	.byte	0xa9
	.uaword	0x13b
	.byte	0x4
	.byte	0x1a
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"UP"
	.byte	0x7
	.byte	0xaa
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"LCK"
	.byte	0x7
	.byte	0xab
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_SCU_CCUCON5_Bits"
	.byte	0x7
	.byte	0xac
	.uaword	0x9cd
	.uleb128 0x6
	.string	"_Ifx_SCU_CCUCON6_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0xaf
	.uaword	0xa93
	.uleb128 0x7
	.string	"CPU0DIV"
	.byte	0x7
	.byte	0xb1
	.uaword	0x13b
	.byte	0x4
	.byte	0x6
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF6
	.byte	0x7
	.byte	0xb2
	.uaword	0x13b
	.byte	0x4
	.byte	0x1a
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_SCU_CCUCON6_Bits"
	.byte	0x7
	.byte	0xb3
	.uaword	0xa4e
	.uleb128 0x6
	.string	"_Ifx_SCU_CHIPID_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0xb6
	.uaword	0xb6e
	.uleb128 0x7
	.string	"CHREV"
	.byte	0x7
	.byte	0xb8
	.uaword	0x13b
	.byte	0x4
	.byte	0x6
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"CHTEC"
	.byte	0x7
	.byte	0xb9
	.uaword	0x13b
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"CHID"
	.byte	0x7
	.byte	0xba
	.uaword	0x13b
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EEA"
	.byte	0x7
	.byte	0xbb
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"UCODE"
	.byte	0x7
	.byte	0xbc
	.uaword	0x13b
	.byte	0x4
	.byte	0x7
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"FSIZE"
	.byte	0x7
	.byte	0xbd
	.uaword	0x13b
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"SP"
	.byte	0x7
	.byte	0xbe
	.uaword	0x13b
	.byte	0x4
	.byte	0x2
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"SEC"
	.byte	0x7
	.byte	0xbf
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF7
	.byte	0x7
	.byte	0xc0
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_SCU_CHIPID_Bits"
	.byte	0x7
	.byte	0xc1
	.uaword	0xaaf
	.uleb128 0x6
	.string	"_Ifx_SCU_DTSCON_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0xc4
	.uaword	0xc0f
	.uleb128 0x7
	.string	"PWD"
	.byte	0x7
	.byte	0xc6
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"START"
	.byte	0x7
	.byte	0xc7
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF8
	.byte	0x7
	.byte	0xc8
	.uaword	0x13b
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"CAL"
	.byte	0x7
	.byte	0xc9
	.uaword	0x13b
	.byte	0x4
	.byte	0x16
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF3
	.byte	0x7
	.byte	0xca
	.uaword	0x13b
	.byte	0x4
	.byte	0x5
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF9
	.byte	0x7
	.byte	0xcb
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_SCU_DTSCON_Bits"
	.byte	0x7
	.byte	0xcc
	.uaword	0xb89
	.uleb128 0x6
	.string	"_Ifx_SCU_DTSLIM_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0xcf
	.uaword	0xcc3
	.uleb128 0x7
	.string	"LOWER"
	.byte	0x7
	.byte	0xd1
	.uaword	0x13b
	.byte	0x4
	.byte	0xa
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF10
	.byte	0x7
	.byte	0xd2
	.uaword	0x13b
	.byte	0x4
	.byte	0x5
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"LLU"
	.byte	0x7
	.byte	0xd3
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"UPPER"
	.byte	0x7
	.byte	0xd4
	.uaword	0x13b
	.byte	0x4
	.byte	0xa
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF3
	.byte	0x7
	.byte	0xd5
	.uaword	0x13b
	.byte	0x4
	.byte	0x4
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF9
	.byte	0x7
	.byte	0xd6
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"UOF"
	.byte	0x7
	.byte	0xd7
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_SCU_DTSLIM_Bits"
	.byte	0x7
	.byte	0xd8
	.uaword	0xc2a
	.uleb128 0x6
	.string	"_Ifx_SCU_DTSSTAT_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0xdb
	.uaword	0xd56
	.uleb128 0x7
	.string	"RESULT"
	.byte	0x7
	.byte	0xdd
	.uaword	0x13b
	.byte	0x4
	.byte	0xa
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF10
	.byte	0x7
	.byte	0xde
	.uaword	0x13b
	.byte	0x4
	.byte	0x4
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"RDY"
	.byte	0x7
	.byte	0xdf
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"BUSY"
	.byte	0x7
	.byte	0xe0
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF11
	.byte	0x7
	.byte	0xe1
	.uaword	0x13b
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_SCU_DTSSTAT_Bits"
	.byte	0x7
	.byte	0xe2
	.uaword	0xcde
	.uleb128 0x6
	.string	"_Ifx_SCU_EICR_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0xe5
	.uaword	0xec1
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0x7
	.byte	0xe7
	.uaword	0x13b
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EXIS0"
	.byte	0x7
	.byte	0xe8
	.uaword	0x13b
	.byte	0x4
	.byte	0x3
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF12
	.byte	0x7
	.byte	0xe9
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"FEN0"
	.byte	0x7
	.byte	0xea
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"REN0"
	.byte	0x7
	.byte	0xeb
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"LDEN0"
	.byte	0x7
	.byte	0xec
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EIEN0"
	.byte	0x7
	.byte	0xed
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"INP0"
	.byte	0x7
	.byte	0xee
	.uaword	0x13b
	.byte	0x4
	.byte	0x3
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF13
	.byte	0x7
	.byte	0xef
	.uaword	0x13b
	.byte	0x4
	.byte	0x5
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EXIS1"
	.byte	0x7
	.byte	0xf0
	.uaword	0x13b
	.byte	0x4
	.byte	0x3
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF14
	.byte	0x7
	.byte	0xf1
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"FEN1"
	.byte	0x7
	.byte	0xf2
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"REN1"
	.byte	0x7
	.byte	0xf3
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"LDEN1"
	.byte	0x7
	.byte	0xf4
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EIEN1"
	.byte	0x7
	.byte	0xf5
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"INP1"
	.byte	0x7
	.byte	0xf6
	.uaword	0x13b
	.byte	0x4
	.byte	0x3
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF7
	.byte	0x7
	.byte	0xf7
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_SCU_EICR_Bits"
	.byte	0x7
	.byte	0xf8
	.uaword	0xd72
	.uleb128 0x6
	.string	"_Ifx_SCU_EIFR_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0xfb
	.uaword	0xfa5
	.uleb128 0x7
	.string	"INTF0"
	.byte	0x7
	.byte	0xfd
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"INTF1"
	.byte	0x7
	.byte	0xfe
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"INTF2"
	.byte	0x7
	.byte	0xff
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"INTF3"
	.byte	0x7
	.uahalf	0x100
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"INTF4"
	.byte	0x7
	.uahalf	0x101
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"INTF5"
	.byte	0x7
	.uahalf	0x102
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"INTF6"
	.byte	0x7
	.uahalf	0x103
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"INTF7"
	.byte	0x7
	.uahalf	0x104
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF15
	.byte	0x7
	.uahalf	0x105
	.uaword	0x13b
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_EIFR_Bits"
	.byte	0x7
	.uahalf	0x106
	.uaword	0xeda
	.uleb128 0xc
	.string	"_Ifx_SCU_EMSR_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x109
	.uaword	0x10ad
	.uleb128 0x9
	.string	"POL"
	.byte	0x7
	.uahalf	0x10b
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"MODE"
	.byte	0x7
	.uahalf	0x10c
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"ENON"
	.byte	0x7
	.uahalf	0x10d
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PSEL"
	.byte	0x7
	.uahalf	0x10e
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF4
	.byte	0x7
	.uahalf	0x10f
	.uaword	0x13b
	.byte	0x4
	.byte	0xc
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"EMSF"
	.byte	0x7
	.uahalf	0x110
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"SEMSF"
	.byte	0x7
	.uahalf	0x111
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF16
	.byte	0x7
	.uahalf	0x112
	.uaword	0x13b
	.byte	0x4
	.byte	0x6
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"EMSFM"
	.byte	0x7
	.uahalf	0x113
	.uaword	0x13b
	.byte	0x4
	.byte	0x2
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"SEMSFM"
	.byte	0x7
	.uahalf	0x114
	.uaword	0x13b
	.byte	0x4
	.byte	0x2
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF17
	.byte	0x7
	.uahalf	0x115
	.uaword	0x13b
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_EMSR_Bits"
	.byte	0x7
	.uahalf	0x116
	.uaword	0xfbf
	.uleb128 0xc
	.string	"_Ifx_SCU_ESRCFG_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x119
	.uaword	0x111e
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x7
	.uahalf	0x11b
	.uaword	0x13b
	.byte	0x4
	.byte	0x7
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"EDCON"
	.byte	0x7
	.uahalf	0x11c
	.uaword	0x13b
	.byte	0x4
	.byte	0x2
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF18
	.byte	0x7
	.uahalf	0x11d
	.uaword	0x13b
	.byte	0x4
	.byte	0x17
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_ESRCFG_Bits"
	.byte	0x7
	.uahalf	0x11e
	.uaword	0x10c7
	.uleb128 0xc
	.string	"_Ifx_SCU_ESROCFG_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x121
	.uaword	0x1190
	.uleb128 0x9
	.string	"ARI"
	.byte	0x7
	.uahalf	0x123
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"ARC"
	.byte	0x7
	.uahalf	0x124
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF8
	.byte	0x7
	.uahalf	0x125
	.uaword	0x13b
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_ESROCFG_Bits"
	.byte	0x7
	.uahalf	0x126
	.uaword	0x113a
	.uleb128 0xc
	.string	"_Ifx_SCU_EVR13CON_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x129
	.uaword	0x1234
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x7
	.uahalf	0x12b
	.uaword	0x13b
	.byte	0x4
	.byte	0x1c
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"EVR13OFF"
	.byte	0x7
	.uahalf	0x12c
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"BPEVR13OFF"
	.byte	0x7
	.uahalf	0x12d
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF19
	.byte	0x7
	.uahalf	0x12e
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"LCK"
	.byte	0x7
	.uahalf	0x12f
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_EVR13CON_Bits"
	.byte	0x7
	.uahalf	0x130
	.uaword	0x11ad
	.uleb128 0xc
	.string	"_Ifx_SCU_EVRADCSTAT_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x133
	.uaword	0x12d6
	.uleb128 0x9
	.string	"ADC13V"
	.byte	0x7
	.uahalf	0x135
	.uaword	0x13b
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF15
	.byte	0x7
	.uahalf	0x136
	.uaword	0x13b
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"ADCSWDV"
	.byte	0x7
	.uahalf	0x137
	.uaword	0x13b
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF5
	.byte	0x7
	.uahalf	0x138
	.uaword	0x13b
	.byte	0x4
	.byte	0x7
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"VAL"
	.byte	0x7
	.uahalf	0x139
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_EVRADCSTAT_Bits"
	.byte	0x7
	.uahalf	0x13a
	.uaword	0x1252
	.uleb128 0xc
	.string	"_Ifx_SCU_EVRMONCTRL_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x13d
	.uaword	0x13e5
	.uleb128 0x9
	.string	"EVR13OVMOD"
	.byte	0x7
	.uahalf	0x13f
	.uaword	0x13b
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF8
	.byte	0x7
	.uahalf	0x140
	.uaword	0x13b
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"EVR13UVMOD"
	.byte	0x7
	.uahalf	0x141
	.uaword	0x13b
	.byte	0x4
	.byte	0x2
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF6
	.byte	0x7
	.uahalf	0x142
	.uaword	0x13b
	.byte	0x4
	.byte	0xa
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"SWDOVMOD"
	.byte	0x7
	.uahalf	0x143
	.uaword	0x13b
	.byte	0x4
	.byte	0x2
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF16
	.byte	0x7
	.uahalf	0x144
	.uaword	0x13b
	.byte	0x4
	.byte	0x2
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"SWDUVMOD"
	.byte	0x7
	.uahalf	0x145
	.uaword	0x13b
	.byte	0x4
	.byte	0x2
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF2
	.byte	0x7
	.uahalf	0x146
	.uaword	0x13b
	.byte	0x4
	.byte	0x8
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF9
	.byte	0x7
	.uahalf	0x147
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF7
	.byte	0x7
	.uahalf	0x148
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_EVRMONCTRL_Bits"
	.byte	0x7
	.uahalf	0x149
	.uaword	0x12f6
	.uleb128 0xc
	.string	"_Ifx_SCU_EVROVMON_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x14c
	.uaword	0x149e
	.uleb128 0x9
	.string	"EVR13OVVAL"
	.byte	0x7
	.uahalf	0x14e
	.uaword	0x13b
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF15
	.byte	0x7
	.uahalf	0x14f
	.uaword	0x13b
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"SWDOVVAL"
	.byte	0x7
	.uahalf	0x150
	.uaword	0x13b
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF5
	.byte	0x7
	.uahalf	0x151
	.uaword	0x13b
	.byte	0x4
	.byte	0x6
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF9
	.byte	0x7
	.uahalf	0x152
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"LCK"
	.byte	0x7
	.uahalf	0x153
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_EVROVMON_Bits"
	.byte	0x7
	.uahalf	0x154
	.uaword	0x1405
	.uleb128 0xc
	.string	"_Ifx_SCU_EVRRSTCON_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x157
	.uaword	0x1546
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x7
	.uahalf	0x159
	.uaword	0x13b
	.byte	0x4
	.byte	0x1c
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"RSTSWDOFF"
	.byte	0x7
	.uahalf	0x15a
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"BPRSTSWDOFF"
	.byte	0x7
	.uahalf	0x15b
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF9
	.byte	0x7
	.uahalf	0x15c
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"LCK"
	.byte	0x7
	.uahalf	0x15d
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_EVRRSTCON_Bits"
	.byte	0x7
	.uahalf	0x15e
	.uaword	0x14bc
	.uleb128 0xc
	.string	"_Ifx_SCU_EVRSDCOEFF2_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x161
	.uaword	0x15e7
	.uleb128 0x9
	.string	"SD33P"
	.byte	0x7
	.uahalf	0x163
	.uaword	0x13b
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF4
	.byte	0x7
	.uahalf	0x164
	.uaword	0x13b
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"SD33I"
	.byte	0x7
	.uahalf	0x165
	.uaword	0x13b
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF20
	.byte	0x7
	.uahalf	0x166
	.uaword	0x13b
	.byte	0x4
	.byte	0x13
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"LCK"
	.byte	0x7
	.uahalf	0x167
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_EVRSDCOEFF2_Bits"
	.byte	0x7
	.uahalf	0x168
	.uaword	0x1565
	.uleb128 0xc
	.string	"_Ifx_SCU_EVRSDCTRL1_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x16b
	.uaword	0x16b8
	.uleb128 0x9
	.string	"SDFREQSPRD"
	.byte	0x7
	.uahalf	0x16d
	.uaword	0x13b
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF4
	.byte	0x7
	.uahalf	0x16e
	.uaword	0x13b
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"TON"
	.byte	0x7
	.uahalf	0x16f
	.uaword	0x13b
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"TOFF"
	.byte	0x7
	.uahalf	0x170
	.uaword	0x13b
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"SDSTEP"
	.byte	0x7
	.uahalf	0x171
	.uaword	0x13b
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"SYNCDIV"
	.byte	0x7
	.uahalf	0x172
	.uaword	0x13b
	.byte	0x4
	.byte	0x3
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"LCK"
	.byte	0x7
	.uahalf	0x173
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_EVRSDCTRL1_Bits"
	.byte	0x7
	.uahalf	0x174
	.uaword	0x1608
	.uleb128 0xc
	.string	"_Ifx_SCU_EVRSDCTRL2_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x177
	.uaword	0x17f2
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x7
	.uahalf	0x179
	.uaword	0x13b
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"STBS"
	.byte	0x7
	.uahalf	0x17a
	.uaword	0x13b
	.byte	0x4
	.byte	0x2
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"STSP"
	.byte	0x7
	.uahalf	0x17b
	.uaword	0x13b
	.byte	0x4
	.byte	0x2
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"NS"
	.byte	0x7
	.uahalf	0x17c
	.uaword	0x13b
	.byte	0x4
	.byte	0x2
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"OL"
	.byte	0x7
	.uahalf	0x17d
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PIAD"
	.byte	0x7
	.uahalf	0x17e
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"ADCMODE"
	.byte	0x7
	.uahalf	0x17f
	.uaword	0x13b
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"ADCLPF"
	.byte	0x7
	.uahalf	0x180
	.uaword	0x13b
	.byte	0x4
	.byte	0x2
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"ADCLSB"
	.byte	0x7
	.uahalf	0x181
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF14
	.byte	0x7
	.uahalf	0x182
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"SDLUT"
	.byte	0x7
	.uahalf	0x183
	.uaword	0x13b
	.byte	0x4
	.byte	0x6
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF19
	.byte	0x7
	.uahalf	0x184
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"LCK"
	.byte	0x7
	.uahalf	0x185
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_EVRSDCTRL2_Bits"
	.byte	0x7
	.uahalf	0x186
	.uaword	0x16d8
	.uleb128 0xc
	.string	"_Ifx_SCU_EVRSDCTRL3_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x189
	.uaword	0x18db
	.uleb128 0x9
	.string	"SDOLCON"
	.byte	0x7
	.uahalf	0x18b
	.uaword	0x13b
	.byte	0x4
	.byte	0x7
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"MODSEL"
	.byte	0x7
	.uahalf	0x18c
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"MODLOW"
	.byte	0x7
	.uahalf	0x18d
	.uaword	0x13b
	.byte	0x4
	.byte	0x7
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF13
	.byte	0x7
	.uahalf	0x18e
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"SDVOKLVL"
	.byte	0x7
	.uahalf	0x18f
	.uaword	0x13b
	.byte	0x4
	.byte	0x6
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"MODMAN"
	.byte	0x7
	.uahalf	0x190
	.uaword	0x13b
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"MODHIGH"
	.byte	0x7
	.uahalf	0x191
	.uaword	0x13b
	.byte	0x4
	.byte	0x7
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"LCK"
	.byte	0x7
	.uahalf	0x192
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_EVRSDCTRL3_Bits"
	.byte	0x7
	.uahalf	0x193
	.uaword	0x1812
	.uleb128 0xc
	.string	"_Ifx_SCU_EVRSTAT_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x196
	.uaword	0x1a00
	.uleb128 0x9
	.string	"EVR13"
	.byte	0x7
	.uahalf	0x198
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"OV13"
	.byte	0x7
	.uahalf	0x199
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF8
	.byte	0x7
	.uahalf	0x19a
	.uaword	0x13b
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"OVSWD"
	.byte	0x7
	.uahalf	0x19b
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"UV13"
	.byte	0x7
	.uahalf	0x19c
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF6
	.byte	0x7
	.uahalf	0x19d
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"UVSWD"
	.byte	0x7
	.uahalf	0x19e
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF15
	.byte	0x7
	.uahalf	0x19f
	.uaword	0x13b
	.byte	0x4
	.byte	0x2
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"BGPROK"
	.byte	0x7
	.uahalf	0x1a0
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF21
	.byte	0x7
	.uahalf	0x1a1
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"SCMOD"
	.byte	0x7
	.uahalf	0x1a2
	.uaword	0x13b
	.byte	0x4
	.byte	0x2
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF22
	.byte	0x7
	.uahalf	0x1a3
	.uaword	0x13b
	.byte	0x4
	.byte	0x12
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_EVRSTAT_Bits"
	.byte	0x7
	.uahalf	0x1a4
	.uaword	0x18fb
	.uleb128 0xc
	.string	"_Ifx_SCU_EVRUVMON_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x1a7
	.uaword	0x1ab6
	.uleb128 0x9
	.string	"EVR13UVVAL"
	.byte	0x7
	.uahalf	0x1a9
	.uaword	0x13b
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF15
	.byte	0x7
	.uahalf	0x1aa
	.uaword	0x13b
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"SWDUVVAL"
	.byte	0x7
	.uahalf	0x1ab
	.uaword	0x13b
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF5
	.byte	0x7
	.uahalf	0x1ac
	.uaword	0x13b
	.byte	0x4
	.byte	0x6
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF9
	.byte	0x7
	.uahalf	0x1ad
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"LCK"
	.byte	0x7
	.uahalf	0x1ae
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_EVRUVMON_Bits"
	.byte	0x7
	.uahalf	0x1af
	.uaword	0x1a1d
	.uleb128 0xc
	.string	"_Ifx_SCU_EXTCON_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x1b2
	.uaword	0x1b99
	.uleb128 0x9
	.string	"EN0"
	.byte	0x7
	.uahalf	0x1b4
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF23
	.byte	0x7
	.uahalf	0x1b5
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"SEL0"
	.byte	0x7
	.uahalf	0x1b6
	.uaword	0x13b
	.byte	0x4
	.byte	0x4
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF6
	.byte	0x7
	.uahalf	0x1b7
	.uaword	0x13b
	.byte	0x4
	.byte	0xa
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"EN1"
	.byte	0x7
	.uahalf	0x1b8
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"NSEL"
	.byte	0x7
	.uahalf	0x1b9
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"SEL1"
	.byte	0x7
	.uahalf	0x1ba
	.uaword	0x13b
	.byte	0x4
	.byte	0x4
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF2
	.byte	0x7
	.uahalf	0x1bb
	.uaword	0x13b
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"DIV1"
	.byte	0x7
	.uahalf	0x1bc
	.uaword	0x13b
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_EXTCON_Bits"
	.byte	0x7
	.uahalf	0x1bd
	.uaword	0x1ad4
	.uleb128 0xc
	.string	"_Ifx_SCU_FDR_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x1c0
	.uaword	0x1c43
	.uleb128 0x9
	.string	"STEP"
	.byte	0x7
	.uahalf	0x1c2
	.uaword	0x13b
	.byte	0x4
	.byte	0xa
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF10
	.byte	0x7
	.uahalf	0x1c3
	.uaword	0x13b
	.byte	0x4
	.byte	0x4
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"DM"
	.byte	0x7
	.uahalf	0x1c4
	.uaword	0x13b
	.byte	0x4
	.byte	0x2
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"RESULT"
	.byte	0x7
	.uahalf	0x1c5
	.uaword	0x13b
	.byte	0x4
	.byte	0xa
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF3
	.byte	0x7
	.uahalf	0x1c6
	.uaword	0x13b
	.byte	0x4
	.byte	0x5
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"DISCLK"
	.byte	0x7
	.uahalf	0x1c7
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_FDR_Bits"
	.byte	0x7
	.uahalf	0x1c8
	.uaword	0x1bb5
	.uleb128 0xc
	.string	"_Ifx_SCU_FMR_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x1cb
	.uaword	0x1dbc
	.uleb128 0x9
	.string	"FS0"
	.byte	0x7
	.uahalf	0x1cd
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"FS1"
	.byte	0x7
	.uahalf	0x1ce
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"FS2"
	.byte	0x7
	.uahalf	0x1cf
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"FS3"
	.byte	0x7
	.uahalf	0x1d0
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"FS4"
	.byte	0x7
	.uahalf	0x1d1
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"FS5"
	.byte	0x7
	.uahalf	0x1d2
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"FS6"
	.byte	0x7
	.uahalf	0x1d3
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"FS7"
	.byte	0x7
	.uahalf	0x1d4
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF15
	.byte	0x7
	.uahalf	0x1d5
	.uaword	0x13b
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"FC0"
	.byte	0x7
	.uahalf	0x1d6
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"FC1"
	.byte	0x7
	.uahalf	0x1d7
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"FC2"
	.byte	0x7
	.uahalf	0x1d8
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"FC3"
	.byte	0x7
	.uahalf	0x1d9
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"FC4"
	.byte	0x7
	.uahalf	0x1da
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"FC5"
	.byte	0x7
	.uahalf	0x1db
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"FC6"
	.byte	0x7
	.uahalf	0x1dc
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"FC7"
	.byte	0x7
	.uahalf	0x1dd
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF5
	.byte	0x7
	.uahalf	0x1de
	.uaword	0x13b
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_FMR_Bits"
	.byte	0x7
	.uahalf	0x1df
	.uaword	0x1c5c
	.uleb128 0xc
	.string	"_Ifx_SCU_ID_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x1e2
	.uaword	0x1e33
	.uleb128 0x9
	.string	"MODREV"
	.byte	0x7
	.uahalf	0x1e4
	.uaword	0x13b
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"MODTYPE"
	.byte	0x7
	.uahalf	0x1e5
	.uaword	0x13b
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"MODNUMBER"
	.byte	0x7
	.uahalf	0x1e6
	.uaword	0x13b
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_ID_Bits"
	.byte	0x7
	.uahalf	0x1e7
	.uaword	0x1dd5
	.uleb128 0xc
	.string	"_Ifx_SCU_IGCR_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x1ea
	.uaword	0x202a
	.uleb128 0x9
	.string	"IPEN00"
	.byte	0x7
	.uahalf	0x1ec
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"IPEN01"
	.byte	0x7
	.uahalf	0x1ed
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"IPEN02"
	.byte	0x7
	.uahalf	0x1ee
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"IPEN03"
	.byte	0x7
	.uahalf	0x1ef
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"IPEN04"
	.byte	0x7
	.uahalf	0x1f0
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"IPEN05"
	.byte	0x7
	.uahalf	0x1f1
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"IPEN06"
	.byte	0x7
	.uahalf	0x1f2
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"IPEN07"
	.byte	0x7
	.uahalf	0x1f3
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF15
	.byte	0x7
	.uahalf	0x1f4
	.uaword	0x13b
	.byte	0x4
	.byte	0x5
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"GEEN0"
	.byte	0x7
	.uahalf	0x1f5
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"IGP0"
	.byte	0x7
	.uahalf	0x1f6
	.uaword	0x13b
	.byte	0x4
	.byte	0x2
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"IPEN10"
	.byte	0x7
	.uahalf	0x1f7
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"IPEN11"
	.byte	0x7
	.uahalf	0x1f8
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"IPEN12"
	.byte	0x7
	.uahalf	0x1f9
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"IPEN13"
	.byte	0x7
	.uahalf	0x1fa
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"IPEN14"
	.byte	0x7
	.uahalf	0x1fb
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"IPEN15"
	.byte	0x7
	.uahalf	0x1fc
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"IPEN16"
	.byte	0x7
	.uahalf	0x1fd
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"IPEN17"
	.byte	0x7
	.uahalf	0x1fe
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF5
	.byte	0x7
	.uahalf	0x1ff
	.uaword	0x13b
	.byte	0x4
	.byte	0x5
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"GEEN1"
	.byte	0x7
	.uahalf	0x200
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"IGP1"
	.byte	0x7
	.uahalf	0x201
	.uaword	0x13b
	.byte	0x4
	.byte	0x2
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_IGCR_Bits"
	.byte	0x7
	.uahalf	0x202
	.uaword	0x1e4b
	.uleb128 0xc
	.string	"_Ifx_SCU_IN_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x205
	.uaword	0x2093
	.uleb128 0x9
	.string	"P0"
	.byte	0x7
	.uahalf	0x207
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"P1"
	.byte	0x7
	.uahalf	0x208
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF8
	.byte	0x7
	.uahalf	0x209
	.uaword	0x13b
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_IN_Bits"
	.byte	0x7
	.uahalf	0x20a
	.uaword	0x2044
	.uleb128 0xc
	.string	"_Ifx_SCU_IOCR_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x20d
	.uaword	0x2122
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x7
	.uahalf	0x20f
	.uaword	0x13b
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PC0"
	.byte	0x7
	.uahalf	0x210
	.uaword	0x13b
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF15
	.byte	0x7
	.uahalf	0x211
	.uaword	0x13b
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PC1"
	.byte	0x7
	.uahalf	0x212
	.uaword	0x13b
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF11
	.byte	0x7
	.uahalf	0x213
	.uaword	0x13b
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_IOCR_Bits"
	.byte	0x7
	.uahalf	0x214
	.uaword	0x20ab
	.uleb128 0xc
	.string	"_Ifx_SCU_LBISTCTRL0_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x217
	.uaword	0x21b7
	.uleb128 0x9
	.string	"LBISTREQ"
	.byte	0x7
	.uahalf	0x219
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"LBISTREQP"
	.byte	0x7
	.uahalf	0x21a
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PATTERNS"
	.byte	0x7
	.uahalf	0x21b
	.uaword	0x13b
	.byte	0x4
	.byte	0xe
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF11
	.byte	0x7
	.uahalf	0x21c
	.uaword	0x13b
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_LBISTCTRL0_Bits"
	.byte	0x7
	.uahalf	0x21d
	.uaword	0x213c
	.uleb128 0xc
	.string	"_Ifx_SCU_LBISTCTRL1_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x220
	.uaword	0x2261
	.uleb128 0x9
	.string	"SEED"
	.byte	0x7
	.uahalf	0x222
	.uaword	0x13b
	.byte	0x4
	.byte	0x17
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF14
	.byte	0x7
	.uahalf	0x223
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"SPLITSH"
	.byte	0x7
	.uahalf	0x224
	.uaword	0x13b
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"BODY"
	.byte	0x7
	.uahalf	0x225
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"LBISTFREQU"
	.byte	0x7
	.uahalf	0x226
	.uaword	0x13b
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_LBISTCTRL1_Bits"
	.byte	0x7
	.uahalf	0x227
	.uaword	0x21d7
	.uleb128 0xc
	.string	"_Ifx_SCU_LBISTCTRL2_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x22a
	.uaword	0x22e6
	.uleb128 0x9
	.string	"SIGNATURE"
	.byte	0x7
	.uahalf	0x22c
	.uaword	0x13b
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF5
	.byte	0x7
	.uahalf	0x22d
	.uaword	0x13b
	.byte	0x4
	.byte	0x7
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"LBISTDONE"
	.byte	0x7
	.uahalf	0x22e
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_LBISTCTRL2_Bits"
	.byte	0x7
	.uahalf	0x22f
	.uaword	0x2281
	.uleb128 0xc
	.string	"_Ifx_SCU_LCLCON0_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x232
	.uaword	0x236e
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x7
	.uahalf	0x234
	.uaword	0x13b
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"LS"
	.byte	0x7
	.uahalf	0x235
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF24
	.byte	0x7
	.uahalf	0x236
	.uaword	0x13b
	.byte	0x4
	.byte	0xe
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"LSEN"
	.byte	0x7
	.uahalf	0x237
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_LCLCON0_Bits"
	.byte	0x7
	.uahalf	0x238
	.uaword	0x2306
	.uleb128 0xc
	.string	"_Ifx_SCU_LCLTEST_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x23b
	.uaword	0x23e5
	.uleb128 0x9
	.string	"LCLT0"
	.byte	0x7
	.uahalf	0x23d
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"LCLT1"
	.byte	0x7
	.uahalf	0x23e
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF8
	.byte	0x7
	.uahalf	0x23f
	.uaword	0x13b
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_LCLTEST_Bits"
	.byte	0x7
	.uahalf	0x240
	.uaword	0x238b
	.uleb128 0xc
	.string	"_Ifx_SCU_MANID_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x243
	.uaword	0x2459
	.uleb128 0x9
	.string	"DEPT"
	.byte	0x7
	.uahalf	0x245
	.uaword	0x13b
	.byte	0x4
	.byte	0x5
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"MANUF"
	.byte	0x7
	.uahalf	0x246
	.uaword	0x13b
	.byte	0x4
	.byte	0xb
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF11
	.byte	0x7
	.uahalf	0x247
	.uaword	0x13b
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_MANID_Bits"
	.byte	0x7
	.uahalf	0x248
	.uaword	0x2402
	.uleb128 0xc
	.string	"_Ifx_SCU_OMR_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x24b
	.uaword	0x24fe
	.uleb128 0x9
	.string	"PS0"
	.byte	0x7
	.uahalf	0x24d
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PS1"
	.byte	0x7
	.uahalf	0x24e
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF8
	.byte	0x7
	.uahalf	0x24f
	.uaword	0x13b
	.byte	0x4
	.byte	0xe
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PCL0"
	.byte	0x7
	.uahalf	0x250
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PCL1"
	.byte	0x7
	.uahalf	0x251
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF16
	.byte	0x7
	.uahalf	0x252
	.uaword	0x13b
	.byte	0x4
	.byte	0xe
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_OMR_Bits"
	.byte	0x7
	.uahalf	0x253
	.uaword	0x2474
	.uleb128 0xc
	.string	"_Ifx_SCU_OSCCON_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x256
	.uaword	0x2658
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x7
	.uahalf	0x258
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PLLLV"
	.byte	0x7
	.uahalf	0x259
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"OSCRES"
	.byte	0x7
	.uahalf	0x25a
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"GAINSEL"
	.byte	0x7
	.uahalf	0x25b
	.uaword	0x13b
	.byte	0x4
	.byte	0x2
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"MODE"
	.byte	0x7
	.uahalf	0x25c
	.uaword	0x13b
	.byte	0x4
	.byte	0x2
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"SHBY"
	.byte	0x7
	.uahalf	0x25d
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PLLHV"
	.byte	0x7
	.uahalf	0x25e
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF18
	.byte	0x7
	.uahalf	0x25f
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"X1D"
	.byte	0x7
	.uahalf	0x260
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"X1DEN"
	.byte	0x7
	.uahalf	0x261
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF20
	.byte	0x7
	.uahalf	0x262
	.uaword	0x13b
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"OSCVAL"
	.byte	0x7
	.uahalf	0x263
	.uaword	0x13b
	.byte	0x4
	.byte	0x5
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF25
	.byte	0x7
	.uahalf	0x264
	.uaword	0x13b
	.byte	0x4
	.byte	0x2
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"APREN"
	.byte	0x7
	.uahalf	0x265
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF5
	.byte	0x7
	.uahalf	0x266
	.uaword	0x13b
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_OSCCON_Bits"
	.byte	0x7
	.uahalf	0x267
	.uaword	0x2517
	.uleb128 0xc
	.string	"_Ifx_SCU_OUT_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x26a
	.uaword	0x26c4
	.uleb128 0x9
	.string	"P0"
	.byte	0x7
	.uahalf	0x26c
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"P1"
	.byte	0x7
	.uahalf	0x26d
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF8
	.byte	0x7
	.uahalf	0x26e
	.uaword	0x13b
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_OUT_Bits"
	.byte	0x7
	.uahalf	0x26f
	.uaword	0x2674
	.uleb128 0xc
	.string	"_Ifx_SCU_OVCCON_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x272
	.uaword	0x27d8
	.uleb128 0x9
	.string	"CSEL0"
	.byte	0x7
	.uahalf	0x274
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"CSEL1"
	.byte	0x7
	.uahalf	0x275
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"CSEL2"
	.byte	0x7
	.uahalf	0x276
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF1
	.byte	0x7
	.uahalf	0x277
	.uaword	0x13b
	.byte	0x4
	.byte	0xd
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"OVSTRT"
	.byte	0x7
	.uahalf	0x278
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"OVSTP"
	.byte	0x7
	.uahalf	0x279
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"DCINVAL"
	.byte	0x7
	.uahalf	0x27a
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF26
	.byte	0x7
	.uahalf	0x27b
	.uaword	0x13b
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"OVCONF"
	.byte	0x7
	.uahalf	0x27c
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"POVCONF"
	.byte	0x7
	.uahalf	0x27d
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF3
	.byte	0x7
	.uahalf	0x27e
	.uaword	0x13b
	.byte	0x4
	.byte	0x6
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_OVCCON_Bits"
	.byte	0x7
	.uahalf	0x27f
	.uaword	0x26dd
	.uleb128 0xc
	.string	"_Ifx_SCU_OVCENABLE_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x282
	.uaword	0x2864
	.uleb128 0x9
	.string	"OVEN0"
	.byte	0x7
	.uahalf	0x284
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"OVEN1"
	.byte	0x7
	.uahalf	0x285
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"OVEN2"
	.byte	0x7
	.uahalf	0x286
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF1
	.byte	0x7
	.uahalf	0x287
	.uaword	0x13b
	.byte	0x4
	.byte	0x1d
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_OVCENABLE_Bits"
	.byte	0x7
	.uahalf	0x288
	.uaword	0x27f4
	.uleb128 0xc
	.string	"_Ifx_SCU_PDISC_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x28b
	.uaword	0x28db
	.uleb128 0x9
	.string	"PDIS0"
	.byte	0x7
	.uahalf	0x28d
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PDIS1"
	.byte	0x7
	.uahalf	0x28e
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF8
	.byte	0x7
	.uahalf	0x28f
	.uaword	0x13b
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_PDISC_Bits"
	.byte	0x7
	.uahalf	0x290
	.uaword	0x2883
	.uleb128 0xc
	.string	"_Ifx_SCU_PDR_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x293
	.uaword	0x296c
	.uleb128 0x9
	.string	"PD0"
	.byte	0x7
	.uahalf	0x295
	.uaword	0x13b
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PL0"
	.byte	0x7
	.uahalf	0x296
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PD1"
	.byte	0x7
	.uahalf	0x297
	.uaword	0x13b
	.byte	0x4
	.byte	0x3
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PL1"
	.byte	0x7
	.uahalf	0x298
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF15
	.byte	0x7
	.uahalf	0x299
	.uaword	0x13b
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_PDR_Bits"
	.byte	0x7
	.uahalf	0x29a
	.uaword	0x28f6
	.uleb128 0xc
	.string	"_Ifx_SCU_PDRR_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x29d
	.uaword	0x2a4c
	.uleb128 0x9
	.string	"PDR0"
	.byte	0x7
	.uahalf	0x29f
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PDR1"
	.byte	0x7
	.uahalf	0x2a0
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PDR2"
	.byte	0x7
	.uahalf	0x2a1
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PDR3"
	.byte	0x7
	.uahalf	0x2a2
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PDR4"
	.byte	0x7
	.uahalf	0x2a3
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PDR5"
	.byte	0x7
	.uahalf	0x2a4
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PDR6"
	.byte	0x7
	.uahalf	0x2a5
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PDR7"
	.byte	0x7
	.uahalf	0x2a6
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF15
	.byte	0x7
	.uahalf	0x2a7
	.uaword	0x13b
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_PDRR_Bits"
	.byte	0x7
	.uahalf	0x2a8
	.uaword	0x2985
	.uleb128 0xc
	.string	"_Ifx_SCU_PLLCON0_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x2ab
	.uaword	0x2ba3
	.uleb128 0x9
	.string	"VCOBYP"
	.byte	0x7
	.uahalf	0x2ad
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"VCOPWD"
	.byte	0x7
	.uahalf	0x2ae
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"MODEN"
	.byte	0x7
	.uahalf	0x2af
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF1
	.byte	0x7
	.uahalf	0x2b0
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF27
	.byte	0x7
	.uahalf	0x2b1
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF28
	.byte	0x7
	.uahalf	0x2b2
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF29
	.byte	0x7
	.uahalf	0x2b3
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF12
	.byte	0x7
	.uahalf	0x2b4
	.uaword	0x13b
	.byte	0x4
	.byte	0x2
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"NDIV"
	.byte	0x7
	.uahalf	0x2b5
	.uaword	0x13b
	.byte	0x4
	.byte	0x7
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PLLPWD"
	.byte	0x7
	.uahalf	0x2b6
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF24
	.byte	0x7
	.uahalf	0x2b7
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"RESLD"
	.byte	0x7
	.uahalf	0x2b8
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF26
	.byte	0x7
	.uahalf	0x2b9
	.uaword	0x13b
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PDIV"
	.byte	0x7
	.uahalf	0x2ba
	.uaword	0x13b
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF17
	.byte	0x7
	.uahalf	0x2bb
	.uaword	0x13b
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_PLLCON0_Bits"
	.byte	0x7
	.uahalf	0x2bc
	.uaword	0x2a66
	.uleb128 0xc
	.string	"_Ifx_SCU_PLLCON1_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x2bf
	.uaword	0x2c52
	.uleb128 0x9
	.string	"K2DIV"
	.byte	0x7
	.uahalf	0x2c1
	.uaword	0x13b
	.byte	0x4
	.byte	0x7
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF12
	.byte	0x7
	.uahalf	0x2c2
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"K3DIV"
	.byte	0x7
	.uahalf	0x2c3
	.uaword	0x13b
	.byte	0x4
	.byte	0x7
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF13
	.byte	0x7
	.uahalf	0x2c4
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"K1DIV"
	.byte	0x7
	.uahalf	0x2c5
	.uaword	0x13b
	.byte	0x4
	.byte	0x7
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF14
	.byte	0x7
	.uahalf	0x2c6
	.uaword	0x13b
	.byte	0x4
	.byte	0x9
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_PLLCON1_Bits"
	.byte	0x7
	.uahalf	0x2c7
	.uaword	0x2bc0
	.uleb128 0xc
	.string	"_Ifx_SCU_PLLCON2_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x2ca
	.uaword	0x2cb6
	.uleb128 0x9
	.string	"MODCFG"
	.byte	0x7
	.uahalf	0x2cc
	.uaword	0x13b
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF11
	.byte	0x7
	.uahalf	0x2cd
	.uaword	0x13b
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_PLLCON2_Bits"
	.byte	0x7
	.uahalf	0x2ce
	.uaword	0x2c6f
	.uleb128 0xc
	.string	"_Ifx_SCU_PLLERAYCON0_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x2d1
	.uaword	0x2e12
	.uleb128 0x9
	.string	"VCOBYP"
	.byte	0x7
	.uahalf	0x2d3
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"VCOPWD"
	.byte	0x7
	.uahalf	0x2d4
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF8
	.byte	0x7
	.uahalf	0x2d5
	.uaword	0x13b
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF27
	.byte	0x7
	.uahalf	0x2d6
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF28
	.byte	0x7
	.uahalf	0x2d7
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF29
	.byte	0x7
	.uahalf	0x2d8
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF12
	.byte	0x7
	.uahalf	0x2d9
	.uaword	0x13b
	.byte	0x4
	.byte	0x2
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"NDIV"
	.byte	0x7
	.uahalf	0x2da
	.uaword	0x13b
	.byte	0x4
	.byte	0x5
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF22
	.byte	0x7
	.uahalf	0x2db
	.uaword	0x13b
	.byte	0x4
	.byte	0x2
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PLLPWD"
	.byte	0x7
	.uahalf	0x2dc
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF24
	.byte	0x7
	.uahalf	0x2dd
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"RESLD"
	.byte	0x7
	.uahalf	0x2de
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF26
	.byte	0x7
	.uahalf	0x2df
	.uaword	0x13b
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PDIV"
	.byte	0x7
	.uahalf	0x2e0
	.uaword	0x13b
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF17
	.byte	0x7
	.uahalf	0x2e1
	.uaword	0x13b
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_PLLERAYCON0_Bits"
	.byte	0x7
	.uahalf	0x2e2
	.uaword	0x2cd3
	.uleb128 0xc
	.string	"_Ifx_SCU_PLLERAYCON1_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x2e5
	.uaword	0x2ec9
	.uleb128 0x9
	.string	"K2DIV"
	.byte	0x7
	.uahalf	0x2e7
	.uaword	0x13b
	.byte	0x4
	.byte	0x7
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF12
	.byte	0x7
	.uahalf	0x2e8
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"K3DIV"
	.byte	0x7
	.uahalf	0x2e9
	.uaword	0x13b
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF20
	.byte	0x7
	.uahalf	0x2ea
	.uaword	0x13b
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"K1DIV"
	.byte	0x7
	.uahalf	0x2eb
	.uaword	0x13b
	.byte	0x4
	.byte	0x7
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF14
	.byte	0x7
	.uahalf	0x2ec
	.uaword	0x13b
	.byte	0x4
	.byte	0x9
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_PLLERAYCON1_Bits"
	.byte	0x7
	.uahalf	0x2ed
	.uaword	0x2e33
	.uleb128 0xc
	.string	"_Ifx_SCU_PLLERAYSTAT_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x2f0
	.uaword	0x2f9f
	.uleb128 0x9
	.string	"VCOBYST"
	.byte	0x7
	.uahalf	0x2f2
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PWDSTAT"
	.byte	0x7
	.uahalf	0x2f3
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"VCOLOCK"
	.byte	0x7
	.uahalf	0x2f4
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"FINDIS"
	.byte	0x7
	.uahalf	0x2f5
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"K1RDY"
	.byte	0x7
	.uahalf	0x2f6
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"K2RDY"
	.byte	0x7
	.uahalf	0x2f7
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF6
	.byte	0x7
	.uahalf	0x2f8
	.uaword	0x13b
	.byte	0x4
	.byte	0x1a
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_PLLERAYSTAT_Bits"
	.byte	0x7
	.uahalf	0x2f9
	.uaword	0x2eea
	.uleb128 0xc
	.string	"_Ifx_SCU_PLLSTAT_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x2fc
	.uaword	0x3094
	.uleb128 0x9
	.string	"VCOBYST"
	.byte	0x7
	.uahalf	0x2fe
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF23
	.byte	0x7
	.uahalf	0x2ff
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"VCOLOCK"
	.byte	0x7
	.uahalf	0x300
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"FINDIS"
	.byte	0x7
	.uahalf	0x301
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"K1RDY"
	.byte	0x7
	.uahalf	0x302
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"K2RDY"
	.byte	0x7
	.uahalf	0x303
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF6
	.byte	0x7
	.uahalf	0x304
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"MODRUN"
	.byte	0x7
	.uahalf	0x305
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF15
	.byte	0x7
	.uahalf	0x306
	.uaword	0x13b
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_PLLSTAT_Bits"
	.byte	0x7
	.uahalf	0x307
	.uaword	0x2fc0
	.uleb128 0xc
	.string	"_Ifx_SCU_PMCSR_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x30a
	.uaword	0x3130
	.uleb128 0x9
	.string	"REQSLP"
	.byte	0x7
	.uahalf	0x30c
	.uaword	0x13b
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"SMUSLP"
	.byte	0x7
	.uahalf	0x30d
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF1
	.byte	0x7
	.uahalf	0x30e
	.uaword	0x13b
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PMST"
	.byte	0x7
	.uahalf	0x30f
	.uaword	0x13b
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF21
	.byte	0x7
	.uahalf	0x310
	.uaword	0x13b
	.byte	0x4
	.byte	0x15
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_PMCSR_Bits"
	.byte	0x7
	.uahalf	0x311
	.uaword	0x30b1
	.uleb128 0xc
	.string	"_Ifx_SCU_PMSWCR0_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x314
	.uaword	0x335b
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x7
	.uahalf	0x316
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF30
	.byte	0x7
	.uahalf	0x317
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF31
	.byte	0x7
	.uahalf	0x318
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF32
	.byte	0x7
	.uahalf	0x319
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"ESR0DFEN"
	.byte	0x7
	.uahalf	0x31a
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"ESR0EDCON"
	.byte	0x7
	.uahalf	0x31b
	.uaword	0x13b
	.byte	0x4
	.byte	0x2
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"ESR1DFEN"
	.byte	0x7
	.uahalf	0x31c
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"ESR1EDCON"
	.byte	0x7
	.uahalf	0x31d
	.uaword	0x13b
	.byte	0x4
	.byte	0x2
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PINADFEN"
	.byte	0x7
	.uahalf	0x31e
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PINAEDCON"
	.byte	0x7
	.uahalf	0x31f
	.uaword	0x13b
	.byte	0x4
	.byte	0x2
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PINBDFEN"
	.byte	0x7
	.uahalf	0x320
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PINBEDCON"
	.byte	0x7
	.uahalf	0x321
	.uaword	0x13b
	.byte	0x4
	.byte	0x2
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF11
	.byte	0x7
	.uahalf	0x322
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"STBYRAMSEL"
	.byte	0x7
	.uahalf	0x323
	.uaword	0x13b
	.byte	0x4
	.byte	0x2
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF26
	.byte	0x7
	.uahalf	0x324
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"WUTWKEN"
	.byte	0x7
	.uahalf	0x325
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF25
	.byte	0x7
	.uahalf	0x326
	.uaword	0x13b
	.byte	0x4
	.byte	0x2
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PORSTDF"
	.byte	0x7
	.uahalf	0x327
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF5
	.byte	0x7
	.uahalf	0x328
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"DCDCSYNC"
	.byte	0x7
	.uahalf	0x329
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF3
	.byte	0x7
	.uahalf	0x32a
	.uaword	0x13b
	.byte	0x4
	.byte	0x3
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF33
	.byte	0x7
	.uahalf	0x32b
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF19
	.byte	0x7
	.uahalf	0x32c
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"LCK"
	.byte	0x7
	.uahalf	0x32d
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_PMSWCR0_Bits"
	.byte	0x7
	.uahalf	0x32e
	.uaword	0x314b
	.uleb128 0xc
	.string	"_Ifx_SCU_PMSWCR1_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x331
	.uaword	0x3417
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x7
	.uahalf	0x333
	.uaword	0x13b
	.byte	0x4
	.byte	0xc
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"IRADIS"
	.byte	0x7
	.uahalf	0x334
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"reserved_13"
	.byte	0x7
	.uahalf	0x335
	.uaword	0x13b
	.byte	0x4
	.byte	0xe
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"STBYEVEN"
	.byte	0x7
	.uahalf	0x336
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"STBYEV"
	.byte	0x7
	.uahalf	0x337
	.uaword	0x13b
	.byte	0x4
	.byte	0x3
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF7
	.byte	0x7
	.uahalf	0x338
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_PMSWCR1_Bits"
	.byte	0x7
	.uahalf	0x339
	.uaword	0x3378
	.uleb128 0xc
	.string	"_Ifx_SCU_PMSWCR3_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x33c
	.uaword	0x34cc
	.uleb128 0x9
	.string	"WUTREL"
	.byte	0x7
	.uahalf	0x33e
	.uaword	0x13b
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF5
	.byte	0x7
	.uahalf	0x33f
	.uaword	0x13b
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"WUTDIV"
	.byte	0x7
	.uahalf	0x340
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"WUTEN"
	.byte	0x7
	.uahalf	0x341
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"WUTMODE"
	.byte	0x7
	.uahalf	0x342
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"LCK"
	.byte	0x7
	.uahalf	0x343
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_PMSWCR3_Bits"
	.byte	0x7
	.uahalf	0x344
	.uaword	0x3434
	.uleb128 0xc
	.string	"_Ifx_SCU_PMSWSTAT_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x347
	.uaword	0x370c
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x7
	.uahalf	0x349
	.uaword	0x13b
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"ESR1WKP"
	.byte	0x7
	.uahalf	0x34a
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"ESR1OVRUN"
	.byte	0x7
	.uahalf	0x34b
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PINAWKP"
	.byte	0x7
	.uahalf	0x34c
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PINAOVRUN"
	.byte	0x7
	.uahalf	0x34d
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PINBWKP"
	.byte	0x7
	.uahalf	0x34e
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PINBOVRUN"
	.byte	0x7
	.uahalf	0x34f
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF15
	.byte	0x7
	.uahalf	0x350
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PORSTDF"
	.byte	0x7
	.uahalf	0x351
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"HWCFGEVR"
	.byte	0x7
	.uahalf	0x352
	.uaword	0x13b
	.byte	0x4
	.byte	0x3
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"STBYRAM"
	.byte	0x7
	.uahalf	0x353
	.uaword	0x13b
	.byte	0x4
	.byte	0x2
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF13
	.byte	0x7
	.uahalf	0x354
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"WUTWKP"
	.byte	0x7
	.uahalf	0x355
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"WUTOVRUN"
	.byte	0x7
	.uahalf	0x356
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF16
	.byte	0x7
	.uahalf	0x357
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"WUTWKEN"
	.byte	0x7
	.uahalf	0x358
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF30
	.byte	0x7
	.uahalf	0x359
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF31
	.byte	0x7
	.uahalf	0x35a
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF32
	.byte	0x7
	.uahalf	0x35b
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF14
	.byte	0x7
	.uahalf	0x35c
	.uaword	0x13b
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF33
	.byte	0x7
	.uahalf	0x35d
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF17
	.byte	0x7
	.uahalf	0x35e
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"WUTEN"
	.byte	0x7
	.uahalf	0x35f
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"WUTMODE"
	.byte	0x7
	.uahalf	0x360
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"WUTRUN"
	.byte	0x7
	.uahalf	0x361
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_PMSWSTAT_Bits"
	.byte	0x7
	.uahalf	0x362
	.uaword	0x34e9
	.uleb128 0xc
	.string	"_Ifx_SCU_PMSWSTATCLR_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x365
	.uaword	0x3852
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x7
	.uahalf	0x367
	.uaword	0x13b
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"ESR1WKPCLR"
	.byte	0x7
	.uahalf	0x368
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"ESR1OVRUNCLR"
	.byte	0x7
	.uahalf	0x369
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PINAWKPCLR"
	.byte	0x7
	.uahalf	0x36a
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PINAOVRUNCLR"
	.byte	0x7
	.uahalf	0x36b
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PINBWKPCLR"
	.byte	0x7
	.uahalf	0x36c
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PINBOVRUNCLR"
	.byte	0x7
	.uahalf	0x36d
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF15
	.byte	0x7
	.uahalf	0x36e
	.uaword	0x13b
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"WUTWKPCLR"
	.byte	0x7
	.uahalf	0x36f
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"WUTOVRUNCLR"
	.byte	0x7
	.uahalf	0x370
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF16
	.byte	0x7
	.uahalf	0x371
	.uaword	0x13b
	.byte	0x4
	.byte	0xe
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_PMSWSTATCLR_Bits"
	.byte	0x7
	.uahalf	0x372
	.uaword	0x372a
	.uleb128 0xc
	.string	"_Ifx_SCU_PMSWUTCNT_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x375
	.uaword	0x38ce
	.uleb128 0x9
	.string	"WUTCNT"
	.byte	0x7
	.uahalf	0x377
	.uaword	0x13b
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF5
	.byte	0x7
	.uahalf	0x378
	.uaword	0x13b
	.byte	0x4
	.byte	0x7
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"VAL"
	.byte	0x7
	.uahalf	0x379
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_PMSWUTCNT_Bits"
	.byte	0x7
	.uahalf	0x37a
	.uaword	0x3873
	.uleb128 0xc
	.string	"_Ifx_SCU_RSTCON2_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x37d
	.uaword	0x39a5
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x7
	.uahalf	0x37f
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"CLRC"
	.byte	0x7
	.uahalf	0x380
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF8
	.byte	0x7
	.uahalf	0x381
	.uaword	0x13b
	.byte	0x4
	.byte	0xa
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"CSS0"
	.byte	0x7
	.uahalf	0x382
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"CSS1"
	.byte	0x7
	.uahalf	0x383
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"CSS2"
	.byte	0x7
	.uahalf	0x384
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF13
	.byte	0x7
	.uahalf	0x385
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"USRINFO"
	.byte	0x7
	.uahalf	0x386
	.uaword	0x13b
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_RSTCON2_Bits"
	.byte	0x7
	.uahalf	0x387
	.uaword	0x38ed
	.uleb128 0xc
	.string	"_Ifx_SCU_RSTCON_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x38a
	.uaword	0x3a87
	.uleb128 0x9
	.string	"ESR0"
	.byte	0x7
	.uahalf	0x38c
	.uaword	0x13b
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"ESR1"
	.byte	0x7
	.uahalf	0x38d
	.uaword	0x13b
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF4
	.byte	0x7
	.uahalf	0x38e
	.uaword	0x13b
	.byte	0x4
	.byte	0x2
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"SMU"
	.byte	0x7
	.uahalf	0x38f
	.uaword	0x13b
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"SW"
	.byte	0x7
	.uahalf	0x390
	.uaword	0x13b
	.byte	0x4
	.byte	0x2
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"STM0"
	.byte	0x7
	.uahalf	0x391
	.uaword	0x13b
	.byte	0x4
	.byte	0x2
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"STM1"
	.byte	0x7
	.uahalf	0x392
	.uaword	0x13b
	.byte	0x4
	.byte	0x2
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"STM2"
	.byte	0x7
	.uahalf	0x393
	.uaword	0x13b
	.byte	0x4
	.byte	0x2
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF11
	.byte	0x7
	.uahalf	0x394
	.uaword	0x13b
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_RSTCON_Bits"
	.byte	0x7
	.uahalf	0x395
	.uaword	0x39c2
	.uleb128 0xc
	.string	"_Ifx_SCU_RSTSTAT_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x398
	.uaword	0x3c51
	.uleb128 0x9
	.string	"ESR0"
	.byte	0x7
	.uahalf	0x39a
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"ESR1"
	.byte	0x7
	.uahalf	0x39b
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF8
	.byte	0x7
	.uahalf	0x39c
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"SMU"
	.byte	0x7
	.uahalf	0x39d
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"SW"
	.byte	0x7
	.uahalf	0x39e
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"STM0"
	.byte	0x7
	.uahalf	0x39f
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"STM1"
	.byte	0x7
	.uahalf	0x3a0
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"STM2"
	.byte	0x7
	.uahalf	0x3a1
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF15
	.byte	0x7
	.uahalf	0x3a2
	.uaword	0x13b
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PORST"
	.byte	0x7
	.uahalf	0x3a3
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF24
	.byte	0x7
	.uahalf	0x3a4
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"CB0"
	.byte	0x7
	.uahalf	0x3a5
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"CB1"
	.byte	0x7
	.uahalf	0x3a6
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"CB3"
	.byte	0x7
	.uahalf	0x3a7
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF25
	.byte	0x7
	.uahalf	0x3a8
	.uaword	0x13b
	.byte	0x4
	.byte	0x2
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"EVR13"
	.byte	0x7
	.uahalf	0x3a9
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"EVR33"
	.byte	0x7
	.uahalf	0x3aa
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"SWD"
	.byte	0x7
	.uahalf	0x3ab
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF3
	.byte	0x7
	.uahalf	0x3ac
	.uaword	0x13b
	.byte	0x4
	.byte	0x2
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"STBYR"
	.byte	0x7
	.uahalf	0x3ad
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"reserved_29"
	.byte	0x7
	.uahalf	0x3ae
	.uaword	0x13b
	.byte	0x4
	.byte	0x3
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_RSTSTAT_Bits"
	.byte	0x7
	.uahalf	0x3af
	.uaword	0x3aa3
	.uleb128 0xc
	.string	"_Ifx_SCU_SAFECON_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x3b2
	.uaword	0x3cb2
	.uleb128 0x9
	.string	"HBT"
	.byte	0x7
	.uahalf	0x3b4
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF23
	.byte	0x7
	.uahalf	0x3b5
	.uaword	0x13b
	.byte	0x4
	.byte	0x1f
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_SAFECON_Bits"
	.byte	0x7
	.uahalf	0x3b6
	.uaword	0x3c6e
	.uleb128 0xc
	.string	"_Ifx_SCU_STSTAT_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x3b9
	.uaword	0x3dca
	.uleb128 0x9
	.string	"HWCFG"
	.byte	0x7
	.uahalf	0x3bb
	.uaword	0x13b
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"FTM"
	.byte	0x7
	.uahalf	0x3bc
	.uaword	0x13b
	.byte	0x4
	.byte	0x7
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"MODE"
	.byte	0x7
	.uahalf	0x3bd
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"FCBAE"
	.byte	0x7
	.uahalf	0x3be
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"LUDIS"
	.byte	0x7
	.uahalf	0x3bf
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF16
	.byte	0x7
	.uahalf	0x3c0
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"TRSTL"
	.byte	0x7
	.uahalf	0x3c1
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"SPDEN"
	.byte	0x7
	.uahalf	0x3c2
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF25
	.byte	0x7
	.uahalf	0x3c3
	.uaword	0x13b
	.byte	0x4
	.byte	0x3
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"RAMINT"
	.byte	0x7
	.uahalf	0x3c4
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"reserved_25"
	.byte	0x7
	.uahalf	0x3c5
	.uaword	0x13b
	.byte	0x4
	.byte	0x7
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_STSTAT_Bits"
	.byte	0x7
	.uahalf	0x3c6
	.uaword	0x3ccf
	.uleb128 0xc
	.string	"_Ifx_SCU_SWRSTCON_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x3c9
	.uaword	0x3e42
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x7
	.uahalf	0x3cb
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"SWRSTREQ"
	.byte	0x7
	.uahalf	0x3cc
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF8
	.byte	0x7
	.uahalf	0x3cd
	.uaword	0x13b
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_SWRSTCON_Bits"
	.byte	0x7
	.uahalf	0x3ce
	.uaword	0x3de6
	.uleb128 0xc
	.string	"_Ifx_SCU_SYSCON_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x3d1
	.uaword	0x3f12
	.uleb128 0x9
	.string	"CCTRIG0"
	.byte	0x7
	.uahalf	0x3d3
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF23
	.byte	0x7
	.uahalf	0x3d4
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"RAMINTM"
	.byte	0x7
	.uahalf	0x3d5
	.uaword	0x13b
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"SETLUDIS"
	.byte	0x7
	.uahalf	0x3d6
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"reserved_5"
	.byte	0x7
	.uahalf	0x3d7
	.uaword	0x13b
	.byte	0x4
	.byte	0x3
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"DATM"
	.byte	0x7
	.uahalf	0x3d8
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF18
	.byte	0x7
	.uahalf	0x3d9
	.uaword	0x13b
	.byte	0x4
	.byte	0x17
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_SYSCON_Bits"
	.byte	0x7
	.uahalf	0x3da
	.uaword	0x3e60
	.uleb128 0xc
	.string	"_Ifx_SCU_TRAPCLR_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x3dd
	.uaword	0x3fa9
	.uleb128 0xa
	.uaword	.LASF34
	.byte	0x7
	.uahalf	0x3df
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF35
	.byte	0x7
	.uahalf	0x3e0
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF8
	.byte	0x7
	.uahalf	0x3e1
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"SMUT"
	.byte	0x7
	.uahalf	0x3e2
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF4
	.byte	0x7
	.uahalf	0x3e3
	.uaword	0x13b
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_TRAPCLR_Bits"
	.byte	0x7
	.uahalf	0x3e4
	.uaword	0x3f2e
	.uleb128 0xc
	.string	"_Ifx_SCU_TRAPDIS_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x3e7
	.uaword	0x4041
	.uleb128 0xa
	.uaword	.LASF34
	.byte	0x7
	.uahalf	0x3e9
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF35
	.byte	0x7
	.uahalf	0x3ea
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF8
	.byte	0x7
	.uahalf	0x3eb
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"SMUT"
	.byte	0x7
	.uahalf	0x3ec
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF4
	.byte	0x7
	.uahalf	0x3ed
	.uaword	0x13b
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_TRAPDIS_Bits"
	.byte	0x7
	.uahalf	0x3ee
	.uaword	0x3fc6
	.uleb128 0xc
	.string	"_Ifx_SCU_TRAPSET_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x3f1
	.uaword	0x40d9
	.uleb128 0xa
	.uaword	.LASF34
	.byte	0x7
	.uahalf	0x3f3
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF35
	.byte	0x7
	.uahalf	0x3f4
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF8
	.byte	0x7
	.uahalf	0x3f5
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"SMUT"
	.byte	0x7
	.uahalf	0x3f6
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF4
	.byte	0x7
	.uahalf	0x3f7
	.uaword	0x13b
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_TRAPSET_Bits"
	.byte	0x7
	.uahalf	0x3f8
	.uaword	0x405e
	.uleb128 0xc
	.string	"_Ifx_SCU_TRAPSTAT_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x3fb
	.uaword	0x4172
	.uleb128 0xa
	.uaword	.LASF34
	.byte	0x7
	.uahalf	0x3fd
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF35
	.byte	0x7
	.uahalf	0x3fe
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF8
	.byte	0x7
	.uahalf	0x3ff
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"SMUT"
	.byte	0x7
	.uahalf	0x400
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF4
	.byte	0x7
	.uahalf	0x401
	.uaword	0x13b
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_TRAPSTAT_Bits"
	.byte	0x7
	.uahalf	0x402
	.uaword	0x40f6
	.uleb128 0xc
	.string	"_Ifx_SCU_WDTCPU_CON0_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x405
	.uaword	0x41ff
	.uleb128 0x9
	.string	"ENDINIT"
	.byte	0x7
	.uahalf	0x407
	.uaword	0x41ff
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"LCK"
	.byte	0x7
	.uahalf	0x408
	.uaword	0x41ff
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PW"
	.byte	0x7
	.uahalf	0x409
	.uaword	0x41ff
	.byte	0x4
	.byte	0xe
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"REL"
	.byte	0x7
	.uahalf	0x40a
	.uaword	0x41ff
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xd
	.uaword	0x13b
	.uleb128 0xb
	.string	"Ifx_SCU_WDTCPU_CON0_Bits"
	.byte	0x7
	.uahalf	0x40b
	.uaword	0x4190
	.uleb128 0xc
	.string	"_Ifx_SCU_WDTCPU_CON1_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x40e
	.uaword	0x42fc
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x7
	.uahalf	0x410
	.uaword	0x13b
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"IR0"
	.byte	0x7
	.uahalf	0x411
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"DR"
	.byte	0x7
	.uahalf	0x412
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF4
	.byte	0x7
	.uahalf	0x413
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"IR1"
	.byte	0x7
	.uahalf	0x414
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"UR"
	.byte	0x7
	.uahalf	0x415
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PAR"
	.byte	0x7
	.uahalf	0x416
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"TCR"
	.byte	0x7
	.uahalf	0x417
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"TCTR"
	.byte	0x7
	.uahalf	0x418
	.uaword	0x13b
	.byte	0x4
	.byte	0x7
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF11
	.byte	0x7
	.uahalf	0x419
	.uaword	0x13b
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_WDTCPU_CON1_Bits"
	.byte	0x7
	.uahalf	0x41a
	.uaword	0x4225
	.uleb128 0xc
	.string	"_Ifx_SCU_WDTCPU_SR_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x41d
	.uaword	0x4400
	.uleb128 0x9
	.string	"AE"
	.byte	0x7
	.uahalf	0x41f
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"OE"
	.byte	0x7
	.uahalf	0x420
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"IS0"
	.byte	0x7
	.uahalf	0x421
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"DS"
	.byte	0x7
	.uahalf	0x422
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"TO"
	.byte	0x7
	.uahalf	0x423
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"IS1"
	.byte	0x7
	.uahalf	0x424
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"US"
	.byte	0x7
	.uahalf	0x425
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PAS"
	.byte	0x7
	.uahalf	0x426
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"TCS"
	.byte	0x7
	.uahalf	0x427
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"TCT"
	.byte	0x7
	.uahalf	0x428
	.uaword	0x13b
	.byte	0x4
	.byte	0x7
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"TIM"
	.byte	0x7
	.uahalf	0x429
	.uaword	0x13b
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_WDTCPU_SR_Bits"
	.byte	0x7
	.uahalf	0x42a
	.uaword	0x431d
	.uleb128 0xc
	.string	"_Ifx_SCU_WDTS_CON0_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x42d
	.uaword	0x448c
	.uleb128 0x9
	.string	"ENDINIT"
	.byte	0x7
	.uahalf	0x42f
	.uaword	0x41ff
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"LCK"
	.byte	0x7
	.uahalf	0x430
	.uaword	0x41ff
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PW"
	.byte	0x7
	.uahalf	0x431
	.uaword	0x41ff
	.byte	0x4
	.byte	0xe
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"REL"
	.byte	0x7
	.uahalf	0x432
	.uaword	0x41ff
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_WDTS_CON0_Bits"
	.byte	0x7
	.uahalf	0x433
	.uaword	0x441f
	.uleb128 0xc
	.string	"_Ifx_SCU_WDTS_CON1_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x436
	.uaword	0x4595
	.uleb128 0x9
	.string	"CLRIRF"
	.byte	0x7
	.uahalf	0x438
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF23
	.byte	0x7
	.uahalf	0x439
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"IR0"
	.byte	0x7
	.uahalf	0x43a
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"DR"
	.byte	0x7
	.uahalf	0x43b
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF4
	.byte	0x7
	.uahalf	0x43c
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"IR1"
	.byte	0x7
	.uahalf	0x43d
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"UR"
	.byte	0x7
	.uahalf	0x43e
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PAR"
	.byte	0x7
	.uahalf	0x43f
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"TCR"
	.byte	0x7
	.uahalf	0x440
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"TCTR"
	.byte	0x7
	.uahalf	0x441
	.uaword	0x13b
	.byte	0x4
	.byte	0x7
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF11
	.byte	0x7
	.uahalf	0x442
	.uaword	0x13b
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_WDTS_CON1_Bits"
	.byte	0x7
	.uahalf	0x443
	.uaword	0x44ab
	.uleb128 0xc
	.string	"_Ifx_SCU_WDTS_SR_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x446
	.uaword	0x4695
	.uleb128 0x9
	.string	"AE"
	.byte	0x7
	.uahalf	0x448
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"OE"
	.byte	0x7
	.uahalf	0x449
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"IS0"
	.byte	0x7
	.uahalf	0x44a
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"DS"
	.byte	0x7
	.uahalf	0x44b
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"TO"
	.byte	0x7
	.uahalf	0x44c
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"IS1"
	.byte	0x7
	.uahalf	0x44d
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"US"
	.byte	0x7
	.uahalf	0x44e
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PAS"
	.byte	0x7
	.uahalf	0x44f
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"TCS"
	.byte	0x7
	.uahalf	0x450
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"TCT"
	.byte	0x7
	.uahalf	0x451
	.uaword	0x13b
	.byte	0x4
	.byte	0x7
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"TIM"
	.byte	0x7
	.uahalf	0x452
	.uaword	0x13b
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_WDTS_SR_Bits"
	.byte	0x7
	.uahalf	0x453
	.uaword	0x45b4
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x45b
	.uaword	0x46da
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x45d
	.uaword	0x13b
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x45e
	.uaword	0x134
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x45f
	.uaword	0x469
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_ACCEN0"
	.byte	0x7
	.uahalf	0x460
	.uaword	0x46b2
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x463
	.uaword	0x4719
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x465
	.uaword	0x13b
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x466
	.uaword	0x134
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x467
	.uaword	0x4b3
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_ACCEN1"
	.byte	0x7
	.uahalf	0x468
	.uaword	0x46f1
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x46b
	.uaword	0x4758
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x46d
	.uaword	0x13b
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x46e
	.uaword	0x134
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x46f
	.uaword	0x53d
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_ARSTDIS"
	.byte	0x7
	.uahalf	0x470
	.uaword	0x4730
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x473
	.uaword	0x4798
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x475
	.uaword	0x13b
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x476
	.uaword	0x134
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x477
	.uaword	0x65a
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_CCUCON0"
	.byte	0x7
	.uahalf	0x478
	.uaword	0x4770
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x47b
	.uaword	0x47d8
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x47d
	.uaword	0x13b
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x47e
	.uaword	0x134
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x47f
	.uaword	0x75e
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_CCUCON1"
	.byte	0x7
	.uahalf	0x480
	.uaword	0x47b0
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x483
	.uaword	0x4818
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x485
	.uaword	0x13b
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x486
	.uaword	0x134
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x487
	.uaword	0x7df
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_CCUCON2"
	.byte	0x7
	.uahalf	0x488
	.uaword	0x47f0
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x48b
	.uaword	0x4858
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x48d
	.uaword	0x13b
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x48e
	.uaword	0x134
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x48f
	.uaword	0x8cc
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_CCUCON3"
	.byte	0x7
	.uahalf	0x490
	.uaword	0x4830
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x493
	.uaword	0x4898
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x495
	.uaword	0x13b
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x496
	.uaword	0x134
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x497
	.uaword	0x9b1
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_CCUCON4"
	.byte	0x7
	.uahalf	0x498
	.uaword	0x4870
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x49b
	.uaword	0x48d8
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x49d
	.uaword	0x13b
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x49e
	.uaword	0x134
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x49f
	.uaword	0xa32
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_CCUCON5"
	.byte	0x7
	.uahalf	0x4a0
	.uaword	0x48b0
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x4a3
	.uaword	0x4918
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x4a5
	.uaword	0x13b
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x4a6
	.uaword	0x134
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x4a7
	.uaword	0xa93
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_CCUCON6"
	.byte	0x7
	.uahalf	0x4a8
	.uaword	0x48f0
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x4ab
	.uaword	0x4958
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x4ad
	.uaword	0x13b
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x4ae
	.uaword	0x134
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x4af
	.uaword	0xb6e
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_CHIPID"
	.byte	0x7
	.uahalf	0x4b0
	.uaword	0x4930
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x4b3
	.uaword	0x4997
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x4b5
	.uaword	0x13b
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x4b6
	.uaword	0x134
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x4b7
	.uaword	0xc0f
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_DTSCON"
	.byte	0x7
	.uahalf	0x4b8
	.uaword	0x496f
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x4bb
	.uaword	0x49d6
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x4bd
	.uaword	0x13b
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x4be
	.uaword	0x134
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x4bf
	.uaword	0xcc3
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_DTSLIM"
	.byte	0x7
	.uahalf	0x4c0
	.uaword	0x49ae
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x4c3
	.uaword	0x4a15
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x4c5
	.uaword	0x13b
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x4c6
	.uaword	0x134
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x4c7
	.uaword	0xd56
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_DTSSTAT"
	.byte	0x7
	.uahalf	0x4c8
	.uaword	0x49ed
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x4cb
	.uaword	0x4a55
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x4cd
	.uaword	0x13b
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x4ce
	.uaword	0x134
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x4cf
	.uaword	0xec1
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_EICR"
	.byte	0x7
	.uahalf	0x4d0
	.uaword	0x4a2d
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x4d3
	.uaword	0x4a92
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x4d5
	.uaword	0x13b
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x4d6
	.uaword	0x134
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x4d7
	.uaword	0xfa5
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_EIFR"
	.byte	0x7
	.uahalf	0x4d8
	.uaword	0x4a6a
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x4db
	.uaword	0x4acf
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x4dd
	.uaword	0x13b
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x4de
	.uaword	0x134
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x4df
	.uaword	0x10ad
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_EMSR"
	.byte	0x7
	.uahalf	0x4e0
	.uaword	0x4aa7
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x4e3
	.uaword	0x4b0c
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x4e5
	.uaword	0x13b
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x4e6
	.uaword	0x134
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x4e7
	.uaword	0x111e
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_ESRCFG"
	.byte	0x7
	.uahalf	0x4e8
	.uaword	0x4ae4
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x4eb
	.uaword	0x4b4b
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x4ed
	.uaword	0x13b
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x4ee
	.uaword	0x134
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x4ef
	.uaword	0x1190
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_ESROCFG"
	.byte	0x7
	.uahalf	0x4f0
	.uaword	0x4b23
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x4f3
	.uaword	0x4b8b
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x4f5
	.uaword	0x13b
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x4f6
	.uaword	0x134
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x4f7
	.uaword	0x1234
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_EVR13CON"
	.byte	0x7
	.uahalf	0x4f8
	.uaword	0x4b63
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x4fb
	.uaword	0x4bcc
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x4fd
	.uaword	0x13b
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x4fe
	.uaword	0x134
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x4ff
	.uaword	0x12d6
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_EVRADCSTAT"
	.byte	0x7
	.uahalf	0x500
	.uaword	0x4ba4
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x503
	.uaword	0x4c0f
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x505
	.uaword	0x13b
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x506
	.uaword	0x134
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x507
	.uaword	0x13e5
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_EVRMONCTRL"
	.byte	0x7
	.uahalf	0x508
	.uaword	0x4be7
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x50b
	.uaword	0x4c52
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x50d
	.uaword	0x13b
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x50e
	.uaword	0x134
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x50f
	.uaword	0x149e
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_EVROVMON"
	.byte	0x7
	.uahalf	0x510
	.uaword	0x4c2a
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x513
	.uaword	0x4c93
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x515
	.uaword	0x13b
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x516
	.uaword	0x134
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x517
	.uaword	0x1546
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_EVRRSTCON"
	.byte	0x7
	.uahalf	0x518
	.uaword	0x4c6b
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x51b
	.uaword	0x4cd5
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x51d
	.uaword	0x13b
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x51e
	.uaword	0x134
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x51f
	.uaword	0x15e7
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_EVRSDCOEFF2"
	.byte	0x7
	.uahalf	0x520
	.uaword	0x4cad
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x523
	.uaword	0x4d19
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x525
	.uaword	0x13b
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x526
	.uaword	0x134
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x527
	.uaword	0x16b8
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_EVRSDCTRL1"
	.byte	0x7
	.uahalf	0x528
	.uaword	0x4cf1
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x52b
	.uaword	0x4d5c
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x52d
	.uaword	0x13b
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x52e
	.uaword	0x134
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x52f
	.uaword	0x17f2
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_EVRSDCTRL2"
	.byte	0x7
	.uahalf	0x530
	.uaword	0x4d34
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x533
	.uaword	0x4d9f
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x535
	.uaword	0x13b
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x536
	.uaword	0x134
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x537
	.uaword	0x18db
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_EVRSDCTRL3"
	.byte	0x7
	.uahalf	0x538
	.uaword	0x4d77
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x53b
	.uaword	0x4de2
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x53d
	.uaword	0x13b
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x53e
	.uaword	0x134
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x53f
	.uaword	0x1a00
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_EVRSTAT"
	.byte	0x7
	.uahalf	0x540
	.uaword	0x4dba
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x543
	.uaword	0x4e22
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x545
	.uaword	0x13b
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x546
	.uaword	0x134
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x547
	.uaword	0x1ab6
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_EVRUVMON"
	.byte	0x7
	.uahalf	0x548
	.uaword	0x4dfa
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x54b
	.uaword	0x4e63
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x54d
	.uaword	0x13b
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x54e
	.uaword	0x134
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x54f
	.uaword	0x1b99
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_EXTCON"
	.byte	0x7
	.uahalf	0x550
	.uaword	0x4e3b
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x553
	.uaword	0x4ea2
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x555
	.uaword	0x13b
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x556
	.uaword	0x134
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x557
	.uaword	0x1c43
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_FDR"
	.byte	0x7
	.uahalf	0x558
	.uaword	0x4e7a
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x55b
	.uaword	0x4ede
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x55d
	.uaword	0x13b
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x55e
	.uaword	0x134
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x55f
	.uaword	0x1dbc
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_FMR"
	.byte	0x7
	.uahalf	0x560
	.uaword	0x4eb6
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x563
	.uaword	0x4f1a
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x565
	.uaword	0x13b
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x566
	.uaword	0x134
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x567
	.uaword	0x1e33
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_ID"
	.byte	0x7
	.uahalf	0x568
	.uaword	0x4ef2
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x56b
	.uaword	0x4f55
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x56d
	.uaword	0x13b
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x56e
	.uaword	0x134
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x56f
	.uaword	0x202a
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_IGCR"
	.byte	0x7
	.uahalf	0x570
	.uaword	0x4f2d
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x573
	.uaword	0x4f92
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x575
	.uaword	0x13b
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x576
	.uaword	0x134
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x577
	.uaword	0x2093
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_IN"
	.byte	0x7
	.uahalf	0x578
	.uaword	0x4f6a
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x57b
	.uaword	0x4fcd
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x57d
	.uaword	0x13b
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x57e
	.uaword	0x134
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x57f
	.uaword	0x2122
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_IOCR"
	.byte	0x7
	.uahalf	0x580
	.uaword	0x4fa5
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x583
	.uaword	0x500a
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x585
	.uaword	0x13b
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x586
	.uaword	0x134
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x587
	.uaword	0x21b7
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_LBISTCTRL0"
	.byte	0x7
	.uahalf	0x588
	.uaword	0x4fe2
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x58b
	.uaword	0x504d
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x58d
	.uaword	0x13b
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x58e
	.uaword	0x134
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x58f
	.uaword	0x2261
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_LBISTCTRL1"
	.byte	0x7
	.uahalf	0x590
	.uaword	0x5025
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x593
	.uaword	0x5090
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x595
	.uaword	0x13b
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x596
	.uaword	0x134
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x597
	.uaword	0x22e6
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_LBISTCTRL2"
	.byte	0x7
	.uahalf	0x598
	.uaword	0x5068
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x59b
	.uaword	0x50d3
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x59d
	.uaword	0x13b
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x59e
	.uaword	0x134
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x59f
	.uaword	0x236e
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_LCLCON0"
	.byte	0x7
	.uahalf	0x5a0
	.uaword	0x50ab
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x5a3
	.uaword	0x5113
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x5a5
	.uaword	0x13b
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x5a6
	.uaword	0x134
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x5a7
	.uaword	0x23e5
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_LCLTEST"
	.byte	0x7
	.uahalf	0x5a8
	.uaword	0x50eb
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x5ab
	.uaword	0x5153
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x5ad
	.uaword	0x13b
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x5ae
	.uaword	0x134
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x5af
	.uaword	0x2459
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_MANID"
	.byte	0x7
	.uahalf	0x5b0
	.uaword	0x512b
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x5b3
	.uaword	0x5191
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x5b5
	.uaword	0x13b
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x5b6
	.uaword	0x134
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x5b7
	.uaword	0x24fe
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_OMR"
	.byte	0x7
	.uahalf	0x5b8
	.uaword	0x5169
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x5bb
	.uaword	0x51cd
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x5bd
	.uaword	0x13b
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x5be
	.uaword	0x134
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x5bf
	.uaword	0x2658
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_OSCCON"
	.byte	0x7
	.uahalf	0x5c0
	.uaword	0x51a5
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x5c3
	.uaword	0x520c
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x5c5
	.uaword	0x13b
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x5c6
	.uaword	0x134
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x5c7
	.uaword	0x26c4
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_OUT"
	.byte	0x7
	.uahalf	0x5c8
	.uaword	0x51e4
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x5cb
	.uaword	0x5248
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x5cd
	.uaword	0x13b
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x5ce
	.uaword	0x134
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x5cf
	.uaword	0x27d8
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_OVCCON"
	.byte	0x7
	.uahalf	0x5d0
	.uaword	0x5220
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x5d3
	.uaword	0x5287
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x5d5
	.uaword	0x13b
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x5d6
	.uaword	0x134
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x5d7
	.uaword	0x2864
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_OVCENABLE"
	.byte	0x7
	.uahalf	0x5d8
	.uaword	0x525f
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x5db
	.uaword	0x52c9
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x5dd
	.uaword	0x13b
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x5de
	.uaword	0x134
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x5df
	.uaword	0x28db
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_PDISC"
	.byte	0x7
	.uahalf	0x5e0
	.uaword	0x52a1
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x5e3
	.uaword	0x5307
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x5e5
	.uaword	0x13b
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x5e6
	.uaword	0x134
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x5e7
	.uaword	0x296c
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_PDR"
	.byte	0x7
	.uahalf	0x5e8
	.uaword	0x52df
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x5eb
	.uaword	0x5343
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x5ed
	.uaword	0x13b
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x5ee
	.uaword	0x134
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x5ef
	.uaword	0x2a4c
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_PDRR"
	.byte	0x7
	.uahalf	0x5f0
	.uaword	0x531b
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x5f3
	.uaword	0x5380
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x5f5
	.uaword	0x13b
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x5f6
	.uaword	0x134
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x5f7
	.uaword	0x2ba3
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_PLLCON0"
	.byte	0x7
	.uahalf	0x5f8
	.uaword	0x5358
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x5fb
	.uaword	0x53c0
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x5fd
	.uaword	0x13b
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x5fe
	.uaword	0x134
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x5ff
	.uaword	0x2c52
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_PLLCON1"
	.byte	0x7
	.uahalf	0x600
	.uaword	0x5398
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x603
	.uaword	0x5400
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x605
	.uaword	0x13b
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x606
	.uaword	0x134
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x607
	.uaword	0x2cb6
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_PLLCON2"
	.byte	0x7
	.uahalf	0x608
	.uaword	0x53d8
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x60b
	.uaword	0x5440
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x60d
	.uaword	0x13b
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x60e
	.uaword	0x134
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x60f
	.uaword	0x2e12
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_PLLERAYCON0"
	.byte	0x7
	.uahalf	0x610
	.uaword	0x5418
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x613
	.uaword	0x5484
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x615
	.uaword	0x13b
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x616
	.uaword	0x134
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x617
	.uaword	0x2ec9
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_PLLERAYCON1"
	.byte	0x7
	.uahalf	0x618
	.uaword	0x545c
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x61b
	.uaword	0x54c8
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x61d
	.uaword	0x13b
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x61e
	.uaword	0x134
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x61f
	.uaword	0x2f9f
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_PLLERAYSTAT"
	.byte	0x7
	.uahalf	0x620
	.uaword	0x54a0
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x623
	.uaword	0x550c
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x625
	.uaword	0x13b
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x626
	.uaword	0x134
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x627
	.uaword	0x3094
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_PLLSTAT"
	.byte	0x7
	.uahalf	0x628
	.uaword	0x54e4
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x62b
	.uaword	0x554c
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x62d
	.uaword	0x13b
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x62e
	.uaword	0x134
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x62f
	.uaword	0x3130
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_PMCSR"
	.byte	0x7
	.uahalf	0x630
	.uaword	0x5524
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x633
	.uaword	0x558a
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x635
	.uaword	0x13b
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x636
	.uaword	0x134
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x637
	.uaword	0x335b
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_PMSWCR0"
	.byte	0x7
	.uahalf	0x638
	.uaword	0x5562
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x63b
	.uaword	0x55ca
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x63d
	.uaword	0x13b
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x63e
	.uaword	0x134
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x63f
	.uaword	0x3417
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_PMSWCR1"
	.byte	0x7
	.uahalf	0x640
	.uaword	0x55a2
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x643
	.uaword	0x560a
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x645
	.uaword	0x13b
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x646
	.uaword	0x134
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x647
	.uaword	0x34cc
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_PMSWCR3"
	.byte	0x7
	.uahalf	0x648
	.uaword	0x55e2
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x64b
	.uaword	0x564a
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x64d
	.uaword	0x13b
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x64e
	.uaword	0x134
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x64f
	.uaword	0x370c
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_PMSWSTAT"
	.byte	0x7
	.uahalf	0x650
	.uaword	0x5622
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x653
	.uaword	0x568b
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x655
	.uaword	0x13b
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x656
	.uaword	0x134
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x657
	.uaword	0x3852
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_PMSWSTATCLR"
	.byte	0x7
	.uahalf	0x658
	.uaword	0x5663
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x65b
	.uaword	0x56cf
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x65d
	.uaword	0x13b
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x65e
	.uaword	0x134
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x65f
	.uaword	0x38ce
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_PMSWUTCNT"
	.byte	0x7
	.uahalf	0x660
	.uaword	0x56a7
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x663
	.uaword	0x5711
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x665
	.uaword	0x13b
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x666
	.uaword	0x134
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x667
	.uaword	0x3a87
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_RSTCON"
	.byte	0x7
	.uahalf	0x668
	.uaword	0x56e9
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x66b
	.uaword	0x5750
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x66d
	.uaword	0x13b
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x66e
	.uaword	0x134
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x66f
	.uaword	0x39a5
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_RSTCON2"
	.byte	0x7
	.uahalf	0x670
	.uaword	0x5728
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x673
	.uaword	0x5790
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x675
	.uaword	0x13b
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x676
	.uaword	0x134
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x677
	.uaword	0x3c51
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_RSTSTAT"
	.byte	0x7
	.uahalf	0x678
	.uaword	0x5768
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x67b
	.uaword	0x57d0
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x67d
	.uaword	0x13b
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x67e
	.uaword	0x134
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x67f
	.uaword	0x3cb2
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_SAFECON"
	.byte	0x7
	.uahalf	0x680
	.uaword	0x57a8
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x683
	.uaword	0x5810
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x685
	.uaword	0x13b
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x686
	.uaword	0x134
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x687
	.uaword	0x3dca
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_STSTAT"
	.byte	0x7
	.uahalf	0x688
	.uaword	0x57e8
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x68b
	.uaword	0x584f
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x68d
	.uaword	0x13b
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x68e
	.uaword	0x134
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x68f
	.uaword	0x3e42
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_SWRSTCON"
	.byte	0x7
	.uahalf	0x690
	.uaword	0x5827
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x693
	.uaword	0x5890
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x695
	.uaword	0x13b
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x696
	.uaword	0x134
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x697
	.uaword	0x3f12
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_SYSCON"
	.byte	0x7
	.uahalf	0x698
	.uaword	0x5868
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x69b
	.uaword	0x58cf
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x69d
	.uaword	0x13b
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x69e
	.uaword	0x134
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x69f
	.uaword	0x3fa9
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_TRAPCLR"
	.byte	0x7
	.uahalf	0x6a0
	.uaword	0x58a7
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x6a3
	.uaword	0x590f
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x6a5
	.uaword	0x13b
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x6a6
	.uaword	0x134
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x6a7
	.uaword	0x4041
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_TRAPDIS"
	.byte	0x7
	.uahalf	0x6a8
	.uaword	0x58e7
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x6ab
	.uaword	0x594f
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x6ad
	.uaword	0x13b
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x6ae
	.uaword	0x134
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x6af
	.uaword	0x40d9
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_TRAPSET"
	.byte	0x7
	.uahalf	0x6b0
	.uaword	0x5927
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x6b3
	.uaword	0x598f
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x6b5
	.uaword	0x13b
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x6b6
	.uaword	0x134
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x6b7
	.uaword	0x4172
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_TRAPSTAT"
	.byte	0x7
	.uahalf	0x6b8
	.uaword	0x5967
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x6bb
	.uaword	0x59d0
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x6bd
	.uaword	0x13b
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x6be
	.uaword	0x134
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x6bf
	.uaword	0x4204
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_WDTCPU_CON0"
	.byte	0x7
	.uahalf	0x6c0
	.uaword	0x59a8
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x6c3
	.uaword	0x5a14
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x6c5
	.uaword	0x13b
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x6c6
	.uaword	0x134
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x6c7
	.uaword	0x42fc
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_WDTCPU_CON1"
	.byte	0x7
	.uahalf	0x6c8
	.uaword	0x59ec
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x6cb
	.uaword	0x5a58
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x6cd
	.uaword	0x13b
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x6ce
	.uaword	0x134
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x6cf
	.uaword	0x4400
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_WDTCPU_SR"
	.byte	0x7
	.uahalf	0x6d0
	.uaword	0x5a30
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x6d3
	.uaword	0x5a9a
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x6d5
	.uaword	0x13b
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x6d6
	.uaword	0x134
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x6d7
	.uaword	0x448c
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_WDTS_CON0"
	.byte	0x7
	.uahalf	0x6d8
	.uaword	0x5a72
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x6db
	.uaword	0x5adc
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x6dd
	.uaword	0x13b
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x6de
	.uaword	0x134
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x6df
	.uaword	0x4595
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_WDTS_CON1"
	.byte	0x7
	.uahalf	0x6e0
	.uaword	0x5ab4
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x6e3
	.uaword	0x5b1e
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x6e5
	.uaword	0x13b
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x6e6
	.uaword	0x134
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x6e7
	.uaword	0x4695
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_WDTS_SR"
	.byte	0x7
	.uahalf	0x6e8
	.uaword	0x5af6
	.uleb128 0xc
	.string	"_Ifx_SCU_WDTCPU"
	.byte	0xc
	.byte	0x7
	.uahalf	0x6f3
	.uaword	0x5b7e
	.uleb128 0x10
	.string	"CON0"
	.byte	0x7
	.uahalf	0x6f5
	.uaword	0x59d0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.string	"CON1"
	.byte	0x7
	.uahalf	0x6f6
	.uaword	0x5a14
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x10
	.string	"SR"
	.byte	0x7
	.uahalf	0x6f7
	.uaword	0x5a58
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0xc
	.string	"_Ifx_SCU_WDTS"
	.byte	0xc
	.byte	0x7
	.uahalf	0x6fb
	.uaword	0x5bc4
	.uleb128 0x10
	.string	"CON0"
	.byte	0x7
	.uahalf	0x6fd
	.uaword	0x5a9a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.string	"CON1"
	.byte	0x7
	.uahalf	0x6fe
	.uaword	0x5adc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x10
	.string	"SR"
	.byte	0x7
	.uahalf	0x6ff
	.uaword	0x5b1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0xd
	.uaword	0x5b7e
	.uleb128 0x11
	.string	"_Ifx_SCU"
	.uahalf	0x400
	.byte	0x7
	.uahalf	0x70d
	.uaword	0x63f5
	.uleb128 0x12
	.uaword	.LASF0
	.byte	0x7
	.uahalf	0x70f
	.uaword	0x63f5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.string	"ID"
	.byte	0x7
	.uahalf	0x710
	.uaword	0x4f1a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x10
	.string	"reserved_C"
	.byte	0x7
	.uahalf	0x711
	.uaword	0x6405
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x10
	.string	"OSCCON"
	.byte	0x7
	.uahalf	0x712
	.uaword	0x51cd
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x10
	.string	"PLLSTAT"
	.byte	0x7
	.uahalf	0x713
	.uaword	0x550c
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x10
	.string	"PLLCON0"
	.byte	0x7
	.uahalf	0x714
	.uaword	0x5380
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x10
	.string	"PLLCON1"
	.byte	0x7
	.uahalf	0x715
	.uaword	0x53c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x10
	.string	"PLLCON2"
	.byte	0x7
	.uahalf	0x716
	.uaword	0x5400
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x10
	.string	"PLLERAYSTAT"
	.byte	0x7
	.uahalf	0x717
	.uaword	0x54c8
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x10
	.string	"PLLERAYCON0"
	.byte	0x7
	.uahalf	0x718
	.uaword	0x5440
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x10
	.string	"PLLERAYCON1"
	.byte	0x7
	.uahalf	0x719
	.uaword	0x5484
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x10
	.string	"CCUCON0"
	.byte	0x7
	.uahalf	0x71a
	.uaword	0x4798
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x10
	.string	"CCUCON1"
	.byte	0x7
	.uahalf	0x71b
	.uaword	0x47d8
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x10
	.string	"FDR"
	.byte	0x7
	.uahalf	0x71c
	.uaword	0x4ea2
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x10
	.string	"EXTCON"
	.byte	0x7
	.uahalf	0x71d
	.uaword	0x4e63
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x10
	.string	"CCUCON2"
	.byte	0x7
	.uahalf	0x71e
	.uaword	0x4818
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x10
	.string	"CCUCON3"
	.byte	0x7
	.uahalf	0x71f
	.uaword	0x4858
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x10
	.string	"CCUCON4"
	.byte	0x7
	.uahalf	0x720
	.uaword	0x4898
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x10
	.string	"CCUCON5"
	.byte	0x7
	.uahalf	0x721
	.uaword	0x48d8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x10
	.string	"RSTSTAT"
	.byte	0x7
	.uahalf	0x722
	.uaword	0x5790
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x10
	.string	"reserved_54"
	.byte	0x7
	.uahalf	0x723
	.uaword	0x6405
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x10
	.string	"RSTCON"
	.byte	0x7
	.uahalf	0x724
	.uaword	0x5711
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x10
	.string	"ARSTDIS"
	.byte	0x7
	.uahalf	0x725
	.uaword	0x4758
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x10
	.string	"SWRSTCON"
	.byte	0x7
	.uahalf	0x726
	.uaword	0x584f
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x10
	.string	"RSTCON2"
	.byte	0x7
	.uahalf	0x727
	.uaword	0x5750
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x10
	.string	"reserved_68"
	.byte	0x7
	.uahalf	0x728
	.uaword	0x6405
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x10
	.string	"EVRRSTCON"
	.byte	0x7
	.uahalf	0x729
	.uaword	0x4c93
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x10
	.string	"ESRCFG"
	.byte	0x7
	.uahalf	0x72a
	.uaword	0x6415
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x10
	.string	"ESROCFG"
	.byte	0x7
	.uahalf	0x72b
	.uaword	0x4b4b
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x10
	.string	"SYSCON"
	.byte	0x7
	.uahalf	0x72c
	.uaword	0x5890
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x10
	.string	"CCUCON6"
	.byte	0x7
	.uahalf	0x72d
	.uaword	0x4918
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x10
	.string	"reserved_84"
	.byte	0x7
	.uahalf	0x72e
	.uaword	0x6425
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x10
	.string	"PDR"
	.byte	0x7
	.uahalf	0x72f
	.uaword	0x5307
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0x10
	.string	"IOCR"
	.byte	0x7
	.uahalf	0x730
	.uaword	0x4fcd
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x10
	.string	"OUT"
	.byte	0x7
	.uahalf	0x731
	.uaword	0x520c
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0x10
	.string	"OMR"
	.byte	0x7
	.uahalf	0x732
	.uaword	0x5191
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0x10
	.string	"IN"
	.byte	0x7
	.uahalf	0x733
	.uaword	0x4f92
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0x10
	.string	"EVRSTAT"
	.byte	0x7
	.uahalf	0x734
	.uaword	0x4de2
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x10
	.string	"reserved_B4"
	.byte	0x7
	.uahalf	0x735
	.uaword	0x6405
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0x10
	.string	"EVR13CON"
	.byte	0x7
	.uahalf	0x736
	.uaword	0x4b8b
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0x10
	.string	"reserved_BC"
	.byte	0x7
	.uahalf	0x737
	.uaword	0x6405
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0x10
	.string	"STSTAT"
	.byte	0x7
	.uahalf	0x738
	.uaword	0x5810
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0x10
	.string	"reserved_C4"
	.byte	0x7
	.uahalf	0x739
	.uaword	0x6405
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0x10
	.string	"PMSWCR0"
	.byte	0x7
	.uahalf	0x73a
	.uaword	0x558a
	.byte	0x3
	.byte	0x23
	.uleb128 0xc8
	.uleb128 0x10
	.string	"PMSWSTAT"
	.byte	0x7
	.uahalf	0x73b
	.uaword	0x564a
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0x10
	.string	"PMSWSTATCLR"
	.byte	0x7
	.uahalf	0x73c
	.uaword	0x568b
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0x10
	.string	"PMCSR"
	.byte	0x7
	.uahalf	0x73d
	.uaword	0x6435
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0x10
	.string	"reserved_D8"
	.byte	0x7
	.uahalf	0x73e
	.uaword	0x63f5
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0x10
	.string	"DTSSTAT"
	.byte	0x7
	.uahalf	0x73f
	.uaword	0x4a15
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0x10
	.string	"DTSCON"
	.byte	0x7
	.uahalf	0x740
	.uaword	0x4997
	.byte	0x3
	.byte	0x23
	.uleb128 0xe4
	.uleb128 0x10
	.string	"PMSWCR1"
	.byte	0x7
	.uahalf	0x741
	.uaword	0x55ca
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0x10
	.string	"reserved_EC"
	.byte	0x7
	.uahalf	0x742
	.uaword	0x6405
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0x10
	.string	"WDTS"
	.byte	0x7
	.uahalf	0x743
	.uaword	0x5bc4
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0x10
	.string	"EMSR"
	.byte	0x7
	.uahalf	0x744
	.uaword	0x4acf
	.byte	0x3
	.byte	0x23
	.uleb128 0xfc
	.uleb128 0x10
	.string	"WDTCPU"
	.byte	0x7
	.uahalf	0x745
	.uaword	0x6455
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0x10
	.string	"reserved_10C"
	.byte	0x7
	.uahalf	0x746
	.uaword	0x6425
	.byte	0x3
	.byte	0x23
	.uleb128 0x10c
	.uleb128 0x10
	.string	"TRAPSTAT"
	.byte	0x7
	.uahalf	0x747
	.uaword	0x598f
	.byte	0x3
	.byte	0x23
	.uleb128 0x124
	.uleb128 0x10
	.string	"TRAPSET"
	.byte	0x7
	.uahalf	0x748
	.uaword	0x594f
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x10
	.string	"TRAPCLR"
	.byte	0x7
	.uahalf	0x749
	.uaword	0x58cf
	.byte	0x3
	.byte	0x23
	.uleb128 0x12c
	.uleb128 0x10
	.string	"TRAPDIS"
	.byte	0x7
	.uahalf	0x74a
	.uaword	0x590f
	.byte	0x3
	.byte	0x23
	.uleb128 0x130
	.uleb128 0x10
	.string	"LCLCON0"
	.byte	0x7
	.uahalf	0x74b
	.uaword	0x50d3
	.byte	0x3
	.byte	0x23
	.uleb128 0x134
	.uleb128 0x10
	.string	"reserved_138"
	.byte	0x7
	.uahalf	0x74c
	.uaword	0x6405
	.byte	0x3
	.byte	0x23
	.uleb128 0x138
	.uleb128 0x10
	.string	"LCLTEST"
	.byte	0x7
	.uahalf	0x74d
	.uaword	0x5113
	.byte	0x3
	.byte	0x23
	.uleb128 0x13c
	.uleb128 0x10
	.string	"CHIPID"
	.byte	0x7
	.uahalf	0x74e
	.uaword	0x4958
	.byte	0x3
	.byte	0x23
	.uleb128 0x140
	.uleb128 0x10
	.string	"MANID"
	.byte	0x7
	.uahalf	0x74f
	.uaword	0x5153
	.byte	0x3
	.byte	0x23
	.uleb128 0x144
	.uleb128 0x10
	.string	"reserved_148"
	.byte	0x7
	.uahalf	0x750
	.uaword	0x63f5
	.byte	0x3
	.byte	0x23
	.uleb128 0x148
	.uleb128 0x10
	.string	"SAFECON"
	.byte	0x7
	.uahalf	0x751
	.uaword	0x57d0
	.byte	0x3
	.byte	0x23
	.uleb128 0x150
	.uleb128 0x10
	.string	"reserved_154"
	.byte	0x7
	.uahalf	0x752
	.uaword	0x645a
	.byte	0x3
	.byte	0x23
	.uleb128 0x154
	.uleb128 0x10
	.string	"LBISTCTRL0"
	.byte	0x7
	.uahalf	0x753
	.uaword	0x500a
	.byte	0x3
	.byte	0x23
	.uleb128 0x164
	.uleb128 0x10
	.string	"LBISTCTRL1"
	.byte	0x7
	.uahalf	0x754
	.uaword	0x504d
	.byte	0x3
	.byte	0x23
	.uleb128 0x168
	.uleb128 0x10
	.string	"LBISTCTRL2"
	.byte	0x7
	.uahalf	0x755
	.uaword	0x5090
	.byte	0x3
	.byte	0x23
	.uleb128 0x16c
	.uleb128 0x10
	.string	"reserved_170"
	.byte	0x7
	.uahalf	0x756
	.uaword	0x646a
	.byte	0x3
	.byte	0x23
	.uleb128 0x170
	.uleb128 0x10
	.string	"PDISC"
	.byte	0x7
	.uahalf	0x757
	.uaword	0x52c9
	.byte	0x3
	.byte	0x23
	.uleb128 0x18c
	.uleb128 0x10
	.string	"reserved_190"
	.byte	0x7
	.uahalf	0x758
	.uaword	0x647a
	.byte	0x3
	.byte	0x23
	.uleb128 0x190
	.uleb128 0x10
	.string	"EVRADCSTAT"
	.byte	0x7
	.uahalf	0x759
	.uaword	0x4bcc
	.byte	0x3
	.byte	0x23
	.uleb128 0x19c
	.uleb128 0x10
	.string	"EVRUVMON"
	.byte	0x7
	.uahalf	0x75a
	.uaword	0x4e22
	.byte	0x3
	.byte	0x23
	.uleb128 0x1a0
	.uleb128 0x10
	.string	"EVROVMON"
	.byte	0x7
	.uahalf	0x75b
	.uaword	0x4c52
	.byte	0x3
	.byte	0x23
	.uleb128 0x1a4
	.uleb128 0x10
	.string	"EVRMONCTRL"
	.byte	0x7
	.uahalf	0x75c
	.uaword	0x4c0f
	.byte	0x3
	.byte	0x23
	.uleb128 0x1a8
	.uleb128 0x10
	.string	"reserved_1AC"
	.byte	0x7
	.uahalf	0x75d
	.uaword	0x6405
	.byte	0x3
	.byte	0x23
	.uleb128 0x1ac
	.uleb128 0x10
	.string	"EVRSDCTRL1"
	.byte	0x7
	.uahalf	0x75e
	.uaword	0x4d19
	.byte	0x3
	.byte	0x23
	.uleb128 0x1b0
	.uleb128 0x10
	.string	"EVRSDCTRL2"
	.byte	0x7
	.uahalf	0x75f
	.uaword	0x4d5c
	.byte	0x3
	.byte	0x23
	.uleb128 0x1b4
	.uleb128 0x10
	.string	"EVRSDCTRL3"
	.byte	0x7
	.uahalf	0x760
	.uaword	0x4d9f
	.byte	0x3
	.byte	0x23
	.uleb128 0x1b8
	.uleb128 0x10
	.string	"reserved_1BC"
	.byte	0x7
	.uahalf	0x761
	.uaword	0x63f5
	.byte	0x3
	.byte	0x23
	.uleb128 0x1bc
	.uleb128 0x10
	.string	"EVRSDCOEFF2"
	.byte	0x7
	.uahalf	0x762
	.uaword	0x4cd5
	.byte	0x3
	.byte	0x23
	.uleb128 0x1c4
	.uleb128 0x10
	.string	"reserved_1C8"
	.byte	0x7
	.uahalf	0x763
	.uaword	0x648a
	.byte	0x3
	.byte	0x23
	.uleb128 0x1c8
	.uleb128 0x10
	.string	"PMSWUTCNT"
	.byte	0x7
	.uahalf	0x764
	.uaword	0x56cf
	.byte	0x3
	.byte	0x23
	.uleb128 0x1dc
	.uleb128 0x10
	.string	"OVCENABLE"
	.byte	0x7
	.uahalf	0x765
	.uaword	0x5287
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e0
	.uleb128 0x10
	.string	"OVCCON"
	.byte	0x7
	.uahalf	0x766
	.uaword	0x5248
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e4
	.uleb128 0x10
	.string	"reserved_1E8"
	.byte	0x7
	.uahalf	0x767
	.uaword	0x649a
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e8
	.uleb128 0x10
	.string	"EICR"
	.byte	0x7
	.uahalf	0x768
	.uaword	0x64aa
	.byte	0x3
	.byte	0x23
	.uleb128 0x210
	.uleb128 0x10
	.string	"EIFR"
	.byte	0x7
	.uahalf	0x769
	.uaword	0x4a92
	.byte	0x3
	.byte	0x23
	.uleb128 0x220
	.uleb128 0x10
	.string	"FMR"
	.byte	0x7
	.uahalf	0x76a
	.uaword	0x4ede
	.byte	0x3
	.byte	0x23
	.uleb128 0x224
	.uleb128 0x10
	.string	"PDRR"
	.byte	0x7
	.uahalf	0x76b
	.uaword	0x5343
	.byte	0x3
	.byte	0x23
	.uleb128 0x228
	.uleb128 0x10
	.string	"IGCR"
	.byte	0x7
	.uahalf	0x76c
	.uaword	0x64ba
	.byte	0x3
	.byte	0x23
	.uleb128 0x22c
	.uleb128 0x10
	.string	"reserved_23C"
	.byte	0x7
	.uahalf	0x76d
	.uaword	0x6405
	.byte	0x3
	.byte	0x23
	.uleb128 0x23c
	.uleb128 0x10
	.string	"DTSLIM"
	.byte	0x7
	.uahalf	0x76e
	.uaword	0x49d6
	.byte	0x3
	.byte	0x23
	.uleb128 0x240
	.uleb128 0x10
	.string	"reserved_244"
	.byte	0x7
	.uahalf	0x76f
	.uaword	0x64ca
	.byte	0x3
	.byte	0x23
	.uleb128 0x244
	.uleb128 0x10
	.string	"PMSWCR3"
	.byte	0x7
	.uahalf	0x770
	.uaword	0x560a
	.byte	0x3
	.byte	0x23
	.uleb128 0x300
	.uleb128 0x10
	.string	"reserved_304"
	.byte	0x7
	.uahalf	0x771
	.uaword	0x64da
	.byte	0x3
	.byte	0x23
	.uleb128 0x304
	.uleb128 0x10
	.string	"ACCEN1"
	.byte	0x7
	.uahalf	0x772
	.uaword	0x4719
	.byte	0x3
	.byte	0x23
	.uleb128 0x3f8
	.uleb128 0x10
	.string	"ACCEN0"
	.byte	0x7
	.uahalf	0x773
	.uaword	0x46da
	.byte	0x3
	.byte	0x23
	.uleb128 0x3fc
	.byte	0
	.uleb128 0x13
	.uaword	0x100
	.uaword	0x6405
	.uleb128 0x14
	.uaword	0x15e
	.byte	0x7
	.byte	0
	.uleb128 0x13
	.uaword	0x100
	.uaword	0x6415
	.uleb128 0x14
	.uaword	0x15e
	.byte	0x3
	.byte	0
	.uleb128 0x13
	.uaword	0x4b0c
	.uaword	0x6425
	.uleb128 0x14
	.uaword	0x15e
	.byte	0x1
	.byte	0
	.uleb128 0x13
	.uaword	0x100
	.uaword	0x6435
	.uleb128 0x14
	.uaword	0x15e
	.byte	0x17
	.byte	0
	.uleb128 0x13
	.uaword	0x554c
	.uaword	0x6445
	.uleb128 0x14
	.uaword	0x15e
	.byte	0
	.byte	0
	.uleb128 0x13
	.uaword	0x5b36
	.uaword	0x6455
	.uleb128 0x14
	.uaword	0x15e
	.byte	0
	.byte	0
	.uleb128 0xd
	.uaword	0x6445
	.uleb128 0x13
	.uaword	0x100
	.uaword	0x646a
	.uleb128 0x14
	.uaword	0x15e
	.byte	0xf
	.byte	0
	.uleb128 0x13
	.uaword	0x100
	.uaword	0x647a
	.uleb128 0x14
	.uaword	0x15e
	.byte	0x1b
	.byte	0
	.uleb128 0x13
	.uaword	0x100
	.uaword	0x648a
	.uleb128 0x14
	.uaword	0x15e
	.byte	0xb
	.byte	0
	.uleb128 0x13
	.uaword	0x100
	.uaword	0x649a
	.uleb128 0x14
	.uaword	0x15e
	.byte	0x13
	.byte	0
	.uleb128 0x13
	.uaword	0x100
	.uaword	0x64aa
	.uleb128 0x14
	.uaword	0x15e
	.byte	0x27
	.byte	0
	.uleb128 0x13
	.uaword	0x4a55
	.uaword	0x64ba
	.uleb128 0x14
	.uaword	0x15e
	.byte	0x3
	.byte	0
	.uleb128 0x13
	.uaword	0x4f55
	.uaword	0x64ca
	.uleb128 0x14
	.uaword	0x15e
	.byte	0x3
	.byte	0
	.uleb128 0x13
	.uaword	0x100
	.uaword	0x64da
	.uleb128 0x14
	.uaword	0x15e
	.byte	0xbb
	.byte	0
	.uleb128 0x13
	.uaword	0x100
	.uaword	0x64ea
	.uleb128 0x14
	.uaword	0x15e
	.byte	0xf3
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU"
	.byte	0x7
	.uahalf	0x774
	.uaword	0x64fa
	.uleb128 0xd
	.uaword	0x5bc9
	.uleb128 0x15
	.byte	0x4
	.byte	0x8
	.byte	0x54
	.uaword	0x6539
	.uleb128 0x3
	.string	"IfxCpu_ResourceCpu_0"
	.sleb128 0
	.uleb128 0x3
	.string	"IfxCpu_ResourceCpu_none"
	.sleb128 1
	.byte	0
	.uleb128 0x5
	.string	"IfxCpu_ResourceCpu"
	.byte	0x8
	.byte	0x57
	.uaword	0x64ff
	.uleb128 0x6
	.string	"_Ifx_STM_TIM0_Bits"
	.byte	0x4
	.byte	0x9
	.byte	0xc0
	.uaword	0x6584
	.uleb128 0x7
	.string	"STM31_0"
	.byte	0x9
	.byte	0xc2
	.uaword	0x13b
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_STM_TIM0_Bits"
	.byte	0x9
	.byte	0xc3
	.uaword	0x6553
	.uleb128 0xe
	.byte	0x4
	.byte	0x9
	.uahalf	0x165
	.uaword	0x65c5
	.uleb128 0xf
	.string	"U"
	.byte	0x9
	.uahalf	0x167
	.uaword	0x13b
	.uleb128 0xf
	.string	"I"
	.byte	0x9
	.uahalf	0x168
	.uaword	0x134
	.uleb128 0xf
	.string	"B"
	.byte	0x9
	.uahalf	0x169
	.uaword	0x6584
	.byte	0
	.uleb128 0xb
	.string	"Ifx_STM_TIM0"
	.byte	0x9
	.uahalf	0x16a
	.uaword	0x659d
	.uleb128 0x6
	.string	"_Ifx_FLASH_FCON_Bits"
	.byte	0x4
	.byte	0xa
	.byte	0xae
	.uaword	0x674b
	.uleb128 0x7
	.string	"WSPFLASH"
	.byte	0xa
	.byte	0xb0
	.uaword	0x13b
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"WSECPF"
	.byte	0xa
	.byte	0xb1
	.uaword	0x13b
	.byte	0x4
	.byte	0x2
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"WSDFLASH"
	.byte	0xa
	.byte	0xb2
	.uaword	0x13b
	.byte	0x4
	.byte	0x6
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"WSECDF"
	.byte	0xa
	.byte	0xb3
	.uaword	0x13b
	.byte	0x4
	.byte	0x3
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"IDLE"
	.byte	0xa
	.byte	0xb4
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"ESLDIS"
	.byte	0xa
	.byte	0xb5
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"SLEEP"
	.byte	0xa
	.byte	0xb6
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"NSAFECC"
	.byte	0xa
	.byte	0xb7
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"STALL"
	.byte	0xa
	.byte	0xb8
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"RES21"
	.byte	0xa
	.byte	0xb9
	.uaword	0x13b
	.byte	0x4
	.byte	0x2
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"RES23"
	.byte	0xa
	.byte	0xba
	.uaword	0x13b
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"VOPERM"
	.byte	0xa
	.byte	0xbb
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"SQERM"
	.byte	0xa
	.byte	0xbc
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"PROERM"
	.byte	0xa
	.byte	0xbd
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"reserved_27"
	.byte	0xa
	.byte	0xbe
	.uaword	0x13b
	.byte	0x4
	.byte	0x3
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"PR5V"
	.byte	0xa
	.byte	0xbf
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EOBM"
	.byte	0xa
	.byte	0xc0
	.uaword	0x13b
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_FLASH_FCON_Bits"
	.byte	0xa
	.byte	0xc1
	.uaword	0x65da
	.uleb128 0xe
	.byte	0x4
	.byte	0xa
	.uahalf	0x274
	.uaword	0x678e
	.uleb128 0xf
	.string	"U"
	.byte	0xa
	.uahalf	0x276
	.uaword	0x13b
	.uleb128 0xf
	.string	"I"
	.byte	0xa
	.uahalf	0x277
	.uaword	0x134
	.uleb128 0xf
	.string	"B"
	.byte	0xa
	.uahalf	0x278
	.uaword	0x674b
	.byte	0
	.uleb128 0xb
	.string	"Ifx_FLASH_FCON"
	.byte	0xa
	.uahalf	0x279
	.uaword	0x6766
	.uleb128 0x5
	.string	"IfxScuCcu_PllStepsFunctionHook"
	.byte	0x2
	.byte	0x81
	.uaword	0x67cb
	.uleb128 0x16
	.byte	0x4
	.uaword	0x67d1
	.uleb128 0x17
	.byte	0x1
	.uleb128 0x18
	.byte	0x8
	.byte	0x2
	.uahalf	0x2c5
	.uaword	0x67fe
	.uleb128 0x10
	.string	"value"
	.byte	0x2
	.uahalf	0x2c7
	.uaword	0x1b0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.string	"mask"
	.byte	0x2
	.uahalf	0x2c8
	.uaword	0x1b0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0xb
	.string	"IfxScuCcu_CcuconRegConfig"
	.byte	0x2
	.uahalf	0x2c9
	.uaword	0x67d3
	.uleb128 0x18
	.byte	0x8
	.byte	0x2
	.uahalf	0x2ce
	.uaword	0x6876
	.uleb128 0x10
	.string	"pDivider"
	.byte	0x2
	.uahalf	0x2d0
	.uaword	0x17b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.string	"nDivider"
	.byte	0x2
	.uahalf	0x2d1
	.uaword	0x17b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x10
	.string	"k2Initial"
	.byte	0x2
	.uahalf	0x2d2
	.uaword	0x17b
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x12
	.uaword	.LASF36
	.byte	0x2
	.uahalf	0x2d3
	.uaword	0x1be
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0xb
	.string	"IfxScuCcu_InitialStepConfig"
	.byte	0x2
	.uahalf	0x2d4
	.uaword	0x6820
	.uleb128 0x18
	.byte	0xc
	.byte	0x2
	.uahalf	0x2d8
	.uaword	0x68dd
	.uleb128 0x10
	.string	"k2Step"
	.byte	0x2
	.uahalf	0x2da
	.uaword	0x17b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF36
	.byte	0x2
	.uahalf	0x2db
	.uaword	0x1be
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x10
	.string	"hookFunction"
	.byte	0x2
	.uahalf	0x2dc
	.uaword	0x67a5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0xb
	.string	"IfxScuCcu_PllStepsConfig"
	.byte	0x2
	.uahalf	0x2dd
	.uaword	0x689a
	.uleb128 0x18
	.byte	0x28
	.byte	0x2
	.uahalf	0x2e5
	.uaword	0x695f
	.uleb128 0x12
	.uaword	.LASF37
	.byte	0x2
	.uahalf	0x2e7
	.uaword	0x67fe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF38
	.byte	0x2
	.uahalf	0x2e8
	.uaword	0x67fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x10
	.string	"ccucon2"
	.byte	0x2
	.uahalf	0x2e9
	.uaword	0x67fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x10
	.string	"ccucon5"
	.byte	0x2
	.uahalf	0x2ea
	.uaword	0x67fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x10
	.string	"ccucon6"
	.byte	0x2
	.uahalf	0x2eb
	.uaword	0x67fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0
	.uleb128 0xb
	.string	"IfxScuCcu_ClockDistributionConfig"
	.byte	0x2
	.uahalf	0x2ec
	.uaword	0x68fe
	.uleb128 0x18
	.byte	0x8
	.byte	0x2
	.uahalf	0x2f0
	.uaword	0x69b4
	.uleb128 0x10
	.string	"value"
	.byte	0x2
	.uahalf	0x2f2
	.uaword	0x1b0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.string	"mask"
	.byte	0x2
	.uahalf	0x2f3
	.uaword	0x1b0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0xb
	.string	"IfxScuCcu_FlashWaitstateConfig"
	.byte	0x2
	.uahalf	0x2f4
	.uaword	0x6989
	.uleb128 0x18
	.byte	0x10
	.byte	0x2
	.uahalf	0x2f9
	.uaword	0x6a39
	.uleb128 0x10
	.string	"numOfPllDividerSteps"
	.byte	0x2
	.uahalf	0x2fb
	.uaword	0x17b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.string	"pllDividerStep"
	.byte	0x2
	.uahalf	0x2fc
	.uaword	0x6a39
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x10
	.string	"pllInitialStep"
	.byte	0x2
	.uahalf	0x2fd
	.uaword	0x6876
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x16
	.byte	0x4
	.uaword	0x68dd
	.uleb128 0xb
	.string	"IfxScuCcu_SysPllConfig"
	.byte	0x2
	.uahalf	0x2fe
	.uaword	0x69db
	.uleb128 0x18
	.byte	0x44
	.byte	0x2
	.uahalf	0x306
	.uaword	0x6ad4
	.uleb128 0x10
	.string	"sysPll"
	.byte	0x2
	.uahalf	0x308
	.uaword	0x6a3f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.string	"clockDistribution"
	.byte	0x2
	.uahalf	0x309
	.uaword	0x695f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x10
	.string	"flashFconWaitStateConfig"
	.byte	0x2
	.uahalf	0x30a
	.uaword	0x69b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x10
	.string	"xtalFrequency"
	.byte	0x2
	.uahalf	0x30b
	.uaword	0x1b0
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.byte	0
	.uleb128 0xb
	.string	"IfxScuCcu_Config"
	.byte	0x2
	.uahalf	0x30c
	.uaword	0x6a5e
	.uleb128 0x19
	.string	"IfxScuCcu_getStmFrequency"
	.byte	0x2
	.uahalf	0x408
	.byte	0x1
	.uaword	0x1be
	.byte	0x3
	.uleb128 0x1a
	.byte	0x1
	.string	"IfxScuCcu_getOscFrequency"
	.byte	0x1
	.uahalf	0x195
	.byte	0x1
	.uaword	0x1be
	.byte	0x1
	.uaword	0x6b48
	.uleb128 0x1b
	.string	"freq"
	.byte	0x1
	.uahalf	0x197
	.uaword	0x1be
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.string	"IfxScuCcu_getPllVcoFrequency"
	.byte	0x1
	.uahalf	0x1c7
	.byte	0x1
	.uaword	0x1be
	.byte	0x1
	.uaword	0x6b85
	.uleb128 0x1b
	.string	"vcoFreq"
	.byte	0x1
	.uahalf	0x1c9
	.uaword	0x1be
	.byte	0
	.uleb128 0x19
	.string	"IfxScuCcu_getEvrFrequency"
	.byte	0x2
	.uahalf	0x3ed
	.byte	0x1
	.uaword	0x1be
	.byte	0x3
	.uleb128 0x1c
	.string	"IfxScuCcu_isOscillatorStable"
	.byte	0x1
	.uahalf	0x33b
	.byte	0x1
	.uaword	0x1cd
	.byte	0x1
	.uaword	0x6c09
	.uleb128 0x1b
	.string	"TimeoutCtr"
	.byte	0x1
	.uahalf	0x33d
	.uaword	0x196
	.uleb128 0x1b
	.string	"status"
	.byte	0x1
	.uahalf	0x33e
	.uaword	0x1cd
	.uleb128 0x1b
	.string	"endinitPw"
	.byte	0x1
	.uahalf	0x33f
	.uaword	0x188
	.byte	0
	.uleb128 0x1d
	.string	"__maxu"
	.byte	0x3
	.byte	0x6f
	.byte	0x1
	.uaword	0x1b0
	.byte	0x3
	.uaword	0x6c3b
	.uleb128 0x1e
	.string	"a"
	.byte	0x3
	.byte	0x6f
	.uaword	0x1b0
	.uleb128 0x1e
	.string	"b"
	.byte	0x3
	.byte	0x6f
	.uaword	0x1b0
	.uleb128 0x1f
	.string	"res"
	.byte	0x3
	.byte	0x71
	.uaword	0x1b0
	.byte	0
	.uleb128 0x19
	.string	"IfxScuCcu_getGtmFrequency"
	.byte	0x2
	.uahalf	0x3f3
	.byte	0x1
	.uaword	0x1be
	.byte	0x3
	.uleb128 0x1c
	.string	"IfxScuCcu_getPll2Frequency"
	.byte	0x2
	.uahalf	0x3f9
	.byte	0x1
	.uaword	0x1be
	.byte	0x3
	.uaword	0x6c9f
	.uleb128 0x1b
	.string	"pll2Frequency"
	.byte	0x2
	.uahalf	0x3fb
	.uaword	0x1be
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.string	"IfxScuCcu_calculateSysPllDividers"
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.uaword	0x1cd
	.uaword	.LFB188
	.uaword	.LFE188
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x6eb4
	.uleb128 0x21
	.string	"cfg"
	.byte	0x1
	.byte	0x64
	.uaword	0x6eb4
	.byte	0x1
	.byte	0x64
	.uleb128 0x22
	.string	"fPll"
	.byte	0x1
	.byte	0x64
	.uaword	0x1b0
	.uaword	.LLST0
	.uleb128 0x23
	.string	"retVal"
	.byte	0x1
	.byte	0x66
	.uaword	0x1cd
	.uaword	.LLST1
	.uleb128 0x24
	.string	"deviationAllowed"
	.byte	0x1
	.byte	0x67
	.uaword	0x17b
	.byte	0x2
	.uleb128 0x25
	.string	"fOsc"
	.byte	0x1
	.byte	0x68
	.uaword	0x1b0
	.byte	0x3
	.byte	0x84
	.sleb128 64
	.uleb128 0x26
	.string	"EXITCALC_LOOP"
	.byte	0x1
	.byte	0xb7
	.uaword	.L5
	.uleb128 0x27
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x28
	.string	"fPllMax"
	.byte	0x1
	.byte	0x70
	.uaword	0x6eba
	.uaword	0xbebc200
	.uleb128 0x28
	.string	"fRefMax"
	.byte	0x1
	.byte	0x71
	.uaword	0x6eba
	.uaword	0x16e3600
	.uleb128 0x28
	.string	"fRefMin"
	.byte	0x1
	.byte	0x72
	.uaword	0x6eba
	.uaword	0x7a1200
	.uleb128 0x28
	.string	"fVcoMin"
	.byte	0x1
	.byte	0x73
	.uaword	0x6eba
	.uaword	0x17d78400
	.uleb128 0x28
	.string	"fVcoMax"
	.byte	0x1
	.byte	0x74
	.uaword	0x6eba
	.uaword	0x2faf0800
	.uleb128 0x24
	.string	"pMin"
	.byte	0x1
	.byte	0x75
	.uaword	0x6ebf
	.byte	0x1
	.uleb128 0x24
	.string	"pMax"
	.byte	0x1
	.byte	0x76
	.uaword	0x6ebf
	.byte	0x10
	.uleb128 0x24
	.string	"k2Min"
	.byte	0x1
	.byte	0x77
	.uaword	0x6ebf
	.byte	0x1
	.uleb128 0x29
	.string	"k2Max"
	.byte	0x1
	.byte	0x78
	.uaword	0x6ebf
	.sleb128 -128
	.uleb128 0x24
	.string	"nMin"
	.byte	0x1
	.byte	0x79
	.uaword	0x6ebf
	.byte	0x1
	.uleb128 0x29
	.string	"nMax"
	.byte	0x1
	.byte	0x7a
	.uaword	0x6ebf
	.sleb128 -128
	.uleb128 0x23
	.string	"p"
	.byte	0x1
	.byte	0x7c
	.uaword	0x1b0
	.uaword	.LLST2
	.uleb128 0x23
	.string	"n"
	.byte	0x1
	.byte	0x7d
	.uaword	0x1b0
	.uaword	.LLST3
	.uleb128 0x23
	.string	"k2"
	.byte	0x1
	.byte	0x7e
	.uaword	0x1b0
	.uaword	.LLST4
	.uleb128 0x25
	.string	"k2Steps"
	.byte	0x1
	.byte	0x7f
	.uaword	0x1b0
	.byte	0x1
	.byte	0x5e
	.uleb128 0x23
	.string	"bestK2"
	.byte	0x1
	.byte	0x80
	.uaword	0x1b0
	.uaword	.LLST5
	.uleb128 0x23
	.string	"bestN"
	.byte	0x1
	.byte	0x80
	.uaword	0x1b0
	.uaword	.LLST6
	.uleb128 0x23
	.string	"bestP"
	.byte	0x1
	.byte	0x80
	.uaword	0x1b0
	.uaword	.LLST7
	.uleb128 0x1f
	.string	"fRef"
	.byte	0x1
	.byte	0x82
	.uaword	0x1ed
	.uleb128 0x1f
	.string	"fVco"
	.byte	0x1
	.byte	0x82
	.uaword	0x1ed
	.uleb128 0x23
	.string	"fPllLeastError"
	.byte	0x1
	.byte	0x83
	.uaword	0x1ed
	.uaword	.LLST8
	.uleb128 0x27
	.uaword	.Ldebug_ranges0+0x20
	.uleb128 0x1f
	.string	"fPllError"
	.byte	0x1
	.byte	0x9d
	.uaword	0x1ed
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x16
	.byte	0x4
	.uaword	0x6ad4
	.uleb128 0x2a
	.uaword	0x1b0
	.uleb128 0x2a
	.uaword	0x17b
	.uleb128 0x2b
	.byte	0x1
	.string	"IfxScuCcu_getOsc0Frequency"
	.byte	0x1
	.uahalf	0x18f
	.byte	0x1
	.uaword	0x1be
	.uaword	.LFB196
	.uaword	.LFE196
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0x2c
	.uaword	0x6b11
	.uaword	.LFB197
	.uaword	.LFE197
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x6f30
	.uleb128 0x2d
	.uaword	0x6b3a
	.uaword	.LLST9
	.uleb128 0x2e
	.uaword	0x6b11
	.uaword	.LBB32
	.uaword	.Ldebug_ranges0+0x38
	.byte	0x1
	.uahalf	0x195
	.uleb128 0x27
	.uaword	.Ldebug_ranges0+0x50
	.uleb128 0x2f
	.uaword	0x6b3a
	.byte	0x1
	.byte	0x52
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x30
	.byte	0x1
	.string	"IfxScuCcu_getPllFrequency"
	.byte	0x1
	.uahalf	0x1ab
	.byte	0x1
	.uaword	0x1be
	.uaword	.LFB198
	.uaword	.LFE198
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x6f9a
	.uleb128 0x31
	.string	"scu"
	.byte	0x1
	.uahalf	0x1ad
	.uaword	0x6f9a
	.sleb128 -268214272
	.uleb128 0x32
	.string	"oscFreq"
	.byte	0x1
	.uahalf	0x1ae
	.uaword	0x1be
	.uaword	.LLST10
	.uleb128 0x32
	.string	"freq"
	.byte	0x1
	.uahalf	0x1af
	.uaword	0x1be
	.uaword	.LLST11
	.byte	0
	.uleb128 0x16
	.byte	0x4
	.uaword	0x64fa
	.uleb128 0x2c
	.uaword	0x6b48
	.uaword	.LFB199
	.uaword	.LFE199
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x6fe0
	.uleb128 0x2d
	.uaword	0x6b74
	.uaword	.LLST12
	.uleb128 0x33
	.uaword	0x6b48
	.uaword	.LBB38
	.uaword	.LBE38
	.byte	0x1
	.uahalf	0x1c7
	.uleb128 0x34
	.uaword	.LBB39
	.uaword	.LBE39
	.uleb128 0x2f
	.uaword	0x6b74
	.byte	0x1
	.byte	0x52
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x30
	.byte	0x1
	.string	"IfxScuCcu_getSourceFrequency"
	.byte	0x1
	.uahalf	0x1da
	.byte	0x1
	.uaword	0x1be
	.uaword	.LFB200
	.uaword	.LFE200
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x702e
	.uleb128 0x32
	.string	"sourcefreq"
	.byte	0x1
	.uahalf	0x1dc
	.uaword	0x1be
	.uaword	.LLST13
	.byte	0
	.uleb128 0x35
	.string	"IfxScuCcu_wait"
	.byte	0x1
	.uahalf	0x45e
	.byte	0x1
	.uaword	.LFB212
	.uaword	.LFE212
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x70a1
	.uleb128 0x36
	.string	"timeSec"
	.byte	0x1
	.uahalf	0x45e
	.uaword	0x1be
	.uaword	.LLST14
	.uleb128 0x37
	.string	"stmCount"
	.byte	0x1
	.uahalf	0x460
	.uaword	0x1b0
	.byte	0x1
	.byte	0x54
	.uleb128 0x37
	.string	"stmCountBegin"
	.byte	0x1
	.uahalf	0x461
	.uaword	0x1b0
	.byte	0x1
	.byte	0x52
	.uleb128 0x38
	.uaword	0x6aed
	.uaword	.LBB40
	.uaword	.Ldebug_ranges0+0x68
	.byte	0x1
	.uahalf	0x460
	.byte	0
	.uleb128 0x30
	.byte	0x1
	.string	"IfxScuCcu_getMaxFrequency"
	.byte	0x1
	.uahalf	0x14d
	.byte	0x1
	.uaword	0x1be
	.uaword	.LFB194
	.uaword	.LFE194
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x70fe
	.uleb128 0x32
	.string	"maxFrequency"
	.byte	0x1
	.uahalf	0x14f
	.uaword	0x1be
	.uaword	.LLST15
	.uleb128 0x39
	.uaword	.LASF39
	.byte	0x1
	.uahalf	0x150
	.uaword	0x1be
	.uaword	.LLST16
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.string	"IfxScuCcu_getBaud2Frequency"
	.byte	0x1
	.byte	0xcb
	.byte	0x1
	.uaword	0x1be
	.uaword	.LFB189
	.uaword	.LFE189
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x7151
	.uleb128 0x3a
	.uaword	.LASF40
	.byte	0x1
	.byte	0xcd
	.uaword	0x1be
	.uaword	.LLST17
	.uleb128 0x3a
	.uaword	.LASF37
	.byte	0x1
	.byte	0xce
	.uaword	0x4798
	.uaword	.LLST18
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.string	"IfxScuCcu_getBbbFrequency"
	.byte	0x1
	.byte	0xdd
	.byte	0x1
	.uaword	0x1be
	.uaword	.LFB190
	.uaword	.LFE190
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x71ab
	.uleb128 0x23
	.string	"bbbFrequency"
	.byte	0x1
	.byte	0xdf
	.uaword	0x1be
	.uaword	.LLST19
	.uleb128 0x3a
	.uaword	.LASF39
	.byte	0x1
	.byte	0xe0
	.uaword	0x1be
	.uaword	.LLST20
	.byte	0
	.uleb128 0x30
	.byte	0x1
	.string	"IfxScuCcu_getSpbFrequency"
	.byte	0x1
	.uahalf	0x1ef
	.byte	0x1
	.uaword	0x1be
	.uaword	.LFB201
	.uaword	.LFE201
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x7208
	.uleb128 0x32
	.string	"spbFrequency"
	.byte	0x1
	.uahalf	0x1f1
	.uaword	0x1be
	.uaword	.LLST21
	.uleb128 0x39
	.uaword	.LASF39
	.byte	0x1
	.uahalf	0x1f2
	.uaword	0x1be
	.uaword	.LLST22
	.byte	0
	.uleb128 0x30
	.byte	0x1
	.string	"IfxScuCcu_getModuleFrequency"
	.byte	0x1
	.uahalf	0x176
	.byte	0x1
	.uaword	0x1be
	.uaword	.LFB195
	.uaword	.LFE195
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x727b
	.uleb128 0x37
	.string	"spbFreq"
	.byte	0x1
	.uahalf	0x178
	.uaword	0x1be
	.byte	0x1
	.byte	0x53
	.uleb128 0x32
	.string	"moduleFreq"
	.byte	0x1
	.uahalf	0x179
	.uaword	0x1be
	.uaword	.LLST23
	.uleb128 0x32
	.string	"scuFdr"
	.byte	0x1
	.uahalf	0x17a
	.uaword	0x4ea2
	.uaword	.LLST24
	.byte	0
	.uleb128 0x30
	.byte	0x1
	.string	"IfxScuCcu_getSriFrequency"
	.byte	0x1
	.uahalf	0x218
	.byte	0x1
	.uaword	0x1be
	.uaword	.LFB202
	.uaword	.LFE202
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x72d8
	.uleb128 0x32
	.string	"sriFrequency"
	.byte	0x1
	.uahalf	0x21a
	.uaword	0x1be
	.uaword	.LLST25
	.uleb128 0x39
	.uaword	.LASF39
	.byte	0x1
	.uahalf	0x21b
	.uaword	0x1be
	.uaword	.LLST26
	.byte	0
	.uleb128 0x30
	.byte	0x1
	.string	"IfxScuCcu_getFsiFrequency"
	.byte	0x1
	.uahalf	0x136
	.byte	0x1
	.uaword	0x1be
	.uaword	.LFB193
	.uaword	.LFE193
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x732c
	.uleb128 0x39
	.uaword	.LASF40
	.byte	0x1
	.uahalf	0x138
	.uaword	0x1be
	.uaword	.LLST27
	.uleb128 0x39
	.uaword	.LASF37
	.byte	0x1
	.uahalf	0x139
	.uaword	0x4798
	.uaword	.LLST28
	.byte	0
	.uleb128 0x30
	.byte	0x1
	.string	"IfxScuCcu_getFsi2Frequency"
	.byte	0x1
	.uahalf	0x11f
	.byte	0x1
	.uaword	0x1be
	.uaword	.LFB192
	.uaword	.LFE192
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x7381
	.uleb128 0x39
	.uaword	.LASF40
	.byte	0x1
	.uahalf	0x121
	.uaword	0x1be
	.uaword	.LLST29
	.uleb128 0x39
	.uaword	.LASF37
	.byte	0x1
	.uahalf	0x122
	.uaword	0x4798
	.uaword	.LLST30
	.byte	0
	.uleb128 0x30
	.byte	0x1
	.string	"IfxScuCcu_getCpuFrequency"
	.byte	0x1
	.uahalf	0x106
	.byte	0x1
	.uaword	0x1be
	.uaword	.LFB191
	.uaword	.LFE191
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x73e6
	.uleb128 0x36
	.string	"cpu"
	.byte	0x1
	.uahalf	0x106
	.uaword	0x73e6
	.uaword	.LLST31
	.uleb128 0x3b
	.uaword	.LASF40
	.byte	0x1
	.uahalf	0x108
	.uaword	0x1be
	.byte	0x1
	.byte	0x52
	.uleb128 0x32
	.string	"cpuDiv"
	.byte	0x1
	.uahalf	0x109
	.uaword	0x1b0
	.uaword	.LLST32
	.byte	0
	.uleb128 0x2a
	.uaword	0x6539
	.uleb128 0x30
	.byte	0x1
	.string	"IfxScuCcu_init"
	.byte	0x1
	.uahalf	0x241
	.byte	0x1
	.uaword	0x1cd
	.uaword	.LFB203
	.uaword	.LFE203
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x7558
	.uleb128 0x36
	.string	"cfg"
	.byte	0x1
	.uahalf	0x241
	.uaword	0x7558
	.uaword	.LLST33
	.uleb128 0x3c
	.uaword	.LASF41
	.byte	0x1
	.uahalf	0x243
	.uaword	0x17b
	.uleb128 0x39
	.uaword	.LASF42
	.byte	0x1
	.uahalf	0x244
	.uaword	0x188
	.uaword	.LLST34
	.uleb128 0x39
	.uaword	.LASF43
	.byte	0x1
	.uahalf	0x244
	.uaword	0x188
	.uaword	.LLST35
	.uleb128 0x32
	.string	"status"
	.byte	0x1
	.uahalf	0x245
	.uaword	0x1cd
	.uaword	.LLST36
	.uleb128 0x3d
	.uaword	0x6ba9
	.uaword	.LBB44
	.uaword	.Ldebug_ranges0+0x80
	.byte	0x1
	.uahalf	0x26f
	.uaword	0x7498
	.uleb128 0x27
	.uaword	.Ldebug_ranges0+0xa0
	.uleb128 0x2d
	.uaword	0x6bd4
	.uaword	.LLST37
	.uleb128 0x2d
	.uaword	0x6be7
	.uaword	.LLST38
	.uleb128 0x2d
	.uaword	0x6bf6
	.uaword	.LLST39
	.byte	0
	.byte	0
	.uleb128 0x34
	.uaword	.LBB50
	.uaword	.LBE50
	.uleb128 0x39
	.uaword	.LASF44
	.byte	0x1
	.uahalf	0x277
	.uaword	0x17b
	.uaword	.LLST40
	.uleb128 0x3e
	.uaword	.Ldebug_ranges0+0xc0
	.uaword	0x74cb
	.uleb128 0x39
	.uaword	.LASF37
	.byte	0x1
	.uahalf	0x2b5
	.uaword	0x4798
	.uaword	.LLST41
	.byte	0
	.uleb128 0x3e
	.uaword	.Ldebug_ranges0+0xd8
	.uaword	0x74e5
	.uleb128 0x39
	.uaword	.LASF38
	.byte	0x1
	.uahalf	0x2c6
	.uaword	0x47d8
	.uaword	.LLST42
	.byte	0
	.uleb128 0x3e
	.uaword	.Ldebug_ranges0+0xf8
	.uaword	0x7503
	.uleb128 0x32
	.string	"ccucon2"
	.byte	0x1
	.uahalf	0x2d7
	.uaword	0x4818
	.uaword	.LLST43
	.byte	0
	.uleb128 0x3e
	.uaword	.Ldebug_ranges0+0x110
	.uaword	0x7521
	.uleb128 0x32
	.string	"ccucon5"
	.byte	0x1
	.uahalf	0x2e5
	.uaword	0x48d8
	.uaword	.LLST44
	.byte	0
	.uleb128 0x3e
	.uaword	.Ldebug_ranges0+0x128
	.uaword	0x753f
	.uleb128 0x32
	.string	"ccucon6"
	.byte	0x1
	.uahalf	0x2ee
	.uaword	0x4918
	.uaword	.LLST45
	.byte	0
	.uleb128 0x27
	.uaword	.Ldebug_ranges0+0x150
	.uleb128 0x32
	.string	"fcon"
	.byte	0x1
	.uahalf	0x2fb
	.uaword	0x678e
	.uaword	.LLST46
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x16
	.byte	0x4
	.uaword	0x755e
	.uleb128 0x2a
	.uaword	0x6ad4
	.uleb128 0x3f
	.byte	0x1
	.string	"IfxScuCcu_initConfig"
	.byte	0x1
	.uahalf	0x335
	.byte	0x1
	.uaword	.LFB204
	.uaword	.LFE204
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x759e
	.uleb128 0x36
	.string	"cfg"
	.byte	0x1
	.uahalf	0x335
	.uaword	0x6eb4
	.uaword	.LLST47
	.byte	0
	.uleb128 0x30
	.byte	0x1
	.string	"IfxScuCcu_setCpuFrequency"
	.byte	0x1
	.uahalf	0x364
	.byte	0x1
	.uaword	0x1be
	.uaword	.LFB206
	.uaword	.LFE206
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x762d
	.uleb128 0x36
	.string	"cpu"
	.byte	0x1
	.uahalf	0x364
	.uaword	0x6539
	.uaword	.LLST48
	.uleb128 0x36
	.string	"cpuFreq"
	.byte	0x1
	.uahalf	0x364
	.uaword	0x1be
	.uaword	.LLST49
	.uleb128 0x39
	.uaword	.LASF43
	.byte	0x1
	.uahalf	0x366
	.uaword	0x188
	.uaword	.LLST50
	.uleb128 0x32
	.string	"sriFreq"
	.byte	0x1
	.uahalf	0x367
	.uaword	0x1be
	.uaword	.LLST51
	.uleb128 0x32
	.string	"cpuDiv"
	.byte	0x1
	.uahalf	0x368
	.uaword	0x1b0
	.uaword	.LLST52
	.byte	0
	.uleb128 0x30
	.byte	0x1
	.string	"IfxScuCcu_setGtmFrequency"
	.byte	0x1
	.uahalf	0x38f
	.byte	0x1
	.uaword	0x1be
	.uaword	.LFB207
	.uaword	.LFE207
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x76ff
	.uleb128 0x36
	.string	"gtmFreq"
	.byte	0x1
	.uahalf	0x38f
	.uaword	0x1be
	.uaword	.LLST53
	.uleb128 0x39
	.uaword	.LASF45
	.byte	0x1
	.uahalf	0x391
	.uaword	0x188
	.uaword	.LLST54
	.uleb128 0x39
	.uaword	.LASF38
	.byte	0x1
	.uahalf	0x392
	.uaword	0x47d8
	.uaword	.LLST55
	.uleb128 0x39
	.uaword	.LASF46
	.byte	0x1
	.uahalf	0x394
	.uaword	0x1be
	.uaword	.LLST56
	.uleb128 0x32
	.string	"gtmDiv"
	.byte	0x1
	.uahalf	0x395
	.uaword	0x1b0
	.uaword	.LLST57
	.uleb128 0x40
	.uaword	0x6c09
	.uaword	.LBB66
	.uaword	.LBE66
	.byte	0x1
	.uahalf	0x396
	.uaword	0x76ee
	.uleb128 0x41
	.uaword	0x6c26
	.byte	0x1
	.uleb128 0x42
	.uaword	0x6c1d
	.uaword	.LLST58
	.uleb128 0x34
	.uaword	.LBB67
	.uaword	.LBE67
	.uleb128 0x2d
	.uaword	0x6c2f
	.uaword	.LLST59
	.byte	0
	.byte	0
	.uleb128 0x43
	.uaword	0x6c3b
	.uaword	.LBB68
	.uaword	.LBE68
	.byte	0x1
	.uahalf	0x3ab
	.byte	0
	.uleb128 0x30
	.byte	0x1
	.string	"IfxScuCcu_setPll2Frequency"
	.byte	0x1
	.uahalf	0x3af
	.byte	0x1
	.uaword	0x1be
	.uaword	.LFB208
	.uaword	.LFE208
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x778d
	.uleb128 0x36
	.string	"pll2Freq"
	.byte	0x1
	.uahalf	0x3af
	.uaword	0x1be
	.uaword	.LLST60
	.uleb128 0x39
	.uaword	.LASF43
	.byte	0x1
	.uahalf	0x3b1
	.uaword	0x188
	.uaword	.LLST61
	.uleb128 0x32
	.string	"pll2Div"
	.byte	0x1
	.uahalf	0x3b2
	.uaword	0x1b0
	.uaword	.LLST62
	.uleb128 0x33
	.uaword	0x6c5f
	.uaword	.LBB70
	.uaword	.LBE70
	.byte	0x1
	.uahalf	0x3b8
	.uleb128 0x34
	.uaword	.LBB71
	.uaword	.LBE71
	.uleb128 0x44
	.uaword	0x6c88
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x30
	.byte	0x1
	.string	"IfxScuCcu_setSpbFrequency"
	.byte	0x1
	.uahalf	0x3bc
	.byte	0x1
	.uaword	0x1be
	.uaword	.LFB209
	.uaword	.LFE209
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x785f
	.uleb128 0x36
	.string	"spbFreq"
	.byte	0x1
	.uahalf	0x3bc
	.uaword	0x1be
	.uaword	.LLST63
	.uleb128 0x32
	.string	"l_EndInitPW"
	.byte	0x1
	.uahalf	0x3bf
	.uaword	0x188
	.uaword	.LLST64
	.uleb128 0x39
	.uaword	.LASF45
	.byte	0x1
	.uahalf	0x3c0
	.uaword	0x188
	.uaword	.LLST65
	.uleb128 0x39
	.uaword	.LASF37
	.byte	0x1
	.uahalf	0x3c1
	.uaword	0x4798
	.uaword	.LLST66
	.uleb128 0x39
	.uaword	.LASF46
	.byte	0x1
	.uahalf	0x3c2
	.uaword	0x1be
	.uaword	.LLST67
	.uleb128 0x32
	.string	"spbDiv"
	.byte	0x1
	.uahalf	0x3c3
	.uaword	0x1b0
	.uaword	.LLST68
	.uleb128 0x2e
	.uaword	0x6c09
	.uaword	.LBB72
	.uaword	.Ldebug_ranges0+0x168
	.byte	0x1
	.uahalf	0x3c4
	.uleb128 0x41
	.uaword	0x6c26
	.byte	0x2
	.uleb128 0x42
	.uaword	0x6c1d
	.uaword	.LLST69
	.uleb128 0x27
	.uaword	.Ldebug_ranges0+0x180
	.uleb128 0x2d
	.uaword	0x6c2f
	.uaword	.LLST70
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x30
	.byte	0x1
	.string	"IfxScuCcu_setSriFrequency"
	.byte	0x1
	.uahalf	0x3e9
	.byte	0x1
	.uaword	0x1be
	.uaword	.LFB210
	.uaword	.LFE210
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x792e
	.uleb128 0x36
	.string	"sriFreq"
	.byte	0x1
	.uahalf	0x3e9
	.uaword	0x1be
	.uaword	.LLST71
	.uleb128 0x45
	.string	"freq"
	.byte	0x1
	.uahalf	0x3eb
	.uaword	0x1be
	.byte	0x4
	.uaword	0
	.uleb128 0x32
	.string	"source"
	.byte	0x1
	.uahalf	0x3ec
	.uaword	0x1be
	.uaword	.LLST72
	.uleb128 0x39
	.uaword	.LASF37
	.byte	0x1
	.uahalf	0x3ed
	.uaword	0x4798
	.uaword	.LLST73
	.uleb128 0x39
	.uaword	.LASF45
	.byte	0x1
	.uahalf	0x3ee
	.uaword	0x188
	.uaword	.LLST74
	.uleb128 0x32
	.string	"sriDiv"
	.byte	0x1
	.uahalf	0x3ef
	.uaword	0x1b0
	.uaword	.LLST75
	.uleb128 0x2e
	.uaword	0x6c09
	.uaword	.LBB76
	.uaword	.Ldebug_ranges0+0x198
	.byte	0x1
	.uahalf	0x3f0
	.uleb128 0x41
	.uaword	0x6c26
	.byte	0x1
	.uleb128 0x42
	.uaword	0x6c1d
	.uaword	.LLST76
	.uleb128 0x27
	.uaword	.Ldebug_ranges0+0x1b0
	.uleb128 0x2d
	.uaword	0x6c2f
	.uaword	.LLST77
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.string	"IfxScuCcu_switchToBackupClock"
	.byte	0x1
	.uahalf	0x40e
	.byte	0x1
	.uaword	.LFB211
	.uaword	.LFE211
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x79ae
	.uleb128 0x36
	.string	"cfg"
	.byte	0x1
	.uahalf	0x40e
	.uaword	0x7558
	.uaword	.LLST78
	.uleb128 0x39
	.uaword	.LASF42
	.byte	0x1
	.uahalf	0x410
	.uaword	0x188
	.uaword	.LLST79
	.uleb128 0x39
	.uaword	.LASF43
	.byte	0x1
	.uahalf	0x410
	.uaword	0x188
	.uaword	.LLST80
	.uleb128 0x39
	.uaword	.LASF44
	.byte	0x1
	.uahalf	0x411
	.uaword	0x134
	.uaword	.LLST81
	.uleb128 0x3c
	.uaword	.LASF41
	.byte	0x1
	.uahalf	0x412
	.uaword	0x17b
	.byte	0
	.uleb128 0x13
	.uaword	0x68dd
	.uaword	0x79be
	.uleb128 0x14
	.uaword	0x15e
	.byte	0x1
	.byte	0
	.uleb128 0x25
	.string	"IfxScuCcu_aDefaultPllConfigSteps"
	.byte	0x1
	.byte	0x3e
	.uaword	0x79ec
	.byte	0x5
	.byte	0x3
	.uaword	IfxScuCcu_aDefaultPllConfigSteps
	.uleb128 0x2a
	.uaword	0x79ae
	.uleb128 0x25
	.string	"IfxScuCcu_xtalFrequency"
	.byte	0x1
	.byte	0x48
	.uaword	0x1b0
	.byte	0x5
	.byte	0x3
	.uaword	IfxScuCcu_xtalFrequency
	.uleb128 0x46
	.string	"IfxScuCcu_defaultClockConfig"
	.byte	0x1
	.byte	0x52
	.uaword	0x755e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	IfxScuCcu_defaultClockConfig
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
	.uleb128 0x4
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
	.uleb128 0x3
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x4
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
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x13
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
	.uleb128 0x19
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0xa
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x2d
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x2f
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x35
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
	.uleb128 0xa
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.uleb128 0x3e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3f
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
	.uleb128 0x40
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
	.uleb128 0x41
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x42
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x43
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
	.uleb128 0x44
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x45
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x46
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
	.byte	0
	.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL0
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL17
	.uaword	.LFE188
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL16
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL16
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL17
	.uaword	.LFE188
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x2
	.byte	0x40
	.byte	0x9f
	.uaword	.LVL9
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x59
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
	.uaword	.LVL7
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x5a
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL10
	.uaword	.LVL15
	.uahalf	0x1
	.byte	0x5b
	.uaword	.LVL15
	.uaword	.LVL16
	.uahalf	0x3
	.byte	0x7b
	.sleb128 1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL10
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x5d
	.uaword	.LVL13
	.uaword	.LVL16
	.uahalf	0x3
	.byte	0x7d
	.sleb128 1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL10
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x5c
	.uaword	.LVL14
	.uaword	.LVL16
	.uahalf	0x3
	.byte	0x7c
	.sleb128 1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0xa
	.byte	0x9e
	.uleb128 0x8
	.uaxword	0xbebc200
	.uaword	.LVL4
	.uaword	.LVL12
	.uahalf	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL18
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL20
	.uaword	.LFE197
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL22
	.uaword	.LVL23
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL25
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL28
	.uaword	.LVL29
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL24
	.uaword	.LVL25
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL27
	.uaword	.LVL28
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL29
	.uaword	.LFE198
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL30
	.uaword	.LVL31
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL32
	.uaword	.LFE199
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL33
	.uaword	.LVL34
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL35
	.uaword	.LVL36-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL36-1
	.uaword	.LVL37
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL40
	.uaword	.LVL41
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL42
	.uaword	.LVL43
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL45
	.uaword	.LVL46
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL47
	.uaword	.LVL48
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL49
	.uaword	.LFE194
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL38
	.uaword	.LVL39
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL39
	.uaword	.LVL44
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL44
	.uaword	.LVL45
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL46
	.uaword	.LFE194
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL53
	.uaword	.LVL54
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL55
	.uaword	.LFE189
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL50
	.uaword	.LVL51
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL58
	.uaword	.LVL59
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL60
	.uaword	.LVL61
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL62
	.uaword	.LVL63
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL64
	.uaword	.LVL65
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL66
	.uaword	.LFE190
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL56
	.uaword	.LVL57
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL57
	.uaword	.LFE190
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL69
	.uaword	.LVL70
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL71
	.uaword	.LVL72
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL73
	.uaword	.LVL74
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL75
	.uaword	.LVL76
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL77
	.uaword	.LFE201
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL67
	.uaword	.LVL68
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL68
	.uaword	.LFE201
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL81
	.uaword	.LVL82
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL83
	.uaword	.LVL84
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL85
	.uaword	.LFE195
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL78
	.uaword	.LVL79
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL79
	.uaword	.LVL80
	.uahalf	0xd
	.byte	0x7f
	.sleb128 0
	.byte	0xa
	.uahalf	0x3ff
	.byte	0x1a
	.byte	0x9f
	.byte	0x9d
	.uleb128 0xa
	.uleb128 0
	.byte	0x9d
	.uleb128 0x16
	.uleb128 0
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL88
	.uaword	.LVL89
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL90
	.uaword	.LVL91
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL92
	.uaword	.LVL93
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL94
	.uaword	.LVL95
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL96
	.uaword	.LFE202
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL86
	.uaword	.LVL87
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL87
	.uaword	.LFE202
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL99
	.uaword	.LVL100
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL101
	.uaword	.LFE193
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL97
	.uaword	.LVL98
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL106
	.uaword	.LVL107
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL108
	.uaword	.LFE192
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL104
	.uaword	.LVL105
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST31:
	.uaword	.LVL111
	.uaword	.LVL112-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL112-1
	.uaword	.LVL113
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL116
	.uaword	.LVL117
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST32:
	.uaword	.LVL112
	.uaword	.LVL113
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL113
	.uaword	.LVL114
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL116
	.uaword	.LVL117
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST33:
	.uaword	.LVL118
	.uaword	.LVL119-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL119-1
	.uaword	.LFE203
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST34:
	.uaword	.LVL120
	.uaword	.LVL121-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL121-1
	.uaword	.LFE203
	.uahalf	0x1
	.byte	0x5a
	.uaword	0
	.uaword	0
.LLST35:
	.uaword	.LVL122
	.uaword	.LVL123-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL123-1
	.uaword	.LFE203
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST36:
	.uaword	.LVL118
	.uaword	.LVL130
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL130
	.uaword	.LVL131
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL131
	.uaword	.LVL155
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST37:
	.uaword	.LVL124
	.uaword	.LVL127
	.uahalf	0x4
	.byte	0xa
	.uahalf	0x280
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST38:
	.uaword	.LVL124
	.uaword	.LVL128
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL128
	.uaword	.LVL131
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL131
	.uaword	.LVL155
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST39:
	.uaword	.LVL125
	.uaword	.LVL126
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL126
	.uaword	.LVL129
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL129
	.uaword	.LVL130-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL131
	.uaword	.LVL146
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST40:
	.uaword	.LVL151
	.uaword	.LVL153
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL154
	.uaword	.LVL155
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST41:
	.uaword	.LVL133
	.uaword	.LVL134
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST42:
	.uaword	.LVL136
	.uaword	.LVL137
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST43:
	.uaword	.LVL139
	.uaword	.LVL140
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST44:
	.uaword	.LVL142
	.uaword	.LVL143
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST45:
	.uaword	.LVL143
	.uaword	.LVL144
	.uahalf	0x12
	.byte	0x8c
	.sleb128 52
	.byte	0x6
	.byte	0x20
	.byte	0x72
	.sleb128 0
	.byte	0x1a
	.byte	0x8c
	.sleb128 48
	.byte	0x6
	.byte	0x8c
	.sleb128 52
	.byte	0x6
	.byte	0x1a
	.byte	0x21
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL145
	.uaword	.LVL147
	.uahalf	0x3
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST46:
	.uaword	.LVL148
	.uaword	.LVL149
	.uahalf	0xa
	.byte	0x8c
	.sleb128 60
	.byte	0x6
	.byte	0x20
	.byte	0x72
	.sleb128 0
	.byte	0x1a
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL149
	.uaword	.LVL150
	.uahalf	0x3
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL150
	.uaword	.LVL152
	.uahalf	0x3
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST47:
	.uaword	.LVL156
	.uaword	.LVL157
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST48:
	.uaword	.LVL158
	.uaword	.LVL159-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL159-1
	.uaword	.LFE206
	.uahalf	0x1
	.byte	0x5b
	.uaword	0
	.uaword	0
.LLST49:
	.uaword	.LVL158
	.uaword	.LVL159-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL159-1
	.uaword	.LFE206
	.uahalf	0x1
	.byte	0x5a
	.uaword	0
	.uaword	0
.LLST50:
	.uaword	.LVL163
	.uaword	.LVL164-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL164-1
	.uaword	.LFE206
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST51:
	.uaword	.LVL160
	.uaword	.LVL162-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL162-1
	.uaword	.LFE206
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST52:
	.uaword	.LVL161
	.uaword	.LVL165
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST53:
	.uaword	.LVL167
	.uaword	.LVL169-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL169-1
	.uaword	.LVL174
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL177
	.uaword	.LFE207
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST54:
	.uaword	.LVL174
	.uaword	.LVL175-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL175-1
	.uaword	.LVL177
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST55:
	.uaword	.LVL168
	.uaword	.LVL176
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL177
	.uaword	.LFE207
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST56:
	.uaword	.LVL169
	.uaword	.LVL170
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST57:
	.uaword	.LVL171
	.uaword	.LVL172
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL177
	.uaword	.LFE207
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST58:
	.uaword	.LVL171
	.uaword	.LVL172
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST59:
	.uaword	.LVL172
	.uaword	.LVL173
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL177
	.uaword	.LFE207
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST60:
	.uaword	.LVL178
	.uaword	.LVL179-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL179-1
	.uaword	.LVL184
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST61:
	.uaword	.LVL180
	.uaword	.LVL181-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL181-1
	.uaword	.LFE208
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST62:
	.uaword	.LVL185
	.uaword	.LVL186-1
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST63:
	.uaword	.LVL187
	.uaword	.LVL188-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL188-1
	.uaword	.LVL190
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST64:
	.uaword	.LVL195
	.uaword	.LVL196-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL196-1
	.uaword	.LVL201
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST65:
	.uaword	.LVL197
	.uaword	.LVL198-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL198-1
	.uaword	.LVL201
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST66:
	.uaword	.LVL199
	.uaword	.LVL200
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST67:
	.uaword	.LVL188
	.uaword	.LVL189
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST68:
	.uaword	.LVL191
	.uaword	.LVL192
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL201
	.uaword	.LFE209
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST69:
	.uaword	.LVL191
	.uaword	.LVL193
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST70:
	.uaword	.LVL192
	.uaword	.LVL194
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL201
	.uaword	.LFE209
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST71:
	.uaword	.LVL202
	.uaword	.LVL203-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL203-1
	.uaword	.LVL205
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST72:
	.uaword	.LVL203
	.uaword	.LVL204
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST73:
	.uaword	.LVL211
	.uaword	.LVL212
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST74:
	.uaword	.LVL209
	.uaword	.LVL210-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL210-1
	.uaword	.LVL213
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST75:
	.uaword	.LVL206
	.uaword	.LVL207
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL213
	.uaword	.LFE210
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST76:
	.uaword	.LVL206
	.uaword	.LVL207
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST77:
	.uaword	.LVL207
	.uaword	.LVL208
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL213
	.uaword	.LFE210
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST78:
	.uaword	.LVL214
	.uaword	.LVL215-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL215-1
	.uaword	.LFE211
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST79:
	.uaword	.LVL218
	.uaword	.LVL220
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL220
	.uaword	.LFE211
	.uahalf	0x1
	.byte	0x5a
	.uaword	0
	.uaword	0
.LLST80:
	.uaword	.LVL216
	.uaword	.LVL217-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL217-1
	.uaword	.LFE211
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST81:
	.uaword	.LVL218
	.uaword	.LVL219
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL219
	.uaword	.LVL220
	.uahalf	0x3
	.byte	0x79
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL221
	.uaword	.LVL222
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL222
	.uaword	.LVL223
	.uahalf	0x3
	.byte	0x79
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL223
	.uaword	.LVL224
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
	.section .debug_aranges,"",@progbits
	.uaword	0xd4
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB188
	.uaword	.LFE188-.LFB188
	.uaword	.LFB196
	.uaword	.LFE196-.LFB196
	.uaword	.LFB197
	.uaword	.LFE197-.LFB197
	.uaword	.LFB198
	.uaword	.LFE198-.LFB198
	.uaword	.LFB199
	.uaword	.LFE199-.LFB199
	.uaword	.LFB200
	.uaword	.LFE200-.LFB200
	.uaword	.LFB212
	.uaword	.LFE212-.LFB212
	.uaword	.LFB194
	.uaword	.LFE194-.LFB194
	.uaword	.LFB189
	.uaword	.LFE189-.LFB189
	.uaword	.LFB190
	.uaword	.LFE190-.LFB190
	.uaword	.LFB201
	.uaword	.LFE201-.LFB201
	.uaword	.LFB195
	.uaword	.LFE195-.LFB195
	.uaword	.LFB202
	.uaword	.LFE202-.LFB202
	.uaword	.LFB193
	.uaword	.LFE193-.LFB193
	.uaword	.LFB192
	.uaword	.LFE192-.LFB192
	.uaword	.LFB191
	.uaword	.LFE191-.LFB191
	.uaword	.LFB203
	.uaword	.LFE203-.LFB203
	.uaword	.LFB204
	.uaword	.LFE204-.LFB204
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
	.uaword	0
	.uaword	0
	.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB25
	.uaword	.LBE25
	.uaword	.LBB28
	.uaword	.LBE28
	.uaword	.LBB29
	.uaword	.LBE29
	.uaword	0
	.uaword	0
	.uaword	.LBB26
	.uaword	.LBE26
	.uaword	.LBB27
	.uaword	.LBE27
	.uaword	0
	.uaword	0
	.uaword	.LBB32
	.uaword	.LBE32
	.uaword	.LBB35
	.uaword	.LBE35
	.uaword	0
	.uaword	0
	.uaword	.LBB33
	.uaword	.LBE33
	.uaword	.LBB34
	.uaword	.LBE34
	.uaword	0
	.uaword	0
	.uaword	.LBB40
	.uaword	.LBE40
	.uaword	.LBB43
	.uaword	.LBE43
	.uaword	0
	.uaword	0
	.uaword	.LBB44
	.uaword	.LBE44
	.uaword	.LBB48
	.uaword	.LBE48
	.uaword	.LBB49
	.uaword	.LBE49
	.uaword	0
	.uaword	0
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
	.uaword	.LBB52
	.uaword	.LBE52
	.uaword	0
	.uaword	0
	.uaword	.LBB53
	.uaword	.LBE53
	.uaword	.LBB54
	.uaword	.LBE54
	.uaword	.LBB55
	.uaword	.LBE55
	.uaword	0
	.uaword	0
	.uaword	.LBB56
	.uaword	.LBE56
	.uaword	.LBB57
	.uaword	.LBE57
	.uaword	0
	.uaword	0
	.uaword	.LBB58
	.uaword	.LBE58
	.uaword	.LBB60
	.uaword	.LBE60
	.uaword	0
	.uaword	0
	.uaword	.LBB59
	.uaword	.LBE59
	.uaword	.LBB61
	.uaword	.LBE61
	.uaword	.LBB62
	.uaword	.LBE62
	.uaword	.LBB63
	.uaword	.LBE63
	.uaword	0
	.uaword	0
	.uaword	.LBB64
	.uaword	.LBE64
	.uaword	.LBB65
	.uaword	.LBE65
	.uaword	0
	.uaword	0
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
	.uaword	.LBB79
	.uaword	.LBE79
	.uaword	0
	.uaword	0
	.uaword	.LBB77
	.uaword	.LBE77
	.uaword	.LBB78
	.uaword	.LBE78
	.uaword	0
	.uaword	0
	.uaword	.LFB188
	.uaword	.LFE188
	.uaword	.LFB196
	.uaword	.LFE196
	.uaword	.LFB197
	.uaword	.LFE197
	.uaword	.LFB198
	.uaword	.LFE198
	.uaword	.LFB199
	.uaword	.LFE199
	.uaword	.LFB200
	.uaword	.LFE200
	.uaword	.LFB212
	.uaword	.LFE212
	.uaword	.LFB194
	.uaword	.LFE194
	.uaword	.LFB189
	.uaword	.LFE189
	.uaword	.LFB190
	.uaword	.LFE190
	.uaword	.LFB201
	.uaword	.LFE201
	.uaword	.LFB195
	.uaword	.LFE195
	.uaword	.LFB202
	.uaword	.LFE202
	.uaword	.LFB193
	.uaword	.LFE193
	.uaword	.LFB192
	.uaword	.LFE192
	.uaword	.LFB191
	.uaword	.LFE191
	.uaword	.LFB203
	.uaword	.LFE203
	.uaword	.LFB204
	.uaword	.LFE204
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
	.uaword	0
	.uaword	0
	.section .debug_line,"",@progbits
.Ldebug_line0:
	.section .debug_str,"",@progbits
.LASF32:
	.string	"PINBWKEN"
.LASF5:
	.string	"reserved_24"
.LASF40:
	.string	"frequency"
.LASF37:
	.string	"ccucon0"
.LASF30:
	.string	"ESR1WKEN"
.LASF34:
	.string	"ESR0T"
.LASF10:
	.string	"reserved_10"
.LASF21:
	.string	"reserved_11"
.LASF20:
	.string	"reserved_12"
.LASF36:
	.string	"waitTime"
.LASF22:
	.string	"reserved_14"
.LASF13:
	.string	"reserved_15"
.LASF11:
	.string	"reserved_16"
.LASF24:
	.string	"reserved_17"
.LASF16:
	.string	"reserved_18"
.LASF26:
	.string	"reserved_19"
.LASF31:
	.string	"PINAWKEN"
.LASF39:
	.string	"sourceFrequency"
.LASF38:
	.string	"ccucon1"
.LASF41:
	.string	"smuTrapEnable"
.LASF35:
	.string	"ESR1T"
.LASF25:
	.string	"reserved_21"
.LASF2:
	.string	"reserved_22"
.LASF3:
	.string	"reserved_26"
.LASF17:
	.string	"reserved_28"
.LASF29:
	.string	"OSCDISCDIS"
.LASF46:
	.string	"inputFreq"
.LASF9:
	.string	"SLCK"
.LASF44:
	.string	"pllStepsCount"
.LASF0:
	.string	"reserved_0"
.LASF23:
	.string	"reserved_1"
.LASF8:
	.string	"reserved_2"
.LASF1:
	.string	"reserved_3"
.LASF4:
	.string	"reserved_4"
.LASF6:
	.string	"reserved_6"
.LASF12:
	.string	"reserved_7"
.LASF15:
	.string	"reserved_8"
.LASF18:
	.string	"reserved_9"
.LASF28:
	.string	"CLRFINDIS"
.LASF19:
	.string	"reserved_30"
.LASF7:
	.string	"reserved_31"
.LASF14:
	.string	"reserved_23"
.LASF43:
	.string	"endinitSfty_pw"
.LASF42:
	.string	"endinit_pw"
.LASF27:
	.string	"SETFINDIS"
.LASF33:
	.string	"ESR0TRIST"
.LASF45:
	.string	"l_SEndInitPW"
	.extern	IfxScuWdt_setSafetyEndinit,STT_FUNC,0
	.extern	IfxScuWdt_clearSafetyEndinit,STT_FUNC,0
	.extern	IfxScuWdt_setCpuEndinit,STT_FUNC,0
	.extern	IfxScuWdt_clearCpuEndinit,STT_FUNC,0
	.extern	IfxScuWdt_getSafetyWatchdogPassword,STT_FUNC,0
	.extern	IfxScuWdt_getCpuWatchdogPassword,STT_FUNC,0
	.ident	"GCC: (HighTec Release v4.6.3.0) 4.6.3 build on 2013-05-17"
