	.file	"Dsp.c"
.section .text,"ax",@progbits
.Ltext0:
	.section .text.MPU_DEFAULT_CODE,"ax",@progbits
	.align 3
	.global	Dsp_Init
	.type	Dsp_Init, @function
Dsp_Init:
.LFB0:
	.file 1 "../30_Bsw/Dsp/Dsp.c"
	.loc 1 56 0
	.loc 1 58 0
	ret
.LFE0:
	.size	Dsp_Init, .-Dsp_Init
	.align 3
	.global	Dsp_DtcS12S16
	.type	Dsp_DtcS12S16, @function
Dsp_DtcS12S16:
.LFB1:
	.loc 1 63 0
.LVL0:
	.loc 1 65 0
	mov	%d15, 2048
	.loc 1 69 0
	extr	%d2, %d4, 0, 16
	.loc 1 65 0
	jge.u	%d4, %d15, .L6
.LVL1:
	.loc 1 72 0
	ret
.LVL2:
.L6:
	.loc 1 66 0
	addi	%d4, %d4, -4096
.LVL3:
	extr	%d2, %d4, 0, 16
.LVL4:
	.loc 1 72 0
	ret
.LFE1:
	.size	Dsp_DtcS12S16, .-Dsp_DtcS12S16
	.align 3
	.global	Dsp_DtcS14S16
	.type	Dsp_DtcS14S16, @function
Dsp_DtcS14S16:
.LFB2:
	.loc 1 77 0
.LVL5:
	.loc 1 79 0
	mov	%d15, 8192
	.loc 1 83 0
	extr	%d2, %d4, 0, 16
	.loc 1 79 0
	jge.u	%d4, %d15, .L10
.LVL6:
	.loc 1 86 0
	ret
.LVL7:
.L10:
	.loc 1 80 0
	addi	%d4, %d4, -16384
.LVL8:
	extr	%d2, %d4, 0, 16
.LVL9:
	.loc 1 86 0
	ret
.LFE2:
	.size	Dsp_DtcS14S16, .-Dsp_DtcS14S16
	.section .text.MPU_QM_CODE,"ax",@progbits
	.align 3
	.global	Dsp_Decimal2Bcd
	.type	Dsp_Decimal2Bcd, @function
Dsp_Decimal2Bcd:
.LFB3:
	.loc 1 95 0
.LVL10:
	.loc 1 96 0
	mov	%d2, 0
	.loc 1 99 0
	jz	%d4, .L12
	.loc 1 101 0
	movh	%d0, 52429
	.loc 1 99 0
	mov	%d15, 0
	.loc 1 100 0
	mov	%d1, 10
	.loc 1 101 0
	addi	%d0, %d0, -13107
.LVL11:
.L13:
	.loc 1 100 0
	div.u	%e6, %d4, %d1
	sh	%d5, %d15, 2
	add	%d15, 1
	extr.u	%d3, %d7, 0, 16
	extr.u	%d15, %d15, 0, 16
	sh	%d3, %d3, %d5
	.loc 1 101 0
	mul.u	%e4, %d4, %d0
	.loc 1 100 0
	or	%d2, %d3
	extr.u	%d2, %d2, 0, 16
.LVL12:
	.loc 1 101 0
	extr.u	%d4, %d5, 3, 16
.LVL13:
	.loc 1 99 0
	jnz	%d4, .L13
.LVL14:
.L12:
	.loc 1 104 0
	ret
.LFE3:
	.size	Dsp_Decimal2Bcd, .-Dsp_Decimal2Bcd
	.section .text.MPU_DEFAULT_CODE
	.align 3
	.global	Dsp_SatU16U7
	.type	Dsp_SatU16U7, @function
Dsp_SatU16U7:
.LFB4:
	.loc 1 113 0
.LVL15:
	.loc 1 120 0
	min.u	%d2, %d4, 127
	seln	%d2, %d4, %d4, %d2
