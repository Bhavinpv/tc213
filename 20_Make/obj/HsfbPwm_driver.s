	.file	"HsfbPwm_driver.c"
.section .text,"ax",@progbits
.Ltext0:
	.section .code_ram,"ax",@progbits
	.align 3
	.type	HsfbPwm_enter_internal_Run, @function
HsfbPwm_enter_internal_Run:
.LFB210:
	.file 1 "../40_Appl/HsfbPwm/HsfbPwm_driver.c"
	.loc 1 597 0
	.loc 1 598 0
	movh.a	%a2, hi:HsfbPwm_DW
	lea	%a2, [%a2] lo:HsfbPwm_DW
	ld.bu	%d15, [%a2] 102
	.loc 1 599 0
	movh.a	%a7, hi:HsfbPwm_StartState
	.loc 1 598 0
	jnz	%d15, .L2
	.loc 1 598 0 is_stmt 0 discriminator 1
	movh.a	%a15, hi:HsfbPwm_Status
	lea	%a15, [%a15] lo:HsfbPwm_Status
	ld.bu	%d15, [%a15] 42
	jnz	%d15, .L3
.L2:
	.loc 1 599 0 is_stmt 1
	mov	%d15, 0
	st.w	[%a7] lo:HsfbPwm_StartState, %d15
.L4:
	.loc 1 606 0
	mov	%d15, 1
	st.b	[%a2] 90, %d15
.LVL0:
.LBB18:
.LBB19:
	.loc 1 241 0
	ld.bu	%d15, [%a2] 98
	jz	%d15, .L6
	.loc 1 242 0
	ld.bu	%d2, [%a2] 102
	jz	%d2, .L7
	.loc 1 244 0
	movh.a	%a3, hi:PwmSr0Pt
	.loc 1 243 0
	movh.a	%a5, hi:HsfbPwm_Period
	lea	%a5, [%a5] lo:HsfbPwm_Period
	.loc 1 244 0
	lea	%a4, [%a3] lo:PwmSr0Pt
	.loc 1 243 0
	movh.a	%a15, hi:HsfbPwm_Status
	.loc 1 244 0
	ld.a	%a3, [%a3] lo:PwmSr0Pt
	.loc 1 243 0
	ld.hu	%d15, [%a5] 4
	lea	%a15, [%a15] lo:HsfbPwm_Status
	st.h	[%a15] 48, %d15
	.loc 1 244 0
	st.h	[%a3]0, %d15
	.loc 1 246 0
	movh.a	%a6, hi:PwmSr1Pt
	.loc 1 245 0
	mov	%d15, 0
	.loc 1 246 0
	lea	%a3, [%a6] lo:PwmSr1Pt
	ld.a	%a6, [%a6] lo:PwmSr1Pt
	.loc 1 245 0
	st.h	[%a15] 68, %d15
	.loc 1 246 0
	st.h	[%a6]0, %d15
	.loc 1 248 0
	ld.a	%a6, [%a4] 4
	.loc 1 247 0
	ld.hu	%d2, [%a5] 4
	st.h	[%a15] 50, %d2
	.loc 1 248 0
	st.h	[%a6]0, %d2
	.loc 1 250 0
	ld.a	%a6, [%a3] 4
	.loc 1 249 0
	st.h	[%a15] 70, %d15
	.loc 1 250 0
	st.h	[%a6]0, %d15
	.loc 1 252 0
	ld.a	%a6, [%a4] 8
	.loc 1 251 0
	ld.hu	%d2, [%a5] 4
	st.h	[%a15] 52, %d2
	.loc 1 252 0
	st.h	[%a6]0, %d2
	.loc 1 254 0
	ld.a	%a6, [%a3] 8
	.loc 1 253 0
	st.h	[%a15] 72, %d15
	.loc 1 256 0
	ld.a	%a4, [%a4] 12
	.loc 1 254 0
	st.h	[%a6]0, %d15
	.loc 1 255 0
	ld.hu	%d2, [%a5] 4
	st.h	[%a15] 54, %d2
	.loc 1 256 0
	st.h	[%a4]0, %d2
	.loc 1 257 0
	st.h	[%a15] 74, %d15
	.loc 1 258 0
	ld.a	%a15, [%a3] 12
	st.h	[%a15]0, %d15
.LVL1:
.L49:
	.loc 1 394 0
	ld.bu	%d15, [%a2] 98
.L25:
.LBE19:
.LBE18:
	.loc 1 608 0
	mov	%d2, 1
	st.b	[%a2] 91, %d2
.LBB24:
.LBB25:
	.loc 1 411 0
	jz	%d15, .L27
	.loc 1 412 0
	ld.bu	%d15, [%a2] 102
	jnz	%d15, .L54
	.loc 1 424 0
	movh.a	%a15, hi:HsfbPwm_Status
	lea	%a15, [%a15] lo:HsfbPwm_Status
	.loc 1 423 0
	ld.hu	%d4, [%a15] 70
	.loc 1 422 0
	movh.a	%a6, hi:HsfbPwm_Period
	ld.hu	%d5, [%a6] lo:HsfbPwm_Period
	.loc 1 423 0
	utof	%d4, %d4
	.loc 1 422 0
	movh	%d15, 16752
	.loc 1 423 0
	ld.w	%d3, [%a7] lo:HsfbPwm_StartState
	.loc 1 424 0
	add.f	%d4, %d4, %d15
	.loc 1 422 0
	utof	%d5, %d5
	.loc 1 423 0
	movh	%d2, 16256
	sub.f	%d2, %d2, %d3
	.loc 1 422 0
	sub.f	%d5, %d5, %d15
	.loc 1 424 0
	mul.f	%d4, %d3, %d4
	.loc 1 426 0
	movh.a	%a3, hi:PwmSr0Pt
	.loc 1 423 0
	madd.f	%d4, %d4, %d5, %d2
	.loc 1 426 0
	lea	%a4, [%a3] lo:PwmSr0Pt
	ld.a	%a3, [%a4] 16
	.loc 1 422 0
	ftouz	%d4, %d4
	.loc 1 430 0
	movh.a	%a12, hi:PwmSr1Pt
	.loc 1 422 0
	lea	%a5, [%a6] lo:HsfbPwm_Period
	st.h	[%a15] 56, %d4
	.loc 1 426 0
	st.h	[%a3]0, %d4
	.loc 1 428 0
	ld.hu	%d5, [%a15] 50
	movh	%d4, 16800
	utof	%d5, %d5
	.loc 1 430 0
	lea	%a3, [%a12] lo:PwmSr1Pt
	.loc 1 428 0
	sub.f	%d5, %d5, %d4
	.loc 1 430 0
	ld.a	%a6, [%a3] 16
	.loc 1 429 0
	mul.f	%d5, %d3, %d5
	.loc 1 428 0
	madd.f	%d5, %d5, %d2, %d15
	.loc 1 427 0
	ftouz	%d5, %d5
	st.h	[%a15] 76, %d5
	.loc 1 430 0
	st.h	[%a6]0, %d5
	.loc 1 432 0
	ld.hu	%d6, [%a15] 68
	.loc 1 431 0
	ld.hu	%d5, [%a5] 2
	.loc 1 432 0
	utof	%d6, %d6
	.loc 1 431 0
	utof	%d5, %d5
	.loc 1 433 0
	add.f	%d6, %d6, %d15
	.loc 1 431 0
	sub.f	%d5, %d5, %d15
	.loc 1 433 0
	mul.f	%d6, %d3, %d6
	.loc 1 435 0
	ld.a	%a6, [%a4] 20
	.loc 1 432 0
	madd.f	%d5, %d6, %d2, %d5
	.loc 1 431 0
	ftouz	%d5, %d5
	st.h	[%a15] 58, %d5
	.loc 1 435 0
	st.h	[%a6]0, %d5
	.loc 1 437 0
	ld.hu	%d5, [%a15] 48
	.loc 1 440 0
	ld.a	%a6, [%a3] 20
	.loc 1 437 0
	utof	%d5, %d5
	.loc 1 438 0
	sub.f	%d4, %d5, %d4
	mul.f	%d3, %d3, %d4
	.loc 1 436 0
	ld.hu	%d4, [%a5] 2
	utof	%d4, %d4
	add.f	%d15, %d4, %d15
	.loc 1 437 0
	madd.f	%d2, %d3, %d2, %d15
	.loc 1 436 0
	ftouz	%d2, %d2
	st.h	[%a15] 78, %d2
	.loc 1 440 0
	st.h	[%a6]0, %d2
	ld.bu	%d15, [%a2] 98
.L29:
.LBE25:
.LBE24:
	.loc 1 610 0
	mov	%d2, 1
	st.b	[%a2] 92, %d2
.LBB30:
.LBB31:
	.loc 1 481 0
	jz	%d15, .L32
.L59:
	.loc 1 482 0
	ld.bu	%d15, [%a2] 102
	jnz	%d15, .L55
	.loc 1 492 0
	movh.a	%a6, hi:HsfbPwm_ToMor
	lea	%a6, [%a6] lo:HsfbPwm_ToMor
	ld.hu	%d15, [%a6] 8
	.loc 1 493 0
	ld.hu	%d3, [%a15] 50
	.loc 1 492 0
	jz	%d15, .L35
	.loc 1 501 0
	ld.a	%a5, [%a4] 24
	.loc 1 493 0
	st.h	[%a15] 60, %d3
	ld.w	%d15, [%a7] lo:HsfbPwm_StartState
	.loc 1 501 0
	st.h	[%a5]0, %d3
	.loc 1 502 0
	ld.hu	%d3, [%a6] 8
	.loc 1 493 0
	movh	%d2, 16256
	sub.f	%d2, %d2, %d15
	.loc 1 502 0
	jz	%d3, .L37
.L63:
	.loc 1 503 0
	ld.hu	%d3, [%a15] 72
	movh	%d4, 16800
	utof	%d3, %d3
	sub.f	%d3, %d3, %d4
.LVL2:
.L38:
	.loc 1 511 0
	ftouz	%d3, %d3
.LVL3:
	.loc 1 512 0
	ld.a	%a5, [%a3] 24
	.loc 1 515 0
	movh	%d5, 16800
	.loc 1 511 0
	st.h	[%a15] 80, %d3
	.loc 1 512 0
	st.h	[%a5]0, %d3
	.loc 1 513 0
	ld.hu	%d4, [%a15] 48
	movh	%d3, 16672
	utof	%d4, %d4
	.loc 1 517 0
	ld.a	%a5, [%a4] 28
	.loc 1 515 0
	add.f	%d5, %d4, %d5
	.loc 1 513 0
	sub.f	%d3, %d4, %d3
	.loc 1 515 0
	mul.f	%d5, %d15, %d5
	.loc 1 518 0
	movh	%d4, 16752
	.loc 1 514 0
	madd.f	%d3, %d5, %d2, %d3
	.loc 1 513 0
	ftouz	%d3, %d3
	st.h	[%a15] 62, %d3
	.loc 1 517 0
	st.h	[%a5]0, %d3
	.loc 1 518 0
	ld.hu	%d3, [%a15] 68
	.loc 1 522 0
	ld.a	%a5, [%a3] 28
	.loc 1 518 0
	utof	%d3, %d3
	sub.f	%d3, %d3, %d4
	.loc 1 520 0
	mul.f	%d15, %d15, %d3
	.loc 1 519 0
	madd.f	%d2, %d15, %d2, %d3
	.loc 1 518 0
	ftouz	%d2, %d2
	st.h	[%a15] 82, %d2
	.loc 1 522 0
	st.h	[%a5]0, %d2
.LBE31:
.LBE30:
	.loc 1 612 0
	mov	%d2, 1
.LBB39:
.LBB32:
	.loc 1 522 0
	ld.bu	%d15, [%a2] 98
.LBE32:
.LBE39:
	.loc 1 612 0
	st.b	[%a2] 93, %d2
.LBB40:
.LBB41:
	.loc 1 563 0
	jnz	%d15, .L56
.L41:
	.loc 1 579 0
	ld.bu	%d15, [%a2] 99
	jz	%d15, .L1
