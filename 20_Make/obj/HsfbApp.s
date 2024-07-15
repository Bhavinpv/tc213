	.file	"HsfbApp.c"
.section .text,"ax",@progbits
.Ltext0:
	.section .code_ram,"ax",@progbits
	.align 3
	.global	HsfbApp_Read100us
	.type	HsfbApp_Read100us, @function
HsfbApp_Read100us:
.LFB202:
	.file 1 "../40_Appl/HsfbApp/HsfbApp.c"
	.loc 1 60 0
.LVL0:
	sub.a	%SP, 24
.LCFI0:
	.loc 1 66 0
	movh.a	%a4, hi:AdcResPt-4
	lea	%a3, [%SP] -2
	lea	%a4, [%a4] lo:AdcResPt-4
	.loc 1 59 0
	mov.aa	%a2, %a3
	mov.a	%a15, 5
.LVL1:
.L2:
	.loc 1 67 0 discriminator 2
	ld.a	%a5, [+%a4]4
	ld.h	%d15, [%a5]0
	st.h	[+%a2]2, %d15
	loop	%a15, .L2
	.loc 1 66 0
	movh.a	%a2, hi:HsfbApp_DW+34
	lea	%a2, [%a2] lo:HsfbApp_DW+34
	lea	%a4, [%SP] 10
	mov	%d4, 6
	.loc 1 71 0
	mov	%d3, 4096
	mov.a	%a15, 5
.L4:
	ld.h	%d15, [+%a3]2
	extr.u	%d2, %d15, 0, 16
	jlt.u	%d2, %d3, .L3
	.loc 1 74 0
	ld.h	%d15, [%a2]0
.LVL2:
.L3:
	.loc 1 77 0
	st.h	[%a2+]2, %d15
	.loc 1 78 0
	st.h	[+%a4]2, %d15
	add	%d4, -1
	loop	%a15, .L4
	.loc 1 81 0
	movh.a	%a2, hi:AdcStatus100us
	ld.h	%d15, [%SP] 12
.LVL3:
	lea	%a15, [%a2] lo:AdcStatus100us
	st.h	[%a2] lo:AdcStatus100us, %d15
	.loc 1 82 0
	ld.h	%d15, [%SP] 14
	st.h	[%a15] 2, %d15
	.loc 1 83 0
	ld.h	%d15, [%SP] 16
	st.h	[%a15] 4, %d15
	.loc 1 84 0
	ld.h	%d15, [%SP] 18
	st.h	[%a15] 6, %d15
	.loc 1 85 0
	ld.h	%d15, [%SP] 20
	st.h	[%a15] 8, %d15
	.loc 1 86 0
	ld.h	%d15, [%SP] 22
	st.h	[%a15] 10, %d15
	.loc 1 87 0
	mov	%d15, 0
	st.h	[%a15] 12, %d4
	.loc 1 88 0
	st.h	[%a15] 14, %d15
	.loc 1 89 0
	st.h	[%a15] 16, %d15
	.loc 1 90 0
	st.h	[%a15] 18, %d15
	.loc 1 91 0
	st.h	[%a15] 20, %d15
	.loc 1 92 0
	st.h	[%a15] 22, %d15
	.loc 1 93 0
	st.h	[%a15] 24, %d15
	.loc 1 94 0
	st.h	[%a15] 26, %d15
	.loc 1 95 0
	st.h	[%a15] 28, %d15
	.loc 1 96 0
	st.h	[%a15] 30, %d15
	.loc 1 97 0
	st.h	[%a15] 32, %d15
	.loc 1 98 0
	st.h	[%a15] 34, %d15
	.loc 1 99 0
	st.h	[%a15] 36, %d15
	.loc 1 100 0
	ret
.LFE202:
	.size	HsfbApp_Read100us, .-HsfbApp_Read100us
	.align 3
	.global	HsfbApp_Read15us
	.type	HsfbApp_Read15us, @function
HsfbApp_Read15us:
.LFB203:
	.loc 1 111 0
	.loc 1 115 0
	movh.a	%a2, hi:AdcResPt
	lea	%a15, [%a2] lo:AdcResPt
	ld.a	%a2, [%a2] lo:AdcResPt
	.loc 1 119 0
	mov	%d15, 4096
	.loc 1 115 0
	ld.hu	%d2, [%a2]0
.LVL4:
	.loc 1 116 0
	ld.a	%a2, [%a15] 4
	ld.hu	%d5, [%a2]0
.LVL5:
	.loc 1 117 0
	ld.a	%a2, [%a15] 8
	.loc 1 118 0
	ld.a	%a15, [%a15] 12
	.loc 1 117 0
	ld.hu	%d4, [%a2]0
.LVL6:
	.loc 1 118 0
	ld.hu	%d3, [%a15]0
.LVL7:
	.loc 1 119 0
	jge.u	%d2, %d15, .L9
	movh.a	%a2, hi:HsfbApp_DW
	.loc 1 115 0
	extr	%d2, %d2, 0, 16
.LVL8:
	lea	%a2, [%a2] lo:HsfbApp_DW
.L10:
.LVL9:
	.loc 1 127 0
	mov	%d15, 4096
	.loc 1 116 0
	extr	%d6, %d5, 0, 16
	.loc 1 126 0
	movh.a	%a15, hi:AdcStatus15us
	.loc 1 116 0
	ld.h	%d7, [%a2] 28
	.loc 1 126 0
	st.h	[%a15] lo:AdcStatus15us, %d2
	.loc 1 125 0
	st.h	[%a2] 26, %d2
	.loc 1 116 0
	ge.u	%d2, %d5, %d15
.LVL10:
	sel	%d2, %d2, %d7, %d6
.LVL11:
	.loc 1 134 0
	lea	%a15, [%a15] lo:AdcStatus15us
	.loc 1 117 0
	extr	%d5, %d4, 0, 16
.LVL12:
	ld.h	%d6, [%a2] 30
	.loc 1 133 0
	st.h	[%a2] 28, %d2
	.loc 1 134 0
	st.h	[%a15] 2, %d2
	.loc 1 117 0
	ge.u	%d2, %d4, %d15
.LVL13:
	sel	%d2, %d2, %d6, %d5
.LVL14:
	.loc 1 118 0
	ld.h	%d4, [%a2] 32
.LVL15:
	ge.u	%d15, %d3, %d15
	.loc 1 141 0
	st.h	[%a2] 30, %d2
	.loc 1 142 0
	st.h	[%a15] 4, %d2
	.loc 1 118 0
	extr	%d2, %d3, 0, 16
.LVL16:
	sel	%d15, %d15, %d4, %d2
.LVL17:
	.loc 1 149 0
	st.h	[%a2] 32, %d15
	.loc 1 150 0
	st.h	[%a15] 6, %d15
	.loc 1 151 0
	mov	%d15, 0
.LVL18:
	st.h	[%a15] 8, %d15
	.loc 1 152 0
	st.h	[%a15] 10, %d15
	.loc 1 153 0
	st.h	[%a15] 12, %d15
	.loc 1 154 0
	st.h	[%a15] 14, %d15
	.loc 1 155 0
	st.h	[%a15] 16, %d15
	.loc 1 156 0
	st.h	[%a15] 18, %d15
	.loc 1 157 0
	st.h	[%a15] 20, %d15
	.loc 1 158 0
	st.h	[%a15] 22, %d15
	.loc 1 159 0
	st.h	[%a15] 24, %d15
	.loc 1 160 0
	st.h	[%a15] 26, %d15
	.loc 1 161 0
	st.h	[%a15] 28, %d15
	.loc 1 162 0
	st.h	[%a15] 30, %d15
	.loc 1 163 0
	st.h	[%a15] 32, %d15
	.loc 1 164 0
	st.h	[%a15] 34, %d15
	.loc 1 165 0
	st.h	[%a15] 36, %d15
	.loc 1 166 0
	ret
.LVL19:
.L9:
	.loc 1 122 0
	movh.a	%a2, hi:HsfbApp_DW
	lea	%a2, [%a2] lo:HsfbApp_DW
	ld.h	%d2, [%a2] 26
.LVL20:
	j	.L10
.LFE203:
	.size	HsfbApp_Read15us, .-HsfbApp_Read15us
	.section .text.MPU_ASIL_CODE,"ax",@progbits
	.align 3
	.global	HsfbApp_Read1ms
	.type	HsfbApp_Read1ms, @function
HsfbApp_Read1ms:
.LFB204:
	.loc 1 177 0
.LVL21:
	sub.a	%SP, 56
.LCFI1:
	.loc 1 193 0
	movh.a	%a3, hi:AdcResPt+20
	lea	%a4, [%SP] 2
	lea	%a3, [%a3] lo:AdcResPt+20
	.loc 1 176 0
	mov.aa	%a2, %a4
	mov.a	%a15, 12
.LVL22:
.L18:
	.loc 1 184 0 discriminator 2
	ld.a	%a5, [+%a3]4
	ld.h	%d15, [%a5]0
	st.h	[+%a2]2, %d15
	loop	%a15, .L18
	.loc 1 187 0
	mov	%d15, 0
	movh.a	%a15, hi:AdcStatus1ms
	lea	%a3, [%a15] lo:AdcStatus1ms
	.loc 1 192 0
	movh.a	%a2, hi:HsfbApp_DW
	.loc 1 187 0
	st.h	[%a15] lo:AdcStatus1ms, %d15
	.loc 1 188 0
	st.h	[%a3] 2, %d15
	.loc 1 189 0
	st.h	[%a3] 4, %d15
	.loc 1 190 0
	st.h	[%a3] 6, %d15
	.loc 1 191 0
	st.h	[%a3] 8, %d15
	.loc 1 192 0
	st.h	[%a3] 10, %d15
.LVL23:
	lea	%a2, [%a2] lo:HsfbApp_DW
	lea	%a5, [%SP] 28
	.loc 1 194 0
	mov	%d3, 4096
	mov.a	%a15, 12
