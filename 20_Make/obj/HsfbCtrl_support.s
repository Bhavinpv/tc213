	.file	"HsfbCtrl_support.c"
.section .text,"ax",@progbits
.Ltext0:
	.section .text.MPU_ASIL_CODE,"ax",@progbits
	.align 3
	.global	HsfbCtrl_SR_Calc
	.type	HsfbCtrl_SR_Calc, @function
HsfbCtrl_SR_Calc:
.LFB0:
	.file 1 "../40_Appl/HsfbCtrl/HsfbCtrl_support.c"
	.loc 1 33 0
.LVL0:
	.loc 1 35 0
	jz	%d4, .L2
	.loc 1 36 0
	ld.w	%d7, [%a5]0
.LVL1:
	sub.f	%d5, %d5, %d7
.LVL2:
	.loc 1 37 0
	cmp.f	%d15, %d5, %d6
	jnz.t	%d15, 2, .L3
	.loc 1 40 0
	addih	%d6, %d6, 0x8000
.LVL3:
	cmp.f	%d15, %d6, %d5
	extr.u	%d15, %d15, 2, 1
	.loc 1 36 0
	cmovn	%d6, %d15, %d5
.L3:
.LVL4:
	.loc 1 45 0
	add.f	%d7, %d6, %d7
	st.w	[%a4]0, %d7
	.loc 1 50 0
	st.w	[%a5]0, %d7
	.loc 1 51 0
	ret
.LVL5:
.L2:
	.loc 1 47 0
	st.w	[%a4]0, %d7
	.loc 1 50 0
	st.w	[%a5]0, %d7
	.loc 1 51 0
	ret
.LFE0:
	.size	HsfbCtrl_SR_Calc, .-HsfbCtrl_SR_Calc
	.section .code_ram,"ax",@progbits
	.align 3
	.global	HsfbCtrl_PI_Calc
	.type	HsfbCtrl_PI_Calc, @function
HsfbCtrl_PI_Calc:
.LFB1:
	.loc 1 67 0
.LVL6:
	.loc 1 67 0
	ld.w	%d3, [%SP]0
	ld.w	%d0, [%SP] 4
	.loc 1 69 0
	jnz	%d4, .L8
	.loc 1 74 0
	madd.f	%d7, %d5, %d7, %d5
.LVL7:
	.loc 1 69 0
	ld.w	%d2, [%a5]0
	ld.w	%d15, [%a5] 4
	.loc 1 74 0
	sub.f	%d7, %d7, %d2
	madd.f	%d6, %d15, %d7, %d6
.LVL8:
	.loc 1 76 0
	cmp.f	%d15, %d6, %d3
	jnz.t	%d15, 2, .L12
.L15:
	.loc 1 79 0
	cmp.f	%d15, %d6, %d0
	extr.u	%d15, %d15, 0, 1
	.loc 1 80 0
	cmov	%d6, %d15, %d0
.LVL9:
	.loc 1 85 0
	seln	%d4, %d4, %d6, 0
.LVL10:
	.loc 1 84 0
	st.w	[%a4]0, %d4
	.loc 1 90 0
	st.w	[%a5]0, %d5
	.loc 1 91 0
	st.w	[%a5] 4, %d6
	.loc 1 92 0
	ret
.LVL11:
.L8:
	.loc 1 74 0
	madd.f	%d7, %d5, %d7, %d5
.LVL12:
	.loc 1 70 0
	mov	%d15, 0
	.loc 1 71 0
	mov	%d2, %d15
	.loc 1 74 0
	sub.f	%d7, %d7, %d2
	.loc 1 70 0
	st.w	[%a5]0, %d15
	.loc 1 74 0
	madd.f	%d6, %d15, %d7, %d6
.LVL13:
	.loc 1 71 0
	st.w	[%a5] 4, %d15
	.loc 1 76 0
	cmp.f	%d15, %d6, %d3
	jz.t	%d15, 2, .L15
.L12:
	.loc 1 77 0
	mov	%d6, %d3
.LVL14:
	.loc 1 85 0
	seln	%d4, %d4, %d6, 0
.LVL15:
	.loc 1 84 0
	st.w	[%a4]0, %d4
	.loc 1 90 0
	st.w	[%a5]0, %d5
	.loc 1 91 0
	st.w	[%a5] 4, %d6
	.loc 1 92 0
	ret
