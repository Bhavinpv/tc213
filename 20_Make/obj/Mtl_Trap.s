	.file	"Mtl_Trap.c"
.section .text,"ax",@progbits
.Ltext0:
	.section .text.STL_ASIL_CODE,"ax",@progbits
	.align 2
	.global	TRAP_Init
	.type	TRAP_Init, @function
TRAP_Init:
.LFB18:
	.file 1 "../30_Bsw/MicroTestLib/Static/Mtl_Trap.c"
	.loc 1 198 0
.LVL0:
.LBB15:
	.loc 1 203 0
#APP
	# 203 "../30_Bsw/MicroTestLib/Static/Mtl_Trap.c" 1
	mfcr %d3, LO:(0xFE1C)
	# 0 "" 2
.LVL1:
#NO_APP
.LBE15:
	.loc 1 206 0
	movh.a	%a2, hi:trap_ModuleStatus
	and	%d3, %d3, 3
.LVL2:
	sh	%d4, %d3, 2
	lea	%a2, [%a2] lo:trap_ModuleStatus
	addsc.a	%a2, %a2, %d4, 0
	.loc 1 208 0
	mov	%d2, 5
	.loc 1 206 0
	ld.w	%d15, [%a2]0
	jz	%d15, .L5
.LVL3:
	.loc 1 221 0
	ret
.LVL4:
.L5:
	.loc 1 214 0
	movh	%d2, hi:trap_TrapHandlers
	addi	%d2, %d2, lo:trap_TrapHandlers
	madd	%d5, %d2, %d3, 32
	.loc 1 200 0
	mov	%d2, 0
	.loc 1 214 0
	mov.a	%a15, %d5
	st.w	[%a15]0, %d15
.LVL5:
	st.w	[%a15] 4, %d15
.LVL6:
	st.w	[%a15] 8, %d15
.LVL7:
	st.w	[%a15] 12, %d15
.LVL8:
	st.w	[%a15] 16, %d15
.LVL9:
	st.w	[%a15] 20, %d15
.LVL10:
	st.w	[%a15] 24, %d15
.LVL11:
	st.w	[%a15] 28, %d15
.LVL12:
	.loc 1 216 0
	movh.a	%a15, hi:trap_BtvBackup
	lea	%a15, [%a15] lo:trap_BtvBackup
	addsc.a	%a15, %a15, %d4, 0
	st.w	[%a15]0, %d15
	.loc 1 218 0
	mov	%d15, 1
	st.w	[%a2]0, %d15
	.loc 1 221 0
	ret
.LFE18:
	.size	TRAP_Init, .-TRAP_Init
	.align 2
	.global	TRAP_RegisterTrapHandlerAllCores
	.type	TRAP_RegisterTrapHandlerAllCores, @function
TRAP_RegisterTrapHandlerAllCores:
.LFB19:
	.loc 1 256 0
.LVL13:
.LBB16:
	.loc 1 260 0
#APP
	# 260 "../30_Bsw/MicroTestLib/Static/Mtl_Trap.c" 1
	mfcr %d15, LO:(0xFE1C)
	# 0 "" 2
.LVL14:
#NO_APP
.LBE16:
	.loc 1 265 0
	movh.a	%a15, hi:trap_ModuleStatus
	and	%d15, %d15, 3
.LVL15:
	lea	%a15, [%a15] lo:trap_ModuleStatus
	addsc.a	%a15, %a15, %d15, 2
	.loc 1 267 0
	mov	%d2, 6
	.loc 1 265 0
	ld.w	%d3, [%a15]0
	jeq	%d3, 1, .L12
.L7:
.LVL16:
	.loc 1 294 0
	ret
.LVL17:
.L12:
	.loc 1 272 0
	mov	%d2, 4
	.loc 1 270 0
	jge.u	%d4, 8, .L7
	.loc 1 274 0
	jz.a	%a4, .L7
	.loc 1 278 0
	madd	%d15, %d4, %d15, 8
	movh.a	%a15, hi:trap_TrapHandlers
	lea	%a15, [%a15] lo:trap_TrapHandlers
	addsc.a	%a15, %a15, %d15, 2
	.loc 1 281 0
	mov	%d2, 2
	.loc 1 278 0
	ld.w	%d15, [%a15]0
	jnz	%d15, .L7
	.loc 1 290 0
	st.a	[%a15]0, %a4
	.loc 1 257 0
	mov	%d2, 0
.LVL18:
	.loc 1 294 0
	ret
.LFE19:
	.size	TRAP_RegisterTrapHandlerAllCores, .-TRAP_RegisterTrapHandlerAllCores
	.align 2
	.global	TRAP_UnregisterTrapHandlerAllCores
	.type	TRAP_UnregisterTrapHandlerAllCores, @function
TRAP_UnregisterTrapHandlerAllCores:
.LFB20:
	.loc 1 328 0
.LVL19:
.LBB17:
	.loc 1 332 0
#APP
	# 332 "../30_Bsw/MicroTestLib/Static/Mtl_Trap.c" 1
	mfcr %d15, LO:(0xFE1C)
	# 0 "" 2
.LVL20:
#NO_APP
.LBE17:
	.loc 1 337 0
	movh.a	%a15, hi:trap_ModuleStatus
	and	%d15, %d15, 3
