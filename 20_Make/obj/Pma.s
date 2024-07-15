	.file	"Pma.c"
.section .text,"ax",@progbits
.Ltext0:
	.section .text.PMA_QM_CODE,"ax",@progbits
	.align 2
	.type	Pma_vKeepErrcnt, @function
Pma_vKeepErrcnt:
.LFB205:
	.file 1 "../30_Bsw/Pma/Pma.c"
	.loc 1 149 0
	.loc 1 150 0
	movh.a	%a15, hi:Pma_AbortData
	lea	%a15, [%a15] lo:Pma_AbortData
	ld.hu	%d15, [%a15] 4
	mov.u	%d2, 65535
	jeq	%d15, %d2, .L2
.LBB6:
.LBB7:
	.loc 1 152 0
	add	%d15, 1
	st.h	[%a15] 4, %d15
	ret
.L2:
.LBE7:
.LBE6:
	.loc 1 156 0
	mov	%d15, 0
	st.h	[%a15] 4, %d15
	ret
.LFE205:
	.size	Pma_vKeepErrcnt, .-Pma_vKeepErrcnt
	.align 2
	.global	Pma_vInit
	.type	Pma_vInit, @function
Pma_vInit:
.LFB203:
	.loc 1 73 0
	.loc 1 74 0
	movh.a	%a3, hi:Pma_AbortData
	lea	%a15, [%a3] lo:Pma_AbortData
	mov	%d15, 0
	.loc 1 82 0
	mov	%d2, -1
	.loc 1 84 0
	lea	%a2, [%a15] 20
	movh.a	%a4, hi:Pma_RunTime
	st.a	[%a4] lo:Pma_RunTime, %a2
.LBB12:
.LBB13:
	.loc 1 174 0
	movh.a	%a2, hi:-268214192
.LBE13:
.LBE12:
	.loc 1 74 0
	st.h	[%a15] 4, %d15
	.loc 1 75 0
	st.b	[%a15] 6, %d15
	.loc 1 76 0
	st.h	[%a15] 10, %d15
	.loc 1 77 0
	st.b	[%a15] 24, %d15
	.loc 1 78 0
	st.h	[%a15] 12, %d15
	.loc 1 79 0
	st.h	[%a15] 14, %d15
	.loc 1 80 0
	st.h	[%a15] 16, %d15
	.loc 1 81 0
	st.h	[%a15] 18, %d15
	.loc 1 82 0
	st.b	[%a15] 7, %d2
	.loc 1 83 0
	st.b	[%a15] 8, %d15
.LBB16:
.LBB14:
	.loc 1 174 0
	lea	%a2, [%a2] lo:-268214192
	ld.w	%d15, [%a2]0
	jz.t	%d15, 16, .L6
	.loc 1 176 0
	mov	%d15, 1
	st.b	[%a15] 24, %d15
.L6:
	.loc 1 178 0
	movh.a	%a2, hi:-268214192
	lea	%a2, [%a2] lo:-268214192
	ld.w	%d15, [%a2]0
	jnz.t	%d15, 5, .L7
	.loc 1 179 0
	ld.w	%d15, [%a2]0
	jz.t	%d15, 5, .L17
.L7:
	.loc 1 182 0
	ld.bu	%d15, [%a15] 24
	or	%d15, %d15, 2
	st.b	[%a15] 24, %d15
.L8:
	.loc 1 184 0
	movh.a	%a2, hi:-268214192
	lea	%a2, [%a2] lo:-268214192
	ld.w	%d15, [%a2]0
	jz.t	%d15, 23, .L9
	.loc 1 186 0
	ld.bu	%d15, [%a15] 24
	or	%d15, %d15, 4
	st.b	[%a15] 24, %d15
.L9:
	.loc 1 188 0
	movh.a	%a2, hi:-268214192
	lea	%a2, [%a2] lo:-268214192
	ld.w	%d15, [%a2]0
	jz.t	%d15, 24, .L10
	.loc 1 190 0
	ld.bu	%d15, [%a15] 24
	or	%d15, %d15, 8
	st.b	[%a15] 24, %d15
.L10:
	.loc 1 192 0
	movh.a	%a2, hi:-268214192
	lea	%a2, [%a2] lo:-268214192
	ld.w	%d15, [%a2]0
	jz.t	%d15, 3, .L11
	.loc 1 194 0
	ld.bu	%d15, [%a15] 24
	or	%d15, %d15, 10
	st.b	[%a15] 24, %d15
.L11:
	.loc 1 196 0
	movh.a	%a2, hi:-268214192
	lea	%a2, [%a2] lo:-268214192
	ld.w	%d15, [%a2]0
	jz.t	%d15, 25, .L12
	.loc 1 198 0
	ld.bu	%d15, [%a15] 24
	or	%d15, %d15, 20
	st.b	[%a15] 24, %d15
.L12:
	.loc 1 200 0
	movh.a	%a2, hi:-268214192
	lea	%a2, [%a2] lo:-268214192
	ld.w	%d15, [%a2]0
	jz.t	%d15, 28, .L13
	.loc 1 202 0
	ld.bu	%d15, [%a15] 24
	or	%d15, %d15, 40
	st.b	[%a15] 24, %d15
.L13:
.LBE14:
.LBE16:
	.loc 1 89 0
	movh	%d15, 4661
	ld.w	%d2, [%a3] lo:Pma_AbortData
	addi	%d15, %d15, -8703
	jeq	%d2, %d15, .L14
	.loc 1 91 0
	movh.a	%a2, hi:Pma_AbortData
	st.w	[%a2] lo:Pma_AbortData, %d15
.L14:
.LBB17:
.LBB18:
	.loc 1 219 0
	ld.w	%d15, [%a15] 32
	.loc 1 222 0
	movh.a	%a2, hi:-268214192
	.loc 1 219 0
	add	%d15, 1
	.loc 1 222 0
	lea	%a2, [%a2] lo:-268214192
	.loc 1 219 0
	st.w	[%a15] 32, %d15
	.loc 1 222 0
	ld.w	%d15, [%a2]0
	st.w	[%a15] 28, %d15
	.loc 1 227 0
	ld.w	%d15, [%a2]0
	jnz.t	%d15, 16, .L18
	.loc 1 233 0
	ld.w	%d15, [%a15] 40
	add	%d15, 1
	st.w	[%a15] 40, %d15
	ret
.L17:
.LBE18:
.LBE17:
.LBB20:
.LBB15:
	.loc 1 180 0
	ld.w	%d15, [%a2]0
	jz.t	%d15, 5, .L8
	j	.L7
.L18:
.LBE15:
.LBE20:
.LBB21:
.LBB19:
	.loc 1 229 0
	ld.w	%d15, [%a15] 36
	add	%d15, 1
	st.w	[%a15] 36, %d15
	ret
.LBE19:
.LBE21:
.LFE203:
	.size	Pma_vInit, .-Pma_vInit
	.align 2
	.global	Pma_vTask10ms
	.type	Pma_vTask10ms, @function
