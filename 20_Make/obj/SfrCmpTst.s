	.file	"SfrCmpTst.c"
.section .text,"ax",@progbits
.Ltext0:
	.section .text.STL_ASIL_CODE,"ax",@progbits
	.align 2
	.global	SfrTst_SfrCmpTst
	.type	SfrTst_SfrCmpTst, @function
SfrTst_SfrCmpTst:
.LFB18:
	.file 1 "../30_Bsw/MicroTestLib/Static/SfrCmpTst.c"
	.loc 1 134 0
.LVL0:
.LBB24:
.LBB25:
	.file 2 "../30_Bsw/STL_common/Mcal_Compiler.h"
	.loc 2 400 0
	mov	%d15, 2
#APP
	# 400 "../30_Bsw/STL_common/Mcal_Compiler.h" 1
	crc32 %d5, %d5, %d15
	# 0 "" 2
.LVL1:
#NO_APP
.LBE25:
.LBE24:
	.loc 1 144 0
	movh	%d2, 2
	.loc 1 138 0
	st.w	[%a4]0, %d5
	.loc 1 144 0
	addi	%d2, %d2, 258
	.loc 1 141 0
	jlt.u	%d4, 2, .L17
.LVL2:
	.loc 1 152 0
	ret
.LVL3:
.L17:
.LBB26:
.LBB27:
	.loc 1 207 0
	sh	%d15, %d4, 1
	movh.a	%a15, hi:AllAvailableSets
	add	%d4, %d15
.LVL4:
	lea	%a15, [%a15] lo:AllAvailableSets
	addsc.a	%a2, %a15, %d4, 2
	.loc 1 210 0
	movh	%d2, 2
	.loc 1 207 0
	ld.w	%d6, [%a2]0
	.loc 1 210 0
	addi	%d2, %d2, 4112
	.loc 1 207 0
	ge.u	%d15, %d6, 113
	jnz	%d15, .L4
	.loc 1 281 0
	movh	%d2, 2
	addi	%d2, %d2, 511
	.loc 1 214 0
	jz	%d6, .L4
	.loc 1 219 0
	ld.w	%d4, [%a2] 8
	.loc 1 214 0
	mov	%d15, 0
	.loc 1 219 0
	madd	%d7, %d4, %d15, 16
	.loc 1 214 0
	mov	%d2, %d6
	mov	%d11, 0
	.loc 1 219 0
	mov.a	%a15, %d7
	.loc 1 214 0
	mov	%d1, 0
	.loc 1 221 0
	ld.w	%d8, [%a15] 12
	.loc 1 214 0
	mov	%d3, 0
	mov	%d0, 0
	.loc 1 238 0
	mov	%d10, 5
	.loc 1 218 0
	ld.w	%d7, [%a15] 8
.LVL5:
	.loc 1 224 0
	ld.a	%a3, [%a15]0
	.loc 1 221 0
	jeq	%d8, 1, .L18
.LVL6:
.L5:
	.loc 1 228 0
	ld.w	%d8, [%a3]0
.LVL7:
.L6:
	.loc 1 235 0
	ld.w	%d9, [%a15] 4
	.loc 1 231 0
	and	%d8, %d7
.LVL8:
	.loc 1 235 0
	and	%d7, %d9
.LVL9:
	.loc 1 233 0
	jne	%d8, %d7, .L7
	.loc 1 238 0
	sh	%d7, %d10, %d0
	or	%d3, %d7
.LVL10:
	.loc 1 240 0
	jeq	%d1, 6, .L19
	.loc 1 256 0
	add	%d0, 4
	.loc 1 257 0
	add	%d1, 1
	.loc 1 258 0
	add	%d15, 1
	.loc 1 256 0
	and	%d0, %d0, 255
.LVL11:
	.loc 1 257 0
	and	%d1, %d1, 255
.LVL12:
	.loc 1 258 0
	jlt.u	%d15, %d6, .L9
.LVL13:
.LBB28:
.LBB29:
	.loc 2 400 0
#APP
	# 400 "../30_Bsw/STL_common/Mcal_Compiler.h" 1
	crc32 %d5, %d3, %d5
	# 0 "" 2
.LVL14:
#NO_APP
.LBE29:
.LBE28:
	.loc 1 261 0
	ld.w	%d2, [%a2]0
	st.w	[%a4]0, %d5
