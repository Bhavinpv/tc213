	.file	"can_cfg.c"
.section .text,"ax",@progbits
.Ltext0:
	.section .text.MPU_QM_CODE,"ax",@progbits
	.align 3
	.global	Can_MessageInit
	.type	Can_MessageInit, @function
Can_MessageInit:
.LFB0:
	.file 1 "../30_Bsw/Mcal/Can/can_cfg.c"
	.loc 1 452 0
.LVL0:
	.loc 1 456 0
	mov	%d15, 0
	movh.a	%a2, hi:LvDc_Pma_ErrCode
	lea	%a15, [%a2] lo:LvDc_Pma_ErrCode
	st.w	[%a2] lo:LvDc_Pma_ErrCode, %d15
.LVL1:
	.loc 1 459 0
	movh.a	%a2, hi:DCDC_HTB_Measure
	.loc 1 456 0
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
	.loc 1 459 0
	lea	%a15, [%a2] lo:DCDC_HTB_Measure
	st.w	[%a15] 4, %d15
	st.w	[%a15] 8, %d15
	st.w	[%a15] 12, %d15
	st.w	[%a2] lo:DCDC_HTB_Measure, %d15
.LVL9:
	.loc 1 462 0
	movh.a	%a15, hi:LVDC_WakeUpSleepManagement
	.loc 1 465 0
	movh.a	%a2, hi:LVDC_SafetyMeasure
	.loc 1 462 0
	st.w	[%a15] lo:LVDC_WakeUpSleepManagement, %d15
	.loc 1 465 0
	st.w	[%a2] lo:LVDC_SafetyMeasure, %d15
.LVL10:
	lea	%a15, [%a2] lo:LVDC_SafetyMeasure
	.loc 1 468 0
	movh.a	%a2, hi:DCDC_Measure4
	.loc 1 465 0
	st.w	[%a15] 4, %d15
.LVL11:
	st.w	[%a15] 8, %d15
.LVL12:
	st.w	[%a15] 12, %d15
.LVL13:
	st.w	[%a15] 16, %d15
.LVL14:
	st.w	[%a15] 20, %d15
.LVL15:
	st.w	[%a15] 24, %d15
.LVL16:
	st.w	[%a15] 28, %d15
.LVL17:
	.loc 1 468 0
	st.w	[%a2] lo:DCDC_Measure4, %d15
.LVL18:
	lea	%a15, [%a2] lo:DCDC_Measure4
	.loc 1 471 0
	movh.a	%a2, hi:DCDC_Status_ErrCode
	.loc 1 468 0
	st.w	[%a15] 4, %d15
.LVL19:
	st.w	[%a15] 8, %d15
.LVL20:
	st.w	[%a15] 12, %d15
.LVL21:
	st.w	[%a15] 16, %d15
.LVL22:
	st.w	[%a15] 20, %d15
.LVL23:
	st.w	[%a15] 24, %d15
.LVL24:
	.loc 1 471 0
	lea	%a15, [%a2] lo:DCDC_Status_ErrCode
	st.w	[%a2] lo:DCDC_Status_ErrCode, %d15
.LVL25:
	st.w	[%a15] 4, %d15
.LVL26:
	.loc 1 474 0
	movh.a	%a2, hi:Parameter_DCDC_Com
	.loc 1 471 0
	st.w	[%a15] 8, %d15
.LVL27:
	st.w	[%a15] 12, %d15
.LVL28:
	st.w	[%a15] 16, %d15
.LVL29:
	st.w	[%a15] 20, %d15
.LVL30:
	st.w	[%a15] 24, %d15
.LVL31:
	st.w	[%a15] 28, %d15
.LVL32:
	.loc 1 474 0
	st.w	[%a2] lo:Parameter_DCDC_Com, %d15
.LVL33:
	lea	%a15, [%a2] lo:Parameter_DCDC_Com
	.loc 1 477 0
	movh.a	%a2, hi:DCDC_HSFB_Diag_Resp
	.loc 1 474 0
	st.w	[%a15] 4, %d15
.LVL34:
	st.w	[%a15] 8, %d15
.LVL35:
	st.w	[%a15] 12, %d15
.LVL36:
	st.w	[%a15] 16, %d15
.LVL37:
	st.w	[%a15] 20, %d15
.LVL38:
	st.w	[%a15] 24, %d15
.LVL39:
	st.w	[%a15] 28, %d15
.LVL40:
	.loc 1 477 0
	st.w	[%a2] lo:DCDC_HSFB_Diag_Resp, %d15
.LVL41:
	lea	%a15, [%a2] lo:DCDC_HSFB_Diag_Resp
	.loc 1 480 0
	movh.a	%a2, hi:DCDC_Measure2
	.loc 1 477 0
	st.w	[%a15] 4, %d15
.LVL42:
	st.w	[%a15] 8, %d15
.LVL43:
	st.w	[%a15] 12, %d15
.LVL44:
	st.w	[%a15] 16, %d15
.LVL45:
	st.w	[%a15] 20, %d15
.LVL46:
	st.w	[%a15] 24, %d15
.LVL47:
	st.w	[%a15] 28, %d15
.LVL48:
	.loc 1 480 0
	st.w	[%a2] lo:DCDC_Measure2, %d15
.LVL49:
	lea	%a15, [%a2] lo:DCDC_Measure2
	.loc 1 483 0
	movh.a	%a2, hi:LvDc_Pma_ErrSrc
	.loc 1 480 0
	st.w	[%a15] 4, %d15
.LVL50:
	st.w	[%a15] 8, %d15
.LVL51:
	st.w	[%a15] 12, %d15
.LVL52:
	st.w	[%a15] 16, %d15
.LVL53:
	st.w	[%a15] 20, %d15
.LVL54:
	st.w	[%a15] 24, %d15
.LVL55:
	st.w	[%a15] 28, %d15
.LVL56:
	.loc 1 483 0
	lea	%a15, [%a2] lo:LvDc_Pma_ErrSrc
	st.w	[%a2] lo:LvDc_Pma_ErrSrc, %d15
.LVL57:
	st.w	[%a15] 4, %d15
.LVL58:
	.loc 1 486 0
	movh.a	%a2, hi:DcDc_Scope1
	.loc 1 483 0
	st.w	[%a15] 8, %d15
.LVL59:
	st.w	[%a15] 12, %d15
.LVL60:
	st.w	[%a15] 16, %d15
.LVL61:
	st.w	[%a15] 20, %d15
.LVL62:
	st.w	[%a15] 24, %d15
.LVL63:
	st.w	[%a15] 28, %d15
.LVL64:
	.loc 1 486 0
	lea	%a15, [%a2] lo:DcDc_Scope1
	st.w	[%a2] lo:DcDc_Scope1, %d15
.LVL65:
	.loc 1 489 0
	movh.a	%a2, hi:DcDc_Scope0
	.loc 1 486 0
	st.w	[%a15] 4, %d15
.LVL66:
	st.w	[%a15] 8, %d15
.LVL67:
	st.w	[%a15] 12, %d15
.LVL68:
	st.w	[%a15] 16, %d15
.LVL69:
	st.w	[%a15] 20, %d15
.LVL70:
	.loc 1 489 0
	st.w	[%a2] lo:DcDc_Scope0, %d15
.LVL71:
	lea	%a15, [%a2] lo:DcDc_Scope0
	.loc 1 492 0
	movh.a	%a2, hi:DCDC_Status
	.loc 1 489 0
	st.w	[%a15] 4, %d15
.LVL72:
	st.w	[%a15] 8, %d15
.LVL73:
	st.w	[%a15] 12, %d15
.LVL74:
	.loc 1 492 0
	st.w	[%a2] lo:DCDC_Status, %d15
.LVL75:
	lea	%a15, [%a2] lo:DCDC_Status
	.loc 1 495 0
	movh.a	%a2, hi:DCDC_Measure3
	.loc 1 492 0
	st.w	[%a15] 4, %d15
.LVL76:
	st.w	[%a15] 8, %d15
.LVL77:
	st.w	[%a15] 12, %d15
.LVL78:
	st.w	[%a15] 16, %d15
.LVL79:
	st.w	[%a15] 20, %d15
.LVL80:
	.loc 1 495 0
	st.w	[%a2] lo:DCDC_Measure3, %d15
.LVL81:
	lea	%a15, [%a2] lo:DCDC_Measure3
	.loc 1 498 0
	movh.a	%a2, hi:DCDC_Measure
	.loc 1 495 0
	st.w	[%a15] 4, %d15
.LVL82:
	st.w	[%a15] 8, %d15
.LVL83:
	st.w	[%a15] 12, %d15
.LVL84:
	st.w	[%a15] 16, %d15
.LVL85:
	st.w	[%a15] 20, %d15
.LVL86:
	st.w	[%a15] 24, %d15
.LVL87:
	.loc 1 498 0
	lea	%a15, [%a2] lo:DCDC_Measure
	st.w	[%a2] lo:DCDC_Measure, %d15
.LVL88:
	st.w	[%a15] 4, %d15
.LVL89:
	st.w	[%a15] 8, %d15
.LVL90:
	st.w	[%a15] 12, %d15
.LVL91:
	st.w	[%a15] 16, %d15
.LVL92:
	st.w	[%a15] 20, %d15
.LVL93:
	st.w	[%a15] 24, %d15
.LVL94:
	.loc 1 500 0
	ret
.LFE0:
	.size	Can_MessageInit, .-Can_MessageInit
	.global	CanRxMsg
	.section .rodata.MPU_QM_CONST,"a",@progbits
	.align 2
	.type	CanRxMsg, @object
	.size	CanRxMsg, 252