.L62:
	.loc 1 580 0
	movh.a	%a15, hi:HsfbPwm_Period
	.loc 1 581 0
	movh.a	%a2, hi:PwmSr0Pt
	.loc 1 580 0
	lea	%a15, [%a15] lo:HsfbPwm_Period
	.loc 1 581 0
	lea	%a2, [%a2] lo:PwmSr0Pt
	.loc 1 580 0
	ld.hu	%d15, [%a15] 4
	.loc 1 581 0
	ld.a	%a2, [%a2] 36
	.loc 1 580 0
	movh.a	%a15, hi:HsfbPwm_Status
	lea	%a15, [%a15] lo:HsfbPwm_Status
	st.h	[%a15] 66, %d15
	.loc 1 581 0
	st.h	[%a2]0, %d15
	.loc 1 582 0
	mov	%d15, 0
	st.h	[%a15] 86, %d15
	.loc 1 583 0
	movh.a	%a15, hi:PwmSr1Pt
	lea	%a15, [%a15] lo:PwmSr1Pt
	ld.a	%a15, [%a15] 36
	st.h	[%a15]0, %d15
	ret
.LVL4:
.L6:
.LBE41:
.LBE40:
.LBB44:
.LBB20:
	.loc 1 359 0
	ld.bu	%d2, [%a2] 99
	jz	%d2, .L25
	.loc 1 360 0
	ld.bu	%d2, [%a2] 100
	jnz	%d2, .L57
	.loc 1 378 0
	ld.bu	%d3, [%a2] 101
	jz	%d3, .L25
	.loc 1 380 0
	movh.a	%a3, hi:PwmSr0Pt
	.loc 1 379 0
	movh.a	%a5, hi:HsfbPwm_Period
	lea	%a5, [%a5] lo:HsfbPwm_Period
	.loc 1 380 0
	lea	%a4, [%a3] lo:PwmSr0Pt
	.loc 1 379 0
	movh.a	%a15, hi:HsfbPwm_Status
	.loc 1 380 0
	ld.a	%a3, [%a3] lo:PwmSr0Pt
	.loc 1 379 0
	ld.hu	%d15, [%a5] 4
	lea	%a15, [%a15] lo:HsfbPwm_Status
	st.h	[%a15] 48, %d15
	.loc 1 382 0
	movh.a	%a6, hi:PwmSr1Pt
	.loc 1 380 0
	st.h	[%a3]0, %d15
	.loc 1 382 0
	lea	%a3, [%a6] lo:PwmSr1Pt
	ld.a	%a6, [%a6] lo:PwmSr1Pt
	.loc 1 381 0
	st.h	[%a15] 68, %d2
	.loc 1 382 0
	st.h	[%a6]0, %d2
	.loc 1 384 0
	ld.a	%a6, [%a4] 4
	.loc 1 383 0
	ld.hu	%d15, [%a5] 4
	st.h	[%a15] 50, %d15
	.loc 1 384 0
	st.h	[%a6]0, %d15
	.loc 1 386 0
	ld.a	%a6, [%a3] 4
	.loc 1 385 0
	st.h	[%a15] 70, %d2
	.loc 1 386 0
	st.h	[%a6]0, %d2
	.loc 1 388 0
	ld.a	%a6, [%a4] 8
	.loc 1 387 0
	ld.hu	%d15, [%a5] 4
	st.h	[%a15] 52, %d15
	.loc 1 388 0
	st.h	[%a6]0, %d15
	.loc 1 390 0
	ld.a	%a6, [%a3] 8
	.loc 1 389 0
	st.h	[%a15] 72, %d2
	.loc 1 392 0
	ld.a	%a4, [%a4] 12
	.loc 1 390 0
	st.h	[%a6]0, %d2
	.loc 1 391 0
	st.h	[%a15] 54, %d2
	.loc 1 392 0
	st.h	[%a4]0, %d2
	.loc 1 393 0
	ld.hu	%d15, [%a5] 4
	st.h	[%a15] 74, %d15
	.loc 1 394 0
	ld.a	%a15, [%a3] 12
	st.h	[%a15]0, %d15
	j	.L49
.LVL5:
.L27:
.LBE20:
.LBE44:
.LBB45:
.LBB26:
	.loc 1 443 0
	ld.bu	%d3, [%a2] 99
	jz	%d3, .L30
	.loc 1 444 0
	ld.bu	%d2, [%a2] 103
	.loc 1 445 0
	movh.a	%a6, hi:HsfbPwm_Period
	lea	%a5, [%a6] lo:HsfbPwm_Period
	.loc 1 444 0
	jnz	%d2, .L58
	.loc 1 454 0
	ld.h	%d2, [%a5] 2
	ld.h	%d15, [%a5] 8
	.loc 1 456 0
	movh.a	%a3, hi:PwmSr0Pt
	.loc 1 454 0
	sub	%d15, %d2, %d15
	extr.u	%d15, %d15, 0, 16
	.loc 1 456 0
	lea	%a4, [%a3] lo:PwmSr0Pt
	ld.a	%a3, [%a4] 16
	.loc 1 454 0
	movh.a	%a15, hi:HsfbPwm_Status
	lea	%a15, [%a15] lo:HsfbPwm_Status
	st.h	[%a15] 56, %d15
	.loc 1 456 0
	st.h	[%a3]0, %d15
	.loc 1 457 0
	ld.h	%d2, [%a5] 8
	ld.h	%d15, [%a5] 2
	.loc 1 459 0
	movh.a	%a12, hi:PwmSr1Pt
	.loc 1 457 0
	add	%d15, %d2
	extr.u	%d15, %d15, 0, 16
	.loc 1 459 0
	lea	%a3, [%a12] lo:PwmSr1Pt
	ld.a	%a12, [%a3] 16
	.loc 1 457 0
	st.h	[%a15] 76, %d15
	.loc 1 459 0
	st.h	[%a12]0, %d15
	.loc 1 460 0
	ld.h	%d15, [%a6] lo:HsfbPwm_Period
	ld.h	%d2, [%a5] 8
	.loc 1 462 0
	ld.a	%a6, [%a4] 20
	.loc 1 460 0
	sub	%d15, %d2
	extr.u	%d15, %d15, 0, 16
.LBE26:
.LBE45:
	.loc 1 610 0
	mov	%d2, 1
.LBB46:
.LBB27:
	.loc 1 460 0
	st.h	[%a15] 58, %d15
	.loc 1 462 0
	st.h	[%a6]0, %d15
	.loc 1 464 0
	ld.a	%a6, [%a3] 20
	.loc 1 463 0
	ld.hu	%d15, [%a5] 8
	st.h	[%a15] 78, %d15
	.loc 1 464 0
	st.h	[%a6]0, %d15
	ld.bu	%d15, [%a2] 98
.LBE27:
.LBE46:
	.loc 1 610 0
	st.b	[%a2] 92, %d2
.LBB47:
.LBB33:
	.loc 1 481 0
	jnz	%d15, .L59
.L32:
	.loc 1 525 0
	ld.bu	%d15, [%a2] 99
	jz	%d15, .L39
.L61:
	.loc 1 526 0
	ld.bu	%d15, [%a2] 103
	jnz	%d15, .L60
	.loc 1 536 0
	movh.a	%a15, hi:HsfbPwm_Status
	lea	%a15, [%a15] lo:HsfbPwm_Status
	ld.hu	%d2, [%a15] 76
	movh	%d15, 16800
	utof	%d2, %d2
	.loc 1 538 0
	movh.a	%a3, hi:PwmSr0Pt
	.loc 1 536 0
	add.f	%d2, %d2, %d15
	.loc 1 538 0
	lea	%a4, [%a3] lo:PwmSr0Pt
	.loc 1 536 0
	ftouz	%d2, %d2
	.loc 1 538 0
	ld.a	%a3, [%a4] 24
	.loc 1 541 0
	movh.a	%a12, hi:PwmSr1Pt
	.loc 1 536 0
	st.h	[%a15] 60, %d2
	.loc 1 538 0
	st.h	[%a3]0, %d2
	.loc 1 539 0
	ld.hu	%d2, [%a15] 56
	.loc 1 541 0
	lea	%a3, [%a12] lo:PwmSr1Pt
	.loc 1 539 0
	utof	%d2, %d2
	.loc 1 541 0
	ld.a	%a5, [%a3] 24
	.loc 1 539 0
	sub.f	%d2, %d2, %d15
	ftouz	%d2, %d2
	st.h	[%a15] 80, %d2
	.loc 1 541 0
	st.h	[%a5]0, %d2
	.loc 1 542 0
	ld.hu	%d2, [%a15] 78
	.loc 1 544 0
	ld.a	%a5, [%a4] 28
	.loc 1 542 0
	utof	%d2, %d2
	add.f	%d2, %d2, %d15
	ftouz	%d2, %d2
	st.h	[%a15] 62, %d2
	.loc 1 544 0
	st.h	[%a5]0, %d2
	.loc 1 545 0
	ld.hu	%d2, [%a15] 58
	.loc 1 547 0
	ld.a	%a5, [%a3] 28
	.loc 1 545 0
	utof	%d2, %d2
	sub.f	%d15, %d2, %d15
	ftouz	%d15, %d15
	st.h	[%a15] 82, %d15
	.loc 1 547 0
	st.h	[%a5]0, %d15
	ld.bu	%d15, [%a2] 98
.L34:
.LBE33:
.LBE47:
	.loc 1 612 0
	mov	%d2, 1
	st.b	[%a2] 93, %d2
.LBB48:
.LBB42:
	.loc 1 563 0
	jz	%d15, .L41
.L56:
.LBE42:
.LBE48:
.LBB49:
.LBB50:
.LBB51:
	.loc 1 564 0
	movh.a	%a6, hi:HsfbPwm_ToMor
	lea	%a6, [%a6] lo:HsfbPwm_ToMor
	ld.hu	%d15, [%a6] 8
	jz	%d15, .L42
	.loc 1 570 0
	ld.a	%a2, [%a4] 36
	.loc 1 565 0
	ld.hu	%d15, [%a15] 60
	st.h	[%a15] 66, %d15
	.loc 1 570 0
	st.h	[%a2]0, %d15
	.loc 1 571 0
	ld.hu	%d15, [%a6] 8
	jz	%d15, .L44
.L65:
	.loc 1 572 0
	movh.a	%a2, hi:HsfbPwm_Period
	lea	%a2, [%a2] lo:HsfbPwm_Period
	ld.hu	%d15, [%a2] 4
	st.h	[%a15] 86, %d15
	.loc 1 577 0
	ld.a	%a15, [%a3] 36
	st.h	[%a15]0, %d15
	ret
.L3:
.LBE51:
.LBE50:
.LBE49:
	.loc 1 601 0
	ld.w	%d15, [%a7] lo:HsfbPwm_StartState
	movh	%d2, 16256
	addi	%d2, %d2, -5162
	cmp.f	%d2, %d15, %d2
	jz.t	%d2, 0, .L4
	.loc 1 602 0
	movh	%d2, 14753
	addi	%d2, %d2, 20852
	add.f	%d15, %d15, %d2
	st.w	[%a7] lo:HsfbPwm_StartState, %d15
	j	.L4
