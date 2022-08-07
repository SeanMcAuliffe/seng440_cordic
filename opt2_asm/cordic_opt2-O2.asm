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
	.file	"cordic_opt2.c"
	.text
	.align	2
	.global	cordic_opt2_vectoring
	.type	cordic_opt2_vectoring, %function
cordic_opt2_vectoring:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
	mov	r7, r1, asr #31
	eor	r4, r7, r0
	add	ip, r7, r1
	eor	r1, r7, r1
	rsb	ip, r4, ip
	rsb	r1, r7, r1
	mov	r8, ip, asr #31
	add	r1, r1, r0
	eor	r4, r8, r1, asr #1
	add	r0, r8, ip
	eor	ip, r8, ip, asr #1
	rsb	r0, r4, r0
	rsb	ip, r8, ip
	mov	sl, r0, asr #31
	add	ip, ip, r1
	eor	r4, sl, ip, asr #2
	add	r1, sl, r0
	eor	r0, sl, r0, asr #2
	rsb	r1, r4, r1
	rsb	r0, sl, r0
	mov	r9, r1, asr #31
	add	r0, r0, ip
	eor	r4, r9, r0, asr #3
	add	ip, r9, r1
	eor	r1, r9, r1, asr #3
	rsb	ip, r4, ip
	rsb	r1, r9, r1
	sub	sp, sp, #16
	add	r1, r1, r0
	mov	r0, ip, asr #31
	str	r0, [sp, #0]
	ldr	r5, [sp, #0]
	add	r4, r0, ip
	eor	r0, r0, r1, asr #4
	eor	ip, r5, ip, asr #4
	rsb	r4, r0, r4
	rsb	ip, r5, ip
	mov	r6, r4, asr #31
	add	ip, ip, r1
	eor	r1, r6, ip, asr #5
	add	r5, r6, r4
	eor	r4, r6, r4, asr #5
	rsb	r5, r1, r5
	rsb	r4, r6, r4
	add	r4, r4, ip
	mov	r0, #409600
	mov	ip, r5, asr #31
	eor	r1, ip, r4, asr #6
	str	r6, [sp, #4]
	add	r0, r0, #2160
	add	r6, ip, r5
	rsb	r6, r1, r6
	eor	r5, ip, r5, asr #6
	add	r0, r0, #14
	mov	r1, #242688
	rsb	r5, ip, r5
	eor	r0, r7, r0
	add	r1, r1, #396
	add	r5, r5, r4
	eor	r1, r8, r1
	str	ip, [sp, #8]
	rsb	r0, r7, r0
	mov	ip, r6, asr #31
	add	r4, ip, r6
	add	r0, r0, r1
	eor	r1, ip, r5, asr #7
	rsb	r4, r1, r4
	mov	r1, #128000
	add	r1, r1, #436
	add	r1, r1, #3
	eor	r1, sl, r1
	eor	r6, ip, r6, asr #7
	rsb	r0, r8, r0
	rsb	r6, ip, r6
	add	r0, r0, r1
	mov	r1, #65280
	mov	fp, r4, asr #31
	add	r6, r6, r5
	sub	r1, r1, #83
	eor	r5, fp, r6, asr #8
	eor	r1, r9, r1
	str	ip, [sp, #12]
	rsb	r0, sl, r0
	add	ip, fp, r4
	rsb	ip, r5, ip
	add	r0, r0, r1
	ldr	r5, [sp, #0]
	eor	r4, fp, r4, asr #8
	mov	r1, #32512
	rsb	r4, fp, r4
	add	r1, r1, #213
	mov	r7, ip, asr #31
	add	r4, r4, r6
	eor	r1, r5, r1
	rsb	r0, r9, r0
	add	r5, r7, ip
	add	r0, r0, r1
	eor	r1, r7, r4, asr #9
	rsb	r5, r1, r5
	ldmia	sp, {r6, sl}	@ phole ldm
	mov	r1, #16320
	add	r1, r1, #58
	eor	r1, sl, r1
	rsb	r0, r6, r0
	add	r0, r0, r1
	mov	r8, r5, asr #31
	eor	ip, r7, ip, asr #9
	rsb	r0, sl, r0
	mov	r1, #8128
	ldr	sl, [sp, #8]
	add	r6, r8, r5
	rsb	ip, r7, ip
	eor	r5, r8, r5, asr #10
	add	r1, r1, #63
	add	ip, ip, r4
	eor	r1, sl, r1
	rsb	r5, r8, r5
	eor	r4, r8, ip, asr #10
	add	r5, r5, ip
	add	r0, r0, r1
	ldr	ip, [sp, #12]
	mov	r1, #4080
	rsb	r6, r4, r6
	add	r1, r1, #15
	mov	r9, r6, asr #31
	eor	r1, ip, r1
	rsb	r0, sl, r0
	add	r0, r0, r1
	add	r4, r9, r6
	eor	r1, r9, r5, asr #11
	rsb	r4, r1, r4
	mov	r1, #2032
	add	r1, r1, #15
	rsb	r0, ip, r0
	eor	r1, fp, r1
	add	r0, r0, r1
	eor	r6, r9, r6, asr #11
	mov	r1, #1020
	rsb	r6, r9, r6
	add	r1, r1, #3
	mov	sl, r4, asr #31
	add	r6, r6, r5
	eor	r1, r7, r1
	rsb	r0, fp, r0
	eor	ip, sl, r6, asr #12
	add	r5, sl, r4
	add	r0, r0, r1
	eor	r4, sl, r4, asr #12
	mov	r1, #508
	rsb	r5, ip, r5
	rsb	r4, sl, r4
	add	r1, r1, #3
	add	r4, r4, r6
	eor	r1, r8, r1
	rsb	r0, r7, r0
	mov	r7, r5, asr #31
	add	ip, r7, r5
	add	r0, r0, r1
	eor	r5, r7, r5, asr #13
	eor	r1, r7, r4, asr #13
	rsb	ip, r1, ip
	rsb	r0, r8, r0
	rsb	r5, r7, r5
	eor	r1, r9, #255
	mov	r8, ip, asr #31
	add	r5, r5, r4
	add	r0, r0, r1
	eor	r6, r8, r5, asr #14
	add	r4, r8, ip
	eor	r1, sl, #127
	eor	ip, r8, ip, asr #14
	rsb	r0, r9, r0
	rsb	r4, r6, r4
	add	r0, r0, r1
	rsb	ip, r8, ip
	mov	r6, r4, asr #31
	add	ip, ip, r5
	eor	r1, r7, #63
	rsb	r0, sl, r0
	add	r5, r6, r4
	add	r0, r0, r1
	eor	r4, r6, r4, asr #15
	eor	r1, r6, ip, asr #15
	rsb	r5, r1, r5
	rsb	r0, r7, r0
	eor	r1, r8, #31
	rsb	r4, r6, r4
	mov	r7, r5, asr #31
	add	r4, r4, ip
	add	r0, r0, r1
	eor	ip, r6, #15
	rsb	r0, r8, r0
	add	r1, r7, r5
	eor	r8, r7, r4, asr #16
	eor	r5, r7, r5, asr #16
	rsb	r1, r8, r1
	add	r0, r0, ip
	rsb	r5, r7, r5
	add	r5, r5, r4
	rsb	r0, r6, r0
	eor	ip, r7, #7
	mov	r6, r1, asr #31
	add	r0, r0, ip
	add	r4, r6, r1
	eor	ip, r6, r5, asr #17
	rsb	r4, ip, r4
	rsb	r0, r7, r0
	eor	ip, r6, #3
	eor	r1, r6, r1, asr #17
	add	r0, r0, ip
	rsb	r1, r6, r1
	mov	ip, r4, asr #31
	add	r1, r1, r5
	rsb	r0, r6, r0
	eor	r4, ip, r4, asr #18
	eor	r5, ip, #1
	add	r1, r1, r4
	add	r0, r0, r5
	rsb	r0, ip, r0
	rsb	r1, ip, r1
	str	r1, [r2, #0]
	str	r0, [r3, #0]
	add	sp, sp, #16
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
	bx	lr
	.size	cordic_opt2_vectoring, .-cordic_opt2_vectoring
	.align	2
	.global	cordic_opt2_rotation
	.type	cordic_opt2_rotation, %function
cordic_opt2_rotation:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #409600
	add	r3, r3, #2160
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
	add	r3, r3, #14
	mov	r4, r0, asr #31
	eor	r3, r4, r3
	add	r0, r4, r0
	rsb	r0, r3, r0
	mov	r3, #242688
	mov	r7, r0, asr #31
	add	r3, r3, #396
	eor	r3, r7, r3
	add	r0, r7, r0
	rsb	r0, r3, r0
	mov	r3, #128000
	add	r3, r3, #436
	mov	r6, r0, asr #31
	add	r3, r3, #3
	eor	r3, r6, r3
	add	r0, r6, r0
	rsb	r0, r3, r0
	mov	r3, #315392
	add	r3, r3, #2976
	add	r3, r3, #7
	mov	ip, #65280
	mov	r9, r0, asr #31
	eor	r8, r4, r3
	sub	ip, ip, #83
	rsb	r8, r4, r8
	eor	ip, r9, ip
	add	r0, r9, r0
	mov	r4, #158720
	rsb	r0, ip, r0
	mov	r5, #32512
	add	r4, r4, #464
	mov	sl, r0, asr #31
	add	r5, r5, #213
	add	r4, r4, #3
	eor	ip, r7, r8, asr #1
	eor	r5, sl, r5
	add	r3, r7, r3
	eor	r4, r7, r4
	add	r0, sl, r0
	rsb	r3, ip, r3
	rsb	r0, r5, r0
	rsb	r4, r7, r4
	mov	ip, #16320
	mov	fp, r0, asr #31
	add	r4, r4, r8
	eor	r7, r6, r3, asr #2
	add	ip, ip, #58
	eor	ip, fp, ip
	rsb	r7, r6, r7
	add	r3, r6, r3
	add	r0, fp, r0
	eor	r6, r6, r4, asr #2
	add	r7, r7, r4
	rsb	r3, r6, r3
	rsb	r0, ip, r0
	mov	r4, #8128
	mov	r8, r0, asr #31
	eor	ip, r9, r7, asr #3
	eor	r5, r9, r3, asr #3
	add	r4, r4, #63
	add	r3, r9, r3
	rsb	r3, ip, r3
	eor	r4, r8, r4
	rsb	r5, r9, r5
	add	r0, r8, r0
	add	r5, r5, r7
	rsb	r0, r4, r0
	eor	r7, sl, r3, asr #4
	mov	ip, #4080
	mov	r9, r0, asr #31
	rsb	r7, sl, r7
	add	r3, sl, r3
	add	ip, ip, #15
	eor	sl, sl, r5, asr #4
	add	r7, r7, r5
	rsb	r3, sl, r3
	eor	ip, r9, ip
	add	r0, r9, r0
	rsb	r0, ip, r0
	eor	r4, fp, r3, asr #5
	eor	ip, fp, r7, asr #5
	add	r3, fp, r3
	rsb	r3, ip, r3
	mov	ip, #2032
	mov	r6, r0, asr #31
	eor	r5, r8, r3, asr #6
	rsb	r4, fp, r4
	add	ip, ip, #15
	add	r4, r4, r7
	eor	ip, r6, ip
	add	r0, r6, r0
	rsb	r5, r8, r5
	add	r5, r5, r4
	rsb	r0, ip, r0
	add	r3, r8, r3
	eor	r8, r8, r4, asr #6
	mov	r4, #1020
	mov	sl, r0, asr #31
	rsb	r3, r8, r3
	add	r4, r4, #3
	eor	r4, sl, r4
	eor	ip, r9, r5, asr #7
	eor	r7, r9, r3, asr #7
	add	r0, sl, r0
	add	r3, r9, r3
	rsb	r3, ip, r3
	rsb	r0, r4, r0
	rsb	r7, r9, r7
	mov	ip, #508
	add	r7, r7, r5
	eor	r4, r6, r3, asr #8
	mov	r5, r0, asr #31
	add	ip, ip, #3
	eor	ip, r5, ip
	rsb	r4, r6, r4
	add	r0, r5, r0
	add	r3, r6, r3
	eor	r6, r6, r7, asr #8
	add	r4, r4, r7
	rsb	r0, ip, r0
	rsb	r3, r6, r3
	mov	r8, r0, asr #31
	eor	ip, sl, r4, asr #9
	eor	r6, sl, r3, asr #9
	add	r3, sl, r3
	rsb	r3, ip, r3
	rsb	r6, sl, r6
	eor	ip, r8, #255
	add	r0, r8, r0
	add	r6, r6, r4
	rsb	r0, ip, r0
	eor	r7, r5, r3, asr #10
	mov	r4, r0, asr #31
	rsb	r7, r5, r7
	add	r3, r5, r3
	eor	r5, r5, r6, asr #10
	add	r7, r7, r6
	eor	ip, r4, #127
	rsb	r3, r5, r3
	add	r0, r4, r0
	rsb	r0, ip, r0
	eor	r5, r8, r3, asr #11
	eor	ip, r8, r7, asr #11
	add	r3, r8, r3
	mov	sl, r0, asr #31
	rsb	r3, ip, r3
	rsb	r5, r8, r5
	add	r5, r5, r7
	eor	r8, r4, r3, asr #12
	eor	ip, sl, #63
	add	r0, sl, r0
	rsb	r0, ip, r0
	rsb	r8, r4, r8
	add	r3, r4, r3
	eor	r4, r4, r5, asr #12
	rsb	r3, r4, r3
	add	r8, r8, r5
	mov	r4, r0, asr #31
	eor	r5, r4, #31
	eor	r6, sl, r3, asr #13
	add	r0, r4, r0
	eor	ip, sl, r8, asr #13
	add	r3, sl, r3
	rsb	r3, ip, r3
	rsb	r0, r5, r0
	rsb	r6, sl, r6
	mov	r5, r0, asr #31
	add	r6, r6, r8
	eor	r7, r4, r3, asr #14
	eor	ip, r5, #15
	rsb	r7, r4, r7
	add	r0, r5, r0
	add	r3, r4, r3
	eor	r4, r4, r6, asr #14
	add	r7, r7, r6
	rsb	r3, r4, r3
	rsb	r0, ip, r0
	mov	r4, r0, asr #31
	eor	ip, r5, r7, asr #15
	eor	r6, r5, r3, asr #15
	add	r3, r5, r3
	rsb	r3, ip, r3
	rsb	r6, r5, r6
	eor	ip, r4, #7
	add	r0, r4, r0
	add	r6, r6, r7
	rsb	r0, ip, r0
	eor	r7, r4, r3, asr #16
	mov	r5, r0, asr #31
	rsb	r7, r4, r7
	add	r3, r4, r3
	eor	r4, r4, r6, asr #16
	rsb	r3, r4, r3
	add	r7, r7, r6
	eor	ip, r5, #3
	add	r0, r5, r0
	rsb	r0, ip, r0
	eor	r4, r5, r3, asr #17
	eor	ip, r5, r7, asr #17
	add	r3, r5, r3
	mov	r0, r0, asr #31
	rsb	r3, ip, r3
	rsb	r4, r5, r4
	eor	ip, r0, r3, asr #18
	add	r4, r4, r7
	rsb	ip, r0, ip
	add	r3, r0, r3
	eor	r0, r0, r4, asr #18
	rsb	r3, r0, r3
	add	ip, ip, r4
	str	r3, [r1, #0]
	str	ip, [r2, #0]
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
	bx	lr
	.size	cordic_opt2_rotation, .-cordic_opt2_rotation
	.ident	"GCC: (Sourcery G++ Lite 2008q3-72) 4.3.2"
	.section	.note.GNU-stack,"",%progbits
