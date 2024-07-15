	.file	"Port.c"
.section .text,"ax",@progbits
.Ltext0:
	.section .text.MPU_QM_CODE,"ax",@progbits
	.align 3
	.global	Port_Pin_IOCR_Cfg
	.type	Port_Pin_IOCR_Cfg, @function
Port_Pin_IOCR_Cfg:
.LFB204:
	.file 1 "../30_Bsw/Mcal/Port/Port.c"
	.loc 1 81 0
	.loc 1 83 0
	movh.a	%a15, hi:-268197872
	lea	%a15, [%a15] lo:-268197872
	ld.w	%d15, [%a15]0
	.loc 1 86 0
	mov	%d2, 17
	.loc 1 83 0
	andn	%d15, %d15, ~(-249)
	.loc 1 115 0
	mov	%d4, 21
	.loc 1 133 0
	movh.a	%a3, hi:-268189668
	.loc 1 83 0
	st.w	[%a15]0, %d15
	.loc 1 86 0
	movh.a	%a15, hi:-268197360
	lea	%a15, [%a15] lo:-268197360
	ld.w	%d15, [%a15]0
	.loc 1 133 0
	lea	%a3, [%a3] lo:-268189668
	.loc 1 86 0
	insert	%d15, %d15, %d2, 3, 5
	.loc 1 138 0
	movh.a	%a2, hi:-268189424
	lea	%a2, [%a2] lo:-268189424
	.loc 1 154 0
	movh.a	%a4, hi:-268189552
	.loc 1 86 0
	st.w	[%a15]0, %d15
	.loc 1 87 0
	ld.w	%d15, [%a15]0
	.loc 1 154 0
	lea	%a4, [%a4] lo:-268189552
	.loc 1 87 0
	insert	%d15, %d15, %d2, 11, 5
	.loc 1 155 0
	movh.a	%a5, hi:-268188784
	lea	%a5, [%a5] lo:-268188784
	.loc 1 87 0
	st.w	[%a15]0, %d15
	.loc 1 88 0
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, %d2, 19, 5
	st.w	[%a15]0, %d15
	.loc 1 89 0
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, %d2, 27, 5
	st.w	[%a15]0, %d15
	.loc 1 90 0
	movh.a	%a15, hi:-268197356
	lea	%a15, [%a15] lo:-268197356
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, %d2, 3, 5
	st.w	[%a15]0, %d15
	.loc 1 91 0
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, %d2, 11, 5
	st.w	[%a15]0, %d15
	.loc 1 92 0
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, %d2, 19, 5
	st.w	[%a15]0, %d15
	.loc 1 93 0
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, %d2, 27, 5
	st.w	[%a15]0, %d15
	.loc 1 94 0
	movh.a	%a15, hi:-268197352
	lea	%a15, [%a15] lo:-268197352
	ld.w	%d3, [%a15]0
	mov	%d15, 16
	insert	%d3, %d3, %d15, 3, 5
	st.w	[%a15]0, %d3
	.loc 1 99 0
	movh.a	%a15, hi:-268193520
	lea	%a15, [%a15] lo:-268193520
	ld.w	%d3, [%a15]0
	insert	%d3, %d3, 0, 19, 5
	st.w	[%a15]0, %d3
	.loc 1 100 0
	ld.w	%d3, [%a15]0
	insert	%d3, %d3, %d15, 27, 5
	st.w	[%a15]0, %d3
	.loc 1 101 0
	movh.a	%a15, hi:-268193516
	lea	%a15, [%a15] lo:-268193516
	ld.w	%d3, [%a15]0
	insert	%d3, %d3, 0, 19, 5
	st.w	[%a15]0, %d3
	.loc 1 102 0
	movh.a	%a15, hi:-268193512
	lea	%a15, [%a15] lo:-268193512
	ld.w	%d3, [%a15]0
	insert	%d3, %d3, %d15, 3, 5
	st.w	[%a15]0, %d3
	.loc 1 103 0
	ld.w	%d3, [%a15]0
	insert	%d3, %d3, 0, 11, 5
	st.w	[%a15]0, %d3
	.loc 1 104 0
	ld.w	%d3, [%a15]0
	insert	%d3, %d3, 0, 19, 5
	st.w	[%a15]0, %d3
	.loc 1 105 0
	ld.w	%d3, [%a15]0
	insert	%d3, %d3, 0, 27, 5
	st.w	[%a15]0, %d3
	.loc 1 106 0
	movh.a	%a15, hi:-268193508
	lea	%a15, [%a15] lo:-268193508
	ld.w	%d3, [%a15]0
	andn	%d3, %d3, ~(-249)
	st.w	[%a15]0, %d3
	.loc 1 109 0
	movh.a	%a15, hi:-268193008
	lea	%a15, [%a15] lo:-268193008
	ld.w	%d3, [%a15]0
	andn	%d3, %d3, ~(-249)
	st.w	[%a15]0, %d3
	.loc 1 110 0
	ld.w	%d3, [%a15]0
	insert	%d3, %d3, %d15, 11, 5
	st.w	[%a15]0, %d3
	.loc 1 111 0
	ld.w	%d3, [%a15]0
	insert	%d3, %d3, 0, 19, 5
	st.w	[%a15]0, %d3
	.loc 1 112 0
	ld.w	%d3, [%a15]0
	insert	%d3, %d3, %d15, 27, 5
	st.w	[%a15]0, %d3
	.loc 1 115 0
	movh.a	%a15, hi:-268192752
	lea	%a15, [%a15] lo:-268192752
	ld.w	%d3, [%a15]0
	insert	%d3, %d3, %d4, 3, 5
	st.w	[%a15]0, %d3
	.loc 1 116 0
	ld.w	%d3, [%a15]0
	insert	%d3, %d3, 0, 11, 5
	st.w	[%a15]0, %d3
	.loc 1 117 0
	movh.a	%a15, hi:-268192748
	lea	%a15, [%a15] lo:-268192748
	ld.w	%d3, [%a15]0
	insert	%d3, %d3, %d15, 3, 5
	st.w	[%a15]0, %d3
	.loc 1 118 0
	ld.w	%d3, [%a15]0
	insert	%d3, %d3, 0, 19, 5
	st.w	[%a15]0, %d3
	.loc 1 121 0
	movh.a	%a15, hi:-268192496
	lea	%a15, [%a15] lo:-268192496
	ld.w	%d3, [%a15]0
	insert	%d3, %d3, %d15, 3, 5
	st.w	[%a15]0, %d3
	.loc 1 122 0
	ld.w	%d3, [%a15]0
	insert	%d3, %d3, 0, 11, 5
	st.w	[%a15]0, %d3
	.loc 1 123 0
	ld.w	%d3, [%a15]0
	insert	%d3, %d3, %d4, 19, 5
	.loc 1 128 0
	mov	%d4, 19
	.loc 1 123 0
	st.w	[%a15]0, %d3
	.loc 1 124 0
	ld.w	%d3, [%a15]0
	insert	%d3, %d3, 0, 27, 5
	st.w	[%a15]0, %d3
	.loc 1 125 0
	movh.a	%a15, hi:-268192492
	lea	%a15, [%a15] lo:-268192492
	ld.w	%d3, [%a15]0
	insert	%d3, %d3, %d15, 11, 5
	st.w	[%a15]0, %d3
	.loc 1 128 0
	movh.a	%a15, hi:-268189672
	lea	%a15, [%a15] lo:-268189672
	ld.w	%d3, [%a15]0
	insert	%d3, %d3, %d4, 3, 5
	st.w	[%a15]0, %d3
	.loc 1 130 0
	ld.w	%d3, [%a15]0
	insert	%d3, %d3, %d2, 11, 5
	st.w	[%a15]0, %d3
	.loc 1 131 0
	ld.w	%d3, [%a15]0
	insert	%d3, %d3, %d2, 19, 5
	st.w	[%a15]0, %d3
	.loc 1 132 0
	ld.w	%d3, [%a15]0
	insert	%d3, %d3, %d4, 27, 5
	st.w	[%a15]0, %d3
	.loc 1 133 0
	ld.w	%d3, [%a3]0
	andn	%d3, %d3, ~(-249)
	st.w	[%a3]0, %d3
	.loc 1 134 0
	ld.w	%d3, [%a3]0
	insert	%d3, %d3, 0, 11, 5
	st.w	[%a3]0, %d3
	.loc 1 135 0
	ld.w	%d3, [%a3]0
	insert	%d3, %d3, %d4, 19, 5
	st.w	[%a3]0, %d3
	.loc 1 138 0
	ld.w	%d3, [%a2]0
	insert	%d3, %d3, %d15, 19, 5
	st.w	[%a2]0, %d3
	.loc 1 139 0
	ld.w	%d3, [%a2]0
	insert	%d3, %d3, %d15, 27, 5
	st.w	[%a2]0, %d3
	.loc 1 140 0
	movh.a	%a2, hi:-268189420
	lea	%a2, [%a2] lo:-268189420
	ld.w	%d3, [%a2]0
	andn	%d3, %d3, ~(-249)
	st.w	[%a2]0, %d3
	.loc 1 143 0
	movh.a	%a2, hi:-268188912
	lea	%a2, [%a2] lo:-268188912
	ld.w	%d3, [%a2]0
	insert	%d3, %d3, %d15, 11, 5
	st.w	[%a2]0, %d3
	.loc 1 146 0
	movh.a	%a2, hi:-268184812
	lea	%a2, [%a2] lo:-268184812
	ld.w	%d3, [%a2]0
	insert	%d3, %d3, 0, 11, 5
	st.w	[%a2]0, %d3
	.loc 1 147 0
	ld.w	%d3, [%a2]0
	insert	%d3, %d3, 0, 19, 5
	st.w	[%a2]0, %d3
	.loc 1 148 0
	ld.w	%d3, [%a2]0
	insert	%d3, %d3, 0, 27, 5
	st.w	[%a2]0, %d3
	.loc 1 149 0
	movh.a	%a2, hi:-268184808
	lea	%a2, [%a2] lo:-268184808
	ld.w	%d3, [%a2]0
	insert	%d3, %d3, %d15, 3, 5
	st.w	[%a2]0, %d3
	.loc 1 150 0
	ld.w	%d3, [%a2]0
	insert	%d3, %d3, 0, 11, 5
	st.w	[%a2]0, %d3
	.loc 1 151 0
	ld.w	%d3, [%a2]0
	insert	%d3, %d3, 0, 19, 5
	st.w	[%a2]0, %d3
	.loc 1 154 0
	ld.w	%d3, [%a4]0
	insert	%d3, %d3, 1, 9, 1
	st.w	[%a4]0, %d3
	.loc 1 155 0
	ld.w	%d3, [%a5]0
	insert	%d3, %d3, 1, 1, 1
	st.w	[%a5]0, %d3
	.loc 1 156 0
	movh.a	%a5, hi:Main_HwVer
	lea	%a5, [%a5] lo:Main_HwVer
	ld.w	%d3, [%a5] 12
	add	%d3, -1
	jge.u	%d3, 4, .L1
	.loc 1 158 0
	ld.w	%d3, [%a15]0
	insert	%d3, %d3, %d2, 11, 5
	st.w	[%a15]0, %d3
	.loc 1 159 0
	ld.w	%d2, [%a3]0
	.loc 1 163 0
	movh.a	%a15, hi:-268184688
	.loc 1 159 0
	insert	%d2, %d2, %d15, 11, 5
	.loc 1 163 0
	lea	%a15, [%a15] lo:-268184688
	.loc 1 159 0
	st.w	[%a3]0, %d2
	.loc 1 160 0
	ld.w	%d2, [%a2]0
	insert	%d2, %d2, %d15, 11, 5
	st.w	[%a2]0, %d2
	.loc 1 162 0
	ld.w	%d15, [%a4]0
	insert	%d15, %d15, 1, 13, 1
	st.w	[%a4]0, %d15
	.loc 1 163 0
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 1, 9, 1
	st.w	[%a15]0, %d15