.LVL6:
.L7:
.LBB54:
.LBB21:
	.loc 1 259 0
	ld.bu	%d2, [%a2] 100
	jz	%d2, .L9
	.loc 1 260 0
	movh.a	%a6, hi:HsfbPwm_Period
	lea	%a5, [%a6] lo:HsfbPwm_Period
	ld.h	%d15, [%a6] lo:HsfbPwm_Period
	ld.h	%d2, [%a5] 8
	.loc 1 262 0
	movh.a	%a3, hi:PwmSr0Pt
	.loc 1 260 0
	sub	%d15, %d2
	extr.u	%d15, %d15, 0, 16
	.loc 1 262 0
	lea	%a4, [%a3] lo:PwmSr0Pt
	.loc 1 260 0
	movh.a	%a15, hi:HsfbPwm_Status
	.loc 1 262 0
	ld.a	%a3, [%a3] lo:PwmSr0Pt
	.loc 1 260 0
	lea	%a15, [%a15] lo:HsfbPwm_Status
	st.h	[%a15] 48, %d15
	.loc 1 264 0
	movh.a	%a12, hi:PwmSr1Pt
	.loc 1 262 0
	st.h	[%a3]0, %d15
	.loc 1 264 0
	ld.a	%a6, [%a12] lo:PwmSr1Pt
	.loc 1 263 0
	ld.hu	%d15, [%a5] 8
	st.h	[%a15] 68, %d15
	.loc 1 264 0
	st.h	[%a6]0, %d15
	.loc 1 265 0
	ld.h	%d2, [%a5] 2
	ld.h	%d15, [%a5] 8
	.loc 1 267 0
	ld.a	%a6, [%a4] 4
	.loc 1 265 0
	sub	%d15, %d2, %d15
	extr.u	%d15, %d15, 0, 16
	.loc 1 264 0
	lea	%a3, [%a12] lo:PwmSr1Pt
	.loc 1 265 0
	st.h	[%a15] 50, %d15
	.loc 1 267 0
	st.h	[%a6]0, %d15
	.loc 1 268 0
	ld.h	%d2, [%a5] 8
	ld.h	%d15, [%a5] 2
	.loc 1 270 0
	ld.a	%a6, [%a3] 4
	.loc 1 268 0
	add	%d15, %d2
	extr.u	%d15, %d15, 0, 16
	st.h	[%a15] 70, %d15
	.loc 1 270 0
	st.h	[%a6]0, %d15
	.loc 1 271 0
	movh.a	%a6, hi:HsfbPwm_ToMor
	lea	%a6, [%a6] lo:HsfbPwm_ToMor
	ld.w	%d3, [%a6] 16
	movh	%d15, 16256
	sub.f	%d2, %d15, %d3
	.loc 1 272 0
	add.f	%d3, %d3, %d15
	.loc 1 271 0
	div.f	%d3, %d2, %d3
	.loc 1 272 0
	ld.hu	%d2, [%a5] 8
	utof	%d2, %d2
	.loc 1 271 0
	mul.f	%d3, %d3, %d2
.LVL7:
	.loc 1 273 0
	ld.hu	%d2, [%a6] 8
	jz	%d2, .L10
	.loc 1 274 0
	ld.hu	%d2, [%a5] 2
	utof	%d2, %d2
	sub.f	%d2, %d2, %d3
	sub.f	%d15, %d2, %d15
.LVL8:
.L11:
	.loc 1 279 0
	ftouz	%d15, %d15
.LVL9:
	.loc 1 280 0
	ld.a	%a12, [%a4] 8
	.loc 1 279 0
	st.h	[%a15] 52, %d15
	.loc 1 280 0
	st.h	[%a12]0, %d15
	.loc 1 281 0
	ld.hu	%d2, [%a6] 8
	jz	%d2, .L12
	.loc 1 282 0
	ld.hu	%d15, [%a5] 2
	utof	%d15, %d15
	add.f	%d15, %d3, %d15
.LVL10:
.L13:
	.loc 1 287 0
	ftouz	%d15, %d15
.LVL11:
	.loc 1 288 0
	ld.a	%a5, [%a3] 8
	.loc 1 287 0
	st.h	[%a15] 72, %d15
	.loc 1 288 0
	st.h	[%a5]0, %d15
	.loc 1 289 0
	ld.hu	%d15, [%a6] 8
	jz	%d15, .L14
	.loc 1 290 0
	ld.hu	%d15, [%a15] 72
	movh	%d2, 16672
	utof	%d15, %d15
	add.f	%d15, %d15, %d2
.LVL12:
.L15:
	.loc 1 295 0
	ftouz	%d15, %d15
.LVL13:
	.loc 1 296 0
	ld.a	%a4, [%a4] 12
	.loc 1 295 0
	st.h	[%a15] 54, %d15
	.loc 1 296 0
	st.h	[%a4]0, %d15
	.loc 1 297 0
	ld.hu	%d15, [%a6] 8
	jnz	%d15, .L52
	.loc 1 300 0
	ld.hu	%d15, [%a15] 68
	utof	%d15, %d15
.LVL14:
.L24:
	.loc 1 349 0
	ftouz	%d15, %d15
.LVL15:
	st.h	[%a15] 74, %d15
	.loc 1 350 0
	ld.a	%a15, [%a3] 12
	st.h	[%a15]0, %d15
	j	.L49
.LVL16:
.L54:
.LBE21:
.LBE54:
.LBB55:
.LBB28:
	.loc 1 414 0
	movh.a	%a3, hi:PwmSr0Pt
	.loc 1 413 0
	movh.a	%a6, hi:HsfbPwm_Period
	.loc 1 414 0
	lea	%a4, [%a3] lo:PwmSr0Pt
	.loc 1 413 0
	lea	%a5, [%a6] lo:HsfbPwm_Period
	movh.a	%a15, hi:HsfbPwm_Status
	.loc 1 414 0
	ld.a	%a3, [%a4] 16
	.loc 1 413 0
	ld.hu	%d15, [%a5] 4
	lea	%a15, [%a15] lo:HsfbPwm_Status
	st.h	[%a15] 56, %d15
	.loc 1 414 0
	st.h	[%a3]0, %d15
	.loc 1 415 0
	mov	%d15, 0
.L50:
	.loc 1 448 0
	movh.a	%a12, hi:PwmSr1Pt
	lea	%a3, [%a12] lo:PwmSr1Pt
	ld.a	%a6, [%a3] 16
	.loc 1 447 0
	st.h	[%a15] 76, %d15
	.loc 1 448 0
	st.h	[%a6]0, %d15
	.loc 1 450 0
	ld.a	%a6, [%a4] 20
	.loc 1 449 0
	ld.hu	%d2, [%a5] 4
	st.h	[%a15] 58, %d2
	.loc 1 450 0
	st.h	[%a6]0, %d2
	.loc 1 452 0
	ld.a	%a6, [%a3] 20
	.loc 1 451 0
	st.h	[%a15] 78, %d15
	.loc 1 452 0
	st.h	[%a6]0, %d15
	ld.bu	%d15, [%a2] 98
	j	.L29
.L30:
.LBE28:
.LBE55:
.LBB56:
.LBB34:
	.loc 1 525 0
	ld.bu	%d15, [%a2] 99
.LBE34:
.LBE56:
	.loc 1 610 0
	st.b	[%a2] 92, %d2
.LBB57:
.LBB35:
	.loc 1 525 0
	jnz	%d15, .L61
.L39:
.LBE35:
.LBE57:
	.loc 1 612 0
	mov	%d15, 1
	st.b	[%a2] 93, %d15
.LBB58:
.LBB43:
	.loc 1 579 0
	ld.bu	%d15, [%a2] 99
	jnz	%d15, .L62
.L1:
	ret
.L35:
.LBE43:
.LBE58:
.LBB59:
.LBB36:
	.loc 1 495 0
	utof	%d3, %d3
	.loc 1 496 0
	movh	%d4, 16672
	.loc 1 497 0
	movh	%d5, 16800
	.loc 1 496 0
	ld.w	%d15, [%a7] lo:HsfbPwm_StartState
	sub.f	%d4, %d3, %d4
	.loc 1 497 0
	add.f	%d3, %d3, %d5
	.loc 1 496 0
	movh	%d2, 16256
	.loc 1 497 0
	mul.f	%d3, %d15, %d3
	.loc 1 496 0
	sub.f	%d2, %d2, %d15
	.loc 1 501 0
	ld.a	%a5, [%a4] 24
	.loc 1 496 0
	madd.f	%d4, %d3, %d4, %d2
	.loc 1 495 0
	ftouz	%d4, %d4
	extr.u	%d3, %d4, 0, 16
	st.h	[%a15] 60, %d4
	.loc 1 501 0
	st.h	[%a5]0, %d3
	.loc 1 502 0
	ld.hu	%d3, [%a6] 8
	jnz	%d3, .L63
.L37:
	.loc 1 505 0
	ld.hu	%d3, [%a15] 70
	movh	%d4, 16752
	utof	%d3, %d3
	sub.f	%d3, %d3, %d4
	.loc 1 507 0
	mul.f	%d4, %d15, %d3
	.loc 1 505 0
	madd.f	%d3, %d4, %d2, %d3
.LVL17:
	j	.L38
.LVL18:
.L9:
.LBE36:
.LBE59:
.LBB60:
.LBB22:
	.loc 1 305 0
	ld.bu	%d2, [%a2] 101
	jz	%d2, .L6
	.loc 1 306 0
	movh.a	%a6, hi:HsfbPwm_Period
	lea	%a5, [%a6] lo:HsfbPwm_Period
	ld.h	%d15, [%a6] lo:HsfbPwm_Period
	ld.h	%d2, [%a5] 8
	.loc 1 308 0
	movh.a	%a3, hi:PwmSr0Pt
	.loc 1 306 0
	sub	%d15, %d2
	extr.u	%d15, %d15, 0, 16
	.loc 1 308 0
	lea	%a4, [%a3] lo:PwmSr0Pt
	.loc 1 306 0
	movh.a	%a15, hi:HsfbPwm_Status
	.loc 1 308 0
	ld.a	%a3, [%a3] lo:PwmSr0Pt
	.loc 1 306 0
	lea	%a15, [%a15] lo:HsfbPwm_Status
	st.h	[%a15] 48, %d15
	.loc 1 310 0
	movh.a	%a12, hi:PwmSr1Pt
	.loc 1 308 0
	st.h	[%a3]0, %d15
	.loc 1 310 0
	ld.a	%a6, [%a12] lo:PwmSr1Pt
	.loc 1 309 0
	ld.hu	%d15, [%a5] 8
	st.h	[%a15] 68, %d15
	.loc 1 310 0
	st.h	[%a6]0, %d15
	.loc 1 311 0
	ld.h	%d2, [%a5] 2
	ld.h	%d15, [%a5] 8
	.loc 1 313 0
	ld.a	%a6, [%a4] 4
	.loc 1 311 0
	sub	%d15, %d2, %d15
	extr.u	%d15, %d15, 0, 16
	.loc 1 310 0
	lea	%a3, [%a12] lo:PwmSr1Pt
	.loc 1 311 0
	st.h	[%a15] 50, %d15
	.loc 1 313 0
	st.h	[%a6]0, %d15
	.loc 1 314 0
	ld.h	%d2, [%a5] 8
	ld.h	%d15, [%a5] 2
	.loc 1 316 0
	ld.a	%a6, [%a3] 4
	.loc 1 314 0
	add	%d15, %d2
	extr.u	%d15, %d15, 0, 16
	st.h	[%a15] 70, %d15
	.loc 1 316 0
	st.h	[%a6]0, %d15
	.loc 1 317 0
	movh.a	%a6, hi:HsfbPwm_ToMor
	lea	%a6, [%a6] lo:HsfbPwm_ToMor
	ld.w	%d2, [%a6] 16
	movh	%d15, 16256
	sub.f	%d3, %d15, %d2
	.loc 1 318 0
	add.f	%d2, %d2, %d15
	.loc 1 317 0
	div.f	%d2, %d3, %d2
	.loc 1 318 0
	ld.hu	%d3, [%a5] 8
	utof	%d3, %d3
	.loc 1 317 0
	mul.f	%d2, %d2, %d3
.LVL19:
	.loc 1 319 0
	ld.hu	%d3, [%a6] 8
	jnz	%d3, .L64
	.loc 1 322 0
	ld.hu	%d15, [%a5] 4
	utof	%d15, %d15
.LVL20:
.L19:
	.loc 1 325 0
	ftouz	%d15, %d15
.LVL21:
	.loc 1 326 0
	ld.a	%a12, [%a4] 8
	.loc 1 325 0
	st.h	[%a15] 52, %d15
	.loc 1 326 0
	st.h	[%a12]0, %d15
	.loc 1 327 0
	ld.hu	%d15, [%a6] 8
	jz	%d15, .L20
	.loc 1 328 0
	ld.hu	%d15, [%a5] 2
	utof	%d15, %d15
	add.f	%d2, %d2, %d15