.LVL21:
	lea	%a15, [%a15] lo:trap_ModuleStatus
	addsc.a	%a15, %a15, %d15, 2
	.loc 1 339 0
	mov	%d2, 6
	.loc 1 337 0
	ld.w	%d3, [%a15]0
	jeq	%d3, 1, .L18
.L14:
.LVL22:
	.loc 1 363 0
	ret
.LVL23:
.L18:
	.loc 1 344 0
	mov	%d2, 4
	.loc 1 342 0
	jge.u	%d4, 8, .L14
	.loc 1 346 0
	madd	%d15, %d4, %d15, 8
	movh.a	%a15, hi:trap_TrapHandlers
	lea	%a15, [%a15] lo:trap_TrapHandlers
	addsc.a	%a15, %a15, %d15, 2
	.loc 1 349 0
	mov	%d2, 3
	.loc 1 346 0
	ld.w	%d15, [%a15]0
	jz	%d15, .L14
	.loc 1 358 0
	mov	%d15, 0
	.loc 1 329 0
	mov	%d2, 0
.LVL24:
	.loc 1 358 0
	st.w	[%a15]0, %d15
	.loc 1 363 0
	ret
.LFE20:
	.size	TRAP_UnregisterTrapHandlerAllCores, .-TRAP_UnregisterTrapHandlerAllCores
	.align 2
	.global	TRAP_RegisterTrapHandler
	.type	TRAP_RegisterTrapHandler, @function
TRAP_RegisterTrapHandler:
.LFB21:
	.loc 1 394 0
.LVL25:
.LBB18:
	.loc 1 398 0
#APP
	# 398 "../30_Bsw/MicroTestLib/Static/Mtl_Trap.c" 1
	mfcr %d15, LO:(0xFE1C)
	# 0 "" 2
.LVL26:
#NO_APP
.LBE18:
	.loc 1 401 0
	movh.a	%a15, hi:trap_ModuleStatus
	and	%d15, %d15, 3
.LVL27:
	lea	%a15, [%a15] lo:trap_ModuleStatus
	addsc.a	%a15, %a15, %d15, 2
	.loc 1 403 0
	mov	%d2, 6
	.loc 1 401 0
	ld.w	%d3, [%a15]0
	jeq	%d3, 1, .L25
.L20:
.LVL28:
	.loc 1 426 0
	ret
.LVL29:
.L25:
	.loc 1 408 0
	mov	%d2, 4
	.loc 1 406 0
	jge.u	%d4, 8, .L20
	.loc 1 410 0
	jz.a	%a4, .L20
	.loc 1 414 0
	madd	%d15, %d4, %d15, 8
	movh.a	%a15, hi:trap_TrapHandlers
	lea	%a15, [%a15] lo:trap_TrapHandlers
	addsc.a	%a15, %a15, %d15, 2
	.loc 1 417 0
	mov	%d2, 2
	.loc 1 414 0
	ld.w	%d15, [%a15]0
	jnz	%d15, .L20
	.loc 1 422 0
	st.a	[%a15]0, %a4
	.loc 1 395 0
	mov	%d2, 0
.LVL30:
	.loc 1 426 0
	ret
.LFE21:
	.size	TRAP_RegisterTrapHandler, .-TRAP_RegisterTrapHandler
	.align 2
	.global	TRAP_UnregisterTrapHandler
	.type	TRAP_UnregisterTrapHandler, @function
TRAP_UnregisterTrapHandler:
.LFB22:
	.loc 1 455 0
.LVL31:
.LBB19:
	.loc 1 459 0
#APP
	# 459 "../30_Bsw/MicroTestLib/Static/Mtl_Trap.c" 1
	mfcr %d15, LO:(0xFE1C)
	# 0 "" 2
.LVL32:
#NO_APP
.LBE19:
	.loc 1 462 0
	movh.a	%a15, hi:trap_ModuleStatus
	and	%d15, %d15, 3
.LVL33:
	lea	%a15, [%a15] lo:trap_ModuleStatus
	addsc.a	%a15, %a15, %d15, 2
	.loc 1 464 0
	mov	%d2, 6
	.loc 1 462 0
	ld.w	%d3, [%a15]0
	jeq	%d3, 1, .L31
.L27:
.LVL34:
	.loc 1 483 0
	ret
.LVL35:
.L31:
	.loc 1 469 0
	mov	%d2, 4
	.loc 1 467 0
	jge.u	%d4, 8, .L27
	.loc 1 471 0
	madd	%d15, %d4, %d15, 8
	movh.a	%a15, hi:trap_TrapHandlers
	lea	%a15, [%a15] lo:trap_TrapHandlers
	addsc.a	%a15, %a15, %d15, 2
	.loc 1 474 0
	mov	%d2, 3
	.loc 1 471 0
	ld.w	%d15, [%a15]0
	jz	%d15, .L27
	.loc 1 479 0
	mov	%d15, 0
	.loc 1 456 0
	mov	%d2, 0
.LVL36:
	.loc 1 479 0
	st.w	[%a15]0, %d15
	.loc 1 483 0
	ret
.LFE22:
	.size	TRAP_UnregisterTrapHandler, .-TRAP_UnregisterTrapHandler
	.align 2
	.global	TRAP_StartHandleTraps
	.type	TRAP_StartHandleTraps, @function
TRAP_StartHandleTraps:
.LFB23:
	.loc 1 511 0
.LVL37:
.LBB20:
	.loc 1 516 0
