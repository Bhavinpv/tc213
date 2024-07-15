	.file	"SramEccTst_MemDef.c"
.section .text,"ax",@progbits
.Ltext0:
	.global	SramEccTst_kMcTable
	.section .rodata.STL_CONST_8BIT,"a",@progbits
	.type	SramEccTst_kMcTable, @object
	.size	SramEccTst_kMcTable, 15
SramEccTst_kMcTable:
	.byte	14
	.byte	-1
	.byte	16
	.byte	17
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	79
	.global	SramEccTst_kMemDef
	.section .rodata.STL_CONST_32BIT,"a",@progbits
	.align 2
	.type	SramEccTst_kMemDef, @object
	.size	SramEccTst_kMemDef, 60
SramEccTst_kMemDef:
	.word	SramEccTst_kMdCpu0Dspr
	.word	0
	.word	SramEccTst_kMdCpu0Pspr
	.word	SramEccTst_kMdCpu0Ptag
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	SramEccTst_kMdDam
	.section .rodata.STL_CONST_FAR_UNSPECIFIED,"a",@progbits
	.align 2
	.type	SramEccTst_kMdCpu0Dspr, @object
	.size	SramEccTst_kMdCpu0Dspr, 16
SramEccTst_kMdCpu0Dspr:
	.byte	0
	.byte	10
	.byte	11
	.byte	12
	.byte	13
	.byte	4
	.byte	2
	.byte	16
	.byte	6
	.byte	5
	.byte	0
	.byte	1
	.word	0
	.align 2
	.type	SramEccTst_kMdCpu0Pspr, @object
	.size	SramEccTst_kMdCpu0Pspr, 16
SramEccTst_kMdCpu0Pspr:
	.byte	0
	.byte	6
	.byte	7
	.byte	8
	.byte	9
	.byte	2
	.byte	1
	.byte	32
	.byte	8
	.byte	3
	.byte	0
	.byte	1
	.word	0
	.align 2
	.type	SramEccTst_kMdCpu0Ptag, @object
	.size	SramEccTst_kMdCpu0Ptag, 16
SramEccTst_kMdCpu0Ptag:
	.byte	0
	.byte	-1
	.byte	3
	.byte	4
	.byte	5
	.byte	1
	.byte	2
	.byte	20
	.byte	5
	.byte	2
	.byte	0
	.byte	1
	.word	0
	.align 2
	.type	SramEccTst_kMdDam, @object
	.size	SramEccTst_kMdDam, 16
SramEccTst_kMdDam:
	.byte	2
	.byte	17
	.byte	18
	.byte	19
	.byte	20
	.byte	1
	.byte	1
	.byte	64
	.byte	8
	.byte	1
	.byte	0
	.byte	1
	.word	0
