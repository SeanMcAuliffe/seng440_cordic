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
	.file	"cordic_opt1.c"
	.global	SCALE_FACTOR
	.section	.rodata
	.align	2
	.type	SCALE_FACTOR, %object
	.size	SCALE_FACTOR, 4
SCALE_FACTOR:
	.word	524288
	.global	K_SCALE
	.align	2
	.type	K_SCALE, %object
	.size	K_SCALE, 4
K_SCALE:
	.word	318375
	.global	K_FACTOR
	.align	2
	.type	K_FACTOR, %object
	.size	K_FACTOR, 4
K_FACTOR:
	.word	318375
	.global	z_table
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
	.global	table_offset
	.align	2
	.type	table_offset, %object
	.size	table_offset, 4
table_offset:
	.word	4
	.global	NUM_ITERATIONS
	.align	2
	.type	NUM_ITERATIONS, %object
	.size	NUM_ITERATIONS, 4
NUM_ITERATIONS:
	.word	1000
	.global	NUM_TRIALS
	.align	2
	.type	NUM_TRIALS, %object
	.size	NUM_TRIALS, 4
NUM_TRIALS:
	.word	1000
	.global	X_VECTORING_MODE
	.align	3
	.type	X_VECTORING_MODE, %object
	.size	X_VECTORING_MODE, 8
X_VECTORING_MODE:
	.word	-1021721180
	.word	1072079004
	.global	Y_VECTORING_MODE
	.align	3
	.type	Y_VECTORING_MODE, %object
	.size	Y_VECTORING_MODE, 8
Y_VECTORING_MODE:
	.word	-1021721180
	.word	1072079004
	.global	Z_ROTATION_MODE
	.align	3
	.type	Z_ROTATION_MODE, %object
	.size	Z_ROTATION_MODE, 8
Z_ROTATION_MODE:
	.word	-57999238
	.word	1072243194
	.text
	.align	2
	.global	cordic_opt1_vectoring
	.type	cordic_opt1_vectoring, %function
