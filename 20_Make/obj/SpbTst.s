	.file	"SpbTst.c"
.section .text,"ax",@progbits
.Ltext0:
.section .rodata,"a",@progbits
	.align 2
.LC0:
	.word	2
	.word	8
	.word	32
	.align 2
.LC1:
	.word	1
	.word	4
	.word	16
	.section .text.STL_ASIL_CODE,"ax",@progbits
	.align 2
	.type	SpbTst_lDenyAccTst, @function
SpbTst_lDenyAccTst:
.LFB26:
	.file 1 "../30_Bsw/MicroTestLib/Static/SpbTst.c"
	.loc 1 1403 0
.LVL0:
	sub.a	%SP, 48
.LCFI0:
	.loc 1 1410 0
	mov.a	%a15, 0
	.loc 1 1413 0
	movh.a	%a2, hi:.LC0
	.loc 1 1410 0
	st.a	[%SP] 36, %a15
.LVL1:
	.loc 1 1413 0
	lea	%a2, [%a2] lo:.LC0
	lea	%a15, [%SP] 4
		# #chunks=1, chunksize=8, remains=4
	ld.d	%e2, [%a2+]8
	st.d	[%a15+]8, %e2
	ld.w	%d2, [%a2+]4
	st.w	[%a15+]4, %d2
	.loc 1 1421 0
	movh.a	%a2, hi:.LC1
	lea	%a2, [%a2] lo:.LC1
	lea	%a15, [%SP] 16
		# #chunks=1, chunksize=8, remains=4
	ld.d	%e2, [%a2+]8
	st.d	[%a15+]8, %e2
	ld.w	%d2, [%a2+]4
	st.w	[%a15+]4, %d2
	.loc 1 1403 0
	mov	%d8, %d4
	mov.aa	%a12, %a4
	mov	%d10, %d5
	mov	%d15, %d6
	.loc 1 1429 0
	call	Mcal_GetCoreId
.LVL2:
.LBB161:
	.loc 1 1435 0
#APP
	# 1435 "../30_Bsw/MicroTestLib/Static/SpbTst.c" 1
	mfcr %d3, LO:(0xFE04)
	# 0 "" 2
.LVL3:
#NO_APP
.LBE161:
.LBB162:
.LBB163:
	.file 2 "../30_Bsw/STL_common/intrinsics.h"
	.loc 2 190 0
#APP
	# 190 "../30_Bsw/STL_common/intrinsics.h" 1
	dsync
	# 0 "" 2
#NO_APP
.LBE163:
.LBE162:
	.loc 1 1432 0
	jeq	%d15, 1, .L38
.LVL4:
	.loc 1 1444 0
	insert	%d3, %d3, 15, 14, 1
.LVL5:
.LBB164:
	.loc 1 1445 0
#APP
	# 1445 "../30_Bsw/MicroTestLib/Static/SpbTst.c" 1
	mtcr LO:(0xFE04), %d3
	# 0 "" 2
#NO_APP
.LBE164:
.LBB165:
.LBB166:
	.loc 2 184 0
#APP
	# 184 "../30_Bsw/STL_common/intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE166:
.LBE165:
	.loc 1 1446 0
	lea	%a3, [%SP] 48
	addsc.a	%a15, %a3, %d2, 2
	ld.a	%a13, [%a15] -44
.LVL6:
.L3:
	.loc 1 1450 0
	mov	%d4, 22960
	call	Mcal_ResetSafetyENDINIT_Timed
.LVL7:
	.loc 1 1451 0
	sh	%d2, %d8, 1
	movh.a	%a14, hi:SpbTst_ConfigRoot
	add	%d11, %d2, %d8
	lea	%a14, [%a14] lo:SpbTst_ConfigRoot
	addsc.a	%a15, %a14, %d11, 2
	sh	%d9, %d10, 4
	ld.a	%a15, [%a15]0
	.loc 1 1555 0
	movh	%d8, 28
.LVL8:
	addi	%d8, %d8, 4098
	.loc 1 1451 0
	addsc.a	%a15, %a15, %d9, 0
	ld.a	%a2, [%a15] 4
	st.a	[%SP] 28, %a2
.LVL9:
	.loc 1 1452 0
	st.a	[%a2]0, %a13
	.loc 1 1453 0
	call	Mcal_SetSafetyENDINIT_Timed
	.loc 1 1456 0
	ld.a	%a15, [%a15] 4
	ld.a	%a15, [%a15]0
	jeq.a	%a15, %a13, .L39
.LVL10:
.L4:
	.loc 1 1558 0
	movh.a	%a15, hi:-268206016
	lea	%a15, [%a15] lo:-268206016
	ld.w	%d2, [%a15]0
	movh	%d15, 10559
	addi	%d15, %d15, 7423
	and	%d2, %d15
	insert	%d2, %d2, 15, 25, 1
	st.w	[%a15]0, %d2
	.loc 1 1560 0
	movh.a	%a15, hi:-268206008
	lea	%a15, [%a15] lo:-268206008
	ld.w	%d2, [%a15]0
	and	%d15, %d2
	insert	%d15, %d15, 15, 25, 1
	st.w	[%a15]0, %d15
.LVL11:
.LBB167:
.LBB168:
	.file 3 "../30_Bsw/STL_common/Mcal_Compiler.h"
	.loc 3 400 0
	ld.w	%d15, [%a12]0
#APP
	# 400 "../30_Bsw/STL_common/Mcal_Compiler.h" 1
	crc32 %d15, %d8, %d15
	# 0 "" 2
.LVL12:
#NO_APP
.LBE168:
.LBE167:
	.loc 1 1561 0
	st.w	[%a12]0, %d15
	.loc 1 1564 0
	mov	%d2, %d8
	.loc 1 1562 0
	ld.w	%d15, [%SP] 36
.LVL13:
	.loc 1 1564 0
	ret
.LVL14:
.L38:
	.loc 1 1436 0
	insert	%d3, %d3, 0, 14, 1
.LVL15:
.LBB169:
	.loc 1 1437 0
#APP
	# 1437 "../30_Bsw/MicroTestLib/Static/SpbTst.c" 1
	mtcr LO:(0xFE04), %d3
	# 0 "" 2
#NO_APP
.LBE169:
.LBB170:
.LBB171:
	.loc 2 184 0
#APP
	# 184 "../30_Bsw/STL_common/intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE171:
.LBE170:
	.loc 1 1438 0
	lea	%a2, [%SP] 48
	addsc.a	%a15, %a2, %d2, 2
	ld.a	%a13, [%a15] -32
.LVL16:
	j	.L3
.LVL17:
.L39:
.LBB172:
	.loc 1 1461 0
#APP
	# 1461 "../30_Bsw/MicroTestLib/Static/SpbTst.c" 1
	mfcr %d2, LO:(0xFE04)
	# 0 "" 2
.LVL18:
#NO_APP
.LBE172:
.LBB173:
.LBB174:
	.loc 2 190 0
#APP
	# 190 "../30_Bsw/STL_common/intrinsics.h" 1
	dsync
	# 0 "" 2
#NO_APP
.LBE174:
.LBE173:
	.loc 1 1458 0
	jeq	%d15, 1, .L5
.LVL19:
	.loc 1 1462 0
	insert	%d2, %d2, 0, 14, 1
.LVL20:
.LBB175:
	.loc 1 1463 0
#APP
	# 1463 "../30_Bsw/MicroTestLib/Static/SpbTst.c" 1
	mtcr LO:(0xFE04), %d2
	# 0 "" 2
#NO_APP
.LBE175:
.LBB176:
.LBB177:
	.loc 2 184 0
#APP
	# 184 "../30_Bsw/STL_common/intrinsics.h" 1
	isync
	# 0 "" 2
.LVL21:
#NO_APP
.L6:
.LBE177:
.LBE176:
	.loc 1 1474 0
	mov.a	%a15, 0
	movh.a	%a13, hi:SpbRegAccProtTst_DaeTrapCount
.LVL22:
	st.a	[%a13] lo:SpbRegAccProtTst_DaeTrapCount, %a15
	.loc 1 1477 0
	movh.a	%a15, hi:-268041988
	lea	%a15, [%a15] lo:-268041988
	ld.w	%d2, [%SP] 28
	mov.d	%d3, %a15
	jeq	%d2, %d3, .L7
	.loc 1 1479 0
	call	Mcal_ResetENDINIT
	.loc 1 1480 0
	mov.a	%a15, 3
	movh.a	%a2, hi:SpbRegAccProtTst_ExpectedTrap
	st.a	[%a2] lo:SpbRegAccProtTst_ExpectedTrap, %a15
	.loc 1 1481 0
	addsc.a	%a15, %a14, %d11, 2
	ld.a	%a15, [%a15]0
	addsc.a	%a15, %a15, %d9, 0
	ld.a	%a2, [%a15] 8
	movh.a	%a15, hi:-1
	lea	%a15, [%a15] lo:-1
	st.a	[%a2]0, %a15
	.loc 1 1482 0
	call	Mcal_SetENDINIT
.L8:
	.loc 1 1492 0
	jeq	%d15, 1, .L40
.LBB178:
	.loc 1 1502 0
#APP
	# 1502 "../30_Bsw/MicroTestLib/Static/SpbTst.c" 1
	mfcr %d15, LO:(0xFE04)
	# 0 "" 2
.LVL23:
#NO_APP
.LBE178:
.LBB179:
.LBB180:
	.loc 2 190 0
#APP
	# 190 "../30_Bsw/STL_common/intrinsics.h" 1
	dsync
	# 0 "" 2
.LVL24:
#NO_APP
.LBE180:
.LBE179:
	.loc 1 1503 0
	insert	%d15, %d15, 15, 14, 1
.LVL25:
.LBB181:
	.loc 1 1504 0
#APP
	# 1504 "../30_Bsw/MicroTestLib/Static/SpbTst.c" 1
	mtcr LO:(0xFE04), %d15
	# 0 "" 2
#NO_APP
.LBE181:
.LBB182:
.LBB183:
	.loc 2 184 0
#APP
	# 184 "../30_Bsw/STL_common/intrinsics.h" 1
	isync
	# 0 "" 2
.LVL26:
#NO_APP
.L10:
.LBE183:
.LBE182:
	.loc 1 1507 0
	mov	%d4, 22960
	call	Mcal_ResetSafetyENDINIT_Timed
	.loc 1 1508 0
	addsc.a	%a14, %a14, %d11, 2
.LBB184:
.LBB185:
	.loc 1 1617 0
	movh	%d8, 28
.LBE185:
.LBE184:
	.loc 1 1508 0
	ld.w	%d15, [%a14]0
.LVL27:
.LBB192:
.LBB186:
	.loc 1 1617 0
	addi	%d8, %d8, 266
.LBE186:
.LBE192:
	.loc 1 1508 0
	mov.a	%a2, %d15
	mov	%d15, -1
	addsc.a	%a15, %a2, %d9, 0
	ld.a	%a15, [%a15] 4
	st.w	[%a15]0, %d15
	.loc 1 1509 0
	call	Mcal_SetSafetyENDINIT_Timed
.LBB193:
.LBB187:
	.loc 1 1623 0
	ld.a	%a15, [%a14] 8
	.loc 1 1615 0
	mov	%d15, 0
	.loc 1 1623 0
	addsc.a	%a15, %a15, %d10, 2
	.loc 1 1615 0
	st.w	[%SP] 40, %d15
.LVL28:
	.loc 1 1623 0
	ld.w	%d15, [%a15]0
	st.w	[%SP] 44, %d15
.LVL29:
	.loc 1 1616 0
	lea	%a15, 2000
	j	.L34
.LVL30:
.L42:
	.loc 1 1626 0
	jz.a	%a15, .L13
	.loc 1 1629 0
	mov	%d4, 3
	lea	%a4, [%SP] 40
	.loc 1 1628 0
	add.a	%a15, -1
.LVL31:
	.loc 1 1629 0
	call	Smu_GetAlarmStatus
	jnz	%d2, .L41
.LVL32:
.L34:
	.loc 1 1626 0
	ld.w	%d15, [%SP] 40
	ld.w	%d9, [%SP] 44
	and	%d9, %d15
	jz	%d9, .L42
.L13:
	.loc 1 1638 0
	ld.w	%d2, [%SP] 44
	and	%d2, %d15
	jz	%d2, .L15
	.loc 1 1618 0
	mov	%d8, 0
	.loc 1 1640 0
	jnz.t	%d15, 22, .L43
.LVL33:
.L16:
	.loc 1 1619 0
	mov	%d9, 0
	.loc 1 1645 0
	jltz	%d15, .L44
.LVL34:
.L17:
	.loc 1 1620 0
	mov	%d3, 0
	.loc 1 1650 0
	jnz.t	%d15, 30, .L45
.LVL35:
.L18:
	.loc 1 1656 0
	or	%d15, %d9, %d8
	or	%d15, %d3
	.loc 1 1658 0
	movh	%d8, 28
.LVL36:
	.loc 1 1656 0
	and	%d15, 255
	.loc 1 1658 0
	addi	%d8, %d8, 527
	.loc 1 1656 0
	jnz	%d15, .L19
.LVL37:
.LBE187:
.LBE193:
	.loc 1 1513 0
	movh.a	%a15, hi:-268238816
.LVL38:
	lea	%a15, [%a15] lo:-268238816
	ld.a	%a15, [%a15]0
	st.a	[%SP] 32, %a15
.LVL39:
	.loc 1 1515 0
	ld.a	%a15, [%SP] 32
	.loc 1 1520 0
	ld.w	%d2, [%a13] lo:SpbRegAccProtTst_DaeTrapCount
	jeq	%d2, 1, .L46
	.loc 1 1538 0
	ld.a	%a15, [%SP] 28
	movh	%d15, 61443
	.loc 1 1540 0
	movh	%d8, 28
	.loc 1 1538 0
	addi	%d15, %d15, 28916
	mov.d	%d2, %a15
	.loc 1 1540 0
	addi	%d8, %d8, 511
	.loc 1 1538 0
	jeq	%d2, %d15, .L4
	.loc 1 1542 0
	ld.a	%a15, [%SP] 28
	movh	%d15, 61443
	addi	%d15, %d15, 28924
	.loc 1 1544 0
	mov.d	%d3, %a15
.LVL40:
	ne	%d2, %d3, %d15
	movh	%d15, 28
	addi	%d15, %d15, 263
	sel	%d8, %d2, %d15, %d8
	j	.L4
.LVL41:
.L15:
.LBB194:
.LBB188:
	.loc 1 1668 0
	movh	%d15, 28
	addi	%d15, %d15, 266
	jne	%d8, %d15, .L19
	.loc 1 1670 0
	movh	%d8, 28
	addi	%d8, %d8, 4097
.LVL42:
.L19:
.LBE188:
.LBE194:
	.loc 1 1513 0
	movh.a	%a15, hi:-268238816
.LVL43:
	lea	%a15, [%a15] lo:-268238816
	ld.w	%d15, [%a15]0
	st.w	[%SP] 32, %d15
.LVL44:
	.loc 1 1515 0
	ld.w	%d15, [%SP] 32
	j	.L4
.LVL45:
.L41:
.LBB195:
.LBB189:
	.loc 1 1633 0
	movh	%d8, 28
	.loc 1 1631 0
	st.w	[%SP] 40, %d9
.LVL46:
	.loc 1 1632 0
	mov.a	%a15, 0
	.loc 1 1633 0
	addi	%d8, %d8, 526
	j	.L34
.LVL47:
.L7:
.LBE189:
.LBE195:
	.loc 1 1486 0
	mov	%d4, 22960
	call	Mcal_ResetSafetyENDINIT_Timed
	.loc 1 1487 0
	mov.a	%a15, 3
	movh.a	%a2, hi:SpbRegAccProtTst_ExpectedTrap
	st.a	[%a2] lo:SpbRegAccProtTst_ExpectedTrap, %a15
	.loc 1 1488 0
	addsc.a	%a15, %a14, %d11, 2
	ld.a	%a15, [%a15]0
	addsc.a	%a15, %a15, %d9, 0
	ld.a	%a2, [%a15] 8
	movh.a	%a15, hi:-1
	lea	%a15, [%a15] lo:-1
	st.a	[%a2]0, %a15
	.loc 1 1489 0
	call	Mcal_SetSafetyENDINIT_Timed
	j	.L8
.L40:
.LBB196:
	.loc 1 1495 0
#APP
	# 1495 "../30_Bsw/MicroTestLib/Static/SpbTst.c" 1
	mfcr %d15, LO:(0xFE04)
	# 0 "" 2
.LVL48:
#NO_APP
.LBE196:
.LBB197:
.LBB198:
	.loc 2 190 0
#APP
	# 190 "../30_Bsw/STL_common/intrinsics.h" 1
	dsync
	# 0 "" 2
.LVL49:
#NO_APP
.LBE198:
.LBE197:
	.loc 1 1496 0
	insert	%d15, %d15, 0, 14, 1
.LVL50:
.LBB199:
	.loc 1 1497 0
#APP
	# 1497 "../30_Bsw/MicroTestLib/Static/SpbTst.c" 1
	mtcr LO:(0xFE04), %d15
	# 0 "" 2
#NO_APP
.LBE199:
.LBB200:
.LBB201:
	.loc 2 184 0
#APP
	# 184 "../30_Bsw/STL_common/intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
	j	.L10
.LVL51:
.L5:
.LBE201:
.LBE200:
	.loc 1 1469 0
	insert	%d2, %d2, 15, 14, 1
.LVL52:
.LBB202:
	.loc 1 1470 0
#APP
	# 1470 "../30_Bsw/MicroTestLib/Static/SpbTst.c" 1
	mtcr LO:(0xFE04), %d2
	# 0 "" 2
#NO_APP
.LBE202:
.LBB203:
.LBB204:
	.loc 2 184 0
#APP
	# 184 "../30_Bsw/STL_common/intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
	j	.L6
.LVL53:
.L45:
.LBE204:
.LBE203:
.LBB205:
.LBB190:
	.loc 1 1653 0
	mov	%d4, 3
	mov	%d5, 30
	call	Smu_ClearAlarmStatus
	mov	%d3, %d2
.LVL54:
	j	.L18
.LVL55:
.L43:
	.loc 1 1643 0
	mov	%d4, 3
	mov	%d5, 22
	call	Smu_ClearAlarmStatus
	mov	%d8, %d2
.LVL56:
	ld.w	%d15, [%SP] 40
	j	.L16
.LVL57:
.L46:
.LBE190:
.LBE205:
.LBB206:
.LBB207:
	.loc 2 190 0
#APP
	# 190 "../30_Bsw/STL_common/intrinsics.h" 1
	dsync
	# 0 "" 2
.LVL58:
#NO_APP
.LBE207:
.LBE206:
.LBB208:
	.loc 1 1523 0
	mov	%d2, 0
#APP
	# 1523 "../30_Bsw/MicroTestLib/Static/SpbTst.c" 1
	mtcr LO:(0x9018), %d2
	# 0 "" 2
#NO_APP
.LBE208:
.LBB209:
.LBB210:
	.loc 2 184 0
#APP
	# 184 "../30_Bsw/STL_common/intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE210:
.LBE209:
.LBB211:
.LBB212:
	.loc 2 190 0
#APP
	# 190 "../30_Bsw/STL_common/intrinsics.h" 1
	dsync
	# 0 "" 2
.LVL59:
#NO_APP
.LBE212:
.LBE211:
.LBB213:
	.loc 1 1526 0
#APP
	# 1526 "../30_Bsw/MicroTestLib/Static/SpbTst.c" 1
	mtcr LO:(0x901C), %d2
	# 0 "" 2
#NO_APP
.LBE213:
.LBB214:
.LBB215:
	.loc 2 184 0
#APP
	# 184 "../30_Bsw/STL_common/intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE215:
.LBE214:
	.loc 1 1529 0
	movh.a	%a15, hi:SpbRegAccProtTst_DaeTrapCount
	movh	%d8, 28
	st.w	[%a15] lo:SpbRegAccProtTst_DaeTrapCount, %d15
	addi	%d8, %d8, 511
	j	.L4
.LVL60:
.L44:
.LBB216:
.LBB191:
	.loc 1 1648 0
	mov	%d4, 3
	mov	%d5, 31
	call	Smu_ClearAlarmStatus
	mov	%d9, %d2
.LVL61:
	ld.w	%d15, [%SP] 40
	j	.L17
.LBE191:
.LBE216:
.LFE26:
	.size	SpbTst_lDenyAccTst, .-SpbTst_lDenyAccTst
	.align 2
	.type	SpbTst_ProtectionTrapHandler, @function
SpbTst_ProtectionTrapHandler:
.LFB23:
	.loc 1 995 0
.LVL62:
	.loc 1 997 0
	movh.a	%a15, hi:SpbRegAccProtTst_ExpectedTrap
	ld.w	%d15, [%a15] lo:SpbRegAccProtTst_ExpectedTrap
