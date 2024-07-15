	.file	"Mcal_Trap.c"
.section .text,"ax",@progbits
.Ltext0:
	.section .text.MPU_ASIL_CODE,"ax",@progbits
	.align 3
	.global	_trap_0
	.type	_trap_0, @function
_trap_0:
.LFB18:
	.file 1 "../30_Bsw/STL_common/Mcal_Trap.c"
	.loc 1 106 0
	.loc 1 109 0
#APP
	# 109 "../30_Bsw/STL_common/Mcal_Trap.c" 1
	svlcx
	# 0 "" 2
	.loc 1 114 0
#NO_APP
	movh.a	%a15, hi:TrapIdentification
	lea	%a15, [%a15] lo:TrapIdentification
	mov	%d2, 1
	.loc 1 111 0
#APP
	# 111 "../30_Bsw/STL_common/Mcal_Trap.c" 1
	mov 	%d15,%d15
	# 0 "" 2
.LVL0:
	.loc 1 114 0
#NO_APP
	addsc.a	%a15, %a15, %d15, 2
	st.w	[%a15]0, %d2
	.loc 1 115 0
	jnz	%d15, .L8
	.loc 1 118 0
	mov	%d4, 15
	call	IOHWSF_vDefaultErrorHandler
	.loc 1 129 0
#APP
	# 129 "../30_Bsw/STL_common/Mcal_Trap.c" 1
	rslcx 

	# 0 "" 2
	.loc 1 130 0
	# 130 "../30_Bsw/STL_common/Mcal_Trap.c" 1
	rfe 

	# 0 "" 2
	.loc 1 131 0
#NO_APP
	ret
.L8:
	.loc 1 115 0
	jeq	%d15, 1, .L9
	.loc 1 126 0
	mov	%d4, 43
	call	IOHWSF_vDefaultErrorHandler
	.loc 1 129 0
#APP
	# 129 "../30_Bsw/STL_common/Mcal_Trap.c" 1
	rslcx 

	# 0 "" 2
	.loc 1 130 0
	# 130 "../30_Bsw/STL_common/Mcal_Trap.c" 1
	rfe 

	# 0 "" 2
	.loc 1 131 0
#NO_APP
	ret
.L9:
	.loc 1 122 0
	mov	%d4, 16
	call	IOHWSF_vDefaultErrorHandler
	.loc 1 129 0
#APP
	# 129 "../30_Bsw/STL_common/Mcal_Trap.c" 1
	rslcx 

	# 0 "" 2
	.loc 1 130 0
	# 130 "../30_Bsw/STL_common/Mcal_Trap.c" 1
	rfe 

	# 0 "" 2
	.loc 1 131 0
#NO_APP
	ret
.LFE18:
	.size	_trap_0, .-_trap_0
	.align 3
	.global	_trap_1
	.type	_trap_1, @function
_trap_1:
.LFB19:
	.loc 1 152 0
	.loc 1 155 0
#APP
	# 155 "../30_Bsw/STL_common/Mcal_Trap.c" 1
	svlcx
	# 0 "" 2
	.loc 1 159 0
#NO_APP
	movh.a	%a15, hi:TrapIdentification
	lea	%a15, [%a15] lo:TrapIdentification
	mov	%d2, 1
	.loc 1 157 0
#APP
	# 157 "../30_Bsw/STL_common/Mcal_Trap.c" 1
	mov 	%d15,%d15
	# 0 "" 2
.LVL1:
	.loc 1 159 0
#NO_APP
	addsc.a	%a15, %a15, %d15, 2
	.loc 1 160 0
	add	%d15, -1
.LVL2:
	.loc 1 159 0
	st.w	[%a15] 32, %d2
	.loc 1 160 0
	jlt.u	%d15, 7, .L21
	.loc 1 192 0
	mov	%d4, 43
	call	IOHWSF_vDefaultErrorHandler
	.loc 1 195 0
#APP
	# 195 "../30_Bsw/STL_common/Mcal_Trap.c" 1
	rslcx

	# 0 "" 2
	.loc 1 196 0
	# 196 "../30_Bsw/STL_common/Mcal_Trap.c" 1
	rfe 

	# 0 "" 2
	.loc 1 197 0
#NO_APP
	ret
.L21:
	.loc 1 160 0
	movh.a	%a15, hi:.L19
	lea	%a15, [%a15] lo:.L19
	addsc.a	%a15, %a15, %d15, 2
	ji	%a15
	.align 2
	.align 2
.L19:
	.code32
	j	.L12
	.code32
	j	.L13
	.code32
	j	.L14
	.code32
	j	.L15
	.code32
	j	.L16
	.code32
	j	.L17
	.code32
	j	.L18
.L17:
	.loc 1 183 0
	mov	%d4, 22
	call	IOHWSF_vDefaultErrorHandler
	.loc 1 195 0
#APP
	# 195 "../30_Bsw/STL_common/Mcal_Trap.c" 1
	rslcx

	# 0 "" 2
	.loc 1 196 0
	# 196 "../30_Bsw/STL_common/Mcal_Trap.c" 1
	rfe 

	# 0 "" 2
	.loc 1 197 0
#NO_APP
	ret
.L18:
	.loc 1 187 0
	mov	%d4, 23
	call	IOHWSF_vDefaultErrorHandler
	.loc 1 195 0
#APP
	# 195 "../30_Bsw/STL_common/Mcal_Trap.c" 1
	rslcx

	# 0 "" 2
	.loc 1 196 0
	# 196 "../30_Bsw/STL_common/Mcal_Trap.c" 1
	rfe 

	# 0 "" 2
	.loc 1 197 0
