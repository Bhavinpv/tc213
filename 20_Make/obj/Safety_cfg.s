	.file	"Safety_cfg.c"
.section .text,"ax",@progbits
.Ltext0:
	.section .text.MPU_ASIL_CODE,"ax",@progbits
	.align 3
	.global	Safety_IOM_Cfg
	.type	Safety_IOM_Cfg, @function
Safety_IOM_Cfg:
.LFB203:
	.file 1 "../30_Bsw/Safety/Safety_cfg.c"
	.loc 1 127 0
	.loc 1 129 0
	call	IfxScuWdt_getCpuWatchdogPassword
	.loc 1 130 0
	movh.a	%a15, hi:-268218368
	lea	%a15, [%a15] lo:-268218368
	.loc 1 129 0
	mov	%d4, %d2
	call	IfxScuWdt_clearCpuEndinit
	.loc 1 130 0
	ld.w	%d15, [%a15]0
	andn	%d15, %d15, ~(-2)
	st.w	[%a15]0, %d15
	.loc 1 131 0
	mov	%d15, 1
	st.b	[%a15] 1, %d15
	.loc 1 132 0
	call	IfxScuWdt_getCpuWatchdogPassword
	.loc 1 136 0
	movh.a	%a15, hi:-268218184
	lea	%a15, [%a15] lo:-268218184
	.loc 1 132 0
	mov	%d4, %d2
	call	IfxScuWdt_setCpuEndinit
	.loc 1 136 0
	ld.w	%d15, [%a15]0
	.loc 1 137 0
	movh.a	%a2, hi:-268218236
	.loc 1 136 0
	insert	%d15, %d15, 0, 19, 2
	.loc 1 137 0
	lea	%a2, [%a2] lo:-268218236
	.loc 1 139 0
	mov	%d2, 5
	.loc 1 136 0
	st.w	[%a15]0, %d15
	.loc 1 137 0
	ld.w	%d15, [%a2]0
	insert	%d15, %d15, 1, 24, 3
	st.w	[%a2]0, %d15
	.loc 1 138 0
	ld.w	%d15, [%a15]0
	.loc 1 142 0
	movh.a	%a2, hi:-268218228
	.loc 1 138 0
	insert	%d15, %d15, 1, 16, 3
	.loc 1 142 0
	lea	%a2, [%a2] lo:-268218228
	.loc 1 138 0
	st.w	[%a15]0, %d15
	.loc 1 139 0
	st.h	[%a15]0, %d2
	.loc 1 141 0
	movh.a	%a15, hi:-268218204
	lea	%a15, [%a15] lo:-268218204
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 0, 19, 2
	st.w	[%a15]0, %d15
	.loc 1 142 0
	ld.w	%d15, [%a2]0
	insert	%d15, %d15, 1, 24, 3
	st.w	[%a2]0, %d15
	.loc 1 143 0
	ld.w	%d15, [%a15]0
	.loc 1 151 0
	movh.a	%a2, hi:-268217920
	.loc 1 143 0
	insert	%d15, %d15, 1, 16, 3
	.loc 1 151 0
	lea	%a2, [%a2] lo:-268217920
	.loc 1 143 0
	st.w	[%a15]0, %d15
	.loc 1 144 0
	st.h	[%a15]0, %d2
	.loc 1 147 0
	movh.a	%a15, hi:-268217984
	lea	%a15, [%a15] lo:-268217984
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 14, 16, 4
	st.w	[%a15]0, %d15
	.loc 1 148 0
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 1, 20, 4
	st.w	[%a15]0, %d15
	.loc 1 149 0
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 1, 2, 1
	st.w	[%a15]0, %d15
	.loc 1 150 0
	ld.w	%d15, [%a15]0
	andn	%d15, %d15, ~(-17)
	st.w	[%a15]0, %d15
	.loc 1 151 0
	ld.w	%d15, [%a2]0
	insert	%d15, %d15, 10, 0, 24
	st.w	[%a2]0, %d15
	.loc 1 152 0
	ld.w	%d15, [%a15]0
	.loc 1 158 0
	movh.a	%a2, hi:-268217916
	.loc 1 152 0
	insert	%d15, %d15, 11, 8, 4
	.loc 1 158 0
	lea	%a2, [%a2] lo:-268217916
	.loc 1 152 0
	st.w	[%a15]0, %d15
	.loc 1 154 0
	movh.a	%a15, hi:-268217980
	lea	%a15, [%a15] lo:-268217980
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 9, 16, 4
	st.w	[%a15]0, %d15
	.loc 1 155 0
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 3, 20, 4
	st.w	[%a15]0, %d15
	.loc 1 156 0
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 1, 2, 1
	st.w	[%a15]0, %d15
	.loc 1 157 0
	ld.w	%d15, [%a15]0
	andn	%d15, %d15, ~(-17)
	st.w	[%a15]0, %d15
	.loc 1 158 0
	ld.w	%d15, [%a2]0
	insert	%d15, %d15, 10, 0, 24
	st.w	[%a2]0, %d15
	.loc 1 159 0
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 11, 8, 4
	st.w	[%a15]0, %d15
	.loc 1 162 0
	movh.a	%a15, hi:-268218316
	lea	%a15, [%a15] lo:-268218316
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 1, 0, 1
	st.w	[%a15]0, %d15
	.loc 1 163 0
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 1, 1, 1
	st.w	[%a15]0, %d15
	.loc 1 164 0
	ret
.LFE203:
	.size	Safety_IOM_Cfg, .-Safety_IOM_Cfg
	.align 3
	.global	Safety_Cfg
	.type	Safety_Cfg, @function
Safety_Cfg:
.LFB202:
	.loc 1 86 0
	.loc 1 87 0
	mov	%d15, 0
	movh.a	%a15, hi:Safety_CfgError
	st.w	[%a15] lo:Safety_CfgError, %d15
	.loc 1 120 0
	movh.a	%a15, hi:Main_HwVer
	lea	%a15, [%a15] lo:Main_HwVer
	ld.w	%d15, [%a15] 12
	add	%d15, -5
	jlt.u	%d15, 10, .L5
	ret
.L5:
	.loc 1 122 0
	j	Safety_IOM_Cfg
.LFE202:
	.size	Safety_Cfg, .-Safety_Cfg
	.align 3
	.global	Safety_Check10ms
	.type	Safety_Check10ms, @function
Safety_Check10ms:
.LFB204:
	.loc 1 168 0
.LVL0:
	.loc 1 201 0
	movh.a	%a15, hi:-268211768
	lea	%a15, [%a15] lo:-268211768
	ld.w	%d15, [%a15]0
	jnz.t	%d15, 26, .L8
	ret
.L8:
	.loc 1 203 0
	imask	%e2, 1, 11, 1
	movh.a	%a15, hi:Safety_CfgError
	lea	%a15, [%a15] lo:Safety_CfgError
	.loc 1 204 0
	mov	%d4, 2
	.loc 1 203 0
	ldmst	[%a15]0, %e2
	.loc 1 204 0
	mov	%d5, 26
	j	iohw_Wrapper_ClearAlarmStatus
.LFE204:
	.size	Safety_Check10ms, .-Safety_Check10ms
	.align 3
	.global	Safety_Power_SM1_HW_ExtVREG_MON
	.type	Safety_Power_SM1_HW_ExtVREG_MON, @function
Safety_Power_SM1_HW_ExtVREG_MON:
.LFB205:
	.loc 1 238 0
	.loc 1 245 0
	mov	%d15, -105
	.loc 1 240 0
	call	IfxScuWdt_getSafetyWatchdogPassword
	.loc 1 245 0
	movh.a	%a15, hi:-268213852
	.loc 1 240 0
	mov	%d4, %d2
	.loc 1 245 0
	lea	%a15, [%a15] lo:-268213852
	.loc 1 240 0
	call	IfxScuWdt_clearSafetyEndinit
	.loc 1 245 0
	st.b	[%a15] 2, %d15
	.loc 1 246 0
	mov	%d15, -119
	movh.a	%a15, hi:-268213856
	lea	%a15, [%a15] lo:-268213856
	st.b	[%a15] 2, %d15
	.loc 1 249 0
	movh.a	%a15, hi:-268213848
	lea	%a15, [%a15] lo:-268213848
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 3, 16, 2
	st.w	[%a15]0, %d15
	.loc 1 250 0
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 3, 20, 2
	st.w	[%a15]0, %d15
	.loc 1 253 0
	call	IfxScuWdt_getSafetyWatchdogPassword
	mov	%d4, %d2
	j	IfxScuWdt_setSafetyEndinit
.LFE205:
	.size	Safety_Power_SM1_HW_ExtVREG_MON, .-Safety_Power_SM1_HW_ExtVREG_MON
	.align 3
	.global	Safety_Power_SM1_HW_ExtV13_MON
	.type	Safety_Power_SM1_HW_ExtV13_MON, @function
Safety_Power_SM1_HW_ExtV13_MON:
.LFB206:
	.loc 1 257 0
	.loc 1 264 0
	mov	%d15, -18
	.loc 1 259 0
	call	IfxScuWdt_getSafetyWatchdogPassword
	.loc 1 264 0
	movh.a	%a15, hi:-268213852
	.loc 1 259 0
	mov	%d4, %d2
	.loc 1 264 0
	lea	%a15, [%a15] lo:-268213852
	.loc 1 259 0
	call	IfxScuWdt_clearSafetyEndinit
	.loc 1 264 0
	st.b	[%a15]0, %d15
	.loc 1 265 0
	mov	%d15, -41
	movh.a	%a15, hi:-268213856
	lea	%a15, [%a15] lo:-268213856
	st.b	[%a15]0, %d15
	.loc 1 268 0
	movh.a	%a15, hi:-268213848
	lea	%a15, [%a15] lo:-268213848
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 3, 0, 2
	st.w	[%a15]0, %d15
	.loc 1 269 0
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 3, 4, 2
	st.w	[%a15]0, %d15
	.loc 1 272 0
	call	IfxScuWdt_getSafetyWatchdogPassword
	mov	%d4, %d2
	j	IfxScuWdt_setSafetyEndinit
.LFE206:
	.size	Safety_Power_SM1_HW_ExtV13_MON, .-Safety_Power_SM1_HW_ExtV13_MON
	.align 3
	.global	Safety_Power_SM1_HW_BANDGAP_MON
	.type	Safety_Power_SM1_HW_BANDGAP_MON, @function
Safety_Power_SM1_HW_BANDGAP_MON:
.LFB207:
	.loc 1 276 0
	.loc 1 278 0
	movh.a	%a15, hi:-268214096
	lea	%a15, [%a15] lo:-268214096
	ld.w	%d15, [%a15]0
	jnz.t	%d15, 10, .L11
	.loc 1 280 0
	imask	%e2, 1, 2, 1
	movh.a	%a15, hi:Safety_CfgError
	lea	%a15, [%a15] lo:Safety_CfgError
	ldmst	[%a15]0, %e2
.L11:
	ret
.LFE207:
	.size	Safety_Power_SM1_HW_BANDGAP_MON, .-Safety_Power_SM1_HW_BANDGAP_MON
	.align 3
	.global	Safety_Power_SM1_AoU_EVR_CFGMON
	.type	Safety_Power_SM1_AoU_EVR_CFGMON, @function