#APP
	# 516 "../30_Bsw/MicroTestLib/Static/Mtl_Trap.c" 1
	mfcr %d15, LO:(0xFE1C)
	# 0 "" 2
.LVL38:
#NO_APP
.LBE20:
	.loc 1 519 0
	movh.a	%a15, hi:trap_ModuleStatus
	and	%d15, %d15, 3
.LVL39:
	sh	%d15, 2
	lea	%a15, [%a15] lo:trap_ModuleStatus
	addsc.a	%a15, %a15, %d15, 0
	.loc 1 521 0
	mov	%d2, 6
	.loc 1 519 0
	ld.w	%d3, [%a15]0
	jeq	%d3, 1, .L36
.L33:
.LVL40:
	.loc 1 540 0
	ret
.LVL41:
.L36:
	.loc 1 525 0
	movh.a	%a15, hi:trap_BtvBackup
	lea	%a15, [%a15] lo:trap_BtvBackup
	addsc.a	%a15, %a15, %d15, 0
	.loc 1 527 0
	mov	%d2, 1
	.loc 1 525 0
	ld.w	%d15, [%a15]0
	jnz	%d15, .L33
.LBB21:
	.loc 1 532 0
#APP
	# 532 "../30_Bsw/MicroTestLib/Static/Mtl_Trap.c" 1
	mfcr %d15, LO:(0xFE24)
	# 0 "" 2
.LVL42:
#NO_APP
.LBE21:
	.loc 1 533 0
	st.w	[%a15]0, %d15
	.loc 1 534 0
	call	Mcal_ResetENDINIT
.LBB22:
.LBB23:
	.file 2 "../30_Bsw/STL_common/intrinsics.h"
	.loc 2 190 0
#APP
	# 190 "../30_Bsw/STL_common/intrinsics.h" 1
	dsync
	# 0 "" 2
.LVL43:
#NO_APP
.LBE23:
.LBE22:
.LBB24:
	.loc 1 535 0
	movh	%d15, hi:Stl_TrapVectors
.LVL44:
	addi	%d15, %d15, lo:Stl_TrapVectors
#APP
	# 535 "../30_Bsw/MicroTestLib/Static/Mtl_Trap.c" 1
	mtcr LO:(0xFE24), %d15
	# 0 "" 2
#NO_APP
.LBE24:
.LBB25:
.LBB26:
	.loc 2 184 0
#APP
	# 184 "../30_Bsw/STL_common/intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE26:
.LBE25:
	.loc 1 536 0
	call	Mcal_SetENDINIT
	.loc 1 513 0
	mov	%d2, 0
.LVL45:
	.loc 1 540 0
	ret
.LFE23:
	.size	TRAP_StartHandleTraps, .-TRAP_StartHandleTraps
	.align 2
	.global	TRAP_StopHandleTraps
	.type	TRAP_StopHandleTraps, @function
TRAP_StopHandleTraps:
.LFB24:
	.loc 1 563 0
.LVL46:
.LBB27:
	.loc 1 567 0
#APP
	# 567 "../30_Bsw/MicroTestLib/Static/Mtl_Trap.c" 1
	mfcr %d15, LO:(0xFE1C)
	# 0 "" 2
.LVL47:
#NO_APP
.LBE27:
	.loc 1 570 0
	movh.a	%a15, hi:trap_ModuleStatus
	and	%d15, %d15, 3
.LVL48:
	sh	%d15, 2
	lea	%a15, [%a15] lo:trap_ModuleStatus
	addsc.a	%a15, %a15, %d15, 0
	.loc 1 572 0
	mov	%d2, 6
	.loc 1 570 0
	ld.w	%d3, [%a15]0
	jeq	%d3, 1, .L41
.L38:
.LVL49:
	.loc 1 590 0
	ret
.LVL50:
.L41:
	.loc 1 576 0
	movh.a	%a15, hi:trap_BtvBackup
	lea	%a15, [%a15] lo:trap_BtvBackup
	addsc.a	%a15, %a15, %d15, 0
	.loc 1 578 0
	mov	%d2, 1
	.loc 1 576 0
	ld.w	%d15, [%a15]0
	jz	%d15, .L38
	.loc 1 583 0
	call	Mcal_ResetENDINIT
.LBB28:
.LBB29:
	.loc 2 190 0
#APP
	# 190 "../30_Bsw/STL_common/intrinsics.h" 1
	dsync
	# 0 "" 2
#NO_APP
.LBE29:
.LBE28:
.LBB30:
	.loc 1 584 0
	ld.w	%d15, [%a15]0
#APP
	# 584 "../30_Bsw/MicroTestLib/Static/Mtl_Trap.c" 1
	mtcr LO:(0xFE24), %d15
	# 0 "" 2
#NO_APP
.LBE30:
.LBB31:
.LBB32:
	.loc 2 184 0
#APP
	# 184 "../30_Bsw/STL_common/intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE32:
.LBE31:
	.loc 1 586 0
	mov	%d15, 0
	.loc 1 585 0
	call	Mcal_SetENDINIT
	.loc 1 564 0
	mov	%d2, 0
.LVL51:
	.loc 1 586 0
	st.w	[%a15]0, %d15
	.loc 1 590 0
	ret
.LFE24:
	.size	TRAP_StopHandleTraps, .-TRAP_StopHandleTraps
	.align 2
	.global	TRAP_GenericTrapHandler
	.type	TRAP_GenericTrapHandler, @function
