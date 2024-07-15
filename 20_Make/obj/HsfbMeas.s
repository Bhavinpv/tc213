	.file	"HsfbMeas.c"
.section .text,"ax",@progbits
.Ltext0:
	.section .text.MPU_ASIL_CODE,"ax",@progbits
	.align 3
	.global	HsfbMeas_Calibration
	.type	HsfbMeas_Calibration, @function
HsfbMeas_Calibration:
.LFB202:
	.file 1 "../40_Appl/HsfbMeas/HsfbMeas.c"
	.loc 1 52 0
	.loc 1 55 0
	movh.a	%a15, hi:HsfbMeas_Calib
	lea	%a15, [%a15] lo:HsfbMeas_Calib
	mov.aa	%a4, %a15
	call	HsfbMeas_GetCalibData
	.loc 1 56 0
	ld.w	%d15, [%a15] 24
	movh	%d2, 16256
	add.f	%d15, %d2, %d15
	movh	%d3, 17982
	addi	%d3, %d3, -7168
	mul.f	%d15, %d15, %d3
	movh.a	%a2, hi:HsfbMeas_Param
	ftoiz	%d15, %d15
	lea	%a2, [%a2] lo:HsfbMeas_Param
	.loc 1 58 0
	ld.w	%d3, [%a15] 28
	movh	%d4, 17560
	.loc 1 56 0
	st.h	[%a2] 16, %d15
	.loc 1 58 0
	movh	%d15, 17792
	mul.f	%d3, %d15, %d3
	addi	%d4, %d4, -5734
	.loc 1 60 0
	movh.a	%a3, hi:HsfbMeas_InitOffset
	.loc 1 58 0
	div.f	%d3, %d3, %d4
	.loc 1 59 0
	ld.h	%d4, [%a3] lo:HsfbMeas_InitOffset
	.loc 1 67 0
	movh.a	%a3, hi:Main_HwVer
	.loc 1 59 0
	itof	%d4, %d4
	.loc 1 67 0
	lea	%a3, [%a3] lo:Main_HwVer
	.loc 1 59 0
	add.f	%d3, %d3, %d4
	.loc 1 58 0
	ftoiz	%d3, %d3
	st.h	[%a2] 18, %d3
	.loc 1 61 0
	movh	%d3, 15821
	addi	%d3, %d3, -13107
	st.w	[%a2] 20, %d3
	.loc 1 62 0
	ld.w	%d3, [%a15] 32
	add.f	%d2, %d2, %d3
	movh	%d3, 17696
	addi	%d3, %d3, -8192
	mul.f	%d2, %d2, %d3
	.loc 1 67 0
	ld.hu	%d3, [%a3] 18
	.loc 1 62 0
	ftoiz	%d2, %d2
	st.h	[%a2] 24, %d2
	.loc 1 64 0
	ld.w	%d2, [%a15] 36
	mul.f	%d15, %d15, %d2
	movh	%d2, 16845
	addi	%d2, %d2, -23593
	div.f	%d15, %d15, %d2
	.loc 1 65 0
	mov	%d2, 0
	add.f	%d15, %d15, %d2
	.loc 1 70 0
	movh	%d2, 17836
	.loc 1 64 0
	ftoiz	%d15, %d15
	.loc 1 70 0
	addi	%d2, %d2, -8192
	.loc 1 64 0
	st.h	[%a2] 26, %d15
	.loc 1 66 0
	movh	%d15, 15396
	addi	%d15, %d15, -10486
	st.w	[%a2] 28, %d15
	.loc 1 67 0
	movh	%d15, 16988
	jeq	%d3, 1, .L16
.L2:
.LVL0:
	.loc 1 73 0
	ld.w	%d5, [%a15] 40
	movh	%d4, 16256
	add.f	%d4, %d4, %d5
	.loc 1 77 0
	movh.a	%a3, hi:HsfbMeas_Filter
	.loc 1 73 0
	mul.f	%d2, %d4, %d2
.LVL1:
	.loc 1 74 0
	ld.w	%d4, [%a15] 44
	.loc 1 73 0
	ftoiz	%d2, %d2
	.loc 1 77 0
	lea	%a3, [%a3] lo:HsfbMeas_Filter
	.loc 1 73 0
	st.h	[%a2] 56, %d2
	.loc 1 74 0
	movh	%d2, 17792
	mul.f	%d2, %d2, %d4
	div.f	%d15, %d2, %d15
	.loc 1 75 0
	mov	%d2, 0
	add.f	%d15, %d15, %d2
	.loc 1 77 0
	movh	%d2, 15821
	.loc 1 74 0
	ftoiz	%d15, %d15
	.loc 1 77 0
	addi	%d2, %d2, -13107
	.loc 1 74 0
	st.h	[%a2] 58, %d15
	.loc 1 76 0
	movh	%d15, 15396
	addi	%d15, %d15, -10486
	st.w	[%a2] 60, %d15
	.loc 1 77 0
	ld.w	%d15, [%a3] 4
	mul.f	%d15, %d2, %d15
.LVL2:
	.loc 1 78 0
	ld.w	%d2, [%a15] 48
	cmp.f	%d2, %d2, %d15
	jz.t	%d2, 2, .L13
	.loc 1 79 0
	movh.a	%a3, hi:HsfbMeas_Calib
	ld.w	%d15, [%a3] lo:HsfbMeas_Calib
.LVL3:
	.loc 1 80 0
	ld.w	%d5, [%a15] 4
.LVL4:
.L5:
	.loc 1 89 0
	movh.a	%a15, hi:HsfbMeas_DW
	lea	%a15, [%a15] lo:HsfbMeas_DW
	ld.w	%d6, [%a15] 28
	movh	%d4, 16026
	sub.f	%d2, %d15, %d6
	addi	%d4, %d4, -26214
	madd.f	%d2, %d6, %d2, %d4
.LVL5:
	.loc 1 91 0
	ld.w	%d6, [%a15] 32
	.loc 1 93 0
	movh.a	%a3, hi:HsfbMeas_Param
	.loc 1 91 0
	sub.f	%d15, %d5, %d6
	.loc 1 93 0
	movh	%d5, 18085
.LVL6:
	.loc 1 91 0
	madd.f	%d15, %d6, %d15, %d4
.LVL7:
	.loc 1 93 0
	movh	%d4, 16256
	add.f	%d4, %d2, %d4
	addi	%d5, %d5, -4608
	mul.f	%d4, %d4, %d5
	.loc 1 94 0
	movh	%d5, 17668
	.loc 1 93 0
	ftoiz	%d4, %d4
	.loc 1 94 0
	addi	%d5, %d5, -3686
	.loc 1 93 0
	st.h	[%a2] 8, %d4
	.loc 1 94 0
	movh	%d4, 17792
	mul.f	%d4, %d15, %d4
	div.f	%d4, %d4, %d5
	.loc 1 95 0
	mov	%d5, 0
	add.f	%d4, %d4, %d5
	.loc 1 94 0
	ftoiz	%d4, %d4
	st.h	[%a2] 10, %d4
	.loc 1 96 0
	movh	%d4, 15821
	addi	%d4, %d4, -13107
	st.w	[%a2] 12, %d4
	.loc 1 97 0
	jeq	%d3, 1, .L17
	.loc 1 100 0
	movh.a	%a2, hi:HsfbMeas_PwmStatus15us
	ld.a	%a2, [%a2] lo:HsfbMeas_PwmStatus15us
	movh	%d4, 17831
	addi	%d4, %d4, -12288
	ld.w	%d3, [%a2] 12
	.loc 1 104 0
	st.w	[%a15] 28, %d2
	.loc 1 100 0
	mul.f	%d3, %d4, %d3
	.loc 1 105 0
	st.w	[%a15] 32, %d15
	.loc 1 100 0
	ftoiz	%d3, %d3
	st.h	[%a3] lo:HsfbMeas_Param, %d3
	.loc 1 106 0
	ret
.LVL8:
.L13:
	.loc 1 81 0
	ld.w	%d2, [%a15] 52
	cmp.f	%d15, %d2, %d15
.LVL9:
	jz.t	%d15, 2, .L14
	.loc 1 82 0
	ld.w	%d15, [%a15] 8
.LVL10:
	.loc 1 83 0
	ld.w	%d5, [%a15] 12
.LVL11:
	j	.L5
.LVL12:
.L14:
	.loc 1 85 0
	ld.w	%d15, [%a15] 16
.LVL13:
	.loc 1 86 0
	ld.w	%d5, [%a15] 20
.LVL14:
	j	.L5
.LVL15:
.L16:
	.loc 1 67 0
	movh	%d15, 16898
	.loc 1 68 0
	movh	%d2, 17739
	.loc 1 67 0
	addi	%d15, %d15, -26215
	.loc 1 68 0
	addi	%d2, %d2, -32768
	j	.L2
.LVL16:
.L17:
	.loc 1 98 0
	mov	%d3, 5338
	.loc 1 104 0
	st.w	[%a15] 28, %d2
	.loc 1 105 0
	st.w	[%a15] 32, %d15
	.loc 1 98 0
	st.h	[%a3] lo:HsfbMeas_Param, %d3
	.loc 1 106 0
	ret
.LFE202:
	.size	HsfbMeas_Calibration, .-HsfbMeas_Calibration
	.section .text.MPU_QM_CODE,"ax",@progbits
	.align 3
	.global	HsfbMeas_InitOffsetCheck
	.type	HsfbMeas_InitOffsetCheck, @function
HsfbMeas_InitOffsetCheck:
.LFB203:
	.loc 1 117 0
.LVL17:
	.loc 1 122 0
	movh.a	%a15, hi:HsfbMeas_InitOffset
	ld.h	%d15, [%a15] lo:HsfbMeas_InitOffset
	mov	%d2, 2249
	jge	%d15, %d2, .L20
	.loc 1 123 0
	mov	%d2, 1848
	.loc 1 124 0
	max	%d15, %d15, %d2
