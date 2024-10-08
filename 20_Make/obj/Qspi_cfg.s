	.file	"Qspi_cfg.c"
.section .text,"ax",@progbits
.Ltext0:
	.section .text.MPU_QM_CODE,"ax",@progbits
	.align 3
	.global	Qspi_cfg
	.type	Qspi_cfg, @function
Qspi_cfg:
.LFB7:
	.file 1 "../30_Bsw/Mcal/Qspi/Qspi_cfg.c"
	.loc 1 25 0
	.loc 1 27 0
	mov	%d15, 8
	.loc 1 26 0
	call	IfxScuWdt_getCpuWatchdogPassword
	mov	%d4, %d2
	call	IfxScuWdt_clearCpuEndinit
	.loc 1 27 0
	st.w	0xf0001c00, %d15
	.loc 1 30 0
	mov	%d15, 15368
	.loc 1 28 0
	call	IfxScuWdt_getCpuWatchdogPassword
	mov	%d4, %d2
	call	IfxScuWdt_setCpuEndinit
	.loc 1 30 0
	st.w	0xf0001c10, %d15
	.loc 1 32 0
	mov	%d15, 0
	st.w	0xf0001c04, %d15
	.loc 1 34 0
	movh	%d15, 5120
	st.w	0xf0001c14, %d15
	.loc 1 36 0
	mov	%d15, 1289
	st.w	0xf0001c20, %d15
	.loc 1 39 0
	movh	%d15, 1
	st.w	0xf0001c48, %d15
	.loc 1 42 0
	ld.w	%d15, 0xf0001c40
	insert	%d15, %d15, 0, 12, 20
	jz	%d15, .L2
	.loc 1 44 0
	lea	%a15, 4095
.L4:
	st.a	0xf0001c54, %a15
	.loc 1 42 0
	ld.w	%d15, 0xf0001c40
	insert	%d15, %d15, 0, 12, 20
	jnz	%d15, .L4
.L2:
	.loc 1 47 0
	movh	%d15, 1953
	add	%d15, 1
	st.w	0xf0001c60, %d15
	.loc 1 50 0
	ld.w	%d15, 0xf0001c10
	insert	%d15, %d15, 1, 24, 1
	st.w	0xf0001c10, %d15
	.loc 1 51 0
	ret
.LFE7:
	.size	Qspi_cfg, .-Qspi_cfg
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
	.uaword	.LFB7
	.uaword	.LFE7-.LFB7
	.align 2
