	.file	"Main.c"
.section .text,"ax",@progbits
.Ltext0:
#APP
	            
  .section .Mpu_traptab, "ax", @progbits  
  .align 8        
  .globl TriCore_trap_table   
TriCore_trap_table:       

	.globl __trap_0
	__trap_0:
	svlcx
	movh.a %a15,hi:mg_vTrapDisptab+(4*0)
	ld.w %d4,[%a15]lo:mg_vTrapDisptab+(4*0)
	mov.a %a15, %d4
	mov %d4,%d15
	calli %a15
	rslcx
	rfe
	.align 5
	.globl __trap_1
	__trap_1:
	svlcx
	movh.a %a15,hi:mg_vTrapDisptab+(4*1)
	ld.w %d4,[%a15]lo:mg_vTrapDisptab+(4*1)
	mov.a %a15, %d4
	mov %d4,%d15
	calli %a15
	rslcx
	rfe
	.align 5
	.globl __trap_2
	__trap_2:
	svlcx
	movh.a %a15,hi:mg_vTrapDisptab+(4*2)
	ld.w %d4,[%a15]lo:mg_vTrapDisptab+(4*2)
	mov.a %a15, %d4
	mov %d4,%d15
	calli %a15
	rslcx
	rfe
	.align 5
	.globl __trap_3
	__trap_3:
	svlcx
	movh.a %a15,hi:mg_vTrapDisptab+(4*3)
	ld.w %d4,[%a15]lo:mg_vTrapDisptab+(4*3)
	mov.a %a15, %d4
	mov %d4,%d15
	calli %a15
	rslcx
	rfe
	.align 5
	.globl __trap_4
	__trap_4:
	svlcx
	movh.a %a15,hi:mg_vTrapDisptab+(4*4)
	ld.w %d4,[%a15]lo:mg_vTrapDisptab+(4*4)
	mov.a %a15, %d4
	mov %d4,%d15
	calli %a15
	rslcx
	rfe
	.align 5
	.globl __trap_5
	__trap_5:
	svlcx
	movh.a %a15,hi:mg_vTrapDisptab+(4*5)
	ld.w %d4,[%a15]lo:mg_vTrapDisptab+(4*5)
	mov.a %a15, %d4
	mov %d4,%d15
	calli %a15
	rslcx
	rfe
	.align 5
	.globl __trap_6
	__trap_6:
	svlcx
	movh.a %a15,hi:mg_vTrapDisptab+(4*6)
	ld.w %d4,[%a15]lo:mg_vTrapDisptab+(4*6)
	mov.a %a15, %d4
	mov %d4,%d15
	calli %a15
	rslcx
	rfe
	.align 5
	.globl __trap_7
	__trap_7:
	svlcx
	movh.a %a15,hi:mg_vTrapDisptab+(4*7)
	ld.w %d4,[%a15]lo:mg_vTrapDisptab+(4*7)
	mov.a %a15, %d4
	mov %d4,%d15
	calli %a15
	rslcx
	rfe
	.align 5
	.text
#NO_APP
	.section .text.MPU_QM_CODE,"ax",@progbits
	.align 3
	.type	McalInit, @function
McalInit:
.LFB213:
	.file 1 "../30_Bsw/Main/Main.c"
	.loc 1 336 0
	.loc 1 338 0
	call	Port_Init
	.loc 1 339 0
	call	Adc_Init
	.loc 1 340 0
	call	Gtm_Init
	.loc 1 342 0
	call	CANDriver_Init
	.loc 1 343 0
	call	Qspi_Init
	.loc 1 344 0
	j	Safety_Cfg
.LFE213:
	.size	McalInit, .-McalInit
	.align 3
	.type	BswInit, @function
BswInit:
.LFB214:
	.loc 1 348 0
	.loc 1 349 0
	call	ComServ_Init
	.loc 1 350 0
	mov	%d4, 0
	call	TpInit
	.loc 1 351 0
	j	Uds_Init
.LFE214:
	.size	BswInit, .-BswInit
	.align 3
	.global	delay_us_main
	.type	delay_us_main, @function
delay_us_main:
.LFB204:
	.loc 1 208 0
.LVL0:
	.loc 1 211 0
	movh	%d2, 15908
	.loc 1 209 0
	ld.w	%d3, 0xf0000014
.LVL1:
	utof	%d4, %d4
.LVL2:
	.loc 1 211 0
	addi	%d2, %d2, -10486
.L4:
	.loc 1 211 0 is_stmt 0 discriminator 1
	ld.w	%d15, 0xf0000014
	sub	%d15, %d3
	utof	%d15, %d15
	mul.f	%d15, %d15, %d2
	cmp.f	%d15, %d15, %d4
	jnz.t	%d15, 0, .L4
	.loc 1 212 0 is_stmt 1
	ret
.LFE204:
	.size	delay_us_main, .-delay_us_main
	.align 3
	.global	delay_ms_main
	.type	delay_ms_main, @function
delay_ms_main:
.LFB205:
	.loc 1 215 0
.LVL3:
	.loc 1 218 0
	movh	%d2, 16168
	.loc 1 216 0
	ld.w	%d3, 0xf0000020
.LVL4:
	utof	%d4, %d4
.LVL5:
	.loc 1 218 0
	addi	%d2, %d2, -14932
.L8:
	.loc 1 218 0 is_stmt 0 discriminator 1
	ld.w	%d15, 0xf0000020
	sub	%d15, %d3
	utof	%d15, %d15
	mul.f	%d15, %d15, %d2
	cmp.f	%d15, %d15, %d4
	jnz.t	%d15, 0, .L8
	.loc 1 219 0 is_stmt 1
	ret
.LFE205:
	.size	delay_ms_main, .-delay_ms_main
	.align 3
	.global	Main_GetBuildDate
	.type	Main_GetBuildDate, @function
Main_GetBuildDate:
.LFB206:
	.loc 1 222 0
	.loc 1 223 0
	mov	%d4, 2024
	call	Dsp_Decimal2Bcd
	.loc 1 224 0
	mov	%d4, 6
	.loc 1 223 0
	mov	%d8, %d2
.LVL6:
	.loc 1 224 0
	call	Dsp_Decimal2Bcd
.LVL7:
	.loc 1 225 0
	mov	%d4, 19
	.loc 1 224 0
	mov	%d15, %d2
.LVL8:
	.loc 1 225 0
	call	Dsp_Decimal2Bcd
.LVL9:
	.loc 1 226 0
	sh	%d3, %d8, 16
	.loc 1 227 0
	sh	%d15, %d15, 8
.LVL10:
	.loc 1 226 0
	or	%d15, %d3
	.loc 1 230 0
	or	%d2, %d15
.LVL11:
	ret
.LFE206:
	.size	Main_GetBuildDate, .-Main_GetBuildDate
	.align 3
	.global	Main_GetBuildTime
	.type	Main_GetBuildTime, @function
Main_GetBuildTime:
.LFB207:
	.loc 1 233 0
	.loc 1 234 0
	mov	%d4, 13
	call	Dsp_Decimal2Bcd
	.loc 1 235 0
	mov	%d4, 28
	.loc 1 234 0
	mov	%d8, %d2
.LVL12:
	.loc 1 235 0
	call	Dsp_Decimal2Bcd
.LVL13:
	.loc 1 236 0
	mov	%d4, 26
	.loc 1 235 0
	mov	%d15, %d2
.LVL14:
	.loc 1 236 0
	call	Dsp_Decimal2Bcd
.LVL15:
	.loc 1 237 0
	sh	%d3, %d8, 16
	.loc 1 238 0
	sh	%d15, %d15, 8
