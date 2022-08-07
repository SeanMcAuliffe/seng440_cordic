	.arch armv4t
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 6
	.eabi_attribute 18, 4
	.file	"cordic_opt2.c"
	.section	.rodata
	.align	2
	.type	SCALE_FACTOR, %object
	.size	SCALE_FACTOR, 4
SCALE_FACTOR:
	.word	524288
	.align	2
	.type	K_SCALE, %object
	.size	K_SCALE, 4
K_SCALE:
	.word	318375
	.data
	.align	2
	.type	K_FACTOR, %object
	.size	K_FACTOR, 4
K_FACTOR:
	.word	318375
	.section	.rodata
	.align	2
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
	.align	2
	.type	table_offset, %object
	.size	table_offset, 4
table_offset:
	.word	4
	.align	2
	.type	NUM_ITERATIONS, %object
	.size	NUM_ITERATIONS, 4
NUM_ITERATIONS:
	.word	1000
	.align	2
	.type	NUM_TRIALS, %object
	.size	NUM_TRIALS, 4
NUM_TRIALS:
	.word	1000
	.align	3
	.type	X_VECTORING_MODE, %object
	.size	X_VECTORING_MODE, 8
X_VECTORING_MODE:
	.word	-1021721180
	.word	1072079004
	.align	3
	.type	Y_VECTORING_MODE, %object
	.size	Y_VECTORING_MODE, 8
Y_VECTORING_MODE:
	.word	-1021721180
	.word	1072079004
	.align	3
	.type	Z_ROTATION_MODE, %object
	.size	Z_ROTATION_MODE, 8
Z_ROTATION_MODE:
	.word	-57999238
	.word	1072243194
	.text
	.align	2
	.global	cordic_opt2_vectoring
	.type	cordic_opt2_vectoring, %function