.LVL24:
.L20:
	ld.h	%d15, [+%a4]2
	extr.u	%d2, %d15, 0, 16
	jlt.u	%d2, %d3, .L19
	.loc 1 197 0
	ld.h	%d15, [%a2]0
.LVL25:
.L19:
	.loc 1 200 0
	st.h	[%a2+]2, %d15
	.loc 1 201 0
	st.h	[+%a5]2, %d15
	.loc 1 193 0
	loop	%a15, .L20
	.loc 1 204 0
	ld.h	%d15, [%SP] 30
.LVL26:
	st.h	[%a3] 12, %d15
	.loc 1 205 0
	ld.h	%d15, [%SP] 32
	st.h	[%a3] 14, %d15
	.loc 1 206 0
	ld.h	%d15, [%SP] 34
	st.h	[%a3] 16, %d15
	.loc 1 207 0
	ld.h	%d15, [%SP] 36
	st.h	[%a3] 18, %d15
	.loc 1 208 0
	ld.h	%d15, [%SP] 38
	st.h	[%a3] 20, %d15
	.loc 1 209 0
	ld.h	%d15, [%SP] 40
	st.h	[%a3] 22, %d15
	.loc 1 210 0
	ld.h	%d15, [%SP] 42
	st.h	[%a3] 24, %d15
	.loc 1 211 0
	ld.h	%d15, [%SP] 44
	st.h	[%a3] 26, %d15
	.loc 1 212 0
	ld.h	%d15, [%SP] 46
	st.h	[%a3] 28, %d15
	.loc 1 213 0
	ld.h	%d15, [%SP] 48
	st.h	[%a3] 30, %d15
	.loc 1 214 0
	ld.h	%d15, [%SP] 50
	st.h	[%a3] 32, %d15
	.loc 1 215 0
	ld.h	%d15, [%SP] 52
	st.h	[%a3] 34, %d15
	.loc 1 216 0
	ld.h	%d15, [%SP] 54
	st.h	[%a3] 36, %d15
	.loc 1 217 0
	movh.a	%a3, hi:PortInPt
	lea	%a15, [%a3] lo:PortInPt
	ld.a	%a3, [%a3] lo:PortInPt
	ld.hu	%d15, [%a15] 4
	movh.a	%a4, hi:PortStatus1ms
	ld.w	%d2, [%a3]0
	.loc 1 218 0
	ld.a	%a3, [%a15] 8
	.loc 1 217 0
	extr.u	%d15, %d2, %d15, 1
	lea	%a2, [%a4] lo:PortStatus1ms
	xor	%d15, %d15, 1
	st.b	[%a4] lo:PortStatus1ms, %d15
	.loc 1 218 0
	ld.w	%d2, [%a3]0
	ld.hu	%d15, [%a15] 12
	extr.u	%d15, %d2, %d15, 1
	st.b	[%a2] 1, %d15
	.loc 1 219 0
	ld.a	%a3, [%a15] 16
	ld.hu	%d15, [%a15] 20
	ld.w	%d2, [%a3]0
	.loc 1 221 0
	ld.a	%a3, [%a15] 32
	.loc 1 219 0
	extr.u	%d15, %d2, %d15, 1
	xor	%d15, %d15, 1
	st.b	[%a2] 2, %d15
	.loc 1 220 0
	mov	%d15, 0
	st.b	[%a2] 3, %d15
	.loc 1 221 0
	ld.w	%d2, [%a3]0
	ld.hu	%d15, [%a15] 36
	.loc 1 222 0
	ld.a	%a3, [%a15] 40
	.loc 1 221 0
	extr.u	%d15, %d2, %d15, 1
	xor	%d15, %d15, 1
	st.b	[%a2] 4, %d15
	.loc 1 222 0
	ld.w	%d2, [%a3]0
	ld.hu	%d15, [%a15] 44
	.loc 1 223 0
	ld.a	%a3, [%a15] 48
	.loc 1 222 0
	extr.u	%d15, %d2, %d15, 1
	xor	%d15, %d15, 1
	st.b	[%a2] 5, %d15
	.loc 1 223 0
	ld.w	%d2, [%a3]0
	ld.hu	%d15, [%a15] 52
	.loc 1 224 0
	ld.a	%a3, [%a15] 56
	.loc 1 223 0
	extr.u	%d15, %d2, %d15, 1
	xor	%d15, %d15, 1
	st.b	[%a2] 6, %d15
	.loc 1 224 0
	ld.w	%d2, [%a3]0
	ld.hu	%d15, [%a15] 60
	.loc 1 225 0
	ld.a	%a3, [%a15] 64
	.loc 1 224 0
	extr.u	%d15, %d2, %d15, 1
	xor	%d15, %d15, 1
	st.b	[%a2] 7, %d15
	.loc 1 225 0
	ld.w	%d2, [%a3]0
	ld.hu	%d15, [%a15] 68
	.loc 1 226 0
	ld.a	%a3, [%a15] 72
	.loc 1 225 0
	extr.u	%d15, %d2, %d15, 1
	xor	%d15, %d15, 1
	st.b	[%a2] 8, %d15
	.loc 1 226 0
	ld.w	%d2, [%a3]0
	ld.hu	%d15, [%a15] 76
	extr.u	%d15, %d2, %d15, 1
	xor	%d15, %d15, 1
	st.b	[%a2] 9, %d15
	.loc 1 227 0
	ld.hu	%d15, [%a15] 84
	ld.a	%a15, [%a15] 80
	ld.w	%d2, [%a15]0
	extr.u	%d15, %d2, %d15, 1
	xor	%d15, %d15, 1
	st.b	[%a2] 10, %d15
	.loc 1 228 0
	ret
.LFE204:
	.size	HsfbApp_Read1ms, .-HsfbApp_Read1ms
	.align 3
	.global	HsfbApp_Write1ms
	.type	HsfbApp_Write1ms, @function
HsfbApp_Write1ms:
.LFB205:
	.loc 1 239 0
	.loc 1 240 0
	movh.a	%a15, hi:SafetyStatus1ms
	lea	%a15, [%a15] lo:SafetyStatus1ms
	ld.hu	%d4, [%a15] 26
	movh.a	%a15, hi:StateStatus
	lea	%a15, [%a15] lo:StateStatus
	ld.bu	%d5, [%a15] 6
	eq	%d4, %d4, 0
	j	HsfbApp_ErrReset
.LFE205:
	.size	HsfbApp_Write1ms, .-HsfbApp_Write1ms
	.section .code_ram
	.align 3
	.global	HsfbApp_Call15us
	.type	HsfbApp_Call15us, @function
HsfbApp_Call15us:
.LFB206:
	.loc 1 254 0
	.loc 1 255 0
	call	HsfbApp_Read15us
	.loc 1 256 0
	movh.a	%a15, hi:MeasStatus15us
	lea	%a15, [%a15] lo:MeasStatus15us
	movh.a	%a4, hi:AdcStatus15us
	lea	%a4, [%a4] lo:AdcStatus15us
	mov.aa	%a5, %a15
	call	HsfbMeas_Call15us
	.loc 1 257 0
	movh.a	%a5, hi:PwmStatus15us
	movh.a	%a6, hi:HsfbApp_Rx10ms
	movh.a	%a7, hi:CtrlStatus15us
	mov.aa	%a4, %a15
	lea	%a5, [%a5] lo:PwmStatus15us
	lea	%a6, [%a6] lo:HsfbApp_Rx10ms
	lea	%a7, [%a7] lo:CtrlStatus15us
	j	HsfbCtrl_Call15us
.LFE206:
	.size	HsfbApp_Call15us, .-HsfbApp_Call15us
	.align 3
	.global	HsfbApp_Call15us1
	.type	HsfbApp_Call15us1, @function
HsfbApp_Call15us1:
.LFB207:
	.loc 1 270 0
	.loc 1 271 0
	movh.a	%a4, hi:CtrlStatus15us
	movh.a	%a5, hi:MeasStatus100us
	movh.a	%a6, hi:PwmStatus15us
	lea	%a4, [%a4] lo:CtrlStatus15us
	lea	%a5, [%a5] lo:MeasStatus100us
	lea	%a6, [%a6] lo:PwmStatus15us
	j	HsfbPwm_Call15us
.LFE207:
	.size	HsfbApp_Call15us1, .-HsfbApp_Call15us1
	.align 3
	.global	HsfbApp_Call100us
	.type	HsfbApp_Call100us, @function
HsfbApp_Call100us:
.LFB208:
	.loc 1 283 0
	sub.a	%SP, 8
.LCFI2:
	.loc 1 284 0
	call	HsfbApp_Read100us
	.loc 1 285 0
	movh.a	%a15, hi:MeasStatus100us
	lea	%a15, [%a15] lo:MeasStatus100us
	movh.a	%a4, hi:AdcStatus100us
	lea	%a4, [%a4] lo:AdcStatus100us
	mov.aa	%a5, %a15
	.loc 1 286 0
	movh	%d15, hi:HsfbApp_Rx10ms
	movh	%d8, hi:CtrlStatus100us
	.loc 1 285 0
	call	HsfbMeas_Call100us
	.loc 1 286 0
	addi	%d15, %d15, lo:HsfbApp_Rx10ms
	addi	%d8, %d8, lo:CtrlStatus100us
	movh.a	%a14, hi:PwmStatus15us
	lea	%a14, [%a14] lo:PwmStatus15us
	mov.a	%a6, %d15
	mov.a	%a7, %d8
	mov.aa	%a4, %a15
	mov.aa	%a5, %a14
	call	HsfbCtrl_Call100us
	.loc 1 288 0
	movh.a	%a13, hi:StateStatus
	lea	%a13, [%a13] lo:StateStatus
	mov.a	%a5, %d8
	mov.a	%a7, %d15
	movh.a	%a12, hi:SafetyStatus100us
	lea	%a12, [%a12] lo:SafetyStatus100us
	mov.aa	%a4, %a15
	mov.aa	%a6, %a13
	st.a	[%SP]0, %a12
	call	HsfbPwm_Call100us
	.loc 1 290 0
	mov.aa	%a4, %a15
	mov.aa	%a5, %a14
	mov.aa	%a6, %a13
	mov.aa	%a7, %a12
	.loc 1 292 0
	lea	%SP, [%SP] 8
	.loc 1 290 0
	j	HsfbSafety_Call100us
