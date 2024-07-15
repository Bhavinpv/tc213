	.file	"Tp.c"
.section .text,"ax",@progbits
.Ltext0:
	.section .text.MPU_QM_CODE,"ax",@progbits
	.align 3
	.global	TpInit
	.type	TpInit, @function
TpInit:
.LFB0:
	.file 1 "../30_Bsw/ComStack/Tp/Tp.c"
	.loc 1 131 0
.LVL0:
	.loc 1 132 0
	sh	%d15, %d4, 3
	movh.a	%a15, hi:TpInfo
	add	%d15, %d4
	lea	%a15, [%a15] lo:TpInfo
	addsc.a	%a15, %a15, %d15, 2
	mov	%d15, 0
	st.b	[%a15] 20, %d15
	.loc 1 133 0
	mov	%d15, 0
	st.w	[%a15] 16, %d15
	.loc 1 134 0
	st.h	[%a15] 10, %d15
	.loc 1 136 0
	sh	%d15, %d4, 10
	madd	%d4, %d15, %d4, 16
.LVL1:
	movh	%d15, hi:u8_gRxDataBuffer
	addi	%d15, %d15, lo:u8_gRxDataBuffer
	add	%d15, %d4
	st.w	[%a15] 24, %d15
	.loc 1 137 0
	movh	%d15, hi:u8_gTxDataBuffer
	addi	%d15, %d15, lo:u8_gTxDataBuffer
	add	%d4, %d15
	.loc 1 138 0
	mov	%d15, 0
	.loc 1 137 0
	st.w	[%a15] 28, %d4
	.loc 1 138 0
	st.b	[%a15] 32, %d15
	.loc 1 139 0
	ret
.LFE0:
	.size	TpInit, .-TpInit
	.align 3
	.global	TpSetTxBuffer
	.type	TpSetTxBuffer, @function
TpSetTxBuffer:
.LFB3:
	.loc 1 339 0
.LVL2:
	.loc 1 343 0
	mov	%d15, 1040
	jge.u	%d5, %d15, .L2
	.loc 1 345 0 discriminator 1
	movh.a	%a2, hi:TpInfo
	lea	%a2, [%a2] lo:TpInfo
	jz	%d5, .L9
	.loc 1 345 0 is_stmt 0
	sh	%d15, %d4, 3
	add	%d4, %d15
.LVL3:
	addsc.a	%a3, %a2, %d4, 2
	mov	%d15, 0
	ld.a	%a15, [%a3] 28
.LVL4:
.L6:
	.loc 1 345 0 discriminator 2
	add	%d15, 1
	.loc 1 346 0 is_stmt 1 discriminator 2
	ld.bu	%d2, [%a4+]1
	.loc 1 345 0 discriminator 2
	extr.u	%d15, %d15, 0, 16
.LVL5:
	.loc 1 346 0 discriminator 2
	st.b	[%a15+]1, %d2
	.loc 1 345 0 discriminator 2
	jne	%d15, %d5, .L6
.LVL6:
.L5:
	.loc 1 358 0
	mov	%d15, 1
	.loc 1 349 0
	addsc.a	%a15, %a2, %d4, 2
	.loc 1 358 0
	st.h	[%a15] 10, %d15
	.loc 1 360 0
	st.b	[%a15] 20, %d15
	.loc 1 362 0
	mov	%d15, 0
	.loc 1 351 0
	st.h	[%a15]0, %d5
	.loc 1 352 0
	st.h	[%a15] 8, %d5
	.loc 1 362 0
	st.b	[%a15] 12, %d15
	.loc 1 364 0
	mov	%d15, 0
	st.h	[%a15] 6, %d15
.L2:
	ret
.LVL7:
.L9:
	mul	%d4, %d4, 9
.LVL8:
	j	.L5
.LFE3:
	.size	TpSetTxBuffer, .-TpSetTxBuffer
	.align 3
	.global	TpGetTxConfirmation
	.type	TpGetTxConfirmation, @function
TpGetTxConfirmation:
.LFB4:
	.loc 1 382 0
.LVL9:
	.loc 1 383 0
	sh	%d15, %d4, 3
	movh.a	%a15, hi:TpInfo
	add	%d4, %d15
.LVL10:
	lea	%a15, [%a15] lo:TpInfo
	mov	%d15, 0
	addsc.a	%a15, %a15, %d4, 2
	st.b	[%a15] 32, %d15
	.loc 1 384 0
	ret
.LFE4:
	.size	TpGetTxConfirmation, .-TpGetTxConfirmation
	.align 3
	.global	TpTx
	.type	TpTx, @function
TpTx:
.LFB5:
	.loc 1 402 0
.LVL11:
	.loc 1 409 0
	movh.a	%a6, hi:TpInfo
	sh	%d6, %d4, 3
	lea	%a6, [%a6] lo:TpInfo
	add	%d6, %d4
	addsc.a	%a15, %a6, %d6, 2
	.loc 1 402 0
	sub.a	%SP, 8
.LCFI0:
	.loc 1 409 0
	lea	%a2, [%a15] 8
	ld.h	%d15, [%a2] 2
	andn	%d15, %d15, ~(-9)
	extr.u	%d15, %d15, 0, 16
	st.h	[%a2] 2, %d15
	.loc 1 412 0
	jz.t	%d15, 1, .L12
	.loc 1 417 0
	ld.bu	%d2, [%a15] 2
	addi	%d3, %d2, 32
	.loc 1 418 0
	add	%d2, 1
	.loc 1 419 0
	and	%d2, %d2, 15
	.loc 1 417 0
	st.b	[%SP]0, %d3
	.loc 1 419 0
	st.b	[%a15] 2, %d2
