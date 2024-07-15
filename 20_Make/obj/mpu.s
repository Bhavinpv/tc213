	.file	"mpu.c"
.section .text,"ax",@progbits
.Ltext0:
	.section .text.MPU_ASIL_CODE,"ax",@progbits
	.align 3
	.type	mpu_vDefine_DataProtRange, @function
mpu_vDefine_DataProtRange:
.LFB198:
	.file 1 "../30_Bsw/Mpu/mpu.c"
	.loc 1 379 0
.LVL0:
	.loc 1 382 0
	ge.u	%d15, %d6, 16
	jnz	%d15, .L2
	movh.a	%a15, hi:.L19
	lea	%a15, [%a15] lo:.L19
	addsc.a	%a15, %a15, %d6, 2
	ji	%a15
	.align 2
	.align 2
.L19:
	.code32
	j	.L3
	.code32
	j	.L4
	.code32
	j	.L5
	.code32
	j	.L6
	.code32
	j	.L7
	.code32
	j	.L8
	.code32
	j	.L9
	.code32
	j	.L10
	.code32
	j	.L11
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
.L18:
.LVL1:
.LBB7:
	.loc 1 445 0
#APP
	# 445 "../30_Bsw/Mpu/mpu.c" 1
	mtcr LO:0xC078, %d4
	# 0 "" 2
.LVL2:
#NO_APP
.LBE7:
.LBB8:
	.loc 1 446 0
#APP
	# 446 "../30_Bsw/Mpu/mpu.c" 1
	mtcr LO:0xC07C, %d5
	# 0 "" 2
.LVL3:
#NO_APP
.L2:
.LBE8:
	.loc 1 449 0
#APP
	# 449 "../30_Bsw/Mpu/mpu.c" 1
	isync
	# 0 "" 2
	.loc 1 450 0
#NO_APP
	ret
.L17:
.LVL4:
.LBB9:
	.loc 1 441 0
#APP
	# 441 "../30_Bsw/Mpu/mpu.c" 1
	mtcr LO:0xC070, %d4
	# 0 "" 2
.LVL5:
#NO_APP
.LBE9:
.LBB10:
	.loc 1 442 0
#APP
	# 442 "../30_Bsw/Mpu/mpu.c" 1
	mtcr LO:0xC074, %d5
	# 0 "" 2
#NO_APP
.LBE10:
	.loc 1 443 0
	j	.L2
.LVL6:
.L3:
.LBB11:
	.loc 1 385 0
#APP
	# 385 "../30_Bsw/Mpu/mpu.c" 1
	mtcr LO:0xC000, %d4
	# 0 "" 2
.LVL7:
#NO_APP
.LBE11:
.LBB12:
	.loc 1 386 0
#APP
	# 386 "../30_Bsw/Mpu/mpu.c" 1
	mtcr LO:0xC004, %d5
	# 0 "" 2
#NO_APP
.LBE12:
	.loc 1 387 0
	j	.L2
.LVL8:
.L4:
.LBB13:
	.loc 1 389 0
#APP
	# 389 "../30_Bsw/Mpu/mpu.c" 1
	mtcr LO:0xC008, %d4
	# 0 "" 2
.LVL9:
#NO_APP
.LBE13:
.LBB14:
	.loc 1 390 0
#APP
	# 390 "../30_Bsw/Mpu/mpu.c" 1
	mtcr LO:0xC00C, %d5
	# 0 "" 2
#NO_APP
.LBE14:
	.loc 1 391 0
	j	.L2
.LVL10:
.L5:
.LBB15:
	.loc 1 393 0
#APP
	# 393 "../30_Bsw/Mpu/mpu.c" 1
	mtcr LO:0xC010, %d4
	# 0 "" 2
.LVL11:
#NO_APP
.LBE15:
.LBB16:
	.loc 1 394 0
#APP
	# 394 "../30_Bsw/Mpu/mpu.c" 1
	mtcr LO:0xC014, %d5
	# 0 "" 2
#NO_APP
.LBE16:
	.loc 1 395 0
	j	.L2
.LVL12:
.L6:
.LBB17:
	.loc 1 397 0
#APP
	# 397 "../30_Bsw/Mpu/mpu.c" 1
	mtcr LO:0xC018, %d4
	# 0 "" 2
.LVL13:
#NO_APP
.LBE17:
.LBB18:
	.loc 1 398 0
#APP
	# 398 "../30_Bsw/Mpu/mpu.c" 1
	mtcr LO:0xC01C, %d5
	# 0 "" 2
#NO_APP
.LBE18:
	.loc 1 399 0
	j	.L2
.LVL14:
.L7:
.LBB19:
	.loc 1 401 0
#APP
	# 401 "../30_Bsw/Mpu/mpu.c" 1
	mtcr LO:0xC020, %d4
	# 0 "" 2
.LVL15:
#NO_APP
.LBE19:
.LBB20:
	.loc 1 402 0
#APP
	# 402 "../30_Bsw/Mpu/mpu.c" 1
	mtcr LO:0xC024, %d5
	# 0 "" 2
#NO_APP
.LBE20:
	.loc 1 403 0
	j	.L2
.LVL16:
.L8:
.LBB21:
	.loc 1 405 0
#APP
	# 405 "../30_Bsw/Mpu/mpu.c" 1
	mtcr LO:0xC028, %d4
	# 0 "" 2
.LVL17:
#NO_APP
.LBE21:
.LBB22:
	.loc 1 406 0
#APP
	# 406 "../30_Bsw/Mpu/mpu.c" 1
	mtcr LO:0xC02C, %d5
	# 0 "" 2
#NO_APP
.LBE22:
	.loc 1 407 0
	j	.L2
.LVL18:
.L9:
.LBB23:
	.loc 1 409 0
#APP
	# 409 "../30_Bsw/Mpu/mpu.c" 1
	mtcr LO:0xC030, %d4
	# 0 "" 2
.LVL19:
#NO_APP
.LBE23:
.LBB24:
	.loc 1 410 0
#APP
	# 410 "../30_Bsw/Mpu/mpu.c" 1
	mtcr LO:0xC034, %d5
	# 0 "" 2
#NO_APP
.LBE24:
	.loc 1 411 0
	j	.L2
.LVL20:
.L10:
.LBB25:
	.loc 1 413 0
#APP
	# 413 "../30_Bsw/Mpu/mpu.c" 1
	mtcr LO:0xC038, %d4
	# 0 "" 2
.LVL21:
#NO_APP
.LBE25:
.LBB26:
	.loc 1 414 0
#APP
	# 414 "../30_Bsw/Mpu/mpu.c" 1
	mtcr LO:0xC03C, %d5
	# 0 "" 2
#NO_APP
.LBE26:
	.loc 1 415 0
	j	.L2
.LVL22:
.L11:
.LBB27:
	.loc 1 417 0
#APP
	# 417 "../30_Bsw/Mpu/mpu.c" 1
	mtcr LO:0xC040, %d4
	# 0 "" 2
.LVL23:
#NO_APP
.LBE27:
.LBB28:
	.loc 1 418 0
#APP
	# 418 "../30_Bsw/Mpu/mpu.c" 1
	mtcr LO:0xC044, %d5
	# 0 "" 2
#NO_APP
.LBE28:
	.loc 1 419 0
	j	.L2
.LVL24:
.L12:
.LBB29:
	.loc 1 421 0
#APP
	# 421 "../30_Bsw/Mpu/mpu.c" 1
	mtcr LO:0xC048, %d4
	# 0 "" 2
.LVL25:
#NO_APP
.LBE29:
.LBB30:
	.loc 1 422 0
#APP
	# 422 "../30_Bsw/Mpu/mpu.c" 1
	mtcr LO:0xC04C, %d5
	# 0 "" 2
#NO_APP
.LBE30:
	.loc 1 423 0
	j	.L2
.LVL26:
.L13:
.LBB31:
	.loc 1 425 0
#APP
	# 425 "../30_Bsw/Mpu/mpu.c" 1
	mtcr LO:0xC050, %d4
	# 0 "" 2
.LVL27:
#NO_APP
.LBE31:
.LBB32:
	.loc 1 426 0
#APP
	# 426 "../30_Bsw/Mpu/mpu.c" 1
	mtcr LO:0xC054, %d5
	# 0 "" 2
#NO_APP
.LBE32:
	.loc 1 427 0
	j	.L2
.LVL28:
.L14:
.LBB33:
	.loc 1 429 0
#APP
	# 429 "../30_Bsw/Mpu/mpu.c" 1
	mtcr LO:0xC058, %d4
	# 0 "" 2
.LVL29:
#NO_APP
.LBE33:
.LBB34:
	.loc 1 430 0
#APP
	# 430 "../30_Bsw/Mpu/mpu.c" 1
	mtcr LO:0xC05C, %d5
	# 0 "" 2
#NO_APP
.LBE34:
	.loc 1 431 0
	j	.L2
.LVL30:
.L15:
.LBB35:
	.loc 1 433 0
#APP
	# 433 "../30_Bsw/Mpu/mpu.c" 1
	mtcr LO:0xC060, %d4
	# 0 "" 2
.LVL31:
#NO_APP
.LBE35:
.LBB36:
	.loc 1 434 0
#APP
	# 434 "../30_Bsw/Mpu/mpu.c" 1
	mtcr LO:0xC064, %d5
	# 0 "" 2
#NO_APP
.LBE36:
	.loc 1 435 0
	j	.L2
.LVL32:
.L16:
.LBB37:
	.loc 1 437 0
#APP
	# 437 "../30_Bsw/Mpu/mpu.c" 1
	mtcr LO:0xC068, %d4
	# 0 "" 2
.LVL33:
#NO_APP
.LBE37:
.LBB38:
	.loc 1 438 0
#APP
	# 438 "../30_Bsw/Mpu/mpu.c" 1
	mtcr LO:0xC06C, %d5
	# 0 "" 2
#NO_APP
.LBE38:
	.loc 1 439 0
	j	.L2
.LFE198:
	.size	mpu_vDefine_DataProtRange, .-mpu_vDefine_DataProtRange
	.align 3
	.type	mpu_vDefine_CodeProtRange, @function
mpu_vDefine_CodeProtRange:
.LFB199:
	.loc 1 473 0
.LVL34:
	.loc 1 476 0
	jge.u	%d6, 8, .L22
	movh.a	%a15, hi:.L31
	lea	%a15, [%a15] lo:.L31
	addsc.a	%a15, %a15, %d6, 2
	ji	%a15
	.align 2
	.align 2
.L31:
	.code32
	j	.L23
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
	.code32
	j	.L29
	.code32
	j	.L30
.L30:
.LVL35:
.LBB39:
	.loc 1 507 0
#APP
	# 507 "../30_Bsw/Mpu/mpu.c" 1
	mtcr LO:0xD038, %d4
	# 0 "" 2
.LVL36:
#NO_APP
.LBE39:
.LBB40:
	.loc 1 508 0
#APP
	# 508 "../30_Bsw/Mpu/mpu.c" 1
	mtcr LO:0xD03C, %d5
	# 0 "" 2
.LVL37:
#NO_APP
.L22:
.LBE40:
	.loc 1 511 0
#APP
	# 511 "../30_Bsw/Mpu/mpu.c" 1
	isync
	# 0 "" 2
	.loc 1 512 0
#NO_APP
	ret
.L29:
.LVL38:
.LBB41:
	.loc 1 503 0
#APP
	# 503 "../30_Bsw/Mpu/mpu.c" 1
	mtcr LO:0xD030, %d4
	# 0 "" 2
.LVL39:
#NO_APP
.LBE41:
.LBB42:
	.loc 1 504 0
