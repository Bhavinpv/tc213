	.file	"VerInfo.c"
.section .text,"ax",@progbits
.Ltext0:
	.section .text.MPU_QM_CODE,"ax",@progbits
	.align 3
	.global	UdsData_SwVersion
	.type	UdsData_SwVersion, @function
UdsData_SwVersion:
.LFB202:
	.file 1 "../30_Bsw/ComStack/VerInfo/VerInfo.c"
	.loc 1 36 0
.LVL0:
	.loc 1 36 0
	mov.aa	%a15, %a4
	.loc 1 38 0
	call	Main_GetSwVersion
.LVL1:
	.loc 1 44 0
	sh	%d15, %d2, -24
	.loc 1 47 0
	st.b	[%a15] 3, %d2
	.loc 1 44 0
	st.b	[%a15]0, %d15
	.loc 1 45 0
	extr.u	%d15, %d2, 16, 8
	st.b	[%a15] 1, %d15
	.loc 1 46 0
	extr.u	%d15, %d2, 8, 8
	.loc 1 53 0
	mov	%d2, 0
.LVL2:
	.loc 1 46 0
	st.b	[%a15] 2, %d15
	.loc 1 53 0
	ret
.LFE202:
	.size	UdsData_SwVersion, .-UdsData_SwVersion
	.align 3
	.global	UdsData_HwVersion
	.type	UdsData_HwVersion, @function
UdsData_HwVersion:
.LFB203:
	.loc 1 65 0
.LVL3:
	.loc 1 65 0
	mov.aa	%a15, %a4
	.loc 1 67 0
	call	Main_UdsGetHwVer
.LVL4:
	.loc 1 73 0
	sh	%d15, %d2, -24
	.loc 1 76 0
	st.b	[%a15] 3, %d2
	.loc 1 73 0
	st.b	[%a15]0, %d15
	.loc 1 74 0
	extr.u	%d15, %d2, 16, 8
	st.b	[%a15] 1, %d15
	.loc 1 75 0
	extr.u	%d15, %d2, 8, 8
	.loc 1 82 0
	mov	%d2, 0
.LVL5:
	.loc 1 75 0
	st.b	[%a15] 2, %d15
	.loc 1 82 0
	ret
.LFE203:
	.size	UdsData_HwVersion, .-UdsData_HwVersion
	.align 3
	.global	UdsData_BuildDate
	.type	UdsData_BuildDate, @function
UdsData_BuildDate:
.LFB204:
	.loc 1 89 0
.LVL6:
	.loc 1 89 0
	mov.aa	%a15, %a4
	.loc 1 91 0
	call	Main_GetBuildDate
.LVL7:
	.loc 1 97 0
	sh	%d15, %d2, -24
	.loc 1 100 0
	st.b	[%a15] 3, %d2
	.loc 1 97 0
	st.b	[%a15]0, %d15
	.loc 1 98 0
	extr.u	%d15, %d2, 16, 8
	st.b	[%a15] 1, %d15
	.loc 1 99 0
	extr.u	%d15, %d2, 8, 8
	.loc 1 106 0
	mov	%d2, 0
.LVL8:
	.loc 1 99 0
	st.b	[%a15] 2, %d15
	.loc 1 106 0
	ret
.LFE204:
	.size	UdsData_BuildDate, .-UdsData_BuildDate
	.align 3
	.global	UdsData_BuildTime
	.type	UdsData_BuildTime, @function
UdsData_BuildTime:
.LFB205:
	.loc 1 113 0
.LVL9:
	.loc 1 113 0
	mov.aa	%a15, %a4
	.loc 1 115 0
	call	Main_GetBuildTime
.LVL10:
	.loc 1 121 0
	sh	%d15, %d2, -24
	.loc 1 124 0
	st.b	[%a15] 3, %d2
	.loc 1 121 0
	st.b	[%a15]0, %d15
	.loc 1 122 0
	extr.u	%d15, %d2, 16, 8
	st.b	[%a15] 1, %d15
	.loc 1 123 0
	extr.u	%d15, %d2, 8, 8
	.loc 1 130 0
	mov	%d2, 0
.LVL11:
	.loc 1 123 0
	st.b	[%a15] 2, %d15
	.loc 1 130 0
	ret