.LVL63:
	.loc 1 998 0
	movh.a	%a2, hi:SpbTimeoutTst_ExpectedTrap
	.loc 1 1000 0
	eq	%d2, %d15, 3
	.loc 1 998 0
	ld.w	%d3, [%a2] lo:SpbTimeoutTst_ExpectedTrap
.LVL64:
	.loc 1 1000 0
	and.eq	%d2, %d4, 3
	jnz	%d2, .L51
	.loc 1 1011 0
	eq	%d15, %d3, 2
.LVL65:
	and.eq	%d15, %d4, 2
	jnz	%d15, .L52
	.loc 1 1024 0
	movh.a	%a15, hi:SpbRegAccProtTst_DaeTrapCount
	st.w	[%a15] lo:SpbRegAccProtTst_DaeTrapCount, %d15
	.loc 1 1025 0
	movh.a	%a15, hi:SpbTimeoutTst_DseTrapCount
	st.w	[%a15] lo:SpbTimeoutTst_DseTrapCount, %d15
	.loc 1 996 0
	mov	%d2, 0
.LVL66:
	.loc 1 1029 0
	ret
.LVL67:
.L52:
.LBB234:
.LBB235:
	.loc 1 1014 0
	movh.a	%a15, hi:SpbTimeoutTst_DseTrapCount
	ld.w	%d15, [%a15] lo:SpbTimeoutTst_DseTrapCount
	add	%d15, 1
	st.w	[%a15] lo:SpbTimeoutTst_DseTrapCount, %d15
.LVL68:
	.loc 1 1017 0
	st.w	[%a2] lo:SpbTimeoutTst_ExpectedTrap, %d2
.LBB236:
.LBB237:
	.loc 2 190 0
#APP
	# 190 "../30_Bsw/STL_common/intrinsics.h" 1
	dsync
	# 0 "" 2
.LVL69:
#NO_APP
.LBE237:
.LBE236:
.LBB238:
	.loc 1 1020 0
	mov	%d15, 0
#APP
	# 1020 "../30_Bsw/MicroTestLib/Static/SpbTst.c" 1
	mtcr LO:(0x9010), %d15
	# 0 "" 2
#NO_APP
.LBE238:
.LBB239:
.LBB240:
	.loc 2 184 0
#APP
	# 184 "../30_Bsw/STL_common/intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
	mov	%d2, 1
	ret
.LVL70:
.L51:
.LBE240:
.LBE239:
.LBE235:
.LBE234:
	.loc 1 1003 0
	movh.a	%a2, hi:SpbRegAccProtTst_DaeTrapCount
	ld.w	%d15, [%a2] lo:SpbRegAccProtTst_DaeTrapCount
.LVL71:
	add	%d15, 1
	st.w	[%a2] lo:SpbRegAccProtTst_DaeTrapCount, %d15
.LVL72:
	.loc 1 1006 0
	mov	%d15, 0
	st.w	[%a15] lo:SpbRegAccProtTst_ExpectedTrap, %d15
.LBB241:
.LBB242:
	.loc 2 190 0
#APP
	# 190 "../30_Bsw/STL_common/intrinsics.h" 1
	dsync
	# 0 "" 2
.LVL73:
#NO_APP
.LBE242:
.LBE241:
.LBB243:
	.loc 1 1009 0
#APP
	# 1009 "../30_Bsw/MicroTestLib/Static/SpbTst.c" 1
	mtcr LO:(0x9018), %d15
	# 0 "" 2
#NO_APP
.LBE243:
.LBB244:
.LBB245:
	.loc 2 184 0
#APP
	# 184 "../30_Bsw/STL_common/intrinsics.h" 1
	isync
	# 0 "" 2
	.loc 1 1005 0
#NO_APP
	mov	%d2, 1
	ret
.LBE245:
.LBE244:
.LFE23:
	.size	SpbTst_ProtectionTrapHandler, .-SpbTst_ProtectionTrapHandler
.section .rodata,"a",@progbits
	.align 2
.LC2:
	.word	274284545
	.word	282673153
	.word	291061761
	.section .text.STL_ASIL_CODE
	.align 2
	.global	SpbTst_TimeoutTst
	.type	SpbTst_TimeoutTst, @function
SpbTst_TimeoutTst:
.LFB18:
	.loc 1 325 0
.LVL74:
	sub.a	%SP, 48
.LCFI1:
	.loc 1 325 0
	mov.aa	%a15, %a4
.LBB278:
.LBB279:
	.loc 3 400 0
	mov	%d15, 29
#APP
	# 400 "../30_Bsw/STL_common/Mcal_Compiler.h" 1
	crc32 %d5, %d5, %d15
	# 0 "" 2
.LVL75:
#NO_APP
.LBE279:
.LBE278:
	.loc 1 335 0
	st.w	[%a4]0, %d5
	.loc 1 363 0
	movh	%d15, 29
	.loc 1 338 0
	call	Smu_GetSmuState
.LVL76:
	.loc 1 363 0
	addi	%d15, %d15, 524
	.loc 1 338 0
	jeq	%d2, 1, .L94
.LVL77:
.L54:
.LBB280:
.LBB281:
	.loc 3 400 0
	ld.w	%d2, [%a15]0
#APP
	# 400 "../30_Bsw/STL_common/Mcal_Compiler.h" 1
	crc32 %d2, %d15, %d2
	# 0 "" 2
.LVL78:
#NO_APP
.LBE281:
.LBE280:
	.loc 1 367 0
	st.w	[%a15]0, %d2
	.loc 1 371 0
	mov	%d2, %d15
.LVL79:
	ret
.LVL80:
.L94:
.LBB282:
.LBB283:
	.loc 1 425 0
	mov	%d15, 0
	.loc 1 428 0
	movh.a	%a13, hi:SpbTimeoutTst_ExpectedTrap
	.loc 1 431 0
	movh.a	%a12, 61446
	.loc 1 425 0
	st.w	[%SP] 36, %d15
.LVL81:
	.loc 1 426 0
	st.b	[%SP] 44, %d15
.LVL82:
	.loc 1 428 0
	st.w	[%a13] lo:SpbTimeoutTst_ExpectedTrap, %d15
	.loc 1 431 0
	ld.w	%d15, [%a12]0
	.loc 1 434 0
	movh.a	%a2, hi:-268238816
	.loc 1 431 0
	st.w	[%SP] 4, %d15
	.loc 1 434 0
	lea	%a2, [%a2] lo:-268238816
	ld.w	%d15, [%a2]0
	.loc 1 437 0
	movh.a	%a2, hi:-268238812
	.loc 1 434 0
	st.w	[%SP] 8, %d15
	.loc 1 437 0
	lea	%a2, [%a2] lo:-268238812
	ld.w	%d15, [%a2]0
	.loc 1 440 0
	movh.a	%a2, hi:-268238808
	.loc 1 437 0
	st.w	[%SP] 12, %d15
	.loc 1 440 0
	lea	%a2, [%a2] lo:-268238808
	ld.w	%d15, [%a2]0
	st.w	[%SP] 16, %d15
.LBB284:
	.loc 1 443 0
#APP
	# 443 "../30_Bsw/MicroTestLib/Static/SpbTst.c" 1
	mfcr %d15, LO:(0xFE04)
	# 0 "" 2
.LVL83:
#NO_APP
.LBE284:
	.loc 1 446 0
	mov	%d4, 3
	mov	%d5, 31
	mov.aa	%a4, %SP
	lea	%a5, [%SP] 44
	.loc 1 443 0
	st.w	[%SP] 20, %d15
	.loc 1 446 0
	call	Smu_GetAlarmAction
	jz	%d2, .L55
.LVL84:
	.loc 1 451 0
	mov	%d15, -1
.LVL85:
	.loc 1 449 0
	movh	%d8, 29
	addi	%d8, %d8, 528
	.loc 1 451 0
	st.b	[%SP]0, %d15
.LVL86:
.L59:
.LBE283:
.LBE282:
.LBB286:
.LBB287:
	.loc 1 784 0
	call	Mcal_ResetENDINIT
.LBB288:
.LBB289:
	.loc 2 190 0
#APP
	# 190 "../30_Bsw/STL_common/intrinsics.h" 1
	dsync
	# 0 "" 2
.LVL87:
#NO_APP
.LBE289:
.LBE288:
.LBB290:
	.loc 1 785 0
	ld.w	%d15, [%SP] 20
#APP
	# 785 "../30_Bsw/MicroTestLib/Static/SpbTst.c" 1
	mtcr LO:(0xFE04), %d15
	# 0 "" 2
#NO_APP
.LBE290:
.LBB291:
.LBB292:
	.loc 2 184 0
#APP
	# 184 "../30_Bsw/STL_common/intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE292:
.LBE291:
	.loc 1 786 0
	call	Mcal_SetENDINIT
.LVL88:
	.loc 1 789 0
	movh.a	%a2, hi:-268238816
	ld.w	%d15, [%SP] 8
.LVL89:
	lea	%a2, [%a2] lo:-268238816
	st.w	[%a2]0, %d15
	.loc 1 792 0
	movh.a	%a2, hi:-268238812
	ld.w	%d15, [%SP] 12
	lea	%a2, [%a2] lo:-268238812
	st.w	[%a2]0, %d15
	.loc 1 795 0
	movh.a	%a2, hi:-268238808
	ld.w	%d15, [%SP] 16
	lea	%a2, [%a2] lo:-268238808
	st.w	[%a2]0, %d15
	.loc 1 797 0
	movh.a	%a2, hi:-268206016
	lea	%a2, [%a2] lo:-268206016
	ld.w	%d2, [%a2]0
	movh	%d15, 10559
	addi	%d15, %d15, 7423
	and	%d15, %d2
	insert	%d15, %d15, 15, 25, 1
	st.w	[%a2]0, %d15
	.loc 1 799 0
	call	Mcal_ResetENDINIT
	.loc 1 800 0
	movh.a	%a2, 61446
	ld.w	%d15, [%SP] 4
	st.w	[%a2]0, %d15
	.loc 1 801 0
	call	Mcal_SetENDINIT
	.loc 1 804 0
	ld.bu	%d6, [%SP]0
	mov	%d4, 3
	mov	%d5, 31
	call	Smu_SetAlarmAction
	.loc 1 807 0
	mov	%d4, 4
	.loc 1 804 0
	mov	%d9, %d2
.LVL90:
	.loc 1 807 0
	call	TRAP_UnregisterTrapHandler
.LVL91:
	.loc 1 809 0
	movh	%d3, 29
	addi	%d3, %d3, 264
	.loc 1 807 0
	jnz	%d2, .L73
	.loc 1 816 0
	movh	%d15, 29
	movh	%d3, 29
	addi	%d15, %d15, 529
	addi	%d3, %d3, 511
	seln	%d3, %d9, %d3, %d15
.L73:
.LVL92:
.LBE287:
.LBE286:
	.loc 1 351 0
	movh	%d15, 29
	addi	%d15, %d15, 511
	eq	%d15, %d8, %d15
	sel	%d15, %d15, %d3, %d8
	j	.L54
.LVL93:
.L55:
.LBB293:
.LBB285:
	.loc 1 455 0
	mov	%d4, 3
	lea	%a4, [%SP] 36
	.loc 1 457 0
	movh	%d8, 29
	.loc 1 455 0
	call	Smu_GetAlarmStatus
	.loc 1 457 0
	addi	%d8, %d8, 526
	.loc 1 455 0
	jnz	%d2, .L59
	.loc 1 461 0
	ld.w	%d15, [%SP] 36
.LVL94:
	.loc 1 463 0
	movh	%d8, 29
	addi	%d8, %d8, 525
	.loc 1 461 0
	jltz	%d15, .L59
	.loc 1 470 0
	mov	%d4, 3
	mov	%d5, 31
	mov	%d6, 0
	.loc 1 473 0
	movh	%d8, 29
	.loc 1 470 0
	call	Smu_SetAlarmAction
	.loc 1 473 0
	addi	%d8, %d8, 529
	.loc 1 470 0
	jnz	%d2, .L59
	.loc 1 477 0
	movh.a	%a4, hi:SpbTst_ProtectionTrapHandler
	mov	%d4, 4
	lea	%a4, [%a4] lo:SpbTst_ProtectionTrapHandler
	.loc 1 486 0
	movh	%d8, 29
	.loc 1 477 0
	call	TRAP_RegisterTrapHandler
.LVL95:
	.loc 1 486 0
	addi	%d8, %d8, 264
	.loc 1 479 0
	jnz	%d2, .L59
	.loc 1 481 0
	movh.a	%a14, hi:SpbTimeoutTst_DseTrapCount
	st.w	[%a14] lo:SpbTimeoutTst_DseTrapCount, %d2
.LVL96:
.LBE285:
.LBE293:
.LBB294:
.LBB295:
	.loc 1 542 0
	st.w	[%SP] 40, %d2
.LVL97:
	.loc 1 546 0
	st.w	[%SP] 44, %d2
.LVL98:
	.loc 1 551 0
	movh	%d2, hi:.LC2
	addi	%d2, %d2, lo:.LC2
	mov.a	%a3, %d2
	lea	%a2, [%SP] 24
		# #chunks=1, chunksize=8, remains=4
	ld.d	%e4, [%a3+]8
	st.d	[%a2+]8, %e4
	ld.w	%d4, [%a3+]4
	st.w	[%a2+]4, %d4
	.loc 1 559 0
	call	Mcal_GetCoreId
	mov	%d9, %d2
.LVL99:
.LBB296:
	.loc 1 562 0
#APP
	# 562 "../30_Bsw/MicroTestLib/Static/SpbTst.c" 1
	mfcr %d15, LO:(0xFE04)
	# 0 "" 2
.LVL100:
#NO_APP
.LBE296:
.LBB297:
.LBB298:
	.loc 2 190 0
#APP
	# 190 "../30_Bsw/STL_common/intrinsics.h" 1
	dsync
	# 0 "" 2
.LVL101:
#NO_APP
.LBE298:
.LBE297:
	.loc 1 563 0
	insert	%d15, %d15, 15, 14, 1
.LVL102:
.LBB299:
	.loc 1 564 0
#APP
	# 564 "../30_Bsw/MicroTestLib/Static/SpbTst.c" 1
	mtcr LO:(0xFE04), %d15
	# 0 "" 2
#NO_APP
.LBE299:
.LBB300:
.LBB301:
	.loc 2 184 0
#APP
	# 184 "../30_Bsw/STL_common/intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE301:
.LBE300:
	.loc 1 567 0
	ld.w	%d15, [%a12]0
.LVL103:
	jnz.t	%d15, 1, .L95
.LVL104:
.L58:
	.loc 1 580 0
	movh.a	%a2, 61446
	ld.w	%d15, [%a2]0
	.loc 1 538 0
	movh	%d8, 29
	.loc 1 580 0
	and	%d15, %d15, 2
	.loc 1 538 0
	addi	%d8, %d8, 266
	.loc 1 580 0
	jnz	%d15, .L59
	.loc 1 583 0
	movh.a	%a2, hi:-268238832
	lea	%a2, [%a2] lo:-268238832
	.loc 1 589 0
	movh.a	%a3, hi:-268238816
	.loc 1 583 0
	ld.w	%d2, [%a2]0
.LVL105:
	.loc 1 589 0
	lea	%a3, [%a3] lo:-268238816
	.loc 1 586 0
	st.w	[%a14] lo:SpbTimeoutTst_DseTrapCount, %d15
	.loc 1 589 0
	st.w	[%a3]0, %d15
	.loc 1 592 0
	mov	%d15, 2
	.loc 1 548 0
	mov	%d4, 0
	.loc 1 547 0
	mov	%d3, 0
	.loc 1 592 0
	st.w	[%a13] lo:SpbTimeoutTst_ExpectedTrap, %d15
	.loc 1 593 0
	jnz	%d9, .L62
.LVL106:
	.loc 1 600 0
	movh.a	%a3, hi:-268034544
	lea	%a3, [%a3] lo:-268034544
	ld.hu	%d4, [%a3]0
.LVL107:
	.loc 1 603 0
	ld.w	%d3, [%a2]0
	movh	%d15, 65281
	and	%d15, %d3
	or	%d15, %d15, 4
	.loc 1 599 0
	movh	%d3, 61446
	addi	%d3, %d3, 7696
	.loc 1 603 0
	st.w	[%a2]0, %d15
	.loc 1 605 0
	ld.hu	%d15, [%a3]0
	st.w	[%SP] 36, %d15
.LVL108:
.L62:
	.loc 1 646 0
	ld.w	%d15, [%SP] 44
	ge.u	%d15, %d15, 25
	jnz	%d15, .L64
.LVL109:
.L89:
	.loc 1 648 0
	ld.w	%d15, [%SP] 44
	add	%d15, 1
.LVL110:
	st.w	[%SP] 44, %d15
.LVL111:
	.loc 1 646 0
	ld.w	%d15, [%SP] 44
.LVL112:
	lt.u	%d15, %d15, 25
	jnz	%d15, .L89
.L64:
	.loc 1 652 0
	movh.a	%a2, hi:-268238812
	lea	%a2, [%a2] lo:-268238812
	ld.w	%d15, [%a2]0
	jeq	%d15, %d3, .L96
.L66:
.LVL113:
	.loc 1 672 0
	insert	%d15, %d2, 0, 17, 7
	movh.a	%a2, hi:-268238832
	lea	%a2, [%a2] lo:-268238832
	.loc 1 675 0
	movh	%d8, 29
	.loc 1 672 0
	st.w	[%a2]0, %d15
	.loc 1 675 0
	movh.a	%a2, hi:-268238816
	lea	%a2, [%a2] lo:-268238816
	ld.w	%d15, [%a2]0
.LVL114:
	st.w	[%SP] 36, %d15
.LVL115:
	addi	%d8, %d8, 262
.LVL116:
.L71:
	.loc 1 736 0
	ld.w	%d15, [%SP] 36
	j	.L59
.LVL117:
.L95:
	.loc 1 569 0
	call	Mcal_ResetENDINIT
	.loc 1 571 0
	ld.w	%d15, [%a12]0
	andn	%d15, %d15, ~(-2)
	st.w	[%a12]0, %d15
	.loc 1 572 0
	call	Mcal_SetENDINIT
	.loc 1 577 0
	movh.a	%a3, 61446
	lea	%a2, 255
.LVL118:
.L60:
	ld.w	%d15, [%a3]0
	jz.t	%d15, 1, .L58
	loop	%a2, .L60
	j	.L58
.LVL119:
.L96:
	.loc 1 654 0
	movh.a	%a2, hi:-268238808
	lea	%a2, [%a2] lo:-268238808
	ld.w	%d15, [%a2]0
	jne	%d15, %d4, .L66
	.loc 1 656 0
	lea	%a4, [%SP] 48
	movh.a	%a2, hi:-268238816
	addsc.a	%a3, %a4, %d9, 2
	lea	%a2, [%a2] lo:-268238816
	ld.w	%d15, [%a2]0
	ld.w	%d3, [%a3] -24
	jne	%d3, %d15, .L66
	.loc 1 672 0
	insert	%d2, %d2, 0, 17, 7
.LVL120:
	movh.a	%a3, hi:-268238832
	lea	%a3, [%a3] lo:-268238832
	.loc 1 695 0
	movh	%d8, 29
	.loc 1 672 0
	st.w	[%a3]0, %d2
	.loc 1 675 0
	ld.w	%d15, [%a2]0
.LVL121:
	st.w	[%SP] 36, %d15
.LVL122:
	.loc 1 680 0
	ld.w	%d15, [%a14] lo:SpbTimeoutTst_DseTrapCount
	.loc 1 695 0
	addi	%d8, %d8, 264
	.loc 1 680 0
	jne	%d15, 1, .L71
.LBB302:
.LBB303:
	.loc 2 190 0
#APP
	# 190 "../30_Bsw/STL_common/intrinsics.h" 1
	dsync
	# 0 "" 2
.LVL123:
#NO_APP
.LBE303:
.LBE302:
.LBB304:
	.loc 1 683 0
	mov	%d15, 0
#APP
	# 683 "../30_Bsw/MicroTestLib/Static/SpbTst.c" 1
	mtcr LO:(0x9010), %d15
	# 0 "" 2
#NO_APP
.LBE304:
.LBB305:
.LBB306:
	.loc 2 184 0
#APP
	# 184 "../30_Bsw/STL_common/intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE306:
.LBE305:
.LBB307:
.LBB308:
	.loc 2 190 0
#APP
	# 190 "../30_Bsw/STL_common/intrinsics.h" 1
	dsync
	# 0 "" 2
.LVL124:
#NO_APP
.LBE308:
.LBE307:
.LBB309:
	.loc 1 686 0
#APP
	# 686 "../30_Bsw/MicroTestLib/Static/SpbTst.c" 1
	mtcr LO:(0x901C), %d15
	# 0 "" 2