Pma_vTask10ms:
.LFB204:
	.loc 1 107 0
	.loc 1 109 0
	movh.a	%a2, hi:Pma_RunTime
	ld.a	%a15, [%a2] lo:Pma_RunTime
	ld.bu	%d15, [%a15] 3
	ne	%d2, %d15, 100
	jz	%d2, .L24
	.loc 1 135 0
	add	%d15, 1
	st.b	[%a15] 3, %d15
	ret
.L24:
	.loc 1 111 0
	mov	%d2, 0
	st.b	[%a15] 3, %d2
	.loc 1 114 0
	ld.a	%a15, [%a2] lo:Pma_RunTime
	ld.bu	%d15, [%a15] 2
	ne	%d3, %d15, 60
	jz	%d3, .L25
	.loc 1 130 0
	add	%d15, 1
	st.b	[%a15] 2, %d15
	ret
.L25:
	.loc 1 116 0
	st.b	[%a15] 2, %d2
	.loc 1 119 0
	ld.a	%a15, [%a2] lo:Pma_RunTime
	mov.u	%d2, 60000
	ld.hu	%d15, [%a15]0
	jeq	%d15, %d2, .L22
	.loc 1 121 0
	add	%d15, 1
	st.h	[%a15]0, %d15
	ret
.L22:
	.loc 1 125 0
	mov	%d15, 0
	st.h	[%a15]0, %d15
	ret
.LFE204:
	.size	Pma_vTask10ms, .-Pma_vTask10ms
	.align 2
	.global	Pma_vGetErrorInfo
	.type	Pma_vGetErrorInfo, @function
Pma_vGetErrorInfo:
.LFB208:
	.loc 1 247 0
.LVL0:
	.loc 1 248 0
	movh.a	%a15, hi:Pma_AbortData
	lea	%a15, [%a15] lo:Pma_AbortData
	.loc 1 249 0
	ld.bu	%d15, [%a15] 6
	.loc 1 248 0
	st.w	[%a15] 44, %d4
	.loc 1 249 0
	or	%d15, %d15, 2
	st.b	[%a15] 6, %d15
	.loc 1 250 0
	ld.h	%d15, [%a15] 12
	add	%d15, 1
	st.h	[%a15] 12, %d15
	.loc 1 251 0
	j	Pma_vKeepErrcnt
.LVL1:
.LFE208:
	.size	Pma_vGetErrorInfo, .-Pma_vGetErrorInfo
	.align 2
	.global	Pma_vGetPfmSts
	.type	Pma_vGetPfmSts, @function
Pma_vGetPfmSts:
.LFB209:
	.loc 1 265 0
.LVL2:
	.loc 1 266 0
	movh.a	%a15, hi:Pma_AbortData
	lea	%a15, [%a15] lo:Pma_AbortData
	ld.hu	%d15, [%a4]0
	st.h	[%a15] 140, %d15
	.loc 1 267 0
	ld.hu	%d15, [%a4] 2
	st.h	[%a15] 142, %d15
	.loc 1 268 0
	ld.hu	%d15, [%a4] 4
	st.h	[%a15] 144, %d15
	.loc 1 269 0
	ld.bu	%d15, [%a4] 6
	st.b	[%a15] 146, %d15
	.loc 1 270 0
	ld.w	%d15, [%a4] 8
	st.w	[%a15] 148, %d15
	.loc 1 271 0
	ld.bu	%d15, [%a4] 12
	st.b	[%a15] 152, %d15
	.loc 1 272 0
	ld.bu	%d15, [%a15] 6
	or	%d15, %d15, 4
	st.b	[%a15] 6, %d15
	.loc 1 273 0
	ld.h	%d15, [%a15] 14
	add	%d15, 1
	st.h	[%a15] 14, %d15
	.loc 1 321 0
	j	Pma_vKeepErrcnt
.LVL3:
.LFE209:
	.size	Pma_vGetPfmSts, .-Pma_vGetPfmSts
	.align 2
	.global	Pma_vGetE2eSts
	.type	Pma_vGetE2eSts, @function
Pma_vGetE2eSts:
.LFB210:
	.loc 1 336 0
.LVL4:
	.loc 1 338 0
	movh.a	%a5, hi:Pma_AbortData
	lea	%a5, [%a5] lo:Pma_AbortData
	mov.aa	%a2, %a4
	mov.aa	%a15, %a5
	mov.a	%a3, 6
.LVL5:
.L29:
	.loc 1 340 0 discriminator 2
	ld.bu	%d15, [%a2] 30
	st.b	[%a15] 78, %d15
	.loc 1 341 0 discriminator 2
	ld.bu	%d15, [%a2] 31
	st.b	[%a15] 79, %d15
	.loc 1 342 0 discriminator 2
	ld.bu	%d15, [%a2] 44
	st.b	[%a15] 92, %d15
	.loc 1 343 0 discriminator 2
	ld.bu	%d15, [%a2] 45
	st.b	[%a15] 93, %d15
	.loc 1 344 0 discriminator 2
	ld.hu	%d15, [%a2] 58
	st.h	[%a15] 106, %d15
	.loc 1 345 0 discriminator 2
	ld.hu	%d15, [%a2] 72
	st.h	[%a15] 120, %d15
	.loc 1 338 0 discriminator 2
	add.a	%a2, 2
	add.a	%a15, 2
	loop	%a3, .L29
	.loc 1 347 0
	ld.hu	%d15, [%a4] 86
	st.h	[%a5] 134, %d15
	.loc 1 348 0
	ld.hu	%d15, [%a4] 88
	st.h	[%a5] 136, %d15
	.loc 1 349 0
	ld.bu	%d15, [%a5] 6
	or	%d15, %d15, 8
	st.b	[%a5] 6, %d15
	.loc 1 350 0
	ld.h	%d15, [%a5] 16
	add	%d15, 1
	st.h	[%a5] 16, %d15
	.loc 1 351 0
	j	Pma_vKeepErrcnt
.LVL6:
.LFE210:
	.size	Pma_vGetE2eSts, .-Pma_vGetE2eSts
	.align 2
	.global	Pma_vGetQspiSts
	.type	Pma_vGetQspiSts, @function
Pma_vGetQspiSts:
.LFB211:
	.loc 1 364 0