Safety_Power_SM1_AoU_EVR_CFGMON:
.LFB208:
	.loc 1 285 0
	.loc 1 287 0
	movh.a	%a15, hi:-268214068
	lea	%a15, [%a15] lo:-268214068
	ld.w	%d2, [%a15]0
	mov	%d15, 7168
	and	%d15, %d2
	mov	%d2, 5120
	jeq	%d15, %d2, .L14
	.loc 1 289 0
	imask	%e2, 1, 3, 1
	movh.a	%a15, hi:Safety_CfgError
	lea	%a15, [%a15] lo:Safety_CfgError
	ldmst	[%a15]0, %e2
.L14:
	.loc 1 293 0
	movh.a	%a15, hi:-268214096
	lea	%a15, [%a15] lo:-268214096
	ld.w	%d15, [%a15]0
	jnz.t	%d15, 0, .L15
	.loc 1 295 0
	imask	%e2, 1, 3, 1
	movh.a	%a15, hi:Safety_CfgError
	lea	%a15, [%a15] lo:Safety_CfgError
	ldmst	[%a15]0, %e2
.L15:
	.loc 1 299 0
	movh.a	%a15, hi:-268214096
	lea	%a15, [%a15] lo:-268214096
	ld.w	%d15, [%a15]0
	jnz.t	%d15, 1, .L16
	.loc 1 299 0 is_stmt 0 discriminator 1
	ld.w	%d15, [%a15]0
	jz.t	%d15, 4, .L13
.L16:
	.loc 1 301 0 is_stmt 1
	imask	%e2, 1, 3, 1
	movh.a	%a15, hi:Safety_CfgError
	lea	%a15, [%a15] lo:Safety_CfgError
	ldmst	[%a15]0, %e2
.L13:
	ret
.LFE208:
	.size	Safety_Power_SM1_AoU_EVR_CFGMON, .-Safety_Power_SM1_AoU_EVR_CFGMON
	.align 3
	.global	Safety_Clock_SM1_HW_SystemPLL_CLKMON
	.type	Safety_Clock_SM1_HW_SystemPLL_CLKMON, @function
Safety_Clock_SM1_HW_SystemPLL_CLKMON:
.LFB209:
	.loc 1 314 0
	.loc 1 316 0
	call	IfxScuWdt_getSafetyWatchdogPassword
	.loc 1 319 0
	movh.a	%a15, hi:-268214204
	lea	%a15, [%a15] lo:-268214204
	.loc 1 316 0
	mov	%d4, %d2
	call	IfxScuWdt_clearSafetyEndinit
	.loc 1 319 0
	ld.w	%d15, [%a15]0
	mov	%d2, 20
	insert	%d15, %d15, %d2, 0, 6
	st.w	[%a15]0, %d15
	.loc 1 320 0
	ld.w	%d15, [%a15]0
	andn	%d15, %d15, ~(-193)
	st.w	[%a15]0, %d15
	.loc 1 321 0
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 1, 30, 1
	st.w	[%a15]0, %d15
	.loc 1 324 0
	call	IfxScuWdt_getSafetyWatchdogPassword
	mov	%d4, %d2
	j	IfxScuWdt_setSafetyEndinit
.LFE209:
	.size	Safety_Clock_SM1_HW_SystemPLL_CLKMON, .-Safety_Clock_SM1_HW_SystemPLL_CLKMON
	.align 3
	.global	Safety_Clock_SM1_HW_SRI_CLKMON
	.type	Safety_Clock_SM1_HW_SRI_CLKMON, @function
Safety_Clock_SM1_HW_SRI_CLKMON:
.LFB210:
	.loc 1 328 0
	.loc 1 330 0
	call	IfxScuWdt_getSafetyWatchdogPassword
	.loc 1 333 0
	movh.a	%a15, hi:-268214204
	lea	%a15, [%a15] lo:-268214204
	.loc 1 330 0
	mov	%d4, %d2
	call	IfxScuWdt_clearSafetyEndinit
	.loc 1 333 0
	ld.w	%d15, [%a15]0
	mov	%d2, 20
	insert	%d15, %d15, %d2, 16, 6
	st.w	[%a15]0, %d15
	.loc 1 334 0
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 0, 22, 2
	st.w	[%a15]0, %d15
	.loc 1 335 0
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 1, 30, 1
	st.w	[%a15]0, %d15
	.loc 1 338 0
	call	IfxScuWdt_getSafetyWatchdogPassword
	mov	%d4, %d2
	j	IfxScuWdt_setSafetyEndinit
.LFE210:
	.size	Safety_Clock_SM1_HW_SRI_CLKMON, .-Safety_Clock_SM1_HW_SRI_CLKMON
	.align 3
	.global	Safety_Clock_SM1_HW_SPB_CLKMON
	.type	Safety_Clock_SM1_HW_SPB_CLKMON, @function
Safety_Clock_SM1_HW_SPB_CLKMON:
.LFB211:
	.loc 1 342 0
	.loc 1 344 0
	call	IfxScuWdt_getSafetyWatchdogPassword
	.loc 1 347 0
	movh.a	%a15, hi:-268214200
	lea	%a15, [%a15] lo:-268214200
	.loc 1 344 0
	mov	%d4, %d2
	call	IfxScuWdt_clearSafetyEndinit
	.loc 1 347 0
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 10, 0, 6
	st.w	[%a15]0, %d15
	.loc 1 348 0
	ld.w	%d15, [%a15]0
	andn	%d15, %d15, ~(-193)
	st.w	[%a15]0, %d15
	.loc 1 349 0
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 1, 30, 1
	st.w	[%a15]0, %d15
	.loc 1 352 0
	call	IfxScuWdt_getSafetyWatchdogPassword
	mov	%d4, %d2
	j	IfxScuWdt_setSafetyEndinit
.LFE211:
	.size	Safety_Clock_SM1_HW_SPB_CLKMON, .-Safety_Clock_SM1_HW_SPB_CLKMON
	.align 3
	.global	Safety_Clock_SM1_HW_GTM_CLKMON
	.type	Safety_Clock_SM1_HW_GTM_CLKMON, @function
Safety_Clock_SM1_HW_GTM_CLKMON:
.LFB212:
	.loc 1 356 0
	.loc 1 358 0
	call	IfxScuWdt_getSafetyWatchdogPassword
	.loc 1 361 0
	movh.a	%a15, hi:-268214200
	lea	%a15, [%a15] lo:-268214200
	.loc 1 358 0
	mov	%d4, %d2
	call	IfxScuWdt_clearSafetyEndinit
	.loc 1 361 0
	ld.w	%d15, [%a15]0
	mov	%d2, 20
	insert	%d15, %d15, %d2, 8, 6
	st.w	[%a15]0, %d15
	.loc 1 362 0
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 0, 14, 2
	st.w	[%a15]0, %d15
	.loc 1 363 0
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 1, 30, 1
	st.w	[%a15]0, %d15
	.loc 1 366 0
	call	IfxScuWdt_getSafetyWatchdogPassword
	mov	%d4, %d2
	j	IfxScuWdt_setSafetyEndinit
.LFE212:
	.size	Safety_Clock_SM1_HW_GTM_CLKMON, .-Safety_Clock_SM1_HW_GTM_CLKMON
	.align 3
	.global	Safety_CPU_SM1_HW_CPU_DATA_MPU
	.type	Safety_CPU_SM1_HW_CPU_DATA_MPU, @function
Safety_CPU_SM1_HW_CPU_DATA_MPU:
.LFB213:
	.loc 1 375 0
	.loc 1 380 0
	mov	%d15, 0
	.loc 1 377 0
	call	IfxScuWdt_getSafetyWatchdogPassword
	.loc 1 380 0
	movh.a	%a15, hi:-125771768
	.loc 1 377 0
	mov	%d4, %d2
	.loc 1 380 0
	lea	%a15, [%a15] lo:-125771768
	.loc 1 377 0
	call	IfxScuWdt_clearSafetyEndinit
	.loc 1 380 0
	st.w	[%a15]0, %d15
	.loc 1 383 0
	call	IfxScuWdt_getSafetyWatchdogPassword
	mov	%d4, %d2
	j	IfxScuWdt_setSafetyEndinit
.LFE213:
	.size	Safety_CPU_SM1_HW_CPU_DATA_MPU, .-Safety_CPU_SM1_HW_CPU_DATA_MPU
	.align 3
	.global	Safety_SRAM_SM1_HW_SRAM_ECC
	.type	Safety_SRAM_SM1_HW_SRAM_ECC, @function
Safety_SRAM_SM1_HW_SRAM_ECC:
.LFB214:
	.loc 1 392 0
	.loc 1 394 0
	call	IfxScuWdt_getCpuWatchdogPassword
	mov	%d4, %d2
	.loc 1 397 0
	movh.a	%a15, 61446
	.loc 1 394 0
	call	IfxScuWdt_clearCpuEndinit
	.loc 1 397 0
	ld.w	%d15, [%a15]0
	andn	%d15, %d15, ~(-2)
	st.w	[%a15]0, %d15
	.loc 1 400 0
	call	IfxScuWdt_getCpuWatchdogPassword
	mov	%d4, %d2
	j	IfxScuWdt_setCpuEndinit
.LFE214:
	.size	Safety_SRAM_SM1_HW_SRAM_ECC, .-Safety_SRAM_SM1_HW_SRAM_ECC
	.align 3
	.global	Safety_PFLASH_SM1_HW_PFLASH_Monitor
	.type	Safety_PFLASH_SM1_HW_PFLASH_Monitor, @function
Safety_PFLASH_SM1_HW_PFLASH_Monitor:
.LFB215:
	.loc 1 409 0
	.loc 1 411 0
	call	IfxScuWdt_getCpuWatchdogPassword
	.loc 1 414 0
	movh.a	%a15, hi:-134209356
	lea	%a15, [%a15] lo:-134209356
	.loc 1 411 0
	mov	%d4, %d2
	call	IfxScuWdt_clearCpuEndinit
	.loc 1 414 0
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 3, 0, 6
	st.w	[%a15]0, %d15
	.loc 1 415 0
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 1, 8, 1
	st.w	[%a15]0, %d15
	.loc 1 416 0
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 0, 9, 1
	st.w	[%a15]0, %d15
	.loc 1 419 0
	call	IfxScuWdt_getCpuWatchdogPassword
	mov	%d4, %d2
	j	IfxScuWdt_setCpuEndinit
.LFE215:
	.size	Safety_PFLASH_SM1_HW_PFLASH_Monitor, .-Safety_PFLASH_SM1_HW_PFLASH_Monitor
	.align 3
	.global	Safety_SPB_SM2_AoU_SBCU_InitCheck
	.type	Safety_SPB_SM2_AoU_SBCU_InitCheck, @function
Safety_SPB_SM2_AoU_SBCU_InitCheck:
.LFB216:
	.loc 1 434 0
	.loc 1 436 0
	movh.a	%a15, hi:-268238832
	lea	%a15, [%a15] lo:-268238832
	ld.a	%a15, [%a15]0
	movh	%d15, 65289
	add	%d15, -1
	mov.d	%d2, %a15
	jeq	%d2, %d15, .L29