#NO_APP
.LBE309:
.LBB310:
.LBB311:
	.loc 2 184 0
#APP
	# 184 "../30_Bsw/STL_common/intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE311:
.LBE310:
	.loc 1 702 0
	lea	%a14, [%SP] 48
	.loc 1 689 0
	movh.a	%a2, hi:SpbTimeoutTst_DseTrapCount
	.loc 1 702 0
	ld.w	%d2, [+%a14]-8
	.loc 1 689 0
	st.w	[%a2] lo:SpbTimeoutTst_DseTrapCount, %d15
.LVL125:
	.loc 1 702 0
	mov	%d15, 2000
	jgez	%d2, .L88
	j	.L70
.LVL126:
.L72:
	ld.w	%d2, [%SP] 40
	.loc 1 710 0
	add	%d15, -1
.LVL127:
	.loc 1 702 0
	ge	%d3, %d2, 0
	and.ne	%d3, %d15, 0
	jz	%d3, .L70
.LVL128:
.L88:
	.loc 1 704 0
	mov	%d4, 3
	mov.aa	%a4, %a14
	call	Smu_GetAlarmStatus
	jz	%d2, .L72
	.loc 1 706 0
	mov	%d15, 0
	.loc 1 707 0
	movh	%d8, 29
	addi	%d8, %d8, 526
	.loc 1 706 0
	st.w	[%SP] 40, %d15
.LVL129:
	.loc 1 736 0
	ld.w	%d15, [%SP] 36
	j	.L59
.LVL130:
.L70:
	.loc 1 730 0
	movh	%d8, 29
	addi	%d8, %d8, 525
	.loc 1 716 0
	jgez	%d2, .L71
	.loc 1 719 0
	mov	%d4, 3
	mov	%d5, 31
	.loc 1 721 0
	movh	%d15, 29
	movh	%d8, 29
	.loc 1 719 0
	call	Smu_ClearAlarmStatus
	.loc 1 721 0
	addi	%d15, %d15, 511
	addi	%d8, %d8, 527
	sel	%d8, %d2, %d8, %d15
.LVL131:
	.loc 1 736 0
	ld.w	%d15, [%SP] 36
	j	.L59
.LBE295:
.LBE294:
.LFE18:
	.size	SpbTst_TimeoutTst, .-SpbTst_TimeoutTst
	.align 2
	.global	SpbTst_PeripheralRegAccProtTst
	.type	SpbTst_PeripheralRegAccProtTst, @function
SpbTst_PeripheralRegAccProtTst:
.LFB22:
	.loc 1 905 0
.LVL132:
	.loc 1 906 0
	movh.a	%a15, hi:1835274
	.loc 1 905 0
	sub.a	%SP, 48
.LCFI2:
	.loc 1 906 0
	lea	%a15, [%a15] lo:1835274
	.loc 1 905 0
	mov	%d15, %d4
	mov.aa	%a13, %a4
	.loc 1 906 0
	st.a	[%SP] 24, %a15
.LVL133:
.LBB326:
.LBB327:
	.loc 3 400 0
	mov	%d2, 28
#APP
	# 400 "../30_Bsw/STL_common/Mcal_Compiler.h" 1
	crc32 %d5, %d5, %d2
	# 0 "" 2
.LVL134:
#NO_APP
.LBE327:
.LBE326:
	.loc 1 915 0
	st.w	[%a4]0, %d5
	.loc 1 918 0
	jz	%d4, .L98
	.loc 1 920 0
	movh	%d15, 28
	addi	%d15, %d15, 258
	st.w	[%SP] 24, %d15
	.loc 1 966 0
	ld.w	%d15, [%SP] 24
.LVL135:
.LBB328:
.LBB329:
	.loc 3 400 0
#APP
	# 400 "../30_Bsw/STL_common/Mcal_Compiler.h" 1
	crc32 %d5, %d15, %d5
	# 0 "" 2
.LVL136:
#NO_APP
.LBE329:
.LBE328:
	.loc 1 966 0
	st.w	[%a13]0, %d5
	.loc 1 968 0
	ld.w	%d2, [%SP] 24
	.loc 1 969 0
	ret
.LVL137:
.L98:
	.loc 1 922 0
	call	Smu_GetSmuState
.LVL138:
	jeq	%d2, 1, .L100
	.loc 1 924 0
	movh	%d15, 28
.LVL139:
	addi	%d15, %d15, 524
	ld.w	%d5, [%a13]0
	st.w	[%SP] 24, %d15
	.loc 1 966 0
	ld.w	%d15, [%SP] 24
.LVL140:
.LBB332:
.LBB330:
	.loc 3 400 0
#APP
	# 400 "../30_Bsw/STL_common/Mcal_Compiler.h" 1
	crc32 %d5, %d15, %d5
	# 0 "" 2
.LVL141:
#NO_APP
.LBE330:
.LBE332:
	.loc 1 966 0
	st.w	[%a13]0, %d5
	.loc 1 968 0
	ld.w	%d2, [%SP] 24
	.loc 1 969 0
	ret
.LVL142:
.L100:
	.loc 1 928 0
	movh.a	%a12, hi:SpbTst_ConfigRoot
	st.b	[%SP] 47, %d15
.LVL143:
	lea	%a12, [%a12] lo:SpbTst_ConfigRoot
	ld.bu	%d2, [%SP] 47
	ld.bu	%d15, [%a12] 4
.LVL144:
	movh.a	%a14, hi:SpbRegAccProtTst_ExpectedTrap
	lea	%a14, [%a14] lo:SpbRegAccProtTst_ExpectedTrap
	jge.u	%d2, %d15, .L134
.LBB333:
.LBB334:
	.loc 1 1185 0
	movh	%d12, 28
	.loc 1 1097 0
	ld.w	%d14, [%a12] 8
	.loc 1 1100 0
	ld.w	%d13, [%a12]0
	.loc 1 1090 0
	mov	%d8, 0
	.loc 1 1185 0
	addi	%d12, %d12, 529
.LVL145:
.L132:
.LBE334:
.LBE333:
	.loc 1 932 0
	ld.bu	%d15, [%SP] 47
.LVL146:
.LBB340:
.LBB336:
	.loc 1 1097 0
	mov.a	%a15, %d14
	.loc 1 1091 0
	st.b	[%SP] 40, %d8
	.loc 1 1097 0
	addsc.a	%a2, %a15, %d15, 2
	.loc 1 1090 0
	st.w	[%SP] 28, %d8
	.loc 1 1097 0
	ld.a	%a15, [%a2]0
.LVL147:
	.loc 1 1100 0
	madd	%d2, %d13, %d15, 16
	.loc 1 1093 0
	st.w	[%SP] 36, %d8
	.loc 1 1095 0
	st.w	[%a14]0, %d8
	.loc 1 1097 0
	st.a	[%SP] 32, %a15
.LVL148:
	.loc 1 1100 0
	mov.a	%a15, %d2
.LVL149:
	ld.a	%a2, [%a15]0
	jz.a	%a2, .L102
	.loc 1 1103 0
	ld.a	%a3, [%a15] 12
	ld.w	%d15, [%a3]0
.LVL150:
	jz	%d15, .L103
	.loc 1 1106 0
	ld.w	%d15, [%a2]0
	st.w	[%SP] 8, %d15
	.loc 1 1108 0
	call	Mcal_ResetENDINIT
	.loc 1 1109 0
	ld.a	%a2, [%a15]0
	mov	%d15, 256
	st.w	[%a2]0, %d15
	.loc 1 1111 0
	call	Mcal_SetENDINIT
.L104:
	.loc 1 1123 0
	ld.a	%a2, [%a15]0
	ld.w	%d15, [%a2]0
.LVL151:
	st.w	[%SP] 36, %d15
.L102:
	.loc 1 1128 0
	ld.a	%a2, [%a15] 4
	.loc 1 1133 0
	ld.a	%a15, [%a15] 8
	.loc 1 1127 0
	ld.w	%d15, [%a2]0
.LVL152:
	st.w	[%SP] 12, %d15
	.loc 1 1132 0
	ld.w	%d15, [%a15]0
	st.w	[%SP] 16, %d15
.LBB335:
	.loc 1 1137 0
#APP
	# 1137 "../30_Bsw/MicroTestLib/Static/SpbTst.c" 1
	mfcr %d15, LO:(0xFE04)
	# 0 "" 2
.LVL153:
#NO_APP
.LBE335:
	.loc 1 1140 0
	mov	%d4, 3
	mov	%d5, 30
	lea	%a4, [%SP] 4
	lea	%a5, [%SP] 40
	.loc 1 1137 0
	st.w	[%SP] 20, %d15
	.loc 1 1089 0
	movh	%d15, 28
.LVL154:
	.loc 1 1140 0
	call	Smu_GetAlarmAction
.LVL155:
	.loc 1 1089 0
	addi	%d15, %d15, 266
	.loc 1 1140 0
	jz	%d2, .L105
.LVL156:
	.loc 1 1145 0
	mov	%d15, -1
	st.b	[%SP] 4, %d15
	.loc 1 1143 0
	movh	%d15, 28
	addi	%d15, %d15, 528
.LVL157:
.L105:
	.loc 1 1149 0
	mov	%d4, 3
	mov	%d5, 31
	lea	%a4, [%SP] 5
	lea	%a5, [%SP] 40
	call	Smu_GetAlarmAction
	jz	%d2, .L106
.LVL158:
	.loc 1 1154 0
	mov	%d15, -1
	st.b	[%SP] 5, %d15
	.loc 1 1152 0
	movh	%d15, 28
	addi	%d15, %d15, 528
.LVL159:
.L106:
	.loc 1 1158 0
	mov	%d4, 3
	mov	%d5, 22
	lea	%a4, [%SP] 6
	lea	%a5, [%SP] 40
	call	Smu_GetAlarmAction
	jz	%d2, .L107
.LVL160:
	.loc 1 1163 0
	mov	%d15, -1
	st.b	[%SP] 6, %d15
	.loc 1 1161 0
	movh	%d15, 28
	addi	%d15, %d15, 528
.LVL161:
.L108:
	.loc 1 1213 0
	ld.a	%a15, [%SP] 36
.LVL162:
.L114:
.LBE336:
.LBE340:
.LBB341:
.LBB342:
	.loc 1 1272 0
	ld.w	%d2, [%a12]0
.LBE342:
.LBE341:
	.loc 1 947 0
	ld.bu	%d9, [%SP] 47
.LVL163:
.LBB350:
.LBB348:
	.loc 1 1272 0
	mov.a	%a2, %d2
	sh	%d9, 4
.LVL164:
	addsc.a	%a15, %a2, %d9, 0
	ld.w	%d2, [%a15] 4
.LVL165:
	st.w	[%SP] 40, %d2
.LVL166:
	.loc 1 1275 0
	call	Mcal_ResetENDINIT
.LVL167:
.LBB343:
.LBB344:
	.loc 2 190 0
#APP
	# 190 "../30_Bsw/STL_common/intrinsics.h" 1
	dsync
	# 0 "" 2
.LVL168:
#NO_APP
.LBE344:
.LBE343:
.LBB345:
	.loc 1 1276 0
	ld.w	%d2, [%SP] 20
#APP
	# 1276 "../30_Bsw/MicroTestLib/Static/SpbTst.c" 1
	mtcr LO:(0xFE04), %d2
	# 0 "" 2
#NO_APP
.LBE345:
.LBB346:
.LBB347:
	.loc 2 184 0
#APP
	# 184 "../30_Bsw/STL_common/intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE347:
.LBE346:
	.loc 1 1277 0
	call	Mcal_SetENDINIT
.LVL169:
	.loc 1 1280 0
	movh	%d2, 61446
	ld.w	%d3, [%SP] 40
	addi	%d2, %d2, 252
	jeq	%d3, %d2, .L115
	.loc 1 1282 0
	call	Mcal_ResetENDINIT
	.loc 1 1283 0
	ld.a	%a15, [%a15] 8
	.loc 1 1284 0
	ld.w	%d2, [%SP] 16
	.loc 1 1283 0
	st.w	[%a15]0, %d2
	.loc 1 1285 0
	call	Mcal_SetENDINIT
.L116:
	.loc 1 1296 0
	mov	%d4, 22960
	call	Mcal_ResetSafetyENDINIT_Timed
	.loc 1 1297 0
	ld.w	%d2, [%a12]0
	mov.a	%a2, %d2
	.loc 1 1298 0
	ld.w	%d2, [%SP] 12
	.loc 1 1297 0
	addsc.a	%a15, %a2, %d9, 0
	ld.a	%a2, [%a15] 4
	st.w	[%a2]0, %d2
	.loc 1 1299 0
	call	Mcal_SetSafetyENDINIT_Timed
	.loc 1 1302 0
	movh.a	%a2, hi:-126877244
	lea	%a2, [%a2] lo:-126877244
	ld.w	%d2, [%a2]0
	or	%d2, %d2, 16
	st.w	[%a2]0, %d2
	.loc 1 1303 0
	movh.a	%a2, hi:-126877692
	lea	%a2, [%a2] lo:-126877692
	ld.w	%d2, [%a2]0
	or	%d2, %d2, 16
	st.w	[%a2]0, %d2
	.loc 1 1304 0
	movh	%d2, 32832
	movh.a	%a2, hi:-126876656
	lea	%a2, [%a2] lo:-126876656
	st.w	[%a2]0, %d2
	.loc 1 1306 0
	call	Mcal_ResetENDINIT
	.loc 1 1307 0
	ld.a	%a15, [%a15]0
	jz.a	%a15, .L117
	.loc 1 1311 0
	ld.w	%d2, [%SP] 8
	.loc 1 1310 0
	st.w	[%a15]0, %d2
.L117:
	.loc 1 1313 0
	call	Mcal_SetENDINIT
	.loc 1 1316 0
	ld.bu	%d6, [%SP] 4
	mov	%d4, 3
	mov	%d5, 30
	call	Smu_SetAlarmAction
	.loc 1 1319 0
	ld.bu	%d6, [%SP] 5
	mov	%d4, 3
	mov	%d5, 31
	.loc 1 1316 0
	mov	%d10, %d2
.LVL170:
	.loc 1 1319 0
	call	Smu_SetAlarmAction
.LVL171:
	.loc 1 1322 0
	ld.bu	%d6, [%SP] 6
	mov	%d4, 3
	mov	%d5, 22
	.loc 1 1319 0
	mov	%d11, %d2
.LVL172:
	.loc 1 1322 0
	call	Smu_SetAlarmAction
.LVL173:
	.loc 1 1325 0
	mov	%d4, 4
	.loc 1 1322 0
	mov	%d9, %d2
.LVL174:
	.loc 1 1325 0
	call	TRAP_UnregisterTrapHandler
.LVL175:
	.loc 1 1327 0
	movh	%d3, 28
	addi	%d3, %d3, 263
	.loc 1 1325 0
	jnz	%d2, .L118
	.loc 1 1332 0
	or	%d10, %d11
.LVL176:
	or	%d10, %d9
	.loc 1 1334 0
	movh	%d2, 28
	.loc 1 1332 0
	and	%d10, %d10, 255
	.loc 1 1334 0
	addi	%d2, %d2, 511
	seln	%d3, %d10, %d2, %d12
.L118:
.LVL177:
.LBE348:
.LBE350:
	.loc 1 949 0
	movh	%d2, 28
	addi	%d2, %d2, 511
	jeq	%d15, %d2, .L119
	.loc 1 951 0
	st.w	[%SP] 24, %d15
.L120:
	.loc 1 958 0
	ld.a	%a15, [%SP] 24
	movh	%d15, 28
.LVL178:
	addi	%d15, %d15, 511
	mov.d	%d2, %a15
	jne	%d2, %d15, .L134
	.loc 1 928 0
	ld.bu	%d15, [%SP] 47
	add	%d15, 1
	and	%d15, 255
.LVL179:
	st.b	[%SP] 47, %d15
	ld.bu	%d2, [%SP] 47
	ld.bu	%d15, [%a12] 4
.LVL180:
	jlt.u	%d2, %d15, .L132
.LVL181:
.L134:
	ld.w	%d5, [%a13]0
	.loc 1 966 0
	ld.w	%d15, [%SP] 24
.LVL182:
.LBB351:
.LBB331:
	.loc 3 400 0
#APP
	# 400 "../30_Bsw/STL_common/Mcal_Compiler.h" 1
	crc32 %d5, %d15, %d5
	# 0 "" 2
.LVL183:
#NO_APP
.LBE331:
.LBE351:
	.loc 1 966 0
	st.w	[%a13]0, %d5
	.loc 1 968 0
	ld.w	%d2, [%SP] 24
	.loc 1 969 0
	ret
.LVL184:
.L107:
.LBB352:
.LBB337:
	.loc 1 1167 0
	movh	%d9, 28
	addi	%d9, %d9, 266
	jne	%d15, %d9, .L108
	.loc 1 1170 0
	mov	%d4, 3
	lea	%a4, [%SP] 28
	call	Smu_GetAlarmStatus
	jz	%d2, .L135
	.loc 1 1172 0
	movh	%d15, 28
.LVL185:
	addi	%d15, %d15, 526
	j	.L108
.LVL186:
.L103:
	.loc 1 1115 0
	ld.w	%d2, [%a2]0
	st.w	[%SP] 8, %d2
	.loc 1 1117 0
	call	Mcal_ResetENDINIT
	.loc 1 1118 0
	ld.a	%a2, [%a15]0
	st.w	[%a2]0, %d15
	.loc 1 1120 0
	call	Mcal_SetENDINIT
	j	.L104
.LVL187:
.L115:
.LBE337:
.LBE352:
.LBB353:
.LBB349:
	.loc 1 1289 0
	mov	%d4, 22960
	call	Mcal_ResetSafetyENDINIT_Timed
	.loc 1 1290 0
	ld.a	%a15, [%a15] 8
	.loc 1 1291 0
	ld.w	%d2, [%SP] 16
	.loc 1 1290 0
	st.w	[%a15]0, %d2
	.loc 1 1292 0
	call	Mcal_SetSafetyENDINIT_Timed
	j	.L116
.LVL188:
.L119:
.LBE349:
.LBE353:
	.loc 1 955 0
	st.w	[%SP] 24, %d3
	j	.L120
.LVL189:
.L135:
.LBB354:
.LBB338:
	.loc 1 1175 0
	ld.w	%d2, [%SP] 32
	ld.w	%d3, [%SP] 28
	and	%d2, %d3
	jz	%d2, .L136
	.loc 1 1177 0
	movh	%d15, 28
.LVL190:
	addi	%d15, %d15, 525
.LVL191:
	j	.L108
.L136:
	.loc 1 1182 0
	mov	%d4, 3
	mov	%d5, 30
	mov	%d6, 0
	call	Smu_SetAlarmAction
	.loc 1 1187 0
	mov	%d4, 3
	mov	%d5, 31
	mov	%d6, 0
	.loc 1 1185 0
	seln	%d15, %d2, %d15, %d12
.LVL192:
	.loc 1 1187 0
	call	Smu_SetAlarmAction
	.loc 1 1192 0
	mov	%d4, 3
	mov	%d5, 22
	mov	%d6, 0
	.loc 1 1190 0
	seln	%d15, %d2, %d15, %d12
.LVL193:
	.loc 1 1192 0
	call	Smu_SetAlarmAction
	jnz	%d2, .L127
	.loc 1 1197 0
	jne	%d15, %d9, .L108
	.loc 1 1199 0
	movh.a	%a4, hi:SpbTst_ProtectionTrapHandler
	mov	%d4, 4
	lea	%a4, [%a4] lo:SpbTst_ProtectionTrapHandler
	.loc 1 1208 0
	movh	%d15, 28
.LVL194:
	.loc 1 1199 0
	call	TRAP_RegisterTrapHandler
.LVL195:
	.loc 1 1208 0
	addi	%d15, %d15, 263
	.loc 1 1201 0
	jnz	%d2, .L108
	.loc 1 1203 0
	movh.a	%a15, hi:SpbRegAccProtTst_DaeTrapCount
	st.w	[%a15] lo:SpbRegAccProtTst_DaeTrapCount, %d2
.LVL196:
	.loc 1 1213 0
	ld.w	%d15, [%SP] 36
.LBE338:
.LBE354:
	.loc 1 937 0
	ld.bu	%d5, [%SP] 47
	mov	%d4, 0
	mov.aa	%a4, %a13
	mov	%d6, 0
	call	SpbTst_lDenyAccTst
	mov	%d15, %d2
.LVL197:
	.loc 1 939 0
	movh	%d2, 28
.LVL198:
	addi	%d2, %d2, 511
	jne	%d15, %d2, .L114
	.loc 1 942 0
	ld.bu	%d5, [%SP] 47
	mov	%d4, 0
	mov.aa	%a4, %a13
	mov	%d6, 1
	call	SpbTst_lDenyAccTst
	mov	%d15, %d2