#NO_APP
	ret
.L12:
	.loc 1 163 0
	mov	%d4, 17
	call	IOHWSF_vDefaultErrorHandler
	.loc 1 195 0
#APP
	# 195 "../30_Bsw/STL_common/Mcal_Trap.c" 1
	rslcx

	# 0 "" 2
	.loc 1 196 0
	# 196 "../30_Bsw/STL_common/Mcal_Trap.c" 1
	rfe 

	# 0 "" 2
	.loc 1 197 0
#NO_APP
	ret
.L13:
	.loc 1 167 0
	mov	%d4, 18
	call	IOHWSF_vDefaultErrorHandler
	.loc 1 195 0
#APP
	# 195 "../30_Bsw/STL_common/Mcal_Trap.c" 1
	rslcx

	# 0 "" 2
	.loc 1 196 0
	# 196 "../30_Bsw/STL_common/Mcal_Trap.c" 1
	rfe 

	# 0 "" 2
	.loc 1 197 0
#NO_APP
	ret
.L14:
	.loc 1 171 0
	mov	%d4, 19
	call	IOHWSF_vDefaultErrorHandler
	.loc 1 195 0
#APP
	# 195 "../30_Bsw/STL_common/Mcal_Trap.c" 1
	rslcx

	# 0 "" 2
	.loc 1 196 0
	# 196 "../30_Bsw/STL_common/Mcal_Trap.c" 1
	rfe 

	# 0 "" 2
	.loc 1 197 0
#NO_APP
	ret
.L15:
	.loc 1 175 0
	mov	%d4, 20
	call	IOHWSF_vDefaultErrorHandler
	.loc 1 195 0
#APP
	# 195 "../30_Bsw/STL_common/Mcal_Trap.c" 1
	rslcx

	# 0 "" 2
	.loc 1 196 0
	# 196 "../30_Bsw/STL_common/Mcal_Trap.c" 1
	rfe 

	# 0 "" 2
	.loc 1 197 0
#NO_APP
	ret
.L16:
	.loc 1 179 0
	mov	%d4, 21
	call	IOHWSF_vDefaultErrorHandler
	.loc 1 195 0
#APP
	# 195 "../30_Bsw/STL_common/Mcal_Trap.c" 1
	rslcx

	# 0 "" 2
	.loc 1 196 0
	# 196 "../30_Bsw/STL_common/Mcal_Trap.c" 1
	rfe 

	# 0 "" 2
	.loc 1 197 0
#NO_APP
	ret
.LFE19:
	.size	_trap_1, .-_trap_1
	.align 3
	.global	_trap_2
	.type	_trap_2, @function
_trap_2:
.LFB20:
	.loc 1 218 0
	.loc 1 221 0
#APP
	# 221 "../30_Bsw/STL_common/Mcal_Trap.c" 1
	svlcx
	# 0 "" 2
	.loc 1 225 0
#NO_APP
	movh.a	%a15, hi:TrapIdentification
	lea	%a15, [%a15] lo:TrapIdentification
	mov	%d2, 1
	.loc 1 223 0
#APP
	# 223 "../30_Bsw/STL_common/Mcal_Trap.c" 1
	mov 	%d15,%d15
	# 0 "" 2
.LVL3:
	.loc 1 225 0
#NO_APP
	addsc.a	%a15, %a15, %d15, 2
	.loc 1 226 0
	add	%d15, -1
.LVL4:
	.loc 1 225 0
	st.w	[%a15] 64, %d2
	.loc 1 226 0
	jlt.u	%d15, 5, .L31
	.loc 1 249 0
	mov	%d4, 43
	call	IOHWSF_vDefaultErrorHandler
	.loc 1 252 0
#APP
	# 252 "../30_Bsw/STL_common/Mcal_Trap.c" 1
	rslcx 

	# 0 "" 2
	.loc 1 253 0
	# 253 "../30_Bsw/STL_common/Mcal_Trap.c" 1
	rfe 

	# 0 "" 2
	.loc 1 254 0
#NO_APP
	ret
.L31:
	.loc 1 226 0
	movh.a	%a15, hi:.L29
	lea	%a15, [%a15] lo:.L29
	addsc.a	%a15, %a15, %d15, 2
	ji	%a15
	.align 2
	.align 2
.L29:
	.code32
	j	.L24
	.code32
	j	.L25
	.code32
	j	.L26
	.code32
	j	.L27
	.code32
	j	.L28
.L27:
	.loc 1 241 0
	mov	%d4, 27
	call	IOHWSF_vDefaultErrorHandler
	.loc 1 252 0
#APP
	# 252 "../30_Bsw/STL_common/Mcal_Trap.c" 1
	rslcx 

	# 0 "" 2
	.loc 1 253 0
	# 253 "../30_Bsw/STL_common/Mcal_Trap.c" 1
	rfe 

	# 0 "" 2
	.loc 1 254 0
#NO_APP
	ret
.L28:
	.loc 1 245 0
	mov	%d4, 28
	call	IOHWSF_vDefaultErrorHandler
	.loc 1 252 0
#APP
	# 252 "../30_Bsw/STL_common/Mcal_Trap.c" 1
	rslcx 

	# 0 "" 2
	.loc 1 253 0
	# 253 "../30_Bsw/STL_common/Mcal_Trap.c" 1
	rfe 

	# 0 "" 2
	.loc 1 254 0
#NO_APP
	ret
.L24:
	.loc 1 229 0
	mov	%d4, 24
	call	IOHWSF_vDefaultErrorHandler
	.loc 1 252 0
