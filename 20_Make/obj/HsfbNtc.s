	.file	"HsfbNtc.c"
.section .text,"ax",@progbits
.Ltext0:
	.section .text.MPU_ASIL_CODE,"ax",@progbits
	.align 3
	.global	HsfbNtc_CalcNtcR
	.type	HsfbNtc_CalcNtcR, @function
HsfbNtc_CalcNtcR:
.LFB202:
	.file 1 "../40_Appl/HsfbNtc/HsfbNtc.c"
	.loc 1 47 0
.LVL0:
	.loc 1 57 0
	ld.da	%A2, [%SP]0
	.loc 1 52 0
	movh	%d7, 13702
	.loc 1 57 0
	movh	%d1, 17948
	movh	%d0, 18804
	.loc 1 51 0
	movh	%d3, 16256
	.loc 1 52 0
	addi	%d7, %d7, 14269
	.loc 1 57 0
	mov	%d6, 0
	addi	%d1, %d1, 16384
	addi	%d0, %d0, 9216
	mov.a	%a15, 5
.LVL1:
.L4:
	.loc 1 51 0
	ld.w	%d15, [%a6+]4
	ld.w	%d2, [%a7+]4
	add.f	%d15, %d15, %d3
	msub.f	%d15, %d3, %d15, %d2
.LVL2:
	.loc 1 52 0
	cmp.f	%d4, %d15, %d7
	jz.t	%d4, 0, .L2
	.loc 1 53 0
	movh	%d15, 13702
.LVL3:
	addi	%d15, %d15, 14269
.L2:
.LVL4:
	.loc 1 56 0
	ld.w	%d4, [%a5+]4
	mul.f	%d2, %d2, %d4
	ld.w	%d4, [%a4+]4
	div.f	%d15, %d2, %d15
.LVL5:
	sub.f	%d15, %d15, %d4
.LVL6:
	.loc 1 57 0
	mov	%e4, 0
	cmp.f	%d2, %d15, %d6
	jnz.t	%d2, 0, .L3
	div.f	%d5, %d15, %d1
	ftoiz	%d4, %d15
	mul.f	%d5, %d5, %d0
	ftoiz	%d5, %d5
.L3:
.LVL7:
	.loc 1 61 0
	st.w	[%a3+]4, %d5
	.loc 1 62 0
	st.w	[%a2+]4, %d4
	.loc 1 50 0
	loop	%a15, .L4
	.loc 1 64 0
	ret
.LFE202:
	.size	HsfbNtc_CalcNtcR, .-HsfbNtc_CalcNtcR
	.align 3
	.global	HsfbNtc_Call10ms
	.type	HsfbNtc_Call10ms, @function
HsfbNtc_Call10ms:
.LFB203:
	.loc 1 75 0
.LVL8:
	.loc 1 86 0
	movh.a	%a2, hi:HsfbNtc_Param
	.loc 1 75 0
	sub.a	%SP, 168
.LCFI0:
	.loc 1 86 0
	lea	%a15, [%a2] lo:HsfbNtc_Param
	ld.w	%d15, [%a2] lo:HsfbNtc_Param
	st.w	[%SP] 60, %d15
	.loc 1 87 0
	ld.w	%d15, [%a15] 16
	st.w	[%SP] 64, %d15
	.loc 1 88 0
	ld.w	%d15, [%a15] 32
	st.w	[%SP] 68, %d15
	.loc 1 89 0
	ld.w	%d15, [%a15] 48
	st.w	[%SP] 72, %d15
	.loc 1 90 0
	ld.w	%d15, [%a15] 64
	st.w	[%SP] 76, %d15
	.loc 1 91 0
	ld.w	%d15, [%a15] 80
	st.w	[%SP] 80, %d15
	.loc 1 92 0
	ld.w	%d15, [%a15] 8
	st.w	[%SP] 84, %d15
	.loc 1 93 0
	ld.w	%d15, [%a15] 24
	st.w	[%SP] 88, %d15
	.loc 1 94 0
	ld.w	%d15, [%a15] 40
	st.w	[%SP] 92, %d15
	.loc 1 95 0
	ld.w	%d15, [%a15] 56
	st.w	[%SP] 96, %d15
	.loc 1 96 0
	ld.w	%d15, [%a15] 72
	st.w	[%SP] 100, %d15
	.loc 1 97 0
	ld.w	%d15, [%a15] 88
	st.w	[%SP] 104, %d15
	.loc 1 98 0
	ld.w	%d15, [%a15] 12
	st.w	[%SP] 108, %d15
	.loc 1 99 0
	ld.w	%d15, [%a15] 28
	st.w	[%SP] 112, %d15
	.loc 1 100 0
	ld.w	%d15, [%a15] 44
	st.w	[%SP] 116, %d15
	.loc 1 101 0
	ld.w	%d15, [%a15] 60
	st.w	[%SP] 120, %d15
	.loc 1 102 0
	ld.w	%d15, [%a15] 76
	st.w	[%SP] 124, %d15
	.loc 1 103 0
	ld.w	%d15, [%a15] 92
	.loc 1 104 0
	movh.a	%a15, hi:Main_HwVer
	lea	%a15, [%a15] lo:Main_HwVer
	.loc 1 103 0
	st.w	[%SP] 128, %d15
	.loc 1 104 0
	ld.hu	%d15, [%a15] 26
	.loc 1 75 0
	mov.aa	%a12, %a5
	.loc 1 104 0
	jz	%d15, .L10
	.loc 1 105 0
	ld.h	%d3, [%a4] 26
	mov	%d2, 4095
	sub	%d3, %d2, %d3
	extr	%d3, %d3, 0, 16
	movh	%d15, 14720
	itof	%d3, %d3
	mul.f	%d3, %d3, %d15
	st.w	[%SP] 132, %d3
	.loc 1 107 0
	ld.h	%d3, [%a4] 28
	sub	%d3, %d2, %d3
	extr	%d3, %d3, 0, 16
	itof	%d3, %d3
	mul.f	%d3, %d3, %d15
	st.w	[%SP] 136, %d3
	.loc 1 109 0
	ld.h	%d3, [%a4] 30
	sub	%d2, %d3
	extr	%d2, %d2, 0, 16
