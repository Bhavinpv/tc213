	.file	"Scheduler_Qm.c"
.section .text,"ax",@progbits
.Ltext0:
	.section .text.MPU_QM_CODE,"ax",@progbits
	.align 3
	.global	mg_vQmTaskCall
	.type	mg_vQmTaskCall, @function
mg_vQmTaskCall:
.LFB203:
	.file 1 "../30_Bsw/Scheduler/Scheduler_Qm.c"
	.loc 1 52 0
.LBB18:
.LBB19:
.LBB20:
	.file 2 "../30_Bsw/iohw/Static/iohwsf_AccessProt.h"
	.loc 2 75 0
#APP
	# 75 "../30_Bsw/iohw/Static/iohwsf_AccessProt.h" 1
	mfcr %d15, LO:0xFE04
	# 0 "" 2
.LVL0:
#NO_APP
.LBE20:
	.loc 2 76 0
	insert	%d15, %d15, 0, 14, 1
.LVL1:
	.loc 2 77 0
	insert	%d15, %d15, 0, 10, 2
.LVL2:
.LBB21:
	.loc 2 78 0
#APP
	# 78 "../30_Bsw/iohw/Static/iohwsf_AccessProt.h" 1
	mtcr LO:0xFE04, %d15
	# 0 "" 2
#NO_APP
.LBE21:
.LBB22:
.LBB23:
	.file 3 "../30_Bsw/Compilers/IfxCpu_IntrinsicsGnuc.h"
	.loc 3 1354 0
#APP
	# 1354 "../30_Bsw/Compilers/IfxCpu_IntrinsicsGnuc.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE23:
.LBE22:
	.loc 2 81 0
	mov	%d2, 12288
	and	%d15, %d2
.LVL3:
	mov	%d2, 4096
	jeq	%d15, %d2, .L10
	.loc 2 84 0
	mov	%d2, 8192
	movh.a	%a15, hi:PSWReg_Rd2
	jeq	%d15, %d2, .L11
.L3:
.LBE19:
.LBE18:
	.loc 1 55 0
	ld.w	%d2, [%a15] lo:PSWReg_Rd2
	mov	%d15, 12288
	and	%d15, %d2
	mov	%d2, 8192
	jeq	%d15, %d2, .L12
.L4:
	.loc 1 60 0
	movh.a	%a15, hi:PSWReg_Rd1
	ld.w	%d2, [%a15] lo:PSWReg_Rd1
	mov	%d15, 12288
	and	%d15, %d2
	mov	%d2, 4096
	jeq	%d15, %d2, .L13
	ret
.L13:
.LBB28:
.LBB29:
	.loc 1 75 0
	ld.w	%d15, [%a15] lo:PSWReg_Rd1
	jnz.t	%d15, 14, .L6
	.loc 1 76 0
	ld.w	%d2, [%a15] lo:PSWReg_Rd1
	mov	%d15, 3072
	and	%d15, %d2
	jz	%d15, .L14
.L6:
	.loc 1 93 0
	mov	%d15, 3
	movh.a	%a15, hi:TRUSTED_Mpu_Err
	st.h	[%a15] lo:TRUSTED_Mpu_Err, %d15
	ret
.L10:
.LBE29:
.LBE28:
.LBB31:
.LBB26:
.LBB24:
	.loc 2 82 0
#APP
	# 82 "../30_Bsw/iohw/Static/iohwsf_AccessProt.h" 1
	mfcr %d15, LO:0xFE04
	# 0 "" 2
.LVL4:
#NO_APP
.LBE24:
	movh.a	%a15, hi:PSWReg_Rd1
	st.w	[%a15] lo:PSWReg_Rd1, %d15
	movh.a	%a15, hi:PSWReg_Rd2
.LBE26:
.LBE31:
	.loc 1 55 0
	ld.w	%d2, [%a15] lo:PSWReg_Rd2
	mov	%d15, 12288
.LVL5:
	and	%d15, %d2
	mov	%d2, 8192
	jne	%d15, %d2, .L4
.LVL6:
.L12:
	.loc 1 58 0
	mov	%d15, -85
	movh.a	%a15, hi:Pma_AbortData
	lea	%a15, [%a15] lo:Pma_AbortData
	st.b	[%a15] 8, %d15
	ret
.L11:
.LBB32:
.LBB27:
.LBB25:
	.loc 2 85 0
#APP
	# 85 "../30_Bsw/iohw/Static/iohwsf_AccessProt.h" 1
	mfcr %d15, LO:0xFE04
	# 0 "" 2
.LVL7:
#NO_APP
.LBE25:
	st.w	[%a15] lo:PSWReg_Rd2, %d15
	j	.L3
.LVL8:
.L14:
.LBE27:
.LBE32:
.LBB33:
.LBB30:
	.loc 1 78 0
	call	CANDriver_1mSTask
	.loc 1 79 0
	mov	%d4, 0
	call	TpTask
	.loc 1 81 0
	movh.a	%a15, hi:TaskCounter
	.loc 1 80 0
	call	Uds_Task
	.loc 1 81 0
	ld.bu	%d2, [%a15] lo:TaskCounter
	ne	%d3, %d2, 10
	jz	%d3, .L15
	.loc 1 88 0
	add	%d2, 1
	st.b	[%a15] lo:TaskCounter, %d2
	ret