TRAP_GenericTrapHandler:
.LFB25:
	.loc 1 593 0
.LVL52:
	.loc 1 593 0
	mov	%d8, %d4
	mov	%d15, %d5
.LBB33:
	.loc 1 601 0
#APP
	# 601 "../30_Bsw/MicroTestLib/Static/Mtl_Trap.c" 1
	mfcr %d9, LO:(0xFE1C)
	# 0 "" 2
.LVL53:
#NO_APP
.LBE33:
	.loc 1 608 0
	and	%d9, %d9, 3
.LVL54:
	movh.a	%a2, hi:trap_TrapHandlers
	sh	%d3, %d9, 3
	lea	%a2, [%a2] lo:trap_TrapHandlers
	add	%d2, %d3, %d4
	addsc.a	%a3, %a2, %d2, 2
	ld.a	%a15, [%a3]0
	jz.a	%a15, .L43
	.loc 1 608 0 is_stmt 0 discriminator 1
	eq	%d2, %d4, 3
	and.ne	%d2, %d5, 3
	jnz	%d2, .L43
	.loc 1 618 0 is_stmt 1
	add	%d3, %d8
	addsc.a	%a15, %a2, %d3, 2
	mov	%d4, %d15
.LVL55:
	ld.a	%a15, [%a15]0
	calli	%a15
.LVL56:
	.loc 1 620 0
	jeq	%d2, 1, .L50
.LVL57:
.L45:
	.loc 1 664 0
	movh.a	%a15, hi:trap_BtvBackup
	lea	%a15, [%a15] lo:trap_BtvBackup
	addsc.a	%a15, %a15, %d9, 2
	ld.w	%d2, [%a15]0
.LVL58:
	.loc 1 665 0
	madd	%d8, %d2, %d8, 32
.LVL59:
	.loc 1 666 0
#APP
	# 666 "../30_Bsw/MicroTestLib/Static/Mtl_Trap.c" 1
	mov.a %a12,%d8
	# 0 "" 2
	# 666 "../30_Bsw/MicroTestLib/Static/Mtl_Trap.c" 1
	mov %d15,%d15
	# 0 "" 2
	# 666 "../30_Bsw/MicroTestLib/Static/Mtl_Trap.c" 1
	rslcx
	# 0 "" 2
	# 666 "../30_Bsw/MicroTestLib/Static/Mtl_Trap.c" 1
	ji %a12
	# 0 "" 2
	.loc 1 670 0
#NO_APP
	mov.a	%a2, 0
	ret
.LVL60:
.L43:
	.loc 1 612 0
	movh.a	%a15, hi:trap_BtvBackup
	lea	%a15, [%a15] lo:trap_BtvBackup
	addsc.a	%a15, %a15, %d9, 2
	ld.w	%d2, [%a15]0
.LVL61:
	.loc 1 613 0
	madd	%d2, %d2, %d8, 32
	.loc 1 614 0
#APP
	# 614 "../30_Bsw/MicroTestLib/Static/Mtl_Trap.c" 1
	mov.a %a12,%d2
	# 0 "" 2
	# 614 "../30_Bsw/MicroTestLib/Static/Mtl_Trap.c" 1
	mov %d15,%d15
	# 0 "" 2
	# 614 "../30_Bsw/MicroTestLib/Static/Mtl_Trap.c" 1
	rslcx
	# 0 "" 2
	# 614 "../30_Bsw/MicroTestLib/Static/Mtl_Trap.c" 1
	ji %a12
	# 0 "" 2
	.loc 1 618 0
#NO_APP
	add	%d3, %d8
	addsc.a	%a15, %a2, %d3, 2
.LVL62:
	mov	%d4, %d15
.LVL63:
	ld.a	%a15, [%a15]0
	calli	%a15
.LVL64:
	.loc 1 620 0
	jne	%d2, 1, .L45
.L50:
	.loc 1 625 0
	jlt.u	%d8, 3, .L46
	.loc 1 627 0
	eq	%d2, %d8, 3
.LVL65:
	and.ne	%d2, %d15, 1
	jnz	%d2, .L46
	.loc 1 592 0
	eq	%d2, %d15, 5
	or.lt.u	%d2, %d15, 3
	.loc 1 629 0
	eq	%d15, %d8, 4
.LVL66:
	and	%d15, %d2
	jz	%d15, .L51
.L46:
.LBB34:
	.loc 1 634 0
#APP
	# 634 "../30_Bsw/MicroTestLib/Static/Mtl_Trap.c" 1
	mfcr %d15, LO:(0xFE00)
	# 0 "" 2
.LVL67:
#NO_APP
.LBE34:
	.loc 1 637 0
	movh	%d3, 15
	.loc 1 638 0
	insert	%d2, %d15, 0, 16, 16
	.loc 1 637 0
	and	%d15, %d3
.LVL68:
	sh	%d15, %d15, 12
	madd	%d3, %d15, %d2, 64
	mov.a	%a15, %d3
.LVL69:
	.loc 1 642 0
	ld.a	%a2, [%a15] 4
.LVL70:
	.loc 1 643 0
	ld.hu	%d15, [%a2]0
	jnz.t	%d15, 0, .L52
	.loc 1 651 0
	ld.w	%d15, [%a15] 4
	add	%d15, 2
	st.w	[%a15] 4, %d15