.LEFDE0:
.section .text,"ax",@progbits
.Letext0:
	.file 2 "../30_Bsw/Common/TC21x/IfxQspi_regdef.h"
	.file 3 "../30_Bsw/Common/Platform_Types.h"
	.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0xb4c
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.6.3 build on 2013-05-17"
	.byte	0x1
	.string	"../30_Bsw/Mcal/Qspi/Qspi_cfg.c"
	.string	"S:\\\\20_Make"
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_ranges0+0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x3
	.string	"_Ifx_QSPI_BACONENTRY_Bits"
	.byte	0x4
	.byte	0x2
	.byte	0x6a
	.uaword	0xaa
	.uleb128 0x4
	.string	"E"
	.byte	0x2
	.byte	0x6c
	.uaword	0x68
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_QSPI_BACONENTRY_Bits"
	.byte	0x2
	.byte	0x6d
	.uaword	0x78
	.uleb128 0x3
	.string	"_Ifx_QSPI_CLC_Bits"
	.byte	0x4
	.byte	0x2
	.byte	0x7f
	.uaword	0x14c
	.uleb128 0x4
	.string	"DISR"
	.byte	0x2
	.byte	0x81
	.uaword	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"DISS"
	.byte	0x2
	.byte	0x82
	.uaword	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"reserved_2"
	.byte	0x2
	.byte	0x83
	.uaword	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"EDIS"
	.byte	0x2
	.byte	0x84
	.uaword	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"reserved_4"
	.byte	0x2
	.byte	0x85
	.uaword	0x68
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_QSPI_CLC_Bits"
	.byte	0x2
	.byte	0x86
	.uaword	0xca
	.uleb128 0x3
	.string	"_Ifx_QSPI_ECON_Bits"
	.byte	0x4
	.byte	0x2
	.byte	0x8f
	.uaword	0x215
	.uleb128 0x4
	.string	"Q"
	.byte	0x2
	.byte	0x91
	.uaword	0x68
	.byte	0x4
	.byte	0x6
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"A"
	.byte	0x2
	.byte	0x92
	.uaword	0x68
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"B"
	.byte	0x2
	.byte	0x93
	.uaword	0x68
	.byte	0x4
	.byte	0x2
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"C"
	.byte	0x2
	.byte	0x94
	.uaword	0x68
	.byte	0x4
	.byte	0x2
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"CPH"
	.byte	0x2
	.byte	0x95
	.uaword	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"CPOL"
	.byte	0x2
	.byte	0x96
	.uaword	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"PAREN"
	.byte	0x2
	.byte	0x97
	.uaword	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.uaword	.LASF0
	.byte	0x2
	.byte	0x98
	.uaword	0x68
	.byte	0x4
	.byte	0xf
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"BE"
	.byte	0x2
	.byte	0x99
	.uaword	0x68
	.byte	0x4
	.byte	0x2
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_QSPI_ECON_Bits"
	.byte	0x2
	.byte	0x9a
	.uaword	0x165
	.uleb128 0x3
	.string	"_Ifx_QSPI_FLAGSCLEAR_Bits"
	.byte	0x4
	.byte	0x2
	.byte	0x9d
	.uaword	0x2ed
	.uleb128 0x4
	.string	"ERRORCLEARS"
	.byte	0x2
	.byte	0x9f
	.uaword	0x68
	.byte	0x4
	.byte	0x9
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"TXC"
	.byte	0x2
	.byte	0xa0
	.uaword	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"RXC"
	.byte	0x2
	.byte	0xa1
	.uaword	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"PT1C"
	.byte	0x2
	.byte	0xa2
	.uaword	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"PT2C"
	.byte	0x2
	.byte	0xa3
	.uaword	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.uaword	.LASF1
	.byte	0x2
	.byte	0xa4
	.uaword	0x68
	.byte	0x4
	.byte	0x2
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"USRC"
	.byte	0x2
	.byte	0xa5
	.uaword	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"reserved_16"
	.byte	0x2
	.byte	0xa6
	.uaword	0x68
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_QSPI_FLAGSCLEAR_Bits"
	.byte	0x2
	.byte	0xa7
	.uaword	0x22f
	.uleb128 0x3
	.string	"_Ifx_QSPI_GLOBALCON1_Bits"
	.byte	0x4
	.byte	0x2
	.byte	0xaa
	.uaword	0x441
	.uleb128 0x4
	.string	"ERRORENS"
	.byte	0x2
	.byte	0xac
	.uaword	0x68
	.byte	0x4
	.byte	0x9
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"TXEN"
	.byte	0x2
	.byte	0xad
	.uaword	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"RXEN"
	.byte	0x2
	.byte	0xae
	.uaword	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"PT1EN"
	.byte	0x2
	.byte	0xaf
	.uaword	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"PT2EN"
	.byte	0x2
	.byte	0xb0
	.uaword	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.uaword	.LASF1
	.byte	0x2
	.byte	0xb1
	.uaword	0x68
	.byte	0x4
	.byte	0x2
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"USREN"
	.byte	0x2
	.byte	0xb2
	.uaword	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"TXFIFOINT"
	.byte	0x2
	.byte	0xb3
	.uaword	0x68
	.byte	0x4
	.byte	0x2
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"RXFIFOINT"
	.byte	0x2
	.byte	0xb4
	.uaword	0x68
	.byte	0x4
	.byte	0x2
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"PT1"
	.byte	0x2
	.byte	0xb5
	.uaword	0x68
	.byte	0x4
	.byte	0x3
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"PT2"
	.byte	0x2
	.byte	0xb6
	.uaword	0x68
	.byte	0x4
	.byte	0x3
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"TXFM"
	.byte	0x2
	.byte	0xb7
	.uaword	0x68
	.byte	0x4
	.byte	0x2
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"RXFM"
	.byte	0x2
	.byte	0xb8
	.uaword	0x68
	.byte	0x4
	.byte	0x2
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"reserved_30"
	.byte	0x2
	.byte	0xb9
	.uaword	0x68
	.byte	0x4
	.byte	0x2
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_QSPI_GLOBALCON1_Bits"
	.byte	0x2
	.byte	0xba
	.uaword	0x30d
	.uleb128 0x3
	.string	"_Ifx_QSPI_GLOBALCON_Bits"
	.byte	0x4
	.byte	0x2
	.byte	0xbd
	.uaword	0x587
	.uleb128 0x4
	.string	"TQ"
	.byte	0x2
	.byte	0xbf
	.uaword	0x68
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"reserved_8"
	.byte	0x2
	.byte	0xc0
	.uaword	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"SI"
	.byte	0x2
	.byte	0xc1
	.uaword	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"EXPECT"
	.byte	0x2
	.byte	0xc2
	.uaword	0x68
	.byte	0x4
	.byte	0x4
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"LB"
	.byte	0x2
	.byte	0xc3
	.uaword	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"DEL0"
	.byte	0x2
	.byte	0xc4
	.uaword	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"STROBE"
	.byte	0x2
	.byte	0xc5
	.uaword	0x68
	.byte	0x4
	.byte	0x5
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"SRF"
	.byte	0x2
	.byte	0xc6
	.uaword	0x68
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"STIP"
	.byte	0x2
	.byte	0xc7
	.uaword	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"reserved_23"
	.byte	0x2
	.byte	0xc8
	.uaword	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"EN"
	.byte	0x2
	.byte	0xc9
	.uaword	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"MS"
	.byte	0x2
	.byte	0xca
	.uaword	0x68
	.byte	0x4
	.byte	0x2
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"AREN"
	.byte	0x2
	.byte	0xcb
	.uaword	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.string	"RESETS"
	.byte	0x2
	.byte	0xcc
	.uaword	0x68
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_QSPI_GLOBALCON_Bits"
	.byte	0x2
	.byte	0xcd
	.uaword	0x461
	.uleb128 0x3
	.string	"_Ifx_QSPI_PISEL_Bits"
	.byte	0x4
	.byte	0x2
	.byte	0xfe
	.uaword	0x66f
	.uleb128 0x7
	.string	"MRIS"
	.byte	0x2
	.uahalf	0x100
	.uaword	0x68
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"reserved_3"
	.byte	0x2
	.uahalf	0x101
	.uaword	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"SRIS"
	.byte	0x2
	.uahalf	0x102
	.uaword	0x68
	.byte	0x4
	.byte	0x3
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"reserved_7"
	.byte	0x2
	.uahalf	0x103
	.uaword	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"SCIS"
	.byte	0x2
	.uahalf	0x104
	.uaword	0x68
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"reserved_11"
	.byte	0x2
	.uahalf	0x105
	.uaword	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"SLSIS"
	.byte	0x2
	.uahalf	0x106
	.uaword	0x68
	.byte	0x4
	.byte	0x3
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0x107
	.uaword	0x68
	.byte	0x4
	.byte	0x11
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x9
	.string	"Ifx_QSPI_PISEL_Bits"
	.byte	0x2
	.uahalf	0x108
	.uaword	0x5a6
	.uleb128 0xa
	.string	"_Ifx_QSPI_SSOC_Bits"
	.byte	0x4
	.byte	0x2
	.uahalf	0x117
	.uaword	0x6cd
	.uleb128 0x7
	.string	"AOL"
	.byte	0x2
	.uahalf	0x119
	.uaword	0x68
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"OEN"
	.byte	0x2
	.uahalf	0x11a
	.uaword	0x68
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x9
	.string	"Ifx_QSPI_SSOC_Bits"
	.byte	0x2
	.uahalf	0x11b
	.uaword	0x68b
	.uleb128 0xa
	.string	"_Ifx_QSPI_STATUS_Bits"
	.byte	0x4
	.byte	0x2
	.uahalf	0x129
	.uaword	0x813
	.uleb128 0x7
	.string	"ERRORFLAGS"
	.byte	0x2
	.uahalf	0x12b
	.uaword	0x68
	.byte	0x4
	.byte	0x9
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"TXF"
	.byte	0x2
	.uahalf	0x12c
	.uaword	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"RXF"
	.byte	0x2
	.uahalf	0x12d
	.uaword	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"PT1F"
	.byte	0x2
	.uahalf	0x12e
	.uaword	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"PT2F"
	.byte	0x2
	.uahalf	0x12f
	.uaword	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0x130
	.uaword	0x68
	.byte	0x4
	.byte	0x2
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"USRF"
	.byte	0x2
	.uahalf	0x131
	.uaword	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"TXFIFOLEVEL"
	.byte	0x2
	.uahalf	0x132
	.uaword	0x68
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"RXFIFOLEVEL"
	.byte	0x2
	.uahalf	0x133
	.uaword	0x68
	.byte	0x4
	.byte	0x3
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"SLAVESEL"
	.byte	0x2
	.uahalf	0x134
	.uaword	0x68
	.byte	0x4
	.byte	0x4
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"RPV"
	.byte	0x2
	.uahalf	0x135
	.uaword	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"TPV"
	.byte	0x2
	.uahalf	0x136
	.uaword	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"PHASE"
	.byte	0x2
	.uahalf	0x137
	.uaword	0x68
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x9
	.string	"Ifx_QSPI_STATUS_Bits"
	.byte	0x2
	.uahalf	0x138
	.uaword	0x6e8
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0xb
	.byte	0x4
	.byte	0x2
	.uahalf	0x15f
	.uaword	0x85f
	.uleb128 0xc
	.string	"U"
	.byte	0x2
	.uahalf	0x161
	.uaword	0x68
	.uleb128 0xc
	.string	"I"
	.byte	0x2
	.uahalf	0x162
	.uaword	0x830
	.uleb128 0xc
	.string	"B"
	.byte	0x2
	.uahalf	0x163
	.uaword	0xaa
	.byte	0
	.uleb128 0x9
	.string	"Ifx_QSPI_BACONENTRY"
	.byte	0x2
	.uahalf	0x164
	.uaword	0x837
	.uleb128 0xb
	.byte	0x4
	.byte	0x2
	.uahalf	0x16f
	.uaword	0x8a3
	.uleb128 0xc
	.string	"U"
	.byte	0x2
	.uahalf	0x171
	.uaword	0x68
	.uleb128 0xc
	.string	"I"
	.byte	0x2
	.uahalf	0x172
	.uaword	0x830
	.uleb128 0xc
	.string	"B"
	.byte	0x2
	.uahalf	0x173
	.uaword	0x14c
	.byte	0
	.uleb128 0x9
	.string	"Ifx_QSPI_CLC"
	.byte	0x2
	.uahalf	0x174
	.uaword	0x87b
	.uleb128 0xb
	.byte	0x4
	.byte	0x2
	.uahalf	0x17f
	.uaword	0x8e0
	.uleb128 0xc
	.string	"U"
	.byte	0x2
	.uahalf	0x181
	.uaword	0x68
	.uleb128 0xc
	.string	"I"
	.byte	0x2
	.uahalf	0x182
	.uaword	0x830
	.uleb128 0xc
	.string	"B"
	.byte	0x2
	.uahalf	0x183
	.uaword	0x215
	.byte	0
	.uleb128 0x9
	.string	"Ifx_QSPI_ECON"
	.byte	0x2
	.uahalf	0x184
	.uaword	0x8b8
	.uleb128 0xb
	.byte	0x4
	.byte	0x2
	.uahalf	0x187
	.uaword	0x91e
	.uleb128 0xc
	.string	"U"
	.byte	0x2
	.uahalf	0x189
	.uaword	0x68
	.uleb128 0xc
	.string	"I"
	.byte	0x2
	.uahalf	0x18a
	.uaword	0x830
	.uleb128 0xc
	.string	"B"
	.byte	0x2
	.uahalf	0x18b
	.uaword	0x2ed
	.byte	0
	.uleb128 0x9
	.string	"Ifx_QSPI_FLAGSCLEAR"
	.byte	0x2
	.uahalf	0x18c
	.uaword	0x8f6
	.uleb128 0xb
	.byte	0x4
	.byte	0x2
	.uahalf	0x18f
	.uaword	0x962
	.uleb128 0xc
	.string	"U"
	.byte	0x2
	.uahalf	0x191
	.uaword	0x68
	.uleb128 0xc
	.string	"I"
	.byte	0x2
	.uahalf	0x192
	.uaword	0x830
	.uleb128 0xc
	.string	"B"
	.byte	0x2
	.uahalf	0x193
	.uaword	0x587
	.byte	0
	.uleb128 0x9
	.string	"Ifx_QSPI_GLOBALCON"
	.byte	0x2
	.uahalf	0x194
	.uaword	0x93a
	.uleb128 0xb
	.byte	0x4
	.byte	0x2
	.uahalf	0x197
	.uaword	0x9a5
	.uleb128 0xc
	.string	"U"
	.byte	0x2
	.uahalf	0x199
	.uaword	0x68
	.uleb128 0xc
	.string	"I"
	.byte	0x2
	.uahalf	0x19a
	.uaword	0x830
	.uleb128 0xc
	.string	"B"
	.byte	0x2
	.uahalf	0x19b
	.uaword	0x441
	.byte	0
	.uleb128 0x9
	.string	"Ifx_QSPI_GLOBALCON1"
	.byte	0x2
	.uahalf	0x19c
	.uaword	0x97d
	.uleb128 0xb
	.byte	0x4
	.byte	0x2
	.uahalf	0x1cf
	.uaword	0x9e9
	.uleb128 0xc
	.string	"U"
	.byte	0x2
	.uahalf	0x1d1
	.uaword	0x68
	.uleb128 0xc
	.string	"I"
	.byte	0x2
	.uahalf	0x1d2
	.uaword	0x830
	.uleb128 0xc
	.string	"B"
	.byte	0x2
	.uahalf	0x1d3
	.uaword	0x66f
	.byte	0
	.uleb128 0x9
	.string	"Ifx_QSPI_PISEL"
	.byte	0x2
	.uahalf	0x1d4
	.uaword	0x9c1
	.uleb128 0xb
	.byte	0x4
	.byte	0x2
	.uahalf	0x1e7
	.uaword	0xa28
	.uleb128 0xc
	.string	"U"
	.byte	0x2
	.uahalf	0x1e9
	.uaword	0x68
	.uleb128 0xc
	.string	"I"
	.byte	0x2
	.uahalf	0x1ea
	.uaword	0x830
	.uleb128 0xc
	.string	"B"
	.byte	0x2
	.uahalf	0x1eb
	.uaword	0x6cd
	.byte	0
	.uleb128 0x9
	.string	"Ifx_QSPI_SSOC"
	.byte	0x2
	.uahalf	0x1ec
	.uaword	0xa00
	.uleb128 0xb
	.byte	0x4
	.byte	0x2
	.uahalf	0x1ef
	.uaword	0xa66
	.uleb128 0xc
	.string	"U"
	.byte	0x2
	.uahalf	0x1f1
	.uaword	0x68
	.uleb128 0xc
	.string	"I"
	.byte	0x2
	.uahalf	0x1f2
	.uaword	0x830
	.uleb128 0xc
	.string	"B"
	.byte	0x2
	.uahalf	0x1f3
	.uaword	0x813
	.byte	0
	.uleb128 0x9
	.string	"Ifx_QSPI_STATUS"
	.byte	0x2
	.uahalf	0x1f4
	.uaword	0xa3e
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"signed char"
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
	.byte	0x4
	.string	"float"
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.string	"double"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x5
	.string	"uint32"
	.byte	0x3
	.byte	0x5f
	.uaword	0xa7e
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.string	"long long int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.string	"long long unsigned int"
	.uleb128 0xd
	.byte	0x1
	.string	"Qspi_cfg"
	.byte	0x1
	.byte	0x18
	.byte	0x1
	.uaword	.LFB7
	.uaword	.LFE7
	.byte	0x2
	.byte	0x8a
	.sleb128 0
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
	.uleb128 0x4
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
	.uleb128 0x5
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.byte	0
	.section .debug_aranges,"",@progbits
	.uaword	0x1c
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB7
	.uaword	.LFE7-.LFB7
	.uaword	0
	.uaword	0
	.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB7
	.uaword	.LFE7
	.uaword	0
	.uaword	0
	.section .debug_line,"",@progbits
.Ldebug_line0:
	.section .debug_str,"",@progbits
.LASF0:
	.string	"reserved_15"
.LASF1:
	.string	"reserved_13"
	.extern	IfxScuWdt_setCpuEndinit,STT_FUNC,0
	.extern	IfxScuWdt_clearCpuEndinit,STT_FUNC,0
	.extern	IfxScuWdt_getCpuWatchdogPassword,STT_FUNC,0
	.ident	"GCC: (HighTec Release v4.6.3.0) 4.6.3 build on 2013-05-17"