.LVL16:
	.loc 1 237 0
	or	%d15, %d3
	.loc 1 241 0
	or	%d2, %d15
.LVL17:
	ret
.LFE207:
	.size	Main_GetBuildTime, .-Main_GetBuildTime
	.align 3
	.global	Main_GetSwVersion
	.type	Main_GetSwVersion, @function
Main_GetSwVersion:
.LFB208:
	.loc 1 244 0
.LVL18:
	.loc 1 252 0
	movh	%d2, 4352
	addi	%d2, %d2, 286
	ret
.LFE208:
	.size	Main_GetSwVersion, .-Main_GetSwVersion
	.align 3
	.global	Main_GetBuildInfo
	.type	Main_GetBuildInfo, @function
Main_GetBuildInfo:
.LFB209:
	.loc 1 255 0
.LVL19:
	.loc 1 256 0
	mov	%d15, 2024
	st.h	[%a4]0, %d15
	.loc 1 257 0
	mov	%d15, 6
	st.h	[%a4] 2, %d15
	.loc 1 258 0
	mov	%d15, 19
	st.h	[%a4] 4, %d15
	.loc 1 259 0
	mov	%d15, 13
	st.h	[%a4] 6, %d15
	.loc 1 260 0
	mov	%d15, 28
	st.h	[%a4] 8, %d15
	.loc 1 261 0
	mov	%d15, 26
	st.h	[%a4] 10, %d15
	.loc 1 262 0
	ret
.LFE209:
	.size	Main_GetBuildInfo, .-Main_GetBuildInfo
	.align 3
	.global	Main_GetHwVer
	.type	Main_GetHwVer, @function
Main_GetHwVer:
.LFB210:
	.loc 1 265 0
.LVL20:
	.loc 1 269 0
	movh.a	%a15, hi:-268184796
	lea	%a15, [%a15] lo:-268184796
	ld.w	%d5, [%a15]0
	extr.u	%d5, %d5, 10, 1
	.loc 1 273 0
	sh	%d15, %d5, 3
	.loc 1 269 0
	st.h	[%a4]0, %d5
	.loc 1 270 0
	ld.w	%d4, [%a15]0
	extr.u	%d4, %d4, 5, 1
	st.h	[%a4] 2, %d4
	.loc 1 271 0
	ld.w	%d2, [%a15]0
	.loc 1 274 0
	sh	%d4, 2
	.loc 1 271 0
	extr.u	%d2, %d2, 6, 1
	.loc 1 273 0
	or	%d15, %d4
	.loc 1 271 0
	st.h	[%a4] 4, %d2
	.loc 1 272 0
	ld.w	%d3, [%a15]0
	.loc 1 275 0
	sh	%d2, 1
	.loc 1 272 0
	extr.u	%d3, %d3, 7, 1
	.loc 1 273 0
	or	%d15, %d3
	or	%d15, %d2
	.loc 1 272 0
	st.h	[%a4] 6, %d3
	.loc 1 273 0
	st.h	[%a4] 8, %d15
	.loc 1 278 0
	jlt.u	%d15, 15, .L15
	.loc 1 280 0
	mov	%d15, 15
	.loc 1 303 0
	mov	%e2, 0
	.loc 1 280 0
	st.w	[%a4] 12, %d15
.LVL21:
.L16:
	.loc 1 305 0
	sh	%d3, %d3, 8
.LVL22:
	or	%d2, %d3
.LVL23:
	st.h	[%a4] 10, %d2
	.loc 1 306 0
	ret
.LVL24:
.L15:
	.loc 1 284 0
	st.w	[%a4] 12, %d15
	.loc 1 286 0
	add	%d15, -1
	.loc 1 288 0
	mov	%d2, 0
	mov	%d3, 11
	.loc 1 286 0
	jge.u	%d15, 14, .L16
	movh.a	%a15, hi:.L31
	lea	%a15, [%a15] lo:.L31
	addsc.a	%a15, %a15, %d15, 2
	ji	%a15
	.align 2
	.align 2
.L31:
	.code32
	j	.L18
	.code32
	j	.L18
	.code32
	j	.L20
	.code32
	j	.L20
	.code32
	j	.L22
	.code32
	j	.L22
	.code32
	j	.L30
	.code32
	j	.L30
	.code32
	j	.L30
	.code32
	j	.L30
	.code32
	j	.L30
	.code32
	j	.L30
	.code32
	j	.L30
	.code32
	j	.L30
.L30:
.LVL25:
	.loc 1 302 0
	mov	%d3, 12
	mov	%d2, 16
.LVL26:
	.loc 1 305 0
	sh	%d3, %d3, 8
.LVL27:
	or	%d2, %d3
.LVL28:
	st.h	[%a4] 10, %d2
	.loc 1 306 0
	ret
.LVL29:
.L18:
	.loc 1 290 0
	mov	%d3, 11
	mov	%d2, 1
.LVL30:
	.loc 1 305 0
	sh	%d3, %d3, 8
.LVL31:
	or	%d2, %d3
.LVL32:
	st.h	[%a4] 10, %d2
	.loc 1 306 0
	ret
.LVL33:
.L20:
	.loc 1 292 0
	mov	%d3, 11
	mov	%d2, 2
.LVL34:
	.loc 1 305 0
	sh	%d3, %d3, 8
.LVL35:
	or	%d2, %d3
.LVL36:
	st.h	[%a4] 10, %d2
	.loc 1 306 0
	ret
.LVL37:
.L22:
	.loc 1 294 0
	mov	%d3, 12
	mov	%d2, 0
.LVL38:
	.loc 1 305 0
	sh	%d3, %d3, 8
.LVL39:
	or	%d2, %d3
.LVL40:
	st.h	[%a4] 10, %d2
	.loc 1 306 0
	ret
.LFE210:
	.size	Main_GetHwVer, .-Main_GetHwVer
	.align 3
	.global	Main_GetHwVerApp
	.type	Main_GetHwVerApp, @function
Main_GetHwVerApp:
.LFB211:
	.loc 1 309 0
	.loc 1 310 0
	movh.a	%a15, hi:Main_HwVer
	lea	%a15, [%a15] lo:Main_HwVer
	ld.w	%d3, [%a15] 12
	addi	%d2, %d3, -5
	lt.u	%d15, %d2, 10
	st.h	[%a15] 22, %d15
	.loc 1 311 0
	st.h	[%a15] 30, %d15
	.loc 1 312 0
	add	%d15, %d3, -7
	lt.u	%d15, %d15, 8
	st.h	[%a15] 18, %d15
	.loc 1 313 0
	jlt.u	%d3, 5, .L37
	.loc 1 317 0
	jlt.u	%d2, 4, .L38
	.loc 1 323 0
	mov	%d15, 2
	st.h	[%a15] 26, %d15
	ret
.L38:
	.loc 1 319 0
	mov	%d15, 1
	st.h	[%a15] 26, %d15
	ret
.L37:
	.loc 1 315 0
	mov	%d15, 0
	st.h	[%a15] 26, %d15
	ret
.LFE211:
	.size	Main_GetHwVerApp, .-Main_GetHwVerApp
	.align 3
	.global	Main_UdsGetHwVer
	.type	Main_UdsGetHwVer, @function
Main_UdsGetHwVer:
.LFB212:
	.loc 1 328 0
	.loc 1 329 0
	movh.a	%a15, hi:Main_HwVer
	lea	%a15, [%a15] lo:Main_HwVer
	ld.hu	%d2, [%a15] 10
	ld.hu	%d15, [%a15] 8
	sh	%d2, %d2, 16
	.loc 1 330 0
	or	%d2, %d15
	ret
