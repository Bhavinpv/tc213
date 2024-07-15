	.file	"Scheduler_Asil.c"
.section .text,"ax",@progbits
.Ltext0:
	.section .text.MPU_ASIL_CODE,"ax",@progbits
	.align 3
	.type	mg_vASIL_1msTask, @function
mg_vASIL_1msTask:
.LFB205:
	.file 1 "../30_Bsw/Scheduler/Scheduler_Asil.c"
	.loc 1 263 0
	.loc 1 265 0
	movh.a	%a4, hi:Comm_u16CanErrCode
	lea	%a4, [%a4] lo:Comm_u16CanErrCode
	.loc 1 269 0
	movh.a	%a15, hi:Main_InitFin
	.loc 1 265 0
	call	CANDriver_Diag
	.loc 1 266 0
	call	ComServ_1msTask
	.loc 1 267 0
	call	HsfbApp_Call1ms
	.loc 1 268 0
	call	ORU_LatchTest1ms
	.loc 1 269 0
	ld.bu	%d15, [%a15] lo:Main_InitFin
	jnz	%d15, .L1
	.loc 1 271 0
	movh.a	%a2, hi:Qspi_StrtUpTst_Sts
	ld.w	%d15, [%a2] lo:Qspi_StrtUpTst_Sts
	jnz	%d15, .L3
	.loc 1 273 0
	mov.a	%a15, 1
	st.a	[%a2] lo:Qspi_StrtUpTst_Sts, %a15
	.loc 1 274 0
	movh.a	%a15, hi:Qspi_TstSeqIndx
	st.h	[%a15] lo:Qspi_TstSeqIndx, %d15
.L4:
	.loc 1 284 0
	call	Qspi_StartUp
	.loc 1 285 0
	ld.h	%d15, [%a15] lo:Qspi_TstSeqIndx
	add	%d15, 1
	st.h	[%a15] lo:Qspi_TstSeqIndx, %d15
	ret
.L3:
	.loc 1 276 0
	eq	%d15, %d15, 8
	jz	%d15, .L8
	.loc 1 295 0
	mov	%d15, 1
	st.b	[%a15] lo:Main_InitFin, %d15
.L1:
	ret
.L8:
	.loc 1 279 0
	movh.a	%a15, hi:Qspi_TstSeqIndx
	ld.hu	%d15, [%a15] lo:Qspi_TstSeqIndx
	mov	%d2, 2000
	jlt.u	%d15, %d2, .L4
	.loc 1 290 0
	movh.a	%a15, hi:Main_ResetCnt
	ld.h	%d15, [%a15] lo:Main_ResetCnt
	add	%d15, 1
	st.h	[%a15] lo:Main_ResetCnt, %d15
	ret
.LFE205:
	.size	mg_vASIL_1msTask, .-mg_vASIL_1msTask
	.align 3
	.type	mg_vIsr_TimeMeasCalc.constprop.3, @function
mg_vIsr_TimeMeasCalc.constprop.3:
.LFB215:
	.loc 1 563 0
.LVL0:
	.loc 1 568 0
	jge.u	%d4, 4, .L9
.LVL1:
.LBB12:
.LBB13:
	.loc 1 573 0
#APP
	# 573 "../30_Bsw/Scheduler/Scheduler_Asil.c" 1
	disable
	# 0 "" 2
	.loc 1 574 0
#NO_APP
	movh.a	%a2, hi:Isr_TimeMeas
	ld.w	%d15, [%a2] lo:Isr_TimeMeas
	lea	%a15, [%a2] lo:Isr_TimeMeas
	st.w	[%a15] 4, %d15
	.loc 1 576 0
	ld.w	%d2, 0xf0000010
	st.w	[%a2] lo:Isr_TimeMeas, %d2
	.loc 1 579 0
	addi	%d3, %d4, 2
	addsc.a	%a2, %a15, %d3, 2
	.loc 1 577 0
	jlt.u	%d15, %d2, .L18
	.loc 1 583 0
	not	%d15
	add	%d15, %d2
	st.w	[%a2]0, %d15
.L12:
	.loc 1 585 0
	addsc.a	%a2, %a15, %d4, 0
	st.b	[%a2] 72, %d5
	.loc 1 586 0
	jz	%d5, .L13
	.loc 1 588 0
	add	%d15, %d4, 3
	addsc.a	%a2, %a15, %d15, 3
	addsc.a	%a3, %a15, %d4, 3
	ld.w	%d15, [%a2]0
	st.w	[%a3] 28, %d15
	.loc 1 589 0
	st.w	[%a2]0, %d2
	.loc 1 590 0
	ld.w	%d15, [%a3] 28
	addsc.a	%a2, %a15, %d4, 2
	sub	%d2, %d15
	st.w	[%a2] 56, %d2
.L13:
	.loc 1 596 0
#APP
	# 596 "../30_Bsw/Scheduler/Scheduler_Asil.c" 1
	enable
	# 0 "" 2
	.loc 1 599 0
#NO_APP
	jz	%d5, .L14
	.loc 1 601 0
	addi	%d15, %d4, 19
	addsc.a	%a2, %a15, %d15, 2
	mov	%d15, 0
	lea	%a3, [%a15] 71
	st.w	[%a2]0, %d15
.LVL2:
	.loc 1 602 0
	mov.a	%a2, 3
.LVL3:
.L16:
	.loc 1 604 0
	ld.bu	%d2, [+%a3]1
	jz	%d2, .L15
	jne	%d15, %d4, .L19
.L15:
	.loc 1 602 0
	add	%d15, 1
.LVL4:
	loop	%a2, .L16
	ret
.LVL5:
.L14:
	.loc 1 613 0
	addi	%d15, %d4, 19
	addsc.a	%a2, %a15, %d15, 2
	addsc.a	%a3, %a15, %d3, 2
	ld.w	%d2, [%a2]0
	ld.w	%d15, [%a3]0
	add	%d15, %d2
	st.w	[%a2]0, %d15
	.loc 1 614 0
	utof	%d15, %d15
	addsc.a	%a2, %a15, %d4, 2
	st.w	[%a2] 92, %d15
	.loc 1 615 0
	jge.u	%d6, 2, .L9
	.loc 1 616 0
	madd	%d4, %d6, %d4, 2
.LVL6:
	addsc.a	%a15, %a15, %d4, 2
	st.w	[%a15] 108, %d15
.LVL7:
.L9:
	ret
.LVL8:
.L18:
	.loc 1 579 0
	sub	%d15, %d2, %d15
	st.w	[%a2]0, %d15
	j	.L12
.L19:
	.loc 1 606 0
	addi	%d15, %d15, 19
	addsc.a	%a2, %a15, %d15, 2
	addsc.a	%a15, %a15, %d3, 2
	ld.w	%d2, [%a2]0
	ld.w	%d15, [%a15]0
	add	%d15, %d2
	st.w	[%a2]0, %d15
	ret
.LBE13:
.LBE12:
.LFE215:
	.size	mg_vIsr_TimeMeasCalc.constprop.3, .-mg_vIsr_TimeMeasCalc.constprop.3
	.align 3
	.global	Isr_Call15us
	.type	Isr_Call15us, @function
Isr_Call15us:
.LFB203:
	.loc 1 99 0
.LVL9:
.LBB30:
.LBB31:
.LBB32:
	.file 2 "../30_Bsw/Mpu/mpu_api.h"
	.loc 2 103 0
#APP
	# 103 "../30_Bsw/Mpu/mpu_api.h" 1
	mfcr %d15, LO:0xFE04
	# 0 "" 2
.LVL10:
#NO_APP
.LBE32:
	.loc 2 104 0
	insert	%d15, %d15, 0, 12, 2
.LVL11:
.LBB33:
	.loc 2 105 0
#APP
	# 105 "../30_Bsw/Mpu/mpu_api.h" 1
	mtcr LO:0xFE04, %d15
	# 0 "" 2
#NO_APP
.LBE33:
	.loc 2 106 0
#APP
	# 106 "../30_Bsw/Mpu/mpu_api.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBB34:
	.loc 2 109 0
#APP
	# 109 "../30_Bsw/Mpu/mpu_api.h" 1
	mfcr %d15, LO:0xFE04
	# 0 "" 2
.LVL12:
#NO_APP
.LBE34:
	movh.a	%a15, hi:PSWReg_Rd0
	st.w	[%a15] lo:PSWReg_Rd0, %d15
.LBE31:
.LBE30:
	.loc 1 103 0
	ld.w	%d2, [%a15] lo:PSWReg_Rd0
	mov	%d15, 12288
.LVL13:
	and	%d15, %d2
	jz	%d15, .L28
	.loc 1 143 0
	mov	%d15, 2
	movh.a	%a15, hi:TRUSTED_Mpu_Err
.LVL14:
	st.h	[%a15] lo:TRUSTED_Mpu_Err, %d15
.LVL15:
.L20:
	rslcx
	rfe
.LVL16:
.L28:
.LBB35:
	.loc 1 106 0
	movh.a	%a12, hi:Isr_15usTick
	ld.hu	%d6, [%a12] lo:Isr_15usTick
	mov	%d4, 0
	mov	%d5, 1
	call	mg_vIsr_TimeMeasCalc.constprop.3
.LVL17:
	.loc 1 107 0
	call	IOHWSF_ACCESSPROT_vSwitchToSafeISR
	.loc 1 108 0
	ld.w	%d2, [%a15] lo:PSWReg_Rd0
	jz.t	%d2, 14, .L20
	.loc 1 111 0
	ld.hu	%d2, [%a12] lo:Isr_15usTick
	jnz	%d2, .L29
	.loc 1 115 0
	mov	%d15, 1
	.loc 1 114 0
	call	HsfbApp_Call15us
	.loc 1 116 0
	mov	%d6, 1
	.loc 1 115 0
	st.h	[%a12] lo:Isr_15usTick, %d15
.L26:
	.loc 1 129 0
	mov	%e4, 0
	.loc 1 131 0
	movh.a	%a15, hi:Pfm_flag
	.loc 1 129 0
	call	mg_vIsr_TimeMeasCalc.constprop.3
	.loc 1 131 0
	ld.bu	%d15, [%a15] lo:Pfm_flag
	jnz	%d15, .L20
	.loc 1 133 0
	movh.a	%a15, hi:Isr_15us_Fire_Count
	ld.hu	%d15, [%a15] lo:Isr_15us_Fire_Count
	mov.u	%d2, 65535
	jeq	%d15, %d2, .L20
	.loc 1 135 0
	add	%d15, 1
	st.h	[%a15] lo:Isr_15us_Fire_Count, %d15
	rslcx
	rfe
.L29:
	.loc 1 111 0
	jeq	%d2, 1, .L30
	.loc 1 126 0
	st.h	[%a12] lo:Isr_15usTick, %d15
	.loc 1 127 0
	mov	%d6, 0
	j	.L26
.L30:
	.loc 1 118 0
	call	HsfbApp_Call15us1
	.loc 1 119 0
	call	Gtm_PwmEnDis_Calc
	.loc 1 121 0
	mov	%d6, 0
	.loc 1 120 0
	st.h	[%a12] lo:Isr_15usTick, %d15
	.loc 1 121 0
	j	.L26
.LBE35:
.LFE203:
	.size	Isr_Call15us, .-Isr_Call15us
	.align 3
	.global	Isr_Call100us
	.type	Isr_Call100us, @function
Isr_Call100us:
.LFB204:
	.loc 1 160 0
.LVL18:
.LBB52:
.LBB53:
.LBB54:
	.loc 2 103 0
#APP
	# 103 "../30_Bsw/Mpu/mpu_api.h" 1
	mfcr %d15, LO:0xFE04
	# 0 "" 2
.LVL19:
#NO_APP
.LBE54:
	.loc 2 104 0
	insert	%d15, %d15, 0, 12, 2
.LVL20:
.LBB55:
	.loc 2 105 0
#APP
	# 105 "../30_Bsw/Mpu/mpu_api.h" 1
	mtcr LO:0xFE04, %d15
	# 0 "" 2
#NO_APP
.LBE55:
	.loc 2 106 0
#APP
	# 106 "../30_Bsw/Mpu/mpu_api.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBB56:
	.loc 2 109 0
#APP
	# 109 "../30_Bsw/Mpu/mpu_api.h" 1
	mfcr %d15, LO:0xFE04
	# 0 "" 2
.LVL21:
#NO_APP
.LBE56:
	movh.a	%a15, hi:PSWReg_Rd0
	st.w	[%a15] lo:PSWReg_Rd0, %d15
.LBE53:
.LBE52:
	.loc 1 164 0
	ld.w	%d2, [%a15] lo:PSWReg_Rd0
	mov	%d15, 12288
.LVL22:
	and	%d15, %d2
	jz	%d15, .L41
	.loc 1 247 0
	mov	%d15, 2
	movh.a	%a15, hi:TRUSTED_Mpu_Err
.LVL23:
	st.h	[%a15] lo:TRUSTED_Mpu_Err, %d15
.LVL24:
.L31:
	rslcx
	rfe
.LVL25:
.L41:
.LBB57:
	.loc 1 168 0
	mov	%d4, 1
	mov	%d5, 1
	mov	%d6, 0
	call	mg_vIsr_TimeMeasCalc.constprop.3
.LVL26:
	.loc 1 169 0
	call	IOHWSF_ACCESSPROT_vSwitchToSafeISR
	.loc 1 170 0
	ld.w	%d15, [%a15] lo:PSWReg_Rd0
	jz.t	%d15, 14, .L31
	.loc 1 174 0
	movh.a	%a15, hi:Gtm_WDIDisCnt
	.loc 1 172 0
	call	HsfbApp_Call100us
	.loc 1 173 0
	call	Gtm_CheckPwmStatus
	.loc 1 174 0
	ld.hu	%d15, [%a15] lo:Gtm_WDIDisCnt
	lt.u	%d15, %d15, 101
	jnz	%d15, .L34
	.loc 1 177 0
	mov	%d15, 1
	movh.a	%a15, hi:Flag_WDIDis
	st.h	[%a15] lo:Flag_WDIDis, %d15
.L34:
	.loc 1 179 0
	movh.a	%a15, hi:Pfm_Capture
	lea	%a15, [%a15] lo:Pfm_Capture
	ld.bu	%d15, [%a15] 12
	jeq	%d15, 3, .L35
	.loc 1 180 0
	movh.a	%a2, hi:Main_ResetCnt
	ld.hu	%d2, [%a2] lo:Main_ResetCnt
	jeq	%d2, 4, .L35
	.loc 1 181 0
	movh.a	%a2, hi:TRUSTED_Mpu_Err
	ld.hu	%d2, [%a2] lo:TRUSTED_Mpu_Err
	jnz	%d2, .L35
	.loc 1 195 0
	movh.a	%a2, hi:Isr_100us_Fire_Count
	ld.hu	%d2, [%a2] lo:Isr_100us_Fire_Count
	ge.u	%d3, %d2, 100
	jnz	%d3, .L39
	.loc 1 197 0
	ne	%d15, %d15, 15
	jnz	%d15, .L38
	.loc 1 197 0 is_stmt 0 discriminator 1
	movh.a	%a15, hi:Flag_WDIDis
	ld.hu	%d15, [%a15] lo:Flag_WDIDis
	jnz	%d15, .L38
	.loc 1 203 0 is_stmt 1
	movh.a	%a15, hi:Qspi_StrtUpTst_Sts
	.loc 1 201 0
	call	SBC_Triger100us
	.loc 1 203 0
	ld.w	%d15, [%a15] lo:Qspi_StrtUpTst_Sts
	add	%d15, -5
	.loc 1 202 0
	jge.u	%d15, 2, .L38
	.loc 1 206 0
	movh.a	%a15, hi:Qspi_TstSeqIndx
	.loc 1 205 0
	call	Qspi_SBC_WWDTest
	.loc 1 206 0
	ld.h	%d15, [%a15] lo:Qspi_TstSeqIndx
	add	%d15, 1
	st.h	[%a15] lo:Qspi_TstSeqIndx, %d15
	j	.L38
.L35:
	.loc 1 183 0
#APP
	# 183 "../30_Bsw/Scheduler/Scheduler_Asil.c" 1
	disable
	# 0 "" 2
#NO_APP
	movh.a	%a15, hi:1449999
	lea	%a15, [%a15] lo:1449999
.L37:
	.loc 1 186 0 discriminator 2
#APP
	# 186 "../30_Bsw/Scheduler/Scheduler_Asil.c" 1
	nop
	# 0 "" 2
#NO_APP
	loop	%a15, .L37
	.loc 1 184 0
	movh	%d15, 22
	addi	%d15, %d15, 8208
	movh.a	%a15, hi:WdgStopTrigger
	.loc 1 191 0
	mov	%d4, 70
	.loc 1 184 0
	st.w	[%a15] lo:WdgStopTrigger, %d15
	.loc 1 191 0
	call	IOHWSF_vDefaultErrorHandler