.LVL199:
	j	.L114
.LVL200:
.L127:
.LBB355:
.LBB339:
	.loc 1 1195 0
	movh	%d15, 28
.LVL201:
	addi	%d15, %d15, 529
	j	.L108
.LBE339:
.LBE355:
.LFE22:
	.size	SpbTst_PeripheralRegAccProtTst, .-SpbTst_PeripheralRegAccProtTst
	.section .data.STL_RAM_32BIT,"aw",@progbits
	.align 2
	.type	SpbTimeoutTst_ExpectedTrap, @object
	.size	SpbTimeoutTst_ExpectedTrap, 4
SpbTimeoutTst_ExpectedTrap:
	.zero	4
	.align 2
	.type	SpbTimeoutTst_DseTrapCount, @object
	.size	SpbTimeoutTst_DseTrapCount, 4
SpbTimeoutTst_DseTrapCount:
	.zero	4
	.align 2
	.type	SpbRegAccProtTst_ExpectedTrap, @object
	.size	SpbRegAccProtTst_ExpectedTrap, 4
SpbRegAccProtTst_ExpectedTrap:
	.zero	4
	.align 2
	.type	SpbRegAccProtTst_DaeTrapCount, @object
	.size	SpbRegAccProtTst_DaeTrapCount, 4
SpbRegAccProtTst_DaeTrapCount:
	.zero	4
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
	.uaword	.LFB26
	.uaword	.LFE26-.LFB26
	.byte	0x4
	.uaword	.LCFI0-.LFB26
	.byte	0xe
	.uleb128 0x30
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB23
	.uaword	.LFE23-.LFB23
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB18
	.uaword	.LFE18-.LFB18
	.byte	0x4
	.uaword	.LCFI1-.LFB18
	.byte	0xe
	.uleb128 0x30
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB22
	.uaword	.LFE22-.LFB22
	.byte	0x4
	.uaword	.LCFI2-.LFB22
	.byte	0xe
	.uleb128 0x30
	.align 2