.L16:
	.loc 1 117 0
	itof	%d2, %d2
	.loc 1 126 0
	lea	%a2, [%SP] 36
	.loc 1 117 0
	mul.f	%d2, %d2, %d15
	.loc 1 123 0
	lea	%a5, [%SP] 84
.LVL9:
	lea	%a6, [%SP] 108
	lea	%a7, [%SP] 132
	.loc 1 117 0
	st.w	[%SP] 140, %d2
	.loc 1 118 0
	ld.h	%d2, [%a4] 32
	itof	%d2, %d2
	mul.f	%d2, %d2, %d15
	st.w	[%SP] 144, %d2
	.loc 1 119 0
	ld.h	%d2, [%a4] 34
	itof	%d2, %d2
	mul.f	%d2, %d2, %d15
	st.w	[%SP] 148, %d2
	.loc 1 120 0
	ld.h	%d2, [%a4] 36
	.loc 1 123 0
	st.a	[%SP]0, %a2
	.loc 1 120 0
	itof	%d2, %d2
	.loc 1 127 0
	lea	%a2, [%SP] 12
	.loc 1 120 0
	mul.f	%d15, %d2, %d15
	.loc 1 123 0
	lea	%a4, [%SP] 60
.LVL10:
	st.a	[%SP] 4, %a2
	.loc 1 120 0
	st.w	[%SP] 152, %d15
	.loc 1 123 0
	call	HsfbNtc_CalcNtcR
	.loc 1 128 0
	ld.hu	%d15, [%a15] 26
	jz	%d15, .L12
	.loc 1 130 0
	movh.a	%a14, hi:HSFBNTC_TABLE_RTR25_MOS_C0
	movh.a	%a13, hi:HSFBNTC_TABLE_TEMP_MOS_C0
	lea	%a14, [%a14] lo:HSFBNTC_TABLE_RTR25_MOS_C0
	lea	%a13, [%a13] lo:HSFBNTC_TABLE_TEMP_MOS_C0
	ld.w	%d4, [%SP] 12
	mov.aa	%a4, %a14
	mov.aa	%a5, %a13
	mov	%d5, 190
	call	look1_is32lfys16ts16Df_hV1slEhI
	.loc 1 133 0
	ld.w	%d4, [%SP] 16
	.loc 1 129 0
	movh.a	%a2, hi:HsfbNtc_DW
	.loc 1 133 0
	mov.aa	%a4, %a14
	mov.aa	%a5, %a13
	mov	%d5, 190
	.loc 1 129 0
	lea	%a15, [%a2] lo:HsfbNtc_DW
	st.h	[%a2] lo:HsfbNtc_DW, %d2
	.loc 1 133 0
	call	look1_is32lfys16ts16Df_hV1slEhI
	.loc 1 136 0
	ld.w	%d4, [%SP] 20
	.loc 1 132 0
	st.h	[%a15] 2, %d2
	.loc 1 136 0
	mov.aa	%a4, %a14
	mov.aa	%a5, %a13
	mov	%d5, 190
.L17:
	.loc 1 155 0
	call	look1_is32lfys16ts16Df_hV1slEhI
	.loc 1 158 0
	movh.a	%a13, hi:HSFBNTC_TABLE_TEMP_WATIN
	movh.a	%a14, hi:HSFBNTC_TABLE_RTR25_WATIN
	lea	%a14, [%a14] lo:HSFBNTC_TABLE_RTR25_WATIN
	lea	%a13, [%a13] lo:HSFBNTC_TABLE_TEMP_WATIN
	ld.w	%d4, [%SP] 24
	.loc 1 154 0
	st.h	[%a15] 4, %d2
	.loc 1 158 0
	mov.aa	%a4, %a14
	mov.aa	%a5, %a13
	mov	%d5, 205
	call	look1_is32lfys16ts16Df_hV1slEhI
	.loc 1 161 0
	ld.w	%d4, [%SP] 28
	movh.a	%a4, hi:HSFBNTC_TABLE_RTR25_WATOUT
	movh.a	%a5, hi:HSFBNTC_TABLE_TEMP_WATOUT
	.loc 1 157 0
	st.h	[%a15] 6, %d2
	.loc 1 161 0
	lea	%a4, [%a4] lo:HSFBNTC_TABLE_RTR25_WATOUT
	lea	%a5, [%a5] lo:HSFBNTC_TABLE_TEMP_WATOUT
	mov	%d5, 41
	call	look1_is32lfys16ts16Df_hV1slEhI
	.loc 1 164 0
	ld.w	%d4, [%SP] 32
	.loc 1 160 0
	st.h	[%a15] 8, %d2
	.loc 1 164 0
	mov.aa	%a4, %a14
	mov.aa	%a5, %a13
	mov	%d5, 205
	call	look1_is32lfys16ts16Df_hV1slEhI
	.loc 1 163 0
	movh.a	%a4, hi:HsfbNtc_DW-2
	movh.a	%a2, hi:HsfbNtcPT1
	.loc 1 169 0
	movh	%d3, 15949
	.loc 1 163 0
	st.h	[%a15] 10, %d2
.LVL11:
	lea	%a4, [%a4] lo:HsfbNtc_DW-2
	lea	%a2, [%a2] lo:HsfbNtcPT1
	lea	%a3, [%SP] 154
	.loc 1 169 0
	addi	%d3, %d3, -13107
	mov.a	%a15, 5
