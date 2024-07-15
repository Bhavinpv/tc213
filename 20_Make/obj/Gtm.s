	.file	"Gtm.c"
.section .text,"ax",@progbits
.Ltext0:
	.section .text.MPU_QM_CODE,"ax",@progbits
	.align 3
	.global	Gtm_vTomCHcfg
	.type	Gtm_vTomCHcfg, @function
Gtm_vTomCHcfg:
.LFB204:
	.file 1 "../30_Bsw/Mcal/Gtm/Gtm.c"
	.loc 1 232 0
	.loc 1 235 0
	mov	%d15, 0
	movh.a	%a15, hi:-267353900
	mov	%d2, 500
	lea	%a15, [%a15] lo:-267353900
	st.w	[%a15]0, %d15
	movh.a	%a15, hi:-267353916
	lea	%a15, [%a15] lo:-267353916
	st.w	[%a15]0, %d2
	movh.a	%a15, hi:-267353912
	lea	%a15, [%a15] lo:-267353912
	st.w	[%a15]0, %d15
	movh.a	%a2, hi:-267353920
	movh.a	%a15, hi:16779264
	lea	%a15, [%a15] lo:16779264
	lea	%a2, [%a2] lo:-267353920
	st.a	[%a2]0, %a15
	.loc 1 239 0
	movh.a	%a2, hi:-267353708
	lea	%a2, [%a2] lo:-267353708
	st.w	[%a2]0, %d15
	movh.a	%a2, hi:-267353724
	lea	%a2, [%a2] lo:-267353724
	st.w	[%a2]0, %d2
	movh.a	%a2, hi:-267353720
	lea	%a2, [%a2] lo:-267353720
	st.w	[%a2]0, %d15
	movh.a	%a2, hi:-267353728
	lea	%a2, [%a2] lo:-267353728
	st.a	[%a2]0, %a15
	.loc 1 244 0
	movh.a	%a15, hi:-267353644
	lea	%a15, [%a15] lo:-267353644
	mov	%d2, 1538
	st.w	[%a15]0, %d15
	movh.a	%a15, hi:-267353660
	lea	%a15, [%a15] lo:-267353660
	st.w	[%a15]0, %d2
	mov	%d2, 769
	movh.a	%a15, hi:-267353656
	lea	%a15, [%a15] lo:-267353656
	st.w	[%a15]0, %d2
	movh	%d2, 256
	movh.a	%a15, hi:-267353664
	lea	%a15, [%a15] lo:-267353664
	st.w	[%a15]0, %d2
	.loc 1 248 0
	movh.a	%a15, hi:-267353580
	lea	%a15, [%a15] lo:-267353580
	movh.a	%a2, hi:-267353596
	st.w	[%a15]0, %d15
	lea	%a2, [%a2] lo:-267353596
	lea	%a15, 1539
	st.a	[%a2]0, %a15
	movh	%d2, 16
	movh.a	%a2, hi:-267353592
	addi	%d2, %d2, 2048
	lea	%a2, [%a2] lo:-267353592
	st.w	[%a2]0, %d15
	movh.a	%a2, hi:-267353600
	lea	%a2, [%a2] lo:-267353600
	st.w	[%a2]0, %d2
	.loc 1 252 0
	movh.a	%a2, hi:-267353516
	lea	%a2, [%a2] lo:-267353516
	st.w	[%a2]0, %d15
	movh.a	%a2, hi:-267353532
	lea	%a2, [%a2] lo:-267353532
	st.a	[%a2]0, %a15
	movh.a	%a2, hi:-267353528
	lea	%a2, [%a2] lo:-267353528
	st.w	[%a2]0, %d15
	movh.a	%a2, hi:-267353536
	lea	%a2, [%a2] lo:-267353536
	st.w	[%a2]0, %d2
	.loc 1 256 0
	movh.a	%a2, hi:-267353452
	lea	%a2, [%a2] lo:-267353452
	st.w	[%a2]0, %d15
	movh.a	%a2, hi:-267353468
	lea	%a2, [%a2] lo:-267353468
	st.a	[%a2]0, %a15
	movh.a	%a2, hi:-267353464
	lea	%a2, [%a2] lo:-267353464
	st.w	[%a2]0, %d15
	movh.a	%a2, hi:-267353472
	lea	%a2, [%a2] lo:-267353472
	st.w	[%a2]0, %d2
	.loc 1 260 0
	movh.a	%a2, hi:-267353388
	lea	%a2, [%a2] lo:-267353388
	st.w	[%a2]0, %d15
	movh.a	%a2, hi:-267353404
	lea	%a2, [%a2] lo:-267353404
	st.a	[%a2]0, %a15
	movh.a	%a2, hi:-267353400
	lea	%a2, [%a2] lo:-267353400
	st.w	[%a2]0, %d15
	movh.a	%a2, hi:-267353408
	lea	%a2, [%a2] lo:-267353408
	st.w	[%a2]0, %d2
	.loc 1 264 0
	movh.a	%a2, hi:-267353324
	lea	%a2, [%a2] lo:-267353324
	st.w	[%a2]0, %d15
	movh.a	%a2, hi:-267353340
	lea	%a2, [%a2] lo:-267353340
	st.a	[%a2]0, %a15
	movh.a	%a2, hi:-267353336
	lea	%a2, [%a2] lo:-267353336
	st.w	[%a2]0, %d15
	movh.a	%a2, hi:-267353344
	lea	%a2, [%a2] lo:-267353344
	st.w	[%a2]0, %d2
	.loc 1 268 0
	movh.a	%a2, hi:-267353260
	lea	%a2, [%a2] lo:-267353260
	st.w	[%a2]0, %d15
	movh.a	%a2, hi:-267353276
	lea	%a2, [%a2] lo:-267353276
	st.a	[%a2]0, %a15
	movh.a	%a2, hi:-267353272
	lea	%a2, [%a2] lo:-267353272
	st.w	[%a2]0, %d15
	movh.a	%a2, hi:-267353280
	lea	%a2, [%a2] lo:-267353280
	st.w	[%a2]0, %d2
	.loc 1 271 0
	movh.a	%a2, hi:Main_HwVer
	lea	%a2, [%a2] lo:Main_HwVer
	ld.w	%d5, [%a2] 12
	.loc 1 248 0
	movh	%d3, 16
	.loc 1 271 0
	addi	%d4, %d5, -5
	jlt.u	%d4, 10, .L6
.LBB60:
.LBB61:
	.loc 1 383 0
	movh.a	%a2, hi:-267353196
	lea	%a2, [%a2] lo:-267353196
	st.w	[%a2]0, %d15
	movh.a	%a2, hi:-267353212
	lea	%a2, [%a2] lo:-267353212
	st.a	[%a2]0, %a15
	movh.a	%a2, hi:-267353208
	lea	%a2, [%a2] lo:-267353208
	st.w	[%a2]0, %d15
	movh.a	%a2, hi:-267353216
	lea	%a2, [%a2] lo:-267353216
	st.w	[%a2]0, %d3
	.loc 1 387 0
	movh.a	%a2, hi:-267353132
	lea	%a2, [%a2] lo:-267353132
	st.w	[%a2]0, %d15
	movh.a	%a2, hi:-267353148
	lea	%a2, [%a2] lo:-267353148
	st.a	[%a2]0, %a15
	movh.a	%a15, hi:-267353144
	lea	%a15, [%a15] lo:-267353144
	st.w	[%a15]0, %d15
	movh.a	%a15, hi:-267353152
	lea	%a15, [%a15] lo:-267353152
	st.w	[%a15]0, %d3
.L3:
.LBE61:
.LBE60:
	.loc 1 292 0
	mov	%d15, 0
	movh.a	%a15, hi:-267352044
	lea	%a15, [%a15] lo:-267352044
	mov.u	%d2, 43706
	st.w	[%a15]0, %d15
	movh.a	%a15, hi:-267352060
	lea	%a15, [%a15] lo:-267352060
	st.w	[%a15]0, %d2
	mov	%d2, 21853
	movh.a	%a15, hi:-267352056
	lea	%a15, [%a15] lo:-267352056
	st.w	[%a15]0, %d2
	mov	%d2, 4096
	movh.a	%a15, hi:-267352064
	lea	%a15, [%a15] lo:-267352064
	st.w	[%a15]0, %d2
	.loc 1 296 0
	movh.a	%a15, hi:-267351724
	lea	%a15, [%a15] lo:-267351724
	mov	%d2, 1539
	st.w	[%a15]0, %d15
	movh.a	%a15, hi:-267351740
	lea	%a15, [%a15] lo:-267351740
	st.w	[%a15]0, %d2
	movh.a	%a15, hi:-267351736
	movh	%d2, 16
	lea	%a15, [%a15] lo:-267351736
	addi	%d2, %d2, 2048
	st.w	[%a15]0, %d15
	movh.a	%a15, hi:-267351744
	lea	%a15, [%a15] lo:-267351744
	st.w	[%a15]0, %d2
	.loc 1 300 0
	movh.a	%a15, hi:-267351340
	lea	%a15, [%a15] lo:-267351340
	mov	%d2, 10000
	st.w	[%a15]0, %d15
	movh.a	%a15, hi:-267351356
	lea	%a15, [%a15] lo:-267351356
	movh.a	%a2, hi:-267351352
	movh	%d3, 256
	st.w	[%a15]0, %d2
	lea	%a2, [%a2] lo:-267351352
	mov.a	%a15, 1
	addi	%d3, %d3, 2048
	st.a	[%a2]0, %a15
	movh.a	%a2, hi:-267351360
	lea	%a2, [%a2] lo:-267351360
	st.w	[%a2]0, %d3
	.loc 1 304 0
	movh.a	%a2, hi:-267351276
	lea	%a2, [%a2] lo:-267351276
	mov	%d2, 6250
	st.w	[%a2]0, %d15
	movh.a	%a2, hi:-267351292
	lea	%a2, [%a2] lo:-267351292
	st.w	[%a2]0, %d2
	movh.a	%a2, hi:-267351288
	movh	%d2, 256
	lea	%a2, [%a2] lo:-267351288
	addi	%d2, %d2, 6144
	st.a	[%a2]0, %a15
	movh.a	%a2, hi:-267351296
	lea	%a2, [%a2] lo:-267351296
	st.w	[%a2]0, %d2
	.loc 1 308 0
	movh.a	%a2, hi:-267351212
	lea	%a2, [%a2] lo:-267351212
	mov	%d4, 500
	st.w	[%a2]0, %d15
	movh.a	%a2, hi:-267351228
	lea	%a2, [%a2] lo:-267351228
	st.w	[%a2]0, %d4
	movh.a	%a2, hi:-267351224
	lea	%a2, [%a2] lo:-267351224
	st.w	[%a2]0, %d15
	movh.a	%a2, hi:-267351232
	lea	%a2, [%a2] lo:-267351232
	st.w	[%a2]0, %d3
	.loc 1 312 0
	movh.a	%a2, hi:-267351148
	lea	%a2, [%a2] lo:-267351148
	st.w	[%a2]0, %d15
	mov.u	%d15, 62500
	movh.a	%a2, hi:-267351164
	lea	%a2, [%a2] lo:-267351164
	st.w	[%a2]0, %d15
	movh.a	%a2, hi:-267351160
	lea	%a2, [%a2] lo:-267351160
	st.a	[%a2]0, %a15
	movh.a	%a15, hi:-267351168
	lea	%a15, [%a15] lo:-267351168
	st.w	[%a15]0, %d2
	.loc 1 315 0
	movh.a	%a15, hi:-266732112
	lea	%a15, [%a15] lo:-266732112
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 7, 0, 4
	st.w	[%a15]0, %d15
	.loc 1 316 0
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 7, 4, 4
	st.w	[%a15]0, %d15
	.loc 1 318 0
	movh.a	%a15, hi:-266732104
	lea	%a15, [%a15] lo:-266732104
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 11, 0, 4
	st.w	[%a15]0, %d15
	.loc 1 319 0
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 11, 4, 4
	st.w	[%a15]0, %d15
	.loc 1 322 0
	movh.a	%a15, hi:-266732236
	lea	%a15, [%a15] lo:-266732236
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 0, 26, 2
	st.w	[%a15]0, %d15
	.loc 1 323 0
	movh.a	%a15, hi:-266732232
	lea	%a15, [%a15] lo:-266732232
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 0, 20, 2
	st.w	[%a15]0, %d15
	.loc 1 324 0
	movh.a	%a15, hi:-266732220
	lea	%a15, [%a15] lo:-266732220
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 0, 26, 2
	st.w	[%a15]0, %d15
	.loc 1 326 0
	movh.a	%a15, hi:-266732240
	lea	%a15, [%a15] lo:-266732240
	ld.w	%d15, [%a15]0
	andn	%d15, %d15, ~(-4)
	st.w	[%a15]0, %d15
	.loc 1 327 0
	ld.w	%d15, [%a15]0
	andn	%d15, %d15, ~(-13)
	st.w	[%a15]0, %d15
	.loc 1 328 0
	ld.w	%d15, [%a15]0
	andn	%d15, %d15, ~(-49)
	st.w	[%a15]0, %d15
	.loc 1 329 0
	ld.w	%d15, [%a15]0
	andn	%d15, %d15, ~(-193)
	st.w	[%a15]0, %d15
	.loc 1 331 0
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 0, 8, 2
	st.w	[%a15]0, %d15
	.loc 1 332 0
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 0, 10, 2
	st.w	[%a15]0, %d15
	.loc 1 333 0
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 0, 12, 2
	st.w	[%a15]0, %d15
	.loc 1 334 0
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 0, 14, 2
	st.w	[%a15]0, %d15
	.loc 1 336 0
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 1, 16, 2
	st.w	[%a15]0, %d15
	.loc 1 337 0
	movh.a	%a15, hi:-266732224
	lea	%a15, [%a15] lo:-266732224
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 3, 4, 2
	st.w	[%a15]0, %d15
	.loc 1 338 0
	ld.w	%d15, [%a15]0
	andn	%d15, %d15, ~(-13)
	st.w	[%a15]0, %d15
	.loc 1 339 0
	ret
.L6:
.LBB62:
.LBB63:
	.loc 1 372 0
	movh.a	%a2, hi:-267353196
	lea	%a2, [%a2] lo:-267353196
	st.w	[%a2]0, %d15
	movh.a	%a2, hi:-267353212
	lea	%a2, [%a2] lo:-267353212
	st.a	[%a2]0, %a15
	movh.a	%a2, hi:-267353208
	lea	%a2, [%a2] lo:-267353208
	st.w	[%a2]0, %d15
	movh.a	%a2, hi:-267353216
	lea	%a2, [%a2] lo:-267353216
	st.w	[%a2]0, %d2
	.loc 1 376 0
	movh.a	%a2, hi:-267353132
	lea	%a2, [%a2] lo:-267353132
	st.w	[%a2]0, %d15
	movh.a	%a2, hi:-267353148
	lea	%a2, [%a2] lo:-267353148
	st.a	[%a2]0, %a15
	movh.a	%a15, hi:-267353144
	lea	%a15, [%a15] lo:-267353144
	st.w	[%a15]0, %d15
	movh.a	%a15, hi:-267353152
	lea	%a15, [%a15] lo:-267353152
	st.w	[%a15]0, %d2
	j	.L3
.LBE63:
.LBE62:
.LFE204:
	.size	Gtm_vTomCHcfg, .-Gtm_vTomCHcfg
	.align 3
	.global	Gtm_vIsr_cfg
	.type	Gtm_vIsr_cfg, @function
Gtm_vIsr_cfg:
.LFB205:
	.loc 1 342 0
	.loc 1 343 0
	mov	%d3, 0
	movh.a	%a15, hi:-267353636
	.loc 1 344 0
	mov	%d2, 1
	.loc 1 343 0
	lea	%a15, [%a15] lo:-267353636
	st.w	[%a15]0, %d3
	.loc 1 344 0
	movh.a	%a15, hi:-267353632
	.loc 1 345 0
	mov	%d15, 2
	.loc 1 344 0
	lea	%a15, [%a15] lo:-267353632
	st.w	[%a15]0, %d2
	.loc 1 345 0
	movh.a	%a15, hi:-267353624
	lea	%a15, [%a15] lo:-267353624
.LBB64:
.LBB65:
	.file 2 "../30_Bsw/Common/TC21x/IfxSrc.h"
	.loc 2 256 0
	mov	%d4, 96
.LBE65:
.LBE64:
	.loc 1 345 0
	st.w	[%a15]0, %d15
.LVL0:
.LBB69:
.LBB68:
	.loc 2 256 0
	movh.a	%a15, hi:-268199028
	lea	%a15, [%a15] lo:-268199028
	st.b	[%a15]0, %d4
	.loc 2 257 0
	ld.w	%d4, [%a15]0
	insert	%d4, %d4, 0, 11, 1
	st.w	[%a15]0, %d4
.LVL1:
.LBB66:
.LBB67:
	.loc 2 232 0
	ld.w	%d4, [%a15]0
	insert	%d4, %d4, 1, 25, 1
	st.w	[%a15]0, %d4
.LVL2:
.LBE67:
.LBE66:
.LBE68:
.LBE69:
.LBB70:
.LBB71:
	.loc 2 250 0
	ld.w	%d4, [%a15]0
	insert	%d4, %d4, 1, 10, 1
	st.w	[%a15]0, %d4
.LBE71:
.LBE70:
	.loc 1 349 0
	movh.a	%a15, hi:-267351332
	lea	%a15, [%a15] lo:-267351332
	st.w	[%a15]0, %d3
	.loc 1 350 0
	movh.a	%a15, hi:-267351328
	lea	%a15, [%a15] lo:-267351328
	st.w	[%a15]0, %d2
	.loc 1 351 0
	movh.a	%a15, hi:-267351320
	lea	%a15, [%a15] lo:-267351320
.LBB72:
.LBB73:
	.loc 2 256 0
	mov	%d4, 80
.LBE73:
.LBE72:
	.loc 1 351 0
	st.w	[%a15]0, %d15
.LVL3:
.LBB77:
.LBB76:
	.loc 2 256 0
	movh.a	%a15, hi:-268198988
	lea	%a15, [%a15] lo:-268198988
	st.b	[%a15]0, %d4
	.loc 2 257 0
	ld.w	%d4, [%a15]0
	insert	%d4, %d4, 0, 11, 1
	st.w	[%a15]0, %d4
.LVL4:
.LBB74:
.LBB75:
	.loc 2 232 0
	ld.w	%d4, [%a15]0
	insert	%d4, %d4, 1, 25, 1
	st.w	[%a15]0, %d4
.LVL5:
.LBE75:
.LBE74:
.LBE76:
.LBE77:
.LBB78:
.LBB79:
	.loc 2 250 0
	ld.w	%d4, [%a15]0
	insert	%d4, %d4, 1, 10, 1
	st.w	[%a15]0, %d4
.LBE79:
.LBE78:
	.loc 1 355 0
	movh.a	%a15, hi:-267351268
	lea	%a15, [%a15] lo:-267351268
	st.w	[%a15]0, %d3
	.loc 1 356 0
	movh.a	%a15, hi:-267351264
	lea	%a15, [%a15] lo:-267351264
	st.w	[%a15]0, %d2
	.loc 1 357 0
	movh.a	%a15, hi:-267351256
	lea	%a15, [%a15] lo:-267351256
.LBB80:
.LBB81:
	.loc 2 256 0
	mov	%d4, 64
.LBE81:
.LBE80:
	.loc 1 357 0
	st.w	[%a15]0, %d15
.LVL6:
.LBB85:
.LBB84:
	.loc 2 256 0
	movh.a	%a15, hi:-268198984
	lea	%a15, [%a15] lo:-268198984
	st.b	[%a15]0, %d4
	.loc 2 257 0
	ld.w	%d4, [%a15]0
	insert	%d4, %d4, 0, 11, 1
	st.w	[%a15]0, %d4
.LVL7:
.LBB82:
.LBB83:
	.loc 2 232 0
	ld.w	%d4, [%a15]0
	insert	%d4, %d4, 1, 25, 1
	st.w	[%a15]0, %d4
.LVL8:
.LBE83:
.LBE82:
.LBE84:
.LBE85:
.LBB86:
.LBB87:
	.loc 2 250 0
	ld.w	%d4, [%a15]0
	insert	%d4, %d4, 1, 10, 1
	st.w	[%a15]0, %d4
.LBE87:
.LBE86:
	.loc 1 361 0
	movh.a	%a15, hi:-267351140
	lea	%a15, [%a15] lo:-267351140
	st.w	[%a15]0, %d3
	.loc 1 362 0
	movh.a	%a15, hi:-267351136
	lea	%a15, [%a15] lo:-267351136
	st.w	[%a15]0, %d2
	.loc 1 363 0
	movh.a	%a15, hi:-267351128
	lea	%a15, [%a15] lo:-267351128
	st.w	[%a15]0, %d15
.LVL9:
.LBB88:
.LBB89:
	.loc 2 256 0
	mov	%d15, 48
	movh.a	%a15, hi:-268198980
	lea	%a15, [%a15] lo:-268198980
	st.b	[%a15]0, %d15
	.loc 2 257 0
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 0, 11, 1
	st.w	[%a15]0, %d15
.LVL10:
.LBB90:
.LBB91:
	.loc 2 232 0
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 1, 25, 1
	st.w	[%a15]0, %d15
.LVL11:
.LBE91:
.LBE90:
.LBE89:
.LBE88:
.LBB92:
.LBB93:
	.loc 2 250 0
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 1, 10, 1
	st.w	[%a15]0, %d15
.LBE93:
.LBE92:
	.loc 1 366 0
	ret
.LFE205:
	.size	Gtm_vIsr_cfg, .-Gtm_vIsr_cfg
	.align 3
	.global	Gtm_vTom_cfg
	.type	Gtm_vTom_cfg, @function
Gtm_vTom_cfg:
.LFB203:
	.loc 1 74 0
	.loc 1 76 0
	mov	%d15, 0
	.loc 1 75 0
	call	IfxScuWdt_getCpuWatchdogPassword
	.loc 1 76 0
	movh.a	%a15, hi:-266732288
	.loc 1 75 0
	mov	%d4, %d2
	.loc 1 76 0
	lea	%a15, [%a15] lo:-266732288
	.loc 1 75 0
	call	IfxScuWdt_clearCpuEndinit
	.loc 1 76 0
	st.w	[%a15]0, %d15
	.loc 1 81 0
	mov.u	%d15, 65535
	.loc 1 78 0
	call	IfxScuWdt_getCpuWatchdogPassword
	.loc 1 76 0
	movh.a	%a13, 61456
	.loc 1 78 0
	mov	%d4, %d2
	call	IfxScuWdt_setCpuEndinit
	.loc 1 81 0
	st.w	[%a13] 772, %d15
	.loc 1 82 0
	st.w	[%a13] 776, %d15
	.loc 1 86 0
	mov	%d15, 21845
	movh.a	%a12, hi:-267353992
	lea	%a12, [%a12] lo:-267353992
	.loc 1 92 0
	movh.a	%a15, hi:-267353480
	.loc 1 86 0
	st.w	[%a12]0, %d15
	.loc 1 92 0
	lea	%a15, [%a15] lo:-267353480
	.loc 1 98 0
	movh.a	%a14, hi:-267351944
	.loc 1 92 0
	st.w	[%a15]0, %d15
	.loc 1 98 0
	lea	%a14, [%a14] lo:-267351944
	.loc 1 111 0
	mov.u	%d2, 43690
	.loc 1 104 0
	movh.a	%a15, hi:-267351432
	.loc 1 98 0
	st.w	[%a14]0, %d15
	.loc 1 104 0
	lea	%a15, [%a15] lo:-267351432
	.loc 1 111 0
	movh.a	%a2, hi:-267354000
	.loc 1 104 0
	st.w	[%a15]0, %d15
	.loc 1 111 0
	lea	%a2, [%a2] lo:-267354000
	st.w	[%a2]0, %d2
	.loc 1 117 0
	movh.a	%a2, hi:-267353488
	lea	%a2, [%a2] lo:-267353488
	st.w	[%a2]0, %d2
	.loc 1 123 0
	movh.a	%a2, hi:-267351952
	lea	%a2, [%a2] lo:-267351952
	st.w	[%a2]0, %d2
	.loc 1 129 0
	movh.a	%a2, hi:-267351440
	lea	%a2, [%a2] lo:-267351440
	.loc 1 136 0
	movh	%d11, 61457
	.loc 1 129 0
	st.w	[%a2]0, %d2
	.loc 1 136 0
	addi	%d11, %d11, -32720
	movh	%d2, 43690
	mov.a	%a2, %d11
	.loc 1 142 0
	movh	%d10, 61457
	addi	%d10, %d10, -32208
	.loc 1 136 0
	st.w	[%a2]0, %d2
	.loc 1 148 0
	movh	%d9, 61457
	.loc 1 142 0
	mov.a	%a2, %d10
	.loc 1 148 0
	addi	%d9, %d9, -30672
	.loc 1 142 0
	st.w	[%a2]0, %d2
	.loc 1 154 0
	movh	%d8, 61457
	.loc 1 148 0
	mov.a	%a2, %d9
	.loc 1 154 0
	addi	%d8, %d8, -30160
	.loc 1 148 0
	st.w	[%a2]0, %d2
	.loc 1 154 0
	mov.a	%a2, %d8
	st.w	[%a2]0, %d2
	.loc 1 161 0
	movh.a	%a2, hi:-267354056
	lea	%a2, [%a2] lo:-267354056
	st.w	[%a2]0, %d15
	.loc 1 167 0
	movh.a	%a2, hi:-267353544
	lea	%a2, [%a2] lo:-267353544
	st.w	[%a2]0, %d15
	.loc 1 173 0
	movh.a	%a2, hi:-267352008
	lea	%a2, [%a2] lo:-267352008
	st.w	[%a2]0, %d15
	.loc 1 179 0
	movh.a	%a2, hi:-267351496
	lea	%a2, [%a2] lo:-267351496
	st.w	[%a2]0, %d15
	.loc 1 185 0
	call	Gtm_vTomCHcfg
	.loc 1 188 0
	mov.a	%a2, %d11
	ld.w	%d15, [%a2]0
	insert	%d15, %d15, 1, 0, 1
	st.w	[%a2]0, %d15
	.loc 1 189 0
	mov.a	%a2, %d10
	ld.w	%d15, [%a2]0
	insert	%d15, %d15, 1, 0, 1
	st.w	[%a2]0, %d15
	.loc 1 190 0
	mov.a	%a2, %d9
	ld.w	%d15, [%a2]0
	insert	%d15, %d15, 1, 0, 1
	st.w	[%a2]0, %d15
	.loc 1 191 0
	mov.a	%a2, %d8
	ld.w	%d15, [%a2]0
	insert	%d15, %d15, 1, 0, 1
	st.w	[%a2]0, %d15
	.loc 1 194 0
	call	Gtm_vIsr_cfg
	.loc 1 197 0
	ld.w	%d15, [%a13] 768
	.loc 1 200 0
	mov	%d4, 10
	.loc 1 197 0
	insert	%d15, %d15, 2, 0, 2
	st.w	[%a13] 768, %d15
	.loc 1 198 0
	ld.w	%d15, [%a13] 768
	insert	%d15, %d15, 2, 22, 2
	st.w	[%a13] 768, %d15
	.loc 1 200 0
	call	delay_ms_main
	.loc 1 203 0
	ld.w	%d15, [%a12]0
	.loc 1 204 0
	movh.a	%a2, hi:-267353988
	.loc 1 203 0
	insert	%d15, %d15, 2, 6, 2
	.loc 1 204 0
	lea	%a2, [%a2] lo:-267353988
	.loc 1 203 0
	st.w	[%a12]0, %d15
	.loc 1 204 0
	ld.w	%d15, [%a2]0
	insert	%d15, %d15, 2, 6, 2
	st.w	[%a2]0, %d15
	.loc 1 206 0
	ld.w	%d15, [%a12]0
	insert	%d15, %d15, 2, 12, 2
	st.w	[%a12]0, %d15
	.loc 1 207 0
	ld.w	%d15, [%a2]0
	insert	%d15, %d15, 2, 12, 2
	st.w	[%a2]0, %d15
	.loc 1 209 0
	ld.w	%d15, [%a12]0
	insert	%d15, %d15, 2, 14, 2
	st.w	[%a12]0, %d15
	.loc 1 210 0
	ld.w	%d15, [%a2]0
	insert	%d15, %d15, 2, 14, 2
	st.w	[%a2]0, %d15
	.loc 1 212 0
	ld.w	%d15, [%a14]0
	.loc 1 213 0
	movh.a	%a2, hi:-267351940
	.loc 1 212 0
	insert	%d15, %d15, 2, 0, 2
	.loc 1 213 0
	lea	%a2, [%a2] lo:-267351940
	.loc 1 212 0
	st.w	[%a14]0, %d15
	.loc 1 213 0
	ld.w	%d15, [%a2]0
	insert	%d15, %d15, 2, 0, 2
	st.w	[%a2]0, %d15
	.loc 1 215 0
	ld.w	%d15, [%a14]0
	insert	%d15, %d15, 2, 10, 2
	st.w	[%a14]0, %d15
	.loc 1 216 0
	ld.w	%d15, [%a2]0
	insert	%d15, %d15, 2, 10, 2
	st.w	[%a2]0, %d15
	.loc 1 218 0
	ld.w	%d15, [%a15]0
	.loc 1 219 0
	movh.a	%a2, hi:-267351428
	.loc 1 218 0
	insert	%d15, %d15, 2, 6, 2
	.loc 1 219 0
	lea	%a2, [%a2] lo:-267351428
	.loc 1 218 0
	st.w	[%a15]0, %d15
	.loc 1 219 0
	ld.w	%d15, [%a2]0
	insert	%d15, %d15, 2, 6, 2
	st.w	[%a2]0, %d15
	.loc 1 221 0
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 2, 8, 2
	st.w	[%a15]0, %d15
	.loc 1 222 0
	ld.w	%d15, [%a2]0
	insert	%d15, %d15, 2, 8, 2
	st.w	[%a2]0, %d15
	.loc 1 224 0
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 2, 10, 2
	st.w	[%a15]0, %d15
	.loc 1 225 0
	ld.w	%d15, [%a2]0
	insert	%d15, %d15, 2, 10, 2
	st.w	[%a2]0, %d15
	.loc 1 227 0
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 2, 12, 2
	st.w	[%a15]0, %d15
	.loc 1 228 0
	ld.w	%d15, [%a2]0
	insert	%d15, %d15, 2, 12, 2
	st.w	[%a2]0, %d15
	.loc 1 229 0
	ret
.LFE203:
	.size	Gtm_vTom_cfg, .-Gtm_vTom_cfg
	.align 3
	.global	Gtm_vTomCHcfg_HwVer1
	.type	Gtm_vTomCHcfg_HwVer1, @function
Gtm_vTomCHcfg_HwVer1:
.LFB206:
	.loc 1 369 0
	.loc 1 372 0
	mov	%d15, 0
	movh.a	%a15, hi:-267353196
	lea	%a15, [%a15] lo:-267353196
	mov	%d2, 1539
	st.w	[%a15]0, %d15
	movh.a	%a15, hi:-267353212
	lea	%a15, [%a15] lo:-267353212
	st.w	[%a15]0, %d2
	movh.a	%a15, hi:-267353208
	lea	%a15, [%a15] lo:-267353208
	st.w	[%a15]0, %d15
	movh.a	%a2, hi:-267353216
	movh.a	%a15, hi:1050624
	lea	%a15, [%a15] lo:1050624
	lea	%a2, [%a2] lo:-267353216
	st.a	[%a2]0, %a15
	.loc 1 376 0
	movh.a	%a2, hi:-267353132
	lea	%a2, [%a2] lo:-267353132
	st.w	[%a2]0, %d15
	movh.a	%a2, hi:-267353148
	lea	%a2, [%a2] lo:-267353148
	st.w	[%a2]0, %d2
	movh.a	%a2, hi:-267353144
	lea	%a2, [%a2] lo:-267353144
	st.w	[%a2]0, %d15
	movh.a	%a2, hi:-267353152
	lea	%a2, [%a2] lo:-267353152
	st.a	[%a2]0, %a15
	.loc 1 377 0
	ret
.LFE206:
	.size	Gtm_vTomCHcfg_HwVer1, .-Gtm_vTomCHcfg_HwVer1
	.align 3
	.global	Gtm_vTomCHcfg_HwVer0
	.type	Gtm_vTomCHcfg_HwVer0, @function
Gtm_vTomCHcfg_HwVer0:
.LFB207:
	.loc 1 380 0
	.loc 1 383 0
	mov	%d15, 0
	movh.a	%a15, hi:-267353196
	lea	%a15, [%a15] lo:-267353196
	mov	%d2, 1539
	st.w	[%a15]0, %d15
	movh.a	%a15, hi:-267353212
	lea	%a15, [%a15] lo:-267353212
	st.w	[%a15]0, %d2
	movh.a	%a15, hi:-267353208
	lea	%a15, [%a15] lo:-267353208
	movh.a	%a2, hi:-267353216
	st.w	[%a15]0, %d15
	lea	%a2, [%a2] lo:-267353216
	movh.a	%a15, 16
	st.a	[%a2]0, %a15
	.loc 1 387 0
	movh.a	%a2, hi:-267353132
	lea	%a2, [%a2] lo:-267353132
	st.w	[%a2]0, %d15
	movh.a	%a2, hi:-267353148
	lea	%a2, [%a2] lo:-267353148
	st.w	[%a2]0, %d2
	movh.a	%a2, hi:-267353144
	lea	%a2, [%a2] lo:-267353144
	st.w	[%a2]0, %d15
	movh.a	%a2, hi:-267353152
	lea	%a2, [%a2] lo:-267353152
	st.a	[%a2]0, %a15
	.loc 1 388 0
	ret
.LFE207:
	.size	Gtm_vTomCHcfg_HwVer0, .-Gtm_vTomCHcfg_HwVer0
	.align 3
	.global	Gtm_vTim_cfg
	.type	Gtm_vTim_cfg, @function
Gtm_vTim_cfg:
.LFB208:
	.loc 1 391 0
	.loc 1 393 0
	movh.a	%a15, 61456
	ld.w	%d15, [%a15] 4132
	insert	%d15, %d15, 1, 1, 3
	st.w	[%a15] 4132, %d15
	.loc 1 394 0
	ld.w	%d15, [%a15] 4132
	andn	%d15, %d15, ~(-65)
	st.w	[%a15] 4132, %d15
	.loc 1 395 0
	ld.w	%d15, [%a15] 4132
	insert	%d15, %d15, 3, 8, 2
	st.w	[%a15] 4132, %d15
	.loc 1 396 0
	ld.w	%d15, [%a15] 4132
	insert	%d15, %d15, 3, 10, 2
	st.w	[%a15] 4132, %d15
	.loc 1 397 0
	ld.w	%d15, [%a15] 4132
	insert	%d15, %d15, 0, 12, 1
	st.w	[%a15] 4132, %d15
	.loc 1 398 0
	ld.w	%d15, [%a15] 4132
	insert	%d15, %d15, 1, 13, 1
	st.w	[%a15] 4132, %d15
	.loc 1 399 0
	ld.w	%d15, [%a15] 4132
	insert	%d15, %d15, 1, 0, 1
	st.w	[%a15] 4132, %d15
	.loc 1 401 0
	ld.w	%d15, [%a15] 4260
	insert	%d15, %d15, 1, 1, 3
	st.w	[%a15] 4260, %d15
	.loc 1 402 0
	ld.w	%d15, [%a15] 4260
	andn	%d15, %d15, ~(-65)
	st.w	[%a15] 4260, %d15
	.loc 1 403 0
	ld.w	%d15, [%a15] 4260
	insert	%d15, %d15, 3, 8, 2
	st.w	[%a15] 4260, %d15
	.loc 1 404 0
	ld.w	%d15, [%a15] 4260
	insert	%d15, %d15, 3, 10, 2
	st.w	[%a15] 4260, %d15
	.loc 1 405 0
	ld.w	%d15, [%a15] 4260
	insert	%d15, %d15, 0, 12, 1
	st.w	[%a15] 4260, %d15
	.loc 1 406 0
	ld.w	%d15, [%a15] 4260
	insert	%d15, %d15, 1, 13, 1
	st.w	[%a15] 4260, %d15
	.loc 1 407 0
	ld.w	%d15, [%a15] 4260
	insert	%d15, %d15, 1, 0, 1
	st.w	[%a15] 4260, %d15
	.loc 1 409 0
	ld.w	%d15, [%a15] 4388
	insert	%d15, %d15, 1, 1, 3
	st.w	[%a15] 4388, %d15
	.loc 1 410 0
	ld.w	%d15, [%a15] 4388
	andn	%d15, %d15, ~(-65)
	st.w	[%a15] 4388, %d15
	.loc 1 411 0
	ld.w	%d15, [%a15] 4388
	insert	%d15, %d15, 3, 8, 2
	st.w	[%a15] 4388, %d15
	.loc 1 412 0
	ld.w	%d15, [%a15] 4388
	insert	%d15, %d15, 3, 10, 2
	st.w	[%a15] 4388, %d15
	.loc 1 413 0
	ld.w	%d15, [%a15] 4388
	insert	%d15, %d15, 0, 12, 1
	st.w	[%a15] 4388, %d15
	.loc 1 414 0
	ld.w	%d15, [%a15] 4388
	insert	%d15, %d15, 1, 13, 1
	st.w	[%a15] 4388, %d15
	.loc 1 415 0
	ld.w	%d15, [%a15] 4388
	insert	%d15, %d15, 1, 0, 1
	st.w	[%a15] 4388, %d15
	.loc 1 417 0
	ld.w	%d15, [%a15] 4516
	insert	%d15, %d15, 1, 1, 3
	st.w	[%a15] 4516, %d15
	.loc 1 418 0
	ld.w	%d15, [%a15] 4516
	andn	%d15, %d15, ~(-65)
	st.w	[%a15] 4516, %d15
	.loc 1 419 0
	ld.w	%d15, [%a15] 4516
	insert	%d15, %d15, 3, 8, 2
	st.w	[%a15] 4516, %d15
	.loc 1 420 0
	ld.w	%d15, [%a15] 4516
	insert	%d15, %d15, 3, 10, 2
	st.w	[%a15] 4516, %d15
	.loc 1 421 0
	ld.w	%d15, [%a15] 4516
	insert	%d15, %d15, 0, 12, 1
	st.w	[%a15] 4516, %d15
	.loc 1 422 0
	ld.w	%d15, [%a15] 4516
	insert	%d15, %d15, 1, 13, 1
	st.w	[%a15] 4516, %d15
	.loc 1 423 0
	ld.w	%d15, [%a15] 4516
	insert	%d15, %d15, 1, 0, 1
	st.w	[%a15] 4516, %d15
	.loc 1 425 0
	movh.a	%a15, hi:-266732272
	lea	%a15, [%a15] lo:-266732272
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 2, 0, 4
	st.w	[%a15]0, %d15
	.loc 1 426 0
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 2, 4, 4
	st.w	[%a15]0, %d15
	.loc 1 427 0
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 2, 8, 4
	st.w	[%a15]0, %d15
	.loc 1 428 0
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 2, 12, 4
	st.w	[%a15]0, %d15
	.loc 1 429 0
	ret
.LFE208:
	.size	Gtm_vTim_cfg, .-Gtm_vTim_cfg
	.align 3
	.global	Gtm_Pwm_Pt_Init
	.type	Gtm_Pwm_Pt_Init, @function
Gtm_Pwm_Pt_Init:
.LFB209:
	.loc 1 432 0
	.loc 1 433 0
	movh	%d15, 61457
	addi	%d15, %d15, -32252
	movh.a	%a2, hi:PwmSr0Pt
	lea	%a15, [%a2] lo:PwmSr0Pt
	st.w	[%a2] lo:PwmSr0Pt, %d15
	.loc 1 434 0
	movh	%d15, 61457
	addi	%d15, %d15, -32188
	.loc 1 444 0
	movh.a	%a2, hi:PwmSr1Pt
	.loc 1 434 0
	st.w	[%a15] 4, %d15
	.loc 1 435 0
	movh	%d15, 61457
	addi	%d15, %d15, -32124
	st.w	[%a15] 8, %d15
	.loc 1 436 0
	movh	%d15, 61457
	addi	%d15, %d15, -32060
	st.w	[%a15] 12, %d15
	.loc 1 437 0
	movh	%d15, 61457
	addi	%d15, %d15, -31996
	st.w	[%a15] 16, %d15
	.loc 1 438 0
	movh	%d15, 61457
	addi	%d15, %d15, -31932
	st.w	[%a15] 20, %d15
	.loc 1 439 0
	movh	%d15, 61457
	addi	%d15, %d15, -31868
	st.w	[%a15] 24, %d15
	.loc 1 440 0
	movh	%d15, 61457
	addi	%d15, %d15, -31804
	st.w	[%a15] 28, %d15
	.loc 1 441 0
	movh	%d15, 61457
	addi	%d15, %d15, -32316
	st.w	[%a15] 32, %d15
	.loc 1 442 0
	movh	%d15, 61457
	addi	%d15, %d15, -30396
	st.w	[%a15] 36, %d15
	.loc 1 444 0
	movh	%d15, 61457
	addi	%d15, %d15, -32248
	lea	%a15, [%a2] lo:PwmSr1Pt
	st.w	[%a2] lo:PwmSr1Pt, %d15
	.loc 1 445 0
	movh	%d15, 61457
	addi	%d15, %d15, -32184
	st.w	[%a15] 4, %d15
	.loc 1 446 0
	movh	%d15, 61457
	addi	%d15, %d15, -32120
	st.w	[%a15] 8, %d15
	.loc 1 447 0
	movh	%d15, 61457
	addi	%d15, %d15, -32056
	st.w	[%a15] 12, %d15
	.loc 1 448 0
	movh	%d15, 61457
	addi	%d15, %d15, -31992
	st.w	[%a15] 16, %d15
	.loc 1 449 0
	movh	%d15, 61457
	addi	%d15, %d15, -31928
	st.w	[%a15] 20, %d15
	.loc 1 450 0
	movh	%d15, 61457
	addi	%d15, %d15, -31864
	st.w	[%a15] 24, %d15
	.loc 1 451 0
	movh	%d15, 61457
	addi	%d15, %d15, -31800
	st.w	[%a15] 28, %d15
	.loc 1 452 0
	movh	%d15, 61457
	addi	%d15, %d15, -32312
	st.w	[%a15] 32, %d15
	.loc 1 453 0
	movh	%d15, 61457
	addi	%d15, %d15, -30392
	st.w	[%a15] 36, %d15
	.loc 1 454 0
	ret
.LFE209:
	.size	Gtm_Pwm_Pt_Init, .-Gtm_Pwm_Pt_Init
	.align 3
	.global	Gtm_Init
	.type	Gtm_Init, @function
Gtm_Init:
.LFB202:
	.loc 1 66 0
.LBB94:
.LBB95:
	.loc 1 462 0
	mov	%d15, 0
.LBE95:
.LBE94:
	.loc 1 67 0
	call	Gtm_vTom_cfg
.LBB98:
.LBB96:
	.loc 1 462 0
	movh.a	%a15, hi:Pwm_PwmEn
.LBE96:
.LBE98:
	.loc 1 68 0
	call	Gtm_vTim_cfg
	.loc 1 69 0
	call	Gtm_Pwm_Pt_Init
.LVL12:
.LBB99:
.LBB97:
	.loc 1 462 0
	lea	%a4, [%a15] lo:Pwm_PwmEn
	st.h	[%a15] lo:Pwm_PwmEn, %d15
	.loc 1 463 0
	movh.a	%a15, hi:Safety_PwmEn
	lea	%a3, [%a15] lo:Safety_PwmEn
	st.h	[%a15] lo:Safety_PwmEn, %d15
	.loc 1 464 0
	movh.a	%a15, hi:Gtm_PwmEn
	st.h	[%a15] lo:Gtm_PwmEn, %d15
	.loc 1 465 0
	mov	%d15, 0
	movh.a	%a5, hi:Gtm_PwmEnState
	.loc 1 464 0
	lea	%a2, [%a15] lo:Gtm_PwmEn
	.loc 1 465 0
	lea	%a15, [%a5] lo:Gtm_PwmEnState
	st.w	[%a5] lo:Gtm_PwmEnState, %d15
.LVL13:
	.loc 1 462 0
	st.h	[%a4] 2, %d15
	.loc 1 463 0
	st.h	[%a3] 2, %d15
	.loc 1 464 0
	st.h	[%a2] 2, %d15
	.loc 1 465 0
	st.w	[%a15] 4, %d15
.LVL14:
	.loc 1 462 0
	st.h	[%a4] 4, %d15
	.loc 1 463 0
	st.h	[%a3] 4, %d15
	.loc 1 464 0
	st.h	[%a2] 4, %d15
	.loc 1 465 0
	st.w	[%a15] 8, %d15
.LVL15:
.LBE97:
.LBE99:
	.loc 1 71 0
	ret
.LFE202:
	.size	Gtm_Init, .-Gtm_Init
	.align 3
	.global	Gtm_PwmEnDis_Init
	.type	Gtm_PwmEnDis_Init, @function
Gtm_PwmEnDis_Init:
.LFB210:
	.loc 1 457 0
.LVL16:
	.loc 1 462 0
	mov	%d15, 0
	movh.a	%a15, hi:Pwm_PwmEn
	lea	%a4, [%a15] lo:Pwm_PwmEn
	st.h	[%a15] lo:Pwm_PwmEn, %d15
	.loc 1 463 0
	movh.a	%a15, hi:Safety_PwmEn
	lea	%a3, [%a15] lo:Safety_PwmEn
	st.h	[%a15] lo:Safety_PwmEn, %d15
	.loc 1 464 0
	movh.a	%a15, hi:Gtm_PwmEn
	st.h	[%a15] lo:Gtm_PwmEn, %d15
	.loc 1 465 0
	mov	%d15, 0
	movh.a	%a5, hi:Gtm_PwmEnState
	.loc 1 464 0
	lea	%a2, [%a15] lo:Gtm_PwmEn
	.loc 1 465 0
	lea	%a15, [%a5] lo:Gtm_PwmEnState
	st.w	[%a5] lo:Gtm_PwmEnState, %d15
.LVL17:
	.loc 1 462 0
	st.h	[%a4] 2, %d15
	.loc 1 463 0
	st.h	[%a3] 2, %d15
	.loc 1 464 0
	st.h	[%a2] 2, %d15
	.loc 1 465 0
	st.w	[%a15] 4, %d15
.LVL18:
	.loc 1 462 0
	st.h	[%a4] 4, %d15
	.loc 1 463 0
	st.h	[%a3] 4, %d15
	.loc 1 464 0
	st.h	[%a2] 4, %d15
	.loc 1 465 0
	st.w	[%a15] 8, %d15
.LVL19:
	.loc 1 467 0
	ret
.LFE210:
	.size	Gtm_PwmEnDis_Init, .-Gtm_PwmEnDis_Init
	.section .text.MPU_ASIL_CODE,"ax",@progbits
	.align 3
	.global	Gtm_StopWDI
	.type	Gtm_StopWDI, @function
Gtm_StopWDI:
.LFB211:
	.loc 1 475 0
	.loc 1 476 0
	movh.a	%a15, hi:-267351944
	lea	%a15, [%a15] lo:-267351944
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 1, 0, 2
	st.w	[%a15]0, %d15
	.loc 1 477 0
	movh.a	%a15, hi:-267351940
	lea	%a15, [%a15] lo:-267351940
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 1, 0, 2
	st.w	[%a15]0, %d15
	.loc 1 478 0
	ret
.LFE211:
	.size	Gtm_StopWDI, .-Gtm_StopWDI
	.align 3
	.global	Gtm_CheckPwmStatus
	.type	Gtm_CheckPwmStatus, @function
Gtm_CheckPwmStatus:
.LFB212:
	.loc 1 481 0
.LVL20:
	.loc 1 486 0
	movh.a	%a15, hi:-267382776
	lea	%a15, [%a15] lo:-267382776
	ld.w	%d4, [%a15]0
	.loc 1 487 0
	movh.a	%a2, hi:Gtm_TimCnt
	.loc 1 486 0
	extr.u	%d4, %d4, 0, 24
.LVL21:
	.loc 1 487 0
	lea	%a15, [%a2] lo:Gtm_TimCnt
	ld.w	%d5, [%a2] lo:Gtm_TimCnt
.LVL22:
	.loc 1 491 0
	ld.w	%d15, [%a15] 4
	.loc 1 488 0
	st.w	[%a2] lo:Gtm_TimCnt, %d4
	.loc 1 490 0
	movh.a	%a2, hi:-267382648
	lea	%a2, [%a2] lo:-267382648
	ld.w	%d3, [%a2]0
	.loc 1 494 0
	movh.a	%a2, hi:-267382520
	.loc 1 490 0
	extr.u	%d3, %d3, 0, 24
.LVL23:
	.loc 1 494 0
	lea	%a2, [%a2] lo:-267382520
	.loc 1 491 0
	eq	%d15, %d15, %d3
	mov	%d2, 0
	.loc 1 492 0
	st.w	[%a15] 4, %d3
	.loc 1 494 0
	ld.w	%d3, [%a2]0
.LVL24:
	.loc 1 491 0
	sel	%d15, %d15, %d2, 2
	.loc 1 494 0
	extr.u	%d3, %d3, 0, 24
	.loc 1 491 0
	or.ne	%d15, %d5, %d4
.LVL25:
	.loc 1 498 0
	movh.a	%a2, hi:-267382392
	.loc 1 495 0
	ld.w	%d4, [%a15] 8
	.loc 1 498 0
	lea	%a2, [%a2] lo:-267382392
	.loc 1 496 0
	st.w	[%a15] 8, %d3
	.loc 1 495 0
	eq	%d4, %d4, %d3
	.loc 1 498 0
	ld.w	%d3, [%a2]0
.LVL26:
	.loc 1 495 0
	sel	%d4, %d4, %d2, 4
	or	%d15, %d4
.LVL27:
	.loc 1 498 0
	extr.u	%d3, %d3, 0, 24
.LVL28:
	.loc 1 499 0
	ld.w	%d4, [%a15] 12
	eq	%d4, %d4, %d3
	sel	%d2, %d4, %d2, 8
	or	%d15, %d2
.LVL29:
	.loc 1 500 0
	st.w	[%a15] 12, %d3
	.loc 1 502 0
	movh.a	%a15, hi:Gtm_PwmStatus
	st.h	[%a15] lo:Gtm_PwmStatus, %d15
	.loc 1 504 0
	movh.a	%a15, hi:Safety_PwmEn
	ld.hu	%d2, [%a15] lo:Safety_PwmEn
	jnz	%d2, .L20
	.loc 1 504 0 is_stmt 0 discriminator 1
	jz	%d15, .L20
	movh.a	%a15, hi:Safety_WDIDis
	ld.hu	%d15, [%a15] lo:Safety_WDIDis
.LVL30:
	jnz	%d15, .L25
.L20:
	.loc 1 515 0 is_stmt 1
	mov	%d15, 0
	movh.a	%a15, hi:Gtm_WDIDisCnt
	st.h	[%a15] lo:Gtm_WDIDisCnt, %d15
	ret
.L25:
	.loc 1 506 0
	movh.a	%a15, hi:Gtm_WDIDisCnt
	ld.h	%d15, [%a15] lo:Gtm_WDIDisCnt
	add	%d15, 1
	st.h	[%a15] lo:Gtm_WDIDisCnt, %d15
	ret
.LFE212:
	.size	Gtm_CheckPwmStatus, .-Gtm_CheckPwmStatus
	.align 3
	.global	Gtm_EnDisDuty
	.type	Gtm_EnDisDuty, @function
Gtm_EnDisDuty:
.LFB215:
	.loc 1 577 0
.LVL31:
	.loc 1 578 0
	jeq	%d5, 1, .L28
	jeq	%d5, 2, .L30
.L26:
	ret
.L30:
.LVL32:
.LBB110:
.LBB111:
	.loc 1 678 0
	jnz	%d4, .L26
	.loc 1 681 0
	mov.u	%d15, 65535
	movh.a	%a15, hi:-267353212
	lea	%a15, [%a15] lo:-267353212
	st.w	[%a15]0, %d15
	movh.a	%a15, hi:-267353208
	lea	%a15, [%a15] lo:-267353208
	st.w	[%a15]0, %d4
	.loc 1 682 0
	movh.a	%a15, hi:-267353140
	lea	%a15, [%a15] lo:-267353140
	ld.w	%d15, [%a15]0
	movh.a	%a15, hi:-267353148
	lea	%a15, [%a15] lo:-267353148
	st.w	[%a15]0, %d15
	movh.a	%a15, hi:-267353136
	lea	%a15, [%a15] lo:-267353136
	ld.w	%d15, [%a15]0
	movh.a	%a15, hi:-267353144
	lea	%a15, [%a15] lo:-267353144
	st.w	[%a15]0, %d15
	ret
.LVL33:
.L28:
.LBE111:
.LBE110:
.LBB112:
.LBB113:
	.loc 1 667 0
	jnz	%d4, .L26
.LBE113:
.LBE112:
.LBB114:
.LBB115:
.LBB116:
.LBB117:
	.loc 1 670 0
	mov.u	%d15, 65535
	movh.a	%a15, hi:-267353340
	lea	%a15, [%a15] lo:-267353340
	st.w	[%a15]0, %d15
	movh.a	%a15, hi:-267353336
	lea	%a15, [%a15] lo:-267353336
	st.w	[%a15]0, %d4
	.loc 1 671 0
	movh.a	%a15, hi:-267353276
	lea	%a15, [%a15] lo:-267353276
	st.w	[%a15]0, %d15
	movh.a	%a15, hi:-267353272
	lea	%a15, [%a15] lo:-267353272
	st.w	[%a15]0, %d4
	ret
.LBE117:
.LBE116:
.LBE115:
.LBE114:
.LFE215:
	.size	Gtm_EnDisDuty, .-Gtm_EnDisDuty
	.align 3
	.global	Gtm_ResetDuty
	.type	Gtm_ResetDuty, @function
Gtm_ResetDuty:
.LFB216:
	.loc 1 595 0
.LVL34:
	.loc 1 596 0
	jeq	%d4, 1, .L34
	jnz	%d4, .L36
.LBB118:
.LBB119:
	.loc 1 688 0
	mov.u	%d15, 65535
	movh.a	%a15, hi:-267353596
	lea	%a15, [%a15] lo:-267353596
	st.w	[%a15]0, %d15
	movh.a	%a15, hi:-267353592
	lea	%a15, [%a15] lo:-267353592
	st.w	[%a15]0, %d4
	.loc 1 689 0
	movh.a	%a15, hi:-267353532
	lea	%a15, [%a15] lo:-267353532
	st.w	[%a15]0, %d15
	movh.a	%a15, hi:-267353528
	lea	%a15, [%a15] lo:-267353528
	st.w	[%a15]0, %d4
	.loc 1 690 0
	movh.a	%a15, hi:-267353468
	lea	%a15, [%a15] lo:-267353468
	st.w	[%a15]0, %d15
	movh.a	%a15, hi:-267353464
	lea	%a15, [%a15] lo:-267353464
	st.w	[%a15]0, %d4
	.loc 1 691 0
	movh.a	%a15, hi:-267353404
	lea	%a15, [%a15] lo:-267353404
	st.w	[%a15]0, %d15
	movh.a	%a15, hi:-267353400
	lea	%a15, [%a15] lo:-267353400
	st.w	[%a15]0, %d4
	ret
.L36:
.LBE119:
.LBE118:
	.loc 1 596 0
	jeq	%d4, 2, .L37
	ret
.L37:
.LBB120:
.LBB121:
	.loc 1 702 0
	mov.u	%d15, 65535
	movh.a	%a15, hi:-267353212
	lea	%a15, [%a15] lo:-267353212
	movh.a	%a2, hi:-267353208
	st.w	[%a15]0, %d15
	lea	%a2, [%a2] lo:-267353208
	mov.a	%a15, 0
	st.a	[%a2]0, %a15
	.loc 1 703 0
	movh.a	%a2, hi:-267353148
	lea	%a2, [%a2] lo:-267353148
	st.w	[%a2]0, %d15
	movh.a	%a2, hi:-267353144
	lea	%a2, [%a2] lo:-267353144
	st.a	[%a2]0, %a15
	ret
.L34:
.LBE121:
.LBE120:
.LBB122:
.LBB123:
	.loc 1 696 0
	mov.u	%d15, 65535
	movh.a	%a15, hi:-267353340
	lea	%a15, [%a15] lo:-267353340
	movh.a	%a2, hi:-267353336
	st.w	[%a15]0, %d15
	lea	%a2, [%a2] lo:-267353336
	mov.a	%a15, 0
	st.a	[%a2]0, %a15
	.loc 1 697 0
	movh.a	%a2, hi:-267353276
	lea	%a2, [%a2] lo:-267353276
	st.w	[%a2]0, %d15
	movh.a	%a2, hi:-267353272
	lea	%a2, [%a2] lo:-267353272
	st.a	[%a2]0, %a15
	ret
.LBE123:
.LBE122:
.LFE216:
	.size	Gtm_ResetDuty, .-Gtm_ResetDuty
	.align 3
	.global	Gtm_Pri_EnDis
	.type	Gtm_Pri_EnDis, @function
Gtm_Pri_EnDis:
.LFB217:
	.loc 1 613 0
.LVL35:
	.loc 1 616 0
	movh.a	%a2, hi:-267353480
	lea	%a2, [%a2] lo:-267353480
	ld.w	%d15, [%a2]0
	.loc 1 614 0
	jnz	%d4, .L41
	.loc 1 624 0
	insert	%d15, %d15, 1, 0, 2
	movh.a	%a15, hi:-267353476
	lea	%a15, [%a15] lo:-267353476
	st.w	[%a2]0, %d15
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 1, 0, 2
	st.w	[%a15]0, %d15
	.loc 1 625 0
	ld.w	%d15, [%a2]0
	insert	%d15, %d15, 1, 2, 2
	st.w	[%a2]0, %d15
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 1, 2, 2
	st.w	[%a15]0, %d15
	.loc 1 626 0
	ld.w	%d15, [%a2]0
	insert	%d15, %d15, 1, 4, 2
	st.w	[%a2]0, %d15
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 1, 4, 2
	st.w	[%a15]0, %d15
	.loc 1 627 0
	ld.w	%d15, [%a2]0
	insert	%d15, %d15, 1, 6, 2
	st.w	[%a2]0, %d15
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 1, 6, 2
	st.w	[%a15]0, %d15
	ret
.L41:
	.loc 1 616 0
	insert	%d15, %d15, 2, 0, 2
	movh.a	%a15, hi:-267353476
	lea	%a15, [%a15] lo:-267353476
	st.w	[%a2]0, %d15
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 2, 0, 2
	st.w	[%a15]0, %d15
	.loc 1 617 0
	ld.w	%d15, [%a2]0
	insert	%d15, %d15, 2, 2, 2
	st.w	[%a2]0, %d15
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 2, 2, 2
	st.w	[%a15]0, %d15
	.loc 1 618 0
	ld.w	%d15, [%a2]0
	insert	%d15, %d15, 2, 4, 2
	st.w	[%a2]0, %d15
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 2, 4, 2
	st.w	[%a15]0, %d15
	.loc 1 619 0
	ld.w	%d15, [%a2]0
	insert	%d15, %d15, 2, 6, 2
	st.w	[%a2]0, %d15
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 2, 6, 2
	st.w	[%a15]0, %d15
	ret
.LFE217:
	.size	Gtm_Pri_EnDis, .-Gtm_Pri_EnDis
	.align 3
	.global	Gtm_EnDisReg
	.type	Gtm_EnDisReg, @function
Gtm_EnDisReg:
.LFB214:
	.loc 1 559 0
.LVL36:
	.loc 1 560 0
	jeq	%d5, 1, .L45
	jnz	%d5, .L49
	.loc 1 563 0
	j	Gtm_Pri_EnDis
.LVL37:
.L49:
	.loc 1 560 0
	jeq	%d5, 2, .L50
	ret
.L50:
.LVL38:
.LBB134:
.LBB135:
.LBB136:
.LBB137:
	.loc 1 650 0
	movh.a	%a2, hi:-267353480
	lea	%a2, [%a2] lo:-267353480
.LBE137:
.LBE136:
.LBE135:
.LBE134:
.LBB141:
.LBB142:
	.loc 1 648 0
	jnz	%d4, .L51
	.loc 1 655 0
	ld.w	%d15, [%a2]0
	movh.a	%a15, hi:-267353476
	insert	%d15, %d15, 1, 12, 2
	lea	%a15, [%a15] lo:-267353476
	st.w	[%a2]0, %d15
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 1, 12, 2
	st.w	[%a15]0, %d15
	.loc 1 656 0
	ld.w	%d15, [%a2]0
	insert	%d15, %d15, 1, 14, 2
	st.w	[%a2]0, %d15
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 1, 14, 2
	st.w	[%a15]0, %d15
	ret
.LVL39:
.L45:
.LBE142:
.LBE141:
.LBB143:
.LBB144:
	.loc 1 636 0
	movh.a	%a2, hi:-267353480
	lea	%a2, [%a2] lo:-267353480
	.loc 1 634 0
	jz	%d4, .L47
	.loc 1 636 0
	ld.w	%d15, [%a2]0
	movh.a	%a15, hi:-267353476
	insert	%d15, %d15, 2, 8, 2
	lea	%a15, [%a15] lo:-267353476
	st.w	[%a2]0, %d15
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 2, 8, 2
	st.w	[%a15]0, %d15
	.loc 1 637 0
	ld.w	%d15, [%a2]0
	insert	%d15, %d15, 2, 10, 2
	st.w	[%a2]0, %d15
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 2, 10, 2
	st.w	[%a15]0, %d15
	ret
.L47:
	.loc 1 641 0
	ld.w	%d15, [%a2]0
	movh.a	%a15, hi:-267353476
	insert	%d15, %d15, 1, 8, 2
	lea	%a15, [%a15] lo:-267353476
	st.w	[%a2]0, %d15
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 1, 8, 2
	st.w	[%a15]0, %d15
	.loc 1 642 0
	ld.w	%d15, [%a2]0
	insert	%d15, %d15, 1, 10, 2
	st.w	[%a2]0, %d15
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 1, 10, 2
	st.w	[%a15]0, %d15
	ret
.LVL40:
.L51:
.LBE144:
.LBE143:
.LBB145:
.LBB140:
.LBB139:
.LBB138:
	.loc 1 650 0
	ld.w	%d15, [%a2]0
	movh.a	%a15, hi:-267353476
	insert	%d15, %d15, 2, 12, 2
	lea	%a15, [%a15] lo:-267353476
	st.w	[%a2]0, %d15
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 2, 12, 2
	st.w	[%a15]0, %d15
	.loc 1 651 0
	ld.w	%d15, [%a2]0
	insert	%d15, %d15, 2, 14, 2
	st.w	[%a2]0, %d15
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 2, 14, 2
	st.w	[%a15]0, %d15
	ret
.LBE138:
.LBE139:
.LBE140:
.LBE145:
.LFE214:
	.size	Gtm_EnDisReg, .-Gtm_EnDisReg
	.align 3
	.global	Gtm_PwmEnDis_Calc
	.type	Gtm_PwmEnDis_Calc, @function
Gtm_PwmEnDis_Calc:
.LFB213:
	.loc 1 520 0
.LVL41:
	.loc 1 525 0
	movh.a	%a14, hi:Pwm_PwmEn-2
	movh.a	%a15, hi:Gtm_PwmEnState
	movh.a	%a13, hi:Gtm_PwmEn-2
	movh.a	%a12, hi:Safety_PwmEn
	.loc 1 526 0
	movh	%d9, hi:.L59
	.loc 1 525 0
	lea	%a14, [%a14] lo:Pwm_PwmEn-2
	lea	%a15, [%a15] lo:Gtm_PwmEnState
	lea	%a13, [%a13] lo:Gtm_PwmEn-2
	lea	%a12, [%a12] lo:Safety_PwmEn
	.loc 1 523 0
	mov	%d15, 0
	.loc 1 526 0
	addi	%d9, %d9, lo:.L59
	.loc 1 542 0
	mov	%d10, 3
	.loc 1 537 0
	mov	%d11, 2
.LVL42:
.L61:
	.loc 1 525 0
	ld.hu	%d2, [+%a14]2
	mov	%d8, 0
	jz	%d2, .L53
	.loc 1 525 0 is_stmt 0 discriminator 1
	ld.hu	%d8, [%a12]0
	ne	%d8, %d8, 0
.L53:
	.loc 1 526 0 is_stmt 1 discriminator 3
	ld.w	%d2, [%a15]0
	.loc 1 525 0 discriminator 3
	st.h	[+%a13]2, %d8
	.loc 1 526 0 discriminator 3
	jlt.u	%d2, 4, .L64
	.loc 1 552 0
	mov	%d2, 0
	st.w	[%a15]0, %d2
.L60:
	.loc 1 523 0
	add	%d15, 1
	extr.u	%d15, %d15, 0, 16
.LVL43:
	add.a	%a15, 4
	add.a	%a12, 2
	jne	%d15, 3, .L61
	.loc 1 556 0
	ret
.LVL44:
.L64:
	.loc 1 526 0 discriminator 3
	mov.a	%a3, %d9
	addsc.a	%a2, %a3, %d2, 2
	ji	%a2
	.align 2
	.align 2
.L59:
	.code32
	j	.L55
	.code32
	j	.L56
	.code32
	j	.L57
	.code32
	j	.L58
.L57:
	.loc 1 541 0
	mov	%d4, 1
	mov	%d5, %d15
	call	Gtm_EnDisReg
	.loc 1 542 0
	st.w	[%a15]0, %d10
	.loc 1 543 0
	j	.L60
.L56:
	.loc 1 534 0
	jz	%d8, .L60
	.loc 1 536 0
	mov	%d4, 1
	mov	%d5, %d15
	call	Gtm_EnDisDuty
	.loc 1 537 0
	st.w	[%a15]0, %d11
	j	.L60
.L55:
	.loc 1 529 0
	mov	%d4, %d15
	call	Gtm_ResetDuty
	.loc 1 530 0
	mov	%d4, 0
	mov	%d5, %d15
	call	Gtm_EnDisReg
	.loc 1 531 0
	mov	%d2, 1
	st.w	[%a15]0, %d2
	.loc 1 532 0
	j	.L60
.L58:
	.loc 1 545 0
	jnz	%d8, .L60
	.loc 1 547 0
	mov	%d4, 0
	mov	%d5, %d15
	call	Gtm_EnDisDuty
	.loc 1 548 0
	st.w	[%a15]0, %d8
	j	.L60
.LFE213:
	.size	Gtm_PwmEnDis_Calc, .-Gtm_PwmEnDis_Calc
	.align 3
	.global	Gtm_Sr_EnDis
	.type	Gtm_Sr_EnDis, @function
Gtm_Sr_EnDis:
.LFB218:
	.loc 1 633 0
.LVL45:
	.loc 1 636 0
	movh.a	%a2, hi:-267353480
	lea	%a2, [%a2] lo:-267353480
	ld.w	%d15, [%a2]0
	.loc 1 634 0
	jnz	%d4, .L68
	.loc 1 641 0
	insert	%d15, %d15, 1, 8, 2
	movh.a	%a15, hi:-267353476
	lea	%a15, [%a15] lo:-267353476
	st.w	[%a2]0, %d15
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 1, 8, 2
	st.w	[%a15]0, %d15
	.loc 1 642 0
	ld.w	%d15, [%a2]0
	insert	%d15, %d15, 1, 10, 2
	st.w	[%a2]0, %d15
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 1, 10, 2
	st.w	[%a15]0, %d15
	ret
.L68:
	.loc 1 636 0
	insert	%d15, %d15, 2, 8, 2
	movh.a	%a15, hi:-267353476
	lea	%a15, [%a15] lo:-267353476
	st.w	[%a2]0, %d15
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 2, 8, 2
	st.w	[%a15]0, %d15
	.loc 1 637 0
	ld.w	%d15, [%a2]0
	insert	%d15, %d15, 2, 10, 2
	st.w	[%a2]0, %d15
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 2, 10, 2
	st.w	[%a15]0, %d15
	ret
.LFE218:
	.size	Gtm_Sr_EnDis, .-Gtm_Sr_EnDis
	.align 3
	.global	Gtm_Clamp_EnDis
	.type	Gtm_Clamp_EnDis, @function
Gtm_Clamp_EnDis:
.LFB219:
	.loc 1 647 0
.LVL46:
	.loc 1 650 0
	movh.a	%a2, hi:-267353480
	lea	%a2, [%a2] lo:-267353480
	ld.w	%d15, [%a2]0
	.loc 1 648 0
	jnz	%d4, .L72
	.loc 1 655 0
	insert	%d15, %d15, 1, 12, 2
	movh.a	%a15, hi:-267353476
	lea	%a15, [%a15] lo:-267353476
	st.w	[%a2]0, %d15
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 1, 12, 2
	st.w	[%a15]0, %d15
	.loc 1 656 0
	ld.w	%d15, [%a2]0
	insert	%d15, %d15, 1, 14, 2
	st.w	[%a2]0, %d15
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 1, 14, 2
	st.w	[%a15]0, %d15
	ret
.L72:
	.loc 1 650 0
	insert	%d15, %d15, 2, 12, 2
	movh.a	%a15, hi:-267353476
	lea	%a15, [%a15] lo:-267353476
	st.w	[%a2]0, %d15
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 2, 12, 2
	st.w	[%a15]0, %d15
	.loc 1 651 0
	ld.w	%d15, [%a2]0
	insert	%d15, %d15, 2, 14, 2
	st.w	[%a2]0, %d15
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 2, 14, 2
	st.w	[%a15]0, %d15
	ret
.LFE219:
	.size	Gtm_Clamp_EnDis, .-Gtm_Clamp_EnDis
	.align 3
	.global	Gtm_Pri_EnDisDuty
	.type	Gtm_Pri_EnDisDuty, @function
Gtm_Pri_EnDisDuty:
.LFB220:
	.loc 1 661 0
.LVL47:
	.loc 1 663 0
	ret
.LFE220:
	.size	Gtm_Pri_EnDisDuty, .-Gtm_Pri_EnDisDuty
	.align 3
	.global	Gtm_Sr_EnDisDuty
	.type	Gtm_Sr_EnDisDuty, @function
Gtm_Sr_EnDisDuty:
.LFB221:
	.loc 1 666 0
.LVL48:
	.loc 1 667 0
	jnz	%d4, .L74
	.loc 1 670 0
	mov.u	%d15, 65535
	movh.a	%a15, hi:-267353340
	lea	%a15, [%a15] lo:-267353340
	st.w	[%a15]0, %d15
	movh.a	%a15, hi:-267353336
	lea	%a15, [%a15] lo:-267353336
	st.w	[%a15]0, %d4
	.loc 1 671 0
	movh.a	%a15, hi:-267353276
	lea	%a15, [%a15] lo:-267353276
	st.w	[%a15]0, %d15
	movh.a	%a15, hi:-267353272
	lea	%a15, [%a15] lo:-267353272
	st.w	[%a15]0, %d4
.L74:
	ret
.LFE221:
	.size	Gtm_Sr_EnDisDuty, .-Gtm_Sr_EnDisDuty
	.align 3
	.global	Gtm_Clamp_EnDisDuty
	.type	Gtm_Clamp_EnDisDuty, @function
Gtm_Clamp_EnDisDuty:
.LFB222:
	.loc 1 677 0
.LVL49:
	.loc 1 678 0
	jnz	%d4, .L76
	.loc 1 681 0
	mov.u	%d15, 65535
	movh.a	%a15, hi:-267353212
	lea	%a15, [%a15] lo:-267353212
	st.w	[%a15]0, %d15
	movh.a	%a15, hi:-267353208
	lea	%a15, [%a15] lo:-267353208
	st.w	[%a15]0, %d4
	.loc 1 682 0
	movh.a	%a15, hi:-267353140
	lea	%a15, [%a15] lo:-267353140
	ld.w	%d15, [%a15]0
	movh.a	%a15, hi:-267353148
	lea	%a15, [%a15] lo:-267353148
	st.w	[%a15]0, %d15
	movh.a	%a15, hi:-267353136
	lea	%a15, [%a15] lo:-267353136
	ld.w	%d15, [%a15]0
	movh.a	%a15, hi:-267353144
	lea	%a15, [%a15] lo:-267353144
	st.w	[%a15]0, %d15
.L76:
	ret
.LFE222:
	.size	Gtm_Clamp_EnDisDuty, .-Gtm_Clamp_EnDisDuty
	.align 3
	.global	Gtm_Pri_ResetDuty
	.type	Gtm_Pri_ResetDuty, @function
Gtm_Pri_ResetDuty:
.LFB223:
	.loc 1 687 0
	.loc 1 688 0
	mov.u	%d15, 65535
	movh.a	%a15, hi:-267353596
	lea	%a15, [%a15] lo:-267353596
	movh.a	%a2, hi:-267353592
	st.w	[%a15]0, %d15
	lea	%a2, [%a2] lo:-267353592
	mov.a	%a15, 0
	st.a	[%a2]0, %a15
	.loc 1 689 0
	movh.a	%a2, hi:-267353532
	lea	%a2, [%a2] lo:-267353532
	st.w	[%a2]0, %d15
	movh.a	%a2, hi:-267353528
	lea	%a2, [%a2] lo:-267353528
	st.a	[%a2]0, %a15
	.loc 1 690 0
	movh.a	%a2, hi:-267353468
	lea	%a2, [%a2] lo:-267353468
	st.w	[%a2]0, %d15
	movh.a	%a2, hi:-267353464
	lea	%a2, [%a2] lo:-267353464
	st.a	[%a2]0, %a15
	.loc 1 691 0
	movh.a	%a2, hi:-267353404
	lea	%a2, [%a2] lo:-267353404
	st.w	[%a2]0, %d15
	movh.a	%a2, hi:-267353400
	lea	%a2, [%a2] lo:-267353400
	st.a	[%a2]0, %a15
	.loc 1 692 0
	ret
.LFE223:
	.size	Gtm_Pri_ResetDuty, .-Gtm_Pri_ResetDuty
	.align 3
	.global	Gtm_Sr_ResetDuty
	.type	Gtm_Sr_ResetDuty, @function
Gtm_Sr_ResetDuty:
.LFB224:
	.loc 1 695 0
	.loc 1 696 0
	mov.u	%d15, 65535
	movh.a	%a15, hi:-267353340
	lea	%a15, [%a15] lo:-267353340
	movh.a	%a2, hi:-267353336
	st.w	[%a15]0, %d15
	lea	%a2, [%a2] lo:-267353336
	mov.a	%a15, 0
	st.a	[%a2]0, %a15
	.loc 1 697 0
	movh.a	%a2, hi:-267353276
	lea	%a2, [%a2] lo:-267353276
	st.w	[%a2]0, %d15
	movh.a	%a2, hi:-267353272
	lea	%a2, [%a2] lo:-267353272
	st.a	[%a2]0, %a15
	.loc 1 698 0
	ret
.LFE224:
	.size	Gtm_Sr_ResetDuty, .-Gtm_Sr_ResetDuty
	.align 3
	.global	Gtm_Clamp_ResetDuty
	.type	Gtm_Clamp_ResetDuty, @function
Gtm_Clamp_ResetDuty:
.LFB225:
	.loc 1 701 0
	.loc 1 702 0
	mov.u	%d15, 65535
	movh.a	%a15, hi:-267353212
	lea	%a15, [%a15] lo:-267353212
	movh.a	%a2, hi:-267353208
	st.w	[%a15]0, %d15
	lea	%a2, [%a2] lo:-267353208
	mov.a	%a15, 0
	st.a	[%a2]0, %a15
	.loc 1 703 0
	movh.a	%a2, hi:-267353148
	lea	%a2, [%a2] lo:-267353148
	st.w	[%a2]0, %d15
	movh.a	%a2, hi:-267353144
	lea	%a2, [%a2] lo:-267353144
	st.a	[%a2]0, %a15
	.loc 1 704 0
	ret
.LFE225:
	.size	Gtm_Clamp_ResetDuty, .-Gtm_Clamp_ResetDuty
	.align 3
	.global	Gtm_DebugPwm
	.type	Gtm_DebugPwm, @function
Gtm_DebugPwm:
.LFB226:
	.loc 1 707 0
.LVL50:
	.loc 1 708 0
	movh	%d2, 16256
	cmp.f	%d2, %d4, %d2
	mov	%d15, 500
	jnz.t	%d2, 2, .L82
	.loc 1 709 0
	mov	%d2, 0
	cmp.f	%d2, %d4, %d2
	mov	%d15, 0
	jz.t	%d2, 0, .L85
.L82:
.LVL51:
	.loc 1 711 0
	movh.a	%a15, hi:-267353720
	lea	%a15, [%a15] lo:-267353720
	st.w	[%a15]0, %d15
	.loc 1 712 0
	ret
.LVL52:
.L85:
	.loc 1 709 0
	movh	%d15, 17402
	mul.f	%d4, %d4, %d15
.LVL53:
	.loc 1 711 0
	movh.a	%a15, hi:-267353720
	.loc 1 709 0
	ftouz	%d15, %d4
	.loc 1 711 0
	lea	%a15, [%a15] lo:-267353720
	st.w	[%a15]0, %d15
	.loc 1 712 0
	ret
.LFE226:
	.size	Gtm_DebugPwm, .-Gtm_DebugPwm
	.align 3
	.global	Gtm_DebugPwmScope
	.type	Gtm_DebugPwmScope, @function
Gtm_DebugPwmScope:
.LFB227:
	.loc 1 715 0
.LVL54:
	.loc 1 720 0
	mov	%d3, 0
	cmp.f	%d15, %d5, %d3
	or.t	%d15, %d15,0, %d15,1
	mov	%d2, 0
	jnz	%d15, .L87
	.loc 1 721 0
	movh	%d2, 16467
	addi	%d2, %d2, 13107
	div.f	%d6, %d6, %d2
.LVL55:
	div.f	%d4, %d4, %d5
.LVL56:
	.loc 1 723 0
	movh	%d15, 16256
	mov	%d2, 500
	.loc 1 721 0
	mul.f	%d4, %d4, %d6
.LVL57:
	.loc 1 723 0
	cmp.f	%d15, %d4, %d15
	jz.t	%d15, 2, .L91
.LVL58:
.L87:
	.loc 1 727 0
	movh.a	%a15, hi:-267351224
	lea	%a15, [%a15] lo:-267351224
	st.w	[%a15]0, %d2
	.loc 1 728 0
	ret
.LVL59:
.L91:
	.loc 1 724 0
	cmp.f	%d3, %d4, %d3
	mov	%d2, 0
	jnz.t	%d3, 0, .L87
	movh	%d2, 17402
	mul.f	%d2, %d4, %d2
	ftouz	%d2, %d2
	j	.L87
.LFE227:
	.size	Gtm_DebugPwmScope, .-Gtm_DebugPwmScope
	.global	Flag_WDIDis
	.section .bss.MPU_ASIL_VAR_NOINIT,"aw",@nobits
	.align 3
	.type	Flag_WDIDis, @object
	.size	Flag_WDIDis, 2
Flag_WDIDis:
	.zero	2
	.global	Gtm_WDIDisCnt
	.align 3
	.type	Gtm_WDIDisCnt, @object
	.size	Gtm_WDIDisCnt, 2
Gtm_WDIDisCnt:
	.zero	2
	.global	Safety_WDIDis
	.align 3
	.type	Safety_WDIDis, @object
	.size	Safety_WDIDis, 2
Safety_WDIDis:
	.zero	2
	.global	Gtm_PwmStatus
	.align 3
	.type	Gtm_PwmStatus, @object
	.size	Gtm_PwmStatus, 2
Gtm_PwmStatus:
	.zero	2
	.global	Gtm_TimCnt
	.align 3
	.type	Gtm_TimCnt, @object
	.size	Gtm_TimCnt, 16
Gtm_TimCnt:
	.zero	16
	.global	Gtm_PwmEnState
	.align 3
	.type	Gtm_PwmEnState, @object
	.size	Gtm_PwmEnState, 12
Gtm_PwmEnState:
	.zero	12
	.global	Gtm_PwmEn
	.align 3
	.type	Gtm_PwmEn, @object
	.size	Gtm_PwmEn, 6
Gtm_PwmEn:
	.zero	6
	.global	Safety_PwmEn
	.align 3
	.type	Safety_PwmEn, @object
	.size	Safety_PwmEn, 6
Safety_PwmEn:
	.zero	6
	.global	Pwm_PwmEn
	.align 3
	.type	Pwm_PwmEn, @object
	.size	Pwm_PwmEn, 6
Pwm_PwmEn:
	.zero	6
	.global	PwmSr1Pt
	.align 3
	.type	PwmSr1Pt, @object
	.size	PwmSr1Pt, 40
PwmSr1Pt:
	.zero	40
	.global	PwmSr0Pt
	.align 3
	.type	PwmSr0Pt, @object
	.size	PwmSr0Pt, 40
PwmSr0Pt:
	.zero	40
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
	.uaword	.LFB204
	.uaword	.LFE204-.LFB204
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB205
	.uaword	.LFE205-.LFB205
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB203
	.uaword	.LFE203-.LFB203
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB206
	.uaword	.LFE206-.LFB206
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB207
	.uaword	.LFE207-.LFB207
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB208
	.uaword	.LFE208-.LFB208
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB209
	.uaword	.LFE209-.LFB209
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB202
	.uaword	.LFE202-.LFB202
	.align 2
.LEFDE14:
.LSFDE16:
	.uaword	.LEFDE16-.LASFDE16
.LASFDE16:
	.uaword	.Lframe0
	.uaword	.LFB210
	.uaword	.LFE210-.LFB210
	.align 2
.LEFDE16:
.LSFDE18:
	.uaword	.LEFDE18-.LASFDE18
.LASFDE18:
	.uaword	.Lframe0
	.uaword	.LFB211
	.uaword	.LFE211-.LFB211
	.align 2
.LEFDE18:
.LSFDE20:
	.uaword	.LEFDE20-.LASFDE20
.LASFDE20:
	.uaword	.Lframe0
	.uaword	.LFB212
	.uaword	.LFE212-.LFB212
	.align 2
.LEFDE20:
.LSFDE22:
	.uaword	.LEFDE22-.LASFDE22
.LASFDE22:
	.uaword	.Lframe0
	.uaword	.LFB215
	.uaword	.LFE215-.LFB215
	.align 2
.LEFDE22:
.LSFDE24:
	.uaword	.LEFDE24-.LASFDE24
.LASFDE24:
	.uaword	.Lframe0
	.uaword	.LFB216
	.uaword	.LFE216-.LFB216
	.align 2
.LEFDE24:
.LSFDE26:
	.uaword	.LEFDE26-.LASFDE26
.LASFDE26:
	.uaword	.Lframe0
	.uaword	.LFB217
	.uaword	.LFE217-.LFB217
	.align 2
.LEFDE26:
.LSFDE28:
	.uaword	.LEFDE28-.LASFDE28
.LASFDE28:
	.uaword	.Lframe0
	.uaword	.LFB214
	.uaword	.LFE214-.LFB214
	.align 2
.LEFDE28:
.LSFDE30:
	.uaword	.LEFDE30-.LASFDE30
.LASFDE30:
	.uaword	.Lframe0
	.uaword	.LFB213
	.uaword	.LFE213-.LFB213
	.align 2
.LEFDE30:
.LSFDE32:
	.uaword	.LEFDE32-.LASFDE32
.LASFDE32:
	.uaword	.Lframe0
	.uaword	.LFB218
	.uaword	.LFE218-.LFB218
	.align 2
.LEFDE32:
.LSFDE34:
	.uaword	.LEFDE34-.LASFDE34
.LASFDE34:
	.uaword	.Lframe0
	.uaword	.LFB219
	.uaword	.LFE219-.LFB219
	.align 2
.LEFDE34:
.LSFDE36:
	.uaword	.LEFDE36-.LASFDE36
.LASFDE36:
	.uaword	.Lframe0
	.uaword	.LFB220
	.uaword	.LFE220-.LFB220
	.align 2
.LEFDE36:
.LSFDE38:
	.uaword	.LEFDE38-.LASFDE38
.LASFDE38:
	.uaword	.Lframe0
	.uaword	.LFB221
	.uaword	.LFE221-.LFB221
	.align 2
.LEFDE38:
.LSFDE40:
	.uaword	.LEFDE40-.LASFDE40
.LASFDE40:
	.uaword	.Lframe0
	.uaword	.LFB222
	.uaword	.LFE222-.LFB222
	.align 2
.LEFDE40:
.LSFDE42:
	.uaword	.LEFDE42-.LASFDE42
.LASFDE42:
	.uaword	.Lframe0
	.uaword	.LFB223
	.uaword	.LFE223-.LFB223
	.align 2
.LEFDE42:
.LSFDE44:
	.uaword	.LEFDE44-.LASFDE44
.LASFDE44:
	.uaword	.Lframe0
	.uaword	.LFB224
	.uaword	.LFE224-.LFB224
	.align 2
.LEFDE44:
.LSFDE46:
	.uaword	.LEFDE46-.LASFDE46
.LASFDE46:
	.uaword	.Lframe0
	.uaword	.LFB225
	.uaword	.LFE225-.LFB225
	.align 2
.LEFDE46:
.LSFDE48:
	.uaword	.LEFDE48-.LASFDE48
.LASFDE48:
	.uaword	.Lframe0
	.uaword	.LFB226
	.uaword	.LFE226-.LFB226
	.align 2
.LEFDE48:
.LSFDE50:
	.uaword	.LEFDE50-.LASFDE50
.LASFDE50:
	.uaword	.Lframe0
	.uaword	.LFB227
	.uaword	.LFE227-.LFB227
	.align 2
.LEFDE50:
.section .text,"ax",@progbits
.Letext0:
	.file 3 "../30_Bsw/Common/rtwtypes.h"
	.file 4 "../30_Bsw/Common/TC21x/IfxGtm_regdef.h"
	.file 5 "../30_Bsw/Common/TC21x/IfxSrc_cfg.h"
	.file 6 "../30_Bsw/Common/Platform_Types.h"
	.file 7 "../30_Bsw/Common/Ifx_Types.h"
	.file 8 "../30_Bsw/Common/TC21x/IfxSrc_regdef.h"
	.file 9 "../30_Bsw/Common/TC21x/IfxCpu_regdef.h"
	.file 10 "../30_Bsw/Main/Main_api.h"
	.file 11 "../30_Bsw/Mpu/mpu_api.h"
	.file 12 "../30_Bsw/Mcal/Gtm/Gtm_api.h"
	.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x9803
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.6.3 build on 2013-05-17"
	.byte	0x1
	.string	"../30_Bsw/Mcal/Gtm/Gtm.c"
	.string	"D:\\\\SVN\\\\IPB-11Kw\\\\LvDc-C01R0P0-Ceramicheater\\\\20_Make"
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_ranges0+0xd0
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
	.uleb128 0x3
	.string	"uint16_T"
	.byte	0x3
	.byte	0x53
	.uaword	0xca
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
	.byte	0x3
	.byte	0x55
	.uaword	0xf7
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x3
	.string	"real32_T"
	.byte	0x3
	.byte	0x56
	.uaword	0x117
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
	.byte	0x3
	.byte	0x5f
	.uaword	0x9c
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x3
	.string	"u16"
	.byte	0x3
	.byte	0x7f
	.uaword	0xba
	.uleb128 0x3
	.string	"u32"
	.byte	0x3
	.byte	0x81
	.uaword	0xe7
	.uleb128 0x3
	.string	"f32"
	.byte	0x3
	.byte	0x82
	.uaword	0x107
	.uleb128 0x3
	.string	"bit"
	.byte	0x3
	.byte	0x84
	.uaword	0x12a
	.uleb128 0x4
	.string	"_Ifx_GTM_ACCEN0_Bits"
	.byte	0x4
	.byte	0x4
	.byte	0x2d
	.uaword	0x3d8
	.uleb128 0x5
	.string	"EN0"
	.byte	0x4
	.byte	0x2f
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EN1"
	.byte	0x4
	.byte	0x30
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EN2"
	.byte	0x4
	.byte	0x31
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EN3"
	.byte	0x4
	.byte	0x32
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EN4"
	.byte	0x4
	.byte	0x33
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EN5"
	.byte	0x4
	.byte	0x34
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EN6"
	.byte	0x4
	.byte	0x35
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EN7"
	.byte	0x4
	.byte	0x36
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EN8"
	.byte	0x4
	.byte	0x37
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EN9"
	.byte	0x4
	.byte	0x38
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EN10"
	.byte	0x4
	.byte	0x39
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EN11"
	.byte	0x4
	.byte	0x3a
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EN12"
	.byte	0x4
	.byte	0x3b
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EN13"
	.byte	0x4
	.byte	0x3c
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EN14"
	.byte	0x4
	.byte	0x3d
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EN15"
	.byte	0x4
	.byte	0x3e
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EN16"
	.byte	0x4
	.byte	0x3f
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EN17"
	.byte	0x4
	.byte	0x40
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EN18"
	.byte	0x4
	.byte	0x41
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EN19"
	.byte	0x4
	.byte	0x42
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EN20"
	.byte	0x4
	.byte	0x43
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EN21"
	.byte	0x4
	.byte	0x44
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EN22"
	.byte	0x4
	.byte	0x45
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EN23"
	.byte	0x4
	.byte	0x46
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EN24"
	.byte	0x4
	.byte	0x47
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EN25"
	.byte	0x4
	.byte	0x48
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EN26"
	.byte	0x4
	.byte	0x49
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EN27"
	.byte	0x4
	.byte	0x4a
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EN28"
	.byte	0x4
	.byte	0x4b
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EN29"
	.byte	0x4
	.byte	0x4c
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EN30"
	.byte	0x4
	.byte	0x4d
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EN31"
	.byte	0x4
	.byte	0x4e
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x6
	.uaword	0xf7
	.uleb128 0x3
	.string	"Ifx_GTM_ACCEN0_Bits"
	.byte	0x4
	.byte	0x4f
	.uaword	0x184
	.uleb128 0x4
	.string	"_Ifx_GTM_ACCEN1_Bits"
	.byte	0x4
	.byte	0x4
	.byte	0x52
	.uaword	0x427
	.uleb128 0x7
	.uaword	.LASF0
	.byte	0x4
	.byte	0x54
	.uaword	0x3d8
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_GTM_ACCEN1_Bits"
	.byte	0x4
	.byte	0x55
	.uaword	0x3f8
	.uleb128 0x4
	.string	"_Ifx_GTM_ADCTRIG0OUT0_Bits"
	.byte	0x4
	.byte	0x4
	.byte	0x58
	.uaword	0x4bf
	.uleb128 0x5
	.string	"SEL0"
	.byte	0x4
	.byte	0x5a
	.uaword	0x3d8
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"SEL1"
	.byte	0x4
	.byte	0x5b
	.uaword	0x3d8
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"SEL2"
	.byte	0x4
	.byte	0x5c
	.uaword	0x3d8
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"SEL3"
	.byte	0x4
	.byte	0x5d
	.uaword	0x3d8
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.uaword	.LASF1
	.byte	0x4
	.byte	0x5e
	.uaword	0x3d8
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_GTM_ADCTRIG0OUT0_Bits"
	.byte	0x4
	.byte	0x5f
	.uaword	0x442
	.uleb128 0x4
	.string	"_Ifx_GTM_ADCTRIG1OUT0_Bits"
	.byte	0x4
	.byte	0x4
	.byte	0x62
	.uaword	0x55d
	.uleb128 0x5
	.string	"SEL0"
	.byte	0x4
	.byte	0x64
	.uaword	0x3d8
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"SEL1"
	.byte	0x4
	.byte	0x65
	.uaword	0x3d8
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"SEL2"
	.byte	0x4
	.byte	0x66
	.uaword	0x3d8
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"SEL3"
	.byte	0x4
	.byte	0x67
	.uaword	0x3d8
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.uaword	.LASF1
	.byte	0x4
	.byte	0x68
	.uaword	0x3d8
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_GTM_ADCTRIG1OUT0_Bits"
	.byte	0x4
	.byte	0x69
	.uaword	0x4e0
	.uleb128 0x4
	.string	"_Ifx_GTM_AEI_ADDR_XPT_Bits"
	.byte	0x4
	.byte	0x4
	.byte	0x6c
	.uaword	0x5dd
	.uleb128 0x5
	.string	"TO_ADDR"
	.byte	0x4
	.byte	0x6e
	.uaword	0x3d8
	.byte	0x4
	.byte	0x14
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"TO_W1R0"
	.byte	0x4
	.byte	0x6f
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.uaword	.LASF2
	.byte	0x4
	.byte	0x70
	.uaword	0x3d8
	.byte	0x4
	.byte	0xb
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_GTM_AEI_ADDR_XPT_Bits"
	.byte	0x4
	.byte	0x71
	.uaword	0x57e
	.uleb128 0x4
	.string	"_Ifx_GTM_BRIDGE_MODE_Bits"
	.byte	0x4
	.byte	0x4
	.byte	0x74
	.uaword	0x719
	.uleb128 0x5
	.string	"BRG_MODE"
	.byte	0x4
	.byte	0x76
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"MSK_WR_RSP"
	.byte	0x4
	.byte	0x77
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.uaword	.LASF3
	.byte	0x4
	.byte	0x78
	.uaword	0x3d8
	.byte	0x4
	.byte	0x6
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"MODE_UP_PGR"
	.byte	0x4
	.byte	0x79
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"BUFF_OVL"
	.byte	0x4
	.byte	0x7a
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.uaword	.LASF4
	.byte	0x4
	.byte	0x7b
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"SYNC_INPUT_REG"
	.byte	0x4
	.byte	0x7c
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"reserved_13"
	.byte	0x4
	.byte	0x7d
	.uaword	0x3d8
	.byte	0x4
	.byte	0x3
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"BRG_RST"
	.byte	0x4
	.byte	0x7e
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"reserved_17"
	.byte	0x4
	.byte	0x7f
	.uaword	0x3d8
	.byte	0x4
	.byte	0x7
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"BUFF_DPT"
	.byte	0x4
	.byte	0x80
	.uaword	0x3d8
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_GTM_BRIDGE_MODE_Bits"
	.byte	0x4
	.byte	0x81
	.uaword	0x5fe
	.uleb128 0x4
	.string	"_Ifx_GTM_BRIDGE_PTR1_Bits"
	.byte	0x4
	.byte	0x4
	.byte	0x84
	.uaword	0x7ef
	.uleb128 0x5
	.string	"NEW_TRAN_PTR"
	.byte	0x4
	.byte	0x86
	.uaword	0x3d8
	.byte	0x4
	.byte	0x5
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"FIRST_RSP_PTR"
	.byte	0x4
	.byte	0x87
	.uaword	0x3d8
	.byte	0x4
	.byte	0x5
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"TRAN_IN_PGR"
	.byte	0x4
	.byte	0x88
	.uaword	0x3d8
	.byte	0x4
	.byte	0x5
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"ABT_TRAN_PGR"
	.byte	0x4
	.byte	0x89
	.uaword	0x3d8
	.byte	0x4
	.byte	0x5
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"FBC"
	.byte	0x4
	.byte	0x8a
	.uaword	0x3d8
	.byte	0x4
	.byte	0x6
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"RSP_TRAN_RDY"
	.byte	0x4
	.byte	0x8b
	.uaword	0x3d8
	.byte	0x4
	.byte	0x6
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_GTM_BRIDGE_PTR1_Bits"
	.byte	0x4
	.byte	0x8c
	.uaword	0x739
	.uleb128 0x4
	.string	"_Ifx_GTM_BRIDGE_PTR2_Bits"
	.byte	0x4
	.byte	0x4
	.byte	0x8f
	.uaword	0x85d
	.uleb128 0x5
	.string	"TRAN_IN_PGR2"
	.byte	0x4
	.byte	0x91
	.uaword	0x3d8
	.byte	0x4
	.byte	0x5
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.uaword	.LASF5
	.byte	0x4
	.byte	0x92
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1b
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_GTM_BRIDGE_PTR2_Bits"
	.byte	0x4
	.byte	0x93
	.uaword	0x80f
	.uleb128 0x4
	.string	"_Ifx_GTM_CLC_Bits"
	.byte	0x4
	.byte	0x4
	.byte	0x96
	.uaword	0x8f0
	.uleb128 0x5
	.string	"DISR"
	.byte	0x4
	.byte	0x98
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"DISS"
	.byte	0x4
	.byte	0x99
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.uaword	.LASF3
	.byte	0x4
	.byte	0x9a
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EDIS"
	.byte	0x4
	.byte	0x9b
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.uaword	.LASF6
	.byte	0x4
	.byte	0x9c
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_GTM_CLC_Bits"
	.byte	0x4
	.byte	0x9d
	.uaword	0x87d
	.uleb128 0x4
	.string	"_Ifx_GTM_CMU_CLK0_5_CTRL_Bits"
	.byte	0x4
	.byte	0x4
	.byte	0xa0
	.uaword	0x951
	.uleb128 0x7
	.uaword	.LASF7
	.byte	0x4
	.byte	0xa2
	.uaword	0x3d8
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.uaword	.LASF8
	.byte	0x4
	.byte	0xa3
	.uaword	0x3d8
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_GTM_CMU_CLK0_5_CTRL_Bits"
	.byte	0x4
	.byte	0xa4
	.uaword	0x908
	.uleb128 0x4
	.string	"_Ifx_GTM_CMU_CLK_6_CTRL_Bits"
	.byte	0x4
	.byte	0x4
	.byte	0xa7
	.uaword	0x9d3
	.uleb128 0x7
	.uaword	.LASF7
	.byte	0x4
	.byte	0xa9
	.uaword	0x3d8
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"CLK6_SEL"
	.byte	0x4
	.byte	0xaa
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.uaword	.LASF9
	.byte	0x4
	.byte	0xab
	.uaword	0x3d8
	.byte	0x4
	.byte	0x7
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_GTM_CMU_CLK_6_CTRL_Bits"
	.byte	0x4
	.byte	0xac
	.uaword	0x975
	.uleb128 0x4
	.string	"_Ifx_GTM_CMU_CLK_7_CTRL_Bits"
	.byte	0x4
	.byte	0x4
	.byte	0xaf
	.uaword	0xa54
	.uleb128 0x7
	.uaword	.LASF7
	.byte	0x4
	.byte	0xb1
	.uaword	0x3d8
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"CLK7_SEL"
	.byte	0x4
	.byte	0xb2
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.uaword	.LASF9
	.byte	0x4
	.byte	0xb3
	.uaword	0x3d8
	.byte	0x4
	.byte	0x7
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_GTM_CMU_CLK_7_CTRL_Bits"
	.byte	0x4
	.byte	0xb4
	.uaword	0x9f6
	.uleb128 0x4
	.string	"_Ifx_GTM_CMU_CLK_EN_Bits"
	.byte	0x4
	.byte	0x4
	.byte	0xb7
	.uaword	0xbaa
	.uleb128 0x5
	.string	"EN_CLK0"
	.byte	0x4
	.byte	0xb9
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EN_CLK1"
	.byte	0x4
	.byte	0xba
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EN_CLK2"
	.byte	0x4
	.byte	0xbb
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EN_CLK3"
	.byte	0x4
	.byte	0xbc
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EN_CLK4"
	.byte	0x4
	.byte	0xbd
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EN_CLK5"
	.byte	0x4
	.byte	0xbe
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EN_CLK6"
	.byte	0x4
	.byte	0xbf
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EN_CLK7"
	.byte	0x4
	.byte	0xc0
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EN_ECLK0"
	.byte	0x4
	.byte	0xc1
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EN_ECLK1"
	.byte	0x4
	.byte	0xc2
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EN_ECLK2"
	.byte	0x4
	.byte	0xc3
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EN_FXCLK"
	.byte	0x4
	.byte	0xc4
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.uaword	.LASF8
	.byte	0x4
	.byte	0xc5
	.uaword	0x3d8
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_GTM_CMU_CLK_EN_Bits"
	.byte	0x4
	.byte	0xc6
	.uaword	0xa77
	.uleb128 0x4
	.string	"_Ifx_GTM_CMU_ECLK_DEN_Bits"
	.byte	0x4
	.byte	0x4
	.byte	0xc9
	.uaword	0xc14
	.uleb128 0x5
	.string	"ECLK_DEN"
	.byte	0x4
	.byte	0xcb
	.uaword	0x3d8
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.uaword	.LASF8
	.byte	0x4
	.byte	0xcc
	.uaword	0x3d8
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_GTM_CMU_ECLK_DEN_Bits"
	.byte	0x4
	.byte	0xcd
	.uaword	0xbc9
	.uleb128 0x4
	.string	"_Ifx_GTM_CMU_ECLK_NUM_Bits"
	.byte	0x4
	.byte	0x4
	.byte	0xd0
	.uaword	0xc80
	.uleb128 0x5
	.string	"ECLK_NUM"
	.byte	0x4
	.byte	0xd2
	.uaword	0x3d8
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.uaword	.LASF8
	.byte	0x4
	.byte	0xd3
	.uaword	0x3d8
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_GTM_CMU_ECLK_NUM_Bits"
	.byte	0x4
	.byte	0xd4
	.uaword	0xc35
	.uleb128 0x4
	.string	"_Ifx_GTM_CMU_FXCLK_CTRL_Bits"
	.byte	0x4
	.byte	0x4
	.byte	0xd7
	.uaword	0xcef
	.uleb128 0x5
	.string	"FXCLK_SEL"
	.byte	0x4
	.byte	0xd9
	.uaword	0x3d8
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.uaword	.LASF6
	.byte	0x4
	.byte	0xda
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_GTM_CMU_FXCLK_CTRL_Bits"
	.byte	0x4
	.byte	0xdb
	.uaword	0xca1
	.uleb128 0x4
	.string	"_Ifx_GTM_CMU_GCLK_DEN_Bits"
	.byte	0x4
	.byte	0x4
	.byte	0xde
	.uaword	0xd58
	.uleb128 0x7
	.uaword	.LASF10
	.byte	0x4
	.byte	0xe0
	.uaword	0x3d8
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.uaword	.LASF8
	.byte	0x4
	.byte	0xe1
	.uaword	0x3d8
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_GTM_CMU_GCLK_DEN_Bits"
	.byte	0x4
	.byte	0xe2
	.uaword	0xd12
	.uleb128 0x4
	.string	"_Ifx_GTM_CMU_GCLK_NUM_Bits"
	.byte	0x4
	.byte	0x4
	.byte	0xe5
	.uaword	0xdbf
	.uleb128 0x7
	.uaword	.LASF11
	.byte	0x4
	.byte	0xe7
	.uaword	0x3d8
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.uaword	.LASF8
	.byte	0x4
	.byte	0xe8
	.uaword	0x3d8
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_GTM_CMU_GCLK_NUM_Bits"
	.byte	0x4
	.byte	0xe9
	.uaword	0xd79
	.uleb128 0x4
	.string	"_Ifx_GTM_CTRL_Bits"
	.byte	0x4
	.byte	0x4
	.byte	0xec
	.uaword	0xe63
	.uleb128 0x5
	.string	"RF_PROT"
	.byte	0x4
	.byte	0xee
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"TO_MODE"
	.byte	0x4
	.byte	0xef
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.uaword	.LASF3
	.byte	0x4
	.byte	0xf0
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"TO_VAL"
	.byte	0x4
	.byte	0xf1
	.uaword	0x3d8
	.byte	0x4
	.byte	0x5
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"reserved_9"
	.byte	0x4
	.byte	0xf2
	.uaword	0x3d8
	.byte	0x4
	.byte	0x17
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_GTM_CTRL_Bits"
	.byte	0x4
	.byte	0xf3
	.uaword	0xde0
	.uleb128 0x4
	.string	"_Ifx_GTM_DTM_CH_CTRL1_Bits"
	.byte	0x4
	.byte	0x4
	.byte	0xf6
	.uaword	0x107a
	.uleb128 0x5
	.string	"O1SEL_0"
	.byte	0x4
	.byte	0xf8
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.uaword	.LASF12
	.byte	0x4
	.byte	0xf9
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"SWAP_0"
	.byte	0x4
	.byte	0xfa
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"O1F_0"
	.byte	0x4
	.byte	0xfb
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.uaword	.LASF13
	.byte	0x4
	.byte	0xfc
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"O1SEL_1"
	.byte	0x4
	.byte	0xfd
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"I1SEL_1"
	.byte	0x4
	.byte	0xfe
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"SH_EN_1"
	.byte	0x4
	.byte	0xff
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"SWAP_1"
	.byte	0x4
	.uahalf	0x100
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"O1F_1"
	.byte	0x4
	.uahalf	0x101
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"reserved_14"
	.byte	0x4
	.uahalf	0x102
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"O1SEL_2"
	.byte	0x4
	.uahalf	0x103
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"I1SEL_2"
	.byte	0x4
	.uahalf	0x104
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"SH_EN_2"
	.byte	0x4
	.uahalf	0x105
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"SWAP_2"
	.byte	0x4
	.uahalf	0x106
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"O1F_2"
	.byte	0x4
	.uahalf	0x107
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF14
	.byte	0x4
	.uahalf	0x108
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"O1SEL_3"
	.byte	0x4
	.uahalf	0x109
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"I1SEL_3"
	.byte	0x4
	.uahalf	0x10a
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"SH_EN_3"
	.byte	0x4
	.uahalf	0x10b
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"SWAP_3"
	.byte	0x4
	.uahalf	0x10c
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"O1F_3"
	.byte	0x4
	.uahalf	0x10d
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF15
	.byte	0x4
	.uahalf	0x10e
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_DTM_CH_CTRL1_Bits"
	.byte	0x4
	.uahalf	0x10f
	.uaword	0xe7c
	.uleb128 0xb
	.string	"_Ifx_GTM_DTM_CH_CTRL2_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x112
	.uaword	0x1349
	.uleb128 0x8
	.string	"POL0_0"
	.byte	0x4
	.uahalf	0x114
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"OC0_0"
	.byte	0x4
	.uahalf	0x115
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"SL0_0"
	.byte	0x4
	.uahalf	0x116
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"DT0_0"
	.byte	0x4
	.uahalf	0x117
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"POL1_0"
	.byte	0x4
	.uahalf	0x118
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"OC1_0"
	.byte	0x4
	.uahalf	0x119
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"SL1_0"
	.byte	0x4
	.uahalf	0x11a
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"DT1_0"
	.byte	0x4
	.uahalf	0x11b
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"POL0_1"
	.byte	0x4
	.uahalf	0x11c
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"OC0_1"
	.byte	0x4
	.uahalf	0x11d
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"SL0_1"
	.byte	0x4
	.uahalf	0x11e
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"DT0_1"
	.byte	0x4
	.uahalf	0x11f
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"POL1_1"
	.byte	0x4
	.uahalf	0x120
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"OC1_1"
	.byte	0x4
	.uahalf	0x121
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"SL1_1"
	.byte	0x4
	.uahalf	0x122
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"DT1_1"
	.byte	0x4
	.uahalf	0x123
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"POL0_2"
	.byte	0x4
	.uahalf	0x124
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"OC0_2"
	.byte	0x4
	.uahalf	0x125
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"SL0_2"
	.byte	0x4
	.uahalf	0x126
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"DT0_2"
	.byte	0x4
	.uahalf	0x127
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"POL1_2"
	.byte	0x4
	.uahalf	0x128
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"OC1_2"
	.byte	0x4
	.uahalf	0x129
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"SL1_2"
	.byte	0x4
	.uahalf	0x12a
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"DT1_2"
	.byte	0x4
	.uahalf	0x12b
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"POL0_3"
	.byte	0x4
	.uahalf	0x12c
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"OC0_3"
	.byte	0x4
	.uahalf	0x12d
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"SL0_3"
	.byte	0x4
	.uahalf	0x12e
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"DT0_3"
	.byte	0x4
	.uahalf	0x12f
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"POL1_3"
	.byte	0x4
	.uahalf	0x130
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"OC1_3"
	.byte	0x4
	.uahalf	0x131
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"SL1_3"
	.byte	0x4
	.uahalf	0x132
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"DT1_3"
	.byte	0x4
	.uahalf	0x133
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_DTM_CH_CTRL2_Bits"
	.byte	0x4
	.uahalf	0x134
	.uaword	0x109c
	.uleb128 0xb
	.string	"_Ifx_GTM_DTM_CH_CTRL2_SR_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x137
	.uaword	0x167b
	.uleb128 0x8
	.string	"POL0_0_SR"
	.byte	0x4
	.uahalf	0x139
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"OC0_0_SR"
	.byte	0x4
	.uahalf	0x13a
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"SL0_0_SR"
	.byte	0x4
	.uahalf	0x13b
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"DT0_0_SR"
	.byte	0x4
	.uahalf	0x13c
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"POL1_0_SR"
	.byte	0x4
	.uahalf	0x13d
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"OC1_0_SR"
	.byte	0x4
	.uahalf	0x13e
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"SL1_0_SR"
	.byte	0x4
	.uahalf	0x13f
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"DT1_0_SR"
	.byte	0x4
	.uahalf	0x140
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"POL0_1_SR"
	.byte	0x4
	.uahalf	0x141
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"OC0_1_SR"
	.byte	0x4
	.uahalf	0x142
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"SL0_1_SR"
	.byte	0x4
	.uahalf	0x143
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"DT0_1_SR"
	.byte	0x4
	.uahalf	0x144
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"POL1_1_SR"
	.byte	0x4
	.uahalf	0x145
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"OC1_1_SR"
	.byte	0x4
	.uahalf	0x146
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"SL1_1_SR"
	.byte	0x4
	.uahalf	0x147
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"DT1_1_SR"
	.byte	0x4
	.uahalf	0x148
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"POL0_2_SR"
	.byte	0x4
	.uahalf	0x149
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"OC0_2_SR"
	.byte	0x4
	.uahalf	0x14a
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"SL0_2_SR"
	.byte	0x4
	.uahalf	0x14b
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"DT0_2_SR"
	.byte	0x4
	.uahalf	0x14c
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"POL1_2_SR"
	.byte	0x4
	.uahalf	0x14d
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"OC1_2_SR"
	.byte	0x4
	.uahalf	0x14e
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"SL1_2_SR"
	.byte	0x4
	.uahalf	0x14f
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"DT1_2_SR"
	.byte	0x4
	.uahalf	0x150
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"POL0_3_SR"
	.byte	0x4
	.uahalf	0x151
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"OC0_3_SR"
	.byte	0x4
	.uahalf	0x152
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"SL0_3_SR"
	.byte	0x4
	.uahalf	0x153
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"DT0_3_SR"
	.byte	0x4
	.uahalf	0x154
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"POL1_3_SR"
	.byte	0x4
	.uahalf	0x155
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"OC1_3_SR"
	.byte	0x4
	.uahalf	0x156
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"SL1_3_SR"
	.byte	0x4
	.uahalf	0x157
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"DT1_3_SR"
	.byte	0x4
	.uahalf	0x158
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_DTM_CH_CTRL2_SR_Bits"
	.byte	0x4
	.uahalf	0x159
	.uaword	0x136b
	.uleb128 0xb
	.string	"_Ifx_GTM_DTM_CTRL_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x15c
	.uaword	0x1719
	.uleb128 0x8
	.string	"CLK_SEL"
	.byte	0x4
	.uahalf	0x15e
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF3
	.byte	0x4
	.uahalf	0x15f
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"UPD_MODE"
	.byte	0x4
	.uahalf	0x160
	.uaword	0x3d8
	.byte	0x4
	.byte	0x3
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"reserved_7"
	.byte	0x4
	.uahalf	0x161
	.uaword	0x3d8
	.byte	0x4
	.byte	0x19
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_DTM_CTRL_Bits"
	.byte	0x4
	.uahalf	0x162
	.uaword	0x16a0
	.uleb128 0xb
	.string	"_Ifx_GTM_DTM_DTV_CH_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x165
	.uaword	0x17b2
	.uleb128 0x8
	.string	"RELRISE"
	.byte	0x4
	.uahalf	0x167
	.uaword	0x3d8
	.byte	0x4
	.byte	0xa
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF4
	.byte	0x4
	.uahalf	0x168
	.uaword	0x3d8
	.byte	0x4
	.byte	0x6
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"RELFALL"
	.byte	0x4
	.uahalf	0x169
	.uaword	0x3d8
	.byte	0x4
	.byte	0xa
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"reserved_26"
	.byte	0x4
	.uahalf	0x16a
	.uaword	0x3d8
	.byte	0x4
	.byte	0x6
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_DTM_DTV_CH_Bits"
	.byte	0x4
	.uahalf	0x16b
	.uaword	0x1737
	.uleb128 0xb
	.string	"_Ifx_GTM_DTM_PS_CTRL_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x16e
	.uaword	0x188f
	.uleb128 0x8
	.string	"RELBLK"
	.byte	0x4
	.uahalf	0x170
	.uaword	0x3d8
	.byte	0x4
	.byte	0xa
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF4
	.byte	0x4
	.uahalf	0x171
	.uaword	0x3d8
	.byte	0x4
	.byte	0x6
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"PSU_IN_SEL"
	.byte	0x4
	.uahalf	0x172
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"IN_POL"
	.byte	0x4
	.uahalf	0x173
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"reserved_18"
	.byte	0x4
	.uahalf	0x174
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"SHIFT_SEL"
	.byte	0x4
	.uahalf	0x175
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF14
	.byte	0x4
	.uahalf	0x176
	.uaword	0x3d8
	.byte	0x4
	.byte	0xa
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_DTM_PS_CTRL_Bits"
	.byte	0x4
	.uahalf	0x177
	.uaword	0x17d2
	.uleb128 0xb
	.string	"_Ifx_GTM_EIRQ_EN_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x17a
	.uaword	0x1969
	.uleb128 0x8
	.string	"AEI_TO_XPT_EIRQ_EN"
	.byte	0x4
	.uahalf	0x17c
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"AEI_USP_ADDR_EIRQ_EN"
	.byte	0x4
	.uahalf	0x17d
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"AEI_IM_ADDR_EIRQ_EN"
	.byte	0x4
	.uahalf	0x17e
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"AEI_USP_BE_EIRQ_EN"
	.byte	0x4
	.uahalf	0x17f
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF6
	.byte	0x4
	.uahalf	0x180
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_EIRQ_EN_Bits"
	.byte	0x4
	.uahalf	0x181
	.uaword	0x18b0
	.uleb128 0xb
	.string	"_Ifx_GTM_HW_CONF_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x184
	.uaword	0x1add
	.uleb128 0x8
	.string	"GRSTEN"
	.byte	0x4
	.uahalf	0x186
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"BRIDGE_MODE_RST"
	.byte	0x4
	.uahalf	0x187
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"AEI_IN"
	.byte	0x4
	.uahalf	0x188
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF16
	.byte	0x4
	.uahalf	0x189
	.uaword	0x3d8
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TOM_OUT_RST"
	.byte	0x4
	.uahalf	0x18a
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TOM_TRIG_CHAIN"
	.byte	0x4
	.uahalf	0x18b
	.uaword	0x3d8
	.byte	0x4
	.byte	0x3
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF17
	.byte	0x4
	.uahalf	0x18c
	.uaword	0x3d8
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"IRQ_MODE_LEVEL"
	.byte	0x4
	.uahalf	0x18d
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"IRQ_MODE_PULSE"
	.byte	0x4
	.uahalf	0x18e
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"IRQ_MODE_PULSE_NOTIFY"
	.byte	0x4
	.uahalf	0x18f
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"IRQ_MODE_SINGLE_PULSE"
	.byte	0x4
	.uahalf	0x190
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF18
	.byte	0x4
	.uahalf	0x191
	.uaword	0x3d8
	.byte	0x4
	.byte	0xc
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_HW_CONF_Bits"
	.byte	0x4
	.uahalf	0x192
	.uaword	0x1986
	.uleb128 0xb
	.string	"_Ifx_GTM_ICM_IRQG_0_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x195
	.uaword	0x1b57
	.uleb128 0x9
	.uaword	.LASF0
	.byte	0x4
	.uahalf	0x197
	.uaword	0x3d8
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"AEI_IRQ"
	.byte	0x4
	.uahalf	0x198
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF5
	.byte	0x4
	.uahalf	0x199
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1b
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_ICM_IRQG_0_Bits"
	.byte	0x4
	.uahalf	0x19a
	.uaword	0x1afa
	.uleb128 0xb
	.string	"_Ifx_GTM_ICM_IRQG_2_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x19d
	.uaword	0x1c84
	.uleb128 0x8
	.string	"TIM0_CH0_IRQ"
	.byte	0x4
	.uahalf	0x19f
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TIM0_CH1_IRQ"
	.byte	0x4
	.uahalf	0x1a0
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TIM0_CH2_IRQ"
	.byte	0x4
	.uahalf	0x1a1
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TIM0_CH3_IRQ"
	.byte	0x4
	.uahalf	0x1a2
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TIM0_CH4_IRQ"
	.byte	0x4
	.uahalf	0x1a3
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TIM0_CH5_IRQ"
	.byte	0x4
	.uahalf	0x1a4
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TIM0_CH6_IRQ"
	.byte	0x4
	.uahalf	0x1a5
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TIM0_CH7_IRQ"
	.byte	0x4
	.uahalf	0x1a6
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF19
	.byte	0x4
	.uahalf	0x1a7
	.uaword	0x3d8
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_ICM_IRQG_2_Bits"
	.byte	0x4
	.uahalf	0x1a8
	.uaword	0x1b77
	.uleb128 0xb
	.string	"_Ifx_GTM_ICM_IRQG_6_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x1ab
	.uaword	0x2033
	.uleb128 0x8
	.string	"TOM0_CH0_IRQ"
	.byte	0x4
	.uahalf	0x1ad
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TOM0_CH1_IRQ"
	.byte	0x4
	.uahalf	0x1ae
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TOM0_CH2_IRQ"
	.byte	0x4
	.uahalf	0x1af
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TOM0_CH3_IRQ"
	.byte	0x4
	.uahalf	0x1b0
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TOM0_CH4_IRQ"
	.byte	0x4
	.uahalf	0x1b1
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TOM0_CH5_IRQ"
	.byte	0x4
	.uahalf	0x1b2
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TOM0_CH6_IRQ"
	.byte	0x4
	.uahalf	0x1b3
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TOM0_CH7_IRQ"
	.byte	0x4
	.uahalf	0x1b4
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TOM0_CH8_IRQ"
	.byte	0x4
	.uahalf	0x1b5
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TOM0_CH9_IRQ"
	.byte	0x4
	.uahalf	0x1b6
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TOM0_CH10_IRQ"
	.byte	0x4
	.uahalf	0x1b7
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TOM0_CH11_IRQ"
	.byte	0x4
	.uahalf	0x1b8
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TOM0_CH12_IRQ"
	.byte	0x4
	.uahalf	0x1b9
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TOM0_CH13_IRQ"
	.byte	0x4
	.uahalf	0x1ba
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TOM0_CH14_IRQ"
	.byte	0x4
	.uahalf	0x1bb
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TOM0_CH15_IRQ"
	.byte	0x4
	.uahalf	0x1bc
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TOM1_CH0_IRQ"
	.byte	0x4
	.uahalf	0x1bd
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TOM1_CH1_IRQ"
	.byte	0x4
	.uahalf	0x1be
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TOM1_CH2_IRQ"
	.byte	0x4
	.uahalf	0x1bf
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TOM1_CH3_IRQ"
	.byte	0x4
	.uahalf	0x1c0
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TOM1_CH4_IRQ"
	.byte	0x4
	.uahalf	0x1c1
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TOM1_CH5_IRQ"
	.byte	0x4
	.uahalf	0x1c2
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TOM1_CH6_IRQ"
	.byte	0x4
	.uahalf	0x1c3
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TOM1_CH7_IRQ"
	.byte	0x4
	.uahalf	0x1c4
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TOM1_CH8_IRQ"
	.byte	0x4
	.uahalf	0x1c5
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TOM1_CH9_IRQ"
	.byte	0x4
	.uahalf	0x1c6
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TOM1_CH10_IRQ"
	.byte	0x4
	.uahalf	0x1c7
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TOM1_CH11_IRQ"
	.byte	0x4
	.uahalf	0x1c8
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TOM1_CH12_IRQ"
	.byte	0x4
	.uahalf	0x1c9
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TOM1_CH13_IRQ"
	.byte	0x4
	.uahalf	0x1ca
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TOM1_CH14_IRQ"
	.byte	0x4
	.uahalf	0x1cb
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TOM1_CH15_IRQ"
	.byte	0x4
	.uahalf	0x1cc
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_ICM_IRQG_6_Bits"
	.byte	0x4
	.uahalf	0x1cd
	.uaword	0x1ca4
	.uleb128 0xb
	.string	"_Ifx_GTM_ICM_IRQG_CEI1_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x1d0
	.uaword	0x216b
	.uleb128 0x8
	.string	"TIM0_CH0_EIRQ"
	.byte	0x4
	.uahalf	0x1d2
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TIM0_CH1_EIRQ"
	.byte	0x4
	.uahalf	0x1d3
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TIM0_CH2_EIRQ"
	.byte	0x4
	.uahalf	0x1d4
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TIM0_CH3_EIRQ"
	.byte	0x4
	.uahalf	0x1d5
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TIM0_CH4_EIRQ"
	.byte	0x4
	.uahalf	0x1d6
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TIM0_CH5_EIRQ"
	.byte	0x4
	.uahalf	0x1d7
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TIM0_CH6_EIRQ"
	.byte	0x4
	.uahalf	0x1d8
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TIM0_CH7_EIRQ"
	.byte	0x4
	.uahalf	0x1d9
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF19
	.byte	0x4
	.uahalf	0x1da
	.uaword	0x3d8
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_ICM_IRQG_CEI1_Bits"
	.byte	0x4
	.uahalf	0x1db
	.uaword	0x2053
	.uleb128 0xb
	.string	"_Ifx_GTM_ICM_IRQG_MEI_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x1de
	.uaword	0x2206
	.uleb128 0x8
	.string	"GTM_EIRQ"
	.byte	0x4
	.uahalf	0x1e0
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF12
	.byte	0x4
	.uahalf	0x1e1
	.uaword	0x3d8
	.byte	0x4
	.byte	0x3
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TIM0_EIRQ"
	.byte	0x4
	.uahalf	0x1e2
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF5
	.byte	0x4
	.uahalf	0x1e3
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1b
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_ICM_IRQG_MEI_Bits"
	.byte	0x4
	.uahalf	0x1e4
	.uaword	0x218e
	.uleb128 0xb
	.string	"_Ifx_GTM_INOUTSEL_CAN_OUTSEL_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x1e7
	.uaword	0x22b2
	.uleb128 0x8
	.string	"SEL0"
	.byte	0x4
	.uahalf	0x1e9
	.uaword	0x3d8
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"SEL1"
	.byte	0x4
	.uahalf	0x1ea
	.uaword	0x3d8
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"SEL2"
	.byte	0x4
	.uahalf	0x1eb
	.uaword	0x3d8
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"SEL3"
	.byte	0x4
	.uahalf	0x1ec
	.uaword	0x3d8
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF1
	.byte	0x4
	.uahalf	0x1ed
	.uaword	0x3d8
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_INOUTSEL_CAN_OUTSEL_Bits"
	.byte	0x4
	.uahalf	0x1ee
	.uaword	0x2228
	.uleb128 0xb
	.string	"_Ifx_GTM_INOUTSEL_T_OUTSEL_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x1f1
	.uaword	0x243b
	.uleb128 0x8
	.string	"SEL0"
	.byte	0x4
	.uahalf	0x1f3
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"SEL1"
	.byte	0x4
	.uahalf	0x1f4
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"SEL2"
	.byte	0x4
	.uahalf	0x1f5
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"SEL3"
	.byte	0x4
	.uahalf	0x1f6
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"SEL4"
	.byte	0x4
	.uahalf	0x1f7
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"SEL5"
	.byte	0x4
	.uahalf	0x1f8
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"SEL6"
	.byte	0x4
	.uahalf	0x1f9
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"SEL7"
	.byte	0x4
	.uahalf	0x1fa
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"SEL8"
	.byte	0x4
	.uahalf	0x1fb
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"SEL9"
	.byte	0x4
	.uahalf	0x1fc
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"SEL10"
	.byte	0x4
	.uahalf	0x1fd
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"SEL11"
	.byte	0x4
	.uahalf	0x1fe
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"SEL12"
	.byte	0x4
	.uahalf	0x1ff
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"SEL13"
	.byte	0x4
	.uahalf	0x200
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"SEL14"
	.byte	0x4
	.uahalf	0x201
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"SEL15"
	.byte	0x4
	.uahalf	0x202
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_INOUTSEL_T_OUTSEL_Bits"
	.byte	0x4
	.uahalf	0x203
	.uaword	0x22db
	.uleb128 0xb
	.string	"_Ifx_GTM_INOUTSEL_TIM_INSEL_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x206
	.uaword	0x2535
	.uleb128 0x8
	.string	"CH0SEL"
	.byte	0x4
	.uahalf	0x208
	.uaword	0x3d8
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"CH1SEL"
	.byte	0x4
	.uahalf	0x209
	.uaword	0x3d8
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"CH2SEL"
	.byte	0x4
	.uahalf	0x20a
	.uaword	0x3d8
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"CH3SEL"
	.byte	0x4
	.uahalf	0x20b
	.uaword	0x3d8
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"CH4SEL"
	.byte	0x4
	.uahalf	0x20c
	.uaword	0x3d8
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"CH5SEL"
	.byte	0x4
	.uahalf	0x20d
	.uaword	0x3d8
	.byte	0x4
	.byte	0x4
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"CH6SEL"
	.byte	0x4
	.uahalf	0x20e
	.uaword	0x3d8
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"CH7SEL"
	.byte	0x4
	.uahalf	0x20f
	.uaword	0x3d8
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_INOUTSEL_TIM_INSEL_Bits"
	.byte	0x4
	.uahalf	0x210
	.uaword	0x2462
	.uleb128 0xb
	.string	"_Ifx_GTM_IRQ_EN_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x213
	.uaword	0x2611
	.uleb128 0x8
	.string	"AEI_TO_XPT_IRQ_EN"
	.byte	0x4
	.uahalf	0x215
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"AEI_USP_ADDR_IRQ_EN"
	.byte	0x4
	.uahalf	0x216
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"AEI_IM_ADDR_IRQ_EN"
	.byte	0x4
	.uahalf	0x217
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"AEI_USP_BE_IRQ_EN"
	.byte	0x4
	.uahalf	0x218
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF6
	.byte	0x4
	.uahalf	0x219
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_IRQ_EN_Bits"
	.byte	0x4
	.uahalf	0x21a
	.uaword	0x255d
	.uleb128 0xb
	.string	"_Ifx_GTM_IRQ_FORCINT_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x21d
	.uaword	0x26da
	.uleb128 0x8
	.string	"TRG_AEI_TO_XPT"
	.byte	0x4
	.uahalf	0x21f
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TRG_AEI_USP_ADDR"
	.byte	0x4
	.uahalf	0x220
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TRG_AEI_IM_ADDR"
	.byte	0x4
	.uahalf	0x221
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TRG_AEI_USP_BE"
	.byte	0x4
	.uahalf	0x222
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF6
	.byte	0x4
	.uahalf	0x223
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_IRQ_FORCINT_Bits"
	.byte	0x4
	.uahalf	0x224
	.uaword	0x262d
	.uleb128 0xb
	.string	"_Ifx_GTM_IRQ_MODE_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x227
	.uaword	0x2740
	.uleb128 0x9
	.uaword	.LASF20
	.byte	0x4
	.uahalf	0x229
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF3
	.byte	0x4
	.uahalf	0x22a
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_IRQ_MODE_Bits"
	.byte	0x4
	.uahalf	0x22b
	.uaword	0x26fb
	.uleb128 0xb
	.string	"_Ifx_GTM_IRQ_NOTIFY_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x22e
	.uaword	0x27fa
	.uleb128 0x8
	.string	"AEI_TO_XPT"
	.byte	0x4
	.uahalf	0x230
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"AEI_USP_ADDR"
	.byte	0x4
	.uahalf	0x231
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"AEI_IM_ADDR"
	.byte	0x4
	.uahalf	0x232
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"AEI_USP_BE"
	.byte	0x4
	.uahalf	0x233
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF6
	.byte	0x4
	.uahalf	0x234
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_IRQ_NOTIFY_Bits"
	.byte	0x4
	.uahalf	0x235
	.uaword	0x275e
	.uleb128 0xb
	.string	"_Ifx_GTM_KRST0_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x238
	.uaword	0x2872
	.uleb128 0x8
	.string	"RST"
	.byte	0x4
	.uahalf	0x23a
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"RSTSTAT"
	.byte	0x4
	.uahalf	0x23b
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF3
	.byte	0x4
	.uahalf	0x23c
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_KRST0_Bits"
	.byte	0x4
	.uahalf	0x23d
	.uaword	0x281a
	.uleb128 0xb
	.string	"_Ifx_GTM_KRST1_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x240
	.uaword	0x28cf
	.uleb128 0x8
	.string	"RST"
	.byte	0x4
	.uahalf	0x242
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF12
	.byte	0x4
	.uahalf	0x243
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1f
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_KRST1_Bits"
	.byte	0x4
	.uahalf	0x244
	.uaword	0x288d
	.uleb128 0xb
	.string	"_Ifx_GTM_KRSTCLR_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x247
	.uaword	0x292e
	.uleb128 0x8
	.string	"CLR"
	.byte	0x4
	.uahalf	0x249
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF12
	.byte	0x4
	.uahalf	0x24a
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1f
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_KRSTCLR_Bits"
	.byte	0x4
	.uahalf	0x24b
	.uaword	0x28ea
	.uleb128 0xb
	.string	"_Ifx_GTM_OCS_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x24e
	.uaword	0x29c6
	.uleb128 0x9
	.uaword	.LASF0
	.byte	0x4
	.uahalf	0x250
	.uaword	0x3d8
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"SUS"
	.byte	0x4
	.uahalf	0x251
	.uaword	0x3d8
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"SUS_P"
	.byte	0x4
	.uahalf	0x252
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"SUSSTA"
	.byte	0x4
	.uahalf	0x253
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF15
	.byte	0x4
	.uahalf	0x254
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_OCS_Bits"
	.byte	0x4
	.uahalf	0x255
	.uaword	0x294b
	.uleb128 0xb
	.string	"_Ifx_GTM_ODA_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x258
	.uaword	0x2a34
	.uleb128 0x8
	.string	"DDREN"
	.byte	0x4
	.uahalf	0x25a
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"DREN"
	.byte	0x4
	.uahalf	0x25b
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF3
	.byte	0x4
	.uahalf	0x25c
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_ODA_Bits"
	.byte	0x4
	.uahalf	0x25d
	.uaword	0x29df
	.uleb128 0xb
	.string	"_Ifx_GTM_OTBU0T_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x260
	.uaword	0x2ab2
	.uleb128 0x8
	.string	"CV"
	.byte	0x4
	.uahalf	0x262
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1b
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF21
	.byte	0x4
	.uahalf	0x263
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"CM"
	.byte	0x4
	.uahalf	0x264
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF15
	.byte	0x4
	.uahalf	0x265
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_OTBU0T_Bits"
	.byte	0x4
	.uahalf	0x266
	.uaword	0x2a4d
	.uleb128 0xb
	.string	"_Ifx_GTM_OTBU1T_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x269
	.uaword	0x2b33
	.uleb128 0x8
	.string	"CV"
	.byte	0x4
	.uahalf	0x26b
	.uaword	0x3d8
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF8
	.byte	0x4
	.uahalf	0x26c
	.uaword	0x3d8
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"EN"
	.byte	0x4
	.uahalf	0x26d
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF22
	.byte	0x4
	.uahalf	0x26e
	.uaword	0x3d8
	.byte	0x4
	.byte	0x3
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_OTBU1T_Bits"
	.byte	0x4
	.uahalf	0x26f
	.uaword	0x2ace
	.uleb128 0xb
	.string	"_Ifx_GTM_OTBU2T_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x272
	.uaword	0x2bb4
	.uleb128 0x8
	.string	"CV"
	.byte	0x4
	.uahalf	0x274
	.uaword	0x3d8
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF8
	.byte	0x4
	.uahalf	0x275
	.uaword	0x3d8
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"EN"
	.byte	0x4
	.uahalf	0x276
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF22
	.byte	0x4
	.uahalf	0x277
	.uaword	0x3d8
	.byte	0x4
	.byte	0x3
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_OTBU2T_Bits"
	.byte	0x4
	.uahalf	0x278
	.uaword	0x2b4f
	.uleb128 0xb
	.string	"_Ifx_GTM_OTSC0_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x27b
	.uaword	0x2ce6
	.uleb128 0x8
	.string	"B0LMT"
	.byte	0x4
	.uahalf	0x27d
	.uaword	0x3d8
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF16
	.byte	0x4
	.uahalf	0x27e
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"B0LMI"
	.byte	0x4
	.uahalf	0x27f
	.uaword	0x3d8
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"B0HMT"
	.byte	0x4
	.uahalf	0x280
	.uaword	0x3d8
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"reserved_11"
	.byte	0x4
	.uahalf	0x281
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"B0HMI"
	.byte	0x4
	.uahalf	0x282
	.uaword	0x3d8
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"B1LMT"
	.byte	0x4
	.uahalf	0x283
	.uaword	0x3d8
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"reserved_19"
	.byte	0x4
	.uahalf	0x284
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"B1LMI"
	.byte	0x4
	.uahalf	0x285
	.uaword	0x3d8
	.byte	0x4
	.byte	0x4
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"B1HMT"
	.byte	0x4
	.uahalf	0x286
	.uaword	0x3d8
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF21
	.byte	0x4
	.uahalf	0x287
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"B1HMI"
	.byte	0x4
	.uahalf	0x288
	.uaword	0x3d8
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_OTSC0_Bits"
	.byte	0x4
	.uahalf	0x289
	.uaword	0x2bd0
	.uleb128 0xb
	.string	"_Ifx_GTM_OTSS_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x28c
	.uaword	0x2d90
	.uleb128 0x8
	.string	"OTGB0"
	.byte	0x4
	.uahalf	0x28e
	.uaword	0x3d8
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF6
	.byte	0x4
	.uahalf	0x28f
	.uaword	0x3d8
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"OTGB1"
	.byte	0x4
	.uahalf	0x290
	.uaword	0x3d8
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF17
	.byte	0x4
	.uahalf	0x291
	.uaword	0x3d8
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"OTGB2"
	.byte	0x4
	.uahalf	0x292
	.uaword	0x3d8
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF18
	.byte	0x4
	.uahalf	0x293
	.uaword	0x3d8
	.byte	0x4
	.byte	0xc
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_OTSS_Bits"
	.byte	0x4
	.uahalf	0x294
	.uaword	0x2d01
	.uleb128 0xb
	.string	"_Ifx_GTM_REV_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x297
	.uaword	0x2e5a
	.uleb128 0x8
	.string	"STEP"
	.byte	0x4
	.uahalf	0x299
	.uaword	0x3d8
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"NO"
	.byte	0x4
	.uahalf	0x29a
	.uaword	0x3d8
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"MINOR"
	.byte	0x4
	.uahalf	0x29b
	.uaword	0x3d8
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"MAJOR"
	.byte	0x4
	.uahalf	0x29c
	.uaword	0x3d8
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"DEV_CODE0"
	.byte	0x4
	.uahalf	0x29d
	.uaword	0x3d8
	.byte	0x4
	.byte	0x4
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"DEV_CODE1"
	.byte	0x4
	.uahalf	0x29e
	.uaword	0x3d8
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"DEV_CODE2"
	.byte	0x4
	.uahalf	0x29f
	.uaword	0x3d8
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_REV_Bits"
	.byte	0x4
	.uahalf	0x2a0
	.uaword	0x2daa
	.uleb128 0xb
	.string	"_Ifx_GTM_RST_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x2a3
	.uaword	0x2eb3
	.uleb128 0x8
	.string	"RST"
	.byte	0x4
	.uahalf	0x2a5
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF12
	.byte	0x4
	.uahalf	0x2a6
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1f
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_RST_Bits"
	.byte	0x4
	.uahalf	0x2a7
	.uaword	0x2e73
	.uleb128 0xb
	.string	"_Ifx_GTM_TBU_CH0_BASE_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x2aa
	.uaword	0x2f16
	.uleb128 0x8
	.string	"BASE"
	.byte	0x4
	.uahalf	0x2ac
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1b
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF21
	.byte	0x4
	.uahalf	0x2ad
	.uaword	0x3d8
	.byte	0x4
	.byte	0x5
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_TBU_CH0_BASE_Bits"
	.byte	0x4
	.uahalf	0x2ae
	.uaword	0x2ecc
	.uleb128 0xb
	.string	"_Ifx_GTM_TBU_CH0_CTRL_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x2b1
	.uaword	0x2f97
	.uleb128 0x8
	.string	"LOW_RES"
	.byte	0x4
	.uahalf	0x2b3
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF23
	.byte	0x4
	.uahalf	0x2b4
	.uaword	0x3d8
	.byte	0x4
	.byte	0x3
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF6
	.byte	0x4
	.uahalf	0x2b5
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_TBU_CH0_CTRL_Bits"
	.byte	0x4
	.uahalf	0x2b6
	.uaword	0x2f38
	.uleb128 0xb
	.string	"_Ifx_GTM_TBU_CH1_BASE_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x2b9
	.uaword	0x3003
	.uleb128 0x8
	.string	"BASE"
	.byte	0x4
	.uahalf	0x2bb
	.uaword	0x3d8
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF8
	.byte	0x4
	.uahalf	0x2bc
	.uaword	0x3d8
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_TBU_CH1_BASE_Bits"
	.byte	0x4
	.uahalf	0x2bd
	.uaword	0x2fb9
	.uleb128 0xb
	.string	"_Ifx_GTM_TBU_CH1_CTRL_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x2c0
	.uaword	0x3084
	.uleb128 0x8
	.string	"CH_MODE"
	.byte	0x4
	.uahalf	0x2c2
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF23
	.byte	0x4
	.uahalf	0x2c3
	.uaword	0x3d8
	.byte	0x4
	.byte	0x3
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF6
	.byte	0x4
	.uahalf	0x2c4
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_TBU_CH1_CTRL_Bits"
	.byte	0x4
	.uahalf	0x2c5
	.uaword	0x3025
	.uleb128 0xb
	.string	"_Ifx_GTM_TBU_CH2_BASE_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x2c8
	.uaword	0x30f0
	.uleb128 0x8
	.string	"BASE"
	.byte	0x4
	.uahalf	0x2ca
	.uaword	0x3d8
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF8
	.byte	0x4
	.uahalf	0x2cb
	.uaword	0x3d8
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_TBU_CH2_BASE_Bits"
	.byte	0x4
	.uahalf	0x2cc
	.uaword	0x30a6
	.uleb128 0xb
	.string	"_Ifx_GTM_TBU_CH2_CTRL_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x2cf
	.uaword	0x3171
	.uleb128 0x8
	.string	"CH_MODE"
	.byte	0x4
	.uahalf	0x2d1
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF23
	.byte	0x4
	.uahalf	0x2d2
	.uaword	0x3d8
	.byte	0x4
	.byte	0x3
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF6
	.byte	0x4
	.uahalf	0x2d3
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_TBU_CH2_CTRL_Bits"
	.byte	0x4
	.uahalf	0x2d4
	.uaword	0x3112
	.uleb128 0xb
	.string	"_Ifx_GTM_TBU_CHEN_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x2d7
	.uaword	0x320e
	.uleb128 0x8
	.string	"ENDIS_CH0"
	.byte	0x4
	.uahalf	0x2d9
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"ENDIS_CH1"
	.byte	0x4
	.uahalf	0x2da
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"ENDIS_CH2"
	.byte	0x4
	.uahalf	0x2db
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF13
	.byte	0x4
	.uahalf	0x2dc
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1a
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_TBU_CHEN_Bits"
	.byte	0x4
	.uahalf	0x2dd
	.uaword	0x3193
	.uleb128 0xb
	.string	"_Ifx_GTM_TIM_AUX_IN_SRC_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x2e0
	.uaword	0x3315
	.uleb128 0x8
	.string	"SRC_CH0"
	.byte	0x4
	.uahalf	0x2e2
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"SRC_CH1"
	.byte	0x4
	.uahalf	0x2e3
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"SRC_CH2"
	.byte	0x4
	.uahalf	0x2e4
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"SRC_CH3"
	.byte	0x4
	.uahalf	0x2e5
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"SRC_CH4"
	.byte	0x4
	.uahalf	0x2e6
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"SRC_CH5"
	.byte	0x4
	.uahalf	0x2e7
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"SRC_CH6"
	.byte	0x4
	.uahalf	0x2e8
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"SRC_CH7"
	.byte	0x4
	.uahalf	0x2e9
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF19
	.byte	0x4
	.uahalf	0x2ea
	.uaword	0x3d8
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_TIM_AUX_IN_SRC_Bits"
	.byte	0x4
	.uahalf	0x2eb
	.uaword	0x322c
	.uleb128 0xb
	.string	"_Ifx_GTM_TIM_CH_CNT_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x2ee
	.uaword	0x3380
	.uleb128 0x8
	.string	"CNT"
	.byte	0x4
	.uahalf	0x2f0
	.uaword	0x3d8
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF8
	.byte	0x4
	.uahalf	0x2f1
	.uaword	0x3d8
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_TIM_CH_CNT_Bits"
	.byte	0x4
	.uahalf	0x2f2
	.uaword	0x3339
	.uleb128 0xb
	.string	"_Ifx_GTM_TIM_CH_CNTS_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x2f5
	.uaword	0x33ea
	.uleb128 0x8
	.string	"CNTS"
	.byte	0x4
	.uahalf	0x2f7
	.uaword	0x3d8
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"ECNT"
	.byte	0x4
	.uahalf	0x2f8
	.uaword	0x3d8
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_TIM_CH_CNTS_Bits"
	.byte	0x4
	.uahalf	0x2f9
	.uaword	0x33a0
	.uleb128 0xb
	.string	"_Ifx_GTM_TIM_CH_CTRL_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x2fc
	.uaword	0x3651
	.uleb128 0x8
	.string	"TIM_EN"
	.byte	0x4
	.uahalf	0x2fe
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TIM_MODE"
	.byte	0x4
	.uahalf	0x2ff
	.uaword	0x3d8
	.byte	0x4
	.byte	0x3
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"OSM"
	.byte	0x4
	.uahalf	0x300
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF5
	.byte	0x4
	.uahalf	0x301
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"CICTRL"
	.byte	0x4
	.uahalf	0x302
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TBU0x_SEL"
	.byte	0x4
	.uahalf	0x303
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"GPR0_SEL"
	.byte	0x4
	.uahalf	0x304
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"GPR1_SEL"
	.byte	0x4
	.uahalf	0x305
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"CNTS_SEL"
	.byte	0x4
	.uahalf	0x306
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"DSL"
	.byte	0x4
	.uahalf	0x307
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"ISL"
	.byte	0x4
	.uahalf	0x308
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"ECNT_RESET"
	.byte	0x4
	.uahalf	0x309
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"FLT_EN"
	.byte	0x4
	.uahalf	0x30a
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"FLT_CNT_FRQ"
	.byte	0x4
	.uahalf	0x30b
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"EXT_CAP_EN"
	.byte	0x4
	.uahalf	0x30c
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"FLT_MODE_RE"
	.byte	0x4
	.uahalf	0x30d
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"FLT_CTR_RE"
	.byte	0x4
	.uahalf	0x30e
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"FLT_MODE_FE"
	.byte	0x4
	.uahalf	0x30f
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"FLT_CTR_FE"
	.byte	0x4
	.uahalf	0x310
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"CLK_SEL"
	.byte	0x4
	.uahalf	0x311
	.uaword	0x3d8
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"FR_ECNT_OFL"
	.byte	0x4
	.uahalf	0x312
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"EGPR0_SEL"
	.byte	0x4
	.uahalf	0x313
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"EGPR1_SEL"
	.byte	0x4
	.uahalf	0x314
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TOCTRL"
	.byte	0x4
	.uahalf	0x315
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_TIM_CH_CTRL_Bits"
	.byte	0x4
	.uahalf	0x316
	.uaword	0x340b
	.uleb128 0xb
	.string	"_Ifx_GTM_TIM_CH_ECNT_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x319
	.uaword	0x36bb
	.uleb128 0x8
	.string	"ECNT"
	.byte	0x4
	.uahalf	0x31b
	.uaword	0x3d8
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF1
	.byte	0x4
	.uahalf	0x31c
	.uaword	0x3d8
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_TIM_CH_ECNT_Bits"
	.byte	0x4
	.uahalf	0x31d
	.uaword	0x3672
	.uleb128 0xb
	.string	"_Ifx_GTM_TIM_CH_ECTRL_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x320
	.uaword	0x372d
	.uleb128 0x8
	.string	"EXT_CAP_SRC"
	.byte	0x4
	.uahalf	0x322
	.uaword	0x3d8
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF16
	.byte	0x4
	.uahalf	0x323
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1d
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_TIM_CH_ECTRL_Bits"
	.byte	0x4
	.uahalf	0x324
	.uaword	0x36dc
	.uleb128 0xb
	.string	"_Ifx_GTM_TIM_CH_EIRQ_EN_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x327
	.uaword	0x383a
	.uleb128 0x8
	.string	"NEWVAL_EIRQ_EN"
	.byte	0x4
	.uahalf	0x329
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"ECNTOFL_EIRQ_EN"
	.byte	0x4
	.uahalf	0x32a
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"CNTOFL_EIRQ_EN"
	.byte	0x4
	.uahalf	0x32b
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"GPRzOFL_EIRQ_EN"
	.byte	0x4
	.uahalf	0x32c
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TODET_EIRQ_EN"
	.byte	0x4
	.uahalf	0x32d
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"GLITCHDET_EIRQ_EN"
	.byte	0x4
	.uahalf	0x32e
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF13
	.byte	0x4
	.uahalf	0x32f
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1a
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_TIM_CH_EIRQ_EN_Bits"
	.byte	0x4
	.uahalf	0x330
	.uaword	0x374f
	.uleb128 0xb
	.string	"_Ifx_GTM_TIM_CH_FLT_FE_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x333
	.uaword	0x38ab
	.uleb128 0x8
	.string	"FLT_FE"
	.byte	0x4
	.uahalf	0x335
	.uaword	0x3d8
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF8
	.byte	0x4
	.uahalf	0x336
	.uaword	0x3d8
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_TIM_CH_FLT_FE_Bits"
	.byte	0x4
	.uahalf	0x337
	.uaword	0x385e
	.uleb128 0xb
	.string	"_Ifx_GTM_TIM_CH_FLT_RE_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x33a
	.uaword	0x391b
	.uleb128 0x8
	.string	"FLT_RE"
	.byte	0x4
	.uahalf	0x33c
	.uaword	0x3d8
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF8
	.byte	0x4
	.uahalf	0x33d
	.uaword	0x3d8
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_TIM_CH_FLT_RE_Bits"
	.byte	0x4
	.uahalf	0x33e
	.uaword	0x38ce
	.uleb128 0xb
	.string	"_Ifx_GTM_TIM_CH_GPR0_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x341
	.uaword	0x3988
	.uleb128 0x8
	.string	"GPR0"
	.byte	0x4
	.uahalf	0x343
	.uaword	0x3d8
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"ECNT"
	.byte	0x4
	.uahalf	0x344
	.uaword	0x3d8
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_TIM_CH_GPR0_Bits"
	.byte	0x4
	.uahalf	0x345
	.uaword	0x393e
	.uleb128 0xb
	.string	"_Ifx_GTM_TIM_CH_GPR1_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x348
	.uaword	0x39f3
	.uleb128 0x8
	.string	"GPR1"
	.byte	0x4
	.uahalf	0x34a
	.uaword	0x3d8
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"ECNT"
	.byte	0x4
	.uahalf	0x34b
	.uaword	0x3d8
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_TIM_CH_GPR1_Bits"
	.byte	0x4
	.uahalf	0x34c
	.uaword	0x39a9
	.uleb128 0xb
	.string	"_Ifx_GTM_TIM_CH_IRQ_EN_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x34f
	.uaword	0x3af8
	.uleb128 0x8
	.string	"NEWVAL_IRQ_EN"
	.byte	0x4
	.uahalf	0x351
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"ECNTOFL_IRQ_EN"
	.byte	0x4
	.uahalf	0x352
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"CNTOFL_IRQ_EN"
	.byte	0x4
	.uahalf	0x353
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"GPRzOFL_IRQ_EN"
	.byte	0x4
	.uahalf	0x354
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TODET_IRQ_EN"
	.byte	0x4
	.uahalf	0x355
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"GLITCHDET_IRQ_EN"
	.byte	0x4
	.uahalf	0x356
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF13
	.byte	0x4
	.uahalf	0x357
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1a
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_TIM_CH_IRQ_EN_Bits"
	.byte	0x4
	.uahalf	0x358
	.uaword	0x3a14
	.uleb128 0xb
	.string	"_Ifx_GTM_TIM_CH_IRQ_FORCINT_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x35b
	.uaword	0x3bf2
	.uleb128 0x8
	.string	"TRG_NEWVAL"
	.byte	0x4
	.uahalf	0x35d
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TRG_ECNTOFL"
	.byte	0x4
	.uahalf	0x35e
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TRG_CNTOFL"
	.byte	0x4
	.uahalf	0x35f
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TRG_GPRzOFL"
	.byte	0x4
	.uahalf	0x360
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TRG_TODET"
	.byte	0x4
	.uahalf	0x361
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TRG_GLITCHDET"
	.byte	0x4
	.uahalf	0x362
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF13
	.byte	0x4
	.uahalf	0x363
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1a
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_TIM_CH_IRQ_FORCINT_Bits"
	.byte	0x4
	.uahalf	0x364
	.uaword	0x3b1b
	.uleb128 0xb
	.string	"_Ifx_GTM_TIM_CH_IRQ_MODE_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x367
	.uaword	0x3c66
	.uleb128 0x9
	.uaword	.LASF20
	.byte	0x4
	.uahalf	0x369
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF3
	.byte	0x4
	.uahalf	0x36a
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_TIM_CH_IRQ_MODE_Bits"
	.byte	0x4
	.uahalf	0x36b
	.uaword	0x3c1a
	.uleb128 0xb
	.string	"_Ifx_GTM_TIM_CH_IRQ_NOTIFY_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x36e
	.uaword	0x3d49
	.uleb128 0x8
	.string	"NEWVAL"
	.byte	0x4
	.uahalf	0x370
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"ECNTOFL"
	.byte	0x4
	.uahalf	0x371
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"CNTOFL"
	.byte	0x4
	.uahalf	0x372
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"GPRzOFL"
	.byte	0x4
	.uahalf	0x373
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TODET"
	.byte	0x4
	.uahalf	0x374
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"GLITCHDET"
	.byte	0x4
	.uahalf	0x375
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF13
	.byte	0x4
	.uahalf	0x376
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1a
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_TIM_CH_IRQ_NOTIFY_Bits"
	.byte	0x4
	.uahalf	0x377
	.uaword	0x3c8b
	.uleb128 0xb
	.string	"_Ifx_GTM_TIM_CH_TDUC_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x37a
	.uaword	0x3dbb
	.uleb128 0x8
	.string	"TO_CNT"
	.byte	0x4
	.uahalf	0x37c
	.uaword	0x3d8
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF19
	.byte	0x4
	.uahalf	0x37d
	.uaword	0x3d8
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_TIM_CH_TDUC_Bits"
	.byte	0x4
	.uahalf	0x37e
	.uaword	0x3d70
	.uleb128 0xb
	.string	"_Ifx_GTM_TIM_CH_TDUV_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x381
	.uaword	0x3e48
	.uleb128 0x8
	.string	"TOV"
	.byte	0x4
	.uahalf	0x383
	.uaword	0x3d8
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF19
	.byte	0x4
	.uahalf	0x384
	.uaword	0x3d8
	.byte	0x4
	.byte	0x14
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TCS"
	.byte	0x4
	.uahalf	0x385
	.uaword	0x3d8
	.byte	0x4
	.byte	0x3
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF24
	.byte	0x4
	.uahalf	0x386
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_TIM_CH_TDUV_Bits"
	.byte	0x4
	.uahalf	0x387
	.uaword	0x3ddc
	.uleb128 0xb
	.string	"_Ifx_GTM_TIM_IN_SRC_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x38a
	.uaword	0x3fd4
	.uleb128 0x8
	.string	"VAL_0"
	.byte	0x4
	.uahalf	0x38c
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"MODE_0"
	.byte	0x4
	.uahalf	0x38d
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"VAL_1"
	.byte	0x4
	.uahalf	0x38e
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"MODE_1"
	.byte	0x4
	.uahalf	0x38f
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"VAL_2"
	.byte	0x4
	.uahalf	0x390
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"MODE_2"
	.byte	0x4
	.uahalf	0x391
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"VAL_3"
	.byte	0x4
	.uahalf	0x392
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"MODE_3"
	.byte	0x4
	.uahalf	0x393
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"VAL_4"
	.byte	0x4
	.uahalf	0x394
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"MODE_4"
	.byte	0x4
	.uahalf	0x395
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"VAL_5"
	.byte	0x4
	.uahalf	0x396
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"MODE_5"
	.byte	0x4
	.uahalf	0x397
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"VAL_6"
	.byte	0x4
	.uahalf	0x398
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"MODE_6"
	.byte	0x4
	.uahalf	0x399
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"VAL_7"
	.byte	0x4
	.uahalf	0x39a
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"MODE_7"
	.byte	0x4
	.uahalf	0x39b
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_TIM_IN_SRC_Bits"
	.byte	0x4
	.uahalf	0x39c
	.uaword	0x3e69
	.uleb128 0xb
	.string	"_Ifx_GTM_TIM_INP_VAL_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x39f
	.uaword	0x4066
	.uleb128 0x8
	.string	"F_OUT"
	.byte	0x4
	.uahalf	0x3a1
	.uaword	0x3d8
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"F_IN"
	.byte	0x4
	.uahalf	0x3a2
	.uaword	0x3d8
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TIM_IN"
	.byte	0x4
	.uahalf	0x3a3
	.uaword	0x3d8
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF8
	.byte	0x4
	.uahalf	0x3a4
	.uaword	0x3d8
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_TIM_INP_VAL_Bits"
	.byte	0x4
	.uahalf	0x3a5
	.uaword	0x3ff4
	.uleb128 0xb
	.string	"_Ifx_GTM_TIM_RST_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x3a8
	.uaword	0x4149
	.uleb128 0x9
	.uaword	.LASF25
	.byte	0x4
	.uahalf	0x3aa
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF26
	.byte	0x4
	.uahalf	0x3ab
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF27
	.byte	0x4
	.uahalf	0x3ac
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF28
	.byte	0x4
	.uahalf	0x3ad
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF29
	.byte	0x4
	.uahalf	0x3ae
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF30
	.byte	0x4
	.uahalf	0x3af
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF31
	.byte	0x4
	.uahalf	0x3b0
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF32
	.byte	0x4
	.uahalf	0x3b1
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF19
	.byte	0x4
	.uahalf	0x3b2
	.uaword	0x3d8
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_TIM_RST_Bits"
	.byte	0x4
	.uahalf	0x3b3
	.uaword	0x4087
	.uleb128 0xb
	.string	"_Ifx_GTM_TOM_CH_CM0_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x3b6
	.uaword	0x41ad
	.uleb128 0x8
	.string	"CM0"
	.byte	0x4
	.uahalf	0x3b8
	.uaword	0x3d8
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF1
	.byte	0x4
	.uahalf	0x3b9
	.uaword	0x3d8
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_TOM_CH_CM0_Bits"
	.byte	0x4
	.uahalf	0x3ba
	.uaword	0x4166
	.uleb128 0xb
	.string	"_Ifx_GTM_TOM_CH_CM1_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x3bd
	.uaword	0x4214
	.uleb128 0x8
	.string	"CM1"
	.byte	0x4
	.uahalf	0x3bf
	.uaword	0x3d8
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF1
	.byte	0x4
	.uahalf	0x3c0
	.uaword	0x3d8
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_TOM_CH_CM1_Bits"
	.byte	0x4
	.uahalf	0x3c1
	.uaword	0x41cd
	.uleb128 0xb
	.string	"_Ifx_GTM_TOM_CH_CN0_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x3c4
	.uaword	0x427b
	.uleb128 0x8
	.string	"CN0"
	.byte	0x4
	.uahalf	0x3c6
	.uaword	0x3d8
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF1
	.byte	0x4
	.uahalf	0x3c7
	.uaword	0x3d8
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_TOM_CH_CN0_Bits"
	.byte	0x4
	.uahalf	0x3c8
	.uaword	0x4234
	.uleb128 0xb
	.string	"_Ifx_GTM_TOM_CH_CTRL_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x3cb
	.uaword	0x43cc
	.uleb128 0x9
	.uaword	.LASF0
	.byte	0x4
	.uahalf	0x3cd
	.uaword	0x3d8
	.byte	0x4
	.byte	0xb
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"SL"
	.byte	0x4
	.uahalf	0x3ce
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"CLK_SRC_SR"
	.byte	0x4
	.uahalf	0x3cf
	.uaword	0x3d8
	.byte	0x4
	.byte	0x3
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF33
	.byte	0x4
	.uahalf	0x3d0
	.uaword	0x3d8
	.byte	0x4
	.byte	0x5
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"RST_CCU0"
	.byte	0x4
	.uahalf	0x3d1
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"OSM_TRIG"
	.byte	0x4
	.uahalf	0x3d2
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"EXT_TRIG"
	.byte	0x4
	.uahalf	0x3d3
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"EXTTRIGOUT"
	.byte	0x4
	.uahalf	0x3d4
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TRIGOUT"
	.byte	0x4
	.uahalf	0x3d5
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF9
	.byte	0x4
	.uahalf	0x3d6
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"OSM"
	.byte	0x4
	.uahalf	0x3d7
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"BITREV"
	.byte	0x4
	.uahalf	0x3d8
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF34
	.byte	0x4
	.uahalf	0x3d9
	.uaword	0x3d8
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_TOM_CH_CTRL_Bits"
	.byte	0x4
	.uahalf	0x3da
	.uaword	0x429b
	.uleb128 0xb
	.string	"_Ifx_GTM_TOM_CH_IRQ_EN_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x3dd
	.uaword	0x445d
	.uleb128 0x8
	.string	"CCU0TC_IRQ_EN"
	.byte	0x4
	.uahalf	0x3df
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"CCU1TC_IRQ_EN"
	.byte	0x4
	.uahalf	0x3e0
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF3
	.byte	0x4
	.uahalf	0x3e1
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_TOM_CH_IRQ_EN_Bits"
	.byte	0x4
	.uahalf	0x3e2
	.uaword	0x43ed
	.uleb128 0xb
	.string	"_Ifx_GTM_TOM_CH_IRQ_FORCINT_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x3e5
	.uaword	0x44f1
	.uleb128 0x8
	.string	"TRG_CCU0TC0"
	.byte	0x4
	.uahalf	0x3e7
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TRG_CCU1TC0"
	.byte	0x4
	.uahalf	0x3e8
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF3
	.byte	0x4
	.uahalf	0x3e9
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_TOM_CH_IRQ_FORCINT_Bits"
	.byte	0x4
	.uahalf	0x3ea
	.uaword	0x4480
	.uleb128 0xb
	.string	"_Ifx_GTM_TOM_CH_IRQ_MODE_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x3ed
	.uaword	0x4565
	.uleb128 0x9
	.uaword	.LASF20
	.byte	0x4
	.uahalf	0x3ef
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF3
	.byte	0x4
	.uahalf	0x3f0
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_TOM_CH_IRQ_MODE_Bits"
	.byte	0x4
	.uahalf	0x3f1
	.uaword	0x4519
	.uleb128 0xb
	.string	"_Ifx_GTM_TOM_CH_IRQ_NOTIFY_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x3f4
	.uaword	0x45f0
	.uleb128 0x8
	.string	"CCU0TC"
	.byte	0x4
	.uahalf	0x3f6
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"CCU1TC"
	.byte	0x4
	.uahalf	0x3f7
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF3
	.byte	0x4
	.uahalf	0x3f8
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_TOM_CH_IRQ_NOTIFY_Bits"
	.byte	0x4
	.uahalf	0x3f9
	.uaword	0x458a
	.uleb128 0xb
	.string	"_Ifx_GTM_TOM_CH_SR0_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x3fc
	.uaword	0x465e
	.uleb128 0x8
	.string	"SR0"
	.byte	0x4
	.uahalf	0x3fe
	.uaword	0x3d8
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF1
	.byte	0x4
	.uahalf	0x3ff
	.uaword	0x3d8
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_TOM_CH_SR0_Bits"
	.byte	0x4
	.uahalf	0x400
	.uaword	0x4617
	.uleb128 0xb
	.string	"_Ifx_GTM_TOM_CH_SR1_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x403
	.uaword	0x46c5
	.uleb128 0x8
	.string	"SR1"
	.byte	0x4
	.uahalf	0x405
	.uaword	0x3d8
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF1
	.byte	0x4
	.uahalf	0x406
	.uaword	0x3d8
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_TOM_CH_SR1_Bits"
	.byte	0x4
	.uahalf	0x407
	.uaword	0x467e
	.uleb128 0xb
	.string	"_Ifx_GTM_TOM_CH_STAT_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x40a
	.uaword	0x472c
	.uleb128 0x8
	.string	"OL"
	.byte	0x4
	.uahalf	0x40c
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF12
	.byte	0x4
	.uahalf	0x40d
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1f
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_TOM_CH_STAT_Bits"
	.byte	0x4
	.uahalf	0x40e
	.uaword	0x46e5
	.uleb128 0xb
	.string	"_Ifx_GTM_TOM_TGC0_ACT_TB_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x411
	.uaword	0x47c8
	.uleb128 0x8
	.string	"ACT_TB"
	.byte	0x4
	.uahalf	0x413
	.uaword	0x3d8
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TB_TRIG"
	.byte	0x4
	.uahalf	0x414
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TBU_SEL"
	.byte	0x4
	.uahalf	0x415
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF21
	.byte	0x4
	.uahalf	0x416
	.uaword	0x3d8
	.byte	0x4
	.byte	0x5
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_TOM_TGC0_ACT_TB_Bits"
	.byte	0x4
	.uahalf	0x417
	.uaword	0x474d
	.uleb128 0xb
	.string	"_Ifx_GTM_TOM_TGC0_ENDIS_CTRL_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x41a
	.uaword	0x48bb
	.uleb128 0x9
	.uaword	.LASF35
	.byte	0x4
	.uahalf	0x41c
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF36
	.byte	0x4
	.uahalf	0x41d
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF37
	.byte	0x4
	.uahalf	0x41e
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF38
	.byte	0x4
	.uahalf	0x41f
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF39
	.byte	0x4
	.uahalf	0x420
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF40
	.byte	0x4
	.uahalf	0x421
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF41
	.byte	0x4
	.uahalf	0x422
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF42
	.byte	0x4
	.uahalf	0x423
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF1
	.byte	0x4
	.uahalf	0x424
	.uaword	0x3d8
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_TOM_TGC0_ENDIS_CTRL_Bits"
	.byte	0x4
	.uahalf	0x425
	.uaword	0x47ed
	.uleb128 0xb
	.string	"_Ifx_GTM_TOM_TGC0_ENDIS_STAT_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x428
	.uaword	0x49b2
	.uleb128 0x9
	.uaword	.LASF43
	.byte	0x4
	.uahalf	0x42a
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF44
	.byte	0x4
	.uahalf	0x42b
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF45
	.byte	0x4
	.uahalf	0x42c
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF46
	.byte	0x4
	.uahalf	0x42d
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF47
	.byte	0x4
	.uahalf	0x42e
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF48
	.byte	0x4
	.uahalf	0x42f
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF49
	.byte	0x4
	.uahalf	0x430
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF50
	.byte	0x4
	.uahalf	0x431
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF1
	.byte	0x4
	.uahalf	0x432
	.uaword	0x3d8
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_TOM_TGC0_ENDIS_STAT_Bits"
	.byte	0x4
	.uahalf	0x433
	.uaword	0x48e4
	.uleb128 0xb
	.string	"_Ifx_GTM_TOM_TGC0_FUPD_CTRL_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x436
	.uaword	0x4b26
	.uleb128 0x9
	.uaword	.LASF51
	.byte	0x4
	.uahalf	0x438
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF52
	.byte	0x4
	.uahalf	0x439
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF53
	.byte	0x4
	.uahalf	0x43a
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF54
	.byte	0x4
	.uahalf	0x43b
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF55
	.byte	0x4
	.uahalf	0x43c
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF56
	.byte	0x4
	.uahalf	0x43d
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF57
	.byte	0x4
	.uahalf	0x43e
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF58
	.byte	0x4
	.uahalf	0x43f
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF59
	.byte	0x4
	.uahalf	0x440
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF60
	.byte	0x4
	.uahalf	0x441
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF61
	.byte	0x4
	.uahalf	0x442
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF62
	.byte	0x4
	.uahalf	0x443
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF63
	.byte	0x4
	.uahalf	0x444
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF64
	.byte	0x4
	.uahalf	0x445
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF65
	.byte	0x4
	.uahalf	0x446
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF66
	.byte	0x4
	.uahalf	0x447
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_TOM_TGC0_FUPD_CTRL_Bits"
	.byte	0x4
	.uahalf	0x448
	.uaword	0x49db
	.uleb128 0xb
	.string	"_Ifx_GTM_TOM_TGC0_GLB_CTRL_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x44b
	.uaword	0x4cbc
	.uleb128 0x9
	.uaword	.LASF67
	.byte	0x4
	.uahalf	0x44d
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF12
	.byte	0x4
	.uahalf	0x44e
	.uaword	0x3d8
	.byte	0x4
	.byte	0x7
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF25
	.byte	0x4
	.uahalf	0x44f
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF26
	.byte	0x4
	.uahalf	0x450
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF27
	.byte	0x4
	.uahalf	0x451
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF28
	.byte	0x4
	.uahalf	0x452
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF29
	.byte	0x4
	.uahalf	0x453
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF30
	.byte	0x4
	.uahalf	0x454
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF31
	.byte	0x4
	.uahalf	0x455
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF32
	.byte	0x4
	.uahalf	0x456
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF68
	.byte	0x4
	.uahalf	0x457
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF69
	.byte	0x4
	.uahalf	0x458
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF70
	.byte	0x4
	.uahalf	0x459
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF71
	.byte	0x4
	.uahalf	0x45a
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF72
	.byte	0x4
	.uahalf	0x45b
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF73
	.byte	0x4
	.uahalf	0x45c
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF74
	.byte	0x4
	.uahalf	0x45d
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF75
	.byte	0x4
	.uahalf	0x45e
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_TOM_TGC0_GLB_CTRL_Bits"
	.byte	0x4
	.uahalf	0x45f
	.uaword	0x4b4e
	.uleb128 0xb
	.string	"_Ifx_GTM_TOM_TGC0_INT_TRIG_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x462
	.uaword	0x4daf
	.uleb128 0x9
	.uaword	.LASF76
	.byte	0x4
	.uahalf	0x464
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF77
	.byte	0x4
	.uahalf	0x465
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF78
	.byte	0x4
	.uahalf	0x466
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF79
	.byte	0x4
	.uahalf	0x467
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF80
	.byte	0x4
	.uahalf	0x468
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF81
	.byte	0x4
	.uahalf	0x469
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF82
	.byte	0x4
	.uahalf	0x46a
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF83
	.byte	0x4
	.uahalf	0x46b
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF1
	.byte	0x4
	.uahalf	0x46c
	.uaword	0x3d8
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_TOM_TGC0_INT_TRIG_Bits"
	.byte	0x4
	.uahalf	0x46d
	.uaword	0x4ce3
	.uleb128 0xb
	.string	"_Ifx_GTM_TOM_TGC0_OUTEN_CTRL_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x470
	.uaword	0x4ea4
	.uleb128 0x9
	.uaword	.LASF84
	.byte	0x4
	.uahalf	0x472
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF85
	.byte	0x4
	.uahalf	0x473
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF86
	.byte	0x4
	.uahalf	0x474
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF87
	.byte	0x4
	.uahalf	0x475
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF88
	.byte	0x4
	.uahalf	0x476
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF89
	.byte	0x4
	.uahalf	0x477
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF90
	.byte	0x4
	.uahalf	0x478
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF91
	.byte	0x4
	.uahalf	0x479
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF1
	.byte	0x4
	.uahalf	0x47a
	.uaword	0x3d8
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_TOM_TGC0_OUTEN_CTRL_Bits"
	.byte	0x4
	.uahalf	0x47b
	.uaword	0x4dd6
	.uleb128 0xb
	.string	"_Ifx_GTM_TOM_TGC0_OUTEN_STAT_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x47e
	.uaword	0x4f9b
	.uleb128 0x9
	.uaword	.LASF92
	.byte	0x4
	.uahalf	0x480
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF93
	.byte	0x4
	.uahalf	0x481
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF94
	.byte	0x4
	.uahalf	0x482
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF95
	.byte	0x4
	.uahalf	0x483
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF96
	.byte	0x4
	.uahalf	0x484
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF97
	.byte	0x4
	.uahalf	0x485
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF98
	.byte	0x4
	.uahalf	0x486
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF99
	.byte	0x4
	.uahalf	0x487
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF1
	.byte	0x4
	.uahalf	0x488
	.uaword	0x3d8
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_TOM_TGC0_OUTEN_STAT_Bits"
	.byte	0x4
	.uahalf	0x489
	.uaword	0x4ecd
	.uleb128 0xb
	.string	"_Ifx_GTM_TOM_TGC1_ACT_TB_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x48c
	.uaword	0x503f
	.uleb128 0x8
	.string	"ACT_TB"
	.byte	0x4
	.uahalf	0x48e
	.uaword	0x3d8
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TB_TRIG"
	.byte	0x4
	.uahalf	0x48f
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TBU_SEL"
	.byte	0x4
	.uahalf	0x490
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF21
	.byte	0x4
	.uahalf	0x491
	.uaword	0x3d8
	.byte	0x4
	.byte	0x5
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_TOM_TGC1_ACT_TB_Bits"
	.byte	0x4
	.uahalf	0x492
	.uaword	0x4fc4
	.uleb128 0xb
	.string	"_Ifx_GTM_TOM_TGC1_ENDIS_CTRL_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x495
	.uaword	0x5132
	.uleb128 0x9
	.uaword	.LASF35
	.byte	0x4
	.uahalf	0x497
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF36
	.byte	0x4
	.uahalf	0x498
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF37
	.byte	0x4
	.uahalf	0x499
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF38
	.byte	0x4
	.uahalf	0x49a
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF39
	.byte	0x4
	.uahalf	0x49b
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF40
	.byte	0x4
	.uahalf	0x49c
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF41
	.byte	0x4
	.uahalf	0x49d
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF42
	.byte	0x4
	.uahalf	0x49e
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF1
	.byte	0x4
	.uahalf	0x49f
	.uaword	0x3d8
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_TOM_TGC1_ENDIS_CTRL_Bits"
	.byte	0x4
	.uahalf	0x4a0
	.uaword	0x5064
	.uleb128 0xb
	.string	"_Ifx_GTM_TOM_TGC1_ENDIS_STAT_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x4a3
	.uaword	0x5229
	.uleb128 0x9
	.uaword	.LASF43
	.byte	0x4
	.uahalf	0x4a5
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF44
	.byte	0x4
	.uahalf	0x4a6
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF45
	.byte	0x4
	.uahalf	0x4a7
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF46
	.byte	0x4
	.uahalf	0x4a8
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF47
	.byte	0x4
	.uahalf	0x4a9
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF48
	.byte	0x4
	.uahalf	0x4aa
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF49
	.byte	0x4
	.uahalf	0x4ab
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF50
	.byte	0x4
	.uahalf	0x4ac
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF1
	.byte	0x4
	.uahalf	0x4ad
	.uaword	0x3d8
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_TOM_TGC1_ENDIS_STAT_Bits"
	.byte	0x4
	.uahalf	0x4ae
	.uaword	0x515b
	.uleb128 0xb
	.string	"_Ifx_GTM_TOM_TGC1_FUPD_CTRL_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x4b1
	.uaword	0x539d
	.uleb128 0x9
	.uaword	.LASF51
	.byte	0x4
	.uahalf	0x4b3
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF52
	.byte	0x4
	.uahalf	0x4b4
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF53
	.byte	0x4
	.uahalf	0x4b5
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF54
	.byte	0x4
	.uahalf	0x4b6
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF55
	.byte	0x4
	.uahalf	0x4b7
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF56
	.byte	0x4
	.uahalf	0x4b8
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF57
	.byte	0x4
	.uahalf	0x4b9
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF58
	.byte	0x4
	.uahalf	0x4ba
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF59
	.byte	0x4
	.uahalf	0x4bb
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF60
	.byte	0x4
	.uahalf	0x4bc
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF61
	.byte	0x4
	.uahalf	0x4bd
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF62
	.byte	0x4
	.uahalf	0x4be
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF63
	.byte	0x4
	.uahalf	0x4bf
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF64
	.byte	0x4
	.uahalf	0x4c0
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF65
	.byte	0x4
	.uahalf	0x4c1
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF66
	.byte	0x4
	.uahalf	0x4c2
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_TOM_TGC1_FUPD_CTRL_Bits"
	.byte	0x4
	.uahalf	0x4c3
	.uaword	0x5252
	.uleb128 0xb
	.string	"_Ifx_GTM_TOM_TGC1_GLB_CTRL_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x4c6
	.uaword	0x5533
	.uleb128 0x9
	.uaword	.LASF67
	.byte	0x4
	.uahalf	0x4c8
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF12
	.byte	0x4
	.uahalf	0x4c9
	.uaword	0x3d8
	.byte	0x4
	.byte	0x7
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF25
	.byte	0x4
	.uahalf	0x4ca
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF26
	.byte	0x4
	.uahalf	0x4cb
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF27
	.byte	0x4
	.uahalf	0x4cc
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF28
	.byte	0x4
	.uahalf	0x4cd
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF29
	.byte	0x4
	.uahalf	0x4ce
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF30
	.byte	0x4
	.uahalf	0x4cf
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF31
	.byte	0x4
	.uahalf	0x4d0
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF32
	.byte	0x4
	.uahalf	0x4d1
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF68
	.byte	0x4
	.uahalf	0x4d2
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF69
	.byte	0x4
	.uahalf	0x4d3
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF70
	.byte	0x4
	.uahalf	0x4d4
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF71
	.byte	0x4
	.uahalf	0x4d5
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF72
	.byte	0x4
	.uahalf	0x4d6
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF73
	.byte	0x4
	.uahalf	0x4d7
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF74
	.byte	0x4
	.uahalf	0x4d8
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF75
	.byte	0x4
	.uahalf	0x4d9
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_TOM_TGC1_GLB_CTRL_Bits"
	.byte	0x4
	.uahalf	0x4da
	.uaword	0x53c5
	.uleb128 0xb
	.string	"_Ifx_GTM_TOM_TGC1_INT_TRIG_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x4dd
	.uaword	0x5626
	.uleb128 0x9
	.uaword	.LASF76
	.byte	0x4
	.uahalf	0x4df
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF77
	.byte	0x4
	.uahalf	0x4e0
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF78
	.byte	0x4
	.uahalf	0x4e1
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF79
	.byte	0x4
	.uahalf	0x4e2
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF80
	.byte	0x4
	.uahalf	0x4e3
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF81
	.byte	0x4
	.uahalf	0x4e4
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF82
	.byte	0x4
	.uahalf	0x4e5
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF83
	.byte	0x4
	.uahalf	0x4e6
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF1
	.byte	0x4
	.uahalf	0x4e7
	.uaword	0x3d8
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_TOM_TGC1_INT_TRIG_Bits"
	.byte	0x4
	.uahalf	0x4e8
	.uaword	0x555a
	.uleb128 0xb
	.string	"_Ifx_GTM_TOM_TGC1_OUTEN_CTRL_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x4eb
	.uaword	0x571b
	.uleb128 0x9
	.uaword	.LASF84
	.byte	0x4
	.uahalf	0x4ed
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF85
	.byte	0x4
	.uahalf	0x4ee
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF86
	.byte	0x4
	.uahalf	0x4ef
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF87
	.byte	0x4
	.uahalf	0x4f0
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF88
	.byte	0x4
	.uahalf	0x4f1
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF89
	.byte	0x4
	.uahalf	0x4f2
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF90
	.byte	0x4
	.uahalf	0x4f3
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF91
	.byte	0x4
	.uahalf	0x4f4
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF1
	.byte	0x4
	.uahalf	0x4f5
	.uaword	0x3d8
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_TOM_TGC1_OUTEN_CTRL_Bits"
	.byte	0x4
	.uahalf	0x4f6
	.uaword	0x564d
	.uleb128 0xb
	.string	"_Ifx_GTM_TOM_TGC1_OUTEN_STAT_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x4f9
	.uaword	0x5812
	.uleb128 0x9
	.uaword	.LASF92
	.byte	0x4
	.uahalf	0x4fb
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF93
	.byte	0x4
	.uahalf	0x4fc
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF94
	.byte	0x4
	.uahalf	0x4fd
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF95
	.byte	0x4
	.uahalf	0x4fe
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF96
	.byte	0x4
	.uahalf	0x4ff
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF97
	.byte	0x4
	.uahalf	0x500
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF98
	.byte	0x4
	.uahalf	0x501
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF99
	.byte	0x4
	.uahalf	0x502
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF1
	.byte	0x4
	.uahalf	0x503
	.uaword	0x3d8
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_TOM_TGC1_OUTEN_STAT_Bits"
	.byte	0x4
	.uahalf	0x504
	.uaword	0x5744
	.uleb128 0xc
	.byte	0x4
	.byte	0x4
	.uahalf	0x50c
	.uaword	0x5863
	.uleb128 0xd
	.string	"U"
	.byte	0x4
	.uahalf	0x50e
	.uaword	0xf7
	.uleb128 0xd
	.string	"I"
	.byte	0x4
	.uahalf	0x50f
	.uaword	0xe0
	.uleb128 0xd
	.string	"B"
	.byte	0x4
	.uahalf	0x510
	.uaword	0x3dd
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_ACCEN0"
	.byte	0x4
	.uahalf	0x511
	.uaword	0x583b
	.uleb128 0xc
	.byte	0x4
	.byte	0x4
	.uahalf	0x514
	.uaword	0x58a2
	.uleb128 0xd
	.string	"U"
	.byte	0x4
	.uahalf	0x516
	.uaword	0xf7
	.uleb128 0xd
	.string	"I"
	.byte	0x4
	.uahalf	0x517
	.uaword	0xe0
	.uleb128 0xd
	.string	"B"
	.byte	0x4
	.uahalf	0x518
	.uaword	0x427
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_ACCEN1"
	.byte	0x4
	.uahalf	0x519
	.uaword	0x587a
	.uleb128 0xc
	.byte	0x4
	.byte	0x4
	.uahalf	0x51c
	.uaword	0x58e1
	.uleb128 0xd
	.string	"U"
	.byte	0x4
	.uahalf	0x51e
	.uaword	0xf7
	.uleb128 0xd
	.string	"I"
	.byte	0x4
	.uahalf	0x51f
	.uaword	0xe0
	.uleb128 0xd
	.string	"B"
	.byte	0x4
	.uahalf	0x520
	.uaword	0x4bf
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_ADCTRIG0OUT0"
	.byte	0x4
	.uahalf	0x521
	.uaword	0x58b9
	.uleb128 0xc
	.byte	0x4
	.byte	0x4
	.uahalf	0x524
	.uaword	0x5926
	.uleb128 0xd
	.string	"U"
	.byte	0x4
	.uahalf	0x526
	.uaword	0xf7
	.uleb128 0xd
	.string	"I"
	.byte	0x4
	.uahalf	0x527
	.uaword	0xe0
	.uleb128 0xd
	.string	"B"
	.byte	0x4
	.uahalf	0x528
	.uaword	0x55d
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_ADCTRIG1OUT0"
	.byte	0x4
	.uahalf	0x529
	.uaword	0x58fe
	.uleb128 0xc
	.byte	0x4
	.byte	0x4
	.uahalf	0x52c
	.uaword	0x596b
	.uleb128 0xd
	.string	"U"
	.byte	0x4
	.uahalf	0x52e
	.uaword	0xf7
	.uleb128 0xd
	.string	"I"
	.byte	0x4
	.uahalf	0x52f
	.uaword	0xe0
	.uleb128 0xd
	.string	"B"
	.byte	0x4
	.uahalf	0x530
	.uaword	0x5dd
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_AEI_ADDR_XPT"
	.byte	0x4
	.uahalf	0x531
	.uaword	0x5943
	.uleb128 0xc
	.byte	0x4
	.byte	0x4
	.uahalf	0x534
	.uaword	0x59b0
	.uleb128 0xd
	.string	"U"
	.byte	0x4
	.uahalf	0x536
	.uaword	0xf7
	.uleb128 0xd
	.string	"I"
	.byte	0x4
	.uahalf	0x537
	.uaword	0xe0
	.uleb128 0xd
	.string	"B"
	.byte	0x4
	.uahalf	0x538
	.uaword	0x719
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_BRIDGE_MODE"
	.byte	0x4
	.uahalf	0x539
	.uaword	0x5988
	.uleb128 0xc
	.byte	0x4
	.byte	0x4
	.uahalf	0x53c
	.uaword	0x59f4
	.uleb128 0xd
	.string	"U"
	.byte	0x4
	.uahalf	0x53e
	.uaword	0xf7
	.uleb128 0xd
	.string	"I"
	.byte	0x4
	.uahalf	0x53f
	.uaword	0xe0
	.uleb128 0xd
	.string	"B"
	.byte	0x4
	.uahalf	0x540
	.uaword	0x7ef
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_BRIDGE_PTR1"
	.byte	0x4
	.uahalf	0x541
	.uaword	0x59cc
	.uleb128 0xc
	.byte	0x4
	.byte	0x4
	.uahalf	0x544
	.uaword	0x5a38
	.uleb128 0xd
	.string	"U"
	.byte	0x4
	.uahalf	0x546
	.uaword	0xf7
	.uleb128 0xd
	.string	"I"
	.byte	0x4
	.uahalf	0x547
	.uaword	0xe0
	.uleb128 0xd
	.string	"B"
	.byte	0x4
	.uahalf	0x548
	.uaword	0x85d
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_BRIDGE_PTR2"
	.byte	0x4
	.uahalf	0x549
	.uaword	0x5a10
	.uleb128 0xc
	.byte	0x4
	.byte	0x4
	.uahalf	0x54c
	.uaword	0x5a7c
	.uleb128 0xd
	.string	"U"
	.byte	0x4
	.uahalf	0x54e
	.uaword	0xf7
	.uleb128 0xd
	.string	"I"
	.byte	0x4
	.uahalf	0x54f
	.uaword	0xe0
	.uleb128 0xd
	.string	"B"
	.byte	0x4
	.uahalf	0x550
	.uaword	0x8f0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_CLC"
	.byte	0x4
	.uahalf	0x551
	.uaword	0x5a54
	.uleb128 0xc
	.byte	0x4
	.byte	0x4
	.uahalf	0x554
	.uaword	0x5ab8
	.uleb128 0xd
	.string	"U"
	.byte	0x4
	.uahalf	0x556
	.uaword	0xf7
	.uleb128 0xd
	.string	"I"
	.byte	0x4
	.uahalf	0x557
	.uaword	0xe0
	.uleb128 0xd
	.string	"B"
	.byte	0x4
	.uahalf	0x558
	.uaword	0x951
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_CMU_CLK0_5_CTRL"
	.byte	0x4
	.uahalf	0x559
	.uaword	0x5a90
	.uleb128 0xc
	.byte	0x4
	.byte	0x4
	.uahalf	0x55c
	.uaword	0x5b00
	.uleb128 0xd
	.string	"U"
	.byte	0x4
	.uahalf	0x55e
	.uaword	0xf7
	.uleb128 0xd
	.string	"I"
	.byte	0x4
	.uahalf	0x55f
	.uaword	0xe0
	.uleb128 0xd
	.string	"B"
	.byte	0x4
	.uahalf	0x560
	.uaword	0x9d3
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_CMU_CLK_6_CTRL"
	.byte	0x4
	.uahalf	0x561
	.uaword	0x5ad8
	.uleb128 0xc
	.byte	0x4
	.byte	0x4
	.uahalf	0x564
	.uaword	0x5b47
	.uleb128 0xd
	.string	"U"
	.byte	0x4
	.uahalf	0x566
	.uaword	0xf7
	.uleb128 0xd
	.string	"I"
	.byte	0x4
	.uahalf	0x567
	.uaword	0xe0
	.uleb128 0xd
	.string	"B"
	.byte	0x4
	.uahalf	0x568
	.uaword	0xa54
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_CMU_CLK_7_CTRL"
	.byte	0x4
	.uahalf	0x569
	.uaword	0x5b1f
	.uleb128 0xc
	.byte	0x4
	.byte	0x4
	.uahalf	0x56c
	.uaword	0x5b8e
	.uleb128 0xd
	.string	"U"
	.byte	0x4
	.uahalf	0x56e
	.uaword	0xf7
	.uleb128 0xd
	.string	"I"
	.byte	0x4
	.uahalf	0x56f
	.uaword	0xe0
	.uleb128 0xd
	.string	"B"
	.byte	0x4
	.uahalf	0x570
	.uaword	0xbaa
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_CMU_CLK_EN"
	.byte	0x4
	.uahalf	0x571
	.uaword	0x5b66
	.uleb128 0xc
	.byte	0x4
	.byte	0x4
	.uahalf	0x574
	.uaword	0x5bd1
	.uleb128 0xd
	.string	"U"
	.byte	0x4
	.uahalf	0x576
	.uaword	0xf7
	.uleb128 0xd
	.string	"I"
	.byte	0x4
	.uahalf	0x577
	.uaword	0xe0
	.uleb128 0xd
	.string	"B"
	.byte	0x4
	.uahalf	0x578
	.uaword	0xc14
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_CMU_ECLK_DEN"
	.byte	0x4
	.uahalf	0x579
	.uaword	0x5ba9
	.uleb128 0xc
	.byte	0x4
	.byte	0x4
	.uahalf	0x57c
	.uaword	0x5c16
	.uleb128 0xd
	.string	"U"
	.byte	0x4
	.uahalf	0x57e
	.uaword	0xf7
	.uleb128 0xd
	.string	"I"
	.byte	0x4
	.uahalf	0x57f
	.uaword	0xe0
	.uleb128 0xd
	.string	"B"
	.byte	0x4
	.uahalf	0x580
	.uaword	0xc80
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_CMU_ECLK_NUM"
	.byte	0x4
	.uahalf	0x581
	.uaword	0x5bee
	.uleb128 0xc
	.byte	0x4
	.byte	0x4
	.uahalf	0x584
	.uaword	0x5c5b
	.uleb128 0xd
	.string	"U"
	.byte	0x4
	.uahalf	0x586
	.uaword	0xf7
	.uleb128 0xd
	.string	"I"
	.byte	0x4
	.uahalf	0x587
	.uaword	0xe0
	.uleb128 0xd
	.string	"B"
	.byte	0x4
	.uahalf	0x588
	.uaword	0xcef
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_CMU_FXCLK_CTRL"
	.byte	0x4
	.uahalf	0x589
	.uaword	0x5c33
	.uleb128 0xc
	.byte	0x4
	.byte	0x4
	.uahalf	0x58c
	.uaword	0x5ca2
	.uleb128 0xd
	.string	"U"
	.byte	0x4
	.uahalf	0x58e
	.uaword	0xf7
	.uleb128 0xd
	.string	"I"
	.byte	0x4
	.uahalf	0x58f
	.uaword	0xe0
	.uleb128 0xd
	.string	"B"
	.byte	0x4
	.uahalf	0x590
	.uaword	0xd58
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_CMU_GCLK_DEN"
	.byte	0x4
	.uahalf	0x591
	.uaword	0x5c7a
	.uleb128 0xc
	.byte	0x4
	.byte	0x4
	.uahalf	0x594
	.uaword	0x5ce7
	.uleb128 0xd
	.string	"U"
	.byte	0x4
	.uahalf	0x596
	.uaword	0xf7
	.uleb128 0xd
	.string	"I"
	.byte	0x4
	.uahalf	0x597
	.uaword	0xe0
	.uleb128 0xd
	.string	"B"
	.byte	0x4
	.uahalf	0x598
	.uaword	0xdbf
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_CMU_GCLK_NUM"
	.byte	0x4
	.uahalf	0x599
	.uaword	0x5cbf
	.uleb128 0xc
	.byte	0x4
	.byte	0x4
	.uahalf	0x59c
	.uaword	0x5d2c
	.uleb128 0xd
	.string	"U"
	.byte	0x4
	.uahalf	0x59e
	.uaword	0xf7
	.uleb128 0xd
	.string	"I"
	.byte	0x4
	.uahalf	0x59f
	.uaword	0xe0
	.uleb128 0xd
	.string	"B"
	.byte	0x4
	.uahalf	0x5a0
	.uaword	0xe63
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_CTRL"
	.byte	0x4
	.uahalf	0x5a1
	.uaword	0x5d04
	.uleb128 0xc
	.byte	0x4
	.byte	0x4
	.uahalf	0x5a4
	.uaword	0x5d69
	.uleb128 0xd
	.string	"U"
	.byte	0x4
	.uahalf	0x5a6
	.uaword	0xf7
	.uleb128 0xd
	.string	"I"
	.byte	0x4
	.uahalf	0x5a7
	.uaword	0xe0
	.uleb128 0xd
	.string	"B"
	.byte	0x4
	.uahalf	0x5a8
	.uaword	0x107a
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_DTM_CH_CTRL1"
	.byte	0x4
	.uahalf	0x5a9
	.uaword	0x5d41
	.uleb128 0xc
	.byte	0x4
	.byte	0x4
	.uahalf	0x5ac
	.uaword	0x5dae
	.uleb128 0xd
	.string	"U"
	.byte	0x4
	.uahalf	0x5ae
	.uaword	0xf7
	.uleb128 0xd
	.string	"I"
	.byte	0x4
	.uahalf	0x5af
	.uaword	0xe0
	.uleb128 0xd
	.string	"B"
	.byte	0x4
	.uahalf	0x5b0
	.uaword	0x1349
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_DTM_CH_CTRL2"
	.byte	0x4
	.uahalf	0x5b1
	.uaword	0x5d86
	.uleb128 0xc
	.byte	0x4
	.byte	0x4
	.uahalf	0x5b4
	.uaword	0x5df3
	.uleb128 0xd
	.string	"U"
	.byte	0x4
	.uahalf	0x5b6
	.uaword	0xf7
	.uleb128 0xd
	.string	"I"
	.byte	0x4
	.uahalf	0x5b7
	.uaword	0xe0
	.uleb128 0xd
	.string	"B"
	.byte	0x4
	.uahalf	0x5b8
	.uaword	0x167b
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_DTM_CH_CTRL2_SR"
	.byte	0x4
	.uahalf	0x5b9
	.uaword	0x5dcb
	.uleb128 0xc
	.byte	0x4
	.byte	0x4
	.uahalf	0x5bc
	.uaword	0x5e3b
	.uleb128 0xd
	.string	"U"
	.byte	0x4
	.uahalf	0x5be
	.uaword	0xf7
	.uleb128 0xd
	.string	"I"
	.byte	0x4
	.uahalf	0x5bf
	.uaword	0xe0
	.uleb128 0xd
	.string	"B"
	.byte	0x4
	.uahalf	0x5c0
	.uaword	0x1719
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_DTM_CTRL"
	.byte	0x4
	.uahalf	0x5c1
	.uaword	0x5e13
	.uleb128 0xc
	.byte	0x4
	.byte	0x4
	.uahalf	0x5c4
	.uaword	0x5e7c
	.uleb128 0xd
	.string	"U"
	.byte	0x4
	.uahalf	0x5c6
	.uaword	0xf7
	.uleb128 0xd
	.string	"I"
	.byte	0x4
	.uahalf	0x5c7
	.uaword	0xe0
	.uleb128 0xd
	.string	"B"
	.byte	0x4
	.uahalf	0x5c8
	.uaword	0x17b2
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_DTM_DTV_CH"
	.byte	0x4
	.uahalf	0x5c9
	.uaword	0x5e54
	.uleb128 0xc
	.byte	0x4
	.byte	0x4
	.uahalf	0x5cc
	.uaword	0x5ebf
	.uleb128 0xd
	.string	"U"
	.byte	0x4
	.uahalf	0x5ce
	.uaword	0xf7
	.uleb128 0xd
	.string	"I"
	.byte	0x4
	.uahalf	0x5cf
	.uaword	0xe0
	.uleb128 0xd
	.string	"B"
	.byte	0x4
	.uahalf	0x5d0
	.uaword	0x188f
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_DTM_PS_CTRL"
	.byte	0x4
	.uahalf	0x5d1
	.uaword	0x5e97
	.uleb128 0xc
	.byte	0x4
	.byte	0x4
	.uahalf	0x5d4
	.uaword	0x5f03
	.uleb128 0xd
	.string	"U"
	.byte	0x4
	.uahalf	0x5d6
	.uaword	0xf7
	.uleb128 0xd
	.string	"I"
	.byte	0x4
	.uahalf	0x5d7
	.uaword	0xe0
	.uleb128 0xd
	.string	"B"
	.byte	0x4
	.uahalf	0x5d8
	.uaword	0x1969
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_EIRQ_EN"
	.byte	0x4
	.uahalf	0x5d9
	.uaword	0x5edb
	.uleb128 0xc
	.byte	0x4
	.byte	0x4
	.uahalf	0x5dc
	.uaword	0x5f43
	.uleb128 0xd
	.string	"U"
	.byte	0x4
	.uahalf	0x5de
	.uaword	0xf7
	.uleb128 0xd
	.string	"I"
	.byte	0x4
	.uahalf	0x5df
	.uaword	0xe0
	.uleb128 0xd
	.string	"B"
	.byte	0x4
	.uahalf	0x5e0
	.uaword	0x1add
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_HW_CONF"
	.byte	0x4
	.uahalf	0x5e1
	.uaword	0x5f1b
	.uleb128 0xc
	.byte	0x4
	.byte	0x4
	.uahalf	0x5e4
	.uaword	0x5f83
	.uleb128 0xd
	.string	"U"
	.byte	0x4
	.uahalf	0x5e6
	.uaword	0xf7
	.uleb128 0xd
	.string	"I"
	.byte	0x4
	.uahalf	0x5e7
	.uaword	0xe0
	.uleb128 0xd
	.string	"B"
	.byte	0x4
	.uahalf	0x5e8
	.uaword	0x1b57
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_ICM_IRQG_0"
	.byte	0x4
	.uahalf	0x5e9
	.uaword	0x5f5b
	.uleb128 0xc
	.byte	0x4
	.byte	0x4
	.uahalf	0x5ec
	.uaword	0x5fc6
	.uleb128 0xd
	.string	"U"
	.byte	0x4
	.uahalf	0x5ee
	.uaword	0xf7
	.uleb128 0xd
	.string	"I"
	.byte	0x4
	.uahalf	0x5ef
	.uaword	0xe0
	.uleb128 0xd
	.string	"B"
	.byte	0x4
	.uahalf	0x5f0
	.uaword	0x1c84
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_ICM_IRQG_2"
	.byte	0x4
	.uahalf	0x5f1
	.uaword	0x5f9e
	.uleb128 0xc
	.byte	0x4
	.byte	0x4
	.uahalf	0x5f4
	.uaword	0x6009
	.uleb128 0xd
	.string	"U"
	.byte	0x4
	.uahalf	0x5f6
	.uaword	0xf7
	.uleb128 0xd
	.string	"I"
	.byte	0x4
	.uahalf	0x5f7
	.uaword	0xe0
	.uleb128 0xd
	.string	"B"
	.byte	0x4
	.uahalf	0x5f8
	.uaword	0x2033
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_ICM_IRQG_6"
	.byte	0x4
	.uahalf	0x5f9
	.uaword	0x5fe1
	.uleb128 0xc
	.byte	0x4
	.byte	0x4
	.uahalf	0x5fc
	.uaword	0x604c
	.uleb128 0xd
	.string	"U"
	.byte	0x4
	.uahalf	0x5fe
	.uaword	0xf7
	.uleb128 0xd
	.string	"I"
	.byte	0x4
	.uahalf	0x5ff
	.uaword	0xe0
	.uleb128 0xd
	.string	"B"
	.byte	0x4
	.uahalf	0x600
	.uaword	0x216b
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_ICM_IRQG_CEI1"
	.byte	0x4
	.uahalf	0x601
	.uaword	0x6024
	.uleb128 0xc
	.byte	0x4
	.byte	0x4
	.uahalf	0x604
	.uaword	0x6092
	.uleb128 0xd
	.string	"U"
	.byte	0x4
	.uahalf	0x606
	.uaword	0xf7
	.uleb128 0xd
	.string	"I"
	.byte	0x4
	.uahalf	0x607
	.uaword	0xe0
	.uleb128 0xd
	.string	"B"
	.byte	0x4
	.uahalf	0x608
	.uaword	0x2206
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_ICM_IRQG_MEI"
	.byte	0x4
	.uahalf	0x609
	.uaword	0x606a
	.uleb128 0xc
	.byte	0x4
	.byte	0x4
	.uahalf	0x60c
	.uaword	0x60d7
	.uleb128 0xd
	.string	"U"
	.byte	0x4
	.uahalf	0x60e
	.uaword	0xf7
	.uleb128 0xd
	.string	"I"
	.byte	0x4
	.uahalf	0x60f
	.uaword	0xe0
	.uleb128 0xd
	.string	"B"
	.byte	0x4
	.uahalf	0x610
	.uaword	0x22b2
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_INOUTSEL_CAN_OUTSEL"
	.byte	0x4
	.uahalf	0x611
	.uaword	0x60af
	.uleb128 0xc
	.byte	0x4
	.byte	0x4
	.uahalf	0x614
	.uaword	0x6123
	.uleb128 0xd
	.string	"U"
	.byte	0x4
	.uahalf	0x616
	.uaword	0xf7
	.uleb128 0xd
	.string	"I"
	.byte	0x4
	.uahalf	0x617
	.uaword	0xe0
	.uleb128 0xd
	.string	"B"
	.byte	0x4
	.uahalf	0x618
	.uaword	0x243b
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_INOUTSEL_T_OUTSEL"
	.byte	0x4
	.uahalf	0x619
	.uaword	0x60fb
	.uleb128 0xc
	.byte	0x4
	.byte	0x4
	.uahalf	0x61c
	.uaword	0x616d
	.uleb128 0xd
	.string	"U"
	.byte	0x4
	.uahalf	0x61e
	.uaword	0xf7
	.uleb128 0xd
	.string	"I"
	.byte	0x4
	.uahalf	0x61f
	.uaword	0xe0
	.uleb128 0xd
	.string	"B"
	.byte	0x4
	.uahalf	0x620
	.uaword	0x2535
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_INOUTSEL_TIM_INSEL"
	.byte	0x4
	.uahalf	0x621
	.uaword	0x6145
	.uleb128 0xc
	.byte	0x4
	.byte	0x4
	.uahalf	0x624
	.uaword	0x61b8
	.uleb128 0xd
	.string	"U"
	.byte	0x4
	.uahalf	0x626
	.uaword	0xf7
	.uleb128 0xd
	.string	"I"
	.byte	0x4
	.uahalf	0x627
	.uaword	0xe0
	.uleb128 0xd
	.string	"B"
	.byte	0x4
	.uahalf	0x628
	.uaword	0x2611
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_IRQ_EN"
	.byte	0x4
	.uahalf	0x629
	.uaword	0x6190
	.uleb128 0xc
	.byte	0x4
	.byte	0x4
	.uahalf	0x62c
	.uaword	0x61f7
	.uleb128 0xd
	.string	"U"
	.byte	0x4
	.uahalf	0x62e
	.uaword	0xf7
	.uleb128 0xd
	.string	"I"
	.byte	0x4
	.uahalf	0x62f
	.uaword	0xe0
	.uleb128 0xd
	.string	"B"
	.byte	0x4
	.uahalf	0x630
	.uaword	0x26da
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_IRQ_FORCINT"
	.byte	0x4
	.uahalf	0x631
	.uaword	0x61cf
	.uleb128 0xc
	.byte	0x4
	.byte	0x4
	.uahalf	0x634
	.uaword	0x623b
	.uleb128 0xd
	.string	"U"
	.byte	0x4
	.uahalf	0x636
	.uaword	0xf7
	.uleb128 0xd
	.string	"I"
	.byte	0x4
	.uahalf	0x637
	.uaword	0xe0
	.uleb128 0xd
	.string	"B"
	.byte	0x4
	.uahalf	0x638
	.uaword	0x2740
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_IRQ_MODE"
	.byte	0x4
	.uahalf	0x639
	.uaword	0x6213
	.uleb128 0xc
	.byte	0x4
	.byte	0x4
	.uahalf	0x63c
	.uaword	0x627c
	.uleb128 0xd
	.string	"U"
	.byte	0x4
	.uahalf	0x63e
	.uaword	0xf7
	.uleb128 0xd
	.string	"I"
	.byte	0x4
	.uahalf	0x63f
	.uaword	0xe0
	.uleb128 0xd
	.string	"B"
	.byte	0x4
	.uahalf	0x640
	.uaword	0x27fa
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_IRQ_NOTIFY"
	.byte	0x4
	.uahalf	0x641
	.uaword	0x6254
	.uleb128 0xc
	.byte	0x4
	.byte	0x4
	.uahalf	0x644
	.uaword	0x62bf
	.uleb128 0xd
	.string	"U"
	.byte	0x4
	.uahalf	0x646
	.uaword	0xf7
	.uleb128 0xd
	.string	"I"
	.byte	0x4
	.uahalf	0x647
	.uaword	0xe0
	.uleb128 0xd
	.string	"B"
	.byte	0x4
	.uahalf	0x648
	.uaword	0x2872
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_KRST0"
	.byte	0x4
	.uahalf	0x649
	.uaword	0x6297
	.uleb128 0xc
	.byte	0x4
	.byte	0x4
	.uahalf	0x64c
	.uaword	0x62fd
	.uleb128 0xd
	.string	"U"
	.byte	0x4
	.uahalf	0x64e
	.uaword	0xf7
	.uleb128 0xd
	.string	"I"
	.byte	0x4
	.uahalf	0x64f
	.uaword	0xe0
	.uleb128 0xd
	.string	"B"
	.byte	0x4
	.uahalf	0x650
	.uaword	0x28cf
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_KRST1"
	.byte	0x4
	.uahalf	0x651
	.uaword	0x62d5
	.uleb128 0xc
	.byte	0x4
	.byte	0x4
	.uahalf	0x654
	.uaword	0x633b
	.uleb128 0xd
	.string	"U"
	.byte	0x4
	.uahalf	0x656
	.uaword	0xf7
	.uleb128 0xd
	.string	"I"
	.byte	0x4
	.uahalf	0x657
	.uaword	0xe0
	.uleb128 0xd
	.string	"B"
	.byte	0x4
	.uahalf	0x658
	.uaword	0x292e
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_KRSTCLR"
	.byte	0x4
	.uahalf	0x659
	.uaword	0x6313
	.uleb128 0xc
	.byte	0x4
	.byte	0x4
	.uahalf	0x65c
	.uaword	0x637b
	.uleb128 0xd
	.string	"U"
	.byte	0x4
	.uahalf	0x65e
	.uaword	0xf7
	.uleb128 0xd
	.string	"I"
	.byte	0x4
	.uahalf	0x65f
	.uaword	0xe0
	.uleb128 0xd
	.string	"B"
	.byte	0x4
	.uahalf	0x660
	.uaword	0x29c6
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_OCS"
	.byte	0x4
	.uahalf	0x661
	.uaword	0x6353
	.uleb128 0xc
	.byte	0x4
	.byte	0x4
	.uahalf	0x664
	.uaword	0x63b7
	.uleb128 0xd
	.string	"U"
	.byte	0x4
	.uahalf	0x666
	.uaword	0xf7
	.uleb128 0xd
	.string	"I"
	.byte	0x4
	.uahalf	0x667
	.uaword	0xe0
	.uleb128 0xd
	.string	"B"
	.byte	0x4
	.uahalf	0x668
	.uaword	0x2a34
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_ODA"
	.byte	0x4
	.uahalf	0x669
	.uaword	0x638f
	.uleb128 0xc
	.byte	0x4
	.byte	0x4
	.uahalf	0x66c
	.uaword	0x63f3
	.uleb128 0xd
	.string	"U"
	.byte	0x4
	.uahalf	0x66e
	.uaword	0xf7
	.uleb128 0xd
	.string	"I"
	.byte	0x4
	.uahalf	0x66f
	.uaword	0xe0
	.uleb128 0xd
	.string	"B"
	.byte	0x4
	.uahalf	0x670
	.uaword	0x2ab2
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_OTBU0T"
	.byte	0x4
	.uahalf	0x671
	.uaword	0x63cb
	.uleb128 0xc
	.byte	0x4
	.byte	0x4
	.uahalf	0x674
	.uaword	0x6432
	.uleb128 0xd
	.string	"U"
	.byte	0x4
	.uahalf	0x676
	.uaword	0xf7
	.uleb128 0xd
	.string	"I"
	.byte	0x4
	.uahalf	0x677
	.uaword	0xe0
	.uleb128 0xd
	.string	"B"
	.byte	0x4
	.uahalf	0x678
	.uaword	0x2b33
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_OTBU1T"
	.byte	0x4
	.uahalf	0x679
	.uaword	0x640a
	.uleb128 0xc
	.byte	0x4
	.byte	0x4
	.uahalf	0x67c
	.uaword	0x6471
	.uleb128 0xd
	.string	"U"
	.byte	0x4
	.uahalf	0x67e
	.uaword	0xf7
	.uleb128 0xd
	.string	"I"
	.byte	0x4
	.uahalf	0x67f
	.uaword	0xe0
	.uleb128 0xd
	.string	"B"
	.byte	0x4
	.uahalf	0x680
	.uaword	0x2bb4
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_OTBU2T"
	.byte	0x4
	.uahalf	0x681
	.uaword	0x6449
	.uleb128 0xc
	.byte	0x4
	.byte	0x4
	.uahalf	0x684
	.uaword	0x64b0
	.uleb128 0xd
	.string	"U"
	.byte	0x4
	.uahalf	0x686
	.uaword	0xf7
	.uleb128 0xd
	.string	"I"
	.byte	0x4
	.uahalf	0x687
	.uaword	0xe0
	.uleb128 0xd
	.string	"B"
	.byte	0x4
	.uahalf	0x688
	.uaword	0x2ce6
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_OTSC0"
	.byte	0x4
	.uahalf	0x689
	.uaword	0x6488
	.uleb128 0xc
	.byte	0x4
	.byte	0x4
	.uahalf	0x68c
	.uaword	0x64ee
	.uleb128 0xd
	.string	"U"
	.byte	0x4
	.uahalf	0x68e
	.uaword	0xf7
	.uleb128 0xd
	.string	"I"
	.byte	0x4
	.uahalf	0x68f
	.uaword	0xe0
	.uleb128 0xd
	.string	"B"
	.byte	0x4
	.uahalf	0x690
	.uaword	0x2d90
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_OTSS"
	.byte	0x4
	.uahalf	0x691
	.uaword	0x64c6
	.uleb128 0xc
	.byte	0x4
	.byte	0x4
	.uahalf	0x694
	.uaword	0x652b
	.uleb128 0xd
	.string	"U"
	.byte	0x4
	.uahalf	0x696
	.uaword	0xf7
	.uleb128 0xd
	.string	"I"
	.byte	0x4
	.uahalf	0x697
	.uaword	0xe0
	.uleb128 0xd
	.string	"B"
	.byte	0x4
	.uahalf	0x698
	.uaword	0x2e5a
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_REV"
	.byte	0x4
	.uahalf	0x699
	.uaword	0x6503
	.uleb128 0xc
	.byte	0x4
	.byte	0x4
	.uahalf	0x69c
	.uaword	0x6567
	.uleb128 0xd
	.string	"U"
	.byte	0x4
	.uahalf	0x69e
	.uaword	0xf7
	.uleb128 0xd
	.string	"I"
	.byte	0x4
	.uahalf	0x69f
	.uaword	0xe0
	.uleb128 0xd
	.string	"B"
	.byte	0x4
	.uahalf	0x6a0
	.uaword	0x2eb3
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_RST"
	.byte	0x4
	.uahalf	0x6a1
	.uaword	0x653f
	.uleb128 0xc
	.byte	0x4
	.byte	0x4
	.uahalf	0x6a4
	.uaword	0x65a3
	.uleb128 0xd
	.string	"U"
	.byte	0x4
	.uahalf	0x6a6
	.uaword	0xf7
	.uleb128 0xd
	.string	"I"
	.byte	0x4
	.uahalf	0x6a7
	.uaword	0xe0
	.uleb128 0xd
	.string	"B"
	.byte	0x4
	.uahalf	0x6a8
	.uaword	0x2f16
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_TBU_CH0_BASE"
	.byte	0x4
	.uahalf	0x6a9
	.uaword	0x657b
	.uleb128 0xc
	.byte	0x4
	.byte	0x4
	.uahalf	0x6ac
	.uaword	0x65e8
	.uleb128 0xd
	.string	"U"
	.byte	0x4
	.uahalf	0x6ae
	.uaword	0xf7
	.uleb128 0xd
	.string	"I"
	.byte	0x4
	.uahalf	0x6af
	.uaword	0xe0
	.uleb128 0xd
	.string	"B"
	.byte	0x4
	.uahalf	0x6b0
	.uaword	0x2f97
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_TBU_CH0_CTRL"
	.byte	0x4
	.uahalf	0x6b1
	.uaword	0x65c0
	.uleb128 0xc
	.byte	0x4
	.byte	0x4
	.uahalf	0x6b4
	.uaword	0x662d
	.uleb128 0xd
	.string	"U"
	.byte	0x4
	.uahalf	0x6b6
	.uaword	0xf7
	.uleb128 0xd
	.string	"I"
	.byte	0x4
	.uahalf	0x6b7
	.uaword	0xe0
	.uleb128 0xd
	.string	"B"
	.byte	0x4
	.uahalf	0x6b8
	.uaword	0x3003
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_TBU_CH1_BASE"
	.byte	0x4
	.uahalf	0x6b9
	.uaword	0x6605
	.uleb128 0xc
	.byte	0x4
	.byte	0x4
	.uahalf	0x6bc
	.uaword	0x6672
	.uleb128 0xd
	.string	"U"
	.byte	0x4
	.uahalf	0x6be
	.uaword	0xf7
	.uleb128 0xd
	.string	"I"
	.byte	0x4
	.uahalf	0x6bf
	.uaword	0xe0
	.uleb128 0xd
	.string	"B"
	.byte	0x4
	.uahalf	0x6c0
	.uaword	0x3084
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_TBU_CH1_CTRL"
	.byte	0x4
	.uahalf	0x6c1
	.uaword	0x664a
	.uleb128 0xc
	.byte	0x4
	.byte	0x4
	.uahalf	0x6c4
	.uaword	0x66b7
	.uleb128 0xd
	.string	"U"
	.byte	0x4
	.uahalf	0x6c6
	.uaword	0xf7
	.uleb128 0xd
	.string	"I"
	.byte	0x4
	.uahalf	0x6c7
	.uaword	0xe0
	.uleb128 0xd
	.string	"B"
	.byte	0x4
	.uahalf	0x6c8
	.uaword	0x30f0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_TBU_CH2_BASE"
	.byte	0x4
	.uahalf	0x6c9
	.uaword	0x668f
	.uleb128 0xc
	.byte	0x4
	.byte	0x4
	.uahalf	0x6cc
	.uaword	0x66fc
	.uleb128 0xd
	.string	"U"
	.byte	0x4
	.uahalf	0x6ce
	.uaword	0xf7
	.uleb128 0xd
	.string	"I"
	.byte	0x4
	.uahalf	0x6cf
	.uaword	0xe0
	.uleb128 0xd
	.string	"B"
	.byte	0x4
	.uahalf	0x6d0
	.uaword	0x3171
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_TBU_CH2_CTRL"
	.byte	0x4
	.uahalf	0x6d1
	.uaword	0x66d4
	.uleb128 0xc
	.byte	0x4
	.byte	0x4
	.uahalf	0x6d4
	.uaword	0x6741
	.uleb128 0xd
	.string	"U"
	.byte	0x4
	.uahalf	0x6d6
	.uaword	0xf7
	.uleb128 0xd
	.string	"I"
	.byte	0x4
	.uahalf	0x6d7
	.uaword	0xe0
	.uleb128 0xd
	.string	"B"
	.byte	0x4
	.uahalf	0x6d8
	.uaword	0x320e
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_TBU_CHEN"
	.byte	0x4
	.uahalf	0x6d9
	.uaword	0x6719
	.uleb128 0xc
	.byte	0x4
	.byte	0x4
	.uahalf	0x6dc
	.uaword	0x6782
	.uleb128 0xd
	.string	"U"
	.byte	0x4
	.uahalf	0x6de
	.uaword	0xf7
	.uleb128 0xd
	.string	"I"
	.byte	0x4
	.uahalf	0x6df
	.uaword	0xe0
	.uleb128 0xd
	.string	"B"
	.byte	0x4
	.uahalf	0x6e0
	.uaword	0x3315
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_TIM_AUX_IN_SRC"
	.byte	0x4
	.uahalf	0x6e1
	.uaword	0x675a
	.uleb128 0xc
	.byte	0x4
	.byte	0x4
	.uahalf	0x6e4
	.uaword	0x67c9
	.uleb128 0xd
	.string	"U"
	.byte	0x4
	.uahalf	0x6e6
	.uaword	0xf7
	.uleb128 0xd
	.string	"I"
	.byte	0x4
	.uahalf	0x6e7
	.uaword	0xe0
	.uleb128 0xd
	.string	"B"
	.byte	0x4
	.uahalf	0x6e8
	.uaword	0x3380
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_TIM_CH_CNT"
	.byte	0x4
	.uahalf	0x6e9
	.uaword	0x67a1
	.uleb128 0xc
	.byte	0x4
	.byte	0x4
	.uahalf	0x6ec
	.uaword	0x680c
	.uleb128 0xd
	.string	"U"
	.byte	0x4
	.uahalf	0x6ee
	.uaword	0xf7
	.uleb128 0xd
	.string	"I"
	.byte	0x4
	.uahalf	0x6ef
	.uaword	0xe0
	.uleb128 0xd
	.string	"B"
	.byte	0x4
	.uahalf	0x6f0
	.uaword	0x33ea
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_TIM_CH_CNTS"
	.byte	0x4
	.uahalf	0x6f1
	.uaword	0x67e4
	.uleb128 0xc
	.byte	0x4
	.byte	0x4
	.uahalf	0x6f4
	.uaword	0x6850
	.uleb128 0xd
	.string	"U"
	.byte	0x4
	.uahalf	0x6f6
	.uaword	0xf7
	.uleb128 0xd
	.string	"I"
	.byte	0x4
	.uahalf	0x6f7
	.uaword	0xe0
	.uleb128 0xd
	.string	"B"
	.byte	0x4
	.uahalf	0x6f8
	.uaword	0x3651
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_TIM_CH_CTRL"
	.byte	0x4
	.uahalf	0x6f9
	.uaword	0x6828
	.uleb128 0xc
	.byte	0x4
	.byte	0x4
	.uahalf	0x6fc
	.uaword	0x6894
	.uleb128 0xd
	.string	"U"
	.byte	0x4
	.uahalf	0x6fe
	.uaword	0xf7
	.uleb128 0xd
	.string	"I"
	.byte	0x4
	.uahalf	0x6ff
	.uaword	0xe0
	.uleb128 0xd
	.string	"B"
	.byte	0x4
	.uahalf	0x700
	.uaword	0x36bb
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_TIM_CH_ECNT"
	.byte	0x4
	.uahalf	0x701
	.uaword	0x686c
	.uleb128 0xc
	.byte	0x4
	.byte	0x4
	.uahalf	0x704
	.uaword	0x68d8
	.uleb128 0xd
	.string	"U"
	.byte	0x4
	.uahalf	0x706
	.uaword	0xf7
	.uleb128 0xd
	.string	"I"
	.byte	0x4
	.uahalf	0x707
	.uaword	0xe0
	.uleb128 0xd
	.string	"B"
	.byte	0x4
	.uahalf	0x708
	.uaword	0x372d
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_TIM_CH_ECTRL"
	.byte	0x4
	.uahalf	0x709
	.uaword	0x68b0
	.uleb128 0xc
	.byte	0x4
	.byte	0x4
	.uahalf	0x70c
	.uaword	0x691d
	.uleb128 0xd
	.string	"U"
	.byte	0x4
	.uahalf	0x70e
	.uaword	0xf7
	.uleb128 0xd
	.string	"I"
	.byte	0x4
	.uahalf	0x70f
	.uaword	0xe0
	.uleb128 0xd
	.string	"B"
	.byte	0x4
	.uahalf	0x710
	.uaword	0x383a
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_TIM_CH_EIRQ_EN"
	.byte	0x4
	.uahalf	0x711
	.uaword	0x68f5
	.uleb128 0xc
	.byte	0x4
	.byte	0x4
	.uahalf	0x714
	.uaword	0x6964
	.uleb128 0xd
	.string	"U"
	.byte	0x4
	.uahalf	0x716
	.uaword	0xf7
	.uleb128 0xd
	.string	"I"
	.byte	0x4
	.uahalf	0x717
	.uaword	0xe0
	.uleb128 0xd
	.string	"B"
	.byte	0x4
	.uahalf	0x718
	.uaword	0x38ab
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_TIM_CH_FLT_FE"
	.byte	0x4
	.uahalf	0x719
	.uaword	0x693c
	.uleb128 0xc
	.byte	0x4
	.byte	0x4
	.uahalf	0x71c
	.uaword	0x69aa
	.uleb128 0xd
	.string	"U"
	.byte	0x4
	.uahalf	0x71e
	.uaword	0xf7
	.uleb128 0xd
	.string	"I"
	.byte	0x4
	.uahalf	0x71f
	.uaword	0xe0
	.uleb128 0xd
	.string	"B"
	.byte	0x4
	.uahalf	0x720
	.uaword	0x391b
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_TIM_CH_FLT_RE"
	.byte	0x4
	.uahalf	0x721
	.uaword	0x6982
	.uleb128 0xc
	.byte	0x4
	.byte	0x4
	.uahalf	0x724
	.uaword	0x69f0
	.uleb128 0xd
	.string	"U"
	.byte	0x4
	.uahalf	0x726
	.uaword	0xf7
	.uleb128 0xd
	.string	"I"
	.byte	0x4
	.uahalf	0x727
	.uaword	0xe0
	.uleb128 0xd
	.string	"B"
	.byte	0x4
	.uahalf	0x728
	.uaword	0x3988
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_TIM_CH_GPR0"
	.byte	0x4
	.uahalf	0x729
	.uaword	0x69c8
	.uleb128 0xc
	.byte	0x4
	.byte	0x4
	.uahalf	0x72c
	.uaword	0x6a34
	.uleb128 0xd
	.string	"U"
	.byte	0x4
	.uahalf	0x72e
	.uaword	0xf7
	.uleb128 0xd
	.string	"I"
	.byte	0x4
	.uahalf	0x72f
	.uaword	0xe0
	.uleb128 0xd
	.string	"B"
	.byte	0x4
	.uahalf	0x730
	.uaword	0x39f3
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_TIM_CH_GPR1"
	.byte	0x4
	.uahalf	0x731
	.uaword	0x6a0c
	.uleb128 0xc
	.byte	0x4
	.byte	0x4
	.uahalf	0x734
	.uaword	0x6a78
	.uleb128 0xd
	.string	"U"
	.byte	0x4
	.uahalf	0x736
	.uaword	0xf7
	.uleb128 0xd
	.string	"I"
	.byte	0x4
	.uahalf	0x737
	.uaword	0xe0
	.uleb128 0xd
	.string	"B"
	.byte	0x4
	.uahalf	0x738
	.uaword	0x3af8
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_TIM_CH_IRQ_EN"
	.byte	0x4
	.uahalf	0x739
	.uaword	0x6a50
	.uleb128 0xc
	.byte	0x4
	.byte	0x4
	.uahalf	0x73c
	.uaword	0x6abe
	.uleb128 0xd
	.string	"U"
	.byte	0x4
	.uahalf	0x73e
	.uaword	0xf7
	.uleb128 0xd
	.string	"I"
	.byte	0x4
	.uahalf	0x73f
	.uaword	0xe0
	.uleb128 0xd
	.string	"B"
	.byte	0x4
	.uahalf	0x740
	.uaword	0x3bf2
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_TIM_CH_IRQ_FORCINT"
	.byte	0x4
	.uahalf	0x741
	.uaword	0x6a96
	.uleb128 0xc
	.byte	0x4
	.byte	0x4
	.uahalf	0x744
	.uaword	0x6b09
	.uleb128 0xd
	.string	"U"
	.byte	0x4
	.uahalf	0x746
	.uaword	0xf7
	.uleb128 0xd
	.string	"I"
	.byte	0x4
	.uahalf	0x747
	.uaword	0xe0
	.uleb128 0xd
	.string	"B"
	.byte	0x4
	.uahalf	0x748
	.uaword	0x3c66
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_TIM_CH_IRQ_MODE"
	.byte	0x4
	.uahalf	0x749
	.uaword	0x6ae1
	.uleb128 0xc
	.byte	0x4
	.byte	0x4
	.uahalf	0x74c
	.uaword	0x6b51
	.uleb128 0xd
	.string	"U"
	.byte	0x4
	.uahalf	0x74e
	.uaword	0xf7
	.uleb128 0xd
	.string	"I"
	.byte	0x4
	.uahalf	0x74f
	.uaword	0xe0
	.uleb128 0xd
	.string	"B"
	.byte	0x4
	.uahalf	0x750
	.uaword	0x3d49
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_TIM_CH_IRQ_NOTIFY"
	.byte	0x4
	.uahalf	0x751
	.uaword	0x6b29
	.uleb128 0xc
	.byte	0x4
	.byte	0x4
	.uahalf	0x754
	.uaword	0x6b9b
	.uleb128 0xd
	.string	"U"
	.byte	0x4
	.uahalf	0x756
	.uaword	0xf7
	.uleb128 0xd
	.string	"I"
	.byte	0x4
	.uahalf	0x757
	.uaword	0xe0
	.uleb128 0xd
	.string	"B"
	.byte	0x4
	.uahalf	0x758
	.uaword	0x3dbb
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_TIM_CH_TDUC"
	.byte	0x4
	.uahalf	0x759
	.uaword	0x6b73
	.uleb128 0xc
	.byte	0x4
	.byte	0x4
	.uahalf	0x75c
	.uaword	0x6bdf
	.uleb128 0xd
	.string	"U"
	.byte	0x4
	.uahalf	0x75e
	.uaword	0xf7
	.uleb128 0xd
	.string	"I"
	.byte	0x4
	.uahalf	0x75f
	.uaword	0xe0
	.uleb128 0xd
	.string	"B"
	.byte	0x4
	.uahalf	0x760
	.uaword	0x3e48
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_TIM_CH_TDUV"
	.byte	0x4
	.uahalf	0x761
	.uaword	0x6bb7
	.uleb128 0xc
	.byte	0x4
	.byte	0x4
	.uahalf	0x764
	.uaword	0x6c23
	.uleb128 0xd
	.string	"U"
	.byte	0x4
	.uahalf	0x766
	.uaword	0xf7
	.uleb128 0xd
	.string	"I"
	.byte	0x4
	.uahalf	0x767
	.uaword	0xe0
	.uleb128 0xd
	.string	"B"
	.byte	0x4
	.uahalf	0x768
	.uaword	0x3fd4
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_TIM_IN_SRC"
	.byte	0x4
	.uahalf	0x769
	.uaword	0x6bfb
	.uleb128 0xc
	.byte	0x4
	.byte	0x4
	.uahalf	0x76c
	.uaword	0x6c66
	.uleb128 0xd
	.string	"U"
	.byte	0x4
	.uahalf	0x76e
	.uaword	0xf7
	.uleb128 0xd
	.string	"I"
	.byte	0x4
	.uahalf	0x76f
	.uaword	0xe0
	.uleb128 0xd
	.string	"B"
	.byte	0x4
	.uahalf	0x770
	.uaword	0x4066
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_TIM_INP_VAL"
	.byte	0x4
	.uahalf	0x771
	.uaword	0x6c3e
	.uleb128 0xc
	.byte	0x4
	.byte	0x4
	.uahalf	0x774
	.uaword	0x6caa
	.uleb128 0xd
	.string	"U"
	.byte	0x4
	.uahalf	0x776
	.uaword	0xf7
	.uleb128 0xd
	.string	"I"
	.byte	0x4
	.uahalf	0x777
	.uaword	0xe0
	.uleb128 0xd
	.string	"B"
	.byte	0x4
	.uahalf	0x778
	.uaword	0x4149
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_TIM_RST"
	.byte	0x4
	.uahalf	0x779
	.uaword	0x6c82
	.uleb128 0xc
	.byte	0x4
	.byte	0x4
	.uahalf	0x77c
	.uaword	0x6cea
	.uleb128 0xd
	.string	"U"
	.byte	0x4
	.uahalf	0x77e
	.uaword	0xf7
	.uleb128 0xd
	.string	"I"
	.byte	0x4
	.uahalf	0x77f
	.uaword	0xe0
	.uleb128 0xd
	.string	"B"
	.byte	0x4
	.uahalf	0x780
	.uaword	0x41ad
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_TOM_CH_CM0"
	.byte	0x4
	.uahalf	0x781
	.uaword	0x6cc2
	.uleb128 0xc
	.byte	0x4
	.byte	0x4
	.uahalf	0x784
	.uaword	0x6d2d
	.uleb128 0xd
	.string	"U"
	.byte	0x4
	.uahalf	0x786
	.uaword	0xf7
	.uleb128 0xd
	.string	"I"
	.byte	0x4
	.uahalf	0x787
	.uaword	0xe0
	.uleb128 0xd
	.string	"B"
	.byte	0x4
	.uahalf	0x788
	.uaword	0x4214
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_TOM_CH_CM1"
	.byte	0x4
	.uahalf	0x789
	.uaword	0x6d05
	.uleb128 0xc
	.byte	0x4
	.byte	0x4
	.uahalf	0x78c
	.uaword	0x6d70
	.uleb128 0xd
	.string	"U"
	.byte	0x4
	.uahalf	0x78e
	.uaword	0xf7
	.uleb128 0xd
	.string	"I"
	.byte	0x4
	.uahalf	0x78f
	.uaword	0xe0
	.uleb128 0xd
	.string	"B"
	.byte	0x4
	.uahalf	0x790
	.uaword	0x427b
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_TOM_CH_CN0"
	.byte	0x4
	.uahalf	0x791
	.uaword	0x6d48
	.uleb128 0xc
	.byte	0x4
	.byte	0x4
	.uahalf	0x794
	.uaword	0x6db3
	.uleb128 0xd
	.string	"U"
	.byte	0x4
	.uahalf	0x796
	.uaword	0xf7
	.uleb128 0xd
	.string	"I"
	.byte	0x4
	.uahalf	0x797
	.uaword	0xe0
	.uleb128 0xd
	.string	"B"
	.byte	0x4
	.uahalf	0x798
	.uaword	0x43cc
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_TOM_CH_CTRL"
	.byte	0x4
	.uahalf	0x799
	.uaword	0x6d8b
	.uleb128 0xc
	.byte	0x4
	.byte	0x4
	.uahalf	0x79c
	.uaword	0x6df7
	.uleb128 0xd
	.string	"U"
	.byte	0x4
	.uahalf	0x79e
	.uaword	0xf7
	.uleb128 0xd
	.string	"I"
	.byte	0x4
	.uahalf	0x79f
	.uaword	0xe0
	.uleb128 0xd
	.string	"B"
	.byte	0x4
	.uahalf	0x7a0
	.uaword	0x445d
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_TOM_CH_IRQ_EN"
	.byte	0x4
	.uahalf	0x7a1
	.uaword	0x6dcf
	.uleb128 0xc
	.byte	0x4
	.byte	0x4
	.uahalf	0x7a4
	.uaword	0x6e3d
	.uleb128 0xd
	.string	"U"
	.byte	0x4
	.uahalf	0x7a6
	.uaword	0xf7
	.uleb128 0xd
	.string	"I"
	.byte	0x4
	.uahalf	0x7a7
	.uaword	0xe0
	.uleb128 0xd
	.string	"B"
	.byte	0x4
	.uahalf	0x7a8
	.uaword	0x44f1
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_TOM_CH_IRQ_FORCINT"
	.byte	0x4
	.uahalf	0x7a9
	.uaword	0x6e15
	.uleb128 0xc
	.byte	0x4
	.byte	0x4
	.uahalf	0x7ac
	.uaword	0x6e88
	.uleb128 0xd
	.string	"U"
	.byte	0x4
	.uahalf	0x7ae
	.uaword	0xf7
	.uleb128 0xd
	.string	"I"
	.byte	0x4
	.uahalf	0x7af
	.uaword	0xe0
	.uleb128 0xd
	.string	"B"
	.byte	0x4
	.uahalf	0x7b0
	.uaword	0x4565
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_TOM_CH_IRQ_MODE"
	.byte	0x4
	.uahalf	0x7b1
	.uaword	0x6e60
	.uleb128 0xc
	.byte	0x4
	.byte	0x4
	.uahalf	0x7b4
	.uaword	0x6ed0
	.uleb128 0xd
	.string	"U"
	.byte	0x4
	.uahalf	0x7b6
	.uaword	0xf7
	.uleb128 0xd
	.string	"I"
	.byte	0x4
	.uahalf	0x7b7
	.uaword	0xe0
	.uleb128 0xd
	.string	"B"
	.byte	0x4
	.uahalf	0x7b8
	.uaword	0x45f0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_TOM_CH_IRQ_NOTIFY"
	.byte	0x4
	.uahalf	0x7b9
	.uaword	0x6ea8
	.uleb128 0xc
	.byte	0x4
	.byte	0x4
	.uahalf	0x7bc
	.uaword	0x6f1a
	.uleb128 0xd
	.string	"U"
	.byte	0x4
	.uahalf	0x7be
	.uaword	0xf7
	.uleb128 0xd
	.string	"I"
	.byte	0x4
	.uahalf	0x7bf
	.uaword	0xe0
	.uleb128 0xd
	.string	"B"
	.byte	0x4
	.uahalf	0x7c0
	.uaword	0x465e
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_TOM_CH_SR0"
	.byte	0x4
	.uahalf	0x7c1
	.uaword	0x6ef2
	.uleb128 0xc
	.byte	0x4
	.byte	0x4
	.uahalf	0x7c4
	.uaword	0x6f5d
	.uleb128 0xd
	.string	"U"
	.byte	0x4
	.uahalf	0x7c6
	.uaword	0xf7
	.uleb128 0xd
	.string	"I"
	.byte	0x4
	.uahalf	0x7c7
	.uaword	0xe0
	.uleb128 0xd
	.string	"B"
	.byte	0x4
	.uahalf	0x7c8
	.uaword	0x46c5
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_TOM_CH_SR1"
	.byte	0x4
	.uahalf	0x7c9
	.uaword	0x6f35
	.uleb128 0xc
	.byte	0x4
	.byte	0x4
	.uahalf	0x7cc
	.uaword	0x6fa0
	.uleb128 0xd
	.string	"U"
	.byte	0x4
	.uahalf	0x7ce
	.uaword	0xf7
	.uleb128 0xd
	.string	"I"
	.byte	0x4
	.uahalf	0x7cf
	.uaword	0xe0
	.uleb128 0xd
	.string	"B"
	.byte	0x4
	.uahalf	0x7d0
	.uaword	0x472c
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_TOM_CH_STAT"
	.byte	0x4
	.uahalf	0x7d1
	.uaword	0x6f78
	.uleb128 0xc
	.byte	0x4
	.byte	0x4
	.uahalf	0x7d4
	.uaword	0x6fe4
	.uleb128 0xd
	.string	"U"
	.byte	0x4
	.uahalf	0x7d6
	.uaword	0xf7
	.uleb128 0xd
	.string	"I"
	.byte	0x4
	.uahalf	0x7d7
	.uaword	0xe0
	.uleb128 0xd
	.string	"B"
	.byte	0x4
	.uahalf	0x7d8
	.uaword	0x47c8
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_TOM_TGC0_ACT_TB"
	.byte	0x4
	.uahalf	0x7d9
	.uaword	0x6fbc
	.uleb128 0xc
	.byte	0x4
	.byte	0x4
	.uahalf	0x7dc
	.uaword	0x702c
	.uleb128 0xd
	.string	"U"
	.byte	0x4
	.uahalf	0x7de
	.uaword	0xf7
	.uleb128 0xd
	.string	"I"
	.byte	0x4
	.uahalf	0x7df
	.uaword	0xe0
	.uleb128 0xd
	.string	"B"
	.byte	0x4
	.uahalf	0x7e0
	.uaword	0x48bb
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_TOM_TGC0_ENDIS_CTRL"
	.byte	0x4
	.uahalf	0x7e1
	.uaword	0x7004
	.uleb128 0xc
	.byte	0x4
	.byte	0x4
	.uahalf	0x7e4
	.uaword	0x7078
	.uleb128 0xd
	.string	"U"
	.byte	0x4
	.uahalf	0x7e6
	.uaword	0xf7
	.uleb128 0xd
	.string	"I"
	.byte	0x4
	.uahalf	0x7e7
	.uaword	0xe0
	.uleb128 0xd
	.string	"B"
	.byte	0x4
	.uahalf	0x7e8
	.uaword	0x49b2
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_TOM_TGC0_ENDIS_STAT"
	.byte	0x4
	.uahalf	0x7e9
	.uaword	0x7050
	.uleb128 0xc
	.byte	0x4
	.byte	0x4
	.uahalf	0x7ec
	.uaword	0x70c4
	.uleb128 0xd
	.string	"U"
	.byte	0x4
	.uahalf	0x7ee
	.uaword	0xf7
	.uleb128 0xd
	.string	"I"
	.byte	0x4
	.uahalf	0x7ef
	.uaword	0xe0
	.uleb128 0xd
	.string	"B"
	.byte	0x4
	.uahalf	0x7f0
	.uaword	0x4b26
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_TOM_TGC0_FUPD_CTRL"
	.byte	0x4
	.uahalf	0x7f1
	.uaword	0x709c
	.uleb128 0xc
	.byte	0x4
	.byte	0x4
	.uahalf	0x7f4
	.uaword	0x710f
	.uleb128 0xd
	.string	"U"
	.byte	0x4
	.uahalf	0x7f6
	.uaword	0xf7
	.uleb128 0xd
	.string	"I"
	.byte	0x4
	.uahalf	0x7f7
	.uaword	0xe0
	.uleb128 0xd
	.string	"B"
	.byte	0x4
	.uahalf	0x7f8
	.uaword	0x4cbc
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_TOM_TGC0_GLB_CTRL"
	.byte	0x4
	.uahalf	0x7f9
	.uaword	0x70e7
	.uleb128 0xc
	.byte	0x4
	.byte	0x4
	.uahalf	0x7fc
	.uaword	0x7159
	.uleb128 0xd
	.string	"U"
	.byte	0x4
	.uahalf	0x7fe
	.uaword	0xf7
	.uleb128 0xd
	.string	"I"
	.byte	0x4
	.uahalf	0x7ff
	.uaword	0xe0
	.uleb128 0xd
	.string	"B"
	.byte	0x4
	.uahalf	0x800
	.uaword	0x4daf
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_TOM_TGC0_INT_TRIG"
	.byte	0x4
	.uahalf	0x801
	.uaword	0x7131
	.uleb128 0xc
	.byte	0x4
	.byte	0x4
	.uahalf	0x804
	.uaword	0x71a3
	.uleb128 0xd
	.string	"U"
	.byte	0x4
	.uahalf	0x806
	.uaword	0xf7
	.uleb128 0xd
	.string	"I"
	.byte	0x4
	.uahalf	0x807
	.uaword	0xe0
	.uleb128 0xd
	.string	"B"
	.byte	0x4
	.uahalf	0x808
	.uaword	0x4ea4
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_TOM_TGC0_OUTEN_CTRL"
	.byte	0x4
	.uahalf	0x809
	.uaword	0x717b
	.uleb128 0xc
	.byte	0x4
	.byte	0x4
	.uahalf	0x80c
	.uaword	0x71ef
	.uleb128 0xd
	.string	"U"
	.byte	0x4
	.uahalf	0x80e
	.uaword	0xf7
	.uleb128 0xd
	.string	"I"
	.byte	0x4
	.uahalf	0x80f
	.uaword	0xe0
	.uleb128 0xd
	.string	"B"
	.byte	0x4
	.uahalf	0x810
	.uaword	0x4f9b
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_TOM_TGC0_OUTEN_STAT"
	.byte	0x4
	.uahalf	0x811
	.uaword	0x71c7
	.uleb128 0xc
	.byte	0x4
	.byte	0x4
	.uahalf	0x814
	.uaword	0x723b
	.uleb128 0xd
	.string	"U"
	.byte	0x4
	.uahalf	0x816
	.uaword	0xf7
	.uleb128 0xd
	.string	"I"
	.byte	0x4
	.uahalf	0x817
	.uaword	0xe0
	.uleb128 0xd
	.string	"B"
	.byte	0x4
	.uahalf	0x818
	.uaword	0x503f
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_TOM_TGC1_ACT_TB"
	.byte	0x4
	.uahalf	0x819
	.uaword	0x7213
	.uleb128 0xc
	.byte	0x4
	.byte	0x4
	.uahalf	0x81c
	.uaword	0x7283
	.uleb128 0xd
	.string	"U"
	.byte	0x4
	.uahalf	0x81e
	.uaword	0xf7
	.uleb128 0xd
	.string	"I"
	.byte	0x4
	.uahalf	0x81f
	.uaword	0xe0
	.uleb128 0xd
	.string	"B"
	.byte	0x4
	.uahalf	0x820
	.uaword	0x5132
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_TOM_TGC1_ENDIS_CTRL"
	.byte	0x4
	.uahalf	0x821
	.uaword	0x725b
	.uleb128 0xc
	.byte	0x4
	.byte	0x4
	.uahalf	0x824
	.uaword	0x72cf
	.uleb128 0xd
	.string	"U"
	.byte	0x4
	.uahalf	0x826
	.uaword	0xf7
	.uleb128 0xd
	.string	"I"
	.byte	0x4
	.uahalf	0x827
	.uaword	0xe0
	.uleb128 0xd
	.string	"B"
	.byte	0x4
	.uahalf	0x828
	.uaword	0x5229
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_TOM_TGC1_ENDIS_STAT"
	.byte	0x4
	.uahalf	0x829
	.uaword	0x72a7
	.uleb128 0xc
	.byte	0x4
	.byte	0x4
	.uahalf	0x82c
	.uaword	0x731b
	.uleb128 0xd
	.string	"U"
	.byte	0x4
	.uahalf	0x82e
	.uaword	0xf7
	.uleb128 0xd
	.string	"I"
	.byte	0x4
	.uahalf	0x82f
	.uaword	0xe0
	.uleb128 0xd
	.string	"B"
	.byte	0x4
	.uahalf	0x830
	.uaword	0x539d
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_TOM_TGC1_FUPD_CTRL"
	.byte	0x4
	.uahalf	0x831
	.uaword	0x72f3
	.uleb128 0xc
	.byte	0x4
	.byte	0x4
	.uahalf	0x834
	.uaword	0x7366
	.uleb128 0xd
	.string	"U"
	.byte	0x4
	.uahalf	0x836
	.uaword	0xf7
	.uleb128 0xd
	.string	"I"
	.byte	0x4
	.uahalf	0x837
	.uaword	0xe0
	.uleb128 0xd
	.string	"B"
	.byte	0x4
	.uahalf	0x838
	.uaword	0x5533
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_TOM_TGC1_GLB_CTRL"
	.byte	0x4
	.uahalf	0x839
	.uaword	0x733e
	.uleb128 0xc
	.byte	0x4
	.byte	0x4
	.uahalf	0x83c
	.uaword	0x73b0
	.uleb128 0xd
	.string	"U"
	.byte	0x4
	.uahalf	0x83e
	.uaword	0xf7
	.uleb128 0xd
	.string	"I"
	.byte	0x4
	.uahalf	0x83f
	.uaword	0xe0
	.uleb128 0xd
	.string	"B"
	.byte	0x4
	.uahalf	0x840
	.uaword	0x5626
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_TOM_TGC1_INT_TRIG"
	.byte	0x4
	.uahalf	0x841
	.uaword	0x7388
	.uleb128 0xc
	.byte	0x4
	.byte	0x4
	.uahalf	0x844
	.uaword	0x73fa
	.uleb128 0xd
	.string	"U"
	.byte	0x4
	.uahalf	0x846
	.uaword	0xf7
	.uleb128 0xd
	.string	"I"
	.byte	0x4
	.uahalf	0x847
	.uaword	0xe0
	.uleb128 0xd
	.string	"B"
	.byte	0x4
	.uahalf	0x848
	.uaword	0x571b
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_TOM_TGC1_OUTEN_CTRL"
	.byte	0x4
	.uahalf	0x849
	.uaword	0x73d2
	.uleb128 0xc
	.byte	0x4
	.byte	0x4
	.uahalf	0x84c
	.uaword	0x7446
	.uleb128 0xd
	.string	"U"
	.byte	0x4
	.uahalf	0x84e
	.uaword	0xf7
	.uleb128 0xd
	.string	"I"
	.byte	0x4
	.uahalf	0x84f
	.uaword	0xe0
	.uleb128 0xd
	.string	"B"
	.byte	0x4
	.uahalf	0x850
	.uaword	0x5812
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM_TOM_TGC1_OUTEN_STAT"
	.byte	0x4
	.uahalf	0x851
	.uaword	0x741e
	.uleb128 0xb
	.string	"_Ifx_GTM_CMU_CLK0_5"
	.byte	0x4
	.byte	0x4
	.uahalf	0x85c
	.uaword	0x7497
	.uleb128 0xe
	.uaword	.LASF100
	.byte	0x4
	.uahalf	0x85e
	.uaword	0x5ab8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"_Ifx_GTM_CMU_CLK_6"
	.byte	0x4
	.byte	0x4
	.uahalf	0x862
	.uaword	0x74c3
	.uleb128 0xe
	.uaword	.LASF100
	.byte	0x4
	.uahalf	0x864
	.uaword	0x5b00
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x6
	.uaword	0x7497
	.uleb128 0xb
	.string	"_Ifx_GTM_CMU_CLK_7"
	.byte	0x4
	.byte	0x4
	.uahalf	0x868
	.uaword	0x74f4
	.uleb128 0xe
	.uaword	.LASF100
	.byte	0x4
	.uahalf	0x86a
	.uaword	0x5b47
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x6
	.uaword	0x74c8
	.uleb128 0xb
	.string	"_Ifx_GTM_CMU_ECLK"
	.byte	0x8
	.byte	0x4
	.uahalf	0x86e
	.uaword	0x7533
	.uleb128 0xf
	.string	"NUM"
	.byte	0x4
	.uahalf	0x870
	.uaword	0x5c16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"DEN"
	.byte	0x4
	.uahalf	0x871
	.uaword	0x5bd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0xb
	.string	"_Ifx_GTM_CMU_FXCLK"
	.byte	0x4
	.byte	0x4
	.uahalf	0x875
	.uaword	0x755f
	.uleb128 0xe
	.uaword	.LASF100
	.byte	0x4
	.uahalf	0x877
	.uaword	0x5c5b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x6
	.uaword	0x7533
	.uleb128 0xb
	.string	"_Ifx_GTM_INOUTSEL_CAN"
	.byte	0x4
	.byte	0x4
	.uahalf	0x87b
	.uaword	0x7596
	.uleb128 0xf
	.string	"OUTSEL"
	.byte	0x4
	.uahalf	0x87d
	.uaword	0x60d7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x6
	.uaword	0x7564
	.uleb128 0xb
	.string	"_Ifx_GTM_INOUTSEL_T"
	.byte	0x20
	.byte	0x4
	.uahalf	0x881
	.uaword	0x75cb
	.uleb128 0xf
	.string	"OUTSEL"
	.byte	0x4
	.uahalf	0x883
	.uaword	0x75cb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x10
	.uaword	0x6123
	.uaword	0x75db
	.uleb128 0x11
	.uaword	0x13b
	.byte	0x7
	.byte	0
	.uleb128 0x6
	.uaword	0x759b
	.uleb128 0xb
	.string	"_Ifx_GTM_INOUTSEL_TIM"
	.byte	0x20
	.byte	0x4
	.uahalf	0x887
	.uaword	0x7620
	.uleb128 0xf
	.string	"INSEL"
	.byte	0x4
	.uahalf	0x889
	.uaword	0x616d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.uaword	.LASF6
	.byte	0x4
	.uahalf	0x88a
	.uaword	0x7620
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x10
	.uaword	0x9c
	.uaword	0x7630
	.uleb128 0x11
	.uaword	0x13b
	.byte	0x1b
	.byte	0
	.uleb128 0xb
	.string	"_Ifx_GTM_TIM_CH"
	.byte	0x74
	.byte	0x4
	.uahalf	0x88e
	.uaword	0x775b
	.uleb128 0xf
	.string	"GPR0"
	.byte	0x4
	.uahalf	0x890
	.uaword	0x69f0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"GPR1"
	.byte	0x4
	.uahalf	0x891
	.uaword	0x6a34
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.string	"CNT"
	.byte	0x4
	.uahalf	0x892
	.uaword	0x67c9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xf
	.string	"ECNT"
	.byte	0x4
	.uahalf	0x893
	.uaword	0x6894
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xf
	.string	"CNTS"
	.byte	0x4
	.uahalf	0x894
	.uaword	0x680c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.string	"TDUC"
	.byte	0x4
	.uahalf	0x895
	.uaword	0x6b9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xf
	.string	"TDUV"
	.byte	0x4
	.uahalf	0x896
	.uaword	0x6bdf
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xf
	.string	"FLT_RE"
	.byte	0x4
	.uahalf	0x897
	.uaword	0x69aa
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xf
	.string	"FLT_FE"
	.byte	0x4
	.uahalf	0x898
	.uaword	0x6964
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xe
	.uaword	.LASF100
	.byte	0x4
	.uahalf	0x899
	.uaword	0x6850
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xf
	.string	"ECTRL"
	.byte	0x4
	.uahalf	0x89a
	.uaword	0x68d8
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xe
	.uaword	.LASF101
	.byte	0x4
	.uahalf	0x89b
	.uaword	0x6b51
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xe
	.uaword	.LASF102
	.byte	0x4
	.uahalf	0x89c
	.uaword	0x6a78
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xe
	.uaword	.LASF103
	.byte	0x4
	.uahalf	0x89d
	.uaword	0x6abe
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xe
	.uaword	.LASF20
	.byte	0x4
	.uahalf	0x89e
	.uaword	0x6b09
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xf
	.string	"EIRQ_EN"
	.byte	0x4
	.uahalf	0x89f
	.uaword	0x691d
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xe
	.uaword	.LASF104
	.byte	0x4
	.uahalf	0x8a0
	.uaword	0x775b
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.byte	0
	.uleb128 0x10
	.uaword	0x9c
	.uaword	0x776b
	.uleb128 0x11
	.uaword	0x13b
	.byte	0x33
	.byte	0
	.uleb128 0x6
	.uaword	0x7630
	.uleb128 0xb
	.string	"_Ifx_GTM_TOM_CH"
	.byte	0x30
	.byte	0x4
	.uahalf	0x8a4
	.uaword	0x7847
	.uleb128 0xe
	.uaword	.LASF100
	.byte	0x4
	.uahalf	0x8a6
	.uaword	0x6db3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"SR0"
	.byte	0x4
	.uahalf	0x8a7
	.uaword	0x6f1a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.string	"SR1"
	.byte	0x4
	.uahalf	0x8a8
	.uaword	0x6f5d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xf
	.string	"CM0"
	.byte	0x4
	.uahalf	0x8a9
	.uaword	0x6cea
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xf
	.string	"CM1"
	.byte	0x4
	.uahalf	0x8aa
	.uaword	0x6d2d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.string	"CN0"
	.byte	0x4
	.uahalf	0x8ab
	.uaword	0x6d70
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xf
	.string	"STAT"
	.byte	0x4
	.uahalf	0x8ac
	.uaword	0x6fa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.uaword	.LASF101
	.byte	0x4
	.uahalf	0x8ad
	.uaword	0x6ed0
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xe
	.uaword	.LASF102
	.byte	0x4
	.uahalf	0x8ae
	.uaword	0x6df7
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xe
	.uaword	.LASF103
	.byte	0x4
	.uahalf	0x8af
	.uaword	0x6e3d
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xe
	.uaword	.LASF20
	.byte	0x4
	.uahalf	0x8b0
	.uaword	0x6e88
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xf
	.string	"reserved_2C"
	.byte	0x4
	.uahalf	0x8b1
	.uaword	0x7847
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.byte	0
	.uleb128 0x10
	.uaword	0x9c
	.uaword	0x7857
	.uleb128 0x11
	.uaword	0x13b
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.uaword	0x7770
	.uleb128 0xb
	.string	"_Ifx_GTM_BRIDGE"
	.byte	0xc
	.byte	0x4
	.uahalf	0x8bf
	.uaword	0x78a6
	.uleb128 0xf
	.string	"MODE"
	.byte	0x4
	.uahalf	0x8c1
	.uaword	0x59b0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"PTR1"
	.byte	0x4
	.uahalf	0x8c2
	.uaword	0x59f4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.string	"PTR2"
	.byte	0x4
	.uahalf	0x8c3
	.uaword	0x5a38
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x6
	.uaword	0x785c
	.uleb128 0xb
	.string	"_Ifx_GTM_CMU"
	.byte	0x48
	.byte	0x4
	.uahalf	0x8c7
	.uaword	0x7947
	.uleb128 0xf
	.string	"CLK_EN"
	.byte	0x4
	.uahalf	0x8c9
	.uaword	0x5b8e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.uaword	.LASF11
	.byte	0x4
	.uahalf	0x8ca
	.uaword	0x5ce7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.uaword	.LASF10
	.byte	0x4
	.uahalf	0x8cb
	.uaword	0x5ca2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xf
	.string	"CLK0_5"
	.byte	0x4
	.uahalf	0x8cc
	.uaword	0x7957
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xf
	.string	"CLK_6"
	.byte	0x4
	.uahalf	0x8cd
	.uaword	0x74c3
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xf
	.string	"CLK_7"
	.byte	0x4
	.uahalf	0x8ce
	.uaword	0x74f4
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xf
	.string	"ECLK"
	.byte	0x4
	.uahalf	0x8cf
	.uaword	0x796c
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xf
	.string	"FXCLK"
	.byte	0x4
	.uahalf	0x8d0
	.uaword	0x755f
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.byte	0
	.uleb128 0x10
	.uaword	0x746a
	.uaword	0x7957
	.uleb128 0x11
	.uaword	0x13b
	.byte	0x5
	.byte	0
	.uleb128 0x6
	.uaword	0x7947
	.uleb128 0x10
	.uaword	0x74f9
	.uaword	0x796c
	.uleb128 0x11
	.uaword	0x13b
	.byte	0x2
	.byte	0
	.uleb128 0x6
	.uaword	0x795c
	.uleb128 0x6
	.uaword	0x78ab
	.uleb128 0xb
	.string	"_Ifx_GTM_DTM"
	.byte	0x24
	.byte	0x4
	.uahalf	0x8d4
	.uaword	0x7a00
	.uleb128 0xe
	.uaword	.LASF100
	.byte	0x4
	.uahalf	0x8d6
	.uaword	0x5e3b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"CH_CTRL1"
	.byte	0x4
	.uahalf	0x8d7
	.uaword	0x5d69
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.string	"CH_CTRL2"
	.byte	0x4
	.uahalf	0x8d8
	.uaword	0x5dae
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xf
	.string	"CH_CTRL2_SR"
	.byte	0x4
	.uahalf	0x8d9
	.uaword	0x5df3
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xf
	.string	"PS_CTRL"
	.byte	0x4
	.uahalf	0x8da
	.uaword	0x5ebf
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.string	"DTV_CH"
	.byte	0x4
	.uahalf	0x8db
	.uaword	0x7a00
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0
	.uleb128 0x10
	.uaword	0x5e7c
	.uaword	0x7a10
	.uleb128 0x11
	.uaword	0x13b
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.uaword	0x7976
	.uleb128 0xb
	.string	"_Ifx_GTM_ICM"
	.byte	0x3c
	.byte	0x4
	.uahalf	0x8df
	.uaword	0x7ade
	.uleb128 0xf
	.string	"IRQG_0"
	.byte	0x4
	.uahalf	0x8e1
	.uaword	0x5f83
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.uaword	.LASF6
	.byte	0x4
	.uahalf	0x8e2
	.uaword	0x7847
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.string	"IRQG_2"
	.byte	0x4
	.uahalf	0x8e3
	.uaword	0x5fc6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xf
	.string	"reserved_C"
	.byte	0x4
	.uahalf	0x8e4
	.uaword	0x7ade
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xf
	.string	"IRQG_6"
	.byte	0x4
	.uahalf	0x8e5
	.uaword	0x6009
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xf
	.string	"reserved_1C"
	.byte	0x4
	.uahalf	0x8e6
	.uaword	0x7aee
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xf
	.string	"IRQG_MEI"
	.byte	0x4
	.uahalf	0x8e7
	.uaword	0x6092
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xf
	.string	"reserved_34"
	.byte	0x4
	.uahalf	0x8e8
	.uaword	0x7847
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xf
	.string	"IRQG_CEI1"
	.byte	0x4
	.uahalf	0x8e9
	.uaword	0x604c
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.byte	0
	.uleb128 0x10
	.uaword	0x9c
	.uaword	0x7aee
	.uleb128 0x11
	.uaword	0x13b
	.byte	0xb
	.byte	0
	.uleb128 0x10
	.uaword	0x9c
	.uaword	0x7afe
	.uleb128 0x11
	.uaword	0x13b
	.byte	0x13
	.byte	0
	.uleb128 0x6
	.uaword	0x7a15
	.uleb128 0xb
	.string	"_Ifx_GTM_INOUTSEL"
	.byte	0x94
	.byte	0x4
	.uahalf	0x8ed
	.uaword	0x7b5a
	.uleb128 0xf
	.string	"TIM"
	.byte	0x4
	.uahalf	0x8ef
	.uaword	0x7b6a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"T"
	.byte	0x4
	.uahalf	0x8f0
	.uaword	0x75db
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xe
	.uaword	.LASF104
	.byte	0x4
	.uahalf	0x8f1
	.uaword	0x7b6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xf
	.string	"CAN"
	.byte	0x4
	.uahalf	0x8f2
	.uaword	0x7596
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.byte	0
	.uleb128 0x10
	.uaword	0x75e0
	.uaword	0x7b6a
	.uleb128 0x11
	.uaword	0x13b
	.byte	0
	.byte	0
	.uleb128 0x6
	.uaword	0x7b5a
	.uleb128 0x10
	.uaword	0x9c
	.uaword	0x7b7f
	.uleb128 0x11
	.uaword	0x13b
	.byte	0x4f
	.byte	0
	.uleb128 0x6
	.uaword	0x7b03
	.uleb128 0xb
	.string	"_Ifx_GTM_TBU"
	.byte	0x1c
	.byte	0x4
	.uahalf	0x8f6
	.uaword	0x7c23
	.uleb128 0xf
	.string	"CHEN"
	.byte	0x4
	.uahalf	0x8f8
	.uaword	0x6741
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"CH0_CTRL"
	.byte	0x4
	.uahalf	0x8f9
	.uaword	0x65e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.string	"CH0_BASE"
	.byte	0x4
	.uahalf	0x8fa
	.uaword	0x65a3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xf
	.string	"CH1_CTRL"
	.byte	0x4
	.uahalf	0x8fb
	.uaword	0x6672
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xf
	.string	"CH1_BASE"
	.byte	0x4
	.uahalf	0x8fc
	.uaword	0x662d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.string	"CH2_CTRL"
	.byte	0x4
	.uahalf	0x8fd
	.uaword	0x66fc
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xf
	.string	"CH2_BASE"
	.byte	0x4
	.uahalf	0x8fe
	.uaword	0x66b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0
	.uleb128 0x6
	.uaword	0x7b84
	.uleb128 0x12
	.string	"_Ifx_GTM_TIM"
	.uahalf	0x400
	.byte	0x4
	.uahalf	0x902
	.uaword	0x7da1
	.uleb128 0xf
	.string	"CH0"
	.byte	0x4
	.uahalf	0x904
	.uaword	0x776b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"INP_VAL"
	.byte	0x4
	.uahalf	0x905
	.uaword	0x6c66
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xf
	.string	"IN_SRC"
	.byte	0x4
	.uahalf	0x906
	.uaword	0x6c23
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xf
	.string	"RST"
	.byte	0x4
	.uahalf	0x907
	.uaword	0x6caa
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0xf
	.string	"CH1"
	.byte	0x4
	.uahalf	0x908
	.uaword	0x776b
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xf
	.string	"reserved_F4"
	.byte	0x4
	.uahalf	0x909
	.uaword	0x7ade
	.byte	0x3
	.byte	0x23
	.uleb128 0xf4
	.uleb128 0xf
	.string	"CH2"
	.byte	0x4
	.uahalf	0x90a
	.uaword	0x776b
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0xf
	.string	"reserved_174"
	.byte	0x4
	.uahalf	0x90b
	.uaword	0x7ade
	.byte	0x3
	.byte	0x23
	.uleb128 0x174
	.uleb128 0xf
	.string	"CH3"
	.byte	0x4
	.uahalf	0x90c
	.uaword	0x776b
	.byte	0x3
	.byte	0x23
	.uleb128 0x180
	.uleb128 0xf
	.string	"reserved_1F4"
	.byte	0x4
	.uahalf	0x90d
	.uaword	0x7ade
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f4
	.uleb128 0xf
	.string	"CH4"
	.byte	0x4
	.uahalf	0x90e
	.uaword	0x776b
	.byte	0x3
	.byte	0x23
	.uleb128 0x200
	.uleb128 0xf
	.string	"reserved_274"
	.byte	0x4
	.uahalf	0x90f
	.uaword	0x7ade
	.byte	0x3
	.byte	0x23
	.uleb128 0x274
	.uleb128 0xf
	.string	"CH5"
	.byte	0x4
	.uahalf	0x910
	.uaword	0x776b
	.byte	0x3
	.byte	0x23
	.uleb128 0x280
	.uleb128 0xf
	.string	"reserved_2F4"
	.byte	0x4
	.uahalf	0x911
	.uaword	0x7ade
	.byte	0x3
	.byte	0x23
	.uleb128 0x2f4
	.uleb128 0xf
	.string	"CH6"
	.byte	0x4
	.uahalf	0x912
	.uaword	0x776b
	.byte	0x3
	.byte	0x23
	.uleb128 0x300
	.uleb128 0xf
	.string	"reserved_374"
	.byte	0x4
	.uahalf	0x913
	.uaword	0x7ade
	.byte	0x3
	.byte	0x23
	.uleb128 0x374
	.uleb128 0xf
	.string	"CH7"
	.byte	0x4
	.uahalf	0x914
	.uaword	0x776b
	.byte	0x3
	.byte	0x23
	.uleb128 0x380
	.uleb128 0xf
	.string	"reserved_3F4"
	.byte	0x4
	.uahalf	0x915
	.uaword	0x7ade
	.byte	0x3
	.byte	0x23
	.uleb128 0x3f4
	.byte	0
	.uleb128 0x12
	.string	"_Ifx_GTM_TOM"
	.uahalf	0x800
	.byte	0x4
	.uahalf	0x919
	.uaword	0x818d
	.uleb128 0xf
	.string	"CH0"
	.byte	0x4
	.uahalf	0x91b
	.uaword	0x7857
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"TGC0_GLB_CTRL"
	.byte	0x4
	.uahalf	0x91c
	.uaword	0x710f
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xf
	.string	"TGC0_ACT_TB"
	.byte	0x4
	.uahalf	0x91d
	.uaword	0x6fe4
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xf
	.string	"TGC0_FUPD_CTRL"
	.byte	0x4
	.uahalf	0x91e
	.uaword	0x70c4
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xf
	.string	"TGC0_INT_TRIG"
	.byte	0x4
	.uahalf	0x91f
	.uaword	0x7159
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xf
	.string	"CH1"
	.byte	0x4
	.uahalf	0x920
	.uaword	0x7857
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xf
	.string	"TGC0_ENDIS_CTRL"
	.byte	0x4
	.uahalf	0x921
	.uaword	0x702c
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xf
	.string	"TGC0_ENDIS_STAT"
	.byte	0x4
	.uahalf	0x922
	.uaword	0x7078
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xf
	.string	"TGC0_OUTEN_CTRL"
	.byte	0x4
	.uahalf	0x923
	.uaword	0x71a3
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xf
	.string	"TGC0_OUTEN_STAT"
	.byte	0x4
	.uahalf	0x924
	.uaword	0x71ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0xf
	.string	"CH2"
	.byte	0x4
	.uahalf	0x925
	.uaword	0x7857
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xf
	.string	"reserved_B0"
	.byte	0x4
	.uahalf	0x926
	.uaword	0x818d
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0xf
	.string	"CH3"
	.byte	0x4
	.uahalf	0x927
	.uaword	0x7857
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0xf
	.string	"reserved_F0"
	.byte	0x4
	.uahalf	0x928
	.uaword	0x818d
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0xf
	.string	"CH4"
	.byte	0x4
	.uahalf	0x929
	.uaword	0x7857
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0xf
	.string	"reserved_130"
	.byte	0x4
	.uahalf	0x92a
	.uaword	0x818d
	.byte	0x3
	.byte	0x23
	.uleb128 0x130
	.uleb128 0xf
	.string	"CH5"
	.byte	0x4
	.uahalf	0x92b
	.uaword	0x7857
	.byte	0x3
	.byte	0x23
	.uleb128 0x140
	.uleb128 0xf
	.string	"reserved_170"
	.byte	0x4
	.uahalf	0x92c
	.uaword	0x818d
	.byte	0x3
	.byte	0x23
	.uleb128 0x170
	.uleb128 0xf
	.string	"CH6"
	.byte	0x4
	.uahalf	0x92d
	.uaword	0x7857
	.byte	0x3
	.byte	0x23
	.uleb128 0x180
	.uleb128 0xf
	.string	"reserved_1B0"
	.byte	0x4
	.uahalf	0x92e
	.uaword	0x818d
	.byte	0x3
	.byte	0x23
	.uleb128 0x1b0
	.uleb128 0xf
	.string	"CH7"
	.byte	0x4
	.uahalf	0x92f
	.uaword	0x7857
	.byte	0x3
	.byte	0x23
	.uleb128 0x1c0
	.uleb128 0xf
	.string	"reserved_1F0"
	.byte	0x4
	.uahalf	0x930
	.uaword	0x818d
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f0
	.uleb128 0xf
	.string	"CH8"
	.byte	0x4
	.uahalf	0x931
	.uaword	0x7857
	.byte	0x3
	.byte	0x23
	.uleb128 0x200
	.uleb128 0xf
	.string	"TGC1_GLB_CTRL"
	.byte	0x4
	.uahalf	0x932
	.uaword	0x7366
	.byte	0x3
	.byte	0x23
	.uleb128 0x230
	.uleb128 0xf
	.string	"TGC1_ACT_TB"
	.byte	0x4
	.uahalf	0x933
	.uaword	0x723b
	.byte	0x3
	.byte	0x23
	.uleb128 0x234
	.uleb128 0xf
	.string	"TGC1_FUPD_CTRL"
	.byte	0x4
	.uahalf	0x934
	.uaword	0x731b
	.byte	0x3
	.byte	0x23
	.uleb128 0x238
	.uleb128 0xf
	.string	"TGC1_INT_TRIG"
	.byte	0x4
	.uahalf	0x935
	.uaword	0x73b0
	.byte	0x3
	.byte	0x23
	.uleb128 0x23c
	.uleb128 0xf
	.string	"CH9"
	.byte	0x4
	.uahalf	0x936
	.uaword	0x7857
	.byte	0x3
	.byte	0x23
	.uleb128 0x240
	.uleb128 0xf
	.string	"TGC1_ENDIS_CTRL"
	.byte	0x4
	.uahalf	0x937
	.uaword	0x7283
	.byte	0x3
	.byte	0x23
	.uleb128 0x270
	.uleb128 0xf
	.string	"TGC1_ENDIS_STAT"
	.byte	0x4
	.uahalf	0x938
	.uaword	0x72cf
	.byte	0x3
	.byte	0x23
	.uleb128 0x274
	.uleb128 0xf
	.string	"TGC1_OUTEN_CTRL"
	.byte	0x4
	.uahalf	0x939
	.uaword	0x73fa
	.byte	0x3
	.byte	0x23
	.uleb128 0x278
	.uleb128 0xf
	.string	"TGC1_OUTEN_STAT"
	.byte	0x4
	.uahalf	0x93a
	.uaword	0x7446
	.byte	0x3
	.byte	0x23
	.uleb128 0x27c
	.uleb128 0xf
	.string	"CH10"
	.byte	0x4
	.uahalf	0x93b
	.uaword	0x7857
	.byte	0x3
	.byte	0x23
	.uleb128 0x280
	.uleb128 0xf
	.string	"reserved_2B0"
	.byte	0x4
	.uahalf	0x93c
	.uaword	0x818d
	.byte	0x3
	.byte	0x23
	.uleb128 0x2b0
	.uleb128 0xf
	.string	"CH11"
	.byte	0x4
	.uahalf	0x93d
	.uaword	0x7857
	.byte	0x3
	.byte	0x23
	.uleb128 0x2c0
	.uleb128 0xf
	.string	"reserved_2F0"
	.byte	0x4
	.uahalf	0x93e
	.uaword	0x818d
	.byte	0x3
	.byte	0x23
	.uleb128 0x2f0
	.uleb128 0xf
	.string	"CH12"
	.byte	0x4
	.uahalf	0x93f
	.uaword	0x7857
	.byte	0x3
	.byte	0x23
	.uleb128 0x300
	.uleb128 0xf
	.string	"reserved_330"
	.byte	0x4
	.uahalf	0x940
	.uaword	0x818d
	.byte	0x3
	.byte	0x23
	.uleb128 0x330
	.uleb128 0xf
	.string	"CH13"
	.byte	0x4
	.uahalf	0x941
	.uaword	0x7857
	.byte	0x3
	.byte	0x23
	.uleb128 0x340
	.uleb128 0xf
	.string	"reserved_370"
	.byte	0x4
	.uahalf	0x942
	.uaword	0x818d
	.byte	0x3
	.byte	0x23
	.uleb128 0x370
	.uleb128 0xf
	.string	"CH14"
	.byte	0x4
	.uahalf	0x943
	.uaword	0x7857
	.byte	0x3
	.byte	0x23
	.uleb128 0x380
	.uleb128 0xf
	.string	"reserved_3B0"
	.byte	0x4
	.uahalf	0x944
	.uaword	0x818d
	.byte	0x3
	.byte	0x23
	.uleb128 0x3b0
	.uleb128 0xf
	.string	"CH15"
	.byte	0x4
	.uahalf	0x945
	.uaword	0x7857
	.byte	0x3
	.byte	0x23
	.uleb128 0x3c0
	.uleb128 0xf
	.string	"reserved_3F0"
	.byte	0x4
	.uahalf	0x946
	.uaword	0x819d
	.byte	0x3
	.byte	0x23
	.uleb128 0x3f0
	.byte	0
	.uleb128 0x10
	.uaword	0x9c
	.uaword	0x819d
	.uleb128 0x11
	.uaword	0x13b
	.byte	0xf
	.byte	0
	.uleb128 0x10
	.uaword	0x9c
	.uaword	0x81ae
	.uleb128 0x13
	.uaword	0x13b
	.uahalf	0x40f
	.byte	0
	.uleb128 0x14
	.string	"_Ifx_GTM"
	.uaword	0xa0000
	.byte	0x4
	.uahalf	0x954
	.uaword	0x8606
	.uleb128 0xf
	.string	"REV"
	.byte	0x4
	.uahalf	0x956
	.uaword	0x652b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"RST"
	.byte	0x4
	.uahalf	0x957
	.uaword	0x6567
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.uaword	.LASF100
	.byte	0x4
	.uahalf	0x958
	.uaword	0x5d2c
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xf
	.string	"AEI_ADDR_XPT"
	.byte	0x4
	.uahalf	0x959
	.uaword	0x596b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.uaword	.LASF101
	.byte	0x4
	.uahalf	0x95a
	.uaword	0x627c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.uaword	.LASF102
	.byte	0x4
	.uahalf	0x95b
	.uaword	0x61b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.uaword	.LASF103
	.byte	0x4
	.uahalf	0x95c
	.uaword	0x61f7
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.uaword	.LASF20
	.byte	0x4
	.uahalf	0x95d
	.uaword	0x623b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xf
	.string	"EIRQ_EN"
	.byte	0x4
	.uahalf	0x95e
	.uaword	0x5f03
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xf
	.string	"HW_CONF"
	.byte	0x4
	.uahalf	0x95f
	.uaword	0x5f43
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xe
	.uaword	.LASF34
	.byte	0x4
	.uahalf	0x960
	.uaword	0x8606
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xf
	.string	"BRIDGE"
	.byte	0x4
	.uahalf	0x961
	.uaword	0x78a6
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xf
	.string	"reserved_3C"
	.byte	0x4
	.uahalf	0x962
	.uaword	0x7847
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xf
	.string	"TIM_AUX_IN_SRC"
	.byte	0x4
	.uahalf	0x963
	.uaword	0x8616
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xf
	.string	"reserved_44"
	.byte	0x4
	.uahalf	0x964
	.uaword	0x8626
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xf
	.string	"TBU"
	.byte	0x4
	.uahalf	0x965
	.uaword	0x7c23
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0xf
	.string	"reserved_11C"
	.byte	0x4
	.uahalf	0x966
	.uaword	0x8636
	.byte	0x3
	.byte	0x23
	.uleb128 0x11c
	.uleb128 0xf
	.string	"CMU"
	.byte	0x4
	.uahalf	0x967
	.uaword	0x7971
	.byte	0x3
	.byte	0x23
	.uleb128 0x300
	.uleb128 0xf
	.string	"reserved_348"
	.byte	0x4
	.uahalf	0x968
	.uaword	0x8647
	.byte	0x3
	.byte	0x23
	.uleb128 0x348
	.uleb128 0xf
	.string	"ICM"
	.byte	0x4
	.uahalf	0x969
	.uaword	0x7afe
	.byte	0x3
	.byte	0x23
	.uleb128 0x600
	.uleb128 0xf
	.string	"reserved_63C"
	.byte	0x4
	.uahalf	0x96a
	.uaword	0x8658
	.byte	0x3
	.byte	0x23
	.uleb128 0x63c
	.uleb128 0xf
	.string	"TIM"
	.byte	0x4
	.uahalf	0x96b
	.uaword	0x8679
	.byte	0x3
	.byte	0x23
	.uleb128 0x1000
	.uleb128 0xf
	.string	"reserved_1400"
	.byte	0x4
	.uahalf	0x96c
	.uaword	0x867e
	.byte	0x3
	.byte	0x23
	.uleb128 0x1400
	.uleb128 0xf
	.string	"TOM"
	.byte	0x4
	.uahalf	0x96d
	.uaword	0x869f
	.byte	0x4
	.byte	0x23
	.uleb128 0x8000
	.uleb128 0xf
	.string	"reserved_9000"
	.byte	0x4
	.uahalf	0x96e
	.uaword	0x86a4
	.byte	0x4
	.byte	0x23
	.uleb128 0x9000
	.uleb128 0xf
	.string	"DTM1"
	.byte	0x4
	.uahalf	0x96f
	.uaword	0x7a10
	.byte	0x4
	.byte	0x23
	.uleb128 0x13040
	.uleb128 0xf
	.string	"reserved_13064"
	.byte	0x4
	.uahalf	0x970
	.uaword	0x86b5
	.byte	0x4
	.byte	0x23
	.uleb128 0x13064
	.uleb128 0xf
	.string	"DTM5"
	.byte	0x4
	.uahalf	0x971
	.uaword	0x7a10
	.byte	0x4
	.byte	0x23
	.uleb128 0x13140
	.uleb128 0xf
	.string	"reserved_13164"
	.byte	0x4
	.uahalf	0x972
	.uaword	0x86c5
	.byte	0x4
	.byte	0x23
	.uleb128 0x13164
	.uleb128 0xf
	.string	"CLC"
	.byte	0x4
	.uahalf	0x973
	.uaword	0x5a7c
	.byte	0x4
	.byte	0x23
	.uleb128 0x9fd00
	.uleb128 0xf
	.string	"reserved_9FD04"
	.byte	0x4
	.uahalf	0x974
	.uaword	0x7ade
	.byte	0x4
	.byte	0x23
	.uleb128 0x9fd04
	.uleb128 0xf
	.string	"INOUTSEL"
	.byte	0x4
	.uahalf	0x975
	.uaword	0x7b7f
	.byte	0x4
	.byte	0x23
	.uleb128 0x9fd10
	.uleb128 0xf
	.string	"reserved_9FDA4"
	.byte	0x4
	.uahalf	0x976
	.uaword	0x7ade
	.byte	0x4
	.byte	0x23
	.uleb128 0x9fda4
	.uleb128 0xf
	.string	"ADCTRIG0OUT0"
	.byte	0x4
	.uahalf	0x977
	.uaword	0x58e1
	.byte	0x4
	.byte	0x23
	.uleb128 0x9fdb0
	.uleb128 0xf
	.string	"reserved_9FDB4"
	.byte	0x4
	.uahalf	0x978
	.uaword	0x7847
	.byte	0x4
	.byte	0x23
	.uleb128 0x9fdb4
	.uleb128 0xf
	.string	"ADCTRIG1OUT0"
	.byte	0x4
	.uahalf	0x979
	.uaword	0x5926
	.byte	0x4
	.byte	0x23
	.uleb128 0x9fdb8
	.uleb128 0xf
	.string	"reserved_9FDBC"
	.byte	0x4
	.uahalf	0x97a
	.uaword	0x8606
	.byte	0x4
	.byte	0x23
	.uleb128 0x9fdbc
	.uleb128 0xf
	.string	"OTBU0T"
	.byte	0x4
	.uahalf	0x97b
	.uaword	0x63f3
	.byte	0x4
	.byte	0x23
	.uleb128 0x9fdc4
	.uleb128 0xf
	.string	"OTBU1T"
	.byte	0x4
	.uahalf	0x97c
	.uaword	0x6432
	.byte	0x4
	.byte	0x23
	.uleb128 0x9fdc8
	.uleb128 0xf
	.string	"OTBU2T"
	.byte	0x4
	.uahalf	0x97d
	.uaword	0x6471
	.byte	0x4
	.byte	0x23
	.uleb128 0x9fdcc
	.uleb128 0xf
	.string	"OTSS"
	.byte	0x4
	.uahalf	0x97e
	.uaword	0x64ee
	.byte	0x4
	.byte	0x23
	.uleb128 0x9fdd0
	.uleb128 0xf
	.string	"OTSC0"
	.byte	0x4
	.uahalf	0x97f
	.uaword	0x64b0
	.byte	0x4
	.byte	0x23
	.uleb128 0x9fdd4
	.uleb128 0xf
	.string	"reserved_9FDD8"
	.byte	0x4
	.uahalf	0x980
	.uaword	0x7847
	.byte	0x4
	.byte	0x23
	.uleb128 0x9fdd8
	.uleb128 0xf
	.string	"ODA"
	.byte	0x4
	.uahalf	0x981
	.uaword	0x63b7
	.byte	0x4
	.byte	0x23
	.uleb128 0x9fddc
	.uleb128 0xf
	.string	"reserved_9FDE0"
	.byte	0x4
	.uahalf	0x982
	.uaword	0x8606
	.byte	0x4
	.byte	0x23
	.uleb128 0x9fde0
	.uleb128 0xf
	.string	"OCS"
	.byte	0x4
	.uahalf	0x983
	.uaword	0x637b
	.byte	0x4
	.byte	0x23
	.uleb128 0x9fde8
	.uleb128 0xf
	.string	"KRSTCLR"
	.byte	0x4
	.uahalf	0x984
	.uaword	0x633b
	.byte	0x4
	.byte	0x23
	.uleb128 0x9fdec
	.uleb128 0xf
	.string	"KRST1"
	.byte	0x4
	.uahalf	0x985
	.uaword	0x62fd
	.byte	0x4
	.byte	0x23
	.uleb128 0x9fdf0
	.uleb128 0xf
	.string	"KRST0"
	.byte	0x4
	.uahalf	0x986
	.uaword	0x62bf
	.byte	0x4
	.byte	0x23
	.uleb128 0x9fdf4
	.uleb128 0xf
	.string	"ACCEN1"
	.byte	0x4
	.uahalf	0x987
	.uaword	0x58a2
	.byte	0x4
	.byte	0x23
	.uleb128 0x9fdf8
	.uleb128 0xf
	.string	"ACCEN0"
	.byte	0x4
	.uahalf	0x988
	.uaword	0x5863
	.byte	0x4
	.byte	0x23
	.uleb128 0x9fdfc
	.uleb128 0xf
	.string	"reserved_9FE00"
	.byte	0x4
	.uahalf	0x989
	.uaword	0x86d8
	.byte	0x4
	.byte	0x23
	.uleb128 0x9fe00
	.byte	0
	.uleb128 0x10
	.uaword	0x9c
	.uaword	0x8616
	.uleb128 0x11
	.uaword	0x13b
	.byte	0x7
	.byte	0
	.uleb128 0x10
	.uaword	0x6782
	.uaword	0x8626
	.uleb128 0x11
	.uaword	0x13b
	.byte	0
	.byte	0
	.uleb128 0x10
	.uaword	0x9c
	.uaword	0x8636
	.uleb128 0x11
	.uaword	0x13b
	.byte	0xbb
	.byte	0
	.uleb128 0x10
	.uaword	0x9c
	.uaword	0x8647
	.uleb128 0x13
	.uaword	0x13b
	.uahalf	0x1e3
	.byte	0
	.uleb128 0x10
	.uaword	0x9c
	.uaword	0x8658
	.uleb128 0x13
	.uaword	0x13b
	.uahalf	0x2b7
	.byte	0
	.uleb128 0x10
	.uaword	0x9c
	.uaword	0x8669
	.uleb128 0x13
	.uaword	0x13b
	.uahalf	0x9c3
	.byte	0
	.uleb128 0x10
	.uaword	0x7c28
	.uaword	0x8679
	.uleb128 0x11
	.uaword	0x13b
	.byte	0
	.byte	0
	.uleb128 0x6
	.uaword	0x8669
	.uleb128 0x10
	.uaword	0x9c
	.uaword	0x868f
	.uleb128 0x13
	.uaword	0x13b
	.uahalf	0x6bff
	.byte	0
	.uleb128 0x10
	.uaword	0x7da1
	.uaword	0x869f
	.uleb128 0x11
	.uaword	0x13b
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.uaword	0x868f
	.uleb128 0x10
	.uaword	0x9c
	.uaword	0x86b5
	.uleb128 0x13
	.uaword	0x13b
	.uahalf	0xa03f
	.byte	0
	.uleb128 0x10
	.uaword	0x9c
	.uaword	0x86c5
	.uleb128 0x11
	.uaword	0x13b
	.byte	0xdb
	.byte	0
	.uleb128 0x10
	.uaword	0x9c
	.uaword	0x86d8
	.uleb128 0x15
	.uaword	0x13b
	.uaword	0x8cb9b
	.byte	0
	.uleb128 0x10
	.uaword	0x9c
	.uaword	0x86e9
	.uleb128 0x13
	.uaword	0x13b
	.uahalf	0x1ff
	.byte	0
	.uleb128 0xa
	.string	"Ifx_GTM"
	.byte	0x4
	.uahalf	0x98a
	.uaword	0x86f9
	.uleb128 0x6
	.uaword	0x81ae
	.uleb128 0x16
	.byte	0x4
	.byte	0x5
	.byte	0x32
	.uaword	0x872a
	.uleb128 0x17
	.string	"IfxSrc_Tos_cpu0"
	.sleb128 0
	.uleb128 0x17
	.string	"IfxSrc_Tos_dma"
	.sleb128 1
	.byte	0
	.uleb128 0x3
	.string	"IfxSrc_Tos"
	.byte	0x5
	.byte	0x35
	.uaword	0x86fe
	.uleb128 0x3
	.string	"uint16"
	.byte	0x6
	.byte	0x5d
	.uaword	0xca
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x3
	.string	"uint32"
	.byte	0x6
	.byte	0x5f
	.uaword	0x13b
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.string	"long long int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.string	"long long unsigned int"
	.uleb128 0x3
	.string	"Ifx_Priority"
	.byte	0x7
	.byte	0x43
	.uaword	0x873c
	.uleb128 0x4
	.string	"_Ifx_SRC_SRCR_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0x2d
	.uaword	0x88c7
	.uleb128 0x5
	.string	"SRPN"
	.byte	0x8
	.byte	0x2f
	.uaword	0xf7
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.uaword	.LASF19
	.byte	0x8
	.byte	0x30
	.uaword	0xf7
	.byte	0x4
	.byte	0x2
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"SRE"
	.byte	0x8
	.byte	0x31
	.uaword	0xf7
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"TOS"
	.byte	0x8
	.byte	0x32
	.uaword	0xf7
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.uaword	.LASF17
	.byte	0x8
	.byte	0x33
	.uaword	0xf7
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"ECC"
	.byte	0x8
	.byte	0x34
	.uaword	0xf7
	.byte	0x4
	.byte	0x5
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.uaword	.LASF2
	.byte	0x8
	.byte	0x35
	.uaword	0xf7
	.byte	0x4
	.byte	0x3
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"SRR"
	.byte	0x8
	.byte	0x36
	.uaword	0xf7
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"CLRR"
	.byte	0x8
	.byte	0x37
	.uaword	0xf7
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"SETR"
	.byte	0x8
	.byte	0x38
	.uaword	0xf7
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"IOV"
	.byte	0x8
	.byte	0x39
	.uaword	0xf7
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"IOVCLR"
	.byte	0x8
	.byte	0x3a
	.uaword	0xf7
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"SWS"
	.byte	0x8
	.byte	0x3b
	.uaword	0xf7
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"SWSCLR"
	.byte	0x8
	.byte	0x3c
	.uaword	0xf7
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.uaword	.LASF24
	.byte	0x8
	.byte	0x3d
	.uaword	0xf7
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_SRCR_Bits"
	.byte	0x8
	.byte	0x3e
	.uaword	0x87a3
	.uleb128 0x18
	.byte	0x4
	.byte	0x8
	.byte	0x46
	.uaword	0x8904
	.uleb128 0x19
	.string	"U"
	.byte	0x8
	.byte	0x48
	.uaword	0xf7
	.uleb128 0x19
	.string	"I"
	.byte	0x8
	.byte	0x49
	.uaword	0xe0
	.uleb128 0x19
	.string	"B"
	.byte	0x8
	.byte	0x4a
	.uaword	0x88c7
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_SRCR"
	.byte	0x8
	.byte	0x4b
	.uaword	0x88e0
	.uleb128 0xb
	.string	"_Ifx_CPU_PSW_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x204
	.uaword	0x8a13
	.uleb128 0x8
	.string	"CDC"
	.byte	0x9
	.uahalf	0x206
	.uaword	0x3d8
	.byte	0x4
	.byte	0x7
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"CDE"
	.byte	0x9
	.uahalf	0x207
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"GW"
	.byte	0x9
	.uahalf	0x208
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"IS"
	.byte	0x9
	.uahalf	0x209
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"IO"
	.byte	0x9
	.uahalf	0x20a
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"PRS"
	.byte	0x9
	.uahalf	0x20b
	.uaword	0x3d8
	.byte	0x4
	.byte	0x2
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"S"
	.byte	0x9
	.uahalf	0x20c
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF33
	.byte	0x9
	.uahalf	0x20d
	.uaword	0x3d8
	.byte	0x4
	.byte	0xc
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"SAV"
	.byte	0x9
	.uahalf	0x20e
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"AV"
	.byte	0x9
	.uahalf	0x20f
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"SV"
	.byte	0x9
	.uahalf	0x210
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"V"
	.byte	0x9
	.uahalf	0x211
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"C"
	.byte	0x9
	.uahalf	0x212
	.uaword	0x3d8
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_CPU_PSW_Bits"
	.byte	0x9
	.uahalf	0x213
	.uaword	0x8918
	.uleb128 0xc
	.byte	0x4
	.byte	0x9
	.uahalf	0x467
	.uaword	0x8a54
	.uleb128 0xd
	.string	"U"
	.byte	0x9
	.uahalf	0x469
	.uaword	0xf7
	.uleb128 0xd
	.string	"I"
	.byte	0x9
	.uahalf	0x46a
	.uaword	0xe0
	.uleb128 0xd
	.string	"B"
	.byte	0x9
	.uahalf	0x46b
	.uaword	0x8a13
	.byte	0
	.uleb128 0xa
	.string	"Ifx_CPU_PSW"
	.byte	0x9
	.uahalf	0x46c
	.uaword	0x8a2c
	.uleb128 0x16
	.byte	0x4
	.byte	0xa
	.byte	0x59
	.uaword	0x8ba9
	.uleb128 0x17
	.string	"MAIN_E_HW_B0"
	.sleb128 0
	.uleb128 0x17
	.string	"MAIN_E_HW_B01_X10"
	.sleb128 1
	.uleb128 0x17
	.string	"MAIN_E_HW_B01_X10_DV"
	.sleb128 2
	.uleb128 0x17
	.string	"MAIN_E_HW_B02_X10"
	.sleb128 3
	.uleb128 0x17
	.string	"MAIN_E_HW_B02_X10_DV"
	.sleb128 4
	.uleb128 0x17
	.string	"MAIN_E_HW_C0"
	.sleb128 5
	.uleb128 0x17
	.string	"MAIN_E_HW_C0_DV"
	.sleb128 6
	.uleb128 0x17
	.string	"MAIN_E_HW_C1"
	.sleb128 7
	.uleb128 0x17
	.string	"MAIN_E_HW_C1_DV"
	.sleb128 8
	.uleb128 0x17
	.string	"MAIN_E_HW_C1_C01"
	.sleb128 9
	.uleb128 0x17
	.string	"MAIN_E_HW_C1_C01_DV"
	.sleb128 10
	.uleb128 0x17
	.string	"MAIN_E_HW_C1_C02"
	.sleb128 11
	.uleb128 0x17
	.string	"MAIN_E_HW_C1_C02_DV"
	.sleb128 12
	.uleb128 0x17
	.string	"MAIN_E_HW_C1_BAK13"
	.sleb128 13
	.uleb128 0x17
	.string	"MAIN_E_HW_C1_BAK14"
	.sleb128 14
	.uleb128 0x17
	.string	"MAIN_E_HW_Reserved"
	.sleb128 15
	.byte	0
	.uleb128 0x3
	.string	"MAIN_E_HW_VER"
	.byte	0xa
	.byte	0x6a
	.uaword	0x8a68
	.uleb128 0x1a
	.byte	0x10
	.byte	0xa
	.byte	0x6c
	.uaword	0x8c3f
	.uleb128 0x1b
	.string	"App"
	.byte	0xa
	.byte	0x6d
	.uaword	0x158
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x1b
	.string	"Meas"
	.byte	0xa
	.byte	0x6e
	.uaword	0x158
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x1b
	.string	"Ctrl"
	.byte	0xa
	.byte	0x6f
	.uaword	0x158
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.string	"Pwm"
	.byte	0xa
	.byte	0x70
	.uaword	0x158
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x1b
	.string	"Diag"
	.byte	0xa
	.byte	0x71
	.uaword	0x158
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1b
	.string	"Ntc"
	.byte	0xa
	.byte	0x72
	.uaword	0x158
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x1b
	.string	"State"
	.byte	0xa
	.byte	0x73
	.uaword	0x158
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x1b
	.string	"Safety"
	.byte	0xa
	.byte	0x74
	.uaword	0x158
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.byte	0
	.uleb128 0x3
	.string	"MAIN_E_HW_VER_APP"
	.byte	0xa
	.byte	0x75
	.uaword	0x8bbe
	.uleb128 0x1a
	.byte	0x20
	.byte	0xa
	.byte	0x77
	.uaword	0x8cb0
	.uleb128 0x1b
	.string	"Code"
	.byte	0xa
	.byte	0x78
	.uaword	0x8cb0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x1b
	.string	"CodeNum"
	.byte	0xa
	.byte	0x79
	.uaword	0x158
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1b
	.string	"VerName"
	.byte	0xa
	.byte	0x7a
	.uaword	0x158
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x1b
	.string	"Ver"
	.byte	0xa
	.byte	0x7b
	.uaword	0x8ba9
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x1b
	.string	"App"
	.byte	0xa
	.byte	0x7c
	.uaword	0x8c3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x10
	.uaword	0x158
	.uaword	0x8cc0
	.uleb128 0x11
	.uaword	0x13b
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.string	"MAIN_S_HW_VER"
	.byte	0xa
	.byte	0x7d
	.uaword	0x8c58
	.uleb128 0x1c
	.uaword	.LASF105
	.byte	0x4
	.byte	0xc
	.byte	0x20
	.uaword	0x8d1e
	.uleb128 0x17
	.string	"GTM_E_DisReg"
	.sleb128 0
	.uleb128 0x17
	.string	"GTM_E_WaitEn"
	.sleb128 1
	.uleb128 0x17
	.string	"GTM_E_EnReg"
	.sleb128 2
	.uleb128 0x17
	.string	"GTM_E_WaitDis"
	.sleb128 3
	.byte	0
	.uleb128 0x1d
	.uaword	.LASF105
	.byte	0xc
	.byte	0x25
	.uaword	0x8cd5
	.uleb128 0x1e
	.string	"IfxSrc_clearRequest"
	.byte	0x2
	.byte	0xe6
	.byte	0x1
	.byte	0x3
	.uaword	0x8d52
	.uleb128 0x1f
	.string	"src"
	.byte	0x2
	.byte	0xe6
	.uaword	0x8d52
	.byte	0
	.uleb128 0x20
	.byte	0x4
	.uaword	0x8d58
	.uleb128 0x6
	.uaword	0x8904
	.uleb128 0x1e
	.string	"IfxSrc_init"
	.byte	0x2
	.byte	0xfe
	.byte	0x1
	.byte	0x3
	.uaword	0x8da2
	.uleb128 0x1f
	.string	"src"
	.byte	0x2
	.byte	0xfe
	.uaword	0x8d52
	.uleb128 0x1f
	.string	"typOfService"
	.byte	0x2
	.byte	0xfe
	.uaword	0x872a
	.uleb128 0x1f
	.string	"priority"
	.byte	0x2
	.byte	0xfe
	.uaword	0x878f
	.byte	0
	.uleb128 0x1e
	.string	"IfxSrc_enable"
	.byte	0x2
	.byte	0xf8
	.byte	0x1
	.byte	0x3
	.uaword	0x8dc5
	.uleb128 0x1f
	.string	"src"
	.byte	0x2
	.byte	0xf8
	.uaword	0x8d52
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.string	"Gtm_vTomCHcfg_HwVer1"
	.byte	0x1
	.uahalf	0x170
	.byte	0x1
	.byte	0x1
	.uleb128 0x21
	.byte	0x1
	.string	"Gtm_vTomCHcfg_HwVer0"
	.byte	0x1
	.uahalf	0x17b
	.byte	0x1
	.byte	0x1
	.uleb128 0x22
	.byte	0x1
	.string	"Gtm_PwmEnDis_Init"
	.byte	0x1
	.uahalf	0x1c8
	.byte	0x1
	.byte	0x1
	.uaword	0x8e25
	.uleb128 0x23
	.string	"i"
	.byte	0x1
	.uahalf	0x1ca
	.uaword	0x158
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.string	"Gtm_Sr_EnDis"
	.byte	0x1
	.uahalf	0x278
	.byte	0x1
	.byte	0x1
	.uaword	0x8e4a
	.uleb128 0x24
	.uaword	.LASF106
	.byte	0x1
	.uahalf	0x278
	.uaword	0x179
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.string	"Gtm_Clamp_EnDis"
	.byte	0x1
	.uahalf	0x286
	.byte	0x1
	.byte	0x1
	.uaword	0x8e72
	.uleb128 0x24
	.uaword	.LASF106
	.byte	0x1
	.uahalf	0x286
	.uaword	0x179
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.string	"Gtm_EnDisReg"
	.byte	0x1
	.uahalf	0x22e
	.byte	0x1
	.byte	0x1
	.uaword	0x8ea3
	.uleb128 0x25
	.string	"en"
	.byte	0x1
	.uahalf	0x22e
	.uaword	0x179
	.uleb128 0x25
	.string	"type"
	.byte	0x1
	.uahalf	0x22e
	.uaword	0x158
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.string	"Gtm_Pri_EnDisDuty"
	.byte	0x1
	.uahalf	0x294
	.byte	0x1
	.byte	0x1
	.uaword	0x8ecd
	.uleb128 0x24
	.uaword	.LASF106
	.byte	0x1
	.uahalf	0x294
	.uaword	0x179
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.string	"Gtm_Sr_EnDisDuty"
	.byte	0x1
	.uahalf	0x299
	.byte	0x1
	.byte	0x1
	.uaword	0x8ef6
	.uleb128 0x24
	.uaword	.LASF106
	.byte	0x1
	.uahalf	0x299
	.uaword	0x179
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.string	"Gtm_Clamp_EnDisDuty"
	.byte	0x1
	.uahalf	0x2a4
	.byte	0x1
	.byte	0x1
	.uaword	0x8f22
	.uleb128 0x24
	.uaword	.LASF106
	.byte	0x1
	.uahalf	0x2a4
	.uaword	0x179
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.string	"Gtm_EnDisDuty"
	.byte	0x1
	.uahalf	0x240
	.byte	0x1
	.byte	0x1
	.uaword	0x8f54
	.uleb128 0x25
	.string	"en"
	.byte	0x1
	.uahalf	0x240
	.uaword	0x179
	.uleb128 0x25
	.string	"type"
	.byte	0x1
	.uahalf	0x240
	.uaword	0x158
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.string	"Gtm_Pri_ResetDuty"
	.byte	0x1
	.uahalf	0x2ae
	.byte	0x1
	.byte	0x1
	.uleb128 0x21
	.byte	0x1
	.string	"Gtm_Sr_ResetDuty"
	.byte	0x1
	.uahalf	0x2b6
	.byte	0x1
	.byte	0x1
	.uleb128 0x21
	.byte	0x1
	.string	"Gtm_Clamp_ResetDuty"
	.byte	0x1
	.uahalf	0x2bc
	.byte	0x1
	.byte	0x1
	.uleb128 0x26
	.byte	0x1
	.string	"Gtm_vTomCHcfg"
	.byte	0x1
	.byte	0xe7
	.byte	0x1
	.uaword	.LFB204
	.uaword	.LFE204
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x8fe3
	.uleb128 0x27
	.uaword	0x8de1
	.uaword	.LBB60
	.uaword	.LBE60
	.byte	0x1
	.uahalf	0x115
	.uleb128 0x27
	.uaword	0x8dc5
	.uaword	.LBB62
	.uaword	.LBE62
	.byte	0x1
	.uahalf	0x111
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.string	"Gtm_vIsr_cfg"
	.byte	0x1
	.uahalf	0x155
	.byte	0x1
	.uaword	.LFB205
	.uaword	.LFE205
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x9192
	.uleb128 0x29
	.uaword	0x8d5d
	.uaword	.LBB64
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.uahalf	0x15a
	.uaword	0x904a
	.uleb128 0x2a
	.uaword	0x8d91
	.byte	0x60
	.uleb128 0x2a
	.uaword	0x8d7d
	.byte	0
	.uleb128 0x2b
	.uaword	0x8d72
	.sleb128 -268199028
	.uleb128 0x2c
	.uaword	0x8d29
	.uaword	.LBB66
	.uaword	.LBE66
	.byte	0x2
	.uahalf	0x102
	.uleb128 0x2d
	.uaword	0x8d46
	.uaword	.LLST0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uaword	0x8da2
	.uaword	.LBB70
	.uaword	.LBE70
	.byte	0x1
	.uahalf	0x15b
	.uaword	0x9069
	.uleb128 0x2b
	.uaword	0x8db9
	.sleb128 -268199028
	.byte	0
	.uleb128 0x29
	.uaword	0x8d5d
	.uaword	.LBB72
	.uaword	.Ldebug_ranges0+0x18
	.byte	0x1
	.uahalf	0x160
	.uaword	0x90ae
	.uleb128 0x2a
	.uaword	0x8d91
	.byte	0x50
	.uleb128 0x2a
	.uaword	0x8d7d
	.byte	0
	.uleb128 0x2b
	.uaword	0x8d72
	.sleb128 -268198988
	.uleb128 0x2c
	.uaword	0x8d29
	.uaword	.LBB74
	.uaword	.LBE74
	.byte	0x2
	.uahalf	0x102
	.uleb128 0x2d
	.uaword	0x8d46
	.uaword	.LLST0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uaword	0x8da2
	.uaword	.LBB78
	.uaword	.LBE78
	.byte	0x1
	.uahalf	0x161
	.uaword	0x90cd
	.uleb128 0x2b
	.uaword	0x8db9
	.sleb128 -268198988
	.byte	0
	.uleb128 0x29
	.uaword	0x8d5d
	.uaword	.LBB80
	.uaword	.Ldebug_ranges0+0x30
	.byte	0x1
	.uahalf	0x166
	.uaword	0x9112
	.uleb128 0x2a
	.uaword	0x8d91
	.byte	0x40
	.uleb128 0x2a
	.uaword	0x8d7d
	.byte	0
	.uleb128 0x2b
	.uaword	0x8d72
	.sleb128 -268198984
	.uleb128 0x2c
	.uaword	0x8d29
	.uaword	.LBB82
	.uaword	.LBE82
	.byte	0x2
	.uahalf	0x102
	.uleb128 0x2d
	.uaword	0x8d46
	.uaword	.LLST0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uaword	0x8da2
	.uaword	.LBB86
	.uaword	.LBE86
	.byte	0x1
	.uahalf	0x167
	.uaword	0x9131
	.uleb128 0x2b
	.uaword	0x8db9
	.sleb128 -268198984
	.byte	0
	.uleb128 0x2e
	.uaword	0x8d5d
	.uaword	.LBB88
	.uaword	.LBE88
	.byte	0x1
	.uahalf	0x16c
	.uaword	0x9176
	.uleb128 0x2a
	.uaword	0x8d91
	.byte	0x30
	.uleb128 0x2a
	.uaword	0x8d7d
	.byte	0
	.uleb128 0x2b
	.uaword	0x8d72
	.sleb128 -268198980
	.uleb128 0x2c
	.uaword	0x8d29
	.uaword	.LBB90
	.uaword	.LBE90
	.byte	0x2
	.uahalf	0x102
	.uleb128 0x2d
	.uaword	0x8d46
	.uaword	.LLST0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uaword	0x8da2
	.uaword	.LBB92
	.uaword	.LBE92
	.byte	0x1
	.uahalf	0x16d
	.uleb128 0x2b
	.uaword	0x8db9
	.sleb128 -268198980
	.byte	0
	.byte	0
	.uleb128 0x2f
	.byte	0x1
	.string	"Gtm_vTom_cfg"
	.byte	0x1
	.byte	0x49
	.byte	0x1
	.uaword	.LFB203
	.uaword	.LFE203
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0x30
	.uaword	0x8dc5
	.uaword	.LFB206
	.uaword	.LFE206
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0x30
	.uaword	0x8de1
	.uaword	.LFB207
	.uaword	.LFE207
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0x31
	.byte	0x1
	.string	"Gtm_vTim_cfg"
	.byte	0x1
	.uahalf	0x186
	.byte	0x1
	.uaword	.LFB208
	.uaword	.LFE208
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0x31
	.byte	0x1
	.string	"Gtm_Pwm_Pt_Init"
	.byte	0x1
	.uahalf	0x1af
	.byte	0x1
	.uaword	.LFB209
	.uaword	.LFE209
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0x26
	.byte	0x1
	.string	"Gtm_Init"
	.byte	0x1
	.byte	0x41
	.byte	0x1
	.uaword	.LFB202
	.uaword	.LFE202
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x924b
	.uleb128 0x32
	.uaword	0x8dfd
	.uaword	.LBB94
	.uaword	.Ldebug_ranges0+0x48
	.byte	0x1
	.byte	0x46
	.uleb128 0x33
	.uaword	.Ldebug_ranges0+0x68
	.uleb128 0x34
	.uaword	0x8e1a
	.uaword	.LLST1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x35
	.uaword	0x8dfd
	.uaword	.LFB210
	.uaword	.LFE210
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x9269
	.uleb128 0x34
	.uaword	0x8e1a
	.uaword	.LLST2
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.string	"Gtm_StopWDI"
	.byte	0x1
	.uahalf	0x1da
	.byte	0x1
	.uaword	.LFB211
	.uaword	.LFE211
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0x28
	.byte	0x1
	.string	"Gtm_CheckPwmStatus"
	.byte	0x1
	.uahalf	0x1e0
	.byte	0x1
	.uaword	.LFB212
	.uaword	.LFE212
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x92dd
	.uleb128 0x36
	.string	"CntTemp"
	.byte	0x1
	.uahalf	0x1e2
	.uaword	0x163
	.uaword	.LLST3
	.uleb128 0x36
	.string	"PwmStatusTemp"
	.byte	0x1
	.uahalf	0x1e3
	.uaword	0x158
	.uaword	.LLST4
	.byte	0
	.uleb128 0x35
	.uaword	0x8f22
	.uaword	.LFB215
	.uaword	.LFE215
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x9377
	.uleb128 0x37
	.uaword	0x8f3b
	.byte	0x1
	.byte	0x54
	.uleb128 0x37
	.uaword	0x8f46
	.byte	0x1
	.byte	0x55
	.uleb128 0x2e
	.uaword	0x8ef6
	.uaword	.LBB110
	.uaword	.LBE110
	.byte	0x1
	.uahalf	0x24b
	.uaword	0x931d
	.uleb128 0x2d
	.uaword	0x8f15
	.uaword	.LLST5
	.byte	0
	.uleb128 0x2e
	.uaword	0x8ecd
	.uaword	.LBB112
	.uaword	.LBE112
	.byte	0x1
	.uahalf	0x248
	.uaword	0x9339
	.uleb128 0x37
	.uaword	0x8ee9
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x2c
	.uaword	0x8f22
	.uaword	.LBB114
	.uaword	.LBE114
	.byte	0x1
	.uahalf	0x240
	.uleb128 0x38
	.uaword	.LBB115
	.uaword	.LBE115
	.uleb128 0x39
	.uaword	0x8f46
	.uleb128 0x39
	.uaword	0x8f3b
	.uleb128 0x2c
	.uaword	0x8ecd
	.uaword	.LBB116
	.uaword	.LBE116
	.byte	0x1
	.uahalf	0x248
	.uleb128 0x37
	.uaword	0x8ee9
	.byte	0x1
	.byte	0x54
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.string	"Gtm_ResetDuty"
	.byte	0x1
	.uahalf	0x252
	.byte	0x1
	.uaword	.LFB216
	.uaword	.LFE216
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x93da
	.uleb128 0x3a
	.string	"type"
	.byte	0x1
	.uahalf	0x252
	.uaword	0x158
	.byte	0x1
	.byte	0x54
	.uleb128 0x27
	.uaword	0x8f54
	.uaword	.LBB118
	.uaword	.LBE118
	.byte	0x1
	.uahalf	0x257
	.uleb128 0x27
	.uaword	0x8f85
	.uaword	.LBB120
	.uaword	.LBE120
	.byte	0x1
	.uahalf	0x25d
	.uleb128 0x27
	.uaword	0x8f6d
	.uaword	.LBB122
	.uaword	.LBE122
	.byte	0x1
	.uahalf	0x25a
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.string	"Gtm_Pri_EnDis"
	.byte	0x1
	.uahalf	0x264
	.byte	0x1
	.uaword	.LFB217
	.uaword	.LFE217
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x940c
	.uleb128 0x3b
	.uaword	.LASF106
	.byte	0x1
	.uahalf	0x264
	.uaword	0x179
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x35
	.uaword	0x8e72
	.uaword	.LFB214
	.uaword	.LFE214
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x94a6
	.uleb128 0x2d
	.uaword	0x8e8a
	.uaword	.LLST6
	.uleb128 0x2d
	.uaword	0x8e95
	.uaword	.LLST7
	.uleb128 0x29
	.uaword	0x8e72
	.uaword	.LBB134
	.uaword	.Ldebug_ranges0+0x88
	.byte	0x1
	.uahalf	0x22e
	.uaword	0x946d
	.uleb128 0x33
	.uaword	.Ldebug_ranges0+0xa0
	.uleb128 0x39
	.uaword	0x8e95
	.uleb128 0x39
	.uaword	0x8e8a
	.uleb128 0x3c
	.uaword	0x8e4a
	.uaword	.LBB136
	.uaword	.Ldebug_ranges0+0xb8
	.byte	0x1
	.uahalf	0x239
	.uleb128 0x39
	.uaword	0x8e65
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uaword	0x8e4a
	.uaword	.LBB141
	.uaword	.LBE141
	.byte	0x1
	.uahalf	0x239
	.uaword	0x948b
	.uleb128 0x2d
	.uaword	0x8e65
	.uaword	.LLST8
	.byte	0
	.uleb128 0x2c
	.uaword	0x8e25
	.uaword	.LBB143
	.uaword	.LBE143
	.byte	0x1
	.uahalf	0x236
	.uleb128 0x2d
	.uaword	0x8e3d
	.uaword	.LLST9
	.byte	0
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.string	"Gtm_PwmEnDis_Calc"
	.byte	0x1
	.uahalf	0x207
	.byte	0x1
	.uaword	.LFB213
	.uaword	.LFE213
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x94dc
	.uleb128 0x36
	.string	"i"
	.byte	0x1
	.uahalf	0x209
	.uaword	0x158
	.uaword	.LLST10
	.byte	0
	.uleb128 0x35
	.uaword	0x8e25
	.uaword	.LFB218
	.uaword	.LFE218
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x94f8
	.uleb128 0x37
	.uaword	0x8e3d
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x35
	.uaword	0x8e4a
	.uaword	.LFB219
	.uaword	.LFE219
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x9514
	.uleb128 0x37
	.uaword	0x8e65
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x35
	.uaword	0x8ea3
	.uaword	.LFB220
	.uaword	.LFE220
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x9530
	.uleb128 0x37
	.uaword	0x8ec0
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x35
	.uaword	0x8ecd
	.uaword	.LFB221
	.uaword	.LFE221
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x954c
	.uleb128 0x37
	.uaword	0x8ee9
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x35
	.uaword	0x8ef6
	.uaword	.LFB222
	.uaword	.LFE222
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x9568
	.uleb128 0x37
	.uaword	0x8f15
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x30
	.uaword	0x8f54
	.uaword	.LFB223
	.uaword	.LFE223
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0x30
	.uaword	0x8f6d
	.uaword	.LFB224
	.uaword	.LFE224
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0x30
	.uaword	0x8f85
	.uaword	.LFB225
	.uaword	.LFE225
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0x28
	.byte	0x1
	.string	"Gtm_DebugPwm"
	.byte	0x1
	.uahalf	0x2c2
	.byte	0x1
	.uaword	.LFB226
	.uaword	.LFE226
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x95cc
	.uleb128 0x3d
	.string	"duty"
	.byte	0x1
	.uahalf	0x2c2
	.uaword	0x16e
	.uaword	.LLST11
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.string	"Gtm_DebugPwmScope"
	.byte	0x1
	.uahalf	0x2ca
	.byte	0x1
	.uaword	.LFB227
	.uaword	.LFE227
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x963f
	.uleb128 0x3d
	.string	"real"
	.byte	0x1
	.uahalf	0x2ca
	.uaword	0x16e
	.uaword	.LLST12
	.uleb128 0x3a
	.string	"real_div"
	.byte	0x1
	.uahalf	0x2ca
	.uaword	0x16e
	.byte	0x1
	.byte	0x55
	.uleb128 0x3d
	.string	"debug_div"
	.byte	0x1
	.uahalf	0x2ca
	.uaword	0x16e
	.uaword	.LLST13
	.uleb128 0x36
	.string	"duty"
	.byte	0x1
	.uahalf	0x2ce
	.uaword	0x16e
	.uaword	.LLST14
	.byte	0
	.uleb128 0x3e
	.string	"PSWReg_Rd0"
	.byte	0xb
	.byte	0x45
	.uaword	0x8a54
	.byte	0x1
	.byte	0x1
	.uleb128 0x3e
	.string	"PSWReg_Rd1"
	.byte	0xb
	.byte	0x46
	.uaword	0x8a54
	.byte	0x1
	.byte	0x1
	.uleb128 0x3e
	.string	"PSWReg_Rd2"
	.byte	0xb
	.byte	0x47
	.uaword	0x8a54
	.byte	0x1
	.byte	0x1
	.uleb128 0x3e
	.string	"PSWReg_Rd3"
	.byte	0xb
	.byte	0x48
	.uaword	0x8a54
	.byte	0x1
	.byte	0x1
	.uleb128 0x3e
	.string	"Main_HwVer"
	.byte	0xa
	.byte	0x89
	.uaword	0x8cc0
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.uaword	0x96b3
	.uaword	0x96b3
	.uleb128 0x11
	.uaword	0x13b
	.byte	0x9
	.byte	0
	.uleb128 0x20
	.byte	0x4
	.uaword	0x158
	.uleb128 0x3f
	.string	"PwmSr0Pt"
	.byte	0x1
	.byte	0x1d
	.uaword	0x96a3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	PwmSr0Pt
	.uleb128 0x3f
	.string	"PwmSr1Pt"
	.byte	0x1
	.byte	0x1e
	.uaword	0x96a3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	PwmSr1Pt
	.uleb128 0x10
	.uaword	0x158
	.uaword	0x96f7
	.uleb128 0x11
	.uaword	0x13b
	.byte	0x2
	.byte	0
	.uleb128 0x3f
	.string	"Pwm_PwmEn"
	.byte	0x1
	.byte	0x1f
	.uaword	0x96e7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Pwm_PwmEn
	.uleb128 0x3f
	.string	"Safety_PwmEn"
	.byte	0x1
	.byte	0x20
	.uaword	0x96e7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Safety_PwmEn
	.uleb128 0x3f
	.string	"Gtm_PwmStatus"
	.byte	0x1
	.byte	0x24
	.uaword	0x158
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Gtm_PwmStatus
	.uleb128 0x3f
	.string	"Safety_WDIDis"
	.byte	0x1
	.byte	0x25
	.uaword	0x158
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Safety_WDIDis
	.uleb128 0x3f
	.string	"Gtm_WDIDisCnt"
	.byte	0x1
	.byte	0x26
	.uaword	0x158
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Gtm_WDIDisCnt
	.uleb128 0x3f
	.string	"Flag_WDIDis"
	.byte	0x1
	.byte	0x27
	.uaword	0x158
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Flag_WDIDis
	.uleb128 0x3f
	.string	"Gtm_PwmEn"
	.byte	0x1
	.byte	0x21
	.uaword	0x96e7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Gtm_PwmEn
	.uleb128 0x10
	.uaword	0x8d1e
	.uaword	0x97c0
	.uleb128 0x11
	.uaword	0x13b
	.byte	0x2
	.byte	0
	.uleb128 0x3f
	.string	"Gtm_PwmEnState"
	.byte	0x1
	.byte	0x22
	.uaword	0x97b0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Gtm_PwmEnState
	.uleb128 0x10
	.uaword	0x163
	.uaword	0x97ed
	.uleb128 0x11
	.uaword	0x13b
	.byte	0x3
	.byte	0
	.uleb128 0x3f
	.string	"Gtm_TimCnt"
	.byte	0x1
	.byte	0x23
	.uaword	0x97dd
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Gtm_TimCnt
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
	.uleb128 0x6
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0x38
	.uleb128 0xa
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
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0x6
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x4
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x20
	.uleb128 0xb
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
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x2d
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x38
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x39
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3a
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x3b
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.uleb128 0x3e
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
	.uleb128 0x3f
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
	.uaword	.LVL1
	.uaword	.LVL4
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0xf0039b8c
	.uaword	.LVL4
	.uaword	.LVL7
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0xf0039bb4
	.uaword	.LVL7
	.uaword	.LVL10
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0xf0039bb8
	.uaword	.LVL10
	.uaword	.LFE205
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0xf0039bbc
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL13
	.uaword	.LVL14
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL14
	.uaword	.LVL15
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL15
	.uaword	.LFE202
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL16
	.uaword	.LVL17
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL17
	.uaword	.LVL18
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL18
	.uaword	.LVL19
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL19
	.uaword	.LFE210
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL21
	.uaword	.LVL23
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL23
	.uaword	.LVL24
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL24
	.uaword	.LVL25
	.uahalf	0x5
	.byte	0x3
	.uaword	Gtm_TimCnt+4
	.uaword	.LVL25
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL26
	.uaword	.LVL28
	.uahalf	0x5
	.byte	0x3
	.uaword	Gtm_TimCnt+8
	.uaword	.LVL28
	.uaword	.LFE212
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL20
	.uaword	.LVL22
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL22
	.uaword	.LVL25
	.uahalf	0xa
	.byte	0x3
	.uaword	Gtm_TimCnt
	.byte	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x2e
	.byte	0x9f
	.uaword	.LVL25
	.uaword	.LVL30
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL32
	.uaword	.LVL33
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL36
	.uaword	.LVL37-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL37
	.uaword	.LFE214
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL36
	.uaword	.LVL37-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL37
	.uaword	.LFE214
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL38
	.uaword	.LVL39
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL40
	.uaword	.LFE214
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL39
	.uaword	.LVL40
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL41
	.uaword	.LVL42
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL43
	.uaword	.LVL44
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL50
	.uaword	.LVL51
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL52
	.uaword	.LVL53
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL54
	.uaword	.LVL56
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL54
	.uaword	.LVL55
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL57
	.uaword	.LVL58
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL59
	.uaword	.LFE227
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
	.section .debug_aranges,"",@progbits
	.uaword	0xe4
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB204
	.uaword	.LFE204-.LFB204
	.uaword	.LFB205
	.uaword	.LFE205-.LFB205
	.uaword	.LFB203
	.uaword	.LFE203-.LFB203
	.uaword	.LFB206
	.uaword	.LFE206-.LFB206
	.uaword	.LFB207
	.uaword	.LFE207-.LFB207
	.uaword	.LFB208
	.uaword	.LFE208-.LFB208
	.uaword	.LFB209
	.uaword	.LFE209-.LFB209
	.uaword	.LFB202
	.uaword	.LFE202-.LFB202
	.uaword	.LFB210
	.uaword	.LFE210-.LFB210
	.uaword	.LFB211
	.uaword	.LFE211-.LFB211
	.uaword	.LFB212
	.uaword	.LFE212-.LFB212
	.uaword	.LFB215
	.uaword	.LFE215-.LFB215
	.uaword	.LFB216
	.uaword	.LFE216-.LFB216
	.uaword	.LFB217
	.uaword	.LFE217-.LFB217
	.uaword	.LFB214
	.uaword	.LFE214-.LFB214
	.uaword	.LFB213
	.uaword	.LFE213-.LFB213
	.uaword	.LFB218
	.uaword	.LFE218-.LFB218
	.uaword	.LFB219
	.uaword	.LFE219-.LFB219
	.uaword	.LFB220
	.uaword	.LFE220-.LFB220
	.uaword	.LFB221
	.uaword	.LFE221-.LFB221
	.uaword	.LFB222
	.uaword	.LFE222-.LFB222
	.uaword	.LFB223
	.uaword	.LFE223-.LFB223
	.uaword	.LFB224
	.uaword	.LFE224-.LFB224
	.uaword	.LFB225
	.uaword	.LFE225-.LFB225
	.uaword	.LFB226
	.uaword	.LFE226-.LFB226
	.uaword	.LFB227
	.uaword	.LFE227-.LFB227
	.uaword	0
	.uaword	0
	.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB64
	.uaword	.LBE64
	.uaword	.LBB69
	.uaword	.LBE69
	.uaword	0
	.uaword	0
	.uaword	.LBB72
	.uaword	.LBE72
	.uaword	.LBB77
	.uaword	.LBE77
	.uaword	0
	.uaword	0
	.uaword	.LBB80
	.uaword	.LBE80
	.uaword	.LBB85
	.uaword	.LBE85
	.uaword	0
	.uaword	0
	.uaword	.LBB94
	.uaword	.LBE94
	.uaword	.LBB98
	.uaword	.LBE98
	.uaword	.LBB99
	.uaword	.LBE99
	.uaword	0
	.uaword	0
	.uaword	.LBB95
	.uaword	.LBE95
	.uaword	.LBB96
	.uaword	.LBE96
	.uaword	.LBB97
	.uaword	.LBE97
	.uaword	0
	.uaword	0
	.uaword	.LBB134
	.uaword	.LBE134
	.uaword	.LBB145
	.uaword	.LBE145
	.uaword	0
	.uaword	0
	.uaword	.LBB135
	.uaword	.LBE135
	.uaword	.LBB140
	.uaword	.LBE140
	.uaword	0
	.uaword	0
	.uaword	.LBB136
	.uaword	.LBE136
	.uaword	.LBB139
	.uaword	.LBE139
	.uaword	0
	.uaword	0
	.uaword	.LFB204
	.uaword	.LFE204
	.uaword	.LFB205
	.uaword	.LFE205
	.uaword	.LFB203
	.uaword	.LFE203
	.uaword	.LFB206
	.uaword	.LFE206
	.uaword	.LFB207
	.uaword	.LFE207
	.uaword	.LFB208
	.uaword	.LFE208
	.uaword	.LFB209
	.uaword	.LFE209
	.uaword	.LFB202
	.uaword	.LFE202
	.uaword	.LFB210
	.uaword	.LFE210
	.uaword	.LFB211
	.uaword	.LFE211
	.uaword	.LFB212
	.uaword	.LFE212
	.uaword	.LFB215
	.uaword	.LFE215
	.uaword	.LFB216
	.uaword	.LFE216
	.uaword	.LFB217
	.uaword	.LFE217
	.uaword	.LFB214
	.uaword	.LFE214
	.uaword	.LFB213
	.uaword	.LFE213
	.uaword	.LFB218
	.uaword	.LFE218
	.uaword	.LFB219
	.uaword	.LFE219
	.uaword	.LFB220
	.uaword	.LFE220
	.uaword	.LFB221
	.uaword	.LFE221
	.uaword	.LFB222
	.uaword	.LFE222
	.uaword	.LFB223
	.uaword	.LFE223
	.uaword	.LFB224
	.uaword	.LFE224
	.uaword	.LFB225
	.uaword	.LFE225
	.uaword	.LFB226
	.uaword	.LFE226
	.uaword	.LFB227
	.uaword	.LFE227
	.uaword	0
	.uaword	0
	.section .debug_line,"",@progbits
.Ldebug_line0:
	.section .debug_str,"",@progbits
.LASF7:
	.string	"CLK_CNT"
.LASF11:
	.string	"GCLK_NUM"
.LASF106:
	.string	"enable"
.LASF23:
	.string	"CH_CLK_SRC"
.LASF25:
	.string	"RST_CH0"
.LASF26:
	.string	"RST_CH1"
.LASF27:
	.string	"RST_CH2"
.LASF28:
	.string	"RST_CH3"
.LASF29:
	.string	"RST_CH4"
.LASF30:
	.string	"RST_CH5"
.LASF31:
	.string	"RST_CH6"
.LASF32:
	.string	"RST_CH7"
.LASF103:
	.string	"IRQ_FORCINT"
.LASF4:
	.string	"reserved_10"
.LASF17:
	.string	"reserved_12"
.LASF33:
	.string	"reserved_15"
.LASF1:
	.string	"reserved_16"
.LASF70:
	.string	"UPEN_CTRL2"
.LASF51:
	.string	"FUPD_CTRL0"
.LASF52:
	.string	"FUPD_CTRL1"
.LASF53:
	.string	"FUPD_CTRL2"
.LASF54:
	.string	"FUPD_CTRL3"
.LASF55:
	.string	"FUPD_CTRL4"
.LASF56:
	.string	"FUPD_CTRL5"
.LASF57:
	.string	"FUPD_CTRL6"
.LASF58:
	.string	"FUPD_CTRL7"
.LASF18:
	.string	"reserved_20"
.LASF2:
	.string	"reserved_21"
.LASF14:
	.string	"reserved_22"
.LASF8:
	.string	"reserved_24"
.LASF9:
	.string	"reserved_25"
.LASF21:
	.string	"reserved_27"
.LASF34:
	.string	"reserved_28"
.LASF22:
	.string	"reserved_29"
.LASF35:
	.string	"ENDIS_CTRL0"
.LASF36:
	.string	"ENDIS_CTRL1"
.LASF37:
	.string	"ENDIS_CTRL2"
.LASF38:
	.string	"ENDIS_CTRL3"
.LASF39:
	.string	"ENDIS_CTRL4"
.LASF40:
	.string	"ENDIS_CTRL5"
.LASF41:
	.string	"ENDIS_CTRL6"
.LASF42:
	.string	"ENDIS_CTRL7"
.LASF79:
	.string	"INT_TRIG3"
.LASF77:
	.string	"INT_TRIG1"
.LASF0:
	.string	"reserved_0"
.LASF12:
	.string	"reserved_1"
.LASF3:
	.string	"reserved_2"
.LASF16:
	.string	"reserved_3"
.LASF6:
	.string	"reserved_4"
.LASF5:
	.string	"reserved_5"
.LASF13:
	.string	"reserved_6"
.LASF80:
	.string	"INT_TRIG4"
.LASF19:
	.string	"reserved_8"
.LASF81:
	.string	"INT_TRIG5"
.LASF76:
	.string	"INT_TRIG0"
.LASF67:
	.string	"HOST_TRIG"
.LASF78:
	.string	"INT_TRIG2"
.LASF59:
	.string	"RSTCN0_CH0"
.LASF60:
	.string	"RSTCN0_CH1"
.LASF61:
	.string	"RSTCN0_CH2"
.LASF15:
	.string	"reserved_30"
.LASF24:
	.string	"reserved_31"
.LASF65:
	.string	"RSTCN0_CH6"
.LASF66:
	.string	"RSTCN0_CH7"
.LASF68:
	.string	"UPEN_CTRL0"
.LASF69:
	.string	"UPEN_CTRL1"
.LASF71:
	.string	"UPEN_CTRL3"
.LASF72:
	.string	"UPEN_CTRL4"
.LASF73:
	.string	"UPEN_CTRL5"
.LASF74:
	.string	"UPEN_CTRL6"
.LASF75:
	.string	"UPEN_CTRL7"
.LASF82:
	.string	"INT_TRIG6"
.LASF83:
	.string	"INT_TRIG7"
.LASF84:
	.string	"OUTEN_CTRL0"
.LASF85:
	.string	"OUTEN_CTRL1"
.LASF86:
	.string	"OUTEN_CTRL2"
.LASF87:
	.string	"OUTEN_CTRL3"
.LASF88:
	.string	"OUTEN_CTRL4"
.LASF89:
	.string	"OUTEN_CTRL5"
.LASF90:
	.string	"OUTEN_CTRL6"
.LASF91:
	.string	"OUTEN_CTRL7"
.LASF43:
	.string	"ENDIS_STAT0"
.LASF44:
	.string	"ENDIS_STAT1"
.LASF45:
	.string	"ENDIS_STAT2"
.LASF46:
	.string	"ENDIS_STAT3"
.LASF47:
	.string	"ENDIS_STAT4"
.LASF48:
	.string	"ENDIS_STAT5"
.LASF49:
	.string	"ENDIS_STAT6"
.LASF50:
	.string	"ENDIS_STAT7"
.LASF104:
	.string	"reserved_40"
.LASF105:
	.string	"GTM_E_PWMENSTATE"
.LASF101:
	.string	"IRQ_NOTIFY"
.LASF10:
	.string	"GCLK_DEN"
.LASF92:
	.string	"OUTEN_STAT0"
.LASF93:
	.string	"OUTEN_STAT1"
.LASF94:
	.string	"OUTEN_STAT2"
.LASF95:
	.string	"OUTEN_STAT3"
.LASF100:
	.string	"CTRL"
.LASF97:
	.string	"OUTEN_STAT5"
.LASF98:
	.string	"OUTEN_STAT6"
.LASF99:
	.string	"OUTEN_STAT7"
.LASF20:
	.string	"IRQ_MODE"
.LASF96:
	.string	"OUTEN_STAT4"
.LASF102:
	.string	"IRQ_EN"
.LASF62:
	.string	"RSTCN0_CH3"
.LASF63:
	.string	"RSTCN0_CH4"
.LASF64:
	.string	"RSTCN0_CH5"
	.extern	delay_ms_main,STT_FUNC,0
	.extern	IfxScuWdt_setCpuEndinit,STT_FUNC,0
	.extern	IfxScuWdt_clearCpuEndinit,STT_FUNC,0
	.extern	IfxScuWdt_getCpuWatchdogPassword,STT_FUNC,0
	.extern	Main_HwVer,STT_OBJECT,32
	.ident	"GCC: (HighTec Release v4.6.3.0) 4.6.3 build on 2013-05-17"