.LEFDE6:
.section .text,"ax",@progbits
.Letext0:
	.file 4 "../30_Bsw/Common/Platform_Types.h"
	.file 5 "../30_Bsw/Common/Std_Types.h"
	.file 6 "../30_Bsw/STL_common/Mcal_TcLib.h"
	.file 7 "../30_Bsw/STL_common/Sl_ErrorCodes.h"
	.file 8 "../30_Bsw/Smu/Static/Smu.h"
	.file 9 "../30_Bsw/Smu/Static/SmuInt.h"
	.file 10 "../30_Bsw/MicroTestLib/Static/SpbTst.h"
	.file 11 "../30_Bsw/Common/TC21x/IfxSbcu_regdef.h"
	.file 12 "../30_Bsw/Common/TC21x/IfxMtu_regdef.h"
	.file 13 "../30_Bsw/Common/TC21x/IfxMc_regdef.h"
	.file 14 "../30_Bsw/MicroTestLib/Static/Mtl_Trap.h"
	.file 15 "../30_Bsw/Common/TC21x/IfxInt_regdef.h"
	.file 16 "../30_Bsw/Common/TC21x/IfxXbar_regdef.h"
	.file 17 "../30_Bsw/Common/TC21x/IfxSrc_regdef.h"
	.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x295f
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.6.3 build on 2013-05-17"
	.byte	0x1
	.string	"../30_Bsw/MicroTestLib/Static/SpbTst.c"
	.string	"S:\\\\20_Make"
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_ranges0+0x190
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
	.byte	0x4
	.byte	0x5b
	.uaword	0x7f
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x3
	.string	"uint32"
	.byte	0x4
	.byte	0x5f
	.uaword	0xdd
	.uleb128 0x3
	.string	"boolean"
	.byte	0x4
	.byte	0x63
	.uaword	0x7f
	.uleb128 0x3
	.string	"Std_ReturnType"
	.byte	0x5
	.byte	0x71
	.uaword	0xfa
	.uleb128 0x3
	.string	"unsigned_int"
	.byte	0x6
	.byte	0x7a
	.uaword	0xba
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.byte	0x6d
	.uaword	0x4d8
	.uleb128 0x5
	.string	"TEST_ID_GENERIC"
	.sleb128 0
	.uleb128 0x5
	.string	"TEST_ID_CPU_MPU_TST"
	.sleb128 1
	.uleb128 0x5
	.string	"TEST_ID_SFR_CMP_TST"
	.sleb128 2
	.uleb128 0x5
	.string	"TEST_ID_SFR_CRC_TST"
	.sleb128 3
	.uleb128 0x5
	.string	"TEST_ID_SRI_TST"
	.sleb128 4
	.uleb128 0x5
	.string	"TEST_ID_OSC_WDG_TST"
	.sleb128 5
	.uleb128 0x5
	.string	"TEST_ID_BUS_MPU_LFM_TST"
	.sleb128 6
	.uleb128 0x5
	.string	"TEST_ID_TRAP_TST"
	.sleb128 7
	.uleb128 0x5
	.string	"TEST_ID_UNUSED_TST1"
	.sleb128 8
	.uleb128 0x5
	.string	"TEST_ID_REG_ACC_PROT_TST"
	.sleb128 9
	.uleb128 0x5
	.string	"TEST_ID_PMU_ECC_EDC_TST"
	.sleb128 10
	.uleb128 0x5
	.string	"TEST_ID_CPU_WDG_TST"
	.sleb128 11
	.uleb128 0x5
	.string	"TEST_ID_SAFETY_WDG_TST"
	.sleb128 12
	.uleb128 0x5
	.string	"TEST_ID_VLTM_TST"
	.sleb128 13
	.uleb128 0x5
	.string	"TEST_ID_CLKM_TST"
	.sleb128 14
	.uleb128 0x5
	.string	"TEST_ID_CPUSBST_E_TST"
	.sleb128 15
	.uleb128 0x5
	.string	"TEST_ID_CPUSBST_P_TST"
	.sleb128 16
	.uleb128 0x5
	.string	"TEST_ID_SMU_TST_RT"
	.sleb128 17
	.uleb128 0x5
	.string	"TEST_ID_SMU_TST_IRQ"
	.sleb128 18
	.uleb128 0x5
	.string	"TEST_ID_UNUSED_TST2"
	.sleb128 19
	.uleb128 0x5
	.string	"TEST_ID_SMU_TST_NMI"
	.sleb128 20
	.uleb128 0x5
	.string	"TEST_ID_SMU_TST_IDLE"
	.sleb128 21
	.uleb128 0x5
	.string	"TEST_ID_SRAMECC_TST"
	.sleb128 22
	.uleb128 0x5
	.string	"TEST_ID_IR_TST"
	.sleb128 23
	.uleb128 0x5
	.string	"TEST_ID_LOCK_STEP_TST"
	.sleb128 24
	.uleb128 0x5
	.string	"TEST_ID_LMU_REG_ACC_PROT_TST"
	.sleb128 25
	.uleb128 0x5
	.string	"TEST_ID_BUS_LMU_MPU_LFM_TST"
	.sleb128 26
	.uleb128 0x5
	.string	"TEST_ID_MBIST_TST"
	.sleb128 27
	.uleb128 0x5
	.string	"TEST_ID_SPB_TST_RAP"
	.sleb128 28
	.uleb128 0x5
	.string	"TEST_ID_SPB_TST_TIMEOUT"
	.sleb128 29
	.uleb128 0x5
	.string	"TEST_ID_FCE_TST"
	.sleb128 30
	.uleb128 0x5
	.string	"TEST_ID_DMA_CRC_TST"
	.sleb128 31
	.uleb128 0x5
	.string	"TEST_ID_DMA_TIMESTAMP_TST"
	.sleb128 32
	.uleb128 0x5
	.string	"TEST_ID_DMA_SAFELINKEDLIST_TST"
	.sleb128 33
	.uleb128 0x5
	.string	"TEST_ID_IOM_TST"
	.sleb128 34
	.uleb128 0x5
	.string	"TEST_ID_SMU_TST_RST"
	.sleb128 35
	.uleb128 0x5
	.string	"TEST_ID_PFLASH_MON_TST"
	.sleb128 36
	.uleb128 0x5
	.string	"TEST_ID_SFF_TST"
	.sleb128 37
	.uleb128 0x5
	.string	"TEST_ID_PHLSRAM_TST"
	.sleb128 38
	.byte	0
	.uleb128 0x6
	.string	"Sl_TstRsltType"
	.byte	0x7
	.uahalf	0x2a3
	.uaword	0x113
	.uleb128 0x6
	.string	"Sl_ParamSetType"
	.byte	0x7
	.uahalf	0x2ac
	.uaword	0x113
	.uleb128 0x3
	.string	"Smu_StateType"
	.byte	0x8
	.byte	0x9e
	.uaword	0xfa
	.uleb128 0x3
	.string	"Smu_AlarmActionType"
	.byte	0x9
	.byte	0x44
	.uaword	0xfa
	.uleb128 0x3
	.string	"Smu_FSPActionType"
	.byte	0x9
	.byte	0x46
	.uaword	0xfa
	.uleb128 0x7
	.uaword	0x560
	.uaword	0x560
	.uleb128 0x8
	.uaword	0xdd
	.byte	0x3
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.uaword	0x566
	.uleb128 0xa
	.uaword	0x146
	.uleb128 0xb
	.uaword	.LASF0
	.byte	0xc
	.byte	0xa
	.byte	0x39
	.uaword	0x5bc
	.uleb128 0xc
	.string	"SpbPeripheralCfgPtr"
	.byte	0xa
	.byte	0x3b
	.uaword	0x5bc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"SpbCount"
	.byte	0xa
	.byte	0x3c
	.uaword	0xfa
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.string	"SmuAlarm"
	.byte	0xa
	.byte	0x3d
	.uaword	0x5c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.uaword	0x550
	.uleb128 0x9
	.byte	0x4
	.uaword	0x5c8
	.uleb128 0xd
	.uaword	0x113
	.uleb128 0xe
	.uaword	.LASF0
	.byte	0xa
	.byte	0x3e
	.uaword	0x56b
	.uleb128 0xb
	.uaword	.LASF1
	.byte	0x14
	.byte	0xa
	.byte	0x45
	.uaword	0x6a0
	.uleb128 0xc
	.string	"AlmActionBUSriBusError"
	.byte	0xa
	.byte	0x48
	.uaword	0x51c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.uaword	.LASF2
	.byte	0xa
	.byte	0x4a
	.uaword	0x51c
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xc
	.string	"AlmActionBUSpbAccProtEnbError"
	.byte	0xa
	.byte	0x4c
	.uaword	0x51c
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xc
	.string	"PeripheralClcBU"
	.byte	0xa
	.byte	0x4d
	.uaword	0x113
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.string	"PeripheralAccen0BU"
	.byte	0xa
	.byte	0x4e
	.uaword	0x113
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.string	"PeripheralKernelBU"
	.byte	0xa
	.byte	0x4f
	.uaword	0x113
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xc
	.string	"PswBU"
	.byte	0xa
	.byte	0x50
	.uaword	0x113
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0xe
	.uaword	.LASF1
	.byte	0xa
	.byte	0x51
	.uaword	0x5d8
	.uleb128 0xb
	.uaword	.LASF3
	.byte	0x18
	.byte	0xa
	.byte	0x57
	.uaword	0x728
	.uleb128 0xf
	.uaword	.LASF2
	.byte	0xa
	.byte	0x5a
	.uaword	0x51c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"MtuClcBU"
	.byte	0xa
	.byte	0x5c
	.uaword	0x113
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.string	"SbcuEconBU"
	.byte	0xa
	.byte	0x5d
	.uaword	0x113
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.string	"SbcuEaddBU"
	.byte	0xa
	.byte	0x5e
	.uaword	0x113
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xc
	.string	"SbcuEdatBU"
	.byte	0xa
	.byte	0x5f
	.uaword	0x113
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xc
	.string	"PswBU"
	.byte	0xa
	.byte	0x60
	.uaword	0x113
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0
	.uleb128 0xe
	.uaword	.LASF3
	.byte	0xa
	.byte	0x61
	.uaword	0x6ab
	.uleb128 0x10
	.string	"_Ifx_SBCU_CON_Bits"
	.byte	0x4
	.byte	0xb
	.byte	0x58
	.uaword	0x794
	.uleb128 0x11
	.string	"TOUT"
	.byte	0xb
	.byte	0x5a
	.uaword	0xba
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"DBG"
	.byte	0xb
	.byte	0x5b
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF4
	.byte	0xb
	.byte	0x5c
	.uaword	0xba
	.byte	0x4
	.byte	0x7
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"SPC"
	.byte	0xb
	.byte	0x5d
	.uaword	0xba
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SBCU_CON_Bits"
	.byte	0xb
	.byte	0x5e
	.uaword	0x733
	.uleb128 0x10
	.string	"_Ifx_SBCU_EADD_Bits"
	.byte	0x4
	.byte	0xb
	.byte	0xd0
	.uaword	0x7de
	.uleb128 0x11
	.string	"FPIADR"
	.byte	0xb
	.byte	0xd2
	.uaword	0xba
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SBCU_EADD_Bits"
	.byte	0xb
	.byte	0xd3
	.uaword	0x7ad
	.uleb128 0x10
	.string	"_Ifx_SBCU_ECON_Bits"
	.byte	0x4
	.byte	0xb
	.byte	0xd6
	.uaword	0x8c3
	.uleb128 0x11
	.string	"ERRCNT"
	.byte	0xb
	.byte	0xd8
	.uaword	0xba
	.byte	0x4
	.byte	0xe
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"TOUT"
	.byte	0xb
	.byte	0xd9
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"RDY"
	.byte	0xb
	.byte	0xda
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"ABT"
	.byte	0xb
	.byte	0xdb
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"ACK"
	.byte	0xb
	.byte	0xdc
	.uaword	0xba
	.byte	0x4
	.byte	0x2
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"SVM"
	.byte	0xb
	.byte	0xdd
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"WRN"
	.byte	0xb
	.byte	0xde
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"RDN"
	.byte	0xb
	.byte	0xdf
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"TAG"
	.byte	0xb
	.byte	0xe0
	.uaword	0xba
	.byte	0x4
	.byte	0x6
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"OPC"
	.byte	0xb
	.byte	0xe1
	.uaword	0xba
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SBCU_ECON_Bits"
	.byte	0xb
	.byte	0xe2
	.uaword	0x7f8
	.uleb128 0x10
	.string	"_Ifx_SBCU_EDAT_Bits"
	.byte	0x4
	.byte	0xb
	.byte	0xe5
	.uaword	0x90e
	.uleb128 0x11
	.string	"FPIDAT"
	.byte	0xb
	.byte	0xe7
	.uaword	0xba
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SBCU_EDAT_Bits"
	.byte	0xb
	.byte	0xe8
	.uaword	0x8dd
	.uleb128 0x13
	.byte	0x4
	.byte	0xb
	.uahalf	0x122
	.uaword	0x950
	.uleb128 0x14
	.string	"U"
	.byte	0xb
	.uahalf	0x124
	.uaword	0xba
	.uleb128 0x14
	.string	"I"
	.byte	0xb
	.uahalf	0x125
	.uaword	0xb3
	.uleb128 0x14
	.string	"B"
	.byte	0xb
	.uahalf	0x126
	.uaword	0x794
	.byte	0
	.uleb128 0x6
	.string	"Ifx_SBCU_CON"
	.byte	0xb
	.uahalf	0x127
	.uaword	0x928
	.uleb128 0x13
	.byte	0x4
	.byte	0xb
	.uahalf	0x172
	.uaword	0x98d
	.uleb128 0x14
	.string	"U"
	.byte	0xb
	.uahalf	0x174
	.uaword	0xba
	.uleb128 0x14
	.string	"I"
	.byte	0xb
	.uahalf	0x175
	.uaword	0xb3
	.uleb128 0x14
	.string	"B"
	.byte	0xb
	.uahalf	0x176
	.uaword	0x7de
	.byte	0
	.uleb128 0x6
	.string	"Ifx_SBCU_EADD"
	.byte	0xb
	.uahalf	0x177
	.uaword	0x965
	.uleb128 0x13
	.byte	0x4
	.byte	0xb
	.uahalf	0x17a
	.uaword	0x9cb
	.uleb128 0x14
	.string	"U"
	.byte	0xb
	.uahalf	0x17c
	.uaword	0xba
	.uleb128 0x14
	.string	"I"
	.byte	0xb
	.uahalf	0x17d
	.uaword	0xb3
	.uleb128 0x14
	.string	"B"
	.byte	0xb
	.uahalf	0x17e
	.uaword	0x8c3
	.byte	0
	.uleb128 0x6
	.string	"Ifx_SBCU_ECON"
	.byte	0xb
	.uahalf	0x17f
	.uaword	0x9a3
	.uleb128 0x13
	.byte	0x4
	.byte	0xb
	.uahalf	0x182
	.uaword	0xa09
	.uleb128 0x14
	.string	"U"
	.byte	0xb
	.uahalf	0x184
	.uaword	0xba
	.uleb128 0x14
	.string	"I"
	.byte	0xb
	.uahalf	0x185
	.uaword	0xb3
	.uleb128 0x14
	.string	"B"
	.byte	0xb
	.uahalf	0x186
	.uaword	0x90e
	.byte	0
	.uleb128 0x6
	.string	"Ifx_SBCU_EDAT"
	.byte	0xb
	.uahalf	0x187
	.uaword	0x9e1
	.uleb128 0x10
	.string	"_Ifx_MTU_ACCEN0_Bits"
	.byte	0x4
	.byte	0xc
	.byte	0x2d
	.uaword	0xc73
	.uleb128 0x11
	.string	"EN0"
	.byte	0xc
	.byte	0x2f
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN1"
	.byte	0xc
	.byte	0x30
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN2"
	.byte	0xc
	.byte	0x31
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN3"
	.byte	0xc
	.byte	0x32
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN4"
	.byte	0xc
	.byte	0x33
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN5"
	.byte	0xc
	.byte	0x34
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN6"
	.byte	0xc
	.byte	0x35
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN7"
	.byte	0xc
	.byte	0x36
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN8"
	.byte	0xc
	.byte	0x37
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN9"
	.byte	0xc
	.byte	0x38
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN10"
	.byte	0xc
	.byte	0x39
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN11"
	.byte	0xc
	.byte	0x3a
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN12"
	.byte	0xc
	.byte	0x3b
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN13"
	.byte	0xc
	.byte	0x3c
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN14"
	.byte	0xc
	.byte	0x3d
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN15"
	.byte	0xc
	.byte	0x3e
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN16"
	.byte	0xc
	.byte	0x3f
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN17"
	.byte	0xc
	.byte	0x40
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN18"
	.byte	0xc
	.byte	0x41
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN19"
	.byte	0xc
	.byte	0x42
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN20"
	.byte	0xc
	.byte	0x43
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN21"
	.byte	0xc
	.byte	0x44
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN22"
	.byte	0xc
	.byte	0x45
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN23"
	.byte	0xc
	.byte	0x46
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN24"
	.byte	0xc
	.byte	0x47
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN25"
	.byte	0xc
	.byte	0x48
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN26"
	.byte	0xc
	.byte	0x49
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN27"
	.byte	0xc
	.byte	0x4a
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN28"
	.byte	0xc
	.byte	0x4b
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN29"
	.byte	0xc
	.byte	0x4c
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN30"
	.byte	0xc
	.byte	0x4d
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN31"
	.byte	0xc
	.byte	0x4e
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_MTU_ACCEN0_Bits"
	.byte	0xc
	.byte	0x4f
	.uaword	0xa1f
	.uleb128 0x10
	.string	"_Ifx_MTU_CLC_Bits"
	.byte	0x4
	.byte	0xc
	.byte	0x58
	.uaword	0xd0a
	.uleb128 0x11
	.string	"DISR"
	.byte	0xc
	.byte	0x5a
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"DISS"
	.byte	0xc
	.byte	0x5b
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"Resvd"
	.byte	0xc
	.byte	0x5c
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EDIS"
	.byte	0xc
	.byte	0x5d
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"reserved_4"
	.byte	0xc
	.byte	0x5e
	.uaword	0xba
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_MTU_CLC_Bits"
	.byte	0xc
	.byte	0x5f
	.uaword	0xc8e
	.uleb128 0x15
	.byte	0x4
	.byte	0xc
	.byte	0xea
	.uaword	0xd46
	.uleb128 0x16
	.string	"U"
	.byte	0xc
	.byte	0xec
	.uaword	0xba
	.uleb128 0x16
	.string	"I"
	.byte	0xc
	.byte	0xed
	.uaword	0xb3
	.uleb128 0x16
	.string	"B"
	.byte	0xc
	.byte	0xee
	.uaword	0xc73
	.byte	0
	.uleb128 0x3
	.string	"Ifx_MTU_ACCEN0"
	.byte	0xc
	.byte	0xef
	.uaword	0xd22
	.uleb128 0x15
	.byte	0x4
	.byte	0xc
	.byte	0xfa
	.uaword	0xd80
	.uleb128 0x16
	.string	"U"
	.byte	0xc
	.byte	0xfc
	.uaword	0xba
	.uleb128 0x16
	.string	"I"
	.byte	0xc
	.byte	0xfd
	.uaword	0xb3
	.uleb128 0x16
	.string	"B"
	.byte	0xc
	.byte	0xfe
	.uaword	0xd0a
	.byte	0
	.uleb128 0x3
	.string	"Ifx_MTU_CLC"
	.byte	0xc
	.byte	0xff
	.uaword	0xd5c
	.uleb128 0xa
	.uaword	0x9d
	.uleb128 0x10
	.string	"_Ifx_MC_ECCD_Bits"
	.byte	0x2
	.byte	0xd
	.byte	0x3d
	.uaword	0xe8e
	.uleb128 0x11
	.string	"SERR"
	.byte	0xd
	.byte	0x3f
	.uaword	0xd93
	.byte	0x2
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"CERR"
	.byte	0xd
	.byte	0x40
	.uaword	0xd93
	.byte	0x2
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"UERR"
	.byte	0xd
	.byte	0x41
	.uaword	0xd93
	.byte	0x2
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"AERR"
	.byte	0xd
	.byte	0x42
	.uaword	0xd93
	.byte	0x2
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"TRC"
	.byte	0xd
	.byte	0x43
	.uaword	0xd93
	.byte	0x2
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"VAL"
	.byte	0xd
	.byte	0x44
	.uaword	0xd93
	.byte	0x2
	.byte	0x5
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"reserved_10"
	.byte	0xd
	.byte	0x45
	.uaword	0xd93
	.byte	0x2
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"CENE"
	.byte	0xd
	.byte	0x46
	.uaword	0xd93
	.byte	0x2
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"UENE"
	.byte	0xd
	.byte	0x47
	.uaword	0xd93
	.byte	0x2
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"AENE"
	.byte	0xd
	.byte	0x48
	.uaword	0xd93
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"ECE"
	.byte	0xd
	.byte	0x49
	.uaword	0xd93
	.byte	0x2
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EOV"
	.byte	0xd
	.byte	0x4a
	.uaword	0xd93
	.byte	0x2
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_MC_ECCD_Bits"
	.byte	0xd
	.byte	0x4b
	.uaword	0xd98
	.uleb128 0x15
	.byte	0x2
	.byte	0xd
	.byte	0xa7
	.uaword	0xeca
	.uleb128 0x16
	.string	"U"
	.byte	0xd
	.byte	0xa9
	.uaword	0x9d
	.uleb128 0x16
	.string	"I"
	.byte	0xd
	.byte	0xaa
	.uaword	0x90
	.uleb128 0x16
	.string	"B"
	.byte	0xd
	.byte	0xab
	.uaword	0xe8e
	.byte	0
	.uleb128 0x3
	.string	"Ifx_MC_ECCD"
	.byte	0xd
	.byte	0xac
	.uaword	0xea6
	.uleb128 0x3
	.string	"TRAP_ErrorType"
	.byte	0xe
	.byte	0x66
	.uaword	0x113
	.uleb128 0x10
	.string	"_Ifx_INT_ACCEN00_Bits"
	.byte	0x4
	.byte	0xf
	.byte	0x2d
	.uaword	0x1148
	.uleb128 0x11
	.string	"EN0"
	.byte	0xf
	.byte	0x2f
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN1"
	.byte	0xf
	.byte	0x30
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN2"
	.byte	0xf
	.byte	0x31
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN3"
	.byte	0xf
	.byte	0x32
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN4"
	.byte	0xf
	.byte	0x33
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN5"
	.byte	0xf
	.byte	0x34
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN6"
	.byte	0xf
	.byte	0x35
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN7"
	.byte	0xf
	.byte	0x36
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN8"
	.byte	0xf
	.byte	0x37
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN9"
	.byte	0xf
	.byte	0x38
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN10"
	.byte	0xf
	.byte	0x39
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN11"
	.byte	0xf
	.byte	0x3a
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN12"
	.byte	0xf
	.byte	0x3b
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN13"
	.byte	0xf
	.byte	0x3c
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN14"
	.byte	0xf
	.byte	0x3d
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN15"
	.byte	0xf
	.byte	0x3e
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN16"
	.byte	0xf
	.byte	0x3f
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN17"
	.byte	0xf
	.byte	0x40
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN18"
	.byte	0xf
	.byte	0x41
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN19"
	.byte	0xf
	.byte	0x42
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN20"
	.byte	0xf
	.byte	0x43
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN21"
	.byte	0xf
	.byte	0x44
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN22"
	.byte	0xf
	.byte	0x45
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN23"
	.byte	0xf
	.byte	0x46
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN24"
	.byte	0xf
	.byte	0x47
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN25"
	.byte	0xf
	.byte	0x48
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN26"
	.byte	0xf
	.byte	0x49
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN27"
	.byte	0xf
	.byte	0x4a
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN28"
	.byte	0xf
	.byte	0x4b
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN29"
	.byte	0xf
	.byte	0x4c
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN30"
	.byte	0xf
	.byte	0x4d
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN31"
	.byte	0xf
	.byte	0x4e
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_INT_ACCEN00_Bits"
	.byte	0xf
	.byte	0x4f
	.uaword	0xef3
	.uleb128 0x10
	.string	"_Ifx_INT_ACCEN10_Bits"
	.byte	0x4
	.byte	0xf
	.byte	0x58
	.uaword	0x13b9
	.uleb128 0x11
	.string	"EN0"
	.byte	0xf
	.byte	0x5a
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN1"
	.byte	0xf
	.byte	0x5b
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN2"
	.byte	0xf
	.byte	0x5c
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN3"
	.byte	0xf
	.byte	0x5d
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN4"
	.byte	0xf
	.byte	0x5e
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN5"
	.byte	0xf
	.byte	0x5f
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN6"
	.byte	0xf
	.byte	0x60
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN7"
	.byte	0xf
	.byte	0x61
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN8"
	.byte	0xf
	.byte	0x62
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN9"
	.byte	0xf
	.byte	0x63
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN10"
	.byte	0xf
	.byte	0x64
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN11"
	.byte	0xf
	.byte	0x65
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN12"
	.byte	0xf
	.byte	0x66
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN13"
	.byte	0xf
	.byte	0x67
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN14"
	.byte	0xf
	.byte	0x68
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN15"
	.byte	0xf
	.byte	0x69
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN16"
	.byte	0xf
	.byte	0x6a
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN17"
	.byte	0xf
	.byte	0x6b
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN18"
	.byte	0xf
	.byte	0x6c
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN19"
	.byte	0xf
	.byte	0x6d
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN20"
	.byte	0xf
	.byte	0x6e
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN21"
	.byte	0xf
	.byte	0x6f
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN22"
	.byte	0xf
	.byte	0x70
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN23"
	.byte	0xf
	.byte	0x71
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN24"
	.byte	0xf
	.byte	0x72
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN25"
	.byte	0xf
	.byte	0x73
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN26"
	.byte	0xf
	.byte	0x74
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN27"
	.byte	0xf
	.byte	0x75
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN28"
	.byte	0xf
	.byte	0x76
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN29"
	.byte	0xf
	.byte	0x77
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN30"
	.byte	0xf
	.byte	0x78
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN31"
	.byte	0xf
	.byte	0x79
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_INT_ACCEN10_Bits"
	.byte	0xf
	.byte	0x7a
	.uaword	0x1164
	.uleb128 0x13
	.byte	0x4
	.byte	0xf
	.uahalf	0x106
	.uaword	0x13fd
	.uleb128 0x14
	.string	"U"
	.byte	0xf
	.uahalf	0x108
	.uaword	0xba
	.uleb128 0x14
	.string	"I"
	.byte	0xf
	.uahalf	0x109
	.uaword	0xb3
	.uleb128 0x14
	.string	"B"
	.byte	0xf
	.uahalf	0x10a
	.uaword	0x1148
	.byte	0
	.uleb128 0x6
	.string	"Ifx_INT_ACCEN00"
	.byte	0xf
	.uahalf	0x10b
	.uaword	0x13d5
	.uleb128 0x13
	.byte	0x4
	.byte	0xf
	.uahalf	0x116
	.uaword	0x143d
	.uleb128 0x14
	.string	"U"
	.byte	0xf
	.uahalf	0x118
	.uaword	0xba
	.uleb128 0x14
	.string	"I"
	.byte	0xf
	.uahalf	0x119
	.uaword	0xb3
	.uleb128 0x14
	.string	"B"
	.byte	0xf
	.uahalf	0x11a
	.uaword	0x13b9
	.byte	0
	.uleb128 0x6
	.string	"Ifx_INT_ACCEN10"
	.byte	0xf
	.uahalf	0x11b
	.uaword	0x1415
	.uleb128 0x10
	.string	"_Ifx_XBAR_ARBCON_Bits"
	.byte	0x4
	.byte	0x10
	.byte	0x58
	.uaword	0x1500
	.uleb128 0x11
	.string	"PRERREN"
	.byte	0x10
	.byte	0x5a
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"SCERREN"
	.byte	0x10
	.byte	0x5b
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"SETPRINT"
	.byte	0x10
	.byte	0x5c
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"SETSCINT"
	.byte	0x10
	.byte	0x5d
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"INTACK"
	.byte	0x10
	.byte	0x5e
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF5
	.byte	0x10
	.byte	0x5f
	.uaword	0xba
	.byte	0x4
	.byte	0xf
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"SPC"
	.byte	0x10
	.byte	0x60
	.uaword	0xba
	.byte	0x4
	.byte	0xc
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_XBAR_ARBCON_Bits"
	.byte	0x10
	.byte	0x61
	.uaword	0x1455
	.uleb128 0x17
	.string	"_Ifx_XBAR_INTSAT_Bits"
	.byte	0x4
	.byte	0x10
	.uahalf	0x124
	.uaword	0x1689
	.uleb128 0x18
	.string	"SCSCI0"
	.byte	0x10
	.uahalf	0x126
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x18
	.string	"reserved_1"
	.byte	0x10
	.uahalf	0x127
	.uaword	0xba
	.byte	0x4
	.byte	0x3
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x18
	.string	"SCSCI4"
	.byte	0x10
	.uahalf	0x128
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x19
	.uaword	.LASF5
	.byte	0x10
	.uahalf	0x129
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x18
	.string	"SCSCI6"
	.byte	0x10
	.uahalf	0x12a
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x18
	.string	"SCSCI7"
	.byte	0x10
	.uahalf	0x12b
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x19
	.uaword	.LASF6
	.byte	0x10
	.uahalf	0x12c
	.uaword	0xba
	.byte	0x4
	.byte	0x7
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x18
	.string	"SCSCID"
	.byte	0x10
	.uahalf	0x12d
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x18
	.string	"PRSCI0"
	.byte	0x10
	.uahalf	0x12e
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x19
	.uaword	.LASF4
	.byte	0x10
	.uahalf	0x12f
	.uaword	0xba
	.byte	0x4
	.byte	0x3
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x18
	.string	"PRSCI4"
	.byte	0x10
	.uahalf	0x130
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x19
	.uaword	.LASF7
	.byte	0x10
	.uahalf	0x131
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x18
	.string	"PRSCI6"
	.byte	0x10
	.uahalf	0x132
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x18
	.string	"PRSCI7"
	.byte	0x10
	.uahalf	0x133
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x18
	.string	"reserved_24"
	.byte	0x10
	.uahalf	0x134
	.uaword	0xba
	.byte	0x4
	.byte	0x7
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x18
	.string	"PRSCID"
	.byte	0x10
	.uahalf	0x135
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x6
	.string	"Ifx_XBAR_INTSAT_Bits"
	.byte	0x10
	.uahalf	0x136
	.uaword	0x151c
	.uleb128 0x13
	.byte	0x4
	.byte	0x10
	.uahalf	0x15e
	.uaword	0x16ce
	.uleb128 0x14
	.string	"U"
	.byte	0x10
	.uahalf	0x160
	.uaword	0xba
	.uleb128 0x14
	.string	"I"
	.byte	0x10
	.uahalf	0x161
	.uaword	0xb3
	.uleb128 0x14
	.string	"B"
	.byte	0x10
	.uahalf	0x162
	.uaword	0x1500
	.byte	0
	.uleb128 0x6
	.string	"Ifx_XBAR_ARBCON"
	.byte	0x10
	.uahalf	0x163
	.uaword	0x16a6
	.uleb128 0x13
	.byte	0x4
	.byte	0x10
	.uahalf	0x1f6
	.uaword	0x170e
	.uleb128 0x14
	.string	"U"
	.byte	0x10
	.uahalf	0x1f8
	.uaword	0xba
	.uleb128 0x14
	.string	"I"
	.byte	0x10
	.uahalf	0x1f9
	.uaword	0xb3
	.uleb128 0x14
	.string	"B"
	.byte	0x10
	.uahalf	0x1fa
	.uaword	0x1689
	.byte	0
	.uleb128 0x6
	.string	"Ifx_XBAR_INTSAT"
	.byte	0x10
	.uahalf	0x1fb
	.uaword	0x16e6
	.uleb128 0x10
	.string	"_Ifx_SRC_SRCR_Bits"
	.byte	0x4
	.byte	0x11
	.byte	0x2d
	.uaword	0x185a
	.uleb128 0x11
	.string	"SRPN"
	.byte	0x11
	.byte	0x2f
	.uaword	0xba
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF6
	.byte	0x11
	.byte	0x30
	.uaword	0xba
	.byte	0x4
	.byte	0x2
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"SRE"
	.byte	0x11
	.byte	0x31
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"TOS"
	.byte	0x11
	.byte	0x32
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"reserved_12"
	.byte	0x11
	.byte	0x33
	.uaword	0xba
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"ECC"
	.byte	0x11
	.byte	0x34
	.uaword	0xba
	.byte	0x4
	.byte	0x5
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF7
	.byte	0x11
	.byte	0x35
	.uaword	0xba
	.byte	0x4
	.byte	0x3
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"SRR"
	.byte	0x11
	.byte	0x36
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"CLRR"
	.byte	0x11
	.byte	0x37
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"SETR"
	.byte	0x11
	.byte	0x38
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"IOV"
	.byte	0x11
	.byte	0x39
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"IOVCLR"
	.byte	0x11
	.byte	0x3a
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"SWS"
	.byte	0x11
	.byte	0x3b
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"SWSCLR"
	.byte	0x11
	.byte	0x3c
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"reserved_31"
	.byte	0x11
	.byte	0x3d
	.uaword	0xba
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_SRCR_Bits"
	.byte	0x11
	.byte	0x3e
	.uaword	0x1726
	.uleb128 0x15
	.byte	0x4
	.byte	0x11
	.byte	0x46
	.uaword	0x1897
	.uleb128 0x16
	.string	"U"
	.byte	0x11
	.byte	0x48
	.uaword	0xba
	.uleb128 0x16
	.string	"I"
	.byte	0x11
	.byte	0x49
	.uaword	0xb3
	.uleb128 0x16
	.string	"B"
	.byte	0x11
	.byte	0x4a
	.uaword	0x185a
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_SRCR"
	.byte	0x11
	.byte	0x4b
	.uaword	0x1873
	.uleb128 0x1a
	.string	"_dsync"
	.byte	0x2
	.byte	0xbc
	.byte	0x1
	.byte	0x3
	.uleb128 0x1a
	.string	"_isync"
	.byte	0x2
	.byte	0xb6
	.byte	0x1
	.byte	0x3
	.uleb128 0x1b
	.string	"SpbTst_ProtectionTrapHandler"
	.byte	0x1
	.uahalf	0x3e2
	.byte	0x1
	.uaword	0x121
	.byte	0x1
	.uaword	0x1980
	.uleb128 0x1c
	.string	"TrapId"
	.byte	0x1
	.uahalf	0x3e2
	.uaword	0x5c8
	.uleb128 0x1d
	.string	"ExpectedTrap"
	.byte	0x1
	.uahalf	0x3e4
	.uaword	0x121
	.uleb128 0x1d
	.string	"Tmp_SpbRegAccProtTst_ExpctdTrap"
	.byte	0x1
	.uahalf	0x3e5
	.uaword	0x113
	.uleb128 0x1d
	.string	"Tmp_SpbTimeoutTst_ExpctdTrap"
	.byte	0x1
	.uahalf	0x3e6
	.uaword	0x113
	.uleb128 0x1e
	.uaword	0x1971
	.uleb128 0x1f
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x3f1
	.uaword	0xba
	.byte	0
	.uleb128 0x20
	.uleb128 0x1f
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x3fc
	.uaword	0xba
	.byte	0
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.string	"__crc32"
	.byte	0x3
	.uahalf	0x189
	.byte	0x1
	.uaword	0xba
	.byte	0x3
	.uaword	0x19b8
	.uleb128 0x1c
	.string	"b"
	.byte	0x3
	.uahalf	0x189
	.uaword	0xba
	.uleb128 0x1c
	.string	"a"
	.byte	0x3
	.uahalf	0x189
	.uaword	0xba
	.uleb128 0x1d
	.string	"res"
	.byte	0x3
	.uahalf	0x18a
	.uaword	0xba
	.byte	0
	.uleb128 0x1b
	.string	"SpbTst_lTimeoutRestore"
	.byte	0x1
	.uahalf	0x308
	.byte	0x1
	.uaword	0x4d8
	.byte	0x1
	.uaword	0x1a19
	.uleb128 0x22
	.uaword	.LASF9
	.byte	0x1
	.uahalf	0x30a
	.uaword	0x1a19
	.uleb128 0x1f
	.uaword	.LASF10
	.byte	0x1
	.uahalf	0x30d
	.uaword	0x4d8
	.uleb128 0x1d
	.string	"ResSmuAlmAct"
	.byte	0x1
	.uahalf	0x30e
	.uaword	0x130
	.uleb128 0x20
	.uleb128 0x1f
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x311
	.uaword	0xba
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.uaword	0x1a1f
	.uleb128 0xd
	.uaword	0x728
	.uleb128 0x1b
	.string	"SpbTst_lWaitForSmuAlarm"
	.byte	0x1
	.uahalf	0x649
	.byte	0x1
	.uaword	0x4d8
	.byte	0x1
	.uaword	0x1ad9
	.uleb128 0x22
	.uaword	.LASF11
	.byte	0x1
	.uahalf	0x64b
	.uaword	0x1ad9
	.uleb128 0x22
	.uaword	.LASF12
	.byte	0x1
	.uahalf	0x64c
	.uaword	0xfa
	.uleb128 0x1f
	.uaword	.LASF13
	.byte	0x1
	.uahalf	0x64f
	.uaword	0x113
	.uleb128 0x1d
	.string	"Timeout"
	.byte	0x1
	.uahalf	0x650
	.uaword	0x113
	.uleb128 0x1f
	.uaword	.LASF10
	.byte	0x1
	.uahalf	0x651
	.uaword	0x4d8
	.uleb128 0x1d
	.string	"TmpClrAlmRes1"
	.byte	0x1
	.uahalf	0x652
	.uaword	0x130
	.uleb128 0x1d
	.string	"TmpClrAlmRes2"
	.byte	0x1
	.uahalf	0x653
	.uaword	0x130
	.uleb128 0x1d
	.string	"TmpClrAlmRes3"
	.byte	0x1
	.uahalf	0x654
	.uaword	0x130
	.uleb128 0x1f
	.uaword	.LASF14
	.byte	0x1
	.uahalf	0x655
	.uaword	0x1ade
	.byte	0
	.uleb128 0xd
	.uaword	0x4ef
	.uleb128 0xa
	.uaword	0x113
	.uleb128 0x23
	.string	"SpbTst_lDenyAccTst"
	.byte	0x1
	.uahalf	0x574
	.byte	0x1
	.uaword	0x4d8
	.uaword	.LFB26
	.uaword	.LFE26
	.uaword	.LLST0
	.uaword	0x1f0f
	.uleb128 0x24
	.uaword	.LASF11
	.byte	0x1
	.uahalf	0x576
	.uaword	0x1ad9
	.uaword	.LLST1
	.uleb128 0x24
	.uaword	.LASF15
	.byte	0x1
	.uahalf	0x577
	.uaword	0x1f0f
	.uaword	.LLST2
	.uleb128 0x24
	.uaword	.LASF12
	.byte	0x1
	.uahalf	0x578
	.uaword	0xfa
	.uaword	.LLST3
	.uleb128 0x25
	.string	"CpuPsw"
	.byte	0x1
	.uahalf	0x579
	.uaword	0x121
	.uaword	.LLST4
	.uleb128 0x26
	.uaword	.LASF10
	.byte	0x1
	.uahalf	0x57c
	.uaword	0x4d8
	.uaword	.LLST5
	.uleb128 0x27
	.string	"CoreId"
	.byte	0x1
	.uahalf	0x57d
	.uaword	0xfa
	.uaword	.LLST6
	.uleb128 0x26
	.uaword	.LASF16
	.byte	0x1
	.uahalf	0x57e
	.uaword	0x1ade
	.uaword	.LLST7
	.uleb128 0x27
	.string	"AccEnable"
	.byte	0x1
	.uahalf	0x57f
	.uaword	0x113
	.uaword	.LLST8
	.uleb128 0x27
	.string	"Temp"
	.byte	0x1
	.uahalf	0x580
	.uaword	0x113
	.uaword	.LLST9
	.uleb128 0x27
	.string	"Read_Econ_Reg"
	.byte	0x1
	.uahalf	0x581
	.uaword	0x1ade
	.uaword	.LLST10
	.uleb128 0x28
	.string	"Dummy"
	.byte	0x1
	.uahalf	0x582
	.uaword	0x1ade
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x28
	.string	"SpbTst_kSafeDMIMasterEnable"
	.byte	0x1
	.uahalf	0x585
	.uaword	0x1f2a
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x28
	.string	"SpbTst_kNonSafeDMIMasterEnable"
	.byte	0x1
	.uahalf	0x58d
	.uaword	0x1f2f
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x29
	.uaword	.LBB161
	.uaword	.LBE161
	.uaword	0x1c46
	.uleb128 0x26
	.uaword	.LASF17
	.byte	0x1
	.uahalf	0x59b
	.uaword	0xba
	.uaword	.LLST11
	.byte	0
	.uleb128 0x2a
	.uaword	0x18ab
	.uaword	.LBB162
	.uaword	.LBE162
	.byte	0x1
	.uahalf	0x59d
	.uleb128 0x29
	.uaword	.LBB164
	.uaword	.LBE164
	.uaword	0x1c74
	.uleb128 0x26
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x5a5
	.uaword	0xba
	.uaword	.LLST12
	.byte	0
	.uleb128 0x2a
	.uaword	0x18b7
	.uaword	.LBB165
	.uaword	.LBE165
	.byte	0x1
	.uahalf	0x5a5
	.uleb128 0x2b
	.uaword	0x1980
	.uaword	.LBB167
	.uaword	.LBE167
	.byte	0x1
	.uahalf	0x619
	.uaword	0x1cbe
	.uleb128 0x2c
	.uaword	0x19a1
	.uaword	.LLST13
	.uleb128 0x2c
	.uaword	0x1997
	.uaword	.LLST14
	.uleb128 0x2d
	.uaword	.LBB168
	.uaword	.LBE168
	.uleb128 0x2e
	.uaword	0x19ab
	.uaword	.LLST15
	.byte	0
	.byte	0
	.uleb128 0x29
	.uaword	.LBB169
	.uaword	.LBE169
	.uaword	0x1cdc
	.uleb128 0x26
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x59d
	.uaword	0xba
	.uaword	.LLST16
	.byte	0
	.uleb128 0x2a
	.uaword	0x18b7
	.uaword	.LBB170
	.uaword	.LBE170
	.byte	0x1
	.uahalf	0x59d
	.uleb128 0x29
	.uaword	.LBB172
	.uaword	.LBE172
	.uaword	0x1d0a
	.uleb128 0x26
	.uaword	.LASF17
	.byte	0x1
	.uahalf	0x5b5
	.uaword	0xba
	.uaword	.LLST17
	.byte	0
	.uleb128 0x2a
	.uaword	0x18ab
	.uaword	.LBB173
	.uaword	.LBE173
	.byte	0x1
	.uahalf	0x5b7
	.uleb128 0x29
	.uaword	.LBB175
	.uaword	.LBE175
	.uaword	0x1d38
	.uleb128 0x26
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x5b7
	.uaword	0xba
	.uaword	.LLST18
	.byte	0
	.uleb128 0x2a
	.uaword	0x18b7
	.uaword	.LBB176
	.uaword	.LBE176
	.byte	0x1
	.uahalf	0x5b7
	.uleb128 0x29
	.uaword	.LBB178
	.uaword	.LBE178
	.uaword	0x1d66
	.uleb128 0x26
	.uaword	.LASF17
	.byte	0x1
	.uahalf	0x5de
	.uaword	0xba
	.uaword	.LLST19
	.byte	0
	.uleb128 0x2a
	.uaword	0x18ab
	.uaword	.LBB179
	.uaword	.LBE179
	.byte	0x1
	.uahalf	0x5e0
	.uleb128 0x29
	.uaword	.LBB181
	.uaword	.LBE181
	.uaword	0x1d94
	.uleb128 0x26
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x5e0
	.uaword	0xba
	.uaword	.LLST20
	.byte	0
	.uleb128 0x2a
	.uaword	0x18b7
	.uaword	.LBB182
	.uaword	.LBE182
	.byte	0x1
	.uahalf	0x5e0
	.uleb128 0x2f
	.uaword	0x1a24
	.uaword	.LBB184
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.uahalf	0x5e7
	.uaword	0x1e08
	.uleb128 0x30
	.uaword	0x1a56
	.uleb128 0x30
	.uaword	0x1a4a
	.uleb128 0x31
	.uaword	.Ldebug_ranges0+0x40
	.uleb128 0x2e
	.uaword	0x1a62
	.uaword	.LLST21
	.uleb128 0x2e
	.uaword	0x1a6e
	.uaword	.LLST22
	.uleb128 0x2e
	.uaword	0x1a7e
	.uaword	.LLST23
	.uleb128 0x2e
	.uaword	0x1a8a
	.uaword	.LLST24
	.uleb128 0x2e
	.uaword	0x1aa0
	.uaword	.LLST25
	.uleb128 0x2e
	.uaword	0x1ab6
	.uaword	.LLST26
	.uleb128 0x2e
	.uaword	0x1acc
	.uaword	.LLST27
	.byte	0
	.byte	0
	.uleb128 0x29
	.uaword	.LBB196
	.uaword	.LBE196
	.uaword	0x1e26
	.uleb128 0x26
	.uaword	.LASF17
	.byte	0x1
	.uahalf	0x5d7
	.uaword	0xba
	.uaword	.LLST28
	.byte	0
	.uleb128 0x2a
	.uaword	0x18ab
	.uaword	.LBB197
	.uaword	.LBE197
	.byte	0x1
	.uahalf	0x5d9
	.uleb128 0x29
	.uaword	.LBB199
	.uaword	.LBE199
	.uaword	0x1e54
	.uleb128 0x26
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x5d9
	.uaword	0xba
	.uaword	.LLST29
	.byte	0
	.uleb128 0x2a
	.uaword	0x18b7
	.uaword	.LBB200
	.uaword	.LBE200
	.byte	0x1
	.uahalf	0x5d9
	.uleb128 0x29
	.uaword	.LBB202
	.uaword	.LBE202
	.uaword	0x1e82
	.uleb128 0x26
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x5be
	.uaword	0xba
	.uaword	.LLST30
	.byte	0
	.uleb128 0x2a
	.uaword	0x18b7
	.uaword	.LBB203
	.uaword	.LBE203
	.byte	0x1
	.uahalf	0x5be
	.uleb128 0x2a
	.uaword	0x18ab
	.uaword	.LBB206
	.uaword	.LBE206
	.byte	0x1
	.uahalf	0x5f3
	.uleb128 0x29
	.uaword	.LBB208
	.uaword	.LBE208
	.uaword	0x1ec0
	.uleb128 0x26
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x5f3
	.uaword	0xba
	.uaword	.LLST31
	.byte	0
	.uleb128 0x2a
	.uaword	0x18b7
	.uaword	.LBB209
	.uaword	.LBE209
	.byte	0x1
	.uahalf	0x5f3
	.uleb128 0x2a
	.uaword	0x18ab
	.uaword	.LBB211
	.uaword	.LBE211
	.byte	0x1
	.uahalf	0x5f6
	.uleb128 0x29
	.uaword	.LBB213
	.uaword	.LBE213
	.uaword	0x1efe
	.uleb128 0x26
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x5f6
	.uaword	0xba
	.uaword	.LLST32
	.byte	0
	.uleb128 0x2a
	.uaword	0x18b7
	.uaword	.LBB214
	.uaword	.LBE214
	.byte	0x1
	.uahalf	0x5f6
	.byte	0
	.uleb128 0xd
	.uaword	0x1f14
	.uleb128 0x9
	.byte	0x4
	.uaword	0x113
	.uleb128 0x7
	.uaword	0x113
	.uaword	0x1f2a
	.uleb128 0x8
	.uaword	0xdd
	.byte	0x2
	.byte	0
	.uleb128 0xd
	.uaword	0x1f1a
	.uleb128 0xd
	.uaword	0x1f1a
	.uleb128 0x32
	.uaword	0x18c3
	.uaword	.LFB23
	.uaword	.LFE23
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x200b
	.uleb128 0x33
	.uaword	0x18ee
	.byte	0x1
	.byte	0x54
	.uleb128 0x2e
	.uaword	0x18fd
	.uaword	.LLST33
	.uleb128 0x2e
	.uaword	0x1912
	.uaword	.LLST34
	.uleb128 0x34
	.uaword	0x193a
	.byte	0x1
	.byte	0x53
	.uleb128 0x2b
	.uaword	0x18c3
	.uaword	.LBB234
	.uaword	.LBE234
	.byte	0x1
	.uahalf	0x3e2
	.uaword	0x1fd6
	.uleb128 0x2d
	.uaword	.LBB235
	.uaword	.LBE235
	.uleb128 0x2e
	.uaword	0x18fd
	.uaword	.LLST35
	.uleb128 0x35
	.uaword	0x1912
	.uleb128 0x35
	.uaword	0x193a
	.uleb128 0x30
	.uaword	0x18ee
	.uleb128 0x2a
	.uaword	0x18ab
	.uaword	.LBB236
	.uaword	.LBE236
	.byte	0x1
	.uahalf	0x3fc
	.uleb128 0x29
	.uaword	.LBB238
	.uaword	.LBE238
	.uaword	0x1fc4
	.uleb128 0x2e
	.uaword	0x1972
	.uaword	.LLST36
	.byte	0
	.uleb128 0x2a
	.uaword	0x18b7
	.uaword	.LBB239
	.uaword	.LBE239
	.byte	0x1
	.uahalf	0x3fc
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uaword	0x18ab
	.uaword	.LBB241
	.uaword	.LBE241
	.byte	0x1
	.uahalf	0x3f1
	.uleb128 0x29
	.uaword	.LBB243
	.uaword	.LBE243
	.uaword	0x1ffa
	.uleb128 0x36
	.uaword	0x1964
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uaword	0x18b7
	.uaword	.LBB244
	.uaword	.LBE244
	.byte	0x1
	.uahalf	0x3f1
	.byte	0
	.uleb128 0x1b
	.string	"SpbTst_lTimeoutInit"
	.byte	0x1
	.uahalf	0x1a2
	.byte	0x1
	.uaword	0x4d8
	.byte	0x1
	.uaword	0x206c
	.uleb128 0x22
	.uaword	.LASF9
	.byte	0x1
	.uahalf	0x1a4
	.uaword	0x206c
	.uleb128 0x1f
	.uaword	.LASF10
	.byte	0x1
	.uahalf	0x1a8
	.uaword	0x4d8
	.uleb128 0x1f
	.uaword	.LASF13
	.byte	0x1
	.uahalf	0x1a9
	.uaword	0x113
	.uleb128 0x1f
	.uaword	.LASF18
	.byte	0x1
	.uahalf	0x1aa
	.uaword	0x537
	.uleb128 0x20
	.uleb128 0x1f
	.uaword	.LASF17
	.byte	0x1
	.uahalf	0x1bb
	.uaword	0xba
	.byte	0
	.byte	0
	.uleb128 0xd
	.uaword	0x2071
	.uleb128 0x9
	.byte	0x4
	.uaword	0x728
	.uleb128 0x1b
	.string	"SpbTst_lTimeoutExecute"
	.byte	0x1
	.uahalf	0x218
	.byte	0x1
	.uaword	0x4d8
	.byte	0x1
	.uaword	0x21c2
	.uleb128 0x1f
	.uaword	.LASF10
	.byte	0x1
	.uahalf	0x21a
	.uaword	0x4d8
	.uleb128 0x1d
	.string	"SmuAlrmTimeout"
	.byte	0x1
	.uahalf	0x21b
	.uaword	0x113
	.uleb128 0x1d
	.string	"Timeout"
	.byte	0x1
	.uahalf	0x21c
	.uaword	0x113
	.uleb128 0x1d
	.string	"dummy"
	.byte	0x1
	.uahalf	0x21d
	.uaword	0x1ade
	.uleb128 0x1f
	.uaword	.LASF13
	.byte	0x1
	.uahalf	0x21e
	.uaword	0x113
	.uleb128 0x1d
	.string	"CoreId"
	.byte	0x1
	.uahalf	0x21f
	.uaword	0xfa
	.uleb128 0x1d
	.string	"SpbTst_SbcuConBU"
	.byte	0x1
	.uahalf	0x220
	.uaword	0x146
	.uleb128 0x1d
	.string	"Temp"
	.byte	0x1
	.uahalf	0x221
	.uaword	0x113
	.uleb128 0x1d
	.string	"Delay"
	.byte	0x1
	.uahalf	0x222
	.uaword	0x1ade
	.uleb128 0x1d
	.string	"ExpectSbcuEadd"
	.byte	0x1
	.uahalf	0x223
	.uaword	0x113
	.uleb128 0x1d
	.string	"ExpectSbcuEdat"
	.byte	0x1
	.uahalf	0x224
	.uaword	0x113
	.uleb128 0x1d
	.string	"SpbTimeoutTst_kSbcuEconVal"
	.byte	0x1
	.uahalf	0x227
	.uaword	0x21c2
	.uleb128 0x1e
	.uaword	0x218f
	.uleb128 0x1f
	.uaword	.LASF17
	.byte	0x1
	.uahalf	0x232
	.uaword	0xba
	.byte	0
	.uleb128 0x1e
	.uaword	0x21a1
	.uleb128 0x1f
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x234
	.uaword	0xba
	.byte	0
	.uleb128 0x1e
	.uaword	0x21b3
	.uleb128 0x1f
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x2ab
	.uaword	0xba
	.byte	0
	.uleb128 0x20
	.uleb128 0x1f
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x2ae
	.uaword	0xba
	.byte	0
	.byte	0
	.uleb128 0xd
	.uaword	0x1f1a
	.uleb128 0x37
	.byte	0x1
	.string	"SpbTst_TimeoutTst"
	.byte	0x1
	.uahalf	0x13f
	.byte	0x1
	.uaword	0x4d8
	.uaword	.LFB18
	.uaword	.LFE18
	.uaword	.LLST37
	.uaword	0x24dd
	.uleb128 0x24
	.uaword	.LASF11
	.byte	0x1
	.uahalf	0x141
	.uaword	0x1ad9
	.uaword	.LLST38
	.uleb128 0x25
	.string	"TstSeed"
	.byte	0x1
	.uahalf	0x142
	.uaword	0x24dd
	.uaword	.LLST39
	.uleb128 0x24
	.uaword	.LASF15
	.byte	0x1
	.uahalf	0x143
	.uaword	0x1f0f
	.uaword	.LLST40
	.uleb128 0x26
	.uaword	.LASF10
	.byte	0x1
	.uahalf	0x146
	.uaword	0x4d8
	.uaword	.LLST41
	.uleb128 0x27
	.string	"TmpRes1"
	.byte	0x1
	.uahalf	0x147
	.uaword	0x4d8
	.uaword	.LLST42
	.uleb128 0x27
	.string	"TmpRes2"
	.byte	0x1
	.uahalf	0x148
	.uaword	0x4d8
	.uaword	.LLST43
	.uleb128 0x38
	.uaword	.LASF9
	.byte	0x1
	.uahalf	0x14a
	.uaword	0x728
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.uaword	0x1980
	.uaword	.LBB278
	.uaword	.LBE278
	.byte	0x1
	.uahalf	0x14f
	.uaword	0x22a5
	.uleb128 0x2c
	.uaword	0x19a1
	.uaword	.LLST44
	.uleb128 0x39
	.uaword	0x1997
	.byte	0x1d
	.uleb128 0x2d
	.uaword	.LBB279
	.uaword	.LBE279
	.uleb128 0x2e
	.uaword	0x19ab
	.uaword	.LLST45
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uaword	0x1980
	.uaword	.LBB280
	.uaword	.LBE280
	.byte	0x1
	.uahalf	0x16f
	.uaword	0x22df
	.uleb128 0x2c
	.uaword	0x19a1
	.uaword	.LLST46
	.uleb128 0x2c
	.uaword	0x1997
	.uaword	.LLST47
	.uleb128 0x2d
	.uaword	.LBB281
	.uaword	.LBE281
	.uleb128 0x2e
	.uaword	0x19ab
	.uaword	.LLST48
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uaword	0x200b
	.uaword	.LBB282
	.uaword	.Ldebug_ranges0+0x80
	.byte	0x1
	.uahalf	0x155
	.uaword	0x232f
	.uleb128 0x33
	.uaword	0x202d
	.byte	0x1
	.byte	0x6a
	.uleb128 0x31
	.uaword	.Ldebug_ranges0+0x98
	.uleb128 0x2e
	.uaword	0x2039
	.uaword	.LLST49
	.uleb128 0x2e
	.uaword	0x2045
	.uaword	.LLST50
	.uleb128 0x2e
	.uaword	0x2051
	.uaword	.LLST51
	.uleb128 0x2d
	.uaword	.LBB284
	.uaword	.LBE284
	.uleb128 0x2e
	.uaword	0x205e
	.uaword	.LLST52
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uaword	0x19b8
	.uaword	.LBB286
	.uaword	.LBE286
	.byte	0x1
	.uahalf	0x15d
	.uaword	0x23a0
	.uleb128 0x2c
	.uaword	0x19dd
	.uaword	.LLST53
	.uleb128 0x2d
	.uaword	.LBB287
	.uaword	.LBE287
	.uleb128 0x2e
	.uaword	0x19e9
	.uaword	.LLST54
	.uleb128 0x2e
	.uaword	0x19f5
	.uaword	.LLST55
	.uleb128 0x2a
	.uaword	0x18ab
	.uaword	.LBB288
	.uaword	.LBE288
	.byte	0x1
	.uahalf	0x311
	.uleb128 0x29
	.uaword	.LBB290
	.uaword	.LBE290
	.uaword	0x238e
	.uleb128 0x2e
	.uaword	0x1a0b
	.uaword	.LLST56
	.byte	0
	.uleb128 0x2a
	.uaword	0x18b7
	.uaword	.LBB291
	.uaword	.LBE291
	.byte	0x1
	.uahalf	0x311
	.byte	0
	.byte	0
	.uleb128 0x3a
	.uaword	0x2077
	.uaword	.LBB294
	.uaword	.LBE294
	.byte	0x1
	.uahalf	0x15a
	.uleb128 0x2d
	.uaword	.LBB295
	.uaword	.LBE295
	.uleb128 0x2e
	.uaword	0x209c
	.uaword	.LLST57
	.uleb128 0x2e
	.uaword	0x20a8
	.uaword	.LLST58
	.uleb128 0x2e
	.uaword	0x20bf
	.uaword	.LLST59
	.uleb128 0x2e
	.uaword	0x20cf
	.uaword	.LLST60
	.uleb128 0x2e
	.uaword	0x20dd
	.uaword	.LLST61
	.uleb128 0x2e
	.uaword	0x20e9
	.uaword	.LLST62
	.uleb128 0x2e
	.uaword	0x20f8
	.uaword	.LLST63
	.uleb128 0x2e
	.uaword	0x2111
	.uaword	.LLST64
	.uleb128 0x2e
	.uaword	0x211e
	.uaword	.LLST65
	.uleb128 0x2e
	.uaword	0x212c
	.uaword	.LLST66
	.uleb128 0x2e
	.uaword	0x2143
	.uaword	.LLST67
	.uleb128 0x34
	.uaword	0x215a
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.uaword	.LBB296
	.uaword	.LBE296
	.uaword	0x243b
	.uleb128 0x2e
	.uaword	0x2182
	.uaword	.LLST68
	.byte	0
	.uleb128 0x2a
	.uaword	0x18ab
	.uaword	.LBB297
	.uaword	.LBE297
	.byte	0x1
	.uahalf	0x234
	.uleb128 0x29
	.uaword	.LBB299
	.uaword	.LBE299
	.uaword	0x2462
	.uleb128 0x2e
	.uaword	0x2194
	.uaword	.LLST69
	.byte	0
	.uleb128 0x2a
	.uaword	0x18b7
	.uaword	.LBB300
	.uaword	.LBE300
	.byte	0x1
	.uahalf	0x234
	.uleb128 0x2a
	.uaword	0x18ab
	.uaword	.LBB302
	.uaword	.LBE302
	.byte	0x1
	.uahalf	0x2ab
	.uleb128 0x29
	.uaword	.LBB304
	.uaword	.LBE304
	.uaword	0x2496
	.uleb128 0x36
	.uaword	0x21a6
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uaword	0x18b7
	.uaword	.LBB305
	.uaword	.LBE305
	.byte	0x1
	.uahalf	0x2ab
	.uleb128 0x2a
	.uaword	0x18ab
	.uaword	.LBB307
	.uaword	.LBE307
	.byte	0x1
	.uahalf	0x2ae
	.uleb128 0x29
	.uaword	.LBB309
	.uaword	.LBE309
	.uaword	0x24ca
	.uleb128 0x36
	.uaword	0x21b4
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uaword	0x18b7
	.uaword	.LBB310
	.uaword	.LBE310
	.byte	0x1
	.uahalf	0x2ae
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.uaword	0xfa
	.uleb128 0x1b
	.string	"SpbTst_lInit"
	.byte	0x1
	.uahalf	0x43a
	.byte	0x1
	.uaword	0x4d8
	.byte	0x1
	.uaword	0x256e
	.uleb128 0x22
	.uaword	.LASF19
	.byte	0x1
	.uahalf	0x43c
	.uaword	0x256e
	.uleb128 0x22
	.uaword	.LASF11
	.byte	0x1
	.uahalf	0x43d
	.uaword	0x1ad9
	.uleb128 0x22
	.uaword	.LASF12
	.byte	0x1
	.uahalf	0x43e
	.uaword	0xfa
	.uleb128 0x1f
	.uaword	.LASF10
	.byte	0x1
	.uahalf	0x441
	.uaword	0x4d8
	.uleb128 0x1f
	.uaword	.LASF13
	.byte	0x1
	.uahalf	0x442
	.uaword	0x113
	.uleb128 0x1f
	.uaword	.LASF18
	.byte	0x1
	.uahalf	0x443
	.uaword	0x537
	.uleb128 0x1f
	.uaword	.LASF14
	.byte	0x1
	.uahalf	0x444
	.uaword	0x1ade
	.uleb128 0x1d
	.string	"Dummy"
	.byte	0x1
	.uahalf	0x445
	.uaword	0x1ade
	.uleb128 0x20
	.uleb128 0x1f
	.uaword	.LASF17
	.byte	0x1
	.uahalf	0x471
	.uaword	0xba
	.byte	0
	.byte	0
	.uleb128 0xd
	.uaword	0x2573
	.uleb128 0x9
	.byte	0x4
	.uaword	0x6a0
	.uleb128 0x1b
	.string	"SpbTst_lRestore"
	.byte	0x1
	.uahalf	0x4ea
	.byte	0x1
	.uaword	0x4d8
	.byte	0x1
	.uaword	0x2624
	.uleb128 0x22
	.uaword	.LASF19
	.byte	0x1
	.uahalf	0x4ec
	.uaword	0x2624
	.uleb128 0x22
	.uaword	.LASF11
	.byte	0x1
	.uahalf	0x4ed
	.uaword	0x1ad9
	.uleb128 0x22
	.uaword	.LASF12
	.byte	0x1
	.uahalf	0x4ee
	.uaword	0xfa
	.uleb128 0x1f
	.uaword	.LASF10
	.byte	0x1
	.uahalf	0x4f1
	.uaword	0x4d8
	.uleb128 0x1d
	.string	"ResSmuAlmAct1"
	.byte	0x1
	.uahalf	0x4f2
	.uaword	0x130
	.uleb128 0x1d
	.string	"ResSmuAlmAct2"
	.byte	0x1
	.uahalf	0x4f3
	.uaword	0x130
	.uleb128 0x1d
	.string	"ResSmuAlmAct3"
	.byte	0x1
	.uahalf	0x4f4
	.uaword	0x130
	.uleb128 0x1f
	.uaword	.LASF16
	.byte	0x1
	.uahalf	0x4f5
	.uaword	0x1ade
	.uleb128 0x20
	.uleb128 0x1f
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x4fc
	.uaword	0xba
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.uaword	0x262a
	.uleb128 0xd
	.uaword	0x6a0
	.uleb128 0x37
	.byte	0x1
	.string	"SpbTst_PeripheralRegAccProtTst"
	.byte	0x1
	.uahalf	0x383
	.byte	0x1
	.uaword	0x4d8
	.uaword	.LFB22
	.uaword	.LFE22
	.uaword	.LLST70
	.uaword	0x2882
	.uleb128 0x24
	.uaword	.LASF11
	.byte	0x1
	.uahalf	0x385
	.uaword	0x1ad9
	.uaword	.LLST71
	.uleb128 0x25
	.string	"TstSeed"
	.byte	0x1
	.uahalf	0x386
	.uaword	0x24dd
	.uaword	.LLST72
	.uleb128 0x24
	.uaword	.LASF15
	.byte	0x1
	.uahalf	0x387
	.uaword	0x1f0f
	.uaword	.LLST73
	.uleb128 0x38
	.uaword	.LASF10
	.byte	0x1
	.uahalf	0x38a
	.uaword	0x2882
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x27
	.string	"TmpRes1"
	.byte	0x1
	.uahalf	0x38b
	.uaword	0x4d8
	.uaword	.LLST74
	.uleb128 0x27
	.string	"TmpRes2"
	.byte	0x1
	.uahalf	0x38c
	.uaword	0x4d8
	.uaword	.LLST75
	.uleb128 0x26
	.uaword	.LASF12
	.byte	0x1
	.uahalf	0x38d
	.uaword	0x2887
	.uaword	.LLST76
	.uleb128 0x28
	.string	"SpbRegAccProtTst_BackupData"
	.byte	0x1
	.uahalf	0x390
	.uaword	0x6a0
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2b
	.uaword	0x1980
	.uaword	.LBB326
	.uaword	.LBE326
	.byte	0x1
	.uahalf	0x393
	.uaword	0x2741
	.uleb128 0x2c
	.uaword	0x19a1
	.uaword	.LLST77
	.uleb128 0x39
	.uaword	0x1997
	.byte	0x1c
	.uleb128 0x2d
	.uaword	.LBB327
	.uaword	.LBE327
	.uleb128 0x2e
	.uaword	0x19ab
	.uaword	.LLST78
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uaword	0x1980
	.uaword	.LBB328
	.uaword	.Ldebug_ranges0+0xb0
	.byte	0x1
	.uahalf	0x3c6
	.uaword	0x2777
	.uleb128 0x2c
	.uaword	0x19a1
	.uaword	.LLST79
	.uleb128 0x2c
	.uaword	0x1997
	.uaword	.LLST80
	.uleb128 0x31
	.uaword	.Ldebug_ranges0+0xd0
	.uleb128 0x2e
	.uaword	0x19ab
	.uaword	.LLST81
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uaword	0x24e2
	.uaword	.LBB333
	.uaword	.Ldebug_ranges0+0xf0
	.byte	0x1
	.uahalf	0x3a3
	.uaword	0x27eb
	.uleb128 0x2c
	.uaword	0x2515
	.uaword	.LLST82
	.uleb128 0x2c
	.uaword	0x2509
	.uaword	.LLST83
	.uleb128 0x2c
	.uaword	0x24fd
	.uaword	.LLST84
	.uleb128 0x31
	.uaword	.Ldebug_ranges0+0x120
	.uleb128 0x2e
	.uaword	0x2521
	.uaword	.LLST85
	.uleb128 0x34
	.uaword	0x252d
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x34
	.uaword	0x2539
	.byte	0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x2e
	.uaword	0x2545
	.uaword	.LLST86
	.uleb128 0x2e
	.uaword	0x2551
	.uaword	.LLST87
	.uleb128 0x2d
	.uaword	.LBB335
	.uaword	.LBE335
	.uleb128 0x2e
	.uaword	0x2560
	.uaword	.LLST88
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3b
	.uaword	0x2579
	.uaword	.LBB341
	.uaword	.Ldebug_ranges0+0x150
	.byte	0x1
	.uahalf	0x3b3
	.uleb128 0x2c
	.uaword	0x25af
	.uaword	.LLST89
	.uleb128 0x2c
	.uaword	0x25a3
	.uaword	.LLST90
	.uleb128 0x2c
	.uaword	0x2597
	.uaword	.LLST91
	.uleb128 0x31
	.uaword	.Ldebug_ranges0+0x170
	.uleb128 0x2e
	.uaword	0x25bb
	.uaword	.LLST92
	.uleb128 0x2e
	.uaword	0x25c7
	.uaword	.LLST93
	.uleb128 0x2e
	.uaword	0x25dd
	.uaword	.LLST94
	.uleb128 0x2e
	.uaword	0x25f3
	.uaword	.LLST95
	.uleb128 0x2e
	.uaword	0x2609
	.uaword	.LLST96
	.uleb128 0x2a
	.uaword	0x18ab
	.uaword	.LBB343
	.uaword	.LBE343
	.byte	0x1
	.uahalf	0x4fc
	.uleb128 0x29
	.uaword	.LBB345
	.uaword	.LBE345
	.uaword	0x286f
	.uleb128 0x2e
	.uaword	0x2616
	.uaword	.LLST97
	.byte	0
	.uleb128 0x2a
	.uaword	0x18b7
	.uaword	.LBB346
	.uaword	.LBE346
	.byte	0x1
	.uahalf	0x4fc
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xa
	.uaword	0x4d8
	.uleb128 0xa
	.uaword	0xfa
	.uleb128 0x3c
	.string	"SpbRegAccProtTst_DaeTrapCount"
	.byte	0x1
	.byte	0xb4
	.uaword	0x1ade
	.byte	0x5
	.byte	0x3
	.uaword	SpbRegAccProtTst_DaeTrapCount
	.uleb128 0x3c
	.string	"SpbRegAccProtTst_ExpectedTrap"
	.byte	0x1
	.byte	0xb5
	.uaword	0x1ade
	.byte	0x5
	.byte	0x3
	.uaword	SpbRegAccProtTst_ExpectedTrap
	.uleb128 0x3c
	.string	"SpbTimeoutTst_DseTrapCount"
	.byte	0x1
	.byte	0xb6
	.uaword	0x1ade
	.byte	0x5
	.byte	0x3
	.uaword	SpbTimeoutTst_DseTrapCount
	.uleb128 0x3c
	.string	"SpbTimeoutTst_ExpectedTrap"
	.byte	0x1
	.byte	0xb7
	.uaword	0x1ade
	.byte	0x5
	.byte	0x3
	.uaword	SpbTimeoutTst_ExpectedTrap
	.uleb128 0x7
	.uaword	0x5cd
	.uaword	0x2942
	.uleb128 0x8
	.uaword	0xdd
	.byte	0
	.byte	0
	.uleb128 0x3d
	.string	"SpbTst_ConfigRoot"
	.byte	0xa
	.byte	0x64
	.uaword	0x295d
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.uaword	0x2932
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
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x2e
	.byte	0x1
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
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x24
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2c
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x32
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
	.uleb128 0x33
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x36
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x37
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
	.uleb128 0x38
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x39
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.uaword	.LFB26
	.uaword	.LCFI0
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI0
	.uaword	.LFE26
	.uahalf	0x2
	.byte	0x8a
	.sleb128 48
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL2-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL2-1
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL14
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL0
	.uaword	.LVL2-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL2-1
	.uaword	.LFE26
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL0
	.uaword	.LVL2-1
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL0
	.uaword	.LVL2-1
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL0
	.uaword	.LVL10
	.uahalf	0x6
	.byte	0xc
	.uaword	0x1c010a
	.byte	0x9f
	.uaword	.LVL10
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL14
	.uaword	.LVL37
	.uahalf	0x6
	.byte	0xc
	.uaword	0x1c010a
	.byte	0x9f
	.uaword	.LVL41
	.uaword	.LVL42
	.uahalf	0x6
	.byte	0xc
	.uaword	0x1c010a
	.byte	0x9f
	.uaword	.LVL45
	.uaword	.LVL57
	.uahalf	0x6
	.byte	0xc
	.uaword	0x1c010a
	.byte	0x9f
	.uaword	.LVL60
	.uaword	.LFE26
	.uahalf	0x6
	.byte	0xc
	.uaword	0x1c010a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL2
	.uaword	.LVL7-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL14
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL9
	.uaword	.LVL14
	.uahalf	0x2
	.byte	0x91
	.sleb128 -20
	.uaword	.LVL17
	.uaword	.LFE26
	.uahalf	0x2
	.byte	0x91
	.sleb128 -20
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL6
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL16
	.uaword	.LVL17
	.uahalf	0x2
	.byte	0x8f
	.sleb128 -32
	.uaword	.LVL17
	.uaword	.LVL22
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL51
	.uaword	.LVL53
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL3
	.uaword	.LVL5
	.uahalf	0x7
	.byte	0x73
	.sleb128 0
	.byte	0xb
	.uahalf	0xbfff
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL14
	.uaword	.LVL15
	.uahalf	0x7
	.byte	0x73
	.sleb128 0
	.byte	0xb
	.uahalf	0xbfff
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL18
	.uaword	.LVL20
	.uahalf	0x7
	.byte	0x72
	.sleb128 0
	.byte	0xb
	.uahalf	0xbfff
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL23
	.uaword	.LVL25
	.uahalf	0x7
	.byte	0x7f
	.sleb128 0
	.byte	0xa
	.uahalf	0x4000
	.byte	0x21
	.byte	0x9f
	.uaword	.LVL25
	.uaword	.LVL27
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL48
	.uaword	.LVL50
	.uahalf	0x7
	.byte	0x7f
	.sleb128 0
	.byte	0xb
	.uahalf	0xbfff
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL50
	.uaword	.LVL51
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL51
	.uaword	.LVL52
	.uahalf	0x7
	.byte	0x72
	.sleb128 0
	.byte	0xb
	.uahalf	0xbfff
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL10
	.uaword	.LVL14
	.uahalf	0x2
	.byte	0x91
	.sleb128 -16
	.uaword	.LVL39
	.uaword	.LVL41
	.uahalf	0x2
	.byte	0x91
	.sleb128 -16
	.uaword	.LVL44
	.uaword	.LVL45
	.uahalf	0x2
	.byte	0x91
	.sleb128 -16
	.uaword	.LVL57
	.uaword	.LVL60
	.uahalf	0x2
	.byte	0x91
	.sleb128 -16
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL3
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL14
	.uaword	.LVL15
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x7
	.byte	0x73
	.sleb128 0
	.byte	0xa
	.uahalf	0x4000
	.byte	0x21
	.byte	0x9f
	.uaword	.LVL5
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL11
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL11
	.uaword	.LVL14
	.uahalf	0x2
	.byte	0x8c
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL13
	.uaword	.LVL14
	.uahalf	0x2
	.byte	0x8c
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL14
	.uaword	.LVL15
	.uahalf	0x7
	.byte	0x73
	.sleb128 0
	.byte	0xb
	.uahalf	0xbfff
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL15
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL18
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL51
	.uaword	.LVL52
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL19
	.uaword	.LVL20
	.uahalf	0x7
	.byte	0x72
	.sleb128 0
	.byte	0xb
	.uahalf	0xbfff
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL23
	.uaword	.LVL25
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL24
	.uaword	.LVL25
	.uahalf	0x7
	.byte	0x7f
	.sleb128 0
	.byte	0xa
	.uahalf	0x4000
	.byte	0x21
	.byte	0x9f
	.uaword	.LVL25
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL10
	.uaword	.LVL14
	.uahalf	0x2
	.byte	0x91
	.sleb128 -8
	.uaword	.LVL28
	.uaword	.LVL47
	.uahalf	0x2
	.byte	0x91
	.sleb128 -8
	.uaword	.LVL53
	.uaword	.LFE26
	.uahalf	0x2
	.byte	0x91
	.sleb128 -8
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL28
	.uaword	.LVL30
	.uahalf	0x4
	.byte	0xa
	.uahalf	0x7d0
	.byte	0x9f
	.uaword	.LVL30
	.uaword	.LVL38
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL41
	.uaword	.LVL43
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL45
	.uaword	.LVL46
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL46
	.uaword	.LVL47
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL53
	.uaword	.LVL57
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL60
	.uaword	.LFE26
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL28
	.uaword	.LVL30
	.uahalf	0x6
	.byte	0xc
	.uaword	0x1c010a
	.byte	0x9f
	.uaword	.LVL37
	.uaword	.LVL41
	.uahalf	0x6
	.byte	0xc
	.uaword	0x1c01ff
	.byte	0x9f
	.uaword	.LVL42
	.uaword	.LVL45
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL46
	.uaword	.LVL47
	.uahalf	0x6
	.byte	0xc
	.uaword	0x1c020e
	.byte	0x9f
	.uaword	.LVL57
	.uaword	.LVL60
	.uahalf	0x6
	.byte	0xc
	.uaword	0x1c01ff
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL28
	.uaword	.LVL33
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL33
	.uaword	.LVL36
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL41
	.uaword	.LVL42
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL45
	.uaword	.LVL47
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL53
	.uaword	.LVL55
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL55
	.uaword	.LVL56
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL56
	.uaword	.LVL57
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL60
	.uaword	.LFE26
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL28
	.uaword	.LVL34
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL34
	.uaword	.LVL41
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL41
	.uaword	.LVL42
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL45
	.uaword	.LVL47
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL53
	.uaword	.LVL55
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL55
	.uaword	.LVL57
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL57
	.uaword	.LVL60
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL60
	.uaword	.LVL61
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL61
	.uaword	.LFE26
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL28
	.uaword	.LVL35
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL35
	.uaword	.LVL40
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL41
	.uaword	.LVL42
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL45
	.uaword	.LVL47
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL53
	.uaword	.LVL54
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL54
	.uaword	.LVL55
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL55
	.uaword	.LVL57
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL57
	.uaword	.LVL60
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL60
	.uaword	.LFE26
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL10
	.uaword	.LVL14
	.uahalf	0x2
	.byte	0x91
	.sleb128 -4
	.uaword	.LVL29
	.uaword	.LVL30
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL30
	.uaword	.LVL47
	.uahalf	0x2
	.byte	0x91
	.sleb128 -4
	.uaword	.LVL53
	.uaword	.LFE26
	.uahalf	0x2
	.byte	0x91
	.sleb128 -4
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL48
	.uaword	.LVL50
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL49
	.uaword	.LVL50
	.uahalf	0x7
	.byte	0x7f
	.sleb128 0
	.byte	0xb
	.uahalf	0xbfff
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL50
	.uaword	.LVL51
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL51
	.uaword	.LVL52
	.uahalf	0x7
	.byte	0x72
	.sleb128 0
	.byte	0xa
	.uahalf	0x4000
	.byte	0x21
	.byte	0x9f
	.uaword	.LVL52
	.uaword	.LVL53
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST31:
	.uaword	.LVL58
	.uaword	.LVL60
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST32:
	.uaword	.LVL59
	.uaword	.LVL60
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST33:
	.uaword	.LVL62
	.uaword	.LVL66
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL66
	.uaword	.LVL67
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL67
	.uaword	.LVL72
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL72
	.uaword	.LFE23
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST34:
	.uaword	.LVL63
	.uaword	.LVL65
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL70
	.uaword	.LVL71
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST35:
	.uaword	.LVL68
	.uaword	.LVL70
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST36:
	.uaword	.LVL69
	.uaword	.LVL70
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST37:
	.uaword	.LFB18
	.uaword	.LCFI1
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI1
	.uaword	.LFE18
	.uahalf	0x2
	.byte	0x8a
	.sleb128 48
	.uaword	0
	.uaword	0