.L38:
	.loc 1 232 0
	mov	%e4, 1
	mov	%d6, 0
	.loc 1 234 0
	movh.a	%a15, hi:Pfm_flag
	.loc 1 232 0
	call	mg_vIsr_TimeMeasCalc.constprop.3
	.loc 1 234 0
	ld.bu	%d15, [%a15] lo:Pfm_flag
	jnz	%d15, .L31
	.loc 1 236 0
	movh.a	%a15, hi:Isr_100us_Fire_Count
	ld.hu	%d15, [%a15] lo:Isr_100us_Fire_Count
	mov.u	%d2, 65535
	jeq	%d15, %d2, .L31
	.loc 1 238 0
	add	%d15, 1
	st.h	[%a15] lo:Isr_100us_Fire_Count, %d15
	rslcx
	rfe
.L39:
	.loc 1 210 0
	eq	%d2, %d2, 100
	jnz	%d2, .L38
	.loc 1 213 0
	mov	%d15, -1
	st.b	[%a15] 12, %d15
	j	.L38
.LBE57:
.LFE204:
	.size	Isr_Call100us, .-Isr_Call100us
	.align 3
	.global	Isr_Call1ms
	.type	Isr_Call1ms, @function
Isr_Call1ms:
.LFB206:
	.loc 1 311 0
.LVL27:
.LBB118:
.LBB119:
.LBB120:
	.loc 2 103 0
#APP
	# 103 "../30_Bsw/Mpu/mpu_api.h" 1
	mfcr %d15, LO:0xFE04
	# 0 "" 2
.LVL28:
#NO_APP
.LBE120:
	.loc 2 104 0
	insert	%d15, %d15, 0, 12, 2
.LVL29:
.LBB121:
	.loc 2 105 0
#APP
	# 105 "../30_Bsw/Mpu/mpu_api.h" 1
	mtcr LO:0xFE04, %d15
	# 0 "" 2
#NO_APP
.LBE121:
	.loc 2 106 0
#APP
	# 106 "../30_Bsw/Mpu/mpu_api.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBB122:
	.loc 2 109 0
#APP
	# 109 "../30_Bsw/Mpu/mpu_api.h" 1
	mfcr %d15, LO:0xFE04
	# 0 "" 2
.LVL30:
#NO_APP
.LBE122:
	movh.a	%a15, hi:PSWReg_Rd0
	st.w	[%a15] lo:PSWReg_Rd0, %d15
.LBE119:
.LBE118:
	.loc 1 315 0
	ld.w	%d2, [%a15] lo:PSWReg_Rd0
	mov	%d15, 12288
.LVL31:
	and	%d15, %d2
	jz	%d15, .L52
	.loc 1 326 0
	mov	%d15, 2
	movh.a	%a2, hi:TRUSTED_Mpu_Err
	st.h	[%a2] lo:TRUSTED_Mpu_Err, %d15
.LVL32:
.L44:
.LBB123:
.LBB124:
	.loc 2 103 0
#APP
	# 103 "../30_Bsw/Mpu/mpu_api.h" 1
	mfcr %d15, LO:0xFE04
	# 0 "" 2
.LVL33:
	.loc 2 104 0
#NO_APP
	insert	%d15, %d15, 1, 12, 2
.LVL34:
.LBB125:
	.loc 2 105 0
#APP
	# 105 "../30_Bsw/Mpu/mpu_api.h" 1
	mtcr LO:0xFE04, %d15
	# 0 "" 2
#NO_APP
.LBE125:
	.loc 2 106 0
#APP
	# 106 "../30_Bsw/Mpu/mpu_api.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBB126:
	.loc 2 113 0
#APP
	# 113 "../30_Bsw/Mpu/mpu_api.h" 1
	mfcr %d15, LO:0xFE04
	# 0 "" 2
.LVL35:
#NO_APP
.LBE126:
	movh.a	%a2, hi:PSWReg_Rd1
	st.w	[%a2] lo:PSWReg_Rd1, %d15
.LBE124:
.LBE123:
	.loc 1 332 0
	ld.w	%d2, [%a2] lo:PSWReg_Rd1
	mov	%d15, 12288
.LVL36:
	and	%d15, %d2
	mov	%d2, 4096
	jeq	%d15, %d2, .L53
	.loc 1 339 0
	mov	%d15, 2
	movh.a	%a2, hi:TRUSTED_Mpu_Err
.LVL37:
	st.h	[%a2] lo:TRUSTED_Mpu_Err, %d15
.LVL38:
.L46:
.LBB127:
.LBB128:
	.loc 2 103 0
#APP
	# 103 "../30_Bsw/Mpu/mpu_api.h" 1
	mfcr %d15, LO:0xFE04
	# 0 "" 2
.LVL39:
	.loc 2 104 0
#NO_APP
	insert	%d15, %d15, 2, 12, 2
.LVL40:
.LBB129:
	.loc 2 105 0
#APP
	# 105 "../30_Bsw/Mpu/mpu_api.h" 1
	mtcr LO:0xFE04, %d15
	# 0 "" 2
#NO_APP
.LBE129:
	.loc 2 106 0
#APP
	# 106 "../30_Bsw/Mpu/mpu_api.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBB130:
	.loc 2 117 0
#APP
	# 117 "../30_Bsw/Mpu/mpu_api.h" 1
	mfcr %d15, LO:0xFE04
	# 0 "" 2
.LVL41:
#NO_APP
.LBE130:
	movh.a	%a2, hi:PSWReg_Rd2
	st.w	[%a2] lo:PSWReg_Rd2, %d15
.LBE128:
.LBE127:
	.loc 1 353 0
	ld.w	%d2, [%a2] lo:PSWReg_Rd2
	mov	%d15, 12288
.LVL42:
	and	%d15, %d2
	mov	%d2, 8192
	jeq	%d15, %d2, .L54
	.loc 1 362 0
	mov	%d15, 2
	movh.a	%a2, hi:TRUSTED_Mpu_Err
.LVL43:
	st.h	[%a2] lo:TRUSTED_Mpu_Err, %d15
.LVL44:
.L48:
.LBB131:
.LBB132:
.LBB133:
	.loc 2 103 0
#APP
	# 103 "../30_Bsw/Mpu/mpu_api.h" 1
	mfcr %d15, LO:0xFE04
	# 0 "" 2
.LVL45:
#NO_APP
.LBE133:
	.loc 2 104 0
	insert	%d15, %d15, 0, 12, 2
.LVL46:
.LBB134:
	.loc 2 105 0
#APP
	# 105 "../30_Bsw/Mpu/mpu_api.h" 1
	mtcr LO:0xFE04, %d15
	# 0 "" 2
#NO_APP
.LBE134:
	.loc 2 106 0
#APP
	# 106 "../30_Bsw/Mpu/mpu_api.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBB135:
	.loc 2 109 0
#APP
	# 109 "../30_Bsw/Mpu/mpu_api.h" 1
	mfcr %d15, LO:0xFE04
	# 0 "" 2
.LVL47:
#NO_APP
.LBE135:
	st.w	[%a15] lo:PSWReg_Rd0, %d15
.LBE132:
.LBE131:
	.loc 1 370 0
	ld.w	%d2, [%a15] lo:PSWReg_Rd0
	mov	%d15, 12288
.LVL48:
	and	%d15, %d2
	jnz	%d15, .L49
	.loc 1 373 0
	movh.a	%a15, hi:Trusted_UdsRstReq_Flag
.LVL49:
	ld.bu	%d2, [%a15] lo:Trusted_UdsRstReq_Flag
	jnz	%d2, .L55
	.loc 1 378 0
	mov	%e4, 2
	mov	%d6, 0
	.loc 1 379 0
	movh.a	%a15, hi:Pfm_flag
	.loc 1 378 0
	call	mg_vIsr_TimeMeasCalc.constprop.3
.LVL50:
	.loc 1 379 0
	ld.bu	%d15, [%a15] lo:Pfm_flag
	jnz	%d15, .L42
.L56:
	.loc 1 381 0
	movh.a	%a15, hi:Isr_1ms_Fire_Count
	ld.bu	%d15, [%a15] lo:Isr_1ms_Fire_Count
	eq	%d2, %d15, 255
	jnz	%d2, .L42
	.loc 1 383 0
	add	%d15, 1
	st.b	[%a15] lo:Isr_1ms_Fire_Count, %d15
	rslcx
	rfe
.LVL51:
.L49:
	.loc 1 390 0
	mov	%d15, 2
	movh.a	%a15, hi:TRUSTED_Mpu_Err
.LVL52:
	st.h	[%a15] lo:TRUSTED_Mpu_Err, %d15
.LVL53:
.L42:
	rslcx
	rfe
.LVL54:
.L52:
	.loc 1 318 0
	mov	%d4, 2
	mov	%d5, 1
	mov	%d6, 0
	call	mg_vIsr_TimeMeasCalc.constprop.3
.LVL55:
	.loc 1 320 0
	call	mg_vASIL_1msTask
	j	.L44
.LVL56:
.L55:
	.loc 1 375 0
	st.b	[%a15] lo:Trusted_UdsRstReq_Flag, %d15
	.loc 1 376 0
	call	Uds_ASILTask
.LVL57:
	.loc 1 378 0
	mov	%e4, 2
	mov	%d6, 0
	.loc 1 379 0
	movh.a	%a15, hi:Pfm_flag
	.loc 1 378 0
	call	mg_vIsr_TimeMeasCalc.constprop.3
	.loc 1 379 0
	ld.bu	%d15, [%a15] lo:Pfm_flag
	jz	%d15, .L56
	j	.L42
.LVL58:
.L53:
	.loc 1 335 0
	call	mg_vQmTaskCall
.LVL59:
	j	.L46
.LVL60:
.L54:
	.loc 1 356 0
	call	mg_vQmTaskCall
.LVL61:
	j	.L48
.LFE206:
	.size	Isr_Call1ms, .-Isr_Call1ms
	.align 3
	.global	Isr_Call10ms
	.type	Isr_Call10ms, @function
Isr_Call10ms:
.LFB207:
	.loc 1 406 0
.LVL62:
.LBB159:
.LBB160:
.LBB161:
	.loc 2 103 0
#APP
	# 103 "../30_Bsw/Mpu/mpu_api.h" 1
	mfcr %d15, LO:0xFE04
	# 0 "" 2
.LVL63:
#NO_APP
.LBE161:
	.loc 2 104 0
	insert	%d15, %d15, 0, 12, 2
.LVL64:
.LBB162:
	.loc 2 105 0
#APP
	# 105 "../30_Bsw/Mpu/mpu_api.h" 1
	mtcr LO:0xFE04, %d15
	# 0 "" 2
#NO_APP
.LBE162:
	.loc 2 106 0
#APP
	# 106 "../30_Bsw/Mpu/mpu_api.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBB163:
	.loc 2 109 0
#APP
	# 109 "../30_Bsw/Mpu/mpu_api.h" 1
	mfcr %d15, LO:0xFE04
	# 0 "" 2
.LVL65:
#NO_APP
.LBE163:
	movh.a	%a15, hi:PSWReg_Rd0
	st.w	[%a15] lo:PSWReg_Rd0, %d15
.LBE160:
.LBE159:
	.loc 1 410 0
	ld.w	%d2, [%a15] lo:PSWReg_Rd0
	mov	%d15, 12288
.LVL66:
	and	%d15, %d2
	jz	%d15, .L90
	.loc 1 438 0
	mov	%d15, 2
	movh.a	%a15, hi:TRUSTED_Mpu_Err
.LVL67:
	st.h	[%a15] lo:TRUSTED_Mpu_Err, %d15
	rslcx
	rfe
.LVL68:
.L90:
	.loc 1 414 0
	mov	%d4, 3
	mov	%d5, 1
	mov	%d6, 0
	call	mg_vIsr_TimeMeasCalc.constprop.3
.LVL69:
	.loc 1 415 0
	call	ComServ_10msTask
.LBB164:
.LBB165:
	.loc 1 639 0
	ld.w	%d15, 0xf0000024
	movh	%d2, 15404
	utof	%d15, %d15
	addi	%d2, %d2, 2097
	mul.f	%d15, %d15, %d2
	movh.a	%a3, hi:Main_HwVer
	lea	%a3, [%a3] lo:Main_HwVer
	ld.hu	%d2, [%a3] 12
	ftouz	%d15, %d15
	movh.a	%a15, hi:Isr_AppStatus
	insert	%d15, %d15, %d2, 4, 32-4
	lea	%a2, [%a15] lo:Isr_AppStatus
	.loc 1 649 0
	movh	%d3, 16128
	.loc 1 639 0
	st.h	[%a15] lo:Isr_AppStatus, %d15
	.loc 1 642 0
	movh.a	%a15, hi:HsfbPwm_Status
	ld.h	%d15, [%a15] lo:HsfbPwm_Status
	.loc 1 643 0
	movh.a	%a15, hi:HsfbPwm_ToMor
	lea	%a15, [%a15] lo:HsfbPwm_ToMor
	.loc 1 642 0
	st.h	[%a2] 4, %d15
	.loc 1 643 0
	ld.h	%d15, [%a15] 6
	.loc 1 658 0
	movh.a	%a15, hi:Isr_TimeMeas
	lea	%a15, [%a15] lo:Isr_TimeMeas
	.loc 1 650 0
	ld.w	%d2, [%a15] 108
	.loc 1 643 0
	st.h	[%a2] 6, %d15
.LVL70:
	.loc 1 650 0
	ld.w	%d15, [%a15] 112
	add.f	%d15, %d2, %d15
	.loc 1 655 0
	ld.w	%d2, [%a15] 116
	.loc 1 649 0
	mul.f	%d15, %d15, %d3
	.loc 1 655 0
	movh	%d3, 16592
	madd.f	%d15, %d2, %d15, %d3
	.loc 1 656 0
	ld.w	%d3, [%a15] 100
	movh	%d2, 15821
	addi	%d2, %d2, -13107
	madd.f	%d2, %d15, %d3, %d2
	.loc 1 657 0
	ld.w	%d3, [%a15] 104
	movh	%d15, 15396
	addi	%d15, %d15, -10486
	madd.f	%d2, %d2, %d3, %d15
	.loc 1 659 0
	movh	%d3, 17096
	.loc 1 655 0
	mul.f	%d2, %d2, %d15
.LVL71:
	.loc 1 659 0
	cmp.f	%d3, %d2, %d3
	jnz.t	%d3, 0, .L59
	ld.hu	%d15, [%a2] 2
.LVL72:
.L60:
	.loc 1 727 0
	movh.a	%a15, hi:Pma_AbortData
	lea	%a15, [%a15] lo:Pma_AbortData
	ld.bu	%d2, [%a15] 7
	jge.u	%d15, %d2, .L61
	.loc 1 729 0
	st.b	[%a15] 7, %d15
.L61:
	.loc 1 731 0
	ld.bu	%d2, [%a15] 8
	jge.u	%d2, %d15, .L62
	.loc 1 733 0
	st.b	[%a15] 8, %d15
.L62:
.LBE165:
.LBE164:
.LBB167:
.LBB168:
	.loc 1 751 0
	movh.a	%a15, hi:ComServ_DevRx
	lea	%a15, [%a15] lo:ComServ_DevRx
	ld.h	%d2, [%a15] 2
	and	%d2, %d2, 128
	extr.u	%d2, %d2, 0, 16
	jz	%d2, .L63
	.loc 1 753 0
	mov	%d15, 24570
	movh.a	%a15, hi:HsfbDiag_ErrMask
	lea	%a15, [%a15] lo:HsfbDiag_ErrMask
.LBE168:
.LBE167:
.LBB178:
.LBB179:
	.loc 1 774 0
	movh.a	%a4, hi:Safety_CfgError
.LBE179:
.LBE178:
.LBB191:
.LBB169:
	.loc 1 753 0
	st.h	[%a15] 6, %d15
.LBE169:
.LBE191:
.LBB192:
.LBB180:
	.loc 1 774 0
	ld.w	%d15, [%a4] lo:Safety_CfgError
	.loc 1 776 0
	movh.a	%a13, hi:CanE2E
	.loc 1 774 0
	ne	%d15, %d15, 0
	movh.a	%a3, hi:SafetyError
	.loc 1 776 0
	lea	%a13, [%a13] lo:CanE2E
	.loc 1 774 0
	st.b	[%a3] lo:SafetyError, %d15
	.loc 1 776 0
	ld.hu	%d15, [%a13] 86
.LBE180:
.LBE192:
.LBB193:
.LBB170:
	.loc 1 754 0
	mov	%d2, 0
.LBE170:
.LBE193:
.LBB194:
.LBB181:
	.loc 1 776 0
	ne	%d15, %d15, 0
	.loc 1 774 0
	lea	%a2, [%a3] lo:SafetyError
.LBE181:
.LBE194:
.LBB195:
.LBB171:
	.loc 1 754 0
	movh.a	%a15, hi:Qspi_SBCError
	st.w	[%a15] lo:Qspi_SBCError, %d2
.LBE171:
.LBE195:
.LBB196:
.LBB182:
	.loc 1 775 0
	st.b	[%a2] 1, %d2
	.loc 1 776 0
	st.b	[%a2] 2, %d15
	.loc 1 777 0
	st.b	[%a2] 3, %d2
.LVL73:
.L64:
	.loc 1 783 0
	jnz	%d15, .L91