#APP
	# 252 "../30_Bsw/STL_common/Mcal_Trap.c" 1
	rslcx 

	# 0 "" 2
	.loc 1 253 0
	# 253 "../30_Bsw/STL_common/Mcal_Trap.c" 1
	rfe 

	# 0 "" 2
	.loc 1 254 0
#NO_APP
	ret
.L25:
	.loc 1 233 0
	mov	%d4, 25
	call	IOHWSF_vDefaultErrorHandler
	.loc 1 252 0
#APP
	# 252 "../30_Bsw/STL_common/Mcal_Trap.c" 1
	rslcx 

	# 0 "" 2
	.loc 1 253 0
	# 253 "../30_Bsw/STL_common/Mcal_Trap.c" 1
	rfe 

	# 0 "" 2
	.loc 1 254 0
#NO_APP
	ret
.L26:
	.loc 1 237 0
	mov	%d4, 26
	call	IOHWSF_vDefaultErrorHandler
	.loc 1 252 0
#APP
	# 252 "../30_Bsw/STL_common/Mcal_Trap.c" 1
	rslcx 

	# 0 "" 2
	.loc 1 253 0
	# 253 "../30_Bsw/STL_common/Mcal_Trap.c" 1
	rfe 

	# 0 "" 2
	.loc 1 254 0
#NO_APP
	ret
.LFE20:
	.size	_trap_2, .-_trap_2
	.align 3
	.global	_trap_3
	.type	_trap_3, @function
_trap_3:
.LFB21:
	.loc 1 276 0
	.loc 1 281 0
#APP
	# 281 "../30_Bsw/STL_common/Mcal_Trap.c" 1
	svlcx
	# 0 "" 2
	.loc 1 285 0
#NO_APP
	movh.a	%a15, hi:TrapIdentification
	lea	%a15, [%a15] lo:TrapIdentification
	mov	%d2, 1
	.loc 1 283 0
#APP
	# 283 "../30_Bsw/STL_common/Mcal_Trap.c" 1
	mov 	%d15,%d15
	# 0 "" 2
.LVL5:
	.loc 1 285 0
#NO_APP
	addsc.a	%a15, %a15, %d15, 2
	.loc 1 287 0
	add	%d15, -1
.LVL6:
	.loc 1 285 0
	st.w	[%a15] 96, %d2
	.loc 1 287 0
	jlt.u	%d15, 7, .L43
	.loc 1 318 0
	mov	%d4, 43
	call	IOHWSF_vDefaultErrorHandler
	.loc 1 321 0
#APP
	# 321 "../30_Bsw/STL_common/Mcal_Trap.c" 1
	rslcx 

	# 0 "" 2
	.loc 1 322 0
	# 322 "../30_Bsw/STL_common/Mcal_Trap.c" 1
	rfe 

	# 0 "" 2
	.loc 1 328 0
#NO_APP
	ret
.L43:
	.loc 1 287 0
	movh.a	%a15, hi:.L41
	lea	%a15, [%a15] lo:.L41
	addsc.a	%a15, %a15, %d15, 2
	ji	%a15
	.align 2
	.align 2
.L41:
	.code32
	j	.L34
	.code32
	j	.L35
	.code32
	j	.L36
	.code32
	j	.L37
	.code32
	j	.L38
	.code32
	j	.L39
	.code32
	j	.L40
.L39:
	.loc 1 310 0
	mov	%d4, 34
	call	IOHWSF_vDefaultErrorHandler
	.loc 1 321 0
#APP
	# 321 "../30_Bsw/STL_common/Mcal_Trap.c" 1
	rslcx 

	# 0 "" 2
	.loc 1 322 0
	# 322 "../30_Bsw/STL_common/Mcal_Trap.c" 1
	rfe 

	# 0 "" 2
	.loc 1 328 0
#NO_APP
	ret
.L40:
	.loc 1 314 0
	mov	%d4, 35
	call	IOHWSF_vDefaultErrorHandler
	.loc 1 321 0
#APP
	# 321 "../30_Bsw/STL_common/Mcal_Trap.c" 1
	rslcx 

	# 0 "" 2
	.loc 1 322 0
	# 322 "../30_Bsw/STL_common/Mcal_Trap.c" 1
	rfe 

	# 0 "" 2
	.loc 1 328 0
#NO_APP
	ret
.L34:
	.loc 1 290 0
	mov	%d4, 29
	call	IOHWSF_vDefaultErrorHandler
	.loc 1 321 0
#APP
	# 321 "../30_Bsw/STL_common/Mcal_Trap.c" 1
	rslcx 

	# 0 "" 2
	.loc 1 322 0
	# 322 "../30_Bsw/STL_common/Mcal_Trap.c" 1
	rfe 

	# 0 "" 2
	.loc 1 328 0
#NO_APP
	ret
.L35:
	.loc 1 294 0
	mov	%d4, 30
	call	IOHWSF_vDefaultErrorHandler
	.loc 1 321 0
#APP
	# 321 "../30_Bsw/STL_common/Mcal_Trap.c" 1
	rslcx 

	# 0 "" 2
	.loc 1 322 0
	# 322 "../30_Bsw/STL_common/Mcal_Trap.c" 1
	rfe 

	# 0 "" 2
	.loc 1 328 0
#NO_APP
	ret
.L36:
	.loc 1 298 0
	mov	%d4, 31
	call	IOHWSF_vDefaultErrorHandler
	.loc 1 321 0
#APP
	# 321 "../30_Bsw/STL_common/Mcal_Trap.c" 1
	rslcx 

	# 0 "" 2
	.loc 1 322 0
	# 322 "../30_Bsw/STL_common/Mcal_Trap.c" 1
	rfe 

	# 0 "" 2
	.loc 1 328 0