.LVL12:
	.loc 1 422 0
	ld.hu	%d2, [%a15] 8
	jge.u	%d2, 8, .L13
	.loc 1 426 0
	andn	%d15, %d15, ~(-4)
	st.h	[%a2] 2, %d15
.L13:
	.loc 1 430 0
	addsc.a	%a15, %a6, %d6, 2
	.loc 1 421 0
	mov	%d8, 7
	.loc 1 430 0
	ld.bu	%d15, [%a15] 4
	st.b	[%a15] 12, %d15
	.loc 1 433 0
	ld.bu	%d15, [%a15] 3
	.loc 1 420 0
	mov	%d2, 1
.LVL13:
	.loc 1 433 0
	add	%d15, -1
	and	%d15, 255
	mov.aa	%a4, %SP
	st.b	[%a15] 3, %d15
	.loc 1 434 0
	jz	%d15, .L22
.LVL14:
.L18:
	.loc 1 486 0
	add	%d15, %d8, -1
	extr.u	%d15, %d15, 0, 16
	.loc 1 480 0
	addsc.a	%a2, %a6, %d6, 2
	.loc 1 486 0
	mov.a	%a15, %d15
	mov	%d5, -1
.L20:
	.loc 1 480 0
	ld.hu	%d15, [%a2] 8
	jz	%d15, .L16
	.loc 1 482 0
	add	%d15, -1
	.loc 1 481 0
	ld.w	%d7, [%a2] 28
	ld.hu	%d3, [%a2] 6
	mov.a	%a7, %d7
	.loc 1 482 0
	st.h	[%a2] 8, %d15
	.loc 1 483 0
	ld.h	%d15, [%a2] 6
	.loc 1 481 0
	addsc.a	%a5, %a7, %d3, 0
	.loc 1 483 0
	add	%d15, 1
	.loc 1 481 0
	ld.bu	%d3, [%a5]0
	addsc.a	%a5, %a4, %d2, 0
	.loc 1 483 0
	st.h	[%a2] 6, %d15
	.loc 1 481 0
	st.b	[%a5]0, %d3
.L17:
	.loc 1 488 0
	add	%d2, 1
	.loc 1 479 0
	add	%d8, -1
	.loc 1 488 0
	and	%d2, %d2, 255
.LVL15:
	.loc 1 479 0
	extr.u	%d8, %d8, 0, 16
.LVL16:
	loop	%a15, .L20
	.loc 1 492 0
	mov	%d15, 1
	addsc.a	%a15, %a6, %d6, 2
	.loc 1 493 0
	movh.a	%a2, hi:TpConfig
	.loc 1 492 0
	st.b	[%a15] 32, %d15
	.loc 1 493 0
	sh	%d15, %d4, 1
	add	%d15, %d4
	lea	%a2, [%a2] lo:TpConfig
	addsc.a	%a2, %a2, %d15, 2
	mov.aa	%a4, %SP
	ld.a	%a2, [%a2]0
	calli	%a2
.LVL17:
	.loc 1 494 0
	st.b	[%a15] 32, %d8
	.loc 1 495 0
	ret
.LVL18:
.L16:
	.loc 1 486 0
	addsc.a	%a3, %a4, %d2, 0
	st.b	[%a3]0, %d5
	j	.L17
.L12:
	.loc 1 444 0
	ld.hu	%d2, [%a15]0
	jlt.u	%d2, 8, .L15
	.loc 1 450 0
	or	%d15, %d15, 4
	.loc 1 452 0
	andn	%d15, %d15, ~(-2)
	.loc 1 459 0
	st.b	[%SP] 1, %d2
.LVL19:
	.loc 1 461 0
	mov	%d8, 6
	.loc 1 452 0
	st.h	[%a2] 2, %d15
	.loc 1 454 0
	mov	%d15, 1000
	mov.aa	%a4, %SP
	st.h	[%a15] 22, %d15
	.loc 1 456 0
	mov	%d15, 1
	st.b	[%a15] 2, %d15
	.loc 1 457 0
	extr.u	%d15, %d2, 8, 4
	.loc 1 460 0
	mov	%d2, 2
	.loc 1 457 0
	addi	%d15, %d15, 16
	st.b	[%SP]0, %d15
	j	.L18
.LVL20:
.L15:
	.loc 1 472 0
	ld.bu	%d2, [%a15]0
	.loc 1 471 0
	andn	%d15, %d15, ~(-4)
	.loc 1 472 0
	and	%d2, %d2, 15
	.loc 1 476 0
	or	%d15, %d15, 8
	.loc 1 472 0
	lea	%a4, [%SP] 8
	st.b	[+%a4]-8, %d2
.LVL21:
	.loc 1 476 0
	st.h	[%a2] 2, %d15
	.loc 1 474 0
	mov	%d8, 7
	.loc 1 473 0
	mov	%d2, 1
	j	.L18
.LVL22:
.L22:
	.loc 1 436 0
	ld.h	%d15, [%a15] 10
	or	%d15, %d15, 4
	.loc 1 438 0
	andn	%d15, %d15, ~(-2)
	st.h	[%a15] 10, %d15
	.loc 1 440 0
	mov	%d15, 1000
	st.h	[%a15] 22, %d15
	j	.L18
.LFE5:
	.size	TpTx, .-TpTx
	.align 3
	.global	TpTask
	.type	TpTask, @function
TpTask:
.LFB1:
	.loc 1 151 0
.LVL23:
	.loc 1 153 0
	movh.a	%a15, hi:TpInfo
	sh	%d8, %d4, 3
	lea	%a15, [%a15] lo:TpInfo
	add	%d8, %d4
	addsc.a	%a2, %a15, %d8, 2
	ld.hu	%d15, [%a2] 10
	jz.t	%d15, 0, .L24
	.loc 1 154 0
	ld.bu	%d2, [%a2] 20
	jeq	%d2, 1, .L29