.LVL22:
	ftouz	%d2, %d2
	extr.u	%d15, %d2, 0, 16
	st.h	[%a15] 72, %d2
.L21:
	.loc 1 334 0
	ld.a	%a12, [%a3] 8
	st.h	[%a12]0, %d15
	.loc 1 335 0
	ld.hu	%d2, [%a6] 8
	mov	%d15, 0
	jz	%d2, .L22
.LVL23:
	.loc 1 336 0
	ld.hu	%d15, [%a15] 72
	utof	%d15, %d15
	.loc 1 335 0
	ftouz	%d15, %d15
	extr.u	%d15, %d15, 0, 16
.LVL24:
.L22:
	.loc 1 342 0
	ld.a	%a4, [%a4] 12
	.loc 1 341 0
	st.h	[%a15] 54, %d15
	.loc 1 342 0
	st.h	[%a4]0, %d15
	.loc 1 343 0
	ld.hu	%d15, [%a6] 8
	jnz	%d15, .L52
	.loc 1 346 0
	ld.hu	%d15, [%a5] 4
	utof	%d15, %d15
.LVL25:
	j	.L24
.LVL26:
.L60:
.LBE22:
.LBE60:
.LBB61:
.LBB37:
	.loc 1 528 0
	movh.a	%a3, hi:PwmSr0Pt
	.loc 1 527 0
	movh.a	%a5, hi:HsfbPwm_Period
	.loc 1 528 0
	lea	%a4, [%a3] lo:PwmSr0Pt
	ld.a	%a3, [%a4] 24
	.loc 1 527 0
	lea	%a5, [%a5] lo:HsfbPwm_Period
	movh.a	%a15, hi:HsfbPwm_Status
	ld.hu	%d15, [%a5] 4
	lea	%a15, [%a15] lo:HsfbPwm_Status
	st.h	[%a15] 60, %d15
	.loc 1 528 0
	st.h	[%a3]0, %d15
	.loc 1 529 0
	mov	%d15, 0
	.loc 1 530 0
	movh.a	%a12, hi:PwmSr1Pt
	lea	%a3, [%a12] lo:PwmSr1Pt
	.loc 1 529 0
	st.h	[%a15] 80, %d15
.L51:
	.loc 1 530 0
	ld.a	%a6, [%a3] 24
	st.h	[%a6]0, %d15
	.loc 1 531 0
	ld.hu	%d2, [%a5] 4
	.loc 1 532 0
	ld.a	%a5, [%a4] 28
	.loc 1 531 0
	st.h	[%a15] 62, %d2
	.loc 1 532 0
	st.h	[%a5]0, %d2
	.loc 1 534 0
	ld.a	%a5, [%a3] 28
	.loc 1 533 0
	st.h	[%a15] 82, %d15
	.loc 1 534 0
	st.h	[%a5]0, %d15
	ld.bu	%d15, [%a2] 98
	j	.L34
.L58:
.LBE37:
.LBE61:
.LBB62:
.LBB29:
	.loc 1 446 0
	movh.a	%a3, hi:PwmSr0Pt
	lea	%a4, [%a3] lo:PwmSr0Pt
	.loc 1 445 0
	movh.a	%a15, hi:HsfbPwm_Status
	.loc 1 446 0
	ld.a	%a3, [%a4] 16
	.loc 1 445 0
	ld.hu	%d2, [%a5] 4
	lea	%a15, [%a15] lo:HsfbPwm_Status
	st.h	[%a15] 56, %d2
	.loc 1 446 0
	st.h	[%a3]0, %d2
	j	.L50
.L42:
.LBE29:
.LBE62:
.LBB63:
.LBB53:
.LBB52:
	.loc 1 567 0
	movh.a	%a2, hi:HsfbPwm_Period
	lea	%a2, [%a2] lo:HsfbPwm_Period
	ld.hu	%d15, [%a2] 4
	.loc 1 570 0
	ld.a	%a2, [%a4] 36
	.loc 1 567 0
	st.h	[%a15] 66, %d15
	.loc 1 570 0
	st.h	[%a2]0, %d15
	.loc 1 571 0
	ld.hu	%d15, [%a6] 8
	jnz	%d15, .L65
.L44:
	.loc 1 574 0
	st.h	[%a15] 86, %d15
	mov	%d15, 0
	.loc 1 577 0
	ld.a	%a15, [%a3] 36
	st.h	[%a15]0, %d15
	ret
.L55:
.LBE52:
.LBE53:
.LBE63:
.LBB64:
.LBB38:
	.loc 1 484 0
	ld.a	%a6, [%a4] 24
	.loc 1 483 0
	ld.hu	%d15, [%a5] 4
	st.h	[%a15] 60, %d15
	.loc 1 484 0
	st.h	[%a6]0, %d15
	.loc 1 485 0
	mov	%d15, 0
	st.h	[%a15] 80, %d15
	j	.L51
.LVL27:
.L57:
.LBE38:
.LBE64:
.LBB65:
.LBB23:
	.loc 1 362 0
	movh.a	%a3, hi:PwmSr0Pt
	.loc 1 361 0
	movh.a	%a5, hi:HsfbPwm_Period
	lea	%a5, [%a5] lo:HsfbPwm_Period
	.loc 1 362 0
	lea	%a4, [%a3] lo:PwmSr0Pt
	.loc 1 361 0
	movh.a	%a15, hi:HsfbPwm_Status
	.loc 1 362 0
	ld.a	%a3, [%a3] lo:PwmSr0Pt
	.loc 1 361 0
	ld.hu	%d15, [%a5] 4
	lea	%a15, [%a15] lo:HsfbPwm_Status
	st.h	[%a15] 48, %d15
	.loc 1 362 0
	st.h	[%a3]0, %d15
	.loc 1 364 0
	movh.a	%a6, hi:PwmSr1Pt
	.loc 1 363 0
	mov	%d15, 0
	.loc 1 364 0
	lea	%a3, [%a6] lo:PwmSr1Pt
	ld.a	%a6, [%a6] lo:PwmSr1Pt
	.loc 1 363 0
	st.h	[%a15] 68, %d15
	.loc 1 364 0
	st.h	[%a6]0, %d15
	.loc 1 366 0
	ld.a	%a6, [%a4] 4
	.loc 1 365 0
	ld.hu	%d2, [%a5] 4
	st.h	[%a15] 50, %d2
	.loc 1 366 0
	st.h	[%a6]0, %d2
	.loc 1 368 0
	ld.a	%a6, [%a3] 4
	.loc 1 367 0
	st.h	[%a15] 70, %d15
	.loc 1 368 0
	st.h	[%a6]0, %d15
	.loc 1 370 0
	ld.a	%a6, [%a4] 8
	.loc 1 369 0
	ld.hu	%d2, [%a5] 4
	st.h	[%a15] 52, %d2
	.loc 1 370 0
	st.h	[%a6]0, %d2
	.loc 1 372 0
	ld.a	%a6, [%a3] 8
	.loc 1 371 0
	st.h	[%a15] 72, %d15
	.loc 1 374 0
	ld.a	%a4, [%a4] 12
	.loc 1 372 0
	st.h	[%a6]0, %d15
	.loc 1 373 0
	ld.hu	%d2, [%a5] 4
	st.h	[%a15] 54, %d2
	.loc 1 374 0
	st.h	[%a4]0, %d2
	.loc 1 375 0
	st.h	[%a15] 74, %d15
	.loc 1 376 0
	ld.a	%a15, [%a3] 12
	st.h	[%a15]0, %d15
	ld.bu	%d15, [%a2] 98
	j	.L25
.LVL28:
.L52:
	.loc 1 344 0
	ld.hu	%d15, [%a15] 52
	movh	%d2, 16672
	utof	%d15, %d15
	sub.f	%d15, %d15, %d2
.LVL29:
	j	.L24
.LVL30:
.L14:
	.loc 1 292 0
	ld.hu	%d15, [%a15] 48
	utof	%d15, %d15
.LVL31:
	j	.L15
.LVL32:
.L12:
	.loc 1 284 0
	ld.hu	%d15, [%a15] 70
	utof	%d15, %d15
.LVL33:
	j	.L13
.LVL34:
.L10:
	.loc 1 276 0
	ld.hu	%d15, [%a15] 50
	utof	%d15, %d15
.LVL35:
	j	.L11
.LVL36:
.L64:
	.loc 1 320 0
	ld.hu	%d3, [%a5] 2
	utof	%d3, %d3
	sub.f	%d3, %d3, %d2
	sub.f	%d15, %d3, %d15
.LVL37:
	j	.L19
.LVL38:
.L20:
	.loc 1 331 0
	st.h	[%a15] 72, %d15
	mov	%d15, 0
	j	.L21
.LBE23:
.LBE65:
.LFE210:
	.size	HsfbPwm_enter_internal_Run, .-HsfbPwm_enter_internal_Run
	.align 3
	.global	HsfbPwm_Sync
	.type	HsfbPwm_Sync, @function
HsfbPwm_Sync:
.LFB202:
	.loc 1 51 0
	.loc 1 53 0
	movh.a	%a3, hi:PwmSr0Pt
	lea	%a3, [%a3] lo:PwmSr0Pt
	.loc 1 52 0
	movh.a	%a2, hi:HsfbPwm_Period
	.loc 1 53 0
	ld.a	%a3, [%a3] 32
	.loc 1 52 0
	movh.a	%a15, hi:HsfbPwm_Status
	ld.hu	%d15, [%a2] lo:HsfbPwm_Period
	lea	%a15, [%a15] lo:HsfbPwm_Status
	st.h	[%a15] 64, %d15
	.loc 1 53 0
	st.h	[%a3]0, %d15
	.loc 1 54 0
	ld.hu	%d15, [%a2] lo:HsfbPwm_Period
	movh	%d2, 16544
	utof	%d15, %d15
	sub.f	%d15, %d15, %d2
	ftouz	%d15, %d15
	st.h	[%a15] 84, %d15
	.loc 1 56 0
	movh.a	%a15, hi:PwmSr1Pt
	lea	%a15, [%a15] lo:PwmSr1Pt
	ld.a	%a15, [%a15] 32
	st.h	[%a15]0, %d15
	.loc 1 57 0
	ret
.LFE202:
	.size	HsfbPwm_Sync, .-HsfbPwm_Sync
	.align 3
	.global	HsfbPwm_Discharge
	.type	HsfbPwm_Discharge, @function
HsfbPwm_Discharge:
.LFB203:
	.loc 1 68 0
	.loc 1 72 0
	movh.a	%a15, hi:HsfbPwm_DischargeState
	ld.w	%d2, [%a15] lo:HsfbPwm_DischargeState
	.loc 1 73 0
	movh	%d3, 16128
	.loc 1 72 0
	movh	%d15, 16256
	sub.f	%d15, %d15, %d2
	.loc 1 73 0
	mul.f	%d2, %d2, %d3
	.loc 1 72 0
	movh	%d3, 15268
	.loc 1 74 0
	movh.a	%a5, hi:HsfbPwm_Period
	.loc 1 72 0
	addi	%d3, %d3, -10486
	madd.f	%d15, %d2, %d15, %d3
.LVL39:
	.loc 1 74 0
	ld.hu	%d2, [%a5] lo:HsfbPwm_Period
	lea	%a15, [%a5] lo:HsfbPwm_Period
	utof	%d2, %d2
	.loc 1 77 0
	movh.a	%a3, hi:PwmSr0Pt
	.loc 1 74 0
	mul.f	%d2, %d2, %d15
	.loc 1 77 0
	lea	%a4, [%a3] lo:PwmSr0Pt
	.loc 1 74 0
	ftouz	%d2, %d2
	.loc 1 77 0
	ld.a	%a3, [%a3] lo:PwmSr0Pt
	.loc 1 76 0
	movh.a	%a2, hi:HsfbPwm_Status
	lea	%a2, [%a2] lo:HsfbPwm_Status
	.loc 1 74 0
	st.h	[%a15] 6, %d2
	.loc 1 75 0
	ld.hu	%d2, [%a15] 2
	.loc 1 79 0
	movh.a	%a6, hi:PwmSr1Pt
	.loc 1 75 0
	utof	%d2, %d2
	mul.f	%d15, %d2, %d15