.LVL71:
.L47:
	.loc 1 657 0
#APP
	# 657 "../30_Bsw/MicroTestLib/Static/Mtl_Trap.c" 1
	rslcx
	# 0 "" 2
	.loc 1 658 0
	# 658 "../30_Bsw/MicroTestLib/Static/Mtl_Trap.c" 1
	rfe
	# 0 "" 2
	.loc 1 670 0
#NO_APP
	mov.a	%a2, 0
	ret
.LVL72:
.L52:
	.loc 1 646 0
	ld.w	%d15, [%a15] 4
	add	%d15, 4
	st.w	[%a15] 4, %d15
	j	.L47
.LVL73:
.L51:
	.loc 1 630 0
	jne	%d8, 5, .L47
	j	.L46
.LFE25:
	.size	TRAP_GenericTrapHandler, .-TRAP_GenericTrapHandler
	.section .data.STL_RAM_UNSPECIFIED_NONZERO_INIT,"aw",@progbits
	.align 2
	.type	trap_TrapHandlers, @object
	.size	trap_TrapHandlers, 32
trap_TrapHandlers:
	.zero	32
	.align 2
	.type	trap_ModuleStatus, @object
	.size	trap_ModuleStatus, 4
trap_ModuleStatus:
	.zero	4
	.align 2
	.type	trap_BtvBackup, @object
	.size	trap_BtvBackup, 4