.LVL16:
	.loc 1 127 0
	ret
.LFE4:
	.size	Dsp_SatU16U7, .-Dsp_SatU16U7
	.section .text.MPU_QM_CODE
	.align 3
	.global	Dsp_SatS16U8
	.type	Dsp_SatS16U8, @function
Dsp_SatS16U8:
.LFB5:
	.loc 1 136 0
.LVL17:
	.loc 1 147 0
	mov	%d2, 0
	.loc 1 138 0
	jlez	%d4, .L21
	.loc 1 139 0
	ge	%d2, %d4, 255
	.loc 1 140 0
	extr.u	%d4, %d4, 0, 16
	seln	%d2, %d2, %d4, 255
.LVL18:
.L21:
	.loc 1 150 0
	ret
.LFE5:
	.size	Dsp_SatS16U8, .-Dsp_SatS16U8
	.align 3
	.global	Dsp_SatS16U12
	.type	Dsp_SatS16U12, @function
Dsp_SatS16U12:
.LFB6:
	.loc 1 155 0
.LVL19:
	.loc 1 166 0
	mov	%d2, 0
	.loc 1 157 0
	jlez	%d4, .L25
	.loc 1 159 0
	mov	%d15, 4095
	lt	%d15, %d4, %d15
	extr.u	%d4, %d4, 0, 16
.LVL20:
	mov	%d2, 4095
	cmov	%d2, %d15, %d4
.L25:
.LVL21:
	.loc 1 169 0
	ret
.LFE6:
	.size	Dsp_SatS16U12, .-Dsp_SatS16U12
	.section .text.MPU_DEFAULT_CODE
	.align 3
	.global	Dsp_SatS16U13
	.type	Dsp_SatS16U13, @function
Dsp_SatS16U13:
.LFB7:
	.loc 1 178 0
.LVL22:
	.loc 1 189 0
	mov	%d2, 0
	.loc 1 180 0
	jlez	%d4, .L29
	.loc 1 182 0
	mov	%d15, 8191
	lt	%d15, %d4, %d15
	extr.u	%d4, %d4, 0, 16
.LVL23:
	mov	%d2, 8191
	cmov	%d2, %d15, %d4
.L29:
.LVL24:
	.loc 1 192 0
	ret
.LFE7:
	.size	Dsp_SatS16U13, .-Dsp_SatS16U13
	.align 3
	.global	Dsp_AbsF32
	.type	Dsp_AbsF32, @function
Dsp_AbsF32:
.LFB8:
	.loc 1 197 0
.LVL25:
	.loc 1 199 0
	mov	%d2, 0
	cmp.f	%d2, %d4, %d2
	extr.u	%d2, %d2, 0, 1
	addih	%d15, %d4, 0x8000
.LVL26:
	.loc 1 201 0
	sel	%d2, %d2, %d15, %d4
.LVL27:
	ret
.LFE8:
	.size	Dsp_AbsF32, .-Dsp_AbsF32
	.align 3
	.global	Dsp_MedianF32
	.type	Dsp_MedianF32, @function
Dsp_MedianF32:
.LFB10:
	.loc 1 210 0
.LVL28:
	sub.a	%SP, 40
.LCFI0:
	.loc 1 216 0
	jz	%d4, .L38
	mov.a	%a15, %d4
	lea	%a2, [%SP] -4
	mov	%d2, 0
	mov	%d15, 0
	add.a	%a15, -1
.LVL29:
.L39:
	.loc 1 217 0 discriminator 2
	addsc.a	%a3, %a4, %d2, 2
	.loc 1 216 0 discriminator 2
	add	%d15, 1
.LVL30:
	.loc 1 217 0 discriminator 2
	ld.w	%d2, [%a3]0
	st.w	[+%a2]4, %d2
	.loc 1 216 0 discriminator 2
	mov	%d2, %d15
	loop	%a15, .L39
	.loc 1 219 0
	sh	%d9, %d4, -1
	jz.t	%d15, 0, .L38