.LVL15:
.L9:
	.loc 1 214 0
	jge.u	%d15, %d2, .L20
	.loc 1 219 0
	madd	%d7, %d4, %d15, 16
	.loc 1 215 0
	mov	%d6, %d2
	.loc 1 219 0
	mov.a	%a15, %d7
	.loc 1 221 0
	ld.w	%d8, [%a15] 12
.LVL16:
	.loc 1 218 0
	ld.w	%d7, [%a15] 8
.LVL17:
	.loc 1 224 0
	ld.a	%a3, [%a15]0
	.loc 1 221 0
	jne	%d8, 1, .L5
.LVL18:
.L18:
	.loc 1 224 0
	ld.hu	%d8, [%a3]0
.LVL19:
	j	.L6
.LVL20:
.L20:
	.loc 1 281 0
	movh	%d2, 2
	addi	%d2, %d2, 511
.LVL21:
.L4:
.LBB30:
.LBB31:
	.loc 2 400 0
#APP
	# 400 "../30_Bsw/STL_common/Mcal_Compiler.h" 1
	crc32 %d5, %d2, %d5
	# 0 "" 2
.LVL22:
#NO_APP
.LBE31:
.LBE30:
	.loc 1 283 0
	st.w	[%a4]0, %d5
.LVL23:
.LBE27:
.LBE26:
	.loc 1 152 0
	ret
.LVL24:
.L19:
.LBB37:
.LBB36:
.LBB32:
.LBB33:
	.loc 2 400 0
#APP
	# 400 "../30_Bsw/STL_common/Mcal_Compiler.h" 1
	crc32 %d5, %d3, %d5
	# 0 "" 2
.LVL25:
#NO_APP
.LBE33:
.LBE32:
	.loc 1 245 0
	add	%d11, 1
	.loc 1 243 0
	st.w	[%a4]0, %d5
.LVL26:
	.loc 1 250 0
	sh	%d3, %d11, 28
.LVL27:
	add	%d15, 1
	ld.w	%d2, [%a2]0
	.loc 1 251 0
	mov	%d1, 0
	.loc 1 244 0
	mov	%d0, 0
	j	.L9
.LVL28:
.L7:
	.loc 1 271 0
	addi	%d2, %d11, 17
	sh	%d2, %d2, 8
	insert	%d2, %d2, 0, 16, 16
	add	%d1, 1
	and	%d1, %d1, 255
	.loc 1 268 0
	mov	%d15, 2
	.loc 1 270 0
	or	%d2, %d1
	.loc 1 268 0
	sh	%d0, %d15, %d0
.LVL29:
	.loc 1 270 0
	insert	%d2, %d2, 15, 17, 1
.LVL30:
	.loc 1 268 0
	or	%d3, %d0
.LBB34:
.LBB35:
	.loc 2 400 0
#APP
	# 400 "../30_Bsw/STL_common/Mcal_Compiler.h" 1
	crc32 %d5, %d3, %d5
	# 0 "" 2
.LVL31:
#NO_APP
.LBE35:
.LBE34:
	.loc 1 279 0
	movh	%d15, 2
	addi	%d15, %d15, 266
	.loc 1 281 0
	ne	%d3, %d2, %d15
	movh	%d15, 2
	addi	%d15, %d15, 511
	.loc 1 273 0
	st.w	[%a4]0, %d5
	.loc 1 281 0
	sel	%d2, %d3, %d2, %d15
.LVL32:
	j	.L4