cordic_opt1_vectoring:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!		; Store inputs to memory
	add	fp, sp, #0
	sub	sp, sp, #44
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	str	r2, [fp, #-16]
	str	r3, [fp, #-20]
	ldr	r1, .L7				; Global z table reference
	str	r1, [fp, #-24]
	ldr	r2, [fp, #-8]		; x_temp = x
	str	r2, [fp, #-44]
	ldr	r3, [fp, #-12]		; y_temp = y
	str	r3, [fp, #-40]
	mov	r1, #0				; table_access = 0
	str	r1, [fp, #-36]
	mov	r2, #0				; i = 0
	str	r2, [fp, #-28]
	b	.L2
.L5:
	ldr	r3, [fp, #-40]
	cmp	r3, #0
	blt	.L3					; BRANCH (if y_temp < 0)
	ldr	r1, [fp, #-40]
	ldr	r2, [fp, #-28]
	mov	r3, r1, asr r2
	ldr	r1, [fp, #-44]
	add	r3, r3, r1
	str	r3, [fp, #-32]
	ldr	r2, [fp, #-44]
	ldr	r1, [fp, #-28]
	mov	r3, r2, asr r1
	ldr	r2, [fp, #-40]
	rsb	r2, r3, r2
	str	r2, [fp, #-40]
	ldr	r1, [fp, #-24]
	ldr	r3, [r1, #0]
	ldr	r2, [fp, #-36]
	add	r2, r2, r3
	str	r2, [fp, #-36]
	b	.L4					; Return to top of loop
.L3:
	ldr	r1, [fp, #-40]
	ldr	r2, [fp, #-28]
	mov	r3, r1, asr r2
	ldr	r1, [fp, #-44]
	rsb	r3, r3, r1
	str	r3, [fp, #-32]
	ldr	r2, [fp, #-44]
	ldr	r1, [fp, #-28]
	mov	r3, r2, asr r1
	ldr	r2, [fp, #-40]
	add	r2, r2, r3
	str	r2, [fp, #-40]
	ldr	r1, [fp, #-24]
	ldr	r3, [r1, #0]
	ldr	r2, [fp, #-36]
	rsb	r2, r3, r2
	str	r2, [fp, #-36]
.L4:
	ldr	r3, [fp, #-32]		; Udate loop variables
	str	r3, [fp, #-44]
	ldr	r1, [fp, #-24]
	add	r1, r1, #4			; table_access += 4
	str	r1, [fp, #-24]
	ldr	r2, [fp, #-28]
	add	r2, r2, #1			; i += 1
	str	r2, [fp, #-28]
.L2:
	ldr	r3, [fp, #-28]
	cmp	r3, #18
	ble	.L5
	ldr	r3, [fp, #-16]
	ldr	r1, [fp, #-44]
	str	r1, [r3, #0]
	ldr	r3, [fp, #-20]
	ldr	r2, [fp, #-36]
	str	r2, [r3, #0]
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
.L8:
	.align	2
.L7:
	.word	z_table
	.size	cordic_opt1_vectoring, .-cordic_opt1_vectoring
	.align	2
	.global	cordic_opt1_rotation
	.type	cordic_opt1_rotation, %function
cordic_opt1_rotation:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #44
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	str	r2, [fp, #-16]
	ldr	r1, .L15
	str	r1, [fp, #-20]
	ldr	r3, .L15+4
	ldr	r3, [r3, #0]
	str	r3, [fp, #-40]
	mov	r2, #0
	str	r2, [fp, #-36]
	ldr	r3, [fp, #-8]
	str	r3, [fp, #-32]
	mov	r1, #0
	str	r1, [fp, #-24]
	b	.L10
.L13:
	ldr	r2, [fp, #-32]
	cmp	r2, #0
	bge	.L11
	ldr	r1, [fp, #-36]
	ldr	r2, [fp, #-24]
	mov	r3, r1, asr r2
	ldr	r1, [fp, #-40]
	add	r3, r3, r1
	str	r3, [fp, #-28]
	ldr	r2, [fp, #-40]
	ldr	r1, [fp, #-24]
	mov	r3, r2, asr r1
	ldr	r2, [fp, #-36]
	rsb	r2, r3, r2
	str	r2, [fp, #-36]
	ldr	r1, [fp, #-20]
	ldr	r3, [r1, #0]
	ldr	r2, [fp, #-32]
	add	r2, r2, r3
	str	r2, [fp, #-32]
	b	.L12
.L11:
	ldr	r1, [fp, #-36]
	ldr	r2, [fp, #-24]
	mov	r3, r1, asr r2
	ldr	r1, [fp, #-40]
	rsb	r3, r3, r1
	str	r3, [fp, #-28]
	ldr	r2, [fp, #-40]
	ldr	r1, [fp, #-24]
	mov	r3, r2, asr r1
	ldr	r2, [fp, #-36]
	add	r2, r2, r3
	str	r2, [fp, #-36]
	ldr	r1, [fp, #-20]
	ldr	r3, [r1, #0]
	ldr	r2, [fp, #-32]
	rsb	r2, r3, r2
	str	r2, [fp, #-32]
.L12:
	ldr	r3, [fp, #-28]
	str	r3, [fp, #-40]
	ldr	r1, [fp, #-20]
	add	r1, r1, #4
	str	r1, [fp, #-20]
	ldr	r2, [fp, #-24]
	add	r2, r2, #1
	str	r2, [fp, #-24]
.L10:
	ldr	r3, [fp, #-24]
	cmp	r3, #18
	ble	.L13
	ldr	r3, [fp, #-12]
	ldr	r1, [fp, #-40]
	str	r1, [r3, #0]
	ldr	r3, [fp, #-16]
	ldr	r2, [fp, #-36]
	str	r2, [r3, #0]
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
.L16:
	.align	2
.L15:
	.word	z_table
	.word	K_FACTOR
	.size	cordic_opt1_rotation, .-cordic_opt1_rotation
	.ident	"GCC: (Sourcery G++ Lite 2008q3-72) 4.3.2"
	.section	.note.GNU-stack,"",%progbits