.L26:
	.loc 1 438 0
	imask	%e2, 1, 8, 1
	movh.a	%a15, hi:Safety_CfgError
	lea	%a15, [%a15] lo:Safety_CfgError
	ldmst	[%a15]0, %e2
	ret
.L29:
	.loc 1 436 0 discriminator 1
	movh.a	%a15, hi:-268238828
	lea	%a15, [%a15] lo:-268238828
	ld.w	%d15, [%a15]0
	movh.a	%a15, hi:251723775
	lea	%a15, [%a15] lo:251723775
	mov.d	%d2, %a15
	jne	%d15, %d2, .L26
	movh.a	%a15, hi:-268238824
	lea	%a15, [%a15] lo:-268238824
	ld.a	%a15, [%a15]0
	mov.d	%d2, %a15
	jne	%d2, %d15, .L26
	ret
.LFE216:
	.size	Safety_SPB_SM2_AoU_SBCU_InitCheck, .-Safety_SPB_SM2_AoU_SBCU_InitCheck
	.align 3
	.global	Safety_SMU_SM2_AoU_SMU_InitCheck
	.type	Safety_SMU_SM2_AoU_SMU_InitCheck, @function
Safety_SMU_SM2_AoU_SMU_InitCheck:
.LFB217:
	.loc 1 454 0
	.loc 1 456 0
	ret
.LFE217:
	.size	Safety_SMU_SM2_AoU_SMU_InitCheck, .-Safety_SMU_SM2_AoU_SMU_InitCheck
	.align 3
	.global	Safety_WDT_SM2_AoU_WDT_InitCheck
	.type	Safety_WDT_SM2_AoU_WDT_InitCheck, @function
Safety_WDT_SM2_AoU_WDT_InitCheck:
.LFB218:
	.loc 1 466 0
	.loc 1 468 0
	movh.a	%a15, hi:-268214032
	lea	%a15, [%a15] lo:-268214032
	ld.a	%a15, [%a15]0
	movh	%d15, 65532
	addi	%d15, %d15, 14
	mov.d	%d2, %a15
	jeq	%d2, %d15, .L35
.L32:
	.loc 1 470 0
	imask	%e2, 1, 9, 1
	movh.a	%a15, hi:Safety_CfgError
	lea	%a15, [%a15] lo:Safety_CfgError
	ldmst	[%a15]0, %e2
	ret
.L35:
	.loc 1 468 0 discriminator 1
	movh.a	%a15, hi:-268214028
	lea	%a15, [%a15] lo:-268214028
	ld.w	%d15, [%a15]0
	jnz	%d15, .L32
	ret
.LFE218:
	.size	Safety_WDT_SM2_AoU_WDT_InitCheck, .-Safety_WDT_SM2_AoU_WDT_InitCheck
	.align 3
	.global	Safety_WDT_SM2_AoU_RESET_SSCheck
	.type	Safety_WDT_SM2_AoU_RESET_SSCheck, @function
Safety_WDT_SM2_AoU_RESET_SSCheck:
.LFB219:
	.loc 1 475 0
	.loc 1 477 0
	movh.a	%a15, hi:-268214172
	lea	%a15, [%a15] lo:-268214172
	ld.w	%d15, [%a15]0
	jnz.t	%d15, 12, .L36
	.loc 1 479 0
	imask	%e2, 1, 10, 1
	movh.a	%a15, hi:Safety_CfgError
	lea	%a15, [%a15] lo:Safety_CfgError
	ldmst	[%a15]0, %e2
.L36:
	ret
.LFE219:
	.size	Safety_WDT_SM2_AoU_RESET_SSCheck, .-Safety_WDT_SM2_AoU_RESET_SSCheck
	.global	Safety_CfgError
	.section .bss.MPU_ASIL_VAR_NOINIT,"aw",@nobits
	.align 3
	.type	Safety_CfgError, @object
	.size	Safety_CfgError, 4
Safety_CfgError:
	.zero	4
	.global	ClearAlarm
	.align 3
	.type	ClearAlarm, @object
	.size	ClearAlarm, 2
ClearAlarm:
	.zero	2
	.global	SafetyDebug
	.align 3
	.type	SafetyDebug, @object
	.size	SafetyDebug, 20
