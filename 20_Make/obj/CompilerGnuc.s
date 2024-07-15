	.file	"CompilerGnuc.c"
.section .text,"ax",@progbits
.Ltext0:
	.section .text.MPU_QM_CODE,"ax",@progbits
	.align 3
	.global	Ifx_C_Init
	.type	Ifx_C_Init, @function
Ifx_C_Init:
.LFB0:
	.file 1 "../30_Bsw/Compilers/CompilerGnuc.c"
	.loc 1 53 0
.LVL0:
	.loc 1 62 0
	movh.a	%a15, hi:__clear_table
	ld.w	%d15, [%a15] lo:__clear_table
	.loc 1 53 0
	sub.a	%SP, 8
.LCFI0:
	.loc 1 62 0
	lea	%a3, [%a15] lo:__clear_table
	st.w	[%SP]0, %d15
.LVL1:
	.loc 1 63 0
	ld.w	%d15, [%a3] 4
.LVL2:
	.loc 1 75 0
	mov	%e2, 0
	.loc 1 66 0
	lea	%a3, [%a3] 8
	.loc 1 80 0
	mov	%d7, 0
	.loc 1 85 0
	mov	%d6, 0
	.loc 1 90 0
	mov	%d5, 0
	.loc 1 66 0
	jeq	%d15, -1, .L2
.LVL3:
.L3:
	.loc 1 71 0
	sh	%d4, %d15, -3
.LVL4:
	.loc 1 73 0
	jz	%d4, .L6
	.loc 1 75 0
	mov.a	%a15, %d4
	add.a	%a15, -1
.LVL5:
.L19:
	ld.a	%a2, [%SP]0
	st.d	[%a2+]8, %e2
	st.a	[%SP]0, %a2
	loop	%a15, .L19
.L6:
	.loc 1 78 0
	jz.t	%d15, 2, .L8
	.loc 1 80 0
	ld.a	%a15, [%SP]0
	st.w	[%a15+]4, %d7
	st.a	[%SP]0, %a15
.L8:
	.loc 1 83 0
	jz.t	%d15, 1, .L9
	.loc 1 85 0
	ld.a	%a15, [%SP]0
	st.h	[%a15+]2, %d6
	st.a	[%SP]0, %a15
.L9:
	.loc 1 88 0
	jz.t	%d15, 0, .L10
	.loc 1 90 0
	ld.a	%a15, [%SP]0
	st.b	[%a15]0, %d5
.L10:
.LVL6:
	.loc 1 60 0 discriminator 1
	jz.a	%a3, .L2
	.loc 1 62 0
	ld.w	%d15, [%a3]0
.LVL7:
	st.w	[%SP]0, %d15
.LVL8:
	.loc 1 63 0
	ld.w	%d15, [%a3] 4
.LVL9:
	.loc 1 52 0
	lea	%a3, [%a3] 8
.LVL10:
	.loc 1 66 0
	jne	%d15, -1, .L3
.LVL11:
.L2:
	.loc 1 99 0 discriminator 1
	movh.a	%a15, hi:__copy_table
	ld.w	%d15, [%a15] lo:__copy_table
.LVL12:
	lea	%a4, [%a15] lo:__copy_table
	st.w	[%SP] 4, %d15
.LVL13:
	.loc 1 100 0 discriminator 1
	ld.w	%d15, [%a4] 4
	st.w	[%SP]0, %d15
.LVL14:
	.loc 1 101 0 discriminator 1
	ld.w	%d15, [%a4] 8
.LVL15:
	.loc 1 104 0 discriminator 1
	lea	%a4, [%a4] 12
	jeq	%d15, -1, .L1
.LVL16:
.L5:
	.loc 1 109 0
	sh	%d2, %d15, -3
.LVL17:
	.loc 1 111 0
	jz	%d2, .L12
	mov.a	%a15, %d2
	add.a	%a15, -1
.LVL18:
.L18:
	.loc 1 113 0
	ld.a	%a3, [%SP]0
	ld.a	%a2, [%SP] 4
	ld.d	%e2, [%a2+]8
	st.d	[%a3+]8, %e2
	st.a	[%SP]0, %a3
	st.a	[%SP] 4, %a2
	loop	%a15, .L18
.L12:
	.loc 1 116 0
	jz.t	%d15, 2, .L14
	.loc 1 118 0
	ld.a	%a2, [%SP]0
	ld.a	%a15, [%SP] 4
	ld.w	%d2, [%a15+]4
	st.w	[%a2+]4, %d2
	st.a	[%SP]0, %a2
	st.a	[%SP] 4, %a15
.L14:
	.loc 1 121 0
	jz.t	%d15, 1, .L15
	.loc 1 123 0
	ld.a	%a2, [%SP]0
	ld.a	%a15, [%SP] 4
	ld.hu	%d2, [%a15+]2
	st.h	[%a2+]2, %d2
	st.a	[%SP]0, %a2
	st.a	[%SP] 4, %a15
.L15:
	.loc 1 126 0
	jz.t	%d15, 0, .L16
	.loc 1 128 0
	ld.a	%a15, [%SP]0
	ld.a	%a2, [%SP] 4
	ld.bu	%d15, [%a2]0
.LVL19:
	st.b	[%a15]0, %d15
.L16:
.LVL20:
	.loc 1 97 0 discriminator 1
	jz.a	%a4, .L1
	.loc 1 99 0
	ld.w	%d15, [%a4]0
	st.w	[%SP] 4, %d15
