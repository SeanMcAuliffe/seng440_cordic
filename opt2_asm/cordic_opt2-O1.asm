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
	.file	"cordic_opt2.c"
	.text
	.align	2
	.global	cordic_opt2_vectoring
	.type	cordic_opt2_vectoring, %function
cordic_opt2_vectoring:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
	sub	sp, sp, #48
	mov	r4, r1, asr #31
	str	r4, [sp, #0]
	eor	ip, r4, r1
	rsb	ip, r4, ip
	add	ip, ip, r0
	add	r1, r4, r1
	eor	r0, r4, r0
	rsb	r1, r0, r1
	mov	r0, r1, asr #31
	str	r0, [sp, #4]
	eor	r0, r0, r1, asr #1
	ldr	r4, [sp, #4]
	rsb	r0, r4, r0
	add	r0, r0, ip
	add	r1, r4, r1
	eor	ip, r4, ip, asr #1
	rsb	r1, ip, r1
	mov	ip, r1, asr #31
	str	ip, [sp, #8]
	eor	ip, ip, r1, asr #2
	ldr	r4, [sp, #8]
	rsb	ip, r4, ip
	add	ip, ip, r0
	add	r1, r4, r1
	eor	r0, r4, r0, asr #2
	rsb	r1, r0, r1
	mov	r0, r1, asr #31
	str	r0, [sp, #12]
	eor	r0, r0, r1, asr #3
	ldr	r4, [sp, #12]
	rsb	r0, r4, r0
	add	r0, r0, ip
	add	r1, r4, r1
	eor	ip, r4, ip, asr #3
	rsb	r1, ip, r1
	mov	ip, r1, asr #31
	str	ip, [sp, #16]
	eor	ip, ip, r1, asr #4
	ldr	r4, [sp, #16]
	rsb	ip, r4, ip
	add	ip, ip, r0
	add	r1, r4, r1
	eor	r0, r4, r0, asr #4
	rsb	r1, r0, r1
	mov	r0, r1, asr #31
	str	r0, [sp, #20]
	eor	r0, r0, r1, asr #5
	ldr	r4, [sp, #20]
	rsb	r0, r4, r0
	add	r0, r0, ip
	add	r1, r4, r1
	eor	ip, r4, ip, asr #5
	rsb	r1, ip, r1
	mov	ip, r1, asr #31
	str	ip, [sp, #24]
	eor	ip, ip, r1, asr #6
	ldr	r4, [sp, #24]
	rsb	ip, r4, ip
	add	ip, ip, r0
	add	r1, r4, r1
	eor	r0, r4, r0, asr #6
	rsb	r1, r0, r1
	mov	r0, r1, asr #31
	str	r0, [sp, #28]
	eor	r0, r0, r1, asr #7
	ldr	r4, [sp, #28]
	rsb	r0, r4, r0
	add	r0, r0, ip
	add	r1, r4, r1
	eor	ip, r4, ip, asr #7
	rsb	r1, ip, r1
	mov	ip, r1, asr #31
	str	ip, [sp, #32]
	eor	ip, ip, r1, asr #8
	ldr	r4, [sp, #32]
	rsb	ip, r4, ip
	add	ip, ip, r0
	add	r1, r4, r1
	eor	r0, r4, r0, asr #8
	rsb	r1, r0, r1
	mov	r0, r1, asr #31
	str	r0, [sp, #36]
	eor	r0, r0, r1, asr #9
	ldr	r4, [sp, #36]
	rsb	r0, r4, r0
	add	r0, r0, ip
	add	r1, r4, r1
	eor	ip, r4, ip, asr #9
	rsb	r1, ip, r1
	mov	ip, r1, asr #31
	str	ip, [sp, #40]
	eor	ip, ip, r1, asr #10
	ldr	r4, [sp, #40]
	rsb	ip, r4, ip
	add	ip, ip, r0
	add	r1, r4, r1
	eor	r0, r4, r0, asr #10
	rsb	r1, r0, r1
	mov	fp, r1, asr #31
	eor	r0, fp, r1, asr #11
	rsb	r0, fp, r0
	add	r0, r0, ip
	add	r1, fp, r1
	eor	ip, fp, ip, asr #11
	rsb	r1, ip, r1
	mov	r9, r1, asr #31
	eor	ip, r9, r1, asr #12
	rsb	ip, r9, ip
	add	ip, ip, r0
	add	r1, r9, r1
	eor	r0, r9, r0, asr #12
	rsb	r1, r0, r1
	mov	sl, r1, asr #31
	eor	r0, sl, r1, asr #13
	rsb	r0, sl, r0
	add	r0, r0, ip
	add	r1, sl, r1
	eor	ip, sl, ip, asr #13
	rsb	r1, ip, r1
	mov	r8, r1, asr #31
	eor	ip, r8, r1, asr #14
	rsb	ip, r8, ip
	add	ip, ip, r0
	add	r1, r8, r1
	eor	r0, r8, r0, asr #14
	rsb	r1, r0, r1
	mov	r7, r1, asr #31
	eor	r0, r7, r1, asr #15
	rsb	r0, r7, r0
	add	r0, r0, ip
	add	r1, r7, r1
	eor	ip, r7, ip, asr #15
	rsb	r1, ip, r1
	mov	r6, r1, asr #31
	eor	r4, r6, r1, asr #16
	rsb	r4, r6, r4
	add	r4, r4, r0
	add	r1, r6, r1
	eor	r0, r6, r0, asr #16
	rsb	r1, r0, r1
	mov	r5, r1, asr #31
	add	ip, r5, r1
	eor	r0, r5, r4, asr #17
	rsb	ip, r0, ip
	mov	r0, ip, asr #31
	str	r0, [sp, #44]
	eor	r1, r5, r1, asr #17
	rsb	r1, r5, r1
	add	r1, r1, r4
	eor	ip, r0, ip, asr #18
	add	r1, r1, ip
	mov	r0, #409600
	add	r0, r0, #2160
	add	r0, r0, #14
	ldr	r4, [sp, #0]
	eor	r0, r4, r0
	rsb	r0, r4, r0
	mov	ip, #242688
	add	ip, ip, #396
	ldr	r4, [sp, #4]
	eor	ip, r4, ip
	add	r0, r0, ip
	rsb	r0, r4, r0
	mov	ip, #128000
	add	ip, ip, #436
	add	ip, ip, #3
	ldr	r4, [sp, #8]
	eor	ip, r4, ip
	add	r0, r0, ip
	rsb	r0, r4, r0
	mov	ip, #65280
	sub	ip, ip, #83
	ldr	r4, [sp, #12]
	eor	ip, r4, ip
	add	r0, r0, ip
	rsb	r0, r4, r0
	mov	ip, #32512
	add	ip, ip, #213
	ldr	r4, [sp, #16]
	eor	ip, r4, ip
	add	r0, r0, ip
	rsb	r0, r4, r0
	mov	ip, #16320
	add	ip, ip, #58
	ldr	r4, [sp, #20]
	eor	ip, r4, ip
	add	r0, r0, ip
	rsb	r0, r4, r0
	mov	ip, #8128
	add	ip, ip, #63
	ldr	r4, [sp, #24]
	eor	ip, r4, ip
	add	r0, r0, ip
	rsb	r0, r4, r0
	mov	ip, #4080
	add	ip, ip, #15
	ldr	r4, [sp, #28]
	eor	ip, r4, ip
	add	r0, r0, ip
	rsb	r0, r4, r0
	mov	ip, #2032
	add	ip, ip, #15
	ldr	r4, [sp, #32]
	eor	ip, r4, ip
	add	r0, r0, ip
	rsb	r0, r4, r0
	mov	ip, #1020
	add	ip, ip, #3
	ldr	r4, [sp, #36]
	eor	ip, r4, ip
	add	r0, r0, ip
	rsb	r0, r4, r0
	mov	ip, #508
	add	ip, ip, #3
	ldr	r4, [sp, #40]
	eor	ip, r4, ip
	add	r0, r0, ip
	rsb	r0, r4, r0
	eor	ip, fp, #255
	add	r0, r0, ip
	rsb	r0, fp, r0
	eor	ip, r9, #127
	add	r0, r0, ip
	rsb	r0, r9, r0
	eor	ip, sl, #63
	add	r0, r0, ip
	rsb	r0, sl, r0
	eor	ip, r8, #31
	add	r0, r0, ip
	rsb	r0, r8, r0
	eor	ip, r7, #15
	add	r0, r0, ip
	rsb	r0, r7, r0
	eor	ip, r6, #7
	add	r0, r0, ip
	rsb	r0, r6, r0
	eor	ip, r5, #3
	add	r0, r0, ip
	rsb	r0, r5, r0
	ldr	r4, [sp, #44]
	eor	ip, r4, #1
	add	r0, r0, ip
	rsb	r1, r4, r1
	str	r1, [r2, #0]
	rsb	r0, r4, r0
	str	r0, [r3, #0]
	add	sp, sp, #48
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
	stmfd	sp!, {r4, r5, r6, r7, r8}
	mov	ip, r0, asr #31
	mov	r5, #315392
	add	r5, r5, #2976
	add	r5, r5, #7
	eor	r6, ip, r5
	rsb	r6, ip, r6
	add	r0, ip, r0
	mov	r3, #409600
	add	r3, r3, #2160
	add	r3, r3, #14
	eor	ip, ip, r3
	rsb	r0, ip, r0
	mov	r4, r0, asr #31
	add	r5, r4, r5
	eor	r3, r4, r6, asr #1
	rsb	r5, r3, r5
	mov	ip, #158720
	add	ip, ip, #464
	add	ip, ip, #3
	eor	ip, r4, ip
	rsb	ip, r4, ip
	add	ip, ip, r6
	add	r0, r4, r0
	mov	r3, #242688
	add	r3, r3, #396
	eor	r4, r4, r3
	rsb	r0, r4, r0
	mov	r4, r0, asr #31
	add	r6, r4, r5
	eor	r3, r4, ip, asr #2
	rsb	r6, r3, r6
	eor	r5, r4, r5, asr #2
	rsb	r5, r4, r5
	add	r5, r5, ip
	add	r0, r4, r0
	mov	r3, #128000
	add	r3, r3, #436
	add	r3, r3, #3
	eor	r4, r4, r3
	rsb	r0, r4, r0
	mov	ip, r0, asr #31
	add	r4, ip, r6
	eor	r3, ip, r5, asr #3
	rsb	r4, r3, r4
	eor	r6, ip, r6, asr #3
	rsb	r6, ip, r6
	add	r6, r6, r5
	add	r0, ip, r0
	mov	r3, #65280
	sub	r3, r3, #83
	eor	ip, ip, r3
	rsb	r0, ip, r0
	mov	ip, r0, asr #31
	add	r5, ip, r4
	eor	r3, ip, r6, asr #4
	rsb	r5, r3, r5
	eor	r4, ip, r4, asr #4
	rsb	r4, ip, r4
	add	r4, r4, r6
	add	r0, ip, r0
	mov	r3, #32512
	add	r3, r3, #213
	eor	ip, ip, r3
	rsb	r0, ip, r0
	mov	ip, r0, asr #31
	add	r6, ip, r5
	eor	r3, ip, r4, asr #5
	rsb	r6, r3, r6
	eor	r5, ip, r5, asr #5
	rsb	r5, ip, r5
	add	r5, r5, r4
	add	r0, ip, r0
	mov	r3, #16320
	add	r3, r3, #58
	eor	ip, ip, r3
	rsb	r0, ip, r0
	mov	ip, r0, asr #31
	add	r4, ip, r6
	eor	r3, ip, r5, asr #6
	rsb	r4, r3, r4
	eor	r6, ip, r6, asr #6
	rsb	r6, ip, r6
	add	r6, r6, r5
	add	r0, ip, r0
	mov	r3, #8128
	add	r3, r3, #63
	eor	ip, ip, r3
	rsb	r0, ip, r0
	mov	ip, r0, asr #31
	add	r5, ip, r4
	eor	r3, ip, r6, asr #7
	rsb	r5, r3, r5
	eor	r4, ip, r4, asr #7
	rsb	r4, ip, r4
	add	r4, r4, r6
	add	r0, ip, r0
	mov	r3, #4080
	add	r3, r3, #15
	eor	ip, ip, r3
	rsb	r0, ip, r0
	mov	ip, r0, asr #31
	add	r7, ip, r5
	eor	r3, ip, r4, asr #8
	rsb	r7, r3, r7
	eor	r5, ip, r5, asr #8
	rsb	r5, ip, r5
	add	r5, r5, r4
	add	r0, ip, r0
	mov	r3, #2032
	add	r3, r3, #15
	eor	ip, ip, r3
	rsb	r0, ip, r0
	mov	ip, r0, asr #31
	add	r8, ip, r7
	eor	r3, ip, r5, asr #9
	rsb	r8, r3, r8
	eor	r7, ip, r7, asr #9
	rsb	r7, ip, r7
	add	r7, r7, r5
	add	r0, ip, r0
	mov	r3, #1020
	add	r3, r3, #3
	eor	ip, ip, r3
	rsb	r0, ip, r0
	mov	ip, r0, asr #31
	add	r6, ip, r8
	eor	r3, ip, r7, asr #10
	rsb	r6, r3, r6
	eor	r8, ip, r8, asr #10
	rsb	r8, ip, r8
	add	r8, r8, r7
	add	r0, ip, r0
	mov	r3, #508
	add	r3, r3, #3
	eor	ip, ip, r3
	rsb	r0, ip, r0
	mov	r3, r0, asr #31
	add	r4, r3, r6
	eor	ip, r3, r8, asr #11
	rsb	r4, ip, r4
	eor	r6, r3, r6, asr #11
	rsb	r6, r3, r6
	add	r6, r6, r8
	add	r0, r3, r0
	eor	r3, r3, #255
	rsb	r0, r3, r0
	mov	r3, r0, asr #31
	add	r5, r3, r4
	eor	ip, r3, r6, asr #12
	rsb	r5, ip, r5
	eor	r4, r3, r4, asr #12
	rsb	r4, r3, r4
	add	r4, r4, r6
	add	r0, r3, r0
	eor	r3, r3, #127
	rsb	r0, r3, r0
	mov	r3, r0, asr #31
	add	r6, r3, r5
	eor	ip, r3, r4, asr #13
	rsb	r6, ip, r6
	eor	r5, r3, r5, asr #13
	rsb	r5, r3, r5
	add	r5, r5, r4
	add	r0, r3, r0
	eor	r3, r3, #63
	rsb	r0, r3, r0
	mov	r3, r0, asr #31
	add	r4, r3, r6
	eor	ip, r3, r5, asr #14
	rsb	r4, ip, r4
	eor	r6, r3, r6, asr #14
	rsb	r6, r3, r6
	add	r6, r6, r5
	add	r0, r3, r0
	eor	r3, r3, #31
	rsb	r0, r3, r0
	mov	r3, r0, asr #31
	add	r5, r3, r4
	eor	ip, r3, r6, asr #15
	rsb	r5, ip, r5
	eor	r4, r3, r4, asr #15
	rsb	r4, r3, r4
	add	r4, r4, r6
	add	r0, r3, r0
	eor	r3, r3, #15
	rsb	r0, r3, r0
	mov	r3, r0, asr #31
	add	r6, r3, r5
	eor	ip, r3, r4, asr #16
	rsb	r6, ip, r6
	eor	r5, r3, r5, asr #16
	rsb	r5, r3, r5
	add	r5, r5, r4
	add	r0, r3, r0
	eor	r3, r3, #7
	rsb	r0, r3, r0
	mov	r3, r0, asr #31
	add	r4, r3, r6
	eor	ip, r3, r5, asr #17
	rsb	r4, ip, r4
	eor	r6, r3, r6, asr #17
	rsb	r6, r3, r6
	add	r6, r6, r5
	add	r0, r3, r0
	eor	r3, r3, #3
	rsb	r0, r3, r0
	mov	r0, r0, asr #31
	add	r3, r0, r4
	eor	ip, r0, r6, asr #18
	rsb	r3, ip, r3
	str	r3, [r1, #0]
	eor	r4, r0, r4, asr #18
	rsb	r4, r0, r4
	add	r4, r4, r6
	str	r4, [r2, #0]
	ldmfd	sp!, {r4, r5, r6, r7, r8}
	bx	lr
	.size	cordic_opt2_rotation, .-cordic_opt2_rotation
	.ident	"GCC: (Sourcery G++ Lite 2008q3-72) 4.3.2"
	.section	.note.GNU-stack,"",%progbits