CanRxMsg:
	.word	1028
	.word	1
	.word	0
	.word	0
	.word	1000
	.word	RxTimeoutCounters
	.word	COM_WakeUpSleepManagement
	.word	COM_WakeUpSleepManagement_internal
	.word	IndicationFlags
	.word	322
	.word	6
	.word	0
	.word	0
	.word	500
	.word	RxTimeoutCounters+4
	.word	HVDC_SafetyMeasure
	.word	HVDC_SafetyMeasure_internal
	.word	IndicationFlags+4
	.word	257
	.word	4
	.word	0
	.word	0
	.word	500
	.word	RxTimeoutCounters+8
	.word	HTB_CMD
	.word	HTB_CMD_internal
	.word	IndicationFlags+8
	.word	1904
	.word	8
	.word	3
	.word	4
	.word	500
	.word	RxTimeoutCounters+12
	.word	Parameter_Com_DCDC
	.word	Parameter_Com_DCDC_internal
	.word	IndicationFlags+12
	.word	768
	.word	8
	.word	0
	.word	0
	.word	1000
	.word	RxTimeoutCounters+16
	.word	DCDC_HSFB_Diag_Req
	.word	DCDC_HSFB_Diag_Req_internal
	.word	IndicationFlags+16
	.word	1025
	.word	6
	.word	0
	.word	0
	.word	1000
	.word	RxTimeoutCounters+20
	.word	DCDC_DEV_CMD
	.word	DCDC_DEV_CMD_internal
	.word	IndicationFlags+20
	.word	256
	.word	8
	.word	0
	.word	0
	.word	500
	.word	RxTimeoutCounters+24
	.word	DCDC_CMD
	.word	DCDC_CMD_internal
	.word	IndicationFlags+24
	.global	CanTxMsg
	.align 2
	.type	CanTxMsg, @object
	.size	CanTxMsg, 540
CanTxMsg:
	.word	868
	.word	8
	.word	0
	.word	0
	.word	9
	.word	50
	.word	LvDc_Pma_ErrCode
	.word	LvDc_Pma_ErrCode_internal
	.word	ConfirmationFlags
	.word	1121
	.word	4
	.word	0
	.word	0
	.word	4
	.word	100
	.word	DCDC_HTB_Measure
	.word	DCDC_HTB_Measure_internal
	.word	ConfirmationFlags+4
	.word	1124
	.word	1
	.word	0
	.word	0
	.word	0
	.word	100
	.word	LVDC_WakeUpSleepManagement
	.word	LVDC_WakeUpSleepManagement_internal
	.word	ConfirmationFlags+8
	.word	354
	.word	8
	.word	0
	.word	0
	.word	0
	.word	10
	.word	LVDC_SafetyMeasure
	.word	LVDC_SafetyMeasure_internal
	.word	ConfirmationFlags+12
	.word	355
	.word	7
	.word	0
	.word	0
	.word	4
	.word	10
	.word	DCDC_Measure4
	.word	DCDC_Measure4_internal
	.word	ConfirmationFlags+16
	.word	1149
	.word	8
	.word	0
	.word	0
	.word	13
	.word	100
	.word	DCDC_Status_ErrCode
	.word	DCDC_Status_ErrCode_internal
	.word	ConfirmationFlags+20
	.word	1909
	.word	8
	.word	3
	.word	4
	.word	0
	.word	0
	.word	Parameter_DCDC_Com
	.word	Parameter_DCDC_Com_internal
	.word	ConfirmationFlags+24
	.word	769
	.word	8
	.word	0
	.word	0
	.word	11
	.word	100
	.word	DCDC_HSFB_Diag_Resp
	.word	DCDC_HSFB_Diag_Resp_internal
	.word	ConfirmationFlags+28
	.word	356
	.word	8
	.word	0
	.word	0
	.word	5
	.word	10
	.word	DCDC_Measure2
	.word	DCDC_Measure2_internal
	.word	ConfirmationFlags+32
	.word	867
	.word	8
	.word	0
	.word	0
	.word	9
	.word	50
	.word	LvDc_Pma_ErrSrc
	.word	LvDc_Pma_ErrSrc_internal
	.word	ConfirmationFlags+36
	.word	353
	.word	6
	.word	0
	.word	0
	.word	7
	.word	10
	.word	DcDc_Scope1
	.word	DcDc_Scope1_internal
	.word	ConfirmationFlags+40
	.word	352
	.word	4
	.word	0
	.word	0
	.word	10
	.word	10
	.word	DcDc_Scope0
	.word	DcDc_Scope0_internal
	.word	ConfirmationFlags+44
	.word	1123
	.word	6
	.word	0
	.word	0
	.word	1
	.word	100
	.word	DCDC_Status
	.word	DCDC_Status_internal
	.word	ConfirmationFlags+48
	.word	1122
	.word	7
	.word	0
	.word	0
	.word	3
	.word	100
	.word	DCDC_Measure3
	.word	DCDC_Measure3_internal
	.word	ConfirmationFlags+52
	.word	1120
	.word	7
	.word	0
	.word	0
	.word	2
	.word	100
	.word	DCDC_Measure
	.word	DCDC_Measure_internal
	.word	ConfirmationFlags+56
	.global	DCDC_CMD_internal
	.section .bss.MPU_QM_VAR_NOINIT,"aw",@nobits
	.align 3
	.type	DCDC_CMD_internal, @object
	.size	DCDC_CMD_internal, 32
DCDC_CMD_internal:
	.zero	32
	.global	DCDC_DEV_CMD_internal
	.align 3
	.type	DCDC_DEV_CMD_internal, @object
	.size	DCDC_DEV_CMD_internal, 24
DCDC_DEV_CMD_internal:
	.zero	24
	.global	DCDC_HSFB_Diag_Req_internal
	.align 3
	.type	DCDC_HSFB_Diag_Req_internal, @object
	.size	DCDC_HSFB_Diag_Req_internal, 32
DCDC_HSFB_Diag_Req_internal:
	.zero	32
	.global	Parameter_Com_DCDC_internal
	.align 3
	.type	Parameter_Com_DCDC_internal, @object
	.size	Parameter_Com_DCDC_internal, 32
Parameter_Com_DCDC_internal:
	.zero	32
	.global	HTB_CMD_internal
	.align 3
	.type	HTB_CMD_internal, @object
	.size	HTB_CMD_internal, 16
HTB_CMD_internal:
	.zero	16
	.global	HVDC_SafetyMeasure_internal
	.align 3
	.type	HVDC_SafetyMeasure_internal, @object
	.size	HVDC_SafetyMeasure_internal, 24
HVDC_SafetyMeasure_internal:
	.zero	24
	.global	COM_WakeUpSleepManagement_internal
	.align 3
	.type	COM_WakeUpSleepManagement_internal, @object
	.size	COM_WakeUpSleepManagement_internal, 4
COM_WakeUpSleepManagement_internal:
	.zero	4
	.global	DCDC_Measure_internal
	.align 3
	.type	DCDC_Measure_internal, @object
	.size	DCDC_Measure_internal, 28
DCDC_Measure_internal:
	.zero	28
	.global	DCDC_Measure3_internal
	.align 3
	.type	DCDC_Measure3_internal, @object
	.size	DCDC_Measure3_internal, 28
DCDC_Measure3_internal:
	.zero	28
	.global	DCDC_Status_internal
	.align 3
	.type	DCDC_Status_internal, @object
	.size	DCDC_Status_internal, 24
DCDC_Status_internal:
	.zero	24
	.global	DcDc_Scope0_internal
	.align 3
	.type	DcDc_Scope0_internal, @object
	.size	DcDc_Scope0_internal, 16
DcDc_Scope0_internal:
	.zero	16
	.global	DcDc_Scope1_internal
	.align 3
	.type	DcDc_Scope1_internal, @object
	.size	DcDc_Scope1_internal, 24
DcDc_Scope1_internal:
	.zero	24
	.global	LvDc_Pma_ErrSrc_internal
	.align 3
	.type	LvDc_Pma_ErrSrc_internal, @object
	.size	LvDc_Pma_ErrSrc_internal, 32
LvDc_Pma_ErrSrc_internal:
	.zero	32
	.global	DCDC_Measure2_internal
	.align 3
	.type	DCDC_Measure2_internal, @object
	.size	DCDC_Measure2_internal, 32
DCDC_Measure2_internal:
	.zero	32
	.global	DCDC_HSFB_Diag_Resp_internal
	.align 3
	.type	DCDC_HSFB_Diag_Resp_internal, @object
	.size	DCDC_HSFB_Diag_Resp_internal, 32
DCDC_HSFB_Diag_Resp_internal:
	.zero	32
	.global	Parameter_DCDC_Com_internal
	.align 3
	.type	Parameter_DCDC_Com_internal, @object
	.size	Parameter_DCDC_Com_internal, 32
Parameter_DCDC_Com_internal:
	.zero	32
	.global	DCDC_Status_ErrCode_internal
	.align 3
	.type	DCDC_Status_ErrCode_internal, @object
	.size	DCDC_Status_ErrCode_internal, 32
DCDC_Status_ErrCode_internal:
	.zero	32
	.global	DCDC_Measure4_internal
	.align 3
	.type	DCDC_Measure4_internal, @object
	.size	DCDC_Measure4_internal, 28
DCDC_Measure4_internal:
	.zero	28
	.global	LVDC_SafetyMeasure_internal
	.align 3
	.type	LVDC_SafetyMeasure_internal, @object
	.size	LVDC_SafetyMeasure_internal, 32
LVDC_SafetyMeasure_internal:
	.zero	32
	.global	LVDC_WakeUpSleepManagement_internal
	.align 3
	.type	LVDC_WakeUpSleepManagement_internal, @object
	.size	LVDC_WakeUpSleepManagement_internal, 4
LVDC_WakeUpSleepManagement_internal:
	.zero	4
	.global	DCDC_HTB_Measure_internal
	.align 3
	.type	DCDC_HTB_Measure_internal, @object
	.size	DCDC_HTB_Measure_internal, 16
DCDC_HTB_Measure_internal:
	.zero	16
	.global	LvDc_Pma_ErrCode_internal
	.align 3
	.type	LvDc_Pma_ErrCode_internal, @object
	.size	LvDc_Pma_ErrCode_internal, 32
LvDc_Pma_ErrCode_internal:
	.zero	32
	.global	ConfirmationFlags
	.align 3
	.type	ConfirmationFlags, @object
	.size	ConfirmationFlags, 60
