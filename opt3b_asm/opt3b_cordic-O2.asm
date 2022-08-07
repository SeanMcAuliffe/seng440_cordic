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
	stmfd	sp!, {r4, r5}
	subs	r4, r1, #0
	movge	ip, #409600
	mov	r1, r0
	mvnlt	ip, #409600
	addlt	r0, r4, r1
	rsbge	r0, r0, r4
	addge	ip, ip, #2160
	sublt	ip, ip, #2160
	addge	r1, r4, r1
	rsblt	r1, r4, r1
	addge	ip, ip, #14
	sublt	ip, ip, #13
	cmp	r0, #0
	addge	ip, ip, #242688
	sublt	ip, ip, #242688
	mov	r5, r3
	subge	r3, r0, r1, asr #1
	addlt	r3, r0, r1, asr #1
	addge	r0, r1, r0, asr #1
	sublt	r0, r1, r0, asr #1
	addge	ip, ip, #396
	sublt	ip, ip, #396
	cmp	r3, #0
	addge	ip, ip, #128000
	sublt	ip, ip, #128000
	subge	r1, r3, r0, asr #2
	addlt	r1, r3, r0, asr #2
	addge	ip, ip, #436
	sublt	ip, ip, #436
	addge	ip, ip, #3
	sublt	ip, ip, #3
	addge	r3, r0, r3, asr #2
	sublt	r3, r0, r3, asr #2
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
	addge	ip, ip, #213
	sublt	ip, ip, #213
	addge	r3, r3, r0, asr #4
	sublt	r3, r3, r0, asr #4
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
	addge	ip, ip, #63
	sublt	ip, ip, #63
	addge	r3, r3, r0, asr #6
	sublt	r3, r3, r0, asr #6
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
	addge	ip, ip, #15
	sublt	ip, ip, #15
	addge	r3, r3, r0, asr #8
	sublt	r3, r3, r0, asr #8
	cmp	r1, #0
	subge	r0, r1, r3, asr #9
	addlt	r0, r1, r3, asr #9
	addge	ip, ip, #1020
	sublt	ip, ip, #1020
	addge	ip, ip, #3
	addge	r1, r3, r1, asr #9
	sublt	ip, ip, #3
	sublt	r1, r3, r1, asr #9
	cmp	r0, #0
	addge	ip, ip, #508
	sublt	ip, ip, #508
	subge	r3, r0, r1, asr #10
	addlt	r3, r0, r1, asr #10
	addge	r0, r1, r0, asr #10
	sublt	r0, r1, r0, asr #10
	addge	ip, ip, #3
	sublt	ip, ip, #3
	cmp	r3, #0
	subge	r1, r3, r0, asr #11
	addlt	r1, r3, r0, asr #11
	addge	r0, r0, r3, asr #11
	sublt	r0, r0, r3, asr #11
	addge	r4, ip, #255
	sublt	r4, ip, #255
	cmp	r1, #0
	subge	ip, r1, r0, asr #12
	addlt	ip, r1, r0, asr #12
	addge	r0, r0, r1, asr #12
	sublt	r0, r0, r1, asr #12
	addge	r4, r4, #127
	sublt	r4, r4, #127
	cmp	ip, #0
	subge	r1, ip, r0, asr #13
	addlt	r1, ip, r0, asr #13
	addge	r0, r0, ip, asr #13
	sublt	r0, r0, ip, asr #13
	addge	r4, r4, #63
	sublt	r4, r4, #63
	cmp	r1, #0
	subge	ip, r1, r0, asr #14
	addlt	ip, r1, r0, asr #14
	addge	r0, r0, r1, asr #14
	sublt	r0, r0, r1, asr #14
	addge	r4, r4, #31
	sublt	r4, r4, #31
	cmp	ip, #0
	subge	r1, ip, r0, asr #15
	addlt	r1, ip, r0, asr #15
	addge	r0, r0, ip, asr #15
	sublt	r0, r0, ip, asr #15
	addge	r4, r4, #15
	sublt	r4, r4, #15
	cmp	r1, #0
	subge	ip, r1, r0, asr #16
	addlt	ip, r1, r0, asr #16
	addge	r0, r0, r1, asr #16
	sublt	r0, r0, r1, asr #16
	addge	r4, r4, #7
	sublt	r4, r4, #7
	cmp	ip, #0
	subge	r1, ip, r0, asr #17
	addlt	r1, ip, r0, asr #17
	addge	r0, r0, ip, asr #17
	sublt	r0, r0, ip, asr #17
	addge	r4, r4, #3
	sublt	r4, r4, #3
	cmp	r1, #0
	addge	r0, r0, r1, asr #18
	addge	ip, r4, #1
	sublt	r0, r0, r1, asr #18
	sublt	ip, r4, #1
	str	r0, [r2, #0]
	str	ip, [r5, #0]
	ldmfd	sp!, {r4, r5}
	bx	lr
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
	subge	r0, r0, #409600
	movge	ip, #315392
	movge	r3, #158720
	subge	r0, r0, #2160
	addge	ip, ip, #2976
	addge	r3, r3, #464
	stmfd	sp!, {r4, r5}
	subge	r0, r0, #14
	mov	r4, r1
	mov	r5, r2
	addge	ip, ip, #7
	addge	r3, r3, #3
	blt	.L82
.L43:
	cmp	r0, #0
	addlt	r2, r3, #315392
	sublt	r3, ip, #158720
	addlt	r2, r2, #2976
	sublt	r3, r3, #464
	addlt	r0, r0, #242688
	addlt	r2, r2, #7
	sublt	r3, r3, #3
	addlt	r0, r0, #396
	blt	.L45
	rsb	r2, r3, #315392
	add	r3, ip, #158720
	add	r2, r2, #2976
	add	r3, r3, #464
	sub	r0, r0, #242688
	add	r2, r2, #7
	add	r3, r3, #3
	sub	r0, r0, #396
.L45:
	cmp	r0, #0
	addlt	r0, r0, #128000
	subge	r0, r0, #128000
	addlt	r0, r0, #436
	subge	r0, r0, #436
	addlt	r0, r0, #3
	subge	r0, r0, #3
	sublt	r1, r3, r2, asr #2
	addge	r1, r3, r2, asr #2
	addlt	r3, r2, r3, asr #2
	subge	r3, r2, r3, asr #2
	cmp	r0, #0
	addlt	r0, r0, #65024
	subge	r0, r0, #65024
	addlt	r0, r0, #173
	subge	r0, r0, #173
	sublt	ip, r1, r3, asr #3
	addge	ip, r1, r3, asr #3
	addlt	r3, r3, r1, asr #3
	subge	r3, r3, r1, asr #3
	cmp	r0, #0
	addlt	r0, r0, #32512
	subge	r0, r0, #32512
	addlt	r0, r0, #213
	subge	r0, r0, #213
	sublt	r2, ip, r3, asr #4
	addge	r2, ip, r3, asr #4
	addlt	r3, r3, ip, asr #4
	subge	r3, r3, ip, asr #4
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
	str	r3, [r4, #0]
	str	r0, [r5, #0]
	ldmfd	sp!, {r4, r5}
	bx	lr
.L82:
	add	r0, r0, #409600
	mvn	ip, #315392
	mvn	r3, #158720
	add	r0, r0, #2160
	sub	ip, ip, #2976
	sub	r3, r3, #464
	add	r0, r0, #14
	sub	ip, ip, #6
	sub	r3, r3, #3
	b	.L43
	.size	cordic_opt3b_rotation, .-cordic_opt3b_rotation
	.ident	"GCC: (Sourcery G++ Lite 2008q3-72) 4.3.2"
	.section	.note.GNU-stack,"",%progbits