.LFE205:
	.size	UdsData_BuildTime, .-UdsData_BuildTime
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
.section .text,"ax",@progbits
.Letext0:
	.file 2 "../30_Bsw/Common/rtwtypes.h"
	.file 3 "../30_Bsw/Common/Platform_Types.h"
	.file 4 "../30_Bsw/Common/TC21x/IfxCpu_regdef.h"
	.file 5 "../30_Bsw/Mpu/mpu_api.h"
	.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x578
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.6.3 build on 2013-05-17"
	.byte	0x1
	.string	"../30_Bsw/ComStack/VerInfo/VerInfo.c"
	.string	"D:\\\\SVN\\\\IPB-11Kw\\\\LvDc-C01R0P0-Ceramicheater\\\\20_Make"
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
	.uaword	0xb7
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
	.uaword	0xe5
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
	.uaword	0x112
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
	.string	"u8"
	.byte	0x2
	.byte	0x7d
	.uaword	0xa8
	.uleb128 0x3
	.string	"u16"
	.byte	0x2
	.byte	0x7f
	.uaword	0xd5
	.uleb128 0x3
	.string	"u32"
	.byte	0x2
	.byte	0x81
	.uaword	0x102
	.uleb128 0x3
	.string	"uint8"
	.byte	0x3
	.byte	0x5b
	.uaword	0xb7
	.uleb128 0x3
	.string	"uint16"
	.byte	0x3
	.byte	0x5d
	.uaword	0xe5
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x4
	.uaword	0x112
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.string	"long long int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.string	"long long unsigned int"
	.uleb128 0x5
	.string	"_Ifx_CPU_PSW_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x204
	.uaword	0x2cc
	.uleb128 0x6
	.string	"CDC"
	.byte	0x4
	.uahalf	0x206
	.uaword	0x199
	.byte	0x4
	.byte	0x7
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.string	"CDE"
	.byte	0x4
	.uahalf	0x207
	.uaword	0x199
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.string	"GW"
	.byte	0x4
	.uahalf	0x208
	.uaword	0x199
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.string	"IS"
	.byte	0x4
	.uahalf	0x209
	.uaword	0x199
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.string	"IO"
	.byte	0x4
	.uahalf	0x20a
	.uaword	0x199
	.byte	0x4
	.byte	0x2
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.string	"PRS"
	.byte	0x4
	.uahalf	0x20b
	.uaword	0x199
	.byte	0x4
	.byte	0x2
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.string	"S"
	.byte	0x4
	.uahalf	0x20c
	.uaword	0x199
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.string	"reserved_15"
	.byte	0x4
	.uahalf	0x20d
	.uaword	0x199
	.byte	0x4
	.byte	0xc
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.string	"SAV"
	.byte	0x4
	.uahalf	0x20e
	.uaword	0x199
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.string	"AV"
	.byte	0x4
	.uahalf	0x20f
	.uaword	0x199
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.string	"SV"
	.byte	0x4
	.uahalf	0x210
	.uaword	0x199
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.string	"V"
	.byte	0x4
	.uahalf	0x211
	.uaword	0x199
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.string	"C"
	.byte	0x4
	.uahalf	0x212
	.uaword	0x199
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x7
	.string	"Ifx_CPU_PSW_Bits"
	.byte	0x4
	.uahalf	0x213
	.uaword	0x1c9
	.uleb128 0x8
	.byte	0x4
	.byte	0x4
	.uahalf	0x467
	.uaword	0x30d
	.uleb128 0x9
	.string	"U"
	.byte	0x4
	.uahalf	0x469
	.uaword	0x112
	.uleb128 0x9
	.string	"I"
	.byte	0x4
	.uahalf	0x46a
	.uaword	0xfb
	.uleb128 0x9
	.string	"B"
	.byte	0x4
	.uahalf	0x46b
	.uaword	0x2cc
	.byte	0
	.uleb128 0x7
	.string	"Ifx_CPU_PSW"
	.byte	0x4
	.uahalf	0x46c
	.uaword	0x2e5
	.uleb128 0xa
	.byte	0x4
	.uaword	0x172
	.uleb128 0xb
	.byte	0x1
	.string	"UdsData_SwVersion"
	.byte	0x1
	.byte	0x23
	.byte	0x1
	.uaword	0x172
	.uaword	.LFB202
	.uaword	.LFE202
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x3a9
	.uleb128 0xc
	.uaword	.LASF0
	.byte	0x1
	.byte	0x23
	.uaword	0x172
	.uaword	.LLST0
	.uleb128 0xc
	.uaword	.LASF1
	.byte	0x1
	.byte	0x23
	.uaword	0x321
	.uaword	.LLST1
	.uleb128 0xc
	.uaword	.LASF2
	.byte	0x1
	.byte	0x23
	.uaword	0x17f
	.uaword	.LLST2
	.uleb128 0xd
	.uaword	.LASF3
	.byte	0x1
	.byte	0x25
	.uaword	0x15c
	.byte	0
	.uleb128 0xe
	.string	"SvnTag"
	.byte	0x1
	.byte	0x26
	.uaword	0x167
	.uaword	.LLST3
	.uleb128 0xd
	.uaword	.LASF4
	.byte	0x1
	.byte	0x27
	.uaword	0x172
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.string	"UdsData_HwVersion"
	.byte	0x1
	.byte	0x40
	.byte	0x1
	.uaword	0x172
	.uaword	.LFB203
	.uaword	.LFE203
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x42b
	.uleb128 0xc
	.uaword	.LASF0
	.byte	0x1
	.byte	0x40
	.uaword	0x172
	.uaword	.LLST4
	.uleb128 0xc
	.uaword	.LASF1
	.byte	0x1
	.byte	0x40
	.uaword	0x321
	.uaword	.LLST5
	.uleb128 0xc
	.uaword	.LASF2
	.byte	0x1
	.byte	0x40
	.uaword	0x17f
	.uaword	.LLST6
	.uleb128 0xd
	.uaword	.LASF3
	.byte	0x1
	.byte	0x42
	.uaword	0x15c
	.byte	0
	.uleb128 0xe
	.string	"SvnTag"
	.byte	0x1
	.byte	0x43
	.uaword	0x167
	.uaword	.LLST7
	.uleb128 0xd
	.uaword	.LASF4
	.byte	0x1
	.byte	0x44
	.uaword	0x172
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.string	"UdsData_BuildDate"
	.byte	0x1
	.byte	0x58
	.byte	0x1
	.uaword	0x172
	.uaword	.LFB204
	.uaword	.LFE204
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x4ab
	.uleb128 0xc
	.uaword	.LASF0
	.byte	0x1
	.byte	0x58
	.uaword	0x172
	.uaword	.LLST8
	.uleb128 0xc
	.uaword	.LASF1
	.byte	0x1
	.byte	0x58
	.uaword	0x321
	.uaword	.LLST9
	.uleb128 0xc
	.uaword	.LASF2
	.byte	0x1
	.byte	0x58
	.uaword	0x17f
	.uaword	.LLST10
	.uleb128 0xd
	.uaword	.LASF3
	.byte	0x1
	.byte	0x5a
	.uaword	0x15c
	.byte	0
	.uleb128 0xe
	.string	"Date"
	.byte	0x1
	.byte	0x5b
	.uaword	0x167
	.uaword	.LLST11
	.uleb128 0xd
	.uaword	.LASF4
	.byte	0x1
	.byte	0x5c
	.uaword	0x172
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.string	"UdsData_BuildTime"
	.byte	0x1
	.byte	0x70
	.byte	0x1
	.uaword	0x172
	.uaword	.LFB205
	.uaword	.LFE205
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x52b
	.uleb128 0xc
	.uaword	.LASF0
	.byte	0x1
	.byte	0x70
	.uaword	0x172
	.uaword	.LLST12
	.uleb128 0xc
	.uaword	.LASF1
	.byte	0x1
	.byte	0x70
	.uaword	0x321
	.uaword	.LLST13
	.uleb128 0xc
	.uaword	.LASF2
	.byte	0x1
	.byte	0x70
	.uaword	0x17f
	.uaword	.LLST14
	.uleb128 0xd
	.uaword	.LASF3
	.byte	0x1
	.byte	0x72
	.uaword	0x15c
	.byte	0
	.uleb128 0xe
	.string	"Time"
	.byte	0x1
	.byte	0x73
	.uaword	0x167
	.uaword	.LLST15
	.uleb128 0xd
	.uaword	.LASF4
	.byte	0x1
	.byte	0x74
	.uaword	0x172
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"PSWReg_Rd0"
	.byte	0x5
	.byte	0x45
	.uaword	0x30d
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.string	"PSWReg_Rd1"
	.byte	0x5
	.byte	0x46
	.uaword	0x30d
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.string	"PSWReg_Rd2"
	.byte	0x5
	.byte	0x47
	.uaword	0x30d
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.string	"PSWReg_Rd3"
	.byte	0x5
	.byte	0x48
	.uaword	0x30d
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
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0x1c
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uaword	.LVL0
	.uaword	.LVL1-1
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL1-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL1-1
	.uaword	.LFE202
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL0
	.uaword	.LVL1-1
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL3
	.uaword	.LVL4-1
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL3
	.uaword	.LVL4-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL4-1
	.uaword	.LFE203
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL3
	.uaword	.LVL4-1
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL6
	.uaword	.LVL7-1
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL6
	.uaword	.LVL7-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL7-1
	.uaword	.LFE204
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL6
	.uaword	.LVL7-1
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL7
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL9
	.uaword	.LVL10-1
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL9
	.uaword	.LVL10-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL10-1
	.uaword	.LFE205
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL9
	.uaword	.LVL10-1
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL10
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
	.section .debug_aranges,"",@progbits
	.uaword	0x34
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
	.uaword	0
	.uaword	0
	.section .debug_line,"",@progbits
.Ldebug_line0:
	.section .debug_str,"",@progbits
.LASF0:
	.string	"ReadWrite"
.LASF3:
	.string	"TxByte"
.LASF2:
	.string	"LenOfMsg"
.LASF1:
	.string	"RxTxBuf"
.LASF4:
	.string	"u8_RespCode"
	.extern	Main_GetBuildTime,STT_FUNC,0
	.extern	Main_GetBuildDate,STT_FUNC,0
	.extern	Main_UdsGetHwVer,STT_FUNC,0
	.extern	Main_GetSwVersion,STT_FUNC,0
	.ident	"GCC: (HighTec Release v4.6.3.0) 4.6.3 build on 2013-05-17"