.LVL40:
	ftouz	%d15, %d15
	st.h	[%a15] 8, %d15
	.loc 1 76 0
	ld.hu	%d15, [%a15] 4
	st.h	[%a2] 48, %d15
	.loc 1 77 0
	st.h	[%a3]0, %d15
	.loc 1 78 0
	mov	%d15, 0
	.loc 1 79 0
	lea	%a3, [%a6] lo:PwmSr1Pt
	ld.a	%a6, [%a6] lo:PwmSr1Pt
	.loc 1 78 0
	st.h	[%a2] 68, %d15
	.loc 1 79 0
	st.h	[%a6]0, %d15
	.loc 1 80 0
	ld.h	%d2, [%a15] 2
	ld.h	%d3, [%a15] 8
	.loc 1 82 0
	ld.a	%a6, [%a4] 4
	.loc 1 80 0
	sub	%d3, %d2, %d3
	extr.u	%d3, %d3, 0, 16
.LVL41:
	.loc 1 81 0
	st.h	[%a2] 50, %d3
	.loc 1 82 0
	st.h	[%a6]0, %d3
	.loc 1 83 0
	ld.h	%d4, [%a15] 8
	ld.h	%d2, [%a15] 2
	.loc 1 85 0
	ld.a	%a6, [%a3] 4
	.loc 1 83 0
	add	%d2, %d4
	extr.u	%d2, %d2, 0, 16
.LVL42:
	.loc 1 84 0
	st.h	[%a2] 70, %d2
	.loc 1 85 0
	st.h	[%a6]0, %d2
	.loc 1 87 0
	ld.a	%a6, [%a4] 8
	.loc 1 86 0
	ld.hu	%d4, [%a15] 4
	st.h	[%a2] 52, %d4
	.loc 1 87 0
	st.h	[%a6]0, %d4
	.loc 1 89 0
	ld.a	%a6, [%a3] 8
	.loc 1 88 0
	st.h	[%a2] 72, %d15
	.loc 1 89 0
	st.h	[%a6]0, %d15
	.loc 1 91 0
	ld.a	%a6, [%a4] 12
	.loc 1 90 0
	ld.hu	%d4, [%a15] 4
	st.h	[%a2] 54, %d4
	.loc 1 91 0
	st.h	[%a6]0, %d4
	.loc 1 92 0
	st.h	[%a2] 74, %d15
	.loc 1 93 0
	ld.a	%a6, [%a3] 12
	st.h	[%a6]0, %d15
	.loc 1 95 0
	ld.a	%a6, [%a4] 16
	.loc 1 94 0
	ld.hu	%d4, [%a15] 4
	st.h	[%a2] 56, %d4
	.loc 1 95 0
	st.h	[%a6]0, %d4
	.loc 1 97 0
	ld.a	%a6, [%a3] 16
	.loc 1 96 0
	st.h	[%a2] 76, %d15
	.loc 1 97 0
	st.h	[%a6]0, %d15
	.loc 1 99 0
	ld.a	%a6, [%a4] 20
	.loc 1 98 0
	ld.hu	%d4, [%a15] 4
	st.h	[%a2] 58, %d4
	.loc 1 99 0
	st.h	[%a6]0, %d4
	.loc 1 101 0
	ld.a	%a6, [%a3] 20
	.loc 1 100 0
	st.h	[%a2] 78, %d15
	.loc 1 101 0
	st.h	[%a6]0, %d15
	.loc 1 103 0
	ld.a	%a6, [%a4] 24
	.loc 1 102 0
	st.h	[%a2] 60, %d3
	.loc 1 103 0
	st.h	[%a6]0, %d3
	.loc 1 105 0
	ld.a	%a6, [%a3] 24
	.loc 1 104 0
	st.h	[%a2] 80, %d2
	.loc 1 105 0
	st.h	[%a6]0, %d2
	.loc 1 106 0
	ld.h	%d2, [%a5] lo:HsfbPwm_Period
.LVL43:
	ld.h	%d3, [%a15] 8
.LVL44:
	.loc 1 108 0
	ld.a	%a5, [%a4] 28
	.loc 1 106 0
	sub	%d2, %d3
	extr.u	%d2, %d2, 0, 16
	st.h	[%a2] 62, %d2
	.loc 1 108 0
	st.h	[%a5]0, %d2
	.loc 1 110 0
	ld.a	%a5, [%a3] 28
	.loc 1 109 0
	ld.hu	%d2, [%a15] 8
	st.h	[%a2] 82, %d2
	.loc 1 110 0
	st.h	[%a5]0, %d2
	.loc 1 111 0
	ld.hu	%d2, [%a15] 4
	.loc 1 112 0
	ld.a	%a15, [%a4] 36
	.loc 1 111 0
	st.h	[%a2] 66, %d2
	.loc 1 112 0
	st.h	[%a15]0, %d2
	.loc 1 114 0
	ld.a	%a15, [%a3] 36
	.loc 1 113 0
	st.h	[%a2] 86, %d15
	.loc 1 114 0
	st.h	[%a15]0, %d15
	.loc 1 115 0
	ret
.LFE203:
	.size	HsfbPwm_Discharge, .-HsfbPwm_Discharge
	.align 3
	.global	HsfbPwm_Reset
	.type	HsfbPwm_Reset, @function
HsfbPwm_Reset:
.LFB204:
	.loc 1 126 0
	.loc 1 128 0
	movh.a	%a2, hi:PwmSr0Pt
	.loc 1 127 0
	movh.a	%a4, hi:HsfbPwm_Period
	lea	%a4, [%a4] lo:HsfbPwm_Period
	.loc 1 128 0
	lea	%a3, [%a2] lo:PwmSr0Pt
	.loc 1 127 0
	movh.a	%a15, hi:HsfbPwm_Status
	.loc 1 128 0
	ld.a	%a2, [%a2] lo:PwmSr0Pt
	.loc 1 127 0
	lea	%a15, [%a15] lo:HsfbPwm_Status
	ld.hu	%d15, [%a4] 4
	st.h	[%a15] 48, %d15
	.loc 1 128 0
	st.h	[%a2]0, %d15
	.loc 1 130 0
	movh.a	%a5, hi:PwmSr1Pt
	.loc 1 129 0
	mov	%d15, 0
	.loc 1 130 0
	lea	%a2, [%a5] lo:PwmSr1Pt
	ld.a	%a5, [%a5] lo:PwmSr1Pt
	.loc 1 129 0
	st.h	[%a15] 68, %d15
	.loc 1 130 0
	st.h	[%a5]0, %d15
	.loc 1 132 0
	ld.a	%a5, [%a3] 4
	.loc 1 131 0
	ld.hu	%d2, [%a4] 4
	st.h	[%a15] 50, %d2
	.loc 1 132 0
	st.h	[%a5]0, %d2
	.loc 1 134 0
	ld.a	%a5, [%a2] 4
	.loc 1 133 0
	st.h	[%a15] 70, %d15
	.loc 1 134 0
	st.h	[%a5]0, %d15
	.loc 1 136 0
	ld.a	%a5, [%a3] 8
	.loc 1 135 0
	ld.hu	%d2, [%a4] 4
	st.h	[%a15] 52, %d2
	.loc 1 136 0
	st.h	[%a5]0, %d2
	.loc 1 138 0
	ld.a	%a5, [%a2] 8
	.loc 1 137 0
	st.h	[%a15] 72, %d15
	.loc 1 138 0
	st.h	[%a5]0, %d15
	.loc 1 140 0
	ld.a	%a5, [%a3] 12
	.loc 1 139 0
	ld.hu	%d2, [%a4] 4
	st.h	[%a15] 54, %d2
	.loc 1 140 0
	st.h	[%a5]0, %d2
	.loc 1 142 0
	ld.a	%a5, [%a2] 12
	.loc 1 141 0
	st.h	[%a15] 74, %d15
	.loc 1 142 0
	st.h	[%a5]0, %d15
	.loc 1 144 0
	ld.a	%a5, [%a3] 16
	.loc 1 143 0
	ld.hu	%d2, [%a4] 4
	st.h	[%a15] 56, %d2
	.loc 1 144 0
	st.h	[%a5]0, %d2
	.loc 1 146 0
	ld.a	%a5, [%a2] 16
	.loc 1 145 0
	st.h	[%a15] 76, %d15
	.loc 1 146 0
	st.h	[%a5]0, %d15
	.loc 1 148 0
	ld.a	%a5, [%a3] 20
	.loc 1 147 0
	ld.hu	%d2, [%a4] 4
	st.h	[%a15] 58, %d2
	.loc 1 148 0
	st.h	[%a5]0, %d2
	.loc 1 150 0
	ld.a	%a5, [%a2] 20
	.loc 1 149 0
	st.h	[%a15] 78, %d15
	.loc 1 150 0
	st.h	[%a5]0, %d15
	.loc 1 152 0
	ld.a	%a5, [%a3] 24
	.loc 1 151 0
	ld.hu	%d2, [%a4] 4
	st.h	[%a15] 60, %d2
	.loc 1 152 0
	st.h	[%a5]0, %d2
	.loc 1 154 0
	ld.a	%a5, [%a2] 24
	.loc 1 153 0
	st.h	[%a15] 80, %d15
	.loc 1 154 0
	st.h	[%a5]0, %d15
	.loc 1 156 0
	ld.a	%a5, [%a3] 28
	.loc 1 155 0
	ld.hu	%d2, [%a4] 4
	st.h	[%a15] 62, %d2
	.loc 1 156 0
	st.h	[%a5]0, %d2
	.loc 1 158 0
	ld.a	%a5, [%a2] 28
	.loc 1 157 0
	st.h	[%a15] 82, %d15
	.loc 1 160 0
	ld.a	%a3, [%a3] 36
	.loc 1 158 0
	st.h	[%a5]0, %d15
	.loc 1 159 0
	ld.hu	%d2, [%a4] 4
	st.h	[%a15] 66, %d2
	.loc 1 160 0
	st.h	[%a3]0, %d2
	.loc 1 161 0
	st.h	[%a15] 86, %d15
	.loc 1 162 0
	ld.a	%a15, [%a2] 36
	st.h	[%a15]0, %d15
	.loc 1 163 0
	ret
.LFE204:
	.size	HsfbPwm_Reset, .-HsfbPwm_Reset
	.align 3
	.global	HsfbPwm_Charge
	.type	HsfbPwm_Charge, @function