.L15:
	.loc 1 83 0
	call	Pma_vTask10ms
	.loc 1 84 0
	st.b	[%a15] lo:TaskCounter, %d15
	ret
.LBE30:
.LBE33:
.LFE203:
	.size	mg_vQmTaskCall, .-mg_vQmTaskCall
	.align 3
	.global	mg_vQM_Task
	.type	mg_vQM_Task, @function
mg_vQM_Task:
.LFB204:
	.loc 1 70 0
	.loc 1 75 0
	movh.a	%a15, hi:PSWReg_Rd1
	ld.w	%d15, [%a15] lo:PSWReg_Rd1
	jnz.t	%d15, 14, .L17
	.loc 1 76 0
	ld.w	%d2, [%a15] lo:PSWReg_Rd1
	mov	%d15, 3072
	and	%d15, %d2
	jz	%d15, .L20
.L17:
	.loc 1 93 0
	mov	%d15, 3
	movh.a	%a15, hi:TRUSTED_Mpu_Err
	st.h	[%a15] lo:TRUSTED_Mpu_Err, %d15
	ret
.L20:
	.loc 1 78 0
	call	CANDriver_1mSTask
	.loc 1 79 0
	mov	%d4, 0
	call	TpTask
	.loc 1 81 0
	movh.a	%a15, hi:TaskCounter
	.loc 1 80 0
	call	Uds_Task
	.loc 1 81 0
	ld.bu	%d2, [%a15] lo:TaskCounter
	ne	%d3, %d2, 10
	jz	%d3, .L21
	.loc 1 88 0
	add	%d2, 1
	st.b	[%a15] lo:TaskCounter, %d2
	ret
.L21:
	.loc 1 83 0
	call	Pma_vTask10ms
	.loc 1 84 0
	st.b	[%a15] lo:TaskCounter, %d15
	ret
.LFE204:
	.size	mg_vQM_Task, .-mg_vQM_Task
	.section .data.MPU_QM_VAR_INIT,"aw",@progbits
	.align 3
	.type	TaskCounter, @object
	.size	TaskCounter, 1
TaskCounter:
	.zero	1
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
	.uaword	.LFB203
	.uaword	.LFE203-.LFB203
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB204
	.uaword	.LFE204-.LFB204
	.align 2