trap_BtvBackup:
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
.section .text,"ax",@progbits
.Letext0:
	.file 3 "../30_Bsw/Common/Platform_Types.h"
	.file 4 "../30_Bsw/MicroTestLib/Static/Mtl_Trap.h"
	.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x8c0
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.6.3 build on 2013-05-17"
	.byte	0x1
	.string	"../30_Bsw/MicroTestLib/Static/Mtl_Trap.c"
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
	.byte	0x4
	.uleb128 0x4
	.string	"uint8"
	.byte	0x3
	.byte	0x5b
	.uaword	0x81
	.uleb128 0x4
	.string	"uint16"
	.byte	0x3
	.byte	0x5d
	.uaword	0x9f
	.uleb128 0x4
	.string	"sint32"
	.byte	0x3
	.byte	0x5e
	.uaword	0x127
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x4
	.string	"uint32"
	.byte	0x3
	.byte	0x5f
	.uaword	0xdf
	.uleb128 0x4
	.string	"boolean"
	.byte	0x3
	.byte	0x63
	.uaword	0x81
	.uleb128 0x4
	.string	"TRAP_TrapHandlerCbk"
	.byte	0x4
	.byte	0x63
	.uaword	0x16b
	.uleb128 0x5
	.byte	0x4
	.uaword	0x171
	.uleb128 0x6
	.byte	0x1
	.uaword	0x141
	.uaword	0x181
	.uleb128 0x7
	.uaword	0x181
	.byte	0
	.uleb128 0x8
	.uaword	0x133
	.uleb128 0x4
	.string	"TRAP_ErrorType"
	.byte	0x4
	.byte	0x66
	.uaword	0x133
	.uleb128 0x9
	.byte	0x4
	.byte	0x1
	.byte	0x6c
	.uaword	0x1be
	.uleb128 0xa
	.string	"TMS_UNINIT"
	.sleb128 0
	.uleb128 0xa
	.string	"TMS_READY"
	.sleb128 1
	.byte	0
	.uleb128 0x4
	.string	"TRAP_ModuleStatus"
	.byte	0x1
	.byte	0x6f
	.uaword	0x19c
	.uleb128 0xb
	.byte	0x40
	.byte	0x1
	.byte	0x71
	.uaword	0x2b3
	.uleb128 0xc
	.string	"Pcxi"
	.byte	0x1
	.byte	0x73
	.uaword	0x133
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"A11"
	.byte	0x1
	.byte	0x74
	.uaword	0x133
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.string	"A2"
	.byte	0x1
	.byte	0x75
	.uaword	0x133
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.string	"A3"
	.byte	0x1
	.byte	0x76
	.uaword	0x133
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xc
	.string	"D0"
	.byte	0x1
	.byte	0x77
	.uaword	0x133
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xc
	.string	"D1"
	.byte	0x1
	.byte	0x78
	.uaword	0x133
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xc
	.string	"D2"
	.byte	0x1
	.byte	0x79
	.uaword	0x133
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xc
	.string	"D3"
	.byte	0x1
	.byte	0x7a
	.uaword	0x133
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xc
	.string	"A4"
	.byte	0x1
	.byte	0x7b
	.uaword	0x133
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xc
	.string	"A5"
	.byte	0x1
	.byte	0x7c
	.uaword	0x133
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xc
	.string	"A6"
	.byte	0x1
	.byte	0x7d
	.uaword	0x133
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xc
	.string	"A7"
	.byte	0x1
	.byte	0x7e
	.uaword	0x133
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xc
	.string	"D4"
	.byte	0x1
	.byte	0x7f
	.uaword	0x133
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xc
	.string	"D5"
	.byte	0x1
	.byte	0x80
	.uaword	0x133
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xc
	.string	"D6"
	.byte	0x1
	.byte	0x81
	.uaword	0x133
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xc
	.string	"D7"
	.byte	0x1
	.byte	0x82
	.uaword	0x133
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.byte	0
	.uleb128 0x4
	.string	"StlTrap_LowerContext"
	.byte	0x1
	.byte	0x83
	.uaword	0x2cf
	.uleb128 0xd
	.uaword	0x1d7
	.uleb128 0xe
	.string	"_dsync"
	.byte	0x2
	.byte	0xbc
	.byte	0x1
	.byte	0x3
	.uleb128 0xe
	.string	"_isync"
	.byte	0x2
	.byte	0xb6
	.byte	0x1
	.byte	0x3
	.uleb128 0xf
	.byte	0x1
	.string	"TRAP_Init"
	.byte	0x1
	.byte	0xc5
	.byte	0x1
	.uaword	0x186
	.uaword	.LFB18
	.uaword	.LFE18
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x353
	.uleb128 0x10
	.string	"i"
	.byte	0x1
	.byte	0xc7
	.uaword	0x119
	.uaword	.LLST0
	.uleb128 0x11
	.uaword	.LASF0
	.byte	0x1
	.byte	0xc8
	.uaword	0x186
	.uaword	.LLST1
	.uleb128 0x11
	.uaword	.LASF1
	.byte	0x1
	.byte	0xc9
	.uaword	0xfe
	.uaword	.LLST2
	.uleb128 0x12
	.uaword	.LBB15
	.uaword	.LBE15
	.uleb128 0x11
	.uaword	.LASF2
	.byte	0x1
	.byte	0xcb
	.uaword	0xbc
	.uaword	.LLST3
	.byte	0
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.string	"TRAP_RegisterTrapHandlerAllCores"
	.byte	0x1
	.byte	0xfe
	.byte	0x1
	.uaword	0x186
	.uaword	.LFB19
	.uaword	.LFE19
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x3e5
	.uleb128 0x13
	.uaword	.LASF3
	.byte	0x1
	.byte	0xfe
	.uaword	0x3e5
	.byte	0x1
	.byte	0x54
	.uleb128 0x14
	.string	"handler"
	.byte	0x1
	.byte	0xff
	.uaword	0x3ea
	.byte	0x1
	.byte	0x64
	.uleb128 0x15
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x101
	.uaword	0x186
	.uaword	.LLST4
	.uleb128 0x15
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x102
	.uaword	0xfe
	.uaword	.LLST5
	.uleb128 0x12
	.uaword	.LBB16
	.uaword	.LBE16
	.uleb128 0x15
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x104
	.uaword	0xbc
	.uaword	.LLST6
	.byte	0
	.byte	0
	.uleb128 0x8
	.uaword	0xfe
	.uleb128 0x8
	.uaword	0x150
	.uleb128 0x16
	.byte	0x1
	.string	"TRAP_UnregisterTrapHandlerAllCores"
	.byte	0x1
	.uahalf	0x147
	.byte	0x1
	.uaword	0x186
	.uaword	.LFB20
	.uaword	.LFE20
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x474
	.uleb128 0x17
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x147
	.uaword	0x3e5
	.byte	0x1
	.byte	0x54
	.uleb128 0x15
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x149
	.uaword	0x186
	.uaword	.LLST7
	.uleb128 0x15
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x14a
	.uaword	0xfe
	.uaword	.LLST8
	.uleb128 0x12
	.uaword	.LBB17
	.uaword	.LBE17
	.uleb128 0x15
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x14c
	.uaword	0xbc
	.uaword	.LLST9
	.byte	0
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.string	"TRAP_RegisterTrapHandler"
	.byte	0x1
	.uahalf	0x189
	.byte	0x1
	.uaword	0x186
	.uaword	.LFB21
	.uaword	.LFE21
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x503
	.uleb128 0x18
	.string	"class"
	.byte	0x1
	.uahalf	0x189
	.uaword	0x3e5
	.byte	0x1
	.byte	0x54
	.uleb128 0x18
	.string	"handler"
	.byte	0x1
	.uahalf	0x189
	.uaword	0x3ea
	.byte	0x1
	.byte	0x64
	.uleb128 0x15
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x18b
	.uaword	0x186
	.uaword	.LLST10
	.uleb128 0x15
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x18c
	.uaword	0xfe
	.uaword	.LLST11
	.uleb128 0x12
	.uaword	.LBB18
	.uaword	.LBE18
	.uleb128 0x15
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x18e
	.uaword	0xbc
	.uaword	.LLST12
	.byte	0
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.string	"TRAP_UnregisterTrapHandler"
	.byte	0x1
	.uahalf	0x1c6
	.byte	0x1
	.uaword	0x186
	.uaword	.LFB22
	.uaword	.LFE22
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x582
	.uleb128 0x18
	.string	"class"
	.byte	0x1
	.uahalf	0x1c6
	.uaword	0x3e5
	.byte	0x1
	.byte	0x54
	.uleb128 0x15
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x1c8
	.uaword	0x186
	.uaword	.LLST13
	.uleb128 0x15
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x1c9
	.uaword	0xfe
	.uaword	.LLST14
	.uleb128 0x12
	.uaword	.LBB19
	.uaword	.LBE19
	.uleb128 0x15
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x1cb
	.uaword	0xbc
	.uaword	.LLST15
	.byte	0
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.string	"TRAP_StartHandleTraps"
	.byte	0x1
	.uahalf	0x1fe
	.byte	0x1
	.uaword	0x186
	.uaword	.LFB23
	.uaword	.LFE23
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x659
	.uleb128 0x19
	.string	"temp"
	.byte	0x1
	.uahalf	0x200
	.uaword	0x133
	.uaword	.LLST16
	.uleb128 0x15
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x201
	.uaword	0x186
	.uaword	.LLST17
	.uleb128 0x15
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x202
	.uaword	0xfe
	.uaword	.LLST18
	.uleb128 0x1a
	.uaword	.LBB20
	.uaword	.LBE20
	.uaword	0x600
	.uleb128 0x15
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x204
	.uaword	0xbc
	.uaword	.LLST19
	.byte	0
	.uleb128 0x1a
	.uaword	.LBB21
	.uaword	.LBE21
	.uaword	0x61e
	.uleb128 0x15
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x214
	.uaword	0xbc
	.uaword	.LLST20
	.byte	0
	.uleb128 0x1b
	.uaword	0x2d4
	.uaword	.LBB22
	.uaword	.LBE22
	.byte	0x1
	.uahalf	0x217
	.uleb128 0x1a
	.uaword	.LBB24
	.uaword	.LBE24
	.uaword	0x648
	.uleb128 0x1c
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x217
	.uaword	0xbc
	.byte	0
	.uleb128 0x1b
	.uaword	0x2e0
	.uaword	.LBB25
	.uaword	.LBE25
	.byte	0x1
	.uahalf	0x217
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.string	"TRAP_StopHandleTraps"
	.byte	0x1
	.uahalf	0x232
	.byte	0x1
	.uaword	0x186
	.uaword	.LFB24
	.uaword	.LFE24
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x700
	.uleb128 0x15
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x234
	.uaword	0x186
	.uaword	.LLST21
	.uleb128 0x15
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x235
	.uaword	0xfe
	.uaword	.LLST22
	.uleb128 0x1a
	.uaword	.LBB27
	.uaword	.LBE27
	.uaword	0x6c5
	.uleb128 0x15
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x237
	.uaword	0xbc
	.uaword	.LLST23
	.byte	0
	.uleb128 0x1b
	.uaword	0x2d4
	.uaword	.LBB28
	.uaword	.LBE28
	.byte	0x1
	.uahalf	0x248
	.uleb128 0x1a
	.uaword	.LBB30
	.uaword	.LBE30
	.uaword	0x6ef
	.uleb128 0x1c
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x248
	.uaword	0xbc
	.byte	0
	.uleb128 0x1b
	.uaword	0x2e0
	.uaword	.LBB31
	.uaword	.LBE31
	.byte	0x1
	.uahalf	0x248
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.string	"TRAP_GenericTrapHandler"
	.byte	0x1
	.uahalf	0x250
	.byte	0x1
	.uaword	0xfc
	.uaword	.LFB25
	.uaword	.LFE25
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x822
	.uleb128 0x1d
	.string	"trapClass"
	.byte	0x1
	.uahalf	0x250
	.uaword	0x133
	.uaword	.LLST24
	.uleb128 0x1d
	.string	"trapID"
	.byte	0x1
	.uahalf	0x250
	.uaword	0x133
	.uaword	.LLST25
	.uleb128 0x19
	.string	"pApplTrapVector"
	.byte	0x1
	.uahalf	0x252
	.uaword	0x133
	.uaword	.LLST26
	.uleb128 0x19
	.string	"pLowerContext"
	.byte	0x1
	.uahalf	0x253
	.uaword	0x822
	.uaword	.LLST27
	.uleb128 0x19
	.string	"PCXICopy"
	.byte	0x1
	.uahalf	0x254
	.uaword	0x133
	.uaword	.LLST28
	.uleb128 0x19
	.string	"pReturnAddress"
	.byte	0x1
	.uahalf	0x255
	.uaword	0x828
	.uaword	.LLST29
	.uleb128 0x15
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x256
	.uaword	0xfe
	.uaword	.LLST30
	.uleb128 0x19
	.string	"ExpectedTrap"
	.byte	0x1
	.uahalf	0x257
	.uaword	0x141
	.uaword	.LLST31
	.uleb128 0x1a
	.uaword	.LBB33
	.uaword	.LBE33
	.uaword	0x807
	.uleb128 0x15
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x259
	.uaword	0xbc
	.uaword	.LLST32
	.byte	0
	.uleb128 0x12
	.uaword	.LBB34
	.uaword	.LBE34
	.uleb128 0x15
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x27a
	.uaword	0xbc
	.uaword	.LLST28
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x2cf
	.uleb128 0x5
	.byte	0x4
	.uaword	0x10b
	.uleb128 0x1e
	.uaword	0x150
	.uaword	0x844
	.uleb128 0x1f
	.uaword	0xdf
	.byte	0
	.uleb128 0x1f
	.uaword	0xdf
	.byte	0x7
	.byte	0
	.uleb128 0x20
	.string	"trap_TrapHandlers"
	.byte	0x1
	.byte	0x94
	.uaword	0x863
	.byte	0x5
	.byte	0x3
	.uaword	trap_TrapHandlers
	.uleb128 0xd
	.uaword	0x82e
	.uleb128 0x1e
	.uaword	0xfc
	.uaword	0x878
	.uleb128 0x1f
	.uaword	0xdf
	.byte	0
	.byte	0
	.uleb128 0x20
	.string	"trap_BtvBackup"
	.byte	0x1
	.byte	0x95
	.uaword	0x868
	.byte	0x5
	.byte	0x3
	.uaword	trap_BtvBackup
	.uleb128 0x1e
	.uaword	0x1be
	.uaword	0x8a4
	.uleb128 0x1f
	.uaword	0xdf
	.byte	0
	.byte	0
	.uleb128 0x20
	.string	"trap_ModuleStatus"
	.byte	0x1
	.byte	0x96
	.uaword	0x894
	.byte	0x5
	.byte	0x3
	.uaword	trap_ModuleStatus
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x4
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
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.byte	0
	.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL5
	.uaword	.LVL6
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL7
	.uaword	.LVL8
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL8
	.uaword	.LVL9
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL9
	.uaword	.LVL10
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	.LVL10
	.uaword	.LVL11
	.uahalf	0x2
	.byte	0x36
	.byte	0x9f
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x2
	.byte	0x37
	.byte	0x9f
	.uaword	.LVL12
	.uaword	.LFE18
	.uahalf	0x2
	.byte	0x38
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL3
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL3
	.uaword	.LVL4
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL4
	.uaword	.LVL12
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL12
	.uaword	.LFE18
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x5
	.byte	0x73
	.sleb128 0
	.byte	0x33
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL13
	.uaword	.LVL16
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL16
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL17
	.uaword	.LVL18
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL18
	.uaword	.LFE19
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL14
	.uaword	.LVL15
	.uahalf	0x5
	.byte	0x7f
	.sleb128 0
	.byte	0x33
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL14
	.uaword	.LVL15
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL19
	.uaword	.LVL22
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL22
	.uaword	.LVL23
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL23
	.uaword	.LVL24
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL24
	.uaword	.LFE20
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x5
	.byte	0x7f
	.sleb128 0
	.byte	0x33
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL25
	.uaword	.LVL28
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL28
	.uaword	.LVL29
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL29
	.uaword	.LVL30
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL30
	.uaword	.LFE21
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL26
	.uaword	.LVL27
	.uahalf	0x5
	.byte	0x7f
	.sleb128 0
	.byte	0x33
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL26
	.uaword	.LVL27
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL31
	.uaword	.LVL34
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL34
	.uaword	.LVL35
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL35
	.uaword	.LVL36
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL36
	.uaword	.LFE22
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL32
	.uaword	.LVL33
	.uahalf	0x5
	.byte	0x7f
	.sleb128 0
	.byte	0x33
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL32
	.uaword	.LVL33
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL37
	.uaword	.LVL42
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL42
	.uaword	.LVL44
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL37
	.uaword	.LVL40
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL40
	.uaword	.LVL41
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL41
	.uaword	.LVL45
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL45
	.uaword	.LFE23
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL38
	.uaword	.LVL39
	.uahalf	0x5
	.byte	0x7f
	.sleb128 0
	.byte	0x33
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL38
	.uaword	.LVL39
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL42
	.uaword	.LVL44
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL46
	.uaword	.LVL49
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL49
	.uaword	.LVL50
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL50
	.uaword	.LVL51
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL51
	.uaword	.LFE24
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL47
	.uaword	.LVL48
	.uahalf	0x5
	.byte	0x7f
	.sleb128 0
	.byte	0x33
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL47
	.uaword	.LVL48
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL52
	.uaword	.LVL55
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL55
	.uaword	.LVL59
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL60
	.uaword	.LVL63
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL63
	.uaword	.LFE25
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL52
	.uaword	.LVL56-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL56-1
	.uaword	.LVL66
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL52
	.uaword	.LVL57
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL58
	.uaword	.LVL59
	.uahalf	0x9
	.byte	0x78
	.sleb128 0
	.byte	0x35
	.byte	0x24
	.byte	0x8f
	.sleb128 0
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL59
	.uaword	.LVL60
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL60
	.uaword	.LVL61
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL61
	.uaword	.LVL62
	.uahalf	0x9
	.byte	0x74
	.sleb128 0
	.byte	0x35
	.byte	0x24
	.byte	0x8f
	.sleb128 0
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL62
	.uaword	.LVL64-1
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL69
	.uaword	.LVL71
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL72
	.uaword	.LVL73
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL67
	.uaword	.LVL68
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL70
	.uaword	.LVL71
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL72
	.uaword	.LVL73
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL53
	.uaword	.LVL54
	.uahalf	0x5
	.byte	0x79
	.sleb128 0
	.byte	0x33
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST31:
	.uaword	.LVL56
	.uaword	.LVL58
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL64
	.uaword	.LVL65
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST32:
	.uaword	.LVL53
	.uaword	.LVL54
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
	.section .debug_aranges,"",@progbits
	.uaword	0x54
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
	.uaword	0
	.uaword	0
	.section .debug_line,"",@progbits
.Ldebug_line0:
	.section .debug_str,"",@progbits
.LASF1:
	.string	"CoreId"
.LASF4:
	.string	"__newval"
.LASF0:
	.string	"result"
.LASF2:
	.string	"__res"
.LASF3:
	.string	"trapclass"
	.extern	Mcal_SetENDINIT,STT_FUNC,0
	.extern	Mcal_ResetENDINIT,STT_FUNC,0
	.extern	Stl_TrapVectors,STT_FUNC,0
	.ident	"GCC: (HighTec Release v4.6.3.0) 4.6.3 build on 2013-05-17"