.LLST38:
	.uaword	.LVL74
	.uaword	.LVL76-1
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST39:
	.uaword	.LVL74
	.uaword	.LVL75
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST40:
	.uaword	.LVL74
	.uaword	.LVL76-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL76-1
	.uaword	.LFE18
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST41:
	.uaword	.LVL74
	.uaword	.LVL77
	.uahalf	0x6
	.byte	0xc
	.uaword	0x1d010a
	.byte	0x9f
	.uaword	.LVL77
	.uaword	.LVL80
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL80
	.uaword	.LFE18
	.uahalf	0x6
	.byte	0xc
	.uaword	0x1d010a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST42:
	.uaword	.LVL74
	.uaword	.LVL77
	.uahalf	0x6
	.byte	0xc
	.uaword	0x1d010a
	.byte	0x9f
	.uaword	.LVL80
	.uaword	.LVL86
	.uahalf	0x6
	.byte	0xc
	.uaword	0x1d010a
	.byte	0x9f
	.uaword	.LVL86
	.uaword	.LVL93
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL93
	.uaword	.LVL96
	.uahalf	0x6
	.byte	0xc
	.uaword	0x1d010a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST43:
	.uaword	.LVL74
	.uaword	.LVL77
	.uahalf	0x6
	.byte	0xc
	.uaword	0x1d010a
	.byte	0x9f
	.uaword	.LVL80
	.uaword	.LVL92
	.uahalf	0x6
	.byte	0xc
	.uaword	0x1d010a
	.byte	0x9f
	.uaword	.LVL93
	.uaword	.LFE18
	.uahalf	0x6
	.byte	0xc
	.uaword	0x1d010a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST44:
	.uaword	.LVL74
	.uaword	.LVL75
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
.LLST45:
	.uaword	.LVL75
	.uaword	.LVL76-1
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST46:
	.uaword	.LVL77
	.uaword	.LVL80
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST47:
	.uaword	.LVL77
	.uaword	.LVL80
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST48:
	.uaword	.LVL78
	.uaword	.LVL79
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL79
	.uaword	.LVL80
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST49:
	.uaword	.LVL80
	.uaword	.LVL84
	.uahalf	0x6
	.byte	0xc
	.uaword	0x1d010a
	.byte	0x9f
	.uaword	.LVL84
	.uaword	.LVL86
	.uahalf	0x6
	.byte	0xc
	.uaword	0x1d0210
	.byte	0x9f
	.uaword	.LVL93
	.uaword	.LVL95
	.uahalf	0x6
	.byte	0xc
	.uaword	0x1d010a
	.byte	0x9f
	.uaword	.LVL95
	.uaword	.LVL96
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL96
	.uaword	.LFE18
	.uahalf	0x6
	.byte	0xc
	.uaword	0x1d01ff
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST50:
	.uaword	.LVL77
	.uaword	.LVL80
	.uahalf	0x2
	.byte	0x91
	.sleb128 -12
	.uaword	.LVL81
	.uaword	.LFE18
	.uahalf	0x2
	.byte	0x91
	.sleb128 -12
	.uaword	0
	.uaword	0
