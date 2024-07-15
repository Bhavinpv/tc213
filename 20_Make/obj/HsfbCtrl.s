	.file	"HsfbCtrl.c"
.section .text,"ax",@progbits
.Ltext0:
	.section .text.MPU_ASIL_CODE,"ax",@progbits
	.align 3
	.type	HsfbCtrl_IoutIntCalc, @function
HsfbCtrl_IoutIntCalc:
.LFB0:
	.file 1 "../40_Appl/HsfbCtrl/HsfbCtrl.c"
	.loc 1 94 0
.LVL0:
	.loc 1 96 0
	movh.a	%a15, hi:HsfbCtrl_DW
	lea	%a15, [%a15] lo:HsfbCtrl_DW
	sub.f	%d5, %d4, %d5
.LVL1:
	movh	%d15, 14546
	ld.w	%d4, [%a15] 132
.LVL2:
	addi	%d15, %d15, -18665
	madd.f	%d4, %d4, %d5, %d15
	.loc 1 97 0
	mov	%d2, 0
	.loc 1 96 0
	st.w	[%a15] 132, %d4
	.loc 1 97 0
	cmp.f	%d15, %d4, %d2
	jnz.t	%d15, 0, .L13
.LBB12:
.LBB13:
	.loc 1 100 0
	movh	%d15, 17116
	cmp.f	%d4, %d4, %d15
	jz.t	%d4, 2, .L11
.LVL3:
	.loc 1 102 0
	st.w	[%a15] 132, %d15
	.loc 1 101 0
	movh	%d2, 16384
	ret
.LVL4:
.L11:
	.loc 1 104 0
	movh	%d2, 16256
.LVL5:
.LBE13:
.LBE12:
	.loc 1 108 0
	ret
.LVL6:
.L13:
	.loc 1 99 0
	st.w	[%a15] 132, %d2
	ret
.LFE0:
	.size	HsfbCtrl_IoutIntCalc, .-HsfbCtrl_IoutIntCalc
	.align 3
	.type	HsfbCtrl_DeratingCalc.constprop.3, @function
HsfbCtrl_DeratingCalc.constprop.3:
.LFB17:
	.loc 1 118 0
.LVL7:
	.loc 1 121 0
	movh	%d15, 16772
	cmp.f	%d15, %d4, %d15
	jnz.t	%d15, 2, .L32
	.loc 1 124 0
	movh	%d15, 16768
	cmp.f	%d2, %d4, %d15
	jnz.t	%d2, 2, .L33
	.loc 1 129 0
	movh	%d15, 16744
	cmp.f	%d15, %d4, %d15
	jnz.t	%d15, 2, .L34
.LVL8:
.LBB16:
.LBB17:
	.loc 1 133 0
	movh	%d15, 16717
	addi	%d15, %d15, -13107
	cmp.f	%d15, %d4, %d15
	jnz.t	%d15, 2, .L35
.LVL9:
	.loc 1 137 0
	movh	%d15, 17312
	.loc 1 138 0
	movh.a	%a15, hi:HsfbCtrl_DW
	lea	%a15, [%a15] lo:HsfbCtrl_DW
	.loc 1 137 0
	st.w	[%a4]0, %d15
	.loc 1 138 0
	movh	%d15, 17274
	st.w	[%a15] 128, %d15
	ret
.LVL10:
.L33:
.LBE17:
.LBE16:
	.loc 1 125 0
	sub.f	%d15, %d4, %d15
	movh	%d3, 16256
	movh	%d2, 16384
	msub.f	%d15, %d3, %d15, %d2
.LVL11:
	.loc 1 128 0
	movh	%d4, 17763
.LVL12:
	.loc 1 127 0
	movh	%d3, 17792
	mul.f	%d3, %d15, %d3
	.loc 1 128 0
	addi	%d4, %d4, -28672
	.loc 1 127 0
	movh	%d2, 15744
	.loc 1 128 0
	mul.f	%d15, %d15, %d4
.LVL13:
	.loc 1 127 0
	mul.f	%d3, %d3, %d2
	.loc 1 128 0
	mul.f	%d2, %d15, %d2
	movh.a	%a15, hi:HsfbCtrl_DW
	lea	%a15, [%a15] lo:HsfbCtrl_DW
	.loc 1 127 0
	st.w	[%a4]0, %d3
	.loc 1 128 0
	st.w	[%a15] 128, %d2
	ret
.LVL14:
.L32:
	.loc 1 122 0
	mov	%d15, 0
	.loc 1 123 0
	movh.a	%a15, hi:HsfbCtrl_DW
	lea	%a15, [%a15] lo:HsfbCtrl_DW
	.loc 1 122 0
	st.w	[%a4]0, %d15
	.loc 1 123 0
	st.w	[%a15] 128, %d15
	ret
.LVL15:
.L35:
.LBB19:
.LBB18:
	.loc 1 134 0
	movh	%d15, 16256
	div.f	%d4, %d15, %d4
.LVL16:
	movh	%d15, 17792
	.loc 1 135 0
	movh.a	%a15, hi:HsfbCtrl_DW
	.loc 1 134 0
	mul.f	%d4, %d4, %d15
	.loc 1 135 0
	movh	%d15, 17274
	lea	%a15, [%a15] lo:HsfbCtrl_DW
	.loc 1 134 0
	st.w	[%a4]0, %d4
	.loc 1 135 0
	st.w	[%a15] 128, %d15
	ret
.LVL17:
.L34:
.LBE18:
.LBE19:
	.loc 1 130 0
	movh	%d15, 16256
	div.f	%d4, %d15, %d4
.LVL18:
	.loc 1 131 0
	movh	%d15, 17792
	.loc 1 132 0
	movh.a	%a15, hi:HsfbCtrl_DW
	.loc 1 131 0
	mul.f	%d15, %d4, %d15
	.loc 1 132 0
	lea	%a15, [%a15] lo:HsfbCtrl_DW
	.loc 1 131 0
	st.w	[%a4]0, %d15
	.loc 1 132 0
	movh	%d15, 17763
	addi	%d15, %d15, -28672
	mul.f	%d4, %d4, %d15
.LVL19:
	st.w	[%a15] 128, %d4
	ret
.LFE17:
	.size	HsfbCtrl_DeratingCalc.constprop.3, .-HsfbCtrl_DeratingCalc.constprop.3
	.align 3
	.global	HsfbCtrl_Derating_Calc
	.type	HsfbCtrl_Derating_Calc, @function
HsfbCtrl_Derating_Calc:
.LFB3:
	.loc 1 171 0
	.loc 1 173 0
	movh.a	%a15, hi:HsfbCtrl_DW
	lea	%a15, [%a15] lo:HsfbCtrl_DW
	ld.bu	%d15, [%a15] 165
	.loc 1 171 0
	sub.a	%SP, 8
.LCFI0:
	.loc 1 173 0
	jz	%d15, .L51
	.loc 1 177 0
	ld.bu	%d15, [%a15] 166
	.loc 1 178 0
	ld.w	%d4, [%a15] 60
	ld.w	%d5, [%a15] 128
	.loc 1 177 0
	jeq	%d15, 1, .L52
	.loc 1 190 0
	call	HsfbCtrl_IoutIntCalc
	movh	%d15, 16384
	cmp.f	%d2, %d2, %d15
	and	%d2, %d2, 13
	jnz	%d2, .L44
	.loc 1 190 0 is_stmt 0 discriminator 1
	ld.bu	%d15, [%a15] 174
	jnz	%d15, .L53
.L44:
	.loc 1 194 0 is_stmt 1
	movh.a	%a2, hi:HsfbCtrl_MeasStatus100us
	ld.a	%a2, [%a2] lo:HsfbCtrl_MeasStatus100us
	lea	%a4, [%SP] 4
	ld.w	%d4, [%a2] 28
	call	HsfbCtrl_DeratingCalc.constprop.3
.LVL20:
	.loc 1 196 0
	ld.w	%d3, [%SP] 4
.L49:
	ld.w	%d15, [%a15] 64
.LVL21:
.LBB20:
.LBB21:
	.loc 1 153 0
	cmp.f	%d2, %d3, %d15
	extr.u	%d2, %d2, 0, 1
	.loc 1 154 0
	seln	%d15, %d2, %d15, %d3
.LVL22:
.LBE21:
.LBE20:
	.loc 1 196 0
	st.w	[%a15] 72, %d15
	ret
.LVL23:
.L51:
	.loc 1 174 0
	mov	%d15, 1
	st.b	[%a15] 165, %d15
	.loc 1 175 0
	mov	%d15, 0
	st.w	[%a15] 132, %d15
	.loc 1 176 0
	mov	%d15, 2
	st.b	[%a15] 166, %d15
	ret
.L52:
	.loc 1 178 0
	call	HsfbCtrl_IoutIntCalc
	mov	%d15, 0
	cmp.f	%d2, %d2, %d15
	and	%d2, %d2, 13
	jz	%d2, .L50
	.loc 1 180 0
	ld.bu	%d15, [%a15] 174
	jnz	%d15, .L41
.L50:
	.loc 1 181 0
	mov	%d15, 2
	st.b	[%a15] 166, %d15
	ret
.L53:
	.loc 1 192 0
	mov	%d15, 1
	st.b	[%a15] 166, %d15
	ret
.L41:
	.loc 1 183 0
	movh.a	%a2, hi:HsfbCtrl_MeasStatus100us
	ld.a	%a2, [%a2] lo:HsfbCtrl_MeasStatus100us
	lea	%a4, [%SP] 4
	ld.w	%d4, [%a2] 28
	call	HsfbCtrl_DeratingCalc.constprop.3
	.loc 1 185 0
	ld.w	%d3, [%a15] 128
	j	.L49
.LFE3:
	.size	HsfbCtrl_Derating_Calc, .-HsfbCtrl_Derating_Calc
	.align 3
	.global	HsfbCtrl_Buck_Ctrl_100us
	.type	HsfbCtrl_Buck_Ctrl_100us, @function
HsfbCtrl_Buck_Ctrl_100us:
.LFB4:
	.loc 1 210 0
	.loc 1 234 0
	movh.a	%a12, hi:HsfbCtrl_MeasStatus100us
	ld.a	%a3, [%a12] lo:HsfbCtrl_MeasStatus100us
	movh	%d2, 17495
	.loc 1 236 0
	movh.a	%a15, hi:HsfbCtrl_DW
	.loc 1 234 0
	ld.w	%d15, [%a3] 12
	.loc 1 236 0
	lea	%a15, [%a15] lo:HsfbCtrl_DW
	.loc 1 234 0
	cmp.f	%d2, %d15, %d2
	.loc 1 210 0
	sub.a	%SP, 64
.LCFI1:
	.loc 1 236 0
	ld.bu	%d3, [%a15] 169
	.loc 1 235 0
	mov	%d14, 1
	mov	%d13, 1
	.loc 1 234 0
	jnz.t	%d2, 2, .L55
	.loc 1 234 0 is_stmt 0 discriminator 1
	movh	%d2, 17234
	cmp.f	%d2, %d15, %d2
	jz.t	%d2, 0, .L125
.L55:
	.loc 1 235 0 is_stmt 1
	mov	%d2, 0
	jz	%d3, .L58
	.loc 1 237 0
	ld.hu	%d4, [%a15] 140
.LVL24:
	.loc 1 242 0
	mov	%d2, 1000
	ge.u	%d2, %d4, %d2
.LVL25:
	eq	%d13, %d2, 0
	add	%d13, %d4
	extr.u	%d13, %d13, 0, 16
.LVL26:
.L59:
	.loc 1 243 0 discriminator 1
	movh	%d4, 17214
	cmp.f	%d4, %d15, %d4
	mov	%d14, 1
	jz.t	%d4, 0, .L58
	.loc 1 245 0
	ld.hu	%d5, [%a15] 142
.LVL27:
	ge.u	%d4, %d5, 30
	eq	%d14, %d4, 0
	add	%d14, %d5
	extr.u	%d14, %d14, 0, 16
	or	%d2, %d4
.LVL28:
.L58:
	.loc 1 251 0
	movh.a	%a4, hi:HsfbCtrl_Error
	st.b	[%a4] lo:HsfbCtrl_Error, %d2
.LVL29:
	.loc 1 252 0
	movh	%d2, 17397
	cmp.f	%d2, %d15, %d2
	jz.t	%d2, 2, .L61
	.loc 1 255 0 discriminator 1
	movh.a	%a2, hi:HsfbCtrl_PwmStatus15us
	ld.a	%a2, [%a2] lo:HsfbCtrl_PwmStatus15us
	.loc 1 254 0 discriminator 1
	ld.hu	%d2, [%a2] 4
	jnz	%d2, .L131
.L63:
.LVL30:
	.loc 1 267 0 discriminator 2
	mov	%d2, 0
	.loc 1 264 0 discriminator 2
	ld.hu	%d0, [%a15] 144
	.loc 1 272 0 discriminator 2
	mov	%d12, 0
	.loc 1 267 0 discriminator 2
	st.h	[%a15] 146, %d2
	.loc 1 272 0 discriminator 2
	mov	%d2, 0
	.loc 1 264 0 discriminator 2
	ne	%d0, %d0, 0
	.loc 1 272 0 discriminator 2
	mov	%d9, 1
	st.w	[%SP] 44, %d2
	mov	%d2, 1
	.loc 1 264 0 discriminator 2
	st.w	[%SP] 24, %d0
.LVL31:
	.loc 1 272 0 discriminator 2
	st.w	[%SP] 28, %d2
	jz	%d0, .L132
.LVL32:
.L66:
	.loc 1 275 0 discriminator 3
	ld.w	%d2, [%a15] 104
	.loc 1 276 0 discriminator 3
	movh	%d4, 16672
	.loc 1 275 0 discriminator 3
	sub.f	%d15, %d15, %d2
	movh.a	%a2, hi:HsfbCtrl_VinSR
	.loc 1 276 0 discriminator 3
	mul.f	%d2, %d15, %d4
	.loc 1 277 0 discriminator 3
	movh	%d5, 15908
	addi	%d5, %d5, -10486
	.loc 1 274 0 discriminator 3
	lea	%a4, [%a4] lo:HsfbCtrl_Error
	.loc 1 275 0 discriminator 3
	st.w	[%a2] lo:HsfbCtrl_VinSR, %d2
	.loc 1 277 0 discriminator 3
	movh.a	%a2, hi:HsfbCtrl_VinSRFil
	ld.w	%d4, [%a2] lo:HsfbCtrl_VinSRFil
	.loc 1 274 0 discriminator 3
	st.b	[%a4] 1, %d9
	.loc 1 277 0 discriminator 3
	sub.f	%d15, %d2, %d4
	.loc 1 278 0 discriminator 3
	movh	%d2, 49864
	.loc 1 277 0 discriminator 3
	madd.f	%d15, %d4, %d15, %d5
	st.w	[%a2] lo:HsfbCtrl_VinSRFil, %d15
	.loc 1 278 0 discriminator 3
	cmp.f	%d15, %d15, %d2
	jz.t	%d15, 0, .L67
	.loc 1 278 0 is_stmt 0 discriminator 1
	jz	%d3, .L67
.LVL33:
	.loc 1 288 0 is_stmt 1 discriminator 3
	mov	%d15, 0
	.loc 1 285 0 discriminator 3
	ld.hu	%d6, [%a15] 148
	.loc 1 293 0 discriminator 3
	mov	%d3, 0
	.loc 1 285 0 discriminator 3
	ge.u	%d6, %d6, 3
	.loc 1 288 0 discriminator 3
	st.h	[%a15] 150, %d15
	.loc 1 293 0 discriminator 3
	mov	%d15, 1
	.loc 1 285 0 discriminator 3
	st.w	[%SP] 12, %d6
.LVL34:
	.loc 1 293 0 discriminator 3
	st.w	[%SP] 32, %d3
	st.w	[%SP] 20, %d15
	mov	%d11, 0
	mov	%d8, 1
	jz	%d6, .L133
.LVL35:
.L69:
	.loc 1 295 0 discriminator 3
	or	%d15, %d8, %d9
	.loc 1 296 0 discriminator 3
	ld.w	%d2, [%a3] 20
	.loc 1 295 0 discriminator 3
	movh.a	%a2, hi:HsfbCtrl_EnDis
	.loc 1 297 0 discriminator 3
	movh	%d3, 16544
	.loc 1 295 0 discriminator 3
	st.b	[%a2] lo:HsfbCtrl_EnDis, %d15
	.loc 1 296 0 discriminator 3
	st.w	[%a15] 60, %d2
	.loc 1 297 0 discriminator 3
	cmp.f	%d3, %d2, %d3
	jz.t	%d3, 2, .L127
	mov	%d3, 1
	.loc 1 299 0
	mov	%d4, 0
	mov.a	%a14, 0
	st.w	[%SP] 36, %d3
	st.h	[%a15] 152, %d4
.L72:
.LVL36:
	.loc 1 304 0
	movh	%d3, 49312
	cmp.f	%d2, %d2, %d3
	jz.t	%d2, 0, .L128
	mov	%d2, 1
	.loc 1 306 0
	mov	%d3, 0
	st.w	[%SP] 40, %d2
	mov	%d2, 0
	st.w	[%SP] 16, %d3
	st.h	[%a15] 154, %d2
.L75:
.LVL37:
	.loc 1 311 0
	mov	%d10, 1
	jnz.a	%a14, .L76
	.loc 1 311 0 is_stmt 0 discriminator 2
	ld.w	%d3, [%SP] 16
	mov	%d10, 0
	jz	%d3, .L134
.L76:
.LVL38:
	.loc 1 313 0 is_stmt 1 discriminator 3
	or	%d2, %d10, %d15
	lea	%a2, [%a2] lo:HsfbCtrl_EnDis
	.loc 1 314 0 discriminator 3
	st.b	[%a2] 2, %d15
	.loc 1 313 0 discriminator 3
	st.b	[%a2] 1, %d2
	.loc 1 316 0 discriminator 3
	mov	%d2, 0
	movh.a	%a2, hi:HsfbCtrl_PrechargeCnt
	.loc 1 317 0 discriminator 3
	movh.a	%a13, hi:HsfbCtrl_AppRx10ms
	.loc 1 316 0 discriminator 3
	st.h	[%a2] lo:HsfbCtrl_PrechargeCnt, %d2
	.loc 1 317 0 discriminator 3
	ld.a	%a2, [%a13] lo:HsfbCtrl_AppRx10ms
	movh	%d4, 15821
	addi	%d4, %d4, -13107
	ld.hu	%d2, [%a2] 6
	.loc 1 315 0 discriminator 3
	st.b	[%a4] 3, %d8
	.loc 1 317 0 discriminator 3
	utof	%d2, %d2
	mul.f	%d2, %d2, %d4
	st.w	[%a15] 64, %d2
	.loc 1 319 0 discriminator 3
	ld.hu	%d2, [%a2] 18
	ne	%d2, %d2, 0
	st.b	[%a15] 174, %d2
	.loc 1 320 0 discriminator 3
	call	HsfbCtrl_Derating_Calc
	.loc 1 321 0 discriminator 3
	ld.bu	%d4, [%a15] 169
	ld.w	%d5, [%a15] 72
	ld.w	%d7, [%a15] 60
	movh	%d6, 16384
	lea	%a4, [%SP] 60
	lea	%a5, [%a15] 36
	call	HsfbCtrl_SR_Calc
	.loc 1 324 0 discriminator 3
	ld.w	%d3, [%a15] 60
	ld.w	%d2, [%a15] 116
	.loc 1 325 0 discriminator 3
	mov	%d4, 0
	.loc 1 324 0 discriminator 3
	sub.f	%d2, %d3, %d2