.LVL18:
	.loc 1 130 0
	st.h	[%a15] lo:HsfbMeas_InitOffset, %d15
	.loc 1 131 0
	ret
.LVL19:
.L20:
	.loc 1 121 0
	mov	%d15, 2248
.LVL20:
	.loc 1 130 0
	st.h	[%a15] lo:HsfbMeas_InitOffset, %d15
	.loc 1 131 0
	ret
.LFE203:
	.size	HsfbMeas_InitOffsetCheck, .-HsfbMeas_InitOffsetCheck
	.section .code_ram,"ax",@progbits
	.align 3
	.global	HsfbMeas_Call100us
	.type	HsfbMeas_Call100us, @function
HsfbMeas_Call100us:
.LFB204:
	.loc 1 143 0
.LVL21:
	.loc 1 146 0
	movh.a	%a2, hi:HsfbMeas_Param
	lea	%a15, [%a2] lo:HsfbMeas_Param
	.loc 1 145 0
	ld.h	%d15, [%a4]0
	ld.h	%d6, [%a15] 2
	.loc 1 150 0
	ld.h	%d5, [%a15] 10
	.loc 1 145 0
	sub	%d6, %d15, %d6
	extr	%d6, %d6, 0, 16
	.loc 1 146 0
	ld.h	%d15, [%a2] lo:HsfbMeas_Param
	.loc 1 155 0
	ld.h	%d4, [%a15] 18
	.loc 1 145 0
	mul	%d6, %d15
	.loc 1 149 0
	ld.w	%d15, [%a15] 4
	.loc 1 160 0
	ld.h	%d3, [%a15] 26
	.loc 1 145 0
	extr	%d6, %d6, 12, 16
.LVL22:
	.loc 1 165 0
	ld.h	%d2, [%a15] 34
	.loc 1 171 0
	ld.h	%d7, [%a15] 42
	.loc 1 177 0
	movh.a	%a2, hi:HsfbMeas_Filter
	.loc 1 148 0
	st.h	[%a5]0, %d6
	.loc 1 149 0
	itof	%d6, %d6
.LVL23:
	mul.f	%d15, %d6, %d15
	st.w	[%a5] 4, %d15
	.loc 1 150 0
	ld.h	%d15, [%a4] 2
	sub	%d5, %d15, %d5
	extr	%d5, %d5, 0, 16
	.loc 1 151 0
	ld.h	%d15, [%a15] 8
	.loc 1 150 0
	mul	%d5, %d15
	.loc 1 154 0
	ld.w	%d15, [%a15] 12
	.loc 1 150 0
	extr	%d5, %d5, 12, 16
.LVL24:
	.loc 1 153 0
	st.h	[%a5] 8, %d5
	.loc 1 154 0
	itof	%d5, %d5
.LVL25:
	mul.f	%d15, %d5, %d15
	st.w	[%a5] 12, %d15
	.loc 1 155 0
	ld.h	%d15, [%a4] 4
	sub	%d4, %d15, %d4
	extr	%d4, %d4, 0, 16
	.loc 1 156 0
	ld.h	%d15, [%a15] 16
	.loc 1 155 0
	mul	%d4, %d15
	.loc 1 159 0
	ld.w	%d15, [%a15] 20
	.loc 1 155 0
	extr	%d4, %d4, 12, 16
.LVL26:
	.loc 1 158 0
	st.h	[%a5] 16, %d4
	.loc 1 159 0
	itof	%d4, %d4
.LVL27:
	mul.f	%d15, %d4, %d15
	st.w	[%a5] 20, %d15
	.loc 1 160 0
	ld.h	%d15, [%a4] 6
	sub	%d3, %d15, %d3
	extr	%d3, %d3, 0, 16
	.loc 1 161 0
	ld.h	%d15, [%a15] 24
	.loc 1 160 0
	mul	%d3, %d15
	.loc 1 164 0
	ld.w	%d15, [%a15] 28
	.loc 1 160 0
	extr	%d3, %d3, 12, 16
.LVL28:
	.loc 1 163 0
	st.h	[%a5] 24, %d3
	.loc 1 164 0
	itof	%d3, %d3
.LVL29:
	mul.f	%d15, %d3, %d15
	st.w	[%a5] 28, %d15
	.loc 1 165 0
	ld.h	%d15, [%a4] 8
	sub	%d2, %d15, %d2
	extr	%d2, %d2, 0, 16
	.loc 1 166 0
	ld.h	%d15, [%a15] 32
	.loc 1 165 0
	mul	%d2, %d15
	.loc 1 169 0
	ld.w	%d15, [%a15] 36
	.loc 1 165 0
	extr	%d2, %d2, 12, 16
.LVL30:
	.loc 1 168 0
	st.h	[%a5] 32, %d2
	.loc 1 169 0
	itof	%d2, %d2
.LVL31:
	mul.f	%d15, %d2, %d15
	st.w	[%a5] 36, %d15
	.loc 1 171 0
	ld.h	%d15, [%a4] 10
	sub	%d15, %d7
	extr	%d15, %d15, 0, 16
	.loc 1 172 0
	ld.h	%d7, [%a15] 40
	.loc 1 171 0
	mul	%d15, %d7
	extr	%d15, %d15, 12, 16
.LVL32:
	.loc 1 174 0
	st.h	[%a5] 40, %d15
	.loc 1 175 0
	itof	%d15, %d15
.LVL33:
	ld.w	%d7, [%a15] 44
	.loc 1 177 0
	lea	%a15, [%a2] lo:HsfbMeas_Filter
	.loc 1 175 0
	mul.f	%d7, %d15, %d7
	st.w	[%a5] 44, %d7
	.loc 1 177 0
	ld.w	%d7, [%a15] 20
	.loc 1 176 0
	sub.f	%d0, %d15, %d7
	movh	%d15, 15363
	addi	%d15, %d15, 4719
	madd.f	%d7, %d7, %d0, %d15
	st.w	[%a15] 20, %d7
	.loc 1 179 0
	ld.w	%d7, [%a2] lo:HsfbMeas_Filter
	.loc 1 178 0
	sub.f	%d6, %d6, %d7
	madd.f	%d6, %d7, %d6, %d15
	st.w	[%a2] lo:HsfbMeas_Filter, %d6
	.loc 1 180 0
	ld.w	%d6, [%a15] 4
	sub.f	%d5, %d5, %d6
	madd.f	%d5, %d6, %d5, %d15
	st.w	[%a15] 4, %d5
	.loc 1 183 0
	ld.w	%d5, [%a15] 8
	.loc 1 182 0
	sub.f	%d4, %d4, %d5
	madd.f	%d4, %d5, %d4, %d15
	st.w	[%a15] 8, %d4
	.loc 1 185 0
	ld.w	%d4, [%a15] 12
	.loc 1 184 0
	sub.f	%d3, %d3, %d4
	madd.f	%d3, %d4, %d3, %d15
	st.w	[%a15] 12, %d3
	.loc 1 187 0
	ld.w	%d3, [%a15] 16
	.loc 1 186 0
	sub.f	%d2, %d2, %d3
	madd.f	%d15, %d3, %d2, %d15
	st.w	[%a15] 16, %d15
	.loc 1 188 0
	ret
.LFE204:
	.size	HsfbMeas_Call100us, .-HsfbMeas_Call100us
	.align 3
	.global	HsfbMeas_Call15us
	.type	HsfbMeas_Call15us, @function
HsfbMeas_Call15us:
.LFB205:
	.loc 1 200 0
.LVL34:
	.loc 1 203 0
	movh.a	%a2, hi:HsfbMeas_Param
	lea	%a15, [%a2] lo:HsfbMeas_Param
	.loc 1 202 0
	ld.h	%d2, [%a4]0
	ld.h	%d15, [%a15] 2
	sub	%d15, %d2, %d15
	extr	%d15, %d15, 0, 16
	.loc 1 203 0
	ld.h	%d2, [%a2] lo:HsfbMeas_Param
	.loc 1 202 0
	mul	%d15, %d2
	.loc 1 206 0
	ld.w	%d2, [%a15] 4
	.loc 1 202 0
	extr	%d15, %d15, 12, 16
.LVL35:
	.loc 1 205 0
	st.h	[%a5]0, %d15
	.loc 1 206 0
	itof	%d15, %d15
.LVL36:
	mul.f	%d15, %d15, %d2
	.loc 1 207 0
	ld.h	%d2, [%a4] 2
	.loc 1 206 0
	st.w	[%a5] 4, %d15
	.loc 1 207 0
	ld.h	%d15, [%a15] 10
	sub	%d15, %d2, %d15
	extr	%d15, %d15, 0, 16
	.loc 1 208 0
	ld.h	%d2, [%a15] 8
	.loc 1 207 0
	mul	%d15, %d2
	.loc 1 210 0
	ld.w	%d2, [%a15] 12
	.loc 1 207 0
	extr	%d15, %d15, 12, 16
.LVL37:
	.loc 1 209 0
	st.h	[%a5] 8, %d15
	.loc 1 210 0
	itof	%d15, %d15
.LVL38:
	mul.f	%d15, %d15, %d2
	.loc 1 211 0
	ld.h	%d2, [%a4] 4
	.loc 1 210 0
	st.w	[%a5] 12, %d15
	.loc 1 211 0
	ld.h	%d15, [%a15] 18
	sub	%d15, %d2, %d15
	extr	%d15, %d15, 0, 16
	.loc 1 212 0
	ld.h	%d2, [%a15] 16
	.loc 1 211 0
	mul	%d15, %d2
	.loc 1 215 0
	ld.w	%d2, [%a15] 20
	.loc 1 211 0
	extr	%d15, %d15, 12, 16
.LVL39:
	.loc 1 214 0
	st.h	[%a5] 16, %d15
	.loc 1 215 0
	itof	%d15, %d15