#NO_APP
	ret
.L37:
	.loc 1 302 0
	mov	%d4, 32
	call	IOHWSF_vDefaultErrorHandler
	.loc 1 321 0
#APP
	# 321 "../30_Bsw/STL_common/Mcal_Trap.c" 1
	rslcx 

	# 0 "" 2
	.loc 1 322 0
	# 322 "../30_Bsw/STL_common/Mcal_Trap.c" 1
	rfe 

	# 0 "" 2
	.loc 1 328 0
#NO_APP
	ret
.L38:
	.loc 1 306 0
	mov	%d4, 33
	call	IOHWSF_vDefaultErrorHandler
	.loc 1 321 0
#APP
	# 321 "../30_Bsw/STL_common/Mcal_Trap.c" 1
	rslcx 

	# 0 "" 2
	.loc 1 322 0
	# 322 "../30_Bsw/STL_common/Mcal_Trap.c" 1
	rfe 

	# 0 "" 2
	.loc 1 328 0
#NO_APP
	ret
.LFE21:
	.size	_trap_3, .-_trap_3
	.align 3
	.global	_trap_4
	.type	_trap_4, @function
_trap_4:
.LFB22:
	.loc 1 350 0
	.loc 1 353 0
#APP
	# 353 "../30_Bsw/STL_common/Mcal_Trap.c" 1
	svlcx

	# 0 "" 2
	.loc 1 357 0
#NO_APP
	movh.a	%a15, hi:TrapIdentification
	lea	%a15, [%a15] lo:TrapIdentification
	mov	%d2, 1
	.loc 1 355 0
#APP
	# 355 "../30_Bsw/STL_common/Mcal_Trap.c" 1
	mov 	%d15,%d15
	# 0 "" 2
.LVL7:
	.loc 1 357 0
#NO_APP
	addsc.a	%a15, %a15, %d15, 2
	st.w	[%a15] 128, %d2
	.loc 1 358 0
	jeq	%d15, 2, .L47
	jeq	%d15, 3, .L48
	jeq	%d15, 1, .L51
	.loc 1 373 0
	mov	%d4, 43
	call	IOHWSF_vDefaultErrorHandler
	.loc 1 376 0
#APP
	# 376 "../30_Bsw/STL_common/Mcal_Trap.c" 1
	rslcx 

	# 0 "" 2
	.loc 1 377 0
	# 377 "../30_Bsw/STL_common/Mcal_Trap.c" 1
	rfe 

	# 0 "" 2
	.loc 1 378 0
#NO_APP
	ret
.L51:
	.loc 1 361 0
	mov	%d4, 36
	call	IOHWSF_vDefaultErrorHandler
	.loc 1 376 0
#APP
	# 376 "../30_Bsw/STL_common/Mcal_Trap.c" 1
	rslcx 

	# 0 "" 2
	.loc 1 377 0
	# 377 "../30_Bsw/STL_common/Mcal_Trap.c" 1
	rfe 

	# 0 "" 2
	.loc 1 378 0
#NO_APP
	ret
.L48:
	.loc 1 369 0
	mov	%d4, 38
	call	IOHWSF_vDefaultErrorHandler
	.loc 1 376 0
#APP
	# 376 "../30_Bsw/STL_common/Mcal_Trap.c" 1
	rslcx 

	# 0 "" 2
	.loc 1 377 0
	# 377 "../30_Bsw/STL_common/Mcal_Trap.c" 1
	rfe 

	# 0 "" 2
	.loc 1 378 0
#NO_APP
	ret
.L47:
	.loc 1 365 0
	mov	%d4, 37
	call	IOHWSF_vDefaultErrorHandler
	.loc 1 376 0
#APP
	# 376 "../30_Bsw/STL_common/Mcal_Trap.c" 1
	rslcx 

	# 0 "" 2
	.loc 1 377 0
	# 377 "../30_Bsw/STL_common/Mcal_Trap.c" 1
	rfe 

	# 0 "" 2
	.loc 1 378 0
#NO_APP
	ret
.LFE22:
	.size	_trap_4, .-_trap_4
	.align 3
	.global	_trap_5
	.type	_trap_5, @function
_trap_5:
.LFB23:
	.loc 1 399 0
	.loc 1 402 0
#APP
	# 402 "../30_Bsw/STL_common/Mcal_Trap.c" 1
	svlcx
	# 0 "" 2
	.loc 1 406 0
#NO_APP
	movh.a	%a15, hi:TrapIdentification
	lea	%a15, [%a15] lo:TrapIdentification
	mov	%d2, 1
	.loc 1 404 0
#APP
	# 404 "../30_Bsw/STL_common/Mcal_Trap.c" 1
	mov 	%d15,%d15
	# 0 "" 2
.LVL8:
	.loc 1 406 0
#NO_APP
	addsc.a	%a15, %a15, %d15, 2
	st.w	[%a15] 160, %d2
	.loc 1 407 0
	jeq	%d15, 1, .L54
	jeq	%d15, 2, .L58
	.loc 1 418 0
	mov	%d4, 43
	call	IOHWSF_vDefaultErrorHandler
	.loc 1 421 0
#APP
	# 421 "../30_Bsw/STL_common/Mcal_Trap.c" 1
	rslcx 

	# 0 "" 2
	.loc 1 422 0
	# 422 "../30_Bsw/STL_common/Mcal_Trap.c" 1
	rfe 

	# 0 "" 2
	.loc 1 423 0
#NO_APP
	ret