.L1:
	ret
.LFE204:
	.size	Port_Pin_IOCR_Cfg, .-Port_Pin_IOCR_Cfg
	.align 3
	.global	Port_Cfg
	.type	Port_Cfg, @function
Port_Cfg:
.LFB203:
	.loc 1 68 0
	.loc 1 74 0
	movh	%d15, 8738
	.loc 1 70 0
	call	Port_Pin_IOCR_Cfg
	.loc 1 74 0
	addi	%d15, %d15, 8738
	.loc 1 73 0
	call	IfxScuWdt_getCpuWatchdogPassword
	.loc 1 74 0
	movh.a	%a15, hi:-268197312
	.loc 1 73 0
	mov	%d4, %d2
	.loc 1 74 0
	lea	%a15, [%a15] lo:-268197312
	.loc 1 73 0
	call	IfxScuWdt_clearCpuEndinit
	.loc 1 74 0
	st.w	[%a15]0, %d15
	.loc 1 76 0
	movh.a	%a15, hi:-268189628
	lea	%a15, [%a15] lo:-268189628
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 0, 8, 3
	st.w	[%a15]0, %d15
	.loc 1 77 0
	call	IfxScuWdt_getCpuWatchdogPassword
	mov	%d4, %d2
	j	IfxScuWdt_setCpuEndinit
.LFE203:
	.size	Port_Cfg, .-Port_Cfg
	.align 3
	.global	Port_Pt_Init
	.type	Port_Pt_Init, @function
Port_Pt_Init:
.LFB205:
	.loc 1 168 0
	.loc 1 170 0
	mov	%d2, 10
	.loc 1 169 0
	movh.a	%a2, hi:PortInPt
	lea	%a15, [%a2] lo:PortInPt
	.loc 1 170 0
	st.h	[%a15] 12, %d2
	.loc 1 171 0
	movh	%d2, 61444
	addi	%d2, %d2, -19420
	.loc 1 169 0
	movh	%d15, 61444
	addi	%d15, %d15, -19164
	.loc 1 171 0
	st.w	[%a15] 16, %d2
	mov	%d2, 6
	.loc 1 169 0
	st.w	[%a2] lo:PortInPt, %d15
	mov	%d15, 1
	.loc 1 171 0
	st.h	[%a15] 20, %d2
	.loc 1 174 0
	st.h	[%a15] 44, %d2
	.loc 1 175 0
	movh	%d2, 61444
	addi	%d2, %d2, -19676
	.loc 1 169 0
	st.h	[%a15] 4, %d15
	.loc 1 172 0
	movh	%d3, 61444
	.loc 1 170 0
	movh	%d15, 61444
	addi	%d15, %d15, -20188
	.loc 1 172 0
	addi	%d3, %d3, -24540
	.loc 1 175 0
	st.w	[%a15] 48, %d2
	.loc 1 176 0
	st.w	[%a15] 56, %d2
	.loc 1 177 0
	mov	%d2, 11
	.loc 1 172 0
	mov	%d4, 0
	.loc 1 170 0
	st.w	[%a15] 8, %d15
	.loc 1 172 0
	st.w	[%a15] 24, %d3
	.loc 1 173 0
	st.w	[%a15] 32, %d15
	mov	%d3, 2
	.loc 1 174 0
	st.w	[%a15] 40, %d15
	.loc 1 177 0
	st.w	[%a15] 64, %d15
	st.h	[%a15] 68, %d2
	.loc 1 178 0
	st.w	[%a15] 72, %d15
	mov	%d2, 12
	.loc 1 179 0
	st.w	[%a15] 80, %d15
	mov	%d15, 9
	.loc 1 172 0
	st.h	[%a15] 28, %d4
	.loc 1 173 0
	st.h	[%a15] 36, %d3
	.loc 1 175 0
	st.h	[%a15] 52, %d4
	.loc 1 176 0
	st.h	[%a15] 60, %d3
	.loc 1 178 0
	st.h	[%a15] 76, %d2
	.loc 1 179 0
	st.h	[%a15] 84, %d15
	.loc 1 180 0
	ret
.LFE205:
	.size	Port_Pt_Init, .-Port_Pt_Init
	.align 3
	.global	Port_Init
	.type	Port_Init, @function
Port_Init:
.LFB202:
	.loc 1 57 0
	.loc 1 60 0
	movh.a	%a15, hi:-268189552
	lea	%a15, [%a15] lo:-268189552
	.loc 1 58 0
	call	Port_Cfg
	.loc 1 59 0
	call	Port_Pt_Init
	.loc 1 60 0
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 1, 9, 1
	st.w	[%a15]0, %d15
	.loc 1 61 0
	movh.a	%a15, hi:-268192368
	lea	%a15, [%a15] lo:-268192368
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 1, 0, 1
	st.w	[%a15]0, %d15
	.loc 1 62 0
	movh.a	%a15, hi:-268192880
	lea	%a15, [%a15] lo:-268192880
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 1, 1, 1
	st.w	[%a15]0, %d15
	.loc 1 63 0
	movh.a	%a15, hi:-268192876
	lea	%a15, [%a15] lo:-268192876
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 1, 19, 1
	st.w	[%a15]0, %d15
	.loc 1 64 0
	mov	%d15, 1
	movh.a	%a15, hi:WdgEnable
	st.h	[%a15] lo:WdgEnable, %d15
	.loc 1 65 0
	ret
.LFE202:
	.size	Port_Init, .-Port_Init
	.section .text.MPU_ASIL_CODE,"ax",@progbits
	.align 3
	.global	Port_StartUp
	.type	Port_StartUp, @function
Port_StartUp:
.LFB206:
	.loc 1 187 0
	.loc 1 188 0
	movh.a	%a15, hi:-268189552
	lea	%a15, [%a15] lo:-268189552
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 1, 9, 1
	st.w	[%a15]0, %d15
	.loc 1 189 0
	movh.a	%a15, hi:-268192876
	lea	%a15, [%a15] lo:-268192876
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 1, 17, 1
	st.w	[%a15]0, %d15
	.loc 1 190 0
	movh.a	%a15, hi:-268192880
	lea	%a15, [%a15] lo:-268192880
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 1, 3, 1
	st.w	[%a15]0, %d15
	.loc 1 191 0
	ret
.LFE206:
	.size	Port_StartUp, .-Port_StartUp
	.align 3
	.global	Port_AutoDiag
	.type	Port_AutoDiag, @function
Port_AutoDiag:
.LFB207:
	.loc 1 194 0
	.loc 1 276 0
	ret
.LFE207:
	.size	Port_AutoDiag, .-Port_AutoDiag
	.align 3
	.global	KL30_AutoDiag
	.type	KL30_AutoDiag, @function
KL30_AutoDiag:
.LFB208:
	.loc 1 278 0
	.loc 1 279 0
	mov	%d15, 0
	movh.a	%a12, hi:KLDiagFlag
	.loc 1 280 0
	movh.a	%a15, hi:-268188780
	.loc 1 279 0
	st.h	[%a12] lo:KLDiagFlag, %d15
	.loc 1 280 0
	lea	%a15, [%a15] lo:-268188780
	ld.w	%d15, [%a15]0
	.loc 1 282 0
	mov	%d4, 10
	.loc 1 280 0
	insert	%d15, %d15, 1, 17, 1
	st.w	[%a15]0, %d15
	.loc 1 281 0
	movh.a	%a15, hi:-268184684
	lea	%a15, [%a15] lo:-268184684
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 1, 25, 1
	st.w	[%a15]0, %d15
	.loc 1 283 0
	movh.a	%a15, hi:AdcResPt
	.loc 1 282 0
	call	delay_ms_main
	.loc 1 283 0
	lea	%a15, [%a15] lo:AdcResPt
	ld.a	%a2, [%a15] 28
	ld.hu	%d15, [%a2]0
	ge.u	%d15, %d15, 101
	jnz	%d15, .L10
	.loc 1 283 0 is_stmt 0 discriminator 1
	ld.a	%a15, [%a15] 32
	ld.hu	%d15, [%a15]0
	lt.u	%d15, %d15, 101
	jnz	%d15, .L11
.L10:
	.loc 1 285 0 is_stmt 1
	mov	%d15, 1
	st.h	[%a12] lo:KLDiagFlag, %d15
