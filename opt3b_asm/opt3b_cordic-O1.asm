	.arch armv4t
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 1
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
	mov	r5, r2
	mov	r6, r3
	cmp	r1, #0
	addge	r2, r1, r0
	rsbge	r0, r0, r1
	movge	r3, #409600
	addge	r3, r3, #2160
	addge	ip, r3, #14
	rsblt	r2, r1, r0
	addlt	r0, r1, r0
	mvnlt	ip, #409600
	sublt	ip, ip, #2160
	sublt	ip, ip, #13
	cmp	r0, #0
	addge	r1, r2, r0, asr #1
	subge	r0, r0, r2, asr #1
	movge	r3, #242688
	addge	r3, r3, #396
	addge	ip, ip, r3
	sublt	r1, r2, r0, asr #1
	addlt	r0, r0, r2, asr #1
	sublt	ip, ip, #242688
	sublt	ip, ip, #396
	cmp	r0, #0
	addge	r4, r1, r0, asr #2
	subge	r0, r0, r1, asr #2
	movge	r3, #128000
	addge	r3, r3, #436
	addge	r3, r3, #3
	addge	ip, ip, r3
	sublt	r4, r1, r0, asr #2
	addlt	r0, r0, r1, asr #2
	sublt	ip, ip, #128000
	sublt	ip, ip, #436
	sublt	ip, ip, #3
	cmp	r0, #0
	addge	r2, r4, r0, asr #3
	subge	r0, r0, r4, asr #3
	movge	r3, #65280
	subge	r3, r3, #83
	addge	ip, ip, r3
	sublt	r2, r4, r0, asr #3
	addlt	r0, r0, r4, asr #3
	sublt	ip, ip, #65024
	sublt	ip, ip, #173
	cmp	r0, #0
	addge	r1, r2, r0, asr #4
	subge	r0, r0, r2, asr #4
	movge	r3, #32512
	addge	r3, r3, #213
	addge	r2, ip, r3
	sublt	r1, r2, r0, asr #4
	addlt	r0, r0, r2, asr #4
	sublt	r2, ip, #32512
	sublt	r2, r2, #213
	cmp	r0, #0
	addge	ip, r1, r0, asr #5
	subge	r0, r0, r1, asr #5
	movge	r3, #16320
	addge	r3, r3, #58
	addge	r2, r2, r3
	sublt	ip, r1, r0, asr #5
	addlt	r0, r0, r1, asr #5
	sublt	r2, r2, #16320
	sublt	r2, r2, #58
	cmp	r0, #0
	addge	r1, ip, r0, asr #6
	subge	r0, r0, ip, asr #6
	movge	r3, #8128
	addge	r3, r3, #63
	addge	r2, r2, r3
	sublt	r1, ip, r0, asr #6
	addlt	r0, r0, ip, asr #6
	sublt	r2, r2, #8128
	sublt	r2, r2, #63
	cmp	r0, #0
	addge	ip, r1, r0, asr #7
	subge	r0, r0, r1, asr #7
	movge	r3, #4080
	addge	r3, r3, #15
	addge	r2, r2, r3
	sublt	ip, r1, r0, asr #7
	addlt	r0, r0, r1, asr #7
	sublt	r2, r2, #4080
	sublt	r2, r2, #15
	cmp	r0, #0
	addge	r1, ip, r0, asr #8
	subge	r0, r0, ip, asr #8
	movge	r3, #2032
	addge	r3, r3, #15
	addge	r2, r2, r3
	sublt	r1, ip, r0, asr #8
	addlt	r0, r0, ip, asr #8
	sublt	r2, r2, #2032
	sublt	r2, r2, #15
	cmp	r0, #0
	addge	ip, r1, r0, asr #9
	subge	r0, r0, r1, asr #9
	movge	r3, #1020
	addge	r3, r3, #3
	addge	r2, r2, r3
	sublt	ip, r1, r0, asr #9
	addlt	r0, r0, r1, asr #9
	sublt	r2, r2, #1020
	sublt	r2, r2, #3
	cmp	r0, #0
	addge	r1, ip, r0, asr #10
	subge	r0, r0, ip, asr #10
	movge	r3, #508
	addge	r3, r3, #3
	addge	r3, r2, r3
	sublt	r1, ip, r0, asr #10
	addlt	r0, r0, ip, asr #10
	sublt	r3, r2, #508
	sublt	r3, r3, #3
	cmp	r0, #0
	addge	ip, r1, r0, asr #11
	subge	r0, r0, r1, asr #11
	addge	r3, r3, #255
	sublt	ip, r1, r0, asr #11
	addlt	r0, r0, r1, asr #11
	sublt	r3, r3, #255
	cmp	r0, #0
	addge	r1, ip, r0, asr #12
	subge	r0, r0, ip, asr #12
	addge	r3, r3, #127
	sublt	r1, ip, r0, asr #12
	addlt	r0, r0, ip, asr #12
	sublt	r3, r3, #127
	cmp	r0, #0
	addge	ip, r1, r0, asr #13
	subge	r0, r0, r1, asr #13
	addge	r3, r3, #63
	sublt	ip, r1, r0, asr #13
	addlt	r0, r0, r1, asr #13
	sublt	r3, r3, #63
	cmp	r0, #0
	addge	r1, ip, r0, asr #14
	subge	r0, r0, ip, asr #14
	addge	r3, r3, #31
	sublt	r1, ip, r0, asr #14
	addlt	r0, r0, ip, asr #14
	sublt	r3, r3, #31
	cmp	r0, #0
	addge	ip, r1, r0, asr #15
	subge	r0, r0, r1, asr #15
	addge	r3, r3, #15
	sublt	ip, r1, r0, asr #15
	addlt	r0, r0, r1, asr #15
	sublt	r3, r3, #15
	cmp	r0, #0
	addge	r1, ip, r0, asr #16
	subge	r0, r0, ip, asr #16
	addge	r3, r3, #7
	sublt	r1, ip, r0, asr #16
	addlt	r0, r0, ip, asr #16
	sublt	r3, r3, #7
	cmp	r0, #0
	addge	ip, r1, r0, asr #17
	subge	r0, r0, r1, asr #17
	addge	r3, r3, #3
	sublt	ip, r1, r0, asr #17
	addlt	r0, r0, r1, asr #17
	sublt	r3, r3, #3
	cmp	r0, #0
	addge	r0, ip, r0, asr #18
	addge	r3, r3, #1
	sublt	r0, ip, r0, asr #18
	sublt	r3, r3, #1
	str	r0, [r5, #0]
	str	r3, [r6, #0]
	ldmfd	sp!, {r4, r5, r6}
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
	stmfd	sp!, {r4, r5}
	mov	r4, r1
	mov	r5, r2
	cmp	r0, #0
	movlt	r3, #409600
	addlt	r3, r3, #2160
	addlt	r3, r3, #14
	addlt	r0, r0, r3
	mvnlt	ip, #315392
	sublt	ip, ip, #2976
	sublt	ip, ip, #6
	blt	.L43
	sub	r0, r0, #409600
	sub	r0, r0, #2160
	sub	r0, r0, #14
	mov	r3, #315392
	add	r3, r3, #2976
	add	ip, r3, #7
.L43:
	cmp	r0, #0
	movlt	r3, #315392
	addlt	r3, r3, #2976
	addlt	r3, r3, #7
	addlt	r2, r3, ip, asr #1
	sublt	ip, ip, #158720
	sublt	ip, ip, #464
	sublt	ip, ip, #3
	movlt	r3, #242688
	addlt	r3, r3, #396
	addlt	r0, r0, r3
	blt	.L45
	mov	r3, #315392
	add	r3, r3, #2976
	add	r3, r3, #7
	sub	r2, r3, ip, asr #1
	mov	r3, #158720
	add	r3, r3, #464
	add	r3, r3, #3
	add	ip, ip, r3
	sub	r0, r0, #242688
	sub	r0, r0, #396
.L45:
	cmp	r0, #0
	addlt	r1, r2, ip, asr #2
	sublt	ip, ip, r2, asr #2
	movlt	r3, #128000
	addlt	r3, r3, #436
	addlt	r3, r3, #3
	addlt	r0, r0, r3
	subge	r1, r2, ip, asr #2
	addge	ip, ip, r2, asr #2
	subge	r0, r0, #128000
	subge	r0, r0, #436
	subge	r0, r0, #3
	cmp	r0, #0
	addlt	r2, r1, ip, asr #3
	sublt	ip, ip, r1, asr #3
	movlt	r3, #65280
	sublt	r3, r3, #83
	addlt	r0, r0, r3
	subge	r2, r1, ip, asr #3
	addge	ip, ip, r1, asr #3
	subge	r0, r0, #65024
	subge	r0, r0, #173
	cmp	r0, #0
	addlt	r1, r2, ip, asr #4
	sublt	ip, ip, r2, asr #4
	movlt	r3, #32512
	addlt	r3, r3, #213
	addlt	r0, r0, r3
	subge	r1, r2, ip, asr #4
	addge	ip, ip, r2, asr #4
	subge	r0, r0, #32512
	subge	r0, r0, #213
	cmp	r0, #0
	addlt	r2, r1, ip, asr #5
	sublt	ip, ip, r1, asr #5
	movlt	r3, #16320
	addlt	r3, r3, #58
	addlt	r0, r0, r3
	subge	r2, r1, ip, asr #5
	addge	ip, ip, r1, asr #5
	subge	r0, r0, #16320
	subge	r0, r0, #58
	cmp	r0, #0
	addlt	r1, r2, ip, asr #6
	sublt	ip, ip, r2, asr #6
	movlt	r3, #8128
	addlt	r3, r3, #63
	addlt	r0, r0, r3
	subge	r1, r2, ip, asr #6
	addge	ip, ip, r2, asr #6
	subge	r0, r0, #8128
	subge	r0, r0, #63
	cmp	r0, #0
	addlt	r2, r1, ip, asr #7
	sublt	ip, ip, r1, asr #7
	movlt	r3, #4080
	addlt	r3, r3, #15
	addlt	r0, r0, r3
	subge	r2, r1, ip, asr #7
	addge	ip, ip, r1, asr #7
	subge	r0, r0, #4080
	subge	r0, r0, #15
	cmp	r0, #0
	addlt	r1, r2, ip, asr #8
	sublt	ip, ip, r2, asr #8
	movlt	r3, #2032
	addlt	r3, r3, #15
	addlt	r0, r0, r3
	subge	r1, r2, ip, asr #8
	addge	ip, ip, r2, asr #8
	subge	r0, r0, #2032
	subge	r0, r0, #15
	cmp	r0, #0
	addlt	r2, r1, ip, asr #9
	sublt	ip, ip, r1, asr #9
	movlt	r3, #1020
	addlt	r3, r3, #3
	addlt	r0, r0, r3
	subge	r2, r1, ip, asr #9
	addge	ip, ip, r1, asr #9
	subge	r0, r0, #1020
	subge	r0, r0, #3
	cmp	r0, #0
	addlt	r1, r2, ip, asr #10
	sublt	ip, ip, r2, asr #10
	movlt	r3, #508
	addlt	r3, r3, #3
	addlt	r0, r0, r3
	subge	r1, r2, ip, asr #10
	addge	ip, ip, r2, asr #10
	subge	r0, r0, #508
	subge	r0, r0, #3
	cmp	r0, #0
	addlt	r2, r1, ip, asr #11
	sublt	r3, ip, r1, asr #11
	addlt	r0, r0, #255
	subge	r2, r1, ip, asr #11
	addge	r3, ip, r1, asr #11
	subge	r0, r0, #255
	cmp	r0, #0
	addlt	ip, r2, r3, asr #12
	sublt	r3, r3, r2, asr #12
	addlt	r0, r0, #127
	subge	ip, r2, r3, asr #12
	addge	r3, r3, r2, asr #12
	subge	r0, r0, #127
	cmp	r0, #0
	addlt	r2, ip, r3, asr #13
	sublt	r3, r3, ip, asr #13
	addlt	r0, r0, #63
	subge	r2, ip, r3, asr #13
	addge	r3, r3, ip, asr #13
	subge	r0, r0, #63
	cmp	r0, #0
	addlt	ip, r2, r3, asr #14
	sublt	r3, r3, r2, asr #14
	addlt	r0, r0, #31
	subge	ip, r2, r3, asr #14
	addge	r3, r3, r2, asr #14
	subge	r0, r0, #31
	cmp	r0, #0
	addlt	r2, ip, r3, asr #15
	sublt	r3, r3, ip, asr #15
	addlt	r0, r0, #15
	subge	r2, ip, r3, asr #15
	addge	r3, r3, ip, asr #15
	subge	r0, r0, #15
	cmp	r0, #0
	addlt	ip, r2, r3, asr #16
	sublt	r3, r3, r2, asr #16
	addlt	r0, r0, #7
	subge	ip, r2, r3, asr #16
	addge	r3, r3, r2, asr #16
	subge	r0, r0, #7
	cmp	r0, #0
	addlt	r2, ip, r3, asr #17
	sublt	r3, r3, ip, asr #17
	addlt	r0, r0, #3
	subge	r2, ip, r3, asr #17
	addge	r3, r3, ip, asr #17
	subge	r0, r0, #3
	cmp	r0, #0
	addlt	r0, r2, r3, asr #18
	sublt	r3, r3, r2, asr #18
	subge	r0, r2, r3, asr #18
	addge	r3, r3, r2, asr #18
	str	r0, [r4, #0]
	str	r3, [r5, #0]
	ldmfd	sp!, {r4, r5}
	bx	lr
	.size	cordic_opt3b_rotation, .-cordic_opt3b_rotation
	.ident	"GCC: (Sourcery G++ Lite 2008q3-72) 4.3.2"
	.section	.note.GNU-stack,"",%progbits