.LFE208:
	.size	HsfbApp_Call100us, .-HsfbApp_Call100us
	.section .text.MPU_ASIL_CODE
	.align 3
	.global	HsfbApp_Call1ms
	.type	HsfbApp_Call1ms, @function
HsfbApp_Call1ms:
.LFB209:
	.loc 1 303 0
	sub.a	%SP, 16
.LCFI3:
	.loc 1 304 0
	call	HsfbApp_Read1ms
	.loc 1 305 0
	movh.a	%a12, hi:MeasStatus1ms
	lea	%a12, [%a12] lo:MeasStatus1ms
	movh.a	%a4, hi:AdcStatus1ms
	movh.a	%a5, hi:PwmStatus15us
	lea	%a4, [%a4] lo:AdcStatus1ms
	lea	%a5, [%a5] lo:PwmStatus15us
	mov.aa	%a6, %a12
	.loc 1 306 0
	movh	%d15, hi:StateStatus
	movh	%d8, hi:DiagStatus1ms
	.loc 1 305 0
	call	HsfbMeas_Call1ms
	.loc 1 306 0
	addi	%d15, %d15, lo:StateStatus
	addi	%d8, %d8, lo:DiagStatus1ms
	movh.a	%a14, hi:PortStatus1ms
	lea	%a14, [%a14] lo:PortStatus1ms
	movh.a	%a15, hi:SafetyStatus1ms
	movh.a	%a6, hi:CtrlStatus15us
	movh.a	%a7, hi:NtcStatus
	lea	%a15, [%a15] lo:SafetyStatus1ms
	mov.aa	%a4, %a14
	mov.aa	%a5, %a12
	lea	%a6, [%a6] lo:CtrlStatus15us
	lea	%a7, [%a7] lo:NtcStatus
	st.w	[%SP]0, %d15
	st.a	[%SP] 4, %a15
	st.w	[%SP] 8, %d8
	.loc 1 308 0
	movh.a	%a13, hi:HsfbApp_Rx10ms
	.loc 1 306 0
	call	HsfbDiag_Call1ms
	.loc 1 308 0
	lea	%a13, [%a13] lo:HsfbApp_Rx10ms
	mov.a	%a4, %d8
	mov.a	%a7, %d15
	mov.aa	%a5, %a15
	mov.aa	%a6, %a13
	call	HsfbState_Call1ms
	.loc 1 310 0
	mov.aa	%a4, %a12
	mov.aa	%a5, %a14
	mov.aa	%a6, %a13
	mov.aa	%a7, %a15
	call	HsfbSafety_Call1ms
	.loc 1 313 0
	lea	%SP, [%SP] 16
	.loc 1 312 0
	j	HsfbApp_Write1ms
.LFE209:
	.size	HsfbApp_Call1ms, .-HsfbApp_Call1ms
	.align 3
	.global	HsfbApp_Call10ms
	.type	HsfbApp_Call10ms, @function
HsfbApp_Call10ms:
.LFB210:
	.loc 1 324 0
	.loc 1 325 0
	movh.a	%a4, hi:HsfbApp_Rx10ms
	lea	%a4, [%a4] lo:HsfbApp_Rx10ms
	call	HsfbApp_GetRx10ms
	.loc 1 326 0
	movh.a	%a15, hi:NtcStatus
	lea	%a15, [%a15] lo:NtcStatus
	movh.a	%a4, hi:AdcStatus1ms
	mov.aa	%a5, %a15
	lea	%a4, [%a4] lo:AdcStatus1ms
	call	HsfbNtc_Call10ms
	.loc 1 327 0
	movh.a	%a4, hi:HsfbApp_Tx10ms
	lea	%a4, [%a4] lo:HsfbApp_Tx10ms
	movh.a	%a2, hi:Isr_AppStatus
	lea	%a2, [%a2] lo:Isr_AppStatus
	mov.aa	%a3, %a4
		# #chunks=4, chunksize=2, remains=0
	lea	%a5, 4-1
	0:
	ld.h	%d15, [%a2+]2
	st.h	[%a3+]2, %d15
	loop	%a5, 0b
	.loc 1 328 0
	movh.a	%a3, hi:PortStatus1ms
	lea	%a2, [%a4] 8
	lea	%a3, [%a3] lo:PortStatus1ms
		# #chunks=1, chunksize=8, remains=4
	ld.d	%e2, [%a3+]8
	st.d	[%a2+]8, %e2
	ld.w	%d2, [%a3+]4
	st.w	[%a2+]4, %d2
	.loc 1 329 0
	movh.a	%a3, hi:MeasStatus1ms
	lea	%a2, [%a4] 20
	lea	%a3, [%a3] lo:MeasStatus1ms
		# #chunks=13, chunksize=8, remains=0
	lea	%a5, 13-1
	0:
	ld.d	%e2, [%a3+]8
	st.d	[%a2+]8, %e2
	loop	%a5, 0b
	.loc 1 330 0
	movh.a	%a3, hi:DiagStatus1ms
	lea	%a2, [%a4] 124
	lea	%a3, [%a3] lo:DiagStatus1ms
		# #chunks=2, chunksize=8, remains=0
	ld.d	%e2, [%a3+]8
	st.d	[%a2+]8, %e2
	ld.d	%e2, [%a3+]8
	st.d	[%a2+]8, %e2
	.loc 1 331 0
	movh.a	%a3, hi:StateStatus
	lea	%a2, [%a4] 140
	lea	%a3, [%a3] lo:StateStatus
		# #chunks=1, chunksize=8, remains=4
	ld.d	%e2, [%a3+]8
	st.d	[%a2+]8, %e2
	ld.w	%d2, [%a3+]4
	st.w	[%a2+]4, %d2
	.loc 1 332 0
	lea	%a2, [%a4] 152
		# #chunks=6, chunksize=8, remains=0
	lea	%a3, 6-1
	0:
	ld.d	%e2, [%a15+]8
	st.d	[%a2+]8, %e2
	loop	%a3, 0b
	.loc 1 333 0
	movh.a	%a2, hi:SafetyStatus1ms
	lea	%a15, [%a4] 200
	lea	%a2, [%a2] lo:SafetyStatus1ms
		# #chunks=4, chunksize=8, remains=2
	lea	%a5, 4-1
	0:
	ld.d	%e2, [%a2+]8
	st.d	[%a15+]8, %e2
	loop	%a5, 0b
	ld.h	%d2, [%a2+]2
	st.h	[%a15+]2, %d2
	.loc 1 334 0
	j	HsfbApp_SetTx10ms
.LFE210:
	.size	HsfbApp_Call10ms, .-HsfbApp_Call10ms
	.section .text.MPU_QM_CODE,"ax",@progbits
	.align 3
	.global	HsfbApp_CallInit
	.type	HsfbApp_CallInit, @function
HsfbApp_CallInit:
.LFB211:
	.loc 1 346 0
	.loc 1 347 0
	call	HsfbMeas_CallInit
	.loc 1 348 0
	call	HsfbCtrl_CallInit
	.loc 1 349 0
	call	HsfbPwm_CallInit
	.loc 1 350 0
	call	HsfbDiag_CallInit
	.loc 1 351 0
	call	HsfbState_CalInit
	.loc 1 352 0
	call	HsfbNtc_CallInit
	.loc 1 353 0
	j	HsfbSafety_CallInit
.LFE211:
	.size	HsfbApp_CallInit, .-HsfbApp_CallInit
	.align 3
	.global	HsfbApp_initialize
	.type	HsfbApp_initialize, @function
HsfbApp_initialize:
.LFB212:
	.loc 1 365 0
	.loc 1 366 0
	call	HsfbPwm_Init
	.loc 1 367 0
	call	HsfbSafety_Init
	.loc 1 368 0
	j	HsfbState_p_Init
.LFE212:
	.size	HsfbApp_initialize, .-HsfbApp_initialize
	.align 3
	.global	HsfbApp_terminate
	.type	HsfbApp_terminate, @function
HsfbApp_terminate:
.LFB213:
	.loc 1 380 0
	.loc 1 382 0
	ret
.LFE213:
	.size	HsfbApp_terminate, .-HsfbApp_terminate
	.global	HsfbApp_DW
	.section .bss.MPU_ASIL_VAR_NOINIT,"aw",@nobits
	.align 3
	.type	HsfbApp_DW, @object
	.size	HsfbApp_DW, 46
HsfbApp_DW:
	.zero	46
	.global	CtrlStatus100us
	.align 3
	.type	CtrlStatus100us, @object
	.size	CtrlStatus100us, 4
CtrlStatus100us:
	.zero	4
	.global	SafetyStatus100us
	.align 3
	.type	SafetyStatus100us, @object
	.size	SafetyStatus100us, 4
SafetyStatus100us:
	.zero	4
	.global	PortStatus1ms
	.align 3
	.type	PortStatus1ms, @object
	.size	PortStatus1ms, 12
PortStatus1ms:
	.zero	12
	.global	CtrlStatus15us
	.align 3
	.type	CtrlStatus15us, @object
	.size	CtrlStatus15us, 16
CtrlStatus15us:
	.zero	16
	.global	DiagStatus1ms
	.align 3
	.type	DiagStatus1ms, @object
	.size	DiagStatus1ms, 16
