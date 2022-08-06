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
	.file	"cordic_opt1.c"
	.text
	.align	2
	.global	cordic_opt1_vectoring
	.type	cordic_opt1_vectoring, %function
cordic_opt1_vectoring:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5, r6}
	mov	r5, #0
	ldr	r4, .L8
	mov	r6, r3
	mov	ip, r5
.L4:
	cmp	r1, #0
	ldrge	r3, [r4, #-4]
	ldrlt	r3, [r4, #-4]
	addge	r5, r5, r3
	rsblt	r5, r3, r5
	addge	r3, r0, r1, asr ip
	sublt	r3, r0, r1, asr ip
	subge	r1, r1, r0, asr ip
	addlt	r1, r1, r0, asr ip
	add	ip, ip, #1
	cmp	ip, #19
	add	r4, r4, #4
	mov	r0, r3
	bne	.L4
	str	r3, [r2, #0]
	str	r5, [r6, #0]
	ldmfd	sp!, {r4, r5, r6}
	bx	lr
.L9:
	.align	2
.L8:
	.word	.LANCHOR0+4
	.size	cordic_opt1_vectoring, .-cordic_opt1_vectoring
	.align	2
	.global	cordic_opt1_rotation
	.type	cordic_opt1_rotation, %function
cordic_opt1_rotation:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5, r6}
	mov	r4, #315392
	add	r4, r4, #2976
	mov	r5, #0
	ldr	r6, .L16
	add	r4, r4, #7
	mov	ip, r5
.L13:
	cmp	r0, #0
	ldrlt	r3, [r6, #-4]
	ldrge	r3, [r6, #-4]
	addlt	r0, r0, r3
	rsbge	r0, r3, r0
	addlt	r3, r4, r5, asr ip
	subge	r3, r4, r5, asr ip
	sublt	r5, r5, r4, asr ip
	addge	r5, r5, r4, asr ip
	add	ip, ip, #1
	cmp	ip, #19
	add	r6, r6, #4
	mov	r4, r3
	bne	.L13
	str	r3, [r1, #0]
	str	r5, [r2, #0]
	ldmfd	sp!, {r4, r5, r6}
	bx	lr
.L17:
	.align	2
.L16:
	.word	.LANCHOR0+4
	.size	cordic_opt1_rotation, .-cordic_opt1_rotation
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
