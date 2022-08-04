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
	stmfd	sp!, {r4, r5, r6, r7}	 	 	; Save the caller registers.
	mov	ip, #0								; Store 0 in ip to use as loop counter, i.
	ldr	r0, [r0, #0]						; x_temp_1 = r0 = x, load the first argument
	ldr	r1, [r1, #0]						; y_temp_1 = r1 = y, load the second argument
	ldr	r6, .L8								; r6 = z_table, load the starting address of z_table
	mov	r7, r2								; r7 = r2
	mov	r5, ip								; r5 = i
	mov	r2, ip								; r2 = i
.L4:
	cmp	r1, #0								; if-statement checking if y > 0
	subgt	r4, r1, r0, asr ip				; if True, r4 = y_temp_2 = y_temp_1 - (x_temp_1 >> i)
	addle	r4, r1, r0, asr ip				; if False, r4 = y_temp_2 = y_temp_1 + (x_temp_1 >> i)
	ldrgt	r3, [r6, r2]					; if True, r3 = z_table[i] *** Predicate is redundant ***
	ldrle	r3, [r6, r2] 					; if False, r3 = z_table[i], *** Redunandant instruction ***
	addgt	r0, r0, r1, asr ip				; if True, r0 = x_temp_1 = x_temp_1 + (y_temp_1 >> i)
	suble	r0, r0, r1, asr ip				; if False, r0 = x_temp_1 = x_temp_1 - (y_temp_1 >> i)
	add	ip, ip, #1							; i = i + 1
	addgt	r5, r5, r3						; if True, r5 = i + z_table[i]
	rsble	r5, r3, r5						; if False, r5 = i - z_table[i] *** Why use reverse subtract instead of suble? ***
	cmp	ip, #23								; if-statement checking if i < 23
	add	r2, r2, #4							; Advance pointer in z_table by 4 bytes
	mov	r1, r4								; r1 = y_temp_1 = y_temp_2, *** Doesn't store x_temp_2 because operation has been reordered***
	bne	.L4									; if i != 23, goto .L4
	str	r5, [r7, #0]						; End of loop, store z_temp into z *** This doesn't make sense,
											; what would the value in r7 be at this point? ***
	ldmfd	sp!, {r4, r5, r6, r7}			; Restore the caller registers.
	bx	lr									; Return.
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
