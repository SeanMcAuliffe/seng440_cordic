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
	.file	"cordic_naive.c"
	.text
	.align	2
	.global	cordic_naive_vectoring
	.type	cordic_naive_vectoring, %function
cordic_naive_vectoring:
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5, r6, r7, r8}
	mov	r7, r2
	mov	r8, r3
	mov	r5, #0
	mov	ip, r5
	mov	r2, r5
	ldr	r6, .L7
.L5:
	cmp	r1, #0
	addge	r4, r0, r1, asr ip
	subge	r1, r1, r0, asr ip
	ldrge	r3, [r6, r2]
	addge	r5, r5, r3
	sublt	r4, r0, r1, asr ip
	addlt	r1, r1, r0, asr ip
	ldrlt	r3, [r6, r2]
	rsblt	r5, r3, r5
	add	ip, ip, #1
	add	r2, r2, #4
	cmp	ip, #19
	movne	r0, r4
	bne	.L5
.L4:
	str	r4, [r7, #0]
	str	r1, [r8, #0]
	ldr	r3, [sp, #20]
	str	r5, [r3, #0]
	ldmfd	sp!, {r4, r5, r6, r7, r8}
	bx	lr
.L8:
	.align	2
.L7:
	.word	.LANCHOR0
	.size	cordic_naive_vectoring, .-cordic_naive_vectoring
	.align	2
	.global	cordic_naive_rotation
	.type	cordic_naive_rotation, %function
cordic_naive_rotation:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5, r6, r7, r8, sl}
	mov	r7, r1
	mov	r8, r2
	mov	sl, r3
	mov	r5, r0
	mov	ip, #0
	mov	r3, #315392
	add	r3, r3, #2976
	add	r2, r3, #7
	mov	r3, ip
	mov	r1, ip
	ldr	r6, .L15
.L13:
	cmp	r5, #0
	addlt	r4, r2, r3, asr ip
	sublt	r0, r3, r2, asr ip
	ldrlt	r3, [r6, r1]
	addlt	r5, r5, r3
	subge	r4, r2, r3, asr ip
	addge	r0, r3, r2, asr ip
	ldrge	r3, [r6, r1]
	rsbge	r5, r3, r5
	add	ip, ip, #1
	add	r1, r1, #4
	cmp	ip, #19
	movne	r2, r4
	movne	r3, r0
	bne	.L13
.L12:
	str	r4, [r7, #0]
	str	r0, [r8, #0]
	str	r5, [sl, #0]
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl}
	bx	lr
.L16:
	.align	2
.L15:
	.word	.LANCHOR0
	.size	cordic_naive_rotation, .-cordic_naive_rotation
	.section	.rodata
	.align	2
.LANCHOR0 = . + 0
	.type	z_table, %object
	.size	z_table, 76
z_table:
	.word	411774
	.word	243084
	.word	128439
	.word	65197
	.word	32725
	.word	16378
	.word	8191
	.word	4095
	.word	2047
	.word	1023
	.word	511
	.word	255
	.word	127
	.word	63
	.word	31
	.word	15
	.word	7
	.word	3
	.word	1
	.ident	"GCC: (Sourcery G++ Lite 2008q3-72) 4.3.2"
	.section	.note.GNU-stack,"",%progbits