#APP
	# 504 "../30_Bsw/Mpu/mpu.c" 1
	mtcr LO:0xD034, %d5
	# 0 "" 2
#NO_APP
.LBE42:
	.loc 1 511 0
#APP
	# 511 "../30_Bsw/Mpu/mpu.c" 1
	isync
	# 0 "" 2
	.loc 1 512 0
#NO_APP
	ret
.LVL40:
.L23:
.LBB43:
	.loc 1 479 0
#APP
	# 479 "../30_Bsw/Mpu/mpu.c" 1
	mtcr LO:0xD000, %d4
	# 0 "" 2
.LVL41:
#NO_APP
.LBE43:
.LBB44:
	.loc 1 480 0
#APP
	# 480 "../30_Bsw/Mpu/mpu.c" 1
	mtcr LO:0xD004, %d5
	# 0 "" 2
#NO_APP
.LBE44:
	.loc 1 511 0
#APP
	# 511 "../30_Bsw/Mpu/mpu.c" 1
	isync
	# 0 "" 2
	.loc 1 512 0
#NO_APP
	ret
.LVL42:
.L24:
.LBB45:
	.loc 1 483 0
#APP
	# 483 "../30_Bsw/Mpu/mpu.c" 1
	mtcr LO:0xD008, %d4
	# 0 "" 2
.LVL43:
#NO_APP
.LBE45:
.LBB46:
	.loc 1 484 0
#APP
	# 484 "../30_Bsw/Mpu/mpu.c" 1
	mtcr LO:0xD00C, %d5
	# 0 "" 2
#NO_APP
.LBE46:
	.loc 1 511 0
#APP
	# 511 "../30_Bsw/Mpu/mpu.c" 1
	isync
	# 0 "" 2
	.loc 1 512 0
#NO_APP
	ret
.LVL44:
.L25:
.LBB47:
	.loc 1 487 0
#APP
	# 487 "../30_Bsw/Mpu/mpu.c" 1
	mtcr LO:0xD010, %d4
	# 0 "" 2
.LVL45:
#NO_APP
.LBE47:
.LBB48:
	.loc 1 488 0
#APP
	# 488 "../30_Bsw/Mpu/mpu.c" 1
	mtcr LO:0xD014, %d5
	# 0 "" 2
#NO_APP
.LBE48:
	.loc 1 511 0
#APP
	# 511 "../30_Bsw/Mpu/mpu.c" 1
	isync
	# 0 "" 2
	.loc 1 512 0
#NO_APP
	ret
.LVL46:
.L26:
.LBB49:
	.loc 1 491 0
#APP
	# 491 "../30_Bsw/Mpu/mpu.c" 1
	mtcr LO:0xD018, %d4
	# 0 "" 2
.LVL47:
#NO_APP
.LBE49:
.LBB50:
	.loc 1 492 0
#APP
	# 492 "../30_Bsw/Mpu/mpu.c" 1
	mtcr LO:0xD01C, %d5
	# 0 "" 2
#NO_APP
.LBE50:
	.loc 1 511 0
#APP
	# 511 "../30_Bsw/Mpu/mpu.c" 1
	isync
	# 0 "" 2
	.loc 1 512 0
#NO_APP
	ret
.LVL48:
.L27:
.LBB51:
	.loc 1 495 0
#APP
	# 495 "../30_Bsw/Mpu/mpu.c" 1
	mtcr LO:0xD020, %d4
	# 0 "" 2
.LVL49:
#NO_APP
.LBE51:
.LBB52:
	.loc 1 496 0
#APP
	# 496 "../30_Bsw/Mpu/mpu.c" 1
	mtcr LO:0xD024, %d5
	# 0 "" 2
#NO_APP
.LBE52:
	.loc 1 511 0
#APP
	# 511 "../30_Bsw/Mpu/mpu.c" 1
	isync
	# 0 "" 2
	.loc 1 512 0
#NO_APP
	ret
.LVL50:
.L28:
.LBB53:
	.loc 1 499 0
#APP
	# 499 "../30_Bsw/Mpu/mpu.c" 1
	mtcr LO:0xD028, %d4
	# 0 "" 2
.LVL51:
#NO_APP
.LBE53:
.LBB54:
	.loc 1 500 0
#APP
	# 500 "../30_Bsw/Mpu/mpu.c" 1
	mtcr LO:0xD02C, %d5
	# 0 "" 2
#NO_APP
.LBE54:
	.loc 1 511 0
#APP
	# 511 "../30_Bsw/Mpu/mpu.c" 1
	isync
	# 0 "" 2
	.loc 1 512 0
#NO_APP
	ret
.LFE199:
	.size	mpu_vDefine_CodeProtRange, .-mpu_vDefine_CodeProtRange
	.align 3
	.type	mpu_vEnable_DataRd, @function
mpu_vEnable_DataRd:
.LFB200:
	.loc 1 528 0
.LVL52:
	.loc 1 532 0
	jge.u	%d4, 4, .L43
	movh.a	%a15, hi:.L38
	lea	%a15, [%a15] lo:.L38
	addsc.a	%a15, %a15, %d4, 2
	ji	%a15
	.align 2
	.align 2
.L38:
	.code32
	j	.L34
	.code32
	j	.L35
	.code32
	j	.L36
	.code32
	j	.L37
.L37:
.LBB55:
	.loc 1 544 0
#APP
	# 544 "../30_Bsw/Mpu/mpu.c" 1
	mfcr %d15, LO:0xE01C
	# 0 "" 2
.LVL53:
#NO_APP
.LBE55:
	.loc 1 548 0
	extr.u	%d2, %d15, 0, 16
	insert	%d5, %d2, 1, %d5, 1
.LVL54:
	insert	%d5, %d15, %d5, 0, 16
.LVL55:
.LBB56:
	.loc 1 564 0
#APP
	# 564 "../30_Bsw/Mpu/mpu.c" 1
	mtcr LO:0xE01C, %d5
	# 0 "" 2
.LVL56:
#NO_APP
.L43:
.LBE56:
	.loc 1 567 0
#APP
	# 567 "../30_Bsw/Mpu/mpu.c" 1
	isync
	# 0 "" 2
	.loc 1 568 0
#NO_APP
	ret
.LVL57:
.L36:
.LBB57:
	.loc 1 541 0
#APP
	# 541 "../30_Bsw/Mpu/mpu.c" 1
	mfcr %d15, LO:0xE018
	# 0 "" 2
.LVL58:
#NO_APP
.LBE57:
	.loc 1 548 0
	extr.u	%d2, %d15, 0, 16
	insert	%d5, %d2, 1, %d5, 1
.LVL59:
	insert	%d5, %d15, %d5, 0, 16
.LVL60:
.LBB58:
	.loc 1 561 0
#APP
	# 561 "../30_Bsw/Mpu/mpu.c" 1
	mtcr LO:0xE018, %d5
	# 0 "" 2
#NO_APP
.LBE58:
	.loc 1 567 0
#APP
	# 567 "../30_Bsw/Mpu/mpu.c" 1
	isync
	# 0 "" 2
	.loc 1 568 0
#NO_APP
	ret
.LVL61:
.L35:
.LBB59:
	.loc 1 538 0
#APP
	# 538 "../30_Bsw/Mpu/mpu.c" 1
	mfcr %d15, LO:0xE014
	# 0 "" 2
.LVL62:
#NO_APP
.LBE59:
	.loc 1 548 0
	extr.u	%d2, %d15, 0, 16
	insert	%d5, %d2, 1, %d5, 1
.LVL63:
	insert	%d5, %d15, %d5, 0, 16
.LVL64:
.LBB60:
	.loc 1 558 0
#APP
	# 558 "../30_Bsw/Mpu/mpu.c" 1
	mtcr LO:0xE014, %d5
	# 0 "" 2
#NO_APP
.LBE60:
	.loc 1 567 0
#APP
	# 567 "../30_Bsw/Mpu/mpu.c" 1
	isync
	# 0 "" 2
	.loc 1 568 0
#NO_APP
	ret
.LVL65:
.L34:
.LBB61:
	.loc 1 535 0
#APP
	# 535 "../30_Bsw/Mpu/mpu.c" 1
	mfcr %d15, LO:0xE010
	# 0 "" 2
.LVL66:
#NO_APP
.LBE61:
	.loc 1 548 0
	extr.u	%d2, %d15, 0, 16
	insert	%d5, %d2, 1, %d5, 1
.LVL67:
	insert	%d5, %d15, %d5, 0, 16
.LVL68:
.LBB62:
	.loc 1 555 0
#APP
	# 555 "../30_Bsw/Mpu/mpu.c" 1
	mtcr LO:0xE010, %d5
	# 0 "" 2
#NO_APP
.LBE62:
	.loc 1 567 0
#APP
	# 567 "../30_Bsw/Mpu/mpu.c" 1
	isync
	# 0 "" 2
	.loc 1 568 0
#NO_APP
	ret
.LFE200:
	.size	mpu_vEnable_DataRd, .-mpu_vEnable_DataRd
	.align 3
	.type	mpu_vEnable_DataWr, @function
mpu_vEnable_DataWr:
.LFB201:
	.loc 1 584 0
.LVL69:
	.loc 1 588 0
	jge.u	%d4, 4, .L56
	movh.a	%a15, hi:.L51
	lea	%a15, [%a15] lo:.L51
	addsc.a	%a15, %a15, %d4, 2
	ji	%a15
	.align 2
	.align 2
.L51:
	.code32
	j	.L47
	.code32
	j	.L48
	.code32
	j	.L49
	.code32
	j	.L50
.L50:
.LBB63:
	.loc 1 600 0
#APP
	# 600 "../30_Bsw/Mpu/mpu.c" 1
	mfcr %d15, LO:0xE02C
	# 0 "" 2
.LVL70:
#NO_APP
.LBE63:
	.loc 1 605 0
	extr.u	%d2, %d15, 0, 16
	insert	%d5, %d2, 1, %d5, 1
.LVL71:
	insert	%d5, %d15, %d5, 0, 16
.LVL72:
.LBB64:
	.loc 1 621 0
#APP
	# 621 "../30_Bsw/Mpu/mpu.c" 1
	mtcr LO:0xE02C, %d5
	# 0 "" 2
.LVL73:
#NO_APP
.L56:
.LBE64:
	.loc 1 624 0
#APP
	# 624 "../30_Bsw/Mpu/mpu.c" 1
	isync
	# 0 "" 2
	.loc 1 625 0
#NO_APP
	ret
.LVL74:
.L49:
.LBB65:
	.loc 1 597 0
#APP
	# 597 "../30_Bsw/Mpu/mpu.c" 1
	mfcr %d15, LO:0xE028
	# 0 "" 2
.LVL75:
#NO_APP
.LBE65:
	.loc 1 605 0
	extr.u	%d2, %d15, 0, 16
	insert	%d5, %d2, 1, %d5, 1
.LVL76:
	insert	%d5, %d15, %d5, 0, 16
.LVL77:
.LBB66:
	.loc 1 618 0
#APP
	# 618 "../30_Bsw/Mpu/mpu.c" 1
	mtcr LO:0xE028, %d5
	# 0 "" 2
#NO_APP
.LBE66:
	.loc 1 624 0
#APP
	# 624 "../30_Bsw/Mpu/mpu.c" 1
	isync
	# 0 "" 2
	.loc 1 625 0
#NO_APP
	ret
.LVL78:
.L48:
.LBB67:
	.loc 1 594 0
#APP
	# 594 "../30_Bsw/Mpu/mpu.c" 1
	mfcr %d15, LO:0xE024
	# 0 "" 2