.LVL12:
.L14:
	.loc 1 169 0 is_stmt 0 discriminator 2
	ld.h	%d15, [+%a4]2
	.loc 1 170 0 is_stmt 1 discriminator 2
	ld.w	%d2, [%a2]0
	.loc 1 169 0 discriminator 2
	itof	%d15, %d15
	sub.f	%d15, %d15, %d2
	madd.f	%d15, %d2, %d15, %d3
.LVL13:
	.loc 1 171 0 discriminator 2
	ftoiz	%d2, %d15
	.loc 1 172 0 discriminator 2
	st.w	[%a2+]4, %d15
	.loc 1 171 0 discriminator 2
	st.h	[+%a3]2, %d2
	.loc 1 168 0 discriminator 2
	loop	%a15, .L14
	.loc 1 175 0
	ld.h	%d15, [%SP] 156
.LVL14:
	st.h	[%a12]0, %d15
	.loc 1 176 0
	ld.w	%d15, [%SP] 36
	st.w	[%a12] 4, %d15
	.loc 1 177 0
	ld.h	%d15, [%SP] 158
	st.h	[%a12] 8, %d15
	.loc 1 178 0
	ld.w	%d15, [%SP] 40
	st.w	[%a12] 12, %d15
	.loc 1 179 0
	ld.h	%d15, [%SP] 160
	st.h	[%a12] 16, %d15
	.loc 1 180 0
	ld.w	%d15, [%SP] 44
	st.w	[%a12] 20, %d15
	.loc 1 181 0
	ld.h	%d15, [%SP] 162
	st.h	[%a12] 24, %d15
	.loc 1 182 0
	ld.w	%d15, [%SP] 48
	st.w	[%a12] 28, %d15
	.loc 1 183 0
	ld.h	%d15, [%SP] 164
	st.h	[%a12] 32, %d15
	.loc 1 184 0
	ld.w	%d15, [%SP] 52
	st.w	[%a12] 36, %d15
	.loc 1 185 0
	ld.h	%d15, [%SP] 166
	st.h	[%a12] 40, %d15
	.loc 1 186 0
	ld.w	%d15, [%SP] 56
	st.w	[%a12] 44, %d15
	.loc 1 187 0
	ret
.LVL15:
.L12:
	.loc 1 149 0
	movh.a	%a14, hi:HSFBNTC_TABLE_RTR25_MOS_B02
	movh.a	%a13, hi:HSFBNTC_TABLE_TEMP_MOS_B02
	lea	%a14, [%a14] lo:HSFBNTC_TABLE_RTR25_MOS_B02
	lea	%a13, [%a13] lo:HSFBNTC_TABLE_TEMP_MOS_B02
	ld.w	%d4, [%SP] 12
	mov.aa	%a4, %a14
	mov.aa	%a5, %a13
	mov	%d5, 41
	call	look1_is32lfys16ts16Df_hV1slEhI
	.loc 1 152 0
	ld.w	%d4, [%SP] 16
	.loc 1 148 0
	movh.a	%a2, hi:HsfbNtc_DW
	.loc 1 152 0
	mov.aa	%a4, %a14
	mov.aa	%a5, %a13
	mov	%d5, 41
	.loc 1 148 0
	lea	%a15, [%a2] lo:HsfbNtc_DW
	st.h	[%a2] lo:HsfbNtc_DW, %d2
	.loc 1 152 0
	call	look1_is32lfys16ts16Df_hV1slEhI
	.loc 1 151 0
	st.h	[%a15] 2, %d2
	.loc 1 155 0
	ld.w	%d4, [%SP] 20
	mov.aa	%a4, %a14
	mov.aa	%a5, %a13
	mov	%d5, 41
	j	.L17
.LVL16:
.L10:
	.loc 1 115 0
	ld.h	%d2, [%a4] 26
	movh	%d15, 14720
	itof	%d2, %d2
	mul.f	%d2, %d2, %d15
	st.w	[%SP] 132, %d2
	.loc 1 116 0
	ld.h	%d2, [%a4] 28
	itof	%d2, %d2
	mul.f	%d2, %d2, %d15
	st.w	[%SP] 136, %d2
	.loc 1 117 0
	ld.h	%d2, [%a4] 30
	j	.L16
.LFE203:
	.size	HsfbNtc_Call10ms, .-HsfbNtc_Call10ms
	.section .text.MPU_QM_CODE,"ax",@progbits
	.align 3
	.global	HsfbNtc_CallInit
	.type	HsfbNtc_CallInit, @function
