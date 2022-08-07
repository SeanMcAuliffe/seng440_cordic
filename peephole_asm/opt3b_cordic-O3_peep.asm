	.arch armv4t
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 2
	.eabi_attribute 18, 4
	.file	"opt3b_cordic.c"
	.text
	.align	2
	.global	cordic_opt3b_vectoring
	.type	cordic_opt3b_vectoring, %function
cordic_opt3b_vectoring:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5, r6}
	subs	r4, r1, #0
	mov	r6, r3
	movge	ip, #651264
	movge	r3, #167936
	addge	ip, ip, #3584
	addge	r3, r3, #752
	rsbge	r1, r0, r4
	mov	r5, r2
	addge	ip, ip, #10
	addge	r3, r3, #2
	addge	r0, r4, r0
	blt	.L42
.L3:
	cmp	r1, #0
	subge	r2, r1, r0, asr #1
	addlt	r2, r1, r0, asr #1
	movge	r3, ip
	addge	r0, r0, r1, asr #1
	sublt	r0, r0, r1, asr #1
	cmp	r2, #0
	addge	ip, r3, #128000
	sublt	ip, r3, #128000
	subge	r1, r2, r0, asr #2
	addlt	r1, r2, r0, asr #2
	addge	ip, ip, #436
	sublt	ip, ip, #436
	addge	r3, r0, r2, asr #2
	sublt	r3, r0, r2, asr #2
	addge	ip, ip, #3
	sublt	ip, ip, #3
	cmp	r1, #0
	subge	r0, r1, r3, asr #3
	addlt	r0, r1, r3, asr #3
	addge	ip, ip, #65024
	sublt	ip, ip, #65024
	addge	ip, ip, #173
	sublt	ip, ip, #173
	addge	r3, r3, r1, asr #3
	sublt	r3, r3, r1, asr #3
	cmp	r0, #0
	subge	r1, r0, r3, asr #4
	addlt	r1, r0, r3, asr #4
	addge	ip, ip, #32512
	sublt	ip, ip, #32512
	addge	r3, r3, r0, asr #4
	sublt	r3, r3, r0, asr #4
	addge	ip, ip, #213
	sublt	ip, ip, #213
	cmp	r1, #0
	subge	r0, r1, r3, asr #5
	addlt	r0, r1, r3, asr #5
	addge	ip, ip, #16320
	sublt	ip, ip, #16320
	addge	ip, ip, #58
	sublt	ip, ip, #58
	addge	r3, r3, r1, asr #5
	sublt	r3, r3, r1, asr #5
	cmp	r0, #0
	subge	r1, r0, r3, asr #6
	addlt	r1, r0, r3, asr #6
	addge	ip, ip, #8128
	sublt	ip, ip, #8128
	addge	r3, r3, r0, asr #6
	sublt	r3, r3, r0, asr #6
	addge	ip, ip, #63
	sublt	ip, ip, #63
	cmp	r1, #0
	subge	r0, r1, r3, asr #7
	addlt	r0, r1, r3, asr #7
	addge	ip, ip, #4080
	sublt	ip, ip, #4080
	addge	ip, ip, #15
	sublt	ip, ip, #15
	addge	r3, r3, r1, asr #7
	sublt	r3, r3, r1, asr #7
	cmp	r0, #0
	subge	r1, r0, r3, asr #8
	addlt	r1, r0, r3, asr #8
	addge	ip, ip, #2032
	sublt	ip, ip, #2032
	addge	r3, r3, r0, asr #8
	sublt	r3, r3, r0, asr #8
	addge	ip, ip, #15
	sublt	ip, ip, #15
	cmp	r1, #0
	subge	r0, r1, r3, asr #9
	addlt	r0, r1, r3, asr #9
	addge	ip, ip, #1020
	sublt	ip, ip, #1020
	addge	r1, r3, r1, asr #9
	sublt	r1, r3, r1, asr #9
	addge	ip, ip, #3
	sublt	ip, ip, #3
	cmp	r0, #0
	subge	r3, r0, r1, asr #10
	addlt	r3, r0, r1, asr #10
	addge	ip, ip, #508
	sublt	ip, ip, #508
	addge	r0, r1, r0, asr #10
	sublt	r0, r1, r0, asr #10
	addge	ip, ip, #3
	sublt	ip, ip, #3
	cmp	r3, #0
	subge	r1, r3, r0, asr #11
	addlt	r1, r3, r0, asr #11
	addge	r0, r0, r3, asr #11
	sublt	r0, r0, r3, asr #11
	addge	r2, ip, #255
	sublt	r2, ip, #255
	cmp	r1, #0
	subge	ip, r1, r0, asr #12
	addlt	ip, r1, r0, asr #12
	addge	r0, r0, r1, asr #12
	sublt	r0, r0, r1, asr #12
	addge	r3, r2, #127
	sublt	r3, r2, #127
	cmp	ip, #0
	subge	r1, ip, r0, asr #13
	addlt	r1, ip, r0, asr #13
	addge	r0, r0, ip, asr #13
	sublt	r0, r0, ip, asr #13
	addge	r3, r3, #63
	sublt	r3, r3, #63
	cmp	r1, #0
	subge	ip, r1, r0, asr #14
	addlt	ip, r1, r0, asr #14
	addge	r0, r0, r1, asr #14
	sublt	r0, r0, r1, asr #14
	addge	r3, r3, #31
	sublt	r3, r3, #31
	cmp	ip, #0
	subge	r1, ip, r0, asr #15
	addlt	r1, ip, r0, asr #15
	addge	r0, r0, ip, asr #15
	sublt	r0, r0, ip, asr #15
	addge	r3, r3, #15
	sublt	r3, r3, #15
	cmp	r1, #0
	subge	ip, r1, r0, asr #16
	addlt	ip, r1, r0, asr #16
	addge	r0, r0, r1, asr #16
	sublt	r0, r0, r1, asr #16
	addge	r3, r3, #7
	sublt	r3, r3, #7
	cmp	ip, #0
	subge	r1, ip, r0, asr #17
	addlt	r1, ip, r0, asr #17
	addge	r0, r0, ip, asr #17
	sublt	r0, r0, ip, asr #17
	addge	r3, r3, #3
	sublt	r3, r3, #3
	cmp	r1, #0
	addge	r0, r0, r1, asr #18
	addge	ip, r3, #1
	sublt	r0, r0, r1, asr #18
	sublt	ip, r3, #1
	str	r0, [r5, #0]
	str	ip, [r6, #0]
	ldmfd	sp!, {r4, r5, r6}
	bx	lr
.L42:
	mvn	ip, #167936
	mvn	r3, #651264
	sub	ip, ip, #752
	sub	r3, r3, #3584
	add	r1, r4, r0
	sub	ip, ip, #1
	sub	r3, r3, #9
	rsb	r0, r4, r0
	b	.L3
	.size	cordic_opt3b_vectoring, .-cordic_opt3b_vectoring
	.align	2
	.global	cordic_opt3b_rotation
	.type	cordic_opt3b_rotation, %function
cordic_opt3b_rotation:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0
	stmfd	sp!, {r4, r5, r6, r7, r8, sl}
	mov	r8, r1
	mov	sl, r2
	blt	.L83
	mov	r2, #475136
	mov	r3, #118784
	sub	r0, r0, #409600
	add	r2, r2, #2416
	add	r3, r3, #604
	mov	r1, #158720
	mov	ip, #39680
	sub	r0, r0, #2160
	add	r2, r2, #10
	add	r1, r1, #468
	add	ip, ip, #117
	add	r3, r3, #2
	sub	r0, r0, #14
	mov	r7, r1
	mov	r6, r2
	mov	r4, r3
	mov	r5, ip
.L45:
	cmp	r0, #0
	addlt	r0, r0, #242688
	subge	r0, r0, #242688
	addlt	r0, r0, #396
	subge	r0, r0, #396
	movge	r3, r5
	movge	ip, r4
	movge	r2, r7
	movge	r1, r6
	cmp	r0, #0
	addlt	r0, r0, #128000
	subge	r0, r0, #128000
	addlt	r0, r0, #436
	subge	r0, r0, #436
	addlt	r0, r0, #3
	subge	r0, r0, #3
	rsblt	r3, r3, r1
	addge	r3, r3, r1
	addlt	ip, ip, r2
	rsbge	ip, ip, r2
	cmp	r0, #0
	addlt	r0, r0, #65024
	subge	r0, r0, #65024
	addlt	r0, r0, #173
	subge	r0, r0, #173
	sublt	r1, r3, ip, asr #3
	addge	r1, r3, ip, asr #3
	addlt	r3, ip, r3, asr #3
	subge	r3, ip, r3, asr #3
	cmp	r0, #0
	addlt	r0, r0, #32512
	subge	r0, r0, #32512
	addlt	r0, r0, #213
	subge	r0, r0, #213
	sublt	r2, r1, r3, asr #4
	addge	r2, r1, r3, asr #4
	addlt	r3, r3, r1, asr #4
	subge	r3, r3, r1, asr #4
	cmp	r0, #0
	addlt	r0, r0, #16320
	subge	r0, r0, #16320
	addlt	r0, r0, #58
	subge	r0, r0, #58
	sublt	ip, r2, r3, asr #5
	addge	ip, r2, r3, asr #5
	addlt	r3, r3, r2, asr #5
	subge	r3, r3, r2, asr #5
	cmp	r0, #0
	addlt	r0, r0, #8128
	subge	r0, r0, #8128
	addlt	r0, r0, #63
	subge	r0, r0, #63
	sublt	r2, ip, r3, asr #6
	addge	r2, ip, r3, asr #6
	addlt	r3, r3, ip, asr #6
	subge	r3, r3, ip, asr #6
	cmp	r0, #0
	addlt	r0, r0, #4080
	subge	r0, r0, #4080
	addlt	r0, r0, #15
	subge	r0, r0, #15
	sublt	ip, r2, r3, asr #7
	addge	ip, r2, r3, asr #7
	addlt	r3, r3, r2, asr #7
	subge	r3, r3, r2, asr #7
	cmp	r0, #0
	addlt	r0, r0, #2032
	subge	r0, r0, #2032
	addlt	r0, r0, #15
	subge	r0, r0, #15
	sublt	r2, ip, r3, asr #8
	addge	r2, ip, r3, asr #8
	addlt	r3, r3, ip, asr #8
	subge	r3, r3, ip, asr #8
	cmp	r0, #0
	addlt	r0, r0, #1020
	subge	r0, r0, #1020
	addlt	r0, r0, #3
	subge	r0, r0, #3
	sublt	ip, r2, r3, asr #9
	addge	ip, r2, r3, asr #9
	addlt	r3, r3, r2, asr #9
	subge	r3, r3, r2, asr #9
	cmp	r0, #0
	addlt	r0, r0, #508
	subge	r0, r0, #508
	addlt	r0, r0, #3
	subge	r0, r0, #3
	sublt	r2, ip, r3, asr #10
	addge	r2, ip, r3, asr #10
	addlt	r3, r3, ip, asr #10
	subge	r3, r3, ip, asr #10
	cmp	r0, #0
	addlt	r0, r0, #255
	subge	r0, r0, #255
	sublt	ip, r2, r3, asr #11
	addge	ip, r2, r3, asr #11
	addlt	r3, r3, r2, asr #11
	subge	r3, r3, r2, asr #11
	cmp	r0, #0
	addlt	r0, r0, #127
	subge	r0, r0, #127
	sublt	r2, ip, r3, asr #12
	addge	r2, ip, r3, asr #12
	addlt	r3, r3, ip, asr #12
	subge	r3, r3, ip, asr #12
	cmp	r0, #0
	addlt	r0, r0, #63
	subge	r0, r0, #63
	sublt	ip, r2, r3, asr #13
	addge	ip, r2, r3, asr #13
	addlt	r3, r3, r2, asr #13
	subge	r3, r3, r2, asr #13
	cmp	r0, #0
	addlt	r0, r0, #31
	subge	r0, r0, #31
	sublt	r2, ip, r3, asr #14
	addge	r2, ip, r3, asr #14
	addlt	r3, r3, ip, asr #14
	subge	r3, r3, ip, asr #14
	cmp	r0, #0
	addlt	r0, r0, #15
	subge	r0, r0, #15
	sublt	ip, r2, r3, asr #15
	addge	ip, r2, r3, asr #15
	addlt	r3, r3, r2, asr #15
	subge	r3, r3, r2, asr #15
	cmp	r0, #0
	addlt	r0, r0, #7
	subge	r0, r0, #7
	sublt	r2, ip, r3, asr #16
	addge	r2, ip, r3, asr #16
	addlt	r3, r3, ip, asr #16
	subge	r3, r3, ip, asr #16
	cmp	r0, #0
	addlt	r0, r0, #3
	subge	r0, r0, #3
	sublt	ip, r2, r3, asr #17
	addge	ip, r2, r3, asr #17
	addlt	r3, r3, r2, asr #17
	subge	r3, r3, r2, asr #17
	cmp	r0, #0
	sublt	r0, ip, r3, asr #18
	addge	r0, ip, r3, asr #18
	addlt	r3, r3, ip, asr #18
	subge	r3, r3, ip, asr #18
	str	r3, [r8, #0]
	str	r0, [sl, #0]
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl}
	bx	lr
.L83:
	add	r0, r0, #409600
	mov	r2, #158720
	mvn	r1, #475136
	mov	r7, #475136
	mvn	r6, #158720
	mvn	ip, #118784
	mov	r5, #118784
	add	r0, r0, #2160
	add	r2, r2, #464
	sub	r1, r1, #2416
	add	r7, r7, #2416
	sub	r6, r6, #464
	sub	ip, ip, #604
	add	r5, r5, #604
	mov	r3, #39680
	mvn	r4, #39680
	add	r0, r0, #14
	add	r2, r2, #3
	sub	r1, r1, #9
	add	r7, r7, #11
	sub	r6, r6, #3
	sub	ip, ip, #2
	add	r3, r3, #116
	sub	r4, r4, #116
	add	r5, r5, #2
	b	.L45
	.size	cordic_opt3b_rotation, .-cordic_opt3b_rotation
	.ident	"GCC: (Sourcery G++ Lite 2008q3-72) 4.3.2"
	.section	.note.GNU-stack,"",%progbits