.LLST51:
	.uaword	.LVL77
	.uaword	.LVL80
	.uahalf	0x2
	.byte	0x91
	.sleb128 -4
	.uaword	.LVL82
	.uaword	.LFE18
	.uahalf	0x2
	.byte	0x91
	.sleb128 -4
	.uaword	0
	.uaword	0
.LLST52:
	.uaword	.LVL83
	.uaword	.LVL85
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL93
	.uaword	.LVL94
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST53:
	.uaword	.LVL86
	.uaword	.LVL93
	.uahalf	0x1
	.byte	0x6a
	.uaword	0
	.uaword	0
.LLST54:
	.uaword	.LVL86
	.uaword	.LVL92
	.uahalf	0x6
	.byte	0xc
	.uaword	0x1d010a
	.byte	0x9f
	.uaword	.LVL92
	.uaword	.LVL93
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST55:
	.uaword	.LVL90
	.uaword	.LVL91-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL91-1
	.uaword	.LVL93
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST56:
	.uaword	.LVL87
	.uaword	.LVL88-1
	.uahalf	0x2
	.byte	0x91
	.sleb128 -28
	.uaword	.LVL88-1
	.uaword	.LVL89
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST57:
	.uaword	.LVL96
	.uaword	.LVL113
	.uahalf	0x6
	.byte	0xc
	.uaword	0x1d010a
	.byte	0x9f
	.uaword	.LVL113
	.uaword	.LVL116
	.uahalf	0x6
	.byte	0xc
	.uaword	0x1d0106
	.byte	0x9f
	.uaword	.LVL116
	.uaword	.LVL117
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL117
	.uaword	.LVL125
	.uahalf	0x6
	.byte	0xc
	.uaword	0x1d010a
	.byte	0x9f
	.uaword	.LVL125
	.uaword	.LVL129
	.uahalf	0x6
	.byte	0xc
	.uaword	0x1d01ff
	.byte	0x9f
	.uaword	.LVL129
	.uaword	.LVL130
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL130
	.uaword	.LVL131
	.uahalf	0x6
	.byte	0xc
	.uaword	0x1d01ff
	.byte	0x9f
	.uaword	.LVL131
	.uaword	.LFE18
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST58:
	.uaword	.LVL96
	.uaword	.LVL116
	.uahalf	0x4
	.byte	0xa
	.uahalf	0x7d0
	.byte	0x9f
	.uaword	.LVL117
	.uaword	.LVL126
	.uahalf	0x4
	.byte	0xa
	.uahalf	0x7d0
	.byte	0x9f
	.uaword	.LVL127
	.uaword	.LVL128
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST59:
	.uaword	.LVL96
	.uaword	.LVL104
	.uahalf	0x4
	.byte	0xa
	.uahalf	0x100
	.byte	0x9f
	.uaword	.LVL117
	.uaword	.LVL118
	.uahalf	0x4
	.byte	0xa
	.uahalf	0x100
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST60:
	.uaword	.LVL77
	.uaword	.LVL80
	.uahalf	0x2
	.byte	0x91
	.sleb128 -12
	.uaword	.LVL86
	.uaword	.LVL93
	.uahalf	0x2
	.byte	0x91
	.sleb128 -12
	.uaword	.LVL108
	.uaword	.LVL114
	.uahalf	0x2
	.byte	0x91
	.sleb128 -12
	.uaword	.LVL115
	.uaword	.LVL117
	.uahalf	0x2
	.byte	0x91
	.sleb128 -12
	.uaword	.LVL119
	.uaword	.LVL121
	.uahalf	0x2
	.byte	0x91
	.sleb128 -12
	.uaword	.LVL122
	.uaword	.LFE18
	.uahalf	0x2
	.byte	0x91
	.sleb128 -12
	.uaword	0
	.uaword	0