HsfbNtc_CallInit:
.LFB204:
	.loc 1 198 0
	.loc 1 199 0
	movh.a	%a15, hi:Main_HwVer
	lea	%a15, [%a15] lo:Main_HwVer
	ld.hu	%d15, [%a15] 26
	.loc 1 200 0
	movh.a	%a2, hi:HsfbNtc_Param
	lea	%a15, [%a2] lo:HsfbNtc_Param
	.loc 1 199 0
	jz	%d15, .L23
	.loc 1 220 0
	mov	%d2, 0
	st.w	[%a2] lo:HsfbNtc_Param, %d2
	.loc 1 219 0
	jeq	%d15, 1, .L24
	.loc 1 243 0
	st.w	[%a15] 16, %d2
	.loc 1 246 0
	st.w	[%a15] 32, %d2
	.loc 1 249 0
	st.w	[%a15] 48, %d2
	.loc 1 251 0
	movh	%d2, 14120
	addi	%d2, %d2, -14932
	.loc 1 241 0
	movh	%d15, 17948
	addi	%d15, %d15, 16384
	.loc 1 251 0
	st.w	[%a15] 60, %d2
	.loc 1 252 0
	movh	%d2, 17530
	.loc 1 241 0
	st.w	[%a15] 8, %d15
	.loc 1 242 0
	movh	%d3, 14053
	.loc 1 252 0
	st.w	[%a15] 64, %d2
	.loc 1 253 0
	movh	%d2, 17857
	addi	%d2, %d2, 28672
	.loc 1 244 0
	st.w	[%a15] 24, %d15
	.loc 1 247 0
	st.w	[%a15] 40, %d15
	.loc 1 253 0
	st.w	[%a15] 72, %d2
	.loc 1 254 0
	movh	%d2, 15742
	addi	%d2, %d2, -29989
	.loc 1 250 0
	st.w	[%a15] 56, %d15
	.loc 1 256 0
	st.w	[%a15] 88, %d15
	.loc 1 254 0
	st.w	[%a15] 76, %d2
	.loc 1 257 0
	movh	%d15, 15881
	.loc 1 255 0
	movh	%d2, 17303
	.loc 1 242 0
	addi	%d3, %d3, -32396
	.loc 1 255 0
	addi	%d2, %d2, -32768
	.loc 1 257 0
	addi	%d15, %d15, -30583
	.loc 1 242 0
	st.w	[%a15] 12, %d3
	.loc 1 245 0
	st.w	[%a15] 28, %d3
	.loc 1 248 0
	st.w	[%a15] 44, %d3
	.loc 1 255 0
	st.w	[%a15] 80, %d2
	.loc 1 257 0
	st.w	[%a15] 92, %d15
	ret
.L23:
	.loc 1 200 0
	mov	%d15, 0
	.loc 1 201 0
	movh	%d3, 17877
	.loc 1 202 0
	movh	%d2, 14053
	.loc 1 201 0
	addi	%d3, %d3, -12288
	.loc 1 202 0
	addi	%d2, %d2, -32396
	.loc 1 200 0
	st.w	[%a2] lo:HsfbNtc_Param, %d15
	.loc 1 203 0
	st.w	[%a15] 16, %d15
	.loc 1 206 0
	st.w	[%a15] 32, %d15
	.loc 1 209 0
	st.w	[%a15] 48, %d15
	.loc 1 210 0
	movh	%d15, 17948
	.loc 1 201 0
	st.w	[%a15] 8, %d3
	.loc 1 202 0
	st.w	[%a15] 12, %d2
	.loc 1 204 0
	st.w	[%a15] 24, %d3
	.loc 1 205 0
	st.w	[%a15] 28, %d2
	.loc 1 207 0
	st.w	[%a15] 40, %d3
	.loc 1 208 0
	st.w	[%a15] 44, %d2
	.loc 1 210 0
	addi	%d15, %d15, 16384
.L22:
	.loc 1 231 0
	movh	%d2, 14120
	addi	%d2, %d2, -14932
	.loc 1 230 0
	st.w	[%a15] 56, %d15
	.loc 1 236 0
	st.w	[%a15] 88, %d15
	.loc 1 231 0
	st.w	[%a15] 60, %d2
	.loc 1 232 0
	movh	%d2, 17530
	.loc 1 237 0
	movh	%d15, 15945
	addi	%d15, %d15, -14135
	.loc 1 232 0
	st.w	[%a15] 64, %d2
	.loc 1 233 0
	movh	%d2, 17857
	addi	%d2, %d2, 28672
	.loc 1 237 0
	st.w	[%a15] 92, %d15
	.loc 1 233 0
	st.w	[%a15] 72, %d2
	.loc 1 234 0
	movh	%d2, 15742
	addi	%d2, %d2, -29989
	st.w	[%a15] 76, %d2
	.loc 1 235 0
	movh	%d2, 17303
	addi	%d2, %d2, -32768
	st.w	[%a15] 80, %d2
	ret
.L24:
	.loc 1 221 0
	movh	%d15, 17948
	.loc 1 222 0
	movh	%d3, 14053
	.loc 1 221 0
	addi	%d15, %d15, 16384
	.loc 1 222 0
	addi	%d3, %d3, -32396
	.loc 1 223 0
	st.w	[%a15] 16, %d2
	.loc 1 221 0
	st.w	[%a15] 8, %d15
	.loc 1 222 0
	st.w	[%a15] 12, %d3
	.loc 1 224 0
	st.w	[%a15] 24, %d15
	.loc 1 225 0
	st.w	[%a15] 28, %d3
	.loc 1 226 0
	st.w	[%a15] 32, %d2
	.loc 1 227 0
	st.w	[%a15] 40, %d15
	.loc 1 228 0
	st.w	[%a15] 44, %d3
	.loc 1 229 0
	st.w	[%a15] 48, %d2
	j	.L22
.LFE204:
	.size	HsfbNtc_CallInit, .-HsfbNtc_CallInit
	.global	HsfbNtc_DW
	.section .bss.MPU_ASIL_VAR_NOINIT,"aw",@nobits
	.align 3
	.type	HsfbNtc_DW, @object
	.size	HsfbNtc_DW, 12
HsfbNtc_DW:
	.zero	12
	.align 3
	.type	HsfbNtc_Param, @object
	.size	HsfbNtc_Param, 96
HsfbNtc_Param:
	.zero	96
	.align 3
	.type	HsfbNtcPT1, @object
	.size	HsfbNtcPT1, 24
