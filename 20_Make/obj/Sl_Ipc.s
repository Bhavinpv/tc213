	.file	"Sl_Ipc.c"
.section .text,"ax",@progbits
.Ltext0:
	.section .text.STL_ASIL_CODE,"ax",@progbits
	.align 2
	.global	Sl_SpinLockInit
	.type	Sl_SpinLockInit, @function
Sl_SpinLockInit:
.LFB18:
	.file 1 "../30_Bsw/STL_common/Sl_Ipc.c"
	.loc 1 136 0
.LVL0:
	.loc 1 136 0
	movh.a	%a15, hi:Sl_SpinLockArr
	lea	%a15, [%a15] lo:Sl_SpinLockArr
	mov	%e2, 0
	lea	%a2, 5-1
	0:
	st.d	[%a15+]8, %e2
	loop	%a2, 0b
	.loc 1 143 0
	mov	%d15, -1
	movh.a	%a2, hi:Sl_SpinLockRednArr
	lea	%a15, [%a2] lo:Sl_SpinLockRednArr
	st.w	[%a2] lo:Sl_SpinLockRednArr, %d15
.LVL1:
	st.w	[%a15] 4, %d15
.LVL2:
	st.w	[%a15] 8, %d15
.LVL3:
	st.w	[%a15] 12, %d15
.LVL4:
	st.w	[%a15] 16, %d15
.LVL5:
	st.w	[%a15] 20, %d15
.LVL6:
	st.w	[%a15] 24, %d15
.LVL7:
	st.w	[%a15] 28, %d15
.LVL8:
	st.w	[%a15] 32, %d15
.LVL9:
	st.w	[%a15] 36, %d15
.LVL10:
	.loc 1 145 0
	ret
.LFE18:
	.size	Sl_SpinLockInit, .-Sl_SpinLockInit
	.align 2
	.global	Sl_GetSpinLock
	.type	Sl_GetSpinLock, @function
Sl_GetSpinLock:
.LFB19:
	.loc 1 174 0
.LVL11:
	.loc 1 177 0
	mov	%d2, 1
	.loc 1 179 0
	jlt.u	%d4, 10, .L7
.LVL12:
.L3:
	.loc 1 203 0
	ret
.LVL13:
.L7:
	.loc 1 183 0
	movh.a	%a15, hi:Sl_SpinLockArr
	sh	%d15, %d4, 2
	lea	%a15, [%a15] lo:Sl_SpinLockArr
	addsc.a	%a15, %a15, %d15, 0
	mov	%d4, %d5
.LVL14:
	mov.aa	%a4, %a15
	call	Mcal_GetSpinLock
.LVL15:
	.loc 1 184 0
	jnz	%d2, .L3
	.loc 1 187 0
	movh.a	%a2, hi:Sl_SpinLockRednArr
	lea	%a2, [%a2] lo:Sl_SpinLockRednArr
	addsc.a	%a2, %a2, %d15, 0
	ld.w	%d3, [%a15]0
	ld.w	%d15, [%a2]0
	add	%d3, -1
	xor	%d3, %d15
	jeq	%d3, -1, .L8
	.loc 1 195 0
	mov	%d2, 1
.LVL16:
	.loc 1 203 0
	ret
.L8:
	.loc 1 191 0
	add	%d15, -1
	.loc 1 190 0
	st.w	[%a2]0, %d15
	ret
.LFE19:
	.size	Sl_GetSpinLock, .-Sl_GetSpinLock
	.align 2
	.global	Sl_ReleaseSpinLock
	.type	Sl_ReleaseSpinLock, @function
Sl_ReleaseSpinLock:
.LFB20:
	.loc 1 229 0
.LVL17:
	.loc 1 230 0
	jlt.u	%d4, 10, .L11
	ret
.L11:
	.loc 1 235 0
	movh.a	%a15, hi:Sl_SpinLockRednArr
	sh	%d4, 2