.LVL79:
#NO_APP
.LBE67:
	.loc 1 605 0
	extr.u	%d2, %d15, 0, 16
	insert	%d5, %d2, 1, %d5, 1
.LVL80:
	insert	%d5, %d15, %d5, 0, 16
.LVL81:
.LBB68:
	.loc 1 615 0
#APP
	# 615 "../30_Bsw/Mpu/mpu.c" 1
	mtcr LO:0xE024, %d5
	# 0 "" 2
#NO_APP
.LBE68:
	.loc 1 624 0
#APP
	# 624 "../30_Bsw/Mpu/mpu.c" 1
	isync
	# 0 "" 2
	.loc 1 625 0
#NO_APP
	ret
.LVL82:
.L47:
.LBB69:
	.loc 1 591 0
#APP
	# 591 "../30_Bsw/Mpu/mpu.c" 1
	mfcr %d15, LO:0xE020
	# 0 "" 2
.LVL83:
#NO_APP
.LBE69:
	.loc 1 605 0
	extr.u	%d2, %d15, 0, 16
	insert	%d5, %d2, 1, %d5, 1
.LVL84:
	insert	%d5, %d15, %d5, 0, 16
.LVL85:
.LBB70:
	.loc 1 612 0
#APP
	# 612 "../30_Bsw/Mpu/mpu.c" 1
	mtcr LO:0xE020, %d5
	# 0 "" 2
#NO_APP
.LBE70:
	.loc 1 624 0
#APP
	# 624 "../30_Bsw/Mpu/mpu.c" 1
	isync
	# 0 "" 2
	.loc 1 625 0
#NO_APP
	ret
.LFE201:
	.size	mpu_vEnable_DataWr, .-mpu_vEnable_DataWr
	.align 3
	.type	mpu_vEnable_CodeExe, @function
mpu_vEnable_CodeExe:
.LFB202:
	.loc 1 641 0
.LVL86:
	.loc 1 645 0
	jge.u	%d4, 4, .L69
	movh.a	%a15, hi:.L64
	lea	%a15, [%a15] lo:.L64
	addsc.a	%a15, %a15, %d4, 2
	ji	%a15
	.align 2
	.align 2
.L64:
	.code32
	j	.L60
	.code32
	j	.L61
	.code32
	j	.L62
	.code32
	j	.L63
.L63:
.LBB71:
	.loc 1 657 0
#APP
	# 657 "../30_Bsw/Mpu/mpu.c" 1
	mfcr %d15, LO:0xE00C
	# 0 "" 2
.LVL87:
#NO_APP
.LBE71:
	.loc 1 662 0
	and	%d2, %d15, 255
	insert	%d5, %d2, 1, %d5, 1
.LVL88:
	insert	%d15, %d15, %d5, 0, 8
.LVL89:
.LBB72:
	.loc 1 678 0
#APP
	# 678 "../30_Bsw/Mpu/mpu.c" 1
	mtcr LO:0xE00C, %d15
	# 0 "" 2
.LVL90:
#NO_APP
.L69:
.LBE72:
	.loc 1 681 0
#APP
	# 681 "../30_Bsw/Mpu/mpu.c" 1
	isync
	# 0 "" 2
	.loc 1 682 0
#NO_APP
	ret
.LVL91:
.L62:
.LBB73:
	.loc 1 654 0
#APP
	# 654 "../30_Bsw/Mpu/mpu.c" 1
	mfcr %d15, LO:0xE008
	# 0 "" 2
.LVL92:
#NO_APP
.LBE73:
	.loc 1 662 0
	and	%d2, %d15, 255
	insert	%d5, %d2, 1, %d5, 1
.LVL93:
	insert	%d15, %d15, %d5, 0, 8
.LVL94:
.LBB74:
	.loc 1 675 0
#APP
	# 675 "../30_Bsw/Mpu/mpu.c" 1
	mtcr LO:0xE008, %d15
	# 0 "" 2
#NO_APP
.LBE74:
	.loc 1 681 0
#APP
	# 681 "../30_Bsw/Mpu/mpu.c" 1
	isync
	# 0 "" 2
	.loc 1 682 0
#NO_APP
	ret
.LVL95:
.L61:
.LBB75:
	.loc 1 651 0
#APP
	# 651 "../30_Bsw/Mpu/mpu.c" 1
	mfcr %d15, LO:0xE004
	# 0 "" 2
.LVL96:
#NO_APP
.LBE75:
	.loc 1 662 0
	and	%d2, %d15, 255
	insert	%d5, %d2, 1, %d5, 1
.LVL97:
	insert	%d15, %d15, %d5, 0, 8
.LVL98:
.LBB76:
	.loc 1 672 0
#APP
	# 672 "../30_Bsw/Mpu/mpu.c" 1
	mtcr LO:0xE004, %d15
	# 0 "" 2
#NO_APP
.LBE76:
	.loc 1 681 0
#APP
	# 681 "../30_Bsw/Mpu/mpu.c" 1
	isync
	# 0 "" 2
	.loc 1 682 0
#NO_APP
	ret
.LVL99:
.L60:
.LBB77:
	.loc 1 648 0
#APP
	# 648 "../30_Bsw/Mpu/mpu.c" 1
	mfcr %d15, LO:0xE000
	# 0 "" 2
.LVL100:
#NO_APP
.LBE77:
	.loc 1 662 0
	and	%d2, %d15, 255
	insert	%d5, %d2, 1, %d5, 1
.LVL101:
	insert	%d15, %d15, %d5, 0, 8
.LVL102:
.LBB78:
	.loc 1 669 0
#APP
	# 669 "../30_Bsw/Mpu/mpu.c" 1
	mtcr LO:0xE000, %d15
	# 0 "" 2
#NO_APP
.LBE78:
	.loc 1 681 0
#APP
	# 681 "../30_Bsw/Mpu/mpu.c" 1
	isync
	# 0 "" 2
	.loc 1 682 0
#NO_APP
	ret
.LFE202:
	.size	mpu_vEnable_CodeExe, .-mpu_vEnable_CodeExe
	.align 3
	.type	mpu_u8SetProtAccess, @function
mpu_u8SetProtAccess:
.LFB195:
	.loc 1 209 0
.LVL103:
	.loc 1 292 0
	mov	%d2, 0
	.loc 1 211 0
	jge.u	%d4, 4, .L72
	movh.a	%a15, hi:.L77
	lea	%a15, [%a15] lo:.L77
	addsc.a	%a15, %a15, %d4, 2
	ji	%a15
	.align 2
	.align 2
.L77:
	.code32
	j	.L73
	.code32
	j	.L74
	.code32
	j	.L75
	.code32
	j	.L76
.L75:
	.loc 1 260 0
	mov	%d4, 2
.LVL104:
	mov	%d5, 2
	call	mpu_vEnable_DataRd
	.loc 1 261 0
	mov	%d4, 2
	mov	%d5, 3
	call	mpu_vEnable_DataRd
	.loc 1 262 0
	mov	%d4, 2
	mov	%d5, 4
	call	mpu_vEnable_DataRd
	.loc 1 263 0
	mov	%d4, 2
	mov	%d5, 5
	call	mpu_vEnable_DataRd
	.loc 1 264 0
	mov	%d4, 2
	mov	%d5, 6
	call	mpu_vEnable_DataRd
	.loc 1 265 0
	mov	%d4, 2
	mov	%d5, 7
	call	mpu_vEnable_DataRd
	.loc 1 269 0
	mov	%d4, 2
	mov	%d5, 11
	call	mpu_vEnable_DataRd
	.loc 1 270 0
	mov	%d4, 2
	mov	%d5, 13
	call	mpu_vEnable_DataRd
	.loc 1 273 0
	mov	%d4, 2
	mov	%d5, 4
	call	mpu_vEnable_DataWr
	.loc 1 274 0
	mov	%d4, 2
	mov	%d5, 5
	call	mpu_vEnable_DataWr
	.loc 1 275 0
	mov	%d4, 2
	mov	%d5, 6
	call	mpu_vEnable_DataWr
	.loc 1 276 0
	mov	%d4, 2
	mov	%d5, 7
	call	mpu_vEnable_DataWr
	.loc 1 280 0
	mov	%d4, 2
	mov	%d5, 11
	call	mpu_vEnable_DataWr
	.loc 1 281 0
	mov	%d4, 2
	mov	%d5, 13
	call	mpu_vEnable_DataWr
	.loc 1 283 0
	mov	%e4, 2
	call	mpu_vEnable_CodeExe
.LVL105:
	.loc 1 286 0
	mov	%d2, 64
.LVL106:
.L72:
	.loc 1 296 0
	ret
.LVL107:
.L74:
	.loc 1 232 0
	mov	%d4, 1
.LVL108:
	mov	%d5, 2
	call	mpu_vEnable_DataRd
	.loc 1 233 0
	mov	%d4, 1
	mov	%d5, 3
	call	mpu_vEnable_DataRd
	.loc 1 234 0
	mov	%d4, 1
	mov	%d5, 4
	call	mpu_vEnable_DataRd
	.loc 1 235 0
	mov	%d4, 1
	mov	%d5, 5
	call	mpu_vEnable_DataRd
	.loc 1 236 0
	mov	%d4, 1
	mov	%d5, 6
	call	mpu_vEnable_DataRd
	.loc 1 237 0
	mov	%d4, 1
	mov	%d5, 7
	call	mpu_vEnable_DataRd
	.loc 1 238 0
	mov	%d4, 1
	mov	%d5, 8
	call	mpu_vEnable_DataRd
	.loc 1 239 0
	mov	%d4, 1
	mov	%d5, 9
	call	mpu_vEnable_DataRd
	.loc 1 240 0
	mov	%d4, 1
	mov	%d5, 10
	call	mpu_vEnable_DataRd
	.loc 1 241 0
	mov	%d4, 1
	mov	%d5, 11
	call	mpu_vEnable_DataRd
	.loc 1 242 0
	mov	%d4, 1
	mov	%d5, 13
	call	mpu_vEnable_DataRd
	.loc 1 244 0
	mov	%d4, 1
	mov	%d5, 3
	call	mpu_vEnable_DataWr
	.loc 1 245 0
	mov	%d4, 1
	mov	%d5, 4
	call	mpu_vEnable_DataWr
	.loc 1 246 0
	mov	%d4, 1
	mov	%d5, 5
	call	mpu_vEnable_DataWr
	.loc 1 247 0
	mov	%d4, 1
	mov	%d5, 6
	call	mpu_vEnable_DataWr
	.loc 1 248 0
	mov	%d4, 1
	mov	%d5, 7
	call	mpu_vEnable_DataWr
	.loc 1 249 0
	mov	%d4, 1
	mov	%d5, 8
	call	mpu_vEnable_DataWr
	.loc 1 250 0
	mov	%d4, 1
	mov	%d5, 9
	call	mpu_vEnable_DataWr
	.loc 1 251 0
	mov	%d4, 1
	mov	%d5, 10
	call	mpu_vEnable_DataWr
	.loc 1 252 0
	mov	%d4, 1
	mov	%d5, 11
	call	mpu_vEnable_DataWr
	.loc 1 253 0
	mov	%d4, 1
	mov	%d5, 13
	call	mpu_vEnable_DataWr
	.loc 1 255 0
	mov	%e4, 1
	call	mpu_vEnable_CodeExe
.LVL109:
	.loc 1 256 0
	mov	%d2, 32
	.loc 1 257 0
	ret
.LVL110:
.L73:
	.loc 1 215 0
	mov	%e4, 0