.L65:
	.loc 1 789 0
	ld.w	%d15, [%a15] lo:Qspi_SBCError
	jz	%d15, .L89
	movh.a	%a15, hi:Qspi_StrtUpTst_Sts
	ld.w	%d2, [%a15] lo:Qspi_StrtUpTst_Sts
	ne	%d2, %d2, 8
	jz	%d2, .L92
	.loc 1 795 0
	mov	%d15, 0
.L89:
	movh.a	%a15, hi:Main_DebugErrCode
	st.h	[%a15] lo:Main_DebugErrCode, %d15
	.loc 1 814 0
	mov	%d15, 0
	movh.a	%a15, hi:Main_ResetCnt
	st.h	[%a15] lo:Main_ResetCnt, %d15
.L69:
.LBE182:
.LBE196:
	.loc 1 419 0
	call	Safety_Check10ms
	.loc 1 420 0
	call	HsfbApp_Call10ms
	.loc 1 422 0
	call	Qspi_SBC_Check10ms
	.loc 1 423 0
	movh.a	%a4, hi:Qspi_Test
	lea	%a4, [%a4] lo:Qspi_Test
	.loc 1 427 0
	movh.a	%a12, hi:Pfm_flag
	.loc 1 423 0
	call	Qspi_Cmd_Test10ms
	.loc 1 424 0
	call	Adc_ShortDetect_10ms
	.loc 1 425 0
	call	Port_OTP_AutoDiag10ms
	.loc 1 426 0
	call	Port_AuxPower_EnDis10ms
	.loc 1 427 0
	ld.bu	%d15, [%a12] lo:Pfm_flag
	jnz	%d15, .L71
	.loc 1 429 0
	movh.a	%a15, hi:Timer_value
	ld.w	%d2, [%a15] lo:Timer_value
	movh.a	%a2, hi:Timer_history
	.loc 1 430 0
	ld.w	%d4, 0xf0000014
	.loc 1 429 0
	st.w	[%a2] lo:Timer_history, %d2
.LBB197:
.LBB198:
	.loc 1 459 0
	movh.a	%a2, hi:Pfm_Capture
.LBE198:
.LBE197:
	.loc 1 430 0
	st.w	[%a15] lo:Timer_value, %d4
.LBB203:
.LBB199:
	.loc 1 459 0
	lea	%a15, [%a2] lo:Pfm_Capture
	st.b	[%a15] 12, %d15
	.loc 1 461 0
	ld.hu	%d15, [%a2] lo:Pfm_Capture
	ne	%d3, %d15, 10
	jz	%d3, .L93
	.loc 1 464 0
	movh	%d8, hi:Isr_15us_Fire_Count
	mov.a	%a3, %d8
	mov.u	%d5, 65535
	ld.hu	%d3, [%a3] lo:Isr_15us_Fire_Count
	movh.a	%a13, hi:Isr_100us_Fire_Count
	movh.a	%a14, hi:Isr_1ms_Fire_Count
	jeq	%d3, %d5, .L94
.L77:
	.loc 1 468 0
	mov	%d5, 0
	mov.a	%a3, %d8
	.loc 1 469 0
	ld.hu	%d6, [%a13] lo:Isr_100us_Fire_Count
	.loc 1 471 0
	ld.bu	%d7, [%a14] lo:Isr_1ms_Fire_Count
	.loc 1 467 0
	st.h	[%a15] 2, %d3
	.loc 1 468 0
	st.h	[%a3] lo:Isr_15us_Fire_Count, %d5
	.loc 1 469 0
	st.h	[%a15] 4, %d6
	.loc 1 470 0
	st.h	[%a13] lo:Isr_100us_Fire_Count, %d5
	.loc 1 471 0
	st.b	[%a15] 6, %d7
	.loc 1 472 0
	st.b	[%a14] lo:Isr_1ms_Fire_Count, %d5
	.loc 1 474 0
	jge.u	%d2, %d4, .L79
	.loc 1 476 0
	sub	%d2, %d4, %d2
	st.w	[%a15] 8, %d2
.L80:
	.loc 1 483 0
	addi	%d3, %d3, -401
	extr.u	%d3, %d3, 0, 16
	mov	%d2, 534
	jge.u	%d3, %d2, .L81
	.loc 1 484 0
	addi	%d6, %d6, -61
	extr.u	%d6, %d6, 0, 16
	ge.u	%d6, %d6, 79
	jz	%d6, .L95
.L81:
	.loc 1 492 0
	mov	%d2, 1
	.loc 1 493 0
	add	%d15, 1
	.loc 1 492 0
	st.b	[%a15] 12, %d2
	.loc 1 493 0
	st.h	[%a2] lo:Pfm_Capture, %d15
.L82:
	.loc 1 537 0
	ld.bu	%d15, [%a12] lo:Pfm_flag
	jne	%d15, 1, .L75
.L84:
	.loc 1 543 0
	mov	%d15, 0
	mov.a	%a3, %d8
	.loc 1 544 0
	st.h	[%a13] lo:Isr_100us_Fire_Count, %d15
	.loc 1 543 0
	st.h	[%a3] lo:Isr_15us_Fire_Count, %d15
	.loc 1 545 0
	st.b	[%a14] lo:Isr_1ms_Fire_Count, %d15
	.loc 1 546 0
	st.h	[%a15] 2, %d15
	.loc 1 547 0
	st.h	[%a15] 4, %d15
	.loc 1 548 0
	st.b	[%a15] 6, %d15
	.loc 1 549 0
	st.b	[%a12] lo:Pfm_flag, %d15
.L76:
.LBE199:
.LBE203:
	.loc 1 433 0
	mov	%e4, 3
	mov	%d6, 0
	call	mg_vIsr_TimeMeasCalc.constprop.3
	rslcx
	rfe
.LVL74:
.L59:
.LBB204:
.LBB166:
	.loc 1 661 0
	movh.a	%a15, hi:IsrTimeFil
	ld.w	%d3, [%a15] lo:IsrTimeFil
	sub.f	%d2, %d2, %d3
.LVL75:
	madd.f	%d2, %d3, %d2, %d15
	st.w	[%a15] lo:IsrTimeFil, %d2
	.loc 1 662 0
	ftouz	%d2, %d2
	extr.u	%d15, %d2, 0, 16
	st.h	[%a2] 2, %d2
	j	.L60
.L63:
.LBE166:
.LBE204:
.LBB205:
.LBB172:
	.loc 1 758 0
	mov	%d15, 24571
	movh.a	%a15, hi:HsfbDiag_ErrMask
	lea	%a15, [%a15] lo:HsfbDiag_ErrMask
.LBE172:
.LBE205:
.LBB206:
.LBB183:
	.loc 1 774 0
	movh.a	%a3, hi:Safety_CfgError
.LBE183:
.LBE206:
.LBB207:
.LBB173:
	.loc 1 758 0
	st.h	[%a15] 6, %d15
.LBE173:
.LBE207:
.LBB208:
.LBB184:
	.loc 1 774 0
	ld.w	%d15, [%a3] lo:Safety_CfgError
	.loc 1 776 0
	movh.a	%a13, hi:CanE2E
	.loc 1 774 0
	ne	%d15, %d15, 0
.LBE184:
.LBE208:
.LBB209:
.LBB174:
	.loc 1 758 0
	movh.a	%a15, hi:Qspi_SBCError
.LBE174:
.LBE209:
.LBB210:
.LBB185:
	.loc 1 774 0
	movh.a	%a2, hi:SafetyError
	.loc 1 776 0
	lea	%a13, [%a13] lo:CanE2E
.LBE185:
.LBE210:
.LBB211:
.LBB175:
	.loc 1 758 0
	ld.w	%d3, [%a15] lo:Qspi_SBCError
.LBE175:
.LBE211:
.LBB212:
.LBB186:
	.loc 1 774 0
	st.b	[%a2] lo:SafetyError, %d15
	.loc 1 776 0
	ld.hu	%d15, [%a13] 86
.LBE186:
.LBE212:
.LBB213:
.LBB176:
	.loc 1 758 0
	ne	%d3, %d3, 0
.LBE176:
.LBE213:
.LBB214:
.LBB187:
	.loc 1 776 0
	ne	%d15, %d15, 0
	.loc 1 774 0
	lea	%a12, [%a2] lo:SafetyError
	.loc 1 775 0
	st.b	[%a12] 1, %d3
	.loc 1 776 0
	st.b	[%a12] 2, %d15
	.loc 1 777 0
	st.b	[%a12] 3, %d2
.LBE187:
.LBE214:
.LBB215:
.LBB177:
	.loc 1 758 0
	lea	%a4, [%a15] lo:Qspi_SBCError
.LBE177:
.LBE215:
.LBB216:
.LBB188:
	.loc 1 779 0
	jz	%d3, .L64
	movh.a	%a2, hi:Qspi_StrtUpTst_Sts
	ld.w	%d2, [%a2] lo:Qspi_StrtUpTst_Sts
	ne	%d2, %d2, 8
	jnz	%d2, .L64
	.loc 1 781 0
	call	Pma_vGetQspiSts
.LVL76:
	ld.bu	%d15, [%a12] 2
	j	.L64
.L71:
.LBE188:
.LBE216:
.LBB217:
.LBB200:
	.loc 1 524 0
	movh.a	%a2, hi:Pfm_Capture
	lea	%a15, [%a2] lo:Pfm_Capture
	.loc 1 521 0
	jeq	%d15, 1, .L74
	ld.bu	%d15, [%a15] 12
	movh	%d8, hi:Isr_15us_Fire_Count
	.loc 1 535 0
	ne	%d2, %d15, 3
	and.ne	%d2, %d15, 15
	movh.a	%a13, hi:Isr_100us_Fire_Count
	movh.a	%a14, hi:Isr_1ms_Fire_Count
	jz	%d2, .L76
.L75:
	.loc 1 540 0
	mov.aa	%a4, %a15
	call	Pma_vGetPfmSts
	j	.L84
.L91:
.LBE200:
.LBE217:
.LBB218:
.LBB189:
	.loc 1 785 0
	mov.aa	%a4, %a13
	call	Pma_vGetE2eSts
	j	.L65
.L79:
.LBE189:
.LBE218:
.LBB219:
.LBB201:
	.loc 1 480 0
	not	%d2
	add	%d4, %d2
	st.w	[%a15] 8, %d4
	j	.L80
.L95:
	.loc 1 485 0
	add	%d7, -7
	and	%d7, %d7, 255
	jge.u	%d7, 7, .L81
	.loc 1 486 0
	ld.w	%d2, [%a15] 8
	mov.u	%d3, 49999
	addi	%d2, %d2, 28035
	addih	%d2, %d2, 65535
	jge.u	%d2, %d3, .L81
	.loc 1 488 0
	mov	%d15, 15
	st.b	[%a15] 12, %d15
	j	.L76
.L74:
	.loc 1 524 0
	mov	%d15, 0
	.loc 1 527 0
	movh	%d8, hi:Isr_15us_Fire_Count
	.loc 1 528 0
	movh.a	%a13, hi:Isr_100us_Fire_Count
	.loc 1 524 0
	st.b	[%a15] 12, %d15
	.loc 1 525 0
	mov	%d15, 0
	.loc 1 526 0
	ld.w	%d2, 0xf0000014
	.loc 1 529 0
	movh.a	%a14, hi:Isr_1ms_Fire_Count
	.loc 1 525 0
	st.h	[%a2] lo:Pfm_Capture, %d15
	.loc 1 526 0
	movh.a	%a2, hi:Timer_value
	st.w	[%a2] lo:Timer_value, %d2
	.loc 1 527 0
	mov.a	%a2, %d8
	.loc 1 528 0
	st.h	[%a13] lo:Isr_100us_Fire_Count, %d15
	.loc 1 527 0
	st.h	[%a2] lo:Isr_15us_Fire_Count, %d15
	.loc 1 529 0
	st.b	[%a14] lo:Isr_1ms_Fire_Count, %d15
	.loc 1 530 0
	st.h	[%a15] 2, %d15
	.loc 1 531 0
	st.h	[%a15] 4, %d15
	.loc 1 532 0
	st.b	[%a15] 6, %d15
	j	.L82
.L93:
	.loc 1 506 0
	mov	%d15, 3
	st.b	[%a15] 12, %d15
	.loc 1 507 0
	mov	%d15, 2
	st.b	[%a12] lo:Pfm_flag, %d15
	j	.L76
.L92:
.LBE201:
.LBE219:
.LBB220:
.LBB190:
	.loc 1 791 0
	movh.a	%a15, hi:Main_DebugErrCode
	st.h	[%a15] lo:Main_DebugErrCode, %d15
	.loc 1 801 0
	mov	%d2, 8192
	jeq	%d15, %d2, .L69
	.loc 1 804 0
	movh.a	%a15, hi:Main_ResetCnt
	ld.h	%d15, [%a15] lo:Main_ResetCnt
	add	%d15, 1
	st.h	[%a15] lo:Main_ResetCnt, %d15
	j	.L69
.L94:
.LBE190:
.LBE220:
.LBB221:
.LBB202:
	.loc 1 464 0
	ld.hu	%d5, [%a13] lo:Isr_100us_Fire_Count
	jne	%d5, %d3, .L77
	ld.bu	%d5, [%a14] lo:Isr_1ms_Fire_Count
	eq	%d5, %d5, 255
	jz	%d5, .L77
	.loc 1 499 0
	mov	%d2, 2
	.loc 1 500 0
	add	%d15, 1
	.loc 1 499 0
	st.b	[%a15] 12, %d2
	.loc 1 500 0
	st.h	[%a2] lo:Pfm_Capture, %d15
	j	.L82
.LBE202:
.LBE221:
.LFE207:
	.size	Isr_Call10ms, .-Isr_Call10ms
	.section .bss.MPU_ASIL_VAR_NOINIT,"aw",@nobits
	.align 3
	.type	i, @object
	.size	i, 1
i:
	.zero	1
	.global	DebugCap
	.align 3
	.type	DebugCap, @object
	.size	DebugCap, 100
DebugCap:
	.zero	100
	.global	Qspi_Test
	.align 3
	.type	Qspi_Test, @object
	.size	Qspi_Test, 6
Qspi_Test:
	.zero	6
	.global	Isr_TimeMeas
	.align 3
	.type	Isr_TimeMeas, @object
	.size	Isr_TimeMeas, 140
Isr_TimeMeas:
	.zero	140
	.global	SafetyError
	.align 3
	.type	SafetyError, @object
	.size	SafetyError, 4
SafetyError:
	.zero	4
	.global	Isr_100usTick
	.align 3
	.type	Isr_100usTick, @object
	.size	Isr_100usTick, 2
Isr_100usTick:
	.zero	2
	.global	Isr_15usTick
	.align 3
	.type	Isr_15usTick, @object
	.size	Isr_15usTick, 2
Isr_15usTick:
	.zero	2
	.global	Main_ResetCnt
	.align 3
	.type	Main_ResetCnt, @object
	.size	Main_ResetCnt, 2
Main_ResetCnt:
	.zero	2
	.global	Main_DebugErrCode
	.align 3
	.type	Main_DebugErrCode, @object
	.size	Main_DebugErrCode, 2
Main_DebugErrCode:
	.zero	2
	.global	IsrTimeFil
	.align 3
	.type	IsrTimeFil, @object
	.size	IsrTimeFil, 4
IsrTimeFil:
	.zero	4
	.global	Pfm_Capture
	.align 3
	.type	Pfm_Capture, @object
	.size	Pfm_Capture, 16
Pfm_Capture:
	.zero	16
	.global	Isr_AppStatus
	.align 3
	.type	Isr_AppStatus, @object
	.size	Isr_AppStatus, 8
Isr_AppStatus:
	.zero	8
	.global	CpuLoadSts
	.align 3
	.type	CpuLoadSts, @object
	.size	CpuLoadSts, 20
CpuLoadSts:
	.zero	20
	.section .data.MPU_ASIL_VAR_INIT,"aw",@progbits
	.align 3
	.type	Pfm_flag, @object
	.size	Pfm_flag, 1
Pfm_flag:
	.byte	1
	.align 3
	.type	Isr_15us_Fire_Count, @object
	.size	Isr_15us_Fire_Count, 2
Isr_15us_Fire_Count:
	.zero	2
	.align 3
	.type	WdgStopTrigger, @object
	.size	WdgStopTrigger, 4
WdgStopTrigger:
	.word	-1
	.align 3
	.type	Isr_100us_Fire_Count, @object
	.size	Isr_100us_Fire_Count, 2
Isr_100us_Fire_Count:
	.zero	2
	.align 3
	.type	Qspi_TstSeqIndx, @object
	.size	Qspi_TstSeqIndx, 2
Qspi_TstSeqIndx:
	.short	-1
	.align 3
	.type	Isr_1ms_Fire_Count, @object
	.size	Isr_1ms_Fire_Count, 1
Isr_1ms_Fire_Count:
	.zero	1
	.section .bss.MPU_ASIL_VAR_NOINIT
	.align 3
	.type	Comm_u16CanErrCode, @object
	.size	Comm_u16CanErrCode, 2
Comm_u16CanErrCode:
	.zero	2
	.section .data.MPU_ASIL_VAR_INIT
	.align 3
	.type	Timer_value, @object
	.size	Timer_value, 4