.LVL40:
	mul.f	%d15, %d15, %d2
	.loc 1 216 0
	ld.h	%d2, [%a15] 26
	.loc 1 215 0
	st.w	[%a5] 20, %d15
	.loc 1 216 0
	ld.h	%d15, [%a4] 6
	sub	%d15, %d2
	extr	%d15, %d15, 0, 16
	.loc 1 217 0
	ld.h	%d2, [%a15] 24
	.loc 1 216 0
	mul	%d15, %d2
	.loc 1 220 0
	ld.w	%d2, [%a15] 28
	.loc 1 216 0
	extr	%d15, %d15, 12, 16
.LVL41:
	.loc 1 219 0
	st.h	[%a5] 24, %d15
	.loc 1 220 0
	itof	%d15, %d15
.LVL42:
	mul.f	%d15, %d15, %d2
	st.w	[%a5] 28, %d15
	.loc 1 221 0
	ret
.LFE205:
	.size	HsfbMeas_Call15us, .-HsfbMeas_Call15us
	.section .text.MPU_ASIL_CODE
	.align 3
	.global	HsfbMeas_Call1ms
	.type	HsfbMeas_Call1ms, @function
HsfbMeas_Call1ms:
.LFB206:
	.loc 1 234 0
.LVL43:
	.loc 1 243 0
	movh.a	%a15, hi:HsfbMeas_PwmStatus15us
	st.a	[%a15] lo:HsfbMeas_PwmStatus15us, %a5
	.loc 1 245 0
	movh.a	%a15, hi:HsfbMeas_Param
	lea	%a15, [%a15] lo:HsfbMeas_Param
	.loc 1 244 0
	ld.h	%d15, [%a4] 12
	ld.h	%d13, [%a15] 50
	.loc 1 246 0
	movh.a	%a13, hi:HsfbMeas_DW
	.loc 1 244 0
	sub	%d13, %d15, %d13
	extr	%d13, %d13, 0, 16
	.loc 1 245 0
	ld.h	%d15, [%a15] 48
	.loc 1 246 0
	ld.w	%d2, [%a13] lo:HsfbMeas_DW
	.loc 1 244 0
	mul	%d13, %d15
	movh	%d15, 16026
	addi	%d15, %d15, -26214
	extr	%d13, %d13, 12, 16
	.loc 1 251 0
	ld.h	%d12, [%a15] 58
	.loc 1 244 0
	itof	%d13, %d13
	.loc 1 246 0
	lea	%a12, [%a13] lo:HsfbMeas_DW
	sub.f	%d13, %d13, %d2
	.loc 1 258 0
	ld.h	%d11, [%a15] 66
	.loc 1 244 0
	madd.f	%d13, %d2, %d13, %d15
.LVL44:
	.loc 1 265 0
	ld.h	%d10, [%a15] 74
	.loc 1 272 0
	ld.h	%d9, [%a15] 82
	.loc 1 248 0
	ftoiz	%d2, %d13
	.loc 1 293 0
	movh.a	%a3, hi:HsfbMeas_Filter
	.loc 1 248 0
	extr	%d3, %d2, 0, 16
.LVL45:
	.loc 1 293 0
	lea	%a2, [%a3] lo:HsfbMeas_Filter
	.loc 1 249 0
	st.h	[%a6] 48, %d2
	.loc 1 250 0
	itof	%d2, %d3
.LVL46:
	ld.w	%d3, [%a15] 52
	mul.f	%d2, %d2, %d3
	.loc 1 251 0
	ld.h	%d3, [%a4] 14
	sub	%d12, %d3, %d12
	extr	%d12, %d12, 0, 16
	.loc 1 252 0
	ld.h	%d3, [%a15] 56
	.loc 1 250 0
	st.w	[%a6] 52, %d2
	.loc 1 251 0
	mul	%d12, %d3
	.loc 1 253 0
	ld.w	%d2, [%a12] 4
	.loc 1 251 0
	extr	%d12, %d12, 12, 16
	itof	%d12, %d12
	.loc 1 253 0
	sub.f	%d12, %d12, %d2
	.loc 1 251 0
	madd.f	%d12, %d2, %d12, %d15
.LVL47:
	.loc 1 255 0
	ftoiz	%d2, %d12
	extr	%d3, %d2, 0, 16
.LVL48:
	.loc 1 256 0
	st.h	[%a6] 56, %d2
	.loc 1 257 0
	itof	%d2, %d3
.LVL49:
	ld.w	%d3, [%a15] 60
	mul.f	%d2, %d2, %d3
	.loc 1 258 0
	ld.h	%d3, [%a4] 16
	sub	%d11, %d3, %d11
	extr	%d11, %d11, 0, 16
	.loc 1 259 0
	ld.h	%d3, [%a15] 64
	.loc 1 257 0
	st.w	[%a6] 60, %d2
	.loc 1 258 0
	mul	%d11, %d3
	.loc 1 260 0
	ld.w	%d2, [%a12] 8
	.loc 1 258 0
	extr	%d11, %d11, 12, 16
	itof	%d11, %d11
	.loc 1 260 0
	sub.f	%d11, %d11, %d2
	.loc 1 258 0
	madd.f	%d11, %d2, %d11, %d15
.LVL50:
	.loc 1 262 0
	ftoiz	%d2, %d11
	extr	%d3, %d2, 0, 16
.LVL51:
	.loc 1 263 0
	st.h	[%a6] 64, %d2
	.loc 1 264 0
	itof	%d2, %d3
.LVL52:
	ld.w	%d3, [%a15] 68
	mul.f	%d2, %d2, %d3
	.loc 1 265 0
	ld.h	%d3, [%a4] 18
	sub	%d10, %d3, %d10
	extr	%d10, %d10, 0, 16
	.loc 1 266 0
	ld.h	%d3, [%a15] 72
	.loc 1 264 0
	st.w	[%a6] 68, %d2
	.loc 1 265 0
	mul	%d10, %d3
	.loc 1 267 0
	ld.w	%d2, [%a12] 12
	.loc 1 265 0
	extr	%d10, %d10, 12, 16
	itof	%d10, %d10
	.loc 1 267 0
	sub.f	%d10, %d10, %d2
	.loc 1 265 0
	madd.f	%d10, %d2, %d10, %d15
.LVL53:
	.loc 1 269 0
	ftoiz	%d2, %d10
	extr	%d3, %d2, 0, 16
.LVL54:
	.loc 1 270 0
	st.h	[%a6] 72, %d2
	.loc 1 271 0
	itof	%d2, %d3
.LVL55:
	ld.w	%d3, [%a15] 76
	mul.f	%d2, %d2, %d3
	.loc 1 272 0
	ld.h	%d3, [%a4] 20
	sub	%d9, %d3, %d9
	extr	%d9, %d9, 0, 16
	.loc 1 273 0
	ld.h	%d3, [%a15] 80
	.loc 1 271 0
	st.w	[%a6] 76, %d2
	.loc 1 272 0
	mul	%d9, %d3
	.loc 1 274 0
	ld.w	%d2, [%a12] 16
	.loc 1 272 0
	extr	%d9, %d9, 12, 16
	itof	%d9, %d9
	.loc 1 274 0
	sub.f	%d9, %d9, %d2
	.loc 1 272 0
	madd.f	%d9, %d2, %d9, %d15
.LVL56:
	.loc 1 276 0
	ftoiz	%d2, %d9
	extr	%d3, %d2, 0, 16
.LVL57:
	.loc 1 277 0
	st.h	[%a6] 80, %d2
	.loc 1 278 0
	itof	%d2, %d3
.LVL58:
	ld.w	%d3, [%a15] 84
	.loc 1 279 0
	ld.h	%d8, [%a15] 90
	.loc 1 278 0
	mul.f	%d2, %d2, %d3
	.loc 1 279 0
	ld.h	%d3, [%a4] 22
	.loc 1 286 0
	ld.h	%d4, [%a15] 98
	.loc 1 279 0
	sub	%d8, %d3, %d8
	extr	%d8, %d8, 0, 16
	.loc 1 280 0
	ld.h	%d3, [%a15] 88
	.loc 1 278 0
	st.w	[%a6] 84, %d2
	.loc 1 279 0
	mul	%d8, %d3
	.loc 1 281 0
	ld.w	%d2, [%a12] 20
	.loc 1 279 0
	extr	%d8, %d8, 12, 16
	itof	%d8, %d8
	.loc 1 281 0
	sub.f	%d8, %d8, %d2
	.loc 1 279 0
	madd.f	%d8, %d2, %d8, %d15
.LVL59:
	.loc 1 283 0
	ftoiz	%d2, %d8
	extr	%d3, %d2, 0, 16
.LVL60:
	.loc 1 284 0
	st.h	[%a6] 88, %d2
	.loc 1 285 0
	itof	%d2, %d3
.LVL61:
	ld.w	%d3, [%a15] 92
	mul.f	%d2, %d2, %d3
	.loc 1 286 0
	ld.h	%d3, [%a4] 24
	sub	%d3, %d4
	extr	%d3, %d3, 0, 16
	.loc 1 287 0
	ld.h	%d4, [%a15] 96
	.loc 1 285 0
	st.w	[%a6] 92, %d2
	.loc 1 286 0
	mul	%d3, %d4
	.loc 1 288 0
	ld.w	%d2, [%a12] 24
	.loc 1 286 0
	extr	%d3, %d3, 12, 16
	itof	%d3, %d3
	.loc 1 288 0
	sub.f	%d3, %d3, %d2
	.loc 1 286 0
	madd.f	%d15, %d2, %d3, %d15
.LVL62:
	.loc 1 290 0
	ftoiz	%d2, %d15
	extr	%d3, %d2, 0, 16
.LVL63:
	.loc 1 291 0
	st.h	[%a6] 96, %d2
	.loc 1 292 0
	itof	%d2, %d3
