	.file	"Comserv.c"
.section .text,"ax",@progbits
.Ltext0:
	.section .text.MPU_ASIL_CODE,"ax",@progbits
	.align 3
	.type	ConvertTempToCan, @function
ConvertTempToCan:
.LFB219:
	.file 1 "../30_Bsw/ComStack/ComServ/Comserv.c"
	.loc 1 839 0
.LVL0:
	.loc 1 842 0
	mov	%d15, 10
	div	%e4, %d4, %d15
.LVL1:
	addi	%d4, %d4, 60
	.loc 1 843 0
	extr	%d4, %d4, 0, 16
	j	Dsp_SatS16U8
.LFE219:
	.size	ConvertTempToCan, .-ConvertTempToCan
	.section .text.MPU_QM_CODE,"ax",@progbits
	.align 3
	.global	ComServ_Init
	.type	ComServ_Init, @function
ComServ_Init:
.LFB203:
	.loc 1 129 0
	.loc 1 130 0
	movh.a	%a12, hi:ComServ_BuildInfo
	lea	%a15, [%a12] lo:ComServ_BuildInfo
	mov.aa	%a4, %a15
	call	Main_GetBuildInfo
.LBB64:
.LBB65:
	.loc 1 143 0
	ld.hu	%d2, [%a15] 2
	.loc 1 144 0
	ld.hu	%d15, [%a15] 4
	.loc 1 143 0
	sh	%d2, %d2, 22
	.loc 1 144 0
	sh	%d15, %d15, 17
	.loc 1 142 0
	or	%d15, %d2
	.loc 1 147 0
	ld.hu	%d2, [%a15] 10
	.loc 1 141 0
	movh.a	%a3, hi:ComServ_Status
	.loc 1 143 0
	or	%d15, %d2
	.loc 1 145 0
	ld.hu	%d2, [%a15] 6
	.loc 1 141 0
	lea	%a2, [%a3] lo:ComServ_Status
	.loc 1 145 0
	sh	%d2, %d2, 12
	.loc 1 144 0
	or	%d15, %d2
	.loc 1 146 0
	ld.hu	%d2, [%a15] 8
	sh	%d2, 6
	.loc 1 145 0
	or	%d15, %d2
	.loc 1 142 0
	ld.h	%d2, [%a12] lo:ComServ_BuildInfo
	addi	%d2, %d2, -2000
	sh	%d2, %d2, 26
	.loc 1 146 0
	or	%d15, %d2
	.loc 1 141 0
	st.w	[%a2] 8, %d15
	.loc 1 148 0
	movh	%d15, 16640
	addi	%d15, %d15, 286
	st.w	[%a2] 4, %d15
	.loc 1 151 0
	movh	%d15, 13
	addi	%d15, %d15, -18558
	st.w	[%a3] lo:ComServ_Status, %d15
.LBE65:
.LBE64:
	.loc 1 132 0
	ret
.LFE203:
	.size	ComServ_Init, .-ComServ_Init
	.section .text.MPU_ASIL_CODE
	.align 3
	.global	ComServ_EmergencyMode
	.type	ComServ_EmergencyMode, @function
ComServ_EmergencyMode:
.LFB205:
	.loc 1 162 0
	.loc 1 163 0
	movh.a	%a15, hi:ComServ_Status
	lea	%a15, [%a15] lo:ComServ_Status
	ld.hu	%d15, [%a15] 14
	jz	%d15, .L4
	.loc 1 165 0
	ld.h	%d15, [%a15] 36
	jnz	%d15, .L5
	.loc 1 167 0
	ld.hu	%d2, [%a15] 16
	mov	%d3, 15000
	jge.u	%d2, %d3, .L6
	.loc 1 169 0
	mov	%d15, 1
	.loc 1 172 0
	add	%d2, 1
	.loc 1 169 0
	st.h	[%a15] 22, %d15
	.loc 1 170 0
	mov	%d15, 1400
	.loc 1 172 0
	st.h	[%a15] 16, %d2
	.loc 1 170 0
	st.h	[%a15] 30, %d15
	.loc 1 171 0
	mov	%d15, 3200
	st.h	[%a15] 32, %d15
	ret
.L4:
	.loc 1 189 0
	st.h	[%a15] 22, %d15
	.loc 1 190 0
	st.h	[%a15] 16, %d15
	ret
.L5:
	.loc 1 182 0
	mov	%d15, 0
	st.h	[%a15] 24, %d15
	.loc 1 183 0
	st.h	[%a15] 22, %d15
	.loc 1 184 0
	st.h	[%a15] 16, %d15
	ret
.L6:
	.loc 1 176 0
	st.h	[%a15] 24, %d15
	.loc 1 177 0
	st.h	[%a15] 22, %d15
	ret
.LFE205:
	.size	ComServ_EmergencyMode, .-ComServ_EmergencyMode
	.align 3
	.global	ComServ_AutoDisable
	.type	ComServ_AutoDisable, @function
ComServ_AutoDisable:
.LFB206:
	.loc 1 195 0
.LVL2:
	.loc 1 196 0
	ld.hu	%d15, [%a4]0
	movh.a	%a15, hi:ComServ_Status
	lea	%a15, [%a15] lo:ComServ_Status
	jz	%d15, .L10
	.loc 1 196 0 is_stmt 0 discriminator 1
	ld.h	%d2, [%a15] 24
	jz	%d2, .L19
.L10:
	.loc 1 200 0 is_stmt 1
	ld.h	%d2, [%a15] 36
	ld.hu	%d3, [%a4] 12
	jeq	%d3, %d2, .L20
.L12:
	.loc 1 203 0
	mov	%d3, 1
	movh.a	%a2, hi:OpMode_flag
	st.h	[%a2] lo:OpMode_flag, %d3
	.loc 1 204 0
	jnz	%d15, .L21
	.loc 1 211 0
	ld.h	%d15, [%a15] 38
	st.h	[%a4] 14, %d15
	.loc 1 213 0
	mov	%d15, 0
	.loc 1 210 0
	st.h	[%a4] 12, %d2
	.loc 1 213 0
	st.h	[%a15] 12, %d15
	ret
.L21:
	.loc 1 206 0
	mov	%d15, 0
	st.h	[%a4]0, %d15
	.loc 1 213 0
	mov	%d15, 0
	st.h	[%a15] 12, %d15
	ret
.L20:
	.loc 1 201 0 discriminator 1
	ld.hu	%d4, [%a4] 14
	ld.h	%d3, [%a15] 38
	.loc 1 200 0 discriminator 1
	jne	%d4, %d3, .L12
	.loc 1 215 0
	ld.hu	%d2, [%a15] 12
	jlt.u	%d2, 4, .L22
	.loc 1 219 0
	jnz	%d15, .L17
	.loc 1 219 0 is_stmt 0 discriminator 1
	ld.h	%d2, [%a15] 24
	jnz	%d2, .L23
.L17:
	.loc 1 226 0 is_stmt 1
	mov	%d15, 0
	movh.a	%a15, hi:OpMode_flag
	st.h	[%a15] lo:OpMode_flag, %d15
	ret
.L19:
	.loc 1 198 0
	st.h	[%a4]0, %d2
	ret
.L22:
	.loc 1 217 0
	add	%d2, 1
	st.h	[%a15] 12, %d2
	ret
.L23:
	.loc 1 221 0
	st.h	[%a4]0, %d2
	.loc 1 222 0
	st.h	[%a15] 12, %d15
	ret
.LFE206:
	.size	ComServ_AutoDisable, .-ComServ_AutoDisable
	.align 3
	.global	HsfbApp_GetRx10ms
	.type	HsfbApp_GetRx10ms, @function
HsfbApp_GetRx10ms:
.LFB207:
	.loc 1 231 0
.LVL3:
	.loc 1 232 0
	movh.a	%a15, hi:ComServ_Status
	lea	%a15, [%a15] lo:ComServ_Status
	ld.h	%d15, [%a15] 26
	st.h	[%a4] 2, %d15
	.loc 1 233 0
	ld.h	%d15, [%a15] 28
	st.h	[%a4] 4, %d15
	.loc 1 234 0
	ld.h	%d15, [%a15] 32
	st.h	[%a4] 6, %d15
	.loc 1 235 0
	ld.h	%d15, [%a15] 30
	st.h	[%a4] 8, %d15
	.loc 1 236 0
	ld.h	%d15, [%a15] 34
	st.h	[%a4] 10, %d15
	.loc 1 237 0
	ld.h	%d15, [%a15] 18
	st.h	[%a4] 16, %d15
	.loc 1 238 0
	ld.h	%d15, [%a15] 22
	st.h	[%a4] 18, %d15
	.loc 1 240 0
	movh.a	%a13, hi:ComServ_DevRx
	ld.h	%d15, [%a13] lo:ComServ_DevRx
	.loc 1 231 0
	mov.aa	%a12, %a4
	.loc 1 240 0
	jz.t	%d15, 14, .L25
	.loc 1 242 0
	ld.h	%d15, [%a15] 24
	st.h	[%a4]0, %d15
	.loc 1 243 0
	ld.h	%d15, [%a15] 36
	st.h	[%a4] 12, %d15
	.loc 1 244 0
	ld.h	%d15, [%a15] 38
	st.h	[%a4] 14, %d15
.L25:
	.loc 1 246 0
	mov.aa	%a4, %a12
.LVL4:
	call	ComServ_AutoDisable
	.loc 1 248 0
	lea	%a2, [%a13] lo:ComServ_DevRx
	ld.h	%d15, [%a15] 42
	st.b	[%a2] 5, %d15
	.loc 1 249 0
	ld.w	%d3, [%a13] lo:ComServ_DevRx
	ld.h	%d15, [%a15] 44
	.loc 1 250 0
	ld.h	%d2, [%a15] 46
	insert	%d15, %d3, %d15, 28, 2
	.loc 1 252 0
	ld.bu	%d3, [%a15] 50
	.loc 1 251 0
	insert	%d15, %d15, %d2, 14, 2
	ld.h	%d2, [%a15] 48
	.loc 1 253 0
	ld.h	%d5, [%a15] 52
	.loc 1 251 0
	insert	%d15, %d15, %d2, 0, 14
	.loc 1 252 0
	ld.w	%d2, [%a2] 4
	sh	%d4, %d3, -2
	andn	%d2, %d2, ~(-64)
	.loc 1 253 0
	or	%d2, %d4
	.loc 1 254 0
	ld.h	%d4, [%a15] 54
	ins.t	%d2, %d2,6, %d5,0
	ins.t	%d2, %d2,7, %d4,0
	.loc 1 255 0
	insert	%d15, %d15, %d3, 30, 32-30
	.loc 1 254 0
	st.w	[%a2] 4, %d2
	.loc 1 255 0
	ld.h	%d2, [%a15] 56
	insert	%d15, %d15, %d2, 16, 12
	st.w	[%a13] lo:ComServ_DevRx, %d15
	.loc 1 257 0
	extr.u	%d15, %d15, 14, 1
	st.h	[%a12] 22, %d15
	.loc 1 258 0
	ld.w	%d15, [%a13] lo:ComServ_DevRx
	extr.u	%d15, %d15, 15, 1
	st.h	[%a12] 20, %d15
	.loc 1 259 0
	ld.w	%d15, [%a13] lo:ComServ_DevRx
	and	%d15, %d15, 1
	st.h	[%a12] 24, %d15
	.loc 1 260 0
	ret
.LFE207:
	.size	HsfbApp_GetRx10ms, .-HsfbApp_GetRx10ms
	.align 3
	.global	HsfbApp_SetTx10ms
	.type	HsfbApp_SetTx10ms, @function
HsfbApp_SetTx10ms:
.LFB208:
	.loc 1 266 0
.LVL5:
	.loc 1 267 0
	ld.h	%d10, [%a4] 36
.LVL6:
	.loc 1 268 0
	ld.h	%d9, [%a4] 44
	.loc 1 274 0
	extr.u	%d2, %d10, 0, 16
	.loc 1 269 0
	ld.h	%d8, [%a4] 28
	.loc 1 277 0
	addi	%d3, %d2, 19
	.loc 1 270 0
	ld.h	%d15, [%a4] 76
	.loc 1 271 0
	ld.h	%d11, [%a4] 84
	.loc 1 277 0
	extr.u	%d3, %d3, 0, 16
	.loc 1 268 0
	abs	%d9, %d9
	.loc 1 269 0
	abs	%d8, %d8
	.loc 1 270 0
	abs	%d15, %d15
	.loc 1 271 0
	abs	%d11, %d11
	.loc 1 277 0
	lt.u	%d3, %d3, 39
	.loc 1 266 0
	mov.aa	%a15, %a4
	.loc 1 268 0
	extr	%d9, %d9, 0, 16
.LVL7:
	.loc 1 269 0
	extr	%d8, %d8, 0, 16
.LVL8:
	.loc 1 270 0
	extr	%d15, %d15, 0, 16
.LVL9:
	.loc 1 271 0
	extr	%d11, %d11, 0, 16
.LVL10:
	.loc 1 277 0
	mov	%d4, 23
	mov	%d5, 182
	jnz	%d3, .L27
	.loc 1 274 0
	addi	%d4, %d2, 6070
	.loc 1 277 0
	extr	%d4, %d4, 0, 16
	and	%d5, %d4, 255
	extr.u	%d4, %d4, 8, 6
.L27:
.LVL11:
	.loc 1 285 0
	movh.a	%a13, hi:DCDC_Measure
	lea	%a13, [%a13] lo:DCDC_Measure
	ld.w	%d3, [%a13] 16
	mov.u	%d2, 65472
	and	%d2, %d3
	or	%d2, %d4
	.loc 1 287 0
	ld.w	%d4, [%a13] 24
	extr.u	%d3, %d9, 8, 5
	.loc 1 285 0
	st.w	[%a13] 16, %d2
	.loc 1 287 0
	and	%d2, %d9, 255
	.loc 1 288 0
	movh.a	%a14, hi:DCDC_Measure4
	lea	%a14, [%a14] lo:DCDC_Measure4
	.loc 1 287 0
	st.w	[%a13] 20, %d2
	mov.u	%d2, 65504
	and	%d2, %d4
	or	%d2, %d3
	.loc 1 288 0
	ld.w	%d4, [%a14] 16
	extr.u	%d3, %d8, 8, 6
	.loc 1 287 0
	st.w	[%a13] 24, %d2
	.loc 1 288 0
	and	%d2, %d8, 255
	.loc 1 289 0
	movh.a	%a12, hi:DCDC_Measure2
	lea	%a12, [%a12] lo:DCDC_Measure2
	.loc 1 288 0
	st.w	[%a14] 12, %d2
	mov.u	%d2, 65472
	and	%d2, %d4
	or	%d2, %d3
	.loc 1 289 0
	mov	%d4, %d15
	.loc 1 285 0
	st.w	[%a13] 12, %d5
	.loc 1 288 0
	st.w	[%a14] 16, %d2
	.loc 1 289 0
	call	Dsp_SatS16U12
.LVL12:
	ld.w	%d4, [%a12] 16
	sh	%d2, 5
	mov.u	%d3, 65311
	and	%d3, %d4
	and	%d2, %d2, 255
	or	%d2, %d3
	mov	%d4, %d15
	st.w	[%a12] 16, %d2
	call	Dsp_SatS16U12
	extr.u	%d2, %d2, 3, 8
	mov	%d4, %d15
	mov.u	%d15, 65532
.LVL13:
	st.w	[%a12] 20, %d2
	call	Dsp_SatS16U12
.LVL14:
	ld.w	%d3, [%a12] 24
	extr.u	%d2, %d2, 11, 2
	and	%d15, %d3
	or	%d2, %d15
	.loc 1 290 0
	mov	%d4, %d11
	mov.u	%d15, 65504
	.loc 1 289 0
	st.w	[%a12] 24, %d2
	.loc 1 290 0
	call	Dsp_SatS16U12
	and	%d2, %d2, 255
	mov	%d4, %d11
	.loc 1 293 0
	movh	%d11, hi:DCDC_Measure3
.LVL15:
	.loc 1 290 0
	st.w	[%a12] 12, %d2
	call	Dsp_SatS16U12
.LVL16:
	ld.w	%d3, [%a12] 16
	extr.u	%d2, %d2, 8, 5
	and	%d15, %d3
	or	%d2, %d15
	.loc 1 291 0
	ld.w	%d3, [%a12] 24
	mov.u	%d15, 65523
	.loc 1 290 0
	st.w	[%a12] 16, %d2
	.loc 1 291 0
	lt	%d2, %d10, 1
	sh	%d2, 2
	and	%d15, %d3
	or	%d15, %d2
	.loc 1 293 0
	ld.h	%d2, [%a15] 52
	mov.u	%d3, 65504
	and	%d4, %d2, 255
	.loc 1 291 0
	st.w	[%a12] 24, %d15
	.loc 1 293 0
	addi	%d15, %d11, lo:DCDC_Measure3
	mov.a	%a2, %d15
	extr.u	%d2, %d2, 8, 5
	st.w	[%a2] 20, %d4
	ld.w	%d4, [%a2] 24
	and	%d3, %d4
	or	%d3, %d2
	.loc 1 295 0
	ld.hu	%d2, [%a15] 4
	.loc 1 293 0
	st.w	[%a2] 24, %d3
	.loc 1 295 0
	jeq	%d2, 1, .L90
.L28:
	.loc 1 301 0
	ld.h	%d2, [%a15] 20
	ld.w	%d5, [%a12] 4
	sh	%d4, %d2, 4
	mov.u	%d3, 65295
	and	%d4, %d4, 255
	and	%d3, %d5
	extr.u	%d2, %d2, 4, 8
	or	%d3, %d4
	st.w	[%a12] 8, %d2
	st.w	[%a12] 4, %d3
.LVL17:
.L59:
	.loc 1 304 0
	ld.h	%d4, [%a15] 60
	mov.u	%d8, 65295
	call	Dsp_SatS16U12
	ld.w	%d3, [%a12] 24
	sh	%d2, 4
	and	%d3, %d8
	and	%d2, %d2, 255
	or	%d2, %d3
	ld.h	%d4, [%a15] 60
	.loc 1 305 0
	mov	%d9, 10
	.loc 1 304 0
	st.w	[%a12] 24, %d2
	call	Dsp_SatS16U12
	extr.u	%d2, %d2, 4, 8
	st.w	[%a12] 28, %d2
	.loc 1 305 0
	ld.h	%d2, [%a15] 68
	div	%e2, %d2, %d9
	extr	%d4, %d2, 0, 16
	call	Dsp_SatS16U12
	ld.h	%d4, [%a15] 68
	ld.w	%d3, [%a13] 4
	div	%e4, %d4, %d9
	sh	%d2, 4
	and	%d3, %d8
	and	%d2, %d2, 255
	or	%d2, %d3
	extr	%d4, %d4, 0, 16
	st.w	[%a13] 4, %d2
	call	Dsp_SatS16U12
	extr.u	%d2, %d2, 4, 8
	.loc 1 308 0
	ld.h	%d4, [%a15] 152
	.loc 1 305 0
	st.w	[%a13] 8, %d2
	.loc 1 308 0
	call	ConvertTempToCan
	and	%d2, %d2, 255
	mov.a	%a2, %d11
	.loc 1 309 0
	ld.h	%d4, [%a15] 160
	.loc 1 308 0
	st.w	[%a2] lo:DCDC_Measure3, %d2
	.loc 1 309 0
	call	ConvertTempToCan
	and	%d2, %d2, 255
	mov.a	%a2, %d15
	.loc 1 310 0
	ld.h	%d4, [%a15] 168
	.loc 1 309 0
	st.w	[%a2] 4, %d2
	.loc 1 310 0
	call	ConvertTempToCan
	and	%d2, %d2, 255
	mov.a	%a2, %d15
	.loc 1 311 0
	ld.h	%d4, [%a15] 176
	.loc 1 310 0
	st.w	[%a2] 8, %d2
	.loc 1 311 0
	call	ConvertTempToCan
	and	%d2, %d2, 255
	.loc 1 312 0
	ld.h	%d4, [%a15] 184
	.loc 1 311 0
	st.w	[%a14] 20, %d2
	.loc 1 312 0
	call	ConvertTempToCan
	and	%d2, %d2, 255
	.loc 1 313 0
	ld.h	%d4, [%a15] 192
	.loc 1 312 0
	st.w	[%a14] 24, %d2
	.loc 1 313 0
	call	ConvertTempToCan
	ld.w	%d3, [%a14] 4
	sh	%d2, 4
	and	%d8, %d3
	and	%d2, %d2, 255
	or	%d8, %d2
	ld.h	%d4, [%a15] 192
	st.w	[%a14] 4, %d8
	call	ConvertTempToCan
	ld.w	%d4, [%a14] 8
	extr.u	%d2, %d2, 4, 7
	mov.u	%d3, 65408
	and	%d3, %d4
	or	%d2, %d3
	.loc 1 315 0
	movh.a	%a3, hi:DCDC_Status_ErrCode
	lea	%a2, [%a3] lo:DCDC_Status_ErrCode
	.loc 1 313 0
	st.w	[%a14] 8, %d2
	.loc 1 315 0
	ld.hu	%d2, [%a15] 132
	.loc 1 328 0
	movh.a	%a4, hi:Pma_AbortData
	.loc 1 315 0
	and	%d3, %d2, 255
	sh	%d2, -8
	.loc 1 328 0
	lea	%a4, [%a4] lo:Pma_AbortData
	.loc 1 315 0
	st.w	[%a3] lo:DCDC_Status_ErrCode, %d3
	st.w	[%a2] 4, %d2
	.loc 1 316 0
	ld.hu	%d2, [%a15] 134
	.loc 1 328 0
	movh.a	%a5, hi:LvDc_Pma_ErrSrc
	.loc 1 316 0
	and	%d3, %d2, 255
	sh	%d2, -8
	.loc 1 328 0
	lea	%a3, [%a5] lo:LvDc_Pma_ErrSrc
	.loc 1 316 0
	st.w	[%a2] 8, %d3
	st.w	[%a2] 12, %d2
	.loc 1 317 0
	ld.hu	%d2, [%a15] 138
	and	%d3, %d2, 255
	sh	%d2, -8
	st.w	[%a2] 24, %d3
	st.w	[%a2] 28, %d2
	.loc 1 328 0
	ld.hu	%d2, [%a4] 4
	sh	%d3, %d2, -8
	.loc 1 329 0
	and	%d2, %d2, 255
	.loc 1 328 0
	st.w	[%a5] lo:LvDc_Pma_ErrSrc, %d3
	.loc 1 329 0
	st.w	[%a3] 20, %d2
	.loc 1 330 0
	ld.bu	%d2, [%a4] 6
	st.w	[%a3] 4, %d2
	.loc 1 331 0
	ld.bu	%d2, [%a4] 24
	st.w	[%a3] 28, %d2
	.loc 1 332 0
	ld.bu	%d2, [%a4] 44
	st.w	[%a3] 8, %d2
	.loc 1 333 0
	ld.bu	%d2, [%a4] 140
	st.w	[%a3] 12, %d2
	.loc 1 334 0
	ld.bu	%d2, [%a4] 136
	st.w	[%a3] 16, %d2
	.loc 1 335 0
	ld.bu	%d2, [%a4] 8
	st.w	[%a3] 24, %d2
	.loc 1 338 0
	movh.a	%a3, hi:Pfm_Capture
	lea	%a3, [%a3] lo:Pfm_Capture
	ld.hu	%d2, [%a3] 2
	movh.a	%a5, hi:DcDc_Scope0
	and	%d3, %d2, 255
	lea	%a4, [%a5] lo:DcDc_Scope0
	ld.w	%d4, [%a4] 12
	st.w	[%a4] 8, %d3
	extr.u	%d2, %d2, 8, 4
	mov.u	%d3, 65520
	and	%d3, %d4
	or	%d2, %d3
	.loc 1 340 0
	mov	%d4, 0
	.loc 1 338 0
	st.w	[%a4] 12, %d2
	.loc 1 339 0
	ld.hu	%d2, [%a3] 4
	and	%d3, %d2, 255
	sh	%d2, -8
	st.w	[%a5] lo:DcDc_Scope0, %d3
	.loc 1 340 0
	movh.a	%a5, hi:DcDc_Scope1
	.loc 1 339 0
	st.w	[%a4] 4, %d2
	.loc 1 340 0
	lea	%a4, [%a5] lo:DcDc_Scope1
	ld.bu	%d2, [%a3] 6
	st.w	[%a4] 8, %d2
	.loc 1 341 0
	ld.w	%d3, [%a3] 8
	movh	%d2, 20972
	addi	%d2, %d2, -31457
	mul.u	%e2, %d3, %d2
	.loc 1 340 0
	st.w	[%a4] 12, %d4
	.loc 1 342 0
	st.w	[%a4] 20, %d4
	.loc 1 341 0
	extr.u	%d2, %d3, 5, 8
	st.w	[%a5] lo:DcDc_Scope1, %d2
	extr.u	%d2, %d3, 13, 8
	st.w	[%a4] 4, %d2
	.loc 1 342 0
	ld.bu	%d2, [%a3] 12
	.loc 1 346 0
	movh.a	%a3, hi:Main_DebugErrCode
	.loc 1 342 0
	st.w	[%a4] 16, %d2
	.loc 1 346 0
	ld.hu	%d2, [%a3] lo:Main_DebugErrCode
	jnz	%d2, .L89
	.loc 1 352 0
	ld.hu	%d2, [%a15] 136
.L89:
	and	%d3, %d2, 255
	sh	%d2, -8
	.loc 1 355 0
	movh.a	%a4, hi:DCDC_Status
	.loc 1 352 0
	st.w	[%a2] 16, %d3
	st.w	[%a2] 20, %d2
	.loc 1 355 0
	ld.hu	%d3, [%a15] 4
	lea	%a2, [%a4] lo:DCDC_Status
	ld.w	%d4, [%a2] 12
	mov.u	%d2, 65523
	sh	%d3, 2
	.loc 1 356 0
	ld.hu	%d0, [%a15] 6
	.loc 1 355 0
	and	%d4, %d2
	and	%d3, %d3, 12
	.loc 1 357 0
	mov.a	%a3, %d15
	.loc 1 355 0
	or	%d3, %d4
	.loc 1 356 0
	ld.w	%d4, [%a2] 4
	.loc 1 357 0
	ld.hu	%d5, [%a15] 2
	.loc 1 356 0
	sh	%d0, 2
	.loc 1 357 0
	ld.w	%d6, [%a3] 16
	.loc 1 356 0
	and	%d4, %d2
	and	%d0, %d0, 12
	or	%d0, %d4
	.loc 1 357 0
	sh	%d5, 1
	mov.u	%d4, 65281
	.loc 1 358 0
	ld.hu	%d15, [%a15]0
	.loc 1 357 0
	and	%d4, %d6
	and	%d5, %d5, 255
	or	%d5, %d4
	.loc 1 358 0
	mov.u	%d4, 65295
	and	%d3, %d4
	sh	%d4, %d15, 4
	and	%d4, %d4, 255
	or	%d3, %d4
	.loc 1 357 0
	st.w	[%a3] 16, %d5
	.loc 1 360 0
	movh.a	%a3, hi:LVDC_SafetyMeasure
	.loc 1 358 0
	st.w	[%a2] 12, %d3
	ld.w	%d3, [%a2] 16
	.loc 1 360 0
	lea	%a3, [%a3] lo:LVDC_SafetyMeasure
	.loc 1 358 0
	extr.u	%d15, %d15, 4, 4
	mov.u	%d1, 65520
	and	%d1, %d3
.LBB66:
.LBB67:
	.loc 1 792 0
	ld.bu	%d12, [%a15] 200
.LBE67:
.LBE66:
	.loc 1 360 0
	ld.w	%d3, [%a3] 8
	mov.u	%d4, 65343
	.loc 1 358 0
	or	%d1, %d15
.LBB70:
.LBB68:
	.loc 1 792 0
	mov	%d15, 64
.LBE68:
.LBE70:
	.loc 1 360 0
	and	%d3, %d4
.LBB71:
.LBB69:
	.loc 1 792 0
	seln	%d12, %d12, %d15, 128
.LBE69:
.LBE71:
	.loc 1 360 0
	or	%d12, %d3
.LBB72:
.LBB73:
	.loc 1 792 0
	ld.bu	%d9, [%a15] 201
.LBE73:
.LBE72:
	.loc 1 361 0
	ld.w	%d3, [%a3] 12
.LBB76:
.LBB74:
	.loc 1 792 0
	mov	%d6, 1
.LBE74:
.LBE76:
	.loc 1 361 0
	mov.u	%d8, 65532
.LBB77:
.LBB75:
	.loc 1 792 0
	seln	%d9, %d9, %d6, 2
.LBE75:
.LBE77:
	.loc 1 361 0
	and	%d8, %d3
	or	%d8, %d9
.LBB78:
.LBB79:
	.loc 1 792 0
	ld.bu	%d9, [%a15] 202
	mov	%d3, 4
	seln	%d9, %d9, %d3, 8
.LBE79:
.LBE78:
	.loc 1 362 0
	and	%d8, %d2
	or	%d8, %d9
.LBB80:
.LBB81:
	.loc 1 792 0
	ld.bu	%d9, [%a15] 203
	mov	%d7, 16
.LBE81:
.LBE80:
	.loc 1 363 0
	mov.u	%d5, 65487
	and	%d8, %d5
.LBB83:
.LBB82:
	.loc 1 792 0
	seln	%d9, %d9, %d7, 32
.LBE82:
.LBE83:
	.loc 1 363 0
	or	%d9, %d8
	.loc 1 365 0
	ld.w	%d10, [%a3] 4
.LBB84:
.LBB85:
	.loc 1 792 0
	ld.bu	%d8, [%a15] 204
.LBE85:
.LBE84:
	.loc 1 365 0
	and	%d10, %d5
.LBB87:
.LBB86:
	.loc 1 792 0
	seln	%d8, %d8, %d7, 32
.LBE86:
.LBE87:
.LBB88:
.LBB89:
	ld.bu	%d11, [%a15] 206
.LBE89:
.LBE88:
	.loc 1 365 0
	or	%d8, %d10
	.loc 1 367 0
	mov.u	%d10, 65532
.LBB91:
.LBB90:
	.loc 1 792 0
	seln	%d11, %d11, %d6, 2
.LBE90:
.LBE91:
	.loc 1 367 0
	and	%d10, %d12
	or	%d10, %d11
.LBB92:
.LBB93:
	.loc 1 792 0
	ld.bu	%d11, [%a15] 207
.LBE93:
.LBE92:
	.loc 1 368 0
	and	%d10, %d2
.LBB95:
.LBB94:
	.loc 1 792 0
	seln	%d11, %d11, %d3, 8
.LBE94:
.LBE95:
	.loc 1 368 0
	or	%d10, %d10, 48
	.loc 1 369 0
	or	%d10, %d11
	.loc 1 371 0
	ld.w	%d12, [%a3] 20
.LBB96:
.LBB97:
	.loc 1 792 0
	ld.bu	%d11, [%a15] 208
.LBE97:
.LBE96:
	.loc 1 369 0
	st.w	[%a3] 8, %d10
	.loc 1 371 0
	mov.u	%d10, 65532
.LBB99:
.LBB98:
	.loc 1 792 0
	seln	%d11, %d11, %d6, 2
.LBE98:
.LBE99:
	.loc 1 371 0
	and	%d10, %d12
	or	%d10, %d11
.LBB100:
.LBB101:
	.loc 1 792 0
	ld.bu	%d11, [%a15] 209
.LBE101:
.LBE100:
	.loc 1 372 0
	and	%d10, %d2
.LBB103:
.LBB102:
	.loc 1 792 0
	seln	%d11, %d11, %d3, 8
.LBE102:
.LBE103:
	.loc 1 372 0
	or	%d10, %d11
.LBB104:
.LBB105:
	.loc 1 792 0
	ld.bu	%d11, [%a15] 210
.LBE105:
.LBE104:
	.loc 1 373 0
	and	%d10, %d5
.LBB107:
.LBB106:
	.loc 1 792 0
	seln	%d11, %d11, %d7, 32
.LBE106:
.LBE107:
	.loc 1 373 0
	or	%d10, %d11
.LBB108:
.LBB109:
	.loc 1 792 0
	ld.bu	%d11, [%a15] 211
.LBE109:
.LBE108:
	.loc 1 374 0
	and	%d10, %d4
.LBB111:
.LBB110:
	.loc 1 792 0
	seln	%d11, %d11, %d15, 128
.LBE110:
.LBE111:
	.loc 1 374 0
	or	%d10, %d11
	.loc 1 376 0
	and	%d9, %d4
	.loc 1 356 0
	st.w	[%a2] 4, %d0
	.loc 1 374 0
	st.w	[%a3] 20, %d10
.LBB112:
.LBB113:
	.loc 1 792 0
	ld.bu	%d10, [%a15] 212
.LBE113:
.LBE112:
	.loc 1 358 0
	st.w	[%a2] 16, %d1
.LVL18:
.LBB115:
.LBB114:
	.loc 1 792 0
	seln	%d10, %d10, %d15, 128
.LBE114:
.LBE115:
	.loc 1 376 0
	or	%d9, %d10
	.loc 1 378 0
	ld.w	%d10, [%a3] 16
	.loc 1 376 0
	st.w	[%a3] 12, %d9
.LVL19:
.LBB116:
.LBB117:
	.loc 1 792 0
	ld.bu	%d9, [%a15] 214
.LBE117:
.LBE116:
	.loc 1 378 0
	and	%d10, %d2
.LBB119:
.LBB118:
	.loc 1 792 0
	seln	%d9, %d9, %d3, 8
.LBE118:
.LBE119:
	.loc 1 378 0
	or	%d9, %d10
.LVL20:
.LBB120:
.LBB121:
	.loc 1 792 0
	ld.bu	%d10, [%a15] 215
.LBE121:
.LBE120:
	.loc 1 379 0
	and	%d5, %d9
.LBB123:
.LBB122:
	.loc 1 792 0
	seln	%d7, %d10, %d7, 32
.LBE122:
.LBE123:
	.loc 1 379 0
	or	%d5, %d5, 192
	.loc 1 381 0
	or	%d5, %d7
.LVL21:
.LBB124:
.LBB125:
	.loc 1 792 0
	ld.bu	%d7, [%a15] 216
.LBE125:
.LBE124:
	.loc 1 383 0
	ld.w	%d9, [%a3] 28
.LBB127:
.LBB126:
	.loc 1 792 0
	seln	%d6, %d7, %d6, 2
.LBE126:
.LBE127:
	.loc 1 383 0
	mov.u	%d7, 65532
	and	%d7, %d9
	.loc 1 385 0
	or	%d7, %d7, 60
	.loc 1 386 0
	or	%d6, %d7
	st.w	[%a3] 28, %d6
	.loc 1 387 0
	ld.hu	%d7, [%a3] 24
.LBB128:
.LBB129:
	.loc 1 792 0
	ld.bu	%d6, [%a15] 219
.LBE129:
.LBE128:
	.loc 1 387 0
	or	%d7, %d7, 3
.LVL22:
.LBB131:
.LBB130:
	.loc 1 792 0
	seln	%d6, %d6, %d15, 128
.LBE130:
.LBE131:
	.loc 1 389 0
	and	%d4, %d7
	or	%d4, %d6
.LVL23:
.LBB132:
.LBB133:
	.loc 1 792 0
	ld.bu	%d6, [%a15] 220
.LBE133:
.LBE132:
	.loc 1 390 0
	and	%d2, %d4
.LBB135:
.LBB134:
	.loc 1 792 0
	seln	%d3, %d6, %d3, 8
.LBE134:
.LBE135:
	.loc 1 393 0
	ld.bu	%d4, [%a15] 205
.LVL24:
	.loc 1 390 0
	or	%d3, %d2
.LBB136:
.LBB137:
	.loc 1 801 0
	ld.bu	%d2, [%a15] 230
	seln	%d15, %d4, %d15, 128
	sel	%d6, %d2, %d15, 192
.LBE137:
.LBE136:
	.loc 1 393 0
	mov.u	%d15, 65343
	and	%d15, %d8
	or	%d6, %d15
.LBB138:
.LBB139:
	.loc 1 801 0
	ld.bu	%d2, [%a15] 231
.LBE139:
.LBE138:
	.loc 1 394 0
	ld.bu	%d4, [%a15] 213
.LVL25:
	.loc 1 393 0
	st.w	[%a3] 4, %d6
.LBB141:
.LBB140:
	.loc 1 801 0
	mov	%d15, 3
	jz	%d2, .L50
	mov	%d15, 1
	seln	%d15, %d4, %d15, 2
.L50:
.LBE140:
.LBE141:
	.loc 1 394 0
	mov.u	%d7, 65532
.LBB142:
.LBB143:
	.loc 1 801 0
	movh.a	%a5, hi:KLDiagFlag
.LBE143:
.LBE142:
	.loc 1 394 0
	and	%d7, %d5
.LBB146:
.LBB144:
	.loc 1 801 0
	ld.bu	%d2, [%a5] lo:KLDiagFlag
.LBE144:
.LBE146:
	.loc 1 394 0
	or	%d7, %d15
.LBB147:
.LBB145:
	.loc 1 801 0
	mov	%d15, 16
	seln	%d2, %d2, %d15, 32
.LBE145:
.LBE147:
	.loc 1 396 0
	mov.u	%d15, 65487
	and	%d3, %d15
	or	%d2, %d3
	.loc 1 394 0
	st.w	[%a3] 16, %d7
.LVL26:
	.loc 1 396 0
	st.w	[%a3] 24, %d2
	.loc 1 397 0
	movh.a	%a3, hi:LVDC_WakeUpSleepManagement
	ld.w	%d3, [%a3] lo:LVDC_WakeUpSleepManagement
	mov.u	%d2, 65532
	and	%d2, %d3
	or	%d2, %d2, 2
	st.w	[%a3] lo:LVDC_WakeUpSleepManagement, %d2
	.loc 1 399 0
	movh.a	%a3, hi:Main_InitFin
	ld.bu	%d2, [%a3] lo:Main_InitFin
	jz	%d2, .L26
	.loc 1 401 0
	ld.bu	%d2, [%a15] 14
	ld.w	%d4, [%a4] lo:DCDC_Status
.LVL27:
	mov.u	%d3, 65523
	sh	%d2, 2
	and	%d4, %d3
	and	%d2, %d2, 12
	or	%d2, %d4
	.loc 1 402 0
	mov.u	%d4, 65532
	and	%d2, %d4
	ld.bu	%d4, [%a15] 15
	.loc 1 408 0
	and	%d1, %d15
	.loc 1 402 0
	and	%d4, %d4, 3
	or	%d2, %d4
	.loc 1 403 0
	ld.w	%d4, [%a2] 8
	.loc 1 402 0
	st.w	[%a4] lo:DCDC_Status, %d2
	.loc 1 403 0
	ld.bu	%d2, [%a15] 12
	and	%d4, %d15
	sh	%d2, 4
	and	%d2, %d2, 48
	or	%d2, %d4
	.loc 1 404 0
	ld.bu	%d4, [%a15] 13
	and	%d3, %d2
	sh	%d4, 2
	and	%d4, %d4, 12
	or	%d2, %d3, %d4
	.loc 1 412 0
	mov.u	%d4, 65532
	and	%d0, %d4
	.loc 1 404 0
	st.w	[%a2] 8, %d2
	.loc 1 408 0
	ld.bu	%d5, [%a15] 8
	sh	%d3, %d5, 4
	and	%d3, %d3, 48
	or	%d15, %d1, %d3
	st.w	[%a2] 16, %d15
	.loc 1 410 0
	ld.hu	%d3, [%a15] 224
	jz	%d3, .L91
	.loc 1 418 0
	ld.bu	%d3, [%a15] 16
	and	%d3, %d3, 3
	or	%d0, %d3
	.loc 1 419 0
	mov.u	%d3, 65532
	and	%d2, %d3
	ld.bu	%d3, [%a15] 17
	and	%d3, %d3, 3
	or	%d2, %d3
	st.w	[%a2] 8, %d2
	.loc 1 420 0
	mov.u	%d2, 65343
	and	%d15, %d2
	ld.bu	%d2, [%a15] 18
	sh	%d2, 6
	and	%d2, %d2, 255
	or	%d15, %d2
	st.w	[%a2] 16, %d15
.L54:
	.loc 1 423 0
	ld.w	%d4, [%a15] 8
	mov.u	%d3, 65343
	insert	%d2, %d4, 0, 8, 16
	and	%d0, %d3
	xor	%d4, %d2
	mov	%d2, 0
	sel	%d4, %d4, %d2, 64
	or	%d4, %d0
	.loc 1 424 0
	mov.u	%d0, 65487
	sel	%d15, %d5, %d2, 16
	and	%d0, %d4
	or	%d0, %d15
	.loc 1 425 0
	ld.w	%d4, [%a2] 12
	mov.u	%d15, 65532
	.loc 1 424 0
	st.w	[%a2] 4, %d0
	.loc 1 425 0
	and	%d15, %d4
	ld.bu	%d4, [%a15] 9
	or.eq	%d15, %d4, 0
	st.w	[%a2] 12, %d15
	.loc 1 426 0
	ld.bu	%d15, [%a15] 10
	.loc 1 428 0
	movh.a	%a15, hi:OpMode_flag
.LVL28:
	.loc 1 426 0
	sel	%d2, %d15, %d2, 64
	ld.w	%d15, [%a2] 8
	and	%d3, %d15
	or	%d2, %d3
	.loc 1 428 0
	ld.hu	%d15, [%a15] lo:OpMode_flag
	.loc 1 426 0
	st.w	[%a2] 8, %d2
	.loc 1 428 0
	jnz	%d15, .L26
	.loc 1 430 0
	movh.a	%a15, hi:HsfbState_State
	ld.w	%d15, [%a15] lo:HsfbState_State
.LVL29:
.LBB148:
.LBB149:
	.loc 1 811 0
	mov	%d2, 0
	jlt.u	%d15, 2, .L58
	.loc 1 815 0
	mov	%d2, 1
	jeq	%d15, 2, .L58
	.loc 1 819 0
	add	%d2, %d15, -3
	ge.u	%d2, %d2, 3
	mov	%d3, 3
	sel	%d2, %d2, %d3, 2
.L58:
.LVL30:
.LBE149:
.LBE148:
	.loc 1 430 0
	ld.w	%d3, [%a2] 20
	mov.u	%d15, 65528
	and	%d15, %d3
	or	%d2, %d15
	st.w	[%a2] 20, %d2
	ret
.LVL31:
.L26:
	ret
.LVL32:
.L91:
	.loc 1 413 0
	mov.u	%d3, 65532
	and	%d2, %d3
	st.w	[%a2] 8, %d2
	.loc 1 414 0
	mov.u	%d2, 65343
	and	%d15, %d2
	st.w	[%a2] 16, %d15
	j	.L54
.LVL33:
.L90:
	.loc 1 295 0 discriminator 1
	movh.a	%a2, hi:HsfbState_State
	ld.w	%d2, [%a2] lo:HsfbState_State
.LVL34:
.LBB150:
.LBB151:
	.loc 1 811 0 discriminator 1
	jlt.u	%d2, 2, .L28
	.loc 1 815 0
	jeq	%d2, 2, .L28
	.loc 1 819 0
	add	%d2, -3
	jge.u	%d2, 3, .L28
.LVL35:
.LBE151:
.LBE150:
	.loc 1 267 0
	abs	%d10, %d10
.LVL36:
	.loc 1 283 0
	extr	%d10, %d10, 0, 16
	movh	%d2, 16205
	mul	%d9, %d10
.LVL37:
	addi	%d2, %d2, -13107
	itof	%d8, %d8
.LVL38:
	itof	%d9, %d9
	.loc 1 297 0
	ld.w	%d4, [%a12] 4
	.loc 1 283 0
	mul.f	%d9, %d9, %d2
	.loc 1 297 0
	mov.u	%d2, 65295
	.loc 1 283 0
	div.f	%d8, %d9, %d8
	.loc 1 297 0
	and	%d2, %d4
	.loc 1 283 0
	ftoiz	%d8, %d8
	.loc 1 297 0
	extr	%d8, %d8, 0, 16
	sh	%d3, %d8, 4
	and	%d3, %d3, 255
	extr.u	%d8, %d8, 4, 8
	or	%d2, %d3
	st.w	[%a12] 8, %d8
	st.w	[%a12] 4, %d2
	j	.L59
.LFE208:
	.size	HsfbApp_SetTx10ms, .-HsfbApp_SetTx10ms
	.align 3
	.global	ComServ_1msTask
	.type	ComServ_1msTask, @function
ComServ_1msTask:
.LFB209:
	.loc 1 439 0
.LVL39:
	.loc 1 445 0
	movh.a	%a15, hi:CANDriver_mg_bError
	ld.bu	%d15, [%a15] lo:CANDriver_mg_bError
	jnz	%d15, .L92
	movh	%d10, hi:CanE2E
	movh	%d9, hi:CANDriver_mg_aeMsgSendType-4
	movh.a	%a12, hi:CANDriver_mg_au16TxCycleTime
	movh.a	%a15, hi:CanTxFlags
	movh.a	%a13, hi:CanTxMsg
	addi	%d10, %d10, lo:CanE2E
.LBB160:
.LBB161:
.LBB162:
.LBB163:
	.loc 1 1152 0
	movh	%d14, hi:CrcTable08
.LBE163:
.LBE162:
.LBE161:
.LBE160:
	.loc 1 445 0
	addi	%d9, %d9, lo:CANDriver_mg_aeMsgSendType-4
	lea	%a12, [%a12] lo:CANDriver_mg_au16TxCycleTime
	lea	%a15, [%a15] lo:CanTxFlags
	lea	%a13, [%a13] lo:CanTxMsg
	mov.a	%a14, %d10
	mov	%d8, 127
	.loc 1 480 0
	mov	%d11, 0
.LBB176:
.LBB172:
	.loc 1 1161 0
	mov	%d13, 356
	mov	%d12, 1120
.LBB168:
.LBB164:
	.loc 1 1152 0
	addi	%d14, %d14, lo:CrcTable08
	j	.L103
.LVL40:
.L141:
.LBE164:
.LBE168:
.LBE172:
.LBE176:
	.loc 1 453 0
	ld.hu	%d2, [%a12]0
	jz	%d2, .L139
	.loc 1 468 0
	add	%d2, -1
	st.h	[%a12]0, %d2
.L96:
	.loc 1 449 0
	add	%d15, 1
	extr.u	%d15, %d15, 0, 16
.LVL41:
	add	%d8, -1
	ne	%d2, %d15, 15
	add.a	%a12, 2
	add.a	%a15, 4
	extr.u	%d8, %d8, 0, 16
	lea	%a13, [%a13] 36
	add.a	%a14, 2
	jz	%d2, .L140
.LVL42:
.L103:
	.loc 1 451 0
	add	%d9, 4
	mov.a	%a2, %d9
	ld.w	%d2, [%a2]0
	jz	%d2, .L141
	.loc 1 474 0
	ld.w	%d2, [%a15]0
	jne	%d2, 1, .L96
.LVL43:
	.loc 1 477 0
	mov	%e4, %d15, %d8
	call	CANDriver_TxDataToMbox
	.loc 1 479 0
	mov	%d4, %d8
	call	CANDriver_TxReqNewData
	.loc 1 480 0
	st.w	[%a15]0, %d11
	j	.L96
.LVL44:
.L139:
	.loc 1 457 0
	mov	%d4, %d8
	call	CANDriver_TxReqSts
	jnz	%d2, .L96
.LVL45:
.LBB177:
.LBB173:
	.loc 1 1161 0
	ld.w	%d2, [%a13]0
	eq	%d3, %d2, %d13
	or.eq	%d3, %d2, %d12
	jz	%d3, .L142
.L97:
	.loc 1 1171 0
	ld.bu	%d2, [%a14]0
	.loc 1 1172 0
	ld.a	%a2, [%a13] 24
	.loc 1 1171 0
	add	%d2, 1
	and	%d2, %d2, 255
	.loc 1 1172 0
	mov.u	%d3, 65520
	.loc 1 1171 0
	st.b	[%a14]0, %d2
	.loc 1 1172 0
	ld.w	%d4, [%a2] 4
	and	%d2, %d2, 15
	and	%d3, %d4
	or	%d2, %d3
.LBB169:
.LBB165:
	.loc 1 1148 0
	mov	%d3, 255
.LBE165:
.LBE169:
	.loc 1 1172 0
	st.w	[%a2] 4, %d2
	.loc 1 1174 0
	ld.hu	%d4, [%a13] 4
.LVL46:
.LBB170:
.LBB166:
	.loc 1 1148 0
	mov	%d2, 0
	jz	%d4, .L143
.LVL47:
.L138:
	add	%d2, 1
	and	%d2, %d2, 255
.LVL48:
	jge.u	%d2, %d4, .L144
.LVL49:
.L102:
	.loc 1 1149 0
	jz	%d2, .L138
.LVL50:
	.loc 1 1150 0
	addsc.a	%a3, %a2, %d2, 2
	.loc 1 1152 0
	mov.a	%a4, %d14
	.loc 1 1151 0
	ld.bu	%d5, [%a3]0
	.loc 1 1148 0
	add	%d2, 1
.LVL51:
	.loc 1 1152 0
	xor	%d3, %d5
.LVL52:
	addsc.a	%a3, %a4, %d3, 0
	.loc 1 1148 0
	and	%d2, %d2, 255
.LVL53:
	.loc 1 1152 0
	ld.bu	%d3, [%a3]0
.LVL54:
	.loc 1 1148 0
	jlt.u	%d2, %d4, .L102
.LVL55:
.L144:
	not	%d3
	and	%d3, %d3, 255
	mov	%d2, %d3
.L100:
.LVL56:
.LBE166:
.LBE170:
	.loc 1 1174 0
	st.b	[%a14] 1, %d3
	.loc 1 1175 0
	st.w	[%a2]0, %d2
.LVL57:
.L98:
.LBE173:
.LBE177:
	.loc 1 460 0
	mov	%e4, %d15, %d8
	call	CANDriver_TxDataToMbox
	.loc 1 462 0
	mov	%d4, %d8
	call	CANDriver_TxReqNewData
	.loc 1 463 0
	ld.w	%d2, [%a13] 20
	add	%d2, -1
	st.h	[%a12]0, %d2
	j	.L96
.LVL58:
.L145:
	.loc 1 543 0
	movh.a	%a15, hi:ComServ_Status
	lea	%a15, [%a15] lo:ComServ_Status
	ld.h	%d15, [%a15] 58
	jz	%d15, .L123
	.loc 1 543 0 is_stmt 0 discriminator 1
	movh.a	%a15, hi:ComServ_DevRx
	lea	%a15, [%a15] lo:ComServ_DevRx
	ld.h	%d15, [%a15] 2
	jnz.t	%d15, 7, .L123
	.loc 1 549 0 is_stmt 1
	mov.a	%a3, %d10
	st.h	[%a3] 86, %d12
.LVL59:
.L92:
	ret
.LVL60:
.L140:
	.loc 1 449 0
	movh.a	%a15, hi:CanRxMsg+20
	lea	%a15, [%a15] lo:CanRxMsg+20
	movh.a	%a13, hi:CanRxFlags
	movh.a	%a12, hi:CanE2E+44
	movh.a	%a14, hi:CanTxMsg+4
	mov.d	%d2, %a15
	lea	%a13, [%a13] lo:CanRxFlags
	lea	%a12, [%a12] lo:CanE2E+44
	lea	%a14, [%a14] lo:CanTxMsg+4
	mov	%d15, 0
.LVL61:
	mov	%d12, 0
	addi	%d9, %d2, -20
	.loc 1 525 0
	mov	%d14, 0
	.loc 1 526 0
	mov	%d13, 1
	.loc 1 530 0
	mov	%d11, 256
	j	.L122
.LVL62:
.L121:
	.loc 1 536 0
	add	%d15, 1
	lea	%a15, [%a15] 36
	lea	%a13, [%a13] 8
	add.a	%a12, 2
	lea	%a14, [%a14] 36
	.loc 1 485 0
	jeq	%d15, 7, .L145
.LVL63:
.L122:
	.loc 1 449 0
	extr.u	%d8, %d15, 0, 16
	.loc 1 488 0
	mov	%d4, %d8
	call	CANDriver_ReadStsRxPending
	jeq	%d2, 1, .L146
	.loc 1 521 0
	ld.a	%a2, [%a15]0
	ld.w	%d2, [%a2]0
	add	%d2, 1
	st.w	[%a2]0, %d2
	.loc 1 523 0
	ld.w	%d3, [%a15] -4
	jlt.u	%d2, %d3, .L119
	.loc 1 525 0
	st.w	[%a2]0, %d14
	.loc 1 526 0
	st.w	[%a13]0, %d13
.L119:
	.loc 1 530 0
	sh	%d2, %d15, 3
	mov.a	%a3, %d9
	add	%d3, %d2, %d15
	addsc.a	%a2, %a3, %d3, 2
	ld.w	%d3, [%a2]0
	jne	%d3, %d11, .L121
	.loc 1 532 0
	movh.a	%a4, hi:CanRxFlags
	lea	%a4, [%a4] lo:CanRxFlags
	addsc.a	%a2, %a4, %d2, 0
	movh.a	%a3, hi:DebugError
	ld.w	%d2, [%a2]0
	.loc 1 533 0
	mov.a	%a4, %d10
	.loc 1 532 0
	ne	%d3, %d2, 0
	lea	%a2, [%a3] lo:DebugError
	.loc 1 538 0
	seln	%d12, %d2, %d12, 1
	.loc 1 532 0
	st.b	[%a3] lo:DebugError, %d3
	.loc 1 533 0
	addi	%d3, %d15, 22
	addsc.a	%a3, %a4, %d3, 1
	ld.bu	%d3, [%a3]0
	ne	%d3, %d3, 0
	st.b	[%a2] 1, %d3
	.loc 1 534 0
	ld.bu	%d3, [%a3] 1
	ne	%d3, %d3, 0
	st.b	[%a2] 2, %d3
	.loc 1 535 0
	mov	%d3, 0
	st.b	[%a2] 3, %d3
	.loc 1 536 0
	addsc.a	%a2, %a4, %d15, 1
	ld.hu	%d3, [%a2] 72
	.loc 1 538 0
	seln	%d12, %d3, %d12, 1
	j	.L121
.L146:
	.loc 1 491 0
	mov	%d4, %d8
	call	CANDriver_MboxToRxBuf
.LVL64:
.LBB178:
.LBB179:
	.loc 1 1183 0
	jnz	%d8, .L105
	.loc 1 1185 0
	mov.a	%a2, %d10
	st.h	[%a2] 88, %d8
.L105:
	.loc 1 1187 0
	ld.w	%d2, [%a15] -20
	addi	%d2, %d2, -256
	jlt.u	%d2, 2, .L147
.L106:
.LBE179:
.LBE178:
	.loc 1 494 0
	mov	%d4, %d8
	call	CANDriver_ClrRxPending
	.loc 1 496 0
	ld.w	%d2, [%a15] -12
	jnz	%d2, .L118
	.loc 1 501 0
	ld.a	%a2, [%a15]0
	.loc 1 499 0
	st.w	[%a13] 4, %d13
	.loc 1 501 0
	st.w	[%a2]0, %d2
	.loc 1 502 0
	st.w	[%a13]0, %d2
	j	.L119
.L118:
	.loc 1 504 0
	jne	%d2, 3, .L119
	.loc 1 506 0
	ld.w	%d2, [%a15] -8
	jeq	%d2, 4, .L148
	.loc 1 513 0
	ld.a	%a2, [%a15]0
	.loc 1 512 0
	st.w	[%a13] 4, %d13
	.loc 1 513 0
	st.w	[%a2]0, %d14
	.loc 1 514 0
	st.w	[%a13]0, %d14
	j	.L119
.LVL65:
.L123:
	.loc 1 545 0
	mov	%d15, 0
	mov.a	%a2, %d10
	st.h	[%a2] 86, %d15
	ret
.LVL66:
.L147:
.LBB187:
.LBB184:
	.loc 1 1190 0
	ld.a	%a2, [%a15] 4
	.loc 1 1191 0
	ld.bu	%d3, [%a12] -14
	.loc 1 1190 0
	ld.w	%d2, [%a2] 4
	.loc 1 1191 0
	add	%d3, 1
	.loc 1 1190 0
	and	%d2, %d2, 15
.LVL67:
	.loc 1 1191 0
	and	%d3, %d3, 15
	jeq	%d3, %d2, .L149
	.loc 1 1197 0
	ld.bu	%d3, [%a12]0
	jge.u	%d3, 3, .L108
	.loc 1 1199 0
	add	%d3, 1
	st.b	[%a12]0, %d3
.L108:
	.loc 1 1205 0
	ld.hu	%d4, [%a14]0
	.loc 1 1202 0
	st.b	[%a12] -14, %d2
	.loc 1 1204 0
	ld.bu	%d6, [%a2]0
.LVL68:
.LBB180:
.LBB181:
	.loc 1 1148 0
	mov	%d2, 0
.LVL69:
	mov	%d3, 255
	jz	%d4, .L150
.LVL70:
.L137:
	add	%d2, 1
	and	%d2, %d2, 255
.LVL71:
	jge.u	%d2, %d4, .L151
.LVL72:
.L112:
	.loc 1 1149 0
	jz	%d2, .L137
.LVL73:
	.loc 1 1150 0
	addsc.a	%a3, %a2, %d2, 2
	.loc 1 1152 0
	movh.a	%a4, hi:CrcTable08
	.loc 1 1151 0
	ld.bu	%d5, [%a3]0
	.loc 1 1152 0
	lea	%a4, [%a4] lo:CrcTable08
	xor	%d3, %d5
.LVL74:
	addsc.a	%a3, %a4, %d3, 0
	.loc 1 1148 0
	add	%d2, 1
.LVL75:
	and	%d2, %d2, 255
.LVL76:
	.loc 1 1152 0
	ld.bu	%d3, [%a3]0
.LVL77:
	.loc 1 1148 0
	jlt.u	%d2, %d4, .L112
.LVL78:
.L151:
	not	%d3
	and	%d3, %d3, 255
.L110:
.LVL79:
.LBE181:
.LBE180:
	.loc 1 1205 0
	st.b	[%a12] -13, %d3
	.loc 1 1206 0
	jeq	%d3, %d6, .L152
	.loc 1 1212 0
	ld.bu	%d2, [%a12] 1
	jge.u	%d2, 3, .L114
	.loc 1 1214 0
	add	%d2, 1
	st.b	[%a12] 1, %d2
.L114:
	.loc 1 1218 0
	ld.bu	%d2, [%a12]0
	jnz	%d2, .L115
	ld.bu	%d2, [%a12] 1
	jnz	%d2, .L115
	.loc 1 1232 0
	st.h	[%a12] 14, %d2
	.loc 1 1233 0
	st.h	[%a12] 28, %d2
	j	.L106
.LVL80:
.L142:
.LBE184:
.LBE187:
.LBB188:
.LBB174:
	.loc 1 1162 0
	mov	%d3, 355
	jeq	%d2, %d3, .L97
	.loc 1 1163 0
	mov	%d3, 354
	jne	%d2, %d3, .L98
	j	.L97
.LVL81:
.L149:
.LBE174:
.LBE188:
.LBB189:
.LBB185:
	.loc 1 1193 0
	mov	%d3, 0
	st.b	[%a12]0, %d3
	j	.L108
.LVL82:
.L115:
	.loc 1 1220 0
	ld.hu	%d2, [%a12] 14
	jge.u	%d2, 10, .L117
	.loc 1 1222 0
	add	%d2, 1
	st.h	[%a12] 14, %d2
	j	.L106
.L117:
	.loc 1 1226 0
	mov	%d3, 1
.LVL83:
	.loc 1 1227 0
	mov.a	%a2, %d10
.LVL84:
	.loc 1 1226 0
	st.h	[%a12] 28, %d3
	.loc 1 1227 0
	ld.h	%d2, [%a2] 88
	add	%d2, 1
	st.h	[%a2] 88, %d2
	j	.L106
.LVL85:
.L152:
	.loc 1 1208 0
	mov	%d2, 0
	st.b	[%a12] 1, %d2
	j	.L114
.LVL86:
.L143:
.LBE185:
.LBE189:
.LBB190:
.LBB175:
.LBB171:
.LBB167:
	.loc 1 1148 0
	mov	%d3, 0
	j	.L100
.LVL87:
.L150:
.LBE167:
.LBE171:
.LBE175:
.LBE190:
.LBB191:
.LBB186:
.LBB183:
.LBB182:
	mov	%d3, 0
	j	.L110
.LVL88:
.L148:
.LBE182:
.LBE183:
.LBE186:
.LBE191:
	.loc 1 508 0
	ld.a	%a4, [%a15] 4
	mov	%d4, 0
	call	TpRx
	j	.L119
.LFE209:
	.size	ComServ_1msTask, .-ComServ_1msTask
	.align 3
	.global	ComServ_10msTask
	.type	ComServ_10msTask, @function
ComServ_10msTask:
.LFB210:
	.loc 1 558 0
	.loc 1 559 0
	movh.a	%a15, hi:Main_InitFin
	ld.bu	%d15, [%a15] lo:Main_InitFin
	.loc 1 561 0
	movh.a	%a15, hi:ComServ_Status
	lea	%a15, [%a15] lo:ComServ_Status
	.loc 1 559 0
	jnz	%d15, .L154
	.loc 1 563 0
	movh.a	%a2, hi:HsfbState_State
	.loc 1 561 0
	st.h	[%a15] 24, %d15
	.loc 1 562 0
	st.h	[%a15] 18, %d15
	.loc 1 563 0
	ld.w	%d15, [%a2] lo:HsfbState_State
.LVL89:
.LBB208:
.LBB209:
	.loc 1 811 0
	mov	%d2, 0
	jlt.u	%d15, 2, .L155
	.loc 1 815 0
	jeq	%d15, 2, .L155
	.loc 1 819 0
	add	%d15, -3
	.loc 1 815 0
	ge.u	%d2, %d15, 3
.L155:
.LVL90:
.LBE209:
.LBE208:
	.loc 1 563 0
	st.h	[%a15] 26, %d2
	.loc 1 564 0
	ret
.LVL91:
.L154:
	.loc 1 567 0
	movh.a	%a2, hi:CanE2E
	lea	%a2, [%a2] lo:CanE2E
.LBB210:
.LBB211:
	.loc 1 716 0
	movh.a	%a3, hi:CanRxFlags
.LBE211:
.LBE210:
	.loc 1 567 0
	ld.h	%d15, [%a2] 86
.LBB237:
.LBB234:
	.loc 1 716 0
	lea	%a3, [%a3] lo:CanRxFlags
.LBE234:
.LBE237:
	.loc 1 567 0
	st.h	[%a15] 14, %d15
.LBB238:
.LBB235:
	.loc 1 716 0
	ld.w	%d15, [%a3] 52
	jz	%d15, .L157
	.loc 1 719 0
	movh.a	%a2, hi:DCDC_CMD
	lea	%a2, [%a2] lo:DCDC_CMD
	ld.w	%d15, [%a2] 24
	.loc 1 721 0
	movh.a	%a4, hi:HTB_CMD
	.loc 1 719 0
	extr.u	%d2, %d15, 5, 1
	.loc 1 721 0
	lea	%a4, [%a4] lo:HTB_CMD
	.loc 1 723 0
	extr.u	%d15, %d15, 6, 2
	.loc 1 718 0
	mov	%d4, 0
	.loc 1 719 0
	st.h	[%a15] 26, %d2
	.loc 1 720 0
	ld.w	%d2, [%a2] 4
	.loc 1 718 0
	st.w	[%a3] 52, %d4
	.loc 1 720 0
	extr.u	%d3, %d2, 6, 2
	.loc 1 722 0
	extr.u	%d2, %d2, 4, 2
	.loc 1 720 0
	eq	%d3, %d3, 1
	.loc 1 722 0
	eq	%d2, %d2, 1
	.loc 1 720 0
	st.h	[%a15] 18, %d3
	.loc 1 722 0
	st.h	[%a15] 24, %d2
	.loc 1 721 0
	ld.w	%d3, [%a4] 12
	.loc 1 723 0
	ld.bu	%d2, [%a2] 28
	.loc 1 721 0
	extr.u	%d3, %d3, 5, 3
	.loc 1 723 0
	insert	%d15, %d15, %d2, 2, 32-2
	.loc 1 721 0
	eq	%d3, %d3, 5
	.loc 1 723 0
	eq	%d15, %d15, 1
	.loc 1 721 0
	st.h	[%a15] 20, %d3
	.loc 1 723 0
	st.h	[%a15] 40, %d15
	.loc 1 724 0
	jz	%d15, .L158
	.loc 1 726 0
	st.h	[%a15] 24, %d4
.L158:
	.loc 1 731 0
	ld.w	%d15, [%a2] 8
	mul	%d15, %d15, 10
	extr.u	%d15, %d15, 0, 16
.LVL92:
	.loc 1 732 0
	addi	%d2, %d15, -1551
	extr.u	%d2, %d2, 0, 16
	ge.u	%d2, %d2, 49
	jnz	%d2, .L159
	.loc 1 734 0
	mov	%d15, 1550
.LVL93:
	st.h	[%a15] 30, %d15
.L160:
	.loc 1 740 0
	ld.w	%d15, [%a2] 16
	ld.hu	%d2, [%a2] 12
	and	%d15, %d15, 15
	sh	%d15, %d15, 8
	or	%d15, %d2
.LVL94:
.LBB212:
.LBB213:
	.loc 1 770 0
	mov	%d2, 3201
	jlt.u	%d15, %d2, .L174
.LVL95:
.LBB214:
.LBB215:
	.loc 1 774 0
	ld.hu	%d15, [%a15] 32
.LVL96:
	jge.u	%d15, %d2, .L176
.LVL97:
.L164:
.LBE215:
.LBE214:
.LBE213:
.LBE212:
	.loc 1 741 0
	ld.w	%d15, [%a2] 24
	ld.w	%d2, [%a2] 20
	and	%d15, %d15, 3
	sh	%d15, %d15, 8
	or	%d15, %d2
	mul	%d15, %d15, 10
.LBB219:
.LBB220:
	.loc 1 770 0
	mov	%d2, 8251
	mov	%d4, 2300
.LBE220:
.LBE219:
	.loc 1 741 0
	extr.u	%d15, %d15, 0, 16
.LVL98:
.LBB227:
.LBB225:
	.loc 1 770 0
	lt.u	%d3, %d15, %d2
	and.ge.u	%d3, %d15, %d4
	jnz	%d3, .L175
.LVL99:
.LBB221:
.LBB222:
	.loc 1 774 0
	ld.hu	%d15, [%a15] 34
.LVL100:
	jlt.u	%d15, %d2, .L177
.L167:
	.loc 1 776 0
	mov	%d15, 7900
.LVL101:
.L175:
	st.h	[%a15] 34, %d15
.L166:
.LBE222:
.LBE221:
.LBE225:
.LBE227:
	.loc 1 742 0
	ld.w	%d15, [%a2] 16
	extr.u	%d2, %d15, 4, 2
	.loc 1 743 0
	extr.u	%d15, %d15, 7, 1
	.loc 1 742 0
	st.h	[%a15] 36, %d2
	.loc 1 743 0
	st.h	[%a15] 38, %d15
	j	.L168
.LVL102:
.L157:
	.loc 1 747 0
	st.h	[%a15] 26, %d15
.L168:
	.loc 1 749 0
	ld.w	%d15, [%a3] 44
	jz	%d15, .L169
	.loc 1 751 0
	mov	%d15, 0
	.loc 1 752 0
	movh.a	%a4, hi:DCDC_DEV_CMD
	lea	%a2, [%a4] lo:DCDC_DEV_CMD
	.loc 1 751 0
	st.w	[%a3] 44, %d15
	.loc 1 752 0
	ld.w	%d15, [%a2] 20
	st.h	[%a15] 42, %d15
	.loc 1 753 0
	ld.w	%d15, [%a2] 12
	extr.u	%d2, %d15, 4, 2
	st.h	[%a15] 44, %d2
	.loc 1 754 0
	ld.w	%d2, [%a2] 4
	extr.u	%d3, %d2, 6, 2
	.loc 1 755 0
	and	%d2, %d2, 63
	sh	%d2, %d2, 8
	.loc 1 754 0
	st.h	[%a15] 46, %d3
	.loc 1 755 0
	ld.w	%d3, [%a4] lo:DCDC_DEV_CMD
	or	%d2, %d3
	st.h	[%a15] 48, %d2
	.loc 1 756 0
	ld.w	%d2, [%a2] 16
	st.h	[%a15] 50, %d2
	.loc 1 757 0
	extr.u	%d2, %d15, 6, 1
	st.h	[%a15] 52, %d2
	.loc 1 758 0
	extr.u	%d2, %d15, 7, 1
	.loc 1 759 0
	and	%d15, %d15, 15
	sh	%d15, %d15, 8
	.loc 1 758 0
	st.h	[%a15] 54, %d2
	.loc 1 759 0
	ld.w	%d2, [%a2] 8
	or	%d15, %d2
	st.h	[%a15] 56, %d15
.L169:
	.loc 1 762 0
	ld.w	%d15, [%a3] 4
	jz	%d15, .L170
	.loc 1 764 0
	mov	%d15, 0
	.loc 1 765 0
	movh.a	%a2, hi:COM_WakeUpSleepManagement
	.loc 1 764 0
	st.w	[%a3] 4, %d15
	.loc 1 765 0
	ld.w	%d15, [%a2] lo:COM_WakeUpSleepManagement
	and	%d15, %d15, 3
	st.h	[%a15] 58, %d15
.L170:
.LBE235:
.LBE238:
	.loc 1 569 0
	call	ComServ_EmergencyMode
	.loc 1 570 0
	movh.a	%a2, hi:PortOtpAutoDiagEn
	ld.h	%d15, [%a15] 20
	st.h	[%a2] lo:PortOtpAutoDiagEn, %d15
	.loc 1 571 0
	ld.h	%d15, [%a15] 40
	movh.a	%a15, hi:PortDisHSK
	st.h	[%a15] lo:PortDisHSK, %d15
	ret
.LVL103:
.L176:
.LBB239:
.LBB236:
.LBB228:
.LBB218:
.LBB217:
.LBB216:
	.loc 1 776 0
	mov	%d15, 3200
.LVL104:
.L174:
	st.h	[%a15] 32, %d15
	j	.L164
.LVL105:
.L177:
.LBE216:
.LBE217:
.LBE218:
.LBE228:
.LBB229:
.LBB226:
.LBB224:
.LBB223:
	.loc 1 774 0
	jlt.u	%d15, %d4, .L167
	j	.L166
.LVL106:
.L159:
.LBE223:
.LBE224:
.LBE226:
.LBE229:
.LBB230:
.LBB231:
	.loc 1 770 0
	mov	%d2, 1551
	mov	%d4, 600
	lt.u	%d3, %d15, %d2
	and.ge.u	%d3, %d15, %d4
	jnz	%d3, .L173
.LVL107:
.LBB232:
.LBB233:
	.loc 1 774 0
	ld.hu	%d15, [%a15] 30
.LVL108:
	jge.u	%d15, %d2, .L162
	jge.u	%d15, %d4, .L160
.L162:
	.loc 1 776 0
	mov	%d15, 1400
.LVL109:
.L173:
	st.h	[%a15] 30, %d15
	j	.L160
.LBE233:
.LBE232:
.LBE231:
.LBE230:
.LBE236:
.LBE239:
.LFE210:
	.size	ComServ_10msTask, .-ComServ_10msTask
	.align 3
	.global	CANDriver_MsgObjCfg
	.type	CANDriver_MsgObjCfg, @function
CANDriver_MsgObjCfg:
.LFB213:
	.loc 1 665 0
.LVL110:
	.loc 1 669 0
	movh.a	%a3, hi:CanRxMsg+4
	.loc 1 671 0
	movh.a	%a15, hi:-268337152
	.loc 1 672 0
	movh	%d7, 512
	.loc 1 674 0
	movh	%d6, 160
	.loc 1 669 0
	lea	%a3, [%a3] lo:CanRxMsg+4
	.loc 1 665 0
	mov	%d3, 0
	.loc 1 671 0
	lea	%a15, [%a15] lo:-268337152
	.loc 1 672 0
	add	%d7, 2
	.loc 1 674 0
	addi	%d6, %d6, 3935
	.loc 1 677 0
	movh	%d5, 32768
.LVL111:
.L189:
	.loc 1 671 0 discriminator 1
	ld.w	%d2, [%a15] 452
	mov	%d15, 768
	and	%d15, %d2
	jnz	%d15, .L189
	.loc 1 672 0
	sh	%d2, %d3, 16
	or	%d2, %d7
	st.w	[%a15] 452, %d2
	.loc 1 674 0
	sh	%d2, %d3, 5
	addsc.a	%a2, %a15, %d2, 0
	.loc 1 675 0
	addi	%d2, %d3, 128
	sh	%d4, %d2, 5
	addsc.a	%a4, %a15, %d4, 0
	.loc 1 674 0
	st.w	[%a2] 4124, %d6
	.loc 1 675 0
	st.w	[%a4]0, %d15
	.loc 1 676 0
	ld.w	%d2, [%a3]0
	ld.w	%d4, [%a4]0
	sh	%d2, %d2, 24
	or	%d2, %d4
	.loc 1 680 0
	add	%d3, 1
	.loc 1 676 0
	st.w	[%a4]0, %d2
	.loc 1 677 0
	st.w	[%a2] 4120, %d5
	.loc 1 678 0
	ld.w	%d2, [%a3] -4
	ld.w	%d4, [%a2] 4120
	sh	%d2, %d2, 18
	or	%d2, %d4
	.loc 1 680 0
	lea	%a3, [%a3] 36
	.loc 1 678 0
	st.w	[%a2] 4120, %d2
	.loc 1 679 0
	st.w	[%a2] 4116, %d15
	.loc 1 680 0
	st.w	[%a2] 4112, %d15
	.loc 1 669 0
	jne	%d3, 7, .L189
	movh.a	%a3, hi:CanTxMsg+4
	.loc 1 686 0
	movh.a	%a2, hi:-268337152
	.loc 1 690 0
	movh	%d1, 512
	.loc 1 698 0
	movh	%d6, 34935
	.loc 1 699 0
	movh	%d5, 17459
	.loc 1 669 0
	lea	%a3, [%a3] lo:CanTxMsg+4
	mov	%d4, 127
	.loc 1 686 0
	lea	%a2, [%a2] lo:-268337152
	.loc 1 690 0
	add	%d1, 2
	.loc 1 692 0
	movh	%d0, 3616
	.loc 1 695 0
	movh	%d7, 32768
	.loc 1 698 0
	addi	%d6, %d6, 26197
	.loc 1 699 0
	addi	%d5, %d5, 8721
	.loc 1 701 0
	mov	%d3, 3584
.L190:
	.loc 1 686 0 discriminator 1
	ld.w	%d2, [%a2] 452
	mov	%d15, 768
	and	%d15, %d2
	jnz	%d15, .L190
	.loc 1 690 0
	sh	%d2, %d4, 16
	or	%d2, %d1
	.loc 1 692 0
	sh	%d8, %d4, 5
	addsc.a	%a15, %a2, %d8, 0
	.loc 1 690 0
	st.w	[%a2] 452, %d2
	.loc 1 693 0
	addi	%d2, %d4, 128
	sh	%d8, %d2, 5
	addsc.a	%a4, %a2, %d8, 0
	.loc 1 692 0
	st.w	[%a15] 4124, %d0
	.loc 1 693 0
	st.w	[%a4]0, %d15
	.loc 1 694 0
	ld.w	%d15, [%a3]0
	ld.w	%d2, [%a4]0
	sh	%d15, %d15, 24
	or	%d15, %d2
	st.w	[%a4]0, %d15
	.loc 1 695 0
	st.w	[%a15] 4120, %d7
	.loc 1 696 0
	ld.w	%d15, [%a3] -4
	ld.w	%d2, [%a15] 4120
	sh	%d15, %d15, 18
	or	%d15, %d2
	st.w	[%a15] 4120, %d15
	.loc 1 698 0
	st.w	[%a15] 4116, %d6
	.loc 1 699 0
	st.w	[%a15] 4112, %d5
.L182:
	.loc 1 701 0 discriminator 1
	ld.w	%d2, [%a15] 4124
	mov	%d15, 3584
	and	%d15, %d2
	jne	%d15, %d3, .L182
	.loc 1 701 0 is_stmt 0
	add	%d4, -1
	.loc 1 683 0 is_stmt 1
	ne	%d15, %d4, 112
	.loc 1 701 0
	lea	%a3, [%a3] 36
	.loc 1 683 0
	jnz	%d15, .L190
	.loc 1 707 0
	ret
.LFE213:
	.size	CANDriver_MsgObjCfg, .-CANDriver_MsgObjCfg
	.align 3
	.global	CANDriver_HwCfg
	.type	CANDriver_HwCfg, @function
CANDriver_HwCfg:
.LFB212:
	.loc 1 614 0
.LVL112:
	.loc 1 617 0
	call	IfxScuWdt_getCpuWatchdogPassword
	mov	%d4, %d2
	.loc 1 619 0
	mov	%d15, 0
	.loc 1 617 0
	call	IfxScuWdt_clearCpuEndinit
	.loc 1 619 0
	movh.a	%a15, hi:-268337152
	lea	%a15, [%a15] lo:-268337152
	.loc 1 621 0
	movh.a	%a2, hi:-268337152
	.loc 1 619 0
	st.w	[%a15]0, %d15
	.loc 1 621 0
	lea	%a2, [%a2] lo:-268337152
.LVL113:
.L192:
	ld.w	%d15, [%a2]0
.LVL114:
	movh.a	%a15, hi:-268337152
	lea	%a15, [%a15] lo:-268337152
	.loc 1 620 0
	jnz	%d15, .L192
	.loc 1 623 0
	mov	%d2, 17407
	st.w	[%a15] 12, %d2
	.loc 1 625 0
	call	IfxScuWdt_getCpuWatchdogPassword
	mov	%d4, %d2
	call	IfxScuWdt_setCpuEndinit
	.loc 1 627 0
	ld.w	%d2, [%a15] 456
	andn	%d2, %d2, ~(-16)
	st.w	[%a15] 456, %d2
	.loc 1 628 0
	ld.w	%d2, [%a15] 456
	insert	%d2, %d2, 2, 0, 4
	st.w	[%a15] 456, %d2
	.loc 1 631 0
	mov	%d2, 65
	st.w	[%a15] 768, %d2
	.loc 1 632 0
	st.w	[%a15] 780, %d15
	.loc 1 644 0
	ld.w	%d2, [%a15] 784
	insert	%d2, %d2, 0, 15, 1
	st.w	[%a15] 784, %d2
	.loc 1 645 0
	ld.w	%d2, [%a15] 784
	insert	%d2, %d2, 2, 6, 2
	st.w	[%a15] 784, %d2
	.loc 1 646 0
	ld.w	%d2, [%a15] 784
	insert	%d2, %d2, 11, 8, 4
	st.w	[%a15] 784, %d2
	.loc 1 647 0
	ld.w	%d2, [%a15] 784
	insert	%d2, %d2, 6, 12, 3
	st.w	[%a15] 784, %d2
	.loc 1 648 0
	ld.w	%d2, [%a15] 784
	insert	%d2, %d2, 1, 0, 6
	st.w	[%a15] 784, %d2
	.loc 1 650 0
	call	CANDriver_MsgObjCfg
	.loc 1 661 0
	st.w	[%a15] 768, %d15
	.loc 1 662 0
	ret
.LFE212:
	.size	CANDriver_HwCfg, .-CANDriver_HwCfg
	.align 3
	.global	CANDriver_Diag
	.type	CANDriver_Diag, @function
CANDriver_Diag:
.LFB211:
	.loc 1 589 0
.LVL115:
	.loc 1 592 0
	movh.a	%a15, hi:-268337152
	lea	%a15, [%a15] lo:-268337152
	ld.w	%d15, [%a15] 772
.LVL116:
	.loc 1 596 0
	movh.a	%a15, hi:CANDriver_mg_bError
	.loc 1 594 0
	and	%d2, %d15, 7
	st.h	[%a4]0, %d2
	.loc 1 596 0
	mov	%d2, 0
	st.b	[%a15] lo:CANDriver_mg_bError, %d2
	.loc 1 597 0
	and	%d2, %d15, 7
	jz	%d2, .L194
	.loc 1 597 0 is_stmt 0 discriminator 1
	jnz.t	%d15, 7, .L196
.L194:
	ret
.L196:
	.loc 1 599 0 is_stmt 1
	mov	%d15, 1
.LVL117:
	st.b	[%a15] lo:CANDriver_mg_bError, %d15
	.loc 1 601 0
	j	CANDriver_HwCfg
.LVL118:
.LFE211:
	.size	CANDriver_Diag, .-CANDriver_Diag
	.align 3
	.global	RangeCheck
	.type	RangeCheck, @function
RangeCheck:
.LFB215:
	.loc 1 769 0
.LVL119:
	.loc 1 770 0
	ge.u	%d15, %d5, %d4
	and.ge.u	%d15, %d4, %d6
	jnz	%d15, .L201
.LVL120:
.LBB242:
.LBB243:
	.loc 1 774 0
	ld.hu	%d15, [%a4]0
	jge.u	%d5, %d15, .L202
.LVL121:
	.loc 1 776 0
	st.h	[%a4]0, %d7
.LVL122:
.L197:
	ret
.LVL123:
.L202:
	.loc 1 774 0
	jge.u	%d15, %d6, .L197
.LVL124:
	.loc 1 776 0
	st.h	[%a4]0, %d7
	j	.L197
.LVL125:
.L201:
.LBE243:
.LBE242:
	.loc 1 772 0
	st.h	[%a4]0, %d4
	ret
.LFE215:
	.size	RangeCheck, .-RangeCheck
	.align 3
	.global	Crc_CalculateCRC32
	.type	Crc_CalculateCRC32, @function
Crc_CalculateCRC32:
.LFB226:
	.loc 1 1089 0
.LVL126:
	.loc 1 1099 0
	mov	%d2, 0
	jz	%d4, .L204
	.loc 1 1088 0
	add	%d4, -1
.LVL127:
	extr.u	%d4, %d4, 0, 16
.LVL128:
	lea	%a15, [%a4] 1
	addsc.a	%a15, %a15, %d4, 0
	mov.d	%d15, %a4
	not	%d15
	movh.a	%a2, hi:CrcTable32
	addsc.a	%a15, %a15, %d15, 0
	.loc 1 1096 0
	mov	%d2, -1
	lea	%a2, [%a2] lo:CrcTable32
.LVL129:
.L205:
	.loc 1 1107 0
	ld.bu	%d15, [%a4+]1
.LVL130:
	xor	%d3, %d15, %d2
.LVL131:
	.loc 1 1110 0
	and	%d3, %d3, 15
.LVL132:
	addsc.a	%a3, %a2, %d3, 2
	.loc 1 1109 0
	sh	%d2, -4
.LVL133:
	.loc 1 1110 0
	ld.w	%d3, [%a3]0
	.loc 1 1114 0
	sh	%d15, -4
	.loc 1 1110 0
	xor	%d2, %d3
.LVL134:
	.loc 1 1113 0
	and	%d3, %d2, 15
	.loc 1 1117 0
	xor	%d15, %d3
	addsc.a	%a3, %a2, %d15, 2
	.loc 1 1116 0
	sh	%d2, -4
.LVL135:
	.loc 1 1117 0
	ld.w	%d15, [%a3]0
	xor	%d2, %d15
.LVL136:
	.loc 1 1119 0
	loop	%a15, .L205
	.loc 1 1099 0
	not	%d2
.LVL137:
.L204:
	.loc 1 1128 0
	ret
.LFE226:
	.size	Crc_CalculateCRC32, .-Crc_CalculateCRC32
	.section .text.MPU_QM_CODE
	.align 3
	.global	UdsData_Calibration
	.type	UdsData_Calibration, @function
UdsData_Calibration:
.LFB223:
	.loc 1 940 0
.LVL138:
	.loc 1 950 0
	mov	%d4, 146
.LVL139:
	.loc 1 940 0
	mov.aa	%a15, %a4
	.loc 1 950 0
	call	Crc_CalculateCRC32
.LVL140:
	.loc 1 957 0
	mov	%d4, 150
	mov.aa	%a4, %a15
	.loc 1 950 0
	mov	%d8, %d2
.LVL141:
	.loc 1 957 0
	call	Crc_CalculateCRC32
.LVL142:
	.loc 1 958 0
	ld.bu	%d3, [%a15] 150
	.loc 1 959 0
	ld.bu	%d15, [%a15] 151
	.loc 1 958 0
	sh	%d3, %d3, 24
	.loc 1 959 0
	sh	%d15, %d15, 16
	.loc 1 958 0
	or	%d3, %d15
	.loc 1 961 0
	ld.bu	%d15, [%a15] 153
	.loc 1 951 0
	ld.bu	%d12, [%a15] 146
	.loc 1 959 0
	or	%d3, %d15
	.loc 1 960 0
	ld.bu	%d15, [%a15] 152
	.loc 1 952 0
	ld.bu	%d11, [%a15] 147
	.loc 1 960 0
	sh	%d15, %d15, 8
	.loc 1 958 0
	or	%d3, %d15
	.loc 1 953 0
	ld.bu	%d9, [%a15] 148
	.loc 1 954 0
	ld.bu	%d10, [%a15] 149
.LVL143:
	.loc 1 964 0
	ld.bu	%d5, [%a15]0
	.loc 1 965 0
	ld.bu	%d4, [%a15] 1
.LVL144:
	.loc 1 989 0
	mov	%d15, 118
	.loc 1 967 0
	jeq	%d2, %d3, .L215
.LVL145:
.L209:
	.loc 1 1005 0
	mov	%d2, %d15
	ret
.LVL146:
.L215:
	.loc 1 964 0
	sh	%d5, %d5, 8
.LVL147:
	.loc 1 969 0
	or	%d4, %d5
	.loc 1 984 0
	mov	%d15, 117
	.loc 1 969 0
	jne	%d4, 1, .L209
	.loc 1 951 0
	sh	%d12, %d12, 24
.LVL148:
	.loc 1 952 0
	sh	%d11, %d11, 16
	.loc 1 951 0
	or	%d11, %d12
	.loc 1 952 0
	or	%d10, %d11
	.loc 1 953 0
	sh	%d9, %d9, 8
	.loc 1 951 0
	or	%d9, %d10
	.loc 1 979 0
	mov	%d15, 116
	.loc 1 971 0
	jne	%d8, %d9, .L209
	movh.a	%a3, hi:CalibrationData-2
	lea	%a3, [%a3] lo:CalibrationData-2
	.loc 1 939 0
	lea	%a2, 74
.LVL149:
.L210:
.LBB244:
.LBB245:
.LBB246:
	.loc 1 891 0
	ld.bu	%d15, [%a15]0
	ld.bu	%d2, [%a15] 1
	sh	%d15, %d15, 8
	or	%d15, %d2
	add.a	%a15, 2
	st.h	[+%a3]2, %d15
	loop	%a2, .L210
.LBE246:
.LBE245:
.LBE244:
	.loc 1 974 0
	mov	%d15, 1
	movh.a	%a15, hi:Calib_recieved
	st.b	[%a15] lo:Calib_recieved, %d15
.LVL150:
	.loc 1 975 0
	mov	%d15, 0
	j	.L209
.LFE223:
	.size	UdsData_Calibration, .-UdsData_Calibration
	.align 3
	.global	UdsData_Parameter
	.type	UdsData_Parameter, @function
UdsData_Parameter:
.LFB222:
	.loc 1 904 0
.LVL151:
	.loc 1 911 0
	mov	%d4, 200
.LVL152:
	.loc 1 904 0
	mov.aa	%a15, %a4
	.loc 1 911 0
	call	Crc_CalculateCRC32
.LVL153:
	.loc 1 912 0
	ld.bu	%d3, [%a15] 200
	.loc 1 913 0
	ld.bu	%d15, [%a15] 201
	.loc 1 912 0
	sh	%d3, %d3, 24
	.loc 1 913 0
	sh	%d15, %d15, 16
	.loc 1 912 0
	or	%d15, %d3
	.loc 1 915 0
	ld.bu	%d3, [%a15] 203
	.loc 1 913 0
	or	%d15, %d3
	.loc 1 914 0
	ld.bu	%d3, [%a15] 202
	sh	%d3, %d3, 8
	.loc 1 912 0
	or	%d15, %d3
	.loc 1 925 0
	mov	%d3, 118
	.loc 1 917 0
	jeq	%d2, %d15, .L221
.LVL154:
	.loc 1 928 0
	mov	%d2, %d3
.LVL155:
	ret
.LVL156:
.L221:
	.loc 1 917 0
	movh.a	%a2, hi:ParameterData-2
	mov.aa	%a4, %a15
	lea	%a2, [%a2] lo:ParameterData-2
	.loc 1 903 0
	lea	%a15, 99
.LVL157:
.L218:
.LBB247:
.LBB248:
.LBB249:
	.loc 1 870 0
	ld.bu	%d15, [%a4]0
	ld.bu	%d2, [%a4] 1
	sh	%d15, %d15, 8
	or	%d15, %d2
	add.a	%a4, 2
	st.h	[+%a2]2, %d15
	loop	%a15, .L218
.LBE249:
.LBE248:
.LBE247:
	.loc 1 920 0
	mov	%d15, 1
	movh.a	%a15, hi:Param_recieved
	.loc 1 921 0
	mov	%d3, 0
	.loc 1 920 0
	st.b	[%a15] lo:Param_recieved, %d15
.LVL158:
	.loc 1 928 0
	mov	%d2, %d3
	ret
.LFE222:
	.size	UdsData_Parameter, .-UdsData_Parameter
	.section .text.MPU_ASIL_CODE
	.align 3
	.global	Crc_CalculateCRC8
	.type	Crc_CalculateCRC8, @function
Crc_CalculateCRC8:
.LFB227:
	.loc 1 1142 0
.LVL159:
	.loc 1 1148 0
	mov	%d2, 0
	jz	%d4, .L223
	.loc 1 1152 0
	movh.a	%a2, hi:CrcTable08
	.loc 1 1148 0
	mov	%d3, 0
	mov	%d15, 0
	mov	%d2, 255
	.loc 1 1152 0
	lea	%a2, [%a2] lo:CrcTable08
.LVL160:
.L225:
	.loc 1 1149 0
	jeq	%d3, %d5, .L224
.LVL161:
	.loc 1 1150 0
	addsc.a	%a15, %a4, %d15, 2
	.loc 1 1151 0
	ld.bu	%d3, [%a15]0
	.loc 1 1152 0
	xor	%d2, %d3
.LVL162:
	addsc.a	%a15, %a2, %d2, 0
	ld.bu	%d2, [%a15]0
.LVL163:
.L224:
	.loc 1 1148 0
	add	%d15, 1
	and	%d15, 255
.LVL164:
	mov	%d3, %d15
	jlt.u	%d15, %d4, .L225
	not	%d2
.LVL165:
	and	%d2, %d2, 255
.LVL166:
.L223:
	.loc 1 1157 0
	ret
.LFE227:
	.size	Crc_CalculateCRC8, .-Crc_CalculateCRC8
	.align 3
	.global	HsfbMeas_GetCalibData
	.type	HsfbMeas_GetCalibData, @function
HsfbMeas_GetCalibData:
.LFB230:
	.loc 1 1243 0
.LVL167:
	.loc 1 1244 0
	movh.a	%a5, hi:Calib_recieved
	ld.bu	%d15, [%a5] lo:Calib_recieved
	jeq	%d15, 1, .L232
	ret
.L232:
.LVL168:
.LBB252:
.LBB253:
	.loc 1 1056 0
	movh.a	%a15, hi:CalibrationData
	lea	%a3, [%a15] lo:CalibrationData
	ld.h	%d15, [%a15] lo:CalibrationData
	movh.a	%a6, hi:Trusted_AsilCalibData
	lea	%a2, [%a6] lo:Trusted_AsilCalibData
	.loc 1 1058 0
	ld.h	%d13, [%a3] 4
	.loc 1 1059 0
	ld.h	%d12, [%a3] 6
	.loc 1 1060 0
	ld.h	%d11, [%a3] 8
	.loc 1 1061 0
	ld.h	%d10, [%a3] 10
	.loc 1 1062 0
	ld.h	%d9, [%a3] 12
	.loc 1 1063 0
	ld.h	%d8, [%a3] 14
	.loc 1 1064 0
	ld.h	%d1, [%a3] 16
	.loc 1 1065 0
	ld.h	%d0, [%a3] 18
	.loc 1 1066 0
	ld.h	%d7, [%a3] 20
	.loc 1 1067 0
	ld.h	%d6, [%a3] 22
	.loc 1 1068 0
	ld.h	%d5, [%a3] 24
	.loc 1 1069 0
	ld.h	%d4, [%a3] 26
	.loc 1 1070 0
	ld.h	%d3, [%a3] 28
	.loc 1 1071 0
	ld.h	%d2, [%a3] 30
	.loc 1 1056 0
	st.h	[%a6] lo:Trusted_AsilCalibData, %d15
	.loc 1 1057 0
	ld.h	%d15, [%a3] 2
	st.h	[%a2] 2, %d15
	.loc 1 1058 0
	st.h	[%a2] 4, %d13
	.loc 1 1059 0
	st.h	[%a2] 6, %d12
	.loc 1 1060 0
	st.h	[%a2] 8, %d11
	.loc 1 1061 0
	st.h	[%a2] 10, %d10
	.loc 1 1062 0
	st.h	[%a2] 12, %d9
	.loc 1 1063 0
	st.h	[%a2] 14, %d8
	.loc 1 1064 0
	st.h	[%a2] 16, %d1
	.loc 1 1065 0
	st.h	[%a2] 18, %d0
	.loc 1 1066 0
	st.h	[%a2] 20, %d7
	.loc 1 1067 0
	st.h	[%a2] 22, %d6
	.loc 1 1068 0
	st.h	[%a2] 24, %d5
	.loc 1 1069 0
	st.h	[%a2] 26, %d4
	.loc 1 1070 0
	st.h	[%a2] 28, %d3
	.loc 1 1071 0
	st.h	[%a2] 30, %d2
.LVL169:
	lea	%a3, [%a3] 31
	lea	%a2, [%a2] 31
	.loc 1 1242 0
	lea	%a15, 113
.LVL170:
.L230:
	.loc 1 1074 0
	ld.bu	%d15, [+%a3]1
	st.b	[+%a2]1, %d15
	loop	%a15, .L230
.LBE253:
.LBE252:
	.loc 1 1251 0
	itof	%d13, %d13
	movh	%d15, 14332
	.loc 1 1257 0
	itof	%d9, %d9
	.loc 1 1260 0
	itof	%d1, %d1
	.loc 1 1251 0
	addi	%d15, %d15, -22398
	mul.f	%d13, %d13, %d15
	.loc 1 1257 0
	mul.f	%d9, %d9, %d15
	.loc 1 1260 0
	mul.f	%d1, %d1, %d15
	.loc 1 1254 0
	itof	%d11, %d11
	.loc 1 1263 0
	itof	%d7, %d7
	.loc 1 1266 0
	itof	%d5, %d5
	.loc 1 1254 0
	mul.f	%d11, %d11, %d15
	.loc 1 1263 0
	mul.f	%d7, %d7, %d15
	.loc 1 1266 0
	mul.f	%d15, %d5, %d15
	.loc 1 1251 0
	st.w	[%a4] 32, %d13
	.loc 1 1252 0
	itof	%d12, %d12
	movh	%d13, 14877
	.loc 1 1255 0
	itof	%d10, %d10
	.loc 1 1257 0
	st.w	[%a4] 24, %d9
	.loc 1 1258 0
	itof	%d8, %d8
	movh	%d9, 15396
	.loc 1 1260 0
	st.w	[%a4]0, %d1
	.loc 1 1261 0
	itof	%d0, %d0
	movh	%d1, 15606
	.loc 1 1264 0
	itof	%d6, %d6
	.loc 1 1267 0
	itof	%d4, %d4
	.loc 1 1269 0
	itof	%d3, %d3
	.loc 1 1270 0
	itof	%d2, %d2
	.loc 1 1261 0
	addi	%d1, %d1, -15729
	.loc 1 1252 0
	addi	%d13, %d13, 18770
	.loc 1 1258 0
	addi	%d9, %d9, -10486
	.loc 1 1252 0
	mul.f	%d12, %d12, %d13
	.loc 1 1261 0
	mul.f	%d0, %d0, %d1
	.loc 1 1264 0
	mul.f	%d6, %d6, %d1
	.loc 1 1267 0
	mul.f	%d4, %d4, %d1
	.loc 1 1269 0
	mul.f	%d3, %d3, %d1
	.loc 1 1255 0
	mul.f	%d13, %d10, %d13
	.loc 1 1258 0
	mul.f	%d8, %d8, %d9
	.loc 1 1270 0
	mul.f	%d1, %d2, %d1
	.loc 1 1266 0
	st.w	[%a4] 16, %d15
	.loc 1 1272 0
	mov	%d15, 0
	.loc 1 1252 0
	st.w	[%a4] 36, %d12
	.loc 1 1254 0
	st.w	[%a4] 40, %d11
	.loc 1 1255 0
	st.w	[%a4] 44, %d13
	.loc 1 1258 0
	st.w	[%a4] 28, %d8
	.loc 1 1261 0
	st.w	[%a4] 4, %d0
	.loc 1 1263 0
	st.w	[%a4] 8, %d7
	.loc 1 1264 0
	st.w	[%a4] 12, %d6
	.loc 1 1267 0
	st.w	[%a4] 20, %d4
	.loc 1 1269 0
	st.w	[%a4] 48, %d3
	.loc 1 1270 0
	st.w	[%a4] 52, %d1
	.loc 1 1272 0
	st.b	[%a5] lo:Calib_recieved, %d15
	ret
.LFE230:
	.size	HsfbMeas_GetCalibData, .-HsfbMeas_GetCalibData
	.align 3
	.global	HsfbCtrl_GetParamData
	.type	HsfbCtrl_GetParamData, @function
HsfbCtrl_GetParamData:
.LFB231:
	.loc 1 1277 0
.LVL171:
	.loc 1 1278 0
	movh.a	%a6, hi:Param_recieved
	ld.bu	%d15, [%a6] lo:Param_recieved
	jeq	%d15, 1, .L253
	ret
.L253:
.LVL172:
.LBB254:
.LBB255:
	.loc 1 1027 0
	movh.a	%a15, hi:ParameterData
	lea	%a3, [%a15] lo:ParameterData
	ld.h	%d3, [%a15] lo:ParameterData
	movh.a	%a15, hi:Trusted_AsilParamData
	lea	%a5, [%a15] lo:Trusted_AsilParamData
	.loc 1 1028 0
	ld.h	%d4, [%a3] 2
	.loc 1 1029 0
	ld.h	%d2, [%a3] 4
	.loc 1 1030 0
	ld.h	%d0, [%a3] 6
	.loc 1 1031 0
	ld.h	%d7, [%a3] 8
	.loc 1 1032 0
	ld.h	%d6, [%a3] 10
	.loc 1 1033 0
	ld.h	%d5, [%a3] 12
	.loc 1 1027 0
	st.h	[%a15] lo:Trusted_AsilParamData, %d3
	.loc 1 1028 0
	st.h	[%a5] 2, %d4
	.loc 1 1029 0
	st.h	[%a5] 4, %d2
	.loc 1 1030 0
	st.h	[%a5] 6, %d0
	.loc 1 1031 0
	st.h	[%a5] 8, %d7
	.loc 1 1032 0
	st.h	[%a5] 10, %d6
	.loc 1 1033 0
	st.h	[%a5] 12, %d5
.LVL173:
	lea	%a3, [%a3] 13
	lea	%a2, [%a5] 13
	.loc 1 1276 0
	lea	%a15, 185
.LVL174:
.L235:
	.loc 1 1036 0
	ld.bu	%d15, [+%a3]1
	st.b	[+%a2]1, %d15
	loop	%a15, .L235
.LBE255:
.LBE254:
	.loc 1 1284 0
	and	%d15, %d2, 4
	jz	%d15, .L236
	.loc 1 1286 0
	andn	%d2, %d2, ~(-5)
	st.h	[%a5] 4, %d2
	.loc 1 1294 0
	jz	%d3, .L237
.L238:
	.loc 1 1308 0
	movh	%d15, 17184
	st.w	[%a4]0, %d15
	.loc 1 1309 0
	movh	%d15, 16840
	st.w	[%a4] 4, %d15
	.loc 1 1310 0
	movh	%d15, 16000
	st.w	[%a4] 8, %d15
.L252:
	.loc 1 1311 0
	movh	%d15, 16656
	st.w	[%a4] 12, %d15
.L249:
	.loc 1 1314 0
	mov	%d15, 0
	st.b	[%a6] lo:Param_recieved, %d15
	ret
.L237:
	.loc 1 1294 0 discriminator 1
	jne	%d4, 1, .L238
	.loc 1 1298 0
	itof	%d6, %d6
	movh	%d15, 15396
	addi	%d15, %d15, -10486
	mul.f	%d6, %d6, %d15
	.loc 1 1299 0
	itof	%d5, %d5
	movh	%d15, 15821
	addi	%d15, %d15, -13107
	.loc 1 1296 0
	itof	%d0, %d0
	.loc 1 1299 0
	mul.f	%d5, %d5, %d15
	.loc 1 1297 0
	itof	%d7, %d7
	.loc 1 1301 0
	movh	%d15, 17312
	.loc 1 1296 0
	st.w	[%a4]0, %d0
	.loc 1 1298 0
	st.w	[%a4] 8, %d6
	.loc 1 1297 0
	st.w	[%a4] 4, %d7
	.loc 1 1299 0
	st.w	[%a4] 12, %d5
	.loc 1 1301 0
	cmp.f	%d15, %d0, %d15
	jnz.t	%d15, 2, .L239
	.loc 1 1301 0 is_stmt 0 discriminator 2
	mov	%d15, 0
	cmp.f	%d0, %d0, %d15
	jz.t	%d0, 0, .L240
.L239:
	.loc 1 1301 0 discriminator 1
	movh	%d15, 17184
	st.w	[%a4]0, %d15
.L240:
	.loc 1 1302 0 is_stmt 1
	movh	%d15, 17352
	cmp.f	%d15, %d7, %d15
	jnz.t	%d15, 2, .L242
	.loc 1 1302 0 is_stmt 0 discriminator 2
	mov	%d15, 0
	cmp.f	%d7, %d7, %d15
	jz.t	%d7, 0, .L243
.L242:
	.loc 1 1302 0 discriminator 1
	movh	%d15, 16840
	st.w	[%a4] 4, %d15
.L243:
	.loc 1 1303 0 is_stmt 1
	movh	%d15, 16672
	cmp.f	%d15, %d6, %d15
	jnz.t	%d15, 2, .L245
	.loc 1 1303 0 is_stmt 0 discriminator 2
	mov	%d15, 0
	cmp.f	%d6, %d6, %d15
	jz.t	%d6, 0, .L246
.L245:
	.loc 1 1303 0 discriminator 1
	movh	%d15, 16000
	st.w	[%a4] 8, %d15
.L246:
	.loc 1 1304 0 is_stmt 1
	movh	%d15, 16768
	cmp.f	%d15, %d5, %d15
	jnz.t	%d15, 2, .L252
	.loc 1 1304 0 is_stmt 0 discriminator 2
	mov	%d15, 0
	cmp.f	%d5, %d5, %d15
	jz.t	%d5, 0, .L249
	j	.L252
.L236:
	.loc 1 1290 0 is_stmt 1
	st.b	[%a6] lo:Param_recieved, %d15
	.loc 1 1291 0
	ret
.LFE231:
	.size	HsfbCtrl_GetParamData, .-HsfbCtrl_GetParamData
	.global	OpMode_flag
	.section .bss.MPU_QM_VAR_NOINIT,"aw",@nobits
	.align 3
	.type	OpMode_flag, @object
	.size	OpMode_flag, 2
OpMode_flag:
	.zero	2
	.global	CalibrationData
	.align 3
	.type	CalibrationData, @object
	.size	CalibrationData, 150
CalibrationData:
	.zero	150
	.global	ParameterData
	.align 3
	.type	ParameterData, @object
	.size	ParameterData, 200
ParameterData:
	.zero	200
	.global	ComServ_DevRx
	.align 3
	.type	ComServ_DevRx, @object
	.size	ComServ_DevRx, 6
ComServ_DevRx:
	.zero	6
	.global	readRslt
	.section .bss.MPU_ASIL_VAR_NOINIT,"aw",@nobits
	.align 3
	.type	readRslt, @object
	.size	readRslt, 4
readRslt:
	.zero	4
	.global	CANDriver_mg_bError
	.align 3
	.type	CANDriver_mg_bError, @object
	.size	CANDriver_mg_bError, 1
CANDriver_mg_bError:
	.zero	1
	.global	CanE2E
	.align 3
	.type	CanE2E, @object
	.size	CanE2E, 90
CanE2E:
	.zero	90
	.global	Trusted_AsilCalibData
	.align 3
	.type	Trusted_AsilCalibData, @object
	.size	Trusted_AsilCalibData, 150
Trusted_AsilCalibData:
	.zero	150
	.global	Trusted_AsilParamData
	.align 3
	.type	Trusted_AsilParamData, @object
	.size	Trusted_AsilParamData, 200
Trusted_AsilParamData:
	.zero	200
	.section .bss.MPU_QM_VAR_NOINIT
	.align 3
	.type	ComServ_BuildInfo, @object
	.size	ComServ_BuildInfo, 12
ComServ_BuildInfo:
	.zero	12
	.align 3
	.type	ComServ_Status, @object
	.size	ComServ_Status, 60
ComServ_Status:
	.zero	60
	.section .rodata.MPU_ASIL_CONST,"a",@progbits
	.type	CrcTable08, @object
	.size	CrcTable08, 256
CrcTable08:
	.byte	0
	.byte	7
	.byte	14
	.byte	9
	.byte	28
	.byte	27
	.byte	18
	.byte	21
	.byte	56
	.byte	63
	.byte	54
	.byte	49
	.byte	36
	.byte	35
	.byte	42
	.byte	45
	.byte	112
	.byte	119
	.byte	126
	.byte	121
	.byte	108
	.byte	107
	.byte	98
	.byte	101
	.byte	72
	.byte	79
	.byte	70
	.byte	65
	.byte	84
	.byte	83
	.byte	90
	.byte	93
	.byte	-32
	.byte	-25
	.byte	-18
	.byte	-23
	.byte	-4
	.byte	-5
	.byte	-14
	.byte	-11
	.byte	-40
	.byte	-33
	.byte	-42
	.byte	-47
	.byte	-60
	.byte	-61
	.byte	-54
	.byte	-51
	.byte	-112
	.byte	-105
	.byte	-98
	.byte	-103
	.byte	-116
	.byte	-117
	.byte	-126
	.byte	-123
	.byte	-88
	.byte	-81
	.byte	-90
	.byte	-95
	.byte	-76
	.byte	-77
	.byte	-70
	.byte	-67
	.byte	-57
	.byte	-64
	.byte	-55
	.byte	-50
	.byte	-37
	.byte	-36
	.byte	-43
	.byte	-46
	.byte	-1
	.byte	-8
	.byte	-15
	.byte	-10
	.byte	-29
	.byte	-28
	.byte	-19
	.byte	-22
	.byte	-73
	.byte	-80
	.byte	-71
	.byte	-66
	.byte	-85
	.byte	-84
	.byte	-91
	.byte	-94
	.byte	-113
	.byte	-120
	.byte	-127
	.byte	-122
	.byte	-109
	.byte	-108
	.byte	-99
	.byte	-102
	.byte	39
	.byte	32
	.byte	41
	.byte	46
	.byte	59
	.byte	60
	.byte	53
	.byte	50
	.byte	31
	.byte	24
	.byte	17
	.byte	22
	.byte	3
	.byte	4
	.byte	13
	.byte	10
	.byte	87
	.byte	80
	.byte	89
	.byte	94
	.byte	75
	.byte	76
	.byte	69
	.byte	66
	.byte	111
	.byte	104
	.byte	97
	.byte	102
	.byte	115
	.byte	116
	.byte	125
	.byte	122
	.byte	-119
	.byte	-114
	.byte	-121
	.byte	-128
	.byte	-107
	.byte	-110
	.byte	-101
	.byte	-100
	.byte	-79
	.byte	-74
	.byte	-65
	.byte	-72
	.byte	-83
	.byte	-86
	.byte	-93
	.byte	-92
	.byte	-7
	.byte	-2
	.byte	-9
	.byte	-16
	.byte	-27
	.byte	-30
	.byte	-21
	.byte	-20
	.byte	-63
	.byte	-58
	.byte	-49
	.byte	-56
	.byte	-35
	.byte	-38
	.byte	-45
	.byte	-44
	.byte	105
	.byte	110
	.byte	103
	.byte	96
	.byte	117
	.byte	114
	.byte	123
	.byte	124
	.byte	81
	.byte	86
	.byte	95
	.byte	88
	.byte	77
	.byte	74
	.byte	67
	.byte	68
	.byte	25
	.byte	30
	.byte	23
	.byte	16
	.byte	5
	.byte	2
	.byte	11
	.byte	12
	.byte	33
	.byte	38
	.byte	47
	.byte	40
	.byte	61
	.byte	58
	.byte	51
	.byte	52
	.byte	78
	.byte	73
	.byte	64
	.byte	71
	.byte	82
	.byte	85
	.byte	92
	.byte	91
	.byte	118
	.byte	113
	.byte	120
	.byte	127
	.byte	106
	.byte	109
	.byte	100
	.byte	99
	.byte	62
	.byte	57
	.byte	48
	.byte	55
	.byte	34
	.byte	37
	.byte	44
	.byte	43
	.byte	6
	.byte	1
	.byte	8
	.byte	15
	.byte	26
	.byte	29
	.byte	20
	.byte	19
	.byte	-82
	.byte	-87
	.byte	-96
	.byte	-89
	.byte	-78
	.byte	-75
	.byte	-68
	.byte	-69
	.byte	-106
	.byte	-111
	.byte	-104
	.byte	-97
	.byte	-118
	.byte	-115
	.byte	-124
	.byte	-125
	.byte	-34
	.byte	-39
	.byte	-48
	.byte	-41
	.byte	-62
	.byte	-59
	.byte	-52
	.byte	-53
	.byte	-26
	.byte	-31
	.byte	-24
	.byte	-17
	.byte	-6
	.byte	-3
	.byte	-12
	.byte	-13
	.section .data.MPU_QM_VAR_INIT,"aw",@progbits
	.align 3
	.type	Param_recieved, @object
	.size	Param_recieved, 1
Param_recieved:
	.zero	1
	.align 3
	.type	Calib_recieved, @object
	.size	Calib_recieved, 1
Calib_recieved:
	.zero	1
	.section .rodata.MPU_ASIL_CONST
	.align 2
	.type	CrcTable32, @object
	.size	CrcTable32, 64
CrcTable32:
	.word	0
	.word	498536548
	.word	997073096
	.word	651767980
	.word	1994146192
	.word	1802195444
	.word	1303535960
	.word	1342533948
	.word	-306674912
	.word	-267414716
	.word	-690576408
	.word	-882789492
	.word	-1687895376
	.word	-2032938284
	.word	-1609899400
	.word	-1111625188
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
	.uaword	.LFB219
	.uaword	.LFE219-.LFB219
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
	.uaword	.LFB205
	.uaword	.LFE205-.LFB205
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB206
	.uaword	.LFE206-.LFB206
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB207
	.uaword	.LFE207-.LFB207
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB208
	.uaword	.LFE208-.LFB208
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB209
	.uaword	.LFE209-.LFB209
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB210
	.uaword	.LFE210-.LFB210
	.align 2
.LEFDE14:
.LSFDE16:
	.uaword	.LEFDE16-.LASFDE16
.LASFDE16:
	.uaword	.Lframe0
	.uaword	.LFB213
	.uaword	.LFE213-.LFB213
	.align 2
.LEFDE16:
.LSFDE18:
	.uaword	.LEFDE18-.LASFDE18
.LASFDE18:
	.uaword	.Lframe0
	.uaword	.LFB212
	.uaword	.LFE212-.LFB212
	.align 2
.LEFDE18:
.LSFDE20:
	.uaword	.LEFDE20-.LASFDE20
.LASFDE20:
	.uaword	.Lframe0
	.uaword	.LFB211
	.uaword	.LFE211-.LFB211
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
	.uaword	.LFB226
	.uaword	.LFE226-.LFB226
	.align 2
.LEFDE24:
.LSFDE26:
	.uaword	.LEFDE26-.LASFDE26
.LASFDE26:
	.uaword	.Lframe0
	.uaword	.LFB223
	.uaword	.LFE223-.LFB223
	.align 2
.LEFDE26:
.LSFDE28:
	.uaword	.LEFDE28-.LASFDE28
.LASFDE28:
	.uaword	.Lframe0
	.uaword	.LFB222
	.uaword	.LFE222-.LFB222
	.align 2
.LEFDE28:
.LSFDE30:
	.uaword	.LEFDE30-.LASFDE30
.LASFDE30:
	.uaword	.Lframe0
	.uaword	.LFB227
	.uaword	.LFE227-.LFB227
	.align 2
.LEFDE30:
.LSFDE32:
	.uaword	.LEFDE32-.LASFDE32
.LASFDE32:
	.uaword	.Lframe0
	.uaword	.LFB230
	.uaword	.LFE230-.LFB230
	.align 2
.LEFDE32:
.LSFDE34:
	.uaword	.LEFDE34-.LASFDE34
.LASFDE34:
	.uaword	.Lframe0
	.uaword	.LFB231
	.uaword	.LFE231-.LFB231
	.align 2
.LEFDE34:
.section .text,"ax",@progbits
.Letext0:
	.file 2 "../30_Bsw/Common/rtwtypes.h"
	.file 3 "../30_Bsw/Common/Platform_Types.h"
	.file 4 "../30_Bsw/Common/TC21x/IfxCan_regdef.h"
	.file 5 "../30_Bsw/Common/TC21x/IfxCpu_regdef.h"
	.file 6 "../40_Appl/HsfbMeas/HsfbMeas_struct.h"
	.file 7 "../30_Bsw/ComStack/ComServ/ComServ_api.h"
	.file 8 "../40_Appl/HsfbDiag/HsfbDiag_struct.h"
	.file 9 "../40_Appl/HsfbState/HsfbState_struct.h"
	.file 10 "../40_Appl/HsfbNtc/HsfbNtc_struct.h"
	.file 11 "../40_Appl/HsfbSafety/HsfbSafety_struct.h"
	.file 12 "../40_Appl/HsfbApp/HsfbApp_struct.h"
	.file 13 "../40_Appl/HsfbCtrl/HsfbCtrl_struct.h"
	.file 14 "../40_Appl/HsfbState/HsfbState_types.h"
	.file 15 "../30_Bsw/Main/Main_api.h"
	.file 16 "../30_Bsw/Mcal/Can/can_cfg.h"
	.file 17 "../30_Bsw/Mcal/Can/can_driver.h"
	.file 18 "../30_Bsw/Mcal/Qspi/Qspi.h"
	.file 19 "../30_Bsw/Scheduler/Scheduler_api.h"
	.file 20 "../30_Bsw/iohw/Static/iohwsf.h"
	.file 21 "../30_Bsw/Pma/Pma_cfg.h"
	.file 22 "../30_Bsw/Pma/Pma_api.h"
	.file 23 "../30_Bsw/Mpu/mpu_api.h"
	.file 24 "../30_Bsw/Mcal/Port/Port_api.h"
	.file 25 "../40_Appl/HsfbState/HsfbState.h"
	.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x79fb
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.6.3 build on 2013-05-17"
	.byte	0x1
	.string	"../30_Bsw/ComStack/ComServ/Comserv.c"
	.string	"D:\\\\SVN\\\\IPB-11Kw\\\\LvDc-C01R0P0-Ceramicheater\\\\20_Make"
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_ranges0+0x3c0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x3
	.string	"uint8_T"
	.byte	0x2
	.byte	0x51
	.uaword	0xb7
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x3
	.string	"int16_T"
	.byte	0x2
	.byte	0x52
	.uaword	0xd7
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x3
	.string	"uint16_T"
	.byte	0x2
	.byte	0x53
	.uaword	0xf4
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.string	"int32_T"
	.byte	0x2
	.byte	0x54
	.uaword	0x119
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.string	"uint32_T"
	.byte	0x2
	.byte	0x55
	.uaword	0x130
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x3
	.string	"real32_T"
	.byte	0x2
	.byte	0x56
	.uaword	0x150
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
	.byte	0x2
	.byte	0x7d
	.uaword	0xa8
	.uleb128 0x3
	.string	"s16"
	.byte	0x2
	.byte	0x7e
	.uaword	0xc8
	.uleb128 0x3
	.string	"u16"
	.byte	0x2
	.byte	0x7f
	.uaword	0xe4
	.uleb128 0x3
	.string	"s32"
	.byte	0x2
	.byte	0x80
	.uaword	0x10a
	.uleb128 0x3
	.string	"u32"
	.byte	0x2
	.byte	0x81
	.uaword	0x120
	.uleb128 0x3
	.string	"f32"
	.byte	0x2
	.byte	0x82
	.uaword	0x140
	.uleb128 0x3
	.string	"bit"
	.byte	0x2
	.byte	0x84
	.uaword	0x163
	.uleb128 0x3
	.string	"uint16_t"
	.byte	0x2
	.byte	0x86
	.uaword	0x130
	.uleb128 0x3
	.string	"uint32_t"
	.byte	0x2
	.byte	0x87
	.uaword	0x174
	.uleb128 0x3
	.string	"uint8"
	.byte	0x3
	.byte	0x5b
	.uaword	0xb7
	.uleb128 0x3
	.string	"sint16"
	.byte	0x3
	.byte	0x5c
	.uaword	0xd7
	.uleb128 0x3
	.string	"uint16"
	.byte	0x3
	.byte	0x5d
	.uaword	0xf4
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x3
	.string	"uint32"
	.byte	0x3
	.byte	0x5f
	.uaword	0x174
	.uleb128 0x3
	.string	"boolean"
	.byte	0x3
	.byte	0x63
	.uaword	0xb7
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.string	"long long int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.string	"long long unsigned int"
	.uleb128 0x4
	.uaword	0x130
	.uleb128 0x5
	.uaword	0xb7
	.uaword	0x28f
	.uleb128 0x6
	.uaword	0x174
	.byte	0x7
	.byte	0
	.uleb128 0x5
	.uaword	0xb7
	.uaword	0x29f
	.uleb128 0x6
	.uaword	0x174
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.uaword	0xb7
	.uaword	0x2af
	.uleb128 0x6
	.uaword	0x174
	.byte	0x27
	.byte	0
	.uleb128 0x7
	.string	"_Ifx_CAN_ACCEN0_Bits"
	.byte	0x4
	.byte	0x4
	.byte	0x31
	.uaword	0x503
	.uleb128 0x8
	.string	"EN0"
	.byte	0x4
	.byte	0x33
	.uaword	0x130
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"EN1"
	.byte	0x4
	.byte	0x34
	.uaword	0x130
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"EN2"
	.byte	0x4
	.byte	0x35
	.uaword	0x130
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"EN3"
	.byte	0x4
	.byte	0x36
	.uaword	0x130
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"EN4"
	.byte	0x4
	.byte	0x37
	.uaword	0x130
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"EN5"
	.byte	0x4
	.byte	0x38
	.uaword	0x130
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"EN6"
	.byte	0x4
	.byte	0x39
	.uaword	0x130
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"EN7"
	.byte	0x4
	.byte	0x3a
	.uaword	0x130
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"EN8"
	.byte	0x4
	.byte	0x3b
	.uaword	0x130
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"EN9"
	.byte	0x4
	.byte	0x3c
	.uaword	0x130
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"EN10"
	.byte	0x4
	.byte	0x3d
	.uaword	0x130
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"EN11"
	.byte	0x4
	.byte	0x3e
	.uaword	0x130
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"EN12"
	.byte	0x4
	.byte	0x3f
	.uaword	0x130
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"EN13"
	.byte	0x4
	.byte	0x40
	.uaword	0x130
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"EN14"
	.byte	0x4
	.byte	0x41
	.uaword	0x130
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"EN15"
	.byte	0x4
	.byte	0x42
	.uaword	0x130
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"EN16"
	.byte	0x4
	.byte	0x43
	.uaword	0x130
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"EN17"
	.byte	0x4
	.byte	0x44
	.uaword	0x130
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"EN18"
	.byte	0x4
	.byte	0x45
	.uaword	0x130
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"EN19"
	.byte	0x4
	.byte	0x46
	.uaword	0x130
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"EN20"
	.byte	0x4
	.byte	0x47
	.uaword	0x130
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"EN21"
	.byte	0x4
	.byte	0x48
	.uaword	0x130
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"EN22"
	.byte	0x4
	.byte	0x49
	.uaword	0x130
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"EN23"
	.byte	0x4
	.byte	0x4a
	.uaword	0x130
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"EN24"
	.byte	0x4
	.byte	0x4b
	.uaword	0x130
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"EN25"
	.byte	0x4
	.byte	0x4c
	.uaword	0x130
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"EN26"
	.byte	0x4
	.byte	0x4d
	.uaword	0x130
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"EN27"
	.byte	0x4
	.byte	0x4e
	.uaword	0x130
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"EN28"
	.byte	0x4
	.byte	0x4f
	.uaword	0x130
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"EN29"
	.byte	0x4
	.byte	0x50
	.uaword	0x130
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"EN30"
	.byte	0x4
	.byte	0x51
	.uaword	0x130
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"EN31"
	.byte	0x4
	.byte	0x52
	.uaword	0x130
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_CAN_ACCEN0_Bits"
	.byte	0x4
	.byte	0x53
	.uaword	0x2af
	.uleb128 0x7
	.string	"_Ifx_CAN_ACCEN1_Bits"
	.byte	0x4
	.byte	0x4
	.byte	0x56
	.uaword	0x54d
	.uleb128 0x9
	.uaword	.LASF0
	.byte	0x4
	.byte	0x58
	.uaword	0x130
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_CAN_ACCEN1_Bits"
	.byte	0x4
	.byte	0x59
	.uaword	0x51e
	.uleb128 0x7
	.string	"_Ifx_CAN_CLC_Bits"
	.byte	0x4
	.byte	0x4
	.byte	0x5c
	.uaword	0x5db
	.uleb128 0x8
	.string	"DISR"
	.byte	0x4
	.byte	0x5e
	.uaword	0x130
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"DISS"
	.byte	0x4
	.byte	0x5f
	.uaword	0x130
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF1
	.byte	0x4
	.byte	0x60
	.uaword	0x130
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"EDIS"
	.byte	0x4
	.byte	0x61
	.uaword	0x130
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF2
	.byte	0x4
	.byte	0x62
	.uaword	0x130
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_CAN_CLC_Bits"
	.byte	0x4
	.byte	0x63
	.uaword	0x568
	.uleb128 0x7
	.string	"_Ifx_CAN_FDR_Bits"
	.byte	0x4
	.byte	0x4
	.byte	0x66
	.uaword	0x652
	.uleb128 0x8
	.string	"STEP"
	.byte	0x4
	.byte	0x68
	.uaword	0x130
	.byte	0x4
	.byte	0xa
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF3
	.byte	0x4
	.byte	0x69
	.uaword	0x130
	.byte	0x4
	.byte	0x4
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"DM"
	.byte	0x4
	.byte	0x6a
	.uaword	0x130
	.byte	0x4
	.byte	0x2
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF4
	.byte	0x4
	.byte	0x6b
	.uaword	0x130
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_CAN_FDR_Bits"
	.byte	0x4
	.byte	0x6c
	.uaword	0x5f3
	.uleb128 0x7
	.string	"_Ifx_CAN_ID_Bits"
	.byte	0x4
	.byte	0x4
	.byte	0x6f
	.uaword	0x6c4
	.uleb128 0x8
	.string	"MODREV"
	.byte	0x4
	.byte	0x71
	.uaword	0x130
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"MODTYPE"
	.byte	0x4
	.byte	0x72
	.uaword	0x130
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"MODNUMBER"
	.byte	0x4
	.byte	0x73
	.uaword	0x130
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_CAN_ID_Bits"
	.byte	0x4
	.byte	0x74
	.uaword	0x66a
	.uleb128 0x7
	.string	"_Ifx_CAN_KRST0_Bits"
	.byte	0x4
	.byte	0x4
	.byte	0x77
	.uaword	0x72f
	.uleb128 0x8
	.string	"RST"
	.byte	0x4
	.byte	0x79
	.uaword	0x130
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"RSTSTAT"
	.byte	0x4
	.byte	0x7a
	.uaword	0x130
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF1
	.byte	0x4
	.byte	0x7b
	.uaword	0x130
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_CAN_KRST0_Bits"
	.byte	0x4
	.byte	0x7c
	.uaword	0x6db
	.uleb128 0x7
	.string	"_Ifx_CAN_KRST1_Bits"
	.byte	0x4
	.byte	0x4
	.byte	0x7f
	.uaword	0x788
	.uleb128 0x8
	.string	"RST"
	.byte	0x4
	.byte	0x81
	.uaword	0x130
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF5
	.byte	0x4
	.byte	0x82
	.uaword	0x130
	.byte	0x4
	.byte	0x1f
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_CAN_KRST1_Bits"
	.byte	0x4
	.byte	0x83
	.uaword	0x749
	.uleb128 0x7
	.string	"_Ifx_CAN_KRSTCLR_Bits"
	.byte	0x4
	.byte	0x4
	.byte	0x86
	.uaword	0x7e3
	.uleb128 0x8
	.string	"CLR"
	.byte	0x4
	.byte	0x88
	.uaword	0x130
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF5
	.byte	0x4
	.byte	0x89
	.uaword	0x130
	.byte	0x4
	.byte	0x1f
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_CAN_KRSTCLR_Bits"
	.byte	0x4
	.byte	0x8a
	.uaword	0x7a2
	.uleb128 0x7
	.string	"_Ifx_CAN_LIST_Bits"
	.byte	0x4
	.byte	0x4
	.byte	0x8d
	.uaword	0x875
	.uleb128 0x8
	.string	"BEGIN"
	.byte	0x4
	.byte	0x8f
	.uaword	0x130
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"END"
	.byte	0x4
	.byte	0x90
	.uaword	0x130
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"SIZE"
	.byte	0x4
	.byte	0x91
	.uaword	0x130
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"EMPTY"
	.byte	0x4
	.byte	0x92
	.uaword	0x130
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF6
	.byte	0x4
	.byte	0x93
	.uaword	0x130
	.byte	0x4
	.byte	0x7
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_CAN_LIST_Bits"
	.byte	0x4
	.byte	0x94
	.uaword	0x7ff
	.uleb128 0x7
	.string	"_Ifx_CAN_MCR_Bits"
	.byte	0x4
	.byte	0x4
	.byte	0x97
	.uaword	0x915
	.uleb128 0x8
	.string	"CLKSEL"
	.byte	0x4
	.byte	0x99
	.uaword	0x130
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF2
	.byte	0x4
	.byte	0x9a
	.uaword	0x130
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"DXCM"
	.byte	0x4
	.byte	0x9b
	.uaword	0x130
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF7
	.byte	0x4
	.byte	0x9c
	.uaword	0x130
	.byte	0x4
	.byte	0x3
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"MPSEL"
	.byte	0x4
	.byte	0x9d
	.uaword	0x130
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF4
	.byte	0x4
	.byte	0x9e
	.uaword	0x130
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_CAN_MCR_Bits"
	.byte	0x4
	.byte	0x9f
	.uaword	0x88e
	.uleb128 0x7
	.string	"_Ifx_CAN_MECR_Bits"
	.byte	0x4
	.byte	0x4
	.byte	0xa2
	.uaword	0xa0a
	.uleb128 0x8
	.string	"TH"
	.byte	0x4
	.byte	0xa4
	.uaword	0x130
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"INP"
	.byte	0x4
	.byte	0xa5
	.uaword	0x130
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"NODE"
	.byte	0x4
	.byte	0xa6
	.uaword	0x130
	.byte	0x4
	.byte	0x3
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"reserved_23"
	.byte	0x4
	.byte	0xa7
	.uaword	0x130
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"ANYED"
	.byte	0x4
	.byte	0xa8
	.uaword	0x130
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"CAPEIE"
	.byte	0x4
	.byte	0xa9
	.uaword	0x130
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF8
	.byte	0x4
	.byte	0xaa
	.uaword	0x130
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"DEPTH"
	.byte	0x4
	.byte	0xab
	.uaword	0x130
	.byte	0x4
	.byte	0x3
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"SOF"
	.byte	0x4
	.byte	0xac
	.uaword	0x130
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"reserved_31"
	.byte	0x4
	.byte	0xad
	.uaword	0x130
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_CAN_MECR_Bits"
	.byte	0x4
	.byte	0xae
	.uaword	0x92d
	.uleb128 0x7
	.string	"_Ifx_CAN_MESTAT_Bits"
	.byte	0x4
	.byte	0x4
	.byte	0xb1
	.uaword	0xa92
	.uleb128 0x8
	.string	"CAPT"
	.byte	0x4
	.byte	0xb3
	.uaword	0x130
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"CAPRED"
	.byte	0x4
	.byte	0xb4
	.uaword	0x130
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"CAPE"
	.byte	0x4
	.byte	0xb5
	.uaword	0x130
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"reserved_18"
	.byte	0x4
	.byte	0xb6
	.uaword	0x130
	.byte	0x4
	.byte	0xe
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_CAN_MESTAT_Bits"
	.byte	0x4
	.byte	0xb7
	.uaword	0xa23
	.uleb128 0x7
	.string	"_Ifx_CAN_MITR_Bits"
	.byte	0x4
	.byte	0x4
	.byte	0xba
	.uaword	0xaea
	.uleb128 0x8
	.string	"IT"
	.byte	0x4
	.byte	0xbc
	.uaword	0x130
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF4
	.byte	0x4
	.byte	0xbd
	.uaword	0x130
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_CAN_MITR_Bits"
	.byte	0x4
	.byte	0xbe
	.uaword	0xaad
	.uleb128 0x7
	.string	"_Ifx_CAN_MO_AMR_Bits"
	.byte	0x4
	.byte	0x4
	.byte	0xc1
	.uaword	0xb54
	.uleb128 0x8
	.string	"AM"
	.byte	0x4
	.byte	0xc3
	.uaword	0x130
	.byte	0x4
	.byte	0x1d
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"MIDE"
	.byte	0x4
	.byte	0xc4
	.uaword	0x130
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF9
	.byte	0x4
	.byte	0xc5
	.uaword	0x130
	.byte	0x4
	.byte	0x2
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_CAN_MO_AMR_Bits"
	.byte	0x4
	.byte	0xc6
	.uaword	0xb03
	.uleb128 0x7
	.string	"_Ifx_CAN_MO_AR_Bits"
	.byte	0x4
	.byte	0x4
	.byte	0xc9
	.uaword	0xbbe
	.uleb128 0x8
	.string	"ID"
	.byte	0x4
	.byte	0xcb
	.uaword	0x130
	.byte	0x4
	.byte	0x1d
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"IDE"
	.byte	0x4
	.byte	0xcc
	.uaword	0x130
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"PRI"
	.byte	0x4
	.byte	0xcd
	.uaword	0x130
	.byte	0x4
	.byte	0x2
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_CAN_MO_AR_Bits"
	.byte	0x4
	.byte	0xce
	.uaword	0xb6f
	.uleb128 0x7
	.string	"_Ifx_CAN_MO_CTR_Bits"
	.byte	0x4
	.byte	0x4
	.byte	0xd1
	.uaword	0xe26
	.uleb128 0x8
	.string	"RESRXPND"
	.byte	0x4
	.byte	0xd3
	.uaword	0x130
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"RESTXPND"
	.byte	0x4
	.byte	0xd4
	.uaword	0x130
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"RESRXUPD"
	.byte	0x4
	.byte	0xd5
	.uaword	0x130
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"RESNEWDAT"
	.byte	0x4
	.byte	0xd6
	.uaword	0x130
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"RESMSGLST"
	.byte	0x4
	.byte	0xd7
	.uaword	0x130
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"RESMSGVAL"
	.byte	0x4
	.byte	0xd8
	.uaword	0x130
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"RESRTSEL"
	.byte	0x4
	.byte	0xd9
	.uaword	0x130
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"RESRXEN"
	.byte	0x4
	.byte	0xda
	.uaword	0x130
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"RESTXRQ"
	.byte	0x4
	.byte	0xdb
	.uaword	0x130
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"RESTXEN0"
	.byte	0x4
	.byte	0xdc
	.uaword	0x130
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"RESTXEN1"
	.byte	0x4
	.byte	0xdd
	.uaword	0x130
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"RESDIR"
	.byte	0x4
	.byte	0xde
	.uaword	0x130
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF10
	.byte	0x4
	.byte	0xdf
	.uaword	0x130
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"SETRXPND"
	.byte	0x4
	.byte	0xe0
	.uaword	0x130
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"SETTXPND"
	.byte	0x4
	.byte	0xe1
	.uaword	0x130
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"SETRXUPD"
	.byte	0x4
	.byte	0xe2
	.uaword	0x130
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"SETNEWDAT"
	.byte	0x4
	.byte	0xe3
	.uaword	0x130
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"SETMSGLST"
	.byte	0x4
	.byte	0xe4
	.uaword	0x130
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"SETMSGVAL"
	.byte	0x4
	.byte	0xe5
	.uaword	0x130
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"SETRTSEL"
	.byte	0x4
	.byte	0xe6
	.uaword	0x130
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"SETRXEN"
	.byte	0x4
	.byte	0xe7
	.uaword	0x130
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"SETTXRQ"
	.byte	0x4
	.byte	0xe8
	.uaword	0x130
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"SETTXEN0"
	.byte	0x4
	.byte	0xe9
	.uaword	0x130
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"SETTXEN1"
	.byte	0x4
	.byte	0xea
	.uaword	0x130
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"SETDIR"
	.byte	0x4
	.byte	0xeb
	.uaword	0x130
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF11
	.byte	0x4
	.byte	0xec
	.uaword	0x130
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_CAN_MO_CTR_Bits"
	.byte	0x4
	.byte	0xed
	.uaword	0xbd8
	.uleb128 0x7
	.string	"_Ifx_CAN_MO_DATAH_Bits"
	.byte	0x4
	.byte	0x4
	.byte	0xf0
	.uaword	0xea5
	.uleb128 0x8
	.string	"DB4"
	.byte	0x4
	.byte	0xf2
	.uaword	0x130
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"DB5"
	.byte	0x4
	.byte	0xf3
	.uaword	0x130
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"DB6"
	.byte	0x4
	.byte	0xf4
	.uaword	0x130
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"DB7"
	.byte	0x4
	.byte	0xf5
	.uaword	0x130
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_CAN_MO_DATAH_Bits"
	.byte	0x4
	.byte	0xf6
	.uaword	0xe41
	.uleb128 0x7
	.string	"_Ifx_CAN_MO_DATAL_Bits"
	.byte	0x4
	.byte	0x4
	.byte	0xf9
	.uaword	0xf26
	.uleb128 0x8
	.string	"DB0"
	.byte	0x4
	.byte	0xfb
	.uaword	0x130
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"DB1"
	.byte	0x4
	.byte	0xfc
	.uaword	0x130
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"DB2"
	.byte	0x4
	.byte	0xfd
	.uaword	0x130
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"DB3"
	.byte	0x4
	.byte	0xfe
	.uaword	0x130
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_CAN_MO_DATAL_Bits"
	.byte	0x4
	.byte	0xff
	.uaword	0xec2
	.uleb128 0xa
	.string	"_Ifx_CAN_MO_EDATA0_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x102
	.uaword	0xfad
	.uleb128 0xb
	.string	"DB0"
	.byte	0x4
	.uahalf	0x104
	.uaword	0x130
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"DB1"
	.byte	0x4
	.uahalf	0x105
	.uaword	0x130
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"DB2"
	.byte	0x4
	.uahalf	0x106
	.uaword	0x130
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"DB3"
	.byte	0x4
	.uahalf	0x107
	.uaword	0x130
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_CAN_MO_EDATA0_Bits"
	.byte	0x4
	.uahalf	0x108
	.uaword	0xf43
	.uleb128 0xa
	.string	"_Ifx_CAN_MO_EDATA1_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x10b
	.uaword	0x1036
	.uleb128 0xb
	.string	"DB0"
	.byte	0x4
	.uahalf	0x10d
	.uaword	0x130
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"DB1"
	.byte	0x4
	.uahalf	0x10e
	.uaword	0x130
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"DB2"
	.byte	0x4
	.uahalf	0x10f
	.uaword	0x130
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"DB3"
	.byte	0x4
	.uahalf	0x110
	.uaword	0x130
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_CAN_MO_EDATA1_Bits"
	.byte	0x4
	.uahalf	0x111
	.uaword	0xfcc
	.uleb128 0xa
	.string	"_Ifx_CAN_MO_EDATA2_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x114
	.uaword	0x10bf
	.uleb128 0xb
	.string	"DB0"
	.byte	0x4
	.uahalf	0x116
	.uaword	0x130
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"DB1"
	.byte	0x4
	.uahalf	0x117
	.uaword	0x130
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"DB2"
	.byte	0x4
	.uahalf	0x118
	.uaword	0x130
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"DB3"
	.byte	0x4
	.uahalf	0x119
	.uaword	0x130
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_CAN_MO_EDATA2_Bits"
	.byte	0x4
	.uahalf	0x11a
	.uaword	0x1055
	.uleb128 0xa
	.string	"_Ifx_CAN_MO_EDATA3_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x11d
	.uaword	0x1148
	.uleb128 0xb
	.string	"DB0"
	.byte	0x4
	.uahalf	0x11f
	.uaword	0x130
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"DB1"
	.byte	0x4
	.uahalf	0x120
	.uaword	0x130
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"DB2"
	.byte	0x4
	.uahalf	0x121
	.uaword	0x130
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"DB3"
	.byte	0x4
	.uahalf	0x122
	.uaword	0x130
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_CAN_MO_EDATA3_Bits"
	.byte	0x4
	.uahalf	0x123
	.uaword	0x10de
	.uleb128 0xa
	.string	"_Ifx_CAN_MO_EDATA4_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x126
	.uaword	0x11d1
	.uleb128 0xb
	.string	"DB0"
	.byte	0x4
	.uahalf	0x128
	.uaword	0x130
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"DB1"
	.byte	0x4
	.uahalf	0x129
	.uaword	0x130
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"DB2"
	.byte	0x4
	.uahalf	0x12a
	.uaword	0x130
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"DB3"
	.byte	0x4
	.uahalf	0x12b
	.uaword	0x130
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_CAN_MO_EDATA4_Bits"
	.byte	0x4
	.uahalf	0x12c
	.uaword	0x1167
	.uleb128 0xa
	.string	"_Ifx_CAN_MO_EDATA5_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x12f
	.uaword	0x125a
	.uleb128 0xb
	.string	"DB0"
	.byte	0x4
	.uahalf	0x131
	.uaword	0x130
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"DB1"
	.byte	0x4
	.uahalf	0x132
	.uaword	0x130
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"DB2"
	.byte	0x4
	.uahalf	0x133
	.uaword	0x130
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"DB3"
	.byte	0x4
	.uahalf	0x134
	.uaword	0x130
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_CAN_MO_EDATA5_Bits"
	.byte	0x4
	.uahalf	0x135
	.uaword	0x11f0
	.uleb128 0xa
	.string	"_Ifx_CAN_MO_EDATA6_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x138
	.uaword	0x12e3
	.uleb128 0xb
	.string	"DB0"
	.byte	0x4
	.uahalf	0x13a
	.uaword	0x130
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"DB1"
	.byte	0x4
	.uahalf	0x13b
	.uaword	0x130
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"DB2"
	.byte	0x4
	.uahalf	0x13c
	.uaword	0x130
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"DB3"
	.byte	0x4
	.uahalf	0x13d
	.uaword	0x130
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_CAN_MO_EDATA6_Bits"
	.byte	0x4
	.uahalf	0x13e
	.uaword	0x1279
	.uleb128 0xa
	.string	"_Ifx_CAN_MO_FCR_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x141
	.uaword	0x14a2
	.uleb128 0xb
	.string	"MMC"
	.byte	0x4
	.uahalf	0x143
	.uaword	0x130
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"RXTOE"
	.byte	0x4
	.uahalf	0x144
	.uaword	0x130
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"BRS"
	.byte	0x4
	.uahalf	0x145
	.uaword	0x130
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"FDF"
	.byte	0x4
	.uahalf	0x146
	.uaword	0x130
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"reserved_7"
	.byte	0x4
	.uahalf	0x147
	.uaword	0x130
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"GDFS"
	.byte	0x4
	.uahalf	0x148
	.uaword	0x130
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"IDC"
	.byte	0x4
	.uahalf	0x149
	.uaword	0x130
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"DLCC"
	.byte	0x4
	.uahalf	0x14a
	.uaword	0x130
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"DATC"
	.byte	0x4
	.uahalf	0x14b
	.uaword	0x130
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.uaword	.LASF10
	.byte	0x4
	.uahalf	0x14c
	.uaword	0x130
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"RXIE"
	.byte	0x4
	.uahalf	0x14d
	.uaword	0x130
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"TXIE"
	.byte	0x4
	.uahalf	0x14e
	.uaword	0x130
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"OVIE"
	.byte	0x4
	.uahalf	0x14f
	.uaword	0x130
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"reserved_19"
	.byte	0x4
	.uahalf	0x150
	.uaword	0x130
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"FRREN"
	.byte	0x4
	.uahalf	0x151
	.uaword	0x130
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"RMM"
	.byte	0x4
	.uahalf	0x152
	.uaword	0x130
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"SDT"
	.byte	0x4
	.uahalf	0x153
	.uaword	0x130
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"STT"
	.byte	0x4
	.uahalf	0x154
	.uaword	0x130
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"DLC"
	.byte	0x4
	.uahalf	0x155
	.uaword	0x130
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.uaword	.LASF11
	.byte	0x4
	.uahalf	0x156
	.uaword	0x130
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_CAN_MO_FCR_Bits"
	.byte	0x4
	.uahalf	0x157
	.uaword	0x1302
	.uleb128 0xa
	.string	"_Ifx_CAN_MO_FGPR_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x15a
	.uaword	0x1526
	.uleb128 0xb
	.string	"BOT"
	.byte	0x4
	.uahalf	0x15c
	.uaword	0x130
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"TOP"
	.byte	0x4
	.uahalf	0x15d
	.uaword	0x130
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"CUR"
	.byte	0x4
	.uahalf	0x15e
	.uaword	0x130
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"SEL"
	.byte	0x4
	.uahalf	0x15f
	.uaword	0x130
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_CAN_MO_FGPR_Bits"
	.byte	0x4
	.uahalf	0x160
	.uaword	0x14be
	.uleb128 0xa
	.string	"_Ifx_CAN_MO_IPR_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x163
	.uaword	0x15b1
	.uleb128 0xb
	.string	"RXINP"
	.byte	0x4
	.uahalf	0x165
	.uaword	0x130
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"TXINP"
	.byte	0x4
	.uahalf	0x166
	.uaword	0x130
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"MPN"
	.byte	0x4
	.uahalf	0x167
	.uaword	0x130
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"CFCVAL"
	.byte	0x4
	.uahalf	0x168
	.uaword	0x130
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_CAN_MO_IPR_Bits"
	.byte	0x4
	.uahalf	0x169
	.uaword	0x1543
	.uleb128 0xa
	.string	"_Ifx_CAN_MO_STAT_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x16c
	.uaword	0x1717
	.uleb128 0xb
	.string	"RXPND"
	.byte	0x4
	.uahalf	0x16e
	.uaword	0x130
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"TXPND"
	.byte	0x4
	.uahalf	0x16f
	.uaword	0x130
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"RXUPD"
	.byte	0x4
	.uahalf	0x170
	.uaword	0x130
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"NEWDAT"
	.byte	0x4
	.uahalf	0x171
	.uaword	0x130
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"MSGLST"
	.byte	0x4
	.uahalf	0x172
	.uaword	0x130
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"MSGVAL"
	.byte	0x4
	.uahalf	0x173
	.uaword	0x130
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"RTSEL"
	.byte	0x4
	.uahalf	0x174
	.uaword	0x130
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"RXEN"
	.byte	0x4
	.uahalf	0x175
	.uaword	0x130
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"TXRQ"
	.byte	0x4
	.uahalf	0x176
	.uaword	0x130
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"TXEN0"
	.byte	0x4
	.uahalf	0x177
	.uaword	0x130
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"TXEN1"
	.byte	0x4
	.uahalf	0x178
	.uaword	0x130
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"DIR"
	.byte	0x4
	.uahalf	0x179
	.uaword	0x130
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"LIST"
	.byte	0x4
	.uahalf	0x17a
	.uaword	0x130
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"PPREV"
	.byte	0x4
	.uahalf	0x17b
	.uaword	0x130
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"PNEXT"
	.byte	0x4
	.uahalf	0x17c
	.uaword	0x130
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_CAN_MO_STAT_Bits"
	.byte	0x4
	.uahalf	0x17d
	.uaword	0x15cd
	.uleb128 0xa
	.string	"_Ifx_CAN_MSID_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x180
	.uaword	0x1777
	.uleb128 0xb
	.string	"INDEX"
	.byte	0x4
	.uahalf	0x182
	.uaword	0x130
	.byte	0x4
	.byte	0x6
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.uaword	.LASF12
	.byte	0x4
	.uahalf	0x183
	.uaword	0x130
	.byte	0x4
	.byte	0x1a
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_CAN_MSID_Bits"
	.byte	0x4
	.uahalf	0x184
	.uaword	0x1734
	.uleb128 0xa
	.string	"_Ifx_CAN_MSIMASK_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x187
	.uaword	0x17c2
	.uleb128 0xb
	.string	"IM"
	.byte	0x4
	.uahalf	0x189
	.uaword	0x130
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_CAN_MSIMASK_Bits"
	.byte	0x4
	.uahalf	0x18a
	.uaword	0x1791
	.uleb128 0xa
	.string	"_Ifx_CAN_MSPND_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x18d
	.uaword	0x180f
	.uleb128 0xb
	.string	"PND"
	.byte	0x4
	.uahalf	0x18f
	.uaword	0x130
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_CAN_MSPND_Bits"
	.byte	0x4
	.uahalf	0x190
	.uaword	0x17df
	.uleb128 0xa
	.string	"_Ifx_CAN_N_BTEVR_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x193
	.uaword	0x18f1
	.uleb128 0xb
	.string	"BRP"
	.byte	0x4
	.uahalf	0x195
	.uaword	0x130
	.byte	0x4
	.byte	0x6
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.uaword	.LASF12
	.byte	0x4
	.uahalf	0x196
	.uaword	0x130
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"SJW"
	.byte	0x4
	.uahalf	0x197
	.uaword	0x130
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.uaword	.LASF10
	.byte	0x4
	.uahalf	0x198
	.uaword	0x130
	.byte	0x4
	.byte	0x3
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"DIV8"
	.byte	0x4
	.uahalf	0x199
	.uaword	0x130
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"TSEG2"
	.byte	0x4
	.uahalf	0x19a
	.uaword	0x130
	.byte	0x4
	.byte	0x5
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.uaword	.LASF13
	.byte	0x4
	.uahalf	0x19b
	.uaword	0x130
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"TSEG1"
	.byte	0x4
	.uahalf	0x19c
	.uaword	0x130
	.byte	0x4
	.byte	0x6
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.uaword	.LASF11
	.byte	0x4
	.uahalf	0x19d
	.uaword	0x130
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_CAN_N_BTEVR_Bits"
	.byte	0x4
	.uahalf	0x19e
	.uaword	0x182a
	.uleb128 0xa
	.string	"_Ifx_CAN_N_BTR_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x1a1
	.uaword	0x199d
	.uleb128 0xb
	.string	"BRP"
	.byte	0x4
	.uahalf	0x1a3
	.uaword	0x130
	.byte	0x4
	.byte	0x6
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"SJW"
	.byte	0x4
	.uahalf	0x1a4
	.uaword	0x130
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"TSEG1"
	.byte	0x4
	.uahalf	0x1a5
	.uaword	0x130
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"TSEG2"
	.byte	0x4
	.uahalf	0x1a6
	.uaword	0x130
	.byte	0x4
	.byte	0x3
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"DIV8"
	.byte	0x4
	.uahalf	0x1a7
	.uaword	0x130
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.uaword	.LASF4
	.byte	0x4
	.uahalf	0x1a8
	.uaword	0x130
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_CAN_N_BTR_Bits"
	.byte	0x4
	.uahalf	0x1a9
	.uaword	0x190e
	.uleb128 0xa
	.string	"_Ifx_CAN_N_CR_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x1ac
	.uaword	0x1aa9
	.uleb128 0xb
	.string	"INIT"
	.byte	0x4
	.uahalf	0x1ae
	.uaword	0x130
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"TRIE"
	.byte	0x4
	.uahalf	0x1af
	.uaword	0x130
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"LECIE"
	.byte	0x4
	.uahalf	0x1b0
	.uaword	0x130
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"ALIE"
	.byte	0x4
	.uahalf	0x1b1
	.uaword	0x130
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"CANDIS"
	.byte	0x4
	.uahalf	0x1b2
	.uaword	0x130
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"TXDIS"
	.byte	0x4
	.uahalf	0x1b3
	.uaword	0x130
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"CCE"
	.byte	0x4
	.uahalf	0x1b4
	.uaword	0x130
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"CALM"
	.byte	0x4
	.uahalf	0x1b5
	.uaword	0x130
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"SUSEN"
	.byte	0x4
	.uahalf	0x1b6
	.uaword	0x130
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"FDEN"
	.byte	0x4
	.uahalf	0x1b7
	.uaword	0x130
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.uaword	.LASF3
	.byte	0x4
	.uahalf	0x1b8
	.uaword	0x130
	.byte	0x4
	.byte	0x16
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_CAN_N_CR_Bits"
	.byte	0x4
	.uahalf	0x1b9
	.uaword	0x19b8
	.uleb128 0xa
	.string	"_Ifx_CAN_N_ECNT_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x1bc
	.uaword	0x1b55
	.uleb128 0xb
	.string	"REC"
	.byte	0x4
	.uahalf	0x1be
	.uaword	0x130
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"TEC"
	.byte	0x4
	.uahalf	0x1bf
	.uaword	0x130
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"EWRNLVL"
	.byte	0x4
	.uahalf	0x1c0
	.uaword	0x130
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"LETD"
	.byte	0x4
	.uahalf	0x1c1
	.uaword	0x130
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"LEINC"
	.byte	0x4
	.uahalf	0x1c2
	.uaword	0x130
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.uaword	.LASF8
	.byte	0x4
	.uahalf	0x1c3
	.uaword	0x130
	.byte	0x4
	.byte	0x6
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_CAN_N_ECNT_Bits"
	.byte	0x4
	.uahalf	0x1c4
	.uaword	0x1ac3
	.uleb128 0xa
	.string	"_Ifx_CAN_N_FBTR_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x1c7
	.uaword	0x1bf2
	.uleb128 0xb
	.string	"FBRP"
	.byte	0x4
	.uahalf	0x1c9
	.uaword	0x130
	.byte	0x4
	.byte	0x6
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"FSJW"
	.byte	0x4
	.uahalf	0x1ca
	.uaword	0x130
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"FTSEG1"
	.byte	0x4
	.uahalf	0x1cb
	.uaword	0x130
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"FTSEG2"
	.byte	0x4
	.uahalf	0x1cc
	.uaword	0x130
	.byte	0x4
	.byte	0x3
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.uaword	.LASF14
	.byte	0x4
	.uahalf	0x1cd
	.uaword	0x130
	.byte	0x4
	.byte	0x11
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_CAN_N_FBTR_Bits"
	.byte	0x4
	.uahalf	0x1ce
	.uaword	0x1b71
	.uleb128 0xa
	.string	"_Ifx_CAN_N_FCR_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x1d1
	.uaword	0x1cb2
	.uleb128 0xb
	.string	"CFC"
	.byte	0x4
	.uahalf	0x1d3
	.uaword	0x130
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"CFSEL"
	.byte	0x4
	.uahalf	0x1d4
	.uaword	0x130
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"CFMOD"
	.byte	0x4
	.uahalf	0x1d5
	.uaword	0x130
	.byte	0x4
	.byte	0x2
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.uaword	.LASF13
	.byte	0x4
	.uahalf	0x1d6
	.uaword	0x130
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"CFCIE"
	.byte	0x4
	.uahalf	0x1d7
	.uaword	0x130
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"CFCOV"
	.byte	0x4
	.uahalf	0x1d8
	.uaword	0x130
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.uaword	.LASF15
	.byte	0x4
	.uahalf	0x1d9
	.uaword	0x130
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_CAN_N_FCR_Bits"
	.byte	0x4
	.uahalf	0x1da
	.uaword	0x1c0e
	.uleb128 0xa
	.string	"_Ifx_CAN_N_IPR_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x1dd
	.uaword	0x1d6b
	.uleb128 0xb
	.string	"ALINP"
	.byte	0x4
	.uahalf	0x1df
	.uaword	0x130
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"LECINP"
	.byte	0x4
	.uahalf	0x1e0
	.uaword	0x130
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"TRINP"
	.byte	0x4
	.uahalf	0x1e1
	.uaword	0x130
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"CFCINP"
	.byte	0x4
	.uahalf	0x1e2
	.uaword	0x130
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"TEINP"
	.byte	0x4
	.uahalf	0x1e3
	.uaword	0x130
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"reserved_20"
	.byte	0x4
	.uahalf	0x1e4
	.uaword	0x130
	.byte	0x4
	.byte	0xc
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_CAN_N_IPR_Bits"
	.byte	0x4
	.uahalf	0x1e5
	.uaword	0x1ccd
	.uleb128 0xa
	.string	"_Ifx_CAN_N_PCR_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x1e8
	.uaword	0x1df5
	.uleb128 0xb
	.string	"RXSEL"
	.byte	0x4
	.uahalf	0x1ea
	.uaword	0x130
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"reserved_3"
	.byte	0x4
	.uahalf	0x1eb
	.uaword	0x130
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"LBM"
	.byte	0x4
	.uahalf	0x1ec
	.uaword	0x130
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.uaword	.LASF7
	.byte	0x4
	.uahalf	0x1ed
	.uaword	0x130
	.byte	0x4
	.byte	0x17
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_CAN_N_PCR_Bits"
	.byte	0x4
	.uahalf	0x1ee
	.uaword	0x1d86
	.uleb128 0xa
	.string	"_Ifx_CAN_N_SR_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x1f1
	.uaword	0x1f10
	.uleb128 0xb
	.string	"LEC"
	.byte	0x4
	.uahalf	0x1f3
	.uaword	0x130
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"TXOK"
	.byte	0x4
	.uahalf	0x1f4
	.uaword	0x130
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"RXOK"
	.byte	0x4
	.uahalf	0x1f5
	.uaword	0x130
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"ALERT"
	.byte	0x4
	.uahalf	0x1f6
	.uaword	0x130
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"EWRN"
	.byte	0x4
	.uahalf	0x1f7
	.uaword	0x130
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"BOFF"
	.byte	0x4
	.uahalf	0x1f8
	.uaword	0x130
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"LLE"
	.byte	0x4
	.uahalf	0x1f9
	.uaword	0x130
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"LOE"
	.byte	0x4
	.uahalf	0x1fa
	.uaword	0x130
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"SUSACK"
	.byte	0x4
	.uahalf	0x1fb
	.uaword	0x130
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"RESI"
	.byte	0x4
	.uahalf	0x1fc
	.uaword	0x130
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"FLEC"
	.byte	0x4
	.uahalf	0x1fd
	.uaword	0x130
	.byte	0x4
	.byte	0x3
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.uaword	.LASF14
	.byte	0x4
	.uahalf	0x1fe
	.uaword	0x130
	.byte	0x4
	.byte	0x11
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_CAN_N_SR_Bits"
	.byte	0x4
	.uahalf	0x1ff
	.uaword	0x1e10
	.uleb128 0xa
	.string	"_Ifx_CAN_N_TCCR_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x202
	.uaword	0x1fa8
	.uleb128 0xd
	.uaword	.LASF0
	.byte	0x4
	.uahalf	0x204
	.uaword	0x130
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"TPSC"
	.byte	0x4
	.uahalf	0x205
	.uaword	0x130
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.uaword	.LASF10
	.byte	0x4
	.uahalf	0x206
	.uaword	0x130
	.byte	0x4
	.byte	0x6
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"TRIGSRC"
	.byte	0x4
	.uahalf	0x207
	.uaword	0x130
	.byte	0x4
	.byte	0x3
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.uaword	.LASF13
	.byte	0x4
	.uahalf	0x208
	.uaword	0x130
	.byte	0x4
	.byte	0xb
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_CAN_N_TCCR_Bits"
	.byte	0x4
	.uahalf	0x209
	.uaword	0x1f2a
	.uleb128 0xa
	.string	"_Ifx_CAN_N_TDCR_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x20c
	.uaword	0x2058
	.uleb128 0xb
	.string	"TDCV"
	.byte	0x4
	.uahalf	0x20e
	.uaword	0x130
	.byte	0x4
	.byte	0x5
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"reserved_5"
	.byte	0x4
	.uahalf	0x20f
	.uaword	0x130
	.byte	0x4
	.byte	0x3
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"TDCO"
	.byte	0x4
	.uahalf	0x210
	.uaword	0x130
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.uaword	.LASF10
	.byte	0x4
	.uahalf	0x211
	.uaword	0x130
	.byte	0x4
	.byte	0x3
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"TDC"
	.byte	0x4
	.uahalf	0x212
	.uaword	0x130
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.uaword	.LASF4
	.byte	0x4
	.uahalf	0x213
	.uaword	0x130
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_CAN_N_TDCR_Bits"
	.byte	0x4
	.uahalf	0x214
	.uaword	0x1fc4
	.uleb128 0xa
	.string	"_Ifx_CAN_N_TRTR_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x217
	.uaword	0x20f0
	.uleb128 0xb
	.string	"RELOAD"
	.byte	0x4
	.uahalf	0x219
	.uaword	0x130
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.uaword	.LASF4
	.byte	0x4
	.uahalf	0x21a
	.uaword	0x130
	.byte	0x4
	.byte	0x6
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"TEIE"
	.byte	0x4
	.uahalf	0x21b
	.uaword	0x130
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"TE"
	.byte	0x4
	.uahalf	0x21c
	.uaword	0x130
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.uaword	.LASF15
	.byte	0x4
	.uahalf	0x21d
	.uaword	0x130
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_CAN_N_TRTR_Bits"
	.byte	0x4
	.uahalf	0x21e
	.uaword	0x2074
	.uleb128 0xa
	.string	"_Ifx_CAN_N_TTTR_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x221
	.uaword	0x2178
	.uleb128 0xb
	.string	"RELOAD"
	.byte	0x4
	.uahalf	0x223
	.uaword	0x130
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"TXMO"
	.byte	0x4
	.uahalf	0x224
	.uaword	0x130
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"STRT"
	.byte	0x4
	.uahalf	0x225
	.uaword	0x130
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.uaword	.LASF6
	.byte	0x4
	.uahalf	0x226
	.uaword	0x130
	.byte	0x4
	.byte	0x7
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_CAN_N_TTTR_Bits"
	.byte	0x4
	.uahalf	0x227
	.uaword	0x210c
	.uleb128 0xa
	.string	"_Ifx_CAN_OCS_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x22a
	.uaword	0x2246
	.uleb128 0xb
	.string	"TGS"
	.byte	0x4
	.uahalf	0x22c
	.uaword	0x130
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"TGB"
	.byte	0x4
	.uahalf	0x22d
	.uaword	0x130
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"TG_P"
	.byte	0x4
	.uahalf	0x22e
	.uaword	0x130
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.uaword	.LASF2
	.byte	0x4
	.uahalf	0x22f
	.uaword	0x130
	.byte	0x4
	.byte	0x14
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"SUS"
	.byte	0x4
	.uahalf	0x230
	.uaword	0x130
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"SUS_P"
	.byte	0x4
	.uahalf	0x231
	.uaword	0x130
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"SUSSTA"
	.byte	0x4
	.uahalf	0x232
	.uaword	0x130
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.uaword	.LASF9
	.byte	0x4
	.uahalf	0x233
	.uaword	0x130
	.byte	0x4
	.byte	0x2
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_CAN_OCS_Bits"
	.byte	0x4
	.uahalf	0x234
	.uaword	0x2194
	.uleb128 0xa
	.string	"_Ifx_CAN_PANCTR_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x237
	.uaword	0x22f6
	.uleb128 0xb
	.string	"PANCMD"
	.byte	0x4
	.uahalf	0x239
	.uaword	0x130
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"BUSY"
	.byte	0x4
	.uahalf	0x23a
	.uaword	0x130
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"RBUSY"
	.byte	0x4
	.uahalf	0x23b
	.uaword	0x130
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.uaword	.LASF3
	.byte	0x4
	.uahalf	0x23c
	.uaword	0x130
	.byte	0x4
	.byte	0x6
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"PANAR1"
	.byte	0x4
	.uahalf	0x23d
	.uaword	0x130
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"PANAR2"
	.byte	0x4
	.uahalf	0x23e
	.uaword	0x130
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_CAN_PANCTR_Bits"
	.byte	0x4
	.uahalf	0x23f
	.uaword	0x225f
	.uleb128 0xe
	.byte	0x4
	.byte	0x4
	.uahalf	0x247
	.uaword	0x233a
	.uleb128 0xf
	.string	"U"
	.byte	0x4
	.uahalf	0x249
	.uaword	0x130
	.uleb128 0xf
	.string	"I"
	.byte	0x4
	.uahalf	0x24a
	.uaword	0x119
	.uleb128 0xf
	.string	"B"
	.byte	0x4
	.uahalf	0x24b
	.uaword	0x503
	.byte	0
	.uleb128 0xc
	.string	"Ifx_CAN_ACCEN0"
	.byte	0x4
	.uahalf	0x24c
	.uaword	0x2312
	.uleb128 0xe
	.byte	0x4
	.byte	0x4
	.uahalf	0x24f
	.uaword	0x2379
	.uleb128 0xf
	.string	"U"
	.byte	0x4
	.uahalf	0x251
	.uaword	0x130
	.uleb128 0xf
	.string	"I"
	.byte	0x4
	.uahalf	0x252
	.uaword	0x119
	.uleb128 0xf
	.string	"B"
	.byte	0x4
	.uahalf	0x253
	.uaword	0x54d
	.byte	0
	.uleb128 0xc
	.string	"Ifx_CAN_ACCEN1"
	.byte	0x4
	.uahalf	0x254
	.uaword	0x2351
	.uleb128 0xe
	.byte	0x4
	.byte	0x4
	.uahalf	0x257
	.uaword	0x23b8
	.uleb128 0xf
	.string	"U"
	.byte	0x4
	.uahalf	0x259
	.uaword	0x130
	.uleb128 0xf
	.string	"I"
	.byte	0x4
	.uahalf	0x25a
	.uaword	0x119
	.uleb128 0xf
	.string	"B"
	.byte	0x4
	.uahalf	0x25b
	.uaword	0x5db
	.byte	0
	.uleb128 0xc
	.string	"Ifx_CAN_CLC"
	.byte	0x4
	.uahalf	0x25c
	.uaword	0x2390
	.uleb128 0xe
	.byte	0x4
	.byte	0x4
	.uahalf	0x25f
	.uaword	0x23f4
	.uleb128 0xf
	.string	"U"
	.byte	0x4
	.uahalf	0x261
	.uaword	0x130
	.uleb128 0xf
	.string	"I"
	.byte	0x4
	.uahalf	0x262
	.uaword	0x119
	.uleb128 0xf
	.string	"B"
	.byte	0x4
	.uahalf	0x263
	.uaword	0x652
	.byte	0
	.uleb128 0xc
	.string	"Ifx_CAN_FDR"
	.byte	0x4
	.uahalf	0x264
	.uaword	0x23cc
	.uleb128 0xe
	.byte	0x4
	.byte	0x4
	.uahalf	0x267
	.uaword	0x2430
	.uleb128 0xf
	.string	"U"
	.byte	0x4
	.uahalf	0x269
	.uaword	0x130
	.uleb128 0xf
	.string	"I"
	.byte	0x4
	.uahalf	0x26a
	.uaword	0x119
	.uleb128 0xf
	.string	"B"
	.byte	0x4
	.uahalf	0x26b
	.uaword	0x6c4
	.byte	0
	.uleb128 0xc
	.string	"Ifx_CAN_ID"
	.byte	0x4
	.uahalf	0x26c
	.uaword	0x2408
	.uleb128 0xe
	.byte	0x4
	.byte	0x4
	.uahalf	0x26f
	.uaword	0x246b
	.uleb128 0xf
	.string	"U"
	.byte	0x4
	.uahalf	0x271
	.uaword	0x130
	.uleb128 0xf
	.string	"I"
	.byte	0x4
	.uahalf	0x272
	.uaword	0x119
	.uleb128 0xf
	.string	"B"
	.byte	0x4
	.uahalf	0x273
	.uaword	0x72f
	.byte	0
	.uleb128 0xc
	.string	"Ifx_CAN_KRST0"
	.byte	0x4
	.uahalf	0x274
	.uaword	0x2443
	.uleb128 0xe
	.byte	0x4
	.byte	0x4
	.uahalf	0x277
	.uaword	0x24a9
	.uleb128 0xf
	.string	"U"
	.byte	0x4
	.uahalf	0x279
	.uaword	0x130
	.uleb128 0xf
	.string	"I"
	.byte	0x4
	.uahalf	0x27a
	.uaword	0x119
	.uleb128 0xf
	.string	"B"
	.byte	0x4
	.uahalf	0x27b
	.uaword	0x788
	.byte	0
	.uleb128 0xc
	.string	"Ifx_CAN_KRST1"
	.byte	0x4
	.uahalf	0x27c
	.uaword	0x2481
	.uleb128 0xe
	.byte	0x4
	.byte	0x4
	.uahalf	0x27f
	.uaword	0x24e7
	.uleb128 0xf
	.string	"U"
	.byte	0x4
	.uahalf	0x281
	.uaword	0x130
	.uleb128 0xf
	.string	"I"
	.byte	0x4
	.uahalf	0x282
	.uaword	0x119
	.uleb128 0xf
	.string	"B"
	.byte	0x4
	.uahalf	0x283
	.uaword	0x7e3
	.byte	0
	.uleb128 0xc
	.string	"Ifx_CAN_KRSTCLR"
	.byte	0x4
	.uahalf	0x284
	.uaword	0x24bf
	.uleb128 0xe
	.byte	0x4
	.byte	0x4
	.uahalf	0x287
	.uaword	0x2527
	.uleb128 0xf
	.string	"U"
	.byte	0x4
	.uahalf	0x289
	.uaword	0x130
	.uleb128 0xf
	.string	"I"
	.byte	0x4
	.uahalf	0x28a
	.uaword	0x119
	.uleb128 0xf
	.string	"B"
	.byte	0x4
	.uahalf	0x28b
	.uaword	0x875
	.byte	0
	.uleb128 0xc
	.string	"Ifx_CAN_LIST"
	.byte	0x4
	.uahalf	0x28c
	.uaword	0x24ff
	.uleb128 0xe
	.byte	0x4
	.byte	0x4
	.uahalf	0x28f
	.uaword	0x2564
	.uleb128 0xf
	.string	"U"
	.byte	0x4
	.uahalf	0x291
	.uaword	0x130
	.uleb128 0xf
	.string	"I"
	.byte	0x4
	.uahalf	0x292
	.uaword	0x119
	.uleb128 0xf
	.string	"B"
	.byte	0x4
	.uahalf	0x293
	.uaword	0x915
	.byte	0
	.uleb128 0xc
	.string	"Ifx_CAN_MCR"
	.byte	0x4
	.uahalf	0x294
	.uaword	0x253c
	.uleb128 0xe
	.byte	0x4
	.byte	0x4
	.uahalf	0x297
	.uaword	0x25a0
	.uleb128 0xf
	.string	"U"
	.byte	0x4
	.uahalf	0x299
	.uaword	0x130
	.uleb128 0xf
	.string	"I"
	.byte	0x4
	.uahalf	0x29a
	.uaword	0x119
	.uleb128 0xf
	.string	"B"
	.byte	0x4
	.uahalf	0x29b
	.uaword	0xa0a
	.byte	0
	.uleb128 0xc
	.string	"Ifx_CAN_MECR"
	.byte	0x4
	.uahalf	0x29c
	.uaword	0x2578
	.uleb128 0xe
	.byte	0x4
	.byte	0x4
	.uahalf	0x29f
	.uaword	0x25dd
	.uleb128 0xf
	.string	"U"
	.byte	0x4
	.uahalf	0x2a1
	.uaword	0x130
	.uleb128 0xf
	.string	"I"
	.byte	0x4
	.uahalf	0x2a2
	.uaword	0x119
	.uleb128 0xf
	.string	"B"
	.byte	0x4
	.uahalf	0x2a3
	.uaword	0xa92
	.byte	0
	.uleb128 0xc
	.string	"Ifx_CAN_MESTAT"
	.byte	0x4
	.uahalf	0x2a4
	.uaword	0x25b5
	.uleb128 0xe
	.byte	0x4
	.byte	0x4
	.uahalf	0x2a7
	.uaword	0x261c
	.uleb128 0xf
	.string	"U"
	.byte	0x4
	.uahalf	0x2a9
	.uaword	0x130
	.uleb128 0xf
	.string	"I"
	.byte	0x4
	.uahalf	0x2aa
	.uaword	0x119
	.uleb128 0xf
	.string	"B"
	.byte	0x4
	.uahalf	0x2ab
	.uaword	0xaea
	.byte	0
	.uleb128 0xc
	.string	"Ifx_CAN_MITR"
	.byte	0x4
	.uahalf	0x2ac
	.uaword	0x25f4
	.uleb128 0xe
	.byte	0x4
	.byte	0x4
	.uahalf	0x2af
	.uaword	0x2659
	.uleb128 0xf
	.string	"U"
	.byte	0x4
	.uahalf	0x2b1
	.uaword	0x130
	.uleb128 0xf
	.string	"I"
	.byte	0x4
	.uahalf	0x2b2
	.uaword	0x119
	.uleb128 0xf
	.string	"B"
	.byte	0x4
	.uahalf	0x2b3
	.uaword	0xb54
	.byte	0
	.uleb128 0xc
	.string	"Ifx_CAN_MO_AMR"
	.byte	0x4
	.uahalf	0x2b4
	.uaword	0x2631
	.uleb128 0xe
	.byte	0x4
	.byte	0x4
	.uahalf	0x2b7
	.uaword	0x2698
	.uleb128 0xf
	.string	"U"
	.byte	0x4
	.uahalf	0x2b9
	.uaword	0x130
	.uleb128 0xf
	.string	"I"
	.byte	0x4
	.uahalf	0x2ba
	.uaword	0x119
	.uleb128 0xf
	.string	"B"
	.byte	0x4
	.uahalf	0x2bb
	.uaword	0xbbe
	.byte	0
	.uleb128 0xc
	.string	"Ifx_CAN_MO_AR"
	.byte	0x4
	.uahalf	0x2bc
	.uaword	0x2670
	.uleb128 0xe
	.byte	0x4
	.byte	0x4
	.uahalf	0x2bf
	.uaword	0x26d6
	.uleb128 0xf
	.string	"U"
	.byte	0x4
	.uahalf	0x2c1
	.uaword	0x130
	.uleb128 0xf
	.string	"I"
	.byte	0x4
	.uahalf	0x2c2
	.uaword	0x119
	.uleb128 0xf
	.string	"B"
	.byte	0x4
	.uahalf	0x2c3
	.uaword	0xe26
	.byte	0
	.uleb128 0xc
	.string	"Ifx_CAN_MO_CTR"
	.byte	0x4
	.uahalf	0x2c4
	.uaword	0x26ae
	.uleb128 0xe
	.byte	0x4
	.byte	0x4
	.uahalf	0x2c7
	.uaword	0x2715
	.uleb128 0xf
	.string	"U"
	.byte	0x4
	.uahalf	0x2c9
	.uaword	0x130
	.uleb128 0xf
	.string	"I"
	.byte	0x4
	.uahalf	0x2ca
	.uaword	0x119
	.uleb128 0xf
	.string	"B"
	.byte	0x4
	.uahalf	0x2cb
	.uaword	0xea5
	.byte	0
	.uleb128 0xc
	.string	"Ifx_CAN_MO_DATAH"
	.byte	0x4
	.uahalf	0x2cc
	.uaword	0x26ed
	.uleb128 0xe
	.byte	0x4
	.byte	0x4
	.uahalf	0x2cf
	.uaword	0x2756
	.uleb128 0xf
	.string	"U"
	.byte	0x4
	.uahalf	0x2d1
	.uaword	0x130
	.uleb128 0xf
	.string	"I"
	.byte	0x4
	.uahalf	0x2d2
	.uaword	0x119
	.uleb128 0xf
	.string	"B"
	.byte	0x4
	.uahalf	0x2d3
	.uaword	0xf26
	.byte	0
	.uleb128 0xc
	.string	"Ifx_CAN_MO_DATAL"
	.byte	0x4
	.uahalf	0x2d4
	.uaword	0x272e
	.uleb128 0xe
	.byte	0x4
	.byte	0x4
	.uahalf	0x2d7
	.uaword	0x2797
	.uleb128 0xf
	.string	"U"
	.byte	0x4
	.uahalf	0x2d9
	.uaword	0x130
	.uleb128 0xf
	.string	"I"
	.byte	0x4
	.uahalf	0x2da
	.uaword	0x119
	.uleb128 0xf
	.string	"B"
	.byte	0x4
	.uahalf	0x2db
	.uaword	0xfad
	.byte	0
	.uleb128 0xc
	.string	"Ifx_CAN_MO_EDATA0"
	.byte	0x4
	.uahalf	0x2dc
	.uaword	0x276f
	.uleb128 0xe
	.byte	0x4
	.byte	0x4
	.uahalf	0x2df
	.uaword	0x27d9
	.uleb128 0xf
	.string	"U"
	.byte	0x4
	.uahalf	0x2e1
	.uaword	0x130
	.uleb128 0xf
	.string	"I"
	.byte	0x4
	.uahalf	0x2e2
	.uaword	0x119
	.uleb128 0xf
	.string	"B"
	.byte	0x4
	.uahalf	0x2e3
	.uaword	0x1036
	.byte	0
	.uleb128 0xc
	.string	"Ifx_CAN_MO_EDATA1"
	.byte	0x4
	.uahalf	0x2e4
	.uaword	0x27b1
	.uleb128 0xe
	.byte	0x4
	.byte	0x4
	.uahalf	0x2e7
	.uaword	0x281b
	.uleb128 0xf
	.string	"U"
	.byte	0x4
	.uahalf	0x2e9
	.uaword	0x130
	.uleb128 0xf
	.string	"I"
	.byte	0x4
	.uahalf	0x2ea
	.uaword	0x119
	.uleb128 0xf
	.string	"B"
	.byte	0x4
	.uahalf	0x2eb
	.uaword	0x10bf
	.byte	0
	.uleb128 0xc
	.string	"Ifx_CAN_MO_EDATA2"
	.byte	0x4
	.uahalf	0x2ec
	.uaword	0x27f3
	.uleb128 0xe
	.byte	0x4
	.byte	0x4
	.uahalf	0x2ef
	.uaword	0x285d
	.uleb128 0xf
	.string	"U"
	.byte	0x4
	.uahalf	0x2f1
	.uaword	0x130
	.uleb128 0xf
	.string	"I"
	.byte	0x4
	.uahalf	0x2f2
	.uaword	0x119
	.uleb128 0xf
	.string	"B"
	.byte	0x4
	.uahalf	0x2f3
	.uaword	0x1148
	.byte	0
	.uleb128 0xc
	.string	"Ifx_CAN_MO_EDATA3"
	.byte	0x4
	.uahalf	0x2f4
	.uaword	0x2835
	.uleb128 0xe
	.byte	0x4
	.byte	0x4
	.uahalf	0x2f7
	.uaword	0x289f
	.uleb128 0xf
	.string	"U"
	.byte	0x4
	.uahalf	0x2f9
	.uaword	0x130
	.uleb128 0xf
	.string	"I"
	.byte	0x4
	.uahalf	0x2fa
	.uaword	0x119
	.uleb128 0xf
	.string	"B"
	.byte	0x4
	.uahalf	0x2fb
	.uaword	0x11d1
	.byte	0
	.uleb128 0xc
	.string	"Ifx_CAN_MO_EDATA4"
	.byte	0x4
	.uahalf	0x2fc
	.uaword	0x2877
	.uleb128 0xe
	.byte	0x4
	.byte	0x4
	.uahalf	0x2ff
	.uaword	0x28e1
	.uleb128 0xf
	.string	"U"
	.byte	0x4
	.uahalf	0x301
	.uaword	0x130
	.uleb128 0xf
	.string	"I"
	.byte	0x4
	.uahalf	0x302
	.uaword	0x119
	.uleb128 0xf
	.string	"B"
	.byte	0x4
	.uahalf	0x303
	.uaword	0x125a
	.byte	0
	.uleb128 0xc
	.string	"Ifx_CAN_MO_EDATA5"
	.byte	0x4
	.uahalf	0x304
	.uaword	0x28b9
	.uleb128 0xe
	.byte	0x4
	.byte	0x4
	.uahalf	0x307
	.uaword	0x2923
	.uleb128 0xf
	.string	"U"
	.byte	0x4
	.uahalf	0x309
	.uaword	0x130
	.uleb128 0xf
	.string	"I"
	.byte	0x4
	.uahalf	0x30a
	.uaword	0x119
	.uleb128 0xf
	.string	"B"
	.byte	0x4
	.uahalf	0x30b
	.uaword	0x12e3
	.byte	0
	.uleb128 0xc
	.string	"Ifx_CAN_MO_EDATA6"
	.byte	0x4
	.uahalf	0x30c
	.uaword	0x28fb
	.uleb128 0xe
	.byte	0x4
	.byte	0x4
	.uahalf	0x30f
	.uaword	0x2965
	.uleb128 0xf
	.string	"U"
	.byte	0x4
	.uahalf	0x311
	.uaword	0x130
	.uleb128 0xf
	.string	"I"
	.byte	0x4
	.uahalf	0x312
	.uaword	0x119
	.uleb128 0xf
	.string	"B"
	.byte	0x4
	.uahalf	0x313
	.uaword	0x14a2
	.byte	0
	.uleb128 0xc
	.string	"Ifx_CAN_MO_FCR"
	.byte	0x4
	.uahalf	0x314
	.uaword	0x293d
	.uleb128 0xe
	.byte	0x4
	.byte	0x4
	.uahalf	0x317
	.uaword	0x29a4
	.uleb128 0xf
	.string	"U"
	.byte	0x4
	.uahalf	0x319
	.uaword	0x130
	.uleb128 0xf
	.string	"I"
	.byte	0x4
	.uahalf	0x31a
	.uaword	0x119
	.uleb128 0xf
	.string	"B"
	.byte	0x4
	.uahalf	0x31b
	.uaword	0x1526
	.byte	0
	.uleb128 0xc
	.string	"Ifx_CAN_MO_FGPR"
	.byte	0x4
	.uahalf	0x31c
	.uaword	0x297c
	.uleb128 0xe
	.byte	0x4
	.byte	0x4
	.uahalf	0x31f
	.uaword	0x29e4
	.uleb128 0xf
	.string	"U"
	.byte	0x4
	.uahalf	0x321
	.uaword	0x130
	.uleb128 0xf
	.string	"I"
	.byte	0x4
	.uahalf	0x322
	.uaword	0x119
	.uleb128 0xf
	.string	"B"
	.byte	0x4
	.uahalf	0x323
	.uaword	0x15b1
	.byte	0
	.uleb128 0xc
	.string	"Ifx_CAN_MO_IPR"
	.byte	0x4
	.uahalf	0x324
	.uaword	0x29bc
	.uleb128 0xe
	.byte	0x4
	.byte	0x4
	.uahalf	0x327
	.uaword	0x2a23
	.uleb128 0xf
	.string	"U"
	.byte	0x4
	.uahalf	0x329
	.uaword	0x130
	.uleb128 0xf
	.string	"I"
	.byte	0x4
	.uahalf	0x32a
	.uaword	0x119
	.uleb128 0xf
	.string	"B"
	.byte	0x4
	.uahalf	0x32b
	.uaword	0x1717
	.byte	0
	.uleb128 0xc
	.string	"Ifx_CAN_MO_STAT"
	.byte	0x4
	.uahalf	0x32c
	.uaword	0x29fb
	.uleb128 0xe
	.byte	0x4
	.byte	0x4
	.uahalf	0x32f
	.uaword	0x2a63
	.uleb128 0xf
	.string	"U"
	.byte	0x4
	.uahalf	0x331
	.uaword	0x130
	.uleb128 0xf
	.string	"I"
	.byte	0x4
	.uahalf	0x332
	.uaword	0x119
	.uleb128 0xf
	.string	"B"
	.byte	0x4
	.uahalf	0x333
	.uaword	0x1777
	.byte	0
	.uleb128 0xc
	.string	"Ifx_CAN_MSID"
	.byte	0x4
	.uahalf	0x334
	.uaword	0x2a3b
	.uleb128 0xe
	.byte	0x4
	.byte	0x4
	.uahalf	0x337
	.uaword	0x2aa0
	.uleb128 0xf
	.string	"U"
	.byte	0x4
	.uahalf	0x339
	.uaword	0x130
	.uleb128 0xf
	.string	"I"
	.byte	0x4
	.uahalf	0x33a
	.uaword	0x119
	.uleb128 0xf
	.string	"B"
	.byte	0x4
	.uahalf	0x33b
	.uaword	0x17c2
	.byte	0
	.uleb128 0xc
	.string	"Ifx_CAN_MSIMASK"
	.byte	0x4
	.uahalf	0x33c
	.uaword	0x2a78
	.uleb128 0xe
	.byte	0x4
	.byte	0x4
	.uahalf	0x33f
	.uaword	0x2ae0
	.uleb128 0xf
	.string	"U"
	.byte	0x4
	.uahalf	0x341
	.uaword	0x130
	.uleb128 0xf
	.string	"I"
	.byte	0x4
	.uahalf	0x342
	.uaword	0x119
	.uleb128 0xf
	.string	"B"
	.byte	0x4
	.uahalf	0x343
	.uaword	0x180f
	.byte	0
	.uleb128 0xc
	.string	"Ifx_CAN_MSPND"
	.byte	0x4
	.uahalf	0x344
	.uaword	0x2ab8
	.uleb128 0xe
	.byte	0x4
	.byte	0x4
	.uahalf	0x347
	.uaword	0x2b1e
	.uleb128 0xf
	.string	"U"
	.byte	0x4
	.uahalf	0x349
	.uaword	0x130
	.uleb128 0xf
	.string	"I"
	.byte	0x4
	.uahalf	0x34a
	.uaword	0x119
	.uleb128 0xf
	.string	"B"
	.byte	0x4
	.uahalf	0x34b
	.uaword	0x18f1
	.byte	0
	.uleb128 0xc
	.string	"Ifx_CAN_N_BTEVR"
	.byte	0x4
	.uahalf	0x34c
	.uaword	0x2af6
	.uleb128 0xe
	.byte	0x4
	.byte	0x4
	.uahalf	0x34f
	.uaword	0x2b5e
	.uleb128 0xf
	.string	"U"
	.byte	0x4
	.uahalf	0x351
	.uaword	0x130
	.uleb128 0xf
	.string	"I"
	.byte	0x4
	.uahalf	0x352
	.uaword	0x119
	.uleb128 0xf
	.string	"B"
	.byte	0x4
	.uahalf	0x353
	.uaword	0x199d
	.byte	0
	.uleb128 0xc
	.string	"Ifx_CAN_N_BTR"
	.byte	0x4
	.uahalf	0x354
	.uaword	0x2b36
	.uleb128 0xe
	.byte	0x4
	.byte	0x4
	.uahalf	0x357
	.uaword	0x2b9c
	.uleb128 0xf
	.string	"U"
	.byte	0x4
	.uahalf	0x359
	.uaword	0x130
	.uleb128 0xf
	.string	"I"
	.byte	0x4
	.uahalf	0x35a
	.uaword	0x119
	.uleb128 0xf
	.string	"B"
	.byte	0x4
	.uahalf	0x35b
	.uaword	0x1aa9
	.byte	0
	.uleb128 0xc
	.string	"Ifx_CAN_N_CR"
	.byte	0x4
	.uahalf	0x35c
	.uaword	0x2b74
	.uleb128 0xe
	.byte	0x4
	.byte	0x4
	.uahalf	0x35f
	.uaword	0x2bd9
	.uleb128 0xf
	.string	"U"
	.byte	0x4
	.uahalf	0x361
	.uaword	0x130
	.uleb128 0xf
	.string	"I"
	.byte	0x4
	.uahalf	0x362
	.uaword	0x119
	.uleb128 0xf
	.string	"B"
	.byte	0x4
	.uahalf	0x363
	.uaword	0x1b55
	.byte	0
	.uleb128 0xc
	.string	"Ifx_CAN_N_ECNT"
	.byte	0x4
	.uahalf	0x364
	.uaword	0x2bb1
	.uleb128 0xe
	.byte	0x4
	.byte	0x4
	.uahalf	0x367
	.uaword	0x2c18
	.uleb128 0xf
	.string	"U"
	.byte	0x4
	.uahalf	0x369
	.uaword	0x130
	.uleb128 0xf
	.string	"I"
	.byte	0x4
	.uahalf	0x36a
	.uaword	0x119
	.uleb128 0xf
	.string	"B"
	.byte	0x4
	.uahalf	0x36b
	.uaword	0x1bf2
	.byte	0
	.uleb128 0xc
	.string	"Ifx_CAN_N_FBTR"
	.byte	0x4
	.uahalf	0x36c
	.uaword	0x2bf0
	.uleb128 0xe
	.byte	0x4
	.byte	0x4
	.uahalf	0x36f
	.uaword	0x2c57
	.uleb128 0xf
	.string	"U"
	.byte	0x4
	.uahalf	0x371
	.uaword	0x130
	.uleb128 0xf
	.string	"I"
	.byte	0x4
	.uahalf	0x372
	.uaword	0x119
	.uleb128 0xf
	.string	"B"
	.byte	0x4
	.uahalf	0x373
	.uaword	0x1cb2
	.byte	0
	.uleb128 0xc
	.string	"Ifx_CAN_N_FCR"
	.byte	0x4
	.uahalf	0x374
	.uaword	0x2c2f
	.uleb128 0xe
	.byte	0x4
	.byte	0x4
	.uahalf	0x377
	.uaword	0x2c95
	.uleb128 0xf
	.string	"U"
	.byte	0x4
	.uahalf	0x379
	.uaword	0x130
	.uleb128 0xf
	.string	"I"
	.byte	0x4
	.uahalf	0x37a
	.uaword	0x119
	.uleb128 0xf
	.string	"B"
	.byte	0x4
	.uahalf	0x37b
	.uaword	0x1d6b
	.byte	0
	.uleb128 0xc
	.string	"Ifx_CAN_N_IPR"
	.byte	0x4
	.uahalf	0x37c
	.uaword	0x2c6d
	.uleb128 0xe
	.byte	0x4
	.byte	0x4
	.uahalf	0x37f
	.uaword	0x2cd3
	.uleb128 0xf
	.string	"U"
	.byte	0x4
	.uahalf	0x381
	.uaword	0x130
	.uleb128 0xf
	.string	"I"
	.byte	0x4
	.uahalf	0x382
	.uaword	0x119
	.uleb128 0xf
	.string	"B"
	.byte	0x4
	.uahalf	0x383
	.uaword	0x1df5
	.byte	0
	.uleb128 0xc
	.string	"Ifx_CAN_N_PCR"
	.byte	0x4
	.uahalf	0x384
	.uaword	0x2cab
	.uleb128 0xe
	.byte	0x4
	.byte	0x4
	.uahalf	0x387
	.uaword	0x2d11
	.uleb128 0xf
	.string	"U"
	.byte	0x4
	.uahalf	0x389
	.uaword	0x130
	.uleb128 0xf
	.string	"I"
	.byte	0x4
	.uahalf	0x38a
	.uaword	0x119
	.uleb128 0xf
	.string	"B"
	.byte	0x4
	.uahalf	0x38b
	.uaword	0x1f10
	.byte	0
	.uleb128 0xc
	.string	"Ifx_CAN_N_SR"
	.byte	0x4
	.uahalf	0x38c
	.uaword	0x2ce9
	.uleb128 0xe
	.byte	0x4
	.byte	0x4
	.uahalf	0x38f
	.uaword	0x2d4e
	.uleb128 0xf
	.string	"U"
	.byte	0x4
	.uahalf	0x391
	.uaword	0x130
	.uleb128 0xf
	.string	"I"
	.byte	0x4
	.uahalf	0x392
	.uaword	0x119
	.uleb128 0xf
	.string	"B"
	.byte	0x4
	.uahalf	0x393
	.uaword	0x1fa8
	.byte	0
	.uleb128 0xc
	.string	"Ifx_CAN_N_TCCR"
	.byte	0x4
	.uahalf	0x394
	.uaword	0x2d26
	.uleb128 0xe
	.byte	0x4
	.byte	0x4
	.uahalf	0x397
	.uaword	0x2d8d
	.uleb128 0xf
	.string	"U"
	.byte	0x4
	.uahalf	0x399
	.uaword	0x130
	.uleb128 0xf
	.string	"I"
	.byte	0x4
	.uahalf	0x39a
	.uaword	0x119
	.uleb128 0xf
	.string	"B"
	.byte	0x4
	.uahalf	0x39b
	.uaword	0x2058
	.byte	0
	.uleb128 0xc
	.string	"Ifx_CAN_N_TDCR"
	.byte	0x4
	.uahalf	0x39c
	.uaword	0x2d65
	.uleb128 0xe
	.byte	0x4
	.byte	0x4
	.uahalf	0x39f
	.uaword	0x2dcc
	.uleb128 0xf
	.string	"U"
	.byte	0x4
	.uahalf	0x3a1
	.uaword	0x130
	.uleb128 0xf
	.string	"I"
	.byte	0x4
	.uahalf	0x3a2
	.uaword	0x119
	.uleb128 0xf
	.string	"B"
	.byte	0x4
	.uahalf	0x3a3
	.uaword	0x20f0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_CAN_N_TRTR"
	.byte	0x4
	.uahalf	0x3a4
	.uaword	0x2da4
	.uleb128 0xe
	.byte	0x4
	.byte	0x4
	.uahalf	0x3a7
	.uaword	0x2e0b
	.uleb128 0xf
	.string	"U"
	.byte	0x4
	.uahalf	0x3a9
	.uaword	0x130
	.uleb128 0xf
	.string	"I"
	.byte	0x4
	.uahalf	0x3aa
	.uaword	0x119
	.uleb128 0xf
	.string	"B"
	.byte	0x4
	.uahalf	0x3ab
	.uaword	0x2178
	.byte	0
	.uleb128 0xc
	.string	"Ifx_CAN_N_TTTR"
	.byte	0x4
	.uahalf	0x3ac
	.uaword	0x2de3
	.uleb128 0xe
	.byte	0x4
	.byte	0x4
	.uahalf	0x3af
	.uaword	0x2e4a
	.uleb128 0xf
	.string	"U"
	.byte	0x4
	.uahalf	0x3b1
	.uaword	0x130
	.uleb128 0xf
	.string	"I"
	.byte	0x4
	.uahalf	0x3b2
	.uaword	0x119
	.uleb128 0xf
	.string	"B"
	.byte	0x4
	.uahalf	0x3b3
	.uaword	0x2246
	.byte	0
	.uleb128 0xc
	.string	"Ifx_CAN_OCS"
	.byte	0x4
	.uahalf	0x3b4
	.uaword	0x2e22
	.uleb128 0xe
	.byte	0x4
	.byte	0x4
	.uahalf	0x3b7
	.uaword	0x2e86
	.uleb128 0xf
	.string	"U"
	.byte	0x4
	.uahalf	0x3b9
	.uaword	0x130
	.uleb128 0xf
	.string	"I"
	.byte	0x4
	.uahalf	0x3ba
	.uaword	0x119
	.uleb128 0xf
	.string	"B"
	.byte	0x4
	.uahalf	0x3bb
	.uaword	0x22f6
	.byte	0
	.uleb128 0xc
	.string	"Ifx_CAN_PANCTR"
	.byte	0x4
	.uahalf	0x3bc
	.uaword	0x2e5e
	.uleb128 0xe
	.byte	0x4
	.byte	0x4
	.uahalf	0x3c9
	.uaword	0x2ec2
	.uleb128 0xf
	.string	"EDATA0"
	.byte	0x4
	.uahalf	0x3cb
	.uaword	0x2797
	.uleb128 0xf
	.string	"FCR"
	.byte	0x4
	.uahalf	0x3cc
	.uaword	0x2965
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.byte	0x4
	.uahalf	0x3cf
	.uaword	0x2ee8
	.uleb128 0xf
	.string	"EDATA1"
	.byte	0x4
	.uahalf	0x3d1
	.uaword	0x27d9
	.uleb128 0xf
	.string	"FGPR"
	.byte	0x4
	.uahalf	0x3d2
	.uaword	0x29a4
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.byte	0x4
	.uahalf	0x3d5
	.uaword	0x2f0d
	.uleb128 0xf
	.string	"EDATA2"
	.byte	0x4
	.uahalf	0x3d7
	.uaword	0x281b
	.uleb128 0xf
	.string	"IPR"
	.byte	0x4
	.uahalf	0x3d8
	.uaword	0x29e4
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.byte	0x4
	.uahalf	0x3db
	.uaword	0x2f32
	.uleb128 0xf
	.string	"AMR"
	.byte	0x4
	.uahalf	0x3dd
	.uaword	0x2659
	.uleb128 0xf
	.string	"EDATA3"
	.byte	0x4
	.uahalf	0x3de
	.uaword	0x285d
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.byte	0x4
	.uahalf	0x3e1
	.uaword	0x2f59
	.uleb128 0xf
	.string	"DATAL"
	.byte	0x4
	.uahalf	0x3e3
	.uaword	0x2756
	.uleb128 0xf
	.string	"EDATA4"
	.byte	0x4
	.uahalf	0x3e4
	.uaword	0x289f
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.byte	0x4
	.uahalf	0x3e7
	.uaword	0x2f80
	.uleb128 0xf
	.string	"DATAH"
	.byte	0x4
	.uahalf	0x3e9
	.uaword	0x2715
	.uleb128 0xf
	.string	"EDATA5"
	.byte	0x4
	.uahalf	0x3ea
	.uaword	0x28e1
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.byte	0x4
	.uahalf	0x3ed
	.uaword	0x2fa4
	.uleb128 0xf
	.string	"AR"
	.byte	0x4
	.uahalf	0x3ef
	.uaword	0x2698
	.uleb128 0xf
	.string	"EDATA6"
	.byte	0x4
	.uahalf	0x3f0
	.uaword	0x2923
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.byte	0x4
	.uahalf	0x3f3
	.uaword	0x2fc7
	.uleb128 0xf
	.string	"CTR"
	.byte	0x4
	.uahalf	0x3f5
	.uaword	0x26d6
	.uleb128 0xf
	.string	"STAT"
	.byte	0x4
	.uahalf	0x3f6
	.uaword	0x2a23
	.byte	0
	.uleb128 0xa
	.string	"_Ifx_CAN_MO"
	.byte	0x20
	.byte	0x4
	.uahalf	0x3c7
	.uaword	0x301d
	.uleb128 0x10
	.uaword	0x2e9d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	0x2ec2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x10
	.uaword	0x2ee8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x10
	.uaword	0x2f0d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x10
	.uaword	0x2f32
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x10
	.uaword	0x2f59
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x10
	.uaword	0x2f80
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x10
	.uaword	0x2fa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.byte	0x4
	.uahalf	0x401
	.uaword	0x3041
	.uleb128 0xf
	.string	"BTEVR"
	.byte	0x4
	.uahalf	0x403
	.uaword	0x2b1e
	.uleb128 0xf
	.string	"BTR"
	.byte	0x4
	.uahalf	0x404
	.uaword	0x2b5e
	.byte	0
	.uleb128 0x11
	.string	"_Ifx_CAN_N"
	.uahalf	0x100
	.byte	0x4
	.uahalf	0x3fb
	.uaword	0x3151
	.uleb128 0x12
	.string	"CR"
	.byte	0x4
	.uahalf	0x3fd
	.uaword	0x2b9c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.string	"SR"
	.byte	0x4
	.uahalf	0x3fe
	.uaword	0x2d11
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x12
	.string	"IPR"
	.byte	0x4
	.uahalf	0x3ff
	.uaword	0x2c95
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x12
	.string	"PCR"
	.byte	0x4
	.uahalf	0x400
	.uaword	0x2cd3
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x10
	.uaword	0x301d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x12
	.string	"ECNT"
	.byte	0x4
	.uahalf	0x407
	.uaword	0x2bd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x12
	.string	"FCR"
	.byte	0x4
	.uahalf	0x408
	.uaword	0x2c57
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x12
	.string	"TCCR"
	.byte	0x4
	.uahalf	0x409
	.uaword	0x2d4e
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x12
	.string	"TRTR"
	.byte	0x4
	.uahalf	0x40a
	.uaword	0x2dcc
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x12
	.string	"TATTR"
	.byte	0x4
	.uahalf	0x40b
	.uaword	0x2e0b
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x12
	.string	"TBTTR"
	.byte	0x4
	.uahalf	0x40c
	.uaword	0x2e0b
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x12
	.string	"TCTTR"
	.byte	0x4
	.uahalf	0x40d
	.uaword	0x2e0b
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x13
	.uaword	.LASF9
	.byte	0x4
	.uahalf	0x40e
	.uaword	0x27f
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x12
	.string	"FBTR"
	.byte	0x4
	.uahalf	0x40f
	.uaword	0x2c18
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x12
	.string	"TDCR"
	.byte	0x4
	.uahalf	0x410
	.uaword	0x2d8d
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x12
	.string	"reserved_40"
	.byte	0x4
	.uahalf	0x411
	.uaword	0x3151
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.byte	0
	.uleb128 0x5
	.uaword	0xb7
	.uaword	0x3161
	.uleb128 0x6
	.uaword	0x174
	.byte	0xbf
	.byte	0
	.uleb128 0x11
	.string	"_Ifx_CAN"
	.uahalf	0x4000
	.byte	0x4
	.uahalf	0x41f
	.uaword	0x3368
	.uleb128 0x12
	.string	"CLC"
	.byte	0x4
	.uahalf	0x421
	.uaword	0x23b8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x13
	.uaword	.LASF2
	.byte	0x4
	.uahalf	0x422
	.uaword	0x28f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x12
	.string	"ID"
	.byte	0x4
	.uahalf	0x423
	.uaword	0x2430
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x12
	.string	"FDR"
	.byte	0x4
	.uahalf	0x424
	.uaword	0x23f4
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x13
	.uaword	.LASF3
	.byte	0x4
	.uahalf	0x425
	.uaword	0x3368
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x12
	.string	"OCS"
	.byte	0x4
	.uahalf	0x426
	.uaword	0x2e4a
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0x12
	.string	"KRSTCLR"
	.byte	0x4
	.uahalf	0x427
	.uaword	0x24e7
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0x12
	.string	"KRST1"
	.byte	0x4
	.uahalf	0x428
	.uaword	0x24a9
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0x12
	.string	"KRST0"
	.byte	0x4
	.uahalf	0x429
	.uaword	0x246b
	.byte	0x3
	.byte	0x23
	.uleb128 0xf4
	.uleb128 0x12
	.string	"ACCEN1"
	.byte	0x4
	.uahalf	0x42a
	.uaword	0x2379
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.uleb128 0x12
	.string	"ACCEN0"
	.byte	0x4
	.uahalf	0x42b
	.uaword	0x233a
	.byte	0x3
	.byte	0x23
	.uleb128 0xfc
	.uleb128 0x12
	.string	"LIST"
	.byte	0x4
	.uahalf	0x42c
	.uaword	0x3378
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0x12
	.string	"MSPND"
	.byte	0x4
	.uahalf	0x42d
	.uaword	0x3388
	.byte	0x3
	.byte	0x23
	.uleb128 0x140
	.uleb128 0x12
	.string	"reserved_160"
	.byte	0x4
	.uahalf	0x42e
	.uaword	0x3398
	.byte	0x3
	.byte	0x23
	.uleb128 0x160
	.uleb128 0x12
	.string	"MSID"
	.byte	0x4
	.uahalf	0x42f
	.uaword	0x33a8
	.byte	0x3
	.byte	0x23
	.uleb128 0x180
	.uleb128 0x12
	.string	"reserved_1A0"
	.byte	0x4
	.uahalf	0x430
	.uaword	0x3398
	.byte	0x3
	.byte	0x23
	.uleb128 0x1a0
	.uleb128 0x12
	.string	"MSIMASK"
	.byte	0x4
	.uahalf	0x431
	.uaword	0x2aa0
	.byte	0x3
	.byte	0x23
	.uleb128 0x1c0
	.uleb128 0x12
	.string	"PANCTR"
	.byte	0x4
	.uahalf	0x432
	.uaword	0x2e86
	.byte	0x3
	.byte	0x23
	.uleb128 0x1c4
	.uleb128 0x12
	.string	"MCR"
	.byte	0x4
	.uahalf	0x433
	.uaword	0x2564
	.byte	0x3
	.byte	0x23
	.uleb128 0x1c8
	.uleb128 0x12
	.string	"MITR"
	.byte	0x4
	.uahalf	0x434
	.uaword	0x261c
	.byte	0x3
	.byte	0x23
	.uleb128 0x1cc
	.uleb128 0x12
	.string	"MECR"
	.byte	0x4
	.uahalf	0x435
	.uaword	0x25a0
	.byte	0x3
	.byte	0x23
	.uleb128 0x1d0
	.uleb128 0x12
	.string	"MESTAT"
	.byte	0x4
	.uahalf	0x436
	.uaword	0x25dd
	.byte	0x3
	.byte	0x23
	.uleb128 0x1d4
	.uleb128 0x12
	.string	"reserved_1D8"
	.byte	0x4
	.uahalf	0x437
	.uaword	0x29f
	.byte	0x3
	.byte	0x23
	.uleb128 0x1d8
	.uleb128 0x12
	.string	"N"
	.byte	0x4
	.uahalf	0x438
	.uaword	0x33c8
	.byte	0x3
	.byte	0x23
	.uleb128 0x200
	.uleb128 0x12
	.string	"reserved_500"
	.byte	0x4
	.uahalf	0x439
	.uaword	0x33cd
	.byte	0x3
	.byte	0x23
	.uleb128 0x500
	.uleb128 0x12
	.string	"MO"
	.byte	0x4
	.uahalf	0x43a
	.uaword	0x33ee
	.byte	0x3
	.byte	0x23
	.uleb128 0x1000
	.uleb128 0x12
	.string	"reserved_2000"
	.byte	0x4
	.uahalf	0x43b
	.uaword	0x33f3
	.byte	0x3
	.byte	0x23
	.uleb128 0x2000
	.byte	0
	.uleb128 0x5
	.uaword	0xb7
	.uaword	0x3378
	.uleb128 0x6
	.uaword	0x174
	.byte	0xd7
	.byte	0
	.uleb128 0x5
	.uaword	0x2527
	.uaword	0x3388
	.uleb128 0x6
	.uaword	0x174
	.byte	0xf
	.byte	0
	.uleb128 0x5
	.uaword	0x2ae0
	.uaword	0x3398
	.uleb128 0x6
	.uaword	0x174
	.byte	0x7
	.byte	0
	.uleb128 0x5
	.uaword	0xb7
	.uaword	0x33a8
	.uleb128 0x6
	.uaword	0x174
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.uaword	0x2a63
	.uaword	0x33b8
	.uleb128 0x6
	.uaword	0x174
	.byte	0x7
	.byte	0
	.uleb128 0x5
	.uaword	0x3041
	.uaword	0x33c8
	.uleb128 0x6
	.uaword	0x174
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.uaword	0x33b8
	.uleb128 0x5
	.uaword	0xb7
	.uaword	0x33de
	.uleb128 0x14
	.uaword	0x174
	.uahalf	0xaff
	.byte	0
	.uleb128 0x5
	.uaword	0x2fc7
	.uaword	0x33ee
	.uleb128 0x6
	.uaword	0x174
	.byte	0x7f
	.byte	0
	.uleb128 0x4
	.uaword	0x33de
	.uleb128 0x5
	.uaword	0xb7
	.uaword	0x3404
	.uleb128 0x14
	.uaword	0x174
	.uahalf	0x1fff
	.byte	0
	.uleb128 0xc
	.string	"Ifx_CAN"
	.byte	0x4
	.uahalf	0x43c
	.uaword	0x3414
	.uleb128 0x4
	.uaword	0x3161
	.uleb128 0xa
	.string	"_Ifx_CPU_PSW_Bits"
	.byte	0x4
	.byte	0x5
	.uahalf	0x204
	.uaword	0x3514
	.uleb128 0xb
	.string	"CDC"
	.byte	0x5
	.uahalf	0x206
	.uaword	0x27a
	.byte	0x4
	.byte	0x7
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"CDE"
	.byte	0x5
	.uahalf	0x207
	.uaword	0x27a
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"GW"
	.byte	0x5
	.uahalf	0x208
	.uaword	0x27a
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"IS"
	.byte	0x5
	.uahalf	0x209
	.uaword	0x27a
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"IO"
	.byte	0x5
	.uahalf	0x20a
	.uaword	0x27a
	.byte	0x4
	.byte	0x2
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"PRS"
	.byte	0x5
	.uahalf	0x20b
	.uaword	0x27a
	.byte	0x4
	.byte	0x2
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"S"
	.byte	0x5
	.uahalf	0x20c
	.uaword	0x27a
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.uaword	.LASF14
	.byte	0x5
	.uahalf	0x20d
	.uaword	0x27a
	.byte	0x4
	.byte	0xc
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"SAV"
	.byte	0x5
	.uahalf	0x20e
	.uaword	0x27a
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"AV"
	.byte	0x5
	.uahalf	0x20f
	.uaword	0x27a
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"SV"
	.byte	0x5
	.uahalf	0x210
	.uaword	0x27a
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"V"
	.byte	0x5
	.uahalf	0x211
	.uaword	0x27a
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"C"
	.byte	0x5
	.uahalf	0x212
	.uaword	0x27a
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_CPU_PSW_Bits"
	.byte	0x5
	.uahalf	0x213
	.uaword	0x3419
	.uleb128 0xe
	.byte	0x4
	.byte	0x5
	.uahalf	0x467
	.uaword	0x3555
	.uleb128 0xf
	.string	"U"
	.byte	0x5
	.uahalf	0x469
	.uaword	0x130
	.uleb128 0xf
	.string	"I"
	.byte	0x5
	.uahalf	0x46a
	.uaword	0x119
	.uleb128 0xf
	.string	"B"
	.byte	0x5
	.uahalf	0x46b
	.uaword	0x3514
	.byte	0
	.uleb128 0xc
	.string	"Ifx_CPU_PSW"
	.byte	0x5
	.uahalf	0x46c
	.uaword	0x352d
	.uleb128 0x15
	.byte	0x8
	.byte	0x6
	.byte	0xe
	.uaword	0x358f
	.uleb128 0x16
	.uaword	.LASF16
	.byte	0x6
	.byte	0xf
	.uaword	0x19b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x17
	.string	"Real"
	.byte	0x6
	.byte	0x10
	.uaword	0x1c7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x3
	.string	"HSFBMEAS_S_STATUSDATA"
	.byte	0x6
	.byte	0x11
	.uaword	0x3569
	.uleb128 0x15
	.byte	0x8
	.byte	0x6
	.byte	0x19
	.uaword	0x35d5
	.uleb128 0x17
	.string	"Gain"
	.byte	0x6
	.byte	0x1a
	.uaword	0x1c7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x17
	.string	"Offset"
	.byte	0x6
	.byte	0x1b
	.uaword	0x1c7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x3
	.string	"HSFBMEAS_S_CALIBDATA"
	.byte	0x6
	.byte	0x1c
	.uaword	0x35ac
	.uleb128 0x15
	.byte	0x68
	.byte	0x6
	.byte	0x2e
	.uaword	0x36cf
	.uleb128 0x17
	.string	"Ipri"
	.byte	0x6
	.byte	0x2f
	.uaword	0x358f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x17
	.string	"Vin"
	.byte	0x6
	.byte	0x30
	.uaword	0x358f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x17
	.string	"Iout"
	.byte	0x6
	.byte	0x31
	.uaword	0x358f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x17
	.string	"Vout"
	.byte	0x6
	.byte	0x32
	.uaword	0x358f
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x17
	.string	"VoutDiag"
	.byte	0x6
	.byte	0x33
	.uaword	0x358f
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x17
	.string	"IproFet"
	.byte	0x6
	.byte	0x34
	.uaword	0x358f
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x17
	.string	"Vaux"
	.byte	0x6
	.byte	0x35
	.uaword	0x358f
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x17
	.string	"Vkl30"
	.byte	0x6
	.byte	0x36
	.uaword	0x358f
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x17
	.string	"Vkl30C"
	.byte	0x6
	.byte	0x37
	.uaword	0x358f
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x17
	.string	"Vcomp"
	.byte	0x6
	.byte	0x38
	.uaword	0x358f
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x17
	.string	"VrefDiag"
	.byte	0x6
	.byte	0x39
	.uaword	0x358f
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x17
	.string	"Vhw16V"
	.byte	0x6
	.byte	0x3a
	.uaword	0x358f
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x17
	.string	"Vhw19V"
	.byte	0x6
	.byte	0x3b
	.uaword	0x358f
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.byte	0
	.uleb128 0x3
	.string	"HSFBMEAS_S_STATUS1MS"
	.byte	0x6
	.byte	0x3c
	.uaword	0x35f1
	.uleb128 0x15
	.byte	0x38
	.byte	0x6
	.byte	0x5e
	.uaword	0x3779
	.uleb128 0x17
	.string	"Vin_P1"
	.byte	0x6
	.byte	0x5f
	.uaword	0x35d5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x17
	.string	"Vin_P2"
	.byte	0x6
	.byte	0x60
	.uaword	0x35d5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x17
	.string	"Vin_P3"
	.byte	0x6
	.byte	0x61
	.uaword	0x35d5
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x17
	.string	"Iout"
	.byte	0x6
	.byte	0x62
	.uaword	0x35d5
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x17
	.string	"Vout"
	.byte	0x6
	.byte	0x63
	.uaword	0x35d5
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x17
	.string	"Vkl30"
	.byte	0x6
	.byte	0x64
	.uaword	0x35d5
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x17
	.string	"Vin_OP1"
	.byte	0x6
	.byte	0x65
	.uaword	0x1c7
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x17
	.string	"Vin_OP2"
	.byte	0x6
	.byte	0x66
	.uaword	0x1c7
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.string	"HSFBMEAS_S_CALIB"
	.byte	0x6
	.byte	0x67
	.uaword	0x36eb
	.uleb128 0x18
	.uaword	.LASF17
	.byte	0x3c
	.byte	0x7
	.byte	0xc
	.uaword	0x3976
	.uleb128 0x17
	.string	"CfgVersion"
	.byte	0x7
	.byte	0xe
	.uaword	0x1bc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x17
	.string	"AppVersion"
	.byte	0x7
	.byte	0xf
	.uaword	0x1bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x17
	.string	"AppDateTime"
	.byte	0x7
	.byte	0x10
	.uaword	0x1bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x17
	.string	"EnableCnt"
	.byte	0x7
	.byte	0x11
	.uaword	0x1a6
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x17
	.string	"CanError"
	.byte	0x7
	.byte	0x12
	.uaword	0x1a6
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0x17
	.string	"CanErrorCnt"
	.byte	0x7
	.byte	0x13
	.uaword	0x1a6
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x16
	.uaword	.LASF18
	.byte	0x7
	.byte	0x14
	.uaword	0x1a6
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.uleb128 0x17
	.string	"OtpAutoDiagEn"
	.byte	0x7
	.byte	0x15
	.uaword	0x1a6
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x16
	.uaword	.LASF19
	.byte	0x7
	.byte	0x16
	.uaword	0x1a6
	.byte	0x2
	.byte	0x23
	.uleb128 0x16
	.uleb128 0x17
	.string	"Enable"
	.byte	0x7
	.byte	0x19
	.uaword	0x19b
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x16
	.uaword	.LASF20
	.byte	0x7
	.byte	0x1a
	.uaword	0x19b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1a
	.uleb128 0x16
	.uaword	.LASF21
	.byte	0x7
	.byte	0x1b
	.uaword	0x19b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x17
	.string	"VoutRef"
	.byte	0x7
	.byte	0x1c
	.uaword	0x19b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1e
	.uleb128 0x17
	.string	"IoutRef"
	.byte	0x7
	.byte	0x1d
	.uaword	0x19b
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x17
	.string	"VinRef"
	.byte	0x7
	.byte	0x1e
	.uaword	0x19b
	.byte	0x2
	.byte	0x23
	.uleb128 0x22
	.uleb128 0x16
	.uaword	.LASF22
	.byte	0x7
	.byte	0x1f
	.uaword	0x19b
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x16
	.uaword	.LASF23
	.byte	0x7
	.byte	0x20
	.uaword	0x19b
	.byte	0x2
	.byte	0x23
	.uleb128 0x26
	.uleb128 0x17
	.string	"DisHSK"
	.byte	0x7
	.byte	0x21
	.uaword	0x19b
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x17
	.string	"Debug"
	.byte	0x7
	.byte	0x24
	.uaword	0x19b
	.byte	0x2
	.byte	0x23
	.uleb128 0x2a
	.uleb128 0x17
	.string	"Debug1"
	.byte	0x7
	.byte	0x25
	.uaword	0x19b
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x17
	.string	"Debug2"
	.byte	0x7
	.byte	0x26
	.uaword	0x19b
	.byte	0x2
	.byte	0x23
	.uleb128 0x2e
	.uleb128 0x16
	.uaword	.LASF24
	.byte	0x7
	.byte	0x27
	.uaword	0x19b
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x16
	.uaword	.LASF25
	.byte	0x7
	.byte	0x28
	.uaword	0x19b
	.byte	0x2
	.byte	0x23
	.uleb128 0x32
	.uleb128 0x17
	.string	"Sr1En"
	.byte	0x7
	.byte	0x29
	.uaword	0x19b
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x17
	.string	"Sr2En"
	.byte	0x7
	.byte	0x2a
	.uaword	0x19b
	.byte	0x2
	.byte	0x23
	.uleb128 0x36
	.uleb128 0x17
	.string	"SrCtrl"
	.byte	0x7
	.byte	0x2b
	.uaword	0x19b
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x17
	.string	"WakeUpSleepCmd"
	.byte	0x7
	.byte	0x2e
	.uaword	0x19b
	.byte	0x2
	.byte	0x23
	.uleb128 0x3a
	.byte	0
	.uleb128 0x19
	.uaword	.LASF17
	.byte	0x7
	.byte	0x2f
	.uaword	0x3791
	.uleb128 0x18
	.uaword	.LASF26
	.byte	0x6
	.byte	0x7
	.byte	0x31
	.uaword	0x3a2c
	.uleb128 0x9
	.uaword	.LASF24
	.byte	0x7
	.byte	0x32
	.uaword	0x1a6
	.byte	0x2
	.byte	0xe
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"Debug2"
	.byte	0x7
	.byte	0x33
	.uaword	0x1a6
	.byte	0x2
	.byte	0x2
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"SrCtrl"
	.byte	0x7
	.byte	0x34
	.uaword	0x1a6
	.byte	0x2
	.byte	0xc
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x8
	.string	"Debug1"
	.byte	0x7
	.byte	0x35
	.uaword	0x1a6
	.byte	0x2
	.byte	0x2
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x1a
	.uaword	.LASF25
	.byte	0x7
	.byte	0x36
	.uaword	0x1a6
	.byte	0x2
	.byte	0x8
	.uaxword	0xfffffffffffffffa
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x8
	.string	"Sr1En"
	.byte	0x7
	.byte	0x37
	.uaword	0x1a6
	.byte	0x2
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.string	"Sr2En"
	.byte	0x7
	.byte	0x38
	.uaword	0x1a6
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.string	"Debug"
	.byte	0x7
	.byte	0x39
	.uaword	0x1a6
	.byte	0x2
	.byte	0x8
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x19
	.uaword	.LASF26
	.byte	0x7
	.byte	0x3a
	.uaword	0x3981
	.uleb128 0x18
	.uaword	.LASF27
	.byte	0x6
	.byte	0x7
	.byte	0x3c
	.uaword	0x3b1e
	.uleb128 0x9
	.uaword	.LASF28
	.byte	0x7
	.byte	0x3e
	.uaword	0x1a6
	.byte	0x2
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"FreqRate"
	.byte	0x7
	.byte	0x3f
	.uaword	0x1a6
	.byte	0x2
	.byte	0x7
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"FreqRange"
	.byte	0x7
	.byte	0x40
	.uaword	0x1a6
	.byte	0x2
	.byte	0x6
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF29
	.byte	0x7
	.byte	0x41
	.uaword	0x1a6
	.byte	0x2
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF30
	.byte	0x7
	.byte	0x42
	.uaword	0x1a6
	.byte	0x2
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"FreqPeriod"
	.byte	0x7
	.byte	0x44
	.uaword	0x1a6
	.byte	0x2
	.byte	0x7
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x8
	.string	"ErrorDis"
	.byte	0x7
	.byte	0x45
	.uaword	0x1a6
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x8
	.string	"StopWDI"
	.byte	0x7
	.byte	0x46
	.uaword	0x1a6
	.byte	0x2
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x8
	.string	"StopFSP"
	.byte	0x7
	.byte	0x47
	.uaword	0x1a6
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x9
	.uaword	.LASF31
	.byte	0x7
	.byte	0x48
	.uaword	0x1a6
	.byte	0x2
	.byte	0x6
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x9
	.uaword	.LASF32
	.byte	0x7
	.byte	0x4a
	.uaword	0x1a6
	.byte	0x2
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x19
	.uaword	.LASF27
	.byte	0x7
	.byte	0x4b
	.uaword	0x3a37
	.uleb128 0x1b
	.uaword	.LASF33
	.byte	0x6
	.byte	0x7
	.byte	0x4d
	.uaword	0x3b58
	.uleb128 0x1c
	.string	"RxData"
	.byte	0x7
	.byte	0x4e
	.uaword	0x3b58
	.uleb128 0x1c
	.string	"B1"
	.byte	0x7
	.byte	0x4f
	.uaword	0x3a2c
	.uleb128 0x1c
	.string	"B2"
	.byte	0x7
	.byte	0x50
	.uaword	0x3b1e
	.byte	0
	.uleb128 0x5
	.uaword	0x191
	.uaword	0x3b68
	.uleb128 0x6
	.uaword	0x174
	.byte	0x5
	.byte	0
	.uleb128 0x19
	.uaword	.LASF33
	.byte	0x7
	.byte	0x51
	.uaword	0x3b29
	.uleb128 0x15
	.byte	0xc8
	.byte	0x7
	.byte	0x96
	.uaword	0x3c6b
	.uleb128 0x17
	.string	"RecordVersion_Hi"
	.byte	0x7
	.byte	0x97
	.uaword	0x20a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x17
	.string	"RecordVersion_Lo"
	.byte	0x7
	.byte	0x98
	.uaword	0x20a
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x17
	.string	"LVDC_ParameterEnable"
	.byte	0x7
	.byte	0x99
	.uaword	0x20a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x17
	.string	"LVDC_Ctrl_IoutBoostMax"
	.byte	0x7
	.byte	0x9a
	.uaword	0x20a
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x17
	.string	"LVDC_Ctrl_PreVinTarget"
	.byte	0x7
	.byte	0x9b
	.uaword	0x20a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x17
	.string	"LVDC_Ctrl_PreVinSrRise"
	.byte	0x7
	.byte	0x9c
	.uaword	0x20a
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x17
	.string	"LVDC_Ctrl_PreVlimMin"
	.byte	0x7
	.byte	0x9d
	.uaword	0x20a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x17
	.string	"LVDC_Reserved"
	.byte	0x7
	.byte	0x9e
	.uaword	0x3c6b
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.byte	0
	.uleb128 0x5
	.uaword	0x1fd
	.uaword	0x3c7b
	.uleb128 0x6
	.uaword	0x174
	.byte	0xb9
	.byte	0
	.uleb128 0x3
	.string	"ParameterData_t"
	.byte	0x7
	.byte	0x9f
	.uaword	0x3b73
	.uleb128 0x15
	.byte	0x96
	.byte	0x7
	.byte	0xa1
	.uaword	0x3f30
	.uleb128 0x17
	.string	"LVDC_IsCalibrated"
	.byte	0x7
	.byte	0xa2
	.uaword	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x17
	.string	"LVDC_Calibration_Version"
	.byte	0x7
	.byte	0xa3
	.uaword	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x17
	.string	"LVDC_Output_VSense_gain"
	.byte	0x7
	.byte	0xa4
	.uaword	0x20a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x17
	.string	"LVDC_Output_VSense_offset"
	.byte	0x7
	.byte	0xa5
	.uaword	0x20a
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x17
	.string	"LVDC_KL30F_VM_gain"
	.byte	0x7
	.byte	0xa6
	.uaword	0x20a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x17
	.string	"LVDC_KL30F_VM_offset"
	.byte	0x7
	.byte	0xa7
	.uaword	0x20a
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x17
	.string	"LVDC_InOut_ISense_gain"
	.byte	0x7
	.byte	0xa8
	.uaword	0x20a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x17
	.string	"LVDC_InOut_ISense_offset"
	.byte	0x7
	.byte	0xa9
	.uaword	0x20a
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0x17
	.string	"LVDC_Input_1_VSense_gain"
	.byte	0x7
	.byte	0xaa
	.uaword	0x20a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x17
	.string	"LVDC_Input_1_VSense_offset"
	.byte	0x7
	.byte	0xab
	.uaword	0x20a
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.uleb128 0x17
	.string	"LVDC_Input_2_VSense_gain"
	.byte	0x7
	.byte	0xac
	.uaword	0x20a
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x17
	.string	"LVDC_Input_2_VSense_offset"
	.byte	0x7
	.byte	0xad
	.uaword	0x20a
	.byte	0x2
	.byte	0x23
	.uleb128 0x16
	.uleb128 0x17
	.string	"LVDC_Input_3_VSense_gain"
	.byte	0x7
	.byte	0xae
	.uaword	0x20a
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x17
	.string	"LVDC_Input_3_VSense_offset"
	.byte	0x7
	.byte	0xaf
	.uaword	0x20a
	.byte	0x2
	.byte	0x23
	.uleb128 0x1a
	.uleb128 0x17
	.string	"LVDC_Input_1to2_VSense_OP"
	.byte	0x7
	.byte	0xb0
	.uaword	0x20a
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x17
	.string	"LVDC_Input_2to3_VSense_OP"
	.byte	0x7
	.byte	0xb1
	.uaword	0x20a
	.byte	0x2
	.byte	0x23
	.uleb128 0x1e
	.uleb128 0x17
	.string	"reserved_LVDC"
	.byte	0x7
	.byte	0xb2
	.uaword	0x3f30
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x17
	.string	"LVDC_DataBlock_CRC32_checksum_Hi"
	.byte	0x7
	.byte	0xb3
	.uaword	0x218
	.byte	0x3
	.byte	0x23
	.uleb128 0x92
	.uleb128 0x17
	.string	"LVDC_DataBlock_CRC32_checksum_Lo"
	.byte	0x7
	.byte	0xb4
	.uaword	0x218
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.byte	0
	.uleb128 0x5
	.uaword	0x1fd
	.uaword	0x3f40
	.uleb128 0x6
	.uaword	0x174
	.byte	0x71
	.byte	0
	.uleb128 0x3
	.string	"CalibrationData_t"
	.byte	0x7
	.byte	0xb5
	.uaword	0x3c92
	.uleb128 0x15
	.byte	0x10
	.byte	0x8
	.byte	0x67
	.uaword	0x3ffe
	.uleb128 0x17
	.string	"ErrCode0"
	.byte	0x8
	.byte	0x68
	.uaword	0x1a6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x17
	.string	"ErrCode1"
	.byte	0x8
	.byte	0x69
	.uaword	0x1a6
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x17
	.string	"ErrCode2"
	.byte	0x8
	.byte	0x6a
	.uaword	0x1a6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x17
	.string	"ErrCode3"
	.byte	0x8
	.byte	0x6b
	.uaword	0x1a6
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x17
	.string	"WarnCode0"
	.byte	0x8
	.byte	0x6c
	.uaword	0x1a6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x17
	.string	"WarnCode1"
	.byte	0x8
	.byte	0x6d
	.uaword	0x1a6
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x17
	.string	"WarnCode2"
	.byte	0x8
	.byte	0x6e
	.uaword	0x1a6
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x17
	.string	"WarnCode3"
	.byte	0x8
	.byte	0x6f
	.uaword	0x1a6
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.byte	0
	.uleb128 0x3
	.string	"HSFBDIAG_S_STATUS1MS"
	.byte	0x8
	.byte	0x70
	.uaword	0x3f59
	.uleb128 0x15
	.byte	0xc
	.byte	0x9
	.byte	0xe
	.uaword	0x40bb
	.uleb128 0x17
	.string	"ClrWarning"
	.byte	0x9
	.byte	0xf
	.uaword	0x1d2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x17
	.string	"Error"
	.byte	0x9
	.byte	0x10
	.uaword	0x1d2
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x17
	.string	"Init"
	.byte	0x9
	.byte	0x11
	.uaword	0x1d2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x17
	.string	"HsfbEn"
	.byte	0x9
	.byte	0x12
	.uaword	0x1d2
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x17
	.string	"Reset"
	.byte	0x9
	.byte	0x13
	.uaword	0x1d2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x17
	.string	"DrvReset"
	.byte	0x9
	.byte	0x14
	.uaword	0x1d2
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0x17
	.string	"ErrReset"
	.byte	0x9
	.byte	0x15
	.uaword	0x1d2
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x17
	.string	"Opm"
	.byte	0x9
	.byte	0x16
	.uaword	0x1a6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x17
	.string	"Topo"
	.byte	0x9
	.byte	0x17
	.uaword	0x1a6
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.string	"HSFBSTATE_S_STATUS"
	.byte	0x9
	.byte	0x18
	.uaword	0x401a
	.uleb128 0x15
	.byte	0x8
	.byte	0xa
	.byte	0xe
	.uaword	0x40fc
	.uleb128 0x17
	.string	"Temp"
	.byte	0xa
	.byte	0xf
	.uaword	0x19b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x17
	.string	"Rntc"
	.byte	0xa
	.byte	0x10
	.uaword	0x1b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x3
	.string	"HSFBNTC_S_NTCSTATUS"
	.byte	0xa
	.byte	0x11
	.uaword	0x40d5
	.uleb128 0x15
	.byte	0x30
	.byte	0xa
	.byte	0x1a
	.uaword	0x4186
	.uleb128 0x17
	.string	"Pri"
	.byte	0xa
	.byte	0x1b
	.uaword	0x40fc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x17
	.string	"SrA"
	.byte	0xa
	.byte	0x1c
	.uaword	0x40fc
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x17
	.string	"SrB"
	.byte	0xa
	.byte	0x1d
	.uaword	0x40fc
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x17
	.string	"WaterIn"
	.byte	0xa
	.byte	0x1e
	.uaword	0x40fc
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x17
	.string	"WaterOut"
	.byte	0xa
	.byte	0x1f
	.uaword	0x40fc
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x17
	.string	"WaterOutDiag"
	.byte	0xa
	.byte	0x20
	.uaword	0x40fc
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.string	"HSFBNTC_S_STATUS"
	.byte	0xa
	.byte	0x21
	.uaword	0x4117
	.uleb128 0x15
	.byte	0x18
	.byte	0xb
	.byte	0xe
	.uaword	0x4396
	.uleb128 0x17
	.string	"DCDC01_SM1"
	.byte	0xb
	.byte	0xf
	.uaword	0x1d2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x17
	.string	"DCDC01_SM2"
	.byte	0xb
	.byte	0x10
	.uaword	0x1d2
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x17
	.string	"DCDC01_SM3"
	.byte	0xb
	.byte	0x11
	.uaword	0x1d2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x17
	.string	"DCDC01_SM4"
	.byte	0xb
	.byte	0x12
	.uaword	0x1d2
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x17
	.string	"DCDC01_LFD1"
	.byte	0xb
	.byte	0x13
	.uaword	0x1d2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x17
	.string	"DCDC01_LFD2"
	.byte	0xb
	.byte	0x14
	.uaword	0x1d2
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0x17
	.string	"DCDC01_LFD3"
	.byte	0xb
	.byte	0x15
	.uaword	0x1d2
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x17
	.string	"DCDC01_LFD4"
	.byte	0xb
	.byte	0x16
	.uaword	0x1d2
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0x17
	.string	"DCDC02_SM1"
	.byte	0xb
	.byte	0x17
	.uaword	0x1d2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x17
	.string	"DCDC02_SM2"
	.byte	0xb
	.byte	0x18
	.uaword	0x1d2
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0x17
	.string	"DCDC02_SM3"
	.byte	0xb
	.byte	0x19
	.uaword	0x1d2
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x17
	.string	"DCDC02_SM4"
	.byte	0xb
	.byte	0x1a
	.uaword	0x1d2
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0x17
	.string	"DCDC02_LFD1"
	.byte	0xb
	.byte	0x1b
	.uaword	0x1d2
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x17
	.string	"DCDC02_LFD2"
	.byte	0xb
	.byte	0x1c
	.uaword	0x1d2
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0x17
	.string	"DCDC02_LFD3"
	.byte	0xb
	.byte	0x1d
	.uaword	0x1d2
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0x17
	.string	"DCDC02_LFD4"
	.byte	0xb
	.byte	0x1e
	.uaword	0x1d2
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.uleb128 0x17
	.string	"DCDC03_SM1"
	.byte	0xb
	.byte	0x1f
	.uaword	0x1d2
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x17
	.string	"DCDC03_SM2"
	.byte	0xb
	.byte	0x20
	.uaword	0x1d2
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0x17
	.string	"DCDC03_LFD1"
	.byte	0xb
	.byte	0x21
	.uaword	0x1d2
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.uleb128 0x17
	.string	"DCDC05_SM1"
	.byte	0xb
	.byte	0x22
	.uaword	0x1d2
	.byte	0x2
	.byte	0x23
	.uleb128 0x13
	.uleb128 0x17
	.string	"DCDC05_LFD1"
	.byte	0xb
	.byte	0x23
	.uaword	0x1d2
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x17
	.string	"DCDC05_LFD2"
	.byte	0xb
	.byte	0x24
	.uaword	0x1d2
	.byte	0x2
	.byte	0x23
	.uleb128 0x15
	.uleb128 0x17
	.string	"Batt02_LFD5"
	.byte	0xb
	.byte	0x25
	.uaword	0x1d2
	.byte	0x2
	.byte	0x23
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.string	"HSFBSAFETY_S_SAFETYSTATUS"
	.byte	0xb
	.byte	0x26
	.uaword	0x419e
	.uleb128 0x15
	.byte	0xa
	.byte	0xb
	.byte	0x28
	.uaword	0x4411
	.uleb128 0x17
	.string	"AutoDiagWait"
	.byte	0xb
	.byte	0x29
	.uaword	0x1d2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x17
	.string	"AutoDiagFin"
	.byte	0xb
	.byte	0x2a
	.uaword	0x1d2
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x17
	.string	"EachRun"
	.byte	0xb
	.byte	0x2b
	.uaword	0x4411
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x17
	.string	"EachFin"
	.byte	0xb
	.byte	0x2c
	.uaword	0x4411
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.byte	0
	.uleb128 0x5
	.uaword	0x1d2
	.uaword	0x4421
	.uleb128 0x6
	.uaword	0x174
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.string	"HSFBSAFETY_S_AUTODIAGSTATUS"
	.byte	0xb
	.byte	0x2d
	.uaword	0x43b7
	.uleb128 0x15
	.byte	0x22
	.byte	0xb
	.byte	0x2f
	.uaword	0x4474
	.uleb128 0x16
	.uaword	.LASF34
	.byte	0xb
	.byte	0x30
	.uaword	0x4396
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x17
	.string	"AutoDiagStatus"
	.byte	0xb
	.byte	0x31
	.uaword	0x4421
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0
	.uleb128 0x3
	.string	"HSFBSAFETY_S_STATUS1MS"
	.byte	0xb
	.byte	0x32
	.uaword	0x4444
	.uleb128 0x15
	.byte	0x8
	.byte	0xc
	.byte	0x13
	.uaword	0x44db
	.uleb128 0x17
	.string	"CpuTime"
	.byte	0xc
	.byte	0x14
	.uaword	0x1a6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x17
	.string	"IsrTime"
	.byte	0xc
	.byte	0x15
	.uaword	0x1a6
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x16
	.uaword	.LASF22
	.byte	0xc
	.byte	0x16
	.uaword	0x1a6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x16
	.uaword	.LASF23
	.byte	0xc
	.byte	0x17
	.uaword	0x1a6
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.byte	0
	.uleb128 0x3
	.string	"HSFBAPP_S_STATUS"
	.byte	0xc
	.byte	0x18
	.uaword	0x4492
	.uleb128 0x15
	.byte	0xc
	.byte	0xc
	.byte	0x1a
	.uaword	0x45d8
	.uleb128 0x17
	.string	"FastTurnOff"
	.byte	0xc
	.byte	0x1b
	.uaword	0x1d2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x17
	.string	"PriDriveDis"
	.byte	0xc
	.byte	0x1c
	.uaword	0x1d2
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x17
	.string	"SrDriveDis"
	.byte	0xc
	.byte	0x1d
	.uaword	0x1d2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x17
	.string	"IpriCbc"
	.byte	0xc
	.byte	0x1e
	.uaword	0x1d2
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x17
	.string	"IpriOcp"
	.byte	0xc
	.byte	0x1f
	.uaword	0x1d2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x17
	.string	"VinOvp"
	.byte	0xc
	.byte	0x20
	.uaword	0x1d2
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0x17
	.string	"IoutPOcp"
	.byte	0xc
	.byte	0x21
	.uaword	0x1d2
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x17
	.string	"IoutNOcp"
	.byte	0xc
	.byte	0x22
	.uaword	0x1d2
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0x17
	.string	"Vout16VOvp"
	.byte	0xc
	.byte	0x23
	.uaword	0x1d2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x17
	.string	"Vout19VOvp"
	.byte	0xc
	.byte	0x24
	.uaword	0x1d2
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0x17
	.string	"WaterOutOtp"
	.byte	0xc
	.byte	0x25
	.uaword	0x1d2
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.string	"HSFBAPP_S_PORTSTATUS"
	.byte	0xc
	.byte	0x26
	.uaword	0x44f3
	.uleb128 0x15
	.byte	0x1a
	.byte	0xc
	.byte	0x28
	.uaword	0x46c1
	.uleb128 0x17
	.string	"Enable"
	.byte	0xc
	.byte	0x29
	.uaword	0x1a6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x16
	.uaword	.LASF20
	.byte	0xc
	.byte	0x2a
	.uaword	0x1a6
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x16
	.uaword	.LASF21
	.byte	0xc
	.byte	0x2b
	.uaword	0x1a6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x17
	.string	"IoutRef"
	.byte	0xc
	.byte	0x2c
	.uaword	0x1a6
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x17
	.string	"VoutRef"
	.byte	0xc
	.byte	0x2d
	.uaword	0x1a6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x17
	.string	"VinRef"
	.byte	0xc
	.byte	0x2e
	.uaword	0x1a6
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x16
	.uaword	.LASF22
	.byte	0xc
	.byte	0x2f
	.uaword	0x1a6
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x16
	.uaword	.LASF23
	.byte	0xc
	.byte	0x30
	.uaword	0x1a6
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0x16
	.uaword	.LASF18
	.byte	0xc
	.byte	0x31
	.uaword	0x1a6
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x16
	.uaword	.LASF19
	.byte	0xc
	.byte	0x32
	.uaword	0x1a6
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.uleb128 0x16
	.uaword	.LASF30
	.byte	0xc
	.byte	0x33
	.uaword	0x1a6
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x16
	.uaword	.LASF29
	.byte	0xc
	.byte	0x34
	.uaword	0x1a6
	.byte	0x2
	.byte	0x23
	.uleb128 0x16
	.uleb128 0x16
	.uaword	.LASF28
	.byte	0xc
	.byte	0x35
	.uaword	0x1a6
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0
	.uleb128 0x3
	.string	"HSFBAPP_S_RX"
	.byte	0xc
	.byte	0x36
	.uaword	0x45f4
	.uleb128 0x15
	.byte	0xec
	.byte	0xc
	.byte	0x4e
	.uaword	0x476c
	.uleb128 0x17
	.string	"AppStatus"
	.byte	0xc
	.byte	0x4f
	.uaword	0x44db
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x17
	.string	"PortStatus"
	.byte	0xc
	.byte	0x50
	.uaword	0x45d8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x17
	.string	"MeasStatus"
	.byte	0xc
	.byte	0x51
	.uaword	0x36cf
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x17
	.string	"DiagStatus"
	.byte	0xc
	.byte	0x52
	.uaword	0x3ffe
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x17
	.string	"StateStatus"
	.byte	0xc
	.byte	0x53
	.uaword	0x40bb
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x17
	.string	"NtcStatus"
	.byte	0xc
	.byte	0x54
	.uaword	0x4186
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x16
	.uaword	.LASF34
	.byte	0xc
	.byte	0x55
	.uaword	0x4474
	.byte	0x3
	.byte	0x23
	.uleb128 0xc8
	.byte	0
	.uleb128 0x3
	.string	"HSFBAPP_S_TX"
	.byte	0xc
	.byte	0x56
	.uaword	0x46d5
	.uleb128 0x15
	.byte	0x10
	.byte	0xd
	.byte	0x2a
	.uaword	0x47e3
	.uleb128 0x17
	.string	"IoutBoostMax"
	.byte	0xd
	.byte	0x2b
	.uaword	0x1c7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x17
	.string	"PreVinTarget"
	.byte	0xd
	.byte	0x2c
	.uaword	0x1c7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x17
	.string	"PreVinSrRise"
	.byte	0xd
	.byte	0x2d
	.uaword	0x1c7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x17
	.string	"PreVlimMin"
	.byte	0xd
	.byte	0x2e
	.uaword	0x1c7
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x3
	.string	"HSFBCTRL_S_PARAM"
	.byte	0xd
	.byte	0x2f
	.uaword	0x4780
	.uleb128 0x1d
	.byte	0x4
	.byte	0xe
	.byte	0x15
	.uaword	0x4905
	.uleb128 0x1e
	.string	"HSFBSTATE_E_STATE_None"
	.sleb128 0
	.uleb128 0x1e
	.string	"HSFBSTATE_E_STATE_Init"
	.sleb128 1
	.uleb128 0x1e
	.string	"HSFBSTATE_E_STATE_Idle"
	.sleb128 2
	.uleb128 0x1e
	.string	"HSFBSTATE_E_STATE_SoftStart"
	.sleb128 3
	.uleb128 0x1e
	.string	"HSFBSTATE_E_STATE_SoftStop"
	.sleb128 4
	.uleb128 0x1e
	.string	"HSFBSTATE_E_STATE_Charge"
	.sleb128 5
	.uleb128 0x1e
	.string	"HSFBSTATE_E_STATE_WaitForReset"
	.sleb128 6
	.uleb128 0x1e
	.string	"HSFBSTATE_E_STATE_ResetLatch"
	.sleb128 7
	.uleb128 0x1e
	.string	"HSFBSTATE_E_STATE_ResetDriver"
	.sleb128 8
	.byte	0
	.uleb128 0x3
	.string	"HSFBSTATE_E_STATE"
	.byte	0xe
	.byte	0x1f
	.uaword	0x47fb
	.uleb128 0x15
	.byte	0xc
	.byte	0xf
	.byte	0x7f
	.uaword	0x497f
	.uleb128 0x17
	.string	"Year"
	.byte	0xf
	.byte	0x80
	.uaword	0x1a6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x17
	.string	"Month"
	.byte	0xf
	.byte	0x81
	.uaword	0x1a6
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x17
	.string	"Day"
	.byte	0xf
	.byte	0x82
	.uaword	0x1a6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x17
	.string	"Hour"
	.byte	0xf
	.byte	0x83
	.uaword	0x1a6
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x17
	.string	"Min"
	.byte	0xf
	.byte	0x84
	.uaword	0x1a6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x17
	.string	"Sec"
	.byte	0xf
	.byte	0x85
	.uaword	0x1a6
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.string	"MAIN_S_BUILD_INFO"
	.byte	0xf
	.byte	0x86
	.uaword	0x491e
	.uleb128 0xc
	.string	"LVDC_WakeUpSleepManagement_t"
	.byte	0x10
	.uahalf	0x388
	.uaword	0x1dd
	.uleb128 0xc
	.string	"LVDC_SafetyMeasure_t"
	.byte	0x10
	.uahalf	0x38a
	.uaword	0x1dd
	.uleb128 0xc
	.string	"DCDC_Measure4_t"
	.byte	0x10
	.uahalf	0x38c
	.uaword	0x1dd
	.uleb128 0xc
	.string	"DCDC_Status_ErrCode_t"
	.byte	0x10
	.uahalf	0x38e
	.uaword	0x1dd
	.uleb128 0xc
	.string	"DCDC_Measure2_t"
	.byte	0x10
	.uahalf	0x394
	.uaword	0x1dd
	.uleb128 0xc
	.string	"LvDc_Pma_ErrSrc_t"
	.byte	0x10
	.uahalf	0x396
	.uaword	0x1dd
	.uleb128 0xc
	.string	"DcDc_Scope1_t"
	.byte	0x10
	.uahalf	0x398
	.uaword	0x1dd
	.uleb128 0xc
	.string	"DcDc_Scope0_t"
	.byte	0x10
	.uahalf	0x39a
	.uaword	0x1dd
	.uleb128 0xc
	.string	"DCDC_Status_t"
	.byte	0x10
	.uahalf	0x39c
	.uaword	0x1dd
	.uleb128 0xc
	.string	"DCDC_Measure3_t"
	.byte	0x10
	.uahalf	0x39e
	.uaword	0x1dd
	.uleb128 0xc
	.string	"DCDC_Measure_t"
	.byte	0x10
	.uahalf	0x3a0
	.uaword	0x1dd
	.uleb128 0xc
	.string	"COM_WakeUpSleepManagement_t"
	.byte	0x10
	.uahalf	0x3a3
	.uaword	0x1dd
	.uleb128 0xc
	.string	"HTB_CMD_t"
	.byte	0x10
	.uahalf	0x3a7
	.uaword	0x1dd
	.uleb128 0xc
	.string	"DCDC_DEV_CMD_t"
	.byte	0x10
	.uahalf	0x3ad
	.uaword	0x1dd
	.uleb128 0xc
	.string	"DCDC_CMD_t"
	.byte	0x10
	.uahalf	0x3af
	.uaword	0x1dd
	.uleb128 0x1f
	.byte	0x4
	.byte	0x10
	.uahalf	0x3b5
	.uaword	0x4b4c
	.uleb128 0x1e
	.string	"Cyclic"
	.sleb128 0
	.uleb128 0x1e
	.string	"not_used"
	.sleb128 1
	.uleb128 0x1e
	.string	"IfActive"
	.sleb128 2
	.uleb128 0x1e
	.string	"NoMsgSendType"
	.sleb128 3
	.byte	0
	.uleb128 0xc
	.string	"Can_GenMsgSendType_t"
	.byte	0x10
	.uahalf	0x3b5
	.uaword	0x4b13
	.uleb128 0x1f
	.byte	0x4
	.byte	0x10
	.uahalf	0x3b6
	.uaword	0x4ba9
	.uleb128 0x1e
	.string	"Application"
	.sleb128 0
	.uleb128 0x1e
	.string	"NM"
	.sleb128 1
	.uleb128 0x1e
	.string	"NMH"
	.sleb128 2
	.uleb128 0x1e
	.string	"TP2_0"
	.sleb128 3
	.uleb128 0x1e
	.string	"ISO_TP"
	.sleb128 4
	.uleb128 0x1e
	.string	"BAP"
	.sleb128 5
	.uleb128 0x1e
	.string	"EID"
	.sleb128 6
	.byte	0
	.uleb128 0xc
	.string	"Can_MsgType_t"
	.byte	0x10
	.uahalf	0x3b6
	.uaword	0x4b69
	.uleb128 0x20
	.byte	0x24
	.byte	0x10
	.uahalf	0x3b8
	.uaword	0x4c65
	.uleb128 0x12
	.string	"Id"
	.byte	0x10
	.uahalf	0x3b9
	.uaword	0x1ed
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.string	"Dlc"
	.byte	0x10
	.uahalf	0x3ba
	.uaword	0x1dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x13
	.uaword	.LASF35
	.byte	0x10
	.uahalf	0x3bb
	.uaword	0x4b4c
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x12
	.string	"MsgType"
	.byte	0x10
	.uahalf	0x3bc
	.uaword	0x4ba9
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x12
	.string	"StartDelay"
	.byte	0x10
	.uahalf	0x3bd
	.uaword	0x1dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x12
	.string	"CycleTime"
	.byte	0x10
	.uahalf	0x3be
	.uaword	0x1dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x13
	.uaword	.LASF16
	.byte	0x10
	.uahalf	0x3bf
	.uaword	0x4c65
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x13
	.uaword	.LASF36
	.byte	0x10
	.uahalf	0x3c0
	.uaword	0x4c65
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x12
	.string	"ConfFlag"
	.byte	0x10
	.uahalf	0x3c1
	.uaword	0x4c65
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0
	.uleb128 0x21
	.uaword	0x4c6a
	.uleb128 0x22
	.byte	0x4
	.uaword	0x1dd
	.uleb128 0xc
	.string	"CanTxMsg_t"
	.byte	0x10
	.uahalf	0x3c2
	.uaword	0x4bbf
	.uleb128 0x20
	.byte	0x24
	.byte	0x10
	.uahalf	0x3c4
	.uaword	0x4d2a
	.uleb128 0x12
	.string	"Id"
	.byte	0x10
	.uahalf	0x3c5
	.uaword	0x1ed
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.string	"Dlc"
	.byte	0x10
	.uahalf	0x3c6
	.uaword	0x1dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x13
	.uaword	.LASF35
	.byte	0x10
	.uahalf	0x3c7
	.uaword	0x4b4c
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x12
	.string	"MsgType"
	.byte	0x10
	.uahalf	0x3c8
	.uaword	0x4ba9
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x12
	.string	"Timeout"
	.byte	0x10
	.uahalf	0x3c9
	.uaword	0x1dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x12
	.string	"TimeoutCounter"
	.byte	0x10
	.uahalf	0x3ca
	.uaword	0x4c65
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x13
	.uaword	.LASF16
	.byte	0x10
	.uahalf	0x3cb
	.uaword	0x4c65
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x13
	.uaword	.LASF36
	.byte	0x10
	.uahalf	0x3cc
	.uaword	0x4c65
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x12
	.string	"IndFlag"
	.byte	0x10
	.uahalf	0x3cd
	.uaword	0x4c65
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0
	.uleb128 0xc
	.string	"CanRxMsg_t"
	.byte	0x10
	.uahalf	0x3ce
	.uaword	0x4c83
	.uleb128 0x20
	.byte	0x8
	.byte	0x10
	.uahalf	0x3d1
	.uaword	0x4d6c
	.uleb128 0x12
	.string	"Timeout"
	.byte	0x10
	.uahalf	0x3d2
	.uaword	0x1dd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.string	"IndFlg"
	.byte	0x10
	.uahalf	0x3d3
	.uaword	0x1dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0xc
	.string	"CanRxFlags_t"
	.byte	0x10
	.uahalf	0x3d4
	.uaword	0x4d3d
	.uleb128 0x20
	.byte	0x4
	.byte	0x10
	.uahalf	0x3d7
	.uaword	0x4da1
	.uleb128 0x12
	.string	"ConfirmFlg"
	.byte	0x10
	.uahalf	0x3d8
	.uaword	0x1dd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xc
	.string	"CanTxFlags_t"
	.byte	0x10
	.uahalf	0x3d9
	.uaword	0x4d81
	.uleb128 0x1f
	.byte	0x4
	.byte	0x10
	.uahalf	0x469
	.uaword	0x4e9e
	.uleb128 0x1e
	.string	"CAN_RX_COM_WAKEUPSLEEPMANAGEMENT_IDX"
	.sleb128 0
	.uleb128 0x1e
	.string	"CAN_RX_HVDC_SAFETYMEASURE_IDX"
	.sleb128 1
	.uleb128 0x1e
	.string	"CAN_RX_HTB_CMD_IDX"
	.sleb128 2
	.uleb128 0x1e
	.string	"CAN_RX_PARAMETER_COM_DCDC_IDX"
	.sleb128 3
	.uleb128 0x1e
	.string	"CAN_RX_DCDC_HSFB_DIAG_REQ_IDX"
	.sleb128 4
	.uleb128 0x1e
	.string	"CAN_RX_DCDC_DEV_CMD_IDX"
	.sleb128 5
	.uleb128 0x1e
	.string	"CAN_RX_DCDC_CMD_IDX"
	.sleb128 6
	.uleb128 0x1e
	.string	"CAN_RX_MSG_SIZE"
	.sleb128 7
	.byte	0
	.uleb128 0x1f
	.byte	0x4
	.byte	0x10
	.uahalf	0x474
	.uaword	0x5073
	.uleb128 0x1e
	.string	"CAN_TX_LVDC_PMA_ERRCODE_IDX"
	.sleb128 0
	.uleb128 0x1e
	.string	"CAN_TX_DCDC_HTB_MEASURE_IDX"
	.sleb128 1
	.uleb128 0x1e
	.string	"CAN_TX_LVDC_WAKEUPSLEEPMANAGEMENT_IDX"
	.sleb128 2
	.uleb128 0x1e
	.string	"CAN_TX_LVDC_SAFETYMEASURE_IDX"
	.sleb128 3
	.uleb128 0x1e
	.string	"CAN_TX_DCDC_MEASURE4_IDX"
	.sleb128 4
	.uleb128 0x1e
	.string	"CAN_TX_DCDC_STATUS_ERRCODE_IDX"
	.sleb128 5
	.uleb128 0x1e
	.string	"CAN_TX_PARAMETER_DCDC_COM_IDX"
	.sleb128 6
	.uleb128 0x1e
	.string	"CAN_TX_DCDC_HSFB_DIAG_RESP_IDX"
	.sleb128 7
	.uleb128 0x1e
	.string	"CAN_TX_DCDC_MEASURE2_IDX"
	.sleb128 8
	.uleb128 0x1e
	.string	"CAN_TX_LVDC_PMA_ERRSRC_IDX"
	.sleb128 9
	.uleb128 0x1e
	.string	"CAN_TX_DCDC_SCOPE1_IDX"
	.sleb128 10
	.uleb128 0x1e
	.string	"CAN_TX_DCDC_SCOPE0_IDX"
	.sleb128 11
	.uleb128 0x1e
	.string	"CAN_TX_DCDC_STATUS_IDX"
	.sleb128 12
	.uleb128 0x1e
	.string	"CAN_TX_DCDC_MEASURE3_IDX"
	.sleb128 13
	.uleb128 0x1e
	.string	"CAN_TX_DCDC_MEASURE_IDX"
	.sleb128 14
	.uleb128 0x1e
	.string	"CAN_TX_MSG_SIZE"
	.sleb128 15
	.byte	0
	.uleb128 0x18
	.uaword	.LASF37
	.byte	0x2
	.byte	0x11
	.byte	0x29
	.uaword	0x509b
	.uleb128 0x17
	.string	"BZ"
	.byte	0x11
	.byte	0x2a
	.uaword	0x1fd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x17
	.string	"CRC"
	.byte	0x11
	.byte	0x2b
	.uaword	0x1fd
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0
	.uleb128 0x19
	.uaword	.LASF37
	.byte	0x11
	.byte	0x2c
	.uaword	0x5073
	.uleb128 0x18
	.uaword	.LASF38
	.byte	0x5a
	.byte	0x11
	.byte	0x2e
	.uaword	0x512d
	.uleb128 0x17
	.string	"TxData"
	.byte	0x11
	.byte	0x2f
	.uaword	0x512d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x17
	.string	"RxData"
	.byte	0x11
	.byte	0x30
	.uaword	0x513d
	.byte	0x2
	.byte	0x23
	.uleb128 0x1e
	.uleb128 0x17
	.string	"RxErr"
	.byte	0x11
	.byte	0x31
	.uaword	0x513d
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x17
	.string	"RxErrCnt"
	.byte	0x11
	.byte	0x32
	.uaword	0x514d
	.byte	0x2
	.byte	0x23
	.uleb128 0x3a
	.uleb128 0x17
	.string	"RxErrSign"
	.byte	0x11
	.byte	0x33
	.uaword	0x514d
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x16
	.uaword	.LASF39
	.byte	0x11
	.byte	0x34
	.uaword	0x1a6
	.byte	0x2
	.byte	0x23
	.uleb128 0x56
	.uleb128 0x17
	.string	"RxErrSum"
	.byte	0x11
	.byte	0x35
	.uaword	0x1a6
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.byte	0
	.uleb128 0x5
	.uaword	0x509b
	.uaword	0x513d
	.uleb128 0x6
	.uaword	0x174
	.byte	0xe
	.byte	0
	.uleb128 0x5
	.uaword	0x509b
	.uaword	0x514d
	.uleb128 0x6
	.uaword	0x174
	.byte	0x6
	.byte	0
	.uleb128 0x5
	.uaword	0x1a6
	.uaword	0x515d
	.uleb128 0x6
	.uaword	0x174
	.byte	0x6
	.byte	0
	.uleb128 0x19
	.uaword	.LASF38
	.byte	0x11
	.byte	0x36
	.uaword	0x50a6
	.uleb128 0x18
	.uaword	.LASF40
	.byte	0x4
	.byte	0x12
	.byte	0x8e
	.uaword	0x52d1
	.uleb128 0x8
	.string	"Unlock"
	.byte	0x12
	.byte	0x90
	.uaword	0x1d2
	.byte	0x1
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"LockUp"
	.byte	0x12
	.byte	0x91
	.uaword	0x1d2
	.byte	0x1
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"Config"
	.byte	0x12
	.byte	0x92
	.uaword	0x1d2
	.byte	0x1
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"ReadStatus"
	.byte	0x12
	.byte	0x93
	.uaword	0x1d2
	.byte	0x1
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"MPSConfig"
	.byte	0x12
	.byte	0x94
	.uaword	0x1d2
	.byte	0x1
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"GotoNormal"
	.byte	0x12
	.byte	0x95
	.uaword	0x1d2
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"ParityCheck"
	.byte	0x12
	.byte	0x96
	.uaword	0x1d2
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"ABISTFin"
	.byte	0x12
	.byte	0x98
	.uaword	0x1d2
	.byte	0x1
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"ABISTSS"
	.byte	0x12
	.byte	0x99
	.uaword	0x1d2
	.byte	0x1
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x8
	.string	"ABISTInt"
	.byte	0x12
	.byte	0x9a
	.uaword	0x1d2
	.byte	0x1
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x8
	.string	"WWDEnCnt"
	.byte	0x12
	.byte	0x9b
	.uaword	0x1d2
	.byte	0x1
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x8
	.string	"NormalState"
	.byte	0x12
	.byte	0x9d
	.uaword	0x1d2
	.byte	0x1
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x8
	.string	"QCOStatus"
	.byte	0x12
	.byte	0x9e
	.uaword	0x1d2
	.byte	0x1
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x8
	.string	"QVRStatus"
	.byte	0x12
	.byte	0x9f
	.uaword	0x1d2
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x9
	.uaword	.LASF31
	.byte	0x12
	.byte	0xa1
	.uaword	0x1a6
	.byte	0x2
	.byte	0x2
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF32
	.byte	0x12
	.byte	0xa2
	.uaword	0x1a6
	.byte	0x2
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x19
	.uaword	.LASF40
	.byte	0x12
	.byte	0xa3
	.uaword	0x5168
	.uleb128 0x22
	.byte	0x4
	.uaword	0x1fd
	.uleb128 0x15
	.byte	0x10
	.byte	0x13
	.byte	0x8c
	.uaword	0x5369
	.uleb128 0x17
	.string	"FailureCnt"
	.byte	0x13
	.byte	0x8d
	.uaword	0x1a6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x17
	.string	"Isr_15usCnt"
	.byte	0x13
	.byte	0x8e
	.uaword	0x1a6
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x17
	.string	"Isr_100usCnt"
	.byte	0x13
	.byte	0x8f
	.uaword	0x1a6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x17
	.string	"Isr_1msCnt"
	.byte	0x13
	.byte	0x90
	.uaword	0x191
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x17
	.string	"TimerDiff_10ms"
	.byte	0x13
	.byte	0x91
	.uaword	0x1bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x17
	.string	"Sts"
	.byte	0x13
	.byte	0x92
	.uaword	0x191
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x3
	.string	"PFM_S_CAPTURE"
	.byte	0x13
	.byte	0x93
	.uaword	0x52e2
	.uleb128 0x1d
	.byte	0x4
	.byte	0x14
	.byte	0x24
	.uaword	0x5fa4
	.uleb128 0x1e
	.string	"IOHWSF_E_SSCHECK"
	.sleb128 0
	.uleb128 0x1e
	.string	"IOHWSF_E_SMU_CONFIGURATION_CHECK"
	.sleb128 1
	.uleb128 0x1e
	.string	"IOHWSF_E_ISR_UNHANDLED_ISR"
	.sleb128 2
	.uleb128 0x1e
	.string	"IOHWSF_E_ISR_100U_SOURCE_ERR"
	.sleb128 3
	.uleb128 0x1e
	.string	"IOHWSF_E_ISR_1M_SOURCE_ERR"
	.sleb128 4
	.uleb128 0x1e
	.string	"IOHWSF_E_ISR_10M_SOURCE_ERR"
	.sleb128 5
	.uleb128 0x1e
	.string	"IOHWSF_E_SAFETLIB_INIT"
	.sleb128 6
	.uleb128 0x1e
	.string	"IOHWSF_E_SAFETLIB_PRE_INIT"
	.sleb128 7
	.uleb128 0x1e
	.string	"IOHWSF_E_SAFETLIB_PRERUN_PREHOOK"
	.sleb128 8
	.uleb128 0x1e
	.string	"IOHWSF_E_SAFETLIB_PRERUN_TEST_FAIL"
	.sleb128 9
	.uleb128 0x1e
	.string	"IOHWSF_E_SAFETLIB_PRERUN_POSTHOOK"
	.sleb128 10
	.uleb128 0x1e
	.string	"IOHWSF_E_SAFETLIB_RUN_TEST_FAIL"
	.sleb128 11
	.uleb128 0x1e
	.string	"IOHWSF_E_SAFETLIB_SRC_REG_CHECK_FAIL"
	.sleb128 12
	.uleb128 0x1e
	.string	"IOHWSF_E_MCAL_DIV_INCONSISTENCY"
	.sleb128 13
	.uleb128 0x1e
	.string	"IOHWSF_E_MCAL_SPINLOCK_TIMEOUT"
	.sleb128 14
	.uleb128 0x1e
	.string	"IOHWSF_E_TRAP_VIRTUAL_ADDRESS_FILL"
	.sleb128 15
	.uleb128 0x1e
	.string	"IOHWSF_E_TRAP_VIRTUAL_ADDRESS_PROTECTION"
	.sleb128 16
	.uleb128 0x1e
	.string	"IOHWSF_E_TRAP_PRIVILEGE_INSTRUCTION"
	.sleb128 17
	.uleb128 0x1e
	.string	"IOHWSF_E_TRAP_MEMORY_PROTECTION_READ"
	.sleb128 18
	.uleb128 0x1e
	.string	"IOHWSF_E_TRAP_MEMORY_PROTECTION_WRITE"
	.sleb128 19
	.uleb128 0x1e
	.string	"IOHWSF_E_TRAP_MEMORY_PROTECTION_EXECUTION"
	.sleb128 20
	.uleb128 0x1e
	.string	"IOHWSF_E_TRAP_PROTECTION_PERIPHERAL_ACCESS"
	.sleb128 21
	.uleb128 0x1e
	.string	"IOHWSF_E_TRAP_MEMORY_PROTECTION_NULL_ADDRESS"
	.sleb128 22
	.uleb128 0x1e
	.string	"IOHWSF_E_TRAP_GLOBAL_REGISTER_WRITE_PROTECTION"
	.sleb128 23
	.uleb128 0x1e
	.string	"IOHWSF_E_TRAP_ILLEGAL_OPCODE"
	.sleb128 24
	.uleb128 0x1e
	.string	"IOHWSF_E_TRAP_UNIMPLEMENTED_OPCODE"
	.sleb128 25
	.uleb128 0x1e
	.string	"IOHWSF_E_TRAP_INVALID_OPERAND_SPECIFICATION"
	.sleb128 26
	.uleb128 0x1e
	.string	"IOHWSF_E_TRAP_DATA_ADDRESS_ALIGNMENT"
	.sleb128 27
	.uleb128 0x1e
	.string	"IOHWSF_E_TRAP_INVALID_LOCAL_MEMORY_ADDRESS"
	.sleb128 28
	.uleb128 0x1e
	.string	"IOHWSF_E_TRAP_FREE_CONTEXT_LIST_DEPLETION"
	.sleb128 29
	.uleb128 0x1e
	.string	"IOHWSF_E_TRAP_CALL_DEPTH_OVERFLOW"
	.sleb128 30
	.uleb128 0x1e
	.string	"IOHWSF_E_TRAP_CALL_DEPTH_UNDERFLOW"
	.sleb128 31
	.uleb128 0x1e
	.string	"IOHWSF_E_TRAP_FREE_CONTEXT_LIST_UNDERFLOW"
	.sleb128 32
	.uleb128 0x1e
	.string	"IOHWSF_E_TRAP_CALL_STACK_UNDERFLOW"
	.sleb128 33
	.uleb128 0x1e
	.string	"IOHWSF_E_TRAP_CONTEXT_TYPE"
	.sleb128 34
	.uleb128 0x1e
	.string	"IOHWSF_E_TRAP_NESTING_ERROR"
	.sleb128 35
	.uleb128 0x1e
	.string	"IOHWSF_E_TRAP_PROGRAM_FETCH_SYNCHRONOUS_ERROR"
	.sleb128 36
	.uleb128 0x1e
	.string	"IOHWSF_E_TRAP_DATA_ACCESS_SYNCHRONOUS_ERROR"
	.sleb128 37
	.uleb128 0x1e
	.string	"IOHWSF_E_TRAP_DATA_ACCESS_ASYNCHRONOUS_ERROR"
	.sleb128 38
	.uleb128 0x1e
	.string	"IOHWSF_E_TRAP_ARITHEMETIC_OVERFLOW"
	.sleb128 39
	.uleb128 0x1e
	.string	"IOHWSF_E_TRAP_STICKY_ARITHEMETIC_OVERFLOW"
	.sleb128 40
	.uleb128 0x1e
	.string	"IOHWSF_E_TRAP_UNEXPECTED_SYSTEM_CALL"
	.sleb128 41
	.uleb128 0x1e
	.string	"IOHWSF_E_TRAP_UNEXPECTED_NMI"
	.sleb128 42
	.uleb128 0x1e
	.string	"IOHWSF_E_TRAP_UNDEFINED_TIN"
	.sleb128 43
	.uleb128 0x1e
	.string	"IOHWSF_E_CORE0_NOT_IN_SAFE_STATE"
	.sleb128 44
	.uleb128 0x1e
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_TRAP_TST"
	.sleb128 45
	.uleb128 0x1e
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_CLKM_TST"
	.sleb128 46
	.uleb128 0x1e
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_SRAM_ECC_TST"
	.sleb128 47
	.uleb128 0x1e
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_PMU_ECC_EDC_TST"
	.sleb128 48
	.uleb128 0x1e
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_SRI_TST"
	.sleb128 49
	.uleb128 0x1e
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_SPB_TST_TIMEOUT"
	.sleb128 50
	.uleb128 0x1e
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_SFF_TST"
	.sleb128 51
	.uleb128 0x1e
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_SPB_TST_RAP"
	.sleb128 52
	.uleb128 0x1e
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_CPU_MPU_TST"
	.sleb128 53
	.uleb128 0x1e
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_CPUBUSMPULFM_TST"
	.sleb128 54
	.uleb128 0x1e
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_REG_ACC_PROT_TST"
	.sleb128 55
	.uleb128 0x1e
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_CPU_WDG_TST"
	.sleb128 56
	.uleb128 0x1e
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_SAFETY_WDG_TST"
	.sleb128 57
	.uleb128 0x1e
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_SMU_TST_NMI"
	.sleb128 58
	.uleb128 0x1e
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_SMU_TST_IRQ"
	.sleb128 59
	.uleb128 0x1e
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_SMU_TST_RT"
	.sleb128 60
	.uleb128 0x1e
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_VLM_TST"
	.sleb128 61
	.uleb128 0x1e
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_IR_TST"
	.sleb128 62
	.uleb128 0x1e
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_LOCK_STEP_TST"
	.sleb128 63
	.uleb128 0x1e
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_SFR_CMP_TST"
	.sleb128 64
	.uleb128 0x1e
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_SRC_REG_CHECK_TST"
	.sleb128 65
	.uleb128 0x1e
	.string	"IOHWSF_E_FLASH_TEST_PATTERN_NOT_FLSHED"
	.sleb128 66
	.uleb128 0x1e
	.string	"IOHWSF_E_SETUP_FSP_PIN"
	.sleb128 67
	.uleb128 0x1e
	.string	"IOHWSF_E_SMU_LOCK_CFG_TST"
	.sleb128 68
	.uleb128 0x1e
	.string	"IOHWSF_E_SAFETY_ISR_RESET"
	.sleb128 69
	.uleb128 0x1e
	.string	"IOHWSF_E_TLF_ERR_DETECTION_TIMEOUT"
	.sleb128 70
	.uleb128 0x1e
	.string	"IOHWSF_E_TLF_SYS_FLAGS_NOT_CLEARED"
	.sleb128 71
	.uleb128 0x1e
	.string	"IOHWSF_E_TLF_RESTORE_FAILED"
	.sleb128 72
	.uleb128 0x1e
	.string	"IOHWSF_E_RELEASE_FSP_FAILED"
	.sleb128 73
	.uleb128 0x1e
	.string	"IOHWSF_E_UDS_ECU_RESET_REQ"
	.sleb128 74
	.uleb128 0x1e
	.string	"IOHWSF_E_UDS_SRAM_ECCPREAOU_FAILED"
	.sleb128 75
	.byte	0
	.uleb128 0x3
	.string	"IOHWSF_E_ErrorType"
	.byte	0x14
	.byte	0x71
	.uaword	0x537e
	.uleb128 0x15
	.byte	0x74
	.byte	0x15
	.byte	0x3e
	.uaword	0x600d
	.uleb128 0x17
	.string	"IohwErr"
	.byte	0x15
	.byte	0x3f
	.uaword	0x5fa4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x17
	.string	"E2eSts"
	.byte	0x15
	.byte	0x40
	.uaword	0x515d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x17
	.string	"PfmSts"
	.byte	0x15
	.byte	0x41
	.uaword	0x5369
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x17
	.string	"QspiErr"
	.byte	0x15
	.byte	0x42
	.uaword	0x52d1
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.byte	0
	.uleb128 0x3
	.string	"PMA_S_MCSAFE_ERR"
	.byte	0x15
	.byte	0x43
	.uaword	0x5fbe
	.uleb128 0x15
	.byte	0xa
	.byte	0x15
	.byte	0x45
	.uaword	0x609e
	.uleb128 0x17
	.string	"Shutdown_ErrCnt"
	.byte	0x15
	.byte	0x46
	.uaword	0x1a6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x17
	.string	"Iohw_ErrCnt"
	.byte	0x15
	.byte	0x47
	.uaword	0x1a6
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x17
	.string	"Pfm_ErrCnt"
	.byte	0x15
	.byte	0x48
	.uaword	0x1a6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x17
	.string	"E2e_ErrCnt"
	.byte	0x15
	.byte	0x49
	.uaword	0x1a6
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x17
	.string	"Qspi_ErrCnt"
	.byte	0x15
	.byte	0x4a
	.uaword	0x1a6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x3
	.string	"PMA_S_MODULE_INFO"
	.byte	0x15
	.byte	0x4b
	.uaword	0x6025
	.uleb128 0x15
	.byte	0x4
	.byte	0x16
	.byte	0x2c
	.uaword	0x60ec
	.uleb128 0x17
	.string	"Mins"
	.byte	0x16
	.byte	0x2d
	.uaword	0x1a6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x17
	.string	"Secs"
	.byte	0x16
	.byte	0x2e
	.uaword	0x191
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x17
	.string	"Cnt"
	.byte	0x16
	.byte	0x2f
	.uaword	0x191
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0
	.uleb128 0x3
	.string	"PMA_S_RUN"
	.byte	0x16
	.byte	0x30
	.uaword	0x60b7
	.uleb128 0x15
	.byte	0x14
	.byte	0x16
	.byte	0x32
	.uaword	0x6192
	.uleb128 0x17
	.string	"ShutdownSts"
	.byte	0x16
	.byte	0x33
	.uaword	0x191
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x17
	.string	"ResetCtr"
	.byte	0x16
	.byte	0x34
	.uaword	0x191
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x17
	.string	"ResetSts_reg"
	.byte	0x16
	.byte	0x35
	.uaword	0x1bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x17
	.string	"PowerCycle"
	.byte	0x16
	.byte	0x36
	.uaword	0x1bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x17
	.string	"PORSTPowerCycle"
	.byte	0x16
	.byte	0x37
	.uaword	0x1bc
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x17
	.string	"NonPORSTPowerCycle"
	.byte	0x16
	.byte	0x38
	.uaword	0x1bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x3
	.string	"PMA_S_RESETINFO"
	.byte	0x16
	.byte	0x39
	.uaword	0x60fd
	.uleb128 0x15
	.byte	0xa0
	.byte	0x16
	.byte	0x3c
	.uaword	0x6265
	.uleb128 0x17
	.string	"InitPattern"
	.byte	0x16
	.byte	0x3d
	.uaword	0x1bc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x17
	.string	"ErrCnt"
	.byte	0x16
	.byte	0x3e
	.uaword	0x1a6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x17
	.string	"ErrSrc"
	.byte	0x16
	.byte	0x3f
	.uaword	0x191
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x17
	.string	"CpuLoadMin"
	.byte	0x16
	.byte	0x40
	.uaword	0x191
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0x17
	.string	"CpuLoadMax"
	.byte	0x16
	.byte	0x41
	.uaword	0x191
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x17
	.string	"ModuleInfo"
	.byte	0x16
	.byte	0x42
	.uaword	0x609e
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x17
	.string	"Timestamp"
	.byte	0x16
	.byte	0x43
	.uaword	0x60ec
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x17
	.string	"ResetInfo"
	.byte	0x16
	.byte	0x44
	.uaword	0x6192
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x17
	.string	"McSafeErr"
	.byte	0x16
	.byte	0x45
	.uaword	0x600d
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.byte	0
	.uleb128 0x3
	.string	"PMA_S_ABORTTYPE"
	.byte	0x16
	.byte	0x46
	.uaword	0x61a9
	.uleb128 0x23
	.string	"UdsData_Param"
	.byte	0x1
	.uahalf	0x35e
	.byte	0x1
	.byte	0x1
	.uaword	0x62f0
	.uleb128 0x24
	.uaword	.LASF41
	.byte	0x1
	.uahalf	0x35e
	.uaword	0x1a6
	.uleb128 0x25
	.string	"Buffer"
	.byte	0x1
	.uahalf	0x35e
	.uaword	0x62f0
	.uleb128 0x24
	.uaword	.LASF42
	.byte	0x1
	.uahalf	0x35e
	.uaword	0x62f6
	.uleb128 0x24
	.uaword	.LASF43
	.byte	0x1
	.uahalf	0x35e
	.uaword	0x1a6
	.uleb128 0x26
	.string	"i"
	.byte	0x1
	.uahalf	0x360
	.uaword	0x1a6
	.uleb128 0x27
	.uleb128 0x26
	.string	"Hbyte"
	.byte	0x1
	.uahalf	0x364
	.uaword	0x1a6
	.uleb128 0x26
	.string	"Lbyte"
	.byte	0x1
	.uahalf	0x365
	.uaword	0x1a6
	.byte	0
	.byte	0
	.uleb128 0x22
	.byte	0x4
	.uaword	0x191
	.uleb128 0x22
	.byte	0x4
	.uaword	0x1a6
	.uleb128 0x23
	.string	"UdsData_Calib"
	.byte	0x1
	.uahalf	0x373
	.byte	0x1
	.byte	0x1
	.uaword	0x6370
	.uleb128 0x24
	.uaword	.LASF41
	.byte	0x1
	.uahalf	0x373
	.uaword	0x1a6
	.uleb128 0x25
	.string	"Buffer"
	.byte	0x1
	.uahalf	0x373
	.uaword	0x62f0
	.uleb128 0x24
	.uaword	.LASF42
	.byte	0x1
	.uahalf	0x373
	.uaword	0x62f6
	.uleb128 0x24
	.uaword	.LASF43
	.byte	0x1
	.uahalf	0x373
	.uaword	0x1a6
	.uleb128 0x26
	.string	"i"
	.byte	0x1
	.uahalf	0x375
	.uaword	0x1a6
	.uleb128 0x27
	.uleb128 0x26
	.string	"Hbyte"
	.byte	0x1
	.uahalf	0x379
	.uaword	0x1a6
	.uleb128 0x26
	.string	"Lbyte"
	.byte	0x1
	.uahalf	0x37a
	.uaword	0x1a6
	.byte	0
	.byte	0
	.uleb128 0x28
	.string	"ComServ_InitStatus"
	.byte	0x1
	.byte	0x8b
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.string	"ConvertState"
	.byte	0x1
	.uahalf	0x327
	.byte	0x1
	.uaword	0x1a6
	.byte	0x1
	.uaword	0x63bc
	.uleb128 0x25
	.string	"State"
	.byte	0x1
	.uahalf	0x327
	.uaword	0x4905
	.uleb128 0x26
	.string	"y"
	.byte	0x1
	.uahalf	0x329
	.uaword	0x1a6
	.byte	0
	.uleb128 0x29
	.string	"ConvertSM"
	.byte	0x1
	.uahalf	0x312
	.byte	0x1
	.uaword	0x1a6
	.byte	0x3
	.uaword	0x63e0
	.uleb128 0x25
	.string	"SM"
	.byte	0x1
	.uahalf	0x312
	.uaword	0x1d2
	.byte	0
	.uleb128 0x29
	.string	"ConvertAutoDiag"
	.byte	0x1
	.uahalf	0x31b
	.byte	0x1
	.uaword	0x1a6
	.byte	0x3
	.uaword	0x6416
	.uleb128 0x25
	.string	"SM"
	.byte	0x1
	.uahalf	0x31b
	.uaword	0x1d2
	.uleb128 0x25
	.string	"Fin"
	.byte	0x1
	.uahalf	0x31b
	.uaword	0x1d2
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.string	"RangeCheck"
	.byte	0x1
	.uahalf	0x300
	.byte	0x1
	.byte	0x3
	.uaword	0x6465
	.uleb128 0x25
	.string	"x"
	.byte	0x1
	.uahalf	0x300
	.uaword	0x1a6
	.uleb128 0x25
	.string	"y"
	.byte	0x1
	.uahalf	0x300
	.uaword	0x62f6
	.uleb128 0x25
	.string	"max"
	.byte	0x1
	.uahalf	0x300
	.uaword	0x1a6
	.uleb128 0x25
	.string	"min"
	.byte	0x1
	.uahalf	0x300
	.uaword	0x1a6
	.uleb128 0x25
	.string	"def"
	.byte	0x1
	.uahalf	0x300
	.uaword	0x1a6
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.string	"Crc_CalculateCRC8"
	.byte	0x1
	.uahalf	0x476
	.byte	0x1
	.uaword	0x1fd
	.byte	0x1
	.uaword	0x64ec
	.uleb128 0x24
	.uaword	.LASF42
	.byte	0x1
	.uahalf	0x476
	.uaword	0x64ec
	.uleb128 0x25
	.string	"Length"
	.byte	0x1
	.uahalf	0x476
	.uaword	0x218
	.uleb128 0x25
	.string	"CrcByteIdx"
	.byte	0x1
	.uahalf	0x476
	.uaword	0x218
	.uleb128 0x26
	.string	"Crc"
	.byte	0x1
	.uahalf	0x477
	.uaword	0x191
	.uleb128 0x26
	.string	"CrcIdx"
	.byte	0x1
	.uahalf	0x478
	.uaword	0x191
	.uleb128 0x26
	.string	"DataIdx"
	.byte	0x1
	.uahalf	0x479
	.uaword	0x191
	.uleb128 0x2c
	.uaword	.LASF16
	.byte	0x1
	.uahalf	0x47a
	.uaword	0x191
	.byte	0
	.uleb128 0x22
	.byte	0x4
	.uaword	0x64f2
	.uleb128 0x21
	.uaword	0x1dd
	.uleb128 0x29
	.string	"TrustedCall_CopyParam"
	.byte	0x1
	.uahalf	0x3fe
	.byte	0x1
	.uaword	0x191
	.byte	0x1
	.uaword	0x653e
	.uleb128 0x24
	.uaword	.LASF16
	.byte	0x1
	.uahalf	0x3fe
	.uaword	0x653e
	.uleb128 0x2c
	.uaword	.LASF42
	.byte	0x1
	.uahalf	0x401
	.uaword	0x653e
	.uleb128 0x26
	.string	"i"
	.byte	0x1
	.uahalf	0x402
	.uaword	0x191
	.byte	0
	.uleb128 0x22
	.byte	0x4
	.uaword	0x3c7b
	.uleb128 0x29
	.string	"TrustedCall_CopyCalib"
	.byte	0x1
	.uahalf	0x41b
	.byte	0x1
	.uaword	0x191
	.byte	0x1
	.uaword	0x658b
	.uleb128 0x24
	.uaword	.LASF16
	.byte	0x1
	.uahalf	0x41b
	.uaword	0x658b
	.uleb128 0x2c
	.uaword	.LASF42
	.byte	0x1
	.uahalf	0x41e
	.uaword	0x658b
	.uleb128 0x26
	.string	"i"
	.byte	0x1
	.uahalf	0x41f
	.uaword	0x191
	.byte	0
	.uleb128 0x22
	.byte	0x4
	.uaword	0x3f40
	.uleb128 0x2d
	.string	"ConvertTempToCan"
	.byte	0x1
	.uahalf	0x346
	.byte	0x1
	.uaword	0x1a6
	.uaword	.LFB219
	.uaword	.LFE219
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x65ea
	.uleb128 0x2e
	.string	"Temp"
	.byte	0x1
	.uahalf	0x346
	.uaword	0x19b
	.uaword	.LLST0
	.uleb128 0x2f
	.string	"yS16"
	.byte	0x1
	.uahalf	0x348
	.uaword	0x19b
	.uaword	.LLST1
	.uleb128 0x26
	.string	"yU16"
	.byte	0x1
	.uahalf	0x349
	.uaword	0x1a6
	.byte	0
	.uleb128 0x30
	.byte	0x1
	.string	"ComServ_Init"
	.byte	0x1
	.byte	0x80
	.byte	0x1
	.uaword	.LFB203
	.uaword	.LFE203
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x661b
	.uleb128 0x31
	.uaword	0x6370
	.uaword	.LBB64
	.uaword	.LBE64
	.byte	0x1
	.byte	0x83
	.byte	0
	.uleb128 0x32
	.byte	0x1
	.string	"ComServ_EmergencyMode"
	.byte	0x1
	.byte	0xa1
	.byte	0x1
	.uaword	.LFB205
	.uaword	.LFE205
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0x30
	.byte	0x1
	.string	"ComServ_AutoDisable"
	.byte	0x1
	.byte	0xc2
	.byte	0x1
	.uaword	.LFB206
	.uaword	.LFE206
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x6675
	.uleb128 0x33
	.string	"y"
	.byte	0x1
	.byte	0xc2
	.uaword	0x6675
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x22
	.byte	0x4
	.uaword	0x46c1
	.uleb128 0x30
	.byte	0x1
	.string	"HsfbApp_GetRx10ms"
	.byte	0x1
	.byte	0xe6
	.byte	0x1
	.uaword	.LFB207
	.uaword	.LFE207
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x66af
	.uleb128 0x34
	.string	"y"
	.byte	0x1
	.byte	0xe6
	.uaword	0x6675
	.uaword	.LLST2
	.byte	0
	.uleb128 0x35
	.byte	0x1
	.string	"HsfbApp_SetTx10ms"
	.byte	0x1
	.uahalf	0x109
	.byte	0x1
	.uaword	.LFB208
	.uaword	.LFE208
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x6a53
	.uleb128 0x2e
	.string	"u"
	.byte	0x1
	.uahalf	0x109
	.uaword	0x6a53
	.uaword	.LLST3
	.uleb128 0x2f
	.string	"Iout_abs"
	.byte	0x1
	.uahalf	0x10b
	.uaword	0x19b
	.uaword	.LLST4
	.uleb128 0x2f
	.string	"Vout_abs"
	.byte	0x1
	.uahalf	0x10c
	.uaword	0x19b
	.uaword	.LLST5
	.uleb128 0x2f
	.string	"Vin_abs"
	.byte	0x1
	.uahalf	0x10d
	.uaword	0x19b
	.uaword	.LLST6
	.uleb128 0x2f
	.string	"Vkl30_abs"
	.byte	0x1
	.uahalf	0x10e
	.uaword	0x19b
	.uaword	.LLST7
	.uleb128 0x2f
	.string	"Vkl30C_abs"
	.byte	0x1
	.uahalf	0x10f
	.uaword	0x19b
	.uaword	.LLST8
	.uleb128 0x2f
	.string	"Iout_sign"
	.byte	0x1
	.uahalf	0x110
	.uaword	0x19b
	.uaword	.LLST9
	.uleb128 0x2f
	.string	"Iout_Data"
	.byte	0x1
	.uahalf	0x112
	.uaword	0x19b
	.uaword	.LLST10
	.uleb128 0x26
	.string	"Ipri_Data"
	.byte	0x1
	.uahalf	0x11b
	.uaword	0x19b
	.uleb128 0x36
	.uaword	0x63bc
	.uaword	.LBB66
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.uahalf	0x168
	.uaword	0x67ab
	.uleb128 0x37
	.uaword	0x63d4
	.uaword	.LLST11
	.byte	0
	.uleb128 0x36
	.uaword	0x63bc
	.uaword	.LBB72
	.uaword	.Ldebug_ranges0+0x20
	.byte	0x1
	.uahalf	0x169
	.uaword	0x67c9
	.uleb128 0x37
	.uaword	0x63d4
	.uaword	.LLST12
	.byte	0
	.uleb128 0x38
	.uaword	0x63bc
	.uaword	.LBB78
	.uaword	.LBE78
	.byte	0x1
	.uahalf	0x16a
	.uaword	0x67e7
	.uleb128 0x37
	.uaword	0x63d4
	.uaword	.LLST13
	.byte	0
	.uleb128 0x36
	.uaword	0x63bc
	.uaword	.LBB80
	.uaword	.Ldebug_ranges0+0x40
	.byte	0x1
	.uahalf	0x16b
	.uaword	0x6805
	.uleb128 0x37
	.uaword	0x63d4
	.uaword	.LLST14
	.byte	0
	.uleb128 0x36
	.uaword	0x63bc
	.uaword	.LBB84
	.uaword	.Ldebug_ranges0+0x58
	.byte	0x1
	.uahalf	0x16d
	.uaword	0x6823
	.uleb128 0x37
	.uaword	0x63d4
	.uaword	.LLST15
	.byte	0
	.uleb128 0x36
	.uaword	0x63bc
	.uaword	.LBB88
	.uaword	.Ldebug_ranges0+0x70
	.byte	0x1
	.uahalf	0x16f
	.uaword	0x6841
	.uleb128 0x37
	.uaword	0x63d4
	.uaword	.LLST16
	.byte	0
	.uleb128 0x36
	.uaword	0x63bc
	.uaword	.LBB92
	.uaword	.Ldebug_ranges0+0x88
	.byte	0x1
	.uahalf	0x170
	.uaword	0x685f
	.uleb128 0x37
	.uaword	0x63d4
	.uaword	.LLST17
	.byte	0
	.uleb128 0x36
	.uaword	0x63bc
	.uaword	.LBB96
	.uaword	.Ldebug_ranges0+0xa0
	.byte	0x1
	.uahalf	0x173
	.uaword	0x687d
	.uleb128 0x37
	.uaword	0x63d4
	.uaword	.LLST18
	.byte	0
	.uleb128 0x36
	.uaword	0x63bc
	.uaword	.LBB100
	.uaword	.Ldebug_ranges0+0xb8
	.byte	0x1
	.uahalf	0x174
	.uaword	0x689b
	.uleb128 0x37
	.uaword	0x63d4
	.uaword	.LLST19
	.byte	0
	.uleb128 0x36
	.uaword	0x63bc
	.uaword	.LBB104
	.uaword	.Ldebug_ranges0+0xd0
	.byte	0x1
	.uahalf	0x175
	.uaword	0x68b9
	.uleb128 0x37
	.uaword	0x63d4
	.uaword	.LLST20
	.byte	0
	.uleb128 0x36
	.uaword	0x63bc
	.uaword	.LBB108
	.uaword	.Ldebug_ranges0+0xe8
	.byte	0x1
	.uahalf	0x176
	.uaword	0x68d7
	.uleb128 0x37
	.uaword	0x63d4
	.uaword	.LLST21
	.byte	0
	.uleb128 0x36
	.uaword	0x63bc
	.uaword	.LBB112
	.uaword	.Ldebug_ranges0+0x100
	.byte	0x1
	.uahalf	0x178
	.uaword	0x68f5
	.uleb128 0x37
	.uaword	0x63d4
	.uaword	.LLST22
	.byte	0
	.uleb128 0x36
	.uaword	0x63bc
	.uaword	.LBB116
	.uaword	.Ldebug_ranges0+0x118
	.byte	0x1
	.uahalf	0x17a
	.uaword	0x6913
	.uleb128 0x37
	.uaword	0x63d4
	.uaword	.LLST23
	.byte	0
	.uleb128 0x36
	.uaword	0x63bc
	.uaword	.LBB120
	.uaword	.Ldebug_ranges0+0x130
	.byte	0x1
	.uahalf	0x17b
	.uaword	0x6931
	.uleb128 0x37
	.uaword	0x63d4
	.uaword	.LLST24
	.byte	0
	.uleb128 0x36
	.uaword	0x63bc
	.uaword	.LBB124
	.uaword	.Ldebug_ranges0+0x148
	.byte	0x1
	.uahalf	0x17f
	.uaword	0x694f
	.uleb128 0x37
	.uaword	0x63d4
	.uaword	.LLST25
	.byte	0
	.uleb128 0x36
	.uaword	0x63bc
	.uaword	.LBB128
	.uaword	.Ldebug_ranges0+0x160
	.byte	0x1
	.uahalf	0x185
	.uaword	0x696d
	.uleb128 0x37
	.uaword	0x63d4
	.uaword	.LLST26
	.byte	0
	.uleb128 0x36
	.uaword	0x63bc
	.uaword	.LBB132
	.uaword	.Ldebug_ranges0+0x178
	.byte	0x1
	.uahalf	0x186
	.uaword	0x698b
	.uleb128 0x37
	.uaword	0x63d4
	.uaword	.LLST27
	.byte	0
	.uleb128 0x38
	.uaword	0x63e0
	.uaword	.LBB136
	.uaword	.LBE136
	.byte	0x1
	.uahalf	0x189
	.uaword	0x69b2
	.uleb128 0x37
	.uaword	0x6409
	.uaword	.LLST28
	.uleb128 0x37
	.uaword	0x63fe
	.uaword	.LLST29
	.byte	0
	.uleb128 0x36
	.uaword	0x63e0
	.uaword	.LBB138
	.uaword	.Ldebug_ranges0+0x190
	.byte	0x1
	.uahalf	0x18a
	.uaword	0x69d9
	.uleb128 0x37
	.uaword	0x6409
	.uaword	.LLST30
	.uleb128 0x37
	.uaword	0x63fe
	.uaword	.LLST31
	.byte	0
	.uleb128 0x36
	.uaword	0x63e0
	.uaword	.LBB142
	.uaword	.Ldebug_ranges0+0x1a8
	.byte	0x1
	.uahalf	0x18c
	.uaword	0x69fc
	.uleb128 0x37
	.uaword	0x6409
	.uaword	.LLST32
	.uleb128 0x39
	.uaword	0x63fe
	.byte	0
	.uleb128 0x38
	.uaword	0x6388
	.uaword	.LBB148
	.uaword	.LBE148
	.byte	0x1
	.uahalf	0x1ae
	.uaword	0x6a29
	.uleb128 0x39
	.uaword	0x63a3
	.uleb128 0x3a
	.uaword	.LBB149
	.uaword	.LBE149
	.uleb128 0x3b
	.uaword	0x63b1
	.uaword	.LLST33
	.byte	0
	.byte	0
	.uleb128 0x3c
	.uaword	0x6388
	.uaword	.LBB150
	.uaword	.LBE150
	.byte	0x1
	.uahalf	0x127
	.uleb128 0x39
	.uaword	0x63a3
	.uleb128 0x3a
	.uaword	.LBB151
	.uaword	.LBE151
	.uleb128 0x3b
	.uaword	0x63b1
	.uaword	.LLST34
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x22
	.byte	0x4
	.uaword	0x6a59
	.uleb128 0x21
	.uaword	0x476c
	.uleb128 0x23
	.string	"CANDriver_TxDataE2E"
	.byte	0x1
	.uahalf	0x487
	.byte	0x1
	.byte	0x1
	.uaword	0x6a89
	.uleb128 0x24
	.uaword	.LASF44
	.byte	0x1
	.uahalf	0x487
	.uaword	0x218
	.byte	0
	.uleb128 0x23
	.string	"CANDriver_RxDataE2E"
	.byte	0x1
	.uahalf	0x49b
	.byte	0x1
	.byte	0x1
	.uaword	0x6acb
	.uleb128 0x24
	.uaword	.LASF44
	.byte	0x1
	.uahalf	0x49b
	.uaword	0x218
	.uleb128 0x26
	.string	"BZ"
	.byte	0x1
	.uahalf	0x49d
	.uaword	0x1fd
	.uleb128 0x26
	.string	"CRC"
	.byte	0x1
	.uahalf	0x49d
	.uaword	0x1fd
	.byte	0
	.uleb128 0x35
	.byte	0x1
	.string	"ComServ_1msTask"
	.byte	0x1
	.uahalf	0x1b6
	.byte	0x1
	.uaword	.LFB209
	.uaword	.LFE209
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x6c1d
	.uleb128 0x3d
	.uaword	.LASF44
	.byte	0x1
	.uahalf	0x1b9
	.uaword	0x218
	.uaword	.LLST35
	.uleb128 0x3d
	.uaword	.LASF45
	.byte	0x1
	.uahalf	0x1ba
	.uaword	0x218
	.uaword	.LLST36
	.uleb128 0x3d
	.uaword	.LASF39
	.byte	0x1
	.uahalf	0x1bb
	.uaword	0x218
	.uaword	.LLST37
	.uleb128 0x36
	.uaword	0x6a5e
	.uaword	.LBB160
	.uaword	.Ldebug_ranges0+0x1c8
	.byte	0x1
	.uahalf	0x1cb
	.uaword	0x6b94
	.uleb128 0x37
	.uaword	0x6a7c
	.uaword	.LLST38
	.uleb128 0x3e
	.uaword	0x6465
	.uaword	.LBB162
	.uaword	.Ldebug_ranges0+0x1f8
	.byte	0x1
	.uahalf	0x496
	.uleb128 0x37
	.uaword	0x6486
	.uaword	.LLST39
	.uleb128 0x37
	.uaword	0x64a1
	.uaword	.LLST40
	.uleb128 0x37
	.uaword	0x6492
	.uaword	.LLST41
	.uleb128 0x3f
	.uaword	.Ldebug_ranges0+0x228
	.uleb128 0x3b
	.uaword	0x64b4
	.uaword	.LLST42
	.uleb128 0x3b
	.uaword	0x64c0
	.uaword	.LLST43
	.uleb128 0x3b
	.uaword	0x64cf
	.uaword	.LLST44
	.uleb128 0x3b
	.uaword	0x64df
	.uaword	.LLST45
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3e
	.uaword	0x6a89
	.uaword	.LBB178
	.uaword	.Ldebug_ranges0+0x258
	.byte	0x1
	.uahalf	0x1ec
	.uleb128 0x37
	.uaword	0x6aa7
	.uaword	.LLST46
	.uleb128 0x3f
	.uaword	.Ldebug_ranges0+0x280
	.uleb128 0x3b
	.uaword	0x6ab3
	.uaword	.LLST47
	.uleb128 0x3b
	.uaword	0x6abe
	.uaword	.LLST48
	.uleb128 0x3e
	.uaword	0x6465
	.uaword	.LBB180
	.uaword	.Ldebug_ranges0+0x2a8
	.byte	0x1
	.uahalf	0x4b5
	.uleb128 0x37
	.uaword	0x6486
	.uaword	.LLST49
	.uleb128 0x37
	.uaword	0x64a1
	.uaword	.LLST50
	.uleb128 0x37
	.uaword	0x6492
	.uaword	.LLST51
	.uleb128 0x3f
	.uaword	.Ldebug_ranges0+0x2c0
	.uleb128 0x3b
	.uaword	0x64b4
	.uaword	.LLST52
	.uleb128 0x3b
	.uaword	0x64c0
	.uaword	.LLST53
	.uleb128 0x3b
	.uaword	0x64cf
	.uaword	.LLST54
	.uleb128 0x3b
	.uaword	0x64df
	.uaword	.LLST55
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
	.string	"ComServ_ReadComData"
	.byte	0x1
	.uahalf	0x2c9
	.byte	0x1
	.byte	0x1
	.uaword	0x6c51
	.uleb128 0x26
	.string	"VoutRef_Data"
	.byte	0x1
	.uahalf	0x2cb
	.uaword	0x19b
	.byte	0
	.uleb128 0x35
	.byte	0x1
	.string	"ComServ_10msTask"
	.byte	0x1
	.uahalf	0x22d
	.byte	0x1
	.uaword	.LFB210
	.uaword	.LFE210
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x6e48
	.uleb128 0x38
	.uaword	0x6388
	.uaword	.LBB208
	.uaword	.LBE208
	.byte	0x1
	.uahalf	0x233
	.uaword	0x6ca4
	.uleb128 0x39
	.uaword	0x63a3
	.uleb128 0x3a
	.uaword	.LBB209
	.uaword	.LBE209
	.uleb128 0x3b
	.uaword	0x63b1
	.uaword	.LLST56
	.byte	0
	.byte	0
	.uleb128 0x3e
	.uaword	0x6c1d
	.uaword	.LBB210
	.uaword	.Ldebug_ranges0+0x2d8
	.byte	0x1
	.uahalf	0x238
	.uleb128 0x3f
	.uaword	.Ldebug_ranges0+0x300
	.uleb128 0x3b
	.uaword	0x6c3b
	.uaword	.LLST57
	.uleb128 0x36
	.uaword	0x6416
	.uaword	.LBB212
	.uaword	.Ldebug_ranges0+0x328
	.byte	0x1
	.uahalf	0x2e4
	.uaword	0x6d44
	.uleb128 0x37
	.uaword	0x6458
	.uaword	.LLST58
	.uleb128 0x37
	.uaword	0x644c
	.uaword	.LLST59
	.uleb128 0x37
	.uaword	0x6440
	.uaword	.LLST58
	.uleb128 0x37
	.uaword	0x6436
	.uaword	.LLST61
	.uleb128 0x37
	.uaword	0x642c
	.uaword	.LLST62
	.uleb128 0x3e
	.uaword	0x6416
	.uaword	.LBB214
	.uaword	.Ldebug_ranges0+0x340
	.byte	0x1
	.uahalf	0x22d
	.uleb128 0x37
	.uaword	0x6458
	.uaword	.LLST63
	.uleb128 0x37
	.uaword	0x644c
	.uaword	.LLST64
	.uleb128 0x37
	.uaword	0x6440
	.uaword	.LLST63
	.uleb128 0x37
	.uaword	0x6436
	.uaword	.LLST66
	.uleb128 0x3f
	.uaword	.Ldebug_ranges0+0x358
	.uleb128 0x39
	.uaword	0x642c
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x36
	.uaword	0x6416
	.uaword	.LBB219
	.uaword	.Ldebug_ranges0+0x370
	.byte	0x1
	.uahalf	0x2e5
	.uaword	0x6dc6
	.uleb128 0x37
	.uaword	0x6458
	.uaword	.LLST67
	.uleb128 0x37
	.uaword	0x644c
	.uaword	.LLST68
	.uleb128 0x37
	.uaword	0x6440
	.uaword	.LLST69
	.uleb128 0x37
	.uaword	0x6436
	.uaword	.LLST70
	.uleb128 0x37
	.uaword	0x642c
	.uaword	.LLST71
	.uleb128 0x3e
	.uaword	0x6416
	.uaword	.LBB221
	.uaword	.Ldebug_ranges0+0x390
	.byte	0x1
	.uahalf	0x22d
	.uleb128 0x37
	.uaword	0x6458
	.uaword	.LLST72
	.uleb128 0x37
	.uaword	0x644c
	.uaword	.LLST73
	.uleb128 0x37
	.uaword	0x6440
	.uaword	.LLST74
	.uleb128 0x37
	.uaword	0x6436
	.uaword	.LLST75
	.uleb128 0x3f
	.uaword	.Ldebug_ranges0+0x3a8
	.uleb128 0x39
	.uaword	0x642c
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3c
	.uaword	0x6416
	.uaword	.LBB230
	.uaword	.LBE230
	.byte	0x1
	.uahalf	0x2e2
	.uleb128 0x40
	.uaword	0x6458
	.uahalf	0x578
	.uleb128 0x40
	.uaword	0x644c
	.uahalf	0x258
	.uleb128 0x40
	.uaword	0x6440
	.uahalf	0x60e
	.uleb128 0x41
	.uaword	0x6436
	.byte	0x6
	.byte	0x3
	.uaword	ComServ_Status+30
	.byte	0x9f
	.uleb128 0x37
	.uaword	0x642c
	.uaword	.LLST76
	.uleb128 0x3c
	.uaword	0x6416
	.uaword	.LBB232
	.uaword	.LBE232
	.byte	0x1
	.uahalf	0x22d
	.uleb128 0x37
	.uaword	0x6458
	.uaword	.LLST77
	.uleb128 0x37
	.uaword	0x644c
	.uaword	.LLST78
	.uleb128 0x37
	.uaword	0x6440
	.uaword	.LLST79
	.uleb128 0x37
	.uaword	0x6436
	.uaword	.LLST80
	.uleb128 0x3a
	.uaword	.LBB233
	.uaword	.LBE233
	.uleb128 0x39
	.uaword	0x642c
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x35
	.byte	0x1
	.string	"CANDriver_MsgObjCfg"
	.byte	0x1
	.uahalf	0x298
	.byte	0x1
	.uaword	.LFB213
	.uaword	.LFE213
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x6e8f
	.uleb128 0x3d
	.uaword	.LASF44
	.byte	0x1
	.uahalf	0x29a
	.uaword	0x218
	.uaword	.LLST81
	.uleb128 0x42
	.uaword	.LASF45
	.byte	0x1
	.uahalf	0x29b
	.uaword	0x218
	.byte	0
	.byte	0
	.uleb128 0x35
	.byte	0x1
	.string	"CANDriver_HwCfg"
	.byte	0x1
	.uahalf	0x265
	.byte	0x1
	.uaword	.LFB212
	.uaword	.LFE212
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x6ecc
	.uleb128 0x2f
	.string	"u32HelpVar"
	.byte	0x1
	.uahalf	0x267
	.uaword	0x232
	.uaword	.LLST82
	.byte	0
	.uleb128 0x35
	.byte	0x1
	.string	"CANDriver_Diag"
	.byte	0x1
	.uahalf	0x24c
	.byte	0x1
	.uaword	.LFB211
	.uaword	.LFE211
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x6f27
	.uleb128 0x2e
	.string	"pu16ErrCode"
	.byte	0x1
	.uahalf	0x24c
	.uaword	0x6f27
	.uaword	.LLST83
	.uleb128 0x2f
	.string	"loc_NodeStatusReg"
	.byte	0x1
	.uahalf	0x24e
	.uaword	0x2d11
	.uaword	.LLST84
	.byte	0
	.uleb128 0x21
	.uaword	0x6f2c
	.uleb128 0x22
	.byte	0x4
	.uaword	0x218
	.uleb128 0x43
	.uaword	0x6416
	.uaword	.LFB215
	.uaword	.LFE215
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x6fb0
	.uleb128 0x41
	.uaword	0x642c
	.byte	0x1
	.byte	0x54
	.uleb128 0x37
	.uaword	0x6436
	.uaword	.LLST85
	.uleb128 0x41
	.uaword	0x6440
	.byte	0x1
	.byte	0x55
	.uleb128 0x41
	.uaword	0x644c
	.byte	0x1
	.byte	0x56
	.uleb128 0x41
	.uaword	0x6458
	.byte	0x1
	.byte	0x57
	.uleb128 0x3c
	.uaword	0x6416
	.uaword	.LBB242
	.uaword	.LBE242
	.byte	0x1
	.uahalf	0x300
	.uleb128 0x37
	.uaword	0x6458
	.uaword	.LLST86
	.uleb128 0x37
	.uaword	0x644c
	.uaword	.LLST87
	.uleb128 0x37
	.uaword	0x6440
	.uaword	.LLST88
	.uleb128 0x37
	.uaword	0x6436
	.uaword	.LLST89
	.uleb128 0x3a
	.uaword	.LBB243
	.uaword	.LBE243
	.uleb128 0x39
	.uaword	0x642c
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x44
	.byte	0x1
	.string	"Crc_CalculateCRC32"
	.byte	0x1
	.uahalf	0x440
	.byte	0x1
	.uaword	0x232
	.uaword	.LFB226
	.uaword	.LFE226
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x7040
	.uleb128 0x2e
	.string	"Crc_DataPtr"
	.byte	0x1
	.uahalf	0x440
	.uaword	0x52dc
	.uaword	.LLST90
	.uleb128 0x2e
	.string	"Crc_Length"
	.byte	0x1
	.uahalf	0x440
	.uaword	0x218
	.uaword	.LLST91
	.uleb128 0x2f
	.string	"Crc_Value"
	.byte	0x1
	.uahalf	0x442
	.uaword	0x232
	.uaword	.LLST92
	.uleb128 0x2f
	.string	"i"
	.byte	0x1
	.uahalf	0x443
	.uaword	0x218
	.uaword	.LLST93
	.uleb128 0x3d
	.uaword	.LASF42
	.byte	0x1
	.uahalf	0x444
	.uaword	0x7040
	.uaword	.LLST94
	.byte	0
	.uleb128 0x22
	.byte	0x4
	.uaword	0x7046
	.uleb128 0x21
	.uaword	0x1fd
	.uleb128 0x44
	.byte	0x1
	.string	"UdsData_Calibration"
	.byte	0x1
	.uahalf	0x3ab
	.byte	0x1
	.uaword	0x1fd
	.uaword	.LFB223
	.uaword	.LFE223
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x7178
	.uleb128 0x45
	.uaword	.LASF41
	.byte	0x1
	.uahalf	0x3ab
	.uaword	0x1fd
	.uaword	.LLST95
	.uleb128 0x2e
	.string	"RxTxBuf"
	.byte	0x1
	.uahalf	0x3ab
	.uaword	0x52dc
	.uaword	.LLST96
	.uleb128 0x45
	.uaword	.LASF46
	.byte	0x1
	.uahalf	0x3ab
	.uaword	0x218
	.uaword	.LLST97
	.uleb128 0x2f
	.string	"Index"
	.byte	0x1
	.uahalf	0x3ad
	.uaword	0x218
	.uaword	.LLST98
	.uleb128 0x2f
	.string	"AteCrcAct"
	.byte	0x1
	.uahalf	0x3ae
	.uaword	0x232
	.uaword	.LLST99
	.uleb128 0x2f
	.string	"AteCrcRef"
	.byte	0x1
	.uahalf	0x3af
	.uaword	0x232
	.uaword	.LLST100
	.uleb128 0x3d
	.uaword	.LASF47
	.byte	0x1
	.uahalf	0x3b0
	.uaword	0x232
	.uaword	.LLST101
	.uleb128 0x46
	.uaword	.LASF48
	.byte	0x1
	.uahalf	0x3b1
	.uaword	0x232
	.byte	0x1
	.byte	0x53
	.uleb128 0x2f
	.string	"IsCalibrated"
	.byte	0x1
	.uahalf	0x3b2
	.uaword	0x218
	.uaword	.LLST102
	.uleb128 0x2f
	.string	"MsgSts"
	.byte	0x1
	.uahalf	0x3b3
	.uaword	0x1fd
	.uaword	.LLST103
	.uleb128 0x3c
	.uaword	0x62fc
	.uaword	.LBB244
	.uaword	.LBE244
	.byte	0x1
	.uahalf	0x3cd
	.uleb128 0x39
	.uaword	0x633b
	.uleb128 0x39
	.uaword	0x632f
	.uleb128 0x39
	.uaword	0x6320
	.uleb128 0x3a
	.uaword	.LBB245
	.uaword	.LBE245
	.uleb128 0x47
	.uaword	0x6347
	.uleb128 0x3a
	.uaword	.LBB246
	.uaword	.LBE246
	.uleb128 0x47
	.uaword	0x6352
	.uleb128 0x47
	.uaword	0x6360
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x44
	.byte	0x1
	.string	"UdsData_Parameter"
	.byte	0x1
	.uahalf	0x387
	.byte	0x1
	.uaword	0x1fd
	.uaword	.LFB222
	.uaword	.LFE222
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x725d
	.uleb128 0x45
	.uaword	.LASF41
	.byte	0x1
	.uahalf	0x387
	.uaword	0x1fd
	.uaword	.LLST104
	.uleb128 0x2e
	.string	"RxTxBuf"
	.byte	0x1
	.uahalf	0x387
	.uaword	0x52dc
	.uaword	.LLST105
	.uleb128 0x45
	.uaword	.LASF46
	.byte	0x1
	.uahalf	0x387
	.uaword	0x218
	.uaword	.LLST106
	.uleb128 0x48
	.string	"Index"
	.byte	0x1
	.uahalf	0x389
	.uaword	0x218
	.byte	0xc8
	.uleb128 0x3d
	.uaword	.LASF47
	.byte	0x1
	.uahalf	0x38a
	.uaword	0x232
	.uaword	.LLST107
	.uleb128 0x3d
	.uaword	.LASF48
	.byte	0x1
	.uahalf	0x38b
	.uaword	0x232
	.uaword	.LLST108
	.uleb128 0x2f
	.string	"MsgSts"
	.byte	0x1
	.uahalf	0x38c
	.uaword	0x1fd
	.uaword	.LLST109
	.uleb128 0x3c
	.uaword	0x627c
	.uaword	.LBB247
	.uaword	.LBE247
	.byte	0x1
	.uahalf	0x397
	.uleb128 0x39
	.uaword	0x62bb
	.uleb128 0x39
	.uaword	0x62af
	.uleb128 0x39
	.uaword	0x62a0
	.uleb128 0x3a
	.uaword	.LBB248
	.uaword	.LBE248
	.uleb128 0x47
	.uaword	0x62c7
	.uleb128 0x3a
	.uaword	.LBB249
	.uaword	.LBE249
	.uleb128 0x47
	.uaword	0x62d2
	.uleb128 0x47
	.uaword	0x62e0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x43
	.uaword	0x6465
	.uaword	.LFB227
	.uaword	.LFE227
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x72ab
	.uleb128 0x41
	.uaword	0x6486
	.byte	0x1
	.byte	0x64
	.uleb128 0x41
	.uaword	0x6492
	.byte	0x1
	.byte	0x54
	.uleb128 0x41
	.uaword	0x64a1
	.byte	0x1
	.byte	0x55
	.uleb128 0x3b
	.uaword	0x64b4
	.uaword	.LLST110
	.uleb128 0x3b
	.uaword	0x64c0
	.uaword	.LLST111
	.uleb128 0x3b
	.uaword	0x64cf
	.uaword	.LLST112
	.uleb128 0x3b
	.uaword	0x64df
	.uaword	.LLST113
	.byte	0
	.uleb128 0x35
	.byte	0x1
	.string	"HsfbMeas_GetCalibData"
	.byte	0x1
	.uahalf	0x4da
	.byte	0x1
	.uaword	.LFB230
	.uaword	.LFE230
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x731f
	.uleb128 0x49
	.string	"y"
	.byte	0x1
	.uahalf	0x4da
	.uaword	0x731f
	.byte	0x1
	.byte	0x64
	.uleb128 0x3c
	.uaword	0x6544
	.uaword	.LBB252
	.uaword	.LBE252
	.byte	0x1
	.uahalf	0x4e1
	.uleb128 0x3a
	.uaword	.LBB253
	.uaword	.LBE253
	.uleb128 0x4a
	.uaword	0x6574
	.byte	0x6
	.byte	0x3
	.uaword	Trusted_AsilCalibData
	.byte	0x9f
	.uleb128 0x3b
	.uaword	0x6580
	.uaword	.LLST114
	.uleb128 0x41
	.uaword	0x6568
	.byte	0x6
	.byte	0x3
	.uaword	CalibrationData
	.byte	0x9f
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x22
	.byte	0x4
	.uaword	0x3779
	.uleb128 0x35
	.byte	0x1
	.string	"HsfbCtrl_GetParamData"
	.byte	0x1
	.uahalf	0x4fc
	.byte	0x1
	.uaword	.LFB231
	.uaword	.LFE231
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x7399
	.uleb128 0x49
	.string	"y"
	.byte	0x1
	.uahalf	0x4fc
	.uaword	0x7399
	.byte	0x1
	.byte	0x64
	.uleb128 0x3c
	.uaword	0x64f7
	.uaword	.LBB254
	.uaword	.LBE254
	.byte	0x1
	.uahalf	0x502
	.uleb128 0x41
	.uaword	0x651b
	.byte	0x6
	.byte	0x3
	.uaword	ParameterData
	.byte	0x9f
	.uleb128 0x3a
	.uaword	.LBB255
	.uaword	.LBE255
	.uleb128 0x3b
	.uaword	0x6533
	.uaword	.LLST115
	.uleb128 0x4a
	.uaword	0x6527
	.byte	0x6
	.byte	0x3
	.uaword	Trusted_AsilParamData
	.byte	0x9f
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x22
	.byte	0x4
	.uaword	0x47e3
	.uleb128 0x5
	.uaword	0x232
	.uaword	0x73af
	.uleb128 0x6
	.uaword	0x174
	.byte	0xf
	.byte	0
	.uleb128 0x4b
	.string	"CrcTable32"
	.byte	0x1
	.byte	0x14
	.uaword	0x73c7
	.byte	0x5
	.byte	0x3
	.uaword	CrcTable32
	.uleb128 0x21
	.uaword	0x739f
	.uleb128 0x5
	.uaword	0x1fd
	.uaword	0x73dc
	.uleb128 0x6
	.uaword	0x174
	.byte	0xff
	.byte	0
	.uleb128 0x4b
	.string	"CrcTable08"
	.byte	0x1
	.byte	0x20
	.uaword	0x73f4
	.byte	0x5
	.byte	0x3
	.uaword	CrcTable08
	.uleb128 0x21
	.uaword	0x73cc
	.uleb128 0x4b
	.string	"Param_recieved"
	.byte	0x1
	.byte	0x54
	.uaword	0x1fd
	.byte	0x5
	.byte	0x3
	.uaword	Param_recieved
	.uleb128 0x4b
	.string	"Calib_recieved"
	.byte	0x1
	.byte	0x55
	.uaword	0x1fd
	.byte	0x5
	.byte	0x3
	.uaword	Calib_recieved
	.uleb128 0x4b
	.string	"ComServ_Status"
	.byte	0x1
	.byte	0x5c
	.uaword	0x3976
	.byte	0x5
	.byte	0x3
	.uaword	ComServ_Status
	.uleb128 0x4b
	.string	"ComServ_BuildInfo"
	.byte	0x1
	.byte	0x5d
	.uaword	0x497f
	.byte	0x5
	.byte	0x3
	.uaword	ComServ_BuildInfo
	.uleb128 0x4c
	.string	"PSWReg_Rd0"
	.byte	0x17
	.byte	0x45
	.uaword	0x3555
	.byte	0x1
	.byte	0x1
	.uleb128 0x4c
	.string	"PSWReg_Rd1"
	.byte	0x17
	.byte	0x46
	.uaword	0x3555
	.byte	0x1
	.byte	0x1
	.uleb128 0x4c
	.string	"PSWReg_Rd2"
	.byte	0x17
	.byte	0x47
	.uaword	0x3555
	.byte	0x1
	.byte	0x1
	.uleb128 0x4c
	.string	"PSWReg_Rd3"
	.byte	0x17
	.byte	0x48
	.uaword	0x3555
	.byte	0x1
	.byte	0x1
	.uleb128 0x4c
	.string	"PortOtpAutoDiagEn"
	.byte	0x18
	.byte	0xa5
	.uaword	0x1a6
	.byte	0x1
	.byte	0x1
	.uleb128 0x4c
	.string	"KLDiagFlag"
	.byte	0x18
	.byte	0xa2
	.uaword	0x1a6
	.byte	0x1
	.byte	0x1
	.uleb128 0x4c
	.string	"PortDisHSK"
	.byte	0x18
	.byte	0xa6
	.uaword	0x1a6
	.byte	0x1
	.byte	0x1
	.uleb128 0x4d
	.string	"ComServ_DevRx"
	.byte	0x1
	.byte	0x5b
	.uaword	0x3b68
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	ComServ_DevRx
	.uleb128 0x4d
	.string	"ParameterData"
	.byte	0x1
	.byte	0x5e
	.uaword	0x3c7b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	ParameterData
	.uleb128 0x4d
	.string	"CalibrationData"
	.byte	0x1
	.byte	0x5f
	.uaword	0x3f40
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	CalibrationData
	.uleb128 0x4c
	.string	"HsfbState_State"
	.byte	0x19
	.byte	0x31
	.uaword	0x4905
	.byte	0x1
	.byte	0x1
	.uleb128 0x4c
	.string	"DebugError"
	.byte	0xf
	.byte	0x8c
	.uaword	0x4411
	.byte	0x1
	.byte	0x1
	.uleb128 0x4c
	.string	"Main_DebugErrCode"
	.byte	0xf
	.byte	0x8d
	.uaword	0x1a6
	.byte	0x1
	.byte	0x1
	.uleb128 0x4c
	.string	"Main_InitFin"
	.byte	0xf
	.byte	0x8e
	.uaword	0x1d2
	.byte	0x1
	.byte	0x1
	.uleb128 0x5
	.uaword	0x4c70
	.uaword	0x75c3
	.uleb128 0x6
	.uaword	0x174
	.byte	0xe
	.byte	0
	.uleb128 0x4e
	.string	"CanTxMsg"
	.byte	0x10
	.uahalf	0x48b
	.uaword	0x75d6
	.byte	0x1
	.byte	0x1
	.uleb128 0x21
	.uaword	0x75b3
	.uleb128 0x5
	.uaword	0x4d2a
	.uaword	0x75eb
	.uleb128 0x6
	.uaword	0x174
	.byte	0x6
	.byte	0
	.uleb128 0x4e
	.string	"CanRxMsg"
	.byte	0x10
	.uahalf	0x48c
	.uaword	0x75fe
	.byte	0x1
	.byte	0x1
	.uleb128 0x21
	.uaword	0x75db
	.uleb128 0x5
	.uaword	0x4998
	.uaword	0x7613
	.uleb128 0x6
	.uaword	0x174
	.byte	0
	.byte	0
	.uleb128 0x4e
	.string	"LVDC_WakeUpSleepManagement"
	.byte	0x10
	.uahalf	0x499
	.uaword	0x7603
	.byte	0x1
	.byte	0x1
	.uleb128 0x5
	.uaword	0x49bd
	.uaword	0x7648
	.uleb128 0x6
	.uaword	0x174
	.byte	0x7
	.byte	0
	.uleb128 0x4e
	.string	"LVDC_SafetyMeasure"
	.byte	0x10
	.uahalf	0x49a
	.uaword	0x7638
	.byte	0x1
	.byte	0x1
	.uleb128 0x5
	.uaword	0x49da
	.uaword	0x7675
	.uleb128 0x6
	.uaword	0x174
	.byte	0x6
	.byte	0
	.uleb128 0x4e
	.string	"DCDC_Measure4"
	.byte	0x10
	.uahalf	0x49b
	.uaword	0x7665
	.byte	0x1
	.byte	0x1
	.uleb128 0x5
	.uaword	0x49f2
	.uaword	0x769d
	.uleb128 0x6
	.uaword	0x174
	.byte	0x7
	.byte	0
	.uleb128 0x4e
	.string	"DCDC_Status_ErrCode"
	.byte	0x10
	.uahalf	0x49c
	.uaword	0x768d
	.byte	0x1
	.byte	0x1
	.uleb128 0x5
	.uaword	0x4a10
	.uaword	0x76cb
	.uleb128 0x6
	.uaword	0x174
	.byte	0x7
	.byte	0
	.uleb128 0x4e
	.string	"DCDC_Measure2"
	.byte	0x10
	.uahalf	0x49f
	.uaword	0x76bb
	.byte	0x1
	.byte	0x1
	.uleb128 0x5
	.uaword	0x4a28
	.uaword	0x76f3
	.uleb128 0x6
	.uaword	0x174
	.byte	0x7
	.byte	0
	.uleb128 0x4e
	.string	"LvDc_Pma_ErrSrc"
	.byte	0x10
	.uahalf	0x4a0
	.uaword	0x76e3
	.byte	0x1
	.byte	0x1
	.uleb128 0x5
	.uaword	0x4a42
	.uaword	0x771d
	.uleb128 0x6
	.uaword	0x174
	.byte	0x5
	.byte	0
	.uleb128 0x4e
	.string	"DcDc_Scope1"
	.byte	0x10
	.uahalf	0x4a1
	.uaword	0x770d
	.byte	0x1
	.byte	0x1
	.uleb128 0x5
	.uaword	0x4a58
	.uaword	0x7743
	.uleb128 0x6
	.uaword	0x174
	.byte	0x3
	.byte	0
	.uleb128 0x4e
	.string	"DcDc_Scope0"
	.byte	0x10
	.uahalf	0x4a2
	.uaword	0x7733
	.byte	0x1
	.byte	0x1
	.uleb128 0x5
	.uaword	0x4a6e
	.uaword	0x7769
	.uleb128 0x6
	.uaword	0x174
	.byte	0x5
	.byte	0
	.uleb128 0x4e
	.string	"DCDC_Status"
	.byte	0x10
	.uahalf	0x4a3
	.uaword	0x7759
	.byte	0x1
	.byte	0x1
	.uleb128 0x5
	.uaword	0x4a84
	.uaword	0x778f
	.uleb128 0x6
	.uaword	0x174
	.byte	0x6
	.byte	0
	.uleb128 0x4e
	.string	"DCDC_Measure3"
	.byte	0x10
	.uahalf	0x4a4
	.uaword	0x777f
	.byte	0x1
	.byte	0x1
	.uleb128 0x5
	.uaword	0x4a9c
	.uaword	0x77b7
	.uleb128 0x6
	.uaword	0x174
	.byte	0x6
	.byte	0
	.uleb128 0x4e
	.string	"DCDC_Measure"
	.byte	0x10
	.uahalf	0x4a5
	.uaword	0x77a7
	.byte	0x1
	.byte	0x1
	.uleb128 0x5
	.uaword	0x4ab3
	.uaword	0x77de
	.uleb128 0x6
	.uaword	0x174
	.byte	0
	.byte	0
	.uleb128 0x4e
	.string	"COM_WakeUpSleepManagement"
	.byte	0x10
	.uahalf	0x4a8
	.uaword	0x77ce
	.byte	0x1
	.byte	0x1
	.uleb128 0x5
	.uaword	0x4ad7
	.uaword	0x7812
	.uleb128 0x6
	.uaword	0x174
	.byte	0x3
	.byte	0
	.uleb128 0x4e
	.string	"HTB_CMD"
	.byte	0x10
	.uahalf	0x4aa
	.uaword	0x7802
	.byte	0x1
	.byte	0x1
	.uleb128 0x5
	.uaword	0x4ae9
	.uaword	0x7834
	.uleb128 0x6
	.uaword	0x174
	.byte	0x5
	.byte	0
	.uleb128 0x4e
	.string	"DCDC_DEV_CMD"
	.byte	0x10
	.uahalf	0x4ad
	.uaword	0x7824
	.byte	0x1
	.byte	0x1
	.uleb128 0x5
	.uaword	0x4b00
	.uaword	0x785b
	.uleb128 0x6
	.uaword	0x174
	.byte	0x7
	.byte	0
	.uleb128 0x4e
	.string	"DCDC_CMD"
	.byte	0x10
	.uahalf	0x4ae
	.uaword	0x784b
	.byte	0x1
	.byte	0x1
	.uleb128 0x5
	.uaword	0x4d6c
	.uaword	0x787e
	.uleb128 0x6
	.uaword	0x174
	.byte	0x6
	.byte	0
	.uleb128 0x4e
	.string	"CanRxFlags"
	.byte	0x10
	.uahalf	0x4b0
	.uaword	0x786e
	.byte	0x1
	.byte	0x1
	.uleb128 0x5
	.uaword	0x4da1
	.uaword	0x78a3
	.uleb128 0x6
	.uaword	0x174
	.byte	0xe
	.byte	0
	.uleb128 0x4e
	.string	"CanTxFlags"
	.byte	0x10
	.uahalf	0x4b1
	.uaword	0x7893
	.byte	0x1
	.byte	0x1
	.uleb128 0x4d
	.string	"CanE2E"
	.byte	0x1
	.byte	0x4c
	.uaword	0x515d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	CanE2E
	.uleb128 0x5
	.uaword	0x4b4c
	.uaword	0x78dd
	.uleb128 0x6
	.uaword	0x174
	.byte	0xe
	.byte	0
	.uleb128 0x4c
	.string	"CANDriver_mg_aeMsgSendType"
	.byte	0x11
	.byte	0x3e
	.uaword	0x78cd
	.byte	0x1
	.byte	0x1
	.uleb128 0x5
	.uaword	0x218
	.uaword	0x7911
	.uleb128 0x6
	.uaword	0x174
	.byte	0xe
	.byte	0
	.uleb128 0x4c
	.string	"CANDriver_mg_au16TxCycleTime"
	.byte	0x11
	.byte	0x3f
	.uaword	0x7901
	.byte	0x1
	.byte	0x1
	.uleb128 0x4d
	.string	"CANDriver_mg_bError"
	.byte	0x1
	.byte	0x4d
	.uaword	0x240
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	CANDriver_mg_bError
	.uleb128 0x4c
	.string	"Pfm_Capture"
	.byte	0x13
	.byte	0xae
	.uaword	0x5369
	.byte	0x1
	.byte	0x1
	.uleb128 0x4c
	.string	"Pma_AbortData"
	.byte	0x16
	.byte	0x48
	.uaword	0x6265
	.byte	0x1
	.byte	0x1
	.uleb128 0x4d
	.string	"Trusted_AsilParamData"
	.byte	0x1
	.byte	0x4a
	.uaword	0x3c7b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Trusted_AsilParamData
	.uleb128 0x4d
	.string	"Trusted_AsilCalibData"
	.byte	0x1
	.byte	0x4b
	.uaword	0x3f40
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Trusted_AsilCalibData
	.uleb128 0x4d
	.string	"readRslt"
	.byte	0x1
	.byte	0x4e
	.uaword	0x232
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	readRslt
	.uleb128 0x4d
	.string	"OpMode_flag"
	.byte	0x1
	.byte	0x60
	.uaword	0x218
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	OpMode_flag
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x7
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x31
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x38
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
	.uleb128 0x39
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x3b
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.uleb128 0x3e
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
	.uleb128 0x3f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x40
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x41
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x42
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x43
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
	.uleb128 0x44
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
	.uleb128 0x45
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
	.uleb128 0x46
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
	.uleb128 0x47
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x48
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
	.uleb128 0x49
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
	.uleb128 0x4a
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x4b
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
	.uleb128 0x4c
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
	.uleb128 0x4d
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
	.uleb128 0x4e
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
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0x7
	.byte	0x74
	.sleb128 0
	.byte	0x3a
	.byte	0x1b
	.byte	0x23
	.uleb128 0x3c
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL3
	.uaword	.LVL4
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL4
	.uaword	.LFE207
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL5
	.uaword	.LVL12-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL12-1
	.uaword	.LVL28
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL32
	.uaword	.LFE208
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL6
	.uaword	.LVL17
	.uahalf	0x8
	.byte	0x7a
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x19
	.byte	0x9f
	.uaword	.LVL35
	.uaword	.LVL36
	.uahalf	0x8
	.byte	0x7a
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x19
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL7
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL33
	.uaword	.LVL37
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL8
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL33
	.uaword	.LVL38
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL9
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL13
	.uaword	.LVL14-1
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL10
	.uaword	.LVL15
	.uahalf	0x1
	.byte	0x5b
	.uaword	.LVL15
	.uaword	.LVL16-1
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL10
	.uaword	.LVL17
	.uahalf	0x7
	.byte	0x7a
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x30
	.byte	0x2c
	.byte	0x9f
	.uaword	.LVL33
	.uaword	.LVL36
	.uahalf	0x7
	.byte	0x7a
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x30
	.byte	0x2c
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL10
	.uaword	.LVL11
	.uahalf	0x4
	.byte	0x72
	.sleb128 6070
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL18
	.uaword	.LVL28
	.uahalf	0x3
	.byte	0x8f
	.sleb128 200
	.uaword	.LVL32
	.uaword	.LVL33
	.uahalf	0x3
	.byte	0x8f
	.sleb128 200
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL18
	.uaword	.LVL28
	.uahalf	0x3
	.byte	0x8f
	.sleb128 201
	.uaword	.LVL32
	.uaword	.LVL33
	.uahalf	0x3
	.byte	0x8f
	.sleb128 201
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL18
	.uaword	.LVL28
	.uahalf	0x3
	.byte	0x8f
	.sleb128 202
	.uaword	.LVL32
	.uaword	.LVL33
	.uahalf	0x3
	.byte	0x8f
	.sleb128 202
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL18
	.uaword	.LVL28
	.uahalf	0x3
	.byte	0x8f
	.sleb128 203
	.uaword	.LVL32
	.uaword	.LVL33
	.uahalf	0x3
	.byte	0x8f
	.sleb128 203
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL18
	.uaword	.LVL28
	.uahalf	0x3
	.byte	0x8f
	.sleb128 204
	.uaword	.LVL32
	.uaword	.LVL33
	.uahalf	0x3
	.byte	0x8f
	.sleb128 204
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL18
	.uaword	.LVL28
	.uahalf	0x3
	.byte	0x8f
	.sleb128 206
	.uaword	.LVL32
	.uaword	.LVL33
	.uahalf	0x3
	.byte	0x8f
	.sleb128 206
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL18
	.uaword	.LVL28
	.uahalf	0x3
	.byte	0x8f
	.sleb128 207
	.uaword	.LVL32
	.uaword	.LVL33
	.uahalf	0x3
	.byte	0x8f
	.sleb128 207
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL18
	.uaword	.LVL28
	.uahalf	0x3
	.byte	0x8f
	.sleb128 208
	.uaword	.LVL32
	.uaword	.LVL33
	.uahalf	0x3
	.byte	0x8f
	.sleb128 208
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL18
	.uaword	.LVL28
	.uahalf	0x3
	.byte	0x8f
	.sleb128 209
	.uaword	.LVL32
	.uaword	.LVL33
	.uahalf	0x3
	.byte	0x8f
	.sleb128 209
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL18
	.uaword	.LVL28
	.uahalf	0x3
	.byte	0x8f
	.sleb128 210
	.uaword	.LVL32
	.uaword	.LVL33
	.uahalf	0x3
	.byte	0x8f
	.sleb128 210
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL18
	.uaword	.LVL28
	.uahalf	0x3
	.byte	0x8f
	.sleb128 211
	.uaword	.LVL32
	.uaword	.LVL33
	.uahalf	0x3
	.byte	0x8f
	.sleb128 211
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL18
	.uaword	.LVL28
	.uahalf	0x3
	.byte	0x8f
	.sleb128 212
	.uaword	.LVL32
	.uaword	.LVL33
	.uahalf	0x3
	.byte	0x8f
	.sleb128 212
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL19
	.uaword	.LVL28
	.uahalf	0x3
	.byte	0x8f
	.sleb128 214
	.uaword	.LVL32
	.uaword	.LVL33
	.uahalf	0x3
	.byte	0x8f
	.sleb128 214
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL20
	.uaword	.LVL28
	.uahalf	0x3
	.byte	0x8f
	.sleb128 215
	.uaword	.LVL28
	.uaword	.LVL33
	.uahalf	0x1
	.byte	0x5a
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL21
	.uaword	.LVL28
	.uahalf	0x3
	.byte	0x8f
	.sleb128 216
	.uaword	.LVL32
	.uaword	.LVL33
	.uahalf	0x3
	.byte	0x8f
	.sleb128 216
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL22
	.uaword	.LVL28
	.uahalf	0x3
	.byte	0x8f
	.sleb128 219
	.uaword	.LVL32
	.uaword	.LVL33
	.uahalf	0x3
	.byte	0x8f
	.sleb128 219
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL23
	.uaword	.LVL28
	.uahalf	0x3
	.byte	0x8f
	.sleb128 220
	.uaword	.LVL32
	.uaword	.LVL33
	.uahalf	0x3
	.byte	0x8f
	.sleb128 220
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL24
	.uaword	.LVL28
	.uahalf	0x3
	.byte	0x8f
	.sleb128 230
	.uaword	.LVL32
	.uaword	.LVL33
	.uahalf	0x3
	.byte	0x8f
	.sleb128 230
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL24
	.uaword	.LVL25
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL25
	.uaword	.LVL28
	.uahalf	0x3
	.byte	0x8f
	.sleb128 231
	.uaword	.LVL32
	.uaword	.LVL33
	.uahalf	0x3
	.byte	0x8f
	.sleb128 231
	.uaword	0
	.uaword	0
.LLST31:
	.uaword	.LVL25
	.uaword	.LVL27
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST32:
	.uaword	.LVL26
	.uaword	.LVL33
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST33:
	.uaword	.LVL29
	.uaword	.LVL30
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST34:
	.uaword	.LVL34
	.uaword	.LVL35
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL35
	.uaword	.LFE208
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST35:
	.uaword	.LVL39
	.uaword	.LVL40
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL41
	.uaword	.LVL42
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL60
	.uaword	.LVL61
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST36:
	.uaword	.LVL39
	.uaword	.LVL40
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL43
	.uaword	.LVL58
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL80
	.uaword	.LVL81
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL86
	.uaword	.LVL87
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST37:
	.uaword	.LVL39
	.uaword	.LVL58
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL58
	.uaword	.LVL59
	.uahalf	0x1
	.byte	0x5c
	.uaword	.LVL60
	.uaword	.LVL62
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL62
	.uaword	.LVL63
	.uahalf	0x1
	.byte	0x5c
	.uaword	.LVL65
	.uaword	.LVL66
	.uahalf	0x1
	.byte	0x5c
	.uaword	.LVL80
	.uaword	.LVL81
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL86
	.uaword	.LVL87
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST38:
	.uaword	.LVL45
	.uaword	.LVL58
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL80
	.uaword	.LVL81
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL86
	.uaword	.LVL87
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST39:
	.uaword	.LVL46
	.uaword	.LVL57
	.uahalf	0x2
	.byte	0x8d
	.sleb128 24
	.uaword	.LVL86
	.uaword	.LVL87
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST40:
	.uaword	.LVL46
	.uaword	.LVL57
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL86
	.uaword	.LVL87
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST41:
	.uaword	.LVL46
	.uaword	.LVL57
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL86
	.uaword	.LVL87
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST42:
	.uaword	.LVL46
	.uaword	.LVL47
	.uahalf	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.uaword	.LVL47
	.uaword	.LVL49
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL54
	.uaword	.LVL55
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL56
	.uaword	.LVL57
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL86
	.uaword	.LVL87
	.uahalf	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST43:
	.uaword	.LVL50
	.uaword	.LVL51
	.uahalf	0x12
	.byte	0x72
	.sleb128 0
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x32
	.byte	0x24
	.byte	0x8d
	.sleb128 24
	.byte	0x6
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x73
	.sleb128 0
	.byte	0x27
	.byte	0x9f
	.uaword	.LVL51
	.uaword	.LVL52
	.uahalf	0x12
	.byte	0x72
	.sleb128 -1
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x32
	.byte	0x24
	.byte	0x8d
	.sleb128 24
	.byte	0x6
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x73
	.sleb128 0
	.byte	0x27
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST44:
	.uaword	.LVL46
	.uaword	.LVL47
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL48
	.uaword	.LVL49
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL54
	.uaword	.LVL55
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL86
	.uaword	.LVL87
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST45:
	.uaword	.LVL50
	.uaword	.LVL51
	.uahalf	0xc
	.byte	0x72
	.sleb128 0
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x32
	.byte	0x24
	.byte	0x8d
	.sleb128 24
	.byte	0x6
	.byte	0x22
	.uaword	.LVL51
	.uaword	.LVL53
	.uahalf	0xc
	.byte	0x72
	.sleb128 -1
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x32
	.byte	0x24
	.byte	0x8d
	.sleb128 24
	.byte	0x6
	.byte	0x22
	.uaword	0
	.uaword	0
.LLST46:
	.uaword	.LVL64
	.uaword	.LVL65
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL66
	.uaword	.LVL80
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL81
	.uaword	.LVL86
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL87
	.uaword	.LFE209
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST47:
	.uaword	.LVL67
	.uaword	.LVL69
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL81
	.uaword	.LVL82
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST48:
	.uaword	.LVL68
	.uaword	.LVL80
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL82
	.uaword	.LVL86
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL87
	.uaword	.LVL88
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST49:
	.uaword	.LVL68
	.uaword	.LVL80
	.uahalf	0x2
	.byte	0x8f
	.sleb128 4
	.uaword	.LVL82
	.uaword	.LVL84
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL84
	.uaword	.LVL86
	.uahalf	0x2
	.byte	0x8f
	.sleb128 4
	.uaword	.LVL87
	.uaword	.LVL88
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST50:
	.uaword	.LVL68
	.uaword	.LVL80
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL82
	.uaword	.LVL86
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL87
	.uaword	.LVL88
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST51:
	.uaword	.LVL68
	.uaword	.LVL80
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL82
	.uaword	.LVL86
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL87
	.uaword	.LVL88
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST52:
	.uaword	.LVL68
	.uaword	.LVL70
	.uahalf	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.uaword	.LVL70
	.uaword	.LVL72
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL77
	.uaword	.LVL78
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL79
	.uaword	.LVL80
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL82
	.uaword	.LVL83
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL85
	.uaword	.LVL86
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL87
	.uaword	.LVL88
	.uahalf	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST53:
	.uaword	.LVL73
	.uaword	.LVL74
	.uahalf	0x12
	.byte	0x72
	.sleb128 0
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x32
	.byte	0x24
	.byte	0x8f
	.sleb128 4
	.byte	0x6
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x73
	.sleb128 0
	.byte	0x27
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST54:
	.uaword	.LVL68
	.uaword	.LVL70
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL71
	.uaword	.LVL72
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL77
	.uaword	.LVL78
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL87
	.uaword	.LVL88
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST55:
	.uaword	.LVL73
	.uaword	.LVL75
	.uahalf	0xc
	.byte	0x72
	.sleb128 0
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x32
	.byte	0x24
	.byte	0x8f
	.sleb128 4
	.byte	0x6
	.byte	0x22
	.uaword	.LVL75
	.uaword	.LVL76
	.uahalf	0xc
	.byte	0x72
	.sleb128 -1
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x32
	.byte	0x24
	.byte	0x8f
	.sleb128 4
	.byte	0x6
	.byte	0x22
	.uaword	0
	.uaword	0
.LLST56:
	.uaword	.LVL89
	.uaword	.LVL90
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST57:
	.uaword	.LVL92
	.uaword	.LVL93
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL106
	.uaword	.LVL108
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST58:
	.uaword	.LVL94
	.uaword	.LVL102
	.uahalf	0x4
	.byte	0xa
	.uahalf	0xc80
	.byte	0x9f
	.uaword	.LVL103
	.uaword	.LVL106
	.uahalf	0x4
	.byte	0xa
	.uahalf	0xc80
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST59:
	.uaword	.LVL94
	.uaword	.LVL102
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL103
	.uaword	.LVL106
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST61:
	.uaword	.LVL94
	.uaword	.LVL102
	.uahalf	0x6
	.byte	0x3
	.uaword	ComServ_Status+32
	.byte	0x9f
	.uaword	.LVL103
	.uaword	.LVL106
	.uahalf	0x6
	.byte	0x3
	.uaword	ComServ_Status+32
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST62:
	.uaword	.LVL94
	.uaword	.LVL96
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST63:
	.uaword	.LVL95
	.uaword	.LVL97
	.uahalf	0x4
	.byte	0xa
	.uahalf	0xc80
	.byte	0x9f
	.uaword	.LVL103
	.uaword	.LVL104
	.uahalf	0x4
	.byte	0xa
	.uahalf	0xc80
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST64:
	.uaword	.LVL95
	.uaword	.LVL97
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL103
	.uaword	.LVL104
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST66:
	.uaword	.LVL95
	.uaword	.LVL97
	.uahalf	0x6
	.byte	0x3
	.uaword	ComServ_Status+32
	.byte	0x9f
	.uaword	.LVL103
	.uaword	.LVL104
	.uahalf	0x6
	.byte	0x3
	.uaword	ComServ_Status+32
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST67:
	.uaword	.LVL98
	.uaword	.LVL102
	.uahalf	0x4
	.byte	0xa
	.uahalf	0x1edc
	.byte	0x9f
	.uaword	.LVL105
	.uaword	.LVL106
	.uahalf	0x4
	.byte	0xa
	.uahalf	0x1edc
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST68:
	.uaword	.LVL98
	.uaword	.LVL102
	.uahalf	0x4
	.byte	0xa
	.uahalf	0x8fc
	.byte	0x9f
	.uaword	.LVL105
	.uaword	.LVL106
	.uahalf	0x4
	.byte	0xa
	.uahalf	0x8fc
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST69:
	.uaword	.LVL98
	.uaword	.LVL102
	.uahalf	0x4
	.byte	0xa
	.uahalf	0x203a
	.byte	0x9f
	.uaword	.LVL105
	.uaword	.LVL106
	.uahalf	0x4
	.byte	0xa
	.uahalf	0x203a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST70:
	.uaword	.LVL98
	.uaword	.LVL102
	.uahalf	0x6
	.byte	0x3
	.uaword	ComServ_Status+34
	.byte	0x9f
	.uaword	.LVL105
	.uaword	.LVL106
	.uahalf	0x6
	.byte	0x3
	.uaword	ComServ_Status+34
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST71:
	.uaword	.LVL98
	.uaword	.LVL100
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST72:
	.uaword	.LVL99
	.uaword	.LVL101
	.uahalf	0x4
	.byte	0xa
	.uahalf	0x1edc
	.byte	0x9f
	.uaword	.LVL105
	.uaword	.LVL106
	.uahalf	0x4
	.byte	0xa
	.uahalf	0x1edc
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST73:
	.uaword	.LVL99
	.uaword	.LVL101
	.uahalf	0x4
	.byte	0xa
	.uahalf	0x8fc
	.byte	0x9f
	.uaword	.LVL105
	.uaword	.LVL106
	.uahalf	0x4
	.byte	0xa
	.uahalf	0x8fc
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST74:
	.uaword	.LVL99
	.uaword	.LVL101
	.uahalf	0x4
	.byte	0xa
	.uahalf	0x203a
	.byte	0x9f
	.uaword	.LVL105
	.uaword	.LVL106
	.uahalf	0x4
	.byte	0xa
	.uahalf	0x203a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST75:
	.uaword	.LVL99
	.uaword	.LVL101
	.uahalf	0x6
	.byte	0x3
	.uaword	ComServ_Status+34
	.byte	0x9f
	.uaword	.LVL105
	.uaword	.LVL106
	.uahalf	0x6
	.byte	0x3
	.uaword	ComServ_Status+34
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST76:
	.uaword	.LVL106
	.uaword	.LVL108
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST77:
	.uaword	.LVL107
	.uaword	.LVL109
	.uahalf	0x4
	.byte	0xa
	.uahalf	0x578
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST78:
	.uaword	.LVL107
	.uaword	.LVL109
	.uahalf	0x4
	.byte	0xa
	.uahalf	0x258
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST79:
	.uaword	.LVL107
	.uaword	.LVL109
	.uahalf	0x4
	.byte	0xa
	.uahalf	0x60e
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST80:
	.uaword	.LVL107
	.uaword	.LVL109
	.uahalf	0x6
	.byte	0x3
	.uaword	ComServ_Status+30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST81:
	.uaword	.LVL110
	.uaword	.LVL111
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST82:
	.uaword	.LVL112
	.uaword	.LVL113
	.uahalf	0x4
	.byte	0xa
	.uahalf	0x3e8
	.byte	0x9f
	.uaword	.LVL114
	.uaword	.LFE212
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST83:
	.uaword	.LVL115
	.uaword	.LVL118-1
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST84:
	.uaword	.LVL116
	.uaword	.LVL117
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST85:
	.uaword	.LVL119
	.uaword	.LVL121
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL122
	.uaword	.LVL123
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL124
	.uaword	.LFE215
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST86:
	.uaword	.LVL120
	.uaword	.LVL125
	.uahalf	0x1
	.byte	0x57
	.uaword	0
	.uaword	0
.LLST87:
	.uaword	.LVL120
	.uaword	.LVL125
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST88:
	.uaword	.LVL120
	.uaword	.LVL125
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST89:
	.uaword	.LVL120
	.uaword	.LVL125
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST90:
	.uaword	.LVL126
	.uaword	.LVL129
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST91:
	.uaword	.LVL126
	.uaword	.LVL127
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL127
	.uaword	.LVL128
	.uahalf	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST92:
	.uaword	.LVL126
	.uaword	.LVL129
	.uahalf	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.uaword	.LVL133
	.uaword	.LFE226
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST93:
	.uaword	.LVL126
	.uaword	.LVL129
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL129
	.uaword	.LVL131
	.uahalf	0x9
	.byte	0x72
	.sleb128 0
	.byte	0x3f
	.byte	0x1a
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.uaword	.LVL131
	.uaword	.LVL132
	.uahalf	0x5
	.byte	0x73
	.sleb128 0
	.byte	0x3f
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST94:
	.uaword	.LVL126
	.uaword	.LVL130
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL130
	.uaword	.LVL136
	.uahalf	0x3
	.byte	0x84
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL136
	.uaword	.LFE226
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST95:
	.uaword	.LVL138
	.uaword	.LVL139
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST96:
	.uaword	.LVL138
	.uaword	.LVL140-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL140-1
	.uaword	.LVL145
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL146
	.uaword	.LVL149
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST97:
	.uaword	.LVL138
	.uaword	.LVL140-1
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST98:
	.uaword	.LVL138
	.uaword	.LVL143
	.uahalf	0x3
	.byte	0x8
	.byte	0x92
	.byte	0x9f
	.uaword	.LVL143
	.uaword	.LFE223
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST99:
	.uaword	.LVL141
	.uaword	.LVL142-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL142-1
	.uaword	.LFE223
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST100:
	.uaword	.LVL143
	.uaword	.LVL145
	.uahalf	0x22
	.byte	0x7c
	.sleb128 0
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x48
	.byte	0x24
	.byte	0x7b
	.sleb128 0
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x40
	.byte	0x24
	.byte	0x21
	.byte	0x79
	.sleb128 0
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x38
	.byte	0x24
	.byte	0x21
	.byte	0x7a
	.sleb128 0
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x21
	.byte	0x9f
	.uaword	.LVL146
	.uaword	.LVL148
	.uahalf	0x22
	.byte	0x7c
	.sleb128 0
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x48
	.byte	0x24
	.byte	0x7b
	.sleb128 0
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x40
	.byte	0x24
	.byte	0x21
	.byte	0x79
	.sleb128 0
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x38
	.byte	0x24
	.byte	0x21
	.byte	0x7a
	.sleb128 0
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x21
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST101:
	.uaword	.LVL143
	.uaword	.LVL145
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL146
	.uaword	.LVL149
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST102:
	.uaword	.LVL144
	.uaword	.LVL145
	.uahalf	0x10
	.byte	0x75
	.sleb128 0
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x38
	.byte	0x24
	.byte	0x74
	.sleb128 0
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x21
	.byte	0x9f
	.uaword	.LVL146
	.uaword	.LVL147
	.uahalf	0x10
	.byte	0x75
	.sleb128 0
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x38
	.byte	0x24
	.byte	0x74
	.sleb128 0
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x21
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST103:
	.uaword	.LVL145
	.uaword	.LVL146
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL150
	.uaword	.LFE223
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST104:
	.uaword	.LVL151
	.uaword	.LVL152
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST105:
	.uaword	.LVL151
	.uaword	.LVL153-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL153-1
	.uaword	.LVL157
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST106:
	.uaword	.LVL151
	.uaword	.LVL153-1
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST107:
	.uaword	.LVL153
	.uaword	.LVL155
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL156
	.uaword	.LVL157
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST108:
	.uaword	.LVL153
	.uaword	.LVL157
	.uahalf	0x2e
	.byte	0x8f
	.sleb128 200
	.byte	0x94
	.byte	0x1
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x48
	.byte	0x24
	.byte	0x8f
	.sleb128 201
	.byte	0x94
	.byte	0x1
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x40
	.byte	0x24
	.byte	0x21
	.byte	0x8f
	.sleb128 202
	.byte	0x94
	.byte	0x1
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x38
	.byte	0x24
	.byte	0x21
	.byte	0x8f
	.sleb128 203
	.byte	0x94
	.byte	0x1
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x21
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST109:
	.uaword	.LVL154
	.uaword	.LVL156
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL158
	.uaword	.LFE222
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST110:
	.uaword	.LVL159
	.uaword	.LVL160
	.uahalf	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.uaword	.LVL163
	.uaword	.LVL165
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL165
	.uaword	.LVL166
	.uahalf	0x4
	.byte	0x72
	.sleb128 0
	.byte	0x20
	.byte	0x9f
	.uaword	.LVL166
	.uaword	.LFE227
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST111:
	.uaword	.LVL161
	.uaword	.LVL162
	.uahalf	0x11
	.byte	0x7f
	.sleb128 0
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x32
	.byte	0x24
	.byte	0x84
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x72
	.sleb128 0
	.byte	0x27
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST112:
	.uaword	.LVL159
	.uaword	.LVL160
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL164
	.uaword	.LVL166
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST113:
	.uaword	.LVL161
	.uaword	.LVL163
	.uahalf	0xb
	.byte	0x7f
	.sleb128 0
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x32
	.byte	0x24
	.byte	0x84
	.sleb128 0
	.byte	0x22
	.uaword	0
	.uaword	0
.LLST114:
	.uaword	.LVL169
	.uaword	.LVL170
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST115:
	.uaword	.LVL173
	.uaword	.LVL174
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
	.section .debug_aranges,"",@progbits
	.uaword	0xa4
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB219
	.uaword	.LFE219-.LFB219
	.uaword	.LFB203
	.uaword	.LFE203-.LFB203
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
	.uaword	.LFB213
	.uaword	.LFE213-.LFB213
	.uaword	.LFB212
	.uaword	.LFE212-.LFB212
	.uaword	.LFB211
	.uaword	.LFE211-.LFB211
	.uaword	.LFB215
	.uaword	.LFE215-.LFB215
	.uaword	.LFB226
	.uaword	.LFE226-.LFB226
	.uaword	.LFB223
	.uaword	.LFE223-.LFB223
	.uaword	.LFB222
	.uaword	.LFE222-.LFB222
	.uaword	.LFB227
	.uaword	.LFE227-.LFB227
	.uaword	.LFB230
	.uaword	.LFE230-.LFB230
	.uaword	.LFB231
	.uaword	.LFE231-.LFB231
	.uaword	0
	.uaword	0
	.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB66
	.uaword	.LBE66
	.uaword	.LBB70
	.uaword	.LBE70
	.uaword	.LBB71
	.uaword	.LBE71
	.uaword	0
	.uaword	0
	.uaword	.LBB72
	.uaword	.LBE72
	.uaword	.LBB76
	.uaword	.LBE76
	.uaword	.LBB77
	.uaword	.LBE77
	.uaword	0
	.uaword	0
	.uaword	.LBB80
	.uaword	.LBE80
	.uaword	.LBB83
	.uaword	.LBE83
	.uaword	0
	.uaword	0
	.uaword	.LBB84
	.uaword	.LBE84
	.uaword	.LBB87
	.uaword	.LBE87
	.uaword	0
	.uaword	0
	.uaword	.LBB88
	.uaword	.LBE88
	.uaword	.LBB91
	.uaword	.LBE91
	.uaword	0
	.uaword	0
	.uaword	.LBB92
	.uaword	.LBE92
	.uaword	.LBB95
	.uaword	.LBE95
	.uaword	0
	.uaword	0
	.uaword	.LBB96
	.uaword	.LBE96
	.uaword	.LBB99
	.uaword	.LBE99
	.uaword	0
	.uaword	0
	.uaword	.LBB100
	.uaword	.LBE100
	.uaword	.LBB103
	.uaword	.LBE103
	.uaword	0
	.uaword	0
	.uaword	.LBB104
	.uaword	.LBE104
	.uaword	.LBB107
	.uaword	.LBE107
	.uaword	0
	.uaword	0
	.uaword	.LBB108
	.uaword	.LBE108
	.uaword	.LBB111
	.uaword	.LBE111
	.uaword	0
	.uaword	0
	.uaword	.LBB112
	.uaword	.LBE112
	.uaword	.LBB115
	.uaword	.LBE115
	.uaword	0
	.uaword	0
	.uaword	.LBB116
	.uaword	.LBE116
	.uaword	.LBB119
	.uaword	.LBE119
	.uaword	0
	.uaword	0
	.uaword	.LBB120
	.uaword	.LBE120
	.uaword	.LBB123
	.uaword	.LBE123
	.uaword	0
	.uaword	0
	.uaword	.LBB124
	.uaword	.LBE124
	.uaword	.LBB127
	.uaword	.LBE127
	.uaword	0
	.uaword	0
	.uaword	.LBB128
	.uaword	.LBE128
	.uaword	.LBB131
	.uaword	.LBE131
	.uaword	0
	.uaword	0
	.uaword	.LBB132
	.uaword	.LBE132
	.uaword	.LBB135
	.uaword	.LBE135
	.uaword	0
	.uaword	0
	.uaword	.LBB138
	.uaword	.LBE138
	.uaword	.LBB141
	.uaword	.LBE141
	.uaword	0
	.uaword	0
	.uaword	.LBB142
	.uaword	.LBE142
	.uaword	.LBB146
	.uaword	.LBE146
	.uaword	.LBB147
	.uaword	.LBE147
	.uaword	0
	.uaword	0
	.uaword	.LBB160
	.uaword	.LBE160
	.uaword	.LBB176
	.uaword	.LBE176
	.uaword	.LBB177
	.uaword	.LBE177
	.uaword	.LBB188
	.uaword	.LBE188
	.uaword	.LBB190
	.uaword	.LBE190
	.uaword	0
	.uaword	0
	.uaword	.LBB162
	.uaword	.LBE162
	.uaword	.LBB168
	.uaword	.LBE168
	.uaword	.LBB169
	.uaword	.LBE169
	.uaword	.LBB170
	.uaword	.LBE170
	.uaword	.LBB171
	.uaword	.LBE171
	.uaword	0
	.uaword	0
	.uaword	.LBB163
	.uaword	.LBE163
	.uaword	.LBB164
	.uaword	.LBE164
	.uaword	.LBB165
	.uaword	.LBE165
	.uaword	.LBB166
	.uaword	.LBE166
	.uaword	.LBB167
	.uaword	.LBE167
	.uaword	0
	.uaword	0
	.uaword	.LBB178
	.uaword	.LBE178
	.uaword	.LBB187
	.uaword	.LBE187
	.uaword	.LBB189
	.uaword	.LBE189
	.uaword	.LBB191
	.uaword	.LBE191
	.uaword	0
	.uaword	0
	.uaword	.LBB179
	.uaword	.LBE179
	.uaword	.LBB184
	.uaword	.LBE184
	.uaword	.LBB185
	.uaword	.LBE185
	.uaword	.LBB186
	.uaword	.LBE186
	.uaword	0
	.uaword	0
	.uaword	.LBB180
	.uaword	.LBE180
	.uaword	.LBB183
	.uaword	.LBE183
	.uaword	0
	.uaword	0
	.uaword	.LBB181
	.uaword	.LBE181
	.uaword	.LBB182
	.uaword	.LBE182
	.uaword	0
	.uaword	0
	.uaword	.LBB210
	.uaword	.LBE210
	.uaword	.LBB237
	.uaword	.LBE237
	.uaword	.LBB238
	.uaword	.LBE238
	.uaword	.LBB239
	.uaword	.LBE239
	.uaword	0
	.uaword	0
	.uaword	.LBB211
	.uaword	.LBE211
	.uaword	.LBB234
	.uaword	.LBE234
	.uaword	.LBB235
	.uaword	.LBE235
	.uaword	.LBB236
	.uaword	.LBE236
	.uaword	0
	.uaword	0
	.uaword	.LBB212
	.uaword	.LBE212
	.uaword	.LBB228
	.uaword	.LBE228
	.uaword	0
	.uaword	0
	.uaword	.LBB214
	.uaword	.LBE214
	.uaword	.LBB217
	.uaword	.LBE217
	.uaword	0
	.uaword	0
	.uaword	.LBB215
	.uaword	.LBE215
	.uaword	.LBB216
	.uaword	.LBE216
	.uaword	0
	.uaword	0
	.uaword	.LBB219
	.uaword	.LBE219
	.uaword	.LBB227
	.uaword	.LBE227
	.uaword	.LBB229
	.uaword	.LBE229
	.uaword	0
	.uaword	0
	.uaword	.LBB221
	.uaword	.LBE221
	.uaword	.LBB224
	.uaword	.LBE224
	.uaword	0
	.uaword	0
	.uaword	.LBB222
	.uaword	.LBE222
	.uaword	.LBB223
	.uaword	.LBE223
	.uaword	0
	.uaword	0
	.uaword	.LFB219
	.uaword	.LFE219
	.uaword	.LFB203
	.uaword	.LFE203
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
	.uaword	.LFB213
	.uaword	.LFE213
	.uaword	.LFB212
	.uaword	.LFE212
	.uaword	.LFB211
	.uaword	.LFE211
	.uaword	.LFB215
	.uaword	.LFE215
	.uaword	.LFB226
	.uaword	.LFE226
	.uaword	.LFB223
	.uaword	.LFE223
	.uaword	.LFB222
	.uaword	.LFE222
	.uaword	.LFB227
	.uaword	.LFE227
	.uaword	.LFB230
	.uaword	.LFE230
	.uaword	.LFB231
	.uaword	.LFE231
	.uaword	0
	.uaword	0
	.section .debug_line,"",@progbits
.Ldebug_line0:
	.section .debug_str,"",@progbits
.LASF24:
	.string	"HsfbFreq"
.LASF26:
	.string	"COMSERV_S_DEV_RX_BIT1"
.LASF30:
	.string	"TestPulseEn"
.LASF39:
	.string	"RxErrOut"
.LASF25:
	.string	"HsfbSweep"
.LASF18:
	.string	"AutoDiagEn"
.LASF28:
	.string	"JitterDis"
.LASF19:
	.string	"PeakCurrentEn"
.LASF35:
	.string	"GenMsgSendType"
.LASF48:
	.string	"ComCrcRef"
.LASF29:
	.string	"AutoSwitchDis"
.LASF0:
	.string	"reserved_0"
.LASF5:
	.string	"reserved_1"
.LASF1:
	.string	"reserved_2"
.LASF32:
	.string	"Reserved2"
.LASF2:
	.string	"reserved_4"
.LASF12:
	.string	"reserved_6"
.LASF33:
	.string	"COMSERV_S_DEV_RX"
.LASF7:
	.string	"reserved_9"
.LASF45:
	.string	"u16TxIndex"
.LASF9:
	.string	"reserved_30"
.LASF36:
	.string	"DataInternal"
.LASF27:
	.string	"COMSERV_S_DEV_RX_BIT2"
.LASF22:
	.string	"Operation"
.LASF34:
	.string	"SafetyStatus"
.LASF16:
	.string	"Data"
.LASF40:
	.string	"QSPI_S_ERROR_BIT"
.LASF17:
	.string	"COMSERV_S_STATUS"
.LASF44:
	.string	"u16Index"
.LASF37:
	.string	"CAN_S_E2EDATA"
.LASF46:
	.string	"LenOfMsg"
.LASF3:
	.string	"reserved_10"
.LASF10:
	.string	"reserved_12"
.LASF14:
	.string	"reserved_15"
.LASF4:
	.string	"reserved_16"
.LASF31:
	.string	"Reserved1"
.LASF42:
	.string	"DataPtr"
.LASF21:
	.string	"CanTimeOut"
.LASF43:
	.string	"DataSize"
.LASF41:
	.string	"ReadWrite"
.LASF47:
	.string	"ComCrcAct"
.LASF23:
	.string	"Topology"
.LASF38:
	.string	"CAN_S_E2E"
.LASF20:
	.string	"ClrFault"
.LASF13:
	.string	"reserved_21"
.LASF15:
	.string	"reserved_24"
.LASF6:
	.string	"reserved_25"
.LASF8:
	.string	"reserved_26"
.LASF11:
	.string	"reserved_28"
	.extern	IfxScuWdt_setCpuEndinit,STT_FUNC,0
	.extern	IfxScuWdt_clearCpuEndinit,STT_FUNC,0
	.extern	IfxScuWdt_getCpuWatchdogPassword,STT_FUNC,0
	.extern	PortDisHSK,STT_OBJECT,2
	.extern	PortOtpAutoDiagEn,STT_OBJECT,2
	.extern	COM_WakeUpSleepManagement,STT_OBJECT,4
	.extern	DCDC_DEV_CMD,STT_OBJECT,24
	.extern	HTB_CMD,STT_OBJECT,16
	.extern	DCDC_CMD,STT_OBJECT,32
	.extern	TpRx,STT_FUNC,0
	.extern	CANDriver_ClrRxPending,STT_FUNC,0
	.extern	CANDriver_MboxToRxBuf,STT_FUNC,0
	.extern	DebugError,STT_OBJECT,4
	.extern	CANDriver_ReadStsRxPending,STT_FUNC,0
	.extern	CANDriver_TxReqSts,STT_FUNC,0
	.extern	CANDriver_TxReqNewData,STT_FUNC,0
	.extern	CANDriver_TxDataToMbox,STT_FUNC,0
	.extern	CanRxFlags,STT_OBJECT,56
	.extern	CanRxMsg,STT_OBJECT,252
	.extern	CanTxMsg,STT_OBJECT,540
	.extern	CanTxFlags,STT_OBJECT,60
	.extern	CANDriver_mg_au16TxCycleTime,STT_OBJECT,30
	.extern	CANDriver_mg_aeMsgSendType,STT_OBJECT,60
	.extern	HsfbState_State,STT_OBJECT,4
	.extern	Main_InitFin,STT_OBJECT,1
	.extern	LVDC_WakeUpSleepManagement,STT_OBJECT,4
	.extern	KLDiagFlag,STT_OBJECT,2
	.extern	LVDC_SafetyMeasure,STT_OBJECT,32
	.extern	DCDC_Status,STT_OBJECT,24
	.extern	Main_DebugErrCode,STT_OBJECT,2
	.extern	DcDc_Scope1,STT_OBJECT,24
	.extern	DcDc_Scope0,STT_OBJECT,16
	.extern	Pfm_Capture,STT_OBJECT,16
	.extern	LvDc_Pma_ErrSrc,STT_OBJECT,32
	.extern	Pma_AbortData,STT_OBJECT,160
	.extern	DCDC_Status_ErrCode,STT_OBJECT,32
	.extern	DCDC_Measure3,STT_OBJECT,28
	.extern	Dsp_SatS16U12,STT_FUNC,0
	.extern	DCDC_Measure2,STT_OBJECT,32
	.extern	DCDC_Measure4,STT_OBJECT,28
	.extern	DCDC_Measure,STT_OBJECT,28
	.extern	Main_GetBuildInfo,STT_FUNC,0
	.extern	Dsp_SatS16U8,STT_FUNC,0
	.ident	"GCC: (HighTec Release v4.6.3.0) 4.6.3 build on 2013-05-17"