DiagStatus1ms:
	.zero	16
	.global	PwmStatus15us
	.align 3
	.type	PwmStatus15us, @object
	.size	PwmStatus15us, 16
PwmStatus15us:
	.zero	16
	.global	StateStatus
	.align 3
	.type	StateStatus, @object
	.size	StateStatus, 12
StateStatus:
	.zero	12
	.global	HsfbApp_Rx10ms
	.align 3
	.type	HsfbApp_Rx10ms, @object
	.size	HsfbApp_Rx10ms, 26
HsfbApp_Rx10ms:
	.zero	26
	.global	MeasStatus15us
	.align 3
	.type	MeasStatus15us, @object
	.size	MeasStatus15us, 32
MeasStatus15us:
	.zero	32
	.global	AdcStatus100us
	.align 3
	.type	AdcStatus100us, @object
	.size	AdcStatus100us, 38
AdcStatus100us:
	.zero	38
	.global	AdcStatus15us
	.align 3
	.type	AdcStatus15us, @object
	.size	AdcStatus15us, 38
AdcStatus15us:
	.zero	38
	.global	AdcStatus1ms
	.align 3
	.type	AdcStatus1ms, @object
	.size	AdcStatus1ms, 38
AdcStatus1ms:
	.zero	38
	.global	SafetyStatus1ms
	.align 3
	.type	SafetyStatus1ms, @object
	.size	SafetyStatus1ms, 34
SafetyStatus1ms:
	.zero	34
	.global	MeasStatus100us
	.align 3
	.type	MeasStatus100us, @object
	.size	MeasStatus100us, 48
MeasStatus100us:
	.zero	48
	.global	NtcStatus
	.align 3
	.type	NtcStatus, @object
	.size	NtcStatus, 48
NtcStatus:
	.zero	48
	.global	MeasStatus1ms
	.align 3
	.type	MeasStatus1ms, @object
	.size	MeasStatus1ms, 104
MeasStatus1ms:
	.zero	104
	.global	HsfbApp_Tx10ms
	.align 3
	.type	HsfbApp_Tx10ms, @object
	.size	HsfbApp_Tx10ms, 236