Timer_value:
	.zero	4
	.align 3
	.type	Timer_history, @object
	.size	Timer_history, 4
Timer_history:
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
	.uaword	.LFB205
	.uaword	.LFE205-.LFB205
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB215
	.uaword	.LFE215-.LFB215
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
.section .text,"ax",@progbits
.Letext0:
	.file 3 "../30_Bsw/Common/rtwtypes.h"
	.file 4 "../30_Bsw/Common/Platform_Types.h"
	.file 5 "../30_Bsw/Common/TC21x/IfxCpu_regdef.h"
	.file 6 "../30_Bsw/Safety/Safety_cfg.h"
	.file 7 "../30_Bsw/Mcal/Can/can_cfg.h"
	.file 8 "../30_Bsw/Mcal/Can/can_driver.h"
	.file 9 "../30_Bsw/ComStack/ComServ/ComServ_api.h"
	.file 10 "../30_Bsw/Common/TC21x/IfxStm_regdef.h"
	.file 11 "../40_Appl/HsfbPwm/HsfbPwm_struct.h"
	.file 12 "../40_Appl/HsfbDiag/HsfbDiag_struct.h"
	.file 13 "../40_Appl/HsfbApp/HsfbApp_struct.h"
	.file 14 "../30_Bsw/Main/Main_api.h"
	.file 15 "../30_Bsw/Mcal/Qspi/Qspi.h"
	.file 16 "../30_Bsw/Scheduler/Scheduler_api.h"
	.file 17 "../30_Bsw/iohw/Static/iohwsf.h"
	.file 18 "../30_Bsw/Pma/Pma_cfg.h"
	.file 19 "../30_Bsw/Pma/Pma_api.h"
	.file 20 "../40_Appl/HsfbDiag/HsfbDiag.h"
	.file 21 "../40_Appl/HsfbPwm/HsfbPwm.h"
	.file 22 "../30_Bsw/Mcal/Gtm/Gtm_api.h"
	.file 23 "../30_Bsw/ComStack/Uds/Uds.h"
	.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x311f
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.6.3 build on 2013-05-17"
	.byte	0x1
	.string	"../30_Bsw/Scheduler/Scheduler_Asil.c"
	.string	"D:\\\\SVN\\\\IPB-11Kw\\\\LvDc-C01R0P0-Ceramicheater\\\\20_Make"
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_ranges0+0x120
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x3
	.string	"uint8_T"
	.byte	0x3
	.byte	0x51
	.uaword	0xb7
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
	.byte	0x3
	.byte	0x53
	.uaword	0xe5
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.string	"uint32_T"
	.byte	0x3
	.byte	0x55
	.uaword	0x112
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x3
	.string	"real32_T"
	.byte	0x3
	.byte	0x56
	.uaword	0x132
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
	.byte	0x3
	.byte	0x5f
	.uaword	0xb7
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
	.byte	0x3
	.byte	0x7d
	.uaword	0xa8
	.uleb128 0x3
	.string	"u16"
	.byte	0x3
	.byte	0x7f
	.uaword	0xd5
	.uleb128 0x3
	.string	"u32"
	.byte	0x3
	.byte	0x81
	.uaword	0x102
	.uleb128 0x3
	.string	"f32"
	.byte	0x3
	.byte	0x82
	.uaword	0x122
	.uleb128 0x3
	.string	"bit"
	.byte	0x3
	.byte	0x84
	.uaword	0x145
	.uleb128 0x3
	.string	"uint8"
	.byte	0x4
	.byte	0x5b
	.uaword	0xb7
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x4
	.uaword	0x112
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.string	"long long int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.string	"long long unsigned int"
	.uleb128 0x5
	.string	"_Ifx_CPU_PSW_Bits"
	.byte	0x4
	.byte	0x5
	.uahalf	0x204
	.uaword	0x2f5
	.uleb128 0x6
	.string	"CDC"
	.byte	0x5
	.uahalf	0x206
	.uaword	0x1c2
	.byte	0x4
	.byte	0x7
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.string	"CDE"
	.byte	0x5
	.uahalf	0x207
	.uaword	0x1c2
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.string	"GW"
	.byte	0x5
	.uahalf	0x208
	.uaword	0x1c2
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.string	"IS"
	.byte	0x5
	.uahalf	0x209
	.uaword	0x1c2
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.string	"IO"
	.byte	0x5
	.uahalf	0x20a
	.uaword	0x1c2
	.byte	0x4
	.byte	0x2
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.string	"PRS"
	.byte	0x5
	.uahalf	0x20b
	.uaword	0x1c2
	.byte	0x4
	.byte	0x2
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.string	"S"
	.byte	0x5
	.uahalf	0x20c
	.uaword	0x1c2
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.string	"reserved_15"
	.byte	0x5
	.uahalf	0x20d
	.uaword	0x1c2
	.byte	0x4
	.byte	0xc
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.string	"SAV"
	.byte	0x5
	.uahalf	0x20e
	.uaword	0x1c2
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.string	"AV"
	.byte	0x5
	.uahalf	0x20f
	.uaword	0x1c2
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.string	"SV"
	.byte	0x5
	.uahalf	0x210
	.uaword	0x1c2
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.string	"V"
	.byte	0x5
	.uahalf	0x211
	.uaword	0x1c2
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.string	"C"
	.byte	0x5
	.uahalf	0x212
	.uaword	0x1c2
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x7
	.string	"Ifx_CPU_PSW_Bits"
	.byte	0x5
	.uahalf	0x213
	.uaword	0x1f2
	.uleb128 0x8
	.byte	0x4
	.byte	0x5
	.uahalf	0x467
	.uaword	0x336
	.uleb128 0x9
	.string	"U"
	.byte	0x5
	.uahalf	0x469
	.uaword	0x112
	.uleb128 0x9
	.string	"I"
	.byte	0x5
	.uahalf	0x46a
	.uaword	0xfb
	.uleb128 0x9
	.string	"B"
	.byte	0x5
	.uahalf	0x46b
	.uaword	0x2f5
	.byte	0
	.uleb128 0x7
	.string	"Ifx_CPU_PSW"
	.byte	0x5
	.uahalf	0x46c
	.uaword	0x30e
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x4
	.byte	0x6
	.byte	0x49
	.uaword	0x4a0
	.uleb128 0xb
	.string	"ExtVREG_MON"
	.byte	0x6
	.byte	0x4b
	.uaword	0x19e
	.byte	0x1
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"ExtV13_MON"
	.byte	0x6
	.byte	0x4c
	.uaword	0x19e
	.byte	0x1
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"BANDGAP_MON"
	.byte	0x6
	.byte	0x4d
	.uaword	0x19e
	.byte	0x1
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"EVR_CFGMON"
	.byte	0x6
	.byte	0x4e
	.uaword	0x19e
	.byte	0x1
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"SystemPLL_CLKMON"
	.byte	0x6
	.byte	0x50
	.uaword	0x19e
	.byte	0x1
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"SRI_CLKMON"
	.byte	0x6
	.byte	0x51
	.uaword	0x19e
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"SPB_CLKMON"
	.byte	0x6
	.byte	0x52
	.uaword	0x19e
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"GTM_CLKMON"
	.byte	0x6
	.byte	0x53
	.uaword	0x19e
	.byte	0x1
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"SBCU_InitCheck"
	.byte	0x6
	.byte	0x55
	.uaword	0x19e
	.byte	0x1
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xb
	.string	"WDT_InitCheck"
	.byte	0x6
	.byte	0x56
	.uaword	0x19e
	.byte	0x1
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xb
	.string	"RESET_SSCheck"
	.byte	0x6
	.byte	0x57
	.uaword	0x19e
	.byte	0x1
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xb
	.string	"Pri_PWM_IOM"
	.byte	0x6
	.byte	0x59
	.uaword	0x19e
	.byte	0x1
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xb
	.string	"Reserved"
	.byte	0x6
	.byte	0x5b
	.uaword	0x188
	.byte	0x4
	.byte	0x13
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xc
	.uaword	.LASF0
	.byte	0x6
	.byte	0x5c
	.uaword	0x34a
	.uleb128 0xd
	.uaword	.LASF1
	.byte	0x4
	.byte	0x6
	.byte	0x5e
	.uaword	0x4ce
	.uleb128 0xe
	.string	"all"
	.byte	0x6
	.byte	0x5f
	.uaword	0x188
	.uleb128 0xe
	.string	"bit"
	.byte	0x6
	.byte	0x60
	.uaword	0x4a0
	.byte	0
	.uleb128 0xc
	.uaword	.LASF1
	.byte	0x6
	.byte	0x61
	.uaword	0x4ab
	.uleb128 0xf
	.byte	0x4
	.byte	0x7
	.uahalf	0x469
	.uaword	0x5c1
	.uleb128 0x10
	.string	"CAN_RX_COM_WAKEUPSLEEPMANAGEMENT_IDX"
	.sleb128 0
	.uleb128 0x10
	.string	"CAN_RX_HVDC_SAFETYMEASURE_IDX"
	.sleb128 1
	.uleb128 0x10
	.string	"CAN_RX_HTB_CMD_IDX"
	.sleb128 2
	.uleb128 0x10
	.string	"CAN_RX_PARAMETER_COM_DCDC_IDX"
	.sleb128 3
	.uleb128 0x10
	.string	"CAN_RX_DCDC_HSFB_DIAG_REQ_IDX"
	.sleb128 4
	.uleb128 0x10
	.string	"CAN_RX_DCDC_DEV_CMD_IDX"
	.sleb128 5
	.uleb128 0x10
	.string	"CAN_RX_DCDC_CMD_IDX"
	.sleb128 6
	.uleb128 0x10
	.string	"CAN_RX_MSG_SIZE"
	.sleb128 7
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.byte	0x7
	.uahalf	0x474
	.uaword	0x796
	.uleb128 0x10
	.string	"CAN_TX_LVDC_PMA_ERRCODE_IDX"
	.sleb128 0
	.uleb128 0x10
	.string	"CAN_TX_DCDC_HTB_MEASURE_IDX"
	.sleb128 1
	.uleb128 0x10
	.string	"CAN_TX_LVDC_WAKEUPSLEEPMANAGEMENT_IDX"
	.sleb128 2
	.uleb128 0x10
	.string	"CAN_TX_LVDC_SAFETYMEASURE_IDX"
	.sleb128 3
	.uleb128 0x10
	.string	"CAN_TX_DCDC_MEASURE4_IDX"
	.sleb128 4
	.uleb128 0x10
	.string	"CAN_TX_DCDC_STATUS_ERRCODE_IDX"
	.sleb128 5
	.uleb128 0x10
	.string	"CAN_TX_PARAMETER_DCDC_COM_IDX"
	.sleb128 6
	.uleb128 0x10
	.string	"CAN_TX_DCDC_HSFB_DIAG_RESP_IDX"
	.sleb128 7
	.uleb128 0x10
	.string	"CAN_TX_DCDC_MEASURE2_IDX"
	.sleb128 8
	.uleb128 0x10
	.string	"CAN_TX_LVDC_PMA_ERRSRC_IDX"
	.sleb128 9
	.uleb128 0x10
	.string	"CAN_TX_DCDC_SCOPE1_IDX"
	.sleb128 10
	.uleb128 0x10
	.string	"CAN_TX_DCDC_SCOPE0_IDX"
	.sleb128 11
	.uleb128 0x10
	.string	"CAN_TX_DCDC_STATUS_IDX"
	.sleb128 12
	.uleb128 0x10
	.string	"CAN_TX_DCDC_MEASURE3_IDX"
	.sleb128 13
	.uleb128 0x10
	.string	"CAN_TX_DCDC_MEASURE_IDX"
	.sleb128 14
	.uleb128 0x10
	.string	"CAN_TX_MSG_SIZE"
	.sleb128 15
	.byte	0
	.uleb128 0xa
	.uaword	.LASF2
	.byte	0x2
	.byte	0x8
	.byte	0x29
	.uaword	0x7be
	.uleb128 0x11
	.string	"BZ"
	.byte	0x8
	.byte	0x2a
	.uaword	0x1a9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"CRC"
	.byte	0x8
	.byte	0x2b
	.uaword	0x1a9
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0
	.uleb128 0xc
	.uaword	.LASF2
	.byte	0x8
	.byte	0x2c
	.uaword	0x796
	.uleb128 0xa
	.uaword	.LASF3
	.byte	0x5a
	.byte	0x8
	.byte	0x2e
	.uaword	0x852
	.uleb128 0x11
	.string	"TxData"
	.byte	0x8
	.byte	0x2f
	.uaword	0x852
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF4
	.byte	0x8
	.byte	0x30
	.uaword	0x862
	.byte	0x2
	.byte	0x23
	.uleb128 0x1e
	.uleb128 0x11
	.string	"RxErr"
	.byte	0x8
	.byte	0x31
	.uaword	0x862
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x11
	.string	"RxErrCnt"
	.byte	0x8
	.byte	0x32
	.uaword	0x872
	.byte	0x2
	.byte	0x23
	.uleb128 0x3a
	.uleb128 0x11
	.string	"RxErrSign"
	.byte	0x8
	.byte	0x33
	.uaword	0x872
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x11
	.string	"RxErrOut"
	.byte	0x8
	.byte	0x34
	.uaword	0x17d
	.byte	0x2
	.byte	0x23
	.uleb128 0x56
	.uleb128 0x11
	.string	"RxErrSum"
	.byte	0x8
	.byte	0x35
	.uaword	0x17d
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.byte	0
	.uleb128 0x13
	.uaword	0x7be
	.uaword	0x862
	.uleb128 0x14
	.uaword	0x156
	.byte	0xe
	.byte	0
	.uleb128 0x13
	.uaword	0x7be
	.uaword	0x872
	.uleb128 0x14
	.uaword	0x156
	.byte	0x6
	.byte	0
	.uleb128 0x13
	.uaword	0x17d
	.uaword	0x882
	.uleb128 0x14
	.uaword	0x156
	.byte	0x6
	.byte	0
	.uleb128 0xc
	.uaword	.LASF3
	.byte	0x8
	.byte	0x36
	.uaword	0x7c9
	.uleb128 0xa
	.uaword	.LASF5
	.byte	0x6
	.byte	0x9
	.byte	0x31
	.uaword	0x943
	.uleb128 0xb
	.string	"HsfbFreq"
	.byte	0x9
	.byte	0x32
	.uaword	0x17d
	.byte	0x2
	.byte	0xe
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"Debug2"
	.byte	0x9
	.byte	0x33
	.uaword	0x17d
	.byte	0x2
	.byte	0x2
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"SrCtrl"
	.byte	0x9
	.byte	0x34
	.uaword	0x17d
	.byte	0x2
	.byte	0xc
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xb
	.string	"Debug1"
	.byte	0x9
	.byte	0x35
	.uaword	0x17d
	.byte	0x2
	.byte	0x2
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x15
	.string	"HsfbSweep"
	.byte	0x9
	.byte	0x36
	.uaword	0x17d
	.byte	0x2
	.byte	0x8
	.uaxword	0xfffffffffffffffa
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xb
	.string	"Sr1En"
	.byte	0x9
	.byte	0x37
	.uaword	0x17d
	.byte	0x2
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"Sr2En"
	.byte	0x9
	.byte	0x38
	.uaword	0x17d
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"Debug"
	.byte	0x9
	.byte	0x39
	.uaword	0x17d
	.byte	0x2
	.byte	0x8
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0xc
	.uaword	.LASF5
	.byte	0x9
	.byte	0x3a
	.uaword	0x88d
	.uleb128 0xa
	.uaword	.LASF6
	.byte	0x6
	.byte	0x9
	.byte	0x3c
	.uaword	0xa43
	.uleb128 0xb
	.string	"JitterDis"
	.byte	0x9
	.byte	0x3e
	.uaword	0x17d
	.byte	0x2
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"FreqRate"
	.byte	0x9
	.byte	0x3f
	.uaword	0x17d
	.byte	0x2
	.byte	0x7
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"FreqRange"
	.byte	0x9
	.byte	0x40
	.uaword	0x17d
	.byte	0x2
	.byte	0x6
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x16
	.uaword	.LASF7
	.byte	0x9
	.byte	0x41
	.uaword	0x17d
	.byte	0x2
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"TestPulseEn"
	.byte	0x9
	.byte	0x42
	.uaword	0x17d
	.byte	0x2
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"FreqPeriod"
	.byte	0x9
	.byte	0x44
	.uaword	0x17d
	.byte	0x2
	.byte	0x7
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xb
	.string	"ErrorDis"
	.byte	0x9
	.byte	0x45
	.uaword	0x17d
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xb
	.string	"StopWDI"
	.byte	0x9
	.byte	0x46
	.uaword	0x17d
	.byte	0x2
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xb
	.string	"StopFSP"
	.byte	0x9
	.byte	0x47
	.uaword	0x17d
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x16
	.uaword	.LASF8
	.byte	0x9
	.byte	0x48
	.uaword	0x17d
	.byte	0x2
	.byte	0x6
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x16
	.uaword	.LASF9
	.byte	0x9
	.byte	0x4a
	.uaword	0x17d
	.byte	0x2
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0xc
	.uaword	.LASF6
	.byte	0x9
	.byte	0x4b
	.uaword	0x94e
	.uleb128 0xd
	.uaword	.LASF10
	.byte	0x6
	.byte	0x9
	.byte	0x4d
	.uaword	0xa7a
	.uleb128 0x17
	.uaword	.LASF4
	.byte	0x9
	.byte	0x4e
	.uaword	0xa7a
	.uleb128 0xe
	.string	"B1"
	.byte	0x9
	.byte	0x4f
	.uaword	0x943
	.uleb128 0xe
	.string	"B2"
	.byte	0x9
	.byte	0x50
	.uaword	0xa43
	.byte	0
	.uleb128 0x13
	.uaword	0x173
	.uaword	0xa8a
	.uleb128 0x14
	.uaword	0x156
	.byte	0x5
	.byte	0
	.uleb128 0xc
	.uaword	.LASF10
	.byte	0x9
	.byte	0x51
	.uaword	0xa4e
	.uleb128 0x18
	.string	"_Ifx_STM_TIM0_Bits"
	.byte	0x4
	.byte	0xa
	.byte	0xc0
	.uaword	0xac6
	.uleb128 0xb
	.string	"STM31_0"
	.byte	0xa
	.byte	0xc2
	.uaword	0x112
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_TIM0_Bits"
	.byte	0xa
	.byte	0xc3
	.uaword	0xa95
	.uleb128 0x18
	.string	"_Ifx_STM_TIM1_Bits"
	.byte	0x4
	.byte	0xa
	.byte	0xcc
	.uaword	0xb10
	.uleb128 0xb
	.string	"STM35_4"
	.byte	0xa
	.byte	0xce
	.uaword	0x112
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_TIM1_Bits"
	.byte	0xa
	.byte	0xcf
	.uaword	0xadf
	.uleb128 0x18
	.string	"_Ifx_STM_TIM5_Bits"
	.byte	0x4
	.byte	0xa
	.byte	0xe4
	.uaword	0xb5b
	.uleb128 0xb
	.string	"STM51_20"
	.byte	0xa
	.byte	0xe6
	.uaword	0x112
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_TIM5_Bits"
	.byte	0xa
	.byte	0xe7
	.uaword	0xb29
	.uleb128 0x8
	.byte	0x4
	.byte	0xa
	.uahalf	0x165
	.uaword	0xb9c
	.uleb128 0x9
	.string	"U"
	.byte	0xa
	.uahalf	0x167
	.uaword	0x112
	.uleb128 0x9
	.string	"I"
	.byte	0xa
	.uahalf	0x168
	.uaword	0xfb
	.uleb128 0x9
	.string	"B"
	.byte	0xa
	.uahalf	0x169
	.uaword	0xac6
	.byte	0
	.uleb128 0x7
	.string	"Ifx_STM_TIM0"
	.byte	0xa
	.uahalf	0x16a
	.uaword	0xb74
	.uleb128 0x8
	.byte	0x4
	.byte	0xa
	.uahalf	0x175
	.uaword	0xbd9
	.uleb128 0x9
	.string	"U"
	.byte	0xa
	.uahalf	0x177
	.uaword	0x112
	.uleb128 0x9
	.string	"I"
	.byte	0xa
	.uahalf	0x178
	.uaword	0xfb
	.uleb128 0x9
	.string	"B"
	.byte	0xa
	.uahalf	0x179
	.uaword	0xb10
	.byte	0
	.uleb128 0x7
	.string	"Ifx_STM_TIM1"
	.byte	0xa
	.uahalf	0x17a
	.uaword	0xbb1
	.uleb128 0x8
	.byte	0x4
	.byte	0xa
	.uahalf	0x195
	.uaword	0xc16
	.uleb128 0x9
	.string	"U"
	.byte	0xa
	.uahalf	0x197
	.uaword	0x112
	.uleb128 0x9
	.string	"I"
	.byte	0xa
	.uahalf	0x198
	.uaword	0xfb
	.uleb128 0x9
	.string	"B"
	.byte	0xa
	.uahalf	0x199
	.uaword	0xb5b
	.byte	0
	.uleb128 0x7
	.string	"Ifx_STM_TIM5"
	.byte	0xa
	.uahalf	0x19a
	.uaword	0xbee
	.uleb128 0x19
	.byte	0xc
	.byte	0xb
	.byte	0xf
	.uaword	0xc5f
	.uleb128 0x11
	.string	"Duty"
	.byte	0xb
	.byte	0x10
	.uaword	0x193
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"Max"
	.byte	0xb
	.byte	0x11
	.uaword	0x193
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.string	"Min"
	.byte	0xb
	.byte	0x12
	.uaword	0x193
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x3
	.string	"HSFBPWM_S_DUTY"
	.byte	0xb
	.byte	0x13
	.uaword	0xc2b
	.uleb128 0x19
	.byte	0x4
	.byte	0xb
	.byte	0x15
	.uaword	0xca7
	.uleb128 0x11
	.string	"En"
	.byte	0xb
	.byte	0x16
	.uaword	0x19e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"Dis"
	.byte	0xb
	.byte	0x17
	.uaword	0x19e
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x11
	.string	"Out"
	.byte	0xb
	.byte	0x18
	.uaword	0x19e
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x3
	.string	"HSFBPWM_S_ENDIS"
	.byte	0xb
	.byte	0x19
	.uaword	0xc75
	.uleb128 0x19
	.byte	0x60
	.byte	0xb
	.byte	0x22
	.uaword	0xdac
	.uleb128 0x12
	.uaword	.LASF11
	.byte	0xb
	.byte	0x23
	.uaword	0x17d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"BuckDutyFil"
	.byte	0xb
	.byte	0x24
	.uaword	0x193
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.string	"IpriPwmGain"
	.byte	0xb
	.byte	0x25
	.uaword	0x193
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x11
	.string	"BuckDuty"
	.byte	0xb
	.byte	0x26
	.uaword	0xc5f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x11
	.string	"BoostDuty"
	.byte	0xb
	.byte	0x27
	.uaword	0xc5f
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x11
	.string	"PriEn"
	.byte	0xb
	.byte	0x28
	.uaword	0xca7
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x11
	.string	"SrEn"
	.byte	0xb
	.byte	0x29
	.uaword	0xca7
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x11
	.string	"ClampEn"
	.byte	0xb
	.byte	0x2a
	.uaword	0xca7
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x11
	.string	"DriverSR0"
	.byte	0xb
	.byte	0x2b
	.uaword	0xdac
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x11
	.string	"DriverSR1"
	.byte	0xb
	.byte	0x2c
	.uaword	0xdac
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x11
	.string	"Vout100us"
	.byte	0xb
	.byte	0x2d
	.uaword	0x193
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x11
	.string	"FlagRecharge"
	.byte	0xb
	.byte	0x2e
	.uaword	0x17d
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.byte	0
	.uleb128 0x13
	.uaword	0x17d
	.uaword	0xdbc
	.uleb128 0x14
	.uaword	0x156
	.byte	0x9
	.byte	0
	.uleb128 0x3
	.string	"HSFBPWM_S_STATUS"
	.byte	0xb
	.byte	0x2f
	.uaword	0xcbe
	.uleb128 0x19
	.byte	0x18
	.byte	0xb
	.byte	0x46
	.uaword	0xe8b
	.uleb128 0x11
	.string	"Enable"
	.byte	0xb
	.byte	0x47
	.uaword	0x19e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF7
	.byte	0xb
	.byte	0x48
	.uaword	0x19e
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x11
	.string	"TopologyIn"
	.byte	0xb
	.byte	0x49
	.uaword	0x17d
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x11
	.string	"TopologyInT"
	.byte	0xb
	.byte	0x4a
	.uaword	0x17d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.string	"TopologyOut"
	.byte	0xb
	.byte	0x4b
	.uaword	0x17d
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x11
	.string	"MorphSign"
	.byte	0xb
	.byte	0x4c
	.uaword	0x17d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x11
	.string	"MorphState"
	.byte	0xb
	.byte	0x4d
	.uaword	0x193
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x11
	.string	"TopoState"
	.byte	0xb
	.byte	0x4e
	.uaword	0x193
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x11
	.string	"VinFil"
	.byte	0xb
	.byte	0x4f
	.uaword	0x193
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0
	.uleb128 0x3
	.string	"HSFBPWM_S_TOMOR"
	.byte	0xb
	.byte	0x50
	.uaword	0xdd4
	.uleb128 0x19
	.byte	0x8
	.byte	0xc
	.byte	0x60
	.uaword	0xef7
	.uleb128 0x11
	.string	"ErrMask0"
	.byte	0xc
	.byte	0x61
	.uaword	0x17d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"ErrMask1"
	.byte	0xc
	.byte	0x62
	.uaword	0x17d
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x11
	.string	"ErrMask2"
	.byte	0xc
	.byte	0x63
	.uaword	0x17d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.string	"ErrMask3"
	.byte	0xc
	.byte	0x64
	.uaword	0x17d
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.byte	0
	.uleb128 0x3
	.string	"HSFBDIAG_S_ERRMASK"
	.byte	0xc
	.byte	0x65
	.uaword	0xea2
	.uleb128 0x13
	.uaword	0x19e
	.uaword	0xf21
	.uleb128 0x14
	.uaword	0x156
	.byte	0x3
	.byte	0
	.uleb128 0x19
	.byte	0x8
	.byte	0xd
	.byte	0x13
	.uaword	0xf6f
	.uleb128 0x11
	.string	"CpuTime"
	.byte	0xd
	.byte	0x14
	.uaword	0x17d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"IsrTime"
	.byte	0xd
	.byte	0x15
	.uaword	0x17d
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x12
	.uaword	.LASF11
	.byte	0xd
	.byte	0x16
	.uaword	0x17d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.string	"Topology"
	.byte	0xd
	.byte	0x17
	.uaword	0x17d
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.byte	0
	.uleb128 0x3
	.string	"HSFBAPP_S_STATUS"
	.byte	0xd
	.byte	0x18
	.uaword	0xf21
	.uleb128 0x1a
	.byte	0x4
	.byte	0xe
	.byte	0x59
	.uaword	0x10c8
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
	.byte	0xe
	.byte	0x6a
	.uaword	0xf87
	.uleb128 0x19
	.byte	0x10
	.byte	0xe
	.byte	0x6c
	.uaword	0x115e
	.uleb128 0x11
	.string	"App"
	.byte	0xe
	.byte	0x6d
	.uaword	0x17d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"Meas"
	.byte	0xe
	.byte	0x6e
	.uaword	0x17d
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x11
	.string	"Ctrl"
	.byte	0xe
	.byte	0x6f
	.uaword	0x17d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.string	"Pwm"
	.byte	0xe
	.byte	0x70
	.uaword	0x17d
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x11
	.string	"Diag"
	.byte	0xe
	.byte	0x71
	.uaword	0x17d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x11
	.string	"Ntc"
	.byte	0xe
	.byte	0x72
	.uaword	0x17d
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x11
	.string	"State"
	.byte	0xe
	.byte	0x73
	.uaword	0x17d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x11
	.string	"Safety"
	.byte	0xe
	.byte	0x74
	.uaword	0x17d
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.byte	0
	.uleb128 0x3
	.string	"MAIN_E_HW_VER_APP"
	.byte	0xe
	.byte	0x75
	.uaword	0x10dd
	.uleb128 0x19
	.byte	0x20
	.byte	0xe
	.byte	0x77
	.uaword	0x11cf
	.uleb128 0x11
	.string	"Code"
	.byte	0xe
	.byte	0x78
	.uaword	0x11cf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"CodeNum"
	.byte	0xe
	.byte	0x79
	.uaword	0x17d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x11
	.string	"VerName"
	.byte	0xe
	.byte	0x7a
	.uaword	0x17d
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x11
	.string	"Ver"
	.byte	0xe
	.byte	0x7b
	.uaword	0x10c8
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x11
	.string	"App"
	.byte	0xe
	.byte	0x7c
	.uaword	0x115e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x13
	.uaword	0x17d
	.uaword	0x11df
	.uleb128 0x14
	.uaword	0x156
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.string	"MAIN_S_HW_VER"
	.byte	0xe
	.byte	0x7d
	.uaword	0x1177
	.uleb128 0xa
	.uaword	.LASF12
	.byte	0x4
	.byte	0xf
	.byte	0x8e
	.uaword	0x135d
	.uleb128 0xb
	.string	"Unlock"
	.byte	0xf
	.byte	0x90
	.uaword	0x19e
	.byte	0x1
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"LockUp"
	.byte	0xf
	.byte	0x91
	.uaword	0x19e
	.byte	0x1
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"Config"
	.byte	0xf
	.byte	0x92
	.uaword	0x19e
	.byte	0x1
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"ReadStatus"
	.byte	0xf
	.byte	0x93
	.uaword	0x19e
	.byte	0x1
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"MPSConfig"
	.byte	0xf
	.byte	0x94
	.uaword	0x19e
	.byte	0x1
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"GotoNormal"
	.byte	0xf
	.byte	0x95
	.uaword	0x19e
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"ParityCheck"
	.byte	0xf
	.byte	0x96
	.uaword	0x19e
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"ABISTFin"
	.byte	0xf
	.byte	0x98
	.uaword	0x19e
	.byte	0x1
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"ABISTSS"
	.byte	0xf
	.byte	0x99
	.uaword	0x19e
	.byte	0x1
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xb
	.string	"ABISTInt"
	.byte	0xf
	.byte	0x9a
	.uaword	0x19e
	.byte	0x1
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xb
	.string	"WWDEnCnt"
	.byte	0xf
	.byte	0x9b
	.uaword	0x19e
	.byte	0x1
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xb
	.string	"NormalState"
	.byte	0xf
	.byte	0x9d
	.uaword	0x19e
	.byte	0x1
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xb
	.string	"QCOStatus"
	.byte	0xf
	.byte	0x9e
	.uaword	0x19e
	.byte	0x1
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xb
	.string	"QVRStatus"
	.byte	0xf
	.byte	0x9f
	.uaword	0x19e
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x16
	.uaword	.LASF8
	.byte	0xf
	.byte	0xa1
	.uaword	0x17d
	.byte	0x2
	.byte	0x2
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x16
	.uaword	.LASF9
	.byte	0xf
	.byte	0xa2
	.uaword	0x17d
	.byte	0x2
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0xc
	.uaword	.LASF12
	.byte	0xf
	.byte	0xa3
	.uaword	0x11f4
	.uleb128 0xd
	.uaword	.LASF13
	.byte	0x4
	.byte	0xf
	.byte	0xa5
	.uaword	0x138b
	.uleb128 0xe
	.string	"all"
	.byte	0xf
	.byte	0xa6
	.uaword	0x188
	.uleb128 0xe
	.string	"bit"
	.byte	0xf
	.byte	0xa7
	.uaword	0x135d
	.byte	0
	.uleb128 0xc
	.uaword	.LASF13
	.byte	0xf
	.byte	0xa8
	.uaword	0x1368
	.uleb128 0xa
	.uaword	.LASF14
	.byte	0x2
	.byte	0xf
	.byte	0xaa
	.uaword	0x13f6
	.uleb128 0xb
	.string	"Parity"
	.byte	0xf
	.byte	0xab
	.uaword	0x19e
	.byte	0x1
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"Data"
	.byte	0xf
	.byte	0xac
	.uaword	0x19e
	.byte	0x1
	.byte	0x8
	.uaxword	0xffffffffffffffff
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"Address"
	.byte	0xf
	.byte	0xad
	.uaword	0x19e
	.byte	0x1
	.byte	0x6
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xb
	.string	"Dir"
	.byte	0xf
	.byte	0xae
	.uaword	0x19e
	.byte	0x1
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0
	.uleb128 0xc
	.uaword	.LASF14
	.byte	0xf
	.byte	0xaf
	.uaword	0x1396
	.uleb128 0xd
	.uaword	.LASF15
	.byte	0x2
	.byte	0xf
	.byte	0xb1
	.uaword	0x1424
	.uleb128 0xe
	.string	"all"
	.byte	0xf
	.byte	0xb2
	.uaword	0x17d
	.uleb128 0xe
	.string	"bit"
	.byte	0xf
	.byte	0xb3
	.uaword	0x13f6
	.byte	0
	.uleb128 0xc
	.uaword	.LASF15
	.byte	0xf
	.byte	0xb4
	.uaword	0x1401
	.uleb128 0xa
	.uaword	.LASF16
	.byte	0x6
	.byte	0xf
	.byte	0xb6
	.uaword	0x146c
	.uleb128 0x11
	.string	"Enable"
	.byte	0xf
	.byte	0xb7
	.uaword	0x17d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"TxData"
	.byte	0xf
	.byte	0xb8
	.uaword	0x1424
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x12
	.uaword	.LASF4
	.byte	0xf
	.byte	0xb9
	.uaword	0x1424
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0xc
	.uaword	.LASF16
	.byte	0xf
	.byte	0xba
	.uaword	0x142f
	.uleb128 0x1a
	.byte	0x4
	.byte	0xf
	.byte	0xbd
	.uaword	0x155d
	.uleb128 0x10
	.string	"QSPI_TEST_INIT"
	.sleb128 0
	.uleb128 0x10
	.string	"QSPI_TEST_STARTED"
	.sleb128 1
	.uleb128 0x10
	.string	"QSPI_SBC_STATUS_READ"
	.sleb128 2
	.uleb128 0x10
	.string	"QSPI_SBC_IN_NORMAL_STATE"
	.sleb128 3
	.uleb128 0x10
	.string	"QSPI_SBC_ABIST_COMPLETED"
	.sleb128 4
	.uleb128 0x10
	.string	"QSPI_SBC_NORMAL_AFTER_ABIST"
	.sleb128 5
	.uleb128 0x10
	.string	"QSPI_SBC_WWDTEST_RUNNING"
	.sleb128 6
	.uleb128 0x10
	.string	"QSPI_SBC_WWDTEST_COMPLETED"
	.sleb128 7
	.uleb128 0x10
	.string	"QSPI_TEST_FINISHED"
	.sleb128 8
	.byte	0
	.uleb128 0x3
	.string	"QSPI_E_TEST_STS"
	.byte	0xf
	.byte	0xc7
	.uaword	0x1477
	.uleb128 0xa
	.uaword	.LASF17
	.byte	0x8c
	.byte	0x10
	.byte	0x80
	.uaword	0x1618
	.uleb128 0x11
	.string	"IsrLog"
	.byte	0x10
	.byte	0x82
	.uaword	0x1618
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"IsrDev"
	.byte	0x10
	.byte	0x83
	.uaword	0x1628
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x11
	.string	"IsrStart"
	.byte	0x10
	.byte	0x84
	.uaword	0x1638
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x11
	.string	"IsrPeriod"
	.byte	0x10
	.byte	0x85
	.uaword	0x1628
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x11
	.string	"IsrSign"
	.byte	0x10
	.byte	0x86
	.uaword	0xf11
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x11
	.string	"IsrTime"
	.byte	0x10
	.byte	0x87
	.uaword	0x1628
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x11
	.string	"IsrTimeAvr"
	.byte	0x10
	.byte	0x88
	.uaword	0x164e
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x11
	.string	"IsrTimeOut"
	.byte	0x10
	.byte	0x89
	.uaword	0x165e
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0
	.uleb128 0x13
	.uaword	0x188
	.uaword	0x1628
	.uleb128 0x14
	.uaword	0x156
	.byte	0x1
	.byte	0
	.uleb128 0x13
	.uaword	0x188
	.uaword	0x1638
	.uleb128 0x14
	.uaword	0x156
	.byte	0x3
	.byte	0
	.uleb128 0x13
	.uaword	0x188
	.uaword	0x164e
	.uleb128 0x14
	.uaword	0x156
	.byte	0x3
	.uleb128 0x14
	.uaword	0x156
	.byte	0x1
	.byte	0
	.uleb128 0x13
	.uaword	0x193
	.uaword	0x165e
	.uleb128 0x14
	.uaword	0x156
	.byte	0x3
	.byte	0
	.uleb128 0x13
	.uaword	0x193
	.uaword	0x1674
	.uleb128 0x14
	.uaword	0x156
	.byte	0x3
	.uleb128 0x14
	.uaword	0x156
	.byte	0x1
	.byte	0
	.uleb128 0xc
	.uaword	.LASF17
	.byte	0x10
	.byte	0x8a
	.uaword	0x1574
	.uleb128 0x19
	.byte	0x10
	.byte	0x10
	.byte	0x8c
	.uaword	0x1706
	.uleb128 0x11
	.string	"FailureCnt"
	.byte	0x10
	.byte	0x8d
	.uaword	0x17d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"Isr_15usCnt"
	.byte	0x10
	.byte	0x8e
	.uaword	0x17d
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x11
	.string	"Isr_100usCnt"
	.byte	0x10
	.byte	0x8f
	.uaword	0x17d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.string	"Isr_1msCnt"
	.byte	0x10
	.byte	0x90
	.uaword	0x173
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x11
	.string	"TimerDiff_10ms"
	.byte	0x10
	.byte	0x91
	.uaword	0x188
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x11
	.string	"Sts"
	.byte	0x10
	.byte	0x92
	.uaword	0x173
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x3
	.string	"PFM_S_CAPTURE"
	.byte	0x10
	.byte	0x93
	.uaword	0x167f
	.uleb128 0x19
	.byte	0x14
	.byte	0x10
	.byte	0xa2
	.uaword	0x178f
	.uleb128 0x11
	.string	"Isr_15us_avg"
	.byte	0x10
	.byte	0xa3
	.uaword	0x193
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"Isr_100us_avg"
	.byte	0x10
	.byte	0xa4
	.uaword	0x193
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.string	"Isr_1ms_avg"
	.byte	0x10
	.byte	0xa5
	.uaword	0x193
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x11
	.string	"Isr_10ms_avg"
	.byte	0x10
	.byte	0xa6
	.uaword	0x193
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x11
	.string	"Calc"
	.byte	0x10
	.byte	0xa7
	.uaword	0x188
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x3
	.string	"SCH_S_CPULOAD"
	.byte	0x10
	.byte	0xa8
	.uaword	0x171b
	.uleb128 0x1a
	.byte	0x4
	.byte	0x11
	.byte	0x24
	.uaword	0x23ca
	.uleb128 0x10
	.string	"IOHWSF_E_SSCHECK"
	.sleb128 0
	.uleb128 0x10
	.string	"IOHWSF_E_SMU_CONFIGURATION_CHECK"
	.sleb128 1
	.uleb128 0x10
	.string	"IOHWSF_E_ISR_UNHANDLED_ISR"
	.sleb128 2
	.uleb128 0x10
	.string	"IOHWSF_E_ISR_100U_SOURCE_ERR"
	.sleb128 3
	.uleb128 0x10
	.string	"IOHWSF_E_ISR_1M_SOURCE_ERR"
	.sleb128 4
	.uleb128 0x10
	.string	"IOHWSF_E_ISR_10M_SOURCE_ERR"
	.sleb128 5
	.uleb128 0x10
	.string	"IOHWSF_E_SAFETLIB_INIT"
	.sleb128 6
	.uleb128 0x10
	.string	"IOHWSF_E_SAFETLIB_PRE_INIT"
	.sleb128 7
	.uleb128 0x10
	.string	"IOHWSF_E_SAFETLIB_PRERUN_PREHOOK"
	.sleb128 8
	.uleb128 0x10
	.string	"IOHWSF_E_SAFETLIB_PRERUN_TEST_FAIL"
	.sleb128 9
	.uleb128 0x10
	.string	"IOHWSF_E_SAFETLIB_PRERUN_POSTHOOK"
	.sleb128 10
	.uleb128 0x10
	.string	"IOHWSF_E_SAFETLIB_RUN_TEST_FAIL"
	.sleb128 11
	.uleb128 0x10
	.string	"IOHWSF_E_SAFETLIB_SRC_REG_CHECK_FAIL"
	.sleb128 12
	.uleb128 0x10
	.string	"IOHWSF_E_MCAL_DIV_INCONSISTENCY"
	.sleb128 13
	.uleb128 0x10
	.string	"IOHWSF_E_MCAL_SPINLOCK_TIMEOUT"
	.sleb128 14
	.uleb128 0x10
	.string	"IOHWSF_E_TRAP_VIRTUAL_ADDRESS_FILL"
	.sleb128 15
	.uleb128 0x10
	.string	"IOHWSF_E_TRAP_VIRTUAL_ADDRESS_PROTECTION"
	.sleb128 16
	.uleb128 0x10
	.string	"IOHWSF_E_TRAP_PRIVILEGE_INSTRUCTION"
	.sleb128 17
	.uleb128 0x10
	.string	"IOHWSF_E_TRAP_MEMORY_PROTECTION_READ"
	.sleb128 18
	.uleb128 0x10
	.string	"IOHWSF_E_TRAP_MEMORY_PROTECTION_WRITE"
	.sleb128 19
	.uleb128 0x10
	.string	"IOHWSF_E_TRAP_MEMORY_PROTECTION_EXECUTION"
	.sleb128 20
	.uleb128 0x10
	.string	"IOHWSF_E_TRAP_PROTECTION_PERIPHERAL_ACCESS"
	.sleb128 21
	.uleb128 0x10
	.string	"IOHWSF_E_TRAP_MEMORY_PROTECTION_NULL_ADDRESS"
	.sleb128 22
	.uleb128 0x10
	.string	"IOHWSF_E_TRAP_GLOBAL_REGISTER_WRITE_PROTECTION"
	.sleb128 23
	.uleb128 0x10
	.string	"IOHWSF_E_TRAP_ILLEGAL_OPCODE"
	.sleb128 24
	.uleb128 0x10
	.string	"IOHWSF_E_TRAP_UNIMPLEMENTED_OPCODE"
	.sleb128 25
	.uleb128 0x10
	.string	"IOHWSF_E_TRAP_INVALID_OPERAND_SPECIFICATION"
	.sleb128 26
	.uleb128 0x10
	.string	"IOHWSF_E_TRAP_DATA_ADDRESS_ALIGNMENT"
	.sleb128 27
	.uleb128 0x10
	.string	"IOHWSF_E_TRAP_INVALID_LOCAL_MEMORY_ADDRESS"
	.sleb128 28
	.uleb128 0x10
	.string	"IOHWSF_E_TRAP_FREE_CONTEXT_LIST_DEPLETION"
	.sleb128 29
	.uleb128 0x10
	.string	"IOHWSF_E_TRAP_CALL_DEPTH_OVERFLOW"
	.sleb128 30
	.uleb128 0x10
	.string	"IOHWSF_E_TRAP_CALL_DEPTH_UNDERFLOW"
	.sleb128 31
	.uleb128 0x10
	.string	"IOHWSF_E_TRAP_FREE_CONTEXT_LIST_UNDERFLOW"
	.sleb128 32
	.uleb128 0x10
	.string	"IOHWSF_E_TRAP_CALL_STACK_UNDERFLOW"
	.sleb128 33
	.uleb128 0x10
	.string	"IOHWSF_E_TRAP_CONTEXT_TYPE"
	.sleb128 34
	.uleb128 0x10
	.string	"IOHWSF_E_TRAP_NESTING_ERROR"
	.sleb128 35
	.uleb128 0x10
	.string	"IOHWSF_E_TRAP_PROGRAM_FETCH_SYNCHRONOUS_ERROR"
	.sleb128 36
	.uleb128 0x10
	.string	"IOHWSF_E_TRAP_DATA_ACCESS_SYNCHRONOUS_ERROR"
	.sleb128 37
	.uleb128 0x10
	.string	"IOHWSF_E_TRAP_DATA_ACCESS_ASYNCHRONOUS_ERROR"
	.sleb128 38
	.uleb128 0x10
	.string	"IOHWSF_E_TRAP_ARITHEMETIC_OVERFLOW"
	.sleb128 39
	.uleb128 0x10
	.string	"IOHWSF_E_TRAP_STICKY_ARITHEMETIC_OVERFLOW"
	.sleb128 40
	.uleb128 0x10
	.string	"IOHWSF_E_TRAP_UNEXPECTED_SYSTEM_CALL"
	.sleb128 41
	.uleb128 0x10
	.string	"IOHWSF_E_TRAP_UNEXPECTED_NMI"
	.sleb128 42
	.uleb128 0x10
	.string	"IOHWSF_E_TRAP_UNDEFINED_TIN"
	.sleb128 43
	.uleb128 0x10
	.string	"IOHWSF_E_CORE0_NOT_IN_SAFE_STATE"
	.sleb128 44
	.uleb128 0x10
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_TRAP_TST"
	.sleb128 45
	.uleb128 0x10
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_CLKM_TST"
	.sleb128 46
	.uleb128 0x10
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_SRAM_ECC_TST"
	.sleb128 47
	.uleb128 0x10
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_PMU_ECC_EDC_TST"
	.sleb128 48
	.uleb128 0x10
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_SRI_TST"
	.sleb128 49
	.uleb128 0x10
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_SPB_TST_TIMEOUT"
	.sleb128 50
	.uleb128 0x10
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_SFF_TST"
	.sleb128 51
	.uleb128 0x10
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_SPB_TST_RAP"
	.sleb128 52
	.uleb128 0x10
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_CPU_MPU_TST"
	.sleb128 53
	.uleb128 0x10
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_CPUBUSMPULFM_TST"
	.sleb128 54
	.uleb128 0x10
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_REG_ACC_PROT_TST"
	.sleb128 55
	.uleb128 0x10
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_CPU_WDG_TST"
	.sleb128 56
	.uleb128 0x10
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_SAFETY_WDG_TST"
	.sleb128 57
	.uleb128 0x10
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_SMU_TST_NMI"
	.sleb128 58
	.uleb128 0x10
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_SMU_TST_IRQ"
	.sleb128 59
	.uleb128 0x10
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_SMU_TST_RT"
	.sleb128 60
	.uleb128 0x10
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_VLM_TST"
	.sleb128 61
	.uleb128 0x10
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_IR_TST"
	.sleb128 62
	.uleb128 0x10
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_LOCK_STEP_TST"
	.sleb128 63
	.uleb128 0x10
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_SFR_CMP_TST"
	.sleb128 64
	.uleb128 0x10
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_SRC_REG_CHECK_TST"
	.sleb128 65
	.uleb128 0x10
	.string	"IOHWSF_E_FLASH_TEST_PATTERN_NOT_FLSHED"
	.sleb128 66
	.uleb128 0x10
	.string	"IOHWSF_E_SETUP_FSP_PIN"
	.sleb128 67
	.uleb128 0x10
	.string	"IOHWSF_E_SMU_LOCK_CFG_TST"
	.sleb128 68
	.uleb128 0x10
	.string	"IOHWSF_E_SAFETY_ISR_RESET"
	.sleb128 69
	.uleb128 0x10
	.string	"IOHWSF_E_TLF_ERR_DETECTION_TIMEOUT"
	.sleb128 70
	.uleb128 0x10
	.string	"IOHWSF_E_TLF_SYS_FLAGS_NOT_CLEARED"
	.sleb128 71
	.uleb128 0x10
	.string	"IOHWSF_E_TLF_RESTORE_FAILED"
	.sleb128 72
	.uleb128 0x10
	.string	"IOHWSF_E_RELEASE_FSP_FAILED"
	.sleb128 73
	.uleb128 0x10
	.string	"IOHWSF_E_UDS_ECU_RESET_REQ"
	.sleb128 74
	.uleb128 0x10
	.string	"IOHWSF_E_UDS_SRAM_ECCPREAOU_FAILED"
	.sleb128 75
	.byte	0
	.uleb128 0x3
	.string	"IOHWSF_E_ErrorType"
	.byte	0x11
	.byte	0x71
	.uaword	0x17a4
	.uleb128 0x19
	.byte	0x74
	.byte	0x12
	.byte	0x3e
	.uaword	0x2433
	.uleb128 0x11
	.string	"IohwErr"
	.byte	0x12
	.byte	0x3f
	.uaword	0x23ca
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"E2eSts"
	.byte	0x12
	.byte	0x40
	.uaword	0x882
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.string	"PfmSts"
	.byte	0x12
	.byte	0x41
	.uaword	0x1706
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x11
	.string	"QspiErr"
	.byte	0x12
	.byte	0x42
	.uaword	0x135d
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.byte	0
	.uleb128 0x3
	.string	"PMA_S_MCSAFE_ERR"
	.byte	0x12
	.byte	0x43
	.uaword	0x23e4
	.uleb128 0x19
	.byte	0xa
	.byte	0x12
	.byte	0x45
	.uaword	0x24c4
	.uleb128 0x11
	.string	"Shutdown_ErrCnt"
	.byte	0x12
	.byte	0x46
	.uaword	0x17d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"Iohw_ErrCnt"
	.byte	0x12
	.byte	0x47
	.uaword	0x17d
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x11
	.string	"Pfm_ErrCnt"
	.byte	0x12
	.byte	0x48
	.uaword	0x17d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.string	"E2e_ErrCnt"
	.byte	0x12
	.byte	0x49
	.uaword	0x17d
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x11
	.string	"Qspi_ErrCnt"
	.byte	0x12
	.byte	0x4a
	.uaword	0x17d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x3
	.string	"PMA_S_MODULE_INFO"
	.byte	0x12
	.byte	0x4b
	.uaword	0x244b
	.uleb128 0x19
	.byte	0x4
	.byte	0x13
	.byte	0x2c
	.uaword	0x2512
	.uleb128 0x11
	.string	"Mins"
	.byte	0x13
	.byte	0x2d
	.uaword	0x17d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"Secs"
	.byte	0x13
	.byte	0x2e
	.uaword	0x173
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x11
	.string	"Cnt"
	.byte	0x13
	.byte	0x2f
	.uaword	0x173
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0
	.uleb128 0x3
	.string	"PMA_S_RUN"
	.byte	0x13
	.byte	0x30
	.uaword	0x24dd
	.uleb128 0x19
	.byte	0x14
	.byte	0x13
	.byte	0x32
	.uaword	0x25b8
	.uleb128 0x11
	.string	"ShutdownSts"
	.byte	0x13
	.byte	0x33
	.uaword	0x173
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"ResetCtr"
	.byte	0x13
	.byte	0x34
	.uaword	0x173
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x11
	.string	"ResetSts_reg"
	.byte	0x13
	.byte	0x35
	.uaword	0x188
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.string	"PowerCycle"
	.byte	0x13
	.byte	0x36
	.uaword	0x188
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x11
	.string	"PORSTPowerCycle"
	.byte	0x13
	.byte	0x37
	.uaword	0x188
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x11
	.string	"NonPORSTPowerCycle"
	.byte	0x13
	.byte	0x38
	.uaword	0x188
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x3
	.string	"PMA_S_RESETINFO"
	.byte	0x13
	.byte	0x39
	.uaword	0x2523
	.uleb128 0x19
	.byte	0xa0
	.byte	0x13
	.byte	0x3c
	.uaword	0x268b
	.uleb128 0x11
	.string	"InitPattern"
	.byte	0x13
	.byte	0x3d
	.uaword	0x188
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"ErrCnt"
	.byte	0x13
	.byte	0x3e
	.uaword	0x17d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.string	"ErrSrc"
	.byte	0x13
	.byte	0x3f
	.uaword	0x173
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x11
	.string	"CpuLoadMin"
	.byte	0x13
	.byte	0x40
	.uaword	0x173
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0x11
	.string	"CpuLoadMax"
	.byte	0x13
	.byte	0x41
	.uaword	0x173
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x11
	.string	"ModuleInfo"
	.byte	0x13
	.byte	0x42
	.uaword	0x24c4
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x11
	.string	"Timestamp"
	.byte	0x13
	.byte	0x43
	.uaword	0x2512
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x11
	.string	"ResetInfo"
	.byte	0x13
	.byte	0x44
	.uaword	0x25b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x11
	.string	"McSafeErr"
	.byte	0x13
	.byte	0x45
	.uaword	0x2433
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.byte	0
	.uleb128 0x3
	.string	"PMA_S_ABORTTYPE"
	.byte	0x13
	.byte	0x46
	.uaword	0x25cf
	.uleb128 0x1b
	.string	"mpu_vSet_ActiveProtSet"
	.byte	0x2
	.byte	0x62
	.byte	0x1
	.byte	0x3
	.uaword	0x2752
	.uleb128 0x1c
	.string	"protectionSet"
	.byte	0x2
	.byte	0x62
	.uaword	0x1a9
	.uleb128 0x1d
	.string	"PSWRegValue"
	.byte	0x2
	.byte	0x64
	.uaword	0x336
	.uleb128 0x1e
	.uaword	0x26fb
	.uleb128 0x1f
	.uaword	.LASF18
	.byte	0x2
	.byte	0x67
	.uaword	0x112
	.byte	0
	.uleb128 0x1e
	.uaword	0x2711
	.uleb128 0x1d
	.string	"__newval"
	.byte	0x2
	.byte	0x69
	.uaword	0x112
	.byte	0
	.uleb128 0x1e
	.uaword	0x2722
	.uleb128 0x1f
	.uaword	.LASF18
	.byte	0x2
	.byte	0x6d
	.uaword	0x112
	.byte	0
	.uleb128 0x1e
	.uaword	0x2733
	.uleb128 0x1f
	.uaword	.LASF18
	.byte	0x2
	.byte	0x71
	.uaword	0x112
	.byte	0
	.uleb128 0x1e
	.uaword	0x2744
	.uleb128 0x1f
	.uaword	.LASF18
	.byte	0x2
	.byte	0x75
	.uaword	0x112
	.byte	0
	.uleb128 0x20
	.uleb128 0x1f
	.uaword	.LASF18
	.byte	0x2
	.byte	0x79
	.uaword	0x112
	.byte	0
	.byte	0
	.uleb128 0x21
	.string	"mg_vIsr_TimeMeasCalc"
	.byte	0x1
	.uahalf	0x233
	.byte	0x1
	.byte	0x1
	.uaword	0x27ac
	.uleb128 0x22
	.string	"v"
	.byte	0x1
	.uahalf	0x233
	.uaword	0x27ac
	.uleb128 0x22
	.string	"num"
	.byte	0x1
	.uahalf	0x233
	.uaword	0x17d
	.uleb128 0x22
	.string	"sign"
	.byte	0x1
	.uahalf	0x233
	.uaword	0x19e
	.uleb128 0x22
	.string	"tick"
	.byte	0x1
	.uahalf	0x233
	.uaword	0x17d
	.uleb128 0x23
	.string	"i"
	.byte	0x1
	.uahalf	0x235
	.uaword	0xfb
	.byte	0
	.uleb128 0x24
	.byte	0x4
	.uaword	0x1674
	.uleb128 0x25
	.string	"Isr_ErrorDis10ms"
	.byte	0x1
	.uahalf	0x2eb
	.byte	0x1
	.byte	0x1
	.uleb128 0x26
	.string	"mg_vASIL_1msTask"
	.byte	0x1
	.uahalf	0x106
	.byte	0x1
	.uaword	.LFB205
	.uaword	.LFE205
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0x27
	.uaword	0x2752
	.uaword	.LFB215
	.uaword	.LFE215
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x286f
	.uleb128 0x28
	.uaword	0x277b
	.uaword	.LLST0
	.uleb128 0x29
	.uaword	0x2787
	.byte	0x1
	.byte	0x55
	.uleb128 0x29
	.uaword	0x2794
	.byte	0x1
	.byte	0x56
	.uleb128 0x2a
	.uaword	0x27a1
	.uleb128 0x29
	.uaword	0x2771
	.byte	0x6
	.byte	0x3
	.uaword	Isr_TimeMeas
	.byte	0x9f
	.uleb128 0x2b
	.uaword	0x2752
	.uaword	.LBB12
	.uaword	.LBE12
	.byte	0x1
	.uahalf	0x233
	.uleb128 0x28
	.uaword	0x2794
	.uaword	.LLST1
	.uleb128 0x28
	.uaword	0x2787
	.uaword	.LLST2
	.uleb128 0x28
	.uaword	0x277b
	.uaword	.LLST3
	.uleb128 0x2c
	.uaword	.LBB13
	.uaword	.LBE13
	.uleb128 0x2d
	.uaword	0x27a1
	.uaword	.LLST4
	.uleb128 0x28
	.uaword	0x2771
	.uaword	.LLST5
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.byte	0x1
	.string	"Isr_Call15us"
	.byte	0x1
	.byte	0x62
	.byte	0x1
	.uaword	.LFB203
	.uaword	.LFE203
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x2918
	.uleb128 0x2f
	.uaword	0x26a2
	.uaword	.LBB30
	.uaword	.LBE30
	.byte	0x1
	.byte	0x65
	.uaword	0x28fe
	.uleb128 0x30
	.uaword	0x26c2
	.byte	0
	.uleb128 0x2c
	.uaword	.LBB31
	.uaword	.LBE31
	.uleb128 0x2d
	.uaword	0x26d7
	.uaword	.LLST6
	.uleb128 0x31
	.uaword	.LBB32
	.uaword	.LBE32
	.uaword	0x28d2
	.uleb128 0x2d
	.uaword	0x26ef
	.uaword	.LLST7
	.byte	0
	.uleb128 0x31
	.uaword	.LBB33
	.uaword	.LBE33
	.uaword	0x28e9
	.uleb128 0x2d
	.uaword	0x2700
	.uaword	.LLST6
	.byte	0
	.uleb128 0x2c
	.uaword	.LBB34
	.uaword	.LBE34
	.uleb128 0x2d
	.uaword	0x2716
	.uaword	.LLST9
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uaword	.LBB35
	.uaword	.LBE35
	.uleb128 0x32
	.byte	0x1
	.uaword	.LASF19
	.byte	0x1
	.byte	0x6b
	.uaword	0xfb
	.byte	0x1
	.uleb128 0x33
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.byte	0x1
	.string	"Isr_Call100us"
	.byte	0x1
	.byte	0x9f
	.byte	0x1
	.uaword	.LFB204
	.uaword	.LFE204
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x29c2
	.uleb128 0x2f
	.uaword	0x26a2
	.uaword	.LBB52
	.uaword	.LBE52
	.byte	0x1
	.byte	0xa2
	.uaword	0x29a8
	.uleb128 0x30
	.uaword	0x26c2
	.byte	0
	.uleb128 0x2c
	.uaword	.LBB53
	.uaword	.LBE53
	.uleb128 0x2d
	.uaword	0x26d7
	.uaword	.LLST10
	.uleb128 0x31
	.uaword	.LBB54
	.uaword	.LBE54
	.uaword	0x297c
	.uleb128 0x2d
	.uaword	0x26ef
	.uaword	.LLST11
	.byte	0
	.uleb128 0x31
	.uaword	.LBB55
	.uaword	.LBE55
	.uaword	0x2993
	.uleb128 0x2d
	.uaword	0x2700
	.uaword	.LLST10
	.byte	0
	.uleb128 0x2c
	.uaword	.LBB56
	.uaword	.LBE56
	.uleb128 0x2d
	.uaword	0x2716
	.uaword	.LLST13
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uaword	.LBB57
	.uaword	.LBE57
	.uleb128 0x32
	.byte	0x1
	.uaword	.LASF19
	.byte	0x1
	.byte	0x6b
	.uaword	0xfb
	.byte	0x1
	.uleb128 0x33
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x34
	.byte	0x1
	.string	"Isr_Call1ms"
	.byte	0x1
	.uahalf	0x136
	.byte	0x1
	.uaword	.LFB206
	.uaword	.LFE206
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x2b77
	.uleb128 0x35
	.uaword	0x26a2
	.uaword	.LBB118
	.uaword	.LBE118
	.byte	0x1
	.uahalf	0x139
	.uaword	0x2a52
	.uleb128 0x30
	.uaword	0x26c2
	.byte	0
	.uleb128 0x2c
	.uaword	.LBB119
	.uaword	.LBE119
	.uleb128 0x2d
	.uaword	0x26d7
	.uaword	.LLST14
	.uleb128 0x31
	.uaword	.LBB120
	.uaword	.LBE120
	.uaword	0x2a26
	.uleb128 0x2d
	.uaword	0x26ef
	.uaword	.LLST15
	.byte	0
	.uleb128 0x31
	.uaword	.LBB121
	.uaword	.LBE121
	.uaword	0x2a3d
	.uleb128 0x2d
	.uaword	0x2700
	.uaword	.LLST14
	.byte	0
	.uleb128 0x2c
	.uaword	.LBB122
	.uaword	.LBE122
	.uleb128 0x2d
	.uaword	0x2716
	.uaword	.LLST17
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x35
	.uaword	0x26a2
	.uaword	.LBB123
	.uaword	.LBE123
	.byte	0x1
	.uahalf	0x14b
	.uaword	0x2aad
	.uleb128 0x28
	.uaword	0x26c2
	.uaword	.LLST18
	.uleb128 0x2c
	.uaword	.LBB124
	.uaword	.LBE124
	.uleb128 0x2d
	.uaword	0x26d7
	.uaword	.LLST19
	.uleb128 0x31
	.uaword	.LBB125
	.uaword	.LBE125
	.uaword	0x2a98
	.uleb128 0x2d
	.uaword	0x2700
	.uaword	.LLST20
	.byte	0
	.uleb128 0x2c
	.uaword	.LBB126
	.uaword	.LBE126
	.uleb128 0x2d
	.uaword	0x2727
	.uaword	.LLST21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x35
	.uaword	0x26a2
	.uaword	.LBB127
	.uaword	.LBE127
	.byte	0x1
	.uahalf	0x15f
	.uaword	0x2b08
	.uleb128 0x28
	.uaword	0x26c2
	.uaword	.LLST22
	.uleb128 0x2c
	.uaword	.LBB128
	.uaword	.LBE128
	.uleb128 0x2d
	.uaword	0x26d7
	.uaword	.LLST23
	.uleb128 0x31
	.uaword	.LBB129
	.uaword	.LBE129
	.uaword	0x2af3
	.uleb128 0x2d
	.uaword	0x2700
	.uaword	.LLST24
	.byte	0
	.uleb128 0x2c
	.uaword	.LBB130
	.uaword	.LBE130
	.uleb128 0x2d
	.uaword	0x2738
	.uaword	.LLST25
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uaword	0x26a2
	.uaword	.LBB131
	.uaword	.LBE131
	.byte	0x1
	.uahalf	0x170
	.uleb128 0x28
	.uaword	0x26c2
	.uaword	.LLST26
	.uleb128 0x2c
	.uaword	.LBB132
	.uaword	.LBE132
	.uleb128 0x2d
	.uaword	0x26d7
	.uaword	.LLST27
	.uleb128 0x31
	.uaword	.LBB133
	.uaword	.LBE133
	.uaword	0x2b4a
	.uleb128 0x2d
	.uaword	0x26ef
	.uaword	.LLST28
	.byte	0
	.uleb128 0x31
	.uaword	.LBB134
	.uaword	.LBE134
	.uaword	0x2b61
	.uleb128 0x2d
	.uaword	0x2700
	.uaword	.LLST27
	.byte	0
	.uleb128 0x2c
	.uaword	.LBB135
	.uaword	.LBE135
	.uleb128 0x2d
	.uaword	0x2716
	.uaword	.LLST30
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x21
	.string	"Isr_AppStatus10ms"
	.byte	0x1
	.uahalf	0x276
	.byte	0x1
	.byte	0x1
	.uaword	0x2bd8
	.uleb128 0x23
	.string	"IsrTime15usAvr"
	.byte	0x1
	.uahalf	0x27a
	.uaword	0x193
	.uleb128 0x23
	.string	"IsrTime100usAvr"
	.byte	0x1
	.uahalf	0x27b
	.uaword	0x193
	.uleb128 0x23
	.string	"IsrTimeTotal"
	.byte	0x1
	.uahalf	0x27c
	.uaword	0x193
	.byte	0
	.uleb128 0x25
	.string	"Isr_SafetyError10ms"
	.byte	0x1
	.uahalf	0x304
	.byte	0x1
	.byte	0x1
	.uleb128 0x25
	.string	"mg_vPfm_IsrCounterChk"
	.byte	0x1
	.uahalf	0x1c6
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.byte	0x1
	.string	"Isr_Call10ms"
	.byte	0x1
	.uahalf	0x195
	.byte	0x1
	.uaword	.LFB207
	.uaword	.LFE207
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x2d02
	.uleb128 0x35
	.uaword	0x26a2
	.uaword	.LBB159
	.uaword	.LBE159
	.byte	0x1
	.uahalf	0x198
	.uaword	0x2c9f
	.uleb128 0x30
	.uaword	0x26c2
	.byte	0
	.uleb128 0x2c
	.uaword	.LBB160
	.uaword	.LBE160
	.uleb128 0x2d
	.uaword	0x26d7
	.uaword	.LLST31
	.uleb128 0x31
	.uaword	.LBB161
	.uaword	.LBE161
	.uaword	0x2c73
	.uleb128 0x2d
	.uaword	0x26ef
	.uaword	.LLST32
	.byte	0
	.uleb128 0x31
	.uaword	.LBB162
	.uaword	.LBE162
	.uaword	0x2c8a
	.uleb128 0x2d
	.uaword	0x2700
	.uaword	.LLST31
	.byte	0
	.uleb128 0x2c
	.uaword	.LBB163
	.uaword	.LBE163
	.uleb128 0x2d
	.uaword	0x2716
	.uaword	.LLST34
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x36
	.uaword	0x2b77
	.uaword	.LBB164
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.uahalf	0x1a0
	.uaword	0x2cd1
	.uleb128 0x37
	.uaword	.Ldebug_ranges0+0x18
	.uleb128 0x2a
	.uaword	0x2b93
	.uleb128 0x2d
	.uaword	0x2baa
	.uaword	.LLST35
	.uleb128 0x2d
	.uaword	0x2bc2
	.uaword	.LLST36
	.byte	0
	.byte	0
	.uleb128 0x38
	.uaword	0x27b2
	.uaword	.LBB167
	.uaword	.Ldebug_ranges0+0x30
	.byte	0x1
	.uahalf	0x1a1
	.uleb128 0x38
	.uaword	0x2bd8
	.uaword	.LBB178
	.uaword	.Ldebug_ranges0+0x88
	.byte	0x1
	.uahalf	0x1a2
	.uleb128 0x38
	.uaword	0x2bf2
	.uaword	.LBB197
	.uaword	.Ldebug_ranges0+0xf0
	.byte	0x1
	.uahalf	0x1b0
	.byte	0
	.uleb128 0x39
	.string	"i"
	.byte	0x1
	.byte	0x2e
	.uaword	0x2d11
	.byte	0x5
	.byte	0x3
	.uaword	i
	.uleb128 0x4
	.uaword	0x173
	.uleb128 0x39
	.string	"Comm_u16CanErrCode"
	.byte	0x1
	.byte	0x2f
	.uaword	0x17d
	.byte	0x5
	.byte	0x3
	.uaword	Comm_u16CanErrCode
	.uleb128 0x39
	.string	"Timer_value"
	.byte	0x1
	.byte	0x39
	.uaword	0x188
	.byte	0x5
	.byte	0x3
	.uaword	Timer_value
	.uleb128 0x39
	.string	"Timer_history"
	.byte	0x1
	.byte	0x3a
	.uaword	0x188
	.byte	0x5
	.byte	0x3
	.uaword	Timer_history
	.uleb128 0x39
	.string	"WdgStopTrigger"
	.byte	0x1
	.byte	0x3b
	.uaword	0x188
	.byte	0x5
	.byte	0x3
	.uaword	WdgStopTrigger
	.uleb128 0x39
	.string	"Isr_15us_Fire_Count"
	.byte	0x1
	.byte	0x3c
	.uaword	0x17d
	.byte	0x5
	.byte	0x3
	.uaword	Isr_15us_Fire_Count
	.uleb128 0x39
	.string	"Isr_100us_Fire_Count"
	.byte	0x1
	.byte	0x3d
	.uaword	0x17d
	.byte	0x5
	.byte	0x3
	.uaword	Isr_100us_Fire_Count
	.uleb128 0x39
	.string	"Isr_1ms_Fire_Count"
	.byte	0x1
	.byte	0x3e
	.uaword	0x173
	.byte	0x5
	.byte	0x3
	.uaword	Isr_1ms_Fire_Count
	.uleb128 0x39
	.string	"Qspi_TstSeqIndx"
	.byte	0x1
	.byte	0x3f
	.uaword	0x17d
	.byte	0x5
	.byte	0x3
	.uaword	Qspi_TstSeqIndx
	.uleb128 0x39
	.string	"Pfm_flag"
	.byte	0x1
	.byte	0x40
	.uaword	0x173
	.byte	0x5
	.byte	0x3
	.uaword	Pfm_flag
	.uleb128 0x3a
	.string	"Safety_CfgError"
	.byte	0x6
	.byte	0x66
	.uaword	0x4ce
	.byte	0x1
	.byte	0x1
	.uleb128 0x3a
	.string	"PSWReg_Rd0"
	.byte	0x2
	.byte	0x45
	.uaword	0x336
	.byte	0x1
	.byte	0x1
	.uleb128 0x3a
	.string	"PSWReg_Rd1"
	.byte	0x2
	.byte	0x46
	.uaword	0x336
	.byte	0x1
	.byte	0x1
	.uleb128 0x3a
	.string	"PSWReg_Rd2"
	.byte	0x2
	.byte	0x47
	.uaword	0x336
	.byte	0x1
	.byte	0x1
	.uleb128 0x3a
	.string	"PSWReg_Rd3"
	.byte	0x2
	.byte	0x48
	.uaword	0x336
	.byte	0x1
	.byte	0x1
	.uleb128 0x3a
	.string	"TRUSTED_Mpu_Err"
	.byte	0x2
	.byte	0x4a
	.uaword	0x17d
	.byte	0x1
	.byte	0x1
	.uleb128 0x3a
	.string	"CanE2E"
	.byte	0x8
	.byte	0x3b
	.uaword	0x882
	.byte	0x1
	.byte	0x1
	.uleb128 0x3a
	.string	"ComServ_DevRx"
	.byte	0x9
	.byte	0x56
	.uaword	0xa8a
	.byte	0x1
	.byte	0x1
	.uleb128 0x3a
	.string	"HsfbDiag_ErrMask"
	.byte	0x14
	.byte	0x5d
	.uaword	0xef7
	.byte	0x1
	.byte	0x1
	.uleb128 0x3a
	.string	"HsfbPwm_Status"
	.byte	0x15
	.byte	0x50
	.uaword	0xdbc
	.byte	0x1
	.byte	0x1
	.uleb128 0x3a
	.string	"HsfbPwm_ToMor"
	.byte	0x15
	.byte	0x52
	.uaword	0xe8b
	.byte	0x1
	.byte	0x1
	.uleb128 0x3a
	.string	"Main_HwVer"
	.byte	0xe
	.byte	0x89
	.uaword	0x11df
	.byte	0x1
	.byte	0x1
	.uleb128 0x3b
	.string	"Isr_AppStatus"
	.byte	0x1
	.byte	0x23
	.uaword	0xf6f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Isr_AppStatus
	.uleb128 0x3b
	.string	"SafetyError"
	.byte	0x1
	.byte	0x2a
	.uaword	0xf11
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	SafetyError
	.uleb128 0x3b
	.string	"Main_DebugErrCode"
	.byte	0x1
	.byte	0x26
	.uaword	0x17d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Main_DebugErrCode
	.uleb128 0x3a
	.string	"Main_InitFin"
	.byte	0xe
	.byte	0x8e
	.uaword	0x19e
	.byte	0x1
	.byte	0x1
	.uleb128 0x3a
	.string	"Gtm_WDIDisCnt"
	.byte	0x16
	.byte	0x2e
	.uaword	0x17d
	.byte	0x1
	.byte	0x1
	.uleb128 0x3a
	.string	"Flag_WDIDis"
	.byte	0x16
	.byte	0x2f
	.uaword	0x17d
	.byte	0x1
	.byte	0x1
	.uleb128 0x3a
	.string	"Qspi_SBCError"
	.byte	0xf
	.byte	0xe4
	.uaword	0x138b
	.byte	0x1
	.byte	0x1
	.uleb128 0x3a
	.string	"Qspi_StrtUpTst_Sts"
	.byte	0xf
	.byte	0xe5
	.uaword	0x155d
	.byte	0x1
	.byte	0x1
	.uleb128 0x3a
	.string	"Trusted_UdsRstReq_Flag"
	.byte	0x17
	.byte	0xa1
	.uaword	0x19e
	.byte	0x1
	.byte	0x1
	.uleb128 0x3b
	.string	"CpuLoadSts"
	.byte	0x1
	.byte	0x22
	.uaword	0x178f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	CpuLoadSts
	.uleb128 0x3b
	.string	"Isr_TimeMeas"
	.byte	0x1
	.byte	0x2b
	.uaword	0x1674
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Isr_TimeMeas
	.uleb128 0x3b
	.string	"Pfm_Capture"
	.byte	0x1
	.byte	0x24
	.uaword	0x1706
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Pfm_Capture
	.uleb128 0x3a
	.string	"Pma_AbortData"
	.byte	0x13
	.byte	0x48
	.uaword	0x268b
	.byte	0x1
	.byte	0x1
	.uleb128 0x3b
	.string	"IsrTimeFil"
	.byte	0x1
	.byte	0x25
	.uaword	0x193
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	IsrTimeFil
	.uleb128 0x3b
	.string	"Main_ResetCnt"
	.byte	0x1
	.byte	0x27
	.uaword	0x17d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Main_ResetCnt
	.uleb128 0x3b
	.string	"Isr_15usTick"
	.byte	0x1
	.byte	0x28
	.uaword	0x17d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Isr_15usTick
	.uleb128 0x3b
	.string	"Isr_100usTick"
	.byte	0x1
	.byte	0x29
	.uaword	0x17d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Isr_100usTick
	.uleb128 0x3b
	.string	"Qspi_Test"
	.byte	0x1
	.byte	0x2c
	.uaword	0x146c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Qspi_Test
	.uleb128 0x13
	.uaword	0x17d
	.uaword	0x3106
	.uleb128 0x14
	.uaword	0x156
	.byte	0x31
	.byte	0
	.uleb128 0x3b
	.string	"DebugCap"
	.byte	0x1
	.byte	0x2d
	.uaword	0x311d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	DebugCap
	.uleb128 0x4
	.uaword	0x30f6
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
	.uleb128 0x5
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x16
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
	.uleb128 0xd
	.uleb128 0x17
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x12
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
	.uleb128 0x7
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
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
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
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
	.uleb128 0x2f
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x32
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
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
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL8
	.uaword	.LFE215
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL1
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL8
	.uaword	.LFE215
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL1
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL8
	.uaword	.LFE215
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL1
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x3
	.byte	0x73
	.sleb128 -2
	.byte	0x9f
	.uaword	.LVL8
	.uaword	.LFE215
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL2
	.uaword	.LVL3
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL1
	.uaword	.LVL7
	.uahalf	0x6
	.byte	0x3
	.uaword	Isr_TimeMeas
	.byte	0x9f
	.uaword	.LVL8
	.uaword	.LFE215
	.uahalf	0x6
	.byte	0x3
	.uaword	Isr_TimeMeas
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL10
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL19
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL21
	.uaword	.LVL22
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL29
	.uaword	.LVL30
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL28
	.uaword	.LVL29
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL30
	.uaword	.LVL31
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL32
	.uaword	.LVL54
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL56
	.uaword	.LFE206
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL33
	.uaword	.LVL35
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL34
	.uaword	.LVL35
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL35
	.uaword	.LVL36
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL38
	.uaword	.LVL54
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL56
	.uaword	.LVL58
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL60
	.uaword	.LFE206
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL39
	.uaword	.LVL41
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL40
	.uaword	.LVL41
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL41
	.uaword	.LVL42
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL44
	.uaword	.LVL54
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL56
	.uaword	.LVL58
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL46
	.uaword	.LVL47
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL45
	.uaword	.LVL46
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL47
	.uaword	.LVL48
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST31:
	.uaword	.LVL64
	.uaword	.LVL65
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST32:
	.uaword	.LVL63
	.uaword	.LVL64
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST34:
	.uaword	.LVL65
	.uaword	.LVL66
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST35:
	.uaword	.LVL70
	.uaword	.LVL73
	.uahalf	0x5
	.byte	0x3
	.uaword	Isr_TimeMeas+116
	.uaword	.LVL74
	.uaword	.LVL76-1
	.uahalf	0x5
	.byte	0x3
	.uaword	Isr_TimeMeas+116
	.uaword	0
	.uaword	0
