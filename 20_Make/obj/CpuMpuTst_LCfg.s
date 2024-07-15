	.file	"CpuMpuTst_LCfg.c"
.section .text,"ax",@progbits
.Ltext0:
	.global	CpuMpuTst_ConfigRoot
	.section .rodata.CONFIGURATION_LT,"a",@progbits
	.align 1
	.type	CpuMpuTst_ConfigRoot, @object
	.size	CpuMpuTst_ConfigRoot, 4
CpuMpuTst_ConfigRoot:
	.short	-1
	.short	255
.section .text,"ax",@progbits
.Letext0:
	.file 1 "../30_Bsw/Common/Platform_Types.h"
	.file 2 "../30_Bsw/MicroTestLib/Static/CpuMpuTst.h"
	.file 3 "../30_Bsw/MicroTestLib/Config/CpuMpuTst_LCfg.c"
	.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x1ce
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.6.3 build on 2013-05-17"
	.byte	0x1
	.string	"../30_Bsw/MicroTestLib/Config/CpuMpuTst_LCfg.c"
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
	.string	"uint16"
	.byte	0x1
	.byte	0x5d
	.uaword	0xa1
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x3
	.string	"CpuMpuTst_RangeEnType"
	.byte	0x2
	.byte	0x3c
	.uaword	0xfe
	.uleb128 0x4
	.string	"CpuMpuTst_TestCfg"
	.byte	0x4
	.byte	0x2
	.byte	0x3f
	.uaword	0x17c
	.uleb128 0x5
	.string	"DataRangeEn"
	.byte	0x2
	.byte	0x41
	.uaword	0x118
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"CodeRangeEn"
	.byte	0x2
	.byte	0x42
	.uaword	0x118
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x3
	.string	"CpuMpuTst_TestCfgType"
	.byte	0x2
	.byte	0x43
	.uaword	0x135
	.uleb128 0x6
	.uaword	0x17c
	.uaword	0x1a9
	.uleb128 0x7
	.uaword	0xe1
	.byte	0
	.byte	0
	.uleb128 0x8
	.string	"CpuMpuTst_ConfigRoot"
	.byte	0x3
	.byte	0x52
	.uaword	0x1cc
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	CpuMpuTst_ConfigRoot
	.uleb128 0x9
	.uaword	0x199
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
	.section .debug_line,"",@progbits
.Ldebug_line0:
	.ident	"GCC: (HighTec Release v4.6.3.0) 4.6.3 build on 2013-05-17"