.LVL39:
	.loc 1 325 0 discriminator 3
	cmp.f	%d15, %d2, %d4
	or.t	%d15, %d15,0, %d15,1
	jnz	%d15, .L77
	.loc 1 325 0 is_stmt 0
	add.f	%d4, %d2, %d2
.L77:
.LVL40:
	.loc 1 329 0 is_stmt 1
	add.f	%d4, %d3, %d4
	movh	%d15, 17337
	sub.f	%d15, %d15, %d4
	movh	%d2, 16752
	mul.f	%d15, %d15, %d2
	.loc 1 330 0
	mov	%d2, 0
	cmp.f	%d3, %d15, %d2
	.loc 1 329 0
	st.w	[%SP] 52, %d15
.LVL41:
	.loc 1 330 0
	jnz.t	%d3, 2, .L106
.LVL42:
	.loc 1 336 0
	or.t	%d4, %d3,2, %d3,1
	jnz	%d4, .L78
	.loc 1 348 0
	st.w	[%SP] 60, %d2
.LVL43:
.L85:
	.loc 1 352 0
	ld.a	%a2, [%a13] lo:HsfbCtrl_AppRx10ms
	.loc 1 351 0
	movh	%d2, 15396
	addi	%d2, %d2, -10486
	.loc 1 352 0
	ld.hu	%d5, [%a2] 8
	.loc 1 354 0
	ld.a	%a2, [%a12] lo:HsfbCtrl_MeasStatus100us
	.loc 1 352 0
	utof	%d5, %d5
	.loc 1 351 0
	ld.bu	%d4, [%a15] 169
	mul.f	%d5, %d5, %d2
	ld.w	%d7, [%a2] 28
	movh	%d6, 15268
	addi	%d6, %d6, -10486
	lea	%a4, [%SP] 52
	lea	%a5, [%a15] 24
	call	HsfbCtrl_SR_Calc
	.loc 1 356 0
	ld.w	%d2, [%a15] 60
	ld.w	%d1, [%SP] 52
	ld.w	%d5, [%SP] 60
	movh.a	%a2, hi:HsfbCtrl_Iout_Buck_PI
	lea	%a2, [%a2] lo:HsfbCtrl_Iout_Buck_PI
	ld.w	%d7, [%a2] 16
	ld.bu	%d4, [%a15] 169
	sub.f	%d5, %d5, %d2
	ld.w	%d2, [%a2] 20
	st.w	[%SP]0, %d1
	addih	%d1, %d1, 0x8000
	add.f	%d5, %d5, %d15
	mul.f	%d7, %d7, %d2
	st.w	[%SP] 4, %d1
	ld.w	%d6, [%a2] 12
	eq	%d4, %d4, 0
	lea	%a4, [%SP] 56
	lea	%a5, [%a15] 28
	call	HsfbCtrl_PI_Calc
	.loc 1 360 0
	ld.w	%d2, [%a15] 60
	ld.w	%d4, [%a15] 120
	.loc 1 361 0
	ld.w	%d1, [%a15] 124
	.loc 1 360 0
	sub.f	%d4, %d2, %d4
	movh	%d15, 16672
	msub.f	%d4, %d1, %d4, %d15
	movh	%d15, 15524
	addi	%d15, %d15, -10486
	msub.f	%d4, %d1, %d4, %d15
.LVL44:
	.loc 1 363 0
	movh	%d15, 17315
	addi	%d15, %d15, -32768
	sub.f	%d15, %d15, %d2
	movh	%d3, 15693
	addi	%d3, %d3, -13107
	msub.f	%d15, %d4, %d15, %d3
.LVL45:
	.loc 1 368 0
	ld.w	%d6, [%SP] 56
	.loc 1 378 0
	ld.hu	%d0, [%a15] 144
	.loc 1 363 0
	addih	%d15, %d15, 0x8000
	mul.f	%d15, %d15, %d3
	.loc 1 364 0
	mov	%d3, 0
	cmp.f	%d3, %d15, %d3
	extr.u	%d3, %d3, 2, 1
	.loc 1 392 0
	ld.a	%a2, [%a12] lo:HsfbCtrl_MeasStatus100us
	.loc 1 364 0
	seln	%d15, %d3, %d15, 0
	.loc 1 368 0
	add.f	%d15, %d6, %d15
	.loc 1 386 0
	ld.hu	%d7, [%a15] 146
	.loc 1 391 0
	st.b	[%a15] 175, %d9
	.loc 1 392 0
	ld.w	%d6, [%a2] 12
	.loc 1 368 0
	st.w	[%a15] 68, %d15
	.loc 1 378 0
	ld.w	%d15, [%SP] 24
	.loc 1 381 0
	ld.w	%d3, [%SP] 28
	.loc 1 378 0
	cmov	%d0, %d15, 1
.LVL46:
	.loc 1 389 0
	ld.w	%d15, [%SP] 44
	.loc 1 386 0
	seln	%d12, %d12, %d7, 30
.LVL47:
	.loc 1 389 0
	add	%d12, %d15
.LVL48:
	.loc 1 392 0
	st.w	[%a15] 104, %d6
	.loc 1 396 0
	ld.w	%d15, [%SP] 12
	ld.hu	%d6, [%a15] 148
	.loc 1 404 0
	ld.hu	%d5, [%a15] 150
	.loc 1 381 0
	add	%d0, %d3
	.loc 1 399 0
	ld.w	%d3, [%SP] 20
	.loc 1 396 0
	cmov	%d6, %d15, 3
.LVL49:
	.loc 1 407 0
	ld.w	%d15, [%SP] 32
	.loc 1 399 0
	add	%d6, %d3
.LVL50:
	.loc 1 404 0
	seln	%d11, %d11, %d5, 30
.LVL51:
	.loc 1 413 0
	ld.hu	%d3, [%a15] 152
	.loc 1 407 0
	add	%d11, %d15
.LVL52:
	.loc 1 413 0
	mov.d	%d15, %a14
	cmov	%d3, %d15, 1
.LVL53:
	.loc 1 416 0
	ld.w	%d15, [%SP] 40
	.loc 1 420 0
	ld.hu	%d5, [%a15] 154
	.loc 1 416 0
	add	%d3, %d15
.LVL54:
	.loc 1 420 0
	ld.w	%d15, [%SP] 16
	.loc 1 371 0
	st.h	[%a15] 140, %d13
	.loc 1 416 0
	st.h	[%a15] 152, %d3
	.loc 1 420 0
	mov	%d3, 500
	cmov	%d5, %d15, %d3
.LVL55:
	.loc 1 423 0
	ld.w	%d15, [%SP] 36
	.loc 1 373 0
	st.h	[%a15] 142, %d14
	.loc 1 423 0
	add	%d15, %d5
	.loc 1 381 0
	st.h	[%a15] 144, %d0
	.loc 1 389 0
	st.h	[%a15] 146, %d12
	.loc 1 423 0
	st.h	[%a15] 154, %d15
	.loc 1 399 0
	st.h	[%a15] 148, %d6
	.loc 1 407 0
	st.h	[%a15] 150, %d11
	.loc 1 409 0
	st.b	[%a15] 176, %d8
	.loc 1 424 0
	st.b	[%a15] 177, %d10
	.loc 1 425 0
	ld.w	%d15, [%SP] 60
	st.w	[%a15] 112, %d15
	.loc 1 426 0
	st.w	[%a15] 116, %d2
	.loc 1 427 0
	st.w	[%a15] 120, %d2
	.loc 1 428 0
	st.w	[%a15] 124, %d4
	.loc 1 429 0
	ret
.LVL56:
.L131:
	.loc 1 257 0
	ld.w	%d2, [%a2] 8
	.loc 1 256 0
	movh	%d4, 16256
	cmp.f	%d4, %d2, %d4
	jnz.t	%d4, 0, .L135
.L61:
.LVL57:
	.loc 1 261 0
	mov	%d2, 0
	ld.hu	%d12, [%a15] 146
	.loc 1 272 0
	mov	%d9, 0
	.loc 1 261 0
	st.h	[%a15] 144, %d2
.LVL58:
	.loc 1 264 0
	mov	%d2, 0
	.loc 1 261 0
	ge.u	%d12, %d12, 30
	.loc 1 264 0
	st.w	[%SP] 24, %d2
	.loc 1 272 0
	st.w	[%SP] 28, %d2
	mov	%d2, 1
	st.w	[%SP] 44, %d2
	jnz	%d12, .L66
.LVL59:
.L94:
	.loc 1 272 0 is_stmt 0 discriminator 1
	ld.bu	%d9, [%a15] 175
	mov	%d12, 0
	ne	%d9, %d9, 0
	j	.L66
.LVL60:
.L67:
	.loc 1 282 0 is_stmt 1
	mov	%d15, 0
	.loc 1 285 0
	mov	%d3, 0
	.loc 1 293 0
	mov	%d2, 0
	.loc 1 282 0
	st.h	[%a15] 148, %d15
.LVL61:
	.loc 1 293 0
	mov	%d15, 1
	.loc 1 282 0
	ld.hu	%d11, [%a15] 150
	.loc 1 285 0
	st.w	[%SP] 12, %d3
	.loc 1 282 0
	ge.u	%d11, %d11, 30
	.loc 1 293 0
	st.w	[%SP] 32, %d15
	st.w	[%SP] 20, %d2
	mov	%d8, 0
	jnz	%d11, .L69
.LVL62:
.L95:
	.loc 1 293 0 is_stmt 0 discriminator 1
	ld.bu	%d8, [%a15] 176
	mov	%d11, 0
	ne	%d8, %d8, 0
	j	.L69
.LVL63:
.L128:
	mov	%d2, 0
	st.w	[%SP] 40, %d2
	.loc 1 305 0 is_stmt 1
	ld.hu	%d2, [%a15] 154
	ge.u	%d2, %d2, 500
	st.w	[%SP] 16, %d2
	j	.L75
.LVL64:
.L127:
	mov	%d3, 0
	.loc 1 298 0 discriminator 3
	ld.hu	%d4, [%a15] 152
	ne	%d4, %d4, 0
	st.w	[%SP] 36, %d3
	mov.a	%a14, %d4
	j	.L72
.LVL65:
.L106:
	.loc 1 331 0
	mov	%d15, %d2
.L78:
	.loc 1 337 0
	ld.w	%d4, [%a15] 112
.LVL66:
	ld.w	%d2, [%SP] 60
	.loc 1 338 0
	movh	%d3, 16384
	.loc 1 337 0
	sub.f	%d2, %d2, %d4
	.loc 1 338 0
	cmp.f	%d6, %d2, %d3
	.loc 1 337 0
	st.w	[%SP] 52, %d2
	.loc 1 338 0
	jz.t	%d6, 2, .L130
	.loc 1 339 0
	st.w	[%SP] 52, %d3
	mov	%d2, %d3
.L83:
	.loc 1 346 0
	add.f	%d2, %d4, %d2
	st.w	[%SP] 60, %d2
	j	.L85
.LVL67:
.L125:
	.loc 1 243 0
	mov	%d2, 0
	jz	%d3, .L58
	j	.L59
.LVL68:
.L134:
	.loc 1 209 0 discriminator 1
	ld.bu	%d10, [%a15] 177
	.loc 1 311 0 discriminator 1
	ne	%d10, %d10, 0
	j	.L76
.LVL69:
.L130:
	.loc 1 341 0
	movh	%d6, 49152
	cmp.f	%d3, %d2, %d6
	jz.t	%d3, 0, .L83
	.loc 1 342 0
	st.w	[%SP] 52, %d6
	mov	%d2, %d6
	j	.L83
.LVL70:
.L135:
	.loc 1 257 0
	mov	%d4, 0
	cmp.f	%d2, %d2, %d4
	jz.t	%d2, 2, .L61
	j	.L63
.LVL71:
.L132:
	.loc 1 272 0
	st.w	[%SP] 44, %d0
	j	.L94
.LVL72:
.L133:
	.loc 1 293 0
	st.w	[%SP] 32, %d6
	j	.L95
.LFE4:
	.size	HsfbCtrl_Buck_Ctrl_100us, .-HsfbCtrl_Buck_Ctrl_100us
	.align 3
	.global	HsfbCtrl_Precharge_State
	.type	HsfbCtrl_Precharge_State, @function
HsfbCtrl_Precharge_State:
.LFB6:
	.loc 1 578 0
	.loc 1 579 0
	movh.a	%a15, hi:HsfbCtrl_DW
	lea	%a15, [%a15] lo:HsfbCtrl_DW
	ld.bu	%d15, [%a15] 162
	jz	%d15, .L184
	.loc 1 590 0
	ld.bu	%d15, [%a15] 163
	jeq	%d15, 1, .L140
	jeq	%d15, 2, .L185
	.loc 1 618 0
	ld.bu	%d15, [%a15] 169
	jz	%d15, .L186
	.loc 1 628 0
	mov	%d2, 0
	.loc 1 629 0
	mov	%d15, 1
	.loc 1 628 0
	movh.a	%a2, hi:HsfbCtrl_PrechargeCnt
	.loc 1 631 0
	st.b	[%a15] 173, %d2
	.loc 1 629 0
	st.b	[%a15] 171, %d15
	.loc 1 630 0
	st.b	[%a15] 172, %d15
	.loc 1 632 0
	st.h	[%a15] 158, %d2
	.loc 1 633 0
	movh.a	%a15, hi:HsfbCtrl_Error
	lea	%a15, [%a15] lo:HsfbCtrl_Error
	.loc 1 628 0
	st.h	[%a2] lo:HsfbCtrl_PrechargeCnt, %d2
	.loc 1 633 0
	st.b	[%a15] 4, %d15
	ret
.L140:
	.loc 1 592 0
	ld.bu	%d2, [%a15] 169
	jz	%d2, .L142
	.loc 1 593 0
	mov	%d2, 2
	.loc 1 596 0
	movh.a	%a2, hi:HsfbCtrl_Param
	.loc 1 599 0
	st.b	[%a15] 173, %d15
	.loc 1 593 0
	st.b	[%a15] 163, %d2
	.loc 1 594 0
	mov	%d2, 3
	.loc 1 600 0
	mov	%d15, 0
	.loc 1 594 0
	st.b	[%a15] 164, %d2
	.loc 1 595 0
	movh	%d2, 16448
	.loc 1 600 0
	st.h	[%a15] 156, %d15
	.loc 1 595 0
	st.w	[%a15] 52, %d2
	.loc 1 596 0
	ld.w	%d2, [%a2] lo:HsfbCtrl_Param
	st.w	[%a15] 56, %d2
	.loc 1 597 0
	mov	%d2, 0
	st.b	[%a15] 171, %d2
	.loc 1 598 0
	st.b	[%a15] 172, %d2
	ret
.L184:
	.loc 1 580 0
	mov	%d3, 1
	st.b	[%a15] 162, %d3
.L183:
	.loc 1 620 0
	mov	%d2, 0
	.loc 1 619 0
	st.b	[%a15] 163, %d3
	.loc 1 621 0
	st.b	[%a15] 171, %d3
	.loc 1 622 0
	st.b	[%a15] 172, %d2
	.loc 1 623 0
	st.b	[%a15] 173, %d2
	.loc 1 624 0
	st.h	[%a15] 158, %d15
	.loc 1 625 0
	movh.a	%a15, hi:HsfbCtrl_Error
	lea	%a15, [%a15] lo:HsfbCtrl_Error
	.loc 1 620 0
	movh.a	%a2, hi:HsfbCtrl_PrechargeCnt
	st.h	[%a2] lo:HsfbCtrl_PrechargeCnt, %d15
	.loc 1 625 0
	st.b	[%a15] 4, %d2
	.loc 1 626 0
	st.b	[%a15] 7, %d2
	ret
.L185:
.LVL73:
.LBB24:
.LBB25:
	.loc 1 444 0
	ld.bu	%d15, [%a15] 169
	jz	%d15, .L187
	.loc 1 456 0
	movh.a	%a2, hi:HsfbCtrl_PrechargeCnt
	ld.hu	%d15, [%a2] lo:HsfbCtrl_PrechargeCnt
	movh.a	%a3, hi:HsfbCtrl_Error
	lea	%a3, [%a3] lo:HsfbCtrl_Error
	jlt.u	%d15, 2, .L188
.LVL74:
.L144:
	.loc 1 557 0
	mov	%d15, 0
	.loc 1 559 0
	mov	%d2, 0
	.loc 1 557 0
	st.b	[%a15] 164, %d15
	.loc 1 558 0
	mov	%d15, 3
	.loc 1 559 0
	st.h	[%a2] lo:HsfbCtrl_PrechargeCnt, %d2
	.loc 1 562 0
	st.b	[%a15] 173, %d2
	.loc 1 558 0
	st.b	[%a15] 163, %d15
	.loc 1 560 0
	mov	%d15, 1
	.loc 1 563 0
	st.h	[%a15] 158, %d2
	.loc 1 560 0
	st.b	[%a15] 171, %d15
	.loc 1 561 0
	st.b	[%a15] 172, %d15
	.loc 1 564 0
	st.b	[%a3] 4, %d15
	ret
.LVL75:
.L142:
.LBE25:
.LBE24:
	.loc 1 602 0
	mov	%d3, 0
	.loc 1 603 0
	st.b	[%a15] 171, %d15
	.loc 1 606 0
	st.h	[%a15] 158, %d2
	.loc 1 604 0
	st.b	[%a15] 172, %d3
	.loc 1 605 0
	st.b	[%a15] 173, %d3
	.loc 1 607 0
	movh.a	%a15, hi:HsfbCtrl_Error
	lea	%a15, [%a15] lo:HsfbCtrl_Error
	.loc 1 602 0
	movh.a	%a2, hi:HsfbCtrl_PrechargeCnt
	st.h	[%a2] lo:HsfbCtrl_PrechargeCnt, %d2
	.loc 1 607 0
	st.b	[%a15] 4, %d3
	.loc 1 608 0
	st.b	[%a15] 7, %d3
	ret
.LVL76:
.L187:
.LBB28:
.LBB26:
	.loc 1 445 0
	st.b	[%a15] 164, %d15
	.loc 1 446 0
	mov	%d3, 1
	j	.L183
.LVL77:
.L186:
.LBE26:
.LBE28:
	.loc 1 619 0
	mov	%d3, 1
	j	.L183