.LVL18:
	lea	%a15, [%a15] lo:Sl_SpinLockRednArr
	addsc.a	%a15, %a15, %d4, 0
	.loc 1 238 0
	movh.a	%a4, hi:Sl_SpinLockArr
	.loc 1 236 0
	ld.w	%d15, [%a15]0
	.loc 1 238 0
	lea	%a4, [%a4] lo:Sl_SpinLockArr
	.loc 1 236 0
	add	%d15, 1
	.loc 1 238 0
	addsc.a	%a4, %a4, %d4, 0
	.loc 1 235 0
	st.w	[%a15]0, %d15
	.loc 1 238 0
	j	Mcal_ReleaseSpinLock
.LFE20:
	.size	Sl_ReleaseSpinLock, .-Sl_ReleaseSpinLock
	.section .data.STL_RAM_32BIT,"aw",@progbits
	.align 2
	.type	Sl_SpinLockArr, @object
	.size	Sl_SpinLockArr, 40
Sl_SpinLockArr:
	.zero	40
	.align 2
	.type	Sl_SpinLockRednArr, @object
	.size	Sl_SpinLockRednArr, 40
Sl_SpinLockRednArr:
	.zero	40
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
	.uaword	.LFB18
	.uaword	.LFE18-.LFB18
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB19
	.uaword	.LFE19-.LFB19
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB20
	.uaword	.LFE20-.LFB20
	.align 2