.LFE212:
	.size	Main_UdsGetHwVer, .-Main_UdsGetHwVer
	.align 3
	.global	Trap_vInit
	.type	Trap_vInit, @function
Trap_vInit:
.LFB215:
	.loc 1 355 0
	.loc 1 357 0
	movh	%d15, hi:_trap_0
	addi	%d15, %d15, lo:_trap_0
	movh.a	%a2, hi:mg_vTrapDisptab
	lea	%a15, [%a2] lo:mg_vTrapDisptab
	st.w	[%a2] lo:mg_vTrapDisptab, %d15
	.loc 1 358 0
	movh	%d15, hi:_trap_1
	addi	%d15, %d15, lo:_trap_1
	st.w	[%a15] 4, %d15
	.loc 1 359 0
	movh	%d15, hi:_trap_2
	addi	%d15, %d15, lo:_trap_2
	st.w	[%a15] 8, %d15
	.loc 1 360 0
	movh	%d15, hi:_trap_3
	addi	%d15, %d15, lo:_trap_3
	st.w	[%a15] 12, %d15
	.loc 1 361 0
	movh	%d15, hi:_trap_4
	addi	%d15, %d15, lo:_trap_4
	st.w	[%a15] 16, %d15
	.loc 1 362 0
	movh	%d15, hi:_trap_5
	addi	%d15, %d15, lo:_trap_5
	st.w	[%a15] 20, %d15
	.loc 1 363 0
	movh	%d15, hi:_trap_6
	addi	%d15, %d15, lo:_trap_6
	st.w	[%a15] 24, %d15
	.loc 1 364 0
	movh	%d15, hi:_trap_7
	addi	%d15, %d15, lo:_trap_7
	st.w	[%a15] 28, %d15
	.loc 1 365 0
	ret
.LFE215:
	.size	Trap_vInit, .-Trap_vInit
	.align 3
	.global	mg_vTrapTableRedirection
	.type	mg_vTrapTableRedirection, @function
mg_vTrapTableRedirection:
.LFB216:
	.loc 1 369 0
	.loc 1 370 0
	call	IfxScuWdt_getCpuWatchdogPassword
	mov	%d4, %d2
	call	IfxScuWdt_clearCpuEndinit
.LBB2:
	.loc 1 372 0
#APP
	# 372 "../30_Bsw/Main/Main.c" 1
	mfcr %d15, LO:0xFE24
	# 0 "" 2
.LVL41:
#NO_APP
.LBE2:
	movh.a	%a15, hi:TRAP_mg_u32TrapBaseAddr
	st.w	[%a15] lo:TRAP_mg_u32TrapBaseAddr, %d15
.LVL42:
.LBB3:
	.loc 1 375 0
	movh	%d15, hi:TriCore_trap_table
.LVL43:
	addi	%d15, %d15, lo:TriCore_trap_table
#APP
	# 375 "../30_Bsw/Main/Main.c" 1
	mtcr LO:0xFE24, %d15
	# 0 "" 2
#NO_APP
.LBE3:
	.loc 1 376 0
	call	IfxScuWdt_getCpuWatchdogPassword
.LVL44:
	mov	%d4, %d2
	j	IfxScuWdt_setCpuEndinit
.LFE216:
	.size	mg_vTrapTableRedirection, .-mg_vTrapTableRedirection
	.align 3
	.global	core0_main
	.type	core0_main, @function
core0_main:
.LFB203:
	.loc 1 151 0
	mov.aa	%a14, %SP
.LCFI0:
	.loc 1 158 0
	call	Pma_vInit
	.loc 1 161 0
	call	IOHWSF_vMcSafeStartUpChecks
	.loc 1 163 0
	call	IOHWSF_vMcSafeSwitchToRunState
	.loc 1 164 0
	call	IfxScuWdt_getCpuWatchdogPassword
	mov	%d15, %d2
	mov	%d4, %d15
	call	IfxScuWdt_disableCpuWatchdog
	.loc 1 165 0
	call	IfxScuWdt_getSafetyWatchdogPassword
	mov	%d15, %d2
	mov	%d4, %d15
	call	IfxScuWdt_disableSafetyWatchdog
	.loc 1 167 0
	movh	%d15, hi:Main_InitFin
	mov.a	%a7, %d15
	lea	%a15, [%a7] lo:Main_InitFin
	mov	%d15, 0
	st.b	[%a15]0, %d15
	.loc 1 168 0
	movh	%d15, hi:Main_HwVer
	mov.a	%a7, %d15
	lea	%a4, [%a7] lo:Main_HwVer
	call	Main_GetHwVer
	.loc 1 169 0
	call	Main_GetHwVerApp
	.loc 1 170 0
	call	McalInit
	.loc 1 171 0
	call	IOHWSF_vSrcRegestersCheck
	.loc 1 172 0
	call	BswInit
	.loc 1 174 0
	call	Adc_StartUp
	.loc 1 176 0
	call	HsfbApp_initialize
	.loc 1 177 0
	call	HsfbApp_CallInit
	.loc 1 178 0
	call	KL30_AutoDiag
	.loc 1 179 0
	call	Trap_vInit
	.loc 1 180 0
	call	mg_vTrapTableRedirection
	.loc 1 184 0
	call	mpu_vInit
	.loc 1 186 0
	call	IOHWSF_ACCESSPROT_vConfigureAccessProtection
	.loc 1 187 0
	call	IOHWSF_FSPTEST
	.loc 1 189 0
#APP
	# 189 "../30_Bsw/Main/Main.c" 1
	enable
	# 0 "" 2
#NO_APP
.L43:
	.loc 1 199 0 discriminator 1
	j	.L43
.LFE203:
	.size	core0_main, .-core0_main
	.align 3
	.global	mg_vTrapTableRestore
	.type	mg_vTrapTableRestore, @function
mg_vTrapTableRestore:
.LFB217:
	.loc 1 381 0
	.loc 1 382 0
	call	IfxScuWdt_getCpuWatchdogPassword
	mov	%d4, %d2
.LBB4:
	.loc 1 384 0
	movh.a	%a15, hi:TRAP_mg_u32TrapBaseAddr
.LBE4:
	.loc 1 382 0
	call	IfxScuWdt_clearCpuEndinit
.LVL45:
.LBB5:
	.loc 1 384 0
	ld.w	%d15, [%a15] lo:TRAP_mg_u32TrapBaseAddr
#APP
	# 384 "../30_Bsw/Main/Main.c" 1
	mtcr LO:0xFE24, %d15
	# 0 "" 2
#NO_APP
.LBE5:
	.loc 1 385 0
	call	IfxScuWdt_getCpuWatchdogPassword
.LVL46:
	mov	%d4, %d2
	j	IfxScuWdt_setCpuEndinit
.LFE217:
	.size	mg_vTrapTableRestore, .-mg_vTrapTableRestore
	.global	mg_vTrapDisptab
	.section .bss.MPU_QM_VAR_NOINIT,"aw",@nobits
	.align 3
	.type	mg_vTrapDisptab, @object
	.size	mg_vTrapDisptab, 32
mg_vTrapDisptab:
	.zero	32
	.global	Main_InitFin
	.align 3
	.type	Main_InitFin, @object
	.size	Main_InitFin, 1
Main_InitFin:
	.zero	1
	.global	DebugError
	.align 3
	.type	DebugError, @object
	.size	DebugError, 4
DebugError:
	.zero	4
	.global	Main_HwVer
	.align 3
	.type	Main_HwVer, @object
	.size	Main_HwVer, 32
Main_HwVer:
	.zero	32
	.global	MAIN_mg_au32CompatibilityApplVerArea
	.section .COMPATIBILITY_APPL_VER,"a",@progbits
	.align 2
	.type	MAIN_mg_au32CompatibilityApplVerArea, @object
	.size	MAIN_mg_au32CompatibilityApplVerArea, 4