.LVL111:
	call	mpu_vEnable_DataRd
	.loc 1 216 0
	mov	%d4, 0
	mov	%d5, 1
	call	mpu_vEnable_DataRd
	.loc 1 217 0
	mov	%d4, 0
	mov	%d5, 12
	call	mpu_vEnable_DataRd
	.loc 1 218 0
	mov	%d4, 0
	mov	%d5, 13
	call	mpu_vEnable_DataRd
	.loc 1 220 0
	mov	%e4, 0
	call	mpu_vEnable_DataWr
	.loc 1 221 0
	mov	%d4, 0
	mov	%d5, 1
	call	mpu_vEnable_DataWr
	.loc 1 222 0
	mov	%d4, 0
	mov	%d5, 12
	call	mpu_vEnable_DataWr
	.loc 1 223 0
	mov	%d4, 0
	mov	%d5, 13
	call	mpu_vEnable_DataWr
	.loc 1 225 0
	mov	%e4, 0
	call	mpu_vEnable_CodeExe
	.loc 1 227 0
	mov	%d4, 0
	mov	%d5, 1
	call	mpu_vEnable_CodeExe
.LVL112:
	.loc 1 228 0
	mov	%d2, 16
	.loc 1 229 0
	ret
.LVL113:
.L76:
	.loc 1 289 0
	mov	%d2, 128
	ret
.LFE195:
	.size	mpu_u8SetProtAccess, .-mpu_u8SetProtAccess
	.align 3
	.type	mpu_u8SetProtRange, @function
mpu_u8SetProtRange:
.LFB194:
	.loc 1 137 0
.LVL114:
	.loc 1 192 0
	mov	%d2, 0
	.loc 1 139 0
	jge.u	%d4, 4, .L80
	movh.a	%a15, hi:.L85
	lea	%a15, [%a15] lo:.L85
	addsc.a	%a15, %a15, %d4, 2
	ji	%a15
	.align 2
	.align 2
.L85:
	.code32
	j	.L81
	.code32
	j	.L82
	.code32
	j	.L83
	.code32
	j	.L84
.L83:
	.loc 1 184 0
	movh	%d4, hi:__DSPR_QM_PMA_VAR_START
.LVL115:
	movh	%d5, hi:__DSPR_QM_PMA_VAR_END
	addi	%d4, %d4, lo:__DSPR_QM_PMA_VAR_START
	addi	%d5, %d5, lo:__DSPR_QM_PMA_VAR_END
	mov	%d6, 13
	call	mpu_vDefine_DataProtRange
.LVL116:
	.loc 1 186 0
	mov	%d2, 4
.LVL117:
.L80:
	.loc 1 196 0
	ret
.LVL118:
.L82:
.LBB81:
.LBB82:
	.loc 1 158 0
	movh	%d4, hi:__DSPR_ASIL_VAR_START
.LVL119:
	movh	%d5, hi:__DSPR_ASIL_VAR_END
	addi	%d4, %d4, lo:__DSPR_ASIL_VAR_START
	addi	%d5, %d5, lo:__DSPR_ASIL_VAR_END
	mov	%d6, 2
	call	mpu_vDefine_DataProtRange
	.loc 1 160 0
	movh	%d4, hi:__DSPR_QM_VAR_START
	movh	%d5, hi:__DSPR_QM_VAR_END
	addi	%d4, %d4, lo:__DSPR_QM_VAR_START
	addi	%d5, %d5, lo:__DSPR_QM_VAR_END
	mov	%d6, 3
	call	mpu_vDefine_DataProtRange
	.loc 1 162 0
	movh	%d4, hi:__USTACK0_END
	movh	%d5, hi:__USTACK0
	addi	%d4, %d4, lo:__USTACK0_END
	addi	%d5, %d5, lo:__USTACK0
	mov	%d6, 4
	call	mpu_vDefine_DataProtRange
	.loc 1 164 0
	movh	%d4, hi:__ISTACK0_END
	movh	%d5, hi:__ISTACK0
	addi	%d4, %d4, lo:__ISTACK0_END
	addi	%d5, %d5, lo:__ISTACK0
	mov	%d6, 5
	call	mpu_vDefine_DataProtRange
	.loc 1 166 0
	movh	%d4, hi:__CSA0
	movh	%d5, hi:__CSA0_END
	addi	%d4, %d4, lo:__CSA0
	addi	%d5, %d5, lo:__CSA0_END
	mov	%d6, 6
	call	mpu_vDefine_DataProtRange
	.loc 1 168 0
	movh	%d4, 32768
	movh	%d5, 32776
	mov	%d6, 7
	call	mpu_vDefine_DataProtRange
	.loc 1 170 0
	movh	%d5, 44802
	movh	%d4, 44800
	addi	%d5, %d5, -32768
	mov	%d6, 8
	call	mpu_vDefine_DataProtRange
	.loc 1 172 0
	movh	%d5, 44816
	movh	%d4, 44816
	addi	%d5, %d5, 8192
	mov	%d6, 9
	call	mpu_vDefine_DataProtRange
	.loc 1 174 0
	movh	%d4, 61440
	movh	%d5, 63618
	mov	%d6, 10
	call	mpu_vDefine_DataProtRange
	.loc 1 176 0
	movh	%d4, 40960
	movh	%d5, 40968
	mov	%d6, 11
	call	mpu_vDefine_DataProtRange
	.loc 1 179 0
	movh	%d4, 32768
	movh	%d5, 32776
	mov	%d6, 0
	call	mpu_vDefine_CodeProtRange
.LVL120:
	mov	%d2, 2
	ret
.LVL121:
.L81:
.LBE82:
.LBE81:
	.loc 1 144 0
	movh	%d4, hi:__START_DSPR
.LVL122:
	movh	%d5, hi:__DSPR_DEFAULT_VAR_START
	addi	%d4, %d4, lo:__START_DSPR
	addi	%d5, %d5, lo:__DSPR_DEFAULT_VAR_START
	mov	%d6, 0
	call	mpu_vDefine_DataProtRange
	.loc 1 146 0
	movh	%d4, hi:__DSPR_DEFAULT_VAR_END
	addi	%d4, %d4, lo:__DSPR_DEFAULT_VAR_END
	movh	%d5, 63618
	mov	%d6, 1
	.loc 1 148 0
	movh	%d8, hi:__PSPR_ASIL_RAMCODE_START
	movh	%d15, hi:__PSPR_ASIL_RAMCODE_END
	.loc 1 146 0
	call	mpu_vDefine_DataProtRange
	.loc 1 148 0
	addi	%d8, %d8, lo:__PSPR_ASIL_RAMCODE_START
	addi	%d15, %d15, lo:__PSPR_ASIL_RAMCODE_END
	mov	%e4, %d15, %d8
	mov	%d6, 12
	call	mpu_vDefine_DataProtRange
	.loc 1 151 0
	movh	%d4, 32768
	movh	%d5, 32776
	mov	%d6, 0
	call	mpu_vDefine_CodeProtRange
	.loc 1 153 0
	mov	%e4, %d15, %d8
	mov	%d6, 1
	call	mpu_vDefine_CodeProtRange
.LVL123:
	.loc 1 154 0
	mov	%d2, 1
	.loc 1 155 0
	ret
.LVL124:
.L84:
	.loc 1 189 0
	mov	%d2, 8
	ret
.LFE194:
	.size	mpu_u8SetProtRange, .-mpu_u8SetProtRange
	.align 3
	.global	mpu_vInit
	.type	mpu_vInit, @function
mpu_vInit:
.LFB193:
	.loc 1 75 0
.LVL125:
	.loc 1 77 0
	mov	%d15, 2432
	movh.a	%a15, hi:PSWReg_Rd0
	.loc 1 87 0
	mov	%d4, 0
	.loc 1 77 0
	st.w	[%a15] lo:PSWReg_Rd0, %d15
	.loc 1 78 0
	movh.a	%a15, hi:PSWReg_Rd1
	st.w	[%a15] lo:PSWReg_Rd1, %d15
	.loc 1 79 0
	movh.a	%a15, hi:PSWReg_Rd2
	st.w	[%a15] lo:PSWReg_Rd2, %d15
	.loc 1 80 0
	movh.a	%a15, hi:PSWReg_Rd3
	st.w	[%a15] lo:PSWReg_Rd3, %d15
	.loc 1 87 0
	call	mpu_u8SetProtRange
	.loc 1 88 0
	mov	%d4, 0
	.loc 1 87 0
	mov	%d15, %d2
.LVL126:
	.loc 1 88 0
	call	mpu_u8SetProtAccess
.LVL127:
	or	%d2, %d15
	.loc 1 91 0
	mov	%d4, 1
	.loc 1 88 0
	and	%d15, %d2, 255
.LVL128:
	.loc 1 91 0
	call	mpu_u8SetProtRange
	or	%d2, %d15
	.loc 1 92 0
	mov	%d4, 1
	.loc 1 91 0
	and	%d15, %d2, 255
.LVL129:
	.loc 1 92 0
	call	mpu_u8SetProtAccess
	or	%d2, %d15
	.loc 1 95 0
	mov	%d4, 2
	.loc 1 92 0
	and	%d15, %d2, 255
.LVL130:
	.loc 1 95 0
	call	mpu_u8SetProtRange
	or	%d2, %d15
	.loc 1 96 0
	mov	%d4, 2
	.loc 1 95 0
	and	%d15, %d2, 255
.LVL131:
	.loc 1 96 0
	call	mpu_u8SetProtAccess
	or	%d2, %d15
	and	%d2, %d2, 255
.LVL132:
	.loc 1 98 0
	jz	%d2, .L87
	.loc 1 100 0
	and	%d15, %d2, 15
	sh	%d2, -4
.LVL133:
	jeq	%d15, %d2, .L89
	.loc 1 103 0
	mov	%d15, 1
	movh.a	%a15, hi:TRUSTED_Mpu_Err
	st.h	[%a15] lo:TRUSTED_Mpu_Err, %d15
	ret
.L89:
.LBB83:
.LBB84:
	.loc 1 314 0
	call	IfxScuWdt_getCpuWatchdogPassword
	mov	%d4, %d2
	call	IfxScuWdt_clearCpuEndinit
	.loc 1 316 0
#APP
	# 316 "../30_Bsw/Mpu/mpu.c" 1
	mfcr %d15, LO:0xFE14
	# 0 "" 2
.LVL134:
	.loc 1 318 0
#NO_APP
	insert	%d15, %d15, 1, 1, 1
.LVL135:
.LBB85:
	.loc 1 320 0
#APP
	# 320 "../30_Bsw/Mpu/mpu.c" 1
	mtcr LO:0xFE14, %d15
	# 0 "" 2
#NO_APP
.LBE85:
	.loc 1 321 0
#APP
	# 321 "../30_Bsw/Mpu/mpu.c" 1
	isync
	# 0 "" 2
#NO_APP
.LBB86:
	.loc 1 322 0
#APP
	# 322 "../30_Bsw/Mpu/mpu.c" 1
	mfcr %d15, LO:0xFE14
	# 0 "" 2
.LVL136:
#NO_APP
.LBE86:
	.loc 1 323 0
	call	IfxScuWdt_getCpuWatchdogPassword
	mov	%d4, %d2
	call	IfxScuWdt_setCpuEndinit
.LVL137:
.LBE84:
.LBE83:
	.loc 1 107 0
	jnz.t	%d15, 1, .L87
	.loc 1 110 0
	mov	%d15, 1
.LVL138:
	movh.a	%a15, hi:TRUSTED_Mpu_Err
	st.h	[%a15] lo:TRUSTED_Mpu_Err, %d15
.L87:
	ret
.LFE193:
	.size	mpu_vInit, .-mpu_vInit
	.global	TRUSTED_Mpu_Err
	.section .bss.MPU_QM_VAR_NOINIT,"aw",@nobits
	.align 3
	.type	TRUSTED_Mpu_Err, @object
	.size	TRUSTED_Mpu_Err, 2
