	.arch armv4t
	.eabi_attribute 27, 3
	.fpu neon
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 1
	.eabi_attribute 18, 4
	.file	"neon_cordic.c"
	.text
	.align	2
	.global	neon_cordic_vectoring
	.type	neon_cordic_vectoring, %function
neon_cordic_vectoring:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5, r6, r7}
	mov	r4, r2
	mov	r5, r3
	orr	r3, r1, r0, asl #31
	mov	r6, r3
	mov	r7, r6, asr #31
	fmdrr	d17, r6, r7	@ int
	orr	r0, r0, r1, asl #31
	mov	r2, r0
	mov	r3, r2, asr #31
	fmdrr	d16, r2, r3	@ int
	vmov.i32	d18, #4294967295  @ v2si
	fldd	d19, .L7
	mov	r0, #0
	mov	r1, r0
	ldr	ip, .L7+8
	add	r2, ip, #76
.L4:
	vmov.32	r3, d17[1]
	cmp	r3, #0
	blt	.L2
	ldr	r3, [ip, r1]
	vmov.32	d7[0], r3
	vmul.i32	d16, d16, d7[0]
	vmul.i32	d16, d16, d18
	vadd.i32	d17, d17, d16
	ldr	r3, [r2, r1]
	add	r0, r0, r3
	b	.L3
.L2:
	ldr	r3, [ip, r1]
	vmov.32	d6[0], r3
	vmul.i32	d16, d16, d6[0]
	vmul.i32	d16, d16, d19
	vadd.i32	d17, d17, d16
	ldr	r3, [r2, r1]
	rsb	r0, r3, r0
.L3:
	vrev64.32	d16, d17
	add	r1, r1, #4
	cmp	r1, #76
	bne	.L4
	vst1.32	{d17[0]}, [r4]
	str	r0, [r5, #0]
	ldmfd	sp!, {r4, r5, r6, r7}
	bx	lr
.L8:
	.align	3
.L7:
	.word	-2147483647
	.word	-1
	.word	.LANCHOR0
	.size	neon_cordic_vectoring, .-neon_cordic_vectoring
	.global	divs
	.section	.rodata
	.align	2
.LANCHOR0 = . + 0
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