.LVL31:
.L40:
	.loc 1 221 0 discriminator 3
	addi	%d1, %d4, -1
.LVL32:
	sh	%d10, %d9, 2
	.loc 1 222 0 discriminator 3
	jlez	%d1, .L41
	.loc 1 223 0
	lea	%a2, [%SP] 40
	addsc.a	%a4, %a2, %d10, 0
.LVL33:
	.loc 1 222 0
	mov	%d8, 0
.LVL34:
.L50:
	.loc 1 210 0
	add	%d15, %d8, -1
	.loc 1 223 0
	ld.w	%d2, [%a4] -40
.LVL35:
	.loc 1 210 0
	addsc.a	%a2, %SP, %d15, 2
	addi	%d7, %d8, 1
	mov	%d5, %d1
.LVL36:
.L42:
	.loc 1 227 0 discriminator 1
	ld.w	%d6, [+%a2]4
	.loc 1 210 0 discriminator 1
	addi	%d0, %d7, -1
.LVL37:
	.loc 1 227 0 discriminator 1
	cmp.f	%d15, %d6, %d2
	jnz.t	%d15, 0, .L43
	.loc 1 228 0 discriminator 1
	sh	%d15, %d5, 2
	mov.a	%a15, %d15
	lea	%a3, [%SP] 40
	add.a	%a3, %a15
	ld.w	%d15, [%a3] -40
	.loc 1 210 0 discriminator 1
	add.a	%a15, %SP
	.loc 1 228 0 discriminator 1
	cmp.f	%d3, %d15, %d2
	jz.t	%d3, 2, .L44
.L55:
	.loc 1 228 0 is_stmt 0 discriminator 2
	ld.w	%d15, [+%a15]-4
	add	%d5, -1
.LVL38:
	cmp.f	%d3, %d15, %d2
	jnz.t	%d3, 2, .L55
.L44:
	.loc 1 229 0 is_stmt 1
	jge	%d5, %d0, .L59
.L47:
	.loc 1 237 0
	ge	%d15, %d5, %d9
	cmovn	%d8, %d15, %d0
.LVL39:
	.loc 1 238 0
	ge	%d0, %d9, %d0
.LVL40:
	sel	%d1, %d0, %d1, %d5
.LVL41:
	.loc 1 222 0
	jlt	%d8, %d1, .L50
.LVL42:
.L41:
	.loc 1 241 0
	lea	%a2, [%SP] 40
	addsc.a	%a15, %a2, %d10, 0
	ld.w	%d2, [%a15] -40
.LVL43:
	.loc 1 246 0
	jnz.t	%d4, 0, .L51
.LVL44:
	.loc 1 252 0
	addsc.a	%a15, %a2, %d9, 2
	ld.w	%d15, [%a15] -36
	add.f	%d2, %d2, %d15
	movh	%d15, 16128
	mul.f	%d2, %d2, %d15
.LVL45:
.L51:
	.loc 1 255 0
	ret
.LVL46:
.L59:
	.loc 1 232 0
	lea	%a3, [%SP] 40
	addsc.a	%a15, %a3, %d5, 2
	.loc 1 231 0
	st.w	[%a2]0, %d15
	.loc 1 232 0
	st.w	[%a15] -40, %d6
	.loc 1 234 0
	add	%d5, -1
.LVL47:
	mov	%d0, %d7
.LVL48:
	.loc 1 236 0
	jlt	%d5, %d7, .L47
.LVL49:
.L43:
	.loc 1 223 0 discriminator 1
	add	%d7, 1
	j	.L42
.LVL50:
.L38:
	.loc 1 219 0 discriminator 2
	sh	%d9, %d4, -1
	add	%d9, -1
	j	.L40
.LFE10:
	.size	Dsp_MedianF32, .-Dsp_MedianF32
	.align 3
	.global	Dsp_Med5
	.type	Dsp_Med5, @function