.LVL24:
.L24:
	.loc 1 160 0
	addsc.a	%a2, %a15, %d8, 2
	ld.bu	%d2, [%a2] 12
	jnz	%d2, .L25
	.loc 1 161 0
	ld.hu	%d15, [%a2] 10
.L26:
	.loc 1 165 0
	jz.t	%d15, 2, .L23
	.loc 1 166 0
	addsc.a	%a15, %a15, %d8, 2
	ld.h	%d2, [%a15] 22
	add	%d2, -1
	extr.u	%d2, %d2, 0, 16
	st.h	[%a15] 22, %d2
	.loc 1 167 0
	jnz	%d2, .L23
	.loc 1 168 0
	mov	%d15, 5
	st.b	[%a15] 20, %d15
.L23:
	ret
.L25:
	.loc 1 161 0
	add	%d2, -1
	addsc.a	%a2, %a15, %d8, 2
	st.b	[%a2] 12, %d2
	ld.hu	%d15, [%a2] 10
	j	.L26
.LVL25:
.L29:
	.loc 1 155 0
	ld.bu	%d2, [%a2] 12
	jnz	%d2, .L25
	.loc 1 156 0
	ld.bu	%d2, [%a2] 32
	jnz	%d2, .L26
	.loc 1 157 0
	call	TpTx
.LVL26:
	j	.L24
.LFE1:
	.size	TpTask, .-TpTask
	.align 3
	.global	SendFcFrame
	.type	SendFcFrame, @function
SendFcFrame:
.LFB6:
	.loc 1 508 0
.LVL27:
	.loc 1 517 0
	sh	%d15, %d4, 1
	movh.a	%a15, hi:TpConfig
	add	%d15, %d4
	lea	%a15, [%a15] lo:TpConfig
	addsc.a	%a15, %a15, %d15, 2
	.loc 1 508 0
	sub.a	%SP, 8
.LCFI1:
	.loc 1 518 0
	ld.h	%d15, [%a15] 10
	.loc 1 516 0
	insert	%d5, %d5, 3, 4, 28
.LVL28:
	.loc 1 518 0
	st.b	[%SP] 2, %d15
.LVL29:
	.loc 1 521 0
	mov	%d15, -1
	.loc 1 517 0
	ld.bu	%d9, [%a15] 8
	.loc 1 525 0
	ld.a	%a15, [%a15]0
	.loc 1 508 0
	mov	%d8, %d4
	.loc 1 521 0
	st.b	[%SP] 3, %d15
.LVL30:
	st.b	[%SP] 4, %d15
.LVL31:
	st.b	[%SP] 5, %d15
.LVL32:
	st.b	[%SP] 6, %d15
.LVL33:
	st.b	[%SP] 7, %d15
.LVL34:
	.loc 1 516 0
	st.b	[%SP]0, %d5
	.loc 1 517 0
	st.b	[%SP] 1, %d9
	.loc 1 525 0
	mov.aa	%a4, %SP
	calli	%a15
.LVL35:
	.loc 1 528 0
	sh	%d15, %d8, 3
	movh.a	%a15, hi:TpInfo
	add	%d8, %d15
	lea	%a15, [%a15] lo:TpInfo
	addsc.a	%a15, %a15, %d8, 2
	st.b	[%a15] 3, %d9
	.loc 1 530 0
	ret
.LFE6:
	.size	SendFcFrame, .-SendFcFrame
	.align 3
	.global	TpRx
	.type	TpRx, @function
TpRx:
.LFB2:
	.loc 1 187 0
	.loc 1 189 0
	mov	%d15, 0
	.loc 1 187 0
	sub.a	%SP, 8
.LCFI2:
	.loc 1 187 0
	mov	%d9, %d4
	.loc 1 189 0
	st.w	[%SP]0, %d15
	st.w	[%SP] 4, %d15
	lea	%a2, [%SP] -1
	mov	%d2, 0
	mov.a	%a15, 7
.L32:
	.loc 1 195 0 discriminator 2
	addsc.a	%a3, %a4, %d2, 2
	add	%d2, 1
	ld.h	%d15, [%a3]0
	st.b	[+%a2]1, %d15
	.loc 1 194 0 discriminator 2
	loop	%a15, .L32
	.loc 1 201 0
	ld.bu	%d15, [%SP]0
	.loc 1 202 0
	and	%d8, %d15, 15
	.loc 1 203 0
	and	%d15, %d15, 240
	eq	%d2, %d15, 16
	jnz	%d2, .L35
	ge.u	%d2, %d15, 17
	jz	%d2, .L63
	eq	%d2, %d15, 32
	jnz	%d2, .L36
	eq	%d15, %d15, 48
	jnz	%d15, .L64
.L33:
	movh	%d10, hi:TpInfo
	addi	%d10, %d10, lo:TpInfo
.L48:
	.loc 1 302 0
	madd	%d15, %d10, %d9, 36
	mov.a	%a15, %d15
	ld.w	%d4, [%a15] 16
.L54:
	.loc 1 320 0
	jlt.u	%d4, 2, .L31
.L65:
	mul	%d11, %d9, 9
.L61:
	.loc 1 322 0
	sh	%d15, %d9, 1
	movh.a	%a15, hi:TpConfig
	mov.a	%a3, %d10
	lea	%a15, [%a15] lo:TpConfig
	add	%d9, %d15
	addsc.a	%a2, %a15, %d9, 2
	addsc.a	%a15, %a3, %d11, 2
	ld.a	%a2, [%a2] 4
	ld.a	%a4, [%a15] 24
	ld.hu	%d5, [%a15]0
	.loc 1 325 0
	lea	%SP, [%SP] 8
	.loc 1 322 0
	ji	%a2