.LLST61:
	.uaword	.LVL77
	.uaword	.LVL80
	.uahalf	0x2
	.byte	0x91
	.sleb128 -8
	.uaword	.LVL86
	.uaword	.LVL93
	.uahalf	0x2
	.byte	0x91
	.sleb128 -8
	.uaword	.LVL97
	.uaword	.LFE18
	.uahalf	0x2
	.byte	0x91
	.sleb128 -8
	.uaword	0
	.uaword	0
.LLST62:
	.uaword	.LVL99
	.uaword	.LVL104
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL104
	.uaword	.LFE18
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST63:
	.uaword	.LVL105
	.uaword	.LVL116
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL119
	.uaword	.LVL120
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST64:
	.uaword	.LVL100
	.uaword	.LVL102
	.uahalf	0x7
	.byte	0x7f
	.sleb128 0
	.byte	0xa
	.uahalf	0x4000
	.byte	0x21
	.byte	0x9f
	.uaword	.LVL102
	.uaword	.LVL103
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST65:
	.uaword	.LVL77
	.uaword	.LVL80
	.uahalf	0x2
	.byte	0x91
	.sleb128 -4
	.uaword	.LVL86
	.uaword	.LVL93
	.uahalf	0x2
	.byte	0x91
	.sleb128 -4
	.uaword	.LVL98
	.uaword	.LVL110
	.uahalf	0x2
	.byte	0x91
	.sleb128 -4
	.uaword	.LVL111
	.uaword	.LVL112
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL112
	.uaword	.LFE18
	.uahalf	0x2
	.byte	0x91
	.sleb128 -4
	.uaword	0
	.uaword	0
.LLST66:
	.uaword	.LVL98
	.uaword	.LVL106
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL106
	.uaword	.LVL108
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0xf0061e10
	.uaword	.LVL108
	.uaword	.LVL109
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL117
	.uaword	.LVL119
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST67:
	.uaword	.LVL98
	.uaword	.LVL107
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL107
	.uaword	.LVL109
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL117
	.uaword	.LVL119
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST68:
	.uaword	.LVL100
	.uaword	.LVL102
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST69:
	.uaword	.LVL101
	.uaword	.LVL102
	.uahalf	0x7
	.byte	0x7f
	.sleb128 0
	.byte	0xa
	.uahalf	0x4000
	.byte	0x21
	.byte	0x9f
	.uaword	.LVL102
	.uaword	.LVL103
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST70:
	.uaword	.LFB22
	.uaword	.LCFI2
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI2
	.uaword	.LFE22
	.uahalf	0x2
	.byte	0x8a
	.sleb128 48
	.uaword	0
	.uaword	0
.LLST71:
	.uaword	.LVL132
	.uaword	.LVL138-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL138-1
	.uaword	.LVL139
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL142
	.uaword	.LVL144
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST72:
	.uaword	.LVL132
	.uaword	.LVL134
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST73:
	.uaword	.LVL132
	.uaword	.LVL138-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL138-1
	.uaword	.LFE22
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST74:
	.uaword	.LVL133
	.uaword	.LVL145
	.uahalf	0x6
	.byte	0xc
	.uaword	0x1c010a
	.byte	0x9f
	.uaword	.LVL162
	.uaword	.LVL178
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL187
	.uaword	.LVL189
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL197
	.uaword	.LVL198
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL198
	.uaword	.LVL199
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL199
	.uaword	.LVL200
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST75:
	.uaword	.LVL133
	.uaword	.LVL145
	.uahalf	0x6
	.byte	0xc
	.uaword	0x1c010a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST76:
	.uaword	.LVL143
	.uaword	.LVL179
	.uahalf	0x2
	.byte	0x91
	.sleb128 -1
	.uaword	.LVL179
	.uaword	.LVL180
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL180
	.uaword	.LFE22
	.uahalf	0x2
	.byte	0x91
	.sleb128 -1
	.uaword	0
	.uaword	0
.LLST77:
	.uaword	.LVL133
	.uaword	.LVL134
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
.LLST78:
	.uaword	.LVL134
	.uaword	.LVL136
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL136
	.uaword	.LVL138-1
	.uahalf	0x2
	.byte	0x84
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST79:
	.uaword	.LVL135
	.uaword	.LVL137
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL140
	.uaword	.LVL142
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL182
	.uaword	.LVL184
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST80:
	.uaword	.LVL135
	.uaword	.LVL136
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL136
	.uaword	.LVL137
	.uahalf	0x2
	.byte	0x84
	.sleb128 0
	.uaword	.LVL140
	.uaword	.LVL142
	.uahalf	0x2
	.byte	0x8d
	.sleb128 0
	.uaword	.LVL182
	.uaword	.LVL184
	.uahalf	0x2
	.byte	0x8d
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST81:
	.uaword	.LVL136
	.uaword	.LVL137
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL141
	.uaword	.LVL142
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL183
	.uaword	.LVL184
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST82:
	.uaword	.LVL146
	.uaword	.LVL150
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST83:
	.uaword	.LVL146
	.uaword	.LVL181
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL184
	.uaword	.LFE22
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST84:
	.uaword	.LVL146
	.uaword	.LVL181
	.uahalf	0x3
	.byte	0x91
	.sleb128 -44
	.byte	0x9f
	.uaword	.LVL184
	.uaword	.LFE22
	.uahalf	0x3
	.byte	0x91
	.sleb128 -44
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST85:
	.uaword	.LVL146
	.uaword	.LVL156
	.uahalf	0x6
	.byte	0xc
	.uaword	0x1c010a
	.byte	0x9f
	.uaword	.LVL156
	.uaword	.LVL157
	.uahalf	0x6
	.byte	0xc
	.uaword	0x1c0210
	.byte	0x9f
	.uaword	.LVL157
	.uaword	.LVL158
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL158
	.uaword	.LVL159
	.uahalf	0x6
	.byte	0xc
	.uaword	0x1c0210
	.byte	0x9f
	.uaword	.LVL159
	.uaword	.LVL160
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL160
	.uaword	.LVL161
	.uahalf	0x6
	.byte	0xc
	.uaword	0x1c0210
	.byte	0x9f
	.uaword	.LVL161
	.uaword	.LVL162
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL184
	.uaword	.LVL185
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL186
	.uaword	.LVL187
	.uahalf	0x6
	.byte	0xc
	.uaword	0x1c010a
	.byte	0x9f
	.uaword	.LVL189
	.uaword	.LVL190
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL191
	.uaword	.LVL194
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL195
	.uaword	.LVL196
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL196
	.uaword	.LVL200
	.uahalf	0x6
	.byte	0xc
	.uaword	0x1c01ff
	.byte	0x9f
	.uaword	.LVL200
	.uaword	.LVL201
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST86:
	.uaword	.LVL145
	.uaword	.LVL147
	.uahalf	0x2
	.byte	0x91
	.sleb128 -16
	.uaword	.LVL148
	.uaword	.LVL149
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL149
	.uaword	.LFE22
	.uahalf	0x2
	.byte	0x91
	.sleb128 -16
	.uaword	0
	.uaword	0
.LLST87:
	.uaword	.LVL145
	.uaword	.LVL151
	.uahalf	0x2
	.byte	0x91
	.sleb128 -12
	.uaword	.LVL151
	.uaword	.LVL152
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL152
	.uaword	.LFE22
	.uahalf	0x2
	.byte	0x91
	.sleb128 -12
	.uaword	0
	.uaword	0
.LLST88:
	.uaword	.LVL153
	.uaword	.LVL154
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL154
	.uaword	.LVL155-1
	.uahalf	0x2
	.byte	0x91
	.sleb128 -28
	.uaword	0
	.uaword	0
.LLST89:
	.uaword	.LVL163
	.uaword	.LVL164
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST90:
	.uaword	.LVL163
	.uaword	.LVL181
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL187
	.uaword	.LVL189
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST91:
	.uaword	.LVL163
	.uaword	.LVL181
	.uahalf	0x3
	.byte	0x91
	.sleb128 -44
	.byte	0x9f
	.uaword	.LVL187
	.uaword	.LVL189
	.uahalf	0x3
	.byte	0x91
	.sleb128 -44
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST92:
	.uaword	.LVL163
	.uaword	.LVL177
	.uahalf	0x6
	.byte	0xc
	.uaword	0x1c010a
	.byte	0x9f
	.uaword	.LVL177
	.uaword	.LVL181
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL187
	.uaword	.LVL188
	.uahalf	0x6
	.byte	0xc
	.uaword	0x1c010a
	.byte	0x9f
	.uaword	.LVL188
	.uaword	.LVL189
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST93:
	.uaword	.LVL170
	.uaword	.LVL171-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL171-1
	.uaword	.LVL176
	.uahalf	0x1
	.byte	0x5a
	.uaword	0
	.uaword	0
.LLST94:
	.uaword	.LVL172
	.uaword	.LVL173-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL173-1
	.uaword	.LVL181
	.uahalf	0x1
	.byte	0x5b
	.uaword	.LVL188
	.uaword	.LVL189
	.uahalf	0x1
	.byte	0x5b
	.uaword	0
	.uaword	0
.LLST95:
	.uaword	.LVL174
	.uaword	.LVL175-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL175-1
	.uaword	.LVL181
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL188
	.uaword	.LVL189
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST96:
	.uaword	.LVL145
	.uaword	.LVL165
	.uahalf	0x2
	.byte	0x91
	.sleb128 -8
	.uaword	.LVL166
	.uaword	.LVL167-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL167-1
	.uaword	.LFE22
	.uahalf	0x2
	.byte	0x91
	.sleb128 -8
	.uaword	0
	.uaword	0
.LLST97:
	.uaword	.LVL168
	.uaword	.LVL169-1
	.uahalf	0x2
	.byte	0x91
	.sleb128 -28
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
	.uaword	.LFB26
	.uaword	.LFE26-.LFB26
	.uaword	.LFB23
	.uaword	.LFE23-.LFB23
	.uaword	.LFB18
	.uaword	.LFE18-.LFB18
	.uaword	.LFB22
	.uaword	.LFE22-.LFB22
	.uaword	0
	.uaword	0
	.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB184
	.uaword	.LBE184
	.uaword	.LBB192
	.uaword	.LBE192
	.uaword	.LBB193
	.uaword	.LBE193
	.uaword	.LBB194
	.uaword	.LBE194
	.uaword	.LBB195
	.uaword	.LBE195
	.uaword	.LBB205
	.uaword	.LBE205
	.uaword	.LBB216
	.uaword	.LBE216
	.uaword	0
	.uaword	0
	.uaword	.LBB185
	.uaword	.LBE185
	.uaword	.LBB186
	.uaword	.LBE186
	.uaword	.LBB187
	.uaword	.LBE187
	.uaword	.LBB188
	.uaword	.LBE188
	.uaword	.LBB189
	.uaword	.LBE189
	.uaword	.LBB190
	.uaword	.LBE190
	.uaword	.LBB191
	.uaword	.LBE191
	.uaword	0
	.uaword	0
	.uaword	.LBB282
	.uaword	.LBE282
	.uaword	.LBB293
	.uaword	.LBE293
	.uaword	0
	.uaword	0
	.uaword	.LBB283
	.uaword	.LBE283
	.uaword	.LBB285
	.uaword	.LBE285
	.uaword	0
	.uaword	0
	.uaword	.LBB328
	.uaword	.LBE328
	.uaword	.LBB332
	.uaword	.LBE332
	.uaword	.LBB351
	.uaword	.LBE351
	.uaword	0
	.uaword	0
	.uaword	.LBB329
	.uaword	.LBE329
	.uaword	.LBB330
	.uaword	.LBE330
	.uaword	.LBB331
	.uaword	.LBE331
	.uaword	0
	.uaword	0
	.uaword	.LBB333
	.uaword	.LBE333
	.uaword	.LBB340
	.uaword	.LBE340
	.uaword	.LBB352
	.uaword	.LBE352
	.uaword	.LBB354
	.uaword	.LBE354
	.uaword	.LBB355
	.uaword	.LBE355
	.uaword	0
	.uaword	0
	.uaword	.LBB334
	.uaword	.LBE334
	.uaword	.LBB336
	.uaword	.LBE336
	.uaword	.LBB337
	.uaword	.LBE337
	.uaword	.LBB338
	.uaword	.LBE338
	.uaword	.LBB339
	.uaword	.LBE339
	.uaword	0
	.uaword	0
	.uaword	.LBB341
	.uaword	.LBE341
	.uaword	.LBB350
	.uaword	.LBE350
	.uaword	.LBB353
	.uaword	.LBE353
	.uaword	0
	.uaword	0
	.uaword	.LBB342
	.uaword	.LBE342
	.uaword	.LBB348
	.uaword	.LBE348
	.uaword	.LBB349
	.uaword	.LBE349
	.uaword	0
	.uaword	0
	.uaword	.LFB26
	.uaword	.LFE26
	.uaword	.LFB23
	.uaword	.LFE23
	.uaword	.LFB18
	.uaword	.LFE18
	.uaword	.LFB22
	.uaword	.LFE22
	.uaword	0
	.uaword	0
	.section .debug_line,"",@progbits
.Ldebug_line0:
	.section .debug_str,"",@progbits
.LASF14:
	.string	"SmuAlmChk"
.LASF16:
	.string	"IntAccEnb"
.LASF3:
	.string	"SpbTimeoutTst_BackupDataType"
.LASF17:
	.string	"__res"
.LASF10:
	.string	"Result"
.LASF5:
	.string	"reserved_5"
.LASF6:
	.string	"reserved_8"
.LASF4:
	.string	"reserved_17"
.LASF9:
	.string	"SpbTimeoutTst_BackupData"
.LASF1:
	.string	"SpbRegAccProtTst_BackupDataType"
.LASF8:
	.string	"__newval"
.LASF19:
	.string	"SpbRegAccProt_BackupData"
.LASF0:
	.string	"SpbTst_ConfigType"
.LASF11:
	.string	"ParamSetIndex"
.LASF15:
	.string	"TstSignature"
.LASF13:
	.string	"AlmStatus"
.LASF18:
	.string	"FspActionDummy"
.LASF2:
	.string	"AlmActionBUSpbBusError"
.LASF12:
	.string	"PeriCount"
.LASF7:
	.string	"reserved_21"
	.extern	TRAP_RegisterTrapHandler,STT_FUNC,0
	.extern	TRAP_UnregisterTrapHandler,STT_FUNC,0
	.extern	Smu_SetAlarmAction,STT_FUNC,0
	.extern	Smu_GetAlarmAction,STT_FUNC,0
	.extern	Smu_GetSmuState,STT_FUNC,0
	.extern	Smu_ClearAlarmStatus,STT_FUNC,0
	.extern	Smu_GetAlarmStatus,STT_FUNC,0
	.extern	Mcal_SetENDINIT,STT_FUNC,0
	.extern	Mcal_ResetENDINIT,STT_FUNC,0
	.extern	Mcal_SetSafetyENDINIT_Timed,STT_FUNC,0
	.extern	SpbTst_ConfigRoot,STT_OBJECT,12
	.extern	Mcal_ResetSafetyENDINIT_Timed,STT_FUNC,0
	.extern	Mcal_GetCoreId,STT_FUNC,0
	.ident	"GCC: (HighTec Release v4.6.3.0) 4.6.3 build on 2013-05-17"