Dsp_Med5:
.LFB9:
	.loc 1 206 0
.LVL51:
	.loc 1 207 0
	mov	%d4, 5
	.loc 1 206 0
	mov.aa	%a15, %a5
	.loc 1 207 0
	call	Dsp_MedianF32
.LVL52:
	st.w	[%a15]0, %d2
	.loc 1 208 0
	ret
.LFE9:
	.size	Dsp_Med5, .-Dsp_Med5
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
	.uaword	.LFB0
	.uaword	.LFE0-.LFB0
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB1
	.uaword	.LFE1-.LFB1
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB2
	.uaword	.LFE2-.LFB2
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB3
	.uaword	.LFE3-.LFB3
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB4
	.uaword	.LFE4-.LFB4
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB5
	.uaword	.LFE5-.LFB5
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB6
	.uaword	.LFE6-.LFB6
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB7
	.uaword	.LFE7-.LFB7
	.align 2
.LEFDE14:
.LSFDE16:
	.uaword	.LEFDE16-.LASFDE16
.LASFDE16:
	.uaword	.Lframe0
	.uaword	.LFB8
	.uaword	.LFE8-.LFB8
	.align 2
.LEFDE16:
.LSFDE18:
	.uaword	.LEFDE18-.LASFDE18
.LASFDE18:
	.uaword	.Lframe0
	.uaword	.LFB10
	.uaword	.LFE10-.LFB10
	.byte	0x4
	.uaword	.LCFI0-.LFB10
	.byte	0xe
	.uleb128 0x28
	.align 2
.LEFDE18:
.LSFDE20:
	.uaword	.LEFDE20-.LASFDE20
.LASFDE20:
	.uaword	.Lframe0
	.uaword	.LFB9
	.uaword	.LFE9-.LFB9
	.align 2