.L54:
	.loc 1 410 0
	mov	%d4, 39
	call	IOHWSF_vDefaultErrorHandler
	.loc 1 421 0
#APP
	# 421 "../30_Bsw/STL_common/Mcal_Trap.c" 1
	rslcx 

	# 0 "" 2
	.loc 1 422 0
	# 422 "../30_Bsw/STL_common/Mcal_Trap.c" 1
	rfe 

	# 0 "" 2
	.loc 1 423 0
#NO_APP
	ret
.L58:
	.loc 1 414 0
	mov	%d4, 40
	call	IOHWSF_vDefaultErrorHandler
	.loc 1 421 0
#APP
	# 421 "../30_Bsw/STL_common/Mcal_Trap.c" 1
	rslcx 

	# 0 "" 2
	.loc 1 422 0
	# 422 "../30_Bsw/STL_common/Mcal_Trap.c" 1
	rfe 

	# 0 "" 2
	.loc 1 423 0
#NO_APP
	ret
.LFE23:
	.size	_trap_5, .-_trap_5
	.align 3
	.global	_trap_6
	.type	_trap_6, @function
_trap_6:
.LFB24:
	.loc 1 449 0
	.loc 1 452 0
#APP
	# 452 "../30_Bsw/STL_common/Mcal_Trap.c" 1
	svlcx
	# 0 "" 2
	.loc 1 454 0
	# 454 "../30_Bsw/STL_common/Mcal_Trap.c" 1
	mov 	%d15,%d15
	# 0 "" 2
#NO_APP
	and	%d15, 255
.LVL9:
	.loc 1 460 0
	movh.a	%a15, hi:TrapIdentification
	lea	%a15, [%a15] lo:TrapIdentification
	st.w	[%a15] 192, %d15
	.loc 1 461 0
	mov	%d4, 41
	call	IOHWSF_vDefaultErrorHandler
	.loc 1 462 0
#APP
	# 462 "../30_Bsw/STL_common/Mcal_Trap.c" 1
	rslcx 

	# 0 "" 2
	.loc 1 463 0
	# 463 "../30_Bsw/STL_common/Mcal_Trap.c" 1
	rfe 

	# 0 "" 2
	.loc 1 464 0
#NO_APP
	ret
.LFE24:
	.size	_trap_6, .-_trap_6
	.align 3
	.global	_trap_7
	.type	_trap_7, @function
_trap_7:
.LFB25:
	.loc 1 487 0
	.loc 1 490 0
#APP
	# 490 "../30_Bsw/STL_common/Mcal_Trap.c" 1
	svlcx
	# 0 "" 2
	.loc 1 493 0
#NO_APP
	movh.a	%a15, hi:TrapIdentification
	lea	%a15, [%a15] lo:TrapIdentification
	mov	%d2, 1
	.loc 1 491 0
#APP
	# 491 "../30_Bsw/STL_common/Mcal_Trap.c" 1
	mov 	%d15,%d15
	# 0 "" 2
.LVL10:
	.loc 1 493 0
#NO_APP
	addsc.a	%a15, %a15, %d15, 2
	st.w	[%a15] 224, %d2
	.loc 1 494 0
	jnz	%d15, .L64
	.loc 1 497 0
	mov	%d4, 42
	call	IOHWSF_vDefaultErrorHandler
	.loc 1 504 0
#APP
	# 504 "../30_Bsw/STL_common/Mcal_Trap.c" 1
	rslcx 

	# 0 "" 2
	.loc 1 505 0
	# 505 "../30_Bsw/STL_common/Mcal_Trap.c" 1
	rfe 

	# 0 "" 2
	.loc 1 506 0
#NO_APP
	ret
.L64:
	.loc 1 501 0
	mov	%d4, 43
	call	IOHWSF_vDefaultErrorHandler
	.loc 1 504 0
#APP
	# 504 "../30_Bsw/STL_common/Mcal_Trap.c" 1
	rslcx 

	# 0 "" 2
	.loc 1 505 0
	# 505 "../30_Bsw/STL_common/Mcal_Trap.c" 1
	rfe 

	# 0 "" 2
	.loc 1 506 0
#NO_APP
	ret
.LFE25:
	.size	_trap_7, .-_trap_7
	.section .traptab_cpu0,"ax",@progbits
	.align 5
	.global	cpu0_trap_0
	.type	cpu0_trap_0, @function
cpu0_trap_0:
.LFB26:
	.loc 1 576 0
	.loc 1 580 0