TRUSTED_Mpu_Err:
	.zero	2
	.global	PSWReg_Rd3
	.align 3
	.type	PSWReg_Rd3, @object
	.size	PSWReg_Rd3, 4
PSWReg_Rd3:
	.zero	4
	.global	PSWReg_Rd1
	.align 3
	.type	PSWReg_Rd1, @object
	.size	PSWReg_Rd1, 4
PSWReg_Rd1:
	.zero	4
	.global	PSWReg_Rd0
	.section .bss.MPU_ASIL_VAR_NOINIT,"aw",@nobits
	.align 3
	.type	PSWReg_Rd0, @object
	.size	PSWReg_Rd0, 4
PSWReg_Rd0:
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
	.uaword	.LFB198
	.uaword	.LFE198-.LFB198
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB199
	.uaword	.LFE199-.LFB199
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB200
	.uaword	.LFE200-.LFB200
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB201
	.uaword	.LFE201-.LFB201
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB202
	.uaword	.LFE202-.LFB202
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB195
	.uaword	.LFE195-.LFB195
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB194
	.uaword	.LFE194-.LFB194
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB193
	.uaword	.LFE193-.LFB193
	.align 2
.LEFDE14:
.section .text,"ax",@progbits
.Letext0:
	.file 2 "../30_Bsw/Common/rtwtypes.h"
	.file 3 "../30_Bsw/Common/Platform_Types.h"
	.file 4 "../30_Bsw/Common/TC21x/IfxCpu_regdef.h"
	.file 5 "../30_Bsw/Mpu/mpu_api.h"
	.file 6 "../30_Bsw/Mpu/mpu_cfg.h"
	.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x1423
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.6.3 build on 2013-05-17"
	.byte	0x1
	.string	"../30_Bsw/Mpu/mpu.c"
	.string	"D:\\\\SVN\\\\IPB-11Kw\\\\LvDc-C01R0P0-Ceramicheater\\\\20_Make"
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_ranges0+0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x3
	.string	"uint8_T"
	.byte	0x2
	.byte	0x51
	.uaword	0xa6
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
	.uaword	0xd4
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
	.string	"u8"
	.byte	0x2
	.byte	0x7d
	.uaword	0x97
	.uleb128 0x3
	.string	"u16"
	.byte	0x2
	.byte	0x7f
	.uaword	0xc4
	.uleb128 0x3
	.string	"uint8"
	.byte	0x3
	.byte	0x5b
	.uaword	0xa6
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x3
	.string	"uint32"
	.byte	0x3
	.byte	0x5f
	.uaword	0x114
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.string	"long long int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.string	"long long unsigned int"
	.uleb128 0x4
	.uaword	0xf1
	.uleb128 0x5
	.string	"_Ifx_CPU_CPXE_Bits"
	.byte	0x4
	.byte	0x4
	.byte	0x79
	.uaword	0x1e1
	.uleb128 0x6
	.string	"XE"
	.byte	0x4
	.byte	0x7b
	.uaword	0x198
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.string	"reserved_8"
	.byte	0x4
	.byte	0x7c
	.uaword	0x198
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_CPU_CPXE_Bits"
	.byte	0x4
	.byte	0x7d
	.uaword	0x19d
	.uleb128 0x7
	.string	"_Ifx_CPU_DPRE_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x101
	.uaword	0x23a
	.uleb128 0x8
	.string	"RE"
	.byte	0x4
	.uahalf	0x103
	.uaword	0x198
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF0
	.byte	0x4
	.uahalf	0x104
	.uaword	0x198
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_CPU_DPRE_Bits"
	.byte	0x4
	.uahalf	0x105
	.uaword	0x1fa
	.uleb128 0x7
	.string	"_Ifx_CPU_DPWE_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x108
	.uaword	0x294
	.uleb128 0x8
	.string	"WE"
	.byte	0x4
	.uahalf	0x10a
	.uaword	0x198
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF0
	.byte	0x4
	.uahalf	0x10b
	.uaword	0x198
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_CPU_DPWE_Bits"
	.byte	0x4
	.uahalf	0x10c
	.uaword	0x254
	.uleb128 0x7
	.string	"_Ifx_CPU_PSW_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x204
	.uaword	0x3b1
	.uleb128 0x8
	.string	"CDC"
	.byte	0x4
	.uahalf	0x206
	.uaword	0x198
	.byte	0x4
	.byte	0x7
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"CDE"
	.byte	0x4
	.uahalf	0x207
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"GW"
	.byte	0x4
	.uahalf	0x208
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"IS"
	.byte	0x4
	.uahalf	0x209
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"IO"
	.byte	0x4
	.uahalf	0x20a
	.uaword	0x198
	.byte	0x4
	.byte	0x2
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"PRS"
	.byte	0x4
	.uahalf	0x20b
	.uaword	0x198
	.byte	0x4
	.byte	0x2
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"S"
	.byte	0x4
	.uahalf	0x20c
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"reserved_15"
	.byte	0x4
	.uahalf	0x20d
	.uaword	0x198
	.byte	0x4
	.byte	0xc
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"SAV"
	.byte	0x4
	.uahalf	0x20e
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"AV"
	.byte	0x4
	.uahalf	0x20f
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"SV"
	.byte	0x4
	.uahalf	0x210
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"V"
	.byte	0x4
	.uahalf	0x211
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"C"
	.byte	0x4
	.uahalf	0x212
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_CPU_PSW_Bits"
	.byte	0x4
	.uahalf	0x213
	.uaword	0x2ae
	.uleb128 0x7
	.string	"_Ifx_CPU_SYSCON_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x25f
	.uaword	0x463
	.uleb128 0x8
	.string	"FCDSF"
	.byte	0x4
	.uahalf	0x261
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"PROTEN"
	.byte	0x4
	.uahalf	0x262
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TPROTEN"
	.byte	0x4
	.uahalf	0x263
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"IS"
	.byte	0x4
	.uahalf	0x264
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"IT"
	.byte	0x4
	.uahalf	0x265
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"reserved_5"
	.byte	0x4
	.uahalf	0x266
	.uaword	0x198
	.byte	0x4
	.byte	0x1b
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_CPU_SYSCON_Bits"
	.byte	0x4
	.uahalf	0x267
	.uaword	0x3ca
	.uleb128 0xb
	.byte	0x4
	.byte	0x4
	.uahalf	0x2ff
	.uaword	0x4a7
	.uleb128 0xc
	.string	"U"
	.byte	0x4
	.uahalf	0x301
	.uaword	0xf1
	.uleb128 0xc
	.string	"I"
	.byte	0x4
	.uahalf	0x302
	.uaword	0xea
	.uleb128 0xc
	.string	"B"
	.byte	0x4
	.uahalf	0x303
	.uaword	0x1e1
	.byte	0
	.uleb128 0xa
	.string	"Ifx_CPU_CPXE"
	.byte	0x4
	.uahalf	0x304
	.uaword	0x47f
	.uleb128 0xb
	.byte	0x4
	.byte	0x4
	.uahalf	0x37f
	.uaword	0x4e4
	.uleb128 0xc
	.string	"U"
	.byte	0x4
	.uahalf	0x381
	.uaword	0xf1
	.uleb128 0xc
	.string	"I"
	.byte	0x4
	.uahalf	0x382
	.uaword	0xea
	.uleb128 0xc
	.string	"B"
	.byte	0x4
	.uahalf	0x383
	.uaword	0x23a
	.byte	0
	.uleb128 0xa
	.string	"Ifx_CPU_DPRE"
	.byte	0x4
	.uahalf	0x384
	.uaword	0x4bc
	.uleb128 0xb
	.byte	0x4
	.byte	0x4
	.uahalf	0x387
	.uaword	0x521
	.uleb128 0xc
	.string	"U"
	.byte	0x4
	.uahalf	0x389
	.uaword	0xf1
	.uleb128 0xc
	.string	"I"
	.byte	0x4
	.uahalf	0x38a
	.uaword	0xea
	.uleb128 0xc
	.string	"B"
	.byte	0x4
	.uahalf	0x38b
	.uaword	0x294
	.byte	0
	.uleb128 0xa
	.string	"Ifx_CPU_DPWE"
	.byte	0x4
	.uahalf	0x38c
	.uaword	0x4f9
	.uleb128 0xb
	.byte	0x4
	.byte	0x4
	.uahalf	0x467
	.uaword	0x55e
	.uleb128 0xc
	.string	"U"
	.byte	0x4
	.uahalf	0x469
	.uaword	0xf1
	.uleb128 0xc
	.string	"I"
	.byte	0x4
	.uahalf	0x46a
	.uaword	0xea
	.uleb128 0xc
	.string	"B"
	.byte	0x4
	.uahalf	0x46b
	.uaword	0x3b1
	.byte	0
	.uleb128 0xa
	.string	"Ifx_CPU_PSW"
	.byte	0x4
	.uahalf	0x46c
	.uaword	0x536
	.uleb128 0xb
	.byte	0x4
	.byte	0x4
	.uahalf	0x4b7
	.uaword	0x59a
	.uleb128 0xc
	.string	"U"
	.byte	0x4
	.uahalf	0x4b9
	.uaword	0xf1
	.uleb128 0xc
	.string	"I"
	.byte	0x4
	.uahalf	0x4ba
	.uaword	0xea
	.uleb128 0xc
	.string	"B"
	.byte	0x4
	.uahalf	0x4bb
	.uaword	0x463
	.byte	0
	.uleb128 0xa
	.string	"Ifx_CPU_SYSCON"
	.byte	0x4
	.uahalf	0x4bc
	.uaword	0x572
	.uleb128 0xd
	.string	"mpu_u8SetProtRange"
	.byte	0x1
	.byte	0x88
	.byte	0x1
	.uaword	0x131
	.byte	0x1
	.uaword	0x5eb
	.uleb128 0xe
	.uaword	.LASF6
	.byte	0x1
	.byte	0x88
	.uaword	0x146
	.uleb128 0xf
	.string	"status"
	.byte	0x1
	.byte	0x8a
	.uaword	0x131
	.byte	0
	.uleb128 0x10
	.string	"mpu_u8Enable_MemProt"
	.byte	0x1
	.uahalf	0x134
	.byte	0x1
	.uaword	0x131
	.byte	0x1
	.uaword	0x682
	.uleb128 0x11
	.string	"Protection_Status"
	.byte	0x1
	.uahalf	0x136
	.uaword	0x131
	.uleb128 0x11
	.string	"sysconValue"
	.byte	0x1
	.uahalf	0x137
	.uaword	0x59a
	.uleb128 0x11
	.string	"sysconRead"
	.byte	0x1
	.uahalf	0x138
	.uaword	0x59a
	.uleb128 0x12
	.uaword	0x661
	.uleb128 0x13
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x13c
	.uaword	0xf1
	.byte	0
	.uleb128 0x12
	.uaword	0x673
	.uleb128 0x13
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x140
	.uaword	0xf1
	.byte	0
	.uleb128 0x14
	.uleb128 0x13
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x142
	.uaword	0xf1
	.byte	0
	.byte	0
	.uleb128 0x15
	.string	"mpu_vDefine_DataProtRange"
	.byte	0x1
	.uahalf	0x17a
	.byte	0x1
	.uaword	.LFB198
	.uaword	.LFE198
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0xa93
	.uleb128 0x16
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x17a
	.uaword	0x15f
	.byte	0x1
	.byte	0x54
	.uleb128 0x16
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x17a
	.uaword	0x15f
	.byte	0x1
	.byte	0x55
	.uleb128 0x16
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x17a
	.uaword	0x146
	.byte	0x1
	.byte	0x56
	.uleb128 0x17
	.uaword	.LBB7
	.uaword	.LBE7
	.uaword	0x6f8
	.uleb128 0x18
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x1bd
	.uaword	0xf1
	.uaword	.LLST0
	.byte	0
	.uleb128 0x17
	.uaword	.LBB8
	.uaword	.LBE8
	.uaword	0x716
	.uleb128 0x18
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x1be
	.uaword	0xf1
	.uaword	.LLST1
	.byte	0
	.uleb128 0x17
	.uaword	.LBB9
	.uaword	.LBE9
	.uaword	0x734
	.uleb128 0x18
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x1b9
	.uaword	0xf1
	.uaword	.LLST2
	.byte	0
	.uleb128 0x17
	.uaword	.LBB10
	.uaword	.LBE10
	.uaword	0x752
	.uleb128 0x18
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x1ba
	.uaword	0xf1
	.uaword	.LLST3
	.byte	0
	.uleb128 0x17
	.uaword	.LBB11
	.uaword	.LBE11
	.uaword	0x770
	.uleb128 0x18
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x181
	.uaword	0xf1
	.uaword	.LLST4
	.byte	0
	.uleb128 0x17
	.uaword	.LBB12
	.uaword	.LBE12
	.uaword	0x78e
	.uleb128 0x18
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x182
	.uaword	0xf1
	.uaword	.LLST5
	.byte	0
	.uleb128 0x17
	.uaword	.LBB13
	.uaword	.LBE13
	.uaword	0x7ac
	.uleb128 0x18
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x185
	.uaword	0xf1
	.uaword	.LLST6
	.byte	0
	.uleb128 0x17
	.uaword	.LBB14
	.uaword	.LBE14
	.uaword	0x7ca
	.uleb128 0x18
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x186
	.uaword	0xf1
	.uaword	.LLST7
	.byte	0
	.uleb128 0x17
	.uaword	.LBB15
	.uaword	.LBE15
	.uaword	0x7e8
	.uleb128 0x18
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x189
	.uaword	0xf1
	.uaword	.LLST8
	.byte	0
	.uleb128 0x17
	.uaword	.LBB16
	.uaword	.LBE16
	.uaword	0x806
	.uleb128 0x18
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x18a
	.uaword	0xf1
	.uaword	.LLST9
	.byte	0
	.uleb128 0x17
	.uaword	.LBB17
	.uaword	.LBE17
	.uaword	0x824
	.uleb128 0x18
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x18d
	.uaword	0xf1
	.uaword	.LLST10
	.byte	0
	.uleb128 0x17
	.uaword	.LBB18
	.uaword	.LBE18
	.uaword	0x842
	.uleb128 0x18
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x18e
	.uaword	0xf1
	.uaword	.LLST11
	.byte	0
	.uleb128 0x17
	.uaword	.LBB19
	.uaword	.LBE19
	.uaword	0x860
	.uleb128 0x18
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x191
	.uaword	0xf1
	.uaword	.LLST12
	.byte	0
	.uleb128 0x17
	.uaword	.LBB20
	.uaword	.LBE20
	.uaword	0x87e
	.uleb128 0x18
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x192
	.uaword	0xf1
	.uaword	.LLST13
	.byte	0
	.uleb128 0x17
	.uaword	.LBB21
	.uaword	.LBE21
	.uaword	0x89c
	.uleb128 0x18
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x195
	.uaword	0xf1
	.uaword	.LLST14
	.byte	0
	.uleb128 0x17
	.uaword	.LBB22
	.uaword	.LBE22
	.uaword	0x8ba
	.uleb128 0x18
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x196
	.uaword	0xf1
	.uaword	.LLST15
	.byte	0
	.uleb128 0x17
	.uaword	.LBB23
	.uaword	.LBE23
	.uaword	0x8d8
	.uleb128 0x18
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x199
	.uaword	0xf1
	.uaword	.LLST16
	.byte	0
	.uleb128 0x17
	.uaword	.LBB24
	.uaword	.LBE24
	.uaword	0x8f6
	.uleb128 0x18
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x19a
	.uaword	0xf1
	.uaword	.LLST17
	.byte	0
	.uleb128 0x17
	.uaword	.LBB25
	.uaword	.LBE25
	.uaword	0x914
	.uleb128 0x18
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x19d
	.uaword	0xf1
	.uaword	.LLST18
	.byte	0
	.uleb128 0x17
	.uaword	.LBB26
	.uaword	.LBE26
	.uaword	0x932
	.uleb128 0x18
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x19e
	.uaword	0xf1
	.uaword	.LLST19
	.byte	0
	.uleb128 0x17
	.uaword	.LBB27
	.uaword	.LBE27
	.uaword	0x950
	.uleb128 0x18
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x1a1
	.uaword	0xf1
	.uaword	.LLST20
	.byte	0
	.uleb128 0x17
	.uaword	.LBB28
	.uaword	.LBE28
	.uaword	0x96e
	.uleb128 0x18
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x1a2
	.uaword	0xf1
	.uaword	.LLST21
	.byte	0
	.uleb128 0x17
	.uaword	.LBB29
	.uaword	.LBE29
	.uaword	0x98c
	.uleb128 0x18
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x1a5
	.uaword	0xf1
	.uaword	.LLST22
	.byte	0
	.uleb128 0x17
	.uaword	.LBB30
	.uaword	.LBE30
	.uaword	0x9aa
	.uleb128 0x18
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x1a6
	.uaword	0xf1
	.uaword	.LLST23
	.byte	0
	.uleb128 0x17
	.uaword	.LBB31
	.uaword	.LBE31
	.uaword	0x9c8
	.uleb128 0x18
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x1a9
	.uaword	0xf1
	.uaword	.LLST24
	.byte	0
	.uleb128 0x17
	.uaword	.LBB32
	.uaword	.LBE32
	.uaword	0x9e6
	.uleb128 0x18
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x1aa
	.uaword	0xf1
	.uaword	.LLST25
	.byte	0
	.uleb128 0x17
	.uaword	.LBB33
	.uaword	.LBE33
	.uaword	0xa04
	.uleb128 0x18
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x1ad
	.uaword	0xf1
	.uaword	.LLST26
	.byte	0
	.uleb128 0x17
	.uaword	.LBB34
	.uaword	.LBE34
	.uaword	0xa22
	.uleb128 0x18
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x1ae
	.uaword	0xf1
	.uaword	.LLST27
	.byte	0
	.uleb128 0x17
	.uaword	.LBB35
	.uaword	.LBE35
	.uaword	0xa40
	.uleb128 0x18
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x1b1
	.uaword	0xf1
	.uaword	.LLST28
	.byte	0
	.uleb128 0x17
	.uaword	.LBB36
	.uaword	.LBE36
	.uaword	0xa5e
	.uleb128 0x18
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x1b2
	.uaword	0xf1
	.uaword	.LLST29
	.byte	0
	.uleb128 0x17
	.uaword	.LBB37
	.uaword	.LBE37
	.uaword	0xa7a
	.uleb128 0x19
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x1b5
	.uaword	0xf1
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x1a
	.uaword	.LBB38
	.uaword	.LBE38
	.uleb128 0x19
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x1b6
	.uaword	0xf1
	.byte	0x1
	.byte	0x55
	.byte	0
	.byte	0
	.uleb128 0x15
	.string	"mpu_vDefine_CodeProtRange"
	.byte	0x1
	.uahalf	0x1d8
	.byte	0x1
	.uaword	.LFB199
	.uaword	.LFE199
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0xcc4
	.uleb128 0x16
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x1d8
	.uaword	0x15f
	.byte	0x1
	.byte	0x54
	.uleb128 0x16
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x1d8
	.uaword	0x15f
	.byte	0x1
	.byte	0x55
	.uleb128 0x16
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x1d8
	.uaword	0x146
	.byte	0x1
	.byte	0x56
	.uleb128 0x17
	.uaword	.LBB39
	.uaword	.LBE39
	.uaword	0xb09
	.uleb128 0x18
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x1fb
	.uaword	0xf1
	.uaword	.LLST30
	.byte	0
	.uleb128 0x17
	.uaword	.LBB40
	.uaword	.LBE40
	.uaword	0xb27
	.uleb128 0x18
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x1fc
	.uaword	0xf1
	.uaword	.LLST31
	.byte	0
	.uleb128 0x17
	.uaword	.LBB41
	.uaword	.LBE41
	.uaword	0xb45
	.uleb128 0x18
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x1f7
	.uaword	0xf1
	.uaword	.LLST32
	.byte	0
	.uleb128 0x17
	.uaword	.LBB42
	.uaword	.LBE42
	.uaword	0xb63
	.uleb128 0x18
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x1f8
	.uaword	0xf1
	.uaword	.LLST33
	.byte	0
	.uleb128 0x17
	.uaword	.LBB43
	.uaword	.LBE43
	.uaword	0xb81
	.uleb128 0x18
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x1df
	.uaword	0xf1
	.uaword	.LLST34
	.byte	0
	.uleb128 0x17
	.uaword	.LBB44
	.uaword	.LBE44
	.uaword	0xb9f
	.uleb128 0x18
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x1e0
	.uaword	0xf1
	.uaword	.LLST35
	.byte	0
	.uleb128 0x17
	.uaword	.LBB45
	.uaword	.LBE45
	.uaword	0xbbd
	.uleb128 0x18
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x1e3
	.uaword	0xf1
	.uaword	.LLST36
	.byte	0
	.uleb128 0x17
	.uaword	.LBB46
	.uaword	.LBE46
	.uaword	0xbdb
	.uleb128 0x18
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x1e4
	.uaword	0xf1
	.uaword	.LLST37
	.byte	0
	.uleb128 0x17
	.uaword	.LBB47
	.uaword	.LBE47
	.uaword	0xbf9
	.uleb128 0x18
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x1e7
	.uaword	0xf1
	.uaword	.LLST38
	.byte	0
	.uleb128 0x17
	.uaword	.LBB48
	.uaword	.LBE48
	.uaword	0xc17
	.uleb128 0x18
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x1e8
	.uaword	0xf1
	.uaword	.LLST39
	.byte	0
	.uleb128 0x17
	.uaword	.LBB49
	.uaword	.LBE49
	.uaword	0xc35
	.uleb128 0x18
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x1eb
	.uaword	0xf1
	.uaword	.LLST40
	.byte	0
	.uleb128 0x17
	.uaword	.LBB50
	.uaword	.LBE50
	.uaword	0xc53
	.uleb128 0x18
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x1ec
	.uaword	0xf1
	.uaword	.LLST41
	.byte	0
	.uleb128 0x17
	.uaword	.LBB51
	.uaword	.LBE51
	.uaword	0xc71
	.uleb128 0x18
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x1ef
	.uaword	0xf1
	.uaword	.LLST42
	.byte	0
	.uleb128 0x17
	.uaword	.LBB52
	.uaword	.LBE52
	.uaword	0xc8f
	.uleb128 0x18
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x1f0
	.uaword	0xf1
	.uaword	.LLST43
	.byte	0
	.uleb128 0x17
	.uaword	.LBB53
	.uaword	.LBE53
	.uaword	0xcab
	.uleb128 0x19
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x1f3
	.uaword	0xf1
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x1a
	.uaword	.LBB54
	.uaword	.LBE54
	.uleb128 0x19
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x1f4
	.uaword	0xf1
	.byte	0x1
	.byte	0x55
	.byte	0
	.byte	0
	.uleb128 0x15
	.string	"mpu_vEnable_DataRd"
	.byte	0x1
	.uahalf	0x20f
	.byte	0x1
	.uaword	.LFB200
	.uaword	.LFE200
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0xe10
	.uleb128 0x16
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x20f
	.uaword	0x146
	.byte	0x1
	.byte	0x54
	.uleb128 0x1b
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x20f
	.uaword	0x146
	.uaword	.LLST44
	.uleb128 0x1c
	.string	"DPRERegisterValue"
	.byte	0x1
	.uahalf	0x211
	.uaword	0x4e4
	.uaword	.LLST45
	.uleb128 0x17
	.uaword	.LBB55
	.uaword	.LBE55
	.uaword	0xd45
	.uleb128 0x18
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x220
	.uaword	0xf1
	.uaword	.LLST46
	.byte	0
	.uleb128 0x17
	.uaword	.LBB56
	.uaword	.LBE56
	.uaword	0xd63
	.uleb128 0x18
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x234
	.uaword	0xf1
	.uaword	.LLST47
	.byte	0
	.uleb128 0x17
	.uaword	.LBB57
	.uaword	.LBE57
	.uaword	0xd81
	.uleb128 0x18
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x21d
	.uaword	0xf1
	.uaword	.LLST48
	.byte	0
	.uleb128 0x17
	.uaword	.LBB58
	.uaword	.LBE58
	.uaword	0xd9f
	.uleb128 0x18
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x231
	.uaword	0xf1
	.uaword	.LLST49
	.byte	0
	.uleb128 0x17
	.uaword	.LBB59
	.uaword	.LBE59
	.uaword	0xdbd
	.uleb128 0x18
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x21a
	.uaword	0xf1
	.uaword	.LLST50
	.byte	0
	.uleb128 0x17
	.uaword	.LBB60
	.uaword	.LBE60
	.uaword	0xddb
	.uleb128 0x18
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x22e
	.uaword	0xf1
	.uaword	.LLST51
	.byte	0
	.uleb128 0x17
	.uaword	.LBB61
	.uaword	.LBE61
	.uaword	0xdf7
	.uleb128 0x19
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x217
	.uaword	0xf1
	.byte	0x1
	.byte	0x5f
	.byte	0
	.uleb128 0x1a
	.uaword	.LBB62
	.uaword	.LBE62
	.uleb128 0x19
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x22b
	.uaword	0xf1
	.byte	0x1
	.byte	0x55
	.byte	0
	.byte	0
	.uleb128 0x15
	.string	"mpu_vEnable_DataWr"
	.byte	0x1
	.uahalf	0x247
	.byte	0x1
	.uaword	.LFB201
	.uaword	.LFE201
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0xf5c
	.uleb128 0x16
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x247
	.uaword	0x146
	.byte	0x1
	.byte	0x54
	.uleb128 0x1b
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x247
	.uaword	0x146
	.uaword	.LLST52
	.uleb128 0x1c
	.string	"DPWERegisterValue"
	.byte	0x1
	.uahalf	0x249
	.uaword	0x521
	.uaword	.LLST53
	.uleb128 0x17
	.uaword	.LBB63
	.uaword	.LBE63
	.uaword	0xe91
	.uleb128 0x18
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x258
	.uaword	0xf1
	.uaword	.LLST54
	.byte	0
	.uleb128 0x17
	.uaword	.LBB64
	.uaword	.LBE64
	.uaword	0xeaf
	.uleb128 0x18
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x26d
	.uaword	0xf1
	.uaword	.LLST55
	.byte	0
	.uleb128 0x17
	.uaword	.LBB65
	.uaword	.LBE65
	.uaword	0xecd
	.uleb128 0x18
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x255
	.uaword	0xf1
	.uaword	.LLST56
	.byte	0
	.uleb128 0x17
	.uaword	.LBB66
	.uaword	.LBE66
	.uaword	0xeeb
	.uleb128 0x18
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x26a
	.uaword	0xf1
	.uaword	.LLST57
	.byte	0
	.uleb128 0x17
	.uaword	.LBB67
	.uaword	.LBE67
	.uaword	0xf09
	.uleb128 0x18
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x252
	.uaword	0xf1
	.uaword	.LLST58
	.byte	0
	.uleb128 0x17
	.uaword	.LBB68
	.uaword	.LBE68
	.uaword	0xf27
	.uleb128 0x18
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x267
	.uaword	0xf1
	.uaword	.LLST59
	.byte	0
	.uleb128 0x17
	.uaword	.LBB69
	.uaword	.LBE69
	.uaword	0xf43
	.uleb128 0x19
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x24f
	.uaword	0xf1
	.byte	0x1
	.byte	0x5f
	.byte	0
	.uleb128 0x1a
	.uaword	.LBB70
	.uaword	.LBE70
	.uleb128 0x19
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x264
	.uaword	0xf1
	.byte	0x1
	.byte	0x55
	.byte	0
	.byte	0
	.uleb128 0x15
	.string	"mpu_vEnable_CodeExe"
	.byte	0x1
	.uahalf	0x280
	.byte	0x1
	.uaword	.LFB202
	.uaword	.LFE202
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x10ab
	.uleb128 0x16
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x280
	.uaword	0x146
	.byte	0x1
	.byte	0x54
	.uleb128 0x1b
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x280
	.uaword	0x146
	.uaword	.LLST60
	.uleb128 0x1c
	.string	"CPXERegisterValue"
	.byte	0x1
	.uahalf	0x282
	.uaword	0x4a7
	.uaword	.LLST61
	.uleb128 0x17
	.uaword	.LBB71
	.uaword	.LBE71
	.uaword	0xfde
	.uleb128 0x18
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x291
	.uaword	0xf1
	.uaword	.LLST62
	.byte	0
	.uleb128 0x17
	.uaword	.LBB72
	.uaword	.LBE72
	.uaword	0xffc
	.uleb128 0x18
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x2a6
	.uaword	0xf1
	.uaword	.LLST63
	.byte	0
	.uleb128 0x17
	.uaword	.LBB73
	.uaword	.LBE73
	.uaword	0x101a
	.uleb128 0x18
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x28e
	.uaword	0xf1
	.uaword	.LLST64
	.byte	0
	.uleb128 0x17
	.uaword	.LBB74
	.uaword	.LBE74
	.uaword	0x1038
	.uleb128 0x18
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x2a3
	.uaword	0xf1
	.uaword	.LLST65
	.byte	0
	.uleb128 0x17
	.uaword	.LBB75
	.uaword	.LBE75
	.uaword	0x1056
	.uleb128 0x18
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x28b
	.uaword	0xf1
	.uaword	.LLST66
	.byte	0
	.uleb128 0x17
	.uaword	.LBB76
	.uaword	.LBE76
	.uaword	0x1074
	.uleb128 0x18
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x2a0
	.uaword	0xf1
	.uaword	.LLST67
	.byte	0
	.uleb128 0x17
	.uaword	.LBB77
	.uaword	.LBE77
	.uaword	0x1092
	.uleb128 0x18
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x288
	.uaword	0xf1
	.uaword	.LLST68
	.byte	0
	.uleb128 0x1a
	.uaword	.LBB78
	.uaword	.LBE78
	.uleb128 0x19
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x29d
	.uaword	0xf1
	.byte	0x1
	.byte	0x5f
	.byte	0
	.byte	0
	.uleb128 0x1d
	.string	"mpu_u8SetProtAccess"
	.byte	0x1
	.byte	0xd0
	.byte	0x1
	.uaword	0x131
	.uaword	.LFB195
	.uaword	.LFE195
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x10f8
	.uleb128 0x1e
	.uaword	.LASF6
	.byte	0x1
	.byte	0xd0
	.uaword	0x146
	.uaword	.LLST69
	.uleb128 0x1f
	.string	"status"
	.byte	0x1
	.byte	0xd2
	.uaword	0x131
	.uaword	.LLST70
	.byte	0
	.uleb128 0x20
	.uaword	0x5b1
	.uaword	.LFB194
	.uaword	.LFE194
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x1147
	.uleb128 0x21
	.uaword	0x5d1
	.uaword	.LLST71
	.uleb128 0x22
	.uaword	0x5dc
	.uaword	.LLST72
	.uleb128 0x23
	.uaword	0x5b1
	.uaword	.LBB81
	.uaword	.LBE81
	.byte	0x1
	.byte	0x88
	.uleb128 0x1a
	.uaword	.LBB82
	.uaword	.LBE82
	.uleb128 0x22
	.uaword	0x5dc
	.uaword	.LLST73
	.uleb128 0x24
	.uaword	0x5d1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.string	"mpu_vInit"
	.byte	0x1
	.byte	0x4a
	.byte	0x1
	.uaword	.LFB193
	.uaword	.LFE193
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x11d6
	.uleb128 0x1f
	.string	"mpuConfig_Sts"
	.byte	0x1
	.byte	0x4c
	.uaword	0x131
	.uaword	.LLST74
	.uleb128 0x23
	.uaword	0x5eb
	.uaword	.LBB83
	.uaword	.LBE83
	.byte	0x1
	.byte	0x6b
	.uleb128 0x1a
	.uaword	.LBB84
	.uaword	.LBE84
	.uleb128 0x26
	.uaword	0x60e
	.uleb128 0x22
	.uaword	0x628
	.uaword	.LLST75
	.uleb128 0x26
	.uaword	0x63c
	.uleb128 0x17
	.uaword	.LBB85
	.uaword	.LBE85
	.uaword	0x11c0
	.uleb128 0x22
	.uaword	0x666
	.uaword	.LLST76
	.byte	0
	.uleb128 0x1a
	.uaword	.LBB86
	.uaword	.LBE86
	.uleb128 0x22
	.uaword	0x674
	.uaword	.LLST77
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x27
	.string	"PSWReg_Rd0"
	.byte	0x1
	.byte	0x1e
	.uaword	0x55e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	PSWReg_Rd0
	.uleb128 0x27
	.string	"PSWReg_Rd1"
	.byte	0x1
	.byte	0x24
	.uaword	0x55e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	PSWReg_Rd1
	.uleb128 0x28
	.string	"PSWReg_Rd2"
	.byte	0x5
	.byte	0x47
	.uaword	0x55e
	.byte	0x1
	.byte	0x1
	.uleb128 0x27
	.string	"PSWReg_Rd3"
	.byte	0x1
	.byte	0x26
	.uaword	0x55e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	PSWReg_Rd3
	.uleb128 0x27
	.string	"TRUSTED_Mpu_Err"
	.byte	0x1
	.byte	0x27
	.uaword	0x13b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	TRUSTED_Mpu_Err
	.uleb128 0x29
	.uaword	0xf1
	.uaword	0x125e
	.uleb128 0x2a
	.byte	0
	.uleb128 0x28
	.string	"__PSPR_ASIL_RAMCODE_START"
	.byte	0x6
	.byte	0x22
	.uaword	0x1253
	.byte	0x1
	.byte	0x1
	.uleb128 0x28
	.string	"__PSPR_ASIL_RAMCODE_END"
	.byte	0x6
	.byte	0x23
	.uaword	0x1253
	.byte	0x1
	.byte	0x1
	.uleb128 0x28
	.string	"__DSPR_QM_VAR_START"
	.byte	0x6
	.byte	0x24
	.uaword	0x1253
	.byte	0x1
	.byte	0x1
	.uleb128 0x28
	.string	"__DSPR_QM_VAR_END"
	.byte	0x6
	.byte	0x25
	.uaword	0x1253
	.byte	0x1
	.byte	0x1
	.uleb128 0x28
	.string	"__DSPR_ASIL_VAR_START"
	.byte	0x6
	.byte	0x26
	.uaword	0x1253
	.byte	0x1
	.byte	0x1
	.uleb128 0x28
	.string	"__DSPR_ASIL_VAR_END"
	.byte	0x6
	.byte	0x27
	.uaword	0x1253
	.byte	0x1
	.byte	0x1
	.uleb128 0x28
	.string	"__DSPR_DEFAULT_VAR_START"
	.byte	0x6
	.byte	0x28
	.uaword	0x1253
	.byte	0x1
	.byte	0x1
	.uleb128 0x28
	.string	"__DSPR_DEFAULT_VAR_END"
	.byte	0x6
	.byte	0x29
	.uaword	0x1253
	.byte	0x1
	.byte	0x1
	.uleb128 0x28
	.string	"__USTACK0_END"
	.byte	0x6
	.byte	0x2e
	.uaword	0x1253
	.byte	0x1
	.byte	0x1
	.uleb128 0x28
	.string	"__USTACK0"
	.byte	0x6
	.byte	0x2f
	.uaword	0x1253
	.byte	0x1
	.byte	0x1
	.uleb128 0x28
	.string	"__ISTACK0_END"
	.byte	0x6
	.byte	0x30
	.uaword	0x1253
	.byte	0x1
	.byte	0x1
	.uleb128 0x28
	.string	"__ISTACK0"
	.byte	0x6
	.byte	0x31
	.uaword	0x1253
	.byte	0x1
	.byte	0x1
	.uleb128 0x28
	.string	"__CSA0"
	.byte	0x6
	.byte	0x34
	.uaword	0x1253
	.byte	0x1
	.byte	0x1
	.uleb128 0x28
	.string	"__CSA0_END"
	.byte	0x6
	.byte	0x35
	.uaword	0x1253
	.byte	0x1
	.byte	0x1
	.uleb128 0x28
	.string	"__START_DSPR"
	.byte	0x6
	.byte	0x36
	.uaword	0x1253
	.byte	0x1
	.byte	0x1
	.uleb128 0x28
	.string	"__DSPR_QM_PMA_VAR_START"
	.byte	0x6
	.byte	0x3a
	.uaword	0x1253
	.byte	0x1
	.byte	0x1
	.uleb128 0x28
	.string	"__DSPR_QM_PMA_VAR_END"
	.byte	0x6
	.byte	0x3b
	.uaword	0x1253
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
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0xa
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
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x26
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL1
	.uaword	.LVL3
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL2
	.uaword	.LVL3
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL4
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x54
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
	.uaword	.LVL6
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL7
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL8
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL9
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL10
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL12
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL13
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL14
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL15
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL16
	.uaword	.LVL18
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL17
	.uaword	.LVL18
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL18
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL19
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL20
	.uaword	.LVL22
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL21
	.uaword	.LVL22
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL22
	.uaword	.LVL24
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL23
	.uaword	.LVL24
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL24
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL25
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL26
	.uaword	.LVL28
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL27
	.uaword	.LVL28
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL28
	.uaword	.LVL30
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL29
	.uaword	.LVL30
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL30
	.uaword	.LVL32
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL31
	.uaword	.LVL32
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL35
	.uaword	.LVL37
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST31:
	.uaword	.LVL36
	.uaword	.LVL37
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST32:
	.uaword	.LVL38
	.uaword	.LVL40
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST33:
	.uaword	.LVL39
	.uaword	.LVL40
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST34:
	.uaword	.LVL40
	.uaword	.LVL42
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST35:
	.uaword	.LVL41
	.uaword	.LVL42
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST36:
	.uaword	.LVL42
	.uaword	.LVL44
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST37:
	.uaword	.LVL43
	.uaword	.LVL44
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST38:
	.uaword	.LVL44
	.uaword	.LVL46
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST39:
	.uaword	.LVL45
	.uaword	.LVL46
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST40:
	.uaword	.LVL46
	.uaword	.LVL48
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST41:
	.uaword	.LVL47
	.uaword	.LVL48
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST42:
	.uaword	.LVL48
	.uaword	.LVL50
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST43:
	.uaword	.LVL49
	.uaword	.LVL50
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST44:
	.uaword	.LVL52
	.uaword	.LVL54
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL57
	.uaword	.LVL59
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL61
	.uaword	.LVL63
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL65
	.uaword	.LVL67
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST45:
	.uaword	.LVL55
	.uaword	.LVL57
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL60
	.uaword	.LVL61
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL64
	.uaword	.LVL65
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL68
	.uaword	.LFE200
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST46:
	.uaword	.LVL53
	.uaword	.LVL56
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST47:
	.uaword	.LVL55
	.uaword	.LVL56
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST48:
	.uaword	.LVL58
	.uaword	.LVL61
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST49:
	.uaword	.LVL60
	.uaword	.LVL61
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST50:
	.uaword	.LVL62
	.uaword	.LVL65
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST51:
	.uaword	.LVL64
	.uaword	.LVL65
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST52:
	.uaword	.LVL69
	.uaword	.LVL71
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL74
	.uaword	.LVL76
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL78
	.uaword	.LVL80
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL82
	.uaword	.LVL84
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST53:
	.uaword	.LVL72
	.uaword	.LVL74
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL77
	.uaword	.LVL78
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL81
	.uaword	.LVL82
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL85
	.uaword	.LFE201
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST54:
	.uaword	.LVL70
	.uaword	.LVL73
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST55:
	.uaword	.LVL72
	.uaword	.LVL73
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST56:
	.uaword	.LVL75
	.uaword	.LVL78
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST57:
	.uaword	.LVL77
	.uaword	.LVL78
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST58:
	.uaword	.LVL79
	.uaword	.LVL82
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST59:
	.uaword	.LVL81
	.uaword	.LVL82
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST60:
	.uaword	.LVL86
	.uaword	.LVL88
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL91
	.uaword	.LVL93
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL95
	.uaword	.LVL97
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL99
	.uaword	.LVL101
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST61:
	.uaword	.LVL89
	.uaword	.LVL91
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL94
	.uaword	.LVL95
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL98
	.uaword	.LVL99
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL102
	.uaword	.LFE202
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST62:
	.uaword	.LVL87
	.uaword	.LVL89
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST63:
	.uaword	.LVL89
	.uaword	.LVL90
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST64:
	.uaword	.LVL92
	.uaword	.LVL94
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST65:
	.uaword	.LVL94
	.uaword	.LVL95
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST66:
	.uaword	.LVL96
	.uaword	.LVL98
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST67:
	.uaword	.LVL98
	.uaword	.LVL99
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST68:
	.uaword	.LVL100
	.uaword	.LVL102
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST69:
	.uaword	.LVL103
	.uaword	.LVL104
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL107
	.uaword	.LVL108
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL110
	.uaword	.LVL111
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL113
	.uaword	.LFE195
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST70:
	.uaword	.LVL103
	.uaword	.LVL105
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL105
	.uaword	.LVL106
	.uahalf	0x3
	.byte	0x8
	.byte	0x40
	.byte	0x9f
	.uaword	.LVL106
	.uaword	.LVL107
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL107
	.uaword	.LVL109
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL109
	.uaword	.LVL110
	.uahalf	0x3
	.byte	0x8
	.byte	0x20
	.byte	0x9f
	.uaword	.LVL110
	.uaword	.LVL112
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL112
	.uaword	.LVL113
	.uahalf	0x2
	.byte	0x40
	.byte	0x9f
	.uaword	.LVL113
	.uaword	.LFE195
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST71:
	.uaword	.LVL114
	.uaword	.LVL115
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL118
	.uaword	.LVL119
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL121
	.uaword	.LVL122
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL124
	.uaword	.LFE194
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST72:
	.uaword	.LVL114
	.uaword	.LVL116
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL116
	.uaword	.LVL117
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL117
	.uaword	.LVL118
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL118
	.uaword	.LVL123
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL123
	.uaword	.LVL124
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL124
	.uaword	.LFE194
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST73:
	.uaword	.LVL120
	.uaword	.LVL121
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST74:
	.uaword	.LVL125
	.uaword	.LVL126
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL126
	.uaword	.LVL127-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL127-1
	.uaword	.LVL132
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL132
	.uaword	.LVL133
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST75:
	.uaword	.LVL134
	.uaword	.LVL136
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST76:
	.uaword	.LVL135
	.uaword	.LVL136
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST77:
	.uaword	.LVL136
	.uaword	.LVL138
	.uahalf	0x1
	.byte	0x5f
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
	.uaword	.LFB198
	.uaword	.LFE198-.LFB198
	.uaword	.LFB199
	.uaword	.LFE199-.LFB199
	.uaword	.LFB200
	.uaword	.LFE200-.LFB200
	.uaword	.LFB201
	.uaword	.LFE201-.LFB201
	.uaword	.LFB202
	.uaword	.LFE202-.LFB202
	.uaword	.LFB195
	.uaword	.LFE195-.LFB195
	.uaword	.LFB194
	.uaword	.LFE194-.LFB194
	.uaword	.LFB193
	.uaword	.LFE193-.LFB193
	.uaword	0
	.uaword	0
	.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB198
	.uaword	.LFE198
	.uaword	.LFB199
	.uaword	.LFE199
	.uaword	.LFB200
	.uaword	.LFE200
	.uaword	.LFB201
	.uaword	.LFE201
	.uaword	.LFB202
	.uaword	.LFE202
	.uaword	.LFB195
	.uaword	.LFE195
	.uaword	.LFB194
	.uaword	.LFE194
	.uaword	.LFB193
	.uaword	.LFE193
	.uaword	0
	.uaword	0
	.section .debug_line,"",@progbits