.LBE36:
.LBE37:
.LFE18:
	.size	SfrTst_SfrCmpTst, .-SfrTst_SfrCmpTst
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
.section .text,"ax",@progbits
.Letext0:
	.file 3 "../30_Bsw/Common/Platform_Types.h"
	.file 4 "../30_Bsw/STL_common/Mcal_TcLib.h"
	.file 5 "../30_Bsw/MicroTestLib/Config/SfrTst_Cfg.h"
	.file 6 "../30_Bsw/STL_common/Sl_ErrorCodes.h"
	.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x945
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.6.3 build on 2013-05-17"
	.byte	0x1
	.string	"../30_Bsw/MicroTestLib/Static/SfrCmpTst.c"
	.string	"S:\\\\20_Make"
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_ranges0+0x30
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
	.byte	0x3
	.byte	0x5b
	.uaword	0x82
	.uleb128 0x3
	.string	"uint16"
	.byte	0x3
	.byte	0x5d
	.uaword	0xa0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x3
	.string	"uint32"
	.byte	0x3
	.byte	0x5f
	.uaword	0xe0
	.uleb128 0x3
	.string	"unsigned_int"
	.byte	0x4
	.byte	0x7a
	.uaword	0xbd
	.uleb128 0x4
	.string	"SfrTst_Config"
	.byte	0x10
	.byte	0x5
	.byte	0x3d
	.uaword	0x1c1
	.uleb128 0x5
	.string	"RegisterAddress"
	.byte	0x5
	.byte	0x40
	.uaword	0x1c1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"RegisterValue"
	.byte	0x5
	.byte	0x42
	.uaword	0x124
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.string	"RegisterMask"
	.byte	0x5
	.byte	0x45
	.uaword	0x124
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"RegisterBitWidth"
	.byte	0x5
	.byte	0x49
	.uaword	0x124
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x1c7
	.uleb128 0x7
	.uleb128 0x3
	.string	"SfrTst_ConfigType"
	.byte	0x5
	.byte	0x4a
	.uaword	0x146
	.uleb128 0x4
	.string	"SfrTst_ParamSet"
	.byte	0xc
	.byte	0x5
	.byte	0x4c
	.uaword	0x252
	.uleb128 0x5
	.string	"NumberOfRegisters2Test"
	.byte	0x5
	.byte	0x4f
	.uaword	0x124
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"ExpectedCRCResult"
	.byte	0x5
	.byte	0x51
	.uaword	0x124
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.string	"RegisterSet2Test"
	.byte	0x5
	.byte	0x53
	.uaword	0x252
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x258
	.uleb128 0x8
	.uaword	0x1c8
	.uleb128 0x3
	.string	"SfrTst_ParamSetType"
	.byte	0x5
	.byte	0x54
	.uaword	0x1e1
	.uleb128 0x9
	.byte	0x4
	.byte	0x6
	.byte	0x6d
	.uaword	0x5f6
	.uleb128 0xa
	.string	"TEST_ID_GENERIC"
	.sleb128 0
	.uleb128 0xa
	.string	"TEST_ID_CPU_MPU_TST"
	.sleb128 1
	.uleb128 0xa
	.string	"TEST_ID_SFR_CMP_TST"
	.sleb128 2
	.uleb128 0xa
	.string	"TEST_ID_SFR_CRC_TST"
	.sleb128 3
	.uleb128 0xa
	.string	"TEST_ID_SRI_TST"
	.sleb128 4
	.uleb128 0xa
	.string	"TEST_ID_OSC_WDG_TST"
	.sleb128 5
	.uleb128 0xa
	.string	"TEST_ID_BUS_MPU_LFM_TST"
	.sleb128 6
	.uleb128 0xa
	.string	"TEST_ID_TRAP_TST"
	.sleb128 7
	.uleb128 0xa
	.string	"TEST_ID_UNUSED_TST1"
	.sleb128 8
	.uleb128 0xa
	.string	"TEST_ID_REG_ACC_PROT_TST"
	.sleb128 9
	.uleb128 0xa
	.string	"TEST_ID_PMU_ECC_EDC_TST"
	.sleb128 10
	.uleb128 0xa
	.string	"TEST_ID_CPU_WDG_TST"
	.sleb128 11
	.uleb128 0xa
	.string	"TEST_ID_SAFETY_WDG_TST"
	.sleb128 12
	.uleb128 0xa
	.string	"TEST_ID_VLTM_TST"
	.sleb128 13
	.uleb128 0xa
	.string	"TEST_ID_CLKM_TST"
	.sleb128 14
	.uleb128 0xa
	.string	"TEST_ID_CPUSBST_E_TST"
	.sleb128 15
	.uleb128 0xa
	.string	"TEST_ID_CPUSBST_P_TST"
	.sleb128 16
	.uleb128 0xa
	.string	"TEST_ID_SMU_TST_RT"
	.sleb128 17
	.uleb128 0xa
	.string	"TEST_ID_SMU_TST_IRQ"
	.sleb128 18
	.uleb128 0xa
	.string	"TEST_ID_UNUSED_TST2"
	.sleb128 19
	.uleb128 0xa
	.string	"TEST_ID_SMU_TST_NMI"
	.sleb128 20
	.uleb128 0xa
	.string	"TEST_ID_SMU_TST_IDLE"
	.sleb128 21
	.uleb128 0xa
	.string	"TEST_ID_SRAMECC_TST"
	.sleb128 22
	.uleb128 0xa
	.string	"TEST_ID_IR_TST"
	.sleb128 23
	.uleb128 0xa
	.string	"TEST_ID_LOCK_STEP_TST"
	.sleb128 24
	.uleb128 0xa
	.string	"TEST_ID_LMU_REG_ACC_PROT_TST"
	.sleb128 25
	.uleb128 0xa
	.string	"TEST_ID_BUS_LMU_MPU_LFM_TST"
	.sleb128 26
	.uleb128 0xa
	.string	"TEST_ID_MBIST_TST"
	.sleb128 27
	.uleb128 0xa
	.string	"TEST_ID_SPB_TST_RAP"
	.sleb128 28
	.uleb128 0xa
	.string	"TEST_ID_SPB_TST_TIMEOUT"
	.sleb128 29
	.uleb128 0xa
	.string	"TEST_ID_FCE_TST"
	.sleb128 30
	.uleb128 0xa
	.string	"TEST_ID_DMA_CRC_TST"
	.sleb128 31
	.uleb128 0xa
	.string	"TEST_ID_DMA_TIMESTAMP_TST"
	.sleb128 32
	.uleb128 0xa
	.string	"TEST_ID_DMA_SAFELINKEDLIST_TST"
	.sleb128 33
	.uleb128 0xa
	.string	"TEST_ID_IOM_TST"
	.sleb128 34
	.uleb128 0xa
	.string	"TEST_ID_SMU_TST_RST"
	.sleb128 35
	.uleb128 0xa
	.string	"TEST_ID_PFLASH_MON_TST"
	.sleb128 36
	.uleb128 0xa
	.string	"TEST_ID_SFF_TST"
	.sleb128 37
	.uleb128 0xa
	.string	"TEST_ID_PHLSRAM_TST"
	.sleb128 38
	.byte	0
	.uleb128 0xb
	.string	"Sl_TstRsltType"
	.byte	0x6
	.uahalf	0x2a3
	.uaword	0x124
	.uleb128 0xb
	.string	"Sl_ParamSetType"
	.byte	0x6
	.uahalf	0x2ac
	.uaword	0x124
	.uleb128 0xc
	.byte	0x1
	.string	"__crc32"
	.byte	0x2
	.uahalf	0x189
	.byte	0x1
	.uaword	0xbd
	.byte	0x3
	.uaword	0x65d
	.uleb128 0xd
	.string	"b"
	.byte	0x2
	.uahalf	0x189
	.uaword	0xbd
	.uleb128 0xd
	.string	"a"
	.byte	0x2
	.uahalf	0x189
	.uaword	0xbd
	.uleb128 0xe
	.string	"res"
	.byte	0x2
	.uahalf	0x18a
	.uaword	0xbd
	.byte	0
	.uleb128 0xf
	.string	"SfrTst_lSfrCmpTst"
	.byte	0x1
	.byte	0xc0
	.byte	0x1
	.uaword	0x5f6
	.byte	0x1
	.uaword	0x718
	.uleb128 0x10
	.uaword	.LASF0
	.byte	0x1
	.byte	0xc2
	.uaword	0x718
	.uleb128 0x10
	.uaword	.LASF1
	.byte	0x1
	.byte	0xc3
	.uaword	0x71d
	.uleb128 0x11
	.string	"Result"
	.byte	0x1
	.byte	0xc6
	.uaword	0x5f6
	.uleb128 0x11
	.string	"Mask"
	.byte	0x1
	.byte	0xc7
	.uaword	0x124
	.uleb128 0x11
	.string	"CurrentRegValue"
	.byte	0x1
	.byte	0xc8
	.uaword	0x124
	.uleb128 0x11
	.string	"ResultReg"
	.byte	0x1
	.byte	0xc9
	.uaword	0x124
	.uleb128 0x11
	.string	"ShiftBy"
	.byte	0x1
	.byte	0xca
	.uaword	0xfd
	.uleb128 0x11
	.string	"ResRegReset"
	.byte	0x1
	.byte	0xcb
	.uaword	0xfd
	.uleb128 0x11
	.string	"GroupCounter"
	.byte	0x1
	.byte	0xcc
	.uaword	0x124
	.uleb128 0x11
	.string	"Index"
	.byte	0x1
	.byte	0xcd
	.uaword	0x124
	.byte	0
	.uleb128 0x8
	.uaword	0x60d
	.uleb128 0x8
	.uaword	0x722
	.uleb128 0x6
	.byte	0x4
	.uaword	0x124
	.uleb128 0x12
	.byte	0x1
	.string	"SfrTst_SfrCmpTst"
	.byte	0x1
	.byte	0x80
	.byte	0x1
	.uaword	0x5f6
	.uaword	.LFB18
	.uaword	.LFE18
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x914
	.uleb128 0x13
	.uaword	.LASF0
	.byte	0x1
	.byte	0x82
	.uaword	0x718
	.uaword	.LLST0
	.uleb128 0x14
	.string	"TstSeed"
	.byte	0x1
	.byte	0x83
	.uaword	0x914
	.uaword	.LLST1
	.uleb128 0x15
	.uaword	.LASF1
	.byte	0x1
	.byte	0x84
	.uaword	0x71d
	.byte	0x1
	.byte	0x64
	.uleb128 0x16
	.string	"Result"
	.byte	0x1
	.byte	0x87
	.uaword	0x5f6
	.uaword	.LLST2
	.uleb128 0x17
	.uaword	0x625
	.uaword	.LBB24
	.uaword	.LBE24
	.byte	0x1
	.byte	0x8a
	.uaword	0x7c8
	.uleb128 0x18
	.uaword	0x646
	.uaword	.LLST3
	.uleb128 0x19
	.uaword	0x63c
	.byte	0x2
	.uleb128 0x1a
	.uaword	.LBB25
	.uaword	.LBE25
	.uleb128 0x1b
	.uaword	0x650
	.uaword	.LLST4
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uaword	0x65d
	.uaword	.LBB26
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x95
	.uleb128 0x1d
	.uaword	0x687
	.byte	0x1
	.byte	0x64
	.uleb128 0x18
	.uaword	0x67c
	.uaword	.LLST5
	.uleb128 0x1e
	.uaword	.Ldebug_ranges0+0x18
	.uleb128 0x1b
	.uaword	0x692
	.uaword	.LLST6
	.uleb128 0x1b
	.uaword	0x6a0
	.uaword	.LLST7
	.uleb128 0x1b
	.uaword	0x6ac
	.uaword	.LLST8
	.uleb128 0x1b
	.uaword	0x6c3
	.uaword	.LLST9
	.uleb128 0x1b
	.uaword	0x6d4
	.uaword	.LLST10
	.uleb128 0x1b
	.uaword	0x6e3
	.uaword	.LLST11
	.uleb128 0x1b
	.uaword	0x6f6
	.uaword	.LLST12
	.uleb128 0x1b
	.uaword	0x70a
	.uaword	.LLST13
	.uleb128 0x1f
	.uaword	0x625
	.uaword	.LBB28
	.uaword	.LBE28
	.byte	0x1
	.uahalf	0x105
	.uaword	0x86e
	.uleb128 0x18
	.uaword	0x646
	.uaword	.LLST14
	.uleb128 0x18
	.uaword	0x63c
	.uaword	.LLST15
	.uleb128 0x1a
	.uaword	.LBB29
	.uaword	.LBE29
	.uleb128 0x1b
	.uaword	0x650
	.uaword	.LLST16
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uaword	0x625
	.uaword	.LBB30
	.uaword	.LBE30
	.byte	0x1
	.uahalf	0x11b
	.uaword	0x8a8
	.uleb128 0x18
	.uaword	0x646
	.uaword	.LLST17
	.uleb128 0x18
	.uaword	0x63c
	.uaword	.LLST18
	.uleb128 0x1a
	.uaword	.LBB31
	.uaword	.LBE31
	.uleb128 0x1b
	.uaword	0x650
	.uaword	.LLST19
	.byte	0
	.byte	0
	.uleb128 0x17
	.uaword	0x625
	.uaword	.LBB32
	.uaword	.LBE32
	.byte	0x1
	.byte	0xf3
	.uaword	0x8e1
	.uleb128 0x18
	.uaword	0x646
	.uaword	.LLST20
	.uleb128 0x18
	.uaword	0x63c
	.uaword	.LLST21
	.uleb128 0x1a
	.uaword	.LBB33
	.uaword	.LBE33
	.uleb128 0x1b
	.uaword	0x650
	.uaword	.LLST22
	.byte	0
	.byte	0
	.uleb128 0x20
	.uaword	0x625
	.uaword	.LBB34
	.uaword	.LBE34
	.byte	0x1
	.uahalf	0x111
	.uleb128 0x21
	.uaword	0x646
	.uleb128 0x18
	.uaword	0x63c
	.uaword	.LLST23
	.uleb128 0x1a
	.uaword	.LBB35
	.uaword	.LBE35
	.uleb128 0x22
	.uaword	0x650
	.byte	0x1
	.byte	0x55
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x8
	.uaword	0xfd
	.uleb128 0x23
	.uaword	0x25d
	.uaword	0x929
	.uleb128 0x24
	.uaword	0xe0
	.byte	0x1
	.byte	0
	.uleb128 0x25
	.string	"AllAvailableSets"
	.byte	0x5
	.byte	0x5f
	.uaword	0x943
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.uaword	0x919
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
	.uleb128 0xa
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x5
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
	.uleb128 0xe
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
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uaword	.LVL4
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL0
	.uaword	.LVL2
	.uahalf	0x6
	.byte	0xc
	.uaword	0x2010a
	.byte	0x9f
	.uaword	.LVL2
	.uaword	.LVL3
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL3
	.uaword	.LVL23
	.uahalf	0x6
	.byte	0xc
	.uaword	0x2010a
	.byte	0x9f
	.uaword	.LVL23
	.uaword	.LVL24
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL24
	.uaword	.LFE18
	.uahalf	0x6
	.byte	0xc
	.uaword	0x2010a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0x7
	.byte	0x75
	.sleb128 0
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL1
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL6
	.uaword	.LFE18
	.uahalf	0x2
	.byte	0x84
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL3
	.uaword	.LVL4
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL3
	.uaword	.LVL21
	.uahalf	0x6
	.byte	0xc
	.uaword	0x2010a
	.byte	0x9f
	.uaword	.LVL21
	.uaword	.LVL24
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL24
	.uaword	.LVL30
	.uahalf	0x6
	.byte	0xc
	.uaword	0x2010a
	.byte	0x9f
	.uaword	.LVL30
	.uaword	.LVL32
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL3
	.uaword	.LVL5
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL5
	.uaword	.LVL6
	.uahalf	0x2
	.byte	0x8f
	.sleb128 8
	.uaword	.LVL6
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL17
	.uaword	.LVL18
	.uahalf	0x2
	.byte	0x8f
	.sleb128 8
	.uaword	.LVL18
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x57
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL3
	.uaword	.LVL6
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL7
	.uaword	.LVL8
	.uahalf	0x6
	.byte	0x78
	.sleb128 0
	.byte	0x77
	.sleb128 0
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL8
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL19
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL24
	.uaword	.LFE18
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL3
	.uaword	.LVL6
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL10
	.uaword	.LVL18
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL24
	.uaword	.LVL28
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL28
	.uaword	.LVL29
	.uahalf	0xc
	.byte	0x32
	.byte	0x70
	.sleb128 0
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x24
	.byte	0x73
	.sleb128 0
	.byte	0x21
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL3
	.uaword	.LVL6
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL11
	.uaword	.LVL18
	.uahalf	0x1
	.byte	0x50
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x50
	.uaword	.LVL26
	.uaword	.LVL28
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL3
	.uaword	.LVL6
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL12
	.uaword	.LVL18
	.uahalf	0x1
	.byte	0x51
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x51
	.uaword	.LVL27
	.uaword	.LVL28
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL3
	.uaword	.LVL6
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL15
	.uaword	.LVL18
	.uahalf	0x1
	.byte	0x5b
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x5b
	.uaword	.LVL26
	.uaword	.LVL28
	.uahalf	0x1
	.byte	0x5b
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL3
	.uaword	.LVL6
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL15
	.uaword	.LVL18
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL13
	.uaword	.LVL15
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL13
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL14
	.uaword	.LVL15
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL21
	.uaword	.LVL24
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL21
	.uaword	.LVL22
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL22
	.uaword	.LVL24
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL24
	.uaword	.LVL27
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL24
	.uaword	.LVL25
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL25
	.uaword	.LVL28
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL30
	.uaword	.LVL31
	.uahalf	0x1
	.byte	0x55
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
	.uaword	.LFB18
	.uaword	.LFE18-.LFB18
	.uaword	0
	.uaword	0
	.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB26
	.uaword	.LBE26
	.uaword	.LBB37
	.uaword	.LBE37
	.uaword	0
	.uaword	0
	.uaword	.LBB27
	.uaword	.LBE27
	.uaword	.LBB36
	.uaword	.LBE36
	.uaword	0
	.uaword	0
	.uaword	.LFB18
	.uaword	.LFE18
	.uaword	0
	.uaword	0
	.section .debug_line,"",@progbits
.Ldebug_line0:
	.section .debug_str,"",@progbits
.LASF0:
	.string	"ParamSetIndex"
.LASF1:
	.string	"TstSignature"
	.extern	AllAvailableSets,STT_OBJECT,24
	.ident	"GCC: (HighTec Release v4.6.3.0) 4.6.3 build on 2013-05-17"