MAIN_mg_au32CompatibilityApplVerArea:
	.word	-1412567211
	.global	MAIN_mg_au16CompatibilityApplSwSwArea
	.section .COMPATIBILITY_APPL_SW_SW,"a",@progbits
	.type	MAIN_mg_au16CompatibilityApplSwSwArea, @object
	.size	MAIN_mg_au16CompatibilityApplSwSwArea, 2
MAIN_mg_au16CompatibilityApplSwSwArea:
	.byte	86
	.byte	120
	.global	MAIN_mg_au16CompatibilityApplBtldSwArea
	.section .COMPATIBILITY_APPL_BTLD_SW,"a",@progbits
	.type	MAIN_mg_au16CompatibilityApplBtldSwArea, @object
	.size	MAIN_mg_au16CompatibilityApplBtldSwArea, 32
MAIN_mg_au16CompatibilityApplBtldSwArea:
	.byte	18
	.byte	52
	.byte	17
	.byte	33
	.byte	18
	.byte	34
	.byte	19
	.byte	35
	.byte	20
	.byte	36
	.byte	21
	.byte	37
	.byte	22
	.byte	38
	.byte	23
	.byte	39
	.byte	24
	.byte	40
	.byte	25
	.byte	41
	.byte	26
	.byte	42
	.byte	27
	.byte	43
	.byte	28
	.byte	44
	.byte	29
	.byte	45
	.byte	30
	.byte	46
	.byte	31
	.byte	47
	.global	MAIN_mg_au32AbmValidationArea
	.section .BMH_validate,"a",@progbits
	.align 2
	.type	MAIN_mg_au32AbmValidationArea, @object
	.size	MAIN_mg_au32AbmValidationArea, 32
MAIN_mg_au32AbmValidationArea:
	.word	-1431655766
	.word	1431655765
	.word	-1431655766
	.word	1431655765
	.word	-1431655766
	.word	1431655765
	.word	-1431655766
	.word	1431655765
	.section .bss.MPU_QM_VAR_NOINIT
	.align 3
	.type	TRAP_mg_u32TrapBaseAddr, @object
	.size	TRAP_mg_u32TrapBaseAddr, 4
TRAP_mg_u32TrapBaseAddr:
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
	.uaword	.LFB213
	.uaword	.LFE213-.LFB213
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB214
	.uaword	.LFE214-.LFB214
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
.LSFDE22:
	.uaword	.LEFDE22-.LASFDE22
.LASFDE22:
	.uaword	.Lframe0
	.uaword	.LFB215
	.uaword	.LFE215-.LFB215
	.align 2
.LEFDE22:
.LSFDE24:
	.uaword	.LEFDE24-.LASFDE24
.LASFDE24:
	.uaword	.Lframe0
	.uaword	.LFB216
	.uaword	.LFE216-.LFB216
	.align 2
.LEFDE24:
.LSFDE26:
	.uaword	.LEFDE26-.LASFDE26
.LASFDE26:
	.uaword	.Lframe0
	.uaword	.LFB203
	.uaword	.LFE203-.LFB203
	.byte	0x4
	.uaword	.LCFI0-.LFB203
	.byte	0xd
	.uleb128 0x1e
	.align 2
.LEFDE26:
.LSFDE28:
	.uaword	.LEFDE28-.LASFDE28
.LASFDE28:
	.uaword	.Lframe0
	.uaword	.LFB217
	.uaword	.LFE217-.LFB217
	.align 2