.LLST36:
	.uaword	.LVL71
	.uaword	.LVL72
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL74
	.uaword	.LVL75
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
	.uaword	.LFB205
	.uaword	.LFE205-.LFB205
	.uaword	.LFB215
	.uaword	.LFE215-.LFB215
	.uaword	.LFB203
	.uaword	.LFE203-.LFB203
	.uaword	.LFB204
	.uaword	.LFE204-.LFB204
	.uaword	.LFB206
	.uaword	.LFE206-.LFB206
	.uaword	.LFB207
	.uaword	.LFE207-.LFB207
	.uaword	0
	.uaword	0
	.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB164
	.uaword	.LBE164
	.uaword	.LBB204
	.uaword	.LBE204
	.uaword	0
	.uaword	0
	.uaword	.LBB165
	.uaword	.LBE165
	.uaword	.LBB166
	.uaword	.LBE166
	.uaword	0
	.uaword	0
	.uaword	.LBB167
	.uaword	.LBE167
	.uaword	.LBB191
	.uaword	.LBE191
	.uaword	.LBB193
	.uaword	.LBE193
	.uaword	.LBB195
	.uaword	.LBE195
	.uaword	.LBB205
	.uaword	.LBE205
	.uaword	.LBB207
	.uaword	.LBE207
	.uaword	.LBB209
	.uaword	.LBE209
	.uaword	.LBB211
	.uaword	.LBE211
	.uaword	.LBB213
	.uaword	.LBE213
	.uaword	.LBB215
	.uaword	.LBE215
	.uaword	0
	.uaword	0
	.uaword	.LBB178
	.uaword	.LBE178
	.uaword	.LBB192
	.uaword	.LBE192
	.uaword	.LBB194
	.uaword	.LBE194
	.uaword	.LBB196
	.uaword	.LBE196
	.uaword	.LBB206
	.uaword	.LBE206
	.uaword	.LBB208
	.uaword	.LBE208
	.uaword	.LBB210
	.uaword	.LBE210
	.uaword	.LBB212
	.uaword	.LBE212
	.uaword	.LBB214
	.uaword	.LBE214
	.uaword	.LBB216
	.uaword	.LBE216
	.uaword	.LBB218
	.uaword	.LBE218
	.uaword	.LBB220
	.uaword	.LBE220
	.uaword	0
	.uaword	0
	.uaword	.LBB197
	.uaword	.LBE197
	.uaword	.LBB203
	.uaword	.LBE203
	.uaword	.LBB217
	.uaword	.LBE217
	.uaword	.LBB219
	.uaword	.LBE219
	.uaword	.LBB221
	.uaword	.LBE221
	.uaword	0
	.uaword	0
	.uaword	.LFB205
	.uaword	.LFE205
	.uaword	.LFB215
	.uaword	.LFE215
	.uaword	.LFB203
	.uaword	.LFE203
	.uaword	.LFB204
	.uaword	.LFE204
	.uaword	.LFB206
	.uaword	.LFE206
	.uaword	.LFB207
	.uaword	.LFE207
	.uaword	0
	.uaword	0
	.section .debug_line,"",@progbits