.LEFDE2:
.section .text,"ax",@progbits
.Letext0:
	.file 4 "../30_Bsw/Common/rtwtypes.h"
	.file 5 "../30_Bsw/Common/Platform_Types.h"
	.file 6 "../30_Bsw/Common/TC21x/IfxCpu_regdef.h"
	.file 7 "../30_Bsw/Mcal/Can/can_cfg.h"
	.file 8 "../30_Bsw/Mcal/Can/can_driver.h"
	.file 9 "../30_Bsw/Mcal/Qspi/Qspi.h"
	.file 10 "../30_Bsw/Scheduler/Scheduler_api.h"
	.file 11 "../30_Bsw/iohw/Static/iohwsf.h"
	.file 12 "../30_Bsw/Pma/Pma_cfg.h"
	.file 13 "../30_Bsw/Pma/Pma_api.h"
	.file 14 "../30_Bsw/Mpu/mpu_api.h"
	.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x1a0f
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.6.3 build on 2013-05-17"
	.byte	0x1
	.string	"../30_Bsw/Scheduler/Scheduler_Qm.c"
	.string	"D:\\\\SVN\\\\IPB-11Kw\\\\LvDc-C01R0P0-Ceramicheater\\\\20_Make"
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_ranges0+0x58
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x3
	.string	"uint8_T"
	.byte	0x4
	.byte	0x51
	.uaword	0xb5
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
	.byte	0x4
	.byte	0x53
	.uaword	0xe3
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
	.byte	0x4
	.byte	0x55
	.uaword	0x110
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
	.uleb128 0x3
	.string	"boolean_T"
	.byte	0x4
	.byte	0x5f
	.uaword	0xb5
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
	.byte	0x4
	.byte	0x7d
	.uaword	0xa6
	.uleb128 0x3
	.string	"u16"
	.byte	0x4
	.byte	0x7f
	.uaword	0xd3
	.uleb128 0x3
	.string	"u32"
	.byte	0x4
	.byte	0x81
	.uaword	0x100
	.uleb128 0x3
	.string	"bit"
	.byte	0x4
	.byte	0x84
	.uaword	0x133
	.uleb128 0x3
	.string	"uint8"
	.byte	0x5
	.byte	0x5b
	.uaword	0xb5
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x4
	.uaword	0x110
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
	.byte	0x6
	.uahalf	0x204
	.uaword	0x2d8
	.uleb128 0x6
	.string	"CDC"
	.byte	0x6
	.uahalf	0x206
	.uaword	0x1a5
	.byte	0x4
	.byte	0x7
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.string	"CDE"
	.byte	0x6
	.uahalf	0x207
	.uaword	0x1a5
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.string	"GW"
	.byte	0x6
	.uahalf	0x208
	.uaword	0x1a5
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.string	"IS"
	.byte	0x6
	.uahalf	0x209
	.uaword	0x1a5
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.string	"IO"
	.byte	0x6
	.uahalf	0x20a
	.uaword	0x1a5
	.byte	0x4
	.byte	0x2
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.string	"PRS"
	.byte	0x6
	.uahalf	0x20b
	.uaword	0x1a5
	.byte	0x4
	.byte	0x2
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.string	"S"
	.byte	0x6
	.uahalf	0x20c
	.uaword	0x1a5
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.string	"reserved_15"
	.byte	0x6
	.uahalf	0x20d
	.uaword	0x1a5
	.byte	0x4
	.byte	0xc
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.string	"SAV"
	.byte	0x6
	.uahalf	0x20e
	.uaword	0x1a5
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.string	"AV"
	.byte	0x6
	.uahalf	0x20f
	.uaword	0x1a5
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.string	"SV"
	.byte	0x6
	.uahalf	0x210
	.uaword	0x1a5
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.string	"V"
	.byte	0x6
	.uahalf	0x211
	.uaword	0x1a5
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.string	"C"
	.byte	0x6
	.uahalf	0x212
	.uaword	0x1a5
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x7
	.string	"Ifx_CPU_PSW_Bits"
	.byte	0x6
	.uahalf	0x213
	.uaword	0x1d5
	.uleb128 0x8
	.byte	0x4
	.byte	0x6
	.uahalf	0x467
	.uaword	0x319
	.uleb128 0x9
	.string	"U"
	.byte	0x6
	.uahalf	0x469
	.uaword	0x110
	.uleb128 0x9
	.string	"I"
	.byte	0x6
	.uahalf	0x46a
	.uaword	0xf9
	.uleb128 0x9
	.string	"B"
	.byte	0x6
	.uahalf	0x46b
	.uaword	0x2d8
	.byte	0
	.uleb128 0x7
	.string	"Ifx_CPU_PSW"
	.byte	0x6
	.uahalf	0x46c
	.uaword	0x2f1
	.uleb128 0xa
	.byte	0x4
	.byte	0x7
	.uahalf	0x469
	.uaword	0x415
	.uleb128 0xb
	.string	"CAN_RX_COM_WAKEUPSLEEPMANAGEMENT_IDX"
	.sleb128 0
	.uleb128 0xb
	.string	"CAN_RX_HVDC_SAFETYMEASURE_IDX"
	.sleb128 1
	.uleb128 0xb
	.string	"CAN_RX_HTB_CMD_IDX"
	.sleb128 2
	.uleb128 0xb
	.string	"CAN_RX_PARAMETER_COM_DCDC_IDX"
	.sleb128 3
	.uleb128 0xb
	.string	"CAN_RX_DCDC_HSFB_DIAG_REQ_IDX"
	.sleb128 4
	.uleb128 0xb
	.string	"CAN_RX_DCDC_DEV_CMD_IDX"
	.sleb128 5
	.uleb128 0xb
	.string	"CAN_RX_DCDC_CMD_IDX"
	.sleb128 6
	.uleb128 0xb
	.string	"CAN_RX_MSG_SIZE"
	.sleb128 7
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.byte	0x7
	.uahalf	0x474
	.uaword	0x5ea
	.uleb128 0xb
	.string	"CAN_TX_LVDC_PMA_ERRCODE_IDX"
	.sleb128 0
	.uleb128 0xb
	.string	"CAN_TX_DCDC_HTB_MEASURE_IDX"
	.sleb128 1
	.uleb128 0xb
	.string	"CAN_TX_LVDC_WAKEUPSLEEPMANAGEMENT_IDX"
	.sleb128 2
	.uleb128 0xb
	.string	"CAN_TX_LVDC_SAFETYMEASURE_IDX"
	.sleb128 3
	.uleb128 0xb
	.string	"CAN_TX_DCDC_MEASURE4_IDX"
	.sleb128 4
	.uleb128 0xb
	.string	"CAN_TX_DCDC_STATUS_ERRCODE_IDX"
	.sleb128 5
	.uleb128 0xb
	.string	"CAN_TX_PARAMETER_DCDC_COM_IDX"
	.sleb128 6
	.uleb128 0xb
	.string	"CAN_TX_DCDC_HSFB_DIAG_RESP_IDX"
	.sleb128 7
	.uleb128 0xb
	.string	"CAN_TX_DCDC_MEASURE2_IDX"
	.sleb128 8
	.uleb128 0xb
	.string	"CAN_TX_LVDC_PMA_ERRSRC_IDX"
	.sleb128 9
	.uleb128 0xb
	.string	"CAN_TX_DCDC_SCOPE1_IDX"
	.sleb128 10
	.uleb128 0xb
	.string	"CAN_TX_DCDC_SCOPE0_IDX"
	.sleb128 11
	.uleb128 0xb
	.string	"CAN_TX_DCDC_STATUS_IDX"
	.sleb128 12
	.uleb128 0xb
	.string	"CAN_TX_DCDC_MEASURE3_IDX"
	.sleb128 13
	.uleb128 0xb
	.string	"CAN_TX_DCDC_MEASURE_IDX"
	.sleb128 14
	.uleb128 0xb
	.string	"CAN_TX_MSG_SIZE"
	.sleb128 15
	.byte	0
	.uleb128 0xc
	.uaword	.LASF0
	.byte	0x2
	.byte	0x8
	.byte	0x29
	.uaword	0x612
	.uleb128 0xd
	.string	"BZ"
	.byte	0x8
	.byte	0x2a
	.uaword	0x18c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CRC"
	.byte	0x8
	.byte	0x2b
	.uaword	0x18c
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0
	.uleb128 0xe
	.uaword	.LASF0
	.byte	0x8
	.byte	0x2c
	.uaword	0x5ea
	.uleb128 0xc
	.uaword	.LASF1
	.byte	0x5a
	.byte	0x8
	.byte	0x2e
	.uaword	0x6a9
	.uleb128 0xd
	.string	"TxData"
	.byte	0x8
	.byte	0x2f
	.uaword	0x6a9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"RxData"
	.byte	0x8
	.byte	0x30
	.uaword	0x6b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x1e
	.uleb128 0xd
	.string	"RxErr"
	.byte	0x8
	.byte	0x31
	.uaword	0x6b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xd
	.string	"RxErrCnt"
	.byte	0x8
	.byte	0x32
	.uaword	0x6c9
	.byte	0x2
	.byte	0x23
	.uleb128 0x3a
	.uleb128 0xd
	.string	"RxErrSign"
	.byte	0x8
	.byte	0x33
	.uaword	0x6c9
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.string	"RxErrOut"
	.byte	0x8
	.byte	0x34
	.uaword	0x16b
	.byte	0x2
	.byte	0x23
	.uleb128 0x56
	.uleb128 0xd
	.string	"RxErrSum"
	.byte	0x8
	.byte	0x35
	.uaword	0x16b
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.byte	0
	.uleb128 0xf
	.uaword	0x612
	.uaword	0x6b9
	.uleb128 0x10
	.uaword	0x144
	.byte	0xe
	.byte	0
	.uleb128 0xf
	.uaword	0x612
	.uaword	0x6c9
	.uleb128 0x10
	.uaword	0x144
	.byte	0x6
	.byte	0
	.uleb128 0xf
	.uaword	0x16b
	.uaword	0x6d9
	.uleb128 0x10
	.uaword	0x144
	.byte	0x6
	.byte	0
	.uleb128 0xe
	.uaword	.LASF1
	.byte	0x8
	.byte	0x36
	.uaword	0x61d
	.uleb128 0xc
	.uaword	.LASF2
	.byte	0x4
	.byte	0x9
	.byte	0x8e
	.uaword	0x859
	.uleb128 0x11
	.string	"Unlock"
	.byte	0x9
	.byte	0x90
	.uaword	0x181
	.byte	0x1
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"LockUp"
	.byte	0x9
	.byte	0x91
	.uaword	0x181
	.byte	0x1
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"Config"
	.byte	0x9
	.byte	0x92
	.uaword	0x181
	.byte	0x1
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"ReadStatus"
	.byte	0x9
	.byte	0x93
	.uaword	0x181
	.byte	0x1
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"MPSConfig"
	.byte	0x9
	.byte	0x94
	.uaword	0x181
	.byte	0x1
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"GotoNormal"
	.byte	0x9
	.byte	0x95
	.uaword	0x181
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"ParityCheck"
	.byte	0x9
	.byte	0x96
	.uaword	0x181
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"ABISTFin"
	.byte	0x9
	.byte	0x98
	.uaword	0x181
	.byte	0x1
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"ABISTSS"
	.byte	0x9
	.byte	0x99
	.uaword	0x181
	.byte	0x1
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x11
	.string	"ABISTInt"
	.byte	0x9
	.byte	0x9a
	.uaword	0x181
	.byte	0x1
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x11
	.string	"WWDEnCnt"
	.byte	0x9
	.byte	0x9b
	.uaword	0x181
	.byte	0x1
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x11
	.string	"NormalState"
	.byte	0x9
	.byte	0x9d
	.uaword	0x181
	.byte	0x1
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x11
	.string	"QCOStatus"
	.byte	0x9
	.byte	0x9e
	.uaword	0x181
	.byte	0x1
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x11
	.string	"QVRStatus"
	.byte	0x9
	.byte	0x9f
	.uaword	0x181
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x11
	.string	"Reserved1"
	.byte	0x9
	.byte	0xa1
	.uaword	0x16b
	.byte	0x2
	.byte	0x2
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"Reserved2"
	.byte	0x9
	.byte	0xa2
	.uaword	0x16b
	.byte	0x2
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0xe
	.uaword	.LASF2
	.byte	0x9
	.byte	0xa3
	.uaword	0x6e4
	.uleb128 0x12
	.byte	0x10
	.byte	0xa
	.byte	0x8c
	.uaword	0x8eb
	.uleb128 0xd
	.string	"FailureCnt"
	.byte	0xa
	.byte	0x8d
	.uaword	0x16b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"Isr_15usCnt"
	.byte	0xa
	.byte	0x8e
	.uaword	0x16b
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xd
	.string	"Isr_100usCnt"
	.byte	0xa
	.byte	0x8f
	.uaword	0x16b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"Isr_1msCnt"
	.byte	0xa
	.byte	0x90
	.uaword	0x161
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xd
	.string	"TimerDiff_10ms"
	.byte	0xa
	.byte	0x91
	.uaword	0x176
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"Sts"
	.byte	0xa
	.byte	0x92
	.uaword	0x161
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x3
	.string	"PFM_S_CAPTURE"
	.byte	0xa
	.byte	0x93
	.uaword	0x864
	.uleb128 0x13
	.byte	0x4
	.byte	0xb
	.byte	0x24
	.uaword	0x1526
	.uleb128 0xb
	.string	"IOHWSF_E_SSCHECK"
	.sleb128 0
	.uleb128 0xb
	.string	"IOHWSF_E_SMU_CONFIGURATION_CHECK"
	.sleb128 1
	.uleb128 0xb
	.string	"IOHWSF_E_ISR_UNHANDLED_ISR"
	.sleb128 2
	.uleb128 0xb
	.string	"IOHWSF_E_ISR_100U_SOURCE_ERR"
	.sleb128 3
	.uleb128 0xb
	.string	"IOHWSF_E_ISR_1M_SOURCE_ERR"
	.sleb128 4
	.uleb128 0xb
	.string	"IOHWSF_E_ISR_10M_SOURCE_ERR"
	.sleb128 5
	.uleb128 0xb
	.string	"IOHWSF_E_SAFETLIB_INIT"
	.sleb128 6
	.uleb128 0xb
	.string	"IOHWSF_E_SAFETLIB_PRE_INIT"
	.sleb128 7
	.uleb128 0xb
	.string	"IOHWSF_E_SAFETLIB_PRERUN_PREHOOK"
	.sleb128 8
	.uleb128 0xb
	.string	"IOHWSF_E_SAFETLIB_PRERUN_TEST_FAIL"
	.sleb128 9
	.uleb128 0xb
	.string	"IOHWSF_E_SAFETLIB_PRERUN_POSTHOOK"
	.sleb128 10
	.uleb128 0xb
	.string	"IOHWSF_E_SAFETLIB_RUN_TEST_FAIL"
	.sleb128 11
	.uleb128 0xb
	.string	"IOHWSF_E_SAFETLIB_SRC_REG_CHECK_FAIL"
	.sleb128 12
	.uleb128 0xb
	.string	"IOHWSF_E_MCAL_DIV_INCONSISTENCY"
	.sleb128 13
	.uleb128 0xb
	.string	"IOHWSF_E_MCAL_SPINLOCK_TIMEOUT"
	.sleb128 14
	.uleb128 0xb
	.string	"IOHWSF_E_TRAP_VIRTUAL_ADDRESS_FILL"
	.sleb128 15
	.uleb128 0xb
	.string	"IOHWSF_E_TRAP_VIRTUAL_ADDRESS_PROTECTION"
	.sleb128 16
	.uleb128 0xb
	.string	"IOHWSF_E_TRAP_PRIVILEGE_INSTRUCTION"
	.sleb128 17
	.uleb128 0xb
	.string	"IOHWSF_E_TRAP_MEMORY_PROTECTION_READ"
	.sleb128 18
	.uleb128 0xb
	.string	"IOHWSF_E_TRAP_MEMORY_PROTECTION_WRITE"
	.sleb128 19
	.uleb128 0xb
	.string	"IOHWSF_E_TRAP_MEMORY_PROTECTION_EXECUTION"
	.sleb128 20
	.uleb128 0xb
	.string	"IOHWSF_E_TRAP_PROTECTION_PERIPHERAL_ACCESS"
	.sleb128 21
	.uleb128 0xb
	.string	"IOHWSF_E_TRAP_MEMORY_PROTECTION_NULL_ADDRESS"
	.sleb128 22
	.uleb128 0xb
	.string	"IOHWSF_E_TRAP_GLOBAL_REGISTER_WRITE_PROTECTION"
	.sleb128 23
	.uleb128 0xb
	.string	"IOHWSF_E_TRAP_ILLEGAL_OPCODE"
	.sleb128 24
	.uleb128 0xb
	.string	"IOHWSF_E_TRAP_UNIMPLEMENTED_OPCODE"
	.sleb128 25
	.uleb128 0xb
	.string	"IOHWSF_E_TRAP_INVALID_OPERAND_SPECIFICATION"
	.sleb128 26
	.uleb128 0xb
	.string	"IOHWSF_E_TRAP_DATA_ADDRESS_ALIGNMENT"
	.sleb128 27
	.uleb128 0xb
	.string	"IOHWSF_E_TRAP_INVALID_LOCAL_MEMORY_ADDRESS"
	.sleb128 28
	.uleb128 0xb
	.string	"IOHWSF_E_TRAP_FREE_CONTEXT_LIST_DEPLETION"
	.sleb128 29
	.uleb128 0xb
	.string	"IOHWSF_E_TRAP_CALL_DEPTH_OVERFLOW"
	.sleb128 30
	.uleb128 0xb
	.string	"IOHWSF_E_TRAP_CALL_DEPTH_UNDERFLOW"
	.sleb128 31
	.uleb128 0xb
	.string	"IOHWSF_E_TRAP_FREE_CONTEXT_LIST_UNDERFLOW"
	.sleb128 32
	.uleb128 0xb
	.string	"IOHWSF_E_TRAP_CALL_STACK_UNDERFLOW"
	.sleb128 33
	.uleb128 0xb
	.string	"IOHWSF_E_TRAP_CONTEXT_TYPE"
	.sleb128 34
	.uleb128 0xb
	.string	"IOHWSF_E_TRAP_NESTING_ERROR"
	.sleb128 35
	.uleb128 0xb
	.string	"IOHWSF_E_TRAP_PROGRAM_FETCH_SYNCHRONOUS_ERROR"
	.sleb128 36
	.uleb128 0xb
	.string	"IOHWSF_E_TRAP_DATA_ACCESS_SYNCHRONOUS_ERROR"
	.sleb128 37
	.uleb128 0xb
	.string	"IOHWSF_E_TRAP_DATA_ACCESS_ASYNCHRONOUS_ERROR"
	.sleb128 38
	.uleb128 0xb
	.string	"IOHWSF_E_TRAP_ARITHEMETIC_OVERFLOW"
	.sleb128 39
	.uleb128 0xb
	.string	"IOHWSF_E_TRAP_STICKY_ARITHEMETIC_OVERFLOW"
	.sleb128 40
	.uleb128 0xb
	.string	"IOHWSF_E_TRAP_UNEXPECTED_SYSTEM_CALL"
	.sleb128 41
	.uleb128 0xb
	.string	"IOHWSF_E_TRAP_UNEXPECTED_NMI"
	.sleb128 42
	.uleb128 0xb
	.string	"IOHWSF_E_TRAP_UNDEFINED_TIN"
	.sleb128 43
	.uleb128 0xb
	.string	"IOHWSF_E_CORE0_NOT_IN_SAFE_STATE"
	.sleb128 44
	.uleb128 0xb
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_TRAP_TST"
	.sleb128 45
	.uleb128 0xb
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_CLKM_TST"
	.sleb128 46
	.uleb128 0xb
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_SRAM_ECC_TST"
	.sleb128 47
	.uleb128 0xb
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_PMU_ECC_EDC_TST"
	.sleb128 48
	.uleb128 0xb
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_SRI_TST"
	.sleb128 49
	.uleb128 0xb
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_SPB_TST_TIMEOUT"
	.sleb128 50
	.uleb128 0xb
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_SFF_TST"
	.sleb128 51
	.uleb128 0xb
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_SPB_TST_RAP"
	.sleb128 52
	.uleb128 0xb
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_CPU_MPU_TST"
	.sleb128 53
	.uleb128 0xb
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_CPUBUSMPULFM_TST"
	.sleb128 54
	.uleb128 0xb
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_REG_ACC_PROT_TST"
	.sleb128 55
	.uleb128 0xb
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_CPU_WDG_TST"
	.sleb128 56
	.uleb128 0xb
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_SAFETY_WDG_TST"
	.sleb128 57
	.uleb128 0xb
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_SMU_TST_NMI"
	.sleb128 58
	.uleb128 0xb
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_SMU_TST_IRQ"
	.sleb128 59
	.uleb128 0xb
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_SMU_TST_RT"
	.sleb128 60
	.uleb128 0xb
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_VLM_TST"
	.sleb128 61
	.uleb128 0xb
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_IR_TST"
	.sleb128 62
	.uleb128 0xb
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_LOCK_STEP_TST"
	.sleb128 63
	.uleb128 0xb
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_SFR_CMP_TST"
	.sleb128 64
	.uleb128 0xb
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_SRC_REG_CHECK_TST"
	.sleb128 65
	.uleb128 0xb
	.string	"IOHWSF_E_FLASH_TEST_PATTERN_NOT_FLSHED"
	.sleb128 66
	.uleb128 0xb
	.string	"IOHWSF_E_SETUP_FSP_PIN"
	.sleb128 67
	.uleb128 0xb
	.string	"IOHWSF_E_SMU_LOCK_CFG_TST"
	.sleb128 68
	.uleb128 0xb
	.string	"IOHWSF_E_SAFETY_ISR_RESET"
	.sleb128 69
	.uleb128 0xb
	.string	"IOHWSF_E_TLF_ERR_DETECTION_TIMEOUT"
	.sleb128 70
	.uleb128 0xb
	.string	"IOHWSF_E_TLF_SYS_FLAGS_NOT_CLEARED"
	.sleb128 71
	.uleb128 0xb
	.string	"IOHWSF_E_TLF_RESTORE_FAILED"
	.sleb128 72
	.uleb128 0xb
	.string	"IOHWSF_E_RELEASE_FSP_FAILED"
	.sleb128 73
	.uleb128 0xb
	.string	"IOHWSF_E_UDS_ECU_RESET_REQ"
	.sleb128 74
	.uleb128 0xb
	.string	"IOHWSF_E_UDS_SRAM_ECCPREAOU_FAILED"
	.sleb128 75
	.byte	0
	.uleb128 0x3
	.string	"IOHWSF_E_ErrorType"
	.byte	0xb
	.byte	0x71
	.uaword	0x900
	.uleb128 0x12
	.byte	0x74
	.byte	0xc
	.byte	0x3e
	.uaword	0x158f
	.uleb128 0xd
	.string	"IohwErr"
	.byte	0xc
	.byte	0x3f
	.uaword	0x1526
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"E2eSts"
	.byte	0xc
	.byte	0x40
	.uaword	0x6d9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"PfmSts"
	.byte	0xc
	.byte	0x41
	.uaword	0x8eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xd
	.string	"QspiErr"
	.byte	0xc
	.byte	0x42
	.uaword	0x859
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.byte	0
	.uleb128 0x3
	.string	"PMA_S_MCSAFE_ERR"
	.byte	0xc
	.byte	0x43
	.uaword	0x1540
	.uleb128 0x12
	.byte	0xa
	.byte	0xc
	.byte	0x45
	.uaword	0x1620
	.uleb128 0xd
	.string	"Shutdown_ErrCnt"
	.byte	0xc
	.byte	0x46
	.uaword	0x16b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"Iohw_ErrCnt"
	.byte	0xc
	.byte	0x47
	.uaword	0x16b
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xd
	.string	"Pfm_ErrCnt"
	.byte	0xc
	.byte	0x48
	.uaword	0x16b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"E2e_ErrCnt"
	.byte	0xc
	.byte	0x49
	.uaword	0x16b
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xd
	.string	"Qspi_ErrCnt"
	.byte	0xc
	.byte	0x4a
	.uaword	0x16b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x3
	.string	"PMA_S_MODULE_INFO"
	.byte	0xc
	.byte	0x4b
	.uaword	0x15a7
	.uleb128 0x12
	.byte	0x4
	.byte	0xd
	.byte	0x2c
	.uaword	0x166e
	.uleb128 0xd
	.string	"Mins"
	.byte	0xd
	.byte	0x2d
	.uaword	0x16b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"Secs"
	.byte	0xd
	.byte	0x2e
	.uaword	0x161
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xd
	.string	"Cnt"
	.byte	0xd
	.byte	0x2f
	.uaword	0x161
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0
	.uleb128 0x3
	.string	"PMA_S_RUN"
	.byte	0xd
	.byte	0x30
	.uaword	0x1639
	.uleb128 0x12
	.byte	0x14
	.byte	0xd
	.byte	0x32
	.uaword	0x1714
	.uleb128 0xd
	.string	"ShutdownSts"
	.byte	0xd
	.byte	0x33
	.uaword	0x161
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"ResetCtr"
	.byte	0xd
	.byte	0x34
	.uaword	0x161
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xd
	.string	"ResetSts_reg"
	.byte	0xd
	.byte	0x35
	.uaword	0x176
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"PowerCycle"
	.byte	0xd
	.byte	0x36
	.uaword	0x176
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"PORSTPowerCycle"
	.byte	0xd
	.byte	0x37
	.uaword	0x176
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"NonPORSTPowerCycle"
	.byte	0xd
	.byte	0x38
	.uaword	0x176
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x3
	.string	"PMA_S_RESETINFO"
	.byte	0xd
	.byte	0x39
	.uaword	0x167f
	.uleb128 0x12
	.byte	0xa0
	.byte	0xd
	.byte	0x3c
	.uaword	0x17e7
	.uleb128 0xd
	.string	"InitPattern"
	.byte	0xd
	.byte	0x3d
	.uaword	0x176
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"ErrCnt"
	.byte	0xd
	.byte	0x3e
	.uaword	0x16b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"ErrSrc"
	.byte	0xd
	.byte	0x3f
	.uaword	0x161
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xd
	.string	"CpuLoadMin"
	.byte	0xd
	.byte	0x40
	.uaword	0x161
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0xd
	.string	"CpuLoadMax"
	.byte	0xd
	.byte	0x41
	.uaword	0x161
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"ModuleInfo"
	.byte	0xd
	.byte	0x42
	.uaword	0x1620
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xd
	.string	"Timestamp"
	.byte	0xd
	.byte	0x43
	.uaword	0x166e
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"ResetInfo"
	.byte	0xd
	.byte	0x44
	.uaword	0x1714
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"McSafeErr"
	.byte	0xd
	.byte	0x45
	.uaword	0x158f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.byte	0
	.uleb128 0x3
	.string	"PMA_S_ABORTTYPE"
	.byte	0xd
	.byte	0x46
	.uaword	0x172b
	.uleb128 0x14
	.string	"__isync"
	.byte	0x3
	.uahalf	0x548
	.byte	0x1
	.byte	0x3
	.uleb128 0x15
	.string	"IOHWSF_ACCESSPROT_vSwitchToQmISR"
	.byte	0x2
	.byte	0x48
	.byte	0x1
	.byte	0x3
	.uaword	0x189a
	.uleb128 0x16
	.string	"PSWRegisterValue"
	.byte	0x2
	.byte	0x4a
	.uaword	0x319
	.uleb128 0x17
	.uaword	0x1861
	.uleb128 0x16
	.string	"__res"
	.byte	0x2
	.byte	0x4b
	.uaword	0x110
	.byte	0
	.uleb128 0x17
	.uaword	0x1877
	.uleb128 0x16
	.string	"__newval"
	.byte	0x2
	.byte	0x4e
	.uaword	0x110
	.byte	0
	.uleb128 0x17
	.uaword	0x188a
	.uleb128 0x16
	.string	"__res"
	.byte	0x2
	.byte	0x52
	.uaword	0x110
	.byte	0
	.uleb128 0x18
	.uleb128 0x16
	.string	"__res"
	.byte	0x2
	.byte	0x55
	.uaword	0x110
	.byte	0
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.string	"mg_vQM_Task"
	.byte	0x1
	.byte	0x45
	.byte	0x1
	.byte	0x3
	.uleb128 0x1a
	.byte	0x1
	.string	"mg_vQmTaskCall"
	.byte	0x1
	.byte	0x33
	.byte	0x1
	.uaword	.LFB203
	.uaword	.LFE203
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x1969
	.uleb128 0x1b
	.uaword	0x180c
	.uaword	.LBB18
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x36
	.uaword	0x1959
	.uleb128 0x1c
	.uaword	.Ldebug_ranges0+0x20
	.uleb128 0x1d
	.uaword	0x1836
	.uaword	.LLST0
	.uleb128 0x1e
	.uaword	.LBB20
	.uaword	.LBE20
	.uaword	0x1907
	.uleb128 0x1d
	.uaword	0x1853
	.uaword	.LLST1
	.byte	0
	.uleb128 0x1e
	.uaword	.LBB21
	.uaword	.LBE21
	.uaword	0x191e
	.uleb128 0x1d
	.uaword	0x1866
	.uaword	.LLST0
	.byte	0
	.uleb128 0x1f
	.uaword	0x17fe
	.uaword	.LBB22
	.uaword	.LBE22
	.byte	0x2
	.byte	0x4f
	.uleb128 0x1e
	.uaword	.LBB24
	.uaword	.LBE24
	.uaword	0x1944
	.uleb128 0x1d
	.uaword	0x187c
	.uaword	.LLST3
	.byte	0
	.uleb128 0x20
	.uaword	.LBB25
	.uaword	.LBE25
	.uleb128 0x1d
	.uaword	0x188b
	.uaword	.LLST4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x21
	.uaword	0x189a
	.uaword	.LBB28
	.uaword	.Ldebug_ranges0+0x40
	.byte	0x1
	.byte	0x3e
	.byte	0
	.uleb128 0x22
	.uaword	0x189a
	.uaword	.LFB204
	.uaword	.LFE204
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0x23
	.string	"TaskCounter"
	.byte	0x1
	.byte	0x1c
	.uaword	0x161
	.byte	0x5
	.byte	0x3
	.uaword	TaskCounter
	.uleb128 0x24
	.string	"PSWReg_Rd0"
	.byte	0xe
	.byte	0x45
	.uaword	0x319
	.byte	0x1
	.byte	0x1
	.uleb128 0x24
	.string	"PSWReg_Rd1"
	.byte	0xe
	.byte	0x46
	.uaword	0x319
	.byte	0x1
	.byte	0x1
	.uleb128 0x24
	.string	"PSWReg_Rd2"
	.byte	0xe
	.byte	0x47
	.uaword	0x319
	.byte	0x1
	.byte	0x1
	.uleb128 0x24
	.string	"PSWReg_Rd3"
	.byte	0xe
	.byte	0x48
	.uaword	0x319
	.byte	0x1
	.byte	0x1
	.uleb128 0x24
	.string	"TRUSTED_Mpu_Err"
	.byte	0xe
	.byte	0x4a
	.uaword	0x16b
	.byte	0x1
	.byte	0x1
	.uleb128 0x24
	.string	"Pma_AbortData"
	.byte	0xd
	.byte	0x48
	.uaword	0x17e7
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
	.uleb128 0x4
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
	.uleb128 0xb
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
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
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x1d
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x1d
	.byte	0
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
	.uleb128 0x22
	.uleb128 0x2e
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uaword	.LVL2
	.uaword	.LVL3
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL7
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x5f
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
	.uaword	.LFB203
	.uaword	.LFE203-.LFB203
	.uaword	.LFB204
	.uaword	.LFE204-.LFB204
	.uaword	0
	.uaword	0
	.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB18
	.uaword	.LBE18
	.uaword	.LBB31
	.uaword	.LBE31
	.uaword	.LBB32
	.uaword	.LBE32
	.uaword	0
	.uaword	0
	.uaword	.LBB19
	.uaword	.LBE19
	.uaword	.LBB26
	.uaword	.LBE26
	.uaword	.LBB27
	.uaword	.LBE27
	.uaword	0
	.uaword	0
	.uaword	.LBB28
	.uaword	.LBE28
	.uaword	.LBB33
	.uaword	.LBE33
	.uaword	0
	.uaword	0
	.uaword	.LFB203
	.uaword	.LFE203
	.uaword	.LFB204
	.uaword	.LFE204
	.uaword	0
	.uaword	0
	.section .debug_line,"",@progbits
.Ldebug_line0:
	.section .debug_str,"",@progbits
.LASF1:
	.string	"CAN_S_E2E"
.LASF2:
	.string	"QSPI_S_ERROR_BIT"
.LASF0:
	.string	"CAN_S_E2EDATA"
	.extern	Pma_vTask10ms,STT_FUNC,0
	.extern	Uds_Task,STT_FUNC,0
	.extern	TpTask,STT_FUNC,0
	.extern	CANDriver_1mSTask,STT_FUNC,0
	.extern	Pma_AbortData,STT_OBJECT,160
	.extern	TRUSTED_Mpu_Err,STT_OBJECT,2
	.extern	PSWReg_Rd1,STT_OBJECT,4
	.extern	PSWReg_Rd2,STT_OBJECT,4
	.ident	"GCC: (HighTec Release v4.6.3.0) 4.6.3 build on 2013-05-17"