.LEFDE28:
.section .text,"ax",@progbits
.Letext0:
	.file 2 "../30_Bsw/Common/rtwtypes.h"
	.file 3 "../30_Bsw/Common/Platform_Types.h"
	.file 4 "../30_Bsw/Common/TC21x/IfxCpu_regdef.h"
	.file 5 "../30_Bsw/Common/TC21x/IfxPort_regdef.h"
	.file 6 "../30_Bsw/Main/Main_api.h"
	.file 7 "../30_Bsw/Common/TC21x/IfxStm_regdef.h"
	.file 8 "../30_Bsw/Mcal/Can/can_cfg.h"
	.file 9 "../30_Bsw/Mpu/mpu_api.h"
	.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x1104
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.6.3 build on 2013-05-17"
	.byte	0x1
	.string	"../30_Bsw/Main/Main.c"
	.string	"D:\\\\SVN\\\\IPB-11Kw\\\\LvDc-C01R0P0-Ceramicheater\\\\20_Make"
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_ranges0+0x18
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
	.uleb128 0x3
	.string	"uint16_T"
	.byte	0x2
	.byte	0x53
	.uaword	0xc7
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
	.byte	0x2
	.byte	0x55
	.uaword	0xf4
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
	.uleb128 0x3
	.string	"boolean_T"
	.byte	0x2
	.byte	0x5f
	.uaword	0x99
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x3
	.string	"u16"
	.byte	0x2
	.byte	0x7f
	.uaword	0xb7
	.uleb128 0x3
	.string	"u32"
	.byte	0x2
	.byte	0x81
	.uaword	0xe4
	.uleb128 0x3
	.string	"bit"
	.byte	0x2
	.byte	0x84
	.uaword	0x117
	.uleb128 0x3
	.string	"uint8"
	.byte	0x3
	.byte	0x5b
	.uaword	0x99
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x3
	.string	"uint32"
	.byte	0x3
	.byte	0x5f
	.uaword	0x128
	.uleb128 0x4
	.uaword	0xf4
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
	.byte	0x4
	.uahalf	0x204
	.uaword	0x2c0
	.uleb128 0x6
	.string	"CDC"
	.byte	0x4
	.uahalf	0x206
	.uaword	0x18d
	.byte	0x4
	.byte	0x7
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.string	"CDE"
	.byte	0x4
	.uahalf	0x207
	.uaword	0x18d
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.string	"GW"
	.byte	0x4
	.uahalf	0x208
	.uaword	0x18d
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.string	"IS"
	.byte	0x4
	.uahalf	0x209
	.uaword	0x18d
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.string	"IO"
	.byte	0x4
	.uahalf	0x20a
	.uaword	0x18d
	.byte	0x4
	.byte	0x2
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.string	"PRS"
	.byte	0x4
	.uahalf	0x20b
	.uaword	0x18d
	.byte	0x4
	.byte	0x2
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.string	"S"
	.byte	0x4
	.uahalf	0x20c
	.uaword	0x18d
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.string	"reserved_15"
	.byte	0x4
	.uahalf	0x20d
	.uaword	0x18d
	.byte	0x4
	.byte	0xc
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.string	"SAV"
	.byte	0x4
	.uahalf	0x20e
	.uaword	0x18d
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.string	"AV"
	.byte	0x4
	.uahalf	0x20f
	.uaword	0x18d
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.string	"SV"
	.byte	0x4
	.uahalf	0x210
	.uaword	0x18d
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.string	"V"
	.byte	0x4
	.uahalf	0x211
	.uaword	0x18d
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.string	"C"
	.byte	0x4
	.uahalf	0x212
	.uaword	0x18d
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x7
	.string	"Ifx_CPU_PSW_Bits"
	.byte	0x4
	.uahalf	0x213
	.uaword	0x1bd
	.uleb128 0x8
	.byte	0x4
	.byte	0x4
	.uahalf	0x467
	.uaword	0x301
	.uleb128 0x9
	.string	"U"
	.byte	0x4
	.uahalf	0x469
	.uaword	0xf4
	.uleb128 0x9
	.string	"I"
	.byte	0x4
	.uahalf	0x46a
	.uaword	0xdd
	.uleb128 0x9
	.string	"B"
	.byte	0x4
	.uahalf	0x46b
	.uaword	0x2c0
	.byte	0
	.uleb128 0x7
	.string	"Ifx_CPU_PSW"
	.byte	0x4
	.uahalf	0x46c
	.uaword	0x2d9
	.uleb128 0xa
	.uaword	0x15b
	.uaword	0x325
	.uleb128 0xb
	.uaword	0x128
	.byte	0x3
	.byte	0
	.uleb128 0xc
	.string	"_Ifx_P_IN_Bits"
	.byte	0x4
	.byte	0x5
	.byte	0x76
	.uaword	0x45c
	.uleb128 0xd
	.string	"P0"
	.byte	0x5
	.byte	0x78
	.uaword	0xf4
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"P1"
	.byte	0x5
	.byte	0x79
	.uaword	0xf4
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"P2"
	.byte	0x5
	.byte	0x7a
	.uaword	0xf4
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"P3"
	.byte	0x5
	.byte	0x7b
	.uaword	0xf4
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"P4"
	.byte	0x5
	.byte	0x7c
	.uaword	0xf4
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"P5"
	.byte	0x5
	.byte	0x7d
	.uaword	0xf4
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"P6"
	.byte	0x5
	.byte	0x7e
	.uaword	0xf4
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"P7"
	.byte	0x5
	.byte	0x7f
	.uaword	0xf4
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"P8"
	.byte	0x5
	.byte	0x80
	.uaword	0xf4
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"P9"
	.byte	0x5
	.byte	0x81
	.uaword	0xf4
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"P10"
	.byte	0x5
	.byte	0x82
	.uaword	0xf4
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"P11"
	.byte	0x5
	.byte	0x83
	.uaword	0xf4
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"P12"
	.byte	0x5
	.byte	0x84
	.uaword	0xf4
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"P13"
	.byte	0x5
	.byte	0x85
	.uaword	0xf4
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"P14"
	.byte	0x5
	.byte	0x86
	.uaword	0xf4
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"P15"
	.byte	0x5
	.byte	0x87
	.uaword	0xf4
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"reserved_16"
	.byte	0x5
	.byte	0x88
	.uaword	0xf4
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_IN_Bits"
	.byte	0x5
	.byte	0x89
	.uaword	0x325
	.uleb128 0x8
	.byte	0x4
	.byte	0x5
	.uahalf	0x1ef
	.uaword	0x499
	.uleb128 0x9
	.string	"U"
	.byte	0x5
	.uahalf	0x1f1
	.uaword	0xf4
	.uleb128 0x9
	.string	"I"
	.byte	0x5
	.uahalf	0x1f2
	.uaword	0xdd
	.uleb128 0x9
	.string	"B"
	.byte	0x5
	.uahalf	0x1f3
	.uaword	0x45c
	.byte	0
	.uleb128 0x7
	.string	"Ifx_P_IN"
	.byte	0x5
	.uahalf	0x1f4
	.uaword	0x471
	.uleb128 0xe
	.byte	0x4
	.byte	0x6
	.byte	0x59
	.uaword	0x5eb
	.uleb128 0xf
	.string	"MAIN_E_HW_B0"
	.sleb128 0
	.uleb128 0xf
	.string	"MAIN_E_HW_B01_X10"
	.sleb128 1
	.uleb128 0xf
	.string	"MAIN_E_HW_B01_X10_DV"
	.sleb128 2
	.uleb128 0xf
	.string	"MAIN_E_HW_B02_X10"
	.sleb128 3
	.uleb128 0xf
	.string	"MAIN_E_HW_B02_X10_DV"
	.sleb128 4
	.uleb128 0xf
	.string	"MAIN_E_HW_C0"
	.sleb128 5
	.uleb128 0xf
	.string	"MAIN_E_HW_C0_DV"
	.sleb128 6
	.uleb128 0xf
	.string	"MAIN_E_HW_C1"
	.sleb128 7
	.uleb128 0xf
	.string	"MAIN_E_HW_C1_DV"
	.sleb128 8
	.uleb128 0xf
	.string	"MAIN_E_HW_C1_C01"
	.sleb128 9
	.uleb128 0xf
	.string	"MAIN_E_HW_C1_C01_DV"
	.sleb128 10
	.uleb128 0xf
	.string	"MAIN_E_HW_C1_C02"
	.sleb128 11
	.uleb128 0xf
	.string	"MAIN_E_HW_C1_C02_DV"
	.sleb128 12
	.uleb128 0xf
	.string	"MAIN_E_HW_C1_BAK13"
	.sleb128 13
	.uleb128 0xf
	.string	"MAIN_E_HW_C1_BAK14"
	.sleb128 14
	.uleb128 0xf
	.string	"MAIN_E_HW_Reserved"
	.sleb128 15
	.byte	0
	.uleb128 0x3
	.string	"MAIN_E_HW_VER"
	.byte	0x6
	.byte	0x6a
	.uaword	0x4aa
	.uleb128 0x10
	.byte	0x10
	.byte	0x6
	.byte	0x6c
	.uaword	0x681
	.uleb128 0x11
	.string	"App"
	.byte	0x6
	.byte	0x6d
	.uaword	0x145
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"Meas"
	.byte	0x6
	.byte	0x6e
	.uaword	0x145
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x11
	.string	"Ctrl"
	.byte	0x6
	.byte	0x6f
	.uaword	0x145
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.string	"Pwm"
	.byte	0x6
	.byte	0x70
	.uaword	0x145
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x11
	.string	"Diag"
	.byte	0x6
	.byte	0x71
	.uaword	0x145
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x11
	.string	"Ntc"
	.byte	0x6
	.byte	0x72
	.uaword	0x145
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x11
	.string	"State"
	.byte	0x6
	.byte	0x73
	.uaword	0x145
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x11
	.string	"Safety"
	.byte	0x6
	.byte	0x74
	.uaword	0x145
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.byte	0
	.uleb128 0x3
	.string	"MAIN_E_HW_VER_APP"
	.byte	0x6
	.byte	0x75
	.uaword	0x600
	.uleb128 0x10
	.byte	0x20
	.byte	0x6
	.byte	0x77
	.uaword	0x6f2
	.uleb128 0x11
	.string	"Code"
	.byte	0x6
	.byte	0x78
	.uaword	0x6f2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"CodeNum"
	.byte	0x6
	.byte	0x79
	.uaword	0x145
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x11
	.string	"VerName"
	.byte	0x6
	.byte	0x7a
	.uaword	0x145
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x11
	.string	"Ver"
	.byte	0x6
	.byte	0x7b
	.uaword	0x5eb
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x11
	.string	"App"
	.byte	0x6
	.byte	0x7c
	.uaword	0x681
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0xa
	.uaword	0x145
	.uaword	0x702
	.uleb128 0xb
	.uaword	0x128
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.string	"MAIN_S_HW_VER"
	.byte	0x6
	.byte	0x7d
	.uaword	0x69a
	.uleb128 0x10
	.byte	0xc
	.byte	0x6
	.byte	0x7f
	.uaword	0x778
	.uleb128 0x11
	.string	"Year"
	.byte	0x6
	.byte	0x80
	.uaword	0x145
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"Month"
	.byte	0x6
	.byte	0x81
	.uaword	0x145
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x11
	.string	"Day"
	.byte	0x6
	.byte	0x82
	.uaword	0x145
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.string	"Hour"
	.byte	0x6
	.byte	0x83
	.uaword	0x145
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x11
	.string	"Min"
	.byte	0x6
	.byte	0x84
	.uaword	0x145
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x11
	.string	"Sec"
	.byte	0x6
	.byte	0x85
	.uaword	0x145
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.string	"MAIN_S_BUILD_INFO"
	.byte	0x6
	.byte	0x86
	.uaword	0x717
	.uleb128 0xc
	.string	"_Ifx_STM_TIM1_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0xcc
	.uaword	0x7c2
	.uleb128 0xd
	.string	"STM35_4"
	.byte	0x7
	.byte	0xce
	.uaword	0xf4
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_TIM1_Bits"
	.byte	0x7
	.byte	0xcf
	.uaword	0x791
	.uleb128 0xc
	.string	"_Ifx_STM_TIM4_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0xde
	.uaword	0x80d
	.uleb128 0xd
	.string	"STM47_16"
	.byte	0x7
	.byte	0xe0
	.uaword	0xf4
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_TIM4_Bits"
	.byte	0x7
	.byte	0xe1
	.uaword	0x7db
	.uleb128 0x8
	.byte	0x4
	.byte	0x7
	.uahalf	0x175
	.uaword	0x84e
	.uleb128 0x9
	.string	"U"
	.byte	0x7
	.uahalf	0x177
	.uaword	0xf4
	.uleb128 0x9
	.string	"I"
	.byte	0x7
	.uahalf	0x178
	.uaword	0xdd
	.uleb128 0x9
	.string	"B"
	.byte	0x7
	.uahalf	0x179
	.uaword	0x7c2
	.byte	0
	.uleb128 0x7
	.string	"Ifx_STM_TIM1"
	.byte	0x7
	.uahalf	0x17a
	.uaword	0x826
	.uleb128 0x8
	.byte	0x4
	.byte	0x7
	.uahalf	0x18d
	.uaword	0x88b
	.uleb128 0x9
	.string	"U"
	.byte	0x7
	.uahalf	0x18f
	.uaword	0xf4
	.uleb128 0x9
	.string	"I"
	.byte	0x7
	.uahalf	0x190
	.uaword	0xdd
	.uleb128 0x9
	.string	"B"
	.byte	0x7
	.uahalf	0x191
	.uaword	0x80d
	.byte	0
	.uleb128 0x7
	.string	"Ifx_STM_TIM4"
	.byte	0x7
	.uahalf	0x192
	.uaword	0x863
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x469
	.uaword	0x988
	.uleb128 0xf
	.string	"CAN_RX_COM_WAKEUPSLEEPMANAGEMENT_IDX"
	.sleb128 0
	.uleb128 0xf
	.string	"CAN_RX_HVDC_SAFETYMEASURE_IDX"
	.sleb128 1
	.uleb128 0xf
	.string	"CAN_RX_HTB_CMD_IDX"
	.sleb128 2
	.uleb128 0xf
	.string	"CAN_RX_PARAMETER_COM_DCDC_IDX"
	.sleb128 3
	.uleb128 0xf
	.string	"CAN_RX_DCDC_HSFB_DIAG_REQ_IDX"
	.sleb128 4
	.uleb128 0xf
	.string	"CAN_RX_DCDC_DEV_CMD_IDX"
	.sleb128 5
	.uleb128 0xf
	.string	"CAN_RX_DCDC_CMD_IDX"
	.sleb128 6
	.uleb128 0xf
	.string	"CAN_RX_MSG_SIZE"
	.sleb128 7
	.byte	0
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x474
	.uaword	0xb5d
	.uleb128 0xf
	.string	"CAN_TX_LVDC_PMA_ERRCODE_IDX"
	.sleb128 0
	.uleb128 0xf
	.string	"CAN_TX_DCDC_HTB_MEASURE_IDX"
	.sleb128 1
	.uleb128 0xf
	.string	"CAN_TX_LVDC_WAKEUPSLEEPMANAGEMENT_IDX"
	.sleb128 2
	.uleb128 0xf
	.string	"CAN_TX_LVDC_SAFETYMEASURE_IDX"
	.sleb128 3
	.uleb128 0xf
	.string	"CAN_TX_DCDC_MEASURE4_IDX"
	.sleb128 4
	.uleb128 0xf
	.string	"CAN_TX_DCDC_STATUS_ERRCODE_IDX"
	.sleb128 5
	.uleb128 0xf
	.string	"CAN_TX_PARAMETER_DCDC_COM_IDX"
	.sleb128 6
	.uleb128 0xf
	.string	"CAN_TX_DCDC_HSFB_DIAG_RESP_IDX"
	.sleb128 7
	.uleb128 0xf
	.string	"CAN_TX_DCDC_MEASURE2_IDX"
	.sleb128 8
	.uleb128 0xf
	.string	"CAN_TX_LVDC_PMA_ERRSRC_IDX"
	.sleb128 9
	.uleb128 0xf
	.string	"CAN_TX_DCDC_SCOPE1_IDX"
	.sleb128 10
	.uleb128 0xf
	.string	"CAN_TX_DCDC_SCOPE0_IDX"
	.sleb128 11
	.uleb128 0xf
	.string	"CAN_TX_DCDC_STATUS_IDX"
	.sleb128 12
	.uleb128 0xf
	.string	"CAN_TX_DCDC_MEASURE3_IDX"
	.sleb128 13
	.uleb128 0xf
	.string	"CAN_TX_DCDC_MEASURE_IDX"
	.sleb128 14
	.uleb128 0xf
	.string	"CAN_TX_MSG_SIZE"
	.sleb128 15
	.byte	0
	.uleb128 0x13
	.string	"McalInit"
	.byte	0x1
	.uahalf	0x14f
	.byte	0x1
	.uaword	.LFB213
	.uaword	.LFE213
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0x13
	.string	"BswInit"
	.byte	0x1
	.uahalf	0x15b
	.byte	0x1
	.uaword	.LFB214
	.uaword	.LFE214
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0x14
	.byte	0x1
	.string	"delay_us_main"
	.byte	0x1
	.byte	0xcf
	.byte	0x1
	.uaword	.LFB204
	.uaword	.LFE204
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0xbd0
	.uleb128 0x15
	.string	"time"
	.byte	0x1
	.byte	0xcf
	.uaword	0x150
	.uaword	.LLST0
	.uleb128 0x16
	.string	"time0"
	.byte	0x1
	.byte	0xd1
	.uaword	0x150
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x14
	.byte	0x1
	.string	"delay_ms_main"
	.byte	0x1
	.byte	0xd6
	.byte	0x1
	.uaword	.LFB205
	.uaword	.LFE205
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0xc12
	.uleb128 0x15
	.string	"time"
	.byte	0x1
	.byte	0xd6
	.uaword	0x150
	.uaword	.LLST1
	.uleb128 0x16
	.string	"time0"
	.byte	0x1
	.byte	0xd8
	.uaword	0x150
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.string	"Main_GetBuildDate"
	.byte	0x1
	.byte	0xdd
	.byte	0x1
	.uaword	0x150
	.uaword	.LFB206
	.uaword	.LFE206
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0xc80
	.uleb128 0x18
	.string	"BcdY"
	.byte	0x1
	.byte	0xdf
	.uaword	0x145
	.uaword	.LLST2
	.uleb128 0x18
	.string	"BcdM"
	.byte	0x1
	.byte	0xe0
	.uaword	0x145
	.uaword	.LLST3
	.uleb128 0x18
	.string	"BcdD"
	.byte	0x1
	.byte	0xe1
	.uaword	0x145
	.uaword	.LLST4
	.uleb128 0x18
	.string	"BcdDate"
	.byte	0x1
	.byte	0xe2
	.uaword	0x150
	.uaword	.LLST5
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.string	"Main_GetBuildTime"
	.byte	0x1
	.byte	0xe8
	.byte	0x1
	.uaword	0x150
	.uaword	.LFB207
	.uaword	.LFE207
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0xcee
	.uleb128 0x18
	.string	"BcdH"
	.byte	0x1
	.byte	0xea
	.uaword	0x145
	.uaword	.LLST6
	.uleb128 0x18
	.string	"BcdM"
	.byte	0x1
	.byte	0xeb
	.uaword	0x145
	.uaword	.LLST7
	.uleb128 0x18
	.string	"BcdS"
	.byte	0x1
	.byte	0xec
	.uaword	0x145
	.uaword	.LLST8
	.uleb128 0x18
	.string	"BcdTime"
	.byte	0x1
	.byte	0xed
	.uaword	0x150
	.uaword	.LLST9
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.string	"Main_GetSwVersion"
	.byte	0x1
	.byte	0xf3
	.byte	0x1
	.uaword	0x150
	.uaword	.LFB208
	.uaword	.LFE208
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0xd26
	.uleb128 0x19
	.string	"y"
	.byte	0x1
	.byte	0xf5
	.uaword	0x150
	.uaword	0x1100011e
	.byte	0
	.uleb128 0x14
	.byte	0x1
	.string	"Main_GetBuildInfo"
	.byte	0x1
	.byte	0xfe
	.byte	0x1
	.uaword	.LFB209
	.uaword	.LFE209
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0xd60
	.uleb128 0x1a
	.string	"BuildInfo"
	.byte	0x1
	.byte	0xfe
	.uaword	0xd60
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x1b
	.byte	0x4
	.uaword	0x778
	.uleb128 0x1c
	.byte	0x1
	.string	"Main_GetHwVer"
	.byte	0x1
	.uahalf	0x108
	.byte	0x1
	.uaword	.LFB210
	.uaword	.LFE210
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0xdc2
	.uleb128 0x1d
	.string	"HwVer"
	.byte	0x1
	.uahalf	0x108
	.uaword	0xdc2
	.byte	0x1
	.byte	0x64
	.uleb128 0x1e
	.string	"HwVer_X"
	.byte	0x1
	.uahalf	0x10a
	.uaword	0x145
	.uaword	.LLST10
	.uleb128 0x1e
	.string	"HwVer_N"
	.byte	0x1
	.uahalf	0x10a
	.uaword	0x145
	.uaword	.LLST11
	.byte	0
	.uleb128 0x1b
	.byte	0x4
	.uaword	0x702
	.uleb128 0x1f
	.byte	0x1
	.string	"Main_GetHwVerApp"
	.byte	0x1
	.uahalf	0x134
	.byte	0x1
	.uaword	.LFB211
	.uaword	.LFE211
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0x20
	.byte	0x1
	.string	"Main_UdsGetHwVer"
	.byte	0x1
	.uahalf	0x147
	.byte	0x1
	.uaword	0x150
	.uaword	.LFB212
	.uaword	.LFE212
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0x1f
	.byte	0x1
	.string	"Trap_vInit"
	.byte	0x1
	.uahalf	0x162
	.byte	0x1
	.uaword	.LFB215
	.uaword	.LFE215
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0x1c
	.byte	0x1
	.string	"mg_vTrapTableRedirection"
	.byte	0x1
	.uahalf	0x170
	.byte	0x1
	.uaword	.LFB216
	.uaword	.LFE216
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0xe91
	.uleb128 0x21
	.uaword	.LBB2
	.uaword	.LBE2
	.uaword	0xe7a
	.uleb128 0x1e
	.string	"__res"
	.byte	0x1
	.uahalf	0x174
	.uaword	0xf4
	.uaword	.LLST12
	.byte	0
	.uleb128 0x22
	.uaword	.LBB3
	.uaword	.LBE3
	.uleb128 0x23
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x177
	.uaword	0xf4
	.byte	0
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.string	"core0_main"
	.byte	0x1
	.byte	0x96
	.byte	0x1
	.uaword	0xdd
	.uaword	.LFB203
	.uaword	.LFE203
	.uaword	.LLST13
	.uleb128 0x1c
	.byte	0x1
	.string	"mg_vTrapTableRestore"
	.byte	0x1
	.uahalf	0x17c
	.byte	0x1
	.uaword	.LFB217
	.uaword	.LFE217
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0xef2
	.uleb128 0x25
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x26
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x180
	.uaword	0xf4
	.uaword	.LLST14
	.byte	0
	.byte	0
	.uleb128 0x16
	.string	"TRAP_mg_u32TrapBaseAddr"
	.byte	0x1
	.byte	0x4d
	.uaword	0x17f
	.byte	0x5
	.byte	0x3
	.uaword	TRAP_mg_u32TrapBaseAddr
	.uleb128 0x27
	.string	"PSWReg_Rd0"
	.byte	0x9
	.byte	0x45
	.uaword	0x301
	.byte	0x1
	.byte	0x1
	.uleb128 0x27
	.string	"PSWReg_Rd1"
	.byte	0x9
	.byte	0x46
	.uaword	0x301
	.byte	0x1
	.byte	0x1
	.uleb128 0x27
	.string	"PSWReg_Rd2"
	.byte	0x9
	.byte	0x47
	.uaword	0x301
	.byte	0x1
	.byte	0x1
	.uleb128 0x27
	.string	"PSWReg_Rd3"
	.byte	0x9
	.byte	0x48
	.uaword	0x301
	.byte	0x1
	.byte	0x1
	.uleb128 0x28
	.string	"Main_HwVer"
	.byte	0x1
	.byte	0x4a
	.uaword	0x702
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Main_HwVer
	.uleb128 0x28
	.string	"DebugError"
	.byte	0x1
	.byte	0x4b
	.uaword	0x315
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	DebugError
	.uleb128 0x28
	.string	"Main_InitFin"
	.byte	0x1
	.byte	0x4c
	.uaword	0x15b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Main_InitFin
	.uleb128 0xa
	.uaword	0x17f
	.uaword	0xfc4
	.uleb128 0xb
	.uaword	0x128
	.byte	0x7
	.byte	0
	.uleb128 0x28
	.string	"MAIN_mg_au32AbmValidationArea"
	.byte	0x1
	.byte	0x12
	.uaword	0xff0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_mg_au32AbmValidationArea
	.uleb128 0x29
	.uaword	0xfb4
	.uleb128 0xa
	.uaword	0x166
	.uaword	0x1005
	.uleb128 0xb
	.uaword	0x128
	.byte	0x1f
	.byte	0
	.uleb128 0x28
	.string	"MAIN_mg_au16CompatibilityApplBtldSwArea"
	.byte	0x1
	.byte	0x20
	.uaword	0x103b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_mg_au16CompatibilityApplBtldSwArea
	.uleb128 0x29
	.uaword	0xff5
	.uleb128 0xa
	.uaword	0x166
	.uaword	0x1050
	.uleb128 0xb
	.uaword	0x128
	.byte	0x1
	.byte	0
	.uleb128 0x28
	.string	"MAIN_mg_au16CompatibilityApplSwSwArea"
	.byte	0x1
	.byte	0x36
	.uaword	0x1084
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_mg_au16CompatibilityApplSwSwArea
	.uleb128 0x29
	.uaword	0x1040
	.uleb128 0xa
	.uaword	0x17f
	.uaword	0x1099
	.uleb128 0xb
	.uaword	0x128
	.byte	0
	.byte	0
	.uleb128 0x28
	.string	"MAIN_mg_au32CompatibilityApplVerArea"
	.byte	0x1
	.byte	0x3e
	.uaword	0x10cc
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_mg_au32CompatibilityApplVerArea
	.uleb128 0x29
	.uaword	0x1089
	.uleb128 0xa
	.uaword	0x10e3
	.uaword	0x10e1
	.uleb128 0xb
	.uaword	0x128
	.byte	0x7
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.uleb128 0x1b
	.byte	0x4
	.uaword	0x10e1
	.uleb128 0x28
	.string	"mg_vTrapDisptab"
	.byte	0x1
	.byte	0x4e
	.uaword	0x10d1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	mg_vTrapDisptab
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0xb
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x13
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x1c
	.uleb128 0x6
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xa
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
	.uleb128 0x6
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
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0xc
	.byte	0
	.byte	0
	.byte	0
	.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL0
	.uaword	.LVL2
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL3
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL6
	.uaword	.LVL7-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL7-1
	.uaword	.LFE206
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL8
	.uaword	.LVL9-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL9-1
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL9
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL9
	.uaword	.LVL10
	.uahalf	0x19
	.byte	0x78
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x25
	.byte	0x40
	.byte	0x24
	.byte	0x7f
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x25
	.byte	0x38
	.byte	0x24
	.byte	0x21
	.byte	0x72
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x25
	.byte	0x21
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL12
	.uaword	.LVL13-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL13-1
	.uaword	.LFE207
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL14
	.uaword	.LVL15-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL15-1
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL15
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL15
	.uaword	.LVL16
	.uahalf	0x19
	.byte	0x78
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x25
	.byte	0x40
	.byte	0x24
	.byte	0x7f
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x25
	.byte	0x38
	.byte	0x24
	.byte	0x21
	.byte	0x72
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x25
	.byte	0x21
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL21
	.uaword	.LVL22
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL25
	.uaword	.LVL26
	.uahalf	0x2
	.byte	0x3c
	.byte	0x9f
	.uaword	.LVL26
	.uaword	.LVL27
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL27
	.uaword	.LVL29
	.uahalf	0x2
	.byte	0x3c
	.byte	0x9f
	.uaword	.LVL29
	.uaword	.LVL30
	.uahalf	0x2
	.byte	0x3b
	.byte	0x9f
	.uaword	.LVL30
	.uaword	.LVL31
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL31
	.uaword	.LVL34
	.uahalf	0x2
	.byte	0x3b
	.byte	0x9f
	.uaword	.LVL34
	.uaword	.LVL35
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL35
	.uaword	.LVL37
	.uahalf	0x2
	.byte	0x3b
	.byte	0x9f
	.uaword	.LVL37
	.uaword	.LVL38
	.uahalf	0x2
	.byte	0x3c
	.byte	0x9f
	.uaword	.LVL38
	.uaword	.LVL39
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL39
	.uaword	.LFE210
	.uahalf	0x2
	.byte	0x3c
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL21
	.uaword	.LVL23
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL23
	.uaword	.LVL24
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL25
	.uaword	.LVL26
	.uahalf	0x2
	.byte	0x40
	.byte	0x9f
	.uaword	.LVL26
	.uaword	.LVL28
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL28
	.uaword	.LVL29
	.uahalf	0x2
	.byte	0x40
	.byte	0x9f
	.uaword	.LVL29
	.uaword	.LVL30
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL30
	.uaword	.LVL32
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL32
	.uaword	.LVL33
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL33
	.uaword	.LVL34
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL34
	.uaword	.LVL36
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL36
	.uaword	.LVL37
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL37
	.uaword	.LVL38
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL38
	.uaword	.LVL40
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL40
	.uaword	.LFE210
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL41
	.uaword	.LVL43
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL43
	.uaword	.LVL44-1
	.uahalf	0x5
	.byte	0x3
	.uaword	TRAP_mg_u32TrapBaseAddr
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LFB203
	.uaword	.LCFI0
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI0
	.uaword	.LFE203
	.uahalf	0x2
	.byte	0x8e
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL45
	.uaword	.LVL46-1
	.uahalf	0x5
	.byte	0x3
	.uaword	TRAP_mg_u32TrapBaseAddr
	.uaword	.LVL46-1
	.uaword	.LFE217
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
	.section .debug_aranges,"",@progbits
	.uaword	0x8c
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB213
	.uaword	.LFE213-.LFB213
	.uaword	.LFB214
	.uaword	.LFE214-.LFB214
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
	.uaword	.LFB215
	.uaword	.LFE215-.LFB215
	.uaword	.LFB216
	.uaword	.LFE216-.LFB216
	.uaword	.LFB203
	.uaword	.LFE203-.LFB203
	.uaword	.LFB217
	.uaword	.LFE217-.LFB217
	.uaword	0
	.uaword	0
	.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB4
	.uaword	.LBE4
	.uaword	.LBB5
	.uaword	.LBE5
	.uaword	0
	.uaword	0
	.uaword	.LFB213
	.uaword	.LFE213
	.uaword	.LFB214
	.uaword	.LFE214
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
	.uaword	.LFB215
	.uaword	.LFE215
	.uaword	.LFB216
	.uaword	.LFE216
	.uaword	.LFB203
	.uaword	.LFE203
	.uaword	.LFB217
	.uaword	.LFE217
	.uaword	0
	.uaword	0
	.section .debug_line,"",@progbits