.Ldebug_line0:
	.section .debug_str,"",@progbits
.LASF14:
	.string	"QSPI_S_TEST_CMD_BIT"
.LASF8:
	.string	"Reserved1"
.LASF9:
	.string	"Reserved2"
.LASF1:
	.string	"SAFETY_S_ERROR"
.LASF3:
	.string	"CAN_S_E2E"
.LASF7:
	.string	"AutoSwitchDis"
.LASF16:
	.string	"QSPI_S_TEST"
.LASF10:
	.string	"COMSERV_S_DEV_RX"
.LASF11:
	.string	"Operation"
.LASF15:
	.string	"QSPI_S_TEST_CMD"
.LASF4:
	.string	"RxData"
.LASF0:
	.string	"SAFETY_S_ERROR_BIT"
.LASF12:
	.string	"QSPI_S_ERROR_BIT"
.LASF6:
	.string	"COMSERV_S_DEV_RX_BIT2"
.LASF18:
	.string	"__res"
.LASF17:
	.string	"ISR_S_TIMEMEAS"
.LASF19:
	.string	"IOHWSF_ACCESSPROT_vSwitchToSafeISR"
.LASF13:
	.string	"QSPI_S_ERROR"
.LASF5:
	.string	"COMSERV_S_DEV_RX_BIT1"