HsfbApp_Tx10ms:
	.zero	236
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
	.uaword	.LFB202
	.uaword	.LFE202-.LFB202
	.byte	0x4
	.uaword	.LCFI0-.LFB202
	.byte	0xe
	.uleb128 0x18
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
	.uaword	.LFB204
	.uaword	.LFE204-.LFB204
	.byte	0x4
	.uaword	.LCFI1-.LFB204
	.byte	0xe
	.uleb128 0x38
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
	.byte	0x4
	.uaword	.LCFI2-.LFB208
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB209
	.uaword	.LFE209-.LFB209
	.byte	0x4
	.uaword	.LCFI3-.LFB209
	.byte	0xe
	.uleb128 0x10
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
.section .text,"ax",@progbits
.Letext0:
	.file 2 "../30_Bsw/Common/rtwtypes.h"
	.file 3 "../40_Appl/HsfbPwm/HsfbPwm_enum.h"
	.file 4 "../40_Appl/HsfbPwm/HsfbPwm_struct.h"
	.file 5 "../40_Appl/HsfbMeas/HsfbMeas_struct.h"
	.file 6 "../40_Appl/HsfbDiag/HsfbDiag_struct.h"
	.file 7 "../40_Appl/HsfbState/HsfbState_struct.h"
	.file 8 "../40_Appl/HsfbNtc/HsfbNtc_struct.h"
	.file 9 "../40_Appl/HsfbSafety/HsfbSafety_struct.h"
	.file 10 "../40_Appl/HsfbApp/HsfbApp_struct.h"
	.file 11 "../40_Appl/HsfbCtrl/HsfbCtrl_struct.h"
	.file 12 "../40_Appl/HsfbApp/HsfbApp.h"
	.file 13 "../30_Bsw/Common/TC21x/IfxCpu_regdef.h"
	.file 14 "../30_Bsw/Mcal/Port/Port_api.h"
	.file 15 "../30_Bsw/Mpu/mpu_api.h"
	.file 16 "../30_Bsw/Main/Main_api.h"
	.file 17 "../30_Bsw/Mcal/Adc/Adc_api.h"
	.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x17fc
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.6.3 build on 2013-05-17"
	.byte	0x1
	.string	"../40_Appl/HsfbApp/HsfbApp.c"
	.string	"D:\\\\SVN\\\\IPB-11Kw\\\\LvDc-C01R0P0-Ceramicheater\\\\20_Make"
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
	.uleb128 0x3
	.string	"int16_T"
	.byte	0x2
	.byte	0x52
	.uaword	0xc0
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x3
	.string	"uint16_T"
	.byte	0x2
	.byte	0x53
	.uaword	0xdd
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.string	"int32_T"
	.byte	0x2
	.byte	0x54
	.uaword	0x102
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.string	"uint32_T"
	.byte	0x2
	.byte	0x55
	.uaword	0x119
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x3
	.string	"real32_T"
	.byte	0x2
	.byte	0x56
	.uaword	0x139
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
	.uaword	0xa0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x3
	.string	"s16"
	.byte	0x2
	.byte	0x7e
	.uaword	0xb1
	.uleb128 0x3
	.string	"u16"
	.byte	0x2
	.byte	0x7f
	.uaword	0xcd
	.uleb128 0x3
	.string	"s32"
	.byte	0x2
	.byte	0x80
	.uaword	0xf3
	.uleb128 0x3
	.string	"u32"
	.byte	0x2
	.byte	0x81
	.uaword	0x109
	.uleb128 0x3
	.string	"f32"
	.byte	0x2
	.byte	0x82
	.uaword	0x129
	.uleb128 0x3
	.string	"bit"
	.byte	0x2
	.byte	0x84
	.uaword	0x14c
	.uleb128 0x4
	.byte	0x4
	.byte	0x3
	.byte	0xe
	.uaword	0x245
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
	.uaword	0x1bc
	.uleb128 0x6
	.byte	0x10
	.byte	0x4
	.byte	0x1b
	.uaword	0x2b0
	.uleb128 0x7
	.string	"PwmState"
	.byte	0x4
	.byte	0x1c
	.uaword	0x245
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0x4
	.byte	0x1d
	.uaword	0x185
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"TopoState"
	.byte	0x4
	.byte	0x1e
	.uaword	0x1a6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"IpriPwmGain"
	.byte	0x4
	.byte	0x1f
	.uaword	0x1a6
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x3
	.string	"HSFBPWM_S_STATUS15US"
	.byte	0x4
	.byte	0x20
	.uaword	0x25c
	.uleb128 0x6
	.byte	0x8
	.byte	0x5
	.byte	0xe
	.uaword	0x2f3
	.uleb128 0x7
	.string	"Data"
	.byte	0x5
	.byte	0xf
	.uaword	0x17a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"Real"
	.byte	0x5
	.byte	0x10
	.uaword	0x1a6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x3
	.string	"HSFBMEAS_S_STATUSDATA"
	.byte	0x5
	.byte	0x11
	.uaword	0x2cc
	.uleb128 0x6
	.byte	0x20
	.byte	0x5
	.byte	0x1e
	.uaword	0x354
	.uleb128 0x7
	.string	"Ipri"
	.byte	0x5
	.byte	0x1f
	.uaword	0x2f3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"Vin"
	.byte	0x5
	.byte	0x20
	.uaword	0x2f3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"Iout"
	.byte	0x5
	.byte	0x21
	.uaword	0x2f3
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"Vout"
	.byte	0x5
	.byte	0x22
	.uaword	0x2f3
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0
	.uleb128 0x3
	.string	"HSFBMEAS_S_STATUS15US"
	.byte	0x5
	.byte	0x23
	.uaword	0x310
	.uleb128 0x6
	.byte	0x30
	.byte	0x5
	.byte	0x25
	.uaword	0x3d1
	.uleb128 0x7
	.string	"Ipri"
	.byte	0x5
	.byte	0x26
	.uaword	0x2f3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"Vin"
	.byte	0x5
	.byte	0x27
	.uaword	0x2f3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"Iout"
	.byte	0x5
	.byte	0x28
	.uaword	0x2f3
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"Vout"
	.byte	0x5
	.byte	0x29
	.uaword	0x2f3
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.uaword	.LASF1
	.byte	0x5
	.byte	0x2a
	.uaword	0x2f3
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x8
	.uaword	.LASF2
	.byte	0x5
	.byte	0x2b
	.uaword	0x2f3
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.string	"HSFBMEAS_S_STATUS100US"
	.byte	0x5
	.byte	0x2c
	.uaword	0x371
	.uleb128 0x6
	.byte	0x68
	.byte	0x5
	.byte	0x2e
	.uaword	0x4bf
	.uleb128 0x7
	.string	"Ipri"
	.byte	0x5
	.byte	0x2f
	.uaword	0x2f3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"Vin"
	.byte	0x5
	.byte	0x30
	.uaword	0x2f3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"Iout"
	.byte	0x5
	.byte	0x31
	.uaword	0x2f3
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"Vout"
	.byte	0x5
	.byte	0x32
	.uaword	0x2f3
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.uaword	.LASF1
	.byte	0x5
	.byte	0x33
	.uaword	0x2f3
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x8
	.uaword	.LASF2
	.byte	0x5
	.byte	0x34
	.uaword	0x2f3
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x7
	.string	"Vaux"
	.byte	0x5
	.byte	0x35
	.uaword	0x2f3
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x7
	.string	"Vkl30"
	.byte	0x5
	.byte	0x36
	.uaword	0x2f3
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x7
	.string	"Vkl30C"
	.byte	0x5
	.byte	0x37
	.uaword	0x2f3
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x7
	.string	"Vcomp"
	.byte	0x5
	.byte	0x38
	.uaword	0x2f3
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x8
	.uaword	.LASF3
	.byte	0x5
	.byte	0x39
	.uaword	0x2f3
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x7
	.string	"Vhw16V"
	.byte	0x5
	.byte	0x3a
	.uaword	0x2f3
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x7
	.string	"Vhw19V"
	.byte	0x5
	.byte	0x3b
	.uaword	0x2f3
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.byte	0
	.uleb128 0x3
	.string	"HSFBMEAS_S_STATUS1MS"
	.byte	0x5
	.byte	0x3c
	.uaword	0x3ef
	.uleb128 0x6
	.byte	0x10
	.byte	0x6
	.byte	0x67
	.uaword	0x580
	.uleb128 0x7
	.string	"ErrCode0"
	.byte	0x6
	.byte	0x68
	.uaword	0x185
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"ErrCode1"
	.byte	0x6
	.byte	0x69
	.uaword	0x185
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x7
	.string	"ErrCode2"
	.byte	0x6
	.byte	0x6a
	.uaword	0x185
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"ErrCode3"
	.byte	0x6
	.byte	0x6b
	.uaword	0x185
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x7
	.string	"WarnCode0"
	.byte	0x6
	.byte	0x6c
	.uaword	0x185
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"WarnCode1"
	.byte	0x6
	.byte	0x6d
	.uaword	0x185
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x7
	.string	"WarnCode2"
	.byte	0x6
	.byte	0x6e
	.uaword	0x185
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"WarnCode3"
	.byte	0x6
	.byte	0x6f
	.uaword	0x185
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.byte	0
	.uleb128 0x3
	.string	"HSFBDIAG_S_STATUS1MS"
	.byte	0x6
	.byte	0x70
	.uaword	0x4db
	.uleb128 0x6
	.byte	0xc
	.byte	0x7
	.byte	0xe
	.uaword	0x63d
	.uleb128 0x7
	.string	"ClrWarning"
	.byte	0x7
	.byte	0xf
	.uaword	0x1b1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"Error"
	.byte	0x7
	.byte	0x10
	.uaword	0x1b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x7
	.string	"Init"
	.byte	0x7
	.byte	0x11
	.uaword	0x1b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x7
	.string	"HsfbEn"
	.byte	0x7
	.byte	0x12
	.uaword	0x1b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x7
	.string	"Reset"
	.byte	0x7
	.byte	0x13
	.uaword	0x1b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"DrvReset"
	.byte	0x7
	.byte	0x14
	.uaword	0x1b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0x7
	.string	"ErrReset"
	.byte	0x7
	.byte	0x15
	.uaword	0x1b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x7
	.string	"Opm"
	.byte	0x7
	.byte	0x16
	.uaword	0x185
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"Topo"
	.byte	0x7
	.byte	0x17
	.uaword	0x185
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.string	"HSFBSTATE_S_STATUS"
	.byte	0x7
	.byte	0x18
	.uaword	0x59c
	.uleb128 0x6
	.byte	0x8
	.byte	0x8
	.byte	0xe
	.uaword	0x67e
	.uleb128 0x7
	.string	"Temp"
	.byte	0x8
	.byte	0xf
	.uaword	0x17a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"Rntc"
	.byte	0x8
	.byte	0x10
	.uaword	0x190
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x3
	.string	"HSFBNTC_S_NTCSTATUS"
	.byte	0x8
	.byte	0x11
	.uaword	0x657
	.uleb128 0x6
	.byte	0x30
	.byte	0x8
	.byte	0x1a
	.uaword	0x708
	.uleb128 0x7
	.string	"Pri"
	.byte	0x8
	.byte	0x1b
	.uaword	0x67e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"SrA"
	.byte	0x8
	.byte	0x1c
	.uaword	0x67e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"SrB"
	.byte	0x8
	.byte	0x1d
	.uaword	0x67e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"WaterIn"
	.byte	0x8
	.byte	0x1e
	.uaword	0x67e
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"WaterOut"
	.byte	0x8
	.byte	0x1f
	.uaword	0x67e
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.string	"WaterOutDiag"
	.byte	0x8
	.byte	0x20
	.uaword	0x67e
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.string	"HSFBNTC_S_STATUS"
	.byte	0x8
	.byte	0x21
	.uaword	0x699
	.uleb128 0x6
	.byte	0x18
	.byte	0x9
	.byte	0xe
	.uaword	0x918
	.uleb128 0x7
	.string	"DCDC01_SM1"
	.byte	0x9
	.byte	0xf
	.uaword	0x1b1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"DCDC01_SM2"
	.byte	0x9
	.byte	0x10
	.uaword	0x1b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x7
	.string	"DCDC01_SM3"
	.byte	0x9
	.byte	0x11
	.uaword	0x1b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x7
	.string	"DCDC01_SM4"
	.byte	0x9
	.byte	0x12
	.uaword	0x1b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x7
	.string	"DCDC01_LFD1"
	.byte	0x9
	.byte	0x13
	.uaword	0x1b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"DCDC01_LFD2"
	.byte	0x9
	.byte	0x14
	.uaword	0x1b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0x7
	.string	"DCDC01_LFD3"
	.byte	0x9
	.byte	0x15
	.uaword	0x1b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x7
	.string	"DCDC01_LFD4"
	.byte	0x9
	.byte	0x16
	.uaword	0x1b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0x7
	.string	"DCDC02_SM1"
	.byte	0x9
	.byte	0x17
	.uaword	0x1b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"DCDC02_SM2"
	.byte	0x9
	.byte	0x18
	.uaword	0x1b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0x7
	.string	"DCDC02_SM3"
	.byte	0x9
	.byte	0x19
	.uaword	0x1b1
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x7
	.string	"DCDC02_SM4"
	.byte	0x9
	.byte	0x1a
	.uaword	0x1b1
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0x7
	.string	"DCDC02_LFD1"
	.byte	0x9
	.byte	0x1b
	.uaword	0x1b1
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"DCDC02_LFD2"
	.byte	0x9
	.byte	0x1c
	.uaword	0x1b1
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0x7
	.string	"DCDC02_LFD3"
	.byte	0x9
	.byte	0x1d
	.uaword	0x1b1
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0x7
	.string	"DCDC02_LFD4"
	.byte	0x9
	.byte	0x1e
	.uaword	0x1b1
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.uleb128 0x7
	.string	"DCDC03_SM1"
	.byte	0x9
	.byte	0x1f
	.uaword	0x1b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"DCDC03_SM2"
	.byte	0x9
	.byte	0x20
	.uaword	0x1b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0x7
	.string	"DCDC03_LFD1"
	.byte	0x9
	.byte	0x21
	.uaword	0x1b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.uleb128 0x7
	.string	"DCDC05_SM1"
	.byte	0x9
	.byte	0x22
	.uaword	0x1b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x13
	.uleb128 0x7
	.string	"DCDC05_LFD1"
	.byte	0x9
	.byte	0x23
	.uaword	0x1b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"DCDC05_LFD2"
	.byte	0x9
	.byte	0x24
	.uaword	0x1b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x15
	.uleb128 0x7
	.string	"Batt02_LFD5"
	.byte	0x9
	.byte	0x25
	.uaword	0x1b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.string	"HSFBSAFETY_S_SAFETYSTATUS"
	.byte	0x9
	.byte	0x26
	.uaword	0x720
	.uleb128 0x6
	.byte	0xa
	.byte	0x9
	.byte	0x28
	.uaword	0x993
	.uleb128 0x7
	.string	"AutoDiagWait"
	.byte	0x9
	.byte	0x29
	.uaword	0x1b1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"AutoDiagFin"
	.byte	0x9
	.byte	0x2a
	.uaword	0x1b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x7
	.string	"EachRun"
	.byte	0x9
	.byte	0x2b
	.uaword	0x993
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x7
	.string	"EachFin"
	.byte	0x9
	.byte	0x2c
	.uaword	0x993
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.byte	0
	.uleb128 0x9
	.uaword	0x1b1
	.uaword	0x9a3
	.uleb128 0xa
	.uaword	0x15d
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.string	"HSFBSAFETY_S_AUTODIAGSTATUS"
	.byte	0x9
	.byte	0x2d
	.uaword	0x939
	.uleb128 0x6
	.byte	0x22
	.byte	0x9
	.byte	0x2f
	.uaword	0x9f6
	.uleb128 0x8
	.uaword	.LASF4
	.byte	0x9
	.byte	0x30
	.uaword	0x918
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"AutoDiagStatus"
	.byte	0x9
	.byte	0x31
	.uaword	0x9a3
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0
	.uleb128 0x3
	.string	"HSFBSAFETY_S_STATUS1MS"
	.byte	0x9
	.byte	0x32
	.uaword	0x9c6
	.uleb128 0x6
	.byte	0x4
	.byte	0x9
	.byte	0x34
	.uaword	0xa4e
	.uleb128 0x7
	.string	"PriEn"
	.byte	0x9
	.byte	0x35
	.uaword	0x1b1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"SrEn"
	.byte	0x9
	.byte	0x36
	.uaword	0x1b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x7
	.string	"ClampEn"
	.byte	0x9
	.byte	0x37
	.uaword	0x1b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x3
	.string	"HSFBSAFETY_S_STATUS100US"
	.byte	0x9
	.byte	0x38
	.uaword	0xa14
	.uleb128 0x6
	.byte	0x8
	.byte	0xa
	.byte	0x13
	.uaword	0xab7
	.uleb128 0x7
	.string	"CpuTime"
	.byte	0xa
	.byte	0x14
	.uaword	0x185
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"IsrTime"
	.byte	0xa
	.byte	0x15
	.uaword	0x185
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x8
	.uaword	.LASF5
	.byte	0xa
	.byte	0x16
	.uaword	0x185
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0xa
	.byte	0x17
	.uaword	0x185
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.byte	0
	.uleb128 0x3
	.string	"HSFBAPP_S_STATUS"
	.byte	0xa
	.byte	0x18
	.uaword	0xa6e
	.uleb128 0x6
	.byte	0xc
	.byte	0xa
	.byte	0x1a
	.uaword	0xbb4
	.uleb128 0x7
	.string	"FastTurnOff"
	.byte	0xa
	.byte	0x1b
	.uaword	0x1b1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"PriDriveDis"
	.byte	0xa
	.byte	0x1c
	.uaword	0x1b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x7
	.string	"SrDriveDis"
	.byte	0xa
	.byte	0x1d
	.uaword	0x1b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x7
	.string	"IpriCbc"
	.byte	0xa
	.byte	0x1e
	.uaword	0x1b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x7
	.string	"IpriOcp"
	.byte	0xa
	.byte	0x1f
	.uaword	0x1b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"VinOvp"
	.byte	0xa
	.byte	0x20
	.uaword	0x1b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0x7
	.string	"IoutPOcp"
	.byte	0xa
	.byte	0x21
	.uaword	0x1b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x7
	.string	"IoutNOcp"
	.byte	0xa
	.byte	0x22
	.uaword	0x1b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0x7
	.string	"Vout16VOvp"
	.byte	0xa
	.byte	0x23
	.uaword	0x1b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"Vout19VOvp"
	.byte	0xa
	.byte	0x24
	.uaword	0x1b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0x7
	.string	"WaterOutOtp"
	.byte	0xa
	.byte	0x25
	.uaword	0x1b1
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.string	"HSFBAPP_S_PORTSTATUS"
	.byte	0xa
	.byte	0x26
	.uaword	0xacf
	.uleb128 0x6
	.byte	0x1a
	.byte	0xa
	.byte	0x28
	.uaword	0xcd2
	.uleb128 0x7
	.string	"Enable"
	.byte	0xa
	.byte	0x29
	.uaword	0x185
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"ClrFault"
	.byte	0xa
	.byte	0x2a
	.uaword	0x185
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x7
	.string	"CanTimeOut"
	.byte	0xa
	.byte	0x2b
	.uaword	0x185
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"IoutRef"
	.byte	0xa
	.byte	0x2c
	.uaword	0x185
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x7
	.string	"VoutRef"
	.byte	0xa
	.byte	0x2d
	.uaword	0x185
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"VinRef"
	.byte	0xa
	.byte	0x2e
	.uaword	0x185
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x8
	.uaword	.LASF5
	.byte	0xa
	.byte	0x2f
	.uaword	0x185
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0xa
	.byte	0x30
	.uaword	0x185
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0x7
	.string	"AutoDiagEn"
	.byte	0xa
	.byte	0x31
	.uaword	0x185
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"PeakCurrentEn"
	.byte	0xa
	.byte	0x32
	.uaword	0x185
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.uleb128 0x7
	.string	"TestPulseEn"
	.byte	0xa
	.byte	0x33
	.uaword	0x185
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"AutoSwitchDis"
	.byte	0xa
	.byte	0x34
	.uaword	0x185
	.byte	0x2
	.byte	0x23
	.uleb128 0x16
	.uleb128 0x7
	.string	"JitterDis"
	.byte	0xa
	.byte	0x35
	.uaword	0x185
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0
	.uleb128 0x3
	.string	"HSFBAPP_S_RX"
	.byte	0xa
	.byte	0x36
	.uaword	0xbd0
	.uleb128 0x6
	.byte	0x26
	.byte	0xa
	.byte	0x38
	.uaword	0xe2e
	.uleb128 0x7
	.string	"Ipri"
	.byte	0xa
	.byte	0x39
	.uaword	0x17a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"Vin"
	.byte	0xa
	.byte	0x3a
	.uaword	0x17a
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x7
	.string	"Iout"
	.byte	0xa
	.byte	0x3b
	.uaword	0x17a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"Vout"
	.byte	0xa
	.byte	0x3c
	.uaword	0x17a
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x8
	.uaword	.LASF1
	.byte	0xa
	.byte	0x3d
	.uaword	0x17a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.uaword	.LASF2
	.byte	0xa
	.byte	0x3e
	.uaword	0x17a
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x7
	.string	"Vaux"
	.byte	0xa
	.byte	0x3f
	.uaword	0x17a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"Vkl30"
	.byte	0xa
	.byte	0x40
	.uaword	0x17a
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0x7
	.string	"Vkl30C"
	.byte	0xa
	.byte	0x41
	.uaword	0x17a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"Vcomp"
	.byte	0xa
	.byte	0x42
	.uaword	0x17a
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.uleb128 0x8
	.uaword	.LASF3
	.byte	0xa
	.byte	0x43
	.uaword	0x17a
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"Vhw16V"
	.byte	0xa
	.byte	0x44
	.uaword	0x17a
	.byte	0x2
	.byte	0x23
	.uleb128 0x16
	.uleb128 0x7
	.string	"Vhw19V"
	.byte	0xa
	.byte	0x45
	.uaword	0x17a
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"NtcPri"
	.byte	0xa
	.byte	0x46
	.uaword	0x17a
	.byte	0x2
	.byte	0x23
	.uleb128 0x1a
	.uleb128 0x7
	.string	"NtcSrA"
	.byte	0xa
	.byte	0x47
	.uaword	0x17a
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"NtcSrB"
	.byte	0xa
	.byte	0x48
	.uaword	0x17a
	.byte	0x2
	.byte	0x23
	.uleb128 0x1e
	.uleb128 0x7
	.string	"NtcWaterIn"
	.byte	0xa
	.byte	0x49
	.uaword	0x17a
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.string	"NtcWaterOut"
	.byte	0xa
	.byte	0x4a
	.uaword	0x17a
	.byte	0x2
	.byte	0x23
	.uleb128 0x22
	.uleb128 0x7
	.string	"NtcWaterOutDiag"
	.byte	0xa
	.byte	0x4b
	.uaword	0x17a
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.byte	0
	.uleb128 0x3
	.string	"HSFBAPP_S_AI"
	.byte	0xa
	.byte	0x4c
	.uaword	0xce6
	.uleb128 0x6
	.byte	0xec
	.byte	0xa
	.byte	0x4e
	.uaword	0xecb
	.uleb128 0x7
	.string	"AppStatus"
	.byte	0xa
	.byte	0x4f
	.uaword	0xab7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"PortStatus"
	.byte	0xa
	.byte	0x50
	.uaword	0xbb4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"MeasStatus"
	.byte	0xa
	.byte	0x51
	.uaword	0x4bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"DiagStatus"
	.byte	0xa
	.byte	0x52
	.uaword	0x580
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x8
	.uaword	.LASF6
	.byte	0xa
	.byte	0x53
	.uaword	0x63d
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x8
	.uaword	.LASF7
	.byte	0xa
	.byte	0x54
	.uaword	0x708
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x8
	.uaword	.LASF4
	.byte	0xa
	.byte	0x55
	.uaword	0x9f6
	.byte	0x3
	.byte	0x23
	.uleb128 0xc8
	.byte	0
	.uleb128 0x3
	.string	"HSFBAPP_S_TX"
	.byte	0xa
	.byte	0x56
	.uaword	0xe42
	.uleb128 0x6
	.byte	0x4
	.byte	0xb
	.byte	0xe
	.uaword	0xf1c
	.uleb128 0x7
	.string	"PriDis"
	.byte	0xb
	.byte	0xf
	.uaword	0x1b1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"SrDis"
	.byte	0xb
	.byte	0x10
	.uaword	0x1b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x7
	.string	"ClampDis"
	.byte	0xb
	.byte	0x11
	.uaword	0x1b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x3
	.string	"HSFBCTRL_S_ENDIS"
	.byte	0xb
	.byte	0x12
	.uaword	0xedf
	.uleb128 0x6
	.byte	0x8
	.byte	0xb
	.byte	0x14
	.uaword	0xff8
	.uleb128 0x7
	.string	"BuckVoltage"
	.byte	0xb
	.byte	0x15
	.uaword	0x1b1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"BuckTopology"
	.byte	0xb
	.byte	0x16
	.uaword	0x1b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x7
	.string	"BuckPowerLow"
	.byte	0xb
	.byte	0x17
	.uaword	0x1b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x7
	.string	"BuckVinShort"
	.byte	0xb
	.byte	0x18
	.uaword	0x1b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x7
	.string	"BoostRampFin"
	.byte	0xb
	.byte	0x19
	.uaword	0x1b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"BoostVoutLimit"
	.byte	0xb
	.byte	0x1a
	.uaword	0x1b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0x7
	.string	"BoostVinShort"
	.byte	0xb
	.byte	0x1b
	.uaword	0x1b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x7
	.string	"BoostRampFail"
	.byte	0xb
	.byte	0x1c
	.uaword	0x1b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.byte	0
	.uleb128 0x3
	.string	"HSFBCTRL_S_ERROR"
	.byte	0xb
	.byte	0x1d
	.uaword	0xf34
	.uleb128 0x6
	.byte	0x4
	.byte	0xb
	.byte	0x31
	.uaword	0x102d
	.uleb128 0x7
	.string	"CtrlEnDis"
	.byte	0xb
	.byte	0x32
	.uaword	0xf1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"HSFBCTRL_S_STATUS100US"
	.byte	0xb
	.byte	0x33
	.uaword	0x1010
	.uleb128 0x6
	.byte	0x10
	.byte	0xb
	.byte	0x35
	.uaword	0x108f
	.uleb128 0x7
	.string	"BuckDuty"
	.byte	0xb
	.byte	0x36
	.uaword	0x1a6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"BoostDuty"
	.byte	0xb
	.byte	0x37
	.uaword	0x1a6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"CtrlError"
	.byte	0xb
	.byte	0x38
	.uaword	0xff8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x3
	.string	"HSFBCTRL_S_STATUS15US"
	.byte	0xb
	.byte	0x39
	.uaword	0x104b
	.uleb128 0x9
	.uaword	0x17a
	.uaword	0x10bc
	.uleb128 0xa
	.uaword	0x15d
	.byte	0x5
	.byte	0
	.uleb128 0x6
	.byte	0x2e
	.byte	0xc
	.byte	0x2f
	.uaword	0x110e
	.uleb128 0x7
	.string	"Delay_DSTATE"
	.byte	0xc
	.byte	0x30
	.uaword	0x110e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"Delay_DSTATE_l"
	.byte	0xc
	.byte	0x31
	.uaword	0x111e
	.byte	0x2
	.byte	0x23
	.uleb128 0x1a
	.uleb128 0x7
	.string	"Delay_DSTATE_p"
	.byte	0xc
	.byte	0x32
	.uaword	0x10ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x22
	.byte	0
	.uleb128 0x9
	.uaword	0x17a
	.uaword	0x111e
	.uleb128 0xa
	.uaword	0x15d
	.byte	0xc
	.byte	0
	.uleb128 0x9
	.uaword	0x17a
	.uaword	0x112e
	.uleb128 0xa
	.uaword	0x15d
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.string	"DW_HsfbApp_T"
	.byte	0xc
	.byte	0x33
	.uaword	0x10bc
	.uleb128 0xb
	.uaword	0x119
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.string	"long long int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.string	"long long unsigned int"
	.uleb128 0xc
	.string	"_Ifx_CPU_PSW_Bits"
	.byte	0x4
	.byte	0xd
	.uahalf	0x204
	.uaword	0x1281
	.uleb128 0xd
	.string	"CDC"
	.byte	0xd
	.uahalf	0x206
	.uaword	0x1142
	.byte	0x4
	.byte	0x7
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CDE"
	.byte	0xd
	.uahalf	0x207
	.uaword	0x1142
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"GW"
	.byte	0xd
	.uahalf	0x208
	.uaword	0x1142
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"IS"
	.byte	0xd
	.uahalf	0x209
	.uaword	0x1142
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"IO"
	.byte	0xd
	.uahalf	0x20a
	.uaword	0x1142
	.byte	0x4
	.byte	0x2
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PRS"
	.byte	0xd
	.uahalf	0x20b
	.uaword	0x1142
	.byte	0x4
	.byte	0x2
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"S"
	.byte	0xd
	.uahalf	0x20c
	.uaword	0x1142
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"reserved_15"
	.byte	0xd
	.uahalf	0x20d
	.uaword	0x1142
	.byte	0x4
	.byte	0xc
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"SAV"
	.byte	0xd
	.uahalf	0x20e
	.uaword	0x1142
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"AV"
	.byte	0xd
	.uahalf	0x20f
	.uaword	0x1142
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"SV"
	.byte	0xd
	.uahalf	0x210
	.uaword	0x1142
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"V"
	.byte	0xd
	.uahalf	0x211
	.uaword	0x1142
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"C"
	.byte	0xd
	.uahalf	0x212
	.uaword	0x1142
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xe
	.string	"Ifx_CPU_PSW_Bits"
	.byte	0xd
	.uahalf	0x213
	.uaword	0x117e
	.uleb128 0xf
	.byte	0x4
	.byte	0xd
	.uahalf	0x467
	.uaword	0x12c2
	.uleb128 0x10
	.string	"U"
	.byte	0xd
	.uahalf	0x469
	.uaword	0x119
	.uleb128 0x10
	.string	"I"
	.byte	0xd
	.uahalf	0x46a
	.uaword	0x102
	.uleb128 0x10
	.string	"B"
	.byte	0xd
	.uahalf	0x46b
	.uaword	0x1281
	.byte	0
	.uleb128 0xe
	.string	"Ifx_CPU_PSW"
	.byte	0xd
	.uahalf	0x46c
	.uaword	0x129a
	.uleb128 0x11
	.uaword	.LASF8
	.byte	0x8
	.byte	0xe
	.byte	0x7c
	.uaword	0x1300
	.uleb128 0x7
	.string	"Port"
	.byte	0xe
	.byte	0x7d
	.uaword	0x1300
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"Pin"
	.byte	0xe
	.byte	0x7e
	.uaword	0x185
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x12
	.byte	0x4
	.uaword	0x19b
	.uleb128 0x13
	.uaword	.LASF8
	.byte	0xe
	.byte	0x7f
	.uaword	0x12d6
	.uleb128 0x14
	.byte	0x1
	.string	"HsfbApp_Read100us"
	.byte	0x1
	.byte	0x3b
	.byte	0x1
	.uaword	.LFB202
	.uaword	.LFE202
	.uaword	.LLST0
	.uaword	0x137b
	.uleb128 0x15
	.string	"adc100us"
	.byte	0x1
	.byte	0x3e
	.uaword	0x10ac
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x16
	.uaword	.LASF9
	.byte	0x1
	.byte	0x3f
	.uaword	0x10ac
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x17
	.string	"i"
	.byte	0x1
	.byte	0x40
	.uaword	0x190
	.uaword	.LLST1
	.uleb128 0x17
	.string	"Switch_l"
	.byte	0x1
	.byte	0x41
	.uaword	0x17a
	.uaword	.LLST2
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.string	"HsfbApp_Read15us"
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.uaword	.LFB203
	.uaword	.LFE203
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x13c3
	.uleb128 0x17
	.string	"adc15us"
	.byte	0x1
	.byte	0x71
	.uaword	0x111e
	.uaword	.LLST3
	.uleb128 0x19
	.uaword	.LASF9
	.byte	0x1
	.byte	0x72
	.uaword	0x17a
	.uaword	.LLST4
	.byte	0
	.uleb128 0x14
	.byte	0x1
	.string	"HsfbApp_Read1ms"
	.byte	0x1
	.byte	0xb0
	.byte	0x1
	.uaword	.LFB204
	.uaword	.LFE204
	.uaword	.LLST5
	.uaword	0x1429
	.uleb128 0x15
	.string	"adc1ms"
	.byte	0x1
	.byte	0xb3
	.uaword	0x110e
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x16
	.uaword	.LASF9
	.byte	0x1
	.byte	0xb4
	.uaword	0x110e
	.byte	0x2
	.byte	0x91
	.sleb128 -26
	.uleb128 0x17
	.string	"i"
	.byte	0x1
	.byte	0xb5
	.uaword	0x190
	.uaword	.LLST6
	.uleb128 0x17
	.string	"Switch_j"
	.byte	0x1
	.byte	0xb6
	.uaword	0x17a
	.uaword	.LLST7
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.string	"HsfbApp_Write1ms"
	.byte	0x1
	.byte	0xee
	.byte	0x1
	.uaword	.LFB205
	.uaword	.LFE205
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.string	"HsfbApp_Call15us"
	.byte	0x1
	.byte	0xfd
	.byte	0x1
	.uaword	.LFB206
	.uaword	.LFE206
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0x1b
	.byte	0x1
	.string	"HsfbApp_Call15us1"
	.byte	0x1
	.uahalf	0x10d
	.byte	0x1
	.uaword	.LFB207
	.uaword	.LFE207
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0x1c
	.byte	0x1
	.string	"HsfbApp_Call100us"
	.byte	0x1
	.uahalf	0x11a
	.byte	0x1
	.uaword	.LFB208
	.uaword	.LFE208
	.uaword	.LLST8
	.uleb128 0x1c
	.byte	0x1
	.string	"HsfbApp_Call1ms"
	.byte	0x1
	.uahalf	0x12e
	.byte	0x1
	.uaword	.LFB209
	.uaword	.LFE209
	.uaword	.LLST9
	.uleb128 0x1b
	.byte	0x1
	.string	"HsfbApp_Call10ms"
	.byte	0x1
	.uahalf	0x143
	.byte	0x1
	.uaword	.LFB210
	.uaword	.LFE210
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0x1b
	.byte	0x1
	.string	"HsfbApp_CallInit"
	.byte	0x1
	.uahalf	0x159
	.byte	0x1
	.uaword	.LFB211
	.uaword	.LFE211
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0x1b
	.byte	0x1
	.string	"HsfbApp_initialize"
	.byte	0x1
	.uahalf	0x16c
	.byte	0x1
	.uaword	.LFB212
	.uaword	.LFE212
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0x1b
	.byte	0x1
	.string	"HsfbApp_terminate"
	.byte	0x1
	.uahalf	0x17b
	.byte	0x1
	.uaword	.LFB213
	.uaword	.LFE213
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0x1d
	.string	"HsfbApp_DW"
	.byte	0x1
	.byte	0x2d
	.uaword	0x112e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	HsfbApp_DW
	.uleb128 0x1d
	.string	"HsfbApp_Tx10ms"
	.byte	0x1
	.byte	0x16
	.uaword	0xecb
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	HsfbApp_Tx10ms
	.uleb128 0x1d
	.string	"MeasStatus1ms"
	.byte	0x1
	.byte	0x17
	.uaword	0x4bf
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MeasStatus1ms
	.uleb128 0x1e
	.uaword	.LASF7
	.byte	0x1
	.byte	0x18
	.uaword	0x708
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	NtcStatus
	.uleb128 0x1d
	.string	"MeasStatus100us"
	.byte	0x1
	.byte	0x19
	.uaword	0x3d1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MeasStatus100us
	.uleb128 0x1d
	.string	"SafetyStatus1ms"
	.byte	0x1
	.byte	0x1a
	.uaword	0x9f6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	SafetyStatus1ms
	.uleb128 0x1d
	.string	"AdcStatus1ms"
	.byte	0x1
	.byte	0x1b
	.uaword	0xe2e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	AdcStatus1ms
	.uleb128 0x1d
	.string	"AdcStatus15us"
	.byte	0x1
	.byte	0x1c
	.uaword	0xe2e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	AdcStatus15us
	.uleb128 0x1d
	.string	"AdcStatus100us"
	.byte	0x1
	.byte	0x1d
	.uaword	0xe2e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	AdcStatus100us
	.uleb128 0x1d
	.string	"MeasStatus15us"
	.byte	0x1
	.byte	0x1e
	.uaword	0x354
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MeasStatus15us
	.uleb128 0x1d
	.string	"HsfbApp_Rx10ms"
	.byte	0x1
	.byte	0x1f
	.uaword	0xcd2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	HsfbApp_Rx10ms
	.uleb128 0x1e
	.uaword	.LASF6
	.byte	0x1
	.byte	0x20
	.uaword	0x63d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	StateStatus
	.uleb128 0x1d
	.string	"PwmStatus15us"
	.byte	0x1
	.byte	0x21
	.uaword	0x2b0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	PwmStatus15us
	.uleb128 0x1d
	.string	"DiagStatus1ms"
	.byte	0x1
	.byte	0x22
	.uaword	0x580
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	DiagStatus1ms
	.uleb128 0x1d
	.string	"CtrlStatus15us"
	.byte	0x1
	.byte	0x23
	.uaword	0x108f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	CtrlStatus15us
	.uleb128 0x1d
	.string	"PortStatus1ms"
	.byte	0x1
	.byte	0x24
	.uaword	0xbb4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	PortStatus1ms
	.uleb128 0x1d
	.string	"SafetyStatus100us"
	.byte	0x1
	.byte	0x25
	.uaword	0xa4e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	SafetyStatus100us
	.uleb128 0x1d
	.string	"CtrlStatus100us"
	.byte	0x1
	.byte	0x26
	.uaword	0x102d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	CtrlStatus100us
	.uleb128 0x1f
	.string	"PSWReg_Rd0"
	.byte	0xf
	.byte	0x45
	.uaword	0x12c2
	.byte	0x1
	.byte	0x1
	.uleb128 0x1f
	.string	"PSWReg_Rd1"
	.byte	0xf
	.byte	0x46
	.uaword	0x12c2
	.byte	0x1
	.byte	0x1
	.uleb128 0x1f
	.string	"PSWReg_Rd2"
	.byte	0xf
	.byte	0x47
	.uaword	0x12c2
	.byte	0x1
	.byte	0x1
	.uleb128 0x1f
	.string	"PSWReg_Rd3"
	.byte	0xf
	.byte	0x48
	.uaword	0x12c2
	.byte	0x1
	.byte	0x1
	.uleb128 0x1f
	.string	"Isr_AppStatus"
	.byte	0x10
	.byte	0x8a
	.uaword	0xab7
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.uaword	0x1306
	.uaword	0x17c5
	.uleb128 0xa
	.uaword	0x15d
	.byte	0xa
	.byte	0
	.uleb128 0x1f
	.string	"PortInPt"
	.byte	0xe
	.byte	0x9f
	.uaword	0x17b5
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.uaword	0x17e7
	.uaword	0x17e7
	.uleb128 0xa
	.uaword	0x15d
	.byte	0x17
	.byte	0
	.uleb128 0x12
	.byte	0x4
	.uaword	0x185
	.uleb128 0x1f
	.string	"AdcResPt"
	.byte	0x11
	.byte	0x23
	.uaword	0x17d7
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
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0xa
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1c
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
	.uleb128 0x6
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LFB202
	.uaword	.LCFI0
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI0
	.uaword	.LFE202
	.uahalf	0x2
	.byte	0x8a
	.sleb128 24
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL2
	.uaword	.LVL3
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x5
	.byte	0x52
	.byte	0x93
	.uleb128 0x2
	.byte	0x93
	.uleb128 0x6
	.uaword	.LVL5
	.uaword	.LVL6
	.uahalf	0x8
	.byte	0x52
	.byte	0x93
	.uleb128 0x2
	.byte	0x55
	.byte	0x93
	.uleb128 0x2
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0xb
	.byte	0x52
	.byte	0x93
	.uleb128 0x2
	.byte	0x55
	.byte	0x93
	.uleb128 0x2
	.byte	0x54
	.byte	0x93
	.uleb128 0x2
	.byte	0x93
	.uleb128 0x2
	.uaword	.LVL7
	.uaword	.LVL8
	.uahalf	0xc
	.byte	0x52
	.byte	0x93
	.uleb128 0x2
	.byte	0x55
	.byte	0x93
	.uleb128 0x2
	.byte	0x54
	.byte	0x93
	.uleb128 0x2
	.byte	0x53
	.byte	0x93
	.uleb128 0x2
	.uaword	.LVL8
	.uaword	.LVL12
	.uahalf	0xb
	.byte	0x93
	.uleb128 0x2
	.byte	0x55
	.byte	0x93
	.uleb128 0x2
	.byte	0x54
	.byte	0x93
	.uleb128 0x2
	.byte	0x53
	.byte	0x93
	.uleb128 0x2
	.uaword	.LVL12
	.uaword	.LVL15
	.uahalf	0x8
	.byte	0x93
	.uleb128 0x4
	.byte	0x54
	.byte	0x93
	.uleb128 0x2
	.byte	0x53
	.byte	0x93
	.uleb128 0x2
	.uaword	.LVL15
	.uaword	.LVL19
	.uahalf	0x5
	.byte	0x93
	.uleb128 0x6
	.byte	0x53
	.byte	0x93
	.uleb128 0x2
	.uaword	.LVL19
	.uaword	.LVL20
	.uahalf	0xc
	.byte	0x52
	.byte	0x93
	.uleb128 0x2
	.byte	0x55
	.byte	0x93
	.uleb128 0x2
	.byte	0x54
	.byte	0x93
	.uleb128 0x2
	.byte	0x53
	.byte	0x93
	.uleb128 0x2
	.uaword	.LVL20
	.uaword	.LFE203
	.uahalf	0xb
	.byte	0x93
	.uleb128 0x2
	.byte	0x55
	.byte	0x93
	.uleb128 0x2
	.byte	0x54
	.byte	0x93
	.uleb128 0x2
	.byte	0x53
	.byte	0x93
	.uleb128 0x2
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL9
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL11
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL14
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL17
	.uaword	.LVL18
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL20
	.uaword	.LFE203
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LFB204
	.uaword	.LCFI1
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI1
	.uaword	.LFE204
	.uahalf	0x2
	.byte	0x8a
	.sleb128 56
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL21
	.uaword	.LVL22
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL23
	.uaword	.LVL24
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL25
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LFB208
	.uaword	.LCFI2
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI2
	.uaword	.LFE208
	.uahalf	0x2
	.byte	0x8a
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LFB209
	.uaword	.LCFI3
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI3
	.uaword	.LFE209
	.uahalf	0x2
	.byte	0x8a
	.sleb128 16
	.uaword	0
	.uaword	0
	.section .debug_aranges,"",@progbits
	.uaword	0x74
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB202
	.uaword	.LFE202-.LFB202
	.uaword	.LFB203
	.uaword	.LFE203-.LFB203
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
	.uaword	0
	.uaword	0
	.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB202
	.uaword	.LFE202
	.uaword	.LFB203
	.uaword	.LFE203
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
	.uaword	0
	.uaword	0
	.section .debug_line,"",@progbits