.L63:
	.loc 1 203 0
	jnz	%d15, .L33
	.loc 1 261 0
	movh	%d10, hi:TpInfo
	addi	%d10, %d10, lo:TpInfo
	sh	%d11, %d9, 3
	mov.a	%a2, %d10
	mov	%d2, 1
	add	%d11, %d9
	addsc.a	%a15, %a2, %d11, 2
	st.b	[%a15] 2, %d2
	.loc 1 262 0
	mov	%d2, 1
	.loc 1 263 0
	st.h	[%a15] 6, %d15
	.loc 1 269 0
	add	%d15, %d8, -2
	extr.u	%d15, %d15, 0, 16
	.loc 1 262 0
	st.w	[%a15] 16, %d2
	.loc 1 265 0
	st.h	[%a15]0, %d8
	.loc 1 266 0
	st.h	[%a15] 8, %d8
	.loc 1 269 0
	jge.u	%d15, 6, .L46
	.loc 1 270 0
	mov	%d15, 2
	st.w	[%a15] 16, %d15
.L47:
	.loc 1 210 0
	mov.a	%a12, 1
.L55:
	.loc 1 325 0 discriminator 2
	mov.a	%a4, %d10
	.loc 1 314 0 discriminator 2
	mov	%d15, 0
	.loc 1 325 0 discriminator 2
	addsc.a	%a15, %a4, %d11, 2
	.loc 1 314 0 discriminator 2
	ld.a	%a3, [%a15] 24
	.loc 1 325 0 discriminator 2
	ld.hu	%d2, [%a15] 6
.L56:
	.loc 1 314 0 discriminator 2
	lea	%a4, [%SP] 8
	addsc.a	%a15, %a4, %d15, 0
	addsc.a	%a2, %a3, %d2, 0
	add.a	%a15, %a12
	.loc 1 313 0 discriminator 2
	add	%d15, 1
	.loc 1 314 0 discriminator 2
	ld.bu	%d3, [%a15] -8
	.loc 1 313 0 discriminator 2
	extr.u	%d15, %d15, 0, 16
	.loc 1 316 0 discriminator 2
	add	%d2, 1
	.loc 1 314 0 discriminator 2
	st.b	[%a2]0, %d3
	.loc 1 316 0 discriminator 2
	extr.u	%d2, %d2, 0, 16
	.loc 1 313 0 discriminator 2
	jlt.u	%d15, %d8, .L56
	.loc 1 313 0 is_stmt 0
	mov.a	%a2, %d10
	addsc.a	%a15, %a2, %d11, 2
	st.h	[%a15] 6, %d2
.L62:
	ld.w	%d4, [%a15] 16
	.loc 1 320 0 is_stmt 1
	jge.u	%d4, 2, .L65
.L31:
	ret
.L64:
	.loc 1 281 0
	movh	%d10, hi:TpInfo
	addi	%d10, %d10, lo:TpInfo
	sh	%d11, %d9, 3
	mov.a	%a3, %d10
	add	%d11, %d9
	addsc.a	%a15, %a3, %d11, 2
	lea	%a2, [%a15] 8
	ld.hu	%d15, [%a2] 2
	jz.t	%d15, 2, .L62
	.loc 1 283 0
	andn	%d15, %d15, ~(-5)
	extr.u	%d15, %d15, 0, 16
	st.h	[%a2] 2, %d15
	.loc 1 284 0
	jeq	%d8, 1, .L52
	jz	%d8, .L51
	jne	%d8, 2, .L48
	.loc 1 299 0
	mov	%d2, 3
	.loc 1 301 0
	andn	%d15, %d15, ~(-2)
	ld.w	%d4, [%a15] 16
	.loc 1 299 0
	st.b	[%a15] 20, %d2
	.loc 1 301 0
	st.h	[%a2] 2, %d15
	.loc 1 302 0
	j	.L54
.L36:
	.loc 1 231 0
	movh	%d10, hi:TpInfo
	addi	%d10, %d10, lo:TpInfo
	sh	%d11, %d9, 3
	mov.a	%a4, %d10
	add	%d11, %d9
	addsc.a	%a15, %a4, %d11, 2
	ld.bu	%d15, [%a15] 2
	jeq	%d15, %d8, .L66
.L42:
	.loc 1 256 0
	mov	%d15, 4
	mov	%d4, 4
	st.w	[%a15] 16, %d15
	j	.L61
.L35:
	.loc 1 206 0
	movh	%d10, hi:TpInfo
	addi	%d10, %d10, lo:TpInfo
	sh	%d11, %d9, 3
	mov.a	%a2, %d10
	mov	%d15, 1
	add	%d11, %d9
	addsc.a	%a15, %a2, %d11, 2
	.loc 1 213 0
	sh	%d8, %d8, 8
	.loc 1 206 0
	st.b	[%a15] 2, %d15
	.loc 1 207 0
	mov	%d15, 1
	st.w	[%a15] 16, %d15
	.loc 1 208 0
	mov	%d15, 0
	st.h	[%a15] 6, %d15
	.loc 1 214 0
	ld.bu	%d15, [%SP] 1
	add	%d8, %d15
	st.h	[%a15]0, %d8
	.loc 1 215 0
	st.h	[%a15] 8, %d8
	.loc 1 216 0
	jlt.u	%d8, 8, .L39
	.loc 1 217 0
	add	%d8, -6
	st.h	[%a15] 8, %d8
.L39:
	.loc 1 221 0
	mov.a	%a3, %d10
	mov	%d2, 1041
	addsc.a	%a15, %a3, %d11, 2
	.loc 1 222 0
	mov	%d4, %d9
	.loc 1 221 0
	ld.hu	%d15, [%a15]0
	jlt.u	%d15, %d2, .L40
	.loc 1 223 0
	mov	%d15, 3
	.loc 1 222 0
	mov	%d5, 2
	call	SendFcFrame
	.loc 1 223 0
	mov.a	%a12, 2
	st.w	[%a15] 16, %d15
	.loc 1 210 0
	mov	%d8, 6
	j	.L55