.LASF2:
	.string	"CAN_S_E2EDATA"
	.extern	Pma_vGetE2eSts,STT_FUNC,0
	.extern	Pma_vGetPfmSts,STT_FUNC,0
	.extern	Pma_vGetQspiSts,STT_FUNC,0
	.extern	Port_AuxPower_EnDis10ms,STT_FUNC,0
	.extern	Port_OTP_AutoDiag10ms,STT_FUNC,0
	.extern	Adc_ShortDetect_10ms,STT_FUNC,0
	.extern	Qspi_Cmd_Test10ms,STT_FUNC,0
	.extern	Qspi_SBC_Check10ms,STT_FUNC,0
	.extern	HsfbApp_Call10ms,STT_FUNC,0
	.extern	Safety_Check10ms,STT_FUNC,0
	.extern	Safety_CfgError,STT_OBJECT,4
	.extern	HsfbDiag_ErrMask,STT_OBJECT,8
	.extern	ComServ_DevRx,STT_OBJECT,6
	.extern	Pma_AbortData,STT_OBJECT,160
	.extern	HsfbPwm_ToMor,STT_OBJECT,24
	.extern	HsfbPwm_Status,STT_OBJECT,96
	.extern	Main_HwVer,STT_OBJECT,32
	.extern	ComServ_10msTask,STT_FUNC,0
	.extern	CanE2E,STT_OBJECT,90
	.extern	Qspi_SBCError,STT_OBJECT,4
	.extern	mg_vQmTaskCall,STT_FUNC,0
	.extern	Uds_ASILTask,STT_FUNC,0
	.extern	Trusted_UdsRstReq_Flag,STT_OBJECT,1
	.extern	PSWReg_Rd2,STT_OBJECT,4
	.extern	PSWReg_Rd1,STT_OBJECT,4
	.extern	IOHWSF_vDefaultErrorHandler,STT_FUNC,0
	.extern	Qspi_SBC_WWDTest,STT_FUNC,0
	.extern	SBC_Triger100us,STT_FUNC,0
	.extern	Flag_WDIDis,STT_OBJECT,2
	.extern	Gtm_CheckPwmStatus,STT_FUNC,0
	.extern	HsfbApp_Call100us,STT_FUNC,0
	.extern	Gtm_WDIDisCnt,STT_OBJECT,2
	.extern	Gtm_PwmEnDis_Calc,STT_FUNC,0
	.extern	HsfbApp_Call15us1,STT_FUNC,0
	.extern	HsfbApp_Call15us,STT_FUNC,0
	.extern	IOHWSF_ACCESSPROT_vSwitchToSafeISR,STT_FUNC,0
	.extern	TRUSTED_Mpu_Err,STT_OBJECT,2
	.extern	PSWReg_Rd0,STT_OBJECT,4
	.extern	Qspi_StartUp,STT_FUNC,0
	.extern	Qspi_StrtUpTst_Sts,STT_OBJECT,4
	.extern	ORU_LatchTest1ms,STT_FUNC,0
	.extern	HsfbApp_Call1ms,STT_FUNC,0
	.extern	ComServ_1msTask,STT_FUNC,0
	.extern	CANDriver_Diag,STT_FUNC,0
	.extern	Main_InitFin,STT_OBJECT,1
	.ident	"GCC: (HighTec Release v4.6.3.0) 4.6.3 build on 2013-05-17"