HsfbPwm_Charge:
.LFB205:
	.loc 1 174 0
	.loc 1 176 0
	movh.a	%a15, hi:HsfbPwm_Period
	ld.hu	%d3, [%a15] lo:HsfbPwm_Period
	movh	%d2, 15268
	utof	%d15, %d3
	addi	%d2, %d2, -10486
	mul.f	%d15, %d15, %d2
	lea	%a4, [%a15] lo:HsfbPwm_Period
	ftouz	%d15, %d15
	.loc 1 180 0
	movh.a	%a2, hi:PwmSr0Pt
	lea	%a3, [%a2] lo:PwmSr0Pt
	.loc 1 178 0
	movh.a	%a15, hi:HsfbPwm_Status
	.loc 1 176 0
	st.h	[%a4] 6, %d15
	.loc 1 177 0
	ld.hu	%d15, [%a4] 2
	.loc 1 180 0
	ld.a	%a2, [%a2] lo:PwmSr0Pt
	.loc 1 177 0
	utof	%d15, %d15
	.loc 1 178 0
	lea	%a15, [%a15] lo:HsfbPwm_Status
	.loc 1 177 0
	mul.f	%d15, %d15, %d2
	.loc 1 182 0
	movh.a	%a5, hi:PwmSr1Pt
	.loc 1 177 0
	ftouz	%d15, %d15
	.loc 1 209 0
	movh	%d4, 16672
	.loc 1 177 0
	st.h	[%a4] 8, %d15
	.loc 1 178 0
	sub	%d15, %d3, %d15
	extr.u	%d15, %d15, 0, 16
	st.h	[%a15] 48, %d15
	.loc 1 180 0
	st.h	[%a2]0, %d15
	.loc 1 182 0
	lea	%a2, [%a5] lo:PwmSr1Pt
	ld.a	%a5, [%a5] lo:PwmSr1Pt
	.loc 1 181 0
	ld.hu	%d15, [%a4] 8
	st.h	[%a15] 68, %d15
	.loc 1 182 0
	st.h	[%a5]0, %d15
	.loc 1 183 0
	ld.h	%d2, [%a4] 2
	ld.h	%d15, [%a4] 8
	.loc 1 185 0
	ld.a	%a5, [%a3] 4
	.loc 1 183 0
	sub	%d15, %d2, %d15
	extr.u	%d15, %d15, 0, 16
	st.h	[%a15] 50, %d15
	.loc 1 185 0
	st.h	[%a5]0, %d15
	.loc 1 186 0
	ld.h	%d2, [%a4] 8
	ld.h	%d15, [%a4] 2
	.loc 1 188 0
	ld.a	%a5, [%a2] 4
	.loc 1 186 0
	add	%d15, %d2
	extr.u	%d15, %d15, 0, 16
	st.h	[%a15] 70, %d15
	.loc 1 188 0
	st.h	[%a5]0, %d15
	.loc 1 190 0
	ld.a	%a5, [%a3] 8
	.loc 1 189 0
	ld.hu	%d15, [%a4] 4
	st.h	[%a15] 52, %d15
	.loc 1 190 0
	st.h	[%a5]0, %d15
	.loc 1 191 0
	mov	%d15, 0
	.loc 1 192 0
	ld.a	%a5, [%a2] 8
	.loc 1 191 0
	st.h	[%a15] 72, %d15
	.loc 1 192 0
	st.h	[%a5]0, %d15
	.loc 1 194 0
	ld.a	%a5, [%a3] 12
	.loc 1 193 0
	st.h	[%a15] 54, %d15
	.loc 1 194 0
	st.h	[%a5]0, %d15
	.loc 1 196 0
	ld.a	%a5, [%a2] 12
	.loc 1 195 0
	ld.hu	%d2, [%a4] 4
	st.h	[%a15] 74, %d2
	.loc 1 196 0
	st.h	[%a5]0, %d2
	.loc 1 197 0
	ld.hu	%d3, [%a15] 50
	movh	%d2, 16544
	utof	%d3, %d3
	.loc 1 199 0
	ld.a	%a5, [%a3] 16
	.loc 1 197 0
	sub.f	%d3, %d3, %d2
	ftouz	%d3, %d3
	st.h	[%a15] 56, %d3
	.loc 1 199 0
	st.h	[%a5]0, %d3
	.loc 1 200 0
	ld.hu	%d3, [%a15] 70
	.loc 1 202 0
	ld.a	%a5, [%a2] 16
	.loc 1 200 0
	utof	%d3, %d3
	add.f	%d3, %d3, %d2
	ftouz	%d3, %d3
	st.h	[%a15] 76, %d3
	.loc 1 202 0
	st.h	[%a5]0, %d3
	.loc 1 203 0
	ld.hu	%d3, [%a15] 48
	.loc 1 205 0
	ld.a	%a5, [%a3] 20
	.loc 1 203 0
	utof	%d3, %d3
	sub.f	%d3, %d3, %d2
	ftouz	%d3, %d3
	st.h	[%a15] 58, %d3
	.loc 1 205 0
	st.h	[%a5]0, %d3
	.loc 1 206 0
	ld.hu	%d3, [%a15] 68
	.loc 1 208 0
	ld.a	%a5, [%a2] 20
	.loc 1 206 0
	utof	%d3, %d3
	add.f	%d2, %d3, %d2
	ftouz	%d2, %d2
	st.h	[%a15] 78, %d2
	.loc 1 208 0
	st.h	[%a5]0, %d2
	.loc 1 209 0
	ld.hu	%d2, [%a15] 70
	.loc 1 211 0
	ld.a	%a5, [%a3] 24
	.loc 1 209 0
	utof	%d2, %d2
	add.f	%d2, %d2, %d4
.LVL45:
	.loc 1 210 0
	ftouz	%d3, %d2
	st.h	[%a15] 60, %d3
	.loc 1 211 0
	st.h	[%a5]0, %d3
.LVL46:
	.loc 1 212 0
	movh	%d3, 17224
	add.f	%d2, %d2, %d3
.LVL47:
	.loc 1 214 0
	ld.a	%a5, [%a2] 24
	.loc 1 213 0
	ftouz	%d2, %d2
.LVL48:
	st.h	[%a15] 80, %d2
	.loc 1 214 0
	st.h	[%a5]0, %d2
	.loc 1 215 0
	ld.hu	%d2, [%a15] 68
	.loc 1 217 0
	ld.a	%a5, [%a3] 28
	.loc 1 215 0
	utof	%d2, %d2
	.loc 1 222 0
	ld.a	%a3, [%a3] 36
	.loc 1 215 0
	add.f	%d2, %d2, %d4
.LVL49:
	.loc 1 216 0
	ftouz	%d4, %d2
	.loc 1 218 0
	add.f	%d2, %d2, %d3
.LVL50:
	.loc 1 219 0
	ftouz	%d2, %d2
	.loc 1 216 0
	st.h	[%a15] 62, %d4
	.loc 1 217 0
	st.h	[%a5]0, %d4
	.loc 1 220 0
	ld.a	%a5, [%a2] 28
	.loc 1 219 0
	st.h	[%a15] 82, %d2
	.loc 1 220 0
	st.h	[%a5]0, %d2
	.loc 1 221 0
	ld.hu	%d2, [%a4] 4
	st.h	[%a15] 66, %d2
	.loc 1 222 0
	st.h	[%a3]0, %d2
	.loc 1 223 0
	st.h	[%a15] 86, %d15
	.loc 1 224 0
	ld.a	%a15, [%a2] 36
	st.h	[%a15]0, %d15
	.loc 1 225 0
	ret
.LFE205:
	.size	HsfbPwm_Charge, .-HsfbPwm_Charge
	.align 3
	.global	HsfbPwm_SteadyRun
	.type	HsfbPwm_SteadyRun, @function
HsfbPwm_SteadyRun:
.LFB211:
	.loc 1 625 0
	.loc 1 626 0
	movh.a	%a3, hi:HsfbPwm_Status
	ld.hu	%d15, [%a3] lo:HsfbPwm_Status
	lea	%a2, [%a3] lo:HsfbPwm_Status
	jnz	%d15, .L71
	.loc 1 628 0
	ld.w	%d2, [%a2] 12
.L78:
	.loc 1 633 0
	movh.a	%a4, hi:HsfbPwm_Period
	ld.hu	%d15, [%a4] lo:HsfbPwm_Period
	lea	%a15, [%a4] lo:HsfbPwm_Period
	utof	%d15, %d15
	mul.f	%d15, %d15, %d2
	ftouz	%d15, %d15
	st.h	[%a15] 6, %d15
	.loc 1 635 0
	ld.hu	%d15, [%a15] 2
	utof	%d15, %d15
	mul.f	%d15, %d2, %d15
	ftouz	%d15, %d15
	st.h	[%a15] 8, %d15
.L72:
	.loc 1 640 0
	movh.a	%a15, hi:HsfbPwm_DW
	lea	%a15, [%a15] lo:HsfbPwm_DW
	ld.bu	%d15, [%a15] 89
	jnz	%d15, .L73
	.loc 1 641 0
	mov	%d15, 1
	st.b	[%a15] 89, %d15
.L73:
	.loc 1 653 0
	ld.hu	%d15, [%a3] lo:HsfbPwm_Status
	.loc 1 656 0
	movh.a	%a3, hi:HsfbPwm_ToMor
	.loc 1 653 0
	eq	%d2, %d15, 0
	.loc 1 654 0
	eq	%d15, %d15, 1
	.loc 1 656 0
	lea	%a3, [%a3] lo:HsfbPwm_ToMor
	.loc 1 653 0
	st.b	[%a15] 98, %d2
	.loc 1 654 0
	st.b	[%a15] 99, %d15
	.loc 1 656 0
	ld.hu	%d15, [%a3] 6
	eq	%d2, %d15, 0
	.loc 1 657 0
	eq	%d15, %d15, 1
	.loc 1 656 0
	st.b	[%a15] 100, %d2
	.loc 1 657 0
	st.b	[%a15] 101, %d15
	.loc 1 658 0
	ld.w	%d2, [%a2] 20
	ld.w	%d15, [%a2] 12
	cmp.f	%d15, %d15, %d2
	and	%d15, %d15, 1
	.loc 1 660 0
	ld.w	%d2, [%a2] 32
	.loc 1 658 0
	st.b	[%a15] 102, %d15
	.loc 1 660 0
	ld.w	%d15, [%a2] 24
	cmp.f	%d15, %d15, %d2
	and	%d15, %d15, 1
	st.b	[%a15] 103, %d15
	.loc 1 662 0
	j	HsfbPwm_enter_internal_Run
.L71:
	.loc 1 632 0
	jne	%d15, 1, .L72
	.loc 1 634 0
	ld.w	%d2, [%a2] 24
	j	.L78
.LFE211:
	.size	HsfbPwm_SteadyRun, .-HsfbPwm_SteadyRun
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
	.uaword	.LFB210
	.uaword	.LFE210-.LFB210
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB202
	.uaword	.LFE202-.LFB202
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB203
	.uaword	.LFE203-.LFB203
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB204
	.uaword	.LFE204-.LFB204
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB205
	.uaword	.LFE205-.LFB205
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB211
	.uaword	.LFE211-.LFB211
	.align 2