.LEFDE20:
.section .text,"ax",@progbits
.Letext0:
	.file 2 "../30_Bsw/Common/rtwtypes.h"
	.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x4e0
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.6.3 build on 2013-05-17"
	.byte	0x1
	.string	"../30_Bsw/Dsp/Dsp.c"
	.string	"S:\\\\20_Make"
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
	.uaword	0x7b
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x3
	.string	"int16_T"
	.byte	0x2
	.byte	0x52
	.uaword	0x9b
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x3
	.string	"uint16_T"
	.byte	0x2
	.byte	0x53
	.uaword	0xb8
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.string	"int32_T"
	.byte	0x2
	.byte	0x54
	.uaword	0xdd
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
	.uleb128 0x3
	.string	"real32_T"
	.byte	0x2
	.byte	0x56
	.uaword	0x114
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
	.uaword	0x6c
	.uleb128 0x3
	.string	"s16"
	.byte	0x2
	.byte	0x7e
	.uaword	0x8c
	.uleb128 0x3
	.string	"u16"
	.byte	0x2
	.byte	0x7f
	.uaword	0xa8
	.uleb128 0x3
	.string	"s32"
	.byte	0x2
	.byte	0x80
	.uaword	0xce
	.uleb128 0x3
	.string	"u32"
	.byte	0x2
	.byte	0x81
	.uaword	0xe4
	.uleb128 0x3
	.string	"f32"
	.byte	0x2
	.byte	0x82
	.uaword	0x104
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x4
	.byte	0x1
	.string	"Dsp_Init"
	.byte	0x1
	.byte	0x38
	.byte	0x1
	.uaword	.LFB0
	.uaword	.LFE0
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0x5
	.byte	0x1
	.string	"Dsp_DtcS12S16"
	.byte	0x1
	.byte	0x3f
	.byte	0x1
	.uaword	0x14e
	.uaword	.LFB1
	.uaword	.LFE1
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x1eb
	.uleb128 0x6
	.string	"x"
	.byte	0x1
	.byte	0x3f
	.uaword	0x159
	.uaword	.LLST0
	.uleb128 0x7
	.string	"y"
	.byte	0x1
	.byte	0x40
	.uaword	0x14e
	.uaword	.LLST1
	.byte	0
	.uleb128 0x5
	.byte	0x1
	.string	"Dsp_DtcS14S16"
	.byte	0x1
	.byte	0x4d
	.byte	0x1
	.uaword	0x14e
	.uaword	.LFB2
	.uaword	.LFE2
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x22c
	.uleb128 0x6
	.string	"x"
	.byte	0x1
	.byte	0x4d
	.uaword	0x159
	.uaword	.LLST2
	.uleb128 0x7
	.string	"y"
	.byte	0x1
	.byte	0x4e
	.uaword	0x14e
	.uaword	.LLST3
	.byte	0
	.uleb128 0x5
	.byte	0x1
	.string	"Dsp_Decimal2Bcd"
	.byte	0x1
	.byte	0x5f
	.byte	0x1
	.uaword	0x159
	.uaword	.LFB3
	.uaword	.LFE3
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x288
	.uleb128 0x6
	.string	"Decimal"
	.byte	0x1
	.byte	0x5f
	.uaword	0x159
	.uaword	.LLST4
	.uleb128 0x7
	.string	"Bcd"
	.byte	0x1
	.byte	0x60
	.uaword	0x159
	.uaword	.LLST5
	.uleb128 0x7
	.string	"Shift"
	.byte	0x1
	.byte	0x61
	.uaword	0x159
	.uaword	.LLST6
	.byte	0
	.uleb128 0x5
	.byte	0x1
	.string	"Dsp_SatU16U7"
	.byte	0x1
	.byte	0x71
	.byte	0x1
	.uaword	0x159
	.uaword	.LFB4
	.uaword	.LFE4
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x2c4
	.uleb128 0x8
	.string	"x"
	.byte	0x1
	.byte	0x71
	.uaword	0x159
	.byte	0x1
	.byte	0x54
	.uleb128 0x9
	.string	"y"
	.byte	0x1
	.byte	0x72
	.uaword	0x159
	.byte	0x1
	.byte	0x52
	.byte	0
	.uleb128 0x5
	.byte	0x1
	.string	"Dsp_SatS16U8"
	.byte	0x1
	.byte	0x88
	.byte	0x1
	.uaword	0x159
	.uaword	.LFB5
	.uaword	.LFE5
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x302
	.uleb128 0x6
	.string	"x"
	.byte	0x1
	.byte	0x88
	.uaword	0x14e
	.uaword	.LLST7
	.uleb128 0x9
	.string	"y"
	.byte	0x1
	.byte	0x89
	.uaword	0x159
	.byte	0x1
	.byte	0x52
	.byte	0
	.uleb128 0x5
	.byte	0x1
	.string	"Dsp_SatS16U12"
	.byte	0x1
	.byte	0x9b
	.byte	0x1
	.uaword	0x159
	.uaword	.LFB6
	.uaword	.LFE6
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x341
	.uleb128 0x6
	.string	"x"
	.byte	0x1
	.byte	0x9b
	.uaword	0x14e
	.uaword	.LLST8
	.uleb128 0x9
	.string	"y"
	.byte	0x1
	.byte	0x9c
	.uaword	0x159
	.byte	0x1
	.byte	0x52
	.byte	0
	.uleb128 0x5
	.byte	0x1
	.string	"Dsp_SatS16U13"
	.byte	0x1
	.byte	0xb2
	.byte	0x1
	.uaword	0x159
	.uaword	.LFB7
	.uaword	.LFE7
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x380
	.uleb128 0x6
	.string	"x"
	.byte	0x1
	.byte	0xb2
	.uaword	0x14e
	.uaword	.LLST9
	.uleb128 0x9
	.string	"y"
	.byte	0x1
	.byte	0xb3
	.uaword	0x159
	.byte	0x1
	.byte	0x52
	.byte	0
	.uleb128 0x5
	.byte	0x1
	.string	"Dsp_AbsF32"
	.byte	0x1
	.byte	0xc5
	.byte	0x1
	.uaword	0x17a
	.uaword	.LFB8
	.uaword	.LFE8
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x3bc
	.uleb128 0x8
	.string	"x"
	.byte	0x1
	.byte	0xc5
	.uaword	0x17a
	.byte	0x1
	.byte	0x54
	.uleb128 0x7
	.string	"y"
	.byte	0x1
	.byte	0xc6
	.uaword	0x17a
	.uaword	.LLST10
	.byte	0
	.uleb128 0xa
	.byte	0x1
	.string	"Dsp_MedianF32"
	.byte	0x1
	.byte	0xd2
	.byte	0x1
	.uaword	0x17a
	.uaword	.LFB10
	.uaword	.LFE10
	.uaword	.LLST11
	.uaword	0x463
	.uleb128 0x6
	.string	"x"
	.byte	0x1
	.byte	0xd2
	.uaword	0x463
	.uaword	.LLST12
	.uleb128 0x8
	.string	"n"
	.byte	0x1
	.byte	0xd2
	.uaword	0x16f
	.byte	0x1
	.byte	0x54
	.uleb128 0x7
	.string	"i"
	.byte	0x1
	.byte	0xd3
	.uaword	0x164
	.uaword	.LLST13
	.uleb128 0x7
	.string	"j"
	.byte	0x1
	.byte	0xd3
	.uaword	0x164
	.uaword	.LLST14
	.uleb128 0x7
	.string	"l"
	.byte	0x1
	.byte	0xd3
	.uaword	0x164
	.uaword	.LLST15
	.uleb128 0x7
	.string	"m"
	.byte	0x1
	.byte	0xd3
	.uaword	0x164
	.uaword	.LLST16
	.uleb128 0x7
	.string	"k"
	.byte	0x1
	.byte	0xd3
	.uaword	0x164
	.uaword	.LLST17
	.uleb128 0x7
	.string	"z"
	.byte	0x1
	.byte	0xd4
	.uaword	0x17a
	.uaword	.LLST18
	.uleb128 0x7
	.string	"t"
	.byte	0x1
	.byte	0xd4
	.uaword	0x17a
	.uaword	.LLST19
	.uleb128 0x9
	.string	"a"
	.byte	0x1
	.byte	0xd5
	.uaword	0x46e
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.uaword	0x469
	.uleb128 0xc
	.uaword	0x17a
	.uleb128 0xd
	.uaword	0x17a
	.uaword	0x47e
	.uleb128 0xe
	.uaword	0x127
	.byte	0x9
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.string	"Dsp_Med5"
	.byte	0x1
	.byte	0xce
	.byte	0x1
	.uaword	.LFB9
	.uaword	.LFE9
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x4b6
	.uleb128 0x6
	.string	"x"
	.byte	0x1
	.byte	0xce
	.uaword	0x463
	.uaword	.LLST20
	.uleb128 0x6
	.string	"y"
	.byte	0x1
	.byte	0xce
	.uaword	0x4b6
	.uaword	.LLST21
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.uaword	0x17a
	.uleb128 0xd
	.uaword	0x144
	.uaword	0x4cc
	.uleb128 0xe
	.uaword	0x127
	.byte	0xff
	.byte	0
	.uleb128 0x10
	.string	"CrcTable08"
	.byte	0x1
	.byte	0xe
	.uaword	0x4de
	.uleb128 0xc
	.uaword	0x4bc
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
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
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
	.byte	0
	.byte	0
	.byte	0
	.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL0
	.uaword	.LVL3
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL3
	.uaword	.LVL4
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL4
	.uaword	.LFE1
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL5
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL8
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL9
	.uaword	.LFE2
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL10
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL13
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL10
	.uaword	.LVL11
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL12
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL10
	.uaword	.LVL11
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL12
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL17
	.uaword	.LVL18
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL19
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL22
	.uaword	.LVL23
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL27
	.uaword	.LFE8
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LFB10
	.uaword	.LCFI0
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI0
	.uaword	.LFE10
	.uahalf	0x2
	.byte	0x8a
	.sleb128 40
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL28
	.uaword	.LVL33
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL50
	.uaword	.LFE10
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL28
	.uaword	.LVL29
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL30
	.uaword	.LVL31
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL35
	.uaword	.LVL36
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL37
	.uaword	.LVL40
	.uahalf	0x1
	.byte	0x50
	.uaword	.LVL46
	.uaword	.LVL48
	.uahalf	0x1
	.byte	0x50
	.uaword	.LVL48
	.uaword	.LVL49
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL49
	.uaword	.LVL50
	.uahalf	0x1
	.byte	0x50
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL28
	.uaword	.LVL34
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL35
	.uaword	.LVL36
	.uahalf	0x1
	.byte	0x51
	.uaword	.LVL36
	.uaword	.LVL42
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL46
	.uaword	.LVL47
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL47
	.uaword	.LVL48
	.uahalf	0x3
	.byte	0x75
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL48
	.uaword	.LVL50
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL50
	.uaword	.LFE10
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL31
	.uaword	.LVL34
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL39
	.uaword	.LVL42
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL32
	.uaword	.LVL50
	.uahalf	0x1
	.byte	0x51
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL31
	.uaword	.LVL50
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL35
	.uaword	.LVL42
	.uahalf	0x2
	.byte	0x84
	.sleb128 -40
	.uaword	.LVL43
	.uaword	.LVL44
	.uahalf	0x2
	.byte	0x8f
	.sleb128 -40
	.uaword	.LVL45
	.uaword	.LVL50
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL28
	.uaword	.LVL34
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	.LVL46
	.uaword	.LVL49
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL50
	.uaword	.LFE10
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL51
	.uaword	.LVL52-1
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL51
	.uaword	.LVL52-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL52-1
	.uaword	.LFE9
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
	.section .debug_aranges,"",@progbits
	.uaword	0x6c
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB0
	.uaword	.LFE0-.LFB0
	.uaword	.LFB1
	.uaword	.LFE1-.LFB1
	.uaword	.LFB2
	.uaword	.LFE2-.LFB2
	.uaword	.LFB3
	.uaword	.LFE3-.LFB3
	.uaword	.LFB4
	.uaword	.LFE4-.LFB4
	.uaword	.LFB5
	.uaword	.LFE5-.LFB5
	.uaword	.LFB6
	.uaword	.LFE6-.LFB6
	.uaword	.LFB7
	.uaword	.LFE7-.LFB7
	.uaword	.LFB8
	.uaword	.LFE8-.LFB8
	.uaword	.LFB10
	.uaword	.LFE10-.LFB10
	.uaword	.LFB9
	.uaword	.LFE9-.LFB9
	.uaword	0
	.uaword	0
	.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB0
	.uaword	.LFE0
	.uaword	.LFB1
	.uaword	.LFE1
	.uaword	.LFB2
	.uaword	.LFE2
	.uaword	.LFB3
	.uaword	.LFE3
	.uaword	.LFB4
	.uaword	.LFE4
	.uaword	.LFB5
	.uaword	.LFE5
	.uaword	.LFB6
	.uaword	.LFE6
	.uaword	.LFB7
	.uaword	.LFE7
	.uaword	.LFB8
	.uaword	.LFE8
	.uaword	.LFB10
	.uaword	.LFE10
	.uaword	.LFB9
	.uaword	.LFE9
	.uaword	0
	.uaword	0
	.section .debug_line,"",@progbits
.Ldebug_line0:
	.ident	"GCC: (HighTec Release v4.6.3.0) 4.6.3 build on 2013-05-17"