.LVL64:
	ld.w	%d3, [%a15] 100
	mul.f	%d2, %d2, %d3
	st.w	[%a6] 100, %d2
	.loc 1 293 0
	ld.w	%d2, [%a3] lo:HsfbMeas_Filter
	ftoiz	%d2, %d2
	extr	%d3, %d2, 0, 16
.LVL65:
	.loc 1 294 0
	st.h	[%a6]0, %d2
	.loc 1 295 0
	itof	%d2, %d3
.LVL66:
	ld.w	%d3, [%a15] 4
	mul.f	%d2, %d2, %d3
	st.w	[%a6] 4, %d2
	.loc 1 296 0
	ld.w	%d2, [%a2] 4
	ftoiz	%d2, %d2
	extr	%d3, %d2, 0, 16
.LVL67:
	.loc 1 297 0
	st.h	[%a6] 8, %d2
	.loc 1 298 0
	itof	%d2, %d3
.LVL68:
	ld.w	%d3, [%a15] 12
	mul.f	%d2, %d2, %d3
	st.w	[%a6] 12, %d2
	.loc 1 299 0
	ld.w	%d2, [%a2] 8
	ftoiz	%d2, %d2
	extr	%d3, %d2, 0, 16
.LVL69:
	.loc 1 300 0
	st.h	[%a6] 16, %d2
	.loc 1 301 0
	itof	%d2, %d3
.LVL70:
	ld.w	%d3, [%a15] 20
	mul.f	%d2, %d2, %d3
	st.w	[%a6] 20, %d2
	.loc 1 302 0
	ld.w	%d2, [%a2] 12
	ftoiz	%d2, %d2
	extr	%d3, %d2, 0, 16
.LVL71:
	.loc 1 303 0
	st.h	[%a6] 24, %d2
	.loc 1 304 0
	itof	%d2, %d3
.LVL72:
	ld.w	%d3, [%a15] 28
	mul.f	%d2, %d2, %d3
	st.w	[%a6] 28, %d2
	.loc 1 305 0
	ld.w	%d2, [%a2] 16
	ftoiz	%d2, %d2
	extr	%d3, %d2, 0, 16
.LVL73:
	.loc 1 306 0
	st.h	[%a6] 32, %d2
	.loc 1 307 0
	itof	%d2, %d3
.LVL74:
	ld.w	%d3, [%a15] 36
	mul.f	%d2, %d2, %d3
	st.w	[%a6] 36, %d2
	.loc 1 308 0
	ld.w	%d2, [%a2] 20
	ftoiz	%d2, %d2
	extr	%d3, %d2, 0, 16
.LVL75:
	.loc 1 309 0
	st.h	[%a6] 40, %d2
	.loc 1 310 0
	itof	%d2, %d3
.LVL76:
	ld.w	%d3, [%a15] 44
	mul.f	%d2, %d2, %d3
	st.w	[%a6] 44, %d2
	.loc 1 311 0
	call	HsfbMeas_Calibration
.LVL77:
	.loc 1 312 0
	st.w	[%a13] lo:HsfbMeas_DW, %d13
	.loc 1 313 0
	st.w	[%a12] 4, %d12
	.loc 1 314 0
	st.w	[%a12] 8, %d11
	.loc 1 315 0
	st.w	[%a12] 12, %d10
	.loc 1 316 0
	st.w	[%a12] 16, %d9
	.loc 1 317 0
	st.w	[%a12] 20, %d8
	.loc 1 318 0
	st.w	[%a12] 24, %d15
	.loc 1 319 0
	ret
.LFE206:
	.size	HsfbMeas_Call1ms, .-HsfbMeas_Call1ms
	.section .text.MPU_QM_CODE
	.align 3
	.global	HsfbMeas_CallInit
	.type	HsfbMeas_CallInit, @function
HsfbMeas_CallInit:
.LFB207:
	.loc 1 330 0
	.loc 1 331 0
	movh.a	%a15, hi:HsfbMeas_InitOffset
	lea	%a4, [%a15] lo:HsfbMeas_InitOffset
	call	HsfbMeas_GetInitOffset
.LVL78:
.LBB4:
.LBB5:
	.loc 1 122 0
	ld.h	%d15, [%a15] lo:HsfbMeas_InitOffset
	mov	%d2, 2249
	jge	%d15, %d2, .L29
	.loc 1 123 0
	mov	%d2, 1848
	.loc 1 124 0
	max	%d15, %d15, %d2
.L26:
.LVL79:
	.loc 1 130 0
	st.h	[%a15] lo:HsfbMeas_InitOffset, %d15
.LBE5:
.LBE4:
	.loc 1 333 0
	movh.a	%a15, hi:Main_HwVer
	lea	%a15, [%a15] lo:Main_HwVer
	ld.hu	%d15, [%a15] 18
.LVL80:
	.loc 1 334 0
	movh.a	%a2, hi:HsfbMeas_Param
	lea	%a15, [%a2] lo:HsfbMeas_Param
	.loc 1 333 0
	jeq	%d15, 1, .L32
	.loc 1 377 0
	mov	%d2, 21111
	.loc 1 380 0
	mov	%d4, 12153
	.loc 1 376 0
	movh	%d3, 15396
	.loc 1 377 0
	st.h	[%a15] 8, %d2
	.loc 1 379 0
	movh	%d2, 15821
	addi	%d2, %d2, -13107
	.loc 1 380 0
	st.h	[%a15] 16, %d4
	.loc 1 381 0
	mov	%d4, 2048
	.loc 1 379 0
	st.w	[%a15] 12, %d2
	.loc 1 382 0
	st.w	[%a15] 20, %d2
	.loc 1 383 0
	mov	%d2, 2558
	.loc 1 376 0
	addi	%d3, %d3, -10486
	.loc 1 374 0
	mov	%d15, 5338
	.loc 1 383 0
	st.h	[%a15] 24, %d2
	.loc 1 386 0
	mov	%d2, 5284
	.loc 1 381 0
	st.h	[%a15] 18, %d4
	.loc 1 392 0
	mov	%d4, 15747
	.loc 1 386 0
	st.h	[%a15] 32, %d2
	.loc 1 389 0
	mov	%d2, 8264
	.loc 1 374 0
	st.h	[%a2] lo:HsfbMeas_Param, %d15
	.loc 1 376 0
	st.w	[%a15] 4, %d3
	.loc 1 389 0
	st.h	[%a15] 40, %d2
	.loc 1 391 0
	movh	%d2, 14979
	.loc 1 375 0
	mov	%d15, 0
	.loc 1 391 0
	addi	%d2, %d2, 4719
	.loc 1 385 0
	st.w	[%a15] 28, %d3
	.loc 1 388 0
	st.w	[%a15] 36, %d3
	.loc 1 392 0
	st.h	[%a15] 48, %d4
	.loc 1 397 0
	st.w	[%a15] 60, %d3
	.loc 1 395 0
	mov	%d4, 5500
	.loc 1 400 0
	st.w	[%a15] 68, %d3
	.loc 1 401 0
	mov	%d3, 15000
	.loc 1 375 0
	st.h	[%a15] 2, %d15
	.loc 1 378 0
	st.h	[%a15] 10, %d15
	.loc 1 384 0
	st.h	[%a15] 26, %d15
	.loc 1 387 0
	st.h	[%a15] 34, %d15
	.loc 1 390 0
	st.h	[%a15] 42, %d15
	.loc 1 391 0
	st.w	[%a15] 44, %d2
	.loc 1 393 0
	st.h	[%a15] 50, %d15
	.loc 1 394 0
	st.w	[%a15] 52, %d2
	.loc 1 395 0
	st.h	[%a15] 56, %d4
	.loc 1 396 0
	st.h	[%a15] 58, %d15
	.loc 1 398 0
	st.h	[%a15] 64, %d4
	.loc 1 399 0
	st.h	[%a15] 66, %d15
	.loc 1 401 0
	st.h	[%a15] 72, %d3
	.loc 1 402 0
	st.h	[%a15] 74, %d15
	.loc 1 403 0
	st.w	[%a15] 76, %d2
	.loc 1 404 0
	st.h	[%a15] 80, %d4
.L31:
	.loc 1 407 0
	mov	%d3, 5000
	.loc 1 405 0
	st.h	[%a15] 82, %d15
	.loc 1 406 0
	st.w	[%a15] 84, %d2
	.loc 1 407 0
	st.h	[%a15] 88, %d3
	.loc 1 408 0
	st.h	[%a15] 90, %d15
	.loc 1 409 0
	st.w	[%a15] 92, %d2
	.loc 1 410 0
	st.h	[%a15] 96, %d3
	.loc 1 411 0
	st.h	[%a15] 98, %d15
	.loc 1 412 0
	st.w	[%a15] 100, %d2
	ret
.LVL81:
.L29:
.LBB7:
.LBB6:
	.loc 1 121 0
	mov	%d15, 2248
	j	.L26