.LVL78:
.L188:
.LBB29:
.LBB27:
	.loc 1 458 0
	ld.hu	%d2, [%a15] 158
	jlt.u	%d2, 2, .L145
	.loc 1 459 0
	mov	%d15, 1
	st.b	[%a3] 6, %d15
.LVL79:
	j	.L144
.LVL80:
.L145:
	.loc 1 462 0
	movh.a	%a4, hi:HsfbCtrl_Param
	lea	%a3, [%a4] lo:HsfbCtrl_Param
	ld.w	%d3, [%a3] 4
	ld.w	%d6, [%a15] 44
	.loc 1 464 0
	mov	%d4, 0
	cmp.f	%d7, %d3, %d4
	.loc 1 462 0
	sub.f	%d5, %d6, %d3
.LVL81:
	.loc 1 464 0
	jz.t	%d7, 2, .L176
	ld.w	%d0, [%a3] 8
	cmp.f	%d4, %d0, %d4
	jz.t	%d4, 2, .L176
	.loc 1 466 0
	movh	%d7, 16840
	mul.f	%d7, %d3, %d7
	.loc 1 468 0
	movh	%d4, 17980
	.loc 1 466 0
	div.f	%d7, %d7, %d0
.LVL82:
	.loc 1 468 0
	addi	%d4, %d4, -32768
	cmp.f	%d0, %d7, %d4
	jz.t	%d0, 0, .L146
	.loc 1 469 0
	mov	%d7, %d4
.LVL83:
.L146:
	.loc 1 473 0
	ld.bu	%d4, [%a15] 164
	jeq	%d4, 1, .L150
	jeq	%d4, 2, .L189
	.loc 1 536 0
	movh.a	%a2, hi:HsfbCtrl_MeasStatus100us
	ld.a	%a2, [%a2] lo:HsfbCtrl_MeasStatus100us
	ld.w	%d15, [%a2] 12
	cmp.f	%d5, %d5, %d15
.LVL84:
	extr.u	%d5, %d5, 0, 1
	jnz	%d5, .L182
	.loc 1 545 0
	movh	%d15, 16448
	.loc 1 547 0
	st.b	[%a15] 171, %d5
	.loc 1 548 0
	st.b	[%a15] 172, %d5
	.loc 1 545 0
	st.w	[%a15] 52, %d15
	.loc 1 546 0
	ld.w	%d15, [%a4] lo:HsfbCtrl_Param
	st.w	[%a15] 56, %d15
	.loc 1 549 0
	mov	%d15, 1
	.loc 1 550 0
	st.h	[%a15] 156, %d5
	.loc 1 549 0
	st.b	[%a15] 173, %d15
	ret
.LVL85:
.L176:
	.loc 1 463 0
	movh	%d7, 17980
	addi	%d7, %d7, -32768
	j	.L146
.LVL86:
.L150:
	.loc 1 475 0
	movh.a	%a4, hi:HsfbCtrl_MeasStatus100us
	ld.a	%a4, [%a4] lo:HsfbCtrl_MeasStatus100us
	ld.w	%d2, [%a4] 12
	cmp.f	%d5, %d5, %d2
.LVL87:
	extr.u	%d5, %d5, 2, 1
	jz	%d5, .L178
	.loc 1 476 0
	add	%d15, 1
	st.h	[%a2] lo:HsfbCtrl_PrechargeCnt, %d15
.L182:
	.loc 1 537 0
	mov	%d15, 2
	st.b	[%a15] 164, %d15
	.loc 1 538 0
	ld.w	%d15, [%a3] 8
	st.w	[%a15] 52, %d15
	.loc 1 539 0
	movh	%d15, 17008
	st.w	[%a15] 56, %d15
	.loc 1 540 0
	mov	%d15, 0
	st.b	[%a15] 171, %d15
	.loc 1 541 0
	st.b	[%a15] 172, %d15
	.loc 1 542 0
	st.b	[%a15] 173, %d15
	.loc 1 543 0
	ld.h	%d15, [%a15] 156
	add	%d15, 1
	st.h	[%a15] 156, %d15
	ret
.LVL88:
.L189:
	.loc 1 495 0
	movh.a	%a2, hi:HsfbCtrl_MeasStatus100us
	ld.a	%a2, [%a2] lo:HsfbCtrl_MeasStatus100us
	movh	%d1, 17046
	sub.f	%d1, %d5, %d1
	ld.w	%d0, [%a2] 12
	cmp.f	%d1, %d0, %d1
	jz.t	%d1, 0, .L179
	.loc 1 497 0
	mov	%d15, 3
	.loc 1 496 0
	add	%d2, 1
	.loc 1 497 0
	st.b	[%a15] 164, %d15
	.loc 1 498 0
	movh	%d15, 16448
	.loc 1 496 0
	st.h	[%a15] 158, %d2
	.loc 1 498 0
	st.w	[%a15] 52, %d15
	.loc 1 499 0
	ld.w	%d15, [%a4] lo:HsfbCtrl_Param
	st.w	[%a15] 56, %d15
	.loc 1 500 0
	mov	%d15, 0
	st.b	[%a15] 171, %d15
	.loc 1 501 0
	st.b	[%a15] 172, %d15
	.loc 1 502 0
	mov	%d15, 1
	st.b	[%a15] 173, %d15
	.loc 1 503 0
	mov	%d15, 0
	st.h	[%a15] 156, %d15
	ret
.L179:
	.loc 1 504 0
	add.f	%d3, %d6, %d3
	cmp.f	%d3, %d0, %d3
	jnz.t	%d3, 2, .L156
	.loc 1 505 0
	ld.hu	%d2, [%a15] 156
	utof	%d3, %d2
	cmp.f	%d7, %d3, %d7
.LVL89:
	extr.u	%d7, %d7, 2, 1
	jnz	%d7, .L156
	.loc 1 514 0
	movh	%d3, 16672
	sub.f	%d5, %d5, %d3
.LVL90:
	cmp.f	%d0, %d0, %d5
	jz.t	%d0, 0, .L159
	jeq	%d15, 1, .L190
.L159:
	.loc 1 525 0
	ld.w	%d15, [%a3] 8
	st.w	[%a15] 52, %d15
	.loc 1 526 0
	movh	%d15, 17008
	.loc 1 530 0
	add	%d2, 1
	.loc 1 526 0
	st.w	[%a15] 56, %d15
	.loc 1 527 0
	mov	%d15, 0
	.loc 1 530 0
	st.h	[%a15] 156, %d2
	.loc 1 527 0
	st.b	[%a15] 171, %d15
	.loc 1 528 0
	st.b	[%a15] 172, %d15
	.loc 1 529 0
	st.b	[%a15] 173, %d15
	ret
.LVL91:
.L178:
	.loc 1 485 0
	ld.w	%d15, [%a3] 8
	.loc 1 487 0
	st.b	[%a15] 171, %d4
	.loc 1 485 0
	addih	%d15, %d15, 0x8000
	.loc 1 488 0
	st.b	[%a15] 172, %d4
	.loc 1 489 0
	st.b	[%a15] 173, %d5
	.loc 1 485 0
	st.w	[%a15] 52, %d15
	.loc 1 486 0
	movh	%d15, 17008
	.loc 1 490 0
	st.h	[%a15] 156, %d5
	.loc 1 486 0
	st.w	[%a15] 56, %d15
	ret
.LVL92:
.L156:
	.loc 1 507 0
	mov	%d15, 1
	.loc 1 508 0
	ld.w	%d2, [%a3] 8
	.loc 1 507 0
	st.b	[%a15] 164, %d15
	.loc 1 508 0
	addih	%d2, %d2, 0x8000
	.loc 1 510 0
	st.b	[%a15] 171, %d15
	.loc 1 511 0
	st.b	[%a15] 172, %d15
	.loc 1 512 0
	mov	%d15, 0
	.loc 1 508 0
	st.w	[%a15] 52, %d2
	.loc 1 509 0
	movh	%d2, 17008
	.loc 1 512 0
	st.b	[%a15] 173, %d15
	.loc 1 513 0
	mov	%d15, 0
	.loc 1 509 0
	st.w	[%a15] 56, %d2
	.loc 1 513 0
	st.h	[%a15] 156, %d15
	ret
.LVL93:
.L190:
	.loc 1 516 0
	movh.a	%a2, hi:HsfbCtrl_Error
	lea	%a2, [%a2] lo:HsfbCtrl_Error
	st.b	[%a2] 7, %d15
	.loc 1 518 0
	ld.w	%d15, [%a3] 8
	st.w	[%a15] 52, %d15
	.loc 1 523 0
	add	%d2, 1
	.loc 1 519 0
	movh	%d15, 17008
	.loc 1 517 0
	st.b	[%a15] 164, %d4
	.loc 1 520 0
	st.b	[%a15] 171, %d7
	.loc 1 519 0
	st.w	[%a15] 56, %d15
	.loc 1 521 0
	st.b	[%a15] 172, %d7
	.loc 1 522 0
	st.b	[%a15] 173, %d7
	.loc 1 523 0
	st.h	[%a15] 156, %d2
	ret
.LBE27:
.LBE29:
.LFE6:
	.size	HsfbCtrl_Precharge_State, .-HsfbCtrl_Precharge_State
	.align 3
	.global	HsfbCtrl_Boost_Ctrl_100us
	.type	HsfbCtrl_Boost_Ctrl_100us, @function
HsfbCtrl_Boost_Ctrl_100us:
.LFB7:
	.loc 1 649 0
	.loc 1 661 0
	movh.a	%a12, hi:HsfbCtrl_AppRx10ms
	ld.a	%a2, [%a12] lo:HsfbCtrl_AppRx10ms
	movh	%d2, 15821
	addi	%d2, %d2, -13107
	ld.hu	%d15, [%a2] 10
	movh.a	%a15, hi:HsfbCtrl_DW
	utof	%d15, %d15
	lea	%a15, [%a15] lo:HsfbCtrl_DW
	mul.f	%d15, %d15, %d2
	.loc 1 649 0
	sub.a	%SP, 16
.LCFI2:
	.loc 1 661 0
	st.w	[%a15] 44, %d15
	.loc 1 662 0
	call	HsfbCtrl_Precharge_State
	.loc 1 663 0
	movh.a	%a2, hi:HsfbCtrl_BoostMode
	ld.hu	%d15, [%a2] lo:HsfbCtrl_BoostMode
	.loc 1 666 0
	movh	%d4, 17056
	movh.a	%a4, hi:HsfbCtrl_Param
	.loc 1 663 0
	jz	%d15, .L192
	.loc 1 664 0
	ld.w	%d4, [%a4] lo:HsfbCtrl_Param
.LVL94:
.L192:
	.loc 1 669 0
	ld.a	%a3, [%a12] lo:HsfbCtrl_AppRx10ms
	movh	%d5, 15821
	addi	%d5, %d5, -13107
	ld.hu	%d9, [%a3] 6
	.loc 1 670 0
	ld.w	%d3, [%a15] 56
	.loc 1 669 0
	utof	%d9, %d9
	.loc 1 676 0
	movh.a	%a13, hi:HsfbCtrl_MeasStatus100us
	.loc 1 669 0
	mul.f	%d9, %d9, %d5
.LVL95:
	.loc 1 676 0
	ld.a	%a2, [%a13] lo:HsfbCtrl_MeasStatus100us
	.loc 1 670 0
	cmp.f	%d2, %d3, %d9
	extr.u	%d2, %d2, 2, 1
	.loc 1 676 0
	ld.w	%d6, [%a2] 12
	.loc 1 671 0
	seln	%d3, %d2, %d3, %d9
.LVL96:
	.loc 1 677 0
	ld.w	%d2, [%a2] 28
	.loc 1 676 0
	movh	%d15, 16800
	.loc 1 677 0
	add.f	%d5, %d2, %d5
	.loc 1 676 0
	add.f	%d15, %d6, %d15
	movh	%d7, 16704
	div.f	%d15, %d15, %d5
	mul.f	%d15, %d15, %d7
.LVL97:
	.loc 1 679 0
	cmp.f	%d5, %d3, %d15
	extr.u	%d5, %d5, 0, 1
	.loc 1 680 0
	seln	%d15, %d5, %d15, %d3
.LVL98:
	.loc 1 683 0
	cmp.f	%d3, %d15, %d4
.LVL99:
	or.t	%d3, %d3,2, %d3,1
	.loc 1 684 0
	seln	%d15, %d3, %d15, %d4
.LVL100:
	.loc 1 687 0
	movh	%d3, 16672
	cmp.f	%d3, %d2, %d3
	or.t	%d3, %d3,0, %d3,1
	jz	%d3, .L251
	.loc 1 687 0 is_stmt 0 discriminator 1
	ld.bu	%d4, [%a15] 172
.LVL101:
	.loc 1 689 0 is_stmt 1 discriminator 1
	movh	%d3, 16077
	addi	%d3, %d3, -13107
	.loc 1 691 0 discriminator 1
	seln	%d3, %d4, %d3, 0
.L197:
.LVL102:
	.loc 1 694 0
	ld.w	%d10, [%a15] 76
	.loc 1 695 0
	movh	%d4, 14979
	.loc 1 694 0
	sub.f	%d3, %d3, %d10
.LVL103:
	.loc 1 695 0
	addi	%d4, %d4, 4719
	cmp.f	%d5, %d3, %d4
	jnz.t	%d5, 2, .L226
	.loc 1 698 0
	movh	%d4, 47747
	addi	%d4, %d4, 4719
	cmp.f	%d5, %d3, %d4
	jnz.t	%d5, 0, .L226
.LVL104:
.L199:
	.loc 1 704 0
	lea	%a4, [%a4] lo:HsfbCtrl_Param
	.loc 1 703 0
	add.f	%d10, %d3, %d10
.LVL105:
	.loc 1 704 0
	movh	%d7, 15821
	ld.w	%d3, [%a4] 12
	addi	%d7, %d7, -13107
	add.f	%d7, %d7, %d3
	movh	%d4, 16077
	addi	%d4, %d4, -13107
	add.f	%d4, %d7, %d4
	.loc 1 705 0
	movh	%d3, 16384
	.loc 1 704 0
	sub.f	%d4, %d4, %d10
.LVL106:
	.loc 1 706 0
	movh	%d5, 16256
	.loc 1 705 0
	add.f	%d3, %d4, %d3
	sub.f	%d3, %d3, %d2
.LVL107:
	.loc 1 706 0
	cmp.f	%d0, %d3, %d5
	jnz.t	%d0, 2, .L227
	.loc 1 709 0
	mov	%d5, 0
	cmp.f	%d5, %d3, %d5
	extr.u	%d5, %d5, 0, 1
	.loc 1 710 0
	seln	%d3, %d5, %d3, 0
.LVL108:
.L200:
	.loc 1 715 0
	ld.w	%d8, [%a15] 80
	movh	%d5, 16448
	sub.f	%d8, %d2, %d8
	.loc 1 714 0
	sub.f	%d4, %d2, %d4
.LVL109:
	.loc 1 715 0
	mul.f	%d8, %d8, %d5
	.loc 1 716 0
	movh	%d5, 16077
	addi	%d5, %d5, -13107
	mul.f	%d5, %d4, %d5
.LVL110:
	.loc 1 714 0
	st.w	[%SP] 12, %d4
	.loc 1 715 0
	madd.f	%d3, %d5, %d8, %d3
.LVL111:
	.loc 1 717 0
	movh	%d5, 16384
	cmp.f	%d0, %d3, %d5
	jnz.t	%d0, 2, .L230
	.loc 1 720 0
	movh	%d5, 49152
	cmp.f	%d0, %d3, %d5
	jnz.t	%d0, 0, .L230
	.loc 1 725 0
	ld.w	%d8, [%a15] 84
	sub.f	%d8, %d8, %d3
.LVL112:
	.loc 1 726 0
	cmp.f	%d3, %d8, %d15
.LVL113:
	jnz.t	%d3, 2, .L231
.L259:
	.loc 1 729 0
	ld.w	%d5, [%a2] 20
	mov	%d3, 0
	cmp.f	%d3, %d5, %d3
	extr.u	%d3, %d3, 2, 1
	.loc 1 732 0
	addih	%d0, %d5, 0x8000
	seln	%d5, %d3, %d0, %d5
.LVL114:
	.loc 1 735 0
	movh	%d3, 16800
	mul.f	%d4, %d4, %d3
.LVL115:
	.loc 1 736 0
	movh	%d3, 16544
	ld.w	%d0, [%a15] 88
	add.f	%d5, %d5, %d3
.LVL116:
	cmp.f	%d3, %d0, %d5
	extr.u	%d3, %d3, 0, 1
	.loc 1 737 0
	seln	%d5, %d3, %d5, %d0
.LVL117:
	.loc 1 742 0
	movh	%d3, 16384
	cmp.f	%d0, %d4, %d3
	jz.t	%d0, 2, .L255
.L233:
	.loc 1 746 0
	mov	%d4, %d3
.LVL118:
.L206:
	.loc 1 750 0
	sub.f	%d5, %d15, %d5
.LVL119:
	sub.f	%d4, %d5, %d4
.LVL120:
	.loc 1 751 0
	mov	%d5, 0
	cmp.f	%d5, %d4, %d5
	or.t	%d5, %d5,0, %d5,1
	.loc 1 752 0
	seln	%d4, %d5, %d4, 0
.LVL121:
	.loc 1 755 0
	cmp.f	%d3, %d8, %d4
	extr.u	%d3, %d3, 0, 1
	.loc 1 756 0
	seln	%d8, %d3, %d8, %d4
.LVL122:
	.loc 1 760 0
	sub.f	%d15, %d15, %d8
.LVL123:
	.loc 1 761 0
	movh	%d3, 16672
	cmp.f	%d3, %d15, %d3
	or.t	%d3, %d3,0, %d3,1
	jnz	%d3, .L256
.LVL124:
.L252:
	mov	%d14, 1
	mov	%d3, 0
.L208:
.LVL125:
	.loc 1 771 0
	ld.w	%d4, [%a15] 92
	.loc 1 770 0
	movh.a	%a12, hi:HsfbCtrl_Error
	lea	%a12, [%a12] lo:HsfbCtrl_Error
	.loc 1 771 0
	sub.f	%d4, %d6, %d4
	.loc 1 770 0
	st.b	[%a12] 5, %d3
	.loc 1 771 0
	movh	%d3, 16672
.LVL126:
	mul.f	%d4, %d4, %d3
.LVL127:
	.loc 1 773 0
	ld.w	%d3, [%a15] 96
	movh	%d5, 15396
	sub.f	%d11, %d4, %d3
	addi	%d5, %d5, -10486
	madd.f	%d11, %d3, %d11, %d5