.L11:
	.loc 1 287 0
	movh.a	%a15, hi:-268188784
	lea	%a15, [%a15] lo:-268188784
	ld.w	%d15, [%a15]0
	.loc 1 289 0
	mov	%d4, 10
	.loc 1 287 0
	insert	%d15, %d15, 1, 1, 1
	st.w	[%a15]0, %d15
	.loc 1 288 0
	movh.a	%a15, hi:-268184688
	lea	%a15, [%a15] lo:-268184688
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 1, 9, 1
	st.w	[%a15]0, %d15
	.loc 1 289 0
	j	delay_ms_main
.LFE208:
	.size	KL30_AutoDiag, .-KL30_AutoDiag
	.align 3
	.global	HsfbApp_ErrReset
	.type	HsfbApp_ErrReset, @function
HsfbApp_ErrReset:
.LFB209:
	.loc 1 292 0
.LVL0:
	.loc 1 294 0
	movh.a	%a15, hi:PortErrReset
	ld.hu	%d15, [%a15] lo:PortErrReset
	jnz	%d5, .L19
	.loc 1 298 0 discriminator 1
	jnz	%d15, .L20
.L14:
	.loc 1 302 0
	st.h	[%a15] lo:PortErrReset, %d5
	.loc 1 305 0
	jz	%d4, .L12
	movh.a	%a15, hi:Ovp16VResetCnt
	.loc 1 307 0
	jz	%d5, .L21
.L16:
	.loc 1 309 0
	movh.a	%a2, hi:-268192876
	lea	%a2, [%a2] lo:-268192876
	ld.w	%d15, [%a2]0
	insert	%d15, %d15, 1, 19, 1
	st.w	[%a2]0, %d15
	.loc 1 310 0
	ld.h	%d15, [%a15] lo:Ovp16VResetCnt
	add	%d15, 1
	extr.u	%d15, %d15, 0, 16
	st.h	[%a15] lo:Ovp16VResetCnt, %d15
	.loc 1 311 0
	lt.u	%d15, %d15, 401
	jnz	%d15, .L12
	.loc 1 313 0
	movh.a	%a15, hi:Ovp16VResetCnt
	st.h	[%a15] lo:Ovp16VResetCnt, %d15
	ret
.L21:
	.loc 1 307 0 discriminator 1
	ld.hu	%d15, [%a15] lo:Ovp16VResetCnt
	jnz	%d15, .L16
	.loc 1 318 0
	movh.a	%a15, hi:-268192880
	lea	%a15, [%a15] lo:-268192880
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 1, 3, 1
	st.w	[%a15]0, %d15
.L12:
	ret
.L19:
	.loc 1 294 0 discriminator 1
	jnz	%d15, .L14
	.loc 1 296 0
	movh.a	%a2, hi:-268192880
	lea	%a2, [%a2] lo:-268192880
	ld.w	%d15, [%a2]0
	insert	%d15, %d15, 1, 1, 1
	st.w	[%a2]0, %d15
	j	.L14
.L20:
	.loc 1 300 0
	movh.a	%a2, hi:-268192876
	lea	%a2, [%a2] lo:-268192876
	ld.w	%d15, [%a2]0
	insert	%d15, %d15, 1, 17, 1
	st.w	[%a2]0, %d15
	j	.L14
.LFE209:
	.size	HsfbApp_ErrReset, .-HsfbApp_ErrReset
	.align 3
	.global	HsfbSafety_SetClrAutoDiag
	.type	HsfbSafety_SetClrAutoDiag, @function
HsfbSafety_SetClrAutoDiag:
.LFB210:
	.loc 1 324 0
.LVL1:
	.loc 1 325 0
	jge.u	%d5, 5, .L22
	movh.a	%a15, hi:.L29
	lea	%a15, [%a15] lo:.L29
	addsc.a	%a15, %a15, %d5, 2
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
.L28:
	.loc 1 386 0
	movh.a	%a15, hi:PortDebug
	lea	%a15, [%a15] lo:PortDebug
	.loc 1 384 0
	jz	%d4, .L34
	.loc 1 386 0
	ld.h	%d15, [%a15] 16
	.loc 1 387 0
	mov	%d2, 16
	.loc 1 386 0
	add	%d15, 1
	st.h	[%a15] 16, %d15
	.loc 1 387 0
	movh.a	%a15, hi:-268193520
	lea	%a15, [%a15] lo:-268193520
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, %d2, 27, 5
	st.w	[%a15]0, %d15
	.loc 1 388 0
	movh.a	%a15, hi:-268192748
	lea	%a15, [%a15] lo:-268192748
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, %d2, 3, 5
	st.w	[%a15]0, %d15
.L35:
	.loc 1 396 0
	movh.a	%a15, hi:-268192880
	lea	%a15, [%a15] lo:-268192880
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 1, 3, 1
	st.w	[%a15]0, %d15
	.loc 1 397 0
	movh.a	%a15, hi:-268188784
	lea	%a15, [%a15] lo:-268188784
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 1, 1, 1
	st.w	[%a15]0, %d15
	.loc 1 398 0
	movh.a	%a15, hi:-268184688
	lea	%a15, [%a15] lo:-268184688
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 1, 9, 1
	st.w	[%a15]0, %d15
.L22:
	ret
.L27:
	.loc 1 372 0
	movh.a	%a15, hi:PortDebug
	lea	%a15, [%a15] lo:PortDebug
	.loc 1 370 0
	jz	%d4, .L33
	.loc 1 372 0
	ld.h	%d15, [%a15] 12
	add	%d15, 1
	st.h	[%a15] 12, %d15
	.loc 1 373 0
	movh.a	%a15, hi:-268188780
	lea	%a15, [%a15] lo:-268188780
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 1, 17, 1
	st.w	[%a15]0, %d15
	.loc 1 374 0
	movh.a	%a15, hi:-268184684
	lea	%a15, [%a15] lo:-268184684
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 1, 25, 1
	st.w	[%a15]0, %d15
	ret
.L25:
	.loc 1 344 0
	movh.a	%a15, hi:PortDebug
	lea	%a15, [%a15] lo:PortDebug
	.loc 1 342 0
	jz	%d4, .L31
	.loc 1 344 0
	ld.h	%d15, [%a15] 4
	add	%d15, 1
	st.h	[%a15] 4, %d15
	.loc 1 345 0
	movh.a	%a15, hi:-268192624
	lea	%a15, [%a15] lo:-268192624
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 1, 4, 1
	st.w	[%a15]0, %d15
	.loc 1 346 0
	movh.a	%a15, hi:-268193392
	lea	%a15, [%a15] lo:-268193392
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 1, 3, 1
.L36:
	st.w	[%a15]0, %d15
	.loc 1 347 0
	movh.a	%a15, hi:-268192876
	lea	%a15, [%a15] lo:-268192876
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 1, 19, 1
	st.w	[%a15]0, %d15
	ret
.L24:
	.loc 1 330 0
	movh.a	%a15, hi:PortDebug
	.loc 1 328 0
	jz	%d4, .L30
	.loc 1 330 0
	ld.h	%d15, [%a15] lo:PortDebug
	add	%d15, 1
	st.h	[%a15] lo:PortDebug, %d15
	.loc 1 331 0
	movh.a	%a15, hi:-268193392
	lea	%a15, [%a15] lo:-268193392
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 1, 3, 1
.L37:
	.loc 1 353 0
	st.w	[%a15]0, %d15
	.loc 1 354 0
	movh.a	%a15, hi:-268192880
	lea	%a15, [%a15] lo:-268192880
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 1, 3, 1
	st.w	[%a15]0, %d15
	ret
.L26:
	.loc 1 360 0
	movh.a	%a15, hi:PortDebug
	lea	%a15, [%a15] lo:PortDebug
	.loc 1 358 0
	jz	%d4, .L32
	.loc 1 360 0
	ld.h	%d15, [%a15] 8
	add	%d15, 1
	st.h	[%a15] 8, %d15
	.loc 1 361 0
	movh.a	%a15, hi:-268193392
	lea	%a15, [%a15] lo:-268193392
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 1, 8, 1
	st.w	[%a15]0, %d15
	ret
.L33:
	.loc 1 378 0
	ld.h	%d15, [%a15] 14
	add	%d15, 1
	st.h	[%a15] 14, %d15
	.loc 1 379 0
	movh.a	%a15, hi:-268188784
	lea	%a15, [%a15] lo:-268188784
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 1, 1, 1
	st.w	[%a15]0, %d15
	.loc 1 380 0
	movh.a	%a15, hi:-268184688
	lea	%a15, [%a15] lo:-268184688
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 1, 9, 1
	st.w	[%a15]0, %d15
	ret
.L34:
	.loc 1 392 0
	ld.h	%d15, [%a15] 18
	add	%d15, 1
	st.h	[%a15] 18, %d15
	.loc 1 393 0
	movh.a	%a15, hi:-268193520
	lea	%a15, [%a15] lo:-268193520
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 0, 27, 5
	st.w	[%a15]0, %d15
	.loc 1 394 0
	movh.a	%a15, hi:-268192748
	lea	%a15, [%a15] lo:-268192748
	ld.w	%d15, [%a15]0
	andn	%d15, %d15, ~(-249)
	st.w	[%a15]0, %d15
	j	.L35
.L30:
	.loc 1 336 0
	lea	%a15, [%a15] lo:PortDebug
	ld.h	%d15, [%a15] 2
	add	%d15, 1
	st.h	[%a15] 2, %d15
	.loc 1 337 0
	movh.a	%a15, hi:-268193388
	lea	%a15, [%a15] lo:-268193388
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 1, 19, 1
	j	.L36
.L31:
	.loc 1 351 0
	ld.h	%d15, [%a15] 6
	add	%d15, 1
	st.h	[%a15] 6, %d15
	.loc 1 352 0
	movh.a	%a15, hi:-268192620
	lea	%a15, [%a15] lo:-268192620
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 1, 20, 1
	st.w	[%a15]0, %d15
	.loc 1 353 0
	movh.a	%a15, hi:-268193388
	lea	%a15, [%a15] lo:-268193388
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 1, 19, 1
	j	.L37
.L32:
	.loc 1 365 0
	ld.h	%d15, [%a15] 10
	add	%d15, 1
	st.h	[%a15] 10, %d15
	.loc 1 366 0
	movh.a	%a15, hi:-268193388
	lea	%a15, [%a15] lo:-268193388
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 1, 24, 1
	st.w	[%a15]0, %d15
	ret