.L46:
	.loc 1 273 0
	mov	%d15, 4
	st.w	[%a15] 16, %d15
	.loc 1 313 0
	jnz	%d8, .L47
	j	.L48
.L40:
	.loc 1 226 0
	mov	%d5, 0
	call	SendFcFrame
	mov.a	%a12, 2
	.loc 1 210 0
	mov	%d8, 6
	j	.L55
.L66:
	.loc 1 232 0
	add	%d15, 1
	.loc 1 233 0
	and	%d15, %d15, 15
	.loc 1 235 0
	ld.hu	%d8, [%a15] 8
	.loc 1 233 0
	st.b	[%a15] 2, %d15
	.loc 1 235 0
	jlt.u	%d8, 8, .L43
	.loc 1 238 0
	ld.bu	%d15, [%a15] 3
	.loc 1 236 0
	add	%d8, -7
	.loc 1 238 0
	add	%d15, -1
	and	%d15, 255
	.loc 1 236 0
	st.h	[%a15] 8, %d8
	.loc 1 240 0
	mov.a	%a12, 1
	.loc 1 238 0
	st.b	[%a15] 3, %d15
	.loc 1 237 0
	mov	%d8, 7
	.loc 1 240 0
	jnz	%d15, .L55
	.loc 1 241 0
	mov	%d4, %d9
	mov	%d5, 0
	call	SendFcFrame
	j	.L55
.L51:
	.loc 1 286 0
	ld.bu	%d2, [%SP] 1
	st.b	[%a15] 3, %d2
	.loc 1 287 0
	ld.bu	%d2, [%SP] 2
	.loc 1 291 0
	or	%d15, %d15, 3
	.loc 1 287 0
	add	%d2, 1
	and	%d2, %d2, 255
	.loc 1 291 0
	st.h	[%a2] 2, %d15
	ld.w	%d4, [%a15] 16
	.loc 1 287 0
	st.b	[%a15] 4, %d2
	.loc 1 289 0
	st.b	[%a15] 12, %d2
	.loc 1 292 0
	j	.L54
.L43:
	.loc 1 246 0
	mov	%d15, 0
	.loc 1 245 0
	and	%d8, %d8, 255
	.loc 1 246 0
	st.h	[%a15] 8, %d15
	.loc 1 247 0
	jz	%d8, .L42
	.loc 1 248 0
	mov	%d15, 2
	mov.a	%a12, 1
	st.w	[%a15] 16, %d15
	j	.L55
.L52:
	.loc 1 295 0
	or	%d15, %d15, 4
	ld.w	%d4, [%a15] 16
	st.h	[%a2] 2, %d15
	.loc 1 296 0
	j	.L54
.LFE2:
	.size	TpRx, .-TpRx
	.section .bss.MPU_QM_VAR_NOINIT,"aw",@nobits
	.align 3
	.type	TpInfo, @object
	.size	TpInfo, 36
TpInfo:
	.zero	36
	.align 3
	.type	u8_gRxDataBuffer, @object
	.size	u8_gRxDataBuffer, 1040
u8_gRxDataBuffer:
	.zero	1040
	.align 3
	.type	u8_gTxDataBuffer, @object
	.size	u8_gTxDataBuffer, 1040