.section .text,"ax",@progbits
.Letext0:
	.file 1 "../30_Bsw/Common/Platform_Types.h"
	.file 2 "../30_Bsw/MicroTestLib/Static/SramEccTst_MemDef.h"
	.file 3 "../30_Bsw/MicroTestLib/Static/SramEccTst_MemDef.c"
	.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x374
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.6.3 build on 2013-05-17"
	.byte	0x1
	.string	"../30_Bsw/MicroTestLib/Static/SramEccTst_MemDef.c"
	.string	"S:\\\\20_Make"
	.uaword	.Ltext0
	.uaword	.Letext0
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
	.byte	0x1
	.byte	0x5b
	.uaword	0x86
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x3
	.string	"uint32"
	.byte	0x1
	.byte	0x5f
	.uaword	0xe4
	.uleb128 0x4
	.uaword	.LASF0
	.byte	0x10
	.byte	0x2
	.byte	0x55
	.uaword	0x263
	.uleb128 0x5
	.string	"SmuAlarmGrp"
	.byte	0x2
	.byte	0x59
	.uaword	0x101
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"SmuNr_SbeCorr"
	.byte	0x2
	.byte	0x5b
	.uaword	0x101
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x5
	.string	"SmuNr_UcErr"
	.byte	0x2
	.byte	0x5d
	.uaword	0x101
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x5
	.string	"SmuNr_AdrErr"
	.byte	0x2
	.byte	0x5f
	.uaword	0x101
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x5
	.string	"SmuNr_AdrBufFull"
	.byte	0x2
	.byte	0x61
	.uaword	0x101
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.string	"NrOfMemBlocks"
	.byte	0x2
	.byte	0x64
	.uaword	0x101
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0x5
	.string	"NrOfMultiplexers"
	.byte	0x2
	.byte	0x66
	.uaword	0x101
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x5
	.string	"NrOfDataBits"
	.byte	0x2
	.byte	0x68
	.uaword	0x101
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0x5
	.string	"NrOfEccBits"
	.byte	0x2
	.byte	0x6a
	.uaword	0x101
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"NrOfEtrRegisters"
	.byte	0x2
	.byte	0x6d
	.uaword	0x101
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0x5
	.string	"EccInvPos0"
	.byte	0x2
	.byte	0x6e
	.uaword	0x101
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x5
	.string	"EccInvPos1"
	.byte	0x2
	.byte	0x6f
	.uaword	0x101
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0x5
	.string	"Reserved"
	.byte	0x2
	.byte	0x70
	.uaword	0x11a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x6
	.uaword	.LASF0
	.byte	0x2
	.byte	0x71
	.uaword	0x128
	.uleb128 0x7
	.string	"SramEccTst_kMdCpu0Dspr"
	.byte	0x3
	.uahalf	0x107
	.uaword	0x293
	.byte	0x5
	.byte	0x3
	.uaword	SramEccTst_kMdCpu0Dspr
	.uleb128 0x8
	.uaword	0x263
	.uleb128 0x7
	.string	"SramEccTst_kMdCpu0Pspr"
	.byte	0x3
	.uahalf	0x11b
	.uaword	0x293
	.byte	0x5
	.byte	0x3
	.uaword	SramEccTst_kMdCpu0Pspr
	.uleb128 0x7
	.string	"SramEccTst_kMdCpu0Ptag"
	.byte	0x3
	.uahalf	0x137
	.uaword	0x293
	.byte	0x5
	.byte	0x3
	.uaword	SramEccTst_kMdCpu0Ptag
	.uleb128 0x7
	.string	"SramEccTst_kMdDam"
	.byte	0x3
	.uahalf	0x195
	.uaword	0x293
	.byte	0x5
	.byte	0x3
	.uaword	SramEccTst_kMdDam
	.uleb128 0x9
	.uaword	0x312
	.uaword	0x312
	.uleb128 0xa
	.uaword	0xe4
	.byte	0xe
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.uaword	0x293
	.uleb128 0xc
	.string	"SramEccTst_kMemDef"
	.byte	0x3
	.uahalf	0x1f6
	.uaword	0x33a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	SramEccTst_kMemDef
	.uleb128 0x8
	.uaword	0x302
	.uleb128 0x9
	.uaword	0x101
	.uaword	0x34f
	.uleb128 0xa
	.uaword	0xe4
	.byte	0xe
	.byte	0
	.uleb128 0xc
	.string	"SramEccTst_kMcTable"
	.byte	0x3
	.uahalf	0x258
	.uaword	0x372
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	SramEccTst_kMcTable
	.uleb128 0x8
	.uaword	0x33f
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
	.uleb128 0x12
	.uleb128 0x1
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
	.uleb128 0x7
	.uleb128 0x34
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
	.uleb128 0x8
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.byte	0
	.section .debug_line,"",@progbits
.Ldebug_line0:
	.section .debug_str,"",@progbits
.LASF0:
	.string	"SramEccTst_MemoryDefinitionType"
	.ident	"GCC: (HighTec Release v4.6.3.0) 4.6.3 build on 2013-05-17"