.LVL128:
	.loc 1 775 0
	movh	%d3, 16000
	cmp.f	%d3, %d11, %d3
	or.t	%d3, %d3,0, %d3,1
	jz	%d3, .L253
	.loc 1 775 0 is_stmt 0 discriminator 1
	ld.bu	%d5, [%a15] 173
	mov	%d3, 0
	.loc 1 779 0 is_stmt 1 discriminator 1
	mov	%d13, 0
	.loc 1 775 0 discriminator 1
	jnz	%d5, .L257
.L211:
.LVL129:
	.loc 1 783 0
	ld.hu	%d2, [%a3] 20
	.loc 1 782 0
	st.b	[%a12] 6, %d3
	.loc 1 783 0
	jz	%d2, .L214
	.loc 1 783 0 is_stmt 0 discriminator 1
	ld.bu	%d2, [%a12] 4
	jz	%d2, .L214
	.loc 1 783 0
	mov.a	%a14, 1
	mov	%d2, 0
.L218:
	.loc 1 786 0 is_stmt 1 discriminator 3
	movh.a	%a3, hi:HsfbCtrl_EnDis
	lea	%a2, [%a3] lo:HsfbCtrl_EnDis
	.loc 1 785 0 discriminator 3
	st.b	[%a15] 170, %d2
	.loc 1 786 0 discriminator 3
	st.b	[%a3] lo:HsfbCtrl_EnDis, %d2
	.loc 1 787 0 discriminator 3
	st.b	[%a2] 1, %d2
	.loc 1 788 0 discriminator 3
	st.b	[%a2] 2, %d2
	.loc 1 789 0 discriminator 3
	ld.w	%d2, [%a15] 100
	movh	%d3, 15949
	sub.f	%d4, %d4, %d2
.LVL130:
	addi	%d3, %d3, -13107
	madd.f	%d12, %d2, %d4, %d3
.LVL131:
	.loc 1 791 0 discriminator 3
	ld.bu	%d2, [%a15] 169
	mov	%d4, 1
	jz	%d2, .L215
	.loc 1 791 0 is_stmt 0 discriminator 2
	ld.bu	%d4, [%a15] 171
	ne	%d4, %d4, 0
.L215:
	.loc 1 791 0 discriminator 3
	movh.a	%a2, hi:HsfbCtrl_Ich_Boost_PI
	lea	%a2, [%a2] lo:HsfbCtrl_Ich_Boost_PI
	ld.w	%d5, [%a15] 52
	ld.w	%d7, [%a2] 16
	ld.w	%d2, [%a2] 20
	st.w	[%SP]0, %d15
	addih	%d15, %d15, 0x8000
.LVL132:
	sub.f	%d5, %d5, %d12
	mul.f	%d7, %d7, %d2
	st.w	[%SP] 4, %d15
	ld.w	%d6, [%a2] 12
	lea	%a4, [%SP] 12
	lea	%a5, [%a15] 16
	call	HsfbCtrl_PI_Calc
.LVL133:
	.loc 1 796 0 is_stmt 1 discriminator 3
	jnz.a	%a14, .L258
	.loc 1 799 0
	ld.w	%d15, [%SP] 12
	st.w	[%a15] 48, %d15
.L217:
	.loc 1 806 0
	ld.a	%a2, [%a13] lo:HsfbCtrl_MeasStatus100us
	.loc 1 803 0
	st.h	[%a15] 136, %d14
	.loc 1 805 0
	st.w	[%a15] 76, %d10
	.loc 1 806 0
	ld.w	%d2, [%a2] 28
	.loc 1 808 0
	st.w	[%a15] 88, %d15
	.loc 1 809 0
	ld.bu	%d15, [%a12] 6
	.loc 1 806 0
	st.w	[%a15] 80, %d2
	.loc 1 809 0
	caddn	%d13, %d15, 1
.LVL134:
	.loc 1 811 0
	ld.w	%d15, [%a2] 12
	.loc 1 807 0
	st.w	[%a15] 84, %d8
	.loc 1 809 0
	st.h	[%a15] 138, %d13
	.loc 1 811 0
	st.w	[%a15] 92, %d15
	.loc 1 812 0
	st.w	[%a15] 96, %d11
	.loc 1 813 0
	st.w	[%a15] 100, %d12
	.loc 1 814 0
	ret
.LVL135:
.L230:
	.loc 1 725 0
	ld.w	%d8, [%a15] 84
	.loc 1 721 0
	mov	%d3, %d5
.LVL136:
	.loc 1 725 0
	sub.f	%d8, %d8, %d3
.LVL137:
	.loc 1 726 0
	cmp.f	%d3, %d8, %d15
	jz.t	%d3, 2, .L259
.LVL138:
.L231:
	.loc 1 727 0
	mov	%d8, %d15
.LVL139:
	.loc 1 760 0
	sub.f	%d15, %d15, %d8
.LVL140:
	.loc 1 761 0
	movh	%d3, 16672
	cmp.f	%d3, %d15, %d3
	or.t	%d3, %d3,0, %d3,1
	jz	%d3, .L252
.L256:
	.loc 1 761 0 is_stmt 0 discriminator 1
	ld.bu	%d4, [%a15] 171
	mov	%d14, 1
	mov	%d3, 0
	jnz	%d4, .L208
	cmp.f	%d7, %d2, %d7
	or.t	%d7, %d7,0, %d7,1
	jz	%d7, .L208
	.loc 1 764 0 is_stmt 1
	ld.hu	%d4, [%a15] 136
.LVL141:
	ge.u	%d3, %d4, 50
	eq	%d14, %d3, 0
	add	%d14, %d4
	extr.u	%d14, %d14, 0, 16
	j	.L208
.LVL142:
.L226:
	.loc 1 699 0
	mov	%d3, %d4
.LVL143:
	j	.L199
.LVL144:
.L251:
	.loc 1 691 0
	mov	%d3, 0
	j	.L197
.LVL145:
.L227:
	.loc 1 707 0
	mov	%d3, %d5
.LVL146:
	j	.L200
.LVL147:
.L214:
	.loc 1 785 0
	ld.bu	%d3, [%a15] 172
	mov	%d2, 1
	.loc 1 783 0
	mov.a	%a14, 0
	.loc 1 785 0
	jnz	%d3, .L218
	.loc 1 783 0
	mov	%d2, 0
	j	.L218
.LVL148:
.L253:
	.loc 1 775 0
	mov	%d3, 0
	.loc 1 779 0
	mov	%d13, 0
	j	.L211
.L257:
	.loc 1 775 0 discriminator 1
	movh	%d3, 16664
	cmp.f	%d2, %d2, %d3
	mov	%d3, %d13
	jz.t	%d2, 2, .L211
	.loc 1 777 0
	ld.hu	%d13, [%a15] 138
.LVL149:
	mov	%d3, 1500
	ge.u	%d3, %d13, %d3
	j	.L211
.LVL150:
.L255:
	.loc 1 745 0
	movh	%d3, 15821
	addi	%d3, %d3, -13107
	cmp.f	%d0, %d4, %d3
	jnz.t	%d0, 0, .L233
	j	.L206
.LVL151:
.L258:
	.loc 1 797 0
	st.w	[%a15] 48, %d9
	ld.w	%d15, [%SP] 12
	j	.L217
.LFE7:
	.size	HsfbCtrl_Boost_Ctrl_100us, .-HsfbCtrl_Boost_Ctrl_100us
	.align 3
	.global	HsfbCtrl_Reset
	.type	HsfbCtrl_Reset, @function
HsfbCtrl_Reset:
.LFB8:
	.loc 1 825 0
	.loc 1 826 0
	mov	%d15, 0
	movh.a	%a2, hi:HsfbCtrl_Error
	lea	%a15, [%a2] lo:HsfbCtrl_Error
	st.b	[%a2] lo:HsfbCtrl_Error, %d15
	.loc 1 832 0
	movh.a	%a2, hi:HsfbCtrl_EnDis
	.loc 1 827 0
	st.b	[%a15] 1, %d15
	.loc 1 828 0
	st.b	[%a15] 2, %d15
	.loc 1 829 0
	st.b	[%a15] 4, %d15
	.loc 1 830 0
	st.b	[%a15] 5, %d15
	.loc 1 831 0
	st.b	[%a15] 6, %d15
	.loc 1 832 0
	lea	%a15, [%a2] lo:HsfbCtrl_EnDis
	st.b	[%a2] lo:HsfbCtrl_EnDis, %d15
	.loc 1 833 0
	st.b	[%a15] 1, %d15
	.loc 1 834 0
	st.b	[%a15] 2, %d15
	.loc 1 835 0
	ret
.LFE8:
	.size	HsfbCtrl_Reset, .-HsfbCtrl_Reset
	.align 3
	.global	HsfbCtrl_Reset_100us
	.type	HsfbCtrl_Reset_100us, @function
HsfbCtrl_Reset_100us:
.LFB9:
	.loc 1 846 0
	.loc 1 847 0
	movh.a	%a15, hi:HsfbCtrl_DW
	lea	%a15, [%a15] lo:HsfbCtrl_DW
	ld.bu	%d15, [%a15] 160
	jz	%d15, .L265
	.loc 1 851 0
	ld.bu	%d15, [%a15] 161
	jeq	%d15, 1, .L266
	.loc 1 857 0
	ld.bu	%d15, [%a15] 169
	jnz	%d15, .L261
	.loc 1 858 0
	mov	%d2, 1
.LBB30:
.LBB31:
	.loc 1 826 0
	movh.a	%a2, hi:HsfbCtrl_Error
	st.b	[%a2] lo:HsfbCtrl_Error, %d15
.LBE31:
.LBE30:
	.loc 1 858 0
	st.b	[%a15] 161, %d2
.LBB33:
.LBB32:
	.loc 1 826 0
	lea	%a15, [%a2] lo:HsfbCtrl_Error
	.loc 1 832 0
	movh.a	%a2, hi:HsfbCtrl_EnDis
	.loc 1 827 0
	st.b	[%a15] 1, %d15
	.loc 1 828 0
	st.b	[%a15] 2, %d15
	.loc 1 829 0
	st.b	[%a15] 4, %d15
	.loc 1 830 0
	st.b	[%a15] 5, %d15
	.loc 1 831 0
	st.b	[%a15] 6, %d15
	.loc 1 832 0
	lea	%a15, [%a2] lo:HsfbCtrl_EnDis
	st.b	[%a2] lo:HsfbCtrl_EnDis, %d15
	.loc 1 833 0
	st.b	[%a15] 1, %d15
	.loc 1 834 0
	st.b	[%a15] 2, %d15
.L261:
	ret
.L265:
.LBE32:
.LBE33:
	.loc 1 848 0
	mov	%d2, 1
.LBB34:
.LBB35:
	.loc 1 826 0
	movh.a	%a2, hi:HsfbCtrl_Error
	st.b	[%a2] lo:HsfbCtrl_Error, %d15
.LBE35:
.LBE34:
	.loc 1 848 0
	st.b	[%a15] 160, %d2
	.loc 1 849 0
	st.b	[%a15] 161, %d2
.LBB37:
.LBB36:
	.loc 1 826 0
	lea	%a15, [%a2] lo:HsfbCtrl_Error
	.loc 1 832 0
	movh.a	%a2, hi:HsfbCtrl_EnDis
	.loc 1 827 0
	st.b	[%a15] 1, %d15
	.loc 1 828 0
	st.b	[%a15] 2, %d15
	.loc 1 829 0
	st.b	[%a15] 4, %d15
	.loc 1 830 0
	st.b	[%a15] 5, %d15
	.loc 1 831 0
	st.b	[%a15] 6, %d15
	.loc 1 832 0
	lea	%a15, [%a2] lo:HsfbCtrl_EnDis
	st.b	[%a2] lo:HsfbCtrl_EnDis, %d15
	.loc 1 833 0
	st.b	[%a15] 1, %d15
	.loc 1 834 0
	st.b	[%a15] 2, %d15
	ret
.L266:
.LBE36:
.LBE37:
	.loc 1 852 0
	ld.bu	%d15, [%a15] 169
	jz	%d15, .L261
	.loc 1 853 0
	mov	%d15, 2
	st.b	[%a15] 161, %d15
	ret
.LFE9:
	.size	HsfbCtrl_Reset_100us, .-HsfbCtrl_Reset_100us
	.section .code_ram,"ax",@progbits
	.align 3
	.global	HsfbCtrl_Buck_Ctrl_15us
	.type	HsfbCtrl_Buck_Ctrl_15us, @function
HsfbCtrl_Buck_Ctrl_15us:
.LFB10:
	.loc 1 873 0
	.loc 1 877 0
	movh.a	%a15, hi:HsfbCtrl_MeasStatus15us
	ld.a	%a15, [%a15] lo:HsfbCtrl_MeasStatus15us
	movh.a	%a5, hi:HsfbCtrl_DW
	lea	%a5, [%a5] lo:HsfbCtrl_DW
	ld.w	%d15, [%a15] 28
	ld.w	%d5, [%a5] 68
	.loc 1 873 0
	sub.a	%SP, 16
.LCFI3:
	.loc 1 877 0
	sub.f	%d5, %d5, %d15
	.loc 1 878 0
	movh	%d15, 15524
	addi	%d15, %d15, -10486
	cmp.f	%d15, %d5, %d15
	.loc 1 877 0
	st.w	[%SP] 12, %d5
.LVL152:
	.loc 1 878 0
	jz.t	%d15, 0, .L268
	.loc 1 878 0 is_stmt 0 discriminator 1
	movh	%d15, 48292
	addi	%d15, %d15, -10486
	cmp.f	%d15, %d5, %d15
	extr.u	%d15, %d15, 2, 1
	.loc 1 880 0 is_stmt 1 discriminator 1
	cmov	%d5, %d15, 0
.L268:
.LVL153:
	.loc 1 885 0
	movh.a	%a12, hi:HsfbCtrl_PwmStatus15us
	ld.a	%a15, [%a12] lo:HsfbCtrl_PwmStatus15us
	movh	%d2, 16256
	ld.w	%d15, [%a15] 8
	cmp.f	%d3, %d15, %d2
	jnz.t	%d3, 2, .L274
	.loc 1 887 0
	mov	%d2, 0
	cmp.f	%d2, %d15, %d2
	extr.u	%d2, %d2, 0, 1
	.loc 1 888 0
	seln	%d15, %d2, %d15, 0
.L270:
.LVL154:
	.loc 1 893 0
	movh.a	%a15, hi:HsfbCtrl_Vout_Buck_PI
	lea	%a15, [%a15] lo:HsfbCtrl_Vout_Buck_PI
	.loc 1 896 0
	movh	%d8, 16256
	.loc 1 893 0
	ld.w	%d3, [%a15] 24
	.loc 1 896 0
	add.f	%d15, %d15, %d8
.LVL155:
	.loc 1 893 0
	ld.w	%d2, [%a15] 20
	div.f	%d15, %d3, %d15
	ld.bu	%d4, [%a5] 167
	ld.w	%d7, [%a15] 16
	st.w	[%SP]0, %d15
	ld.w	%d15, [%a15] 28
	st.w	[%SP] 4, %d15
	ld.w	%d6, [%a15] 12
	mul.f	%d7, %d7, %d2
	eq	%d4, %d4, 0
	lea	%a4, [%SP] 12
	lea	%a5, [%a5] 8
	call	HsfbCtrl_PI_Calc
.LVL156:
	.loc 1 899 0
	ld.a	%a15, [%a12] lo:HsfbCtrl_PwmStatus15us
	movh	%d15, 16384
	ld.w	%d2, [%a15] 8
	cmp.f	%d3, %d2, %d8
	jnz.t	%d3, 2, .L272
	.loc 1 901 0
	mov	%d3, 0
	cmp.f	%d3, %d2, %d3
	mov	%d15, %d8
	jnz.t	%d3, 0, .L272
.LVL157:
	add.f	%d15, %d2, %d8
.LVL158:
.L272:
	.loc 1 907 0
	ld.w	%d2, [%SP] 12
	movh.a	%a15, hi:HsfbCtrl_CtrlStatus15us
	mul.f	%d15, %d15, %d2
	ld.a	%a15, [%a15] lo:HsfbCtrl_CtrlStatus15us
	st.w	[%a15]0, %d15
	.loc 1 909 0
	ret
.LVL159:
.L274:
	.loc 1 886 0
	mov	%d15, %d2
	j	.L270
.LFE10:
	.size	HsfbCtrl_Buck_Ctrl_15us, .-HsfbCtrl_Buck_Ctrl_15us
	.align 3
	.global	HsfbCtrl_Boost_Ctrl_15us
	.type	HsfbCtrl_Boost_Ctrl_15us, @function
HsfbCtrl_Boost_Ctrl_15us:
.LFB11:
	.loc 1 920 0
	.loc 1 922 0
	movh.a	%a2, hi:HsfbCtrl_MeasStatus15us
	ld.a	%a2, [%a2] lo:HsfbCtrl_MeasStatus15us
	.loc 1 921 0
	movh.a	%a15, hi:HsfbCtrl_DW
	lea	%a15, [%a15] lo:HsfbCtrl_DW
	ld.w	%d2, [%a2] 20
	movh.a	%a2, hi:HsfbCtrl_Iout_Boost_PI
	lea	%a2, [%a2] lo:HsfbCtrl_Iout_Boost_PI
	ld.w	%d3, [%a2] 24
	.loc 1 920 0
	sub.a	%SP, 8
.LCFI4:
	.loc 1 921 0
	ld.w	%d15, [%a2] 20
	ld.bu	%d4, [%a15] 168
	ld.w	%d5, [%a15] 48
	ld.w	%d7, [%a2] 16
	st.w	[%SP]0, %d3
	ld.w	%d3, [%a2] 28
	st.w	[%SP] 4, %d3
	add.f	%d5, %d5, %d2
	mul.f	%d7, %d7, %d15
	ld.w	%d6, [%a2] 12
	eq	%d4, %d4, 0
	lea	%a4, [%a15] 40
	mov.aa	%a5, %a15
	call	HsfbCtrl_PI_Calc
	.loc 1 927 0
	ld.w	%d2, [%a15] 40
	movh	%d15, 16141
	addi	%d15, %d15, -13107
	cmp.f	%d15, %d2, %d15
	or.t	%d15, %d15,2, %d15,1
	mov	%d3, 1
	mov	%d4, 1
	jnz	%d15, .L280
	.loc 1 927 0 is_stmt 0 discriminator 2
	movh	%d15, 16128
	cmp.f	%d2, %d2, %d15
	mov	%d3, 0
	mov	%d4, 0
	jz.t	%d2, 2, .L280
	.loc 1 928 0 is_stmt 1
	ld.bu	%d3, [%a15] 178
	ne	%d3, %d3, 0
	mov	%d4, %d3
.L280:
	.loc 1 927 0 discriminator 3
	st.b	[%a15] 178, %d4
	.loc 1 930 0 discriminator 3
	movh.a	%a15, hi:HsfbCtrl_BoostMode
	st.h	[%a15] lo:HsfbCtrl_BoostMode, %d3
	.loc 1 931 0 discriminator 3
	ret