SafetyDebug:
	.zero	20
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
	.uaword	.LFB203
	.uaword	.LFE203-.LFB203
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
.section .text,"ax",@progbits
.Letext0:
	.file 2 "../30_Bsw/Common/rtwtypes.h"
	.file 3 "../30_Bsw/Common/TC21x/IfxScu_regdef.h"
	.file 4 "../30_Bsw/Common/TC21x/IfxSmu_regdef.h"
	.file 5 "../30_Bsw/Common/TC21x/IfxCpu_regdef.h"
	.file 6 "../30_Bsw/Common/TC21x/IfxMtu_regdef.h"
	.file 7 "../30_Bsw/Common/TC21x/IfxFlash_regdef.h"
	.file 8 "../30_Bsw/Common/TC21x/IfxSbcu_regdef.h"
	.file 9 "../30_Bsw/Common/TC21x/IfxIom_regdef.h"
	.file 10 "../30_Bsw/Safety/Safety_cfg.h"
	.file 11 "../30_Bsw/Main/Main_api.h"
	.file 12 "../30_Bsw/Mpu/mpu_api.h"
	.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x261d
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.6.3 build on 2013-05-17"
	.byte	0x1
	.string	"../30_Bsw/Safety/Safety_cfg.c"
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
	.uaword	0xb0
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
	.uaword	0xde
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
	.uaword	0x10b
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
	.uaword	0xb0
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
	.uaword	0xa1
	.uleb128 0x3
	.string	"u16"
	.byte	0x2
	.byte	0x7f
	.uaword	0xce
	.uleb128 0x3
	.string	"u32"
	.byte	0x2
	.byte	0x81
	.uaword	0xfb
	.uleb128 0x3
	.string	"bit"
	.byte	0x2
	.byte	0x84
	.uaword	0x12e
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x4
	.string	"_Ifx_SCU_CCUCON3_Bits"
	.byte	0x4
	.byte	0x3
	.byte	0x8a
	.uaword	0x264
	.uleb128 0x5
	.string	"PLLDIV"
	.byte	0x3
	.byte	0x8c
	.uaword	0x10b
	.byte	0x4
	.byte	0x6
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"PLLSEL"
	.byte	0x3
	.byte	0x8d
	.uaword	0x10b
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"PLLERAYDIV"
	.byte	0x3
	.byte	0x8e
	.uaword	0x10b
	.byte	0x4
	.byte	0x6
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"PLLERAYSEL"
	.byte	0x3
	.byte	0x8f
	.uaword	0x10b
	.byte	0x4
	.byte	0x2
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"SRIDIV"
	.byte	0x3
	.byte	0x90
	.uaword	0x10b
	.byte	0x4
	.byte	0x6
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"SRISEL"
	.byte	0x3
	.byte	0x91
	.uaword	0x10b
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.uaword	.LASF0
	.byte	0x3
	.byte	0x92
	.uaword	0x10b
	.byte	0x4
	.byte	0x6
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"UP"
	.byte	0x3
	.byte	0x93
	.uaword	0x10b
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"LCK"
	.byte	0x3
	.byte	0x94
	.uaword	0x10b
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SCU_CCUCON3_Bits"
	.byte	0x3
	.byte	0x95
	.uaword	0x193
	.uleb128 0x4
	.string	"_Ifx_SCU_CCUCON4_Bits"
	.byte	0x4
	.byte	0x3
	.byte	0x98
	.uaword	0x349
	.uleb128 0x5
	.string	"SPBDIV"
	.byte	0x3
	.byte	0x9a
	.uaword	0x10b
	.byte	0x4
	.byte	0x6
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"SPBSEL"
	.byte	0x3
	.byte	0x9b
	.uaword	0x10b
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"GTMDIV"
	.byte	0x3
	.byte	0x9c
	.uaword	0x10b
	.byte	0x4
	.byte	0x6
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"GTMSEL"
	.byte	0x3
	.byte	0x9d
	.uaword	0x10b
	.byte	0x4
	.byte	0x2
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"STMDIV"
	.byte	0x3
	.byte	0x9e
	.uaword	0x10b
	.byte	0x4
	.byte	0x6
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"STMSEL"
	.byte	0x3
	.byte	0x9f
	.uaword	0x10b
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.uaword	.LASF0
	.byte	0x3
	.byte	0xa0
	.uaword	0x10b
	.byte	0x4
	.byte	0x6
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"UP"
	.byte	0x3
	.byte	0xa1
	.uaword	0x10b
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"LCK"
	.byte	0x3
	.byte	0xa2
	.uaword	0x10b
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SCU_CCUCON4_Bits"
	.byte	0x3
	.byte	0xa3
	.uaword	0x280
	.uleb128 0x7
	.string	"_Ifx_SCU_EVRMONCTRL_Bits"
	.byte	0x4
	.byte	0x3
	.uahalf	0x13d
	.uaword	0x465
	.uleb128 0x8
	.string	"EVR13OVMOD"
	.byte	0x3
	.uahalf	0x13f
	.uaword	0x10b
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF1
	.byte	0x3
	.uahalf	0x140
	.uaword	0x10b
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"EVR13UVMOD"
	.byte	0x3
	.uahalf	0x141
	.uaword	0x10b
	.byte	0x4
	.byte	0x2
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF2
	.byte	0x3
	.uahalf	0x142
	.uaword	0x10b
	.byte	0x4
	.byte	0xa
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"SWDOVMOD"
	.byte	0x3
	.uahalf	0x143
	.uaword	0x10b
	.byte	0x4
	.byte	0x2
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF3
	.byte	0x3
	.uahalf	0x144
	.uaword	0x10b
	.byte	0x4
	.byte	0x2
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"SWDUVMOD"
	.byte	0x3
	.uahalf	0x145
	.uaword	0x10b
	.byte	0x4
	.byte	0x2
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"reserved_22"
	.byte	0x3
	.uahalf	0x146
	.uaword	0x10b
	.byte	0x4
	.byte	0x8
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"SLCK"
	.byte	0x3
	.uahalf	0x147
	.uaword	0x10b
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"reserved_31"
	.byte	0x3
	.uahalf	0x148
	.uaword	0x10b
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_SCU_EVRMONCTRL_Bits"
	.byte	0x3
	.uahalf	0x149
	.uaword	0x365
	.uleb128 0x7
	.string	"_Ifx_SCU_EVROVMON_Bits"
	.byte	0x4
	.byte	0x3
	.uahalf	0x14c
	.uaword	0x51f
	.uleb128 0x8
	.string	"EVR13OVVAL"
	.byte	0x3
	.uahalf	0x14e
	.uaword	0x10b
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF4
	.byte	0x3
	.uahalf	0x14f
	.uaword	0x10b
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"SWDOVVAL"
	.byte	0x3
	.uahalf	0x150
	.uaword	0x10b
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF0
	.byte	0x3
	.uahalf	0x151
	.uaword	0x10b
	.byte	0x4
	.byte	0x6
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"SLCK"
	.byte	0x3
	.uahalf	0x152
	.uaword	0x10b
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"LCK"
	.byte	0x3
	.uahalf	0x153
	.uaword	0x10b
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_SCU_EVROVMON_Bits"
	.byte	0x3
	.uahalf	0x154
	.uaword	0x485
	.uleb128 0x7
	.string	"_Ifx_SCU_EVRSTAT_Bits"
	.byte	0x4
	.byte	0x3
	.uahalf	0x196
	.uaword	0x652
	.uleb128 0x8
	.string	"EVR13"
	.byte	0x3
	.uahalf	0x198
	.uaword	0x10b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"OV13"
	.byte	0x3
	.uahalf	0x199
	.uaword	0x10b
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF1
	.byte	0x3
	.uahalf	0x19a
	.uaword	0x10b
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"OVSWD"
	.byte	0x3
	.uahalf	0x19b
	.uaword	0x10b
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"UV13"
	.byte	0x3
	.uahalf	0x19c
	.uaword	0x10b
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF2
	.byte	0x3
	.uahalf	0x19d
	.uaword	0x10b
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"UVSWD"
	.byte	0x3
	.uahalf	0x19e
	.uaword	0x10b
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF4
	.byte	0x3
	.uahalf	0x19f
	.uaword	0x10b
	.byte	0x4
	.byte	0x2
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"BGPROK"
	.byte	0x3
	.uahalf	0x1a0
	.uaword	0x10b
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"reserved_11"
	.byte	0x3
	.uahalf	0x1a1
	.uaword	0x10b
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"SCMOD"
	.byte	0x3
	.uahalf	0x1a2
	.uaword	0x10b
	.byte	0x4
	.byte	0x2
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"reserved_14"
	.byte	0x3
	.uahalf	0x1a3
	.uaword	0x10b
	.byte	0x4
	.byte	0x12
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_SCU_EVRSTAT_Bits"
	.byte	0x3
	.uahalf	0x1a4
	.uaword	0x53d
	.uleb128 0x7
	.string	"_Ifx_SCU_EVRUVMON_Bits"
	.byte	0x4
	.byte	0x3
	.uahalf	0x1a7
	.uaword	0x709
	.uleb128 0x8
	.string	"EVR13UVVAL"
	.byte	0x3
	.uahalf	0x1a9
	.uaword	0x10b
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF4
	.byte	0x3
	.uahalf	0x1aa
	.uaword	0x10b
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"SWDUVVAL"
	.byte	0x3
	.uahalf	0x1ab
	.uaword	0x10b
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF0
	.byte	0x3
	.uahalf	0x1ac
	.uaword	0x10b
	.byte	0x4
	.byte	0x6
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"SLCK"
	.byte	0x3
	.uahalf	0x1ad
	.uaword	0x10b
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"LCK"
	.byte	0x3
	.uahalf	0x1ae
	.uaword	0x10b
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_SCU_EVRUVMON_Bits"
	.byte	0x3
	.uahalf	0x1af
	.uaword	0x66f
	.uleb128 0x7
	.string	"_Ifx_SCU_PMSWSTAT_Bits"
	.byte	0x4
	.byte	0x3
	.uahalf	0x347
	.uaword	0x967
	.uleb128 0x9
	.uaword	.LASF5
	.byte	0x3
	.uahalf	0x349
	.uaword	0x10b
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"ESR1WKP"
	.byte	0x3
	.uahalf	0x34a
	.uaword	0x10b
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"ESR1OVRUN"
	.byte	0x3
	.uahalf	0x34b
	.uaword	0x10b
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"PINAWKP"
	.byte	0x3
	.uahalf	0x34c
	.uaword	0x10b
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"PINAOVRUN"
	.byte	0x3
	.uahalf	0x34d
	.uaword	0x10b
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"PINBWKP"
	.byte	0x3
	.uahalf	0x34e
	.uaword	0x10b
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"PINBOVRUN"
	.byte	0x3
	.uahalf	0x34f
	.uaword	0x10b
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF4
	.byte	0x3
	.uahalf	0x350
	.uaword	0x10b
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"PORSTDF"
	.byte	0x3
	.uahalf	0x351
	.uaword	0x10b
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"HWCFGEVR"
	.byte	0x3
	.uahalf	0x352
	.uaword	0x10b
	.byte	0x4
	.byte	0x3
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"STBYRAM"
	.byte	0x3
	.uahalf	0x353
	.uaword	0x10b
	.byte	0x4
	.byte	0x2
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF6
	.byte	0x3
	.uahalf	0x354
	.uaword	0x10b
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"WUTWKP"
	.byte	0x3
	.uahalf	0x355
	.uaword	0x10b
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"WUTOVRUN"
	.byte	0x3
	.uahalf	0x356
	.uaword	0x10b
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF3
	.byte	0x3
	.uahalf	0x357
	.uaword	0x10b
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"WUTWKEN"
	.byte	0x3
	.uahalf	0x358
	.uaword	0x10b
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"ESR1WKEN"
	.byte	0x3
	.uahalf	0x359
	.uaword	0x10b
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"PINAWKEN"
	.byte	0x3
	.uahalf	0x35a
	.uaword	0x10b
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"PINBWKEN"
	.byte	0x3
	.uahalf	0x35b
	.uaword	0x10b
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF7
	.byte	0x3
	.uahalf	0x35c
	.uaword	0x10b
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"ESR0TRIST"
	.byte	0x3
	.uahalf	0x35d
	.uaword	0x10b
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"reserved_28"
	.byte	0x3
	.uahalf	0x35e
	.uaword	0x10b
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"WUTEN"
	.byte	0x3
	.uahalf	0x35f
	.uaword	0x10b
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"WUTMODE"
	.byte	0x3
	.uahalf	0x360
	.uaword	0x10b
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"WUTRUN"
	.byte	0x3
	.uahalf	0x361
	.uaword	0x10b
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_SCU_PMSWSTAT_Bits"
	.byte	0x3
	.uahalf	0x362
	.uaword	0x727
	.uleb128 0x7
	.string	"_Ifx_SCU_RSTCON2_Bits"
	.byte	0x4
	.byte	0x3
	.uahalf	0x37d
	.uaword	0xa3d
	.uleb128 0x9
	.uaword	.LASF5
	.byte	0x3
	.uahalf	0x37f
	.uaword	0x10b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"CLRC"
	.byte	0x3
	.uahalf	0x380
	.uaword	0x10b
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF1
	.byte	0x3
	.uahalf	0x381
	.uaword	0x10b
	.byte	0x4
	.byte	0xa
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"CSS0"
	.byte	0x3
	.uahalf	0x382
	.uaword	0x10b
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"CSS1"
	.byte	0x3
	.uahalf	0x383
	.uaword	0x10b
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"CSS2"
	.byte	0x3
	.uahalf	0x384
	.uaword	0x10b
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF6
	.byte	0x3
	.uahalf	0x385
	.uaword	0x10b
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"USRINFO"
	.byte	0x3
	.uahalf	0x386
	.uaword	0x10b
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_SCU_RSTCON2_Bits"
	.byte	0x3
	.uahalf	0x387
	.uaword	0x985
	.uleb128 0xb
	.uaword	0x10b
	.uleb128 0x7
	.string	"_Ifx_SCU_WDTS_CON0_Bits"
	.byte	0x4
	.byte	0x3
	.uahalf	0x42d
	.uaword	0xacc
	.uleb128 0x8
	.string	"ENDINIT"
	.byte	0x3
	.uahalf	0x42f
	.uaword	0xa5a
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"LCK"
	.byte	0x3
	.uahalf	0x430
	.uaword	0xa5a
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"PW"
	.byte	0x3
	.uahalf	0x431
	.uaword	0xa5a
	.byte	0x4
	.byte	0xe
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"REL"
	.byte	0x3
	.uahalf	0x432
	.uaword	0xa5a
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_SCU_WDTS_CON0_Bits"
	.byte	0x3
	.uahalf	0x433
	.uaword	0xa5f
	.uleb128 0x7
	.string	"_Ifx_SCU_WDTS_CON1_Bits"
	.byte	0x4
	.byte	0x3
	.uahalf	0x436
	.uaword	0xbdc
	.uleb128 0x8
	.string	"CLRIRF"
	.byte	0x3
	.uahalf	0x438
	.uaword	0x10b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"reserved_1"
	.byte	0x3
	.uahalf	0x439
	.uaword	0x10b
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"IR0"
	.byte	0x3
	.uahalf	0x43a
	.uaword	0x10b
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"DR"
	.byte	0x3
	.uahalf	0x43b
	.uaword	0x10b
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF8
	.byte	0x3
	.uahalf	0x43c
	.uaword	0x10b
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"IR1"
	.byte	0x3
	.uahalf	0x43d
	.uaword	0x10b
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"UR"
	.byte	0x3
	.uahalf	0x43e
	.uaword	0x10b
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"PAR"
	.byte	0x3
	.uahalf	0x43f
	.uaword	0x10b
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TCR"
	.byte	0x3
	.uahalf	0x440
	.uaword	0x10b
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TCTR"
	.byte	0x3
	.uahalf	0x441
	.uaword	0x10b
	.byte	0x4
	.byte	0x7
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF9
	.byte	0x3
	.uahalf	0x442
	.uaword	0x10b
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_SCU_WDTS_CON1_Bits"
	.byte	0x3
	.uahalf	0x443
	.uaword	0xaeb
	.uleb128 0xc
	.byte	0x4
	.byte	0x3
	.uahalf	0x48b
	.uaword	0xc23
	.uleb128 0xd
	.string	"U"
	.byte	0x3
	.uahalf	0x48d
	.uaword	0x10b
	.uleb128 0xd
	.string	"I"
	.byte	0x3
	.uahalf	0x48e
	.uaword	0xf4
	.uleb128 0xd
	.string	"B"
	.byte	0x3
	.uahalf	0x48f
	.uaword	0x264
	.byte	0
	.uleb128 0xa
	.string	"Ifx_SCU_CCUCON3"
	.byte	0x3
	.uahalf	0x490
	.uaword	0xbfb
	.uleb128 0xc
	.byte	0x4
	.byte	0x3
	.uahalf	0x493
	.uaword	0xc63
	.uleb128 0xd
	.string	"U"
	.byte	0x3
	.uahalf	0x495
	.uaword	0x10b
	.uleb128 0xd
	.string	"I"
	.byte	0x3
	.uahalf	0x496
	.uaword	0xf4
	.uleb128 0xd
	.string	"B"
	.byte	0x3
	.uahalf	0x497
	.uaword	0x349
	.byte	0
	.uleb128 0xa
	.string	"Ifx_SCU_CCUCON4"
	.byte	0x3
	.uahalf	0x498
	.uaword	0xc3b
	.uleb128 0xc
	.byte	0x4
	.byte	0x3
	.uahalf	0x503
	.uaword	0xca3
	.uleb128 0xd
	.string	"U"
	.byte	0x3
	.uahalf	0x505
	.uaword	0x10b
	.uleb128 0xd
	.string	"I"
	.byte	0x3
	.uahalf	0x506
	.uaword	0xf4
	.uleb128 0xd
	.string	"B"
	.byte	0x3
	.uahalf	0x507
	.uaword	0x465
	.byte	0
	.uleb128 0xa
	.string	"Ifx_SCU_EVRMONCTRL"
	.byte	0x3
	.uahalf	0x508
	.uaword	0xc7b
	.uleb128 0xc
	.byte	0x4
	.byte	0x3
	.uahalf	0x50b
	.uaword	0xce6
	.uleb128 0xd
	.string	"U"
	.byte	0x3
	.uahalf	0x50d
	.uaword	0x10b
	.uleb128 0xd
	.string	"I"
	.byte	0x3
	.uahalf	0x50e
	.uaword	0xf4
	.uleb128 0xd
	.string	"B"
	.byte	0x3
	.uahalf	0x50f
	.uaword	0x51f
	.byte	0
	.uleb128 0xa
	.string	"Ifx_SCU_EVROVMON"
	.byte	0x3
	.uahalf	0x510
	.uaword	0xcbe
	.uleb128 0xc
	.byte	0x4
	.byte	0x3
	.uahalf	0x53b
	.uaword	0xd27
	.uleb128 0xd
	.string	"U"
	.byte	0x3
	.uahalf	0x53d
	.uaword	0x10b
	.uleb128 0xd
	.string	"I"
	.byte	0x3
	.uahalf	0x53e
	.uaword	0xf4
	.uleb128 0xd
	.string	"B"
	.byte	0x3
	.uahalf	0x53f
	.uaword	0x652
	.byte	0
	.uleb128 0xa
	.string	"Ifx_SCU_EVRSTAT"
	.byte	0x3
	.uahalf	0x540
	.uaword	0xcff
	.uleb128 0xc
	.byte	0x4
	.byte	0x3
	.uahalf	0x543
	.uaword	0xd67
	.uleb128 0xd
	.string	"U"
	.byte	0x3
	.uahalf	0x545
	.uaword	0x10b
	.uleb128 0xd
	.string	"I"
	.byte	0x3
	.uahalf	0x546
	.uaword	0xf4
	.uleb128 0xd
	.string	"B"
	.byte	0x3
	.uahalf	0x547
	.uaword	0x709
	.byte	0
	.uleb128 0xa
	.string	"Ifx_SCU_EVRUVMON"
	.byte	0x3
	.uahalf	0x548
	.uaword	0xd3f
	.uleb128 0xc
	.byte	0x4
	.byte	0x3
	.uahalf	0x64b
	.uaword	0xda8
	.uleb128 0xd
	.string	"U"
	.byte	0x3
	.uahalf	0x64d
	.uaword	0x10b
	.uleb128 0xd
	.string	"I"
	.byte	0x3
	.uahalf	0x64e
	.uaword	0xf4
	.uleb128 0xd
	.string	"B"
	.byte	0x3
	.uahalf	0x64f
	.uaword	0x967
	.byte	0
	.uleb128 0xa
	.string	"Ifx_SCU_PMSWSTAT"
	.byte	0x3
	.uahalf	0x650
	.uaword	0xd80
	.uleb128 0xc
	.byte	0x4
	.byte	0x3
	.uahalf	0x66b
	.uaword	0xde9
	.uleb128 0xd
	.string	"U"
	.byte	0x3
	.uahalf	0x66d
	.uaword	0x10b
	.uleb128 0xd
	.string	"I"
	.byte	0x3
	.uahalf	0x66e
	.uaword	0xf4
	.uleb128 0xd
	.string	"B"
	.byte	0x3
	.uahalf	0x66f
	.uaword	0xa3d
	.byte	0
	.uleb128 0xa
	.string	"Ifx_SCU_RSTCON2"
	.byte	0x3
	.uahalf	0x670
	.uaword	0xdc1
	.uleb128 0xc
	.byte	0x4
	.byte	0x3
	.uahalf	0x6d3
	.uaword	0xe29
	.uleb128 0xd
	.string	"U"
	.byte	0x3
	.uahalf	0x6d5
	.uaword	0x10b
	.uleb128 0xd
	.string	"I"
	.byte	0x3
	.uahalf	0x6d6
	.uaword	0xf4
	.uleb128 0xd
	.string	"B"
	.byte	0x3
	.uahalf	0x6d7
	.uaword	0xacc
	.byte	0
	.uleb128 0xa
	.string	"Ifx_SCU_WDTS_CON0"
	.byte	0x3
	.uahalf	0x6d8
	.uaword	0xe01
	.uleb128 0xc
	.byte	0x4
	.byte	0x3
	.uahalf	0x6db
	.uaword	0xe6b
	.uleb128 0xd
	.string	"U"
	.byte	0x3
	.uahalf	0x6dd
	.uaword	0x10b
	.uleb128 0xd
	.string	"I"
	.byte	0x3
	.uahalf	0x6de
	.uaword	0xf4
	.uleb128 0xd
	.string	"B"
	.byte	0x3
	.uahalf	0x6df
	.uaword	0xbdc
	.byte	0
	.uleb128 0xa
	.string	"Ifx_SCU_WDTS_CON1"
	.byte	0x3
	.uahalf	0x6e0
	.uaword	0xe43
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.string	"long long int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.string	"long long unsigned int"
	.uleb128 0x4
	.string	"_Ifx_SMU_AG_Bits"
	.byte	0x4
	.byte	0x4
	.byte	0x88
	.uaword	0x1100
	.uleb128 0x5
	.string	"SF0"
	.byte	0x4
	.byte	0x8a
	.uaword	0xa5a
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"SF1"
	.byte	0x4
	.byte	0x8b
	.uaword	0xa5a
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"SF2"
	.byte	0x4
	.byte	0x8c
	.uaword	0xa5a
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"SF3"
	.byte	0x4
	.byte	0x8d
	.uaword	0xa5a
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"SF4"
	.byte	0x4
	.byte	0x8e
	.uaword	0xa5a
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"SF5"
	.byte	0x4
	.byte	0x8f
	.uaword	0xa5a
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"SF6"
	.byte	0x4
	.byte	0x90
	.uaword	0xa5a
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"SF7"
	.byte	0x4
	.byte	0x91
	.uaword	0xa5a
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"SF8"
	.byte	0x4
	.byte	0x92
	.uaword	0xa5a
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"SF9"
	.byte	0x4
	.byte	0x93
	.uaword	0xa5a
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"SF10"
	.byte	0x4
	.byte	0x94
	.uaword	0xa5a
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"SF11"
	.byte	0x4
	.byte	0x95
	.uaword	0xa5a
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"SF12"
	.byte	0x4
	.byte	0x96
	.uaword	0xa5a
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"SF13"
	.byte	0x4
	.byte	0x97
	.uaword	0xa5a
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"SF14"
	.byte	0x4
	.byte	0x98
	.uaword	0xa5a
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"SF15"
	.byte	0x4
	.byte	0x99
	.uaword	0xa5a
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"SF16"
	.byte	0x4
	.byte	0x9a
	.uaword	0xa5a
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"SF17"
	.byte	0x4
	.byte	0x9b
	.uaword	0xa5a
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"SF18"
	.byte	0x4
	.byte	0x9c
	.uaword	0xa5a
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"SF19"
	.byte	0x4
	.byte	0x9d
	.uaword	0xa5a
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"SF20"
	.byte	0x4
	.byte	0x9e
	.uaword	0xa5a
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"SF21"
	.byte	0x4
	.byte	0x9f
	.uaword	0xa5a
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"SF22"
	.byte	0x4
	.byte	0xa0
	.uaword	0xa5a
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"SF23"
	.byte	0x4
	.byte	0xa1
	.uaword	0xa5a
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"SF24"
	.byte	0x4
	.byte	0xa2
	.uaword	0xa5a
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"SF25"
	.byte	0x4
	.byte	0xa3
	.uaword	0xa5a
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"SF26"
	.byte	0x4
	.byte	0xa4
	.uaword	0xa5a
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"SF27"
	.byte	0x4
	.byte	0xa5
	.uaword	0xa5a
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"SF28"
	.byte	0x4
	.byte	0xa6
	.uaword	0xa5a
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"SF29"
	.byte	0x4
	.byte	0xa7
	.uaword	0xa5a
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"SF30"
	.byte	0x4
	.byte	0xa8
	.uaword	0xa5a
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"SF31"
	.byte	0x4
	.byte	0xa9
	.uaword	0xa5a
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SMU_AG_Bits"
	.byte	0x4
	.byte	0xaa
	.uaword	0xeb0
	.uleb128 0xc
	.byte	0x4
	.byte	0x4
	.uahalf	0x213
	.uaword	0x113f
	.uleb128 0xd
	.string	"U"
	.byte	0x4
	.uahalf	0x215
	.uaword	0x10b
	.uleb128 0xd
	.string	"I"
	.byte	0x4
	.uahalf	0x216
	.uaword	0xf4
	.uleb128 0xd
	.string	"B"
	.byte	0x4
	.uahalf	0x217
	.uaword	0x1100
	.byte	0
	.uleb128 0xa
	.string	"Ifx_SMU_AG"
	.byte	0x4
	.uahalf	0x218
	.uaword	0x1117
	.uleb128 0x7
	.string	"_Ifx_CPU_PSW_Bits"
	.byte	0x4
	.byte	0x5
	.uahalf	0x204
	.uaword	0x124d
	.uleb128 0x8
	.string	"CDC"
	.byte	0x5
	.uahalf	0x206
	.uaword	0xa5a
	.byte	0x4
	.byte	0x7
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"CDE"
	.byte	0x5
	.uahalf	0x207
	.uaword	0xa5a
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"GW"
	.byte	0x5
	.uahalf	0x208
	.uaword	0xa5a
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"IS"
	.byte	0x5
	.uahalf	0x209
	.uaword	0xa5a
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"IO"
	.byte	0x5
	.uahalf	0x20a
	.uaword	0xa5a
	.byte	0x4
	.byte	0x2
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"PRS"
	.byte	0x5
	.uahalf	0x20b
	.uaword	0xa5a
	.byte	0x4
	.byte	0x2
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"S"
	.byte	0x5
	.uahalf	0x20c
	.uaword	0xa5a
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF6
	.byte	0x5
	.uahalf	0x20d
	.uaword	0xa5a
	.byte	0x4
	.byte	0xc
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"SAV"
	.byte	0x5
	.uahalf	0x20e
	.uaword	0xa5a
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"AV"
	.byte	0x5
	.uahalf	0x20f
	.uaword	0xa5a
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"SV"
	.byte	0x5
	.uahalf	0x210
	.uaword	0xa5a
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"V"
	.byte	0x5
	.uahalf	0x211
	.uaword	0xa5a
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"C"
	.byte	0x5
	.uahalf	0x212
	.uaword	0xa5a
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_CPU_PSW_Bits"
	.byte	0x5
	.uahalf	0x213
	.uaword	0x1152
	.uleb128 0x7
	.string	"_Ifx_CPU_SPROT_RGN_ACCENA_Bits"
	.byte	0x4
	.byte	0x5
	.uahalf	0x23a
	.uaword	0x12a0
	.uleb128 0x8
	.string	"EN"
	.byte	0x5
	.uahalf	0x23c
	.uaword	0x10b
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_CPU_SPROT_RGN_ACCENA_Bits"
	.byte	0x5
	.uahalf	0x23d
	.uaword	0x1266
	.uleb128 0xc
	.byte	0x4
	.byte	0x5
	.uahalf	0x467
	.uaword	0x12ee
	.uleb128 0xd
	.string	"U"
	.byte	0x5
	.uahalf	0x469
	.uaword	0x10b
	.uleb128 0xd
	.string	"I"
	.byte	0x5
	.uahalf	0x46a
	.uaword	0xf4
	.uleb128 0xd
	.string	"B"
	.byte	0x5
	.uahalf	0x46b
	.uaword	0x124d
	.byte	0
	.uleb128 0xa
	.string	"Ifx_CPU_PSW"
	.byte	0x5
	.uahalf	0x46c
	.uaword	0x12c6
	.uleb128 0xc
	.byte	0x4
	.byte	0x5
	.uahalf	0x48f
	.uaword	0x132a
	.uleb128 0xd
	.string	"U"
	.byte	0x5
	.uahalf	0x491
	.uaword	0x10b
	.uleb128 0xd
	.string	"I"
	.byte	0x5
	.uahalf	0x492
	.uaword	0xf4
	.uleb128 0xd
	.string	"B"
	.byte	0x5
	.uahalf	0x493
	.uaword	0x12a0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_CPU_SPROT_RGN_ACCENA"
	.byte	0x5
	.uahalf	0x494
	.uaword	0x1302
	.uleb128 0x4
	.string	"_Ifx_MTU_CLC_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0x58
	.uaword	0x13c0
	.uleb128 0x5
	.string	"DISR"
	.byte	0x6
	.byte	0x5a
	.uaword	0x10b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"DISS"
	.byte	0x6
	.byte	0x5b
	.uaword	0x10b
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"Resvd"
	.byte	0x6
	.byte	0x5c
	.uaword	0x10b
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EDIS"
	.byte	0x6
	.byte	0x5d
	.uaword	0x10b
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.uaword	.LASF8
	.byte	0x6
	.byte	0x5e
	.uaword	0x10b
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_MTU_CLC_Bits"
	.byte	0x6
	.byte	0x5f
	.uaword	0x134b
	.uleb128 0xe
	.byte	0x4
	.byte	0x6
	.byte	0xfa
	.uaword	0x13fc
	.uleb128 0xf
	.string	"U"
	.byte	0x6
	.byte	0xfc
	.uaword	0x10b
	.uleb128 0xf
	.string	"I"
	.byte	0x6
	.byte	0xfd
	.uaword	0xf4
	.uleb128 0xf
	.string	"B"
	.byte	0x6
	.byte	0xfe
	.uaword	0x13c0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_MTU_CLC"
	.byte	0x6
	.byte	0xff
	.uaword	0x13d8
	.uleb128 0x4
	.string	"_Ifx_FLASH_CBAB_CFG_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0x58
	.uaword	0x148e
	.uleb128 0x5
	.string	"SEL"
	.byte	0x7
	.byte	0x5a
	.uaword	0x10b
	.byte	0x4
	.byte	0x6
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.uaword	.LASF2
	.byte	0x7
	.byte	0x5b
	.uaword	0x10b
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"CLR"
	.byte	0x7
	.byte	0x5c
	.uaword	0x10b
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"DIS"
	.byte	0x7
	.byte	0x5d
	.uaword	0x10b
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"reserved_10"
	.byte	0x7
	.byte	0x5e
	.uaword	0x10b
	.byte	0x4
	.byte	0x16
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_FLASH_CBAB_CFG_Bits"
	.byte	0x7
	.byte	0x5f
	.uaword	0x140f
	.uleb128 0xc
	.byte	0x4
	.byte	0x7
	.uahalf	0x22c
	.uaword	0x14d5
	.uleb128 0xd
	.string	"U"
	.byte	0x7
	.uahalf	0x22e
	.uaword	0x10b
	.uleb128 0xd
	.string	"I"
	.byte	0x7
	.uahalf	0x22f
	.uaword	0xf4
	.uleb128 0xd
	.string	"B"
	.byte	0x7
	.uahalf	0x230
	.uaword	0x148e
	.byte	0
	.uleb128 0xa
	.string	"Ifx_FLASH_CBAB_CFG"
	.byte	0x7
	.uahalf	0x231
	.uaword	0x14ad
	.uleb128 0x4
	.string	"_Ifx_SBCU_CON_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0x58
	.uaword	0x1559
	.uleb128 0x5
	.string	"TOUT"
	.byte	0x8
	.byte	0x5a
	.uaword	0x10b
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"DBG"
	.byte	0x8
	.byte	0x5b
	.uaword	0x10b
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"reserved_17"
	.byte	0x8
	.byte	0x5c
	.uaword	0x10b
	.byte	0x4
	.byte	0x7
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"SPC"
	.byte	0x8
	.byte	0x5d
	.uaword	0x10b
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SBCU_CON_Bits"
	.byte	0x8
	.byte	0x5e
	.uaword	0x14f0
	.uleb128 0x4
	.string	"_Ifx_SBCU_PRIOH_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0xf3
	.uaword	0x163d
	.uleb128 0x5
	.string	"RESERVED8"
	.byte	0x8
	.byte	0xf5
	.uaword	0x10b
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"RESERVED9"
	.byte	0x8
	.byte	0xf6
	.uaword	0x10b
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"RESERVEDA"
	.byte	0x8
	.byte	0xf7
	.uaword	0x10b
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"RESERVEDB"
	.byte	0x8
	.byte	0xf8
	.uaword	0x10b
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"HSMRMI"
	.byte	0x8
	.byte	0xf9
	.uaword	0x10b
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"HSMCMI"
	.byte	0x8
	.byte	0xfa
	.uaword	0x10b
	.byte	0x4
	.byte	0x4
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"RESERVEDE"
	.byte	0x8
	.byte	0xfb
	.uaword	0x10b
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"DMAL"
	.byte	0x8
	.byte	0xfc
	.uaword	0x10b
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SBCU_PRIOH_Bits"
	.byte	0x8
	.byte	0xfd
	.uaword	0x1572
	.uleb128 0x7
	.string	"_Ifx_SBCU_PRIOL_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x100
	.uaword	0x1728
	.uleb128 0x8
	.string	"DMAH"
	.byte	0x8
	.uahalf	0x102
	.uaword	0x10b
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"RESERVED1"
	.byte	0x8
	.uahalf	0x103
	.uaword	0x10b
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"RESERVED2"
	.byte	0x8
	.uahalf	0x104
	.uaword	0x10b
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"RESERVED3"
	.byte	0x8
	.uahalf	0x105
	.uaword	0x10b
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"RESERVED4"
	.byte	0x8
	.uahalf	0x106
	.uaword	0x10b
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"DMAM"
	.byte	0x8
	.uahalf	0x107
	.uaword	0x10b
	.byte	0x4
	.byte	0x4
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"RESERVED6"
	.byte	0x8
	.uahalf	0x108
	.uaword	0x10b
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"CPU0"
	.byte	0x8
	.uahalf	0x109
	.uaword	0x10b
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_SBCU_PRIOL_Bits"
	.byte	0x8
	.uahalf	0x10a
	.uaword	0x1658
	.uleb128 0xc
	.byte	0x4
	.byte	0x8
	.uahalf	0x122
	.uaword	0x176c
	.uleb128 0xd
	.string	"U"
	.byte	0x8
	.uahalf	0x124
	.uaword	0x10b
	.uleb128 0xd
	.string	"I"
	.byte	0x8
	.uahalf	0x125
	.uaword	0xf4
	.uleb128 0xd
	.string	"B"
	.byte	0x8
	.uahalf	0x126
	.uaword	0x1559
	.byte	0
	.uleb128 0xa
	.string	"Ifx_SBCU_CON"
	.byte	0x8
	.uahalf	0x127
	.uaword	0x1744
	.uleb128 0xc
	.byte	0x4
	.byte	0x8
	.uahalf	0x192
	.uaword	0x17a9
	.uleb128 0xd
	.string	"U"
	.byte	0x8
	.uahalf	0x194
	.uaword	0x10b
	.uleb128 0xd
	.string	"I"
	.byte	0x8
	.uahalf	0x195
	.uaword	0xf4
	.uleb128 0xd
	.string	"B"
	.byte	0x8
	.uahalf	0x196
	.uaword	0x163d
	.byte	0
	.uleb128 0xa
	.string	"Ifx_SBCU_PRIOH"
	.byte	0x8
	.uahalf	0x197
	.uaword	0x1781
	.uleb128 0xc
	.byte	0x4
	.byte	0x8
	.uahalf	0x19a
	.uaword	0x17e8
	.uleb128 0xd
	.string	"U"
	.byte	0x8
	.uahalf	0x19c
	.uaword	0x10b
	.uleb128 0xd
	.string	"I"
	.byte	0x8
	.uahalf	0x19d
	.uaword	0xf4
	.uleb128 0xd
	.string	"B"
	.byte	0x8
	.uahalf	0x19e
	.uaword	0x1728
	.byte	0
	.uleb128 0xa
	.string	"Ifx_SBCU_PRIOL"
	.byte	0x8
	.uahalf	0x19f
	.uaword	0x17c0
	.uleb128 0x4
	.string	"_Ifx_IOM_CLC_Bits"
	.byte	0x4
	.byte	0x9
	.byte	0x58
	.uaword	0x1894
	.uleb128 0x5
	.string	"DISR"
	.byte	0x9
	.byte	0x5a
	.uaword	0x10b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"DISS"
	.byte	0x9
	.byte	0x5b
	.uaword	0x10b
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.uaword	.LASF1
	.byte	0x9
	.byte	0x5c
	.uaword	0x10b
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EDIS"
	.byte	0x9
	.byte	0x5d
	.uaword	0x10b
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.uaword	.LASF8
	.byte	0x9
	.byte	0x5e
	.uaword	0x10b
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"RMC"
	.byte	0x9
	.byte	0x5f
	.uaword	0x10b
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.uaword	.LASF9
	.byte	0x9
	.byte	0x60
	.uaword	0x10b
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_IOM_CLC_Bits"
	.byte	0x9
	.byte	0x61
	.uaword	0x17ff
	.uleb128 0x4
	.string	"_Ifx_IOM_ECMSELR_Bits"
	.byte	0x4
	.byte	0x9
	.byte	0xbb
	.uaword	0x1a52
	.uleb128 0x5
	.string	"CES0"
	.byte	0x9
	.byte	0xbd
	.uaword	0x10b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"CES1"
	.byte	0x9
	.byte	0xbe
	.uaword	0x10b
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"CES2"
	.byte	0x9
	.byte	0xbf
	.uaword	0x10b
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"CES3"
	.byte	0x9
	.byte	0xc0
	.uaword	0x10b
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"CES4"
	.byte	0x9
	.byte	0xc1
	.uaword	0x10b
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"CES5"
	.byte	0x9
	.byte	0xc2
	.uaword	0x10b
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"CES6"
	.byte	0x9
	.byte	0xc3
	.uaword	0x10b
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"CES7"
	.byte	0x9
	.byte	0xc4
	.uaword	0x10b
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"CES8"
	.byte	0x9
	.byte	0xc5
	.uaword	0x10b
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"CES9"
	.byte	0x9
	.byte	0xc6
	.uaword	0x10b
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"CES10"
	.byte	0x9
	.byte	0xc7
	.uaword	0x10b
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"CES11"
	.byte	0x9
	.byte	0xc8
	.uaword	0x10b
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"CES12"
	.byte	0x9
	.byte	0xc9
	.uaword	0x10b
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"CES13"
	.byte	0x9
	.byte	0xca
	.uaword	0x10b
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"CES14"
	.byte	0x9
	.byte	0xcb
	.uaword	0x10b
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"CES15"
	.byte	0x9
	.byte	0xcc
	.uaword	0x10b
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"CTS0"
	.byte	0x9
	.byte	0xcd
	.uaword	0x10b
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"CTS1"
	.byte	0x9
	.byte	0xce
	.uaword	0x10b
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"CTS2"
	.byte	0x9
	.byte	0xcf
	.uaword	0x10b
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"CTS3"
	.byte	0x9
	.byte	0xd0
	.uaword	0x10b
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"reserved_20"
	.byte	0x9
	.byte	0xd1
	.uaword	0x10b
	.byte	0x4
	.byte	0xc
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_IOM_ECMSELR_Bits"
	.byte	0x9
	.byte	0xd2
	.uaword	0x18ac
	.uleb128 0x4
	.string	"_Ifx_IOM_FPCCTR_Bits"
	.byte	0x4
	.byte	0x9
	.byte	0xd5
	.uaword	0x1b24
	.uleb128 0x5
	.string	"CMP"
	.byte	0x9
	.byte	0xd7
	.uaword	0x10b
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"MOD"
	.byte	0x9
	.byte	0xd8
	.uaword	0x10b
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"ISM"
	.byte	0x9
	.byte	0xd9
	.uaword	0x10b
	.byte	0x4
	.byte	0x2
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"reserved_21"
	.byte	0x9
	.byte	0xda
	.uaword	0x10b
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"RTG"
	.byte	0x9
	.byte	0xdb
	.uaword	0x10b
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.uaword	.LASF7
	.byte	0x9
	.byte	0xdc
	.uaword	0x10b
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"ISR"
	.byte	0x9
	.byte	0xdd
	.uaword	0x10b
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"reserved_27"
	.byte	0x9
	.byte	0xde
	.uaword	0x10b
	.byte	0x4
	.byte	0x5
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_IOM_FPCCTR_Bits"
	.byte	0x9
	.byte	0xdf
	.uaword	0x1a6e
	.uleb128 0x7
	.string	"_Ifx_IOM_LAMCFG_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x13a
	.uaword	0x1c45
	.uleb128 0x8
	.string	"IVR"
	.byte	0x9
	.uahalf	0x13c
	.uaword	0x10b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"IVM"
	.byte	0x9
	.uahalf	0x13d
	.uaword	0x10b
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"MOS"
	.byte	0x9
	.uahalf	0x13e
	.uaword	0x10b
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"RMS"
	.byte	0x9
	.uahalf	0x13f
	.uaword	0x10b
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"EWS"
	.byte	0x9
	.uahalf	0x140
	.uaword	0x10b
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"reserved_5"
	.byte	0x9
	.uahalf	0x141
	.uaword	0x10b
	.byte	0x4
	.byte	0x3
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"EDS"
	.byte	0x9
	.uahalf	0x142
	.uaword	0x10b
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"IVW"
	.byte	0x9
	.uahalf	0x143
	.uaword	0x10b
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"reserved_13"
	.byte	0x9
	.uahalf	0x144
	.uaword	0x10b
	.byte	0x4
	.byte	0x3
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"MCS"
	.byte	0x9
	.uahalf	0x145
	.uaword	0x10b
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"RCS"
	.byte	0x9
	.uahalf	0x146
	.uaword	0x10b
	.byte	0x4
	.byte	0x4
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF0
	.byte	0x9
	.uahalf	0x147
	.uaword	0x10b
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_IOM_LAMCFG_Bits"
	.byte	0x9
	.uahalf	0x148
	.uaword	0x1b3f
	.uleb128 0x7
	.string	"_Ifx_IOM_LAMEWS_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x152
	.uaword	0x1ca4
	.uleb128 0x8
	.string	"THR"
	.byte	0x9
	.uahalf	0x154
	.uaword	0x10b
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF0
	.byte	0x9
	.uahalf	0x155
	.uaword	0x10b
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_IOM_LAMEWS_Bits"
	.byte	0x9
	.uahalf	0x156
	.uaword	0x1c61
	.uleb128 0xc
	.byte	0x4
	.byte	0x9
	.uahalf	0x16e
	.uaword	0x1ce8
	.uleb128 0xd
	.string	"U"
	.byte	0x9
	.uahalf	0x170
	.uaword	0x10b
	.uleb128 0xd
	.string	"I"
	.byte	0x9
	.uahalf	0x171
	.uaword	0xf4
	.uleb128 0xd
	.string	"B"
	.byte	0x9
	.uahalf	0x172
	.uaword	0x1894
	.byte	0
	.uleb128 0xa
	.string	"Ifx_IOM_CLC"
	.byte	0x9
	.uahalf	0x173
	.uaword	0x1cc0
	.uleb128 0xc
	.byte	0x4
	.byte	0x9
	.uahalf	0x18e
	.uaword	0x1d24
	.uleb128 0xd
	.string	"U"
	.byte	0x9
	.uahalf	0x190
	.uaword	0x10b
	.uleb128 0xd
	.string	"I"
	.byte	0x9
	.uahalf	0x191
	.uaword	0xf4
	.uleb128 0xd
	.string	"B"
	.byte	0x9
	.uahalf	0x192
	.uaword	0x1a52
	.byte	0
	.uleb128 0xa
	.string	"Ifx_IOM_ECMSELR"
	.byte	0x9
	.uahalf	0x193
	.uaword	0x1cfc
	.uleb128 0xc
	.byte	0x4
	.byte	0x9
	.uahalf	0x196
	.uaword	0x1d64
	.uleb128 0xd
	.string	"U"
	.byte	0x9
	.uahalf	0x198
	.uaword	0x10b
	.uleb128 0xd
	.string	"I"
	.byte	0x9
	.uahalf	0x199
	.uaword	0xf4
	.uleb128 0xd
	.string	"B"
	.byte	0x9
	.uahalf	0x19a
	.uaword	0x1b24
	.byte	0
	.uleb128 0xa
	.string	"Ifx_IOM_FPCCTR"
	.byte	0x9
	.uahalf	0x19b
	.uaword	0x1d3c
	.uleb128 0xc
	.byte	0x4
	.byte	0x9
	.uahalf	0x1d6
	.uaword	0x1da3
	.uleb128 0xd
	.string	"U"
	.byte	0x9
	.uahalf	0x1d8
	.uaword	0x10b
	.uleb128 0xd
	.string	"I"
	.byte	0x9
	.uahalf	0x1d9
	.uaword	0xf4
	.uleb128 0xd
	.string	"B"
	.byte	0x9
	.uahalf	0x1da
	.uaword	0x1c45
	.byte	0
	.uleb128 0xa
	.string	"Ifx_IOM_LAMCFG"
	.byte	0x9
	.uahalf	0x1db
	.uaword	0x1d7b
	.uleb128 0xc
	.byte	0x4
	.byte	0x9
	.uahalf	0x1e6
	.uaword	0x1de2
	.uleb128 0xd
	.string	"U"
	.byte	0x9
	.uahalf	0x1e8
	.uaword	0x10b
	.uleb128 0xd
	.string	"I"
	.byte	0x9
	.uahalf	0x1e9
	.uaword	0xf4
	.uleb128 0xd
	.string	"B"
	.byte	0x9
	.uahalf	0x1ea
	.uaword	0x1ca4
	.byte	0
	.uleb128 0xa
	.string	"Ifx_IOM_LAMEWS"
	.byte	0x9
	.uahalf	0x1eb
	.uaword	0x1dba
	.uleb128 0x10
	.uaword	.LASF10
	.byte	0x4
	.byte	0xa
	.byte	0x49
	.uaword	0x1f4f
	.uleb128 0x5
	.string	"ExtVREG_MON"
	.byte	0xa
	.byte	0x4b
	.uaword	0x17c
	.byte	0x1
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"ExtV13_MON"
	.byte	0xa
	.byte	0x4c
	.uaword	0x17c
	.byte	0x1
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"BANDGAP_MON"
	.byte	0xa
	.byte	0x4d
	.uaword	0x17c
	.byte	0x1
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EVR_CFGMON"
	.byte	0xa
	.byte	0x4e
	.uaword	0x17c
	.byte	0x1
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"SystemPLL_CLKMON"
	.byte	0xa
	.byte	0x50
	.uaword	0x17c
	.byte	0x1
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"SRI_CLKMON"
	.byte	0xa
	.byte	0x51
	.uaword	0x17c
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"SPB_CLKMON"
	.byte	0xa
	.byte	0x52
	.uaword	0x17c
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"GTM_CLKMON"
	.byte	0xa
	.byte	0x53
	.uaword	0x17c
	.byte	0x1
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"SBCU_InitCheck"
	.byte	0xa
	.byte	0x55
	.uaword	0x17c
	.byte	0x1
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x5
	.string	"WDT_InitCheck"
	.byte	0xa
	.byte	0x56
	.uaword	0x17c
	.byte	0x1
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x5
	.string	"RESET_SSCheck"
	.byte	0xa
	.byte	0x57
	.uaword	0x17c
	.byte	0x1
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x5
	.string	"Pri_PWM_IOM"
	.byte	0xa
	.byte	0x59
	.uaword	0x17c
	.byte	0x1
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x5
	.string	"Reserved"
	.byte	0xa
	.byte	0x5b
	.uaword	0x171
	.byte	0x4
	.byte	0x13
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x11
	.uaword	.LASF10
	.byte	0xa
	.byte	0x5c
	.uaword	0x1df9
	.uleb128 0x12
	.uaword	.LASF11
	.byte	0x4
	.byte	0xa
	.byte	0x5e
	.uaword	0x1f7d
	.uleb128 0xf
	.string	"all"
	.byte	0xa
	.byte	0x5f
	.uaword	0x171
	.uleb128 0xf
	.string	"bit"
	.byte	0xa
	.byte	0x60
	.uaword	0x1f4f
	.byte	0
	.uleb128 0x11
	.uaword	.LASF11
	.byte	0xa
	.byte	0x61
	.uaword	0x1f5a
	.uleb128 0x13
	.uaword	0x166
	.uaword	0x1f98
	.uleb128 0x14
	.uaword	0x13f
	.byte	0x9
	.byte	0
	.uleb128 0x15
	.byte	0x4
	.byte	0xb
	.byte	0x59
	.uaword	0x20d9
	.uleb128 0x16
	.string	"MAIN_E_HW_B0"
	.sleb128 0
	.uleb128 0x16
	.string	"MAIN_E_HW_B01_X10"
	.sleb128 1
	.uleb128 0x16
	.string	"MAIN_E_HW_B01_X10_DV"
	.sleb128 2
	.uleb128 0x16
	.string	"MAIN_E_HW_B02_X10"
	.sleb128 3
	.uleb128 0x16
	.string	"MAIN_E_HW_B02_X10_DV"
	.sleb128 4
	.uleb128 0x16
	.string	"MAIN_E_HW_C0"
	.sleb128 5
	.uleb128 0x16
	.string	"MAIN_E_HW_C0_DV"
	.sleb128 6
	.uleb128 0x16
	.string	"MAIN_E_HW_C1"
	.sleb128 7
	.uleb128 0x16
	.string	"MAIN_E_HW_C1_DV"
	.sleb128 8
	.uleb128 0x16
	.string	"MAIN_E_HW_C1_C01"
	.sleb128 9
	.uleb128 0x16
	.string	"MAIN_E_HW_C1_C01_DV"
	.sleb128 10
	.uleb128 0x16
	.string	"MAIN_E_HW_C1_C02"
	.sleb128 11
	.uleb128 0x16
	.string	"MAIN_E_HW_C1_C02_DV"
	.sleb128 12
	.uleb128 0x16
	.string	"MAIN_E_HW_C1_BAK13"
	.sleb128 13
	.uleb128 0x16
	.string	"MAIN_E_HW_C1_BAK14"
	.sleb128 14
	.uleb128 0x16
	.string	"MAIN_E_HW_Reserved"
	.sleb128 15
	.byte	0
	.uleb128 0x3
	.string	"MAIN_E_HW_VER"
	.byte	0xb
	.byte	0x6a
	.uaword	0x1f98
	.uleb128 0x17
	.byte	0x10
	.byte	0xb
	.byte	0x6c
	.uaword	0x216f
	.uleb128 0x18
	.string	"App"
	.byte	0xb
	.byte	0x6d
	.uaword	0x166
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x18
	.string	"Meas"
	.byte	0xb
	.byte	0x6e
	.uaword	0x166
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x18
	.string	"Ctrl"
	.byte	0xb
	.byte	0x6f
	.uaword	0x166
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x18
	.string	"Pwm"
	.byte	0xb
	.byte	0x70
	.uaword	0x166
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x18
	.string	"Diag"
	.byte	0xb
	.byte	0x71
	.uaword	0x166
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x18
	.string	"Ntc"
	.byte	0xb
	.byte	0x72
	.uaword	0x166
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x18
	.string	"State"
	.byte	0xb
	.byte	0x73
	.uaword	0x166
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x18
	.string	"Safety"
	.byte	0xb
	.byte	0x74
	.uaword	0x166
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.byte	0
	.uleb128 0x3
	.string	"MAIN_E_HW_VER_APP"
	.byte	0xb
	.byte	0x75
	.uaword	0x20ee
	.uleb128 0x17
	.byte	0x20
	.byte	0xb
	.byte	0x77
	.uaword	0x21e0
	.uleb128 0x18
	.string	"Code"
	.byte	0xb
	.byte	0x78
	.uaword	0x21e0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x18
	.string	"CodeNum"
	.byte	0xb
	.byte	0x79
	.uaword	0x166
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x18
	.string	"VerName"
	.byte	0xb
	.byte	0x7a
	.uaword	0x166
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x18
	.string	"Ver"
	.byte	0xb
	.byte	0x7b
	.uaword	0x20d9
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x18
	.string	"App"
	.byte	0xb
	.byte	0x7c
	.uaword	0x216f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x13
	.uaword	0x166
	.uaword	0x21f0
	.uleb128 0x14
	.uaword	0x13f
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.string	"MAIN_S_HW_VER"
	.byte	0xb
	.byte	0x7d
	.uaword	0x2188
	.uleb128 0x19
	.byte	0x1
	.string	"Safety_IOM_Cfg"
	.byte	0x1
	.byte	0x7e
	.byte	0x1
	.uaword	.LFB203
	.uaword	.LFE203
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0x19
	.byte	0x1
	.string	"Safety_Cfg"
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.uaword	.LFB202
	.uaword	.LFE202
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.string	"Safety_Check10ms"
	.byte	0x1
	.byte	0xa7
	.byte	0x1
	.uaword	.LFB204
	.uaword	.LFE204
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x2283
	.uleb128 0x1b
	.string	"AlmGrp"
	.byte	0x1
	.byte	0xa9
	.uaword	0x2283
	.byte	0x2
	.uleb128 0x1b
	.string	"AlmPos"
	.byte	0x1
	.byte	0xaa
	.uaword	0x2283
	.byte	0x1a
	.byte	0
	.uleb128 0x1c
	.uaword	0x15c
	.uleb128 0x19
	.byte	0x1
	.string	"Safety_Power_SM1_HW_ExtVREG_MON"
	.byte	0x1
	.byte	0xed
	.byte	0x1
	.uaword	.LFB205
	.uaword	.LFE205
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0x1d
	.byte	0x1
	.string	"Safety_Power_SM1_HW_ExtV13_MON"
	.byte	0x1
	.uahalf	0x100
	.byte	0x1
	.uaword	.LFB206
	.uaword	.LFE206
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0x1d
	.byte	0x1
	.string	"Safety_Power_SM1_HW_BANDGAP_MON"
	.byte	0x1
	.uahalf	0x113
	.byte	0x1
	.uaword	.LFB207
	.uaword	.LFE207
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0x1d
	.byte	0x1
	.string	"Safety_Power_SM1_AoU_EVR_CFGMON"
	.byte	0x1
	.uahalf	0x11c
	.byte	0x1
	.uaword	.LFB208
	.uaword	.LFE208
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0x1d
	.byte	0x1
	.string	"Safety_Clock_SM1_HW_SystemPLL_CLKMON"
	.byte	0x1
	.uahalf	0x139
	.byte	0x1
	.uaword	.LFB209
	.uaword	.LFE209
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0x1d
	.byte	0x1
	.string	"Safety_Clock_SM1_HW_SRI_CLKMON"
	.byte	0x1
	.uahalf	0x147
	.byte	0x1
	.uaword	.LFB210
	.uaword	.LFE210
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0x1d
	.byte	0x1
	.string	"Safety_Clock_SM1_HW_SPB_CLKMON"
	.byte	0x1
	.uahalf	0x155
	.byte	0x1
	.uaword	.LFB211
	.uaword	.LFE211
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0x1d
	.byte	0x1
	.string	"Safety_Clock_SM1_HW_GTM_CLKMON"
	.byte	0x1
	.uahalf	0x163
	.byte	0x1
	.uaword	.LFB212
	.uaword	.LFE212
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0x1d
	.byte	0x1
	.string	"Safety_CPU_SM1_HW_CPU_DATA_MPU"
	.byte	0x1
	.uahalf	0x176
	.byte	0x1
	.uaword	.LFB213
	.uaword	.LFE213
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0x1d
	.byte	0x1
	.string	"Safety_SRAM_SM1_HW_SRAM_ECC"
	.byte	0x1
	.uahalf	0x187
	.byte	0x1
	.uaword	.LFB214
	.uaword	.LFE214
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0x1d
	.byte	0x1
	.string	"Safety_PFLASH_SM1_HW_PFLASH_Monitor"
	.byte	0x1
	.uahalf	0x198
	.byte	0x1
	.uaword	.LFB215
	.uaword	.LFE215
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0x1d
	.byte	0x1
	.string	"Safety_SPB_SM2_AoU_SBCU_InitCheck"
	.byte	0x1
	.uahalf	0x1b1
	.byte	0x1
	.uaword	.LFB216
	.uaword	.LFE216
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0x1d
	.byte	0x1
	.string	"Safety_SMU_SM2_AoU_SMU_InitCheck"
	.byte	0x1
	.uahalf	0x1c5
	.byte	0x1
	.uaword	.LFB217
	.uaword	.LFE217
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0x1d
	.byte	0x1
	.string	"Safety_WDT_SM2_AoU_WDT_InitCheck"
	.byte	0x1
	.uahalf	0x1d1
	.byte	0x1
	.uaword	.LFB218
	.uaword	.LFE218
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0x1d
	.byte	0x1
	.string	"Safety_WDT_SM2_AoU_RESET_SSCheck"
	.byte	0x1
	.uahalf	0x1da
	.byte	0x1
	.uaword	.LFB219
	.uaword	.LFE219
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0x1e
	.string	"Safety_CfgError"
	.byte	0x1
	.byte	0x31
	.uaword	0x1f7d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Safety_CfgError
	.uleb128 0x1f
	.string	"PSWReg_Rd0"
	.byte	0xc
	.byte	0x45
	.uaword	0x12ee
	.byte	0x1
	.byte	0x1
	.uleb128 0x1f
	.string	"PSWReg_Rd1"
	.byte	0xc
	.byte	0x46
	.uaword	0x12ee
	.byte	0x1
	.byte	0x1
	.uleb128 0x1f
	.string	"PSWReg_Rd2"
	.byte	0xc
	.byte	0x47
	.uaword	0x12ee
	.byte	0x1
	.byte	0x1
	.uleb128 0x1f
	.string	"PSWReg_Rd3"
	.byte	0xc
	.byte	0x48
	.uaword	0x12ee
	.byte	0x1
	.byte	0x1
	.uleb128 0x1f
	.string	"Main_HwVer"
	.byte	0xb
	.byte	0x89
	.uaword	0x21f0
	.byte	0x1
	.byte	0x1
	.uleb128 0x1e
	.string	"SafetyDebug"
	.byte	0x1
	.byte	0x2b
	.uaword	0x1f88
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	SafetyDebug
	.uleb128 0x1e
	.string	"ClearAlarm"
	.byte	0x1
	.byte	0x2c
	.uaword	0x166
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	ClearAlarm
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
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.byte	0
	.section .debug_aranges,"",@progbits
	.uaword	0xa4
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB203
	.uaword	.LFE203-.LFB203
	.uaword	.LFB202
	.uaword	.LFE202-.LFB202
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
	.uaword	0
	.uaword	0
	.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB203
	.uaword	.LFE203
	.uaword	.LFB202
	.uaword	.LFE202
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
	.uaword	0
	.uaword	0
	.section .debug_line,"",@progbits