.LFE210:
	.size	HsfbSafety_SetClrAutoDiag, .-HsfbSafety_SetClrAutoDiag
	.align 3
	.global	SBC_Triger100us
	.type	SBC_Triger100us, @function
SBC_Triger100us:
.LFB211:
	.loc 1 405 0
	.loc 1 407 0
	movh.a	%a15, hi:WdgCnt
	ld.hu	%d15, [%a15] lo:WdgCnt
	lt.u	%d2, %d15, 70
	jnz	%d2, .L39
	.loc 1 409 0
	mov	%d15, 0
	st.h	[%a15] lo:WdgCnt, %d15
.L40:
	.loc 1 416 0
	movh.a	%a2, hi:WdgEnable
	ld.hu	%d15, [%a2] lo:WdgEnable
	jz	%d15, .L38
	.loc 1 418 0
	ld.hu	%d15, [%a15] lo:WdgCnt
	jz	%d15, .L43
	.loc 1 422 0
	ne	%d15, %d15, 35
	jz	%d15, .L44
.L38:
	ret
.L39:
	.loc 1 413 0
	add	%d15, 1
	st.h	[%a15] lo:WdgCnt, %d15
	j	.L40
.L43:
	.loc 1 420 0
	movh.a	%a15, hi:-268197232
	lea	%a15, [%a15] lo:-268197232
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 1, 8, 1
	st.w	[%a15]0, %d15
	ret
.L44:
	.loc 1 424 0
	movh.a	%a15, hi:-268197228
	lea	%a15, [%a15] lo:-268197228
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 1, 24, 1
	st.w	[%a15]0, %d15
	ret
.LFE211:
	.size	SBC_Triger100us, .-SBC_Triger100us
	.align 3
	.global	ORU_LatchTest1ms
	.type	ORU_LatchTest1ms, @function
ORU_LatchTest1ms:
.LFB212:
	.loc 1 430 0
	.loc 1 431 0
	movh.a	%a15, hi:-268193500
	lea	%a15, [%a15] lo:-268193500
	ld.w	%d15, [%a15]0
	jnz.t	%d15, 10, .L48
	.loc 1 437 0
	movh.a	%a15, hi:-268192364
	lea	%a15, [%a15] lo:-268192364
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 1, 21, 1
	st.w	[%a15]0, %d15
	ret
.L48:
	.loc 1 433 0
	movh.a	%a15, hi:-268192368
	lea	%a15, [%a15] lo:-268192368
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 1, 5, 1
	st.w	[%a15]0, %d15
	ret
.LFE212:
	.size	ORU_LatchTest1ms, .-ORU_LatchTest1ms
	.align 3
	.global	Port_OTP_AutoDiag10ms
	.type	Port_OTP_AutoDiag10ms, @function
Port_OTP_AutoDiag10ms:
.LFB213:
	.loc 1 442 0
	.loc 1 443 0
	movh.a	%a15, hi:PortOtpAutoDiagEn
	ld.hu	%d15, [%a15] lo:PortOtpAutoDiagEn
	movh.a	%a2, hi:PortOtpAutoDiagEnLast
	jz	%d15, .L50
	.loc 1 443 0 is_stmt 0 discriminator 1
	ld.hu	%d2, [%a2] lo:PortOtpAutoDiagEnLast
	jz	%d2, .L54
.L50:
	.loc 1 447 0 is_stmt 1
	movh.a	%a15, hi:-268193500
	lea	%a15, [%a15] lo:-268193500
	ld.w	%d2, [%a15]0
	jnz.t	%d2, 8, .L55
	.loc 1 456 0
	jnz	%d15, .L51
	.loc 1 458 0
	movh.a	%a15, hi:-268193388
	lea	%a15, [%a15] lo:-268193388
	ld.w	%d2, [%a15]0
	insert	%d2, %d2, 1, 24, 1
	st.w	[%a15]0, %d2
.L51:
	.loc 1 460 0
	st.h	[%a2] lo:PortOtpAutoDiagEnLast, %d15
	.loc 1 461 0
	ret
.L55:
	.loc 1 449 0
	movh.a	%a15, hi:PortAutoCnt
	ld.h	%d2, [%a15] lo:PortAutoCnt
	add	%d2, 1
	extr.u	%d2, %d2, 0, 16
	st.h	[%a15] lo:PortAutoCnt, %d2
	.loc 1 450 0
	lt.u	%d2, %d2, 30
	jnz	%d2, .L51
	.loc 1 452 0
	movh.a	%a3, hi:-268193388
	lea	%a3, [%a3] lo:-268193388
	ld.w	%d2, [%a3]0
	insert	%d2, %d2, 1, 24, 1
	st.w	[%a3]0, %d2
	.loc 1 453 0
	mov	%d2, 0
	.loc 1 460 0
	st.h	[%a2] lo:PortOtpAutoDiagEnLast, %d15
	.loc 1 453 0
	st.h	[%a15] lo:PortAutoCnt, %d2
	.loc 1 461 0
	ret
.L54:
	.loc 1 445 0
	movh.a	%a15, hi:-268193392
	lea	%a15, [%a15] lo:-268193392
	ld.w	%d2, [%a15]0
	insert	%d2, %d2, 1, 8, 1
	st.w	[%a15]0, %d2
	.loc 1 460 0
	st.h	[%a2] lo:PortOtpAutoDiagEnLast, %d15
	.loc 1 461 0
	ret
.LFE213:
	.size	Port_OTP_AutoDiag10ms, .-Port_OTP_AutoDiag10ms
	.align 3
	.global	Port_AuxPower_EnDis10ms
	.type	Port_AuxPower_EnDis10ms, @function
Port_AuxPower_EnDis10ms:
.LFB214:
	.loc 1 464 0
	.loc 1 465 0
	movh.a	%a15, hi:HsfbDiag_ErrCode2
	lea	%a15, [%a15] lo:HsfbDiag_ErrCode2
	ld.bu	%d15, [%a15] 15
	jeq	%d15, 1, .L57
	.loc 1 465 0 is_stmt 0 discriminator 1
	movh.a	%a15, hi:PortDisHSK
	ld.hu	%d15, [%a15] lo:PortDisHSK
	jz	%d15, .L58
	movh.a	%a15, hi:StateStatus
	lea	%a15, [%a15] lo:StateStatus
	ld.bu	%d15, [%a15] 3
	jz	%d15, .L57
.L58:
	.loc 1 471 0 is_stmt 1
	movh.a	%a15, hi:-268189292
	lea	%a15, [%a15] lo:-268189292
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 1, 18, 1
	st.w	[%a15]0, %d15
	ret
.L57:
	.loc 1 467 0
	movh.a	%a15, hi:-268189296
	lea	%a15, [%a15] lo:-268189296
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 1, 2, 1
	st.w	[%a15]0, %d15
	ret
.LFE214:
	.size	Port_AuxPower_EnDis10ms, .-Port_AuxPower_EnDis10ms
	.global	PortDisHSK
	.section .bss.MPU_ASIL_VAR_NOINIT,"aw",@nobits
	.align 3
	.type	PortDisHSK, @object
	.size	PortDisHSK, 2
PortDisHSK:
	.zero	2
	.global	PortAutoCnt
	.align 3
	.type	PortAutoCnt, @object
	.size	PortAutoCnt, 2
PortAutoCnt:
	.zero	2
	.global	PortOtpAutoDiagEnLast
	.align 3
	.type	PortOtpAutoDiagEnLast, @object
	.size	PortOtpAutoDiagEnLast, 2
PortOtpAutoDiagEnLast:
	.zero	2
	.global	PortOtpAutoDiagEn
	.align 3
	.type	PortOtpAutoDiagEn, @object
	.size	PortOtpAutoDiagEn, 2
PortOtpAutoDiagEn:
	.zero	2
	.global	WdgEnable
	.align 3
	.type	WdgEnable, @object
	.size	WdgEnable, 2
WdgEnable:
	.zero	2
	.global	WdgCnt
	.align 3
	.type	WdgCnt, @object
	.size	WdgCnt, 2
WdgCnt:
	.zero	2
	.global	KLDiagFlag
	.align 3
	.type	KLDiagFlag, @object
	.size	KLDiagFlag, 2
KLDiagFlag:
	.zero	2
	.global	PortDebug
	.align 3
	.type	PortDebug, @object
	.size	PortDebug, 20
PortDebug:
	.zero	20
	.global	Ovp16VResetCnt
	.align 3
	.type	Ovp16VResetCnt, @object
	.size	Ovp16VResetCnt, 2
Ovp16VResetCnt:
	.zero	2
	.global	PortErrReset
	.align 3
	.type	PortErrReset, @object
	.size	PortErrReset, 2
PortErrReset:
	.zero	2
	.global	PortAutoDiagErr
	.align 3
	.type	PortAutoDiagErr, @object
	.size	PortAutoDiagErr, 4
PortAutoDiagErr:
	.zero	4
	.global	PortAutoDiagFin
	.align 3
	.type	PortAutoDiagFin, @object
	.size	PortAutoDiagFin, 1
PortAutoDiagFin:
	.zero	1
	.global	PortInPt
	.align 3
	.type	PortInPt, @object
	.size	PortInPt, 88