u8_gTxDataBuffer:
	.zero	1040
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
	.uaword	.LFB0
	.uaword	.LFE0-.LFB0
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB3
	.uaword	.LFE3-.LFB3
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB4
	.uaword	.LFE4-.LFB4
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB5
	.uaword	.LFE5-.LFB5
	.byte	0x4
	.uaword	.LCFI0-.LFB5
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB1
	.uaword	.LFE1-.LFB1
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB6
	.uaword	.LFE6-.LFB6
	.byte	0x4
	.uaword	.LCFI1-.LFB6
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB2
	.uaword	.LFE2-.LFB2
	.byte	0x4
	.uaword	.LCFI2-.LFB2
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE12:
.section .text,"ax",@progbits
.Letext0:
	.file 2 "../30_Bsw/Common/Platform_Types.h"
	.file 3 "../30_Bsw/Mcal/Can/can_cfg.h"
	.file 4 "../30_Bsw/ComStack/Tp/Tp_cfg.h"
	.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x955
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.6.3 build on 2013-05-17"
	.byte	0x1
	.string	"../30_Bsw/ComStack/Tp/Tp.c"
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
	.byte	0x2
	.byte	0x5b
	.uaword	0x73
	.uleb128 0x3
	.string	"uint16"
	.byte	0x2
	.byte	0x5d
	.uaword	0x91
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x4
	.byte	0x4
	.byte	0x3
	.uahalf	0x469
	.uaword	0x1fd
	.uleb128 0x5
	.string	"CAN_RX_COM_WAKEUPSLEEPMANAGEMENT_IDX"
	.sleb128 0
	.uleb128 0x5
	.string	"CAN_RX_HVDC_SAFETYMEASURE_IDX"
	.sleb128 1
	.uleb128 0x5
	.string	"CAN_RX_HTB_CMD_IDX"
	.sleb128 2
	.uleb128 0x5
	.string	"CAN_RX_PARAMETER_COM_DCDC_IDX"
	.sleb128 3
	.uleb128 0x5
	.string	"CAN_RX_DCDC_HSFB_DIAG_REQ_IDX"
	.sleb128 4
	.uleb128 0x5
	.string	"CAN_RX_DCDC_DEV_CMD_IDX"
	.sleb128 5
	.uleb128 0x5
	.string	"CAN_RX_DCDC_CMD_IDX"
	.sleb128 6
	.uleb128 0x5
	.string	"CAN_RX_MSG_SIZE"
	.sleb128 7
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.byte	0x3
	.uahalf	0x474
	.uaword	0x3d2
	.uleb128 0x5
	.string	"CAN_TX_LVDC_PMA_ERRCODE_IDX"
	.sleb128 0
	.uleb128 0x5
	.string	"CAN_TX_DCDC_HTB_MEASURE_IDX"
	.sleb128 1
	.uleb128 0x5
	.string	"CAN_TX_LVDC_WAKEUPSLEEPMANAGEMENT_IDX"
	.sleb128 2
	.uleb128 0x5
	.string	"CAN_TX_LVDC_SAFETYMEASURE_IDX"
	.sleb128 3
	.uleb128 0x5
	.string	"CAN_TX_DCDC_MEASURE4_IDX"
	.sleb128 4
	.uleb128 0x5
	.string	"CAN_TX_DCDC_STATUS_ERRCODE_IDX"
	.sleb128 5
	.uleb128 0x5
	.string	"CAN_TX_PARAMETER_DCDC_COM_IDX"
	.sleb128 6
	.uleb128 0x5
	.string	"CAN_TX_DCDC_HSFB_DIAG_RESP_IDX"
	.sleb128 7
	.uleb128 0x5
	.string	"CAN_TX_DCDC_MEASURE2_IDX"
	.sleb128 8
	.uleb128 0x5
	.string	"CAN_TX_LVDC_PMA_ERRSRC_IDX"
	.sleb128 9
	.uleb128 0x5
	.string	"CAN_TX_DCDC_SCOPE1_IDX"
	.sleb128 10
	.uleb128 0x5
	.string	"CAN_TX_DCDC_SCOPE0_IDX"
	.sleb128 11
	.uleb128 0x5
	.string	"CAN_TX_DCDC_STATUS_IDX"
	.sleb128 12
	.uleb128 0x5
	.string	"CAN_TX_DCDC_MEASURE3_IDX"
	.sleb128 13
	.uleb128 0x5
	.string	"CAN_TX_DCDC_MEASURE_IDX"
	.sleb128 14
	.uleb128 0x5
	.string	"CAN_TX_MSG_SIZE"
	.sleb128 15
	.byte	0
	.uleb128 0x6
	.string	"eIndicationStatus"
	.byte	0x4
	.byte	0x4
	.byte	0x2f
	.uaword	0x43b
	.uleb128 0x5
	.string	"TpRxIdle"
	.sleb128 0
	.uleb128 0x5
	.string	"TpRxStarted"
	.sleb128 1
	.uleb128 0x5
	.string	"TpRxOk"
	.sleb128 2
	.uleb128 0x5
	.string	"TpRxBufferOvflw"
	.sleb128 3
	.uleb128 0x5
	.string	"TpRxError"
	.sleb128 4
	.uleb128 0x5
	.string	"TpRxTimeout"
	.sleb128 5
	.byte	0
	.uleb128 0x3
	.string	"eIndicationStatus_t"
	.byte	0x4
	.byte	0x36
	.uaword	0x3d2
	.uleb128 0x7
	.byte	0xc
	.byte	0x4
	.byte	0x38
	.uaword	0x4a9
	.uleb128 0x8
	.string	"SetTxData"
	.byte	0x4
	.byte	0x3a
	.uaword	0x4c0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"RxIndication"
	.byte	0x4
	.byte	0x3c
	.uaword	0x4dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.uaword	.LASF0
	.byte	0x4
	.byte	0x3e
	.uaword	0xfb
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.string	"bStMin"
	.byte	0x4
	.byte	0x3f
	.uaword	0xfb
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.byte	0
	.uleb128 0xa
	.byte	0x1
	.uaword	0x4ba
	.uleb128 0xb
	.uaword	0xee
	.uleb128 0xb
	.uaword	0x4ba
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.uaword	0xee
	.uleb128 0xc
	.byte	0x4
	.uaword	0x4a9
	.uleb128 0xa
	.byte	0x1
	.uaword	0x4dc
	.uleb128 0xb
	.uaword	0x43b
	.uleb128 0xb
	.uaword	0x4ba
	.uleb128 0xb
	.uaword	0xfb
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.uaword	0x4c6
	.uleb128 0x3
	.string	"TpConfig_t"
	.byte	0x4
	.byte	0x40
	.uaword	0x456
	.uleb128 0x7
	.byte	0x24
	.byte	0x1
	.byte	0x4f
	.uaword	0x625
	.uleb128 0x9
	.uaword	.LASF1
	.byte	0x1
	.byte	0x50
	.uaword	0xfb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"bSeqCounter"
	.byte	0x1
	.byte	0x51
	.uaword	0xee
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x9
	.uaword	.LASF0
	.byte	0x1
	.byte	0x52
	.uaword	0xee
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x8
	.string	"bStMin"
	.byte	0x1
	.byte	0x53
	.uaword	0xee
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.uaword	.LASF2
	.byte	0x1
	.byte	0x54
	.uaword	0xfb
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x8
	.string	"wRemainingDl"
	.byte	0x1
	.byte	0x55
	.uaword	0xfb
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.string	"wTxStatus"
	.byte	0x1
	.byte	0x56
	.uaword	0xfb
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x8
	.string	"bRemainingStMin"
	.byte	0x1
	.byte	0x57
	.uaword	0xee
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.string	"eStatusIndication"
	.byte	0x1
	.byte	0x58
	.uaword	0x43b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.string	"bStatusConfirm"
	.byte	0x1
	.byte	0x59
	.uaword	0xee
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x8
	.string	"wTimeoutCnt"
	.byte	0x1
	.byte	0x5a
	.uaword	0xfb
	.byte	0x2
	.byte	0x23
	.uleb128 0x16
	.uleb128 0x8
	.string	"p2_RxDataBuffer"
	.byte	0x1
	.byte	0x5b
	.uaword	0x4ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.string	"p2_TxDataBuffer"
	.byte	0x1
	.byte	0x5c
	.uaword	0x4ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x8
	.string	"TxActive"
	.byte	0x1
	.byte	0x5d
	.uaword	0xee
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0
	.uleb128 0x3
	.string	"TpInfo_t"
	.byte	0x1
	.byte	0x5e
	.uaword	0x4f4
	.uleb128 0xd
	.byte	0x1
	.string	"TpInit"
	.byte	0x1
	.byte	0x82
	.byte	0x1
	.uaword	.LFB0
	.uaword	.LFE0
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x660
	.uleb128 0xe
	.uaword	.LASF3
	.byte	0x1
	.byte	0x82
	.uaword	0xee
	.uaword	.LLST0
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.string	"TpSetTxBuffer"
	.byte	0x1
	.uahalf	0x152
	.byte	0x1
	.uaword	.LFB3
	.uaword	.LFE3
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x6c3
	.uleb128 0x10
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x152
	.uaword	0xee
	.uaword	.LLST1
	.uleb128 0x11
	.string	"pbData"
	.byte	0x1
	.uahalf	0x152
	.uaword	0x4ba
	.uaword	.LLST2
	.uleb128 0x12
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x152
	.uaword	0xfb
	.byte	0x1
	.byte	0x55
	.uleb128 0x13
	.string	"i"
	.byte	0x1
	.uahalf	0x154
	.uaword	0xfb
	.uaword	.LLST3
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.string	"TpGetTxConfirmation"
	.byte	0x1
	.uahalf	0x17d
	.byte	0x1
	.uaword	.LFB4
	.uaword	.LFE4
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x6fd
	.uleb128 0x10
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x17d
	.uaword	0xee
	.uaword	.LLST4
	.byte	0
	.uleb128 0x14
	.byte	0x1
	.string	"TpTx"
	.byte	0x1
	.uahalf	0x191
	.byte	0x1
	.uaword	.LFB5
	.uaword	.LFE5
	.uaword	.LLST5
	.uaword	0x775
	.uleb128 0x10
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x191
	.uaword	0xee
	.uaword	.LLST6
	.uleb128 0x13
	.string	"i"
	.byte	0x1
	.uahalf	0x193
	.uaword	0xee
	.uaword	.LLST7
	.uleb128 0x13
	.string	"wSize"
	.byte	0x1
	.uahalf	0x194
	.uaword	0xfb
	.uaword	.LLST8
	.uleb128 0x13
	.string	"bStart"
	.byte	0x1
	.uahalf	0x195
	.uaword	0xee
	.uaword	.LLST9
	.uleb128 0x15
	.string	"bTxDataBuffer"
	.byte	0x1
	.uahalf	0x196
	.uaword	0x775
	.byte	0x2
	.byte	0x91
	.sleb128 -8
	.byte	0
	.uleb128 0x16
	.uaword	0xee
	.uaword	0x785
	.uleb128 0x17
	.uaword	0xd1
	.byte	0x7
	.byte	0
	.uleb128 0xd
	.byte	0x1
	.string	"TpTask"
	.byte	0x1
	.byte	0x96
	.byte	0x1
	.uaword	.LFB1
	.uaword	.LFE1
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x7b0
	.uleb128 0xe
	.uaword	.LASF3
	.byte	0x1
	.byte	0x96
	.uaword	0xee
	.uaword	.LLST10
	.byte	0
	.uleb128 0x14
	.byte	0x1
	.string	"SendFcFrame"
	.byte	0x1
	.uahalf	0x1fb
	.byte	0x1
	.uaword	.LFB6
	.uaword	.LFE6
	.uaword	.LLST11
	.uaword	0x81a
	.uleb128 0x10
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x1fb
	.uaword	0xee
	.uaword	.LLST12
	.uleb128 0x11
	.string	"bFcStatus"
	.byte	0x1
	.uahalf	0x1fb
	.uaword	0xee
	.uaword	.LLST13
	.uleb128 0x15
	.string	"bTxData"
	.byte	0x1
	.uahalf	0x1fd
	.uaword	0x775
	.byte	0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x13
	.string	"i"
	.byte	0x1
	.uahalf	0x1fe
	.uaword	0xee
	.uaword	.LLST14
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.string	"TpRx"
	.byte	0x1
	.byte	0xba
	.byte	0x1
	.uaword	.LFB2
	.uaword	.LFE2
	.uaword	.LLST15
	.uaword	0x8af
	.uleb128 0x19
	.uaword	.LASF3
	.byte	0x1
	.byte	0xba
	.uaword	0xee
	.byte	0x1
	.byte	0x59
	.uleb128 0x1a
	.string	"data"
	.byte	0x1
	.byte	0xba
	.uaword	0x8af
	.byte	0x1
	.byte	0x64
	.uleb128 0x1b
	.string	"bPciType"
	.byte	0x1
	.byte	0xbc
	.uaword	0xee
	.uleb128 0x1c
	.string	"bAddInfo"
	.byte	0x1
	.byte	0xbc
	.uaword	0xee
	.byte	0x1
	.byte	0x58
	.uleb128 0x1c
	.string	"u8_RxData"
	.byte	0x1
	.byte	0xbd
	.uaword	0x775
	.byte	0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x1c
	.string	"wDataSize"
	.byte	0x1
	.byte	0xbe
	.uaword	0xfb
	.byte	0x1
	.byte	0x58
	.uleb128 0x1d
	.uaword	.LASF2
	.byte	0x1
	.byte	0xbe
	.uaword	0xfb
	.uleb128 0x1c
	.string	"i"
	.byte	0x1
	.byte	0xbf
	.uaword	0xfb
	.byte	0x1
	.byte	0x5f
	.byte	0
	.uleb128 0x1e
	.uaword	0x8b4
	.uleb128 0xc
	.byte	0x4
	.uaword	0xfb
	.uleb128 0x16
	.uaword	0x625
	.uaword	0x8ca
	.uleb128 0x17
	.uaword	0xd1
	.byte	0
	.byte	0
	.uleb128 0x1c
	.string	"TpInfo"
	.byte	0x1
	.byte	0x66
	.uaword	0x8ba
	.byte	0x5
	.byte	0x3
	.uaword	TpInfo
	.uleb128 0x16
	.uaword	0xee
	.uaword	0x8f5
	.uleb128 0x17
	.uaword	0xd1
	.byte	0
	.uleb128 0x1f
	.uaword	0xd1
	.uahalf	0x40f
	.byte	0
	.uleb128 0x1c
	.string	"u8_gRxDataBuffer"
	.byte	0x1
	.byte	0x68
	.uaword	0x8de
	.byte	0x5
	.byte	0x3
	.uaword	u8_gRxDataBuffer
	.uleb128 0x1c
	.string	"u8_gTxDataBuffer"
	.byte	0x1
	.byte	0x69
	.uaword	0x8de
	.byte	0x5
	.byte	0x3
	.uaword	u8_gTxDataBuffer
	.uleb128 0x16
	.uaword	0x4e2
	.uaword	0x941
	.uleb128 0x17
	.uaword	0xd1
	.byte	0
	.byte	0
	.uleb128 0x20
	.string	"TpConfig"
	.byte	0x4
	.byte	0x46
	.uaword	0x953
	.byte	0x1
	.byte	0x1
	.uleb128 0x1e
	.uaword	0x931
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
	.uleb128 0x5
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
	.uleb128 0x4
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
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x2
	.uleb128 0x6
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
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0x2
	.uleb128 0x6
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
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
	.uleb128 0x6
	.uleb128 0x1
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0x2
	.uleb128 0xa
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
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
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
	.uaword	.LVL2
	.uaword	.LVL3
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL7
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL2
	.uaword	.LVL4
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL7
	.uaword	.LFE3
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL2
	.uaword	.LVL4
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL5
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL7
	.uaword	.LFE3
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL9
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LFB5
	.uaword	.LCFI0
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI0
	.uaword	.LFE5
	.uahalf	0x2
	.byte	0x8a
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL11
	.uaword	.LVL17-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL18
	.uaword	.LFE5
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL13
	.uaword	.LVL14
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL15
	.uaword	.LVL17-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL22
	.uaword	.LFE5
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL12
	.uaword	.LVL14
	.uahalf	0x2
	.byte	0x37
	.byte	0x9f
	.uaword	.LVL16
	.uaword	.LVL18
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL19
	.uaword	.LVL20
	.uahalf	0x2
	.byte	0x36
	.byte	0x9f
	.uaword	.LVL21
	.uaword	.LFE5
	.uahalf	0x2
	.byte	0x37
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL12
	.uaword	.LVL14
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL19
	.uaword	.LVL20
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL21
	.uaword	.LFE5
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL23
	.uaword	.LVL24
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL25
	.uaword	.LVL26-1
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LFB6
	.uaword	.LCFI1
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI1
	.uaword	.LFE6
	.uahalf	0x2
	.byte	0x8a
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL27
	.uaword	.LVL35-1
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL27
	.uaword	.LVL28
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL29
	.uaword	.LVL30
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL30
	.uaword	.LVL31
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL31
	.uaword	.LVL32
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	.LVL32
	.uaword	.LVL33
	.uahalf	0x2
	.byte	0x36
	.byte	0x9f
	.uaword	.LVL33
	.uaword	.LVL34
	.uahalf	0x2
	.byte	0x37
	.byte	0x9f
	.uaword	.LVL34
	.uaword	.LFE6
	.uahalf	0x2
	.byte	0x38
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LFB2
	.uaword	.LCFI2
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI2
	.uaword	.LFE2
	.uahalf	0x2
	.byte	0x8a
	.sleb128 8
	.uaword	0
	.uaword	0
	.section .debug_aranges,"",@progbits
	.uaword	0x4c
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB0
	.uaword	.LFE0-.LFB0
	.uaword	.LFB3
	.uaword	.LFE3-.LFB3
	.uaword	.LFB4
	.uaword	.LFE4-.LFB4
	.uaword	.LFB5
	.uaword	.LFE5-.LFB5
	.uaword	.LFB1
	.uaword	.LFE1-.LFB1
	.uaword	.LFB6
	.uaword	.LFE6-.LFB6
	.uaword	.LFB2
	.uaword	.LFE2-.LFB2
	.uaword	0
	.uaword	0
	.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB0
	.uaword	.LFE0
	.uaword	.LFB3
	.uaword	.LFE3
	.uaword	.LFB4
	.uaword	.LFE4
	.uaword	.LFB5
	.uaword	.LFE5
	.uaword	.LFB1
	.uaword	.LFE1
	.uaword	.LFB6
	.uaword	.LFE6
	.uaword	.LFB2
	.uaword	.LFE2
	.uaword	0
	.uaword	0
	.section .debug_line,"",@progbits
.Ldebug_line0:
	.section .debug_str,"",@progbits
.LASF3:
	.string	"IfNmb"
.LASF0:
	.string	"bBlockSize"
.LASF2:
	.string	"wDataIndex"
.LASF1:
	.string	"wDataLength"
	.extern	TpConfig,STT_OBJECT,12
	.ident	"GCC: (HighTec Release v4.6.3.0) 4.6.3 build on 2013-05-17"