.LFE1:
	.size	HsfbCtrl_PI_Calc, .-HsfbCtrl_PI_Calc
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
.section .text,"ax",@progbits
.Letext0:
	.file 2 "../30_Bsw/Common/rtwtypes.h"
	.file 3 "../40_Appl/HsfbCtrl/HsfbCtrl_support.h"
	.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x319
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.6.3 build on 2013-05-17"
	.byte	0x1
	.string	"../40_Appl/HsfbCtrl/HsfbCtrl_support.c"
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
	.uleb128 0x3
	.string	"real32_T"
	.byte	0x2
	.byte	0x56
	.uaword	0xda
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
	.uaword	0x7f
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x3
	.string	"f32"
	.byte	0x2
	.byte	0x82
	.uaword	0xca
	.uleb128 0x3
	.string	"bit"
	.byte	0x2
	.byte	0x84
	.uaword	0xed
	.uleb128 0x4
	.byte	0x4
	.byte	0x3
	.byte	0x18
	.uaword	0x155
	.uleb128 0x5
	.string	"ref_delay_DSTATE"
	.byte	0x3
	.byte	0x19
	.uaword	0x11b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"DW_HsfbCtrl_SR_Calc_T"
	.byte	0x3
	.byte	0x1a
	.uaword	0x131
	.uleb128 0x4
	.byte	0x8
	.byte	0x3
	.byte	0x21
	.uaword	0x1b1
	.uleb128 0x5
	.string	"err_delay_DSTATE"
	.byte	0x3
	.byte	0x22
	.uaword	0x11b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"out_delay_DSTATE"
	.byte	0x3
	.byte	0x23
	.uaword	0x11b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x3
	.string	"DW_HsfbCtrl_PI_Calc_T"
	.byte	0x3
	.byte	0x24
	.uaword	0x172
	.uleb128 0x6
	.byte	0x1
	.string	"HsfbCtrl_SR_Calc"
	.byte	0x1
	.byte	0x1f
	.byte	0x1
	.uaword	.LFB0
	.uaword	.LFE0
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x261
	.uleb128 0x7
	.string	"en"
	.byte	0x1
	.byte	0x1f
	.uaword	0x126
	.byte	0x1
	.byte	0x54
	.uleb128 0x8
	.string	"cmd"
	.byte	0x1
	.byte	0x1f
	.uaword	0x11b
	.uaword	.LLST0
	.uleb128 0x8
	.string	"step"
	.byte	0x1
	.byte	0x1f
	.uaword	0x11b
	.uaword	.LLST1
	.uleb128 0x8
	.string	"rst_val"
	.byte	0x1
	.byte	0x1f
	.uaword	0x11b
	.uaword	.LLST2
	.uleb128 0x7
	.string	"ref"
	.byte	0x1
	.byte	0x1f
	.uaword	0x261
	.byte	0x1
	.byte	0x64
	.uleb128 0x7
	.string	"localDW"
	.byte	0x1
	.byte	0x20
	.uaword	0x267
	.byte	0x1
	.byte	0x65
	.uleb128 0x9
	.string	"Sum_d"
	.byte	0x1
	.byte	0x22
	.uaword	0x11b
	.uaword	.LLST3
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.uaword	0x11b
	.uleb128 0xa
	.byte	0x4
	.uaword	0x155
	.uleb128 0x6
	.byte	0x1
	.string	"HsfbCtrl_PI_Calc"
	.byte	0x1
	.byte	0x41
	.byte	0x1
	.uaword	.LFB1
	.uaword	.LFE1
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x316
	.uleb128 0x8
	.string	"rst"
	.byte	0x1
	.byte	0x41
	.uaword	0x126
	.uaword	.LLST4
	.uleb128 0x7
	.string	"err"
	.byte	0x1
	.byte	0x41
	.uaword	0x11b
	.byte	0x1
	.byte	0x55
	.uleb128 0x8
	.string	"kp"
	.byte	0x1
	.byte	0x41
	.uaword	0x11b
	.uaword	.LLST5
	.uleb128 0x8
	.string	"ki"
	.byte	0x1
	.byte	0x41
	.uaword	0x11b
	.uaword	.LLST6
	.uleb128 0x7
	.string	"max"
	.byte	0x1
	.byte	0x41
	.uaword	0x11b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x7
	.string	"min"
	.byte	0x1
	.byte	0x41
	.uaword	0x11b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x7
	.string	"out"
	.byte	0x1
	.byte	0x42
	.uaword	0x261
	.byte	0x1
	.byte	0x64
	.uleb128 0x7
	.string	"localDW"
	.byte	0x1
	.byte	0x42
	.uaword	0x316
	.byte	0x1
	.byte	0x65
	.uleb128 0x9
	.string	"Sum_f"
	.byte	0x1
	.byte	0x44
	.uaword	0x11b
	.uaword	.LLST7
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.uaword	0x1b1
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
	.uleb128 0x7
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
	.uleb128 0x6
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
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
	.uaword	.LVL2
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL5
	.uaword	.LFE0
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL3
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL5
	.uaword	.LFE0
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL5
	.uaword	.LFE0
	.uahalf	0x1
	.byte	0x57
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL2
	.uaword	.LVL4
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL6
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL11
	.uaword	.LVL15
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL6
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL11
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x57
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL8
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL13
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL14
	.uaword	.LFE1
	.uahalf	0x2
	.byte	0x91
	.sleb128 0
	.uaword	0
	.uaword	0
	.section .debug_aranges,"",@progbits
	.uaword	0x24
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
	.uaword	0
	.uaword	0
	.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB0
	.uaword	.LFE0
	.uaword	.LFB1
	.uaword	.LFE1
	.uaword	0
	.uaword	0
	.section .debug_line,"",@progbits
.Ldebug_line0:
	.ident	"GCC: (HighTec Release v4.6.3.0) 4.6.3 build on 2013-05-17"
