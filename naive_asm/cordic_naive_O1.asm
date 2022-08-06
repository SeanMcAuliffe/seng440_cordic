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
	addgt	r4, r0, r1, asr ip
	subgt	r1, r1, r0, asr ip
	ldrgt	r3, [r6, r2]
	addgt	r5, r5, r3
	suble	r4, r0, r1, asr ip
	addle	r1, r1, r0, asr ip
	ldrle	r3, [r6, r2]
	rsble	r5, r3, r5
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
	stmfd	sp!, {r4, r5, r6, r7, r8}
	mov	r6, r1
	mov	r7, r2
	mov	r8, r3
	mov	r4, r0
	mov	r3, #315392
	add	r3, r3, #2976
	add	r3, r3, #7
	mov	ip, #0
	mov	r2, ip
	mov	r1, ip
	ldr	r5, .L15
.L13:
	cmp	r4, #0
	addlt	r0, r3, ip, asr r2
	sublt	ip, ip, r3, asr r2
	ldrlt	r3, [r5, r1]
	addlt	r4, r4, r3
	subge	r0, r3, ip, asr r2
	addge	ip, ip, r3, asr r2
	ldrge	r3, [r5, r1]
	rsbge	r4, r3, r4
	add	r2, r2, #1
	add	r1, r1, #4
	cmp	r2, #19
	movne	r3, r0
	bne	.L13
.L12:
	str	r0, [r6, #0]
	str	ip, [r7, #0]
	str	r4, [r8, #0]
	ldmfd	sp!, {r4, r5, r6, r7, r8}
	bx	lr
.L16:
	.align	2
.L15:
	.word	.LANCHOR0
	.size	cordic_naive_rotation, .-cordic_naive_rotation
	.global	SCALE_FACTOR
	.global	K_SCALE
	.global	NUM_ITERATIONS
	.global	NUM_TRIALS
	.global	X_VECTORING_MODE
	.global	Y_VECTORING_MODE
	.global	Z_ROTATION_MODE
	.section	.rodata
	.align	3
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
	.type	SCALE_FACTOR, %object
	.size	SCALE_FACTOR, 4
SCALE_FACTOR:
	.word	524288
	.type	K_SCALE, %object
	.size	K_SCALE, 4
K_SCALE:
	.word	318375
	.type	NUM_ITERATIONS, %object
	.size	NUM_ITERATIONS, 4
NUM_ITERATIONS:
	.word	10000
	.type	NUM_TRIALS, %object
	.size	NUM_TRIALS, 4
NUM_TRIALS:
	.word	1000
	.space	4
	.type	X_VECTORING_MODE, %object
	.size	X_VECTORING_MODE, 8
X_VECTORING_MODE:
	.word	-1021721180
	.word	1072079004
	.type	Y_VECTORING_MODE, %object
	.size	Y_VECTORING_MODE, 8
Y_VECTORING_MODE:
	.word	-1021721180
	.word	1072079004
	.type	Z_ROTATION_MODE, %object
	.size	Z_ROTATION_MODE, 8
Z_ROTATION_MODE:
	.word	-57999238
	.word	1072243194
	.ident	"GCC: (Sourcery G++ Lite 2008q3-72) 4.3.2"
	.section	.note.GNU-stack,"",%progbits