ConfirmationFlags:
	.zero	60
	.global	IndicationFlags
	.align 3
	.type	IndicationFlags, @object
	.size	IndicationFlags, 28
IndicationFlags:
	.zero	28
	.global	RxTimeoutCounters
	.align 3
	.type	RxTimeoutCounters, @object
	.size	RxTimeoutCounters, 28
RxTimeoutCounters:
	.zero	28
	.global	Can_DCDC_CMD_RxIndFlags
	.align 3
	.type	Can_DCDC_CMD_RxIndFlags, @object
	.size	Can_DCDC_CMD_RxIndFlags, 8
Can_DCDC_CMD_RxIndFlags:
	.zero	8
	.global	Can_DCDC_DEV_CMD_RxIndFlags
	.align 3
	.type	Can_DCDC_DEV_CMD_RxIndFlags, @object
	.size	Can_DCDC_DEV_CMD_RxIndFlags, 8
Can_DCDC_DEV_CMD_RxIndFlags:
	.zero	8
	.global	Can_DCDC_HSFB_DIAG_REQ_RxIndFlags
	.align 3
	.type	Can_DCDC_HSFB_DIAG_REQ_RxIndFlags, @object
	.size	Can_DCDC_HSFB_DIAG_REQ_RxIndFlags, 8
Can_DCDC_HSFB_DIAG_REQ_RxIndFlags:
	.zero	8
	.global	Can_PARAMETER_COM_DCDC_RxIndFlags
	.align 3
	.type	Can_PARAMETER_COM_DCDC_RxIndFlags, @object
	.size	Can_PARAMETER_COM_DCDC_RxIndFlags, 16
Can_PARAMETER_COM_DCDC_RxIndFlags:
	.zero	16
	.global	Can_HTB_CMD_RxIndFlags
	.align 3
	.type	Can_HTB_CMD_RxIndFlags, @object
	.size	Can_HTB_CMD_RxIndFlags, 8
Can_HTB_CMD_RxIndFlags:
	.zero	8
	.global	Can_HVDC_SAFETYMEASURE_RxIndFlags
	.align 3
	.type	Can_HVDC_SAFETYMEASURE_RxIndFlags, @object
	.size	Can_HVDC_SAFETYMEASURE_RxIndFlags, 8
Can_HVDC_SAFETYMEASURE_RxIndFlags:
	.zero	8
	.global	Can_COM_WAKEUPSLEEPMANAGEMENT_RxIndFlags
	.align 3
	.type	Can_COM_WAKEUPSLEEPMANAGEMENT_RxIndFlags, @object
	.size	Can_COM_WAKEUPSLEEPMANAGEMENT_RxIndFlags, 12
Can_COM_WAKEUPSLEEPMANAGEMENT_RxIndFlags:
	.zero	12
	.global	CanTxFlags
	.align 3
	.type	CanTxFlags, @object
	.size	CanTxFlags, 60
CanTxFlags:
	.zero	60
	.global	CanRxFlags
	.align 3
	.type	CanRxFlags, @object
	.size	CanRxFlags, 56
CanRxFlags:
	.zero	56
	.global	DCDC_CMD
	.align 3
	.type	DCDC_CMD, @object
	.size	DCDC_CMD, 32
DCDC_CMD:
	.zero	32
	.global	DCDC_DEV_CMD
	.align 3
	.type	DCDC_DEV_CMD, @object
	.size	DCDC_DEV_CMD, 24
DCDC_DEV_CMD:
	.zero	24
	.global	DCDC_HSFB_Diag_Req
	.align 3
	.type	DCDC_HSFB_Diag_Req, @object
	.size	DCDC_HSFB_Diag_Req, 32
DCDC_HSFB_Diag_Req:
	.zero	32
	.global	Parameter_Com_DCDC
	.align 3
	.type	Parameter_Com_DCDC, @object
	.size	Parameter_Com_DCDC, 32
Parameter_Com_DCDC:
	.zero	32
	.global	HTB_CMD
	.align 3
	.type	HTB_CMD, @object
	.size	HTB_CMD, 16
HTB_CMD:
	.zero	16
	.global	HVDC_SafetyMeasure
	.align 3
	.type	HVDC_SafetyMeasure, @object
	.size	HVDC_SafetyMeasure, 24
HVDC_SafetyMeasure:
	.zero	24
	.global	COM_WakeUpSleepManagement
	.align 3
	.type	COM_WakeUpSleepManagement, @object
	.size	COM_WakeUpSleepManagement, 4
COM_WakeUpSleepManagement:
	.zero	4
	.global	DCDC_Measure
	.align 3
	.type	DCDC_Measure, @object
	.size	DCDC_Measure, 28
DCDC_Measure:
	.zero	28
	.global	DCDC_Measure3
	.align 3
	.type	DCDC_Measure3, @object
	.size	DCDC_Measure3, 28
DCDC_Measure3:
	.zero	28
	.global	DCDC_Status
	.align 3
	.type	DCDC_Status, @object
	.size	DCDC_Status, 24
DCDC_Status:
	.zero	24
	.global	DcDc_Scope0
	.align 3
	.type	DcDc_Scope0, @object
	.size	DcDc_Scope0, 16
DcDc_Scope0:
	.zero	16
	.global	DcDc_Scope1
	.align 3
	.type	DcDc_Scope1, @object
	.size	DcDc_Scope1, 24
DcDc_Scope1:
	.zero	24
	.global	LvDc_Pma_ErrSrc
	.align 3
	.type	LvDc_Pma_ErrSrc, @object
	.size	LvDc_Pma_ErrSrc, 32
LvDc_Pma_ErrSrc:
	.zero	32
	.global	DCDC_Measure2
	.align 3
	.type	DCDC_Measure2, @object
	.size	DCDC_Measure2, 32
DCDC_Measure2:
	.zero	32
	.global	DCDC_HSFB_Diag_Resp
	.align 3
	.type	DCDC_HSFB_Diag_Resp, @object
	.size	DCDC_HSFB_Diag_Resp, 32
DCDC_HSFB_Diag_Resp:
	.zero	32
	.global	Parameter_DCDC_Com
	.align 3
	.type	Parameter_DCDC_Com, @object
	.size	Parameter_DCDC_Com, 32
Parameter_DCDC_Com:
	.zero	32
	.global	DCDC_Status_ErrCode
	.align 3
	.type	DCDC_Status_ErrCode, @object
	.size	DCDC_Status_ErrCode, 32
DCDC_Status_ErrCode:
	.zero	32
	.global	DCDC_Measure4
	.align 3
	.type	DCDC_Measure4, @object
	.size	DCDC_Measure4, 28
DCDC_Measure4:
	.zero	28
	.global	LVDC_SafetyMeasure
	.align 3
	.type	LVDC_SafetyMeasure, @object
	.size	LVDC_SafetyMeasure, 32
LVDC_SafetyMeasure:
	.zero	32
	.global	LVDC_WakeUpSleepManagement
	.align 3
	.type	LVDC_WakeUpSleepManagement, @object
	.size	LVDC_WakeUpSleepManagement, 4
LVDC_WakeUpSleepManagement:
	.zero	4
	.global	DCDC_HTB_Measure
	.align 3
	.type	DCDC_HTB_Measure, @object
	.size	DCDC_HTB_Measure, 16
DCDC_HTB_Measure:
	.zero	16
	.global	LvDc_Pma_ErrCode
	.align 3
	.type	LvDc_Pma_ErrCode, @object
	.size	LvDc_Pma_ErrCode, 32