HsfbNtcPT1:
	.zero	24
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
	.byte	0x4
	.uaword	.LCFI0-.LFB203
	.byte	0xe
	.uleb128 0xa8
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
.section .text,"ax",@progbits
.Letext0:
	.file 2 "../30_Bsw/Common/rtwtypes.h"
	.file 3 "../40_Appl/HsfbNtc/HsfbNtc_struct.h"
	.file 4 "../40_Appl/HsfbApp/HsfbApp_struct.h"
	.file 5 "../40_Appl/HsfbNtc/HsfbNtc.h"
	.file 6 "../30_Bsw/Common/TC21x/IfxCpu_regdef.h"
	.file 7 "../30_Bsw/Main/Main_api.h"
	.file 8 "../40_Appl/HsfbNtc/HsfbNtc_table.h"
	.file 9 "../30_Bsw/Mpu/mpu_api.h"
	.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0xdac
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.6.3 build on 2013-05-17"
	.byte	0x1
	.string	"../40_Appl/HsfbNtc/HsfbNtc.c"
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
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x3
	.string	"real32_T"
	.byte	0x2
	.byte	0x56
	.uaword	0x129
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
	.string	"f32"
	.byte	0x2
	.byte	0x82
	.uaword	0x119
	.uleb128 0x4
	.byte	0x8
	.byte	0x3
	.byte	0xe
	.uaword	0x1ac
	.uleb128 0x5
	.string	"Temp"
	.byte	0x3
	.byte	0xf
	.uaword	0x159
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"Rntc"
	.byte	0x3
	.byte	0x10
	.uaword	0x16f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x3
	.string	"HSFBNTC_S_NTCSTATUS"
	.byte	0x3
	.byte	0x11
	.uaword	0x185
	.uleb128 0x4
	.byte	0x10
	.byte	0x3
	.byte	0x13
	.uaword	0x20c
	.uleb128 0x5
	.string	"Rser"
	.byte	0x3
	.byte	0x14
	.uaword	0x17a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"Rpar"
	.byte	0x3
	.byte	0x15
	.uaword	0x17a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.string	"Rpre"
	.byte	0x3
	.byte	0x16
	.uaword	0x17a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"Kpre"
	.byte	0x3
	.byte	0x17
	.uaword	0x17a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x3
	.string	"HSFBNTC_S_NTCPARAM"
	.byte	0x3
	.byte	0x18
	.uaword	0x1c7
	.uleb128 0x4
	.byte	0x30
	.byte	0x3
	.byte	0x1a
	.uaword	0x287
	.uleb128 0x5
	.string	"Pri"
	.byte	0x3
	.byte	0x1b
	.uaword	0x1ac
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"SrA"
	.byte	0x3
	.byte	0x1c
	.uaword	0x1ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"SrB"
	.byte	0x3
	.byte	0x1d
	.uaword	0x1ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x5
	.string	"WaterIn"
	.byte	0x3
	.byte	0x1e
	.uaword	0x1ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.uaword	.LASF0
	.byte	0x3
	.byte	0x1f
	.uaword	0x1ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.uaword	.LASF1
	.byte	0x3
	.byte	0x20
	.uaword	0x1ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.string	"HSFBNTC_S_STATUS"
	.byte	0x3
	.byte	0x21
	.uaword	0x226
	.uleb128 0x4
	.byte	0x60
	.byte	0x3
	.byte	0x23
	.uaword	0x300
	.uleb128 0x5
	.string	"Pri"
	.byte	0x3
	.byte	0x24
	.uaword	0x20c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"SrA"
	.byte	0x3
	.byte	0x25
	.uaword	0x20c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x5
	.string	"SrB"
	.byte	0x3
	.byte	0x26
	.uaword	0x20c
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x5
	.string	"WaterIn"
	.byte	0x3
	.byte	0x27
	.uaword	0x20c
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x6
	.uaword	.LASF0
	.byte	0x3
	.byte	0x28
	.uaword	0x20c
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x6
	.uaword	.LASF1
	.byte	0x3
	.byte	0x29
	.uaword	0x20c
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.byte	0
	.uleb128 0x3
	.string	"HSFBNTC_S_PARAM"
	.byte	0x3
	.byte	0x2a
	.uaword	0x29f
	.uleb128 0x4
	.byte	0x26
	.byte	0x4
	.byte	0x38
	.uaword	0x46d
	.uleb128 0x5
	.string	"Ipri"
	.byte	0x4
	.byte	0x39
	.uaword	0x159
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"Vin"
	.byte	0x4
	.byte	0x3a
	.uaword	0x159
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x5
	.string	"Iout"
	.byte	0x4
	.byte	0x3b
	.uaword	0x159
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.string	"Vout"
	.byte	0x4
	.byte	0x3c
	.uaword	0x159
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x5
	.string	"VoutDiag"
	.byte	0x4
	.byte	0x3d
	.uaword	0x159
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"IproFet"
	.byte	0x4
	.byte	0x3e
	.uaword	0x159
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x5
	.string	"Vaux"
	.byte	0x4
	.byte	0x3f
	.uaword	0x159
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x5
	.string	"Vkl30"
	.byte	0x4
	.byte	0x40
	.uaword	0x159
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0x5
	.string	"Vkl30C"
	.byte	0x4
	.byte	0x41
	.uaword	0x159
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x5
	.string	"Vcomp"
	.byte	0x4
	.byte	0x42
	.uaword	0x159
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.uleb128 0x5
	.string	"VrefDiag"
	.byte	0x4
	.byte	0x43
	.uaword	0x159
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x5
	.string	"Vhw16V"
	.byte	0x4
	.byte	0x44
	.uaword	0x159
	.byte	0x2
	.byte	0x23
	.uleb128 0x16
	.uleb128 0x5
	.string	"Vhw19V"
	.byte	0x4
	.byte	0x45
	.uaword	0x159
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x5
	.string	"NtcPri"
	.byte	0x4
	.byte	0x46
	.uaword	0x159
	.byte	0x2
	.byte	0x23
	.uleb128 0x1a
	.uleb128 0x5
	.string	"NtcSrA"
	.byte	0x4
	.byte	0x47
	.uaword	0x159
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x5
	.string	"NtcSrB"
	.byte	0x4
	.byte	0x48
	.uaword	0x159
	.byte	0x2
	.byte	0x23
	.uleb128 0x1e
	.uleb128 0x5
	.string	"NtcWaterIn"
	.byte	0x4
	.byte	0x49
	.uaword	0x159
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x5
	.string	"NtcWaterOut"
	.byte	0x4
	.byte	0x4a
	.uaword	0x159
	.byte	0x2
	.byte	0x23
	.uleb128 0x22
	.uleb128 0x5
	.string	"NtcWaterOutDiag"
	.byte	0x4
	.byte	0x4b
	.uaword	0x159
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.byte	0
	.uleb128 0x3
	.string	"HSFBAPP_S_AI"
	.byte	0x4
	.byte	0x4c
	.uaword	0x317
	.uleb128 0x4
	.byte	0xc
	.byte	0x5
	.byte	0x1c
	.uaword	0x49c
	.uleb128 0x5
	.string	"Merge_c"
	.byte	0x5
	.byte	0x1d
	.uaword	0x49c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x7
	.uaword	0x159
	.uaword	0x4ac
	.uleb128 0x8
	.uaword	0x13c
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.string	"DW_HsfbNtc_f_T"
	.byte	0x5
	.byte	0x1e
	.uaword	0x481
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x9
	.uaword	0x109
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
	.byte	0x6
	.uahalf	0x204
	.uaword	0x601
	.uleb128 0xb
	.string	"CDC"
	.byte	0x6
	.uahalf	0x206
	.uaword	0x4ce
	.byte	0x4
	.byte	0x7
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"CDE"
	.byte	0x6
	.uahalf	0x207
	.uaword	0x4ce
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"GW"
	.byte	0x6
	.uahalf	0x208
	.uaword	0x4ce
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"IS"
	.byte	0x6
	.uahalf	0x209
	.uaword	0x4ce
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"IO"
	.byte	0x6
	.uahalf	0x20a
	.uaword	0x4ce
	.byte	0x4
	.byte	0x2
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"PRS"
	.byte	0x6
	.uahalf	0x20b
	.uaword	0x4ce
	.byte	0x4
	.byte	0x2
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"S"
	.byte	0x6
	.uahalf	0x20c
	.uaword	0x4ce
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"reserved_15"
	.byte	0x6
	.uahalf	0x20d
	.uaword	0x4ce
	.byte	0x4
	.byte	0xc
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"SAV"
	.byte	0x6
	.uahalf	0x20e
	.uaword	0x4ce
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"AV"
	.byte	0x6
	.uahalf	0x20f
	.uaword	0x4ce
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"SV"
	.byte	0x6
	.uahalf	0x210
	.uaword	0x4ce
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"V"
	.byte	0x6
	.uahalf	0x211
	.uaword	0x4ce
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"C"
	.byte	0x6
	.uahalf	0x212
	.uaword	0x4ce
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_CPU_PSW_Bits"
	.byte	0x6
	.uahalf	0x213
	.uaword	0x4fe
	.uleb128 0xd
	.byte	0x4
	.byte	0x6
	.uahalf	0x467
	.uaword	0x642
	.uleb128 0xe
	.string	"U"
	.byte	0x6
	.uahalf	0x469
	.uaword	0x109
	.uleb128 0xe
	.string	"I"
	.byte	0x6
	.uahalf	0x46a
	.uaword	0x102
	.uleb128 0xe
	.string	"B"
	.byte	0x6
	.uahalf	0x46b
	.uaword	0x601
	.byte	0
	.uleb128 0xc
	.string	"Ifx_CPU_PSW"
	.byte	0x6
	.uahalf	0x46c
	.uaword	0x61a
	.uleb128 0xf
	.byte	0x4
	.byte	0x7
	.byte	0x59
	.uaword	0x797
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
	.byte	0x7
	.byte	0x6a
	.uaword	0x656
	.uleb128 0x4
	.byte	0x10
	.byte	0x7
	.byte	0x6c
	.uaword	0x82d
	.uleb128 0x5
	.string	"App"
	.byte	0x7
	.byte	0x6d
	.uaword	0x164
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"Meas"
	.byte	0x7
	.byte	0x6e
	.uaword	0x164
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x5
	.string	"Ctrl"
	.byte	0x7
	.byte	0x6f
	.uaword	0x164
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.string	"Pwm"
	.byte	0x7
	.byte	0x70
	.uaword	0x164
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x5
	.string	"Diag"
	.byte	0x7
	.byte	0x71
	.uaword	0x164
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"Ntc"
	.byte	0x7
	.byte	0x72
	.uaword	0x164
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x5
	.string	"State"
	.byte	0x7
	.byte	0x73
	.uaword	0x164
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x5
	.string	"Safety"
	.byte	0x7
	.byte	0x74
	.uaword	0x164
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.byte	0
	.uleb128 0x3
	.string	"MAIN_E_HW_VER_APP"
	.byte	0x7
	.byte	0x75
	.uaword	0x7ac
	.uleb128 0x4
	.byte	0x20
	.byte	0x7
	.byte	0x77
	.uaword	0x89e
	.uleb128 0x5
	.string	"Code"
	.byte	0x7
	.byte	0x78
	.uaword	0x89e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"CodeNum"
	.byte	0x7
	.byte	0x79
	.uaword	0x164
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"VerName"
	.byte	0x7
	.byte	0x7a
	.uaword	0x164
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x5
	.string	"Ver"
	.byte	0x7
	.byte	0x7b
	.uaword	0x797
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x5
	.string	"App"
	.byte	0x7
	.byte	0x7c
	.uaword	0x82d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x7
	.uaword	0x164
	.uaword	0x8ae
	.uleb128 0x8
	.uaword	0x13c
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.string	"MAIN_S_HW_VER"
	.byte	0x7
	.byte	0x7d
	.uaword	0x846
	.uleb128 0x11
	.byte	0x1
	.string	"HsfbNtc_CalcNtcR"
	.byte	0x1
	.byte	0x2d
	.byte	0x1
	.uaword	.LFB202
	.uaword	.LFE202
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x96f
	.uleb128 0x12
	.string	"Rser"
	.byte	0x1
	.byte	0x2d
	.uaword	0x96f
	.uaword	.LLST0
	.uleb128 0x12
	.string	"Rpre"
	.byte	0x1
	.byte	0x2d
	.uaword	0x96f
	.uaword	.LLST1
	.uleb128 0x12
	.string	"Kpre"
	.byte	0x1
	.byte	0x2d
	.uaword	0x96f
	.uaword	.LLST2
	.uleb128 0x12
	.string	"Kadc"
	.byte	0x1
	.byte	0x2e
	.uaword	0x96f
	.uaword	.LLST3
	.uleb128 0x13
	.string	"Ohms"
	.byte	0x1
	.byte	0x2e
	.uaword	0x97a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x13
	.string	"RtR25"
	.byte	0x1
	.byte	0x2e
	.uaword	0x97a
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x14
	.string	"Kden"
	.byte	0x1
	.byte	0x30
	.uaword	0x17a
	.uaword	.LLST4
	.uleb128 0x14
	.string	"ForEach_itr"
	.byte	0x1
	.byte	0x31
	.uaword	0x16f
	.uaword	.LLST5
	.byte	0
	.uleb128 0x15
	.byte	0x4
	.uaword	0x975
	.uleb128 0x16
	.uaword	0x17a
	.uleb128 0x15
	.byte	0x4
	.uaword	0x16f
	.uleb128 0x17
	.byte	0x1
	.string	"HsfbNtc_Call10ms"
	.byte	0x1
	.byte	0x4a
	.byte	0x1
	.uaword	.LFB203
	.uaword	.LFE203
	.uaword	.LLST6
	.uaword	0xb09
	.uleb128 0x12
	.string	"Ai1ms"
	.byte	0x1
	.byte	0x4a
	.uaword	0xb09
	.uaword	.LLST7
	.uleb128 0x12
	.string	"NtcStatus"
	.byte	0x1
	.byte	0x4a
	.uaword	0xb14
	.uaword	.LLST8
	.uleb128 0x18
	.string	"ImpAsg_InsertedFor_RtR25_at_inp"
	.byte	0x1
	.byte	0x4d
	.uaword	0xb1a
	.byte	0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x18
	.string	"ImpAsg_InsertedFor_Ohms_at_inpo"
	.byte	0x1
	.byte	0x4e
	.uaword	0xb1a
	.byte	0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x18
	.string	"TmpSignalConversionAtCalcNtcRIn"
	.byte	0x1
	.byte	0x4f
	.uaword	0xb2a
	.byte	0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x18
	.string	"TmpSignalConversionAtCalcNtcR_j"
	.byte	0x1
	.byte	0x50
	.uaword	0xb2a
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x18
	.string	"TmpSignalConversionAtCalcNtcR_a"
	.byte	0x1
	.byte	0x51
	.uaword	0xb2a
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x18
	.string	"DataTypeConversion1"
	.byte	0x1
	.byte	0x52
	.uaword	0x49c
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x18
	.string	"Merge"
	.byte	0x1
	.byte	0x53
	.uaword	0xb2a
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x14
	.string	"i"
	.byte	0x1
	.byte	0x54
	.uaword	0x16f
	.uaword	.LLST9
	.uleb128 0x14
	.string	"TmpSignalConversionAtCalcNtcR_k"
	.byte	0x1
	.byte	0x55
	.uaword	0x17a
	.uaword	.LLST10
	.byte	0
	.uleb128 0x15
	.byte	0x4
	.uaword	0xb0f
	.uleb128 0x16
	.uaword	0x46d
	.uleb128 0x15
	.byte	0x4
	.uaword	0x287
	.uleb128 0x7
	.uaword	0x16f
	.uaword	0xb2a
	.uleb128 0x8
	.uaword	0x13c
	.byte	0x5
	.byte	0
	.uleb128 0x7
	.uaword	0x17a
	.uaword	0xb3a
	.uleb128 0x8
	.uaword	0x13c
	.byte	0x5
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.string	"HsfbNtc_CallInit"
	.byte	0x1
	.byte	0xc5
	.byte	0x1
	.uaword	.LFB204
	.uaword	.LFE204
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0x18
	.string	"HsfbNtcPT1"
	.byte	0x1
	.byte	0x17
	.uaword	0xb2a
	.byte	0x5
	.byte	0x3
	.uaword	HsfbNtcPT1
	.uleb128 0x18
	.string	"HsfbNtc_Param"
	.byte	0x1
	.byte	0x18
	.uaword	0x300
	.byte	0x5
	.byte	0x3
	.uaword	HsfbNtc_Param
	.uleb128 0x7
	.uaword	0x16f
	.uaword	0xb9e
	.uleb128 0x8
	.uaword	0x13c
	.byte	0x29
	.byte	0
	.uleb128 0x1a
	.string	"HSFBNTC_TABLE_RTR25_MOS_B02"
	.byte	0x8
	.byte	0x14
	.uaword	0xbc3
	.byte	0x1
	.byte	0x1
	.uleb128 0x16
	.uaword	0xb8e
	.uleb128 0x7
	.uaword	0x16f
	.uaword	0xbd8
	.uleb128 0x8
	.uaword	0x13c
	.byte	0xbe
	.byte	0
	.uleb128 0x1a
	.string	"HSFBNTC_TABLE_RTR25_MOS_C0"
	.byte	0x8
	.byte	0x15
	.uaword	0xbfc
	.byte	0x1
	.byte	0x1
	.uleb128 0x16
	.uaword	0xbc8
	.uleb128 0x7
	.uaword	0x16f
	.uaword	0xc11
	.uleb128 0x8
	.uaword	0x13c
	.byte	0xcd
	.byte	0
	.uleb128 0x1a
	.string	"HSFBNTC_TABLE_RTR25_WATIN"
	.byte	0x8
	.byte	0x16
	.uaword	0xc34
	.byte	0x1
	.byte	0x1
	.uleb128 0x16
	.uaword	0xc01
	.uleb128 0x1a
	.string	"HSFBNTC_TABLE_RTR25_WATOUT"
	.byte	0x8
	.byte	0x17
	.uaword	0xc5d
	.byte	0x1
	.byte	0x1
	.uleb128 0x16
	.uaword	0xb8e
	.uleb128 0x7
	.uaword	0x159
	.uaword	0xc72
	.uleb128 0x8
	.uaword	0x13c
	.byte	0x29
	.byte	0
	.uleb128 0x1a
	.string	"HSFBNTC_TABLE_TEMP_MOS_B02"
	.byte	0x8
	.byte	0x18
	.uaword	0xc96
	.byte	0x1
	.byte	0x1
	.uleb128 0x16
	.uaword	0xc62
	.uleb128 0x7
	.uaword	0x159
	.uaword	0xcab
	.uleb128 0x8
	.uaword	0x13c
	.byte	0xbe
	.byte	0
	.uleb128 0x1a
	.string	"HSFBNTC_TABLE_TEMP_MOS_C0"
	.byte	0x8
	.byte	0x19
	.uaword	0xcce
	.byte	0x1
	.byte	0x1
	.uleb128 0x16
	.uaword	0xc9b
	.uleb128 0x7
	.uaword	0x159
	.uaword	0xce3
	.uleb128 0x8
	.uaword	0x13c
	.byte	0xcd
	.byte	0
	.uleb128 0x1a
	.string	"HSFBNTC_TABLE_TEMP_WATIN"
	.byte	0x8
	.byte	0x1a
	.uaword	0xd05
	.byte	0x1
	.byte	0x1
	.uleb128 0x16
	.uaword	0xcd3
	.uleb128 0x1a
	.string	"HSFBNTC_TABLE_TEMP_WATOUT"
	.byte	0x8
	.byte	0x1b
	.uaword	0xd2d
	.byte	0x1
	.byte	0x1
	.uleb128 0x16
	.uaword	0xc62
	.uleb128 0x1b
	.string	"HsfbNtc_DW"
	.byte	0x1
	.byte	0x1f
	.uaword	0x4ac
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	HsfbNtc_DW
	.uleb128 0x1a
	.string	"PSWReg_Rd0"
	.byte	0x9
	.byte	0x45
	.uaword	0x642
	.byte	0x1
	.byte	0x1
	.uleb128 0x1a
	.string	"PSWReg_Rd1"
	.byte	0x9
	.byte	0x46
	.uaword	0x642
	.byte	0x1
	.byte	0x1
	.uleb128 0x1a
	.string	"PSWReg_Rd2"
	.byte	0x9
	.byte	0x47
	.uaword	0x642
	.byte	0x1
	.byte	0x1
	.uleb128 0x1a
	.string	"PSWReg_Rd3"
	.byte	0x9
	.byte	0x48
	.uaword	0x642
	.byte	0x1
	.byte	0x1
	.uleb128 0x1a
	.string	"Main_HwVer"
	.byte	0x7
	.byte	0x89
	.uaword	0x8ae
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uaword	.LVL1
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0x1
	.byte	0x66
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0x1
	.byte	0x67
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL2
	.uaword	.LVL3
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LFB203
	.uaword	.LCFI0
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI0
	.uaword	.LFE203
	.uahalf	0x3
	.byte	0x8a
	.sleb128 168
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL8
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL16
	.uaword	.LFE203
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL8
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL9
	.uaword	.LFE203
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL13
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL14
	.uaword	.LVL15
	.uahalf	0x2
	.byte	0x82
	.sleb128 -4
	.uaword	0
	.uaword	0
	.section .debug_aranges,"",@progbits
	.uaword	0x2c
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
	.uaword	0
	.uaword	0
	.section .debug_line,"",@progbits
.Ldebug_line0:
	.section .debug_str,"",@progbits
.LASF1:
	.string	"WaterOutDiag"
.LASF0:
	.string	"WaterOut"
	.extern	look1_is32lfys16ts16Df_hV1slEhI,STT_FUNC,0
	.extern	Main_HwVer,STT_OBJECT,32
	.extern	HSFBNTC_TABLE_TEMP_MOS_B02,STT_OBJECT,84
	.extern	HSFBNTC_TABLE_RTR25_MOS_B02,STT_OBJECT,168
	.extern	HSFBNTC_TABLE_TEMP_WATOUT,STT_OBJECT,84
	.extern	HSFBNTC_TABLE_RTR25_WATOUT,STT_OBJECT,168
	.extern	HSFBNTC_TABLE_TEMP_WATIN,STT_OBJECT,412
	.extern	HSFBNTC_TABLE_RTR25_WATIN,STT_OBJECT,824
	.extern	HSFBNTC_TABLE_TEMP_MOS_C0,STT_OBJECT,382
	.extern	HSFBNTC_TABLE_RTR25_MOS_C0,STT_OBJECT,764
	.ident	"GCC: (HighTec Release v4.6.3.0) 4.6.3 build on 2013-05-17"
