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
	.file	"cordic_naive.c"
	.text
	.align	2
	.global	cordic_naive
	.type	cordic_naive, %function
cordic_naive:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5, r6, r7}
	mov	ip, #0
	ldr	r0, [r0, #0]
	ldr	r1, [r1, #0]
	ldr	r6, .L8
	mov	r7, r2
	mov	r5, ip
	mov	r2, ip
.L4:
	cmp	r1, #0
	subgt	r4, r1, r0, asr ip
	addle	r4, r1, r0, asr ip
	ldrgt	r3, [r6, r2]
	ldrle	r3, [r6, r2]
	addgt	r0, r0, r1, asr ip
	suble	r0, r0, r1, asr ip
	add	ip, ip, #1
	addgt	r5, r5, r3
	rsble	r5, r3, r5
	cmp	ip, #23
	add	r2, r2, #4
	mov	r1, r4
	bne	.L4
	str	r5, [r7, #0]
	ldmfd	sp!, {r4, r5, r6, r7}
	bx	lr
.L9:
	.align	2
.L8:
	.word	.LANCHOR0
	.size	cordic_naive, .-cordic_naive
	.section	.rodata
	.align	2
.LANCHOR0 = . + 0
	.type	z_table, %object
	.size	z_table, 92
z_table:
	.word	6588397
	.word	3889358
	.word	2055029
	.word	1043165
	.word	523606
	.word	262058
	.word	131061
	.word	65534
	.word	32767
	.word	16383
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