#APP
	# 580 "../30_Bsw/STL_common/Mcal_Trap.c" 1
	.align 8
	# 0 "" 2
	.loc 1 581 0
	# 581 "../30_Bsw/STL_common/Mcal_Trap.c" 1
	j       _trap_0
	# 0 "" 2
	.loc 1 584 0
	# 584 "../30_Bsw/STL_common/Mcal_Trap.c" 1
	.align 5
	# 0 "" 2
	.loc 1 585 0
	# 585 "../30_Bsw/STL_common/Mcal_Trap.c" 1
	j       _trap_1
	# 0 "" 2
	.loc 1 588 0
	# 588 "../30_Bsw/STL_common/Mcal_Trap.c" 1
	.align 5
	# 0 "" 2
	.loc 1 589 0
	# 589 "../30_Bsw/STL_common/Mcal_Trap.c" 1
	j       _trap_2
	# 0 "" 2
	.loc 1 592 0
	# 592 "../30_Bsw/STL_common/Mcal_Trap.c" 1
	.align 5
	# 0 "" 2
	.loc 1 593 0
	# 593 "../30_Bsw/STL_common/Mcal_Trap.c" 1
	j       _trap_3
	# 0 "" 2
	.loc 1 596 0
	# 596 "../30_Bsw/STL_common/Mcal_Trap.c" 1
	.align 5
	# 0 "" 2
	.loc 1 597 0
	# 597 "../30_Bsw/STL_common/Mcal_Trap.c" 1
	j       _trap_4
	# 0 "" 2
	.loc 1 600 0
	# 600 "../30_Bsw/STL_common/Mcal_Trap.c" 1
	.align 5
	# 0 "" 2
	.loc 1 601 0
	# 601 "../30_Bsw/STL_common/Mcal_Trap.c" 1
	j       _trap_5
	# 0 "" 2
	.loc 1 604 0
	# 604 "../30_Bsw/STL_common/Mcal_Trap.c" 1
	.align 5
	# 0 "" 2
	.loc 1 605 0
	# 605 "../30_Bsw/STL_common/Mcal_Trap.c" 1
	j       _trap_6
	# 0 "" 2
	.loc 1 608 0
	# 608 "../30_Bsw/STL_common/Mcal_Trap.c" 1
	.align 5
	# 0 "" 2
	.loc 1 609 0
	# 609 "../30_Bsw/STL_common/Mcal_Trap.c" 1
	j       _trap_7
	# 0 "" 2
	.loc 1 611 0
#NO_APP
	ret
.LFE26:
	.size	cpu0_trap_0, .-cpu0_trap_0
	.section .bss.MPU_ASIL_VAR_NOINIT,"aw",@nobits
	.align 3
	.type	TrapIdentification, @object
	.size	TrapIdentification, 256
TrapIdentification:
	.zero	256
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
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB19
	.uaword	.LFE19-.LFB19
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB20
	.uaword	.LFE20-.LFB20
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB21
	.uaword	.LFE21-.LFB21
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB22
	.uaword	.LFE22-.LFB22
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB23
	.uaword	.LFE23-.LFB23
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB24
	.uaword	.LFE24-.LFB24
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB25
	.uaword	.LFE25-.LFB25
	.align 2
.LEFDE14:
.LSFDE16:
	.uaword	.LEFDE16-.LASFDE16
.LASFDE16:
	.uaword	.Lframe0
	.uaword	.LFB26
	.uaword	.LFE26-.LFB26
	.align 2