.Ldebug_line0:
	.section .debug_str,"",@progbits
.LASF0:
	.string	"Topology"
.LASF4:
	.string	"SafetyStatus"
.LASF2:
	.string	"IproFet"
.LASF3:
	.string	"VrefDiag"
.LASF8:
	.string	"PORT_S_PT"
.LASF7:
	.string	"NtcStatus"
.LASF9:
	.string	"Switch"
.LASF5:
	.string	"Operation"
.LASF6:
	.string	"StateStatus"
.LASF1:
	.string	"VoutDiag"
	.extern	HsfbState_p_Init,STT_FUNC,0
	.extern	HsfbSafety_Init,STT_FUNC,0
	.extern	HsfbPwm_Init,STT_FUNC,0
	.extern	HsfbSafety_CallInit,STT_FUNC,0
	.extern	HsfbNtc_CallInit,STT_FUNC,0
	.extern	HsfbState_CalInit,STT_FUNC,0
	.extern	HsfbDiag_CallInit,STT_FUNC,0
	.extern	HsfbPwm_CallInit,STT_FUNC,0
	.extern	HsfbCtrl_CallInit,STT_FUNC,0
	.extern	HsfbMeas_CallInit,STT_FUNC,0
	.extern	HsfbApp_SetTx10ms,STT_FUNC,0
	.extern	Isr_AppStatus,STT_OBJECT,8
	.extern	HsfbNtc_Call10ms,STT_FUNC,0
	.extern	HsfbApp_GetRx10ms,STT_FUNC,0
	.extern	HsfbSafety_Call1ms,STT_FUNC,0
	.extern	HsfbState_Call1ms,STT_FUNC,0
	.extern	HsfbDiag_Call1ms,STT_FUNC,0
	.extern	HsfbMeas_Call1ms,STT_FUNC,0
	.extern	HsfbSafety_Call100us,STT_FUNC,0
	.extern	HsfbPwm_Call100us,STT_FUNC,0
	.extern	HsfbCtrl_Call100us,STT_FUNC,0
	.extern	HsfbMeas_Call100us,STT_FUNC,0
	.extern	HsfbPwm_Call15us,STT_FUNC,0
	.extern	HsfbCtrl_Call15us,STT_FUNC,0
	.extern	HsfbMeas_Call15us,STT_FUNC,0
	.extern	HsfbApp_ErrReset,STT_FUNC,0
	.extern	PortInPt,STT_OBJECT,88
	.extern	AdcResPt,STT_OBJECT,96
	.ident	"GCC: (HighTec Release v4.6.3.0) 4.6.3 build on 2013-05-17"