.LVL7:
	.loc 1 365 0
	movh.a	%a15, hi:Pma_AbortData
	lea	%a15, [%a15] lo:Pma_AbortData
	ld.h	%d2, [%a4]0
	ld.w	%d15, [%a15] 156
	ins.t	%d15, %d15,0, %d2,0
	st.w	[%a15] 156, %d15
	.loc 1 366 0
	ld.h	%d2, [%a4]0
	ins.t	%d15, %d15,1, %d2,1
	st.w	[%a15] 156, %d15
	.loc 1 367 0
	ld.h	%d2, [%a4]0
	ins.t	%d15, %d15,2, %d2,2
	st.w	[%a15] 156, %d15
	.loc 1 368 0
	ld.h	%d2, [%a4]0
	ins.t	%d15, %d15,3, %d2,3
	st.w	[%a15] 156, %d15
	.loc 1 369 0
	ld.h	%d2, [%a4]0
	ins.t	%d15, %d15,4, %d2,4
	st.w	[%a15] 156, %d15
	.loc 1 370 0
	ld.h	%d2, [%a4]0
	ins.t	%d15, %d15,5, %d2,5
	st.w	[%a15] 156, %d15
	.loc 1 371 0
	ld.h	%d2, [%a4]0
	ins.t	%d15, %d15,6, %d2,6
	st.w	[%a15] 156, %d15
	.loc 1 372 0
	ld.h	%d2, [%a4]0
	ins.t	%d15, %d15,7, %d2,7
	st.w	[%a15] 156, %d15
	.loc 1 373 0
	ld.h	%d2, [%a4]0
	ins.t	%d15, %d15,8, %d2,8
	st.w	[%a15] 156, %d15
	.loc 1 374 0
	ld.h	%d2, [%a4]0
	ins.t	%d15, %d15,9, %d2,9
	st.w	[%a15] 156, %d15
	.loc 1 375 0
	ld.h	%d2, [%a4]0
	ins.t	%d15, %d15,10, %d2,10
	st.w	[%a15] 156, %d15
	.loc 1 376 0
	ld.h	%d2, [%a4]0
	ins.t	%d15, %d15,11, %d2,11
	st.w	[%a15] 156, %d15
	.loc 1 377 0
	ld.h	%d2, [%a4]0
	ins.t	%d15, %d15,12, %d2,12
	st.w	[%a15] 156, %d15
	.loc 1 378 0
	ld.h	%d2, [%a4]0
	ins.t	%d15, %d15,13, %d2,13
	st.w	[%a15] 156, %d15
	.loc 1 379 0
	ld.h	%d2, [%a4]0
	extr.u	%d2, %d2, 14, 2
	insert	%d15, %d15, %d2, 14, 2
	st.w	[%a15] 156, %d15
	.loc 1 380 0
	ld.hu	%d15, [%a4] 2
	st.h	[%a15] 158, %d15
	.loc 1 381 0
	ld.bu	%d15, [%a15] 6
	or	%d15, %d15, 16
	st.b	[%a15] 6, %d15
	.loc 1 382 0
	ld.h	%d15, [%a15] 18
	add	%d15, 1
	st.h	[%a15] 18, %d15
	.loc 1 383 0
	j	Pma_vKeepErrcnt
.LVL8:
.LFE211:
	.size	Pma_vGetQspiSts, .-Pma_vGetQspiSts
	.global	PSWReg_Rd2
	.section .data.PMA_QM_VAR_INIT,"aw",@progbits
	.align 2
	.type	PSWReg_Rd2, @object
	.size	PSWReg_Rd2, 4
PSWReg_Rd2:
	.zero	4
	.global	Pma_RunTime
	.align 2
	.type	Pma_RunTime, @object
	.size	Pma_RunTime, 4
Pma_RunTime:
	.zero	4
	.global	Pma_AbortData
	.align 2
	.type	Pma_AbortData, @object
	.size	Pma_AbortData, 160
Pma_AbortData:
	.zero	160
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
	.uaword	.LFB205
	.uaword	.LFE205-.LFB205
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
	.uaword	.LFB208
	.uaword	.LFE208-.LFB208
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB209
	.uaword	.LFE209-.LFB209
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB210
	.uaword	.LFE210-.LFB210
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB211
	.uaword	.LFE211-.LFB211
	.align 2
