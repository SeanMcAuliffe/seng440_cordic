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
	.file	"cordic_naive.c"
	.data
	.align	2
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
	.text
	.align	2
	.global	cordic_naive
	.type	cordic_naive, %function
cordic_naive:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #44
	str	r0, [fp, #-32] 			; Obtain x from r0, store in memory.
	str	r1, [fp, #-36] 			; Obtain y from r1, store in memory.
	str	r2, [fp, #-40] 			; Obtain z from r2, store in memory.
	ldr	r3, [fp, #-32] 			; Load x from memory into r3.
	ldr	r3, [r3, #0]
	str	r3, [fp, #-28] 			; Store value of x in x_temp_1, in memory.
	ldr	r3, [fp, #-36] 			; Load y from memory into r3.
	ldr	r3, [r3, #0]
	str	r3, [fp, #-24] 			; Store value of y in y_temp_1, in memory.
	mov	r3, #0 					; Set r3 to 0.
	str	r3, [fp, #-20] 			; Store 0 in z_temp, in memory.
	mov	r3, #0					; Set r3 to 0.
	str	r3, [fp, #-8]			; Store 0 in i, in memory.
	b	.L2
.L5:							; Begin loop.
	ldr	r3, [fp, #-24]			; Load y_temp_1 into r3.
	cmp	r3, #0					; Compare y_temp_1, 0.
	ble	.L3						; If y_temp_1 <= 0, goto .L3.
	ldr	r2, [fp, #-24]			; Load y_temp_1 into r2.
	ldr	r3, [fp, #-8]			; Load i into r3.
	mov	r2, r2, asr r3			; Right-shift y_temp_1 by i places.
	ldr	r3, [fp, #-28]			; Load x_temp_1 into r3.
	add	r3, r2, r3				; x_temp_1 += (y_temp_1 >> i).
	str	r3, [fp, #-16]			; Store result in x_temp_2.
	ldr	r2, [fp, #-28]			; Load x_temp_1 into r2.
	ldr	r3, [fp, #-8]			; Load i into r3.
	mov	r2, r2, asr r3			; Right-shift x_temp_1 by i places.
	ldr	r3, [fp, #-24]			; Load y_temp_1 into r3.
	rsb	r3, r2, r3				; y_temp_1 -= (x_temp_1 >> i)
	str	r3, [fp, #-12]			; Store result in y_temp_2.
	ldr	r2, [fp, #-8]			; Load i into r2.
	ldr	r3, .L7					; Load table address into r3.
	ldr	r2, [r3, r2, asl #2]	; Load z_table[i] into r2
	ldr	r3, [fp, #-20]			; Load z_temp into r3.
	add	r3, r3, r2				; Compute z_temp += z_table[i].
	str	r3, [fp, #-20]			; Store result into z_temp, in memory.
	b	.L4						; Goto .L4.
.L3:							; else . . .
	ldr	r2, [fp, #-24]			
	ldr	r3, [fp, #-8]
	mov	r2, r2, asr r3
	ldr	r3, [fp, #-28]
	rsb	r3, r2, r3
	str	r3, [fp, #-16]
	ldr	r2, [fp, #-28]
	ldr	r3, [fp, #-8]
	mov	r2, r2, asr r3
	ldr	r3, [fp, #-24]
	add	r3, r2, r3
	str	r3, [fp, #-12]
	ldr	r2, [fp, #-8]
	ldr	r3, .L7
	ldr	r2, [r3, r2, asl #2]
	ldr	r3, [fp, #-20]
	rsb	r3, r2, r3
	str	r3, [fp, #-20]
.L4:							; After the if / else, set x_temp_1, y_temp_1.
	ldr	r3, [fp, #-16]
	str	r3, [fp, #-28]
	ldr	r3, [fp, #-12]
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-8]
	add	r3, r3, #1				; Increment i.
	str	r3, [fp, #-8]
.L2:
	ldr	r3, [fp, #-8]
	cmp	r3, #22
	ble	.L5						; If i <= 22, goto .L5. Else exit loop.
	ldr	r2, [fp, #-40]			; Load z into r2.
	ldr	r3, [fp, #-20]			; Load z_temp into r3.
	str	r3, [r2, #0]			; Set z = z_temp;
	add	sp, fp, #0				; Let stack pointer = frame pointer, ie exiting function.
	ldmfd	sp!, {fp}			; Deallocate the memory that was used for function.
	bx	lr						; Return. Update program counter.
.L8:
	.align	2
.L7:
	.word	z_table
	.size	cordic_naive, .-cordic_naive
	.ident	"GCC: (Sourcery G++ Lite 2008q3-72) 4.3.2"
	.section	.note.GNU-stack,"",%progbits