.LEFDE10:
.section .text,"ax",@progbits
.Letext0:
	.file 2 "../30_Bsw/Common/rtwtypes.h"
	.file 3 "../40_Appl/HsfbPwm/HsfbPwm_enum.h"
	.file 4 "../40_Appl/HsfbPwm/HsfbPwm_struct.h"
	.file 5 "../40_Appl/HsfbPwm/HsfbPwm.h"
	.file 6 "../30_Bsw/Common/TC21x/IfxCpu_regdef.h"
	.file 7 "../30_Bsw/Mpu/mpu_api.h"
	.file 8 "../30_Bsw/Mcal/Gtm/Gtm_api.h"
	.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0xd92
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.6.3 build on 2013-05-17"
	.byte	0x1
	.string	"../40_Appl/HsfbPwm/HsfbPwm_driver.c"
	.string	"D:\\\\SVN\\\\IPB-11Kw\\\\LvDc-C01R0P0-Ceramicheater\\\\20_Make"
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_ranges0+0x170
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x3
	.string	"uint8_T"
	.byte	0x2
	.byte	0x51
	.uaword	0xb6
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x3
	.string	"uint16_T"
	.byte	0x2
	.byte	0x53
	.uaword	0xe4
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.string	"int32_T"
	.byte	0x2
	.byte	0x54
	.uaword	0x109
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.string	"uint32_T"
	.byte	0x2
	.byte	0x55
	.uaword	0x120
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x3
	.string	"real32_T"
	.byte	0x2
	.byte	0x56
	.uaword	0x140
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
	.uaword	0xb6
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
	.uaword	0xa7
	.uleb128 0x3
	.string	"u16"
	.byte	0x2
	.byte	0x7f
	.uaword	0xd4
	.uleb128 0x3
	.string	"s32"
	.byte	0x2
	.byte	0x80
	.uaword	0xfa
	.uleb128 0x3
	.string	"u32"
	.byte	0x2
	.byte	0x81
	.uaword	0x110
	.uleb128 0x3
	.string	"f32"
	.byte	0x2
	.byte	0x82
	.uaword	0x130
	.uleb128 0x3
	.string	"bit"
	.byte	0x2
	.byte	0x84
	.uaword	0x153
	.uleb128 0x4
	.byte	0x4
	.byte	0x3
	.byte	0xe
	.uaword	0x24b
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
	.uaword	0x1c2
	.uleb128 0x6
	.byte	0xc
	.byte	0x4
	.byte	0xf
	.uaword	0x296
	.uleb128 0x7
	.string	"Duty"
	.byte	0x4
	.byte	0x10
	.uaword	0x1ac
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"Max"
	.byte	0x4
	.byte	0x11
	.uaword	0x1ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"Min"
	.byte	0x4
	.byte	0x12
	.uaword	0x1ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x3
	.string	"HSFBPWM_S_DUTY"
	.byte	0x4
	.byte	0x13
	.uaword	0x262
	.uleb128 0x6
	.byte	0x4
	.byte	0x4
	.byte	0x15
	.uaword	0x2de
	.uleb128 0x7
	.string	"En"
	.byte	0x4
	.byte	0x16
	.uaword	0x1b7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"Dis"
	.byte	0x4
	.byte	0x17
	.uaword	0x1b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x7
	.string	"Out"
	.byte	0x4
	.byte	0x18
	.uaword	0x1b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x3
	.string	"HSFBPWM_S_ENDIS"
	.byte	0x4
	.byte	0x19
	.uaword	0x2ac
	.uleb128 0x6
	.byte	0x60
	.byte	0x4
	.byte	0x22
	.uaword	0x3e9
	.uleb128 0x7
	.string	"Operation"
	.byte	0x4
	.byte	0x23
	.uaword	0x18b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"BuckDutyFil"
	.byte	0x4
	.byte	0x24
	.uaword	0x1ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"IpriPwmGain"
	.byte	0x4
	.byte	0x25
	.uaword	0x1ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"BuckDuty"
	.byte	0x4
	.byte	0x26
	.uaword	0x296
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"BoostDuty"
	.byte	0x4
	.byte	0x27
	.uaword	0x296
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"PriEn"
	.byte	0x4
	.byte	0x28
	.uaword	0x2de
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.string	"SrEn"
	.byte	0x4
	.byte	0x29
	.uaword	0x2de
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x7
	.string	"ClampEn"
	.byte	0x4
	.byte	0x2a
	.uaword	0x2de
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x7
	.string	"DriverSR0"
	.byte	0x4
	.byte	0x2b
	.uaword	0x3e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x7
	.string	"DriverSR1"
	.byte	0x4
	.byte	0x2c
	.uaword	0x3e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x7
	.string	"Vout100us"
	.byte	0x4
	.byte	0x2d
	.uaword	0x1ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x7
	.string	"FlagRecharge"
	.byte	0x4
	.byte	0x2e
	.uaword	0x18b
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.byte	0
	.uleb128 0x8
	.uaword	0x18b
	.uaword	0x3f9
	.uleb128 0x9
	.uaword	0x164
	.byte	0x9
	.byte	0
	.uleb128 0x3
	.string	"HSFBPWM_S_STATUS"
	.byte	0x4
	.byte	0x2f
	.uaword	0x2f5
	.uleb128 0x6
	.byte	0xa
	.byte	0x4
	.byte	0x35
	.uaword	0x465
	.uleb128 0x7
	.string	"Prd"
	.byte	0x4
	.byte	0x36
	.uaword	0x18b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"HPrd"
	.byte	0x4
	.byte	0x37
	.uaword	0x18b
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x7
	.string	"MPrd"
	.byte	0x4
	.byte	0x38
	.uaword	0x18b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"DPrd"
	.byte	0x4
	.byte	0x39
	.uaword	0x18b
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x7
	.string	"DHPrd"
	.byte	0x4
	.byte	0x3a
	.uaword	0x18b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x3
	.string	"HSFBPWM_S_PERIOD"
	.byte	0x4
	.byte	0x3b
	.uaword	0x411
	.uleb128 0x6
	.byte	0x18
	.byte	0x4
	.byte	0x46
	.uaword	0x53e
	.uleb128 0x7
	.string	"Enable"
	.byte	0x4
	.byte	0x47
	.uaword	0x1b7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"AutoSwitchDis"
	.byte	0x4
	.byte	0x48
	.uaword	0x1b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x7
	.string	"TopologyIn"
	.byte	0x4
	.byte	0x49
	.uaword	0x18b
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x7
	.string	"TopologyInT"
	.byte	0x4
	.byte	0x4a
	.uaword	0x18b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"TopologyOut"
	.byte	0x4
	.byte	0x4b
	.uaword	0x18b
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x7
	.string	"MorphSign"
	.byte	0x4
	.byte	0x4c
	.uaword	0x18b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"MorphState"
	.byte	0x4
	.byte	0x4d
	.uaword	0x1ac
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"TopoState"
	.byte	0x4
	.byte	0x4e
	.uaword	0x1ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"VinFil"
	.byte	0x4
	.byte	0x4f
	.uaword	0x1ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0
	.uleb128 0x3
	.string	"HSFBPWM_S_TOMOR"
	.byte	0x4
	.byte	0x50
	.uaword	0x47d
	.uleb128 0x6
	.byte	0x68
	.byte	0x5
	.byte	0x21
	.uaword	0x82b
	.uleb128 0x7
	.string	"Assignment_nw"
	.byte	0x5
	.byte	0x22
	.uaword	0x82b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"Sum1_c"
	.byte	0x5
	.byte	0x23
	.uaword	0x1ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x7
	.string	"In"
	.byte	0x5
	.byte	0x24
	.uaword	0x1ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x7
	.string	"y_delay_DSTATE"
	.byte	0x5
	.byte	0x25
	.uaword	0x1ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x7
	.string	"limit_delay_DSTATE"
	.byte	0x5
	.byte	0x26
	.uaword	0x1ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x7
	.string	"out_delay_DSTATE"
	.byte	0x5
	.byte	0x27
	.uaword	0x1ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x7
	.string	"Delay1_DSTATE"
	.byte	0x5
	.byte	0x28
	.uaword	0x1ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x7
	.string	"Memory_PreviousInput"
	.byte	0x5
	.byte	0x29
	.uaword	0x1ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x7
	.string	"RechargeCnt"
	.byte	0x5
	.byte	0x2a
	.uaword	0x1a1
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x7
	.string	"HsfbPwm_State_o"
	.byte	0x5
	.byte	0x2b
	.uaword	0x24b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x7
	.string	"In_b"
	.byte	0x5
	.byte	0x2c
	.uaword	0x18b
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x7
	.string	"In_o"
	.byte	0x5
	.byte	0x2d
	.uaword	0x18b
	.byte	0x2
	.byte	0x23
	.uleb128 0x52
	.uleb128 0x7
	.string	"transfer_delay_DSTATE"
	.byte	0x5
	.byte	0x2e
	.uaword	0x18b
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x7
	.string	"free_cnt_delay_DSTATE"
	.byte	0x5
	.byte	0x2f
	.uaword	0x18b
	.byte	0x2
	.byte	0x23
	.uleb128 0x56
	.uleb128 0x7
	.string	"is_active_c9_HsfbPwm"
	.byte	0x5
	.byte	0x30
	.uaword	0x181
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x7
	.string	"is_active_c11_HsfbPwm"
	.byte	0x5
	.byte	0x31
	.uaword	0x181
	.byte	0x2
	.byte	0x23
	.uleb128 0x59
	.uleb128 0x7
	.string	"is_active_Pri"
	.byte	0x5
	.byte	0x32
	.uaword	0x181
	.byte	0x2
	.byte	0x23
	.uleb128 0x5a
	.uleb128 0x7
	.string	"is_active_Sr"
	.byte	0x5
	.byte	0x33
	.uaword	0x181
	.byte	0x2
	.byte	0x23
	.uleb128 0x5b
	.uleb128 0x7
	.string	"is_active_Clamp"
	.byte	0x5
	.byte	0x34
	.uaword	0x181
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x7
	.string	"is_active_Saux"
	.byte	0x5
	.byte	0x35
	.uaword	0x181
	.byte	0x2
	.byte	0x23
	.uleb128 0x5d
	.uleb128 0x7
	.string	"In_n"
	.byte	0x5
	.byte	0x36
	.uaword	0x1b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x5e
	.uleb128 0x7
	.string	"out_delay_DSTATE_i"
	.byte	0x5
	.byte	0x37
	.uaword	0x1b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x5f
	.uleb128 0x7
	.string	"state_delay_DSTATE"
	.byte	0x5
	.byte	0x38
	.uaword	0x1b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x7
	.string	"transfer_delay2_DSTATE"
	.byte	0x5
	.byte	0x39
	.uaword	0x1b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x61
	.uleb128 0x7
	.string	"oper_buck"
	.byte	0x5
	.byte	0x3a
	.uaword	0x1b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x62
	.uleb128 0x7
	.string	"oper_boost"
	.byte	0x5
	.byte	0x3b
	.uaword	0x1b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x63
	.uleb128 0x7
	.string	"topo_fb"
	.byte	0x5
	.byte	0x3c
	.uaword	0x1b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x7
	.string	"topo_hb"
	.byte	0x5
	.byte	0x3d
	.uaword	0x1b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x65
	.uleb128 0x7
	.string	"dmin_buck"
	.byte	0x5
	.byte	0x3e
	.uaword	0x1b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x66
	.uleb128 0x7
	.string	"dmin_boost"
	.byte	0x5
	.byte	0x3f
	.uaword	0x1b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x67
	.byte	0
	.uleb128 0x8
	.uaword	0x1ac
	.uaword	0x83b
	.uleb128 0x9
	.uaword	0x164
	.byte	0xa
	.byte	0
	.uleb128 0x3
	.string	"DW_HsfbPwm_f_T"
	.byte	0x5
	.byte	0x40
	.uaword	0x555
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0xa
	.uaword	0x120
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.string	"long long int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.string	"long long unsigned int"
	.uleb128 0xb
	.string	"_Ifx_CPU_PSW_Bits"
	.byte	0x4
	.byte	0x6
	.uahalf	0x204
	.uaword	0x990
	.uleb128 0xc
	.string	"CDC"
	.byte	0x6
	.uahalf	0x206
	.uaword	0x85d
	.byte	0x4
	.byte	0x7
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"CDE"
	.byte	0x6
	.uahalf	0x207
	.uaword	0x85d
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"GW"
	.byte	0x6
	.uahalf	0x208
	.uaword	0x85d
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"IS"
	.byte	0x6
	.uahalf	0x209
	.uaword	0x85d
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"IO"
	.byte	0x6
	.uahalf	0x20a
	.uaword	0x85d
	.byte	0x4
	.byte	0x2
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"PRS"
	.byte	0x6
	.uahalf	0x20b
	.uaword	0x85d
	.byte	0x4
	.byte	0x2
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"S"
	.byte	0x6
	.uahalf	0x20c
	.uaword	0x85d
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"reserved_15"
	.byte	0x6
	.uahalf	0x20d
	.uaword	0x85d
	.byte	0x4
	.byte	0xc
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"SAV"
	.byte	0x6
	.uahalf	0x20e
	.uaword	0x85d
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"AV"
	.byte	0x6
	.uahalf	0x20f
	.uaword	0x85d
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"SV"
	.byte	0x6
	.uahalf	0x210
	.uaword	0x85d
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"V"
	.byte	0x6
	.uahalf	0x211
	.uaword	0x85d
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"C"
	.byte	0x6
	.uahalf	0x212
	.uaword	0x85d
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_CPU_PSW_Bits"
	.byte	0x6
	.uahalf	0x213
	.uaword	0x88d
	.uleb128 0xe
	.byte	0x4
	.byte	0x6
	.uahalf	0x467
	.uaword	0x9d1
	.uleb128 0xf
	.string	"U"
	.byte	0x6
	.uahalf	0x469
	.uaword	0x120
	.uleb128 0xf
	.string	"I"
	.byte	0x6
	.uahalf	0x46a
	.uaword	0x109
	.uleb128 0xf
	.string	"B"
	.byte	0x6
	.uahalf	0x46b
	.uaword	0x990
	.byte	0
	.uleb128 0xd
	.string	"Ifx_CPU_PSW"
	.byte	0x6
	.uahalf	0x46c
	.uaword	0x9a9
	.uleb128 0x10
	.string	"HsfbPwm_enter_internal_Saux"
	.byte	0x1
	.uahalf	0x231
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.string	"HsfbPwm_enter_internal_Run"
	.byte	0x1
	.uahalf	0x254
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.string	"HsfbPwm_enter_internal_Pri"
	.byte	0x1
	.byte	0xeb
	.byte	0x1
	.byte	0x1
	.uaword	0xa7e
	.uleb128 0x12
	.string	"Switch1_k"
	.byte	0x1
	.byte	0xed
	.uaword	0x1ac
	.uleb128 0x12
	.string	"Product_em"
	.byte	0x1
	.byte	0xee
	.uaword	0x1ac
	.uleb128 0x12
	.string	"guard1"
	.byte	0x1
	.byte	0xef
	.uaword	0x1b7
	.byte	0
	.uleb128 0x10
	.string	"HsfbPwm_enter_internal_Sr"
	.byte	0x1
	.uahalf	0x199
	.byte	0x1
	.byte	0x1
	.uleb128 0x13
	.string	"HsfbPwm_enter_internal_Clamp"
	.byte	0x1
	.uahalf	0x1de
	.byte	0x1
	.byte	0x1
	.uaword	0xad5
	.uleb128 0x14
	.string	"Add1_p"
	.byte	0x1
	.uahalf	0x1e0
	.uaword	0x1ac
	.byte	0
	.uleb128 0x15
	.uaword	0xa07
	.uaword	.LFB210
	.uaword	.LFE210
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0xb85
	.uleb128 0x16
	.uaword	0xa28
	.uaword	.LBB18
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.uahalf	0x25f
	.uaword	0xb1f
	.uleb128 0x17
	.uaword	.Ldebug_ranges0+0x30
	.uleb128 0x18
	.uaword	0xa4c
	.uaword	.LLST0
	.uleb128 0x18
	.uaword	0xa5d
	.uaword	.LLST1
	.uleb128 0x18
	.uaword	0xa6f
	.uaword	.LLST2
	.byte	0
	.byte	0
	.uleb128 0x19
	.uaword	0xa7e
	.uaword	.LBB24
	.uaword	.Ldebug_ranges0+0x60
	.byte	0x1
	.uahalf	0x261
	.uleb128 0x16
	.uaword	0xa9e
	.uaword	.LBB30
	.uaword	.Ldebug_ranges0+0x90
	.byte	0x1
	.uahalf	0x263
	.uaword	0xb53
	.uleb128 0x17
	.uaword	.Ldebug_ranges0+0xd8
	.uleb128 0x18
	.uaword	0xac5
	.uaword	.LLST3
	.byte	0
	.byte	0
	.uleb128 0x19
	.uaword	0x9e5
	.uaword	.LBB40
	.uaword	.Ldebug_ranges0+0x120
	.byte	0x1
	.uahalf	0x265
	.uleb128 0x1a
	.uaword	0xa07
	.uaword	.LBB49
	.uaword	.Ldebug_ranges0+0x140
	.byte	0x1
	.uahalf	0x254
	.uleb128 0x19
	.uaword	0x9e5
	.uaword	.LBB50
	.uaword	.Ldebug_ranges0+0x158
	.byte	0x1
	.uahalf	0x265
	.byte	0
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.string	"HsfbPwm_Sync"
	.byte	0x1
	.byte	0x32
	.byte	0x1
	.uaword	.LFB202
	.uaword	.LFE202
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0x1c
	.byte	0x1
	.string	"HsfbPwm_Discharge"
	.byte	0x1
	.byte	0x43
	.byte	0x1
	.uaword	.LFB203
	.uaword	.LFE203
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0xbfc
	.uleb128 0x1d
	.string	"Add1_jj"
	.byte	0x1
	.byte	0x45
	.uaword	0x1ac
	.uaword	.LLST4
	.uleb128 0x1d
	.string	"tmp"
	.byte	0x1
	.byte	0x46
	.uaword	0x18b
	.uaword	.LLST5
	.uleb128 0x1d
	.string	"tmp_0"
	.byte	0x1
	.byte	0x47
	.uaword	0x18b
	.uaword	.LLST6
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.string	"HsfbPwm_Reset"
	.byte	0x1
	.byte	0x7d
	.byte	0x1
	.uaword	.LFB204
	.uaword	.LFE204
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0x1c
	.byte	0x1
	.string	"HsfbPwm_Charge"
	.byte	0x1
	.byte	0xad
	.byte	0x1
	.uaword	.LFB205
	.uaword	.LFE205
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0xc51
	.uleb128 0x1d
	.string	"Bias1_o"
	.byte	0x1
	.byte	0xaf
	.uaword	0x1ac
	.uaword	.LLST7
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.string	"HsfbPwm_SteadyRun"
	.byte	0x1
	.uahalf	0x270
	.byte	0x1
	.uaword	.LFB211
	.uaword	.LFE211
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0x1f
	.string	"HsfbPwm_Status"
	.byte	0x5
	.byte	0x50
	.uaword	0x3f9
	.byte	0x1
	.byte	0x1
	.uleb128 0x1f
	.string	"HsfbPwm_ToMor"
	.byte	0x5
	.byte	0x52
	.uaword	0x53e
	.byte	0x1
	.byte	0x1
	.uleb128 0x1f
	.string	"HsfbPwm_Period"
	.byte	0x5
	.byte	0x53
	.uaword	0x465
	.byte	0x1
	.byte	0x1
	.uleb128 0x1f
	.string	"HsfbPwm_StartState"
	.byte	0x5
	.byte	0x55
	.uaword	0x1ac
	.byte	0x1
	.byte	0x1
	.uleb128 0x1f
	.string	"HsfbPwm_DischargeState"
	.byte	0x5
	.byte	0x57
	.uaword	0x1ac
	.byte	0x1
	.byte	0x1
	.uleb128 0x1f
	.string	"HsfbPwm_DW"
	.byte	0x5
	.byte	0x73
	.uaword	0x83b
	.byte	0x1
	.byte	0x1
	.uleb128 0x1f
	.string	"PSWReg_Rd0"
	.byte	0x7
	.byte	0x45
	.uaword	0x9d1
	.byte	0x1
	.byte	0x1
	.uleb128 0x1f
	.string	"PSWReg_Rd1"
	.byte	0x7
	.byte	0x46
	.uaword	0x9d1
	.byte	0x1
	.byte	0x1
	.uleb128 0x1f
	.string	"PSWReg_Rd2"
	.byte	0x7
	.byte	0x47
	.uaword	0x9d1
	.byte	0x1
	.byte	0x1
	.uleb128 0x1f
	.string	"PSWReg_Rd3"
	.byte	0x7
	.byte	0x48
	.uaword	0x9d1
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.uaword	0xd6b
	.uaword	0xd6b
	.uleb128 0x9
	.uaword	0x164
	.byte	0x9
	.byte	0
	.uleb128 0x20
	.byte	0x4
	.uaword	0x18b
	.uleb128 0x1f
	.string	"PwmSr0Pt"
	.byte	0x8
	.byte	0x28
	.uaword	0xd5b
	.byte	0x1
	.byte	0x1
	.uleb128 0x1f
	.string	"PwmSr1Pt"
	.byte	0x8
	.byte	0x29
	.uaword	0xd5b
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xd
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
	.uleb128 0x11
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
	.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
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
	.byte	0x5f
	.uaword	.LVL14
	.uaword	.LVL15
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL25
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL29
	.uaword	.LVL30
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL31
	.uaword	.LVL32
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL33
	.uaword	.LVL34
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL35
	.uaword	.LVL36
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL37
	.uaword	.LVL38
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL7
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL19
	.uaword	.LVL22
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL30
	.uaword	.LVL36
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL36
	.uaword	.LFE210
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL6
	.uaword	.LVL16
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL18
	.uaword	.LVL26
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL27
	.uaword	.LVL28
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL28
	.uaword	.LFE210
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL2
	.uaword	.LVL3
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL17
	.uaword	.LVL18
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL39
	.uaword	.LVL40
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL41
	.uaword	.LVL44
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL42
	.uaword	.LVL43
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL45
	.uaword	.LVL46
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL47
	.uaword	.LVL48
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL49
	.uaword	.LVL50
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
	.section .debug_aranges,"",@progbits
	.uaword	0x44
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB210
	.uaword	.LFE210-.LFB210
	.uaword	.LFB202
	.uaword	.LFE202-.LFB202
	.uaword	.LFB203
	.uaword	.LFE203-.LFB203
	.uaword	.LFB204
	.uaword	.LFE204-.LFB204
	.uaword	.LFB205
	.uaword	.LFE205-.LFB205
	.uaword	.LFB211
	.uaword	.LFE211-.LFB211
	.uaword	0
	.uaword	0
	.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB18
	.uaword	.LBE18
	.uaword	.LBB44
	.uaword	.LBE44
	.uaword	.LBB54
	.uaword	.LBE54
	.uaword	.LBB60
	.uaword	.LBE60
	.uaword	.LBB65
	.uaword	.LBE65
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
	.uaword	.LBB23
	.uaword	.LBE23
	.uaword	0
	.uaword	0
	.uaword	.LBB24
	.uaword	.LBE24
	.uaword	.LBB45
	.uaword	.LBE45
	.uaword	.LBB46
	.uaword	.LBE46
	.uaword	.LBB55
	.uaword	.LBE55
	.uaword	.LBB62
	.uaword	.LBE62
	.uaword	0
	.uaword	0
	.uaword	.LBB30
	.uaword	.LBE30
	.uaword	.LBB39
	.uaword	.LBE39
	.uaword	.LBB47
	.uaword	.LBE47
	.uaword	.LBB56
	.uaword	.LBE56
	.uaword	.LBB57
	.uaword	.LBE57
	.uaword	.LBB59
	.uaword	.LBE59
	.uaword	.LBB61
	.uaword	.LBE61
	.uaword	.LBB64
	.uaword	.LBE64
	.uaword	0
	.uaword	0
	.uaword	.LBB31
	.uaword	.LBE31
	.uaword	.LBB32
	.uaword	.LBE32
	.uaword	.LBB33
	.uaword	.LBE33
	.uaword	.LBB34
	.uaword	.LBE34
	.uaword	.LBB35
	.uaword	.LBE35
	.uaword	.LBB36
	.uaword	.LBE36
	.uaword	.LBB37
	.uaword	.LBE37
	.uaword	.LBB38
	.uaword	.LBE38
	.uaword	0
	.uaword	0
	.uaword	.LBB40
	.uaword	.LBE40
	.uaword	.LBB48
	.uaword	.LBE48
	.uaword	.LBB58
	.uaword	.LBE58
	.uaword	0
	.uaword	0
	.uaword	.LBB49
	.uaword	.LBE49
	.uaword	.LBB63
	.uaword	.LBE63
	.uaword	0
	.uaword	0
	.uaword	.LBB50
	.uaword	.LBE50
	.uaword	.LBB53
	.uaword	.LBE53
	.uaword	0
	.uaword	0
	.uaword	.LFB210
	.uaword	.LFE210
	.uaword	.LFB202
	.uaword	.LFE202
	.uaword	.LFB203
	.uaword	.LFE203
	.uaword	.LFB204
	.uaword	.LFE204
	.uaword	.LFB205
	.uaword	.LFE205
	.uaword	.LFB211
	.uaword	.LFE211
	.uaword	0
	.uaword	0
	.section .debug_line,"",@progbits
.Ldebug_line0:
	.extern	HsfbPwm_DischargeState,STT_OBJECT,4
	.extern	HsfbPwm_ToMor,STT_OBJECT,24
	.extern	PwmSr1Pt,STT_OBJECT,40
	.extern	HsfbPwm_Period,STT_OBJECT,10
	.extern	PwmSr0Pt,STT_OBJECT,40
	.extern	HsfbPwm_Status,STT_OBJECT,96
	.extern	HsfbPwm_StartState,STT_OBJECT,4
	.extern	HsfbPwm_DW,STT_OBJECT,104
	.ident	"GCC: (HighTec Release v4.6.3.0) 4.6.3 build on 2013-05-17"