.LFE11:
	.size	HsfbCtrl_Boost_Ctrl_15us, .-HsfbCtrl_Boost_Ctrl_15us
	.align 3
	.global	HsfbCtrl_Call100us
	.type	HsfbCtrl_Call100us, @function
HsfbCtrl_Call100us:
.LFB12:
	.loc 1 944 0
.LVL160:
	.loc 1 945 0
	movh.a	%a2, hi:HsfbCtrl_MeasStatus100us
	st.a	[%a2] lo:HsfbCtrl_MeasStatus100us, %a4
	.loc 1 946 0
	movh.a	%a2, hi:HsfbCtrl_PwmStatus15us
	.loc 1 948 0
	movh.a	%a4, hi:HsfbCtrl_Param
.LVL161:
	.loc 1 944 0
	mov.aa	%a15, %a5
	.loc 1 946 0
	st.a	[%a2] lo:HsfbCtrl_PwmStatus15us, %a5
	.loc 1 944 0
	mov.aa	%a14, %a6
	.loc 1 947 0
	movh.a	%a2, hi:HsfbCtrl_AppRx10ms
	.loc 1 948 0
	lea	%a4, [%a4] lo:HsfbCtrl_Param
	.loc 1 944 0
	mov.aa	%a13, %a7
	.loc 1 947 0
	st.a	[%a2] lo:HsfbCtrl_AppRx10ms, %a6
	.loc 1 948 0
	call	HsfbCtrl_GetParamData
.LVL162:
	.loc 1 949 0
	ld.w	%d15, [%a15]0
	movh.a	%a12, hi:HsfbCtrl_EnDis
	lea	%a15, [%a12] lo:HsfbCtrl_EnDis
.LVL163:
	jeq	%d15, 2, .L292
	.loc 1 955 0
	eq	%d15, %d15, 3
	movh.a	%a2, hi:HsfbCtrl_DW
	lea	%a2, [%a2] lo:HsfbCtrl_DW
	st.b	[%a2] 169, %d15
	.loc 1 957 0
	call	HsfbCtrl_Reset_100us
	.loc 1 958 0
	ld.hu	%d15, [%a14] 12
	jz	%d15, .L293
.L289:
	.loc 1 961 0
	jeq	%d15, 1, .L294
	.loc 1 966 0
	ld.h	%d15, [%a12] lo:HsfbCtrl_EnDis
	st.h	[%a13]0, %d15
	ld.h	%d15, [%a15] 2
	st.h	[%a13] 2, %d15
	.loc 1 967 0
	ret
.L292:
	.loc 1 950 0
	mov	%d2, 0
	.loc 1 955 0
	eq	%d15, %d15, 3
	movh.a	%a2, hi:HsfbCtrl_DW
	lea	%a2, [%a2] lo:HsfbCtrl_DW
	st.b	[%a2] 169, %d15
	.loc 1 951 0
	st.b	[%a15] 1, %d2
	.loc 1 952 0
	st.b	[%a15] 2, %d2
	.loc 1 950 0
	st.b	[%a12] lo:HsfbCtrl_EnDis, %d2
	.loc 1 957 0
	call	HsfbCtrl_Reset_100us
	.loc 1 958 0
	ld.hu	%d15, [%a14] 12
	jnz	%d15, .L289
.L293:
	.loc 1 959 0
	call	HsfbCtrl_Buck_Ctrl_100us
	.loc 1 966 0
	ld.h	%d15, [%a12] lo:HsfbCtrl_EnDis
	st.h	[%a13]0, %d15
	ld.h	%d15, [%a15] 2
	st.h	[%a13] 2, %d15
	.loc 1 967 0
	ret
.L294:
	.loc 1 962 0
	call	HsfbCtrl_Boost_Ctrl_100us
	.loc 1 966 0
	ld.h	%d15, [%a12] lo:HsfbCtrl_EnDis
	st.h	[%a13]0, %d15
	ld.h	%d15, [%a15] 2
	st.h	[%a13] 2, %d15
	.loc 1 967 0
	ret
.LFE12:
	.size	HsfbCtrl_Call100us, .-HsfbCtrl_Call100us
	.align 3
	.global	HsfbCtrl_Call15us
	.type	HsfbCtrl_Call15us, @function
HsfbCtrl_Call15us:
.LFB13:
	.loc 1 980 0
.LVL164:
	.loc 1 984 0
	movh.a	%a12, hi:HsfbCtrl_DW
	ld.w	%d15, [%a5]0
	lea	%a12, [%a12] lo:HsfbCtrl_DW
	.loc 1 986 0
	ld.bu	%d3, [%a12] 170
	.loc 1 984 0
	eq	%d15, %d15, 3
	.loc 1 986 0
	seln	%d2, %d3, %d15, 0
	.loc 1 981 0
	movh.a	%a2, hi:HsfbCtrl_MeasStatus15us
	st.a	[%a2] lo:HsfbCtrl_MeasStatus15us, %a4
	.loc 1 984 0
	st.b	[%a12] 167, %d15
	.loc 1 982 0
	movh.a	%a2, hi:HsfbCtrl_PwmStatus15us
	.loc 1 986 0
	st.b	[%a12] 168, %d2
	.loc 1 982 0
	st.a	[%a2] lo:HsfbCtrl_PwmStatus15us, %a5
	.loc 1 988 0
	ld.hu	%d15, [%a6] 12
	.loc 1 983 0
	movh.a	%a2, hi:HsfbCtrl_CtrlStatus15us
	st.a	[%a2] lo:HsfbCtrl_CtrlStatus15us, %a7
	.loc 1 980 0
	mov.aa	%a15, %a7
	.loc 1 988 0
	jz	%d15, .L300
	.loc 1 991 0
	jeq	%d15, 1, .L301
.LVL165:
.L298:
	.loc 1 996 0
	movh.a	%a3, hi:HsfbCtrl_Error
	ld.w	%d15, [%a3] lo:HsfbCtrl_Error
	lea	%a2, [%a3] lo:HsfbCtrl_Error
	st.w	[%a15] 8, %d15
	ld.w	%d15, [%a2] 4
	st.w	[%a15] 12, %d15
	.loc 1 997 0
	ld.w	%d15, [%a12] 40
	st.w	[%a15] 4, %d15
	.loc 1 998 0
	ret
.LVL166:
.L300:
	.loc 1 989 0
	call	HsfbCtrl_Buck_Ctrl_15us
.LVL167:
	j	.L298
.LVL168:
.L301:
	.loc 1 992 0
	call	HsfbCtrl_Boost_Ctrl_15us
.LVL169:
	j	.L298
.LFE13:
	.size	HsfbCtrl_Call15us, .-HsfbCtrl_Call15us
	.section .text.MPU_QM_CODE,"ax",@progbits
	.align 3
	.global	HsfbCtrl_CallInit
	.type	HsfbCtrl_CallInit, @function
HsfbCtrl_CallInit:
.LFB14:
	.loc 1 1009 0
	.loc 1 1010 0
	movh	%d15, 15107
	addi	%d15, %d15, 4719
	movh.a	%a15, hi:HsfbCtrl_Iout_Buck_PI
	lea	%a15, [%a15] lo:HsfbCtrl_Iout_Buck_PI
	st.w	[%a15] 12, %d15
	.loc 1 1013 0
	movh	%d2, 16772
	.loc 1 1011 0
	movh	%d15, 17530
	.loc 1 1025 0
	movh	%d3, 14802
	.loc 1 1013 0
	st.w	[%a15] 24, %d2
	.loc 1 1011 0
	st.w	[%a15] 16, %d15
	.loc 1 1014 0
	movh	%d2, 49540
	.loc 1 1012 0
	movh	%d15, 14546
	addi	%d15, %d15, -18665
	.loc 1 1014 0
	st.w	[%a15] 28, %d2
	.loc 1 1015 0
	movh	%d2, 16128
	.loc 1 1012 0
	st.w	[%a15] 20, %d15
	.loc 1 1015 0
	movh.a	%a15, hi:HsfbCtrl_Ich_Boost_PI
	lea	%a15, [%a15] lo:HsfbCtrl_Ich_Boost_PI
	st.w	[%a15] 12, %d2
	.loc 1 1016 0
	movh	%d2, 17898
	addi	%d2, %d2, 24576
	.loc 1 1017 0
	st.w	[%a15] 20, %d15
	.loc 1 1025 0
	addi	%d3, %d3, -18665
	.loc 1 1016 0
	st.w	[%a15] 16, %d2
	.loc 1 1018 0
	movh	%d2, 17274
	.loc 1 1030 0
	movh.a	%a2, hi:HsfbCtrl_Param
	.loc 1 1018 0
	st.w	[%a15] 24, %d2
	.loc 1 1019 0
	movh	%d2, 50042
	st.w	[%a15] 28, %d2
	.loc 1 1020 0
	movh.a	%a15, hi:HsfbCtrl_Iout_Boost_PI
	lea	%a15, [%a15] lo:HsfbCtrl_Iout_Boost_PI
	st.w	[%a15] 12, %d15
	.loc 1 1021 0
	movh	%d15, 17948
	addi	%d15, %d15, 16384
	.loc 1 1022 0
	movh	%d2, 14337
	addi	%d2, %d2, 3629
	.loc 1 1021 0
	st.w	[%a15] 16, %d15
	.loc 1 1023 0
	movh	%d15, 16251
	addi	%d15, %d15, -7864
	.loc 1 1022 0
	st.w	[%a15] 20, %d2
	.loc 1 1023 0
	st.w	[%a15] 24, %d15
	.loc 1 1024 0
	mov	%d15, 0
	st.w	[%a15] 28, %d15
	.loc 1 1025 0
	movh.a	%a15, hi:HsfbCtrl_Vout_Buck_PI
	lea	%a15, [%a15] lo:HsfbCtrl_Vout_Buck_PI
	.loc 1 1029 0
	st.w	[%a15] 28, %d15
	.loc 1 1030 0
	movh	%d15, 17184
	.loc 1 1025 0
	st.w	[%a15] 12, %d3
	.loc 1 1027 0
	st.w	[%a15] 20, %d2
	.loc 1 1026 0
	movh	%d3, 18302
	.loc 1 1028 0
	movh	%d2, 16118
	.loc 1 1026 0
	addi	%d3, %d3, -6144
	.loc 1 1028 0
	addi	%d2, %d2, -15729
	.loc 1 1030 0
	st.w	[%a2] lo:HsfbCtrl_Param, %d15
	.loc 1 1031 0
	movh	%d15, 16840
	.loc 1 1026 0
	st.w	[%a15] 16, %d3
	.loc 1 1028 0
	st.w	[%a15] 24, %d2
	.loc 1 1030 0
	lea	%a15, [%a2] lo:HsfbCtrl_Param
	.loc 1 1031 0
	st.w	[%a15] 4, %d15
	.loc 1 1032 0
	movh	%d15, 16000
	st.w	[%a15] 8, %d15
	.loc 1 1033 0
	movh	%d15, 16656
	st.w	[%a15] 12, %d15
	.loc 1 1034 0
	ret
.LFE14:
	.size	HsfbCtrl_CallInit, .-HsfbCtrl_CallInit
	.global	HsfbCtrl_CtrlStatus15us
	.section .bss.MPU_ASIL_VAR_NOINIT,"aw",@nobits
	.align 3
	.type	HsfbCtrl_CtrlStatus15us, @object
	.size	HsfbCtrl_CtrlStatus15us, 4
HsfbCtrl_CtrlStatus15us:
	.zero	4
	.global	HsfbCtrl_AppRx10ms
	.align 3
	.type	HsfbCtrl_AppRx10ms, @object
	.size	HsfbCtrl_AppRx10ms, 4
HsfbCtrl_AppRx10ms:
	.zero	4
	.global	HsfbCtrl_PwmStatus15us
	.align 3
	.type	HsfbCtrl_PwmStatus15us, @object
	.size	HsfbCtrl_PwmStatus15us, 4
HsfbCtrl_PwmStatus15us:
	.zero	4
	.global	HsfbCtrl_MeasStatus100us
	.align 3
	.type	HsfbCtrl_MeasStatus100us, @object
	.size	HsfbCtrl_MeasStatus100us, 4
HsfbCtrl_MeasStatus100us:
	.zero	4
	.global	HsfbCtrl_MeasStatus15us
	.align 3
	.type	HsfbCtrl_MeasStatus15us, @object
	.size	HsfbCtrl_MeasStatus15us, 4
HsfbCtrl_MeasStatus15us:
	.zero	4
	.global	HsfbCtrl_DW
	.align 3
	.type	HsfbCtrl_DW, @object
	.size	HsfbCtrl_DW, 180
HsfbCtrl_DW:
	.zero	180
	.global	HsfbCtrl_IoutLimFlag
	.align 3
	.type	HsfbCtrl_IoutLimFlag, @object
	.size	HsfbCtrl_IoutLimFlag, 1
HsfbCtrl_IoutLimFlag:
	.zero	1
	.global	HsfbCtrl_BoostMode
	.align 3
	.type	HsfbCtrl_BoostMode, @object
	.size	HsfbCtrl_BoostMode, 2
HsfbCtrl_BoostMode:
	.zero	2
	.global	HsfbCtrl_PrechargeCnt
	.align 3
	.type	HsfbCtrl_PrechargeCnt, @object
	.size	HsfbCtrl_PrechargeCnt, 2
HsfbCtrl_PrechargeCnt:
	.zero	2
	.global	HsfbCtrl_Error
	.align 3
	.type	HsfbCtrl_Error, @object
	.size	HsfbCtrl_Error, 8
HsfbCtrl_Error:
	.zero	8
	.global	HsfbCtrl_EnDis
	.align 3
	.type	HsfbCtrl_EnDis, @object
	.size	HsfbCtrl_EnDis, 4
HsfbCtrl_EnDis:
	.zero	4
	.global	HsfbCtrl_Param
	.align 3
	.type	HsfbCtrl_Param, @object
	.size	HsfbCtrl_Param, 16
HsfbCtrl_Param:
	.zero	16
	.global	HsfbCtrl_Iout_Boost_PI
	.align 3
	.type	HsfbCtrl_Iout_Boost_PI, @object
	.size	HsfbCtrl_Iout_Boost_PI, 32
HsfbCtrl_Iout_Boost_PI:
	.zero	32
	.global	HsfbCtrl_Vout_Buck_PI
	.align 3
	.type	HsfbCtrl_Vout_Buck_PI, @object
	.size	HsfbCtrl_Vout_Buck_PI, 32
HsfbCtrl_Vout_Buck_PI:
	.zero	32
	.global	HsfbCtrl_Ich_Boost_PI
	.align 3
	.type	HsfbCtrl_Ich_Boost_PI, @object
	.size	HsfbCtrl_Ich_Boost_PI, 32
HsfbCtrl_Ich_Boost_PI:
	.zero	32
	.global	HsfbCtrl_Iout_Buck_PI
	.align 3
	.type	HsfbCtrl_Iout_Buck_PI, @object
	.size	HsfbCtrl_Iout_Buck_PI, 32
HsfbCtrl_Iout_Buck_PI:
	.zero	32
	.global	HsfbCtrl_VinSRFil
	.align 3
	.type	HsfbCtrl_VinSRFil, @object
	.size	HsfbCtrl_VinSRFil, 4
HsfbCtrl_VinSRFil:
	.zero	4
	.global	HsfbCtrl_VinSR
	.align 3
	.type	HsfbCtrl_VinSR, @object
	.size	HsfbCtrl_VinSR, 4
HsfbCtrl_VinSR:
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
	.uaword	.LFB0
	.uaword	.LFE0-.LFB0
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB17
	.uaword	.LFE17-.LFB17
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB3
	.uaword	.LFE3-.LFB3
	.byte	0x4
	.uaword	.LCFI0-.LFB3
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB4
	.uaword	.LFE4-.LFB4
	.byte	0x4
	.uaword	.LCFI1-.LFB4
	.byte	0xe
	.uleb128 0x40
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB6
	.uaword	.LFE6-.LFB6
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB7
	.uaword	.LFE7-.LFB7
	.byte	0x4
	.uaword	.LCFI2-.LFB7
	.byte	0xe
	.uleb128 0x10
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB8
	.uaword	.LFE8-.LFB8
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB9
	.uaword	.LFE9-.LFB9
	.align 2
.LEFDE14:
.LSFDE16:
	.uaword	.LEFDE16-.LASFDE16
.LASFDE16:
	.uaword	.Lframe0
	.uaword	.LFB10
	.uaword	.LFE10-.LFB10
	.byte	0x4
	.uaword	.LCFI3-.LFB10
	.byte	0xe
	.uleb128 0x10
	.align 2
.LEFDE16:
.LSFDE18:
	.uaword	.LEFDE18-.LASFDE18
.LASFDE18:
	.uaword	.Lframe0
	.uaword	.LFB11
	.uaword	.LFE11-.LFB11
	.byte	0x4
	.uaword	.LCFI4-.LFB11
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE18:
.LSFDE20:
	.uaword	.LEFDE20-.LASFDE20
.LASFDE20:
	.uaword	.Lframe0
	.uaword	.LFB12
	.uaword	.LFE12-.LFB12
	.align 2
.LEFDE20:
.LSFDE22:
	.uaword	.LEFDE22-.LASFDE22
.LASFDE22:
	.uaword	.Lframe0
	.uaword	.LFB13
	.uaword	.LFE13-.LFB13
	.align 2
.LEFDE22:
.LSFDE24:
	.uaword	.LEFDE24-.LASFDE24
.LASFDE24:
	.uaword	.Lframe0
	.uaword	.LFB14
	.uaword	.LFE14-.LFB14
	.align 2
