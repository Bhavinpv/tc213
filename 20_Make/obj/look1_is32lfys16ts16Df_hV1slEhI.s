	.file	"look1_is32lfys16ts16Df_hV1slEhI.c"
.section .text,"ax",@progbits
.Ltext0:
	.section .text.MPU_ASIL_CODE,"ax",@progbits
	.align 3
	.global	look1_is32lfys16ts16Df_hV1slEhI
	.type	look1_is32lfys16ts16Df_hV1slEhI, @function
look1_is32lfys16ts16Df_hV1slEhI:
.LFB0:
	.file 1 "../40_Appl/HsfbNtc/look1_is32lfys16ts16Df_hV1slEhI.c"
	.loc 1 23 0
.LVL0:
	.loc 1 44 0
	ld.w	%d6, [%a4]0
	mov	%d3, 0
	.loc 1 45 0
	mov	%d15, 0
	.loc 1 46 0
	mov	%d2, 0
	.loc 1 44 0
	jge	%d6, %d4, .L2
	.loc 1 47 0
	addsc.a	%a15, %a4, %d5, 2
	mov	%d15, %d5
	ld.w	%d2, [%a15]0
	jge	%d4, %d2, .L3
	.loc 1 49 0
	sh	%d15, %d5, -1
.LVL1:
	sh	%d2, %d15, 2
	addsc.a	%a15, %a4, %d2, 0
	ld.w	%d3, [%a15]0
	jge	%d4, %d3, .L4
.L5:
	.loc 1 49 0 is_stmt 0 discriminator 2
	ld.w	%d2, [+%a15]-4
	add	%d15, -1
.LVL2:
	jlt	%d4, %d2, .L5
	sh	%d2, %d15, 2
.L4:
	.loc 1 21 0 is_stmt 1 discriminator 1
	addsc.a	%a15, %a4, %d2, 0
	j	.L6
.L11:
	.loc 1 53 0
	mov	%d15, %d3
.LVL3:
.L6:
	.loc 1 52 0 discriminator 1
	ld.w	%d2, [+%a15]4
	add	%d3, %d15, 1
	jge	%d4, %d2, .L11
	.loc 1 56 0
	addsc.a	%a4, %a4, %d15, 2
.LVL4:
	sh	%d3, %d15, 1
	ld.w	%d6, [%a4]0
	sub	%d4, %d6
.LVL5:
	.loc 1 57 0
	sub	%d2, %d6
	.loc 1 56 0
	utof	%d4, %d4
	.loc 1 57 0
	utof	%d2, %d2
	.loc 1 56 0
	div.f	%d2, %d4, %d2
.LVL6:
.L2:
	.loc 1 69 0
	jeq	%d15, %d5, .L3
	.loc 1 72 0
	addsc.a	%a15, %a5, %d3, 0
	addsc.a	%a5, %a5, %d15, 1
.LVL7:
	ld.h	%d3, [%a15]0
	ld.h	%d4, [%a5] 2
	itof	%d3, %d3
	itof	%d4, %d4
	sub.f	%d4, %d4, %d3
	madd.f	%d2, %d3, %d4, %d2
.LVL8:
	.loc 1 76 0
	ftoiz	%d2, %d2
.LVL9:
	.loc 1 77 0
	extr	%d2, %d2, 0, 16
	ret
.LVL10:
.L3:
	.loc 1 70 0
	addsc.a	%a5, %a5, %d15, 1
.LVL11:
	ld.h	%d2, [%a5]0
	itof	%d2, %d2
.LVL12:
	.loc 1 76 0
	ftoiz	%d2, %d2
.LVL13:
	.loc 1 77 0
	extr	%d2, %d2, 0, 16
	ret
.LFE0:
	.size	look1_is32lfys16ts16Df_hV1slEhI, .-look1_is32lfys16ts16Df_hV1slEhI
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
.section .text,"ax",@progbits
.Letext0:
	.file 2 "../30_Bsw/Common/rtwtypes.h"
	.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x21f
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.6.3 build on 2013-05-17"
	.byte	0x1
	.string	"../40_Appl/HsfbNtc/look1_is32lfys16ts16Df_hV1slEhI.c"
	.string	"S:\\\\20_Make"
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
	.uaword	0xad
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.string	"int32_T"
	.byte	0x2
	.byte	0x54
	.uaword	0xdf
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.string	"uint32_T"
	.byte	0x2
	.byte	0x55
	.uaword	0xf6
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x3
	.string	"real32_T"
	.byte	0x2
	.byte	0x56
	.uaword	0x116
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
	.uaword	0x9e
	.uleb128 0x3
	.string	"s32"
	.byte	0x2
	.byte	0x80
	.uaword	0xd0
	.uleb128 0x3
	.string	"u32"
	.byte	0x2
	.byte	0x81
	.uaword	0xe6
	.uleb128 0x3
	.string	"f32"
	.byte	0x2
	.byte	0x82
	.uaword	0x106
	.uleb128 0x4
	.byte	0x1
	.string	"look1_is32lfys16ts16Df_hV1slEhI"
	.byte	0x1
	.byte	0x15
	.byte	0x1
	.uaword	0x146
	.uaword	.LFB0
	.uaword	.LFE0
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x20c
	.uleb128 0x5
	.string	"u0"
	.byte	0x1
	.byte	0x15
	.uaword	0x151
	.uaword	.LLST0
	.uleb128 0x5
	.string	"bp0"
	.byte	0x1
	.byte	0x15
	.uaword	0x20c
	.uaword	.LLST1
	.uleb128 0x5
	.string	"table"
	.byte	0x1
	.byte	0x16
	.uaword	0x217
	.uaword	.LLST2
	.uleb128 0x6
	.string	"maxIndex"
	.byte	0x1
	.byte	0x16
	.uaword	0x15c
	.byte	0x1
	.byte	0x55
	.uleb128 0x7
	.string	"frac"
	.byte	0x1
	.byte	0x18
	.uaword	0x167
	.uaword	.LLST3
	.uleb128 0x7
	.string	"bpIdx"
	.byte	0x1
	.byte	0x19
	.uaword	0x15c
	.uaword	.LLST4
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.uaword	0x212
	.uleb128 0x9
	.uaword	0x151
	.uleb128 0x8
	.byte	0x4
	.uaword	0x21d
	.uleb128 0x9
	.uaword	0x146
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
	.uleb128 0x5
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
	.uleb128 0xa
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
	.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL0
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL4
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL0
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL10
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL6
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL1
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
	.section .debug_aranges,"",@progbits
	.uaword	0x1c
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB0
	.uaword	.LFE0-.LFB0
	.uaword	0
	.uaword	0
	.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB0
	.uaword	.LFE0
	.uaword	0
	.uaword	0
	.section .debug_line,"",@progbits
.Ldebug_line0:
	.ident	"GCC: (HighTec Release v4.6.3.0) 4.6.3 build on 2013-05-17"