.LEFDE16:
.section .text,"ax",@progbits
.Letext0:
	.file 2 "../30_Bsw/Common/Platform_Types.h"
	.file 3 "../30_Bsw/iohw/Static/iohwsf.h"
	.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0xef1
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.6.3 build on 2013-05-17"
	.byte	0x1
	.string	"../30_Bsw/STL_common/Mcal_Trap.c"
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
	.uaword	0x79
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x3
	.string	"uint32"
	.byte	0x2
	.byte	0x5f
	.uaword	0xd7
	.uleb128 0x4
	.byte	0x4
	.byte	0x3
	.byte	0x24
	.uaword	0xd41
	.uleb128 0x5
	.string	"IOHWSF_E_SSCHECK"
	.sleb128 0
	.uleb128 0x5
	.string	"IOHWSF_E_SMU_CONFIGURATION_CHECK"
	.sleb128 1
	.uleb128 0x5
	.string	"IOHWSF_E_ISR_UNHANDLED_ISR"
	.sleb128 2
	.uleb128 0x5
	.string	"IOHWSF_E_ISR_100U_SOURCE_ERR"
	.sleb128 3
	.uleb128 0x5
	.string	"IOHWSF_E_ISR_1M_SOURCE_ERR"
	.sleb128 4
	.uleb128 0x5
	.string	"IOHWSF_E_ISR_10M_SOURCE_ERR"
	.sleb128 5
	.uleb128 0x5
	.string	"IOHWSF_E_SAFETLIB_INIT"
	.sleb128 6
	.uleb128 0x5
	.string	"IOHWSF_E_SAFETLIB_PRE_INIT"
	.sleb128 7
	.uleb128 0x5
	.string	"IOHWSF_E_SAFETLIB_PRERUN_PREHOOK"
	.sleb128 8
	.uleb128 0x5
	.string	"IOHWSF_E_SAFETLIB_PRERUN_TEST_FAIL"
	.sleb128 9
	.uleb128 0x5
	.string	"IOHWSF_E_SAFETLIB_PRERUN_POSTHOOK"
	.sleb128 10
	.uleb128 0x5
	.string	"IOHWSF_E_SAFETLIB_RUN_TEST_FAIL"
	.sleb128 11
	.uleb128 0x5
	.string	"IOHWSF_E_SAFETLIB_SRC_REG_CHECK_FAIL"
	.sleb128 12
	.uleb128 0x5
	.string	"IOHWSF_E_MCAL_DIV_INCONSISTENCY"
	.sleb128 13
	.uleb128 0x5
	.string	"IOHWSF_E_MCAL_SPINLOCK_TIMEOUT"
	.sleb128 14
	.uleb128 0x5
	.string	"IOHWSF_E_TRAP_VIRTUAL_ADDRESS_FILL"
	.sleb128 15
	.uleb128 0x5
	.string	"IOHWSF_E_TRAP_VIRTUAL_ADDRESS_PROTECTION"
	.sleb128 16
	.uleb128 0x5
	.string	"IOHWSF_E_TRAP_PRIVILEGE_INSTRUCTION"
	.sleb128 17
	.uleb128 0x5
	.string	"IOHWSF_E_TRAP_MEMORY_PROTECTION_READ"
	.sleb128 18
	.uleb128 0x5
	.string	"IOHWSF_E_TRAP_MEMORY_PROTECTION_WRITE"
	.sleb128 19
	.uleb128 0x5
	.string	"IOHWSF_E_TRAP_MEMORY_PROTECTION_EXECUTION"
	.sleb128 20
	.uleb128 0x5
	.string	"IOHWSF_E_TRAP_PROTECTION_PERIPHERAL_ACCESS"
	.sleb128 21
	.uleb128 0x5
	.string	"IOHWSF_E_TRAP_MEMORY_PROTECTION_NULL_ADDRESS"
	.sleb128 22
	.uleb128 0x5
	.string	"IOHWSF_E_TRAP_GLOBAL_REGISTER_WRITE_PROTECTION"
	.sleb128 23
	.uleb128 0x5
	.string	"IOHWSF_E_TRAP_ILLEGAL_OPCODE"
	.sleb128 24
	.uleb128 0x5
	.string	"IOHWSF_E_TRAP_UNIMPLEMENTED_OPCODE"
	.sleb128 25
	.uleb128 0x5
	.string	"IOHWSF_E_TRAP_INVALID_OPERAND_SPECIFICATION"
	.sleb128 26
	.uleb128 0x5
	.string	"IOHWSF_E_TRAP_DATA_ADDRESS_ALIGNMENT"
	.sleb128 27
	.uleb128 0x5
	.string	"IOHWSF_E_TRAP_INVALID_LOCAL_MEMORY_ADDRESS"
	.sleb128 28
	.uleb128 0x5
	.string	"IOHWSF_E_TRAP_FREE_CONTEXT_LIST_DEPLETION"
	.sleb128 29
	.uleb128 0x5
	.string	"IOHWSF_E_TRAP_CALL_DEPTH_OVERFLOW"
	.sleb128 30
	.uleb128 0x5
	.string	"IOHWSF_E_TRAP_CALL_DEPTH_UNDERFLOW"
	.sleb128 31
	.uleb128 0x5
	.string	"IOHWSF_E_TRAP_FREE_CONTEXT_LIST_UNDERFLOW"
	.sleb128 32
	.uleb128 0x5
	.string	"IOHWSF_E_TRAP_CALL_STACK_UNDERFLOW"
	.sleb128 33
	.uleb128 0x5
	.string	"IOHWSF_E_TRAP_CONTEXT_TYPE"
	.sleb128 34
	.uleb128 0x5
	.string	"IOHWSF_E_TRAP_NESTING_ERROR"
	.sleb128 35
	.uleb128 0x5
	.string	"IOHWSF_E_TRAP_PROGRAM_FETCH_SYNCHRONOUS_ERROR"
	.sleb128 36
	.uleb128 0x5
	.string	"IOHWSF_E_TRAP_DATA_ACCESS_SYNCHRONOUS_ERROR"
	.sleb128 37
	.uleb128 0x5
	.string	"IOHWSF_E_TRAP_DATA_ACCESS_ASYNCHRONOUS_ERROR"
	.sleb128 38
	.uleb128 0x5
	.string	"IOHWSF_E_TRAP_ARITHEMETIC_OVERFLOW"
	.sleb128 39
	.uleb128 0x5
	.string	"IOHWSF_E_TRAP_STICKY_ARITHEMETIC_OVERFLOW"
	.sleb128 40
	.uleb128 0x5
	.string	"IOHWSF_E_TRAP_UNEXPECTED_SYSTEM_CALL"
	.sleb128 41
	.uleb128 0x5
	.string	"IOHWSF_E_TRAP_UNEXPECTED_NMI"
	.sleb128 42
	.uleb128 0x5
	.string	"IOHWSF_E_TRAP_UNDEFINED_TIN"
	.sleb128 43
	.uleb128 0x5
	.string	"IOHWSF_E_CORE0_NOT_IN_SAFE_STATE"
	.sleb128 44
	.uleb128 0x5
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_TRAP_TST"
	.sleb128 45
	.uleb128 0x5
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_CLKM_TST"
	.sleb128 46
	.uleb128 0x5
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_SRAM_ECC_TST"
	.sleb128 47
	.uleb128 0x5
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_PMU_ECC_EDC_TST"
	.sleb128 48
	.uleb128 0x5
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_SRI_TST"
	.sleb128 49
	.uleb128 0x5
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_SPB_TST_TIMEOUT"
	.sleb128 50
	.uleb128 0x5
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_SFF_TST"
	.sleb128 51
	.uleb128 0x5
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_SPB_TST_RAP"
	.sleb128 52
	.uleb128 0x5
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_CPU_MPU_TST"
	.sleb128 53
	.uleb128 0x5
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_CPUBUSMPULFM_TST"
	.sleb128 54
	.uleb128 0x5
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_REG_ACC_PROT_TST"
	.sleb128 55
	.uleb128 0x5
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_CPU_WDG_TST"
	.sleb128 56
	.uleb128 0x5
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_SAFETY_WDG_TST"
	.sleb128 57
	.uleb128 0x5
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_SMU_TST_NMI"
	.sleb128 58
	.uleb128 0x5
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_SMU_TST_IRQ"
	.sleb128 59
	.uleb128 0x5
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_SMU_TST_RT"
	.sleb128 60
	.uleb128 0x5
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_VLM_TST"
	.sleb128 61
	.uleb128 0x5
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_IR_TST"
	.sleb128 62
	.uleb128 0x5
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_LOCK_STEP_TST"
	.sleb128 63
	.uleb128 0x5
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_SFR_CMP_TST"
	.sleb128 64
	.uleb128 0x5
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_SRC_REG_CHECK_TST"
	.sleb128 65
	.uleb128 0x5
	.string	"IOHWSF_E_FLASH_TEST_PATTERN_NOT_FLSHED"
	.sleb128 66
	.uleb128 0x5
	.string	"IOHWSF_E_SETUP_FSP_PIN"
	.sleb128 67
	.uleb128 0x5
	.string	"IOHWSF_E_SMU_LOCK_CFG_TST"
	.sleb128 68
	.uleb128 0x5
	.string	"IOHWSF_E_SAFETY_ISR_RESET"
	.sleb128 69
	.uleb128 0x5
	.string	"IOHWSF_E_TLF_ERR_DETECTION_TIMEOUT"
	.sleb128 70
	.uleb128 0x5
	.string	"IOHWSF_E_TLF_SYS_FLAGS_NOT_CLEARED"
	.sleb128 71
	.uleb128 0x5
	.string	"IOHWSF_E_TLF_RESTORE_FAILED"
	.sleb128 72
	.uleb128 0x5
	.string	"IOHWSF_E_RELEASE_FSP_FAILED"
	.sleb128 73
	.uleb128 0x5
	.string	"IOHWSF_E_UDS_ECU_RESET_REQ"
	.sleb128 74
	.uleb128 0x5
	.string	"IOHWSF_E_UDS_SRAM_ECCPREAOU_FAILED"
	.sleb128 75
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.string	"_trap_0"
	.byte	0x1
	.byte	0x69
	.byte	0x1
	.uaword	.LFB18
	.uaword	.LFE18
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0xd6b
	.uleb128 0x7
	.string	"tin"
	.byte	0x1
	.byte	0x6b
	.uaword	0x10d
	.byte	0x1
	.byte	0x5f
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.string	"_trap_1"
	.byte	0x1
	.byte	0x97
	.byte	0x1
	.uaword	.LFB19
	.uaword	.LFE19
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0xd97
	.uleb128 0x8
	.string	"tin"
	.byte	0x1
	.byte	0x99
	.uaword	0x10d
	.uaword	.LLST0
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.string	"_trap_2"
	.byte	0x1
	.byte	0xd9
	.byte	0x1
	.uaword	.LFB20
	.uaword	.LFE20
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0xdc3
	.uleb128 0x8
	.string	"tin"
	.byte	0x1
	.byte	0xdb
	.uaword	0x10d
	.uaword	.LLST1
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.string	"_trap_3"
	.byte	0x1
	.uahalf	0x113
	.byte	0x1
	.uaword	.LFB21
	.uaword	.LFE21
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0xdf1
	.uleb128 0xa
	.string	"tin"
	.byte	0x1
	.uahalf	0x117
	.uaword	0x10d
	.uaword	.LLST2
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.string	"_trap_4"
	.byte	0x1
	.uahalf	0x15d
	.byte	0x1
	.uaword	.LFB22
	.uaword	.LFE22
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0xe1d
	.uleb128 0xb
	.string	"tin"
	.byte	0x1
	.uahalf	0x15f
	.uaword	0x10d
	.byte	0x1
	.byte	0x5f
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.string	"_trap_5"
	.byte	0x1
	.uahalf	0x18e
	.byte	0x1
	.uaword	.LFB23
	.uaword	.LFE23
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0xe49
	.uleb128 0xb
	.string	"tin"
	.byte	0x1
	.uahalf	0x190
	.uaword	0x10d
	.byte	0x1
	.byte	0x5f
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.string	"_trap_6"
	.byte	0x1
	.uahalf	0x1c0
	.byte	0x1
	.uaword	.LFB24
	.uaword	.LFE24
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0xe75
	.uleb128 0xb
	.string	"tin"
	.byte	0x1
	.uahalf	0x1c3
	.uaword	0xf4
	.byte	0x1
	.byte	0x5f
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.string	"_trap_7"
	.byte	0x1
	.uahalf	0x1e6
	.byte	0x1
	.uaword	.LFB25
	.uaword	.LFE25
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0xea1
	.uleb128 0xb
	.string	"tin"
	.byte	0x1
	.uahalf	0x1e8
	.uaword	0x10d
	.byte	0x1
	.byte	0x5f
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.string	"cpu0_trap_0"
	.byte	0x1
	.uahalf	0x23f
	.byte	0x1
	.uaword	.LFB26
	.uaword	.LFE26
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0xd
	.uaword	0x10d
	.uaword	0xed4
	.uleb128 0xe
	.uaword	0xd7
	.byte	0x7
	.uleb128 0xe
	.uaword	0xd7
	.byte	0x7
	.byte	0
	.uleb128 0x7
	.string	"TrapIdentification"
	.byte	0x1
	.byte	0x3c
	.uaword	0xebe
	.byte	0x5
	.byte	0x3
	.uaword	TrapIdentification
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.byte	0
	.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL2
	.uaword	.LFE19
	.uahalf	0x3
	.byte	0x7f
	.sleb128 1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL3
	.uaword	.LVL4
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL4
	.uaword	.LFE20
	.uahalf	0x3
	.byte	0x7f
	.sleb128 1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL5
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL6
	.uaword	.LFE21
	.uahalf	0x3
	.byte	0x7f
	.sleb128 1
	.byte	0x9f
	.uaword	0
	.uaword	0
	.section .debug_aranges,"",@progbits
	.uaword	0x5c
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
	.uaword	0
	.uaword	0
	.section .debug_line,"",@progbits
.Ldebug_line0:
	.extern	IOHWSF_vDefaultErrorHandler,STT_FUNC,0
	.ident	"GCC: (HighTec Release v4.6.3.0) 4.6.3 build on 2013-05-17"