.Ldebug_line0:
	.section .debug_str,"",@progbits
.LASF5:
	.string	"reserved_0"
.LASF1:
	.string	"reserved_2"
.LASF8:
	.string	"reserved_4"
.LASF2:
	.string	"reserved_6"
.LASF11:
	.string	"SAFETY_S_ERROR"
.LASF4:
	.string	"reserved_8"
.LASF6:
	.string	"reserved_15"
.LASF3:
	.string	"reserved_18"
.LASF7:
	.string	"reserved_23"
.LASF0:
	.string	"reserved_24"
.LASF10:
	.string	"SAFETY_S_ERROR_BIT"
.LASF9:
	.string	"reserved_16"
	.extern	IfxScuWdt_setSafetyEndinit,STT_FUNC,0
	.extern	IfxScuWdt_clearSafetyEndinit,STT_FUNC,0
	.extern	IfxScuWdt_getSafetyWatchdogPassword,STT_FUNC,0
	.extern	iohw_Wrapper_ClearAlarmStatus,STT_FUNC,0
	.extern	Main_HwVer,STT_OBJECT,32
	.extern	IfxScuWdt_setCpuEndinit,STT_FUNC,0
	.extern	IfxScuWdt_clearCpuEndinit,STT_FUNC,0
	.extern	IfxScuWdt_getCpuWatchdogPassword,STT_FUNC,0
	.ident	"GCC: (HighTec Release v4.6.3.0) 4.6.3 build on 2013-05-17"