.LEFDE24:
.section .text,"ax",@progbits
.Letext0:
	.file 2 "../30_Bsw/Common/rtwtypes.h"
	.file 3 "../40_Appl/HsfbCtrl/HsfbCtrl_struct.h"
	.file 4 "../40_Appl/HsfbMeas/HsfbMeas_struct.h"
	.file 5 "../40_Appl/HsfbPwm/HsfbPwm_enum.h"
	.file 6 "../40_Appl/HsfbPwm/HsfbPwm_struct.h"
	.file 7 "../40_Appl/HsfbApp/HsfbApp_struct.h"
	.file 8 "../40_Appl/HsfbCtrl/HsfbCtrl_support.h"
	.file 9 "../40_Appl/HsfbCtrl/HsfbCtrl.h"
	.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x193c
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.6.3 build on 2013-05-17"
	.byte	0x1
	.string	"../40_Appl/HsfbCtrl/HsfbCtrl.c"
	.string	"S:\\\\20_Make"
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_ranges0+0xa0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x3
	.string	"uint8_T"
	.byte	0x2
	.byte	0x51
	.uaword	0x86
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x3
	.string	"int16_T"
	.byte	0x2
	.byte	0x52
	.uaword	0xa6
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x3
	.string	"uint16_T"
	.byte	0x2
	.byte	0x53
	.uaword	0xc3
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.string	"int32_T"
	.byte	0x2
	.byte	0x54
	.uaword	0xe8
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.string	"uint32_T"
	.byte	0x2
	.byte	0x55
	.uaword	0xff
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x3
	.string	"real32_T"
	.byte	0x2
	.byte	0x56
	.uaword	0x11f
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
	.uaword	0x86
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
	.uaword	0x77
	.uleb128 0x3
	.string	"s16"
	.byte	0x2
	.byte	0x7e
	.uaword	0x97
	.uleb128 0x3
	.string	"u16"
	.byte	0x2
	.byte	0x7f
	.uaword	0xb3
	.uleb128 0x3
	.string	"s32"
	.byte	0x2
	.byte	0x80
	.uaword	0xd9
	.uleb128 0x3
	.string	"u32"
	.byte	0x2
	.byte	0x81
	.uaword	0xef
	.uleb128 0x3
	.string	"f32"
	.byte	0x2
	.byte	0x82
	.uaword	0x10f
	.uleb128 0x3
	.string	"bit"
	.byte	0x2
	.byte	0x84
	.uaword	0x132
	.uleb128 0x4
	.byte	0x4
	.byte	0x3
	.byte	0xe
	.uaword	0x1e9
	.uleb128 0x5
	.string	"PriDis"
	.byte	0x3
	.byte	0xf
	.uaword	0x1a1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"SrDis"
	.byte	0x3
	.byte	0x10
	.uaword	0x1a1
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x5
	.string	"ClampDis"
	.byte	0x3
	.byte	0x11
	.uaword	0x1a1
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x3
	.string	"HSFBCTRL_S_ENDIS"
	.byte	0x3
	.byte	0x12
	.uaword	0x1ac
	.uleb128 0x4
	.byte	0x8
	.byte	0x3
	.byte	0x14
	.uaword	0x2c5
	.uleb128 0x5
	.string	"BuckVoltage"
	.byte	0x3
	.byte	0x15
	.uaword	0x1a1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"BuckTopology"
	.byte	0x3
	.byte	0x16
	.uaword	0x1a1
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x5
	.string	"BuckPowerLow"
	.byte	0x3
	.byte	0x17
	.uaword	0x1a1
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x5
	.string	"BuckVinShort"
	.byte	0x3
	.byte	0x18
	.uaword	0x1a1
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x5
	.string	"BoostRampFin"
	.byte	0x3
	.byte	0x19
	.uaword	0x1a1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.string	"BoostVoutLimit"
	.byte	0x3
	.byte	0x1a
	.uaword	0x1a1
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0x5
	.string	"BoostVinShort"
	.byte	0x3
	.byte	0x1b
	.uaword	0x1a1
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x5
	.string	"BoostRampFail"
	.byte	0x3
	.byte	0x1c
	.uaword	0x1a1
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.byte	0
	.uleb128 0x3
	.string	"HSFBCTRL_S_ERROR"
	.byte	0x3
	.byte	0x1d
	.uaword	0x201
	.uleb128 0x4
	.byte	0x20
	.byte	0x3
	.byte	0x1f
	.uaword	0x360
	.uleb128 0x5
	.string	"Error"
	.byte	0x3
	.byte	0x20
	.uaword	0x196
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"PreErr"
	.byte	0x3
	.byte	0x21
	.uaword	0x196
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.string	"PIOut"
	.byte	0x3
	.byte	0x22
	.uaword	0x196
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"Kp"
	.byte	0x3
	.byte	0x23
	.uaword	0x196
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x5
	.string	"Kz"
	.byte	0x3
	.byte	0x24
	.uaword	0x196
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x5
	.string	"Ts"
	.byte	0x3
	.byte	0x25
	.uaword	0x196
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x5
	.string	"OutMax"
	.byte	0x3
	.byte	0x26
	.uaword	0x196
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x5
	.string	"OutMin"
	.byte	0x3
	.byte	0x27
	.uaword	0x196
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0
	.uleb128 0x3
	.string	"HSFBCTRL_S_PI"
	.byte	0x3
	.byte	0x28
	.uaword	0x2dd
	.uleb128 0x4
	.byte	0x10
	.byte	0x3
	.byte	0x2a
	.uaword	0x3d8
	.uleb128 0x5
	.string	"IoutBoostMax"
	.byte	0x3
	.byte	0x2b
	.uaword	0x196
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"PreVinTarget"
	.byte	0x3
	.byte	0x2c
	.uaword	0x196
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.string	"PreVinSrRise"
	.byte	0x3
	.byte	0x2d
	.uaword	0x196
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"PreVlimMin"
	.byte	0x3
	.byte	0x2e
	.uaword	0x196
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x3
	.string	"HSFBCTRL_S_PARAM"
	.byte	0x3
	.byte	0x2f
	.uaword	0x375
	.uleb128 0x4
	.byte	0x4
	.byte	0x3
	.byte	0x31
	.uaword	0x40d
	.uleb128 0x5
	.string	"CtrlEnDis"
	.byte	0x3
	.byte	0x32
	.uaword	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"HSFBCTRL_S_STATUS100US"
	.byte	0x3
	.byte	0x33
	.uaword	0x3f0
	.uleb128 0x4
	.byte	0x10
	.byte	0x3
	.byte	0x35
	.uaword	0x46f
	.uleb128 0x5
	.string	"BuckDuty"
	.byte	0x3
	.byte	0x36
	.uaword	0x196
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"BoostDuty"
	.byte	0x3
	.byte	0x37
	.uaword	0x196
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.string	"CtrlError"
	.byte	0x3
	.byte	0x38
	.uaword	0x2c5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x3
	.string	"HSFBCTRL_S_STATUS15US"
	.byte	0x3
	.byte	0x39
	.uaword	0x42b
	.uleb128 0x4
	.byte	0x8
	.byte	0x4
	.byte	0xe
	.uaword	0x4b3
	.uleb128 0x5
	.string	"Data"
	.byte	0x4
	.byte	0xf
	.uaword	0x16a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"Real"
	.byte	0x4
	.byte	0x10
	.uaword	0x196
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x3
	.string	"HSFBMEAS_S_STATUSDATA"
	.byte	0x4
	.byte	0x11
	.uaword	0x48c
	.uleb128 0x4
	.byte	0x20
	.byte	0x4
	.byte	0x1e
	.uaword	0x514
	.uleb128 0x5
	.string	"Ipri"
	.byte	0x4
	.byte	0x1f
	.uaword	0x4b3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"Vin"
	.byte	0x4
	.byte	0x20
	.uaword	0x4b3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"Iout"
	.byte	0x4
	.byte	0x21
	.uaword	0x4b3
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x5
	.string	"Vout"
	.byte	0x4
	.byte	0x22
	.uaword	0x4b3
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0
	.uleb128 0x3
	.string	"HSFBMEAS_S_STATUS15US"
	.byte	0x4
	.byte	0x23
	.uaword	0x4d0
	.uleb128 0x4
	.byte	0x30
	.byte	0x4
	.byte	0x25
	.uaword	0x59a
	.uleb128 0x5
	.string	"Ipri"
	.byte	0x4
	.byte	0x26
	.uaword	0x4b3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"Vin"
	.byte	0x4
	.byte	0x27
	.uaword	0x4b3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"Iout"
	.byte	0x4
	.byte	0x28
	.uaword	0x4b3
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x5
	.string	"Vout"
	.byte	0x4
	.byte	0x29
	.uaword	0x4b3
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x5
	.string	"VoutDiag"
	.byte	0x4
	.byte	0x2a
	.uaword	0x4b3
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x5
	.string	"IproFet"
	.byte	0x4
	.byte	0x2b
	.uaword	0x4b3
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.string	"HSFBMEAS_S_STATUS100US"
	.byte	0x4
	.byte	0x2c
	.uaword	0x531
	.uleb128 0x6
	.byte	0x4
	.byte	0x5
	.byte	0xe
	.uaword	0x641
	.uleb128 0x7
	.string	"HSFBPWM_E_STATE_None"
	.sleb128 0
	.uleb128 0x7
	.string	"HSFBPWM_E_STATE_Reset"
	.sleb128 1
	.uleb128 0x7
	.string	"HSFBPWM_E_STATE_Charge"
	.sleb128 2
	.uleb128 0x7
	.string	"HSFBPWM_E_STATE_SteadyRun"
	.sleb128 3
	.uleb128 0x7
	.string	"HSFBPWM_E_STATE_Discharge"
	.sleb128 4
	.byte	0
	.uleb128 0x3
	.string	"HSFBPWM_E_STATE"
	.byte	0x5
	.byte	0x14
	.uaword	0x5b8
	.uleb128 0x4
	.byte	0x10
	.byte	0x6
	.byte	0x1b
	.uaword	0x6ac
	.uleb128 0x5
	.string	"PwmState"
	.byte	0x6
	.byte	0x1c
	.uaword	0x641
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0x6
	.byte	0x1d
	.uaword	0x175
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.string	"TopoState"
	.byte	0x6
	.byte	0x1e
	.uaword	0x196
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"IpriPwmGain"
	.byte	0x6
	.byte	0x1f
	.uaword	0x196
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x3
	.string	"HSFBPWM_S_STATUS15US"
	.byte	0x6
	.byte	0x20
	.uaword	0x658
	.uleb128 0x4
	.byte	0x1a
	.byte	0x7
	.byte	0x28
	.uaword	0x7d0
	.uleb128 0x5
	.string	"Enable"
	.byte	0x7
	.byte	0x29
	.uaword	0x175
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"ClrFault"
	.byte	0x7
	.byte	0x2a
	.uaword	0x175
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x5
	.string	"CanTimeOut"
	.byte	0x7
	.byte	0x2b
	.uaword	0x175
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.string	"IoutRef"
	.byte	0x7
	.byte	0x2c
	.uaword	0x175
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x5
	.string	"VoutRef"
	.byte	0x7
	.byte	0x2d
	.uaword	0x175
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"VinRef"
	.byte	0x7
	.byte	0x2e
	.uaword	0x175
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x5
	.string	"Operation"
	.byte	0x7
	.byte	0x2f
	.uaword	0x175
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0x7
	.byte	0x30
	.uaword	0x175
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0x5
	.string	"AutoDiagEn"
	.byte	0x7
	.byte	0x31
	.uaword	0x175
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x5
	.string	"PeakCurrentEn"
	.byte	0x7
	.byte	0x32
	.uaword	0x175
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.uleb128 0x5
	.string	"TestPulseEn"
	.byte	0x7
	.byte	0x33
	.uaword	0x175
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x5
	.string	"AutoSwitchDis"
	.byte	0x7
	.byte	0x34
	.uaword	0x175
	.byte	0x2
	.byte	0x23
	.uleb128 0x16
	.uleb128 0x5
	.string	"JitterDis"
	.byte	0x7
	.byte	0x35
	.uaword	0x175
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0
	.uleb128 0x3
	.string	"HSFBAPP_S_RX"
	.byte	0x7
	.byte	0x36
	.uaword	0x6c8
	.uleb128 0x4
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.uaword	0x7fb
	.uleb128 0x8
	.uaword	.LASF1
	.byte	0x8
	.byte	0x19
	.uaword	0x196
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"DW_HsfbCtrl_SR_Calc_T"
	.byte	0x8
	.byte	0x1a
	.uaword	0x7e4
	.uleb128 0x4
	.byte	0x8
	.byte	0x8
	.byte	0x21
	.uaword	0x84a
	.uleb128 0x5
	.string	"err_delay_DSTATE"
	.byte	0x8
	.byte	0x22
	.uaword	0x196
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF2
	.byte	0x8
	.byte	0x23
	.uaword	0x196
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x3
	.string	"DW_HsfbCtrl_PI_Calc_T"
	.byte	0x8
	.byte	0x24
	.uaword	0x818
	.uleb128 0x4
	.byte	0xb4
	.byte	0x9
	.byte	0x23
	.uaword	0xe19
	.uleb128 0x5
	.string	"PI_Calc_m"
	.byte	0x9
	.byte	0x24
	.uaword	0x84a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"PI_Calc_c"
	.byte	0x9
	.byte	0x25
	.uaword	0x84a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"PI_Calc_g"
	.byte	0x9
	.byte	0x26
	.uaword	0x84a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x5
	.string	"Vout_SR_Calc"
	.byte	0x9
	.byte	0x27
	.uaword	0x7fb
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x5
	.string	"PI_Calc"
	.byte	0x9
	.byte	0x28
	.uaword	0x84a
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x5
	.string	"Iout_SR_Calc"
	.byte	0x9
	.byte	0x29
	.uaword	0x7fb
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x5
	.string	"Switch_pm"
	.byte	0x9
	.byte	0x2a
	.uaword	0x196
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x5
	.string	"Gain1"
	.byte	0x9
	.byte	0x2b
	.uaword	0x196
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x5
	.string	"Switch_gb"
	.byte	0x9
	.byte	0x2c
	.uaword	0x196
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x5
	.string	"IchRef"
	.byte	0x9
	.byte	0x2d
	.uaword	0x196
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x5
	.string	"IoutMax"
	.byte	0x9
	.byte	0x2e
	.uaword	0x196
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x5
	.string	"Real"
	.byte	0x9
	.byte	0x2f
	.uaword	0x196
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x5
	.string	"Gain1_h"
	.byte	0x9
	.byte	0x30
	.uaword	0x196
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x5
	.string	"Add1_o"
	.byte	0x9
	.byte	0x31
	.uaword	0x196
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x5
	.string	"IoutCmdOut"
	.byte	0x9
	.byte	0x32
	.uaword	0x196
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x5
	.string	"Delay_DSTATE"
	.byte	0x9
	.byte	0x33
	.uaword	0x196
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x5
	.string	"Delay_DSTATE_d"
	.byte	0x9
	.byte	0x34
	.uaword	0x196
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x5
	.string	"Delay_DSTATE_a"
	.byte	0x9
	.byte	0x35
	.uaword	0x196
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x5
	.string	"Delay1_DSTATE"
	.byte	0x9
	.byte	0x36
	.uaword	0x196
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x5
	.string	"Vin_delay_DSTATE"
	.byte	0x9
	.byte	0x37
	.uaword	0x196
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x5
	.string	"y_delay_DSTATE"
	.byte	0x9
	.byte	0x38
	.uaword	0x196
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x5
	.string	"y_delay_DSTATE_b"
	.byte	0x9
	.byte	0x39
	.uaword	0x196
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x5
	.string	"Vin_delay1_DSTATE"
	.byte	0x9
	.byte	0x3a
	.uaword	0x196
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x5
	.string	"y_delay_DSTATE_f"
	.byte	0x9
	.byte	0x3b
	.uaword	0x196
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x8
	.uaword	.LASF1
	.byte	0x9
	.byte	0x3c
	.uaword	0x196
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x5
	.string	"Vin_delay1_DSTATE_g"
	.byte	0x9
	.byte	0x3d
	.uaword	0x196
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x5
	.string	"Vin_delay_DSTATE_d"
	.byte	0x9
	.byte	0x3e
	.uaword	0x196
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x5
	.string	"y_delay_DSTATE_o"
	.byte	0x9
	.byte	0x3f
	.uaword	0x196
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x5
	.string	"Inenn"
	.byte	0x9
	.byte	0x40
	.uaword	0x196
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x5
	.string	"IoutInt"
	.byte	0x9
	.byte	0x41
	.uaword	0x196
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x5
	.string	"cnt_delay_DSTATE"
	.byte	0x9
	.byte	0x42
	.uaword	0x175
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x5
	.string	"cnt_delay_DSTATE_c"
	.byte	0x9
	.byte	0x43
	.uaword	0x175
	.byte	0x3
	.byte	0x23
	.uleb128 0x8a
	.uleb128 0x5
	.string	"cnt_delay_DSTATE_h"
	.byte	0x9
	.byte	0x44
	.uaword	0x175
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x5
	.string	"cnt_delay_DSTATE_l"
	.byte	0x9
	.byte	0x45
	.uaword	0x175
	.byte	0x3
	.byte	0x23
	.uleb128 0x8e
	.uleb128 0x5
	.string	"dis_cnt_DSTATE"
	.byte	0x9
	.byte	0x46
	.uaword	0x175
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x5
	.string	"en_cnt_DSTATE"
	.byte	0x9
	.byte	0x47
	.uaword	0x175
	.byte	0x3
	.byte	0x23
	.uleb128 0x92
	.uleb128 0x5
	.string	"dis_cnt_DSTATE_o"
	.byte	0x9
	.byte	0x48
	.uaword	0x175
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x5
	.string	"en_cnt_DSTATE_j"
	.byte	0x9
	.byte	0x49
	.uaword	0x175
	.byte	0x3
	.byte	0x23
	.uleb128 0x96
	.uleb128 0x5
	.string	"dis_cnt_DSTATE_i"
	.byte	0x9
	.byte	0x4a
	.uaword	0x175
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x5
	.string	"en_cnt_DSTATE_c"
	.byte	0x9
	.byte	0x4b
	.uaword	0x175
	.byte	0x3
	.byte	0x23
	.uleb128 0x9a
	.uleb128 0x5
	.string	"RiseCnt"
	.byte	0x9
	.byte	0x4c
	.uaword	0x175
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0x5
	.string	"StartCnt"
	.byte	0x9
	.byte	0x4d
	.uaword	0x175
	.byte	0x3
	.byte	0x23
	.uleb128 0x9e
	.uleb128 0x5
	.string	"is_active_c8_HsfbCtrl"
	.byte	0x9
	.byte	0x4e
	.uaword	0x160
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x5
	.string	"is_c8_HsfbCtrl"
	.byte	0x9
	.byte	0x4f
	.uaword	0x160
	.byte	0x3
	.byte	0x23
	.uleb128 0xa1
	.uleb128 0x5
	.string	"is_active_c6_HsfbCtrl"
	.byte	0x9
	.byte	0x50
	.uaword	0x160
	.byte	0x3
	.byte	0x23
	.uleb128 0xa2
	.uleb128 0x5
	.string	"is_c6_HsfbCtrl"
	.byte	0x9
	.byte	0x51
	.uaword	0x160
	.byte	0x3
	.byte	0x23
	.uleb128 0xa3
	.uleb128 0x5
	.string	"is_Precharge"
	.byte	0x9
	.byte	0x52
	.uaword	0x160
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0x5
	.string	"is_active_c9_HsfbCtrl"
	.byte	0x9
	.byte	0x53
	.uaword	0x160
	.byte	0x3
	.byte	0x23
	.uleb128 0xa5
	.uleb128 0x5
	.string	"is_c9_HsfbCtrl"
	.byte	0x9
	.byte	0x54
	.uaword	0x160
	.byte	0x3
	.byte	0x23
	.uleb128 0xa6
	.uleb128 0x5
	.string	"RelationalOperator_m"
	.byte	0x9
	.byte	0x55
	.uaword	0x1a1
	.byte	0x3
	.byte	0x23
	.uleb128 0xa7
	.uleb128 0x8
	.uaword	.LASF3
	.byte	0x9
	.byte	0x56
	.uaword	0x1a1
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0x8
	.uaword	.LASF4
	.byte	0x9
	.byte	0x57
	.uaword	0x1a1
	.byte	0x3
	.byte	0x23
	.uleb128 0xa9
	.uleb128 0x5
	.string	"Switch1"
	.byte	0x9
	.byte	0x58
	.uaword	0x1a1
	.byte	0x3
	.byte	0x23
	.uleb128 0xaa
	.uleb128 0x5
	.string	"IchCtrlDis"
	.byte	0x9
	.byte	0x59
	.uaword	0x1a1
	.byte	0x3
	.byte	0x23
	.uleb128 0xab
	.uleb128 0x5
	.string	"IoutCtrlDis"
	.byte	0x9
	.byte	0x5a
	.uaword	0x1a1
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0x5
	.string	"VinShortEn"
	.byte	0x9
	.byte	0x5b
	.uaword	0x1a1
	.byte	0x3
	.byte	0x23
	.uleb128 0xad
	.uleb128 0x5
	.string	"DataTypeConversion_k"
	.byte	0x9
	.byte	0x5c
	.uaword	0x1a1
	.byte	0x3
	.byte	0x23
	.uleb128 0xae
	.uleb128 0x8
	.uaword	.LASF2
	.byte	0x9
	.byte	0x5d
	.uaword	0x1a1
	.byte	0x3
	.byte	0x23
	.uleb128 0xaf
	.uleb128 0x5
	.string	"out_delay_DSTATE_h"
	.byte	0x9
	.byte	0x5e
	.uaword	0x1a1
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x5
	.string	"out_delay_DSTATE_i"
	.byte	0x9
	.byte	0x5f
	.uaword	0x1a1
	.byte	0x3
	.byte	0x23
	.uleb128 0xb1
	.uleb128 0x5
	.string	"Relay_Mode"
	.byte	0x9
	.byte	0x60
	.uaword	0x1a1
	.byte	0x3
	.byte	0x23
	.uleb128 0xb2
	.byte	0
	.uleb128 0x3
	.string	"DW_HsfbCtrl_f_T"
	.byte	0x9
	.byte	0x61
	.uaword	0x867
	.uleb128 0x9
	.string	"HsfbCtrl_IoutIntCalc"
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.uaword	0x196
	.byte	0x1
	.uaword	0xe75
	.uleb128 0xa
	.string	"Iout"
	.byte	0x1
	.byte	0x5d
	.uaword	0x196
	.uleb128 0xa
	.string	"Inenn"
	.byte	0x1
	.byte	0x5d
	.uaword	0x196
	.uleb128 0xb
	.string	"y"
	.byte	0x1
	.byte	0x5f
	.uaword	0x196
	.byte	0
	.uleb128 0xc
	.string	"HsfbCtrl_DeratingCalc"
	.byte	0x1
	.byte	0x76
	.byte	0x1
	.byte	0x1
	.uaword	0xec8
	.uleb128 0xa
	.string	"Vout"
	.byte	0x1
	.byte	0x76
	.uaword	0x196
	.uleb128 0xa
	.string	"Ipeak"
	.byte	0x1
	.byte	0x76
	.uaword	0xec8
	.uleb128 0xa
	.string	"Inenn"
	.byte	0x1
	.byte	0x76
	.uaword	0xec8
	.uleb128 0xb
	.string	"kVout"
	.byte	0x1
	.byte	0x78
	.uaword	0x196
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.uaword	0x196
	.uleb128 0x9
	.string	"HsfbCtrl_Min"
	.byte	0x1
	.byte	0x96
	.byte	0x1
	.uaword	0x196
	.byte	0x1
	.uaword	0xf04
	.uleb128 0xa
	.string	"a"
	.byte	0x1
	.byte	0x96
	.uaword	0x196
	.uleb128 0xa
	.string	"b"
	.byte	0x1
	.byte	0x96
	.uaword	0x196
	.uleb128 0xb
	.string	"y"
	.byte	0x1
	.byte	0x98
	.uaword	0x196
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.string	"HsfbCtrl_Reset"
	.byte	0x1
	.uahalf	0x338
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.uaword	0xe30
	.uaword	.LFB0
	.uaword	.LFE0
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0xf77
	.uleb128 0x10
	.uaword	0xe52
	.uaword	.LLST0
	.uleb128 0x10
	.uaword	0xe5e
	.uaword	.LLST1
	.uleb128 0x11
	.uaword	0xe6b
	.uaword	.LLST2
	.uleb128 0x12
	.uaword	0xe30
	.uaword	.LBB12
	.uaword	.LBE12
	.byte	0x1
	.byte	0x5d
	.uleb128 0x13
	.uaword	.LBB13
	.uaword	.LBE13
	.uleb128 0x11
	.uaword	0xe6b
	.uaword	.LLST3
	.uleb128 0x14
	.uaword	0xe5e
	.uleb128 0x14
	.uaword	0xe52
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.uaword	0xe75
	.uaword	.LFB17
	.uaword	.LFE17
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0xfe9
	.uleb128 0x10
	.uaword	0xe94
	.uaword	.LLST4
	.uleb128 0x10
	.uaword	0xea0
	.uaword	.LLST5
	.uleb128 0x11
	.uaword	0xeba
	.uaword	.LLST6
	.uleb128 0x15
	.uaword	0xead
	.byte	0x6
	.byte	0x3
	.uaword	HsfbCtrl_DW+128
	.byte	0x9f
	.uleb128 0x16
	.uaword	0xe75
	.uaword	.LBB16
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x76
	.uleb128 0x10
	.uaword	0xea0
	.uaword	.LLST7
	.uleb128 0x10
	.uaword	0xe94
	.uaword	.LLST8
	.uleb128 0x17
	.uaword	.Ldebug_ranges0+0x18
	.uleb128 0x18
	.uaword	0xeba
	.uleb128 0x10
	.uaword	0xead
	.uaword	.LLST9
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.string	"HsfbCtrl_Derating_Calc"
	.byte	0x1
	.byte	0xaa
	.byte	0x1
	.uaword	.LFB3
	.uaword	.LFE3
	.uaword	.LLST10
	.uaword	0x105e
	.uleb128 0x1a
	.string	"b_Ipeak"
	.byte	0x1
	.byte	0xac
	.uaword	0x196
	.uaword	.LLST11
	.uleb128 0x12
	.uaword	0xece
	.uaword	.LBB20
	.uaword	.LBE20
	.byte	0x1
	.byte	0xc4
	.uleb128 0x10
	.uaword	0xef1
	.uaword	.LLST12
	.uleb128 0x10
	.uaword	0xee8
	.uaword	.LLST13
	.uleb128 0x13
	.uaword	.LBB21
	.uaword	.LBE21
	.uleb128 0x11
	.uaword	0xefa
	.uaword	.LLST14
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.string	"HsfbCtrl_Buck_Ctrl_100us"
	.byte	0x1
	.byte	0xd1
	.byte	0x1
	.uaword	.LFB4
	.uaword	.LFE4
	.uaword	.LLST15
	.uaword	0x12b1
	.uleb128 0x1b
	.uaword	.LASF3
	.byte	0x1
	.byte	0xd3
	.uaword	0x1a1
	.uleb128 0x1a
	.string	"LogicalOperator_iy"
	.byte	0x1
	.byte	0xd4
	.uaword	0x1a1
	.uaword	.LLST16
	.uleb128 0x1a
	.string	"Switch_n"
	.byte	0x1
	.byte	0xd5
	.uaword	0x175
	.uaword	.LLST17
	.uleb128 0x1a
	.string	"Switch_dg"
	.byte	0x1
	.byte	0xd6
	.uaword	0x175
	.uaword	.LLST18
	.uleb128 0x1a
	.string	"RelationalOperator_g"
	.byte	0x1
	.byte	0xd7
	.uaword	0x1a1
	.uaword	.LLST19
	.uleb128 0x1a
	.string	"RelationalOperator_a"
	.byte	0x1
	.byte	0xd8
	.uaword	0x1a1
	.uaword	.LLST20
	.uleb128 0x1c
	.uaword	.LASF4
	.byte	0x1
	.byte	0xd9
	.uaword	0x1a1
	.uaword	.LLST21
	.uleb128 0x1a
	.string	"LogicalOperator2_e"
	.byte	0x1
	.byte	0xda
	.uaword	0x1a1
	.uaword	.LLST22
	.uleb128 0x1a
	.string	"LogicalOperator3_a"
	.byte	0x1
	.byte	0xdb
	.uaword	0x1a1
	.uaword	.LLST23
	.uleb128 0x1a
	.string	"Merge"
	.byte	0x1
	.byte	0xdc
	.uaword	0x1a1
	.uaword	.LLST24
	.uleb128 0x1a
	.string	"Switch_nr"
	.byte	0x1
	.byte	0xdd
	.uaword	0x196
	.uaword	.LLST25
	.uleb128 0x1a
	.string	"LogicalOperator2_o"
	.byte	0x1
	.byte	0xde
	.uaword	0x1a1
	.uaword	.LLST26
	.uleb128 0x1a
	.string	"LogicalOperator3_m"
	.byte	0x1
	.byte	0xdf
	.uaword	0x1a1
	.uaword	.LLST27
	.uleb128 0x1a
	.string	"RelationalOperator"
	.byte	0x1
	.byte	0xe0
	.uaword	0x1a1
	.uaword	.LLST28
	.uleb128 0x1a
	.string	"Merge_j"
	.byte	0x1
	.byte	0xe1
	.uaword	0x1a1
	.uaword	.LLST29
	.uleb128 0x1d
	.string	"Compare_a"
	.byte	0x1
	.byte	0xe2
	.uaword	0x1a1
	.byte	0x2
	.byte	0x8a
	.sleb128 36
	.uleb128 0x1a
	.string	"RelationalOperator_d"
	.byte	0x1
	.byte	0xe3
	.uaword	0x1a1
	.uaword	.LLST30
	.uleb128 0x1d
	.string	"Compare_j"
	.byte	0x1
	.byte	0xe4
	.uaword	0x1a1
	.byte	0x2
	.byte	0x8a
	.sleb128 40
	.uleb128 0x1a
	.string	"RelationalOperator_ff"
	.byte	0x1
	.byte	0xe5
	.uaword	0x1a1
	.uaword	.LLST31
	.uleb128 0x1a
	.string	"Merge_b"
	.byte	0x1
	.byte	0xe6
	.uaword	0x1a1
	.uaword	.LLST32
	.uleb128 0x1a
	.string	"ki3"
	.byte	0x1
	.byte	0xe7
	.uaword	0x196
	.uaword	.LLST33
	.uleb128 0x1a
	.string	"Switch_d0"
	.byte	0x1
	.byte	0xe8
	.uaword	0x196
	.uaword	.LLST34
	.uleb128 0x1a
	.string	"Switch_g"
	.byte	0x1
	.byte	0xe9
	.uaword	0x196
	.uaword	.LLST35
	.byte	0
	.uleb128 0x1e
	.string	"HsfbCtrl_Precharge"
	.byte	0x1
	.uahalf	0x1b7
	.byte	0x1
	.byte	0x1
	.uaword	0x1301
	.uleb128 0x1f
	.string	"VinRise"
	.byte	0x1
	.uahalf	0x1b9
	.uaword	0x196
	.uleb128 0x1f
	.string	"RiseCntMax"
	.byte	0x1
	.uahalf	0x1ba
	.uaword	0x196
	.uleb128 0x1f
	.string	"guard1"
	.byte	0x1
	.uahalf	0x1bb
	.uaword	0x1a1
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.string	"HsfbCtrl_Precharge_State"
	.byte	0x1
	.uahalf	0x241
	.byte	0x1
	.uaword	.LFB6
	.uaword	.LFE6
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x1362
	.uleb128 0x21
	.uaword	0x12b1
	.uaword	.LBB24
	.uaword	.Ldebug_ranges0+0x30
	.byte	0x1
	.uahalf	0x265
	.uleb128 0x17
	.uaword	.Ldebug_ranges0+0x50
	.uleb128 0x11
	.uaword	0x12ce
	.uaword	.LLST36
	.uleb128 0x11
	.uaword	0x12de
	.uaword	.LLST37
	.uleb128 0x11
	.uaword	0x12f1
	.uaword	.LLST38
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.string	"HsfbCtrl_Boost_Ctrl_100us"
	.byte	0x1
	.uahalf	0x288
	.byte	0x1
	.uaword	.LFB7
	.uaword	.LFE7
	.uaword	.LLST39
	.uaword	0x1481
	.uleb128 0x23
	.string	"y_delay"
	.byte	0x1
	.uahalf	0x28a
	.uaword	0x196
	.uaword	.LLST40
	.uleb128 0x23
	.string	"Gain_f"
	.byte	0x1
	.uahalf	0x28b
	.uaword	0x196
	.uaword	.LLST41
	.uleb128 0x23
	.string	"LogicalOperator_n"
	.byte	0x1
	.uahalf	0x28c
	.uaword	0x1a1
	.uaword	.LLST42
	.uleb128 0x23
	.string	"VoutMin"
	.byte	0x1
	.uahalf	0x28d
	.uaword	0x196
	.uaword	.LLST43
	.uleb128 0x23
	.string	"Min"
	.byte	0x1
	.uahalf	0x28e
	.uaword	0x196
	.uaword	.LLST44
	.uleb128 0x23
	.string	"Step_Out"
	.byte	0x1
	.uahalf	0x28f
	.uaword	0x196
	.uaword	.LLST45
	.uleb128 0x23
	.string	"Switch_fj"
	.byte	0x1
	.uahalf	0x290
	.uaword	0x175
	.uaword	.LLST46
	.uleb128 0x23
	.string	"LogicalOperator_b"
	.byte	0x1
	.uahalf	0x291
	.uaword	0x1a1
	.uaword	.LLST47
	.uleb128 0x23
	.string	"Switch_ob"
	.byte	0x1
	.uahalf	0x292
	.uaword	0x175
	.uaword	.LLST48
	.uleb128 0x23
	.string	"Switch_f"
	.byte	0x1
	.uahalf	0x293
	.uaword	0x196
	.uaword	.LLST49
	.uleb128 0x24
	.string	"u0_tmp"
	.byte	0x1
	.uahalf	0x294
	.uaword	0x196
	.byte	0x1
	.byte	0x59
	.byte	0
	.uleb128 0x25
	.uaword	0xf04
	.uaword	.LFB8
	.uaword	.LFE8
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0x20
	.byte	0x1
	.string	"HsfbCtrl_Reset_100us"
	.byte	0x1
	.uahalf	0x34d
	.byte	0x1
	.uaword	.LFB9
	.uaword	.LFE9
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x14dc
	.uleb128 0x26
	.uaword	0xf04
	.uaword	.LBB30
	.uaword	.Ldebug_ranges0+0x70
	.byte	0x1
	.uahalf	0x35b
	.uleb128 0x26
	.uaword	0xf04
	.uaword	.LBB34
	.uaword	.Ldebug_ranges0+0x88
	.byte	0x1
	.uahalf	0x352
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.string	"HsfbCtrl_Buck_Ctrl_15us"
	.byte	0x1
	.uahalf	0x368
	.byte	0x1
	.uaword	.LFB10
	.uaword	.LFE10
	.uaword	.LLST50
	.uaword	0x155a
	.uleb128 0x24
	.string	"Switch_p4"
	.byte	0x1
	.uahalf	0x36a
	.uaword	0x196
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x23
	.string	"Switch_i"
	.byte	0x1
	.uahalf	0x36b
	.uaword	0x196
	.uaword	.LLST51
	.uleb128 0x23
	.string	"HsfbCtrl_PwmStatus15us_0"
	.byte	0x1
	.uahalf	0x36c
	.uaword	0x196
	.uaword	.LLST52
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.string	"HsfbCtrl_Boost_Ctrl_15us"
	.byte	0x1
	.uahalf	0x397
	.byte	0x1
	.uaword	.LFB11
	.uaword	.LFE11
	.uaword	.LLST53
	.uleb128 0x20
	.byte	0x1
	.string	"HsfbCtrl_Call100us"
	.byte	0x1
	.uahalf	0x3ad
	.byte	0x1
	.uaword	.LFB12
	.uaword	.LFE12
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x1606
	.uleb128 0x28
	.string	"MeasStatus100us"
	.byte	0x1
	.uahalf	0x3ad
	.uaword	0x1606
	.uaword	.LLST54
	.uleb128 0x29
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x3ae
	.uaword	0x1611
	.uaword	.LLST55
	.uleb128 0x29
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x3ae
	.uaword	0x161c
	.uaword	.LLST56
	.uleb128 0x28
	.string	"CtrlStatus100us"
	.byte	0x1
	.uahalf	0x3af
	.uaword	0x1627
	.uaword	.LLST57
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.uaword	0x160c
	.uleb128 0x2a
	.uaword	0x59a
	.uleb128 0xd
	.byte	0x4
	.uaword	0x1617
	.uleb128 0x2a
	.uaword	0x6ac
	.uleb128 0xd
	.byte	0x4
	.uaword	0x1622
	.uleb128 0x2a
	.uaword	0x7d0
	.uleb128 0xd
	.byte	0x4
	.uaword	0x40d
	.uleb128 0x20
	.byte	0x1
	.string	"HsfbCtrl_Call15us"
	.byte	0x1
	.uahalf	0x3d1
	.byte	0x1
	.uaword	.LFB13
	.uaword	.LFE13
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x16ab
	.uleb128 0x28
	.string	"MeasStatus15us"
	.byte	0x1
	.uahalf	0x3d1
	.uaword	0x16ab
	.uaword	.LLST58
	.uleb128 0x29
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x3d2
	.uaword	0x1611
	.uaword	.LLST59
	.uleb128 0x29
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x3d2
	.uaword	0x161c
	.uaword	.LLST60
	.uleb128 0x28
	.string	"CtrlStatus15us"
	.byte	0x1
	.uahalf	0x3d3
	.uaword	0x16b6
	.uaword	.LLST61
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.uaword	0x16b1
	.uleb128 0x2a
	.uaword	0x514
	.uleb128 0xd
	.byte	0x4
	.uaword	0x46f
	.uleb128 0x2b
	.byte	0x1
	.string	"HsfbCtrl_CallInit"
	.byte	0x1
	.uahalf	0x3f0
	.byte	0x1
	.uaword	.LFB14
	.uaword	.LFE14
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0x2c
	.string	"HsfbCtrl_VinSR"
	.byte	0x1
	.byte	0x24
	.uaword	0x196
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	HsfbCtrl_VinSR
	.uleb128 0x2c
	.string	"HsfbCtrl_VinSRFil"
	.byte	0x1
	.byte	0x25
	.uaword	0x196
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	HsfbCtrl_VinSRFil
	.uleb128 0x2c
	.string	"HsfbCtrl_Iout_Buck_PI"
	.byte	0x1
	.byte	0x2c
	.uaword	0x360
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	HsfbCtrl_Iout_Buck_PI
	.uleb128 0x2c
	.string	"HsfbCtrl_Ich_Boost_PI"
	.byte	0x1
	.byte	0x2d
	.uaword	0x360
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	HsfbCtrl_Ich_Boost_PI
	.uleb128 0x2c
	.string	"HsfbCtrl_Vout_Buck_PI"
	.byte	0x1
	.byte	0x2e
	.uaword	0x360
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	HsfbCtrl_Vout_Buck_PI
	.uleb128 0x2c
	.string	"HsfbCtrl_Iout_Boost_PI"
	.byte	0x1
	.byte	0x2f
	.uaword	0x360
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	HsfbCtrl_Iout_Boost_PI
	.uleb128 0x2c
	.string	"HsfbCtrl_Param"
	.byte	0x1
	.byte	0x30
	.uaword	0x3d8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	HsfbCtrl_Param
	.uleb128 0x2c
	.string	"HsfbCtrl_EnDis"
	.byte	0x1
	.byte	0x31
	.uaword	0x1e9
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	HsfbCtrl_EnDis
	.uleb128 0x2c
	.string	"HsfbCtrl_Error"
	.byte	0x1
	.byte	0x32
	.uaword	0x2c5
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	HsfbCtrl_Error
	.uleb128 0x2c
	.string	"HsfbCtrl_PrechargeCnt"
	.byte	0x1
	.byte	0x33
	.uaword	0x175
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	HsfbCtrl_PrechargeCnt
	.uleb128 0x2c
	.string	"HsfbCtrl_BoostMode"
	.byte	0x1
	.byte	0x34
	.uaword	0x175
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	HsfbCtrl_BoostMode
	.uleb128 0x2c
	.string	"HsfbCtrl_IoutLimFlag"
	.byte	0x1
	.byte	0x35
	.uaword	0x1a1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	HsfbCtrl_IoutLimFlag
	.uleb128 0x2c
	.string	"HsfbCtrl_DW"
	.byte	0x1
	.byte	0x3c
	.uaword	0xe19
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	HsfbCtrl_DW
	.uleb128 0x2c
	.string	"HsfbCtrl_MeasStatus15us"
	.byte	0x1
	.byte	0x4d
	.uaword	0x16ab
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	HsfbCtrl_MeasStatus15us
	.uleb128 0x2c
	.string	"HsfbCtrl_MeasStatus100us"
	.byte	0x1
	.byte	0x4e
	.uaword	0x1606
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	HsfbCtrl_MeasStatus100us
	.uleb128 0x2c
	.string	"HsfbCtrl_PwmStatus15us"
	.byte	0x1
	.byte	0x4f
	.uaword	0x1611
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	HsfbCtrl_PwmStatus15us
	.uleb128 0x2c
	.string	"HsfbCtrl_AppRx10ms"
	.byte	0x1
	.byte	0x50
	.uaword	0x161c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	HsfbCtrl_AppRx10ms
	.uleb128 0x2c
	.string	"HsfbCtrl_CtrlStatus15us"
	.byte	0x1
	.byte	0x51
	.uaword	0x16b6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	HsfbCtrl_CtrlStatus15us
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
	.uleb128 0x7
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x2
	.uleb128 0x6
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uaword	.LVL2
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
	.uaword	.LVL5
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL6
	.uaword	.LFE0
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL3
	.uaword	.LVL4
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0x40000000
	.uaword	.LVL5
	.uaword	.LVL6
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0x3f800000
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL7
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL14
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL17
	.uaword	.LVL18
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL7
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL10
	.uaword	.LFE17
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL11
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL18
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL8
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL15
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL8
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL15
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL8
	.uaword	.LVL10
	.uahalf	0x6
	.byte	0x3
	.uaword	HsfbCtrl_DW+128
	.byte	0x9f
	.uaword	.LVL15
	.uaword	.LVL17
	.uahalf	0x6
	.byte	0x3
	.uaword	HsfbCtrl_DW+128
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LFB3
	.uaword	.LCFI0
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI0
	.uaword	.LFE3
	.uahalf	0x2
	.byte	0x8a
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL20
	.uaword	.LVL23
	.uahalf	0x2
	.byte	0x91
	.sleb128 -4
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL21
	.uaword	.LVL23
	.uahalf	0x5
	.byte	0x3
	.uaword	HsfbCtrl_DW+64
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL21
	.uaword	.LVL23
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL22
	.uaword	.LVL23
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LFB4
	.uaword	.LCFI1
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI1
	.uaword	.LFE4
	.uahalf	0x3
	.byte	0x8a
	.sleb128 64
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL25
	.uaword	.LVL26
	.uahalf	0xf
	.byte	0x74
	.sleb128 0
	.byte	0x23
	.uleb128 0x80000000
	.byte	0xc
	.uaword	0x800003e8
	.byte	0x2a
	.byte	0x9f
	.uaword	.LVL67
	.uaword	.LVL68
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL24
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL46
	.uaword	.LVL47
	.uahalf	0x1
	.byte	0x50
	.uaword	.LVL47
	.uaword	.LVL48
	.uahalf	0x1
	.byte	0x5c
	.uaword	.LVL49
	.uaword	.LVL50
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL51
	.uaword	.LVL52
	.uahalf	0x1
	.byte	0x5b
	.uaword	.LVL53
	.uaword	.LVL54
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL55
	.uaword	.LVL56
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL67
	.uaword	.LVL68
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL27
	.uaword	.LVL28
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL61
	.uaword	.LVL62
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL31
	.uaword	.LVL32
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL71
	.uaword	.LVL72
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL58
	.uaword	.LVL59
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL30
	.uaword	.LVL32
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL57
	.uaword	.LVL59
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL71
	.uaword	.LVL72
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL30
	.uaword	.LVL32
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL57
	.uaword	.LVL59
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL71
	.uaword	.LVL72
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL32
	.uaword	.LVL56
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL60
	.uaword	.LVL67
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL68
	.uaword	.LVL70
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL72
	.uaword	.LFE4
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL39
	.uaword	.LVL40
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL42
	.uaword	.LVL43
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL44
	.uaword	.LVL56
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL33
	.uaword	.LVL35
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL60
	.uaword	.LVL62
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL72
	.uaword	.LFE4
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL33
	.uaword	.LVL35
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL60
	.uaword	.LVL62
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL72
	.uaword	.LFE4
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL34
	.uaword	.LVL35
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL72
	.uaword	.LFE4
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL35
	.uaword	.LVL56
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL63
	.uaword	.LVL67
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL68
	.uaword	.LVL70
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL36
	.uaword	.LVL56
	.uahalf	0x1
	.byte	0x6e
	.uaword	.LVL63
	.uaword	.LVL64
	.uahalf	0x1
	.byte	0x6e
	.uaword	.LVL65
	.uaword	.LVL67
	.uahalf	0x1
	.byte	0x6e
	.uaword	.LVL68
	.uaword	.LVL70
	.uahalf	0x1
	.byte	0x6e
	.uaword	0
	.uaword	0