.Ldebug_line0:
	.section .debug_str,"",@progbits
.LASF0:
	.string	"__newval"
	.extern	IOHWSF_FSPTEST,STT_FUNC,0
	.extern	IOHWSF_ACCESSPROT_vConfigureAccessProtection,STT_FUNC,0
	.extern	mpu_vInit,STT_FUNC,0
	.extern	KL30_AutoDiag,STT_FUNC,0
	.extern	HsfbApp_CallInit,STT_FUNC,0
	.extern	HsfbApp_initialize,STT_FUNC,0
	.extern	Adc_StartUp,STT_FUNC,0
	.extern	IOHWSF_vSrcRegestersCheck,STT_FUNC,0
	.extern	IfxScuWdt_disableSafetyWatchdog,STT_FUNC,0
	.extern	IfxScuWdt_getSafetyWatchdogPassword,STT_FUNC,0
	.extern	IfxScuWdt_disableCpuWatchdog,STT_FUNC,0
	.extern	IOHWSF_vMcSafeSwitchToRunState,STT_FUNC,0
	.extern	IOHWSF_vMcSafeStartUpChecks,STT_FUNC,0
	.extern	Pma_vInit,STT_FUNC,0
	.extern	IfxScuWdt_setCpuEndinit,STT_FUNC,0
	.extern	IfxScuWdt_clearCpuEndinit,STT_FUNC,0
	.extern	IfxScuWdt_getCpuWatchdogPassword,STT_FUNC,0
	.extern	_trap_7,STT_FUNC,0
	.extern	_trap_6,STT_FUNC,0
	.extern	_trap_5,STT_FUNC,0
	.extern	_trap_4,STT_FUNC,0
	.extern	_trap_3,STT_FUNC,0
	.extern	_trap_2,STT_FUNC,0
	.extern	_trap_1,STT_FUNC,0
	.extern	_trap_0,STT_FUNC,0
	.extern	Dsp_Decimal2Bcd,STT_FUNC,0
	.extern	Uds_Init,STT_FUNC,0
	.extern	TpInit,STT_FUNC,0
	.extern	ComServ_Init,STT_FUNC,0
	.extern	Safety_Cfg,STT_FUNC,0
	.extern	Qspi_Init,STT_FUNC,0
	.extern	CANDriver_Init,STT_FUNC,0
	.extern	Gtm_Init,STT_FUNC,0
	.extern	Adc_Init,STT_FUNC,0
	.extern	Port_Init,STT_FUNC,0
	.ident	"GCC: (HighTec Release v4.6.3.0) 4.6.3 build on 2013-05-17"
