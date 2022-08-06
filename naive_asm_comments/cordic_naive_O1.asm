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
	.global	cordic_naive
	.type	cordic_naive, %function
cordic_naive:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5, r6, r7}			; Push r4 - r7 onto stack.
	mov	r7, r2								; Let r7 = r2.
	ldr	r0, [r0, #0]						; r0 = x_temp_1.
	ldr	r1, [r1, #0]						; r1 = y_temp_1.
	mov	ip, #0								; ip = i = 0.
	mov	r4, ip								; r4 = z_temp = 0. 
	mov	r2, ip								; r2 = 0. r2 is the offset corresponding to i.
	ldr	r6, .L7								; Initialize optimized access to z_table.
.L5:										; Begin loop.
	cmp	r1, #0								; Compare y_temp_1, 0.
	addgt	r5, r0, r1, asr ip				; if (y_temp_1 > 0) r5 = x_temp_2 = x_temp_1 + (y_temp_1 >> i).
	subgt	r1, r1, r0, asr ip				; if (y_temp_1 > 0) r1 = y_temp_2 = y_temp_1 - (x_temp_1 >> i).
	ldrgt	r3, [r6, r2]					; if (y_temp_1 > 0) r3 = z_table[i].
	addgt	r4, r4, r3						; if (y_temp_1 > 0) z_temp += z_table[i].
	suble	r5, r0, r1, asr ip				; else . . . 
	addle	r1, r1, r0, asr ip
	ldrle	r3, [r6, r2]
	rsble	r4, r3, r4
	add	ip, ip, #1							; Increment i.
	add	r2, r2, #4							; Advance by one word the offset corresponding to i.
	cmp	ip, #23								; Evaluate loop-end condition.
	movne	r0, r5							; if (i != 23) x_temp_1 = x_temp_2. *** Doesn't store y_temp_2! *** 
	bne	.L5									; if (i != 23) goto .L5.
.L4:										; End loop. (i == 23)
	str	r4, [r7, #0]						; Deference *z, store in r4 (z_temp).
	ldmfd	sp!, {r4, r5, r6, r7}			; Pop r4 - r7 from stack.
	bx	lr 									; Jump to return address.
.L8:
	.align	2
.L7:
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