.LLST31:
	.uaword	.LVL37
	.uaword	.LVL56
	.uahalf	0x2
	.byte	0x91
	.sleb128 -48
	.uaword	.LVL65
	.uaword	.LVL67
	.uahalf	0x2
	.byte	0x91
	.sleb128 -48
	.uaword	.LVL68
	.uaword	.LVL70
	.uahalf	0x2
	.byte	0x91
	.sleb128 -48
	.uaword	0
	.uaword	0
.LLST32:
	.uaword	.LVL38
	.uaword	.LVL56
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL65
	.uaword	.LVL67
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL69
	.uaword	.LVL70
	.uahalf	0x1
	.byte	0x5a
	.uaword	0
	.uaword	0
.LLST33:
	.uaword	.LVL41
	.uaword	.LVL56
	.uahalf	0x2
	.byte	0x91
	.sleb128 -12
	.uaword	.LVL65
	.uaword	.LVL67
	.uahalf	0x2
	.byte	0x91
	.sleb128 -12
	.uaword	.LVL69
	.uaword	.LVL70
	.uahalf	0x2
	.byte	0x91
	.sleb128 -12
	.uaword	0
	.uaword	0
.LLST34:
	.uaword	.LVL45
	.uaword	.LVL56
	.uahalf	0x2
	.byte	0x91
	.sleb128 -8
	.uaword	0
	.uaword	0