PortInPt:
	.zero	88
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
	.uaword	.LFB204
	.uaword	.LFE204-.LFB204
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
	.uaword	.LFB202
	.uaword	.LFE202-.LFB202
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
.section .text,"ax",@progbits
.Letext0:
	.file 2 "../30_Bsw/Common/rtwtypes.h"
	.file 3 "../30_Bsw/Common/TC21x/IfxPort_regdef.h"
	.file 4 "../30_Bsw/Mcal/Port/Port_api.h"
	.file 5 "../30_Bsw/Common/TC21x/IfxCpu_regdef.h"
	.file 6 "../40_Appl/HsfbDiag/HsfbDiag_struct.h"
	.file 7 "../40_Appl/HsfbState/HsfbState_struct.h"
	.file 8 "../30_Bsw/Main/Main_api.h"
	.file 9 "../30_Bsw/Mcal/Adc/Adc_api.h"
	.file 10 "../40_Appl/HsfbDiag/HsfbDiag.h"
	.file 11 "../40_Appl/HsfbApp/HsfbApp.h"
	.file 12 "../30_Bsw/Mpu/mpu_api.h"
	.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x19f7
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.6.3 build on 2013-05-17"
	.byte	0x1
	.string	"../30_Bsw/Mcal/Port/Port.c"
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
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x3
	.string	"uint16_T"
	.byte	0x2
	.byte	0x53
	.uaword	0xcc
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
	.uaword	0xf9
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
	.uaword	0x9e
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
	.uaword	0xbc
	.uleb128 0x3
	.string	"u32"
	.byte	0x2
	.byte	0x81
	.uaword	0xe9
	.uleb128 0x3
	.string	"bit"
	.byte	0x2
	.byte	0x84
	.uaword	0x11c
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x4
	.string	"_Ifx_P_IN_Bits"
	.byte	0x4
	.byte	0x3
	.byte	0x76
	.uaword	0x2a6
	.uleb128 0x5
	.string	"P0"
	.byte	0x3
	.byte	0x78
	.uaword	0xf9
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"P1"
	.byte	0x3
	.byte	0x79
	.uaword	0xf9
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"P2"
	.byte	0x3
	.byte	0x7a
	.uaword	0xf9
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"P3"
	.byte	0x3
	.byte	0x7b
	.uaword	0xf9
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"P4"
	.byte	0x3
	.byte	0x7c
	.uaword	0xf9
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"P5"
	.byte	0x3
	.byte	0x7d
	.uaword	0xf9
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"P6"
	.byte	0x3
	.byte	0x7e
	.uaword	0xf9
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"P7"
	.byte	0x3
	.byte	0x7f
	.uaword	0xf9
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"P8"
	.byte	0x3
	.byte	0x80
	.uaword	0xf9
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"P9"
	.byte	0x3
	.byte	0x81
	.uaword	0xf9
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"P10"
	.byte	0x3
	.byte	0x82
	.uaword	0xf9
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"P11"
	.byte	0x3
	.byte	0x83
	.uaword	0xf9
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"P12"
	.byte	0x3
	.byte	0x84
	.uaword	0xf9
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"P13"
	.byte	0x3
	.byte	0x85
	.uaword	0xf9
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"P14"
	.byte	0x3
	.byte	0x86
	.uaword	0xf9
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"P15"
	.byte	0x3
	.byte	0x87
	.uaword	0xf9
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.uaword	.LASF0
	.byte	0x3
	.byte	0x88
	.uaword	0xf9
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_IN_Bits"
	.byte	0x3
	.byte	0x89
	.uaword	0x177
	.uleb128 0x4
	.string	"_Ifx_P_IOCR0_Bits"
	.byte	0x4
	.byte	0x3
	.byte	0x8c
	.uaword	0x35e
	.uleb128 0x6
	.uaword	.LASF1
	.byte	0x3
	.byte	0x8e
	.uaword	0xf9
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"PC0"
	.byte	0x3
	.byte	0x8f
	.uaword	0xf9
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.uaword	.LASF2
	.byte	0x3
	.byte	0x90
	.uaword	0xf9
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"PC1"
	.byte	0x3
	.byte	0x91
	.uaword	0xf9
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.uaword	.LASF0
	.byte	0x3
	.byte	0x92
	.uaword	0xf9
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"PC2"
	.byte	0x3
	.byte	0x93
	.uaword	0xf9
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.uaword	.LASF3
	.byte	0x3
	.byte	0x94
	.uaword	0xf9
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"PC3"
	.byte	0x3
	.byte	0x95
	.uaword	0xf9
	.byte	0x4
	.byte	0x5
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_IOCR0_Bits"
	.byte	0x3
	.byte	0x96
	.uaword	0x2bb
	.uleb128 0x4
	.string	"_Ifx_P_IOCR12_Bits"
	.byte	0x4
	.byte	0x3
	.byte	0x99
	.uaword	0x41e
	.uleb128 0x6
	.uaword	.LASF1
	.byte	0x3
	.byte	0x9b
	.uaword	0xf9
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"PC12"
	.byte	0x3
	.byte	0x9c
	.uaword	0xf9
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.uaword	.LASF2
	.byte	0x3
	.byte	0x9d
	.uaword	0xf9
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"PC13"
	.byte	0x3
	.byte	0x9e
	.uaword	0xf9
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.uaword	.LASF0
	.byte	0x3
	.byte	0x9f
	.uaword	0xf9
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"PC14"
	.byte	0x3
	.byte	0xa0
	.uaword	0xf9
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.uaword	.LASF3
	.byte	0x3
	.byte	0xa1
	.uaword	0xf9
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"PC15"
	.byte	0x3
	.byte	0xa2
	.uaword	0xf9
	.byte	0x4
	.byte	0x5
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_IOCR12_Bits"
	.byte	0x3
	.byte	0xa3
	.uaword	0x376
	.uleb128 0x4
	.string	"_Ifx_P_IOCR4_Bits"
	.byte	0x4
	.byte	0x3
	.byte	0xa6
	.uaword	0x4da
	.uleb128 0x6
	.uaword	.LASF1
	.byte	0x3
	.byte	0xa8
	.uaword	0xf9
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"PC4"
	.byte	0x3
	.byte	0xa9
	.uaword	0xf9
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.uaword	.LASF2
	.byte	0x3
	.byte	0xaa
	.uaword	0xf9
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"PC5"
	.byte	0x3
	.byte	0xab
	.uaword	0xf9
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.uaword	.LASF0
	.byte	0x3
	.byte	0xac
	.uaword	0xf9
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"PC6"
	.byte	0x3
	.byte	0xad
	.uaword	0xf9
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.uaword	.LASF3
	.byte	0x3
	.byte	0xae
	.uaword	0xf9
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"PC7"
	.byte	0x3
	.byte	0xaf
	.uaword	0xf9
	.byte	0x4
	.byte	0x5
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_IOCR4_Bits"
	.byte	0x3
	.byte	0xb0
	.uaword	0x437
	.uleb128 0x4
	.string	"_Ifx_P_IOCR8_Bits"
	.byte	0x4
	.byte	0x3
	.byte	0xb3
	.uaword	0x597
	.uleb128 0x6
	.uaword	.LASF1
	.byte	0x3
	.byte	0xb5
	.uaword	0xf9
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"PC8"
	.byte	0x3
	.byte	0xb6
	.uaword	0xf9
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.uaword	.LASF2
	.byte	0x3
	.byte	0xb7
	.uaword	0xf9
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"PC9"
	.byte	0x3
	.byte	0xb8
	.uaword	0xf9
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.uaword	.LASF0
	.byte	0x3
	.byte	0xb9
	.uaword	0xf9
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"PC10"
	.byte	0x3
	.byte	0xba
	.uaword	0xf9
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.uaword	.LASF3
	.byte	0x3
	.byte	0xbb
	.uaword	0xf9
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"PC11"
	.byte	0x3
	.byte	0xbc
	.uaword	0xf9
	.byte	0x4
	.byte	0x5
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_IOCR8_Bits"
	.byte	0x3
	.byte	0xbd
	.uaword	0x4f2
	.uleb128 0x4
	.string	"_Ifx_P_OMCR_Bits"
	.byte	0x4
	.byte	0x3
	.byte	0xeb
	.uaword	0x700
	.uleb128 0x6
	.uaword	.LASF1
	.byte	0x3
	.byte	0xed
	.uaword	0xf9
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"PCL0"
	.byte	0x3
	.byte	0xee
	.uaword	0xf9
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"PCL1"
	.byte	0x3
	.byte	0xef
	.uaword	0xf9
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"PCL2"
	.byte	0x3
	.byte	0xf0
	.uaword	0xf9
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"PCL3"
	.byte	0x3
	.byte	0xf1
	.uaword	0xf9
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"PCL4"
	.byte	0x3
	.byte	0xf2
	.uaword	0xf9
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"PCL5"
	.byte	0x3
	.byte	0xf3
	.uaword	0xf9
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"PCL6"
	.byte	0x3
	.byte	0xf4
	.uaword	0xf9
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"PCL7"
	.byte	0x3
	.byte	0xf5
	.uaword	0xf9
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"PCL8"
	.byte	0x3
	.byte	0xf6
	.uaword	0xf9
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"PCL9"
	.byte	0x3
	.byte	0xf7
	.uaword	0xf9
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"PCL10"
	.byte	0x3
	.byte	0xf8
	.uaword	0xf9
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"PCL11"
	.byte	0x3
	.byte	0xf9
	.uaword	0xf9
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"PCL12"
	.byte	0x3
	.byte	0xfa
	.uaword	0xf9
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"PCL13"
	.byte	0x3
	.byte	0xfb
	.uaword	0xf9
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"PCL14"
	.byte	0x3
	.byte	0xfc
	.uaword	0xf9
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"PCL15"
	.byte	0x3
	.byte	0xfd
	.uaword	0xf9
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_OMCR_Bits"
	.byte	0x3
	.byte	0xfe
	.uaword	0x5af
	.uleb128 0x7
	.string	"_Ifx_P_OMSR_Bits"
	.byte	0x4
	.byte	0x3
	.uahalf	0x151
	.uaword	0x86a
	.uleb128 0x8
	.string	"PS0"
	.byte	0x3
	.uahalf	0x153
	.uaword	0xf9
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"PS1"
	.byte	0x3
	.uahalf	0x154
	.uaword	0xf9
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"PS2"
	.byte	0x3
	.uahalf	0x155
	.uaword	0xf9
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"PS3"
	.byte	0x3
	.uahalf	0x156
	.uaword	0xf9
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"PS4"
	.byte	0x3
	.uahalf	0x157
	.uaword	0xf9
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"PS5"
	.byte	0x3
	.uahalf	0x158
	.uaword	0xf9
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"PS6"
	.byte	0x3
	.uahalf	0x159
	.uaword	0xf9
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"PS7"
	.byte	0x3
	.uahalf	0x15a
	.uaword	0xf9
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"PS8"
	.byte	0x3
	.uahalf	0x15b
	.uaword	0xf9
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"PS9"
	.byte	0x3
	.uahalf	0x15c
	.uaword	0xf9
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"PS10"
	.byte	0x3
	.uahalf	0x15d
	.uaword	0xf9
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"PS11"
	.byte	0x3
	.uahalf	0x15e
	.uaword	0xf9
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"PS12"
	.byte	0x3
	.uahalf	0x15f
	.uaword	0xf9
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"PS13"
	.byte	0x3
	.uahalf	0x160
	.uaword	0xf9
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"PS14"
	.byte	0x3
	.uahalf	0x161
	.uaword	0xf9
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"PS15"
	.byte	0x3
	.uahalf	0x162
	.uaword	0xf9
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF0
	.byte	0x3
	.uahalf	0x163
	.uaword	0xf9
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_P_OMSR_Bits"
	.byte	0x3
	.uahalf	0x164
	.uaword	0x717
	.uleb128 0x7
	.string	"_Ifx_P_PDR0_Bits"
	.byte	0x4
	.byte	0x3
	.uahalf	0x1a0
	.uaword	0x9bd
	.uleb128 0x8
	.string	"PD0"
	.byte	0x3
	.uahalf	0x1a2
	.uaword	0xf9
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"PL0"
	.byte	0x3
	.uahalf	0x1a3
	.uaword	0xf9
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"PD1"
	.byte	0x3
	.uahalf	0x1a4
	.uaword	0xf9
	.byte	0x4
	.byte	0x3
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"PL1"
	.byte	0x3
	.uahalf	0x1a5
	.uaword	0xf9
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"PD2"
	.byte	0x3
	.uahalf	0x1a6
	.uaword	0xf9
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"PL2"
	.byte	0x3
	.uahalf	0x1a7
	.uaword	0xf9
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"PD3"
	.byte	0x3
	.uahalf	0x1a8
	.uaword	0xf9
	.byte	0x4
	.byte	0x3
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"PL3"
	.byte	0x3
	.uahalf	0x1a9
	.uaword	0xf9
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"PD4"
	.byte	0x3
	.uahalf	0x1aa
	.uaword	0xf9
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"PL4"
	.byte	0x3
	.uahalf	0x1ab
	.uaword	0xf9
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"PD5"
	.byte	0x3
	.uahalf	0x1ac
	.uaword	0xf9
	.byte	0x4
	.byte	0x3
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"PL5"
	.byte	0x3
	.uahalf	0x1ad
	.uaword	0xf9
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"PD6"
	.byte	0x3
	.uahalf	0x1ae
	.uaword	0xf9
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"PL6"
	.byte	0x3
	.uahalf	0x1af
	.uaword	0xf9
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"PD7"
	.byte	0x3
	.uahalf	0x1b0
	.uaword	0xf9
	.byte	0x4
	.byte	0x3
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"PL7"
	.byte	0x3
	.uahalf	0x1b1
	.uaword	0xf9
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_P_PDR0_Bits"
	.byte	0x3
	.uahalf	0x1b2
	.uaword	0x882
	.uleb128 0x7
	.string	"_Ifx_P_PDR1_Bits"
	.byte	0x4
	.byte	0x3
	.uahalf	0x1b5
	.uaword	0xb1c
	.uleb128 0x8
	.string	"PD8"
	.byte	0x3
	.uahalf	0x1b7
	.uaword	0xf9
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"PL8"
	.byte	0x3
	.uahalf	0x1b8
	.uaword	0xf9
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"PD9"
	.byte	0x3
	.uahalf	0x1b9
	.uaword	0xf9
	.byte	0x4
	.byte	0x3
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"PL9"
	.byte	0x3
	.uahalf	0x1ba
	.uaword	0xf9
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"PD10"
	.byte	0x3
	.uahalf	0x1bb
	.uaword	0xf9
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"PL10"
	.byte	0x3
	.uahalf	0x1bc
	.uaword	0xf9
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"PD11"
	.byte	0x3
	.uahalf	0x1bd
	.uaword	0xf9
	.byte	0x4
	.byte	0x3
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"PL11"
	.byte	0x3
	.uahalf	0x1be
	.uaword	0xf9
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"PD12"
	.byte	0x3
	.uahalf	0x1bf
	.uaword	0xf9
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"PL12"
	.byte	0x3
	.uahalf	0x1c0
	.uaword	0xf9
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"PD13"
	.byte	0x3
	.uahalf	0x1c1
	.uaword	0xf9
	.byte	0x4
	.byte	0x3
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"PL13"
	.byte	0x3
	.uahalf	0x1c2
	.uaword	0xf9
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"PD14"
	.byte	0x3
	.uahalf	0x1c3
	.uaword	0xf9
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"PL14"
	.byte	0x3
	.uahalf	0x1c4
	.uaword	0xf9
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"PD15"
	.byte	0x3
	.uahalf	0x1c5
	.uaword	0xf9
	.byte	0x4
	.byte	0x3
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"PL15"
	.byte	0x3
	.uahalf	0x1c6
	.uaword	0xf9
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_P_PDR1_Bits"
	.byte	0x3
	.uahalf	0x1c7
	.uaword	0x9d5
	.uleb128 0xb
	.byte	0x4
	.byte	0x3
	.uahalf	0x1ef
	.uaword	0xb5c
	.uleb128 0xc
	.string	"U"
	.byte	0x3
	.uahalf	0x1f1
	.uaword	0xf9
	.uleb128 0xc
	.string	"I"
	.byte	0x3
	.uahalf	0x1f2
	.uaword	0xe2
	.uleb128 0xc
	.string	"B"
	.byte	0x3
	.uahalf	0x1f3
	.uaword	0x2a6
	.byte	0
	.uleb128 0xa
	.string	"Ifx_P_IN"
	.byte	0x3
	.uahalf	0x1f4
	.uaword	0xb34
	.uleb128 0xb
	.byte	0x4
	.byte	0x3
	.uahalf	0x1f7
	.uaword	0xb95
	.uleb128 0xc
	.string	"U"
	.byte	0x3
	.uahalf	0x1f9
	.uaword	0xf9
	.uleb128 0xc
	.string	"I"
	.byte	0x3
	.uahalf	0x1fa
	.uaword	0xe2
	.uleb128 0xc
	.string	"B"
	.byte	0x3
	.uahalf	0x1fb
	.uaword	0x35e
	.byte	0
	.uleb128 0xa
	.string	"Ifx_P_IOCR0"
	.byte	0x3
	.uahalf	0x1fc
	.uaword	0xb6d
	.uleb128 0xb
	.byte	0x4
	.byte	0x3
	.uahalf	0x1ff
	.uaword	0xbd1
	.uleb128 0xc
	.string	"U"
	.byte	0x3
	.uahalf	0x201
	.uaword	0xf9
	.uleb128 0xc
	.string	"I"
	.byte	0x3
	.uahalf	0x202
	.uaword	0xe2
	.uleb128 0xc
	.string	"B"
	.byte	0x3
	.uahalf	0x203
	.uaword	0x41e
	.byte	0
	.uleb128 0xa
	.string	"Ifx_P_IOCR12"
	.byte	0x3
	.uahalf	0x204
	.uaword	0xba9
	.uleb128 0xb
	.byte	0x4
	.byte	0x3
	.uahalf	0x207
	.uaword	0xc0e
	.uleb128 0xc
	.string	"U"
	.byte	0x3
	.uahalf	0x209
	.uaword	0xf9
	.uleb128 0xc
	.string	"I"
	.byte	0x3
	.uahalf	0x20a
	.uaword	0xe2
	.uleb128 0xc
	.string	"B"
	.byte	0x3
	.uahalf	0x20b
	.uaword	0x4da
	.byte	0
	.uleb128 0xa
	.string	"Ifx_P_IOCR4"
	.byte	0x3
	.uahalf	0x20c
	.uaword	0xbe6
	.uleb128 0xb
	.byte	0x4
	.byte	0x3
	.uahalf	0x20f
	.uaword	0xc4a
	.uleb128 0xc
	.string	"U"
	.byte	0x3
	.uahalf	0x211
	.uaword	0xf9
	.uleb128 0xc
	.string	"I"
	.byte	0x3
	.uahalf	0x212
	.uaword	0xe2
	.uleb128 0xc
	.string	"B"
	.byte	0x3
	.uahalf	0x213
	.uaword	0x597
	.byte	0
	.uleb128 0xa
	.string	"Ifx_P_IOCR8"
	.byte	0x3
	.uahalf	0x214
	.uaword	0xc22
	.uleb128 0xb
	.byte	0x4
	.byte	0x3
	.uahalf	0x217
	.uaword	0xc86
	.uleb128 0xc
	.string	"U"
	.byte	0x3
	.uahalf	0x219
	.uaword	0xf9
	.uleb128 0xc
	.string	"I"
	.byte	0x3
	.uahalf	0x21a
	.uaword	0xe2
	.uleb128 0xc
	.string	"B"
	.byte	0x3
	.uahalf	0x21b
	.uaword	0x700
	.byte	0
	.uleb128 0xa
	.string	"Ifx_P_OMCR"
	.byte	0x3
	.uahalf	0x21c
	.uaword	0xc5e
	.uleb128 0xb
	.byte	0x4
	.byte	0x3
	.uahalf	0x247
	.uaword	0xcc1
	.uleb128 0xc
	.string	"U"
	.byte	0x3
	.uahalf	0x249
	.uaword	0xf9
	.uleb128 0xc
	.string	"I"
	.byte	0x3
	.uahalf	0x24a
	.uaword	0xe2
	.uleb128 0xc
	.string	"B"
	.byte	0x3
	.uahalf	0x24b
	.uaword	0x86a
	.byte	0
	.uleb128 0xa
	.string	"Ifx_P_OMSR"
	.byte	0x3
	.uahalf	0x24c
	.uaword	0xc99
	.uleb128 0xb
	.byte	0x4
	.byte	0x3
	.uahalf	0x287
	.uaword	0xcfc
	.uleb128 0xc
	.string	"U"
	.byte	0x3
	.uahalf	0x289
	.uaword	0xf9
	.uleb128 0xc
	.string	"I"
	.byte	0x3
	.uahalf	0x28a
	.uaword	0xe2
	.uleb128 0xc
	.string	"B"
	.byte	0x3
	.uahalf	0x28b
	.uaword	0x9bd
	.byte	0
	.uleb128 0xa
	.string	"Ifx_P_PDR0"
	.byte	0x3
	.uahalf	0x28c
	.uaword	0xcd4
	.uleb128 0xb
	.byte	0x4
	.byte	0x3
	.uahalf	0x28f
	.uaword	0xd37
	.uleb128 0xc
	.string	"U"
	.byte	0x3
	.uahalf	0x291
	.uaword	0xf9
	.uleb128 0xc
	.string	"I"
	.byte	0x3
	.uahalf	0x292
	.uaword	0xe2
	.uleb128 0xc
	.string	"B"
	.byte	0x3
	.uahalf	0x293
	.uaword	0xb1c
	.byte	0
	.uleb128 0xa
	.string	"Ifx_P_PDR1"
	.byte	0x3
	.uahalf	0x294
	.uaword	0xd0f
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.string	"long long int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.string	"long long unsigned int"
	.uleb128 0xd
	.uaword	0xf9
	.uleb128 0xe
	.string	"PORT_E_DI"
	.byte	0x4
	.byte	0x4
	.byte	0x6e
	.uaword	0xe5d
	.uleb128 0xf
	.string	"PORT_E_FastTurnOff"
	.sleb128 0
	.uleb128 0xf
	.string	"PORT_E_PriDriveDis"
	.sleb128 1
	.uleb128 0xf
	.string	"PORT_E_SrDriveEn"
	.sleb128 2
	.uleb128 0xf
	.string	"PORT_E_IpriCbc"
	.sleb128 3
	.uleb128 0xf
	.string	"PORT_E_IpriOcp"
	.sleb128 4
	.uleb128 0xf
	.string	"PORT_E_VinOvp"
	.sleb128 5
	.uleb128 0xf
	.string	"PORT_E_IoutPOcp"
	.sleb128 6
	.uleb128 0xf
	.string	"PORT_E_IoutNOcp"
	.sleb128 7
	.uleb128 0xf
	.string	"PORT_E_Vout16VOvp"
	.sleb128 8
	.uleb128 0xf
	.string	"PORT_E_Vout19VOvp"
	.sleb128 9
	.uleb128 0xf
	.string	"PORT_E_WaterOutOtp"
	.sleb128 10
	.byte	0
	.uleb128 0x10
	.uaword	.LASF4
	.byte	0x8
	.byte	0x4
	.byte	0x7c
	.uaword	0xe87
	.uleb128 0x11
	.string	"Port"
	.byte	0x4
	.byte	0x7d
	.uaword	0xe87
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"Pin"
	.byte	0x4
	.byte	0x7e
	.uaword	0x14a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x12
	.byte	0x4
	.uaword	0x155
	.uleb128 0x13
	.uaword	.LASF4
	.byte	0x4
	.byte	0x7f
	.uaword	0xe5d
	.uleb128 0x7
	.string	"_Ifx_CPU_PSW_Bits"
	.byte	0x4
	.byte	0x5
	.uahalf	0x204
	.uaword	0xf9b
	.uleb128 0x8
	.string	"CDC"
	.byte	0x5
	.uahalf	0x206
	.uaword	0xd75
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
	.uaword	0xd75
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
	.uaword	0xd75
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
	.uaword	0xd75
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
	.uaword	0xd75
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
	.uaword	0xd75
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
	.uaword	0xd75
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"reserved_15"
	.byte	0x5
	.uahalf	0x20d
	.uaword	0xd75
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
	.uaword	0xd75
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
	.uaword	0xd75
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
	.uaword	0xd75
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
	.uaword	0xd75
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
	.uaword	0xd75
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
	.uaword	0xe98
	.uleb128 0xb
	.byte	0x4
	.byte	0x5
	.uahalf	0x467
	.uaword	0xfdc
	.uleb128 0xc
	.string	"U"
	.byte	0x5
	.uahalf	0x469
	.uaword	0xf9
	.uleb128 0xc
	.string	"I"
	.byte	0x5
	.uahalf	0x46a
	.uaword	0xe2
	.uleb128 0xc
	.string	"B"
	.byte	0x5
	.uahalf	0x46b
	.uaword	0xf9b
	.byte	0
	.uleb128 0xa
	.string	"Ifx_CPU_PSW"
	.byte	0x5
	.uahalf	0x46c
	.uaword	0xfb4
	.uleb128 0x14
	.uaword	0x14a
	.uaword	0x1000
	.uleb128 0x15
	.uaword	0x12d
	.byte	0x9
	.byte	0
	.uleb128 0x16
	.byte	0x10
	.byte	0x6
	.byte	0x34
	.uaword	0x1157
	.uleb128 0x11
	.string	"Vout16VHigh"
	.byte	0x6
	.byte	0x35
	.uaword	0x160
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"VoutErr1High"
	.byte	0x6
	.byte	0x36
	.uaword	0x160
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x11
	.string	"Vout19VHigh"
	.byte	0x6
	.byte	0x37
	.uaword	0x160
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x11
	.string	"VoutErr2High"
	.byte	0x6
	.byte	0x38
	.uaword	0x160
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x11
	.string	"IoutHigh"
	.byte	0x6
	.byte	0x39
	.uaword	0x160
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.string	"IoutLow"
	.byte	0x6
	.byte	0x3a
	.uaword	0x160
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0x11
	.string	"VinHigh"
	.byte	0x6
	.byte	0x3b
	.uaword	0x160
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x11
	.string	"VinLow"
	.byte	0x6
	.byte	0x3c
	.uaword	0x160
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0x11
	.string	"TempPriHigh"
	.byte	0x6
	.byte	0x3d
	.uaword	0x160
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x11
	.string	"TempSrAHigh"
	.byte	0x6
	.byte	0x3e
	.uaword	0x160
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0x11
	.string	"TempSrBHigh"
	.byte	0x6
	.byte	0x3f
	.uaword	0x160
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x11
	.string	"VauxHigh"
	.byte	0x6
	.byte	0x40
	.uaword	0x160
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0x11
	.string	"VauxLow"
	.byte	0x6
	.byte	0x41
	.uaword	0x160
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x11
	.string	"Vkl30Low"
	.byte	0x6
	.byte	0x42
	.uaword	0x160
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0x11
	.string	"TempErrSrAB_High"
	.byte	0x6
	.byte	0x43
	.uaword	0x160
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0x11
	.string	"IproFet_High"
	.byte	0x6
	.byte	0x44
	.uaword	0x160
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.byte	0
	.uleb128 0x3
	.string	"HSFBDIAG_S_ERRCODE2"
	.byte	0x6
	.byte	0x45
	.uaword	0x1000
	.uleb128 0x16
	.byte	0xc
	.byte	0x7
	.byte	0xe
	.uaword	0x1213
	.uleb128 0x11
	.string	"ClrWarning"
	.byte	0x7
	.byte	0xf
	.uaword	0x160
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"Error"
	.byte	0x7
	.byte	0x10
	.uaword	0x160
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x11
	.string	"Init"
	.byte	0x7
	.byte	0x11
	.uaword	0x160
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x11
	.string	"HsfbEn"
	.byte	0x7
	.byte	0x12
	.uaword	0x160
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x11
	.string	"Reset"
	.byte	0x7
	.byte	0x13
	.uaword	0x160
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.string	"DrvReset"
	.byte	0x7
	.byte	0x14
	.uaword	0x160
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0x11
	.string	"ErrReset"
	.byte	0x7
	.byte	0x15
	.uaword	0x160
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x11
	.string	"Opm"
	.byte	0x7
	.byte	0x16
	.uaword	0x14a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x11
	.string	"Topo"
	.byte	0x7
	.byte	0x17
	.uaword	0x14a
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.string	"HSFBSTATE_S_STATUS"
	.byte	0x7
	.byte	0x18
	.uaword	0x1172
	.uleb128 0x14
	.uaword	0x160
	.uaword	0x123d
	.uleb128 0x15
	.uaword	0x12d
	.byte	0x3
	.byte	0
	.uleb128 0x17
	.byte	0x4
	.byte	0x8
	.byte	0x59
	.uaword	0x137e
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
	.byte	0x8
	.byte	0x6a
	.uaword	0x123d
	.uleb128 0x16
	.byte	0x10
	.byte	0x8
	.byte	0x6c
	.uaword	0x1414
	.uleb128 0x11
	.string	"App"
	.byte	0x8
	.byte	0x6d
	.uaword	0x14a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"Meas"
	.byte	0x8
	.byte	0x6e
	.uaword	0x14a
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x11
	.string	"Ctrl"
	.byte	0x8
	.byte	0x6f
	.uaword	0x14a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.string	"Pwm"
	.byte	0x8
	.byte	0x70
	.uaword	0x14a
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x11
	.string	"Diag"
	.byte	0x8
	.byte	0x71
	.uaword	0x14a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x11
	.string	"Ntc"
	.byte	0x8
	.byte	0x72
	.uaword	0x14a
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x11
	.string	"State"
	.byte	0x8
	.byte	0x73
	.uaword	0x14a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x11
	.string	"Safety"
	.byte	0x8
	.byte	0x74
	.uaword	0x14a
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.byte	0
	.uleb128 0x3
	.string	"MAIN_E_HW_VER_APP"
	.byte	0x8
	.byte	0x75
	.uaword	0x1393
	.uleb128 0x16
	.byte	0x20
	.byte	0x8
	.byte	0x77
	.uaword	0x1485
	.uleb128 0x11
	.string	"Code"
	.byte	0x8
	.byte	0x78
	.uaword	0x1485
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"CodeNum"
	.byte	0x8
	.byte	0x79
	.uaword	0x14a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x11
	.string	"VerName"
	.byte	0x8
	.byte	0x7a
	.uaword	0x14a
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x11
	.string	"Ver"
	.byte	0x8
	.byte	0x7b
	.uaword	0x137e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x11
	.string	"App"
	.byte	0x8
	.byte	0x7c
	.uaword	0x1414
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x14
	.uaword	0x14a
	.uaword	0x1495
	.uleb128 0x15
	.uaword	0x12d
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.string	"MAIN_S_HW_VER"
	.byte	0x8
	.byte	0x7d
	.uaword	0x142d
	.uleb128 0xe
	.string	"ADC_E_AI"
	.byte	0x4
	.byte	0x9
	.byte	0xc
	.uaword	0x15e3
	.uleb128 0xf
	.string	"ADC_E_Ipri"
	.sleb128 0
	.uleb128 0xf
	.string	"ADC_E_Vin"
	.sleb128 1
	.uleb128 0xf
	.string	"ADC_E_Iout"
	.sleb128 2
	.uleb128 0xf
	.string	"ADC_E_Vout"
	.sleb128 3
	.uleb128 0xf
	.string	"ADC_E_VoutDiag"
	.sleb128 4
	.uleb128 0xf
	.string	"ADC_E_IproFet"
	.sleb128 5
	.uleb128 0xf
	.string	"ADC_E_Vaux"
	.sleb128 6
	.uleb128 0xf
	.string	"ADC_E_Vkl30"
	.sleb128 7
	.uleb128 0xf
	.string	"ADC_E_Vkl30C"
	.sleb128 8
	.uleb128 0xf
	.string	"ADC_E_Vcomp"
	.sleb128 9
	.uleb128 0xf
	.string	"ADC_E_VrefDiag"
	.sleb128 10
	.uleb128 0xf
	.string	"ADC_E_Vhw16V"
	.sleb128 11
	.uleb128 0xf
	.string	"ADC_E_Vhw19V"
	.sleb128 12
	.uleb128 0xf
	.string	"ADC_E_NtcPri"
	.sleb128 13
	.uleb128 0xf
	.string	"ADC_E_NtcSrA"
	.sleb128 14
	.uleb128 0xf
	.string	"ADC_E_NtcSrB"
	.sleb128 15
	.uleb128 0xf
	.string	"ADC_E_NtcWaterIn"
	.sleb128 16
	.uleb128 0xf
	.string	"ADC_E_NtcWaterOut"
	.sleb128 17
	.uleb128 0xf
	.string	"ADC_E_NtcWaterOutDiag"
	.sleb128 18
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.string	"Port_Pin_IOCR_Cfg"
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.uaword	.LFB204
	.uaword	.LFE204
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0x18
	.byte	0x1
	.string	"Port_Cfg"
	.byte	0x1
	.byte	0x43
	.byte	0x1
	.uaword	.LFB203
	.uaword	.LFE203
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0x18
	.byte	0x1
	.string	"Port_Pt_Init"
	.byte	0x1
	.byte	0xa7
	.byte	0x1
	.uaword	.LFB205
	.uaword	.LFE205
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0x18
	.byte	0x1
	.string	"Port_Init"
	.byte	0x1
	.byte	0x38
	.byte	0x1
	.uaword	.LFB202
	.uaword	.LFE202
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0x18
	.byte	0x1
	.string	"Port_StartUp"
	.byte	0x1
	.byte	0xba
	.byte	0x1
	.uaword	.LFB206
	.uaword	.LFE206
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0x18
	.byte	0x1
	.string	"Port_AutoDiag"
	.byte	0x1
	.byte	0xc1
	.byte	0x1
	.uaword	.LFB207
	.uaword	.LFE207
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0x19
	.byte	0x1
	.string	"KL30_AutoDiag"
	.byte	0x1
	.uahalf	0x115
	.byte	0x1
	.uaword	.LFB208
	.uaword	.LFE208
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.string	"HsfbApp_ErrReset"
	.byte	0x1
	.uahalf	0x123
	.byte	0x1
	.uaword	.LFB209
	.uaword	.LFE209
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x16ef
	.uleb128 0x1b
	.string	"en"
	.byte	0x1
	.uahalf	0x123
	.uaword	0x160
	.byte	0x1
	.byte	0x54
	.uleb128 0x1b
	.string	"u"
	.byte	0x1
	.uahalf	0x123
	.uaword	0x160
	.byte	0x1
	.byte	0x55
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.string	"HsfbSafety_SetClrAutoDiag"
	.byte	0x1
	.uahalf	0x143
	.byte	0x1
	.uaword	.LFB210
	.uaword	.LFE210
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x173b
	.uleb128 0x1b
	.string	"en"
	.byte	0x1
	.uahalf	0x143
	.uaword	0x160
	.byte	0x1
	.byte	0x54
	.uleb128 0x1b
	.string	"type"
	.byte	0x1
	.uahalf	0x143
	.uaword	0x14a
	.byte	0x1
	.byte	0x55
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.string	"SBC_Triger100us"
	.byte	0x1
	.uahalf	0x194
	.byte	0x1
	.uaword	.LFB211
	.uaword	.LFE211
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0x19
	.byte	0x1
	.string	"ORU_LatchTest1ms"
	.byte	0x1
	.uahalf	0x1ad
	.byte	0x1
	.uaword	.LFB212
	.uaword	.LFE212
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0x19
	.byte	0x1
	.string	"Port_OTP_AutoDiag10ms"
	.byte	0x1
	.uahalf	0x1b9
	.byte	0x1
	.uaword	.LFB213
	.uaword	.LFE213
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0x19
	.byte	0x1
	.string	"Port_AuxPower_EnDis10ms"
	.byte	0x1
	.uahalf	0x1cf
	.byte	0x1
	.uaword	.LFB214
	.uaword	.LFE214
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0x1c
	.string	"WdgCnt"
	.byte	0x1
	.byte	0x27
	.uaword	0x14a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	WdgCnt
	.uleb128 0x1c
	.string	"WdgEnable"
	.byte	0x1
	.byte	0x28
	.uaword	0x14a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	WdgEnable
	.uleb128 0x1c
	.string	"PortOtpAutoDiagEn"
	.byte	0x1
	.byte	0x29
	.uaword	0x14a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	PortOtpAutoDiagEn
	.uleb128 0x14
	.uaword	0xe8d
	.uaword	0x182b
	.uleb128 0x15
	.uaword	0x12d
	.byte	0xa
	.byte	0
	.uleb128 0x1c
	.string	"PortInPt"
	.byte	0x1
	.byte	0x20
	.uaword	0x181b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	PortInPt
	.uleb128 0x1c
	.string	"PortAutoDiagFin"
	.byte	0x1
	.byte	0x21
	.uaword	0x160
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	PortAutoDiagFin
	.uleb128 0x1c
	.string	"PortAutoDiagErr"
	.byte	0x1
	.byte	0x22
	.uaword	0x122d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	PortAutoDiagErr
	.uleb128 0x1c
	.string	"KLDiagFlag"
	.byte	0x1
	.byte	0x26
	.uaword	0x14a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	KLDiagFlag
	.uleb128 0x1c
	.string	"PortDisHSK"
	.byte	0x1
	.byte	0x2c
	.uaword	0x14a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	PortDisHSK
	.uleb128 0x1d
	.string	"HsfbDiag_ErrCode2"
	.byte	0xa
	.byte	0x5a
	.uaword	0x1157
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.string	"StateStatus"
	.byte	0xb
	.byte	0x4e
	.uaword	0x1213
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.string	"PSWReg_Rd0"
	.byte	0xc
	.byte	0x45
	.uaword	0xfdc
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.string	"PSWReg_Rd1"
	.byte	0xc
	.byte	0x46
	.uaword	0xfdc
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.string	"PSWReg_Rd2"
	.byte	0xc
	.byte	0x47
	.uaword	0xfdc
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.string	"PSWReg_Rd3"
	.byte	0xc
	.byte	0x48
	.uaword	0xfdc
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.string	"Main_HwVer"
	.byte	0x8
	.byte	0x89
	.uaword	0x1495
	.byte	0x1
	.byte	0x1
	.uleb128 0x14
	.uaword	0x1954
	.uaword	0x1954
	.uleb128 0x15
	.uaword	0x12d
	.byte	0x17
	.byte	0
	.uleb128 0x12
	.byte	0x4
	.uaword	0x14a
	.uleb128 0x1d
	.string	"AdcResPt"
	.byte	0x9
	.byte	0x23
	.uaword	0x1944
	.byte	0x1
	.byte	0x1
	.uleb128 0x1c
	.string	"PortErrReset"
	.byte	0x1
	.byte	0x23
	.uaword	0x14a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	PortErrReset
	.uleb128 0x1c
	.string	"Ovp16VResetCnt"
	.byte	0x1
	.byte	0x24
	.uaword	0x14a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Ovp16VResetCnt
	.uleb128 0x1c
	.string	"PortDebug"
	.byte	0x1
	.byte	0x25
	.uaword	0xff0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	PortDebug
	.uleb128 0x1c
	.string	"PortOtpAutoDiagEnLast"
	.byte	0x1
	.byte	0x2a
	.uaword	0x14a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	PortOtpAutoDiagEnLast
	.uleb128 0x1c
	.string	"PortAutoCnt"
	.byte	0x1
	.byte	0x2b
	.uaword	0x14a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	PortAutoCnt
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
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x1b
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.byte	0
	.section .debug_aranges,"",@progbits
	.uaword	0x7c
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB204
	.uaword	.LFE204-.LFB204
	.uaword	.LFB203
	.uaword	.LFE203-.LFB203
	.uaword	.LFB205
	.uaword	.LFE205-.LFB205
	.uaword	.LFB202
	.uaword	.LFE202-.LFB202
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
	.uaword	0
	.uaword	0
	.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB204
	.uaword	.LFE204
	.uaword	.LFB203
	.uaword	.LFE203
	.uaword	.LFB205
	.uaword	.LFE205
	.uaword	.LFB202
	.uaword	.LFE202
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
	.uaword	0
	.uaword	0
	.section .debug_line,"",@progbits
.Ldebug_line0:
	.section .debug_str,"",@progbits
.LASF1:
	.string	"reserved_0"
.LASF2:
	.string	"reserved_8"
.LASF0:
	.string	"reserved_16"
.LASF4:
	.string	"PORT_S_PT"
.LASF3:
	.string	"reserved_24"
	.extern	StateStatus,STT_OBJECT,12
	.extern	HsfbDiag_ErrCode2,STT_OBJECT,16
	.extern	delay_ms_main,STT_FUNC,0
	.extern	AdcResPt,STT_OBJECT,96
	.extern	IfxScuWdt_setCpuEndinit,STT_FUNC,0
	.extern	IfxScuWdt_clearCpuEndinit,STT_FUNC,0
	.extern	IfxScuWdt_getCpuWatchdogPassword,STT_FUNC,0
	.extern	Main_HwVer,STT_OBJECT,32
	.ident	"GCC: (HighTec Release v4.6.3.0) 4.6.3 build on 2013-05-17"