.Ldebug_line0:
	.section .debug_str,"",@progbits
.LASF4:
	.string	"upperBoundAddress"
.LASF2:
	.string	"__newval"
.LASF5:
	.string	"range"
.LASF6:
	.string	"protectionSet"
.LASF0:
	.string	"reserved_16"
.LASF1:
	.string	"__res"
.LASF3:
	.string	"lowerBoundAddress"
	.extern	IfxScuWdt_setCpuEndinit,STT_FUNC,0
	.extern	IfxScuWdt_clearCpuEndinit,STT_FUNC,0
	.extern	IfxScuWdt_getCpuWatchdogPassword,STT_FUNC,0
	.extern	PSWReg_Rd2,STT_OBJECT,4
	.extern	__DSPR_QM_PMA_VAR_END,STT_OBJECT,-1
	.extern	__DSPR_QM_PMA_VAR_START,STT_OBJECT,-1
	.extern	__CSA0_END,STT_OBJECT,-1
	.extern	__CSA0,STT_OBJECT,-1
	.extern	__ISTACK0,STT_OBJECT,-1
	.extern	__ISTACK0_END,STT_OBJECT,-1
	.extern	__USTACK0,STT_OBJECT,-1
	.extern	__USTACK0_END,STT_OBJECT,-1
	.extern	__DSPR_QM_VAR_END,STT_OBJECT,-1
	.extern	__DSPR_QM_VAR_START,STT_OBJECT,-1
	.extern	__DSPR_ASIL_VAR_END,STT_OBJECT,-1
	.extern	__DSPR_ASIL_VAR_START,STT_OBJECT,-1
	.extern	__PSPR_ASIL_RAMCODE_END,STT_OBJECT,-1
	.extern	__PSPR_ASIL_RAMCODE_START,STT_OBJECT,-1
	.extern	__DSPR_DEFAULT_VAR_END,STT_OBJECT,-1
	.extern	__DSPR_DEFAULT_VAR_START,STT_OBJECT,-1
	.extern	__START_DSPR,STT_OBJECT,-1
	.ident	"GCC: (HighTec Release v4.6.3.0) 4.6.3 build on 2013-05-17"