.LLST35:
	.uaword	.LVL43
	.uaword	.LVL56
	.uahalf	0x2
	.byte	0x91
	.sleb128 -4
	.uaword	.LVL66
	.uaword	.LVL67
	.uahalf	0x2
	.byte	0x91
	.sleb128 -4
	.uaword	.LVL69
	.uaword	.LVL70
	.uahalf	0x2
	.byte	0x91
	.sleb128 -4
	.uaword	0
	.uaword	0
.LLST36:
	.uaword	.LVL81
	.uaword	.LVL84
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL85
	.uaword	.LVL87
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL88
	.uaword	.LVL90
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL92
	.uaword	.LVL93
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST37:
	.uaword	.LVL81
	.uaword	.LVL82
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0x463b8000
	.uaword	.LVL82
	.uaword	.LVL85
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL85
	.uaword	.LVL86
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0x463b8000
	.uaword	.LVL86
	.uaword	.LVL89
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL91
	.uaword	.LVL92
	.uahalf	0x1
	.byte	0x57
	.uaword	0
	.uaword	0
.LLST38:
	.uaword	.LVL73
	.uaword	.LVL74
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL74
	.uaword	.LVL75
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL76
	.uaword	.LVL77
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL78
	.uaword	.LVL79
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL79
	.uaword	.LVL80
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL80
	.uaword	.LFE6
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST39:
	.uaword	.LFB7
	.uaword	.LCFI2
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI2
	.uaword	.LFE7
	.uahalf	0x2
	.byte	0x8a
	.sleb128 16
	.uaword	0
	.uaword	0
.LLST40:
	.uaword	.LVL94
	.uaword	.LVL101
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL103
	.uaword	.LVL105
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL105
	.uaword	.LVL142
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL142
	.uaword	.LVL143
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL144
	.uaword	.LVL145
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL145
	.uaword	.LFE7
	.uahalf	0x1
	.byte	0x5a
	.uaword	0
	.uaword	0
.LLST41:
	.uaword	.LVL107
	.uaword	.LVL113
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL115
	.uaword	.LVL120
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL127
	.uaword	.LVL130
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL131
	.uaword	.LVL135
	.uahalf	0x1
	.byte	0x5c
	.uaword	.LVL135
	.uaword	.LVL136
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL136
	.uaword	.LVL138
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL145
	.uaword	.LVL146
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL147
	.uaword	.LVL151
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL151
	.uaword	.LFE7
	.uahalf	0x1
	.byte	0x5c
	.uaword	0
	.uaword	0
.LLST42:
	.uaword	.LVL125
	.uaword	.LVL126
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST43:
	.uaword	.LVL102
	.uaword	.LVL103
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL106
	.uaword	.LVL109
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL114
	.uaword	.LVL116
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL117
	.uaword	.LVL119
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL120
	.uaword	.LVL124
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL128
	.uaword	.LVL135
	.uahalf	0x1
	.byte	0x5b
	.uaword	.LVL145
	.uaword	.LVL147
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL147
	.uaword	.LVL150
	.uahalf	0x1
	.byte	0x5b
	.uaword	.LVL150
	.uaword	.LVL151
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL151
	.uaword	.LFE7
	.uahalf	0x1
	.byte	0x5b
	.uaword	0
	.uaword	0
.LLST44:
	.uaword	.LVL97
	.uaword	.LVL132
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL132
	.uaword	.LVL133-1
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LVL135
	.uaword	.LVL151
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST45:
	.uaword	.LVL96
	.uaword	.LVL99
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL112
	.uaword	.LVL135
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL137
	.uaword	.LVL139
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL139
	.uaword	.LVL140
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL140
	.uaword	.LVL142
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL147
	.uaword	.LFE7
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST46:
	.uaword	.LVL141
	.uaword	.LVL142
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST47:
	.uaword	.LVL147
	.uaword	.LVL148
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST48:
	.uaword	.LVL129
	.uaword	.LVL134
	.uahalf	0x1
	.byte	0x5d
	.uaword	.LVL147
	.uaword	.LVL148
	.uahalf	0x1
	.byte	0x5d
	.uaword	.LVL149
	.uaword	.LVL150
	.uahalf	0x1
	.byte	0x5d
	.uaword	.LVL151
	.uaword	.LFE7
	.uahalf	0x1
	.byte	0x5d
	.uaword	0
	.uaword	0
.LLST49:
	.uaword	.LVL110
	.uaword	.LVL115
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL115
	.uaword	.LVL142
	.uahalf	0x2
	.byte	0x91
	.sleb128 -4
	.uaword	.LVL147
	.uaword	.LFE7
	.uahalf	0x2
	.byte	0x91
	.sleb128 -4
	.uaword	0
	.uaword	0
.LLST50:
	.uaword	.LFB10
	.uaword	.LCFI3
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI3
	.uaword	.LFE10
	.uahalf	0x2
	.byte	0x8a
	.sleb128 16
	.uaword	0
	.uaword	0
.LLST51:
	.uaword	.LVL153
	.uaword	.LVL156-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL159
	.uaword	.LFE10
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST52:
	.uaword	.LVL154
	.uaword	.LVL155
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL157
	.uaword	.LVL158
	.uahalf	0x8
	.byte	0x3
	.uaword	HsfbCtrl_PwmStatus15us
	.byte	0x6
	.byte	0x23
	.uleb128 0x8
	.uaword	0
	.uaword	0
.LLST53:
	.uaword	.LFB11
	.uaword	.LCFI4
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI4
	.uaword	.LFE11
	.uahalf	0x2
	.byte	0x8a
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST54:
	.uaword	.LVL160
	.uaword	.LVL161
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL161
	.uaword	.LVL162-1
	.uahalf	0x5
	.byte	0x3
	.uaword	HsfbCtrl_MeasStatus100us
	.uaword	0
	.uaword	0
.LLST55:
	.uaword	.LVL160
	.uaword	.LVL162-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL162-1
	.uaword	.LVL163
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST56:
	.uaword	.LVL160
	.uaword	.LVL162-1
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL162-1
	.uaword	.LFE12
	.uahalf	0x1
	.byte	0x6e
	.uaword	0
	.uaword	0
.LLST57:
	.uaword	.LVL160
	.uaword	.LVL162-1
	.uahalf	0x1
	.byte	0x67
	.uaword	.LVL162-1
	.uaword	.LFE12
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST58:
	.uaword	.LVL164
	.uaword	.LVL165
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL166
	.uaword	.LVL167-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL168
	.uaword	.LVL169-1
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST59:
	.uaword	.LVL164
	.uaword	.LVL165
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL166
	.uaword	.LVL167-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL168
	.uaword	.LVL169-1
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST60:
	.uaword	.LVL164
	.uaword	.LVL165
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL166
	.uaword	.LVL167-1
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL168
	.uaword	.LVL169-1
	.uahalf	0x1
	.byte	0x66
	.uaword	0
	.uaword	0
.LLST61:
	.uaword	.LVL164
	.uaword	.LVL165
	.uahalf	0x1
	.byte	0x67
	.uaword	.LVL165
	.uaword	.LFE13
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
	.section .debug_aranges,"",@progbits
	.uaword	0x7c
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB0
	.uaword	.LFE0-.LFB0
	.uaword	.LFB17
	.uaword	.LFE17-.LFB17
	.uaword	.LFB3
	.uaword	.LFE3-.LFB3
	.uaword	.LFB4
	.uaword	.LFE4-.LFB4
	.uaword	.LFB6
	.uaword	.LFE6-.LFB6
	.uaword	.LFB7
	.uaword	.LFE7-.LFB7
	.uaword	.LFB8
	.uaword	.LFE8-.LFB8
	.uaword	.LFB9
	.uaword	.LFE9-.LFB9
	.uaword	.LFB10
	.uaword	.LFE10-.LFB10
	.uaword	.LFB11
	.uaword	.LFE11-.LFB11
	.uaword	.LFB12
	.uaword	.LFE12-.LFB12
	.uaword	.LFB13
	.uaword	.LFE13-.LFB13
	.uaword	.LFB14
	.uaword	.LFE14-.LFB14
	.uaword	0
	.uaword	0
	.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB16
	.uaword	.LBE16
	.uaword	.LBB19
	.uaword	.LBE19
	.uaword	0
	.uaword	0
	.uaword	.LBB17
	.uaword	.LBE17
	.uaword	.LBB18
	.uaword	.LBE18
	.uaword	0
	.uaword	0
	.uaword	.LBB24
	.uaword	.LBE24
	.uaword	.LBB28
	.uaword	.LBE28
	.uaword	.LBB29
	.uaword	.LBE29
	.uaword	0
	.uaword	0
	.uaword	.LBB25
	.uaword	.LBE25
	.uaword	.LBB26
	.uaword	.LBE26
	.uaword	.LBB27
	.uaword	.LBE27
	.uaword	0
	.uaword	0
	.uaword	.LBB30
	.uaword	.LBE30
	.uaword	.LBB33
	.uaword	.LBE33
	.uaword	0
	.uaword	0
	.uaword	.LBB34
	.uaword	.LBE34
	.uaword	.LBB37
	.uaword	.LBE37
	.uaword	0
	.uaword	0
	.uaword	.LFB0
	.uaword	.LFE0
	.uaword	.LFB17
	.uaword	.LFE17
	.uaword	.LFB3
	.uaword	.LFE3
	.uaword	.LFB4
	.uaword	.LFE4
	.uaword	.LFB6
	.uaword	.LFE6
	.uaword	.LFB7
	.uaword	.LFE7
	.uaword	.LFB8
	.uaword	.LFE8
	.uaword	.LFB9
	.uaword	.LFE9
	.uaword	.LFB10
	.uaword	.LFE10
	.uaword	.LFB11
	.uaword	.LFE11
	.uaword	.LFB12
	.uaword	.LFE12
	.uaword	.LFB13
	.uaword	.LFE13
	.uaword	.LFB14
	.uaword	.LFE14
	.uaword	0
	.uaword	0
	.section .debug_line,"",@progbits
.Ldebug_line0:
	.section .debug_str,"",@progbits
.LASF3:
	.string	"LogicalOperator_a"
.LASF2:
	.string	"out_delay_DSTATE"
.LASF5:
	.string	"PwmStatus15us"
.LASF6:
	.string	"AppRx10ms"
.LASF4:
	.string	"RelationalOperator_l"
.LASF1:
	.string	"ref_delay_DSTATE"
.LASF0:
	.string	"Topology"
	.extern	HsfbCtrl_GetParamData,STT_FUNC,0
	.extern	HsfbCtrl_PI_Calc,STT_FUNC,0
	.extern	HsfbCtrl_SR_Calc,STT_FUNC,0
	.ident	"GCC: (HighTec Release v4.6.3.0) 4.6.3 build on 2013-05-17"