.LVL82:
.L32:
.LBE6:
.LBE7:
	.loc 1 337 0
	mov	%d2, 21111
	.loc 1 340 0
	mov	%d4, 12153
	.loc 1 336 0
	movh	%d3, 15396
	.loc 1 337 0
	st.h	[%a15] 8, %d2
	.loc 1 339 0
	movh	%d2, 15821
	addi	%d2, %d2, -13107
	.loc 1 336 0
	addi	%d3, %d3, -10486
	.loc 1 340 0
	st.h	[%a15] 16, %d4
	.loc 1 339 0
	st.w	[%a15] 12, %d2
	.loc 1 342 0
	st.w	[%a15] 20, %d2
	.loc 1 343 0
	mov	%d2, 2558
	.loc 1 341 0
	mov	%d4, 2048
	.loc 1 334 0
	mov	%d15, 5338
	.loc 1 343 0
	st.h	[%a15] 24, %d2
	.loc 1 346 0
	mov	%d2, 5284
	.loc 1 336 0
	st.w	[%a15] 4, %d3
	.loc 1 341 0
	st.h	[%a15] 18, %d4
	.loc 1 346 0
	st.h	[%a15] 32, %d2
	.loc 1 349 0
	mov	%d2, 8264
	.loc 1 352 0
	mov	%d4, 15747
	.loc 1 345 0
	st.w	[%a15] 28, %d3
	.loc 1 348 0
	st.w	[%a15] 36, %d3
	.loc 1 357 0
	st.w	[%a15] 60, %d3
	.loc 1 360 0
	st.w	[%a15] 68, %d3
	.loc 1 361 0
	mov	%d3, 15000
	.loc 1 349 0
	st.h	[%a15] 40, %d2
	.loc 1 351 0
	movh	%d2, 14979
	addi	%d2, %d2, 4719
	.loc 1 334 0
	st.h	[%a2] lo:HsfbMeas_Param, %d15
	.loc 1 352 0
	st.h	[%a15] 48, %d4
	.loc 1 335 0
	mov	%d15, 0
	.loc 1 355 0
	mov	%d4, 3240
	.loc 1 361 0
	st.h	[%a15] 72, %d3
	.loc 1 364 0
	mov	%d3, 5500
	.loc 1 335 0
	st.h	[%a15] 2, %d15
	.loc 1 338 0
	st.h	[%a15] 10, %d15
	.loc 1 344 0
	st.h	[%a15] 26, %d15
	.loc 1 347 0
	st.h	[%a15] 34, %d15
	.loc 1 350 0
	st.h	[%a15] 42, %d15
	.loc 1 351 0
	st.w	[%a15] 44, %d2
	.loc 1 353 0
	st.h	[%a15] 50, %d15
	.loc 1 354 0
	st.w	[%a15] 52, %d2
	.loc 1 355 0
	st.h	[%a15] 56, %d4
	.loc 1 356 0
	st.h	[%a15] 58, %d15
	.loc 1 358 0
	st.h	[%a15] 64, %d4
	.loc 1 359 0
	st.h	[%a15] 66, %d15
	.loc 1 362 0
	st.h	[%a15] 74, %d15
	.loc 1 363 0
	st.w	[%a15] 76, %d2
	.loc 1 364 0
	st.h	[%a15] 80, %d3
	j	.L31
.LFE207:
	.size	HsfbMeas_CallInit, .-HsfbMeas_CallInit
	.global	HsfbMeas_PwmStatus15us
	.section .bss.MPU_ASIL_VAR_NOINIT,"aw",@nobits
	.align 3
	.type	HsfbMeas_PwmStatus15us, @object
	.size	HsfbMeas_PwmStatus15us, 4
HsfbMeas_PwmStatus15us:
	.zero	4
	.global	HsfbMeas_DW
	.align 3
	.type	HsfbMeas_DW, @object
	.size	HsfbMeas_DW, 36
HsfbMeas_DW:
	.zero	36
	.global	HsfbMeas_InitOffset
	.align 3
	.type	HsfbMeas_InitOffset, @object
	.size	HsfbMeas_InitOffset, 2
HsfbMeas_InitOffset:
	.zero	2
	.global	HsfbMeas_Calib
	.align 3
	.type	HsfbMeas_Calib, @object
	.size	HsfbMeas_Calib, 56
HsfbMeas_Calib:
	.zero	56
	.global	HsfbMeas_Filter
	.align 3
	.type	HsfbMeas_Filter, @object
	.size	HsfbMeas_Filter, 52
HsfbMeas_Filter:
	.zero	52
	.global	HsfbMeas_Param
	.align 3
	.type	HsfbMeas_Param, @object
	.size	HsfbMeas_Param, 104
