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
	.global	cordic_naive_vectoring
	.type	cordic_naive_vectoring, %function
cordic_naive_vectoring:
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5, r6, r7, r8}
	mov	r5, #0
	ldr	r6, .L8
	mov	r7, r2
	mov	r8, r3
	mov	ip, r5
	mov	r2, r5
.L4:
	cmp	r1, #0
	ldrgt	r3, [r6, r2]
	ldrle	r3, [r6, r2]
	subgt	r4, r1, r0, asr ip
	addle	r4, r1, r0, asr ip
	addgt	r5, r5, r3
	rsble	r5, r3, r5
	addgt	r3, r0, r1, asr ip
	suble	r3, r0, r1, asr ip
	add	ip, ip, #1
	cmp	ip, #19
	add	r2, r2, #4
	mov	r1, r4
	mov	r0, r3
	bne	.L4
	str	r3, [r7, #0]
	ldr	r3, [sp, #20]
	str	r4, [r8, #0]
	str	r5, [r3, #0]
	ldmfd	sp!, {r4, r5, r6, r7, r8}
	bx	lr
.L9:
	.align	2
.L8:
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
	stmfd	sp!, {r4, r5, r6, r7, r8, sl}
	mov	r5, #315392						; x_temp_1 = K_SCALE -- Is this K_SCALE? It's the wrong value if so
	mov	r4, #0							; y_temp = 0
	add	r5, r5, #2976					; What?? Getting closer to correct K_SCALE.... 
	ldr	r6, .L16						; Index into the z_table 
	mov	r8, r2							; let r8 = r2
	mov	r7, r1							; let r7 = r1
	mov	sl, r3							; let sl = r3
	add	r5, r5, #7						; Now it's the correct K_SCALE value, but, why so many steps???
	mov	ip, r4							; let ip = 0 (i = 0)
	mov	r2, r4							; let r2 = i offset into table
.L13:
	cmp	r0, #0							; if z_temp  < 0
	ldrlt	r3, [r6, r2]				; if false: r3 = z_table[i]
	ldrge	r3, [r6, r2]				; if true: r3 = z_table[i] *** REDUNDANT ***
	sublt	r1, r4, r5, asr ip			; if false: r1 = y_temp_2 = y_temp1 - (x_temp_1 >> i)
	addge	r1, r4, r5, asr ip			; if false r1 = y_temp_2 = y_temp1 + (x_temp_1 >> i)
	addlt	r0, r0, r3					; if false: z_temp += z_table[i]
	rsbge	r0, r3, r0					; if true: z_temp -= z_table[i]
	addlt	r3, r5, r4, asr ip			; if false: r3 = x_temp_2 = x_temp_1 + (y_temp_1 >> i)
	subge	r3, r5, r4, asr ip			; if true: r3 = x_temp_2 = x_temp_1 - (y_temp_1 >> i)
	add	ip, ip, #1						; increment i
	cmp	ip, #19							; loop end condition test
	add	r2, r2, #4						; advance i offset into table
	mov	r4, r1							; r4 = y_temp_1 = y_temp_2 = r1
	mov	r5, r3							; r5 = x_temp_1 = x_temp_2 = r3
	bne	.L13							; end of loop
	str	r3, [r7, #0]					; store x_temp_2 = x_temp1 into r7 (*x_o)
	str	r1, [r8, #0]					; store y_temp_2 = y_temp1 into r8 (*y_o)
	str	r0, [sl, #0]					; store z_temp into sl (*z_o)
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl}	; restore registers
	bx	lr									; return
.L17:
	.align	2
.L16:
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
