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
	stmfd	sp!, {r4, r5, r6, r7, r8}
	mov	r5, #0 		; z = 0
	ldr	r6, .L8 	; r6 = z_table
	mov	r7, r2 		; x_temp_1 = x
	mov	r8, r3 		; y_temp_1 = y
	mov	ip, r5 		; i = 0
	mov	r2, r5 		;
.L4:
	cmp	r1, #0 						; compare r1 (y_temp_1), 0
	addge	r4, r0, r1, asr ip 		; if y >= 0, x += (y >> i)
	sublt	r4, r0, r1, asr ip 		; if y < 0, x -= (y >> i)
	ldrge	r3, [r6, r2] 			; load z_table[i]
	ldrlt	r3, [r6, r2] 			; redundant
	subge	r1, r1, r0, asr ip 		; if y >= 0, y -= (x >> i)
	addlt	r1, r1, r0, asr ip 		; if y < 0, y += (x >> i)
	add	ip, ip, #1 					; i++
	addge	r5, r5, r3 				; if y >= 0, z += z_table[i]
	rsblt	r5, r3, r5 				; if y < 0, z -= z_table[i]
	cmp	ip, #19 					; compare i, 19
	add	r2, r2, #4 					; increment z_table pointer
	mov	r0, r4 						; x_temp_1 = x_temp_2
	bne	.L4
	str	r4, [r7, #0] 				; *x_o = x_temp_1
	str	r5, [r8, #0] 				; *z_o = z_temp
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
cordic_opt3b_rotation:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl}
	mov	sl, r1
	mov	r9, r2
	blt	.L50
	ldr	r3, .L51
	ldr	r1, .L51+4
	ldr	r4, .L51+8
	ldr	r2, .L51+12
	ldr	ip, .L51+16
	add	r3, r0, r3
	mov	r8, r4
	mov	r7, r1
	mov	r6, ip
	mov	r5, r2
.L12:
	cmp	r3, #0
	addlt	r0, r3, #242688
	subge	r0, r3, #242688
	addlt	r0, r0, #396
	subge	r0, r0, #396
	movge	r2, r6
	movge	ip, r5
	movge	r1, r8
	movge	r4, r7
	cmp	r0, #0
	ldrlt	r3, .L51+20
	ldrge	r3, .L51+24
	addlt	r3, r0, r3
	addge	r3, r0, r3
	addlt	r2, r2, r1
	rsbge	r2, r2, r1
	rsblt	ip, ip, r4
	addge	ip, ip, r4
	cmp	r3, #0
	addlt	r3, r3, #65024
	subge	r3, r3, #65024
	addlt	r3, r3, #173
	subge	r3, r3, #173
	addlt	r0, r2, ip, asr #3
	subge	r0, r2, ip, asr #3
	sublt	r1, ip, r2, asr #3
	addge	r1, ip, r2, asr #3
	cmp	r3, #0
	addlt	r3, r3, #32512
	subge	r3, r3, #32512
	addlt	r3, r3, #213
	subge	r3, r3, #213
	sublt	r2, r1, r0, asr #4
	addge	r2, r1, r0, asr #4
	addlt	r0, r0, r1, asr #4
	subge	r0, r0, r1, asr #4
	cmp	r3, #0
	addlt	r3, r3, #16320
	subge	r3, r3, #16320
	addlt	r3, r3, #58
	subge	r3, r3, #58
	sublt	ip, r2, r0, asr #5
	addge	ip, r2, r0, asr #5
	addlt	r0, r0, r2, asr #5
	subge	r0, r0, r2, asr #5
	cmp	r3, #0
	addlt	r3, r3, #8128
	subge	r3, r3, #8128
	addlt	r3, r3, #63
	subge	r3, r3, #63
	sublt	r2, ip, r0, asr #6
	addge	r2, ip, r0, asr #6
	addlt	r0, r0, ip, asr #6
	subge	r0, r0, ip, asr #6
	cmp	r3, #0
	addlt	r3, r3, #4080
	subge	r3, r3, #4080
	addlt	r3, r3, #15
	subge	r3, r3, #15
	sublt	ip, r2, r0, asr #7
	addge	ip, r2, r0, asr #7
	addlt	r0, r0, r2, asr #7
	subge	r0, r0, r2, asr #7
	cmp	r3, #0
	addlt	r3, r3, #2032
	subge	r3, r3, #2032
	addlt	r3, r3, #15
	subge	r3, r3, #15
	sublt	r2, ip, r0, asr #8
	addge	r2, ip, r0, asr #8
	addlt	r0, r0, ip, asr #8
	subge	r0, r0, ip, asr #8
	cmp	r3, #0
	addlt	r3, r3, #1020
	subge	r3, r3, #1020
	addlt	r3, r3, #3
	subge	r3, r3, #3
	sublt	ip, r2, r0, asr #9
	addge	ip, r2, r0, asr #9
	addlt	r0, r0, r2, asr #9
	subge	r0, r0, r2, asr #9
	cmp	r3, #0
	addlt	r3, r3, #508
	subge	r3, r3, #508
	addlt	r3, r3, #3
	subge	r3, r3, #3
	sublt	r2, ip, r0, asr #10
	addge	r2, ip, r0, asr #10
	addlt	r0, r0, ip, asr #10
	subge	r0, r0, ip, asr #10
	cmp	r3, #0
	addlt	ip, r3, #255
	subge	ip, r3, #255
	addlt	r3, r0, r2, asr #11
	subge	r3, r0, r2, asr #11
	sublt	r1, r2, r0, asr #11
	addge	r1, r2, r0, asr #11
	cmp	ip, #0
	addlt	r0, ip, #127
	subge	r0, ip, #127
	sublt	r2, r1, r3, asr #12
	addge	r2, r1, r3, asr #12
	addlt	r3, r3, r1, asr #12
	subge	r3, r3, r1, asr #12
	cmp	r0, #0
	addlt	r0, r0, #63
	subge	r0, r0, #63
	sublt	ip, r2, r3, asr #13
	addge	ip, r2, r3, asr #13
	addlt	r3, r3, r2, asr #13
	subge	r3, r3, r2, asr #13
	cmp	r0, #0
	addlt	r0, r0, #31
	subge	r0, r0, #31
	sublt	r2, ip, r3, asr #14
	addge	r2, ip, r3, asr #14
	addlt	r3, r3, ip, asr #14
	subge	r3, r3, ip, asr #14
	cmp	r0, #0
	addlt	r0, r0, #15
	subge	r0, r0, #15
	sublt	ip, r2, r3, asr #15
	addge	ip, r2, r3, asr #15
	addlt	r3, r3, r2, asr #15
	subge	r3, r3, r2, asr #15
	cmp	r0, #0
	addlt	r0, r0, #7
	subge	r0, r0, #7
	sublt	r2, ip, r3, asr #16
	addge	r2, ip, r3, asr #16
	addlt	r3, r3, ip, asr #16
	subge	r3, r3, ip, asr #16
	cmp	r0, #0
	addlt	r0, r0, #3
	subge	r0, r0, #3
	sublt	ip, r2, r3, asr #17
	addge	ip, r2, r3, asr #17
	addlt	r3, r3, r2, asr #17
	subge	r3, r3, r2, asr #17
	cmp	r0, #0
	sublt	r0, ip, r3, asr #18
	addge	r0, ip, r3, asr #18
	addlt	r3, r3, ip, asr #18
	subge	r3, r3, ip, asr #18
	str	r3, [sl, #0]
	str	r0, [r9, #0]
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl}
	bx	lr
.L50:
	ldr	r3, .L51+28
	ldr	r1, .L51+32
	add	r3, r0, r3
	ldr	r4, .L51+36
	ldr	r8, .L51+40
	ldr	r7, .L51+44
	ldr	r2, .L51+48
	ldr	ip, .L51+52
	ldr	r6, .L51+56
	ldr	r5, .L51+16
	b	.L12
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