.LVL21:
	.loc 1 100 0
	ld.w	%d15, [%a4] 4
	st.w	[%SP]0, %d15
.LVL22:
	.loc 1 101 0
	ld.w	%d15, [%a4] 8
.LVL23:
	.loc 1 52 0
	lea	%a4, [%a4] 12
.LVL24:
	.loc 1 104 0
	jne	%d15, -1, .L5
.LVL25:
.L1:
	ret
.LFE0:
	.size	Ifx_C_Init, .-Ifx_C_Init
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
	.byte	0x4
	.uaword	.LCFI0-.LFB0
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE0:
.section .text,"ax",@progbits
.Letext0:
	.file 2 "../30_Bsw/Common/Platform_Types.h"
	.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x267
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.6.3 build on 2013-05-17"
	.byte	0x1
	.string	"../30_Bsw/Compilers/CompilerGnuc.c"
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
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
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
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x3
	.string	"uint8"
	.byte	0x2
	.byte	0x5b
	.uaword	0x7b
	.uleb128 0x3
	.string	"uint16"
	.byte	0x2
	.byte	0x5d
	.uaword	0x99
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x3
	.string	"uint32"
	.byte	0x2
	.byte	0x5f
	.uaword	0xd9
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.string	"long long int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.string	"long long unsigned int"
	.uleb128 0x4
	.byte	0x4
	.byte	0x1
	.byte	0x21
	.uaword	0x194
	.uleb128 0x5
	.string	"ucPtr"
	.byte	0x1
	.byte	0x23
	.uaword	0x194
	.uleb128 0x5
	.string	"usPtr"
	.byte	0x1
	.byte	0x24
	.uaword	0x19a
	.uleb128 0x5
	.string	"uiPtr"
	.byte	0x1
	.byte	0x25
	.uaword	0x1a0
	.uleb128 0x5
	.string	"ullPtr"
	.byte	0x1
	.byte	0x26
	.uaword	0x1a6
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0xf6
	.uleb128 0x6
	.byte	0x4
	.uaword	0x103
	.uleb128 0x6
	.byte	0x4
	.uaword	0x11d
	.uleb128 0x6
	.byte	0x4
	.uaword	0x13c
	.uleb128 0x7
	.uaword	0x156
	.uleb128 0x8
	.byte	0x1
	.string	"Ifx_C_Init"
	.byte	0x1
	.byte	0x34
	.byte	0x1
	.uaword	.LFB0
	.uaword	.LFE0
	.uaword	.LLST0
	.uaword	0x232
	.uleb128 0x9
	.string	"pBlockDest"
	.byte	0x1
	.byte	0x36
	.uaword	0x1ac
	.byte	0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x9
	.string	"pBlockSrc"
	.byte	0x1
	.byte	0x36
	.uaword	0x1ac
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0xa
	.string	"uiLength"
	.byte	0x1
	.byte	0x37
	.uaword	0x11d
	.uaword	.LLST1
	.uleb128 0xa
	.string	"uiCnt"
	.byte	0x1
	.byte	0x37
	.uaword	0x11d
	.uaword	.LLST2
	.uleb128 0xa
	.string	"pTable"
	.byte	0x1
	.byte	0x38
	.uaword	0x1a0
	.uaword	.LLST3
	.byte	0
	.uleb128 0xb
	.uaword	0x11d
	.uaword	0x23d
	.uleb128 0xc
	.byte	0
	.uleb128 0xd
	.string	"__clear_table"
	.byte	0x1
	.byte	0x1e
	.uaword	0x232
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.string	"__copy_table"
	.byte	0x1
	.byte	0x1f
	.uaword	0x232
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
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uaword	.LFB0
	.uaword	.LCFI0
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI0
	.uaword	.LFE0
	.uahalf	0x2
	.byte	0x8a
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL3
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL9
	.uaword	.LVL10
	.uahalf	0x2
	.byte	0x83
	.sleb128 4
	.uaword	.LVL10
	.uaword	.LVL11
	.uahalf	0x2
	.byte	0x83
	.sleb128 -4
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL16
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL23
	.uaword	.LVL24
	.uahalf	0x2
	.byte	0x84
	.sleb128 8
	.uaword	.LVL24
	.uaword	.LVL25
	.uahalf	0x2
	.byte	0x84
	.sleb128 -4
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL17
	.uaword	.LVL18
	.uahalf	0x3
	.byte	0x72
	.sleb128 -1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL6
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x63
	.uaword	.LVL8
	.uaword	.LVL10
	.uahalf	0x3
	.byte	0x83
	.sleb128 4
	.byte	0x9f
	.uaword	.LVL10
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x63
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL21
	.uaword	.LVL22
	.uahalf	0x3
	.byte	0x84
	.sleb128 4
	.byte	0x9f
	.uaword	.LVL22
	.uaword	.LVL24
	.uahalf	0x3
	.byte	0x84
	.sleb128 8
	.byte	0x9f
	.uaword	.LVL24
	.uaword	.LVL25
	.uahalf	0x1
	.byte	0x64
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
	.extern	__copy_table,STT_OBJECT,-1
	.extern	__clear_table,STT_OBJECT,-1
	.ident	"GCC: (HighTec Release v4.6.3.0) 4.6.3 build on 2013-05-17"