LvDc_Pma_ErrCode:
	.zero	32
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
.section .text,"ax",@progbits
.Letext0:
	.file 2 "../30_Bsw/Common/rtwtypes.h"
	.file 3 "../30_Bsw/Mcal/Can/can_cfg.h"
	.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x2127
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.6.3 build on 2013-05-17"
	.byte	0x1
	.string	"../30_Bsw/Mcal/Can/can_cfg.c"
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
	.string	"uint16_t"
	.byte	0x2
	.byte	0x86
	.uaword	0xb0
	.uleb128 0x3
	.string	"uint32_t"
	.byte	0x2
	.byte	0x87
	.uaword	0xd3
	.uleb128 0x4
	.string	"LvDc_Pma_ErrCode_t"
	.byte	0x3
	.uahalf	0x384
	.uaword	0xf0
	.uleb128 0x4
	.string	"DCDC_HTB_Measure_t"
	.byte	0x3
	.uahalf	0x386
	.uaword	0xf0
	.uleb128 0x4
	.string	"LVDC_WakeUpSleepManagement_t"
	.byte	0x3
	.uahalf	0x388
	.uaword	0xf0
	.uleb128 0x4
	.string	"LVDC_SafetyMeasure_t"
	.byte	0x3
	.uahalf	0x38a
	.uaword	0xf0
	.uleb128 0x4
	.string	"DCDC_Measure4_t"
	.byte	0x3
	.uahalf	0x38c
	.uaword	0xf0
	.uleb128 0x4
	.string	"DCDC_Status_ErrCode_t"
	.byte	0x3
	.uahalf	0x38e
	.uaword	0xf0
	.uleb128 0x4
	.string	"Parameter_DCDC_Com_t"
	.byte	0x3
	.uahalf	0x390
	.uaword	0xf0
	.uleb128 0x4
	.string	"DCDC_HSFB_Diag_Resp_t"
	.byte	0x3
	.uahalf	0x392
	.uaword	0xf0
	.uleb128 0x4
	.string	"DCDC_Measure2_t"
	.byte	0x3
	.uahalf	0x394
	.uaword	0xf0
	.uleb128 0x4
	.string	"LvDc_Pma_ErrSrc_t"
	.byte	0x3
	.uahalf	0x396
	.uaword	0xf0
	.uleb128 0x4
	.string	"DcDc_Scope1_t"
	.byte	0x3
	.uahalf	0x398
	.uaword	0xf0
	.uleb128 0x4
	.string	"DcDc_Scope0_t"
	.byte	0x3
	.uahalf	0x39a
	.uaword	0xf0
	.uleb128 0x4
	.string	"DCDC_Status_t"
	.byte	0x3
	.uahalf	0x39c
	.uaword	0xf0
	.uleb128 0x4
	.string	"DCDC_Measure3_t"
	.byte	0x3
	.uahalf	0x39e
	.uaword	0xf0
	.uleb128 0x4
	.string	"DCDC_Measure_t"
	.byte	0x3
	.uahalf	0x3a0
	.uaword	0xf0
	.uleb128 0x4
	.string	"COM_WakeUpSleepManagement_t"
	.byte	0x3
	.uahalf	0x3a3
	.uaword	0xf0
	.uleb128 0x4
	.string	"HVDC_SafetyMeasure_t"
	.byte	0x3
	.uahalf	0x3a5
	.uaword	0xf0
	.uleb128 0x4
	.string	"HTB_CMD_t"
	.byte	0x3
	.uahalf	0x3a7
	.uaword	0xf0
	.uleb128 0x4
	.string	"Parameter_Com_DCDC_t"
	.byte	0x3
	.uahalf	0x3a9
	.uaword	0xf0
	.uleb128 0x4
	.string	"DCDC_HSFB_Diag_Req_t"
	.byte	0x3
	.uahalf	0x3ab
	.uaword	0xf0
	.uleb128 0x4
	.string	"DCDC_DEV_CMD_t"
	.byte	0x3
	.uahalf	0x3ad
	.uaword	0xf0
	.uleb128 0x4
	.string	"DCDC_CMD_t"
	.byte	0x3
	.uahalf	0x3af
	.uaword	0xf0
	.uleb128 0x5
	.byte	0x4
	.byte	0x3
	.uahalf	0x3b5
	.uaword	0x38c
	.uleb128 0x6
	.string	"Cyclic"
	.sleb128 0
	.uleb128 0x6
	.string	"not_used"
	.sleb128 1
	.uleb128 0x6
	.string	"IfActive"
	.sleb128 2
	.uleb128 0x6
	.string	"NoMsgSendType"
	.sleb128 3
	.byte	0
	.uleb128 0x4
	.string	"Can_GenMsgSendType_t"
	.byte	0x3
	.uahalf	0x3b5
	.uaword	0x353
	.uleb128 0x5
	.byte	0x4
	.byte	0x3
	.uahalf	0x3b6
	.uaword	0x3e9
	.uleb128 0x6
	.string	"Application"
	.sleb128 0
	.uleb128 0x6
	.string	"NM"
	.sleb128 1
	.uleb128 0x6
	.string	"NMH"
	.sleb128 2
	.uleb128 0x6
	.string	"TP2_0"
	.sleb128 3
	.uleb128 0x6
	.string	"ISO_TP"
	.sleb128 4
	.uleb128 0x6
	.string	"BAP"
	.sleb128 5
	.uleb128 0x6
	.string	"EID"
	.sleb128 6
	.byte	0
	.uleb128 0x4
	.string	"Can_MsgType_t"
	.byte	0x3
	.uahalf	0x3b6
	.uaword	0x3a9
	.uleb128 0x7
	.byte	0x24
	.byte	0x3
	.uahalf	0x3b8
	.uaword	0x4a6
	.uleb128 0x8
	.string	"Id"
	.byte	0x3
	.uahalf	0x3b9
	.uaword	0x100
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"Dlc"
	.byte	0x3
	.uahalf	0x3ba
	.uaword	0xf0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.uaword	.LASF0
	.byte	0x3
	.uahalf	0x3bb
	.uaword	0x38c
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.string	"MsgType"
	.byte	0x3
	.uahalf	0x3bc
	.uaword	0x3e9
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.string	"StartDelay"
	.byte	0x3
	.uahalf	0x3bd
	.uaword	0xf0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.string	"CycleTime"
	.byte	0x3
	.uahalf	0x3be
	.uaword	0xf0
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x8
	.string	"Data"
	.byte	0x3
	.uahalf	0x3bf
	.uaword	0x4a6
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.uaword	.LASF1
	.byte	0x3
	.uahalf	0x3c0
	.uaword	0x4a6
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x8
	.string	"ConfFlag"
	.byte	0x3
	.uahalf	0x3c1
	.uaword	0x4a6
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0
	.uleb128 0xa
	.uaword	0x4ab
	.uleb128 0xb
	.byte	0x4
	.uaword	0xf0
	.uleb128 0x4
	.string	"CanTxMsg_t"
	.byte	0x3
	.uahalf	0x3c2
	.uaword	0x3ff
	.uleb128 0x7
	.byte	0x24
	.byte	0x3
	.uahalf	0x3c4
	.uaword	0x56c
	.uleb128 0x8
	.string	"Id"
	.byte	0x3
	.uahalf	0x3c5
	.uaword	0x100
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"Dlc"
	.byte	0x3
	.uahalf	0x3c6
	.uaword	0xf0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.uaword	.LASF0
	.byte	0x3
	.uahalf	0x3c7
	.uaword	0x38c
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.string	"MsgType"
	.byte	0x3
	.uahalf	0x3c8
	.uaword	0x3e9
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.string	"Timeout"
	.byte	0x3
	.uahalf	0x3c9
	.uaword	0xf0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.string	"TimeoutCounter"
	.byte	0x3
	.uahalf	0x3ca
	.uaword	0x4a6
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x8
	.string	"Data"
	.byte	0x3
	.uahalf	0x3cb
	.uaword	0x4a6
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.uaword	.LASF1
	.byte	0x3
	.uahalf	0x3cc
	.uaword	0x4a6
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x8
	.string	"IndFlag"
	.byte	0x3
	.uahalf	0x3cd
	.uaword	0x4a6
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0
	.uleb128 0x4
	.string	"CanRxMsg_t"
	.byte	0x3
	.uahalf	0x3ce
	.uaword	0x4c4
	.uleb128 0x7
	.byte	0x8
	.byte	0x3
	.uahalf	0x3d1
	.uaword	0x5ae
	.uleb128 0x8
	.string	"Timeout"
	.byte	0x3
	.uahalf	0x3d2
	.uaword	0xf0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"IndFlg"
	.byte	0x3
	.uahalf	0x3d3
	.uaword	0xf0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x4
	.string	"CanRxFlags_t"
	.byte	0x3
	.uahalf	0x3d4
	.uaword	0x57f
	.uleb128 0x7
	.byte	0x4
	.byte	0x3
	.uahalf	0x3d7
	.uaword	0x5e3
	.uleb128 0x8
	.string	"ConfirmFlg"
	.byte	0x3
	.uahalf	0x3d8
	.uaword	0xf0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.string	"CanTxFlags_t"
	.byte	0x3
	.uahalf	0x3d9
	.uaword	0x5c3
	.uleb128 0x7
	.byte	0xc
	.byte	0x3
	.uahalf	0x3e0
	.uaword	0x6c3
	.uleb128 0xc
	.string	"Com_WakeUpSleepReserved_IndFlg"
	.byte	0x3
	.uahalf	0x3e1
	.uaword	0xf0
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"Com_WakeUpSleepCmd_IndFlg"
	.byte	0x3
	.uahalf	0x3e2
	.uaword	0xf0
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.uaword	.LASF2
	.byte	0x3
	.uahalf	0x3e3
	.uaword	0xf0
	.byte	0x4
	.byte	0xe
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.uaword	.LASF3
	.byte	0x3
	.uahalf	0x3e4
	.uaword	0xf0
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.uaword	.LASF4
	.byte	0x3
	.uahalf	0x3e5
	.uaword	0xf0
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.uaword	.LASF5
	.byte	0x3
	.uahalf	0x3e6
	.uaword	0xf0
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.uaword	.LASF6
	.byte	0x3
	.uahalf	0x3e7
	.uaword	0xf0
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.uaword	.LASF7
	.byte	0x3
	.uahalf	0x3e8
	.uaword	0xf0
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.byte	0x3
	.uahalf	0x3ea
	.uaword	0x6eb
	.uleb128 0x9
	.uaword	.LASF8
	.byte	0x3
	.uahalf	0x3eb
	.uaword	0x100
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"Low"
	.byte	0x3
	.uahalf	0x3ec
	.uaword	0x100
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0xe
	.byte	0xc
	.byte	0x3
	.uahalf	0x3df
	.uaword	0x70d
	.uleb128 0xf
	.string	"Bit"
	.byte	0x3
	.uahalf	0x3e9
	.uaword	0x5f8
	.uleb128 0x10
	.uaword	.LASF9
	.byte	0x3
	.uahalf	0x3ed
	.uaword	0x6c3
	.byte	0
	.uleb128 0x4
	.string	"Can_COM_WAKEUPSLEEPMANAGEMENT_RxIndFlags_t"
	.byte	0x3
	.uahalf	0x3ee
	.uaword	0x6eb
	.uleb128 0x7
	.byte	0x4
	.byte	0x3
	.uahalf	0x3f1
	.uaword	0xab3
	.uleb128 0xc
	.string	"SG_HV_Batt_01_LFD2_Status_IndFlg"
	.byte	0x3
	.uahalf	0x3f2
	.uaword	0xf0
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"SG_HV_Batt_02_LFD1_Status_IndFlg"
	.byte	0x3
	.uahalf	0x3f3
	.uaword	0xf0
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"SG_HV_Batt_01_LFD7_Status_IndFlg"
	.byte	0x3
	.uahalf	0x3f4
	.uaword	0xf0
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"SG_HV_Batt_01_LFD6_Status_IndFlg"
	.byte	0x3
	.uahalf	0x3f5
	.uaword	0xf0
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"SG_HV_Batt_02_SM4_Status_IndFlg"
	.byte	0x3
	.uahalf	0x3f6
	.uaword	0xf0
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"SG_HV_Batt_02_SM3_Status_IndFlg"
	.byte	0x3
	.uahalf	0x3f7
	.uaword	0xf0
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"SG_HV_Batt_02_SM2_Status_IndFlg"
	.byte	0x3
	.uahalf	0x3f8
	.uaword	0xf0
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"SG_HV_Batt_02_SM1_Status_IndFlg"
	.byte	0x3
	.uahalf	0x3f9
	.uaword	0xf0
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"SG_HV_Batt_01_LFD5_Status_IndFlg"
	.byte	0x3
	.uahalf	0x3fa
	.uaword	0xf0
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"HV_SafetyMeasure_Reserve_IndFlg"
	.byte	0x3
	.uahalf	0x3fb
	.uaword	0xf0
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"SG_HV_Batt_01_LFD4_Status_IndFlg"
	.byte	0x3
	.uahalf	0x3fc
	.uaword	0xf0
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"SG_HV_Batt_01_LFD3_Status_IndFlg"
	.byte	0x3
	.uahalf	0x3fd
	.uaword	0xf0
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"SG_HV_Batt_01_LFD1_Status_IndFlg"
	.byte	0x3
	.uahalf	0x3fe
	.uaword	0xf0
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"SG_HV_Batt_01_SM4_Status_IndFlg"
	.byte	0x3
	.uahalf	0x3ff
	.uaword	0xf0
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"SG_HV_Batt_01_SM3_Status_IndFlg"
	.byte	0x3
	.uahalf	0x400
	.uaword	0xf0
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"SG_HV_Batt_01_SM2_Status_IndFlg"
	.byte	0x3
	.uahalf	0x401
	.uaword	0xf0
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"SG_HV_Batt_01_SM1_Status_IndFlg"
	.byte	0x3
	.uahalf	0x402
	.uaword	0xf0
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"HV_SafetyMeasure_CRC_IndFlg"
	.byte	0x3
	.uahalf	0x403
	.uaword	0xf0
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"HV_SafetyMeasure_BZ_IndFlg"
	.byte	0x3
	.uahalf	0x404
	.uaword	0xf0
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.byte	0x3
	.uahalf	0x406
	.uaword	0xadb
	.uleb128 0x9
	.uaword	.LASF8
	.byte	0x3
	.uahalf	0x407
	.uaword	0x100
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"Low"
	.byte	0x3
	.uahalf	0x408
	.uaword	0x100
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.byte	0x3
	.uahalf	0x3f0
	.uaword	0xafd
	.uleb128 0xf
	.string	"Bit"
	.byte	0x3
	.uahalf	0x405
	.uaword	0x740
	.uleb128 0x10
	.uaword	.LASF9
	.byte	0x3
	.uahalf	0x409
	.uaword	0xab3
	.byte	0
	.uleb128 0x4
	.string	"Can_HVDC_SAFETYMEASURE_RxIndFlags_t"
	.byte	0x3
	.uahalf	0x40a
	.uaword	0xadb
	.uleb128 0x7
	.byte	0x4
	.byte	0x3
	.uahalf	0x40d
	.uaword	0xc3a
	.uleb128 0xc
	.string	"HTB_CMD_SafetyTests_IndFlg"
	.byte	0x3
	.uahalf	0x40e
	.uaword	0xf0
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"HTB_PwrSetPoint_IndFlg"
	.byte	0x3
	.uahalf	0x40f
	.uaword	0xf0
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"HTB_CMD_Clear_Faults_IndFlg"
	.byte	0x3
	.uahalf	0x410
	.uaword	0xf0
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"HTB_CMD_Enable_IndFlg"
	.byte	0x3
	.uahalf	0x411
	.uaword	0xf0
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"Heater_CMD_CRC_IndFlg"
	.byte	0x3
	.uahalf	0x412
	.uaword	0xf0
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"Heater_CMD_BZ_IndFlg"
	.byte	0x3
	.uahalf	0x413
	.uaword	0xf0
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.uaword	.LASF2
	.byte	0x3
	.uahalf	0x414
	.uaword	0xf0
	.byte	0x4
	.byte	0xa
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.uaword	.LASF3
	.byte	0x3
	.uahalf	0x415
	.uaword	0xf0
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.byte	0x3
	.uahalf	0x417
	.uaword	0xc62
	.uleb128 0x9
	.uaword	.LASF8
	.byte	0x3
	.uahalf	0x418
	.uaword	0x100
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"Low"
	.byte	0x3
	.uahalf	0x419
	.uaword	0x100
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.byte	0x3
	.uahalf	0x40c
	.uaword	0xc84
	.uleb128 0xf
	.string	"Bit"
	.byte	0x3
	.uahalf	0x416
	.uaword	0xb29
	.uleb128 0x10
	.uaword	.LASF9
	.byte	0x3
	.uahalf	0x41a
	.uaword	0xc3a
	.byte	0
	.uleb128 0x4
	.string	"Can_HTB_CMD_RxIndFlags_t"
	.byte	0x3
	.uahalf	0x41b
	.uaword	0xc62
	.uleb128 0x7
	.byte	0x10
	.byte	0x3
	.uahalf	0x41e
	.uaword	0xd60
	.uleb128 0xc
	.string	"Parameter_Com_DCDC_Data_IndFlg"
	.byte	0x3
	.uahalf	0x41f
	.uaword	0xf0
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.uaword	.LASF2
	.byte	0x3
	.uahalf	0x420
	.uaword	0xf0
	.byte	0x4
	.byte	0xf
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.uaword	.LASF3
	.byte	0x3
	.uahalf	0x421
	.uaword	0xf0
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.uaword	.LASF4
	.byte	0x3
	.uahalf	0x422
	.uaword	0xf0
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.uaword	.LASF5
	.byte	0x3
	.uahalf	0x423
	.uaword	0xf0
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.uaword	.LASF6
	.byte	0x3
	.uahalf	0x424
	.uaword	0xf0
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.uaword	.LASF7
	.byte	0x3
	.uahalf	0x425
	.uaword	0xf0
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.string	"reserved7"
	.byte	0x3
	.uahalf	0x426
	.uaword	0xf0
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.byte	0x3
	.uahalf	0x428
	.uaword	0xd88
	.uleb128 0x9
	.uaword	.LASF8
	.byte	0x3
	.uahalf	0x429
	.uaword	0x100
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"Low"
	.byte	0x3
	.uahalf	0x42a
	.uaword	0x100
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0xe
	.byte	0x10
	.byte	0x3
	.uahalf	0x41d
	.uaword	0xdaa
	.uleb128 0xf
	.string	"Bit"
	.byte	0x3
	.uahalf	0x427
	.uaword	0xca5
	.uleb128 0x10
	.uaword	.LASF9
	.byte	0x3
	.uahalf	0x42b
	.uaword	0xd60
	.byte	0
	.uleb128 0x4
	.string	"Can_PARAMETER_COM_DCDC_RxIndFlags_t"
	.byte	0x3
	.uahalf	0x42c
	.uaword	0xd88
	.uleb128 0x7
	.byte	0x1
	.byte	0x3
	.uahalf	0x42f
	.uaword	0xf50
	.uleb128 0xc
	.string	"DCDC_LLC_Diag_Req_Byte_7_IndFlg"
	.byte	0x3
	.uahalf	0x430
	.uaword	0xf0
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"DCDC_LLC_Diag_Req_Byte_6_IndFlg"
	.byte	0x3
	.uahalf	0x431
	.uaword	0xf0
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"DCDC_LLC_Diag_Req_Byte_5_IndFlg"
	.byte	0x3
	.uahalf	0x432
	.uaword	0xf0
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"DCDC_LLC_Diag_Req_Byte_4_IndFlg"
	.byte	0x3
	.uahalf	0x433
	.uaword	0xf0
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"DCDC_LLC_Diag_Req_Byte_3_IndFlg"
	.byte	0x3
	.uahalf	0x434
	.uaword	0xf0
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"DCDC_LLC_Diag_Req_Byte_2_IndFlg"
	.byte	0x3
	.uahalf	0x435
	.uaword	0xf0
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"DCDC_LLC_Diag_Req_Byte_1_IndFlg"
	.byte	0x3
	.uahalf	0x436
	.uaword	0xf0
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"DCDC_LLC_Diag_Req_Byte_0_IndFlg"
	.byte	0x3
	.uahalf	0x437
	.uaword	0xf0
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.byte	0x3
	.uahalf	0x439
	.uaword	0xf78
	.uleb128 0x9
	.uaword	.LASF8
	.byte	0x3
	.uahalf	0x43a
	.uaword	0x100
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"Low"
	.byte	0x3
	.uahalf	0x43b
	.uaword	0x100
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.byte	0x3
	.uahalf	0x42e
	.uaword	0xf9a
	.uleb128 0xf
	.string	"Bit"
	.byte	0x3
	.uahalf	0x438
	.uaword	0xdd6
	.uleb128 0x10
	.uaword	.LASF9
	.byte	0x3
	.uahalf	0x43c
	.uaword	0xf50
	.byte	0
	.uleb128 0x4
	.string	"Can_DCDC_HSFB_DIAG_REQ_RxIndFlags_t"
	.byte	0x3
	.uahalf	0x43d
	.uaword	0xf78
	.uleb128 0x7
	.byte	0x1
	.byte	0x3
	.uahalf	0x440
	.uaword	0x111a
	.uleb128 0xc
	.string	"DCDC_DEV_CMD_Sr2En_IndFlg"
	.byte	0x3
	.uahalf	0x441
	.uaword	0xf0
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"DCDC_DEV_CMD_Sr1En_IndFlg"
	.byte	0x3
	.uahalf	0x442
	.uaword	0xf0
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"DCDC_DEV_CMD_Debug_IndFlg"
	.byte	0x3
	.uahalf	0x443
	.uaword	0xf0
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"DCDC_DEV_CMD_Debug1_IndFlg"
	.byte	0x3
	.uahalf	0x444
	.uaword	0xf0
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"DCDC_DEV_CMD_HsfbSweep_IndFlg"
	.byte	0x3
	.uahalf	0x445
	.uaword	0xf0
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"DCDC_DEV_CMD_SrCtrl_IndFlg"
	.byte	0x3
	.uahalf	0x446
	.uaword	0xf0
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"DCDC_DEV_CMD_Debug2_IndFlg"
	.byte	0x3
	.uahalf	0x447
	.uaword	0xf0
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"DCDC_DEV_CMD_HsfbFreq_IndFlg"
	.byte	0x3
	.uahalf	0x448
	.uaword	0xf0
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.byte	0x3
	.uahalf	0x44a
	.uaword	0x1142
	.uleb128 0x9
	.uaword	.LASF8
	.byte	0x3
	.uahalf	0x44b
	.uaword	0x100
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"Low"
	.byte	0x3
	.uahalf	0x44c
	.uaword	0x100
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.byte	0x3
	.uahalf	0x43f
	.uaword	0x1164
	.uleb128 0xf
	.string	"Bit"
	.byte	0x3
	.uahalf	0x449
	.uaword	0xfc6
	.uleb128 0x10
	.uaword	.LASF9
	.byte	0x3
	.uahalf	0x44d
	.uaword	0x111a
	.byte	0
	.uleb128 0x4
	.string	"Can_DCDC_DEV_CMD_RxIndFlags_t"
	.byte	0x3
	.uahalf	0x44e
	.uaword	0x1142
	.uleb128 0x7
	.byte	0x2
	.byte	0x3
	.uahalf	0x451
	.uaword	0x13d3
	.uleb128 0xc
	.string	"DCDC_CMD_Reserve_IndFlg"
	.byte	0x3
	.uahalf	0x452
	.uaword	0xf0
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"DCDC_CMD_SafetyTests_IndFlg"
	.byte	0x3
	.uahalf	0x453
	.uaword	0xf0
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"DCDC_CMD_Sync_IndFlg"
	.byte	0x3
	.uahalf	0x454
	.uaword	0xf0
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"DCDC_CMD_Topology_Mode_IndFlg"
	.byte	0x3
	.uahalf	0x455
	.uaword	0xf0
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"DCDC_CMD_VoltageSetpoint_HV_IndFlg"
	.byte	0x3
	.uahalf	0x456
	.uaword	0xf0
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"DCDC_CMD_Direction_IndFlg"
	.byte	0x3
	.uahalf	0x457
	.uaword	0xf0
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"DCDC_CMD_Discharge_Enable_IndFlg"
	.byte	0x3
	.uahalf	0x458
	.uaword	0xf0
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"DCDC_CMD_CurrentSetpoint_IndFlg"
	.byte	0x3
	.uahalf	0x459
	.uaword	0xf0
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"DCDC_CMD_VoltageSetpoint_IndFlg"
	.byte	0x3
	.uahalf	0x45a
	.uaword	0xf0
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"DCDC_CMD_Clear_Faults_IndFlg"
	.byte	0x3
	.uahalf	0x45b
	.uaword	0xf0
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"DCDC_CMD_Reset_DTC_IndFlg"
	.byte	0x3
	.uahalf	0x45c
	.uaword	0xf0
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"DCDC_CMD_CRC_IndFlg"
	.byte	0x3
	.uahalf	0x45d
	.uaword	0xf0
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"DCDC_CMD_BZ_IndFlg"
	.byte	0x3
	.uahalf	0x45e
	.uaword	0xf0
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"DCDC_CMD_Enabled_IndFlg"
	.byte	0x3
	.uahalf	0x45f
	.uaword	0xf0
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.byte	0x3
	.uahalf	0x461
	.uaword	0x13fb
	.uleb128 0x9
	.uaword	.LASF8
	.byte	0x3
	.uahalf	0x462
	.uaword	0x100
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"Low"
	.byte	0x3
	.uahalf	0x463
	.uaword	0x100
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.byte	0x3
	.uahalf	0x450
	.uaword	0x141d
	.uleb128 0xf
	.string	"Bit"
	.byte	0x3
	.uahalf	0x460
	.uaword	0x118a
	.uleb128 0x10
	.uaword	.LASF9
	.byte	0x3
	.uahalf	0x464
	.uaword	0x13d3
	.byte	0
	.uleb128 0x4
	.string	"Can_DCDC_CMD_RxIndFlags_t"
	.byte	0x3
	.uahalf	0x465
	.uaword	0x13fb
	.uleb128 0x5
	.byte	0x4
	.byte	0x3
	.uahalf	0x469
	.uaword	0x1527
	.uleb128 0x6
	.string	"CAN_RX_COM_WAKEUPSLEEPMANAGEMENT_IDX"
	.sleb128 0
	.uleb128 0x6
	.string	"CAN_RX_HVDC_SAFETYMEASURE_IDX"
	.sleb128 1
	.uleb128 0x6
	.string	"CAN_RX_HTB_CMD_IDX"
	.sleb128 2
	.uleb128 0x6
	.string	"CAN_RX_PARAMETER_COM_DCDC_IDX"
	.sleb128 3
	.uleb128 0x6
	.string	"CAN_RX_DCDC_HSFB_DIAG_REQ_IDX"
	.sleb128 4
	.uleb128 0x6
	.string	"CAN_RX_DCDC_DEV_CMD_IDX"
	.sleb128 5
	.uleb128 0x6
	.string	"CAN_RX_DCDC_CMD_IDX"
	.sleb128 6
	.uleb128 0x6
	.string	"CAN_RX_MSG_SIZE"
	.sleb128 7
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.byte	0x3
	.uahalf	0x474
	.uaword	0x16fc
	.uleb128 0x6
	.string	"CAN_TX_LVDC_PMA_ERRCODE_IDX"
	.sleb128 0
	.uleb128 0x6
	.string	"CAN_TX_DCDC_HTB_MEASURE_IDX"
	.sleb128 1
	.uleb128 0x6
	.string	"CAN_TX_LVDC_WAKEUPSLEEPMANAGEMENT_IDX"
	.sleb128 2
	.uleb128 0x6
	.string	"CAN_TX_LVDC_SAFETYMEASURE_IDX"
	.sleb128 3
	.uleb128 0x6
	.string	"CAN_TX_DCDC_MEASURE4_IDX"
	.sleb128 4
	.uleb128 0x6
	.string	"CAN_TX_DCDC_STATUS_ERRCODE_IDX"
	.sleb128 5
	.uleb128 0x6
	.string	"CAN_TX_PARAMETER_DCDC_COM_IDX"
	.sleb128 6
	.uleb128 0x6
	.string	"CAN_TX_DCDC_HSFB_DIAG_RESP_IDX"
	.sleb128 7
	.uleb128 0x6
	.string	"CAN_TX_DCDC_MEASURE2_IDX"
	.sleb128 8
	.uleb128 0x6
	.string	"CAN_TX_LVDC_PMA_ERRSRC_IDX"
	.sleb128 9
	.uleb128 0x6
	.string	"CAN_TX_DCDC_SCOPE1_IDX"
	.sleb128 10
	.uleb128 0x6
	.string	"CAN_TX_DCDC_SCOPE0_IDX"
	.sleb128 11
	.uleb128 0x6
	.string	"CAN_TX_DCDC_STATUS_IDX"
	.sleb128 12
	.uleb128 0x6
	.string	"CAN_TX_DCDC_MEASURE3_IDX"
	.sleb128 13
	.uleb128 0x6
	.string	"CAN_TX_DCDC_MEASURE_IDX"
	.sleb128 14
	.uleb128 0x6
	.string	"CAN_TX_MSG_SIZE"
	.sleb128 15
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.string	"Can_MessageInit"
	.byte	0x1
	.uahalf	0x1c4
	.byte	0x1
	.uaword	.LFB0
	.uaword	.LFE0
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x1730
	.uleb128 0x12
	.string	"i"
	.byte	0x1
	.uahalf	0x1c5
	.uaword	0xf0
	.uaword	.LLST0
	.byte	0
	.uleb128 0x13
	.uaword	0x4b1
	.uaword	0x1740
	.uleb128 0x14
	.uaword	0xd3
	.byte	0xe
	.byte	0
	.uleb128 0x15
	.string	"CanTxMsg"
	.byte	0x1
	.uahalf	0x194
	.uaword	0x1758
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	CanTxMsg
	.uleb128 0xa
	.uaword	0x1730
	.uleb128 0x13
	.uaword	0x56c
	.uaword	0x176d
	.uleb128 0x14
	.uaword	0xd3
	.byte	0x6
	.byte	0
	.uleb128 0x15
	.string	"CanRxMsg"
	.byte	0x1
	.uahalf	0x1a6
	.uaword	0x1785
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	CanRxMsg
	.uleb128 0xa
	.uaword	0x175d
	.uleb128 0x13
	.uaword	0x110
	.uaword	0x179a
	.uleb128 0x14
	.uaword	0xd3
	.byte	0x7
	.byte	0
	.uleb128 0x15
	.string	"LvDc_Pma_ErrCode"
	.byte	0x3
	.uahalf	0x497
	.uaword	0x178a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	LvDc_Pma_ErrCode
	.uleb128 0x13
	.uaword	0x12b
	.uaword	0x17ca
	.uleb128 0x14
	.uaword	0xd3
	.byte	0x3
	.byte	0
	.uleb128 0x15
	.string	"DCDC_HTB_Measure"
	.byte	0x3
	.uahalf	0x498
	.uaword	0x17ba
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	DCDC_HTB_Measure
	.uleb128 0x13
	.uaword	0x146
	.uaword	0x17fa
	.uleb128 0x14
	.uaword	0xd3
	.byte	0
	.byte	0
	.uleb128 0x15
	.string	"LVDC_WakeUpSleepManagement"
	.byte	0x3
	.uahalf	0x499
	.uaword	0x17ea
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	LVDC_WakeUpSleepManagement
	.uleb128 0x13
	.uaword	0x16b
	.uaword	0x1834
	.uleb128 0x14
	.uaword	0xd3
	.byte	0x7
	.byte	0
	.uleb128 0x15
	.string	"LVDC_SafetyMeasure"
	.byte	0x3
	.uahalf	0x49a
	.uaword	0x1824
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	LVDC_SafetyMeasure
	.uleb128 0x13
	.uaword	0x188
	.uaword	0x1866
	.uleb128 0x14
	.uaword	0xd3
	.byte	0x6
	.byte	0
	.uleb128 0x15
	.string	"DCDC_Measure4"
	.byte	0x3
	.uahalf	0x49b
	.uaword	0x1856
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	DCDC_Measure4
	.uleb128 0x13
	.uaword	0x1a0
	.uaword	0x1893
	.uleb128 0x14
	.uaword	0xd3
	.byte	0x7
	.byte	0
	.uleb128 0x15
	.string	"DCDC_Status_ErrCode"
	.byte	0x3
	.uahalf	0x49c
	.uaword	0x1883
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	DCDC_Status_ErrCode
	.uleb128 0x13
	.uaword	0x1be
	.uaword	0x18c6
	.uleb128 0x14
	.uaword	0xd3
	.byte	0x7
	.byte	0
	.uleb128 0x15
	.string	"Parameter_DCDC_Com"
	.byte	0x3
	.uahalf	0x49d
	.uaword	0x18b6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Parameter_DCDC_Com
	.uleb128 0x13
	.uaword	0x1db
	.uaword	0x18f8
	.uleb128 0x14
	.uaword	0xd3
	.byte	0x7
	.byte	0
	.uleb128 0x15
	.string	"DCDC_HSFB_Diag_Resp"
	.byte	0x3
	.uahalf	0x49e
	.uaword	0x18e8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	DCDC_HSFB_Diag_Resp
	.uleb128 0x13
	.uaword	0x1f9
	.uaword	0x192b
	.uleb128 0x14
	.uaword	0xd3
	.byte	0x7
	.byte	0
	.uleb128 0x15
	.string	"DCDC_Measure2"
	.byte	0x3
	.uahalf	0x49f
	.uaword	0x191b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	DCDC_Measure2
	.uleb128 0x13
	.uaword	0x211
	.uaword	0x1958
	.uleb128 0x14
	.uaword	0xd3
	.byte	0x7
	.byte	0
	.uleb128 0x15
	.string	"LvDc_Pma_ErrSrc"
	.byte	0x3
	.uahalf	0x4a0
	.uaword	0x1948
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	LvDc_Pma_ErrSrc
	.uleb128 0x13
	.uaword	0x22b
	.uaword	0x1987
	.uleb128 0x14
	.uaword	0xd3
	.byte	0x5
	.byte	0
	.uleb128 0x15
	.string	"DcDc_Scope1"
	.byte	0x3
	.uahalf	0x4a1
	.uaword	0x1977
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	DcDc_Scope1
	.uleb128 0x13
	.uaword	0x241
	.uaword	0x19b2
	.uleb128 0x14
	.uaword	0xd3
	.byte	0x3
	.byte	0
	.uleb128 0x15
	.string	"DcDc_Scope0"
	.byte	0x3
	.uahalf	0x4a2
	.uaword	0x19a2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	DcDc_Scope0
	.uleb128 0x13
	.uaword	0x257
	.uaword	0x19dd
	.uleb128 0x14
	.uaword	0xd3
	.byte	0x5
	.byte	0
	.uleb128 0x15
	.string	"DCDC_Status"
	.byte	0x3
	.uahalf	0x4a3
	.uaword	0x19cd
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	DCDC_Status
	.uleb128 0x13
	.uaword	0x26d
	.uaword	0x1a08
	.uleb128 0x14
	.uaword	0xd3
	.byte	0x6
	.byte	0
	.uleb128 0x15
	.string	"DCDC_Measure3"
	.byte	0x3
	.uahalf	0x4a4
	.uaword	0x19f8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	DCDC_Measure3
	.uleb128 0x13
	.uaword	0x285
	.uaword	0x1a35
	.uleb128 0x14
	.uaword	0xd3
	.byte	0x6
	.byte	0
	.uleb128 0x15
	.string	"DCDC_Measure"
	.byte	0x3
	.uahalf	0x4a5
	.uaword	0x1a25
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	DCDC_Measure
	.uleb128 0x13
	.uaword	0x29c
	.uaword	0x1a61
	.uleb128 0x14
	.uaword	0xd3
	.byte	0
	.byte	0
	.uleb128 0x15
	.string	"COM_WakeUpSleepManagement"
	.byte	0x3
	.uahalf	0x4a8
	.uaword	0x1a51
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	COM_WakeUpSleepManagement
	.uleb128 0x13
	.uaword	0x2c0
	.uaword	0x1a9a
	.uleb128 0x14
	.uaword	0xd3
	.byte	0x5
	.byte	0
	.uleb128 0x15
	.string	"HVDC_SafetyMeasure"
	.byte	0x3
	.uahalf	0x4a9
	.uaword	0x1a8a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	HVDC_SafetyMeasure
	.uleb128 0x13
	.uaword	0x2dd
	.uaword	0x1acc
	.uleb128 0x14
	.uaword	0xd3
	.byte	0x3
	.byte	0
	.uleb128 0x15
	.string	"HTB_CMD"
	.byte	0x3
	.uahalf	0x4aa
	.uaword	0x1abc
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	HTB_CMD
	.uleb128 0x13
	.uaword	0x2ef
	.uaword	0x1af3
	.uleb128 0x14
	.uaword	0xd3
	.byte	0x7
	.byte	0
	.uleb128 0x15
	.string	"Parameter_Com_DCDC"
	.byte	0x3
	.uahalf	0x4ab
	.uaword	0x1ae3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Parameter_Com_DCDC
	.uleb128 0x13
	.uaword	0x30c
	.uaword	0x1b25
	.uleb128 0x14
	.uaword	0xd3
	.byte	0x7
	.byte	0
	.uleb128 0x15
	.string	"DCDC_HSFB_Diag_Req"
	.byte	0x3
	.uahalf	0x4ac
	.uaword	0x1b15
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	DCDC_HSFB_Diag_Req
	.uleb128 0x13
	.uaword	0x329
	.uaword	0x1b57
	.uleb128 0x14
	.uaword	0xd3
	.byte	0x5
	.byte	0
	.uleb128 0x15
	.string	"DCDC_DEV_CMD"
	.byte	0x3
	.uahalf	0x4ad
	.uaword	0x1b47
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	DCDC_DEV_CMD
	.uleb128 0x13
	.uaword	0x340
	.uaword	0x1b83
	.uleb128 0x14
	.uaword	0xd3
	.byte	0x7
	.byte	0
	.uleb128 0x15
	.string	"DCDC_CMD"
	.byte	0x3
	.uahalf	0x4ae
	.uaword	0x1b73
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	DCDC_CMD
	.uleb128 0x13
	.uaword	0x5ae
	.uaword	0x1bab
	.uleb128 0x14
	.uaword	0xd3
	.byte	0x6
	.byte	0
	.uleb128 0x15
	.string	"CanRxFlags"
	.byte	0x3
	.uahalf	0x4b0
	.uaword	0x1b9b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	CanRxFlags
	.uleb128 0x13
	.uaword	0x5e3
	.uaword	0x1bd5
	.uleb128 0x14
	.uaword	0xd3
	.byte	0xe
	.byte	0
	.uleb128 0x15
	.string	"CanTxFlags"
	.byte	0x3
	.uahalf	0x4b1
	.uaword	0x1bc5
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	CanTxFlags
	.uleb128 0x15
	.string	"Can_COM_WAKEUPSLEEPMANAGEMENT_RxIndFlags"
	.byte	0x3
	.uahalf	0x4b3
	.uaword	0x70d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Can_COM_WAKEUPSLEEPMANAGEMENT_RxIndFlags
	.uleb128 0x15
	.string	"Can_HVDC_SAFETYMEASURE_RxIndFlags"
	.byte	0x3
	.uahalf	0x4b4
	.uaword	0xafd
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Can_HVDC_SAFETYMEASURE_RxIndFlags
	.uleb128 0x15
	.string	"Can_HTB_CMD_RxIndFlags"
	.byte	0x3
	.uahalf	0x4b5
	.uaword	0xc84
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Can_HTB_CMD_RxIndFlags
	.uleb128 0x15
	.string	"Can_PARAMETER_COM_DCDC_RxIndFlags"
	.byte	0x3
	.uahalf	0x4b6
	.uaword	0xdaa
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Can_PARAMETER_COM_DCDC_RxIndFlags
	.uleb128 0x15
	.string	"Can_DCDC_HSFB_DIAG_REQ_RxIndFlags"
	.byte	0x3
	.uahalf	0x4b7
	.uaword	0xf9a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Can_DCDC_HSFB_DIAG_REQ_RxIndFlags
	.uleb128 0x15
	.string	"Can_DCDC_DEV_CMD_RxIndFlags"
	.byte	0x3
	.uahalf	0x4b8
	.uaword	0x1164
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Can_DCDC_DEV_CMD_RxIndFlags
	.uleb128 0x15
	.string	"Can_DCDC_CMD_RxIndFlags"
	.byte	0x3
	.uahalf	0x4b9
	.uaword	0x141d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Can_DCDC_CMD_RxIndFlags
	.uleb128 0x13
	.uaword	0xf0
	.uaword	0x1d42
	.uleb128 0x14
	.uaword	0xd3
	.byte	0x6
	.byte	0
	.uleb128 0x15
	.string	"RxTimeoutCounters"
	.byte	0x1
	.uahalf	0x16e
	.uaword	0x1d32
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	RxTimeoutCounters
	.uleb128 0x15
	.string	"IndicationFlags"
	.byte	0x1
	.uahalf	0x16f
	.uaword	0x1d32
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	IndicationFlags
	.uleb128 0x13
	.uaword	0xf0
	.uaword	0x1d92
	.uleb128 0x14
	.uaword	0xd3
	.byte	0xe
	.byte	0
	.uleb128 0x15
	.string	"ConfirmationFlags"
	.byte	0x1
	.uahalf	0x172
	.uaword	0x1d82
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	ConfirmationFlags
	.uleb128 0x15
	.string	"LvDc_Pma_ErrCode_internal"
	.byte	0x1
	.uahalf	0x176
	.uaword	0x178a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	LvDc_Pma_ErrCode_internal
	.uleb128 0x15
	.string	"DCDC_HTB_Measure_internal"
	.byte	0x1
	.uahalf	0x177
	.uaword	0x17ba
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	DCDC_HTB_Measure_internal
	.uleb128 0x15
	.string	"LVDC_WakeUpSleepManagement_internal"
	.byte	0x1
	.uahalf	0x178
	.uaword	0x17ea
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	LVDC_WakeUpSleepManagement_internal
	.uleb128 0x15
	.string	"LVDC_SafetyMeasure_internal"
	.byte	0x1
	.uahalf	0x179
	.uaword	0x1824
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	LVDC_SafetyMeasure_internal
	.uleb128 0x15
	.string	"DCDC_Measure4_internal"
	.byte	0x1
	.uahalf	0x17a
	.uaword	0x1856
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	DCDC_Measure4_internal
	.uleb128 0x15
	.string	"DCDC_Status_ErrCode_internal"
	.byte	0x1
	.uahalf	0x17b
	.uaword	0x1883
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	DCDC_Status_ErrCode_internal
	.uleb128 0x15
	.string	"Parameter_DCDC_Com_internal"
	.byte	0x1
	.uahalf	0x17c
	.uaword	0x18b6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Parameter_DCDC_Com_internal
	.uleb128 0x15
	.string	"DCDC_HSFB_Diag_Resp_internal"
	.byte	0x1
	.uahalf	0x17d
	.uaword	0x18e8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	DCDC_HSFB_Diag_Resp_internal
	.uleb128 0x15
	.string	"DCDC_Measure2_internal"
	.byte	0x1
	.uahalf	0x17e
	.uaword	0x191b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	DCDC_Measure2_internal
	.uleb128 0x15
	.string	"LvDc_Pma_ErrSrc_internal"
	.byte	0x1
	.uahalf	0x17f
	.uaword	0x1948
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	LvDc_Pma_ErrSrc_internal
	.uleb128 0x15
	.string	"DcDc_Scope1_internal"
	.byte	0x1
	.uahalf	0x180
	.uaword	0x1977
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	DcDc_Scope1_internal
	.uleb128 0x15
	.string	"DcDc_Scope0_internal"
	.byte	0x1
	.uahalf	0x181
	.uaword	0x19a2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	DcDc_Scope0_internal
	.uleb128 0x15
	.string	"DCDC_Status_internal"
	.byte	0x1
	.uahalf	0x182
	.uaword	0x19cd
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	DCDC_Status_internal
	.uleb128 0x15
	.string	"DCDC_Measure3_internal"
	.byte	0x1
	.uahalf	0x183
	.uaword	0x19f8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	DCDC_Measure3_internal
	.uleb128 0x15
	.string	"DCDC_Measure_internal"
	.byte	0x1
	.uahalf	0x184
	.uaword	0x1a25
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	DCDC_Measure_internal
	.uleb128 0x15
	.string	"COM_WakeUpSleepManagement_internal"
	.byte	0x1
	.uahalf	0x186
	.uaword	0x1a51
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	COM_WakeUpSleepManagement_internal
	.uleb128 0x15
	.string	"HVDC_SafetyMeasure_internal"
	.byte	0x1
	.uahalf	0x187
	.uaword	0x1a8a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	HVDC_SafetyMeasure_internal
	.uleb128 0x15
	.string	"HTB_CMD_internal"
	.byte	0x1
	.uahalf	0x188
	.uaword	0x1abc
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	HTB_CMD_internal
	.uleb128 0x15
	.string	"Parameter_Com_DCDC_internal"
	.byte	0x1
	.uahalf	0x189
	.uaword	0x1ae3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Parameter_Com_DCDC_internal
	.uleb128 0x15
	.string	"DCDC_HSFB_Diag_Req_internal"
	.byte	0x1
	.uahalf	0x18a
	.uaword	0x1b15
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	DCDC_HSFB_Diag_Req_internal
	.uleb128 0x15
	.string	"DCDC_DEV_CMD_internal"
	.byte	0x1
	.uahalf	0x18b
	.uaword	0x1b47
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	DCDC_DEV_CMD_internal
	.uleb128 0x15
	.string	"DCDC_CMD_internal"
	.byte	0x1
	.uahalf	0x18c
	.uaword	0x1b73
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	DCDC_CMD_internal
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
	.uleb128 0x5
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
	.uleb128 0x6
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x13
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
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uaword	.LVL10
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL10
	.uaword	.LVL11
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL13
	.uaword	.LVL14
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL14
	.uaword	.LVL15
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	.LVL15
	.uaword	.LVL16
	.uahalf	0x2
	.byte	0x36
	.byte	0x9f
	.uaword	.LVL16
	.uaword	.LVL17
	.uahalf	0x2
	.byte	0x37
	.byte	0x9f
	.uaword	.LVL17
	.uaword	.LVL18
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL18
	.uaword	.LVL19
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL19
	.uaword	.LVL20
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL21
	.uaword	.LVL22
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL22
	.uaword	.LVL23
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	.LVL23
	.uaword	.LVL24
	.uahalf	0x2
	.byte	0x36
	.byte	0x9f
	.uaword	.LVL24
	.uaword	.LVL25
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL25
	.uaword	.LVL26
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL26
	.uaword	.LVL27
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL27
	.uaword	.LVL28
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL28
	.uaword	.LVL29
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL29
	.uaword	.LVL30
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	.LVL30
	.uaword	.LVL31
	.uahalf	0x2
	.byte	0x36
	.byte	0x9f
	.uaword	.LVL31
	.uaword	.LVL32
	.uahalf	0x2
	.byte	0x37
	.byte	0x9f
	.uaword	.LVL32
	.uaword	.LVL33
	.uahalf	0x2
	.byte	0x38
	.byte	0x9f
	.uaword	.LVL33
	.uaword	.LVL34
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL34
	.uaword	.LVL35
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL35
	.uaword	.LVL36
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL36
	.uaword	.LVL37
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL37
	.uaword	.LVL38
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	.LVL38
	.uaword	.LVL39
	.uahalf	0x2
	.byte	0x36
	.byte	0x9f
	.uaword	.LVL39
	.uaword	.LVL40
	.uahalf	0x2
	.byte	0x37
	.byte	0x9f
	.uaword	.LVL40
	.uaword	.LVL41
	.uahalf	0x2
	.byte	0x38
	.byte	0x9f
	.uaword	.LVL41
	.uaword	.LVL42
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL42
	.uaword	.LVL43
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL43
	.uaword	.LVL44
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL44
	.uaword	.LVL45
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL45
	.uaword	.LVL46
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	.LVL46
	.uaword	.LVL47
	.uahalf	0x2
	.byte	0x36
	.byte	0x9f
	.uaword	.LVL47
	.uaword	.LVL48
	.uahalf	0x2
	.byte	0x37
	.byte	0x9f
	.uaword	.LVL48
	.uaword	.LVL49
	.uahalf	0x2
	.byte	0x38
	.byte	0x9f
	.uaword	.LVL49
	.uaword	.LVL50
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL50
	.uaword	.LVL51
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL51
	.uaword	.LVL52
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL52
	.uaword	.LVL53
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL53
	.uaword	.LVL54
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	.LVL54
	.uaword	.LVL55
	.uahalf	0x2
	.byte	0x36
	.byte	0x9f
	.uaword	.LVL55
	.uaword	.LVL56
	.uahalf	0x2
	.byte	0x37
	.byte	0x9f
	.uaword	.LVL56
	.uaword	.LVL57
	.uahalf	0x2
	.byte	0x38
	.byte	0x9f
	.uaword	.LVL57
	.uaword	.LVL58
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL58
	.uaword	.LVL59
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL59
	.uaword	.LVL60
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL60
	.uaword	.LVL61
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL61
	.uaword	.LVL62
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	.LVL62
	.uaword	.LVL63
	.uahalf	0x2
	.byte	0x36
	.byte	0x9f
	.uaword	.LVL63
	.uaword	.LVL64
	.uahalf	0x2
	.byte	0x37
	.byte	0x9f
	.uaword	.LVL64
	.uaword	.LVL65
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL65
	.uaword	.LVL66
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL66
	.uaword	.LVL67
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL67
	.uaword	.LVL68
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL68
	.uaword	.LVL69
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL69
	.uaword	.LVL70
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	.LVL70
	.uaword	.LVL71
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL71
	.uaword	.LVL72
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL72
	.uaword	.LVL73
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL73
	.uaword	.LVL74
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL74
	.uaword	.LVL75
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL75
	.uaword	.LVL76
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL76
	.uaword	.LVL77
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL77
	.uaword	.LVL78
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL78
	.uaword	.LVL79
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL79
	.uaword	.LVL80
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	.LVL80
	.uaword	.LVL81
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL81
	.uaword	.LVL82
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL82
	.uaword	.LVL83
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL83
	.uaword	.LVL84
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL84
	.uaword	.LVL85
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL85
	.uaword	.LVL86
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	.LVL86
	.uaword	.LVL87
	.uahalf	0x2
	.byte	0x36
	.byte	0x9f
	.uaword	.LVL87
	.uaword	.LVL88
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL88
	.uaword	.LVL89
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL89
	.uaword	.LVL90
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL90
	.uaword	.LVL91
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL91
	.uaword	.LVL92
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL92
	.uaword	.LVL93
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	.LVL93
	.uaword	.LVL94
	.uahalf	0x2
	.byte	0x36
	.byte	0x9f
	.uaword	.LVL94
	.uaword	.LFE0
	.uahalf	0x2
	.byte	0x37
	.byte	0x9f
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
	.uaword	.LFB0
	.uaword	.LFE0-.LFB0
	.uaword	0
	.uaword	0
	.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB0
	.uaword	.LFE0
	.uaword	0
	.uaword	0
	.section .debug_line,"",@progbits
.Ldebug_line0:
	.section .debug_str,"",@progbits
.LASF6:
	.string	"reserved5"
.LASF0:
	.string	"GenMsgSendType"
.LASF1:
	.string	"DataInternal"
.LASF9:
	.string	"Word"
.LASF2:
	.string	"reserved1"
.LASF3:
	.string	"reserved2"
.LASF4:
	.string	"reserved3"
.LASF5:
	.string	"reserved4"
.LASF7:
	.string	"reserved6"
.LASF8:
	.string	"High"
	.ident	"GCC: (HighTec Release v4.6.3.0) 4.6.3 build on 2013-05-17"