.LEFDE4:
.section .text,"ax",@progbits
.Letext0:
	.file 2 "../30_Bsw/Common/Platform_Types.h"
	.file 3 "../30_Bsw/Common/Std_Types.h"
	.file 4 "../30_Bsw/STL_common/Sl_Ipc.h"
	.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x37f
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.6.3 build on 2013-05-17"
	.byte	0x1
	.string	"../30_Bsw/STL_common/Sl_Ipc.c"
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
	.uaword	0x76
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x3
	.string	"uint32"
	.byte	0x2
	.byte	0x5f
	.uaword	0xd4
	.uleb128 0x3
	.string	"Std_ReturnType"
	.byte	0x3
	.byte	0x71
	.uaword	0xf1
	.uleb128 0x4
	.byte	0x4
	.byte	0x4
	.byte	0x3a
	.uaword	0x257
	.uleb128 0x5
	.string	"SL_SMUALRMGRP3_SPNLCK_ID"
	.sleb128 0
	.uleb128 0x5
	.string	"SL_LMU_SPNLCK_ID"
	.sleb128 1
	.uleb128 0x5
	.string	"SL_DMA_SPNLCK_ID"
	.sleb128 2
	.uleb128 0x5
	.string	"SL_FCE_SPNLCK_ID"
	.sleb128 3
	.uleb128 0x5
	.string	"SL_SMUDRIVER_SPNLCK_ID"
	.sleb128 4
	.uleb128 0x5
	.string	"SL_SMUALRMGRP3_BIT30_SPNLCK_ID"
	.sleb128 5
	.uleb128 0x5
	.string	"SL_SMUALRMGRP5_ALM0_SPNLCK_ID"
	.sleb128 6
	.uleb128 0x5
	.string	"SL_SMUALRMGRP5_ALM1_SPNLCK_ID"
	.sleb128 7
	.uleb128 0x5
	.string	"SL_SMUALRMGRP5_ALM2_SPNLCK_ID"
	.sleb128 8
	.uleb128 0x5
	.string	"SL_SMUALRMGRP5_ALM3_SPNLCK_ID"
	.sleb128 9
	.uleb128 0x5
	.string	"SL_SPINLOCK_CNT"
	.sleb128 10
	.byte	0
	.uleb128 0x3
	.string	"SlSpnlockId"
	.byte	0x4
	.byte	0x48
	.uaword	0x12e
	.uleb128 0x6
	.byte	0x1
	.string	"Sl_SpinLockInit"
	.byte	0x1
	.byte	0x87
	.byte	0x1
	.uaword	.LFB18
	.uaword	.LFE18
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x29e
	.uleb128 0x7
	.string	"Cnt"
	.byte	0x1
	.byte	0x89
	.uaword	0x10a
	.uaword	.LLST0
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.string	"Sl_GetSpinLock"
	.byte	0x1
	.byte	0xad
	.byte	0x1
	.uaword	0x118
	.uaword	.LFB19
	.uaword	.LFE19
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x2fa
	.uleb128 0x9
	.uaword	.LASF0
	.byte	0x1
	.byte	0xad
	.uaword	0x2fa
	.uaword	.LLST1
	.uleb128 0xa
	.string	"Timeout"
	.byte	0x1
	.byte	0xad
	.uaword	0x10a
	.uaword	.LLST2
	.uleb128 0x7
	.string	"RetVal"
	.byte	0x1
	.byte	0xaf
	.uaword	0x118
	.uaword	.LLST3
	.byte	0
	.uleb128 0xb
	.uaword	0x257
	.uleb128 0x6
	.byte	0x1
	.string	"Sl_ReleaseSpinLock"
	.byte	0x1
	.byte	0xe4
	.byte	0x1
	.uaword	.LFB20
	.uaword	.LFE20
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x336
	.uleb128 0x9
	.uaword	.LASF0
	.byte	0x1
	.byte	0xe4
	.uaword	0x257
	.uaword	.LLST4
	.byte	0
	.uleb128 0xc
	.uaword	0x10a
	.uaword	0x346
	.uleb128 0xd
	.uaword	0xd4
	.byte	0x9
	.byte	0
	.uleb128 0xe
	.string	"Sl_SpinLockArr"
	.byte	0x1
	.byte	0x53
	.uaword	0x336
	.byte	0x5
	.byte	0x3
	.uaword	Sl_SpinLockArr
	.uleb128 0xe
	.string	"Sl_SpinLockRednArr"
	.byte	0x1
	.byte	0x54
	.uaword	0x336
	.byte	0x5
	.byte	0x3
	.uaword	Sl_SpinLockRednArr
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
	.uleb128 0x9
	.uleb128 0x5
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.byte	0
	.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL2
	.uaword	.LVL3
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL3
	.uaword	.LVL4
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL5
	.uaword	.LVL6
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x2
	.byte	0x36
	.byte	0x9f
	.uaword	.LVL7
	.uaword	.LVL8
	.uahalf	0x2
	.byte	0x37
	.byte	0x9f
	.uaword	.LVL8
	.uaword	.LVL9
	.uahalf	0x2
	.byte	0x38
	.byte	0x9f
	.uaword	.LVL9
	.uaword	.LVL10
	.uahalf	0x2
	.byte	0x39
	.byte	0x9f
	.uaword	.LVL10
	.uaword	.LFE18
	.uahalf	0x2
	.byte	0x3a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL13
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL13
	.uaword	.LVL15-1
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL13
	.uaword	.LVL15
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL15
	.uaword	.LFE19
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL17
	.uaword	.LVL18
	.uahalf	0x1
	.byte	0x54
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
	.uaword	.LFB18
	.uaword	.LFE18-.LFB18
	.uaword	.LFB19
	.uaword	.LFE19-.LFB19
	.uaword	.LFB20
	.uaword	.LFE20-.LFB20
	.uaword	0
	.uaword	0
	.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB18
	.uaword	.LFE18
	.uaword	.LFB19
	.uaword	.LFE19
	.uaword	.LFB20
	.uaword	.LFE20
	.uaword	0
	.uaword	0
	.section .debug_line,"",@progbits
.Ldebug_line0:
	.section .debug_str,"",@progbits
.LASF0:
	.string	"SpinLckID"
	.extern	Mcal_ReleaseSpinLock,STT_FUNC,0
	.extern	Mcal_GetSpinLock,STT_FUNC,0
	.ident	"GCC: (HighTec Release v4.6.3.0) 4.6.3 build on 2013-05-17"
