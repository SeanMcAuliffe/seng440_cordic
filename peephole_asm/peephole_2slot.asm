	.arch armv4t
	.eabi_attribute 27, 3
	.fpu neon
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

    @SLOT 1                                     @SLOT 2
	stmfd	sp!, {r4, r5, r6, r7, r8}           nop
    mov	r5, #0                                  ldr	r6, .L8 
	mov	r7, r2                                  mov	r8, r3 
	mov	r2, r5                                  mov	ip, r5
.L4: ; Do this loop 18 times
	cmp	r1, #0                                  ldr r3, [r6, r2]
	addge	r4, r0, r1, asr ip                  sublt	r4, r0, r1, asr ip
	subge	r1, r1, r0, asr ip                  addlt	r1, r1, r0, asr ip
	addge	r5, r5, r3                          rsblt	r5, r3, r5
    add	ip, ip, #1                              add	r2, r2, #4
	cmp	ip, #19                                 mov	r0, r4
    ; INSTRUCTION COUNT 6 (x 19 iterations = 114 instructions)
	bne	.L4                                     nop ; check branch 19 times
	str	r4, [r7, #0]                            nop
	str	r5, [r8, #0]                            nop
	ldmfd	sp!, {r4, r5, r6, r7, r8}
	bx	lr
.L9:
	.align	2
.L8:
	.word	.LANCHOR0
	.size	cordic_opt3b_vectoring, .-cordic_opt3b_vectoring
	.align	2
	.global	cordic_opt3b_rotation
	.type	cordic_opt3b_rotation, %function
.L52:
	.align	2
.L51:
	.word	-411774
	.word	477562
	.word	159188
	.word	39797
	.word	119390
	.word	128439
	.word	-128439
	.word	411774
	.word	159187
	.word	-477562
	.word	477563
	.word	-159188
	.word	-119391
	.word	39796
	.word	-39797
	.size	cordic_opt3b_rotation, .-cordic_opt3b_rotation
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
	.ident	"GCC: (Sourcery G++ Lite 2008q3-72) 4.3.2"
	.section	.note.GNU-stack,"",%progbits