cordic_opt2_vectoring:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #28
	str	r2, [fp, #-8]
	str	r3, [fp, #-12]
	str	r0, [fp, #-28]
	str	r1, [fp, #-24]
	mov	r2, #0
	ldr	r0, [fp, #-24]
	mov	r0, r0, asr #31
	str	r0, [fp, #-16]
	ldr	r1, [fp, #-24]
	ldr	r0, [fp, #-16]
	eor	r3, r1, r0
	ldr	r1, [fp, #-16]
	rsb	r3, r1, r3
	ldr	r0, [fp, #-28]
	add	r3, r3, r0
	str	r3, [fp, #-20]
	ldr	r1, [fp, #-28]
	ldr	r0, [fp, #-16]
	eor	r3, r1, r0
	ldr	r1, [fp, #-16]
	rsb	r3, r3, r1
	ldr	r0, [fp, #-24]
	add	r0, r0, r3
	str	r0, [fp, #-24]
	ldr	r3, .L3
	ldr	r3, [r3, #0]
	ldr	r1, [fp, #-16]
	eor	r3, r3, r1
	ldr	r0, [fp, #-16]
	rsb	r3, r0, r3
	add	r2, r2, r3
	ldr	r1, [fp, #-20]
	str	r1, [fp, #-28]
	ldr	r3, [fp, #-24]
	mov	r3, r3, asr #31
	str	r3, [fp, #-16]
	ldr	r0, [fp, #-24]
	mov	r3, r0, asr #1
	ldr	r1, [fp, #-16]
	eor	r3, r3, r1
	ldr	r0, [fp, #-16]
	rsb	r3, r0, r3
	ldr	r1, [fp, #-28]
	add	r3, r3, r1
	str	r3, [fp, #-20]
	ldr	r0, [fp, #-28]
	mov	r3, r0, asr #1
	ldr	r1, [fp, #-16]
	eor	r3, r3, r1
	ldr	r0, [fp, #-16]
	rsb	r3, r3, r0
	ldr	r1, [fp, #-24]
	add	r1, r1, r3
	str	r1, [fp, #-24]
	ldr	r3, .L3
	ldr	r3, [r3, #4]
	ldr	r0, [fp, #-16]
	eor	r3, r3, r0
	ldr	r1, [fp, #-16]
	rsb	r3, r1, r3
	add	r2, r2, r3
	ldr	r3, [fp, #-20]
	str	r3, [fp, #-28]
	ldr	r0, [fp, #-24]
	mov	r0, r0, asr #31
	str	r0, [fp, #-16]
	ldr	r1, [fp, #-24]
	mov	r3, r1, asr #2
	ldr	r0, [fp, #-16]
	eor	r3, r3, r0
	ldr	r1, [fp, #-16]
	rsb	r3, r1, r3
	ldr	r0, [fp, #-28]
	add	r3, r3, r0
	str	r3, [fp, #-20]
	ldr	r1, [fp, #-28]
	mov	r3, r1, asr #2
	ldr	r0, [fp, #-16]
	eor	r3, r3, r0
	ldr	r1, [fp, #-16]
	rsb	r3, r3, r1
	ldr	r0, [fp, #-24]
	add	r0, r0, r3
	str	r0, [fp, #-24]
	ldr	r3, .L3
	ldr	r3, [r3, #8]
	ldr	r1, [fp, #-16]
	eor	r3, r3, r1
	ldr	r0, [fp, #-16]
	rsb	r3, r0, r3
	add	r2, r2, r3
	ldr	r1, [fp, #-20]
	str	r1, [fp, #-28]
	ldr	r3, [fp, #-24]
	mov	r3, r3, asr #31
	str	r3, [fp, #-16]
	ldr	r0, [fp, #-24]
	mov	r3, r0, asr #3
	ldr	r1, [fp, #-16]
	eor	r3, r3, r1
	ldr	r0, [fp, #-16]
	rsb	r3, r0, r3
	ldr	r1, [fp, #-28]
	add	r3, r3, r1
	str	r3, [fp, #-20]
	ldr	r0, [fp, #-28]
	mov	r3, r0, asr #3
	ldr	r1, [fp, #-16]
	eor	r3, r3, r1
	ldr	r0, [fp, #-16]
	rsb	r3, r3, r0
	ldr	r1, [fp, #-24]
	add	r1, r1, r3
	str	r1, [fp, #-24]
	ldr	r3, .L3
	ldr	r3, [r3, #12]
	ldr	r0, [fp, #-16]
	eor	r3, r3, r0
	ldr	r1, [fp, #-16]
	rsb	r3, r1, r3
	add	r2, r2, r3
	ldr	r3, [fp, #-20]
	str	r3, [fp, #-28]
	ldr	r0, [fp, #-24]
	mov	r0, r0, asr #31
	str	r0, [fp, #-16]
	ldr	r1, [fp, #-24]
	mov	r3, r1, asr #4
	ldr	r0, [fp, #-16]
	eor	r3, r3, r0
	ldr	r1, [fp, #-16]
	rsb	r3, r1, r3
	ldr	r0, [fp, #-28]
	add	r3, r3, r0
	str	r3, [fp, #-20]
	ldr	r1, [fp, #-28]
	mov	r3, r1, asr #4
	ldr	r0, [fp, #-16]
	eor	r3, r3, r0
	ldr	r1, [fp, #-16]
	rsb	r3, r3, r1
	ldr	r0, [fp, #-24]
	add	r0, r0, r3
	str	r0, [fp, #-24]
	ldr	r3, .L3
	ldr	r3, [r3, #16]
	ldr	r1, [fp, #-16]
	eor	r3, r3, r1
	ldr	r0, [fp, #-16]
	rsb	r3, r0, r3
	add	r2, r2, r3
	ldr	r1, [fp, #-20]
	str	r1, [fp, #-28]
	ldr	r3, [fp, #-24]
	mov	r3, r3, asr #31
	str	r3, [fp, #-16]
	ldr	r0, [fp, #-24]
	mov	r3, r0, asr #5
	ldr	r1, [fp, #-16]
	eor	r3, r3, r1
	ldr	r0, [fp, #-16]
	rsb	r3, r0, r3
	ldr	r1, [fp, #-28]
	add	r3, r3, r1
	str	r3, [fp, #-20]
	ldr	r0, [fp, #-28]
	mov	r3, r0, asr #5
	ldr	r1, [fp, #-16]
	eor	r3, r3, r1
	ldr	r0, [fp, #-16]
	rsb	r3, r3, r0
	ldr	r1, [fp, #-24]
	add	r1, r1, r3
	str	r1, [fp, #-24]
	ldr	r3, .L3
	ldr	r3, [r3, #20]
	ldr	r0, [fp, #-16]
	eor	r3, r3, r0
	ldr	r1, [fp, #-16]
	rsb	r3, r1, r3
	add	r2, r2, r3
	ldr	r3, [fp, #-20]
	str	r3, [fp, #-28]
	ldr	r0, [fp, #-24]
	mov	r0, r0, asr #31
	str	r0, [fp, #-16]
	ldr	r1, [fp, #-24]
	mov	r3, r1, asr #6
	ldr	r0, [fp, #-16]
	eor	r3, r3, r0
	ldr	r1, [fp, #-16]
	rsb	r3, r1, r3
	ldr	r0, [fp, #-28]
	add	r3, r3, r0
	str	r3, [fp, #-20]
	ldr	r1, [fp, #-28]
	mov	r3, r1, asr #6
	ldr	r0, [fp, #-16]
	eor	r3, r3, r0
	ldr	r1, [fp, #-16]
	rsb	r3, r3, r1
	ldr	r0, [fp, #-24]
	add	r0, r0, r3
	str	r0, [fp, #-24]
	ldr	r3, .L3
	ldr	r3, [r3, #24]
	ldr	r1, [fp, #-16]
	eor	r3, r3, r1
	ldr	r0, [fp, #-16]
	rsb	r3, r0, r3
	add	r2, r2, r3
	ldr	r1, [fp, #-20]
	str	r1, [fp, #-28]
	ldr	r3, [fp, #-24]
	mov	r3, r3, asr #31
	str	r3, [fp, #-16]
	ldr	r0, [fp, #-24]
	mov	r3, r0, asr #7
	ldr	r1, [fp, #-16]
	eor	r3, r3, r1
	ldr	r0, [fp, #-16]
	rsb	r3, r0, r3
	ldr	r1, [fp, #-28]
	add	r3, r3, r1
	str	r3, [fp, #-20]
	ldr	r0, [fp, #-28]
	mov	r3, r0, asr #7
	ldr	r1, [fp, #-16]
	eor	r3, r3, r1
	ldr	r0, [fp, #-16]
	rsb	r3, r3, r0
	ldr	r1, [fp, #-24]
	add	r1, r1, r3
	str	r1, [fp, #-24]
	ldr	r3, .L3
	ldr	r3, [r3, #28]
	ldr	r0, [fp, #-16]
	eor	r3, r3, r0
	ldr	r1, [fp, #-16]
	rsb	r3, r1, r3
	add	r2, r2, r3
	ldr	r3, [fp, #-20]
	str	r3, [fp, #-28]
	ldr	r0, [fp, #-24]
	mov	r0, r0, asr #31
	str	r0, [fp, #-16]
	ldr	r1, [fp, #-24]
	mov	r3, r1, asr #8
	ldr	r0, [fp, #-16]
	eor	r3, r3, r0
	ldr	r1, [fp, #-16]
	rsb	r3, r1, r3
	ldr	r0, [fp, #-28]
	add	r3, r3, r0
	str	r3, [fp, #-20]
	ldr	r1, [fp, #-28]
	mov	r3, r1, asr #8
	ldr	r0, [fp, #-16]
	eor	r3, r3, r0
	ldr	r1, [fp, #-16]
	rsb	r3, r3, r1
	ldr	r0, [fp, #-24]
	add	r0, r0, r3
	str	r0, [fp, #-24]
	ldr	r3, .L3
	ldr	r3, [r3, #32]
	ldr	r1, [fp, #-16]
	eor	r3, r3, r1
	ldr	r0, [fp, #-16]
	rsb	r3, r0, r3
	add	r2, r2, r3
	ldr	r1, [fp, #-20]
	str	r1, [fp, #-28]
	ldr	r3, [fp, #-24]
	mov	r3, r3, asr #31
	str	r3, [fp, #-16]
	ldr	r0, [fp, #-24]
	mov	r3, r0, asr #9
	ldr	r1, [fp, #-16]
	eor	r3, r3, r1
	ldr	r0, [fp, #-16]
	rsb	r3, r0, r3
	ldr	r1, [fp, #-28]
	add	r3, r3, r1
	str	r3, [fp, #-20]
	ldr	r0, [fp, #-28]
	mov	r3, r0, asr #9
	ldr	r1, [fp, #-16]
	eor	r3, r3, r1
	ldr	r0, [fp, #-16]
	rsb	r3, r3, r0
	ldr	r1, [fp, #-24]
	add	r1, r1, r3
	str	r1, [fp, #-24]
	ldr	r3, .L3
	ldr	r3, [r3, #36]
	ldr	r0, [fp, #-16]
	eor	r3, r3, r0
	ldr	r1, [fp, #-16]
	rsb	r3, r1, r3
	add	r2, r2, r3
	ldr	r3, [fp, #-20]
	str	r3, [fp, #-28]
	ldr	r0, [fp, #-24]
	mov	r0, r0, asr #31
	str	r0, [fp, #-16]
	ldr	r1, [fp, #-24]
	mov	r3, r1, asr #10
	ldr	r0, [fp, #-16]
	eor	r3, r3, r0
	ldr	r1, [fp, #-16]
	rsb	r3, r1, r3
	ldr	r0, [fp, #-28]
	add	r3, r3, r0
	str	r3, [fp, #-20]
	ldr	r1, [fp, #-28]
	mov	r3, r1, asr #10
	ldr	r0, [fp, #-16]
	eor	r3, r3, r0
	ldr	r1, [fp, #-16]
	rsb	r3, r3, r1
	ldr	r0, [fp, #-24]
	add	r0, r0, r3
	str	r0, [fp, #-24]
	ldr	r3, .L3
	ldr	r3, [r3, #40]
	ldr	r1, [fp, #-16]
	eor	r3, r3, r1
	ldr	r0, [fp, #-16]
	rsb	r3, r0, r3
	add	r2, r2, r3
	ldr	r1, [fp, #-20]
	str	r1, [fp, #-28]
	ldr	r3, [fp, #-24]
	mov	r3, r3, asr #31
	str	r3, [fp, #-16]
	ldr	r0, [fp, #-24]
	mov	r3, r0, asr #11
	ldr	r1, [fp, #-16]
	eor	r3, r3, r1
	ldr	r0, [fp, #-16]
	rsb	r3, r0, r3
	ldr	r1, [fp, #-28]
	add	r3, r3, r1
	str	r3, [fp, #-20]
	ldr	r0, [fp, #-28]
	mov	r3, r0, asr #11
	ldr	r1, [fp, #-16]
	eor	r3, r3, r1
	ldr	r0, [fp, #-16]
	rsb	r3, r3, r0
	ldr	r1, [fp, #-24]
	add	r1, r1, r3
	str	r1, [fp, #-24]
	ldr	r3, .L3
	ldr	r3, [r3, #44]
	ldr	r0, [fp, #-16]
	eor	r3, r3, r0
	ldr	r1, [fp, #-16]
	rsb	r3, r1, r3
	add	r2, r2, r3
	ldr	r3, [fp, #-20]
	str	r3, [fp, #-28]
	ldr	r0, [fp, #-24]
	mov	r0, r0, asr #31
	str	r0, [fp, #-16]
	ldr	r1, [fp, #-24]
	mov	r3, r1, asr #12
	ldr	r0, [fp, #-16]
	eor	r3, r3, r0
	ldr	r1, [fp, #-16]
	rsb	r3, r1, r3
	ldr	r0, [fp, #-28]
	add	r3, r3, r0
	str	r3, [fp, #-20]
	ldr	r1, [fp, #-28]
	mov	r3, r1, asr #12
	ldr	r0, [fp, #-16]
	eor	r3, r3, r0
	ldr	r1, [fp, #-16]
	rsb	r3, r3, r1
	ldr	r0, [fp, #-24]
	add	r0, r0, r3
	str	r0, [fp, #-24]
	ldr	r3, .L3
	ldr	r3, [r3, #48]
	ldr	r1, [fp, #-16]
	eor	r3, r3, r1
	ldr	r0, [fp, #-16]
	rsb	r3, r0, r3
	add	r2, r2, r3
	ldr	r1, [fp, #-20]
	str	r1, [fp, #-28]
	ldr	r3, [fp, #-24]
	mov	r3, r3, asr #31
	str	r3, [fp, #-16]
	ldr	r0, [fp, #-24]
	mov	r3, r0, asr #13
	ldr	r1, [fp, #-16]
	eor	r3, r3, r1
	ldr	r0, [fp, #-16]
	rsb	r3, r0, r3
	ldr	r1, [fp, #-28]
	add	r3, r3, r1
	str	r3, [fp, #-20]
	ldr	r0, [fp, #-28]
	mov	r3, r0, asr #13
	ldr	r1, [fp, #-16]
	eor	r3, r3, r1
	ldr	r0, [fp, #-16]
	rsb	r3, r3, r0
	ldr	r1, [fp, #-24]
	add	r1, r1, r3
	str	r1, [fp, #-24]
	ldr	r3, .L3
	ldr	r3, [r3, #52]
	ldr	r0, [fp, #-16]
	eor	r3, r3, r0
	ldr	r1, [fp, #-16]
	rsb	r3, r1, r3
	add	r2, r2, r3
	ldr	r3, [fp, #-20]
	str	r3, [fp, #-28]
	ldr	r0, [fp, #-24]
	mov	r0, r0, asr #31
	str	r0, [fp, #-16]
	ldr	r1, [fp, #-24]
	mov	r3, r1, asr #14
	ldr	r0, [fp, #-16]
	eor	r3, r3, r0
	ldr	r1, [fp, #-16]
	rsb	r3, r1, r3
	ldr	r0, [fp, #-28]
	add	r3, r3, r0
	str	r3, [fp, #-20]
	ldr	r1, [fp, #-28]
	mov	r3, r1, asr #14
	ldr	r0, [fp, #-16]
	eor	r3, r3, r0
	ldr	r1, [fp, #-16]
	rsb	r3, r3, r1
	ldr	r0, [fp, #-24]
	add	r0, r0, r3
	str	r0, [fp, #-24]
	ldr	r3, .L3
	ldr	r3, [r3, #56]
	ldr	r1, [fp, #-16]
	eor	r3, r3, r1
	ldr	r0, [fp, #-16]
	rsb	r3, r0, r3
	add	r2, r2, r3
	ldr	r1, [fp, #-20]
	str	r1, [fp, #-28]
	ldr	r3, [fp, #-24]
	mov	r3, r3, asr #31
	str	r3, [fp, #-16]
	ldr	r0, [fp, #-24]
	mov	r3, r0, asr #15
	ldr	r1, [fp, #-16]
	eor	r3, r3, r1
	ldr	r0, [fp, #-16]
	rsb	r3, r0, r3
	ldr	r1, [fp, #-28]
	add	r3, r3, r1
	str	r3, [fp, #-20]
	ldr	r0, [fp, #-28]
	mov	r3, r0, asr #15
	ldr	r1, [fp, #-16]
	eor	r3, r3, r1
	ldr	r0, [fp, #-16]
	rsb	r3, r3, r0
	ldr	r1, [fp, #-24]
	add	r1, r1, r3
	str	r1, [fp, #-24]
	ldr	r3, .L3
	ldr	r3, [r3, #60]
	ldr	r0, [fp, #-16]
	eor	r3, r3, r0
	ldr	r1, [fp, #-16]
	rsb	r3, r1, r3
	add	r2, r2, r3
	ldr	r3, [fp, #-20]
	str	r3, [fp, #-28]
	ldr	r0, [fp, #-24]
	mov	r0, r0, asr #31
	str	r0, [fp, #-16]
	ldr	r1, [fp, #-24]
	mov	r3, r1, asr #16
	ldr	r0, [fp, #-16]
	eor	r3, r3, r0
	ldr	r1, [fp, #-16]
	rsb	r3, r1, r3
	ldr	r0, [fp, #-28]
	add	r3, r3, r0
	str	r3, [fp, #-20]
	ldr	r1, [fp, #-28]
	mov	r3, r1, asr #16
	ldr	r0, [fp, #-16]
	eor	r3, r3, r0
	ldr	r1, [fp, #-16]
	rsb	r3, r3, r1
	ldr	r0, [fp, #-24]
	add	r0, r0, r3
	str	r0, [fp, #-24]
	ldr	r3, .L3
	ldr	r3, [r3, #64]
	ldr	r1, [fp, #-16]
	eor	r3, r3, r1
	ldr	r0, [fp, #-16]
	rsb	r3, r0, r3
	add	r2, r2, r3
	ldr	r1, [fp, #-20]
	str	r1, [fp, #-28]
	ldr	r3, [fp, #-24]
	mov	r3, r3, asr #31
	str	r3, [fp, #-16]
	ldr	r0, [fp, #-24]
	mov	r3, r0, asr #17
	ldr	r1, [fp, #-16]
	eor	r3, r3, r1
	ldr	r0, [fp, #-16]
	rsb	r3, r0, r3
	ldr	r1, [fp, #-28]
	add	r3, r3, r1
	str	r3, [fp, #-20]
	ldr	r0, [fp, #-28]
	mov	r3, r0, asr #17
	ldr	r1, [fp, #-16]
	eor	r3, r3, r1
	ldr	r0, [fp, #-16]
	rsb	r3, r3, r0
	ldr	r1, [fp, #-24]
	add	r1, r1, r3
	str	r1, [fp, #-24]
	ldr	r3, .L3
	ldr	r3, [r3, #68]
	ldr	r0, [fp, #-16]
	eor	r3, r3, r0
	ldr	r1, [fp, #-16]
	rsb	r3, r1, r3
	add	r2, r2, r3
	ldr	r3, [fp, #-20]
	str	r3, [fp, #-28]
	ldr	r0, [fp, #-24]
	mov	r0, r0, asr #31
	str	r0, [fp, #-16]
	ldr	r1, [fp, #-24]
	mov	r3, r1, asr #18
	ldr	r0, [fp, #-16]
	eor	r3, r3, r0
	ldr	r1, [fp, #-16]
	rsb	r3, r1, r3
	ldr	r0, [fp, #-28]
	add	r3, r3, r0
	str	r3, [fp, #-20]
	ldr	r1, [fp, #-28]
	mov	r3, r1, asr #18
	ldr	r0, [fp, #-16]
	eor	r3, r3, r0
	ldr	r1, [fp, #-16]
	rsb	r3, r3, r1
	ldr	r0, [fp, #-24]
	add	r0, r0, r3
	ldr	r3, .L3
	ldr	r3, [r3, #72]
	ldr	r1, [fp, #-16]
	eor	r3, r3, r1
	ldr	r0, [fp, #-16]
	rsb	r3, r0, r3
	add	r2, r2, r3
	ldr	r1, [fp, #-20]
	str	r1, [fp, #-28]
	ldr	r3, [fp, #-8]
	ldr	r0, [fp, #-28]
	str	r0, [r3, #0]
	ldr	r3, [fp, #-12]
	str	r2, [r3, #0]
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
.L4:
	.align	2
.L3:
	.word	z_table
	.size	cordic_opt2_vectoring, .-cordic_opt2_vectoring
	.align	2
	.global	cordic_opt2_rotation
	.type	cordic_opt2_rotation, %function
cordic_opt2_rotation:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #28
	str	r2, [fp, #-8]
	ldr	r3, .L7
	ldr	r3, [r3, #0]
	str	r3, [fp, #-24]
	mov	r2, #0
	str	r0, [fp, #-20]
	ldr	r0, [fp, #-20]
	mov	r0, r0, asr #31
	str	r0, [fp, #-12]
	ldr	ip, [fp, #-12]
	eor	r3, r2, ip
	ldr	r0, [fp, #-12]
	rsb	r3, r3, r0
	ldr	ip, [fp, #-24]
	add	r3, r3, ip
	str	r3, [fp, #-16]
	ldr	r0, [fp, #-24]
	ldr	ip, [fp, #-12]
	eor	r3, r0, ip
	ldr	r0, [fp, #-12]
	rsb	r3, r0, r3
	add	r2, r2, r3
	ldr	r3, .L7+4
	ldr	r3, [r3, #0]
	ldr	ip, [fp, #-12]
	eor	r3, r3, ip
	ldr	r0, [fp, #-12]
	rsb	r3, r3, r0
	ldr	ip, [fp, #-20]
	add	ip, ip, r3
	str	ip, [fp, #-20]
	ldr	r0, [fp, #-16]
	str	r0, [fp, #-24]
	ldr	r3, [fp, #-20]
	mov	r3, r3, asr #31
	str	r3, [fp, #-12]
	mov	r3, r2, asr #1
	ldr	ip, [fp, #-12]
	eor	r3, r3, ip
	ldr	r0, [fp, #-12]
	rsb	r3, r3, r0
	ldr	ip, [fp, #-24]
	add	r3, r3, ip
	str	r3, [fp, #-16]
	ldr	r0, [fp, #-24]
	mov	r3, r0, asr #1
	ldr	ip, [fp, #-12]
	eor	r3, r3, ip
	ldr	r0, [fp, #-12]
	rsb	r3, r0, r3
	add	r2, r2, r3
	ldr	r3, .L7+4
	ldr	r3, [r3, #4]
	ldr	ip, [fp, #-12]
	eor	r3, r3, ip
	ldr	r0, [fp, #-12]
	rsb	r3, r3, r0
	ldr	ip, [fp, #-20]
	add	ip, ip, r3
	str	ip, [fp, #-20]
	ldr	r0, [fp, #-16]
	str	r0, [fp, #-24]
	ldr	r3, [fp, #-20]
	mov	r3, r3, asr #31
	str	r3, [fp, #-12]
	mov	r3, r2, asr #2
	ldr	ip, [fp, #-12]
	eor	r3, r3, ip
	ldr	r0, [fp, #-12]
	rsb	r3, r3, r0
	ldr	ip, [fp, #-24]
	add	r3, r3, ip
	str	r3, [fp, #-16]
	ldr	r0, [fp, #-24]
	mov	r3, r0, asr #2
	ldr	ip, [fp, #-12]
	eor	r3, r3, ip
	ldr	r0, [fp, #-12]
	rsb	r3, r0, r3
	add	r2, r2, r3
	ldr	r3, .L7+4
	ldr	r3, [r3, #8]
	ldr	ip, [fp, #-12]
	eor	r3, r3, ip
	ldr	r0, [fp, #-12]
	rsb	r3, r3, r0
	ldr	ip, [fp, #-20]
	add	ip, ip, r3
	str	ip, [fp, #-20]
	ldr	r0, [fp, #-16]
	str	r0, [fp, #-24]
	ldr	r3, [fp, #-20]
	mov	r3, r3, asr #31
	str	r3, [fp, #-12]
	mov	r3, r2, asr #3
	ldr	ip, [fp, #-12]
	eor	r3, r3, ip
	ldr	r0, [fp, #-12]
	rsb	r3, r3, r0
	ldr	ip, [fp, #-24]
	add	r3, r3, ip
	str	r3, [fp, #-16]
	ldr	r0, [fp, #-24]
	mov	r3, r0, asr #3
	ldr	ip, [fp, #-12]
	eor	r3, r3, ip
	ldr	r0, [fp, #-12]
	rsb	r3, r0, r3
	add	r2, r2, r3
	ldr	r3, .L7+4
	ldr	r3, [r3, #12]
	ldr	ip, [fp, #-12]
	eor	r3, r3, ip
	ldr	r0, [fp, #-12]
	rsb	r3, r3, r0
	ldr	ip, [fp, #-20]
	add	ip, ip, r3
	str	ip, [fp, #-20]
	ldr	r0, [fp, #-16]
	str	r0, [fp, #-24]
	ldr	r3, [fp, #-20]
	mov	r3, r3, asr #31
	str	r3, [fp, #-12]
	mov	r3, r2, asr #4
	ldr	ip, [fp, #-12]
	eor	r3, r3, ip
	ldr	r0, [fp, #-12]
	rsb	r3, r3, r0
	ldr	ip, [fp, #-24]
	add	r3, r3, ip
	str	r3, [fp, #-16]
	ldr	r0, [fp, #-24]
	mov	r3, r0, asr #4
	ldr	ip, [fp, #-12]
	eor	r3, r3, ip
	ldr	r0, [fp, #-12]
	rsb	r3, r0, r3
	add	r2, r2, r3
	ldr	r3, .L7+4
	ldr	r3, [r3, #16]
	ldr	ip, [fp, #-12]
	eor	r3, r3, ip
	ldr	r0, [fp, #-12]
	rsb	r3, r3, r0
	ldr	ip, [fp, #-20]
	add	ip, ip, r3
	str	ip, [fp, #-20]
	ldr	r0, [fp, #-16]
	str	r0, [fp, #-24]
	ldr	r3, [fp, #-20]
	mov	r3, r3, asr #31
	str	r3, [fp, #-12]
	mov	r3, r2, asr #5
	ldr	ip, [fp, #-12]
	eor	r3, r3, ip
	ldr	r0, [fp, #-12]
	rsb	r3, r3, r0
	ldr	ip, [fp, #-24]
	add	r3, r3, ip
	str	r3, [fp, #-16]
	ldr	r0, [fp, #-24]
	mov	r3, r0, asr #5
	ldr	ip, [fp, #-12]
	eor	r3, r3, ip
	ldr	r0, [fp, #-12]
	rsb	r3, r0, r3
	add	r2, r2, r3
	ldr	r3, .L7+4
	ldr	r3, [r3, #20]
	ldr	ip, [fp, #-12]
	eor	r3, r3, ip
	ldr	r0, [fp, #-12]
	rsb	r3, r3, r0
	ldr	ip, [fp, #-20]
	add	ip, ip, r3
	str	ip, [fp, #-20]
	ldr	r0, [fp, #-16]
	str	r0, [fp, #-24]
	ldr	r3, [fp, #-20]
	mov	r3, r3, asr #31
	str	r3, [fp, #-12]
	mov	r3, r2, asr #6
	ldr	ip, [fp, #-12]
	eor	r3, r3, ip
	ldr	r0, [fp, #-12]
	rsb	r3, r3, r0
	ldr	ip, [fp, #-24]
	add	r3, r3, ip
	str	r3, [fp, #-16]
	ldr	r0, [fp, #-24]
	mov	r3, r0, asr #6
	ldr	ip, [fp, #-12]
	eor	r3, r3, ip
	ldr	r0, [fp, #-12]
	rsb	r3, r0, r3
	add	r2, r2, r3
	ldr	r3, .L7+4
	ldr	r3, [r3, #24]
	ldr	ip, [fp, #-12]
	eor	r3, r3, ip
	ldr	r0, [fp, #-12]
	rsb	r3, r3, r0
	ldr	ip, [fp, #-20]
	add	ip, ip, r3
	str	ip, [fp, #-20]
	ldr	r0, [fp, #-16]
	str	r0, [fp, #-24]
	ldr	r3, [fp, #-20]
	mov	r3, r3, asr #31
	str	r3, [fp, #-12]
	mov	r3, r2, asr #7
	ldr	ip, [fp, #-12]
	eor	r3, r3, ip
	ldr	r0, [fp, #-12]
	rsb	r3, r3, r0
	ldr	ip, [fp, #-24]
	add	r3, r3, ip
	str	r3, [fp, #-16]
	ldr	r0, [fp, #-24]
	mov	r3, r0, asr #7
	ldr	ip, [fp, #-12]
	eor	r3, r3, ip
	ldr	r0, [fp, #-12]
	rsb	r3, r0, r3
	add	r2, r2, r3
	ldr	r3, .L7+4
	ldr	r3, [r3, #28]
	ldr	ip, [fp, #-12]
	eor	r3, r3, ip
	ldr	r0, [fp, #-12]
	rsb	r3, r3, r0
	ldr	ip, [fp, #-20]
	add	ip, ip, r3
	str	ip, [fp, #-20]
	ldr	r0, [fp, #-16]
	str	r0, [fp, #-24]
	ldr	r3, [fp, #-20]
	mov	r3, r3, asr #31
	str	r3, [fp, #-12]
	mov	r3, r2, asr #8
	ldr	ip, [fp, #-12]
	eor	r3, r3, ip
	ldr	r0, [fp, #-12]
	rsb	r3, r3, r0
	ldr	ip, [fp, #-24]
	add	r3, r3, ip
	str	r3, [fp, #-16]
	ldr	r0, [fp, #-24]
	mov	r3, r0, asr #8
	ldr	ip, [fp, #-12]
	eor	r3, r3, ip
	ldr	r0, [fp, #-12]
	rsb	r3, r0, r3
	add	r2, r2, r3
	ldr	r3, .L7+4
	ldr	r3, [r3, #32]
	ldr	ip, [fp, #-12]
	eor	r3, r3, ip
	ldr	r0, [fp, #-12]
	rsb	r3, r3, r0
	ldr	ip, [fp, #-20]
	add	ip, ip, r3
	str	ip, [fp, #-20]
	ldr	r0, [fp, #-16]
	str	r0, [fp, #-24]
	ldr	r3, [fp, #-20]
	mov	r3, r3, asr #31
	str	r3, [fp, #-12]
	mov	r3, r2, asr #9
	ldr	ip, [fp, #-12]
	eor	r3, r3, ip
	ldr	r0, [fp, #-12]
	rsb	r3, r3, r0
	ldr	ip, [fp, #-24]
	add	r3, r3, ip
	str	r3, [fp, #-16]
	ldr	r0, [fp, #-24]
	mov	r3, r0, asr #9
	ldr	ip, [fp, #-12]
	eor	r3, r3, ip
	ldr	r0, [fp, #-12]
	rsb	r3, r0, r3
	add	r2, r2, r3
	ldr	r3, .L7+4
	ldr	r3, [r3, #36]
	ldr	ip, [fp, #-12]
	eor	r3, r3, ip
	ldr	r0, [fp, #-12]
	rsb	r3, r3, r0
	ldr	ip, [fp, #-20]
	add	ip, ip, r3
	str	ip, [fp, #-20]
	ldr	r0, [fp, #-16]
	str	r0, [fp, #-24]
	ldr	r3, [fp, #-20]
	mov	r3, r3, asr #31
	str	r3, [fp, #-12]
	mov	r3, r2, asr #10
	ldr	ip, [fp, #-12]
	eor	r3, r3, ip
	ldr	r0, [fp, #-12]
	rsb	r3, r3, r0
	ldr	ip, [fp, #-24]
	add	r3, r3, ip
	str	r3, [fp, #-16]
	ldr	r0, [fp, #-24]
	mov	r3, r0, asr #10
	ldr	ip, [fp, #-12]
	eor	r3, r3, ip
	ldr	r0, [fp, #-12]
	rsb	r3, r0, r3
	add	r2, r2, r3
	ldr	r3, .L7+4
	ldr	r3, [r3, #40]
	ldr	ip, [fp, #-12]
	eor	r3, r3, ip
	ldr	r0, [fp, #-12]
	rsb	r3, r3, r0
	ldr	ip, [fp, #-20]
	add	ip, ip, r3
	str	ip, [fp, #-20]
	ldr	r0, [fp, #-16]
	str	r0, [fp, #-24]
	ldr	r3, [fp, #-20]
	mov	r3, r3, asr #31
	str	r3, [fp, #-12]
	mov	r3, r2, asr #11
	ldr	ip, [fp, #-12]
	eor	r3, r3, ip
	ldr	r0, [fp, #-12]
	rsb	r3, r3, r0
	ldr	ip, [fp, #-24]
	add	r3, r3, ip
	str	r3, [fp, #-16]
	ldr	r0, [fp, #-24]
	mov	r3, r0, asr #11
	ldr	ip, [fp, #-12]
	eor	r3, r3, ip
	ldr	r0, [fp, #-12]
	rsb	r3, r0, r3
	add	r2, r2, r3
	ldr	r3, .L7+4
	ldr	r3, [r3, #44]
	ldr	ip, [fp, #-12]
	eor	r3, r3, ip
	ldr	r0, [fp, #-12]
	rsb	r3, r3, r0
	ldr	ip, [fp, #-20]
	add	ip, ip, r3
	str	ip, [fp, #-20]
	ldr	r0, [fp, #-16]
	str	r0, [fp, #-24]
	ldr	r3, [fp, #-20]
	mov	r3, r3, asr #31
	str	r3, [fp, #-12]
	mov	r3, r2, asr #12
	ldr	ip, [fp, #-12]
	eor	r3, r3, ip
	ldr	r0, [fp, #-12]
	rsb	r3, r3, r0
	ldr	ip, [fp, #-24]
	add	r3, r3, ip
	str	r3, [fp, #-16]
	ldr	r0, [fp, #-24]
	mov	r3, r0, asr #12
	ldr	ip, [fp, #-12]
	eor	r3, r3, ip
	ldr	r0, [fp, #-12]
	rsb	r3, r0, r3
	add	r2, r2, r3
	ldr	r3, .L7+4
	ldr	r3, [r3, #48]
	ldr	ip, [fp, #-12]
	eor	r3, r3, ip
	ldr	r0, [fp, #-12]
	rsb	r3, r3, r0
	ldr	ip, [fp, #-20]
	add	ip, ip, r3
	str	ip, [fp, #-20]
	ldr	r0, [fp, #-16]
	str	r0, [fp, #-24]
	ldr	r3, [fp, #-20]
	mov	r3, r3, asr #31
	str	r3, [fp, #-12]
	mov	r3, r2, asr #13
	ldr	ip, [fp, #-12]
	eor	r3, r3, ip
	ldr	r0, [fp, #-12]
	rsb	r3, r3, r0
	ldr	ip, [fp, #-24]
	add	r3, r3, ip
	str	r3, [fp, #-16]
	ldr	r0, [fp, #-24]
	mov	r3, r0, asr #13
	ldr	ip, [fp, #-12]
	eor	r3, r3, ip
	ldr	r0, [fp, #-12]
	rsb	r3, r0, r3
	add	r2, r2, r3
	ldr	r3, .L7+4
	ldr	r3, [r3, #52]
	ldr	ip, [fp, #-12]
	eor	r3, r3, ip
	ldr	r0, [fp, #-12]
	rsb	r3, r3, r0
	ldr	ip, [fp, #-20]
	add	ip, ip, r3
	str	ip, [fp, #-20]
	ldr	r0, [fp, #-16]
	str	r0, [fp, #-24]
	ldr	r3, [fp, #-20]
	mov	r3, r3, asr #31
	str	r3, [fp, #-12]
	mov	r3, r2, asr #14
	ldr	ip, [fp, #-12]
	eor	r3, r3, ip
	ldr	r0, [fp, #-12]
	rsb	r3, r3, r0
	ldr	ip, [fp, #-24]
	add	r3, r3, ip
	str	r3, [fp, #-16]
	ldr	r0, [fp, #-24]
	mov	r3, r0, asr #14
	ldr	ip, [fp, #-12]
	eor	r3, r3, ip
	ldr	r0, [fp, #-12]
	rsb	r3, r0, r3
	add	r2, r2, r3
	ldr	r3, .L7+4
	ldr	r3, [r3, #56]
	ldr	ip, [fp, #-12]
	eor	r3, r3, ip
	ldr	r0, [fp, #-12]
	rsb	r3, r3, r0
	ldr	ip, [fp, #-20]
	add	ip, ip, r3
	str	ip, [fp, #-20]
	ldr	r0, [fp, #-16]
	str	r0, [fp, #-24]
	ldr	r3, [fp, #-20]
	mov	r3, r3, asr #31
	str	r3, [fp, #-12]
	mov	r3, r2, asr #15
	ldr	ip, [fp, #-12]
	eor	r3, r3, ip
	ldr	r0, [fp, #-12]
	rsb	r3, r3, r0
	ldr	ip, [fp, #-24]
	add	r3, r3, ip
	str	r3, [fp, #-16]
	ldr	r0, [fp, #-24]
	mov	r3, r0, asr #15
	ldr	ip, [fp, #-12]
	eor	r3, r3, ip
	ldr	r0, [fp, #-12]
	rsb	r3, r0, r3
	add	r2, r2, r3
	ldr	r3, .L7+4
	ldr	r3, [r3, #60]
	ldr	ip, [fp, #-12]
	eor	r3, r3, ip
	ldr	r0, [fp, #-12]
	rsb	r3, r3, r0
	ldr	ip, [fp, #-20]
	add	ip, ip, r3
	str	ip, [fp, #-20]
	ldr	r0, [fp, #-16]
	str	r0, [fp, #-24]
	ldr	r3, [fp, #-20]
	mov	r3, r3, asr #31
	str	r3, [fp, #-12]
	mov	r3, r2, asr #16
	ldr	ip, [fp, #-12]
	eor	r3, r3, ip
	ldr	r0, [fp, #-12]
	rsb	r3, r3, r0
	ldr	ip, [fp, #-24]
	add	r3, r3, ip
	str	r3, [fp, #-16]
	ldr	r0, [fp, #-24]
	mov	r3, r0, asr #16
	ldr	ip, [fp, #-12]
	eor	r3, r3, ip
	ldr	r0, [fp, #-12]
	rsb	r3, r0, r3
	add	r2, r2, r3
	ldr	r3, .L7+4
	ldr	r3, [r3, #64]
	ldr	ip, [fp, #-12]
	eor	r3, r3, ip
	ldr	r0, [fp, #-12]
	rsb	r3, r3, r0
	ldr	ip, [fp, #-20]
	add	ip, ip, r3
	str	ip, [fp, #-20]
	ldr	r0, [fp, #-16]
	str	r0, [fp, #-24]
	ldr	r3, [fp, #-20]
	mov	r3, r3, asr #31
	str	r3, [fp, #-12]
	mov	r3, r2, asr #17
	ldr	ip, [fp, #-12]
	eor	r3, r3, ip
	ldr	r0, [fp, #-12]
	rsb	r3, r3, r0
	ldr	ip, [fp, #-24]
	add	r3, r3, ip
	str	r3, [fp, #-16]
	ldr	r0, [fp, #-24]
	mov	r3, r0, asr #17
	ldr	ip, [fp, #-12]
	eor	r3, r3, ip
	ldr	r0, [fp, #-12]
	rsb	r3, r0, r3
	add	r2, r2, r3
	ldr	r3, .L7+4
	ldr	r3, [r3, #68]
	ldr	ip, [fp, #-12]
	eor	r3, r3, ip
	ldr	r0, [fp, #-12]
	rsb	r3, r3, r0
	ldr	ip, [fp, #-20]
	add	ip, ip, r3
	str	ip, [fp, #-20]
	ldr	r0, [fp, #-16]
	str	r0, [fp, #-24]
	ldr	r3, [fp, #-20]
	mov	r3, r3, asr #31
	str	r3, [fp, #-12]
	mov	r3, r2, asr #18
	ldr	ip, [fp, #-12]
	eor	r3, r3, ip
	ldr	r0, [fp, #-12]
	rsb	r3, r3, r0
	ldr	ip, [fp, #-24]
	add	r3, r3, ip
	str	r3, [fp, #-16]
	ldr	r0, [fp, #-24]
	mov	r3, r0, asr #18
	ldr	ip, [fp, #-12]
	eor	r3, r3, ip
	ldr	r0, [fp, #-12]
	rsb	r3, r0, r3
	add	r2, r2, r3
	ldr	r3, .L7+4
	ldr	r3, [r3, #72]
	ldr	ip, [fp, #-12]
	eor	r3, r3, ip
	ldr	r0, [fp, #-12]
	rsb	r3, r3, r0
	ldr	ip, [fp, #-20]
	add	ip, ip, r3
	ldr	r0, [fp, #-16]
	str	r0, [fp, #-24]
	ldr	r3, [fp, #-24]
	str	r3, [r1, #0]
	ldr	r3, [fp, #-8]
	str	r2, [r3, #0]
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
.L8:
	.align	2
.L7:
	.word	K_FACTOR
	.word	z_table
	.size	cordic_opt2_rotation, .-cordic_opt2_rotation
	.ident	"GCC: (Sourcery G++ Lite 2008q3-72) 4.3.2"
	.section	.note.GNU-stack,"",%progbits
