	.arch armv4t
	.eabi_attribute 27, 3
	.fpu neon
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 6
	.eabi_attribute 18, 4
	.file	"neon_cordic.c"
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
	.global	divs
	.align	2
	.type	divs, %object
	.size	divs, 76
divs:
	.word	524288
	.word	262144
	.word	131072
	.word	65536
	.word	32768
	.word	16384
	.word	8192
	.word	4096
	.word	2048
	.word	1024
	.word	512
	.word	256
	.word	128
	.word	64
	.word	32
	.word	16
	.word	8
	.word	4
	.word	2
	.text
	.align	2
	.global	neon_cordic_vectoring
	.type	neon_cordic_vectoring, %function
neon_cordic_vectoring:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 256
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, fp}
	add	fp, sp, #4
	sub	sp, sp, #256
	str	r2, [fp, #-240]
	str	r3, [fp, #-244]
	mov	r2, r0
	mov	r3, #0
	str	r3, [fp, #-236]
	mov	r3, r2, asl #31
	orr	r3, r3, r1
	mov	r4, r3, asr #31
	str	r3, [fp, #-228]
	str	r4, [fp, #-224]
	sub	r4, fp, #228
	ldmia	r4, {r3-r4}
	str	r3, [fp, #-156]
	str	r4, [fp, #-152]
	fldd	d16, [fp, #-156]	@ int
	fstd	d16, [fp, #-196]
	mov	r3, r1, asl #31
	orr	r3, r3, r2
	mov	r4, r3, asr #31
	str	r3, [fp, #-220]
	str	r4, [fp, #-216]
	sub	r4, fp, #220
	ldmia	r4, {r3-r4}
	str	r3, [fp, #-148]
	str	r4, [fp, #-144]
	fldd	d16, [fp, #-148]	@ int
	fstd	d16, [fp, #-188]
	mvn	r3, #0
	mvn	r4, #0
	str	r3, [fp, #-212]
	str	r4, [fp, #-208]
	sub	r4, fp, #212
	ldmia	r4, {r3-r4}
	str	r3, [fp, #-140]
	str	r4, [fp, #-136]
	fldd	d16, [fp, #-140]	@ int
	fstd	d16, [fp, #-180]
	mov	r3, #-2147483647
	mvn	r4, #0
	str	r3, [fp, #-204]
	str	r4, [fp, #-200]
	sub	r4, fp, #204
	ldmia	r4, {r3-r4}
	str	r3, [fp, #-132]
	str	r4, [fp, #-128]
	fldd	d16, [fp, #-132]	@ int
	fstd	d16, [fp, #-172]
	mov	r2, #0
	str	r2, [fp, #-232]
	b	.L2
.L5:
	fldd	d7, [fp, #-196]
	fstd	d7, [fp, #-124]
	fldd	d16, [fp, #-124]
	vmov.32	r3, d16[1]
	str	r3, [fp, #-160]
	ldr	r3, [fp, #-160]
	cmp	r3, #0
	blt	.L3
	ldr	r2, [fp, #-232]
	ldr	r3, .L7
	ldr	r3, [r3, r2, asl #2]
	fldd	d16, [fp, #-188]
	fstd	d16, [fp, #-108]
	str	r3, [fp, #-112]
	fldd	d16, [fp, #-108]
	ldr	r3, [fp, #-112]
	fldd	d17, [fp, #-252]
	vmov.32	d17[0], r3
	fstd	d17, [fp, #-252]
	fldd	d7, [fp, #-252]
	vmul.i32	d16, d16, d7[0]
	fstd	d16, [fp, #-188]
	fldd	d16, [fp, #-188]
	fstd	d16, [fp, #-92]
	fldd	d17, [fp, #-180]
	fstd	d17, [fp, #-100]
	fldd	d17, [fp, #-92]
	fldd	d16, [fp, #-100]
	vmul.i32	d16, d17, d16
	fstd	d16, [fp, #-188]
	fldd	d7, [fp, #-196]
	fstd	d7, [fp, #-76]
	fldd	d16, [fp, #-188]
	fstd	d16, [fp, #-84]
	fldd	d17, [fp, #-76]
	fldd	d16, [fp, #-84]
	vadd.i32	d16, d17, d16
	fstd	d16, [fp, #-196]
	ldr	r2, [fp, #-232]
	ldr	r3, .L7+4
	ldr	r3, [r3, r2, asl #2]
	ldr	r2, [fp, #-236]
	add	r2, r2, r3
	str	r2, [fp, #-236]
	b	.L4
.L3:
	ldr	r2, [fp, #-232]
	ldr	r3, .L7
	ldr	r3, [r3, r2, asl #2]
	fldd	d7, [fp, #-188]
	fstd	d7, [fp, #-60]
	str	r3, [fp, #-64]
	fldd	d16, [fp, #-60]
	ldr	r3, [fp, #-64]
	fldd	d17, [fp, #-260]
	vmov.32	d17[0], r3
	fstd	d17, [fp, #-260]
	fldd	d7, [fp, #-260]
	vmul.i32	d16, d16, d7[0]
	fstd	d16, [fp, #-188]
	fldd	d16, [fp, #-188]
	fstd	d16, [fp, #-44]
	fldd	d17, [fp, #-172]
	fstd	d17, [fp, #-52]
	fldd	d17, [fp, #-44]
	fldd	d16, [fp, #-52]
	vmul.i32	d16, d17, d16
	fstd	d16, [fp, #-188]
	fldd	d7, [fp, #-196]
	fstd	d7, [fp, #-28]
	fldd	d16, [fp, #-188]
	fstd	d16, [fp, #-36]
	fldd	d17, [fp, #-28]
	fldd	d16, [fp, #-36]
	vadd.i32	d16, d17, d16
	fstd	d16, [fp, #-196]
	ldr	r2, [fp, #-232]
	ldr	r3, .L7+4
	ldr	r3, [r3, r2, asl #2]
	ldr	r2, [fp, #-236]
	rsb	r2, r3, r2
	str	r2, [fp, #-236]
.L4:
	fldd	d7, [fp, #-196]
	fstd	d7, [fp, #-20]
	fldd	d16, [fp, #-20]
	vrev64.32	d16, d16
	fstd	d16, [fp, #-188]
	ldr	r2, [fp, #-232]
	add	r2, r2, #1
	str	r2, [fp, #-232]
.L2:
	ldr	r3, [fp, #-232]
	cmp	r3, #18
	ble	.L5
	fldd	d7, [fp, #-196]
	fstd	d7, [fp, #-12]
	fldd	d16, [fp, #-12]
	vmov.32	r3, d16[0]
	ldr	r2, [fp, #-240]
	str	r3, [r2, #0]
	ldr	r3, [fp, #-236]
	ldr	r2, [fp, #-244]
	str	r3, [r2, #0]
	sub	sp, fp, #4
	ldmfd	sp!, {r4, fp}
	bx	lr
.L8:
	.align	2
.L7:
	.word	divs
	.word	z_table
	.size	neon_cordic_vectoring, .-neon_cordic_vectoring
	.ident	"GCC: (Sourcery G++ Lite 2008q3-72) 4.3.2"
	.section	.note.GNU-stack,"",%progbits