.LEFDE12:
.section .text,"ax",@progbits
.Letext0:
	.file 2 "../30_Bsw/Common/rtwtypes.h"
	.file 3 "../30_Bsw/Common/Platform_Types.h"
	.file 4 "../30_Bsw/iohw/Static/iohwsf.h"
	.file 5 "../30_Bsw/Mcal/Can/can_cfg.h"
	.file 6 "../30_Bsw/Common/TC21x/IfxCpu_regdef.h"
	.file 7 "../30_Bsw/Common/TC21x/IfxScu_regdef.h"
	.file 8 "../30_Bsw/Mcal/Can/can_driver.h"
	.file 9 "../30_Bsw/Mcal/Qspi/Qspi.h"
	.file 10 "../30_Bsw/Scheduler/Scheduler_api.h"
	.file 11 "../30_Bsw/Pma/Pma_cfg.h"
	.file 12 "../30_Bsw/Pma/Pma_api.h"
	.file 13 "../30_Bsw/Mpu/mpu_api.h"
	.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x1c97
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.6.3 build on 2013-05-17"
	.byte	0x1
	.string	"../30_Bsw/Pma/Pma.c"
	.string	"D:\\\\SVN\\\\IPB-11Kw\\\\LvDc-C01R0P0-Ceramicheater\\\\20_Make"
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_ranges0+0x38
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x3
	.string	"uint8_T"
	.byte	0x2
	.byte	0x51
	.uaword	0xa6
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
	.uaword	0xd4
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
	.uaword	0x101
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
	.byte	0x2
	.byte	0x5f
	.uaword	0xa6
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
	.uaword	0x97
	.uleb128 0x3
	.string	"u16"
	.byte	0x2
	.byte	0x7f
	.uaword	0xc4
	.uleb128 0x3
	.string	"u32"
	.byte	0x2
	.byte	0x81
	.uaword	0xf1
	.uleb128 0x3
	.string	"bit"
	.byte	0x2
	.byte	0x84
	.uaword	0x124
	.uleb128 0x3
	.string	"uint8"
	.byte	0x3
	.byte	0x5b
	.uaword	0xa6
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x3
	.string	"uint32"
	.byte	0x3
	.byte	0x5f
	.uaword	0x135
	.uleb128 0x4
	.byte	0x4
	.byte	0x4
	.byte	0x24
	.uaword	0xdca
	.uleb128 0x5
	.string	"IOHWSF_E_SSCHECK"
	.sleb128 0
	.uleb128 0x5
	.string	"IOHWSF_E_SMU_CONFIGURATION_CHECK"
	.sleb128 1
	.uleb128 0x5
	.string	"IOHWSF_E_ISR_UNHANDLED_ISR"
	.sleb128 2
	.uleb128 0x5
	.string	"IOHWSF_E_ISR_100U_SOURCE_ERR"
	.sleb128 3
	.uleb128 0x5
	.string	"IOHWSF_E_ISR_1M_SOURCE_ERR"
	.sleb128 4
	.uleb128 0x5
	.string	"IOHWSF_E_ISR_10M_SOURCE_ERR"
	.sleb128 5
	.uleb128 0x5
	.string	"IOHWSF_E_SAFETLIB_INIT"
	.sleb128 6
	.uleb128 0x5
	.string	"IOHWSF_E_SAFETLIB_PRE_INIT"
	.sleb128 7
	.uleb128 0x5
	.string	"IOHWSF_E_SAFETLIB_PRERUN_PREHOOK"
	.sleb128 8
	.uleb128 0x5
	.string	"IOHWSF_E_SAFETLIB_PRERUN_TEST_FAIL"
	.sleb128 9
	.uleb128 0x5
	.string	"IOHWSF_E_SAFETLIB_PRERUN_POSTHOOK"
	.sleb128 10
	.uleb128 0x5
	.string	"IOHWSF_E_SAFETLIB_RUN_TEST_FAIL"
	.sleb128 11
	.uleb128 0x5
	.string	"IOHWSF_E_SAFETLIB_SRC_REG_CHECK_FAIL"
	.sleb128 12
	.uleb128 0x5
	.string	"IOHWSF_E_MCAL_DIV_INCONSISTENCY"
	.sleb128 13
	.uleb128 0x5
	.string	"IOHWSF_E_MCAL_SPINLOCK_TIMEOUT"
	.sleb128 14
	.uleb128 0x5
	.string	"IOHWSF_E_TRAP_VIRTUAL_ADDRESS_FILL"
	.sleb128 15
	.uleb128 0x5
	.string	"IOHWSF_E_TRAP_VIRTUAL_ADDRESS_PROTECTION"
	.sleb128 16
	.uleb128 0x5
	.string	"IOHWSF_E_TRAP_PRIVILEGE_INSTRUCTION"
	.sleb128 17
	.uleb128 0x5
	.string	"IOHWSF_E_TRAP_MEMORY_PROTECTION_READ"
	.sleb128 18
	.uleb128 0x5
	.string	"IOHWSF_E_TRAP_MEMORY_PROTECTION_WRITE"
	.sleb128 19
	.uleb128 0x5
	.string	"IOHWSF_E_TRAP_MEMORY_PROTECTION_EXECUTION"
	.sleb128 20
	.uleb128 0x5
	.string	"IOHWSF_E_TRAP_PROTECTION_PERIPHERAL_ACCESS"
	.sleb128 21
	.uleb128 0x5
	.string	"IOHWSF_E_TRAP_MEMORY_PROTECTION_NULL_ADDRESS"
	.sleb128 22
	.uleb128 0x5
	.string	"IOHWSF_E_TRAP_GLOBAL_REGISTER_WRITE_PROTECTION"
	.sleb128 23
	.uleb128 0x5
	.string	"IOHWSF_E_TRAP_ILLEGAL_OPCODE"
	.sleb128 24
	.uleb128 0x5
	.string	"IOHWSF_E_TRAP_UNIMPLEMENTED_OPCODE"
	.sleb128 25
	.uleb128 0x5
	.string	"IOHWSF_E_TRAP_INVALID_OPERAND_SPECIFICATION"
	.sleb128 26
	.uleb128 0x5
	.string	"IOHWSF_E_TRAP_DATA_ADDRESS_ALIGNMENT"
	.sleb128 27
	.uleb128 0x5
	.string	"IOHWSF_E_TRAP_INVALID_LOCAL_MEMORY_ADDRESS"
	.sleb128 28
	.uleb128 0x5
	.string	"IOHWSF_E_TRAP_FREE_CONTEXT_LIST_DEPLETION"
	.sleb128 29
	.uleb128 0x5
	.string	"IOHWSF_E_TRAP_CALL_DEPTH_OVERFLOW"
	.sleb128 30
	.uleb128 0x5
	.string	"IOHWSF_E_TRAP_CALL_DEPTH_UNDERFLOW"
	.sleb128 31
	.uleb128 0x5
	.string	"IOHWSF_E_TRAP_FREE_CONTEXT_LIST_UNDERFLOW"
	.sleb128 32
	.uleb128 0x5
	.string	"IOHWSF_E_TRAP_CALL_STACK_UNDERFLOW"
	.sleb128 33
	.uleb128 0x5
	.string	"IOHWSF_E_TRAP_CONTEXT_TYPE"
	.sleb128 34
	.uleb128 0x5
	.string	"IOHWSF_E_TRAP_NESTING_ERROR"
	.sleb128 35
	.uleb128 0x5
	.string	"IOHWSF_E_TRAP_PROGRAM_FETCH_SYNCHRONOUS_ERROR"
	.sleb128 36
	.uleb128 0x5
	.string	"IOHWSF_E_TRAP_DATA_ACCESS_SYNCHRONOUS_ERROR"
	.sleb128 37
	.uleb128 0x5
	.string	"IOHWSF_E_TRAP_DATA_ACCESS_ASYNCHRONOUS_ERROR"
	.sleb128 38
	.uleb128 0x5
	.string	"IOHWSF_E_TRAP_ARITHEMETIC_OVERFLOW"
	.sleb128 39
	.uleb128 0x5
	.string	"IOHWSF_E_TRAP_STICKY_ARITHEMETIC_OVERFLOW"
	.sleb128 40
	.uleb128 0x5
	.string	"IOHWSF_E_TRAP_UNEXPECTED_SYSTEM_CALL"
	.sleb128 41
	.uleb128 0x5
	.string	"IOHWSF_E_TRAP_UNEXPECTED_NMI"
	.sleb128 42
	.uleb128 0x5
	.string	"IOHWSF_E_TRAP_UNDEFINED_TIN"
	.sleb128 43
	.uleb128 0x5
	.string	"IOHWSF_E_CORE0_NOT_IN_SAFE_STATE"
	.sleb128 44
	.uleb128 0x5
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_TRAP_TST"
	.sleb128 45
	.uleb128 0x5
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_CLKM_TST"
	.sleb128 46
	.uleb128 0x5
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_SRAM_ECC_TST"
	.sleb128 47
	.uleb128 0x5
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_PMU_ECC_EDC_TST"
	.sleb128 48
	.uleb128 0x5
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_SRI_TST"
	.sleb128 49
	.uleb128 0x5
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_SPB_TST_TIMEOUT"
	.sleb128 50
	.uleb128 0x5
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_SFF_TST"
	.sleb128 51
	.uleb128 0x5
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_SPB_TST_RAP"
	.sleb128 52
	.uleb128 0x5
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_CPU_MPU_TST"
	.sleb128 53
	.uleb128 0x5
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_CPUBUSMPULFM_TST"
	.sleb128 54
	.uleb128 0x5
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_REG_ACC_PROT_TST"
	.sleb128 55
	.uleb128 0x5
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_CPU_WDG_TST"
	.sleb128 56
	.uleb128 0x5
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_SAFETY_WDG_TST"
	.sleb128 57
	.uleb128 0x5
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_SMU_TST_NMI"
	.sleb128 58
	.uleb128 0x5
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_SMU_TST_IRQ"
	.sleb128 59
	.uleb128 0x5
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_SMU_TST_RT"
	.sleb128 60
	.uleb128 0x5
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_VLM_TST"
	.sleb128 61
	.uleb128 0x5
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_IR_TST"
	.sleb128 62
	.uleb128 0x5
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_LOCK_STEP_TST"
	.sleb128 63
	.uleb128 0x5
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_SFR_CMP_TST"
	.sleb128 64
	.uleb128 0x5
	.string	"IOHWSF_E_SAFETLIB_SIGNATURE_MISSMATCH_SRC_REG_CHECK_TST"
	.sleb128 65
	.uleb128 0x5
	.string	"IOHWSF_E_FLASH_TEST_PATTERN_NOT_FLSHED"
	.sleb128 66
	.uleb128 0x5
	.string	"IOHWSF_E_SETUP_FSP_PIN"
	.sleb128 67
	.uleb128 0x5
	.string	"IOHWSF_E_SMU_LOCK_CFG_TST"
	.sleb128 68
	.uleb128 0x5
	.string	"IOHWSF_E_SAFETY_ISR_RESET"
	.sleb128 69
	.uleb128 0x5
	.string	"IOHWSF_E_TLF_ERR_DETECTION_TIMEOUT"
	.sleb128 70
	.uleb128 0x5
	.string	"IOHWSF_E_TLF_SYS_FLAGS_NOT_CLEARED"
	.sleb128 71
	.uleb128 0x5
	.string	"IOHWSF_E_TLF_RESTORE_FAILED"
	.sleb128 72
	.uleb128 0x5
	.string	"IOHWSF_E_RELEASE_FSP_FAILED"
	.sleb128 73
	.uleb128 0x5
	.string	"IOHWSF_E_UDS_ECU_RESET_REQ"
	.sleb128 74
	.uleb128 0x5
	.string	"IOHWSF_E_UDS_SRAM_ECCPREAOU_FAILED"
	.sleb128 75
	.byte	0
	.uleb128 0x3
	.string	"IOHWSF_E_ErrorType"
	.byte	0x4
	.byte	0x71
	.uaword	0x1a4
	.uleb128 0x6
	.uaword	0x101
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.string	"long long int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.string	"long long unsigned int"
	.uleb128 0x7
	.byte	0x4
	.byte	0x5
	.uahalf	0x469
	.uaword	0xefc
	.uleb128 0x5
	.string	"CAN_RX_COM_WAKEUPSLEEPMANAGEMENT_IDX"
	.sleb128 0
	.uleb128 0x5
	.string	"CAN_RX_HVDC_SAFETYMEASURE_IDX"
	.sleb128 1
	.uleb128 0x5
	.string	"CAN_RX_HTB_CMD_IDX"
	.sleb128 2
	.uleb128 0x5
	.string	"CAN_RX_PARAMETER_COM_DCDC_IDX"
	.sleb128 3
	.uleb128 0x5
	.string	"CAN_RX_DCDC_HSFB_DIAG_REQ_IDX"
	.sleb128 4
	.uleb128 0x5
	.string	"CAN_RX_DCDC_DEV_CMD_IDX"
	.sleb128 5
	.uleb128 0x5
	.string	"CAN_RX_DCDC_CMD_IDX"
	.sleb128 6
	.uleb128 0x5
	.string	"CAN_RX_MSG_SIZE"
	.sleb128 7
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.byte	0x5
	.uahalf	0x474
	.uaword	0x10d1
	.uleb128 0x5
	.string	"CAN_TX_LVDC_PMA_ERRCODE_IDX"
	.sleb128 0
	.uleb128 0x5
	.string	"CAN_TX_DCDC_HTB_MEASURE_IDX"
	.sleb128 1
	.uleb128 0x5
	.string	"CAN_TX_LVDC_WAKEUPSLEEPMANAGEMENT_IDX"
	.sleb128 2
	.uleb128 0x5
	.string	"CAN_TX_LVDC_SAFETYMEASURE_IDX"
	.sleb128 3
	.uleb128 0x5
	.string	"CAN_TX_DCDC_MEASURE4_IDX"
	.sleb128 4
	.uleb128 0x5
	.string	"CAN_TX_DCDC_STATUS_ERRCODE_IDX"
	.sleb128 5
	.uleb128 0x5
	.string	"CAN_TX_PARAMETER_DCDC_COM_IDX"
	.sleb128 6
	.uleb128 0x5
	.string	"CAN_TX_DCDC_HSFB_DIAG_RESP_IDX"
	.sleb128 7
	.uleb128 0x5
	.string	"CAN_TX_DCDC_MEASURE2_IDX"
	.sleb128 8
	.uleb128 0x5
	.string	"CAN_TX_LVDC_PMA_ERRSRC_IDX"
	.sleb128 9
	.uleb128 0x5
	.string	"CAN_TX_DCDC_SCOPE1_IDX"
	.sleb128 10
	.uleb128 0x5
	.string	"CAN_TX_DCDC_SCOPE0_IDX"
	.sleb128 11
	.uleb128 0x5
	.string	"CAN_TX_DCDC_STATUS_IDX"
	.sleb128 12
	.uleb128 0x5
	.string	"CAN_TX_DCDC_MEASURE3_IDX"
	.sleb128 13
	.uleb128 0x5
	.string	"CAN_TX_DCDC_MEASURE_IDX"
	.sleb128 14
	.uleb128 0x5
	.string	"CAN_TX_MSG_SIZE"
	.sleb128 15
	.byte	0
	.uleb128 0x8
	.string	"_Ifx_CPU_PSW_Bits"
	.byte	0x4
	.byte	0x6
	.uahalf	0x204
	.uaword	0x11d4
	.uleb128 0x9
	.string	"CDC"
	.byte	0x6
	.uahalf	0x206
	.uaword	0xde4
	.byte	0x4
	.byte	0x7
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"CDE"
	.byte	0x6
	.uahalf	0x207
	.uaword	0xde4
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"GW"
	.byte	0x6
	.uahalf	0x208
	.uaword	0xde4
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"IS"
	.byte	0x6
	.uahalf	0x209
	.uaword	0xde4
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"IO"
	.byte	0x6
	.uahalf	0x20a
	.uaword	0xde4
	.byte	0x4
	.byte	0x2
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PRS"
	.byte	0x6
	.uahalf	0x20b
	.uaword	0xde4
	.byte	0x4
	.byte	0x2
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"S"
	.byte	0x6
	.uahalf	0x20c
	.uaword	0xde4
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"reserved_15"
	.byte	0x6
	.uahalf	0x20d
	.uaword	0xde4
	.byte	0x4
	.byte	0xc
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"SAV"
	.byte	0x6
	.uahalf	0x20e
	.uaword	0xde4
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"AV"
	.byte	0x6
	.uahalf	0x20f
	.uaword	0xde4
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"SV"
	.byte	0x6
	.uahalf	0x210
	.uaword	0xde4
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"V"
	.byte	0x6
	.uahalf	0x211
	.uaword	0xde4
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"C"
	.byte	0x6
	.uahalf	0x212
	.uaword	0xde4
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_CPU_PSW_Bits"
	.byte	0x6
	.uahalf	0x213
	.uaword	0x10d1
	.uleb128 0xb
	.byte	0x4
	.byte	0x6
	.uahalf	0x467
	.uaword	0x1215
	.uleb128 0xc
	.string	"U"
	.byte	0x6
	.uahalf	0x469
	.uaword	0x101
	.uleb128 0xc
	.string	"I"
	.byte	0x6
	.uahalf	0x46a
	.uaword	0xea
	.uleb128 0xc
	.string	"B"
	.byte	0x6
	.uahalf	0x46b
	.uaword	0x11d4
	.byte	0
	.uleb128 0xa
	.string	"Ifx_CPU_PSW"
	.byte	0x6
	.uahalf	0x46c
	.uaword	0x11ed
	.uleb128 0x8
	.string	"_Ifx_SCU_RSTSTAT_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x398
	.uaword	0x13fd
	.uleb128 0x9
	.string	"ESR0"
	.byte	0x7
	.uahalf	0x39a
	.uaword	0x101
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"ESR1"
	.byte	0x7
	.uahalf	0x39b
	.uaword	0x101
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"reserved_2"
	.byte	0x7
	.uahalf	0x39c
	.uaword	0x101
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"SMU"
	.byte	0x7
	.uahalf	0x39d
	.uaword	0x101
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"SW"
	.byte	0x7
	.uahalf	0x39e
	.uaword	0x101
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"STM0"
	.byte	0x7
	.uahalf	0x39f
	.uaword	0x101
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"STM1"
	.byte	0x7
	.uahalf	0x3a0
	.uaword	0x101
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"STM2"
	.byte	0x7
	.uahalf	0x3a1
	.uaword	0x101
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"reserved_8"
	.byte	0x7
	.uahalf	0x3a2
	.uaword	0x101
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PORST"
	.byte	0x7
	.uahalf	0x3a3
	.uaword	0x101
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"reserved_17"
	.byte	0x7
	.uahalf	0x3a4
	.uaword	0x101
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"CB0"
	.byte	0x7
	.uahalf	0x3a5
	.uaword	0x101
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"CB1"
	.byte	0x7
	.uahalf	0x3a6
	.uaword	0x101
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"CB3"
	.byte	0x7
	.uahalf	0x3a7
	.uaword	0x101
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"reserved_21"
	.byte	0x7
	.uahalf	0x3a8
	.uaword	0x101
	.byte	0x4
	.byte	0x2
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"EVR13"
	.byte	0x7
	.uahalf	0x3a9
	.uaword	0x101
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"EVR33"
	.byte	0x7
	.uahalf	0x3aa
	.uaword	0x101
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"SWD"
	.byte	0x7
	.uahalf	0x3ab
	.uaword	0x101
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"reserved_26"
	.byte	0x7
	.uahalf	0x3ac
	.uaword	0x101
	.byte	0x4
	.byte	0x2
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"STBYR"
	.byte	0x7
	.uahalf	0x3ad
	.uaword	0x101
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"reserved_29"
	.byte	0x7
	.uahalf	0x3ae
	.uaword	0x101
	.byte	0x4
	.byte	0x3
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_SCU_RSTSTAT_Bits"
	.byte	0x7
	.uahalf	0x3af
	.uaword	0x1229
	.uleb128 0xb
	.byte	0x4
	.byte	0x7
	.uahalf	0x673
	.uaword	0x1442
	.uleb128 0xc
	.string	"U"
	.byte	0x7
	.uahalf	0x675
	.uaword	0x101
	.uleb128 0xc
	.string	"I"
	.byte	0x7
	.uahalf	0x676
	.uaword	0xea
	.uleb128 0xc
	.string	"B"
	.byte	0x7
	.uahalf	0x677
	.uaword	0x13fd
	.byte	0
	.uleb128 0xa
	.string	"Ifx_SCU_RSTSTAT"
	.byte	0x7
	.uahalf	0x678
	.uaword	0x141a
	.uleb128 0xd
	.uaword	.LASF0
	.byte	0x2
	.byte	0x8
	.byte	0x29
	.uaword	0x1482
	.uleb128 0xe
	.string	"BZ"
	.byte	0x8
	.byte	0x2a
	.uaword	0x17d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"CRC"
	.byte	0x8
	.byte	0x2b
	.uaword	0x17d
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0
	.uleb128 0xf
	.uaword	.LASF0
	.byte	0x8
	.byte	0x2c
	.uaword	0x145a
	.uleb128 0xd
	.uaword	.LASF1
	.byte	0x5a
	.byte	0x8
	.byte	0x2e
	.uaword	0x1519
	.uleb128 0xe
	.string	"TxData"
	.byte	0x8
	.byte	0x2f
	.uaword	0x1519
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"RxData"
	.byte	0x8
	.byte	0x30
	.uaword	0x1529
	.byte	0x2
	.byte	0x23
	.uleb128 0x1e
	.uleb128 0xe
	.string	"RxErr"
	.byte	0x8
	.byte	0x31
	.uaword	0x1529
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xe
	.string	"RxErrCnt"
	.byte	0x8
	.byte	0x32
	.uaword	0x1539
	.byte	0x2
	.byte	0x23
	.uleb128 0x3a
	.uleb128 0xe
	.string	"RxErrSign"
	.byte	0x8
	.byte	0x33
	.uaword	0x1539
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xe
	.string	"RxErrOut"
	.byte	0x8
	.byte	0x34
	.uaword	0x15c
	.byte	0x2
	.byte	0x23
	.uleb128 0x56
	.uleb128 0xe
	.string	"RxErrSum"
	.byte	0x8
	.byte	0x35
	.uaword	0x15c
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.byte	0
	.uleb128 0x10
	.uaword	0x1482
	.uaword	0x1529
	.uleb128 0x11
	.uaword	0x135
	.byte	0xe
	.byte	0
	.uleb128 0x10
	.uaword	0x1482
	.uaword	0x1539
	.uleb128 0x11
	.uaword	0x135
	.byte	0x6
	.byte	0
	.uleb128 0x10
	.uaword	0x15c
	.uaword	0x1549
	.uleb128 0x11
	.uaword	0x135
	.byte	0x6
	.byte	0
	.uleb128 0xf
	.uaword	.LASF1
	.byte	0x8
	.byte	0x36
	.uaword	0x148d
	.uleb128 0xd
	.uaword	.LASF2
	.byte	0x4
	.byte	0x9
	.byte	0x8e
	.uaword	0x16c9
	.uleb128 0x12
	.string	"Unlock"
	.byte	0x9
	.byte	0x90
	.uaword	0x172
	.byte	0x1
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.string	"LockUp"
	.byte	0x9
	.byte	0x91
	.uaword	0x172
	.byte	0x1
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.string	"Config"
	.byte	0x9
	.byte	0x92
	.uaword	0x172
	.byte	0x1
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.string	"ReadStatus"
	.byte	0x9
	.byte	0x93
	.uaword	0x172
	.byte	0x1
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.string	"MPSConfig"
	.byte	0x9
	.byte	0x94
	.uaword	0x172
	.byte	0x1
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.string	"GotoNormal"
	.byte	0x9
	.byte	0x95
	.uaword	0x172
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.string	"ParityCheck"
	.byte	0x9
	.byte	0x96
	.uaword	0x172
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.string	"ABISTFin"
	.byte	0x9
	.byte	0x98
	.uaword	0x172
	.byte	0x1
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.string	"ABISTSS"
	.byte	0x9
	.byte	0x99
	.uaword	0x172
	.byte	0x1
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x12
	.string	"ABISTInt"
	.byte	0x9
	.byte	0x9a
	.uaword	0x172
	.byte	0x1
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x12
	.string	"WWDEnCnt"
	.byte	0x9
	.byte	0x9b
	.uaword	0x172
	.byte	0x1
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x12
	.string	"NormalState"
	.byte	0x9
	.byte	0x9d
	.uaword	0x172
	.byte	0x1
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x12
	.string	"QCOStatus"
	.byte	0x9
	.byte	0x9e
	.uaword	0x172
	.byte	0x1
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x12
	.string	"QVRStatus"
	.byte	0x9
	.byte	0x9f
	.uaword	0x172
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x12
	.string	"Reserved1"
	.byte	0x9
	.byte	0xa1
	.uaword	0x15c
	.byte	0x2
	.byte	0x2
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.string	"Reserved2"
	.byte	0x9
	.byte	0xa2
	.uaword	0x15c
	.byte	0x2
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0xf
	.uaword	.LASF2
	.byte	0x9
	.byte	0xa3
	.uaword	0x1554
	.uleb128 0x13
	.byte	0x10
	.byte	0xa
	.byte	0x8c
	.uaword	0x175b
	.uleb128 0xe
	.string	"FailureCnt"
	.byte	0xa
	.byte	0x8d
	.uaword	0x15c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"Isr_15usCnt"
	.byte	0xa
	.byte	0x8e
	.uaword	0x15c
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xe
	.string	"Isr_100usCnt"
	.byte	0xa
	.byte	0x8f
	.uaword	0x15c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"Isr_1msCnt"
	.byte	0xa
	.byte	0x90
	.uaword	0x152
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xe
	.string	"TimerDiff_10ms"
	.byte	0xa
	.byte	0x91
	.uaword	0x167
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"Sts"
	.byte	0xa
	.byte	0x92
	.uaword	0x152
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x3
	.string	"PFM_S_CAPTURE"
	.byte	0xa
	.byte	0x93
	.uaword	0x16d4
	.uleb128 0x13
	.byte	0x74
	.byte	0xb
	.byte	0x3e
	.uaword	0x17bf
	.uleb128 0xe
	.string	"IohwErr"
	.byte	0xb
	.byte	0x3f
	.uaword	0xdca
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"E2eSts"
	.byte	0xb
	.byte	0x40
	.uaword	0x1549
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"PfmSts"
	.byte	0xb
	.byte	0x41
	.uaword	0x175b
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xe
	.string	"QspiErr"
	.byte	0xb
	.byte	0x42
	.uaword	0x16c9
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.byte	0
	.uleb128 0x3
	.string	"PMA_S_MCSAFE_ERR"
	.byte	0xb
	.byte	0x43
	.uaword	0x1770
	.uleb128 0x13
	.byte	0xa
	.byte	0xb
	.byte	0x45
	.uaword	0x1850
	.uleb128 0xe
	.string	"Shutdown_ErrCnt"
	.byte	0xb
	.byte	0x46
	.uaword	0x15c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"Iohw_ErrCnt"
	.byte	0xb
	.byte	0x47
	.uaword	0x15c
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xe
	.string	"Pfm_ErrCnt"
	.byte	0xb
	.byte	0x48
	.uaword	0x15c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"E2e_ErrCnt"
	.byte	0xb
	.byte	0x49
	.uaword	0x15c
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xe
	.string	"Qspi_ErrCnt"
	.byte	0xb
	.byte	0x4a
	.uaword	0x15c
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x3
	.string	"PMA_S_MODULE_INFO"
	.byte	0xb
	.byte	0x4b
	.uaword	0x17d7
	.uleb128 0x13
	.byte	0x4
	.byte	0xc
	.byte	0x2c
	.uaword	0x189e
	.uleb128 0xe
	.string	"Mins"
	.byte	0xc
	.byte	0x2d
	.uaword	0x15c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"Secs"
	.byte	0xc
	.byte	0x2e
	.uaword	0x152
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xe
	.string	"Cnt"
	.byte	0xc
	.byte	0x2f
	.uaword	0x152
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0
	.uleb128 0x3
	.string	"PMA_S_RUN"
	.byte	0xc
	.byte	0x30
	.uaword	0x1869
	.uleb128 0x13
	.byte	0x14
	.byte	0xc
	.byte	0x32
	.uaword	0x1944
	.uleb128 0xe
	.string	"ShutdownSts"
	.byte	0xc
	.byte	0x33
	.uaword	0x152
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"ResetCtr"
	.byte	0xc
	.byte	0x34
	.uaword	0x152
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xe
	.string	"ResetSts_reg"
	.byte	0xc
	.byte	0x35
	.uaword	0x167
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"PowerCycle"
	.byte	0xc
	.byte	0x36
	.uaword	0x167
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"PORSTPowerCycle"
	.byte	0xc
	.byte	0x37
	.uaword	0x167
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"NonPORSTPowerCycle"
	.byte	0xc
	.byte	0x38
	.uaword	0x167
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x3
	.string	"PMA_S_RESETINFO"
	.byte	0xc
	.byte	0x39
	.uaword	0x18af
	.uleb128 0x13
	.byte	0xa0
	.byte	0xc
	.byte	0x3c
	.uaword	0x1a17
	.uleb128 0xe
	.string	"InitPattern"
	.byte	0xc
	.byte	0x3d
	.uaword	0x167
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"ErrCnt"
	.byte	0xc
	.byte	0x3e
	.uaword	0x15c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"ErrSrc"
	.byte	0xc
	.byte	0x3f
	.uaword	0x152
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xe
	.string	"CpuLoadMin"
	.byte	0xc
	.byte	0x40
	.uaword	0x152
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0xe
	.string	"CpuLoadMax"
	.byte	0xc
	.byte	0x41
	.uaword	0x152
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"ModuleInfo"
	.byte	0xc
	.byte	0x42
	.uaword	0x1850
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xe
	.string	"Timestamp"
	.byte	0xc
	.byte	0x43
	.uaword	0x189e
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"ResetInfo"
	.byte	0xc
	.byte	0x44
	.uaword	0x1944
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.string	"McSafeErr"
	.byte	0xc
	.byte	0x45
	.uaword	0x17bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.byte	0
	.uleb128 0x3
	.string	"PMA_S_ABORTTYPE"
	.byte	0xc
	.byte	0x46
	.uaword	0x195b
	.uleb128 0x14
	.string	"Pma_vKeepErrcnt"
	.byte	0x1
	.byte	0x94
	.byte	0x1
	.byte	0x1
	.uleb128 0x14
	.string	"Pma_vReadResetSts"
	.byte	0x1
	.byte	0xd8
	.byte	0x1
	.byte	0x1
	.uleb128 0x15
	.uaword	0x1a2e
	.uaword	.LFB205
	.uaword	.LFE205
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x1a7e
	.uleb128 0x16
	.uaword	0x1a2e
	.uaword	.LBB6
	.uaword	.LBE6
	.byte	0x1
	.byte	0x94
	.byte	0
	.uleb128 0x14
	.string	"PMA_vCheckImproperShutdown"
	.byte	0x1
	.byte	0xac
	.byte	0x1
	.byte	0x1
	.uleb128 0x17
	.byte	0x1
	.string	"Pma_vInit"
	.byte	0x1
	.byte	0x48
	.byte	0x1
	.uaword	.LFB203
	.uaword	.LFE203
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x1adb
	.uleb128 0x18
	.uaword	0x1a7e
	.uaword	.LBB12
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x58
	.uleb128 0x18
	.uaword	0x1a43
	.uaword	.LBB17
	.uaword	.Ldebug_ranges0+0x20
	.byte	0x1
	.byte	0x5d
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.string	"Pma_vTask10ms"
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.uaword	.LFB204
	.uaword	.LFE204
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0x17
	.byte	0x1
	.string	"Pma_vGetErrorInfo"
	.byte	0x1
	.byte	0xf6
	.byte	0x1
	.uaword	.LFB208
	.uaword	.LFE208
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x1b31
	.uleb128 0x1a
	.string	"Error"
	.byte	0x1
	.byte	0xf6
	.uaword	0x167
	.uaword	.LLST0
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.string	"Pma_vGetPfmSts"
	.byte	0x1
	.uahalf	0x108
	.byte	0x1
	.uaword	.LFB209
	.uaword	.LFE209
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x1b6d
	.uleb128 0x1c
	.string	"Pfm_RdData"
	.byte	0x1
	.uahalf	0x108
	.uaword	0x1b6d
	.uaword	.LLST1
	.byte	0
	.uleb128 0x1d
	.byte	0x4
	.uaword	0x175b
	.uleb128 0x1b
	.byte	0x1
	.string	"Pma_vGetE2eSts"
	.byte	0x1
	.uahalf	0x14f
	.byte	0x1
	.uaword	.LFB210
	.uaword	.LFE210
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x1bbf
	.uleb128 0x1c
	.string	"E2e_RdData"
	.byte	0x1
	.uahalf	0x14f
	.uaword	0x1bbf
	.uaword	.LLST2
	.uleb128 0x1e
	.string	"idx"
	.byte	0x1
	.uahalf	0x151
	.uaword	0x152
	.uaword	.LLST3
	.byte	0
	.uleb128 0x1d
	.byte	0x4
	.uaword	0x1549
	.uleb128 0x1b
	.byte	0x1
	.string	"Pma_vGetQspiSts"
	.byte	0x1
	.uahalf	0x16b
	.byte	0x1
	.uaword	.LFB211
	.uaword	.LFE211
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x1c03
	.uleb128 0x1c
	.string	"Qspi_RdData"
	.byte	0x1
	.uahalf	0x16b
	.uaword	0x1c03
	.uaword	.LLST4
	.byte	0
	.uleb128 0x1d
	.byte	0x4
	.uaword	0x16c9
	.uleb128 0x1f
	.string	"PSWReg_Rd0"
	.byte	0xd
	.byte	0x45
	.uaword	0x1215
	.byte	0x1
	.byte	0x1
	.uleb128 0x1f
	.string	"PSWReg_Rd1"
	.byte	0xd
	.byte	0x46
	.uaword	0x1215
	.byte	0x1
	.byte	0x1
	.uleb128 0x20
	.string	"PSWReg_Rd2"
	.byte	0x1
	.byte	0x21
	.uaword	0x1215
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	PSWReg_Rd2
	.uleb128 0x1f
	.string	"PSWReg_Rd3"
	.byte	0xd
	.byte	0x48
	.uaword	0x1215
	.byte	0x1
	.byte	0x1
	.uleb128 0x20
	.string	"Pma_AbortData"
	.byte	0x1
	.byte	0x1f
	.uaword	0x1a17
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Pma_AbortData
	.uleb128 0x20
	.string	"Pma_RunTime"
	.byte	0x1
	.byte	0x20
	.uaword	0x1c94
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Pma_RunTime
	.uleb128 0x1d
	.byte	0x4
	.uaword	0x189e
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
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0xa
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x15
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uaword	.LVL2
	.uaword	.LVL3-1
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL4
	.uaword	.LVL6-1
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL7
	.uaword	.LVL8-1
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
	.section .debug_aranges,"",@progbits
	.uaword	0x4c
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB205
	.uaword	.LFE205-.LFB205
	.uaword	.LFB203
	.uaword	.LFE203-.LFB203
	.uaword	.LFB204
	.uaword	.LFE204-.LFB204
	.uaword	.LFB208
	.uaword	.LFE208-.LFB208
	.uaword	.LFB209
	.uaword	.LFE209-.LFB209
	.uaword	.LFB210
	.uaword	.LFE210-.LFB210
	.uaword	.LFB211
	.uaword	.LFE211-.LFB211
	.uaword	0
	.uaword	0
	.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB12
	.uaword	.LBE12
	.uaword	.LBB16
	.uaword	.LBE16
	.uaword	.LBB20
	.uaword	.LBE20
	.uaword	0
	.uaword	0
	.uaword	.LBB17
	.uaword	.LBE17
	.uaword	.LBB21
	.uaword	.LBE21
	.uaword	0
	.uaword	0
	.uaword	.LFB205
	.uaword	.LFE205
	.uaword	.LFB203
	.uaword	.LFE203
	.uaword	.LFB204
	.uaword	.LFE204
	.uaword	.LFB208
	.uaword	.LFE208
	.uaword	.LFB209
	.uaword	.LFE209
	.uaword	.LFB210
	.uaword	.LFE210
	.uaword	.LFB211
	.uaword	.LFE211
	.uaword	0
	.uaword	0
	.section .debug_line,"",@progbits
.Ldebug_line0:
	.section .debug_str,"",@progbits
.LASF1:
	.string	"CAN_S_E2E"
.LASF0:
	.string	"CAN_S_E2EDATA"
.LASF2:
	.string	"QSPI_S_ERROR_BIT"
	.ident	"GCC: (HighTec Release v4.6.3.0) 4.6.3 build on 2013-05-17"