HsfbMeas_Param:
	.zero	104
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
.section .text,"ax",@progbits
.Letext0:
	.file 2 "../30_Bsw/Common/rtwtypes.h"
	.file 3 "../40_Appl/HsfbMeas/HsfbMeas_struct.h"
	.file 4 "../40_Appl/HsfbApp/HsfbApp_struct.h"
	.file 5 "../40_Appl/HsfbPwm/HsfbPwm_enum.h"
	.file 6 "../40_Appl/HsfbPwm/HsfbPwm_struct.h"
	.file 7 "../40_Appl/HsfbMeas/HsfbMeas.h"
	.file 8 "../30_Bsw/Common/TC21x/IfxCpu_regdef.h"
	.file 9 "../30_Bsw/Main/Main_api.h"
	.file 10 "../30_Bsw/Mpu/mpu_api.h"
	.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x1219
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.6.3 build on 2013-05-17"
	.byte	0x1
	.string	"../40_Appl/HsfbMeas/HsfbMeas.c"
	.string	"D:\\\\SVN\\\\IPB-11Kw\\\\LvDc-C01R0P0-Ceramicheater\\\\20_Make"
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_ranges0+0x30
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
	.uaword	0xc2
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x3
	.string	"uint16_T"
	.byte	0x2
	.byte	0x53
	.uaword	0xdf
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.string	"int32_T"
	.byte	0x2
	.byte	0x54
	.uaword	0x104
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x3
	.string	"real32_T"
	.byte	0x2
	.byte	0x56
	.uaword	0x12b
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
	.string	"s16"
	.byte	0x2
	.byte	0x7e
	.uaword	0xb3
	.uleb128 0x3
	.string	"u16"
	.byte	0x2
	.byte	0x7f
	.uaword	0xcf
	.uleb128 0x3
	.string	"s32"
	.byte	0x2
	.byte	0x80
	.uaword	0xf5
	.uleb128 0x3
	.string	"f32"
	.byte	0x2
	.byte	0x82
	.uaword	0x11b
	.uleb128 0x4
	.byte	0x8
	.byte	0x3
	.byte	0xe
	.uaword	0x1ae
	.uleb128 0x5
	.string	"Data"
	.byte	0x3
	.byte	0xf
	.uaword	0x15b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"Real"
	.byte	0x3
	.byte	0x10
	.uaword	0x17c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x3
	.string	"HSFBMEAS_S_STATUSDATA"
	.byte	0x3
	.byte	0x11
	.uaword	0x187
	.uleb128 0x4
	.byte	0x8
	.byte	0x3
	.byte	0x13
	.uaword	0x205
	.uleb128 0x5
	.string	"Gain"
	.byte	0x3
	.byte	0x14
	.uaword	0x15b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"Offset"
	.byte	0x3
	.byte	0x15
	.uaword	0x15b
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x5
	.string	"Factor"
	.byte	0x3
	.byte	0x16
	.uaword	0x17c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x3
	.string	"HSFBMEAS_S_PARAMDATA"
	.byte	0x3
	.byte	0x17
	.uaword	0x1cb
	.uleb128 0x4
	.byte	0x8
	.byte	0x3
	.byte	0x19
	.uaword	0x24a
	.uleb128 0x5
	.string	"Gain"
	.byte	0x3
	.byte	0x1a
	.uaword	0x17c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"Offset"
	.byte	0x3
	.byte	0x1b
	.uaword	0x17c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x3
	.string	"HSFBMEAS_S_CALIBDATA"
	.byte	0x3
	.byte	0x1c
	.uaword	0x221
	.uleb128 0x4
	.byte	0x20
	.byte	0x3
	.byte	0x1e
	.uaword	0x2a7
	.uleb128 0x6
	.uaword	.LASF0
	.byte	0x3
	.byte	0x1f
	.uaword	0x1ae
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"Vin"
	.byte	0x3
	.byte	0x20
	.uaword	0x1ae
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.uaword	.LASF1
	.byte	0x3
	.byte	0x21
	.uaword	0x1ae
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.uaword	.LASF2
	.byte	0x3
	.byte	0x22
	.uaword	0x1ae
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0
	.uleb128 0x3
	.string	"HSFBMEAS_S_STATUS15US"
	.byte	0x3
	.byte	0x23
	.uaword	0x266
	.uleb128 0x4
	.byte	0x30
	.byte	0x3
	.byte	0x25
	.uaword	0x321
	.uleb128 0x6
	.uaword	.LASF0
	.byte	0x3
	.byte	0x26
	.uaword	0x1ae
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"Vin"
	.byte	0x3
	.byte	0x27
	.uaword	0x1ae
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.uaword	.LASF1
	.byte	0x3
	.byte	0x28
	.uaword	0x1ae
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.uaword	.LASF2
	.byte	0x3
	.byte	0x29
	.uaword	0x1ae
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.uaword	.LASF3
	.byte	0x3
	.byte	0x2a
	.uaword	0x1ae
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.uaword	.LASF4
	.byte	0x3
	.byte	0x2b
	.uaword	0x1ae
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.string	"HSFBMEAS_S_STATUS100US"
	.byte	0x3
	.byte	0x2c
	.uaword	0x2c4
	.uleb128 0x4
	.byte	0x68
	.byte	0x3
	.byte	0x2e
	.uaword	0x3ff
	.uleb128 0x6
	.uaword	.LASF0
	.byte	0x3
	.byte	0x2f
	.uaword	0x1ae
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"Vin"
	.byte	0x3
	.byte	0x30
	.uaword	0x1ae
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.uaword	.LASF1
	.byte	0x3
	.byte	0x31
	.uaword	0x1ae
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.uaword	.LASF2
	.byte	0x3
	.byte	0x32
	.uaword	0x1ae
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.uaword	.LASF3
	.byte	0x3
	.byte	0x33
	.uaword	0x1ae
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.uaword	.LASF4
	.byte	0x3
	.byte	0x34
	.uaword	0x1ae
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x5
	.string	"Vaux"
	.byte	0x3
	.byte	0x35
	.uaword	0x1ae
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x6
	.uaword	.LASF5
	.byte	0x3
	.byte	0x36
	.uaword	0x1ae
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x6
	.uaword	.LASF6
	.byte	0x3
	.byte	0x37
	.uaword	0x1ae
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x6
	.uaword	.LASF7
	.byte	0x3
	.byte	0x38
	.uaword	0x1ae
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x6
	.uaword	.LASF8
	.byte	0x3
	.byte	0x39
	.uaword	0x1ae
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x6
	.uaword	.LASF9
	.byte	0x3
	.byte	0x3a
	.uaword	0x1ae
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x6
	.uaword	.LASF10
	.byte	0x3
	.byte	0x3b
	.uaword	0x1ae
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.byte	0
	.uleb128 0x3
	.string	"HSFBMEAS_S_STATUS1MS"
	.byte	0x3
	.byte	0x3c
	.uaword	0x33f
	.uleb128 0x4
	.byte	0x68
	.byte	0x3
	.byte	0x3e
	.uaword	0x4db
	.uleb128 0x6
	.uaword	.LASF0
	.byte	0x3
	.byte	0x3f
	.uaword	0x205
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"Vin"
	.byte	0x3
	.byte	0x40
	.uaword	0x205
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.uaword	.LASF1
	.byte	0x3
	.byte	0x41
	.uaword	0x205
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.uaword	.LASF2
	.byte	0x3
	.byte	0x42
	.uaword	0x205
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.uaword	.LASF3
	.byte	0x3
	.byte	0x43
	.uaword	0x205
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.uaword	.LASF4
	.byte	0x3
	.byte	0x44
	.uaword	0x205
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x5
	.string	"Vaux"
	.byte	0x3
	.byte	0x45
	.uaword	0x205
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x6
	.uaword	.LASF5
	.byte	0x3
	.byte	0x46
	.uaword	0x205
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x6
	.uaword	.LASF6
	.byte	0x3
	.byte	0x47
	.uaword	0x205
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x6
	.uaword	.LASF7
	.byte	0x3
	.byte	0x48
	.uaword	0x205
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x6
	.uaword	.LASF8
	.byte	0x3
	.byte	0x49
	.uaword	0x205
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x6
	.uaword	.LASF9
	.byte	0x3
	.byte	0x4a
	.uaword	0x205
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x6
	.uaword	.LASF10
	.byte	0x3
	.byte	0x4b
	.uaword	0x205
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.byte	0
	.uleb128 0x3
	.string	"HSFBMEAS_S_PARAM"
	.byte	0x3
	.byte	0x4c
	.uaword	0x41b
	.uleb128 0x4
	.byte	0x34
	.byte	0x3
	.byte	0x4e
	.uaword	0x5b3
	.uleb128 0x6
	.uaword	.LASF0
	.byte	0x3
	.byte	0x4f
	.uaword	0x17c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"Vin"
	.byte	0x3
	.byte	0x50
	.uaword	0x17c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.uaword	.LASF1
	.byte	0x3
	.byte	0x51
	.uaword	0x17c
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.uaword	.LASF2
	.byte	0x3
	.byte	0x52
	.uaword	0x17c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.uaword	.LASF3
	.byte	0x3
	.byte	0x53
	.uaword	0x17c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.uaword	.LASF4
	.byte	0x3
	.byte	0x54
	.uaword	0x17c
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x5
	.string	"Vaux"
	.byte	0x3
	.byte	0x55
	.uaword	0x17c
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.uaword	.LASF5
	.byte	0x3
	.byte	0x56
	.uaword	0x17c
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.uaword	.LASF6
	.byte	0x3
	.byte	0x57
	.uaword	0x17c
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.uaword	.LASF7
	.byte	0x3
	.byte	0x58
	.uaword	0x17c
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.uaword	.LASF8
	.byte	0x3
	.byte	0x59
	.uaword	0x17c
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.uaword	.LASF9
	.byte	0x3
	.byte	0x5a
	.uaword	0x17c
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.uaword	.LASF10
	.byte	0x3
	.byte	0x5b
	.uaword	0x17c
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.byte	0
	.uleb128 0x3
	.string	"HSFBMEAS_S_FILTER"
	.byte	0x3
	.byte	0x5c
	.uaword	0x4f3
	.uleb128 0x4
	.byte	0x38
	.byte	0x3
	.byte	0x5e
	.uaword	0x656
	.uleb128 0x5
	.string	"Vin_P1"
	.byte	0x3
	.byte	0x5f
	.uaword	0x24a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"Vin_P2"
	.byte	0x3
	.byte	0x60
	.uaword	0x24a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"Vin_P3"
	.byte	0x3
	.byte	0x61
	.uaword	0x24a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.uaword	.LASF1
	.byte	0x3
	.byte	0x62
	.uaword	0x24a
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.uaword	.LASF2
	.byte	0x3
	.byte	0x63
	.uaword	0x24a
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.uaword	.LASF5
	.byte	0x3
	.byte	0x64
	.uaword	0x24a
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x5
	.string	"Vin_OP1"
	.byte	0x3
	.byte	0x65
	.uaword	0x17c
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x5
	.string	"Vin_OP2"
	.byte	0x3
	.byte	0x66
	.uaword	0x17c
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.string	"HSFBMEAS_S_CALIB"
	.byte	0x3
	.byte	0x67
	.uaword	0x5cc
	.uleb128 0x4
	.byte	0x2
	.byte	0x3
	.byte	0x69
	.uaword	0x685
	.uleb128 0x6
	.uaword	.LASF1
	.byte	0x3
	.byte	0x6a
	.uaword	0x15b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"HSFBMEAS_S_INITOFFSET"
	.byte	0x3
	.byte	0x6b
	.uaword	0x66e
	.uleb128 0x4
	.byte	0x26
	.byte	0x4
	.byte	0x38
	.uaword	0x7da
	.uleb128 0x6
	.uaword	.LASF0
	.byte	0x4
	.byte	0x39
	.uaword	0x15b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"Vin"
	.byte	0x4
	.byte	0x3a
	.uaword	0x15b
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x6
	.uaword	.LASF1
	.byte	0x4
	.byte	0x3b
	.uaword	0x15b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.uaword	.LASF2
	.byte	0x4
	.byte	0x3c
	.uaword	0x15b
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x6
	.uaword	.LASF3
	.byte	0x4
	.byte	0x3d
	.uaword	0x15b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.uaword	.LASF4
	.byte	0x4
	.byte	0x3e
	.uaword	0x15b
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x5
	.string	"Vaux"
	.byte	0x4
	.byte	0x3f
	.uaword	0x15b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.uaword	.LASF5
	.byte	0x4
	.byte	0x40
	.uaword	0x15b
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0x6
	.uaword	.LASF6
	.byte	0x4
	.byte	0x41
	.uaword	0x15b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.uaword	.LASF7
	.byte	0x4
	.byte	0x42
	.uaword	0x15b
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.uleb128 0x6
	.uaword	.LASF8
	.byte	0x4
	.byte	0x43
	.uaword	0x15b
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.uaword	.LASF9
	.byte	0x4
	.byte	0x44
	.uaword	0x15b
	.byte	0x2
	.byte	0x23
	.uleb128 0x16
	.uleb128 0x6
	.uaword	.LASF10
	.byte	0x4
	.byte	0x45
	.uaword	0x15b
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x5
	.string	"NtcPri"
	.byte	0x4
	.byte	0x46
	.uaword	0x15b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1a
	.uleb128 0x5
	.string	"NtcSrA"
	.byte	0x4
	.byte	0x47
	.uaword	0x15b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x5
	.string	"NtcSrB"
	.byte	0x4
	.byte	0x48
	.uaword	0x15b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1e
	.uleb128 0x5
	.string	"NtcWaterIn"
	.byte	0x4
	.byte	0x49
	.uaword	0x15b
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x5
	.string	"NtcWaterOut"
	.byte	0x4
	.byte	0x4a
	.uaword	0x15b
	.byte	0x2
	.byte	0x23
	.uleb128 0x22
	.uleb128 0x5
	.string	"NtcWaterOutDiag"
	.byte	0x4
	.byte	0x4b
	.uaword	0x15b
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.byte	0
	.uleb128 0x3
	.string	"HSFBAPP_S_AI"
	.byte	0x4
	.byte	0x4c
	.uaword	0x6a2
	.uleb128 0x7
	.byte	0x4
	.byte	0x5
	.byte	0xe
	.uaword	0x877
	.uleb128 0x8
	.string	"HSFBPWM_E_STATE_None"
	.sleb128 0
	.uleb128 0x8
	.string	"HSFBPWM_E_STATE_Reset"
	.sleb128 1
	.uleb128 0x8
	.string	"HSFBPWM_E_STATE_Charge"
	.sleb128 2
	.uleb128 0x8
	.string	"HSFBPWM_E_STATE_SteadyRun"
	.sleb128 3
	.uleb128 0x8
	.string	"HSFBPWM_E_STATE_Discharge"
	.sleb128 4
	.byte	0
	.uleb128 0x3
	.string	"HSFBPWM_E_STATE"
	.byte	0x5
	.byte	0x14
	.uaword	0x7ee
	.uleb128 0x4
	.byte	0x10
	.byte	0x6
	.byte	0x1b
	.uaword	0x8e7
	.uleb128 0x5
	.string	"PwmState"
	.byte	0x6
	.byte	0x1c
	.uaword	0x877
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"Topology"
	.byte	0x6
	.byte	0x1d
	.uaword	0x166
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.string	"TopoState"
	.byte	0x6
	.byte	0x1e
	.uaword	0x17c
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"IpriPwmGain"
	.byte	0x6
	.byte	0x1f
	.uaword	0x17c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x3
	.string	"HSFBPWM_S_STATUS15US"
	.byte	0x6
	.byte	0x20
	.uaword	0x88e
	.uleb128 0x4
	.byte	0x24
	.byte	0x7
	.byte	0x1d
	.uaword	0x9ed
	.uleb128 0x5
	.string	"Delay_DSTATE"
	.byte	0x7
	.byte	0x1e
	.uaword	0x17c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"Delay_DSTATE_e"
	.byte	0x7
	.byte	0x1f
	.uaword	0x17c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.string	"Delay_DSTATE_k"
	.byte	0x7
	.byte	0x20
	.uaword	0x17c
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"Delay_DSTATE_n"
	.byte	0x7
	.byte	0x21
	.uaword	0x17c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x5
	.string	"Delay_DSTATE_b"
	.byte	0x7
	.byte	0x22
	.uaword	0x17c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x5
	.string	"Delay_DSTATE_k4"
	.byte	0x7
	.byte	0x23
	.uaword	0x17c
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x5
	.string	"Delay_DSTATE_i"
	.byte	0x7
	.byte	0x24
	.uaword	0x17c
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x5
	.string	"Delay_DSTATE_c"
	.byte	0x7
	.byte	0x25
	.uaword	0x17c
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x5
	.string	"Delay_DSTATE_kp"
	.byte	0x7
	.byte	0x26
	.uaword	0x17c
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0
	.uleb128 0x3
	.string	"DW_HsfbMeas_f_T"
	.byte	0x7
	.byte	0x27
	.uaword	0x903
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x9
	.uaword	0x10b
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.string	"long long int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.string	"long long unsigned int"
	.uleb128 0xa
	.string	"_Ifx_CPU_PSW_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x204
	.uaword	0xb43
	.uleb128 0xb
	.string	"CDC"
	.byte	0x8
	.uahalf	0x206
	.uaword	0xa10
	.byte	0x4
	.byte	0x7
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"CDE"
	.byte	0x8
	.uahalf	0x207
	.uaword	0xa10
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"GW"
	.byte	0x8
	.uahalf	0x208
	.uaword	0xa10
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"IS"
	.byte	0x8
	.uahalf	0x209
	.uaword	0xa10
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"IO"
	.byte	0x8
	.uahalf	0x20a
	.uaword	0xa10
	.byte	0x4
	.byte	0x2
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"PRS"
	.byte	0x8
	.uahalf	0x20b
	.uaword	0xa10
	.byte	0x4
	.byte	0x2
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"S"
	.byte	0x8
	.uahalf	0x20c
	.uaword	0xa10
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"reserved_15"
	.byte	0x8
	.uahalf	0x20d
	.uaword	0xa10
	.byte	0x4
	.byte	0xc
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"SAV"
	.byte	0x8
	.uahalf	0x20e
	.uaword	0xa10
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"AV"
	.byte	0x8
	.uahalf	0x20f
	.uaword	0xa10
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"SV"
	.byte	0x8
	.uahalf	0x210
	.uaword	0xa10
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"V"
	.byte	0x8
	.uahalf	0x211
	.uaword	0xa10
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"C"
	.byte	0x8
	.uahalf	0x212
	.uaword	0xa10
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_CPU_PSW_Bits"
	.byte	0x8
	.uahalf	0x213
	.uaword	0xa40
	.uleb128 0xd
	.byte	0x4
	.byte	0x8
	.uahalf	0x467
	.uaword	0xb84
	.uleb128 0xe
	.string	"U"
	.byte	0x8
	.uahalf	0x469
	.uaword	0x10b
	.uleb128 0xe
	.string	"I"
	.byte	0x8
	.uahalf	0x46a
	.uaword	0x104
	.uleb128 0xe
	.string	"B"
	.byte	0x8
	.uahalf	0x46b
	.uaword	0xb43
	.byte	0
	.uleb128 0xc
	.string	"Ifx_CPU_PSW"
	.byte	0x8
	.uahalf	0x46c
	.uaword	0xb5c
	.uleb128 0x7
	.byte	0x4
	.byte	0x9
	.byte	0x59
	.uaword	0xcd9
	.uleb128 0x8
	.string	"MAIN_E_HW_B0"
	.sleb128 0
	.uleb128 0x8
	.string	"MAIN_E_HW_B01_X10"
	.sleb128 1
	.uleb128 0x8
	.string	"MAIN_E_HW_B01_X10_DV"
	.sleb128 2
	.uleb128 0x8
	.string	"MAIN_E_HW_B02_X10"
	.sleb128 3
	.uleb128 0x8
	.string	"MAIN_E_HW_B02_X10_DV"
	.sleb128 4
	.uleb128 0x8
	.string	"MAIN_E_HW_C0"
	.sleb128 5
	.uleb128 0x8
	.string	"MAIN_E_HW_C0_DV"
	.sleb128 6
	.uleb128 0x8
	.string	"MAIN_E_HW_C1"
	.sleb128 7
	.uleb128 0x8
	.string	"MAIN_E_HW_C1_DV"
	.sleb128 8
	.uleb128 0x8
	.string	"MAIN_E_HW_C1_C01"
	.sleb128 9
	.uleb128 0x8
	.string	"MAIN_E_HW_C1_C01_DV"
	.sleb128 10
	.uleb128 0x8
	.string	"MAIN_E_HW_C1_C02"
	.sleb128 11
	.uleb128 0x8
	.string	"MAIN_E_HW_C1_C02_DV"
	.sleb128 12
	.uleb128 0x8
	.string	"MAIN_E_HW_C1_BAK13"
	.sleb128 13
	.uleb128 0x8
	.string	"MAIN_E_HW_C1_BAK14"
	.sleb128 14
	.uleb128 0x8
	.string	"MAIN_E_HW_Reserved"
	.sleb128 15
	.byte	0
	.uleb128 0x3
	.string	"MAIN_E_HW_VER"
	.byte	0x9
	.byte	0x6a
	.uaword	0xb98
	.uleb128 0x4
	.byte	0x10
	.byte	0x9
	.byte	0x6c
	.uaword	0xd6f
	.uleb128 0x5
	.string	"App"
	.byte	0x9
	.byte	0x6d
	.uaword	0x166
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"Meas"
	.byte	0x9
	.byte	0x6e
	.uaword	0x166
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x5
	.string	"Ctrl"
	.byte	0x9
	.byte	0x6f
	.uaword	0x166
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.string	"Pwm"
	.byte	0x9
	.byte	0x70
	.uaword	0x166
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x5
	.string	"Diag"
	.byte	0x9
	.byte	0x71
	.uaword	0x166
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"Ntc"
	.byte	0x9
	.byte	0x72
	.uaword	0x166
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x5
	.string	"State"
	.byte	0x9
	.byte	0x73
	.uaword	0x166
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x5
	.string	"Safety"
	.byte	0x9
	.byte	0x74
	.uaword	0x166
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.byte	0
	.uleb128 0x3
	.string	"MAIN_E_HW_VER_APP"
	.byte	0x9
	.byte	0x75
	.uaword	0xcee
	.uleb128 0x4
	.byte	0x20
	.byte	0x9
	.byte	0x77
	.uaword	0xde0
	.uleb128 0x5
	.string	"Code"
	.byte	0x9
	.byte	0x78
	.uaword	0xde0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"CodeNum"
	.byte	0x9
	.byte	0x79
	.uaword	0x166
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"VerName"
	.byte	0x9
	.byte	0x7a
	.uaword	0x166
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x5
	.string	"Ver"
	.byte	0x9
	.byte	0x7b
	.uaword	0xcd9
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x5
	.string	"App"
	.byte	0x9
	.byte	0x7c
	.uaword	0xd6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0xf
	.uaword	0x166
	.uaword	0xdf0
	.uleb128 0x10
	.uaword	0x13e
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.string	"MAIN_S_HW_VER"
	.byte	0x9
	.byte	0x7d
	.uaword	0xd88
	.uleb128 0x11
	.byte	0x1
	.string	"HsfbMeas_InitOffsetCheck"
	.byte	0x1
	.byte	0x74
	.byte	0x1
	.byte	0x1
	.uaword	0xe53
	.uleb128 0x12
	.string	"DataTypeConversion1"
	.byte	0x1
	.byte	0x76
	.uaword	0x15b
	.uleb128 0x12
	.string	"Switch2"
	.byte	0x1
	.byte	0x77
	.uaword	0x15b
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.string	"HsfbMeas_Calibration"
	.byte	0x1
	.byte	0x33
	.byte	0x1
	.uaword	.LFB202
	.uaword	.LFE202
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0xe9e
	.uleb128 0x14
	.string	"Add"
	.byte	0x1
	.byte	0x35
	.uaword	0x17c
	.uaword	.LLST0
	.uleb128 0x14
	.string	"Switch"
	.byte	0x1
	.byte	0x36
	.uaword	0x17c
	.uaword	.LLST1
	.byte	0
	.uleb128 0x15
	.uaword	0xe05
	.uaword	.LFB203
	.uaword	.LFE203
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0xec3
	.uleb128 0x16
	.uaword	0xe28
	.uahalf	0x738
	.uleb128 0x17
	.uaword	0xe43
	.uaword	.LLST2
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.string	"HsfbMeas_Call100us"
	.byte	0x1
	.byte	0x8d
	.byte	0x1
	.uaword	.LFB204
	.uaword	.LFE204
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0xf2e
	.uleb128 0x18
	.string	"AdcStatus100us"
	.byte	0x1
	.byte	0x8d
	.uaword	0xf2e
	.byte	0x1
	.byte	0x64
	.uleb128 0x18
	.string	"MeasStatus100us"
	.byte	0x1
	.byte	0x8e
	.uaword	0xf39
	.byte	0x1
	.byte	0x65
	.uleb128 0x14
	.string	"Data_c"
	.byte	0x1
	.byte	0x90
	.uaword	0x15b
	.uaword	.LLST3
	.byte	0
	.uleb128 0x19
	.byte	0x4
	.uaword	0xf34
	.uleb128 0x1a
	.uaword	0x7da
	.uleb128 0x19
	.byte	0x4
	.uaword	0x321
	.uleb128 0x13
	.byte	0x1
	.string	"HsfbMeas_Call15us"
	.byte	0x1
	.byte	0xc6
	.byte	0x1
	.uaword	.LFB205
	.uaword	.LFE205
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0xfa5
	.uleb128 0x18
	.string	"AdcStatus15us"
	.byte	0x1
	.byte	0xc6
	.uaword	0xf2e
	.byte	0x1
	.byte	0x64
	.uleb128 0x18
	.string	"MeasStatus15us"
	.byte	0x1
	.byte	0xc7
	.uaword	0xfa5
	.byte	0x1
	.byte	0x65
	.uleb128 0x14
	.string	"Data"
	.byte	0x1
	.byte	0xc9
	.uaword	0x15b
	.uaword	.LLST4
	.byte	0
	.uleb128 0x19
	.byte	0x4
	.uaword	0x2a7
	.uleb128 0x13
	.byte	0x1
	.string	"HsfbMeas_Call1ms"
	.byte	0x1
	.byte	0xe7
	.byte	0x1
	.uaword	.LFB206
	.uaword	.LFE206
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x109f
	.uleb128 0x1b
	.string	"AdcStatus1ms"
	.byte	0x1
	.byte	0xe7
	.uaword	0xf2e
	.uaword	.LLST5
	.uleb128 0x1b
	.string	"PwmStatus15us"
	.byte	0x1
	.byte	0xe8
	.uaword	0x109f
	.uaword	.LLST6
	.uleb128 0x1b
	.string	"MeasStatus1ms"
	.byte	0x1
	.byte	0xe9
	.uaword	0x10aa
	.uaword	.LLST7
	.uleb128 0x14
	.string	"Data"
	.byte	0x1
	.byte	0xeb
	.uaword	0x15b
	.uaword	.LLST8
	.uleb128 0x1c
	.string	"Add1_m0"
	.byte	0x1
	.byte	0xec
	.uaword	0x17c
	.byte	0x1
	.byte	0x5d
	.uleb128 0x1c
	.string	"Add1_lw"
	.byte	0x1
	.byte	0xed
	.uaword	0x17c
	.byte	0x1
	.byte	0x5c
	.uleb128 0x1c
	.string	"Add1_bz"
	.byte	0x1
	.byte	0xee
	.uaword	0x17c
	.byte	0x1
	.byte	0x5b
	.uleb128 0x1c
	.string	"Add1_fm"
	.byte	0x1
	.byte	0xef
	.uaword	0x17c
	.byte	0x1
	.byte	0x5a
	.uleb128 0x1c
	.string	"Add1_h"
	.byte	0x1
	.byte	0xf0
	.uaword	0x17c
	.byte	0x1
	.byte	0x59
	.uleb128 0x1c
	.string	"Add1_e"
	.byte	0x1
	.byte	0xf1
	.uaword	0x17c
	.byte	0x1
	.byte	0x58
	.uleb128 0x1c
	.string	"Add1_k"
	.byte	0x1
	.byte	0xf2
	.uaword	0x17c
	.byte	0x1
	.byte	0x5f
	.byte	0
	.uleb128 0x19
	.byte	0x4
	.uaword	0x10a5
	.uleb128 0x1a
	.uaword	0x8e7
	.uleb128 0x19
	.byte	0x4
	.uaword	0x3ff
	.uleb128 0x1d
	.byte	0x1
	.string	"HsfbMeas_CallInit"
	.byte	0x1
	.uahalf	0x149
	.byte	0x1
	.uaword	.LFB207
	.uaword	.LFE207
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x10ff
	.uleb128 0x1e
	.uaword	0xe05
	.uaword	.LBB4
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.uahalf	0x14c
	.uleb128 0x1f
	.uaword	.Ldebug_ranges0+0x18
	.uleb128 0x16
	.uaword	0xe28
	.uahalf	0x738
	.uleb128 0x17
	.uaword	0xe43
	.uaword	.LLST9
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x20
	.string	"HsfbMeas_Param"
	.byte	0x1
	.byte	0x14
	.uaword	0x4db
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	HsfbMeas_Param
	.uleb128 0x20
	.string	"HsfbMeas_Filter"
	.byte	0x1
	.byte	0x15
	.uaword	0x5b3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	HsfbMeas_Filter
	.uleb128 0x20
	.string	"HsfbMeas_Calib"
	.byte	0x1
	.byte	0x16
	.uaword	0x656
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	HsfbMeas_Calib
	.uleb128 0x20
	.string	"HsfbMeas_InitOffset"
	.byte	0x1
	.byte	0x17
	.uaword	0x685
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	HsfbMeas_InitOffset
	.uleb128 0x20
	.string	"HsfbMeas_DW"
	.byte	0x1
	.byte	0x1e
	.uaword	0x9ed
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	HsfbMeas_DW
	.uleb128 0x21
	.string	"PSWReg_Rd0"
	.byte	0xa
	.byte	0x45
	.uaword	0xb84
	.byte	0x1
	.byte	0x1
	.uleb128 0x21
	.string	"PSWReg_Rd1"
	.byte	0xa
	.byte	0x46
	.uaword	0xb84
	.byte	0x1
	.byte	0x1
	.uleb128 0x21
	.string	"PSWReg_Rd2"
	.byte	0xa
	.byte	0x47
	.uaword	0xb84
	.byte	0x1
	.byte	0x1
	.uleb128 0x21
	.string	"PSWReg_Rd3"
	.byte	0xa
	.byte	0x48
	.uaword	0xb84
	.byte	0x1
	.byte	0x1
	.uleb128 0x21
	.string	"Main_HwVer"
	.byte	0x9
	.byte	0x89
	.uaword	0xdf0
	.byte	0x1
	.byte	0x1
	.uleb128 0x20
	.string	"HsfbMeas_PwmStatus15us"
	.byte	0x1
	.byte	0x27
	.uaword	0x109f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	HsfbMeas_PwmStatus15us
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
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x14
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
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
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
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uaword	.LVL3
	.uaword	.LVL4
	.uahalf	0x5
	.byte	0x3
	.uaword	HsfbMeas_Calib
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL5
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL10
	.uaword	.LVL12
	.uahalf	0x5
	.byte	0x3
	.uaword	HsfbMeas_Calib+8
	.uaword	.LVL13
	.uaword	.LVL15
	.uahalf	0x5
	.byte	0x3
	.uaword	HsfbMeas_Calib+16
	.uaword	.LVL16
	.uaword	.LFE202
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL2
	.uaword	.LVL3
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL4
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL7
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x5
	.byte	0x3
	.uaword	HsfbMeas_Calib+12
	.uaword	.LVL14
	.uaword	.LVL15
	.uahalf	0x5
	.byte	0x3
	.uaword	HsfbMeas_Calib+20
	.uaword	.LVL16
	.uaword	.LFE202
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL17
	.uaword	.LVL18
	.uahalf	0x4
	.byte	0xa
	.uahalf	0x8c8
	.byte	0x9f
	.uaword	.LVL18
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL19
	.uaword	.LVL20
	.uahalf	0x4
	.byte	0xa
	.uahalf	0x8c8
	.byte	0x9f
	.uaword	.LVL20
	.uaword	.LFE203
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL22
	.uaword	.LVL23
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL24
	.uaword	.LVL25
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL26
	.uaword	.LVL27
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL28
	.uaword	.LVL29
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL30
	.uaword	.LVL31
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL32
	.uaword	.LVL33
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL35
	.uaword	.LVL36
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL37
	.uaword	.LVL38
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL39
	.uaword	.LVL40
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL41
	.uaword	.LVL42
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL43
	.uaword	.LVL77-1
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL43
	.uaword	.LVL77-1
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL43
	.uaword	.LVL77-1
	.uahalf	0x1
	.byte	0x66
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL45
	.uaword	.LVL46
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL48
	.uaword	.LVL49
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL51
	.uaword	.LVL52
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL54
	.uaword	.LVL55
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL57
	.uaword	.LVL58
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL60
	.uaword	.LVL61
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL63
	.uaword	.LVL64
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL65
	.uaword	.LVL66
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL67
	.uaword	.LVL68
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL69
	.uaword	.LVL70
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL71
	.uaword	.LVL72
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL73
	.uaword	.LVL74
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL75
	.uaword	.LVL76
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL78
	.uaword	.LVL79
	.uahalf	0x4
	.byte	0xa
	.uahalf	0x8c8
	.byte	0x9f
	.uaword	.LVL79
	.uaword	.LVL80
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL81
	.uaword	.LVL82
	.uahalf	0x4
	.byte	0xa
	.uahalf	0x8c8
	.byte	0x9f
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
	.uaword	0
	.uaword	0
	.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB4
	.uaword	.LBE4
	.uaword	.LBB7
	.uaword	.LBE7
	.uaword	0
	.uaword	0
	.uaword	.LBB5
	.uaword	.LBE5
	.uaword	.LBB6
	.uaword	.LBE6
	.uaword	0
	.uaword	0
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
	.uaword	0
	.uaword	0
	.section .debug_line,"",@progbits
.Ldebug_line0:
	.section .debug_str,"",@progbits
.LASF7:
	.string	"Vcomp"
.LASF9:
	.string	"Vhw16V"
.LASF8:
	.string	"VrefDiag"
.LASF1:
	.string	"Iout"
.LASF2:
	.string	"Vout"
.LASF6:
	.string	"Vkl30C"
.LASF0:
	.string	"Ipri"
.LASF4:
	.string	"IproFet"
.LASF10:
	.string	"Vhw19V"
.LASF3:
	.string	"VoutDiag"
.LASF5:
	.string	"Vkl30"
	.extern	HsfbMeas_GetInitOffset,STT_FUNC,0
	.extern	Main_HwVer,STT_OBJECT,32
	.extern	HsfbMeas_GetCalibData,STT_FUNC,0
	.ident	"GCC: (HighTec Release v4.6.3.0) 4.6.3 build on 2013-05-17"
