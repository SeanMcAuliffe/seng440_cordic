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
	.file	"opt3_cordic.c"
	.text
	.align	2
	.global	cordic_opt3_vectoring
	.type	cordic_opt3_vectoring, %function
cordic_opt3_vectoring:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #28
	str	r2, [fp, #-8]
	str	r3, [fp, #-12]
	str	r0, [fp, #-28]
	str	r1, [fp, #-24]
	mov	r2, #0
	ldr	r0, [fp, #-24]
	mov	r0, r0, asr #31
	str	r0, [fp, #-16]
	ldr	r1, [fp, #-24]
	ldr	r0, [fp, #-16]
	eor	r3, r1, r0
	ldr	r1, [fp, #-16]
	rsb	r3, r1, r3
	ldr	r0, [fp, #-28]
	add	r3, r3, r0
	str	r3, [fp, #-20]
	ldr	r1, [fp, #-28]
	ldr	r0, [fp, #-16]
	eor	r3, r1, r0
	ldr	r1, [fp, #-16]
	rsb	r3, r3, r1
	ldr	r0, [fp, #-24]
	add	r0, r0, r3
	str	r0, [fp, #-24]
	mov	r3, #409600
	add	r3, r3, #2160
	add	r3, r3, #14
	ldr	r1, [fp, #-16]
	eor	r3, r1, r3
	ldr	r0, [fp, #-16]
	rsb	r3, r0, r3
	add	r2, r2, r3
	ldr	r1, [fp, #-20]
	str	r1, [fp, #-28]
	ldr	r3, [fp, #-24]
	mov	r3, r3, asr #31
	str	r3, [fp, #-16]
	ldr	r0, [fp, #-24]
	mov	r3, r0, asr #1
	ldr	r1, [fp, #-16]
	eor	r3, r3, r1
	ldr	r0, [fp, #-16]
	rsb	r3, r0, r3
	ldr	r1, [fp, #-28]
	add	r3, r3, r1
	str	r3, [fp, #-20]
	ldr	r0, [fp, #-28]
	mov	r3, r0, asr #1
	ldr	r1, [fp, #-16]
	eor	r3, r3, r1
	ldr	r0, [fp, #-16]
	rsb	r3, r3, r0
	ldr	r1, [fp, #-24]
	add	r1, r1, r3
	str	r1, [fp, #-24]
	mov	r3, #242688
	add	r3, r3, #396
	ldr	r0, [fp, #-16]
	eor	r3, r0, r3
	ldr	r1, [fp, #-16]
	rsb	r3, r1, r3
	add	r2, r2, r3
	ldr	r3, [fp, #-20]
	str	r3, [fp, #-28]
	ldr	r0, [fp, #-24]
	mov	r0, r0, asr #31
	str	r0, [fp, #-16]
	ldr	r1, [fp, #-24]
	mov	r3, r1, asr #2
	ldr	r0, [fp, #-16]
	eor	r3, r3, r0
	ldr	r1, [fp, #-16]
	rsb	r3, r1, r3
	ldr	r0, [fp, #-28]
	add	r3, r3, r0
	str	r3, [fp, #-20]
	ldr	r1, [fp, #-28]
	mov	r3, r1, asr #2
	ldr	r0, [fp, #-16]
	eor	r3, r3, r0
	ldr	r1, [fp, #-16]
	rsb	r3, r3, r1
	ldr	r0, [fp, #-24]
	add	r0, r0, r3
	str	r0, [fp, #-24]
	mov	r3, #128000
	add	r3, r3, #436
	add	r3, r3, #3
	ldr	r1, [fp, #-16]
	eor	r3, r1, r3
	ldr	r0, [fp, #-16]
	rsb	r3, r0, r3
	add	r2, r2, r3
	ldr	r1, [fp, #-20]
	str	r1, [fp, #-28]
	ldr	r3, [fp, #-24]
	mov	r3, r3, asr #31
	str	r3, [fp, #-16]
	ldr	r0, [fp, #-24]
	mov	r3, r0, asr #3
	ldr	r1, [fp, #-16]
	eor	r3, r3, r1
	ldr	r0, [fp, #-16]
	rsb	r3, r0, r3
	ldr	r1, [fp, #-28]
	add	r3, r3, r1
	str	r3, [fp, #-20]
	ldr	r0, [fp, #-28]
	mov	r3, r0, asr #3
	ldr	r1, [fp, #-16]
	eor	r3, r3, r1
	ldr	r0, [fp, #-16]
	rsb	r3, r3, r0
	ldr	r1, [fp, #-24]
	add	r1, r1, r3
	str	r1, [fp, #-24]
	mov	r3, #65280
	sub	r3, r3, #83
	ldr	r0, [fp, #-16]
	eor	r3, r0, r3
	ldr	r1, [fp, #-16]
	rsb	r3, r1, r3
	add	r2, r2, r3
	ldr	r3, [fp, #-20]
	str	r3, [fp, #-28]
	ldr	r0, [fp, #-24]
	mov	r0, r0, asr #31
	str	r0, [fp, #-16]
	ldr	r1, [fp, #-24]
	mov	r3, r1, asr #4
	ldr	r0, [fp, #-16]
	eor	r3, r3, r0
	ldr	r1, [fp, #-16]
	rsb	r3, r1, r3
	ldr	r0, [fp, #-28]
	add	r3, r3, r0
	str	r3, [fp, #-20]
	ldr	r1, [fp, #-28]
	mov	r3, r1, asr #4
	ldr	r0, [fp, #-16]
	eor	r3, r3, r0
	ldr	r1, [fp, #-16]
	rsb	r3, r3, r1
	ldr	r0, [fp, #-24]
	add	r0, r0, r3
	str	r0, [fp, #-24]
	mov	r3, #32512
	add	r3, r3, #213
	ldr	r1, [fp, #-16]
	eor	r3, r1, r3
	ldr	r0, [fp, #-16]
	rsb	r3, r0, r3
	add	r2, r2, r3
	ldr	r1, [fp, #-20]
	str	r1, [fp, #-28]
	ldr	r3, [fp, #-24]
	mov	r3, r3, asr #31
	str	r3, [fp, #-16]
	ldr	r0, [fp, #-24]
	mov	r3, r0, asr #5
	ldr	r1, [fp, #-16]
	eor	r3, r3, r1
	ldr	r0, [fp, #-16]
	rsb	r3, r0, r3
	ldr	r1, [fp, #-28]
	add	r3, r3, r1
	str	r3, [fp, #-20]
	ldr	r0, [fp, #-28]
	mov	r3, r0, asr #5
	ldr	r1, [fp, #-16]
	eor	r3, r3, r1
	ldr	r0, [fp, #-16]
	rsb	r3, r3, r0
	ldr	r1, [fp, #-24]
	add	r1, r1, r3
	str	r1, [fp, #-24]
	mov	r3, #16320
	add	r3, r3, #58
	ldr	r0, [fp, #-16]
	eor	r3, r0, r3
	ldr	r1, [fp, #-16]
	rsb	r3, r1, r3
	add	r2, r2, r3
	ldr	r3, [fp, #-20]
	str	r3, [fp, #-28]
	ldr	r0, [fp, #-24]
	mov	r0, r0, asr #31
	str	r0, [fp, #-16]
	ldr	r1, [fp, #-24]
	mov	r3, r1, asr #6
	ldr	r0, [fp, #-16]
	eor	r3, r3, r0
	ldr	r1, [fp, #-16]
	rsb	r3, r1, r3
	ldr	r0, [fp, #-28]
	add	r3, r3, r0
	str	r3, [fp, #-20]
	ldr	r1, [fp, #-28]
	mov	r3, r1, asr #6
	ldr	r0, [fp, #-16]
	eor	r3, r3, r0
	ldr	r1, [fp, #-16]
	rsb	r3, r3, r1
	ldr	r0, [fp, #-24]
	add	r0, r0, r3
	str	r0, [fp, #-24]
	mov	r3, #8128
	add	r3, r3, #63
	ldr	r1, [fp, #-16]
	eor	r3, r1, r3
	ldr	r0, [fp, #-16]
	rsb	r3, r0, r3
	add	r2, r2, r3
	ldr	r1, [fp, #-20]
	str	r1, [fp, #-28]
	ldr	r3, [fp, #-24]
	mov	r3, r3, asr #31
	str	r3, [fp, #-16]
	ldr	r0, [fp, #-24]
	mov	r3, r0, asr #7
	ldr	r1, [fp, #-16]
	eor	r3, r3, r1
	ldr	r0, [fp, #-16]
	rsb	r3, r0, r3
	ldr	r1, [fp, #-28]
	add	r3, r3, r1
	str	r3, [fp, #-20]
	ldr	r0, [fp, #-28]
	mov	r3, r0, asr #7
	ldr	r1, [fp, #-16]
	eor	r3, r3, r1
	ldr	r0, [fp, #-16]
	rsb	r3, r3, r0
	ldr	r1, [fp, #-24]
	add	r1, r1, r3
	str	r1, [fp, #-24]
	mov	r3, #4080
	add	r3, r3, #15
	ldr	r0, [fp, #-16]
	eor	r3, r0, r3
	ldr	r1, [fp, #-16]
	rsb	r3, r1, r3
	add	r2, r2, r3
	ldr	r3, [fp, #-20]
	str	r3, [fp, #-28]
	ldr	r0, [fp, #-24]
	mov	r0, r0, asr #31
	str	r0, [fp, #-16]
	ldr	r1, [fp, #-24]
	mov	r3, r1, asr #8
	ldr	r0, [fp, #-16]
	eor	r3, r3, r0
	ldr	r1, [fp, #-16]
	rsb	r3, r1, r3
	ldr	r0, [fp, #-28]
	add	r3, r3, r0
	str	r3, [fp, #-20]
	ldr	r1, [fp, #-28]
	mov	r3, r1, asr #8
	ldr	r0, [fp, #-16]
	eor	r3, r3, r0
	ldr	r1, [fp, #-16]
	rsb	r3, r3, r1
	ldr	r0, [fp, #-24]
	add	r0, r0, r3
	str	r0, [fp, #-24]
	mov	r3, #2032
	add	r3, r3, #15
	ldr	r1, [fp, #-16]
	eor	r3, r1, r3
	ldr	r0, [fp, #-16]
	rsb	r3, r0, r3
	add	r2, r2, r3
	ldr	r1, [fp, #-20]
	str	r1, [fp, #-28]
	ldr	r3, [fp, #-24]
	mov	r3, r3, asr #31
	str	r3, [fp, #-16]
	ldr	r0, [fp, #-24]
	mov	r3, r0, asr #9
	ldr	r1, [fp, #-16]
	eor	r3, r3, r1
	ldr	r0, [fp, #-16]
	rsb	r3, r0, r3
	ldr	r1, [fp, #-28]
	add	r3, r3, r1
	str	r3, [fp, #-20]
	ldr	r0, [fp, #-28]
	mov	r3, r0, asr #9
	ldr	r1, [fp, #-16]
	eor	r3, r3, r1
	ldr	r0, [fp, #-16]
	rsb	r3, r3, r0
	ldr	r1, [fp, #-24]
	add	r1, r1, r3
	str	r1, [fp, #-24]
	mov	r3, #1020
	add	r3, r3, #3
	ldr	r0, [fp, #-16]
	eor	r3, r0, r3
	ldr	r1, [fp, #-16]
	rsb	r3, r1, r3
	add	r2, r2, r3
	ldr	r3, [fp, #-20]
	str	r3, [fp, #-28]
	ldr	r0, [fp, #-24]
	mov	r0, r0, asr #31
	str	r0, [fp, #-16]
	ldr	r1, [fp, #-24]
	mov	r3, r1, asr #10
	ldr	r0, [fp, #-16]
	eor	r3, r3, r0
	ldr	r1, [fp, #-16]
	rsb	r3, r1, r3
	ldr	r0, [fp, #-28]
	add	r3, r3, r0
	str	r3, [fp, #-20]
	ldr	r1, [fp, #-28]
	mov	r3, r1, asr #10
	ldr	r0, [fp, #-16]
	eor	r3, r3, r0
	ldr	r1, [fp, #-16]
	rsb	r3, r3, r1
	ldr	r0, [fp, #-24]
	add	r0, r0, r3
	str	r0, [fp, #-24]
	mov	r3, #508
	add	r3, r3, #3
	ldr	r1, [fp, #-16]
	eor	r3, r1, r3
	ldr	r0, [fp, #-16]
	rsb	r3, r0, r3
	add	r2, r2, r3
	ldr	r1, [fp, #-20]
	str	r1, [fp, #-28]
	ldr	r3, [fp, #-24]
	mov	r3, r3, asr #31
	str	r3, [fp, #-16]
	ldr	r0, [fp, #-24]
	mov	r3, r0, asr #11
	ldr	r1, [fp, #-16]
	eor	r3, r3, r1
	ldr	r0, [fp, #-16]
	rsb	r3, r0, r3
	ldr	r1, [fp, #-28]
	add	r3, r3, r1
	str	r3, [fp, #-20]
	ldr	r0, [fp, #-28]
	mov	r3, r0, asr #11
	ldr	r1, [fp, #-16]
	eor	r3, r3, r1
	ldr	r0, [fp, #-16]
	rsb	r3, r3, r0
	ldr	r1, [fp, #-24]
	add	r1, r1, r3
	str	r1, [fp, #-24]
	ldr	r0, [fp, #-16]
	eor	r3, r0, #255
	ldr	r1, [fp, #-16]
	rsb	r3, r1, r3
	add	r2, r2, r3
	ldr	r3, [fp, #-20]
	str	r3, [fp, #-28]
	ldr	r0, [fp, #-24]
	mov	r0, r0, asr #31
	str	r0, [fp, #-16]
	ldr	r1, [fp, #-24]
	mov	r3, r1, asr #12
	ldr	r0, [fp, #-16]
	eor	r3, r3, r0
	ldr	r1, [fp, #-16]
	rsb	r3, r1, r3
	ldr	r0, [fp, #-28]
	add	r3, r3, r0
	str	r3, [fp, #-20]
	ldr	r1, [fp, #-28]
	mov	r3, r1, asr #12
	ldr	r0, [fp, #-16]
	eor	r3, r3, r0
	ldr	r1, [fp, #-16]
	rsb	r3, r3, r1
	ldr	r0, [fp, #-24]
	add	r0, r0, r3
	str	r0, [fp, #-24]
	ldr	r1, [fp, #-16]
	eor	r3, r1, #127
	ldr	r0, [fp, #-16]
	rsb	r3, r0, r3
	add	r2, r2, r3
	ldr	r1, [fp, #-20]
	str	r1, [fp, #-28]
	ldr	r3, [fp, #-24]
	mov	r3, r3, asr #31
	str	r3, [fp, #-16]
	ldr	r0, [fp, #-24]
	mov	r3, r0, asr #13
	ldr	r1, [fp, #-16]
	eor	r3, r3, r1
	ldr	r0, [fp, #-16]
	rsb	r3, r0, r3
	ldr	r1, [fp, #-28]
	add	r3, r3, r1
	str	r3, [fp, #-20]
	ldr	r0, [fp, #-28]
	mov	r3, r0, asr #13
	ldr	r1, [fp, #-16]
	eor	r3, r3, r1
	ldr	r0, [fp, #-16]
	rsb	r3, r3, r0
	ldr	r1, [fp, #-24]
	add	r1, r1, r3
	str	r1, [fp, #-24]
	ldr	r0, [fp, #-16]
	eor	r3, r0, #63
	ldr	r1, [fp, #-16]
	rsb	r3, r1, r3
	add	r2, r2, r3
	ldr	r3, [fp, #-20]
	str	r3, [fp, #-28]
	ldr	r0, [fp, #-24]
	mov	r0, r0, asr #31
	str	r0, [fp, #-16]
	ldr	r1, [fp, #-24]
	mov	r3, r1, asr #14
	ldr	r0, [fp, #-16]
	eor	r3, r3, r0
	ldr	r1, [fp, #-16]
	rsb	r3, r1, r3
	ldr	r0, [fp, #-28]
	add	r3, r3, r0
	str	r3, [fp, #-20]
	ldr	r1, [fp, #-28]
	mov	r3, r1, asr #14
	ldr	r0, [fp, #-16]
	eor	r3, r3, r0
	ldr	r1, [fp, #-16]
	rsb	r3, r3, r1
	ldr	r0, [fp, #-24]
	add	r0, r0, r3
	str	r0, [fp, #-24]
	ldr	r1, [fp, #-16]
	eor	r3, r1, #31
	ldr	r0, [fp, #-16]
	rsb	r3, r0, r3
	add	r2, r2, r3
	ldr	r1, [fp, #-20]
	str	r1, [fp, #-28]
	ldr	r3, [fp, #-24]
	mov	r3, r3, asr #31
	str	r3, [fp, #-16]
	ldr	r0, [fp, #-24]
	mov	r3, r0, asr #15
	ldr	r1, [fp, #-16]
	eor	r3, r3, r1
	ldr	r0, [fp, #-16]
	rsb	r3, r0, r3
	ldr	r1, [fp, #-28]
	add	r3, r3, r1
	str	r3, [fp, #-20]
	ldr	r0, [fp, #-28]
	mov	r3, r0, asr #15
	ldr	r1, [fp, #-16]
	eor	r3, r3, r1
	ldr	r0, [fp, #-16]
	rsb	r3, r3, r0
	ldr	r1, [fp, #-24]
	add	r1, r1, r3
	str	r1, [fp, #-24]
	ldr	r0, [fp, #-16]
	eor	r3, r0, #15
	ldr	r1, [fp, #-16]
	rsb	r3, r1, r3
	add	r2, r2, r3
	ldr	r3, [fp, #-20]
	str	r3, [fp, #-28]
	ldr	r0, [fp, #-24]
	mov	r0, r0, asr #31
	str	r0, [fp, #-16]
	ldr	r1, [fp, #-24]
	mov	r3, r1, asr #16
	ldr	r0, [fp, #-16]
	eor	r3, r3, r0
	ldr	r1, [fp, #-16]
	rsb	r3, r1, r3
	ldr	r0, [fp, #-28]
	add	r3, r3, r0
	str	r3, [fp, #-20]
	ldr	r1, [fp, #-28]
	mov	r3, r1, asr #16
	ldr	r0, [fp, #-16]
	eor	r3, r3, r0
	ldr	r1, [fp, #-16]
	rsb	r3, r3, r1
	ldr	r0, [fp, #-24]
	add	r0, r0, r3
	str	r0, [fp, #-24]
	ldr	r1, [fp, #-16]
	eor	r3, r1, #7
	ldr	r0, [fp, #-16]
	rsb	r3, r0, r3
	add	r2, r2, r3
	ldr	r1, [fp, #-20]
	str	r1, [fp, #-28]
	ldr	r3, [fp, #-24]
	mov	r3, r3, asr #31
	str	r3, [fp, #-16]
	ldr	r0, [fp, #-24]
	mov	r3, r0, asr #17
	ldr	r1, [fp, #-16]
	eor	r3, r3, r1
	ldr	r0, [fp, #-16]
	rsb	r3, r0, r3
	ldr	r1, [fp, #-28]
	add	r3, r3, r1
	str	r3, [fp, #-20]
	ldr	r0, [fp, #-28]
	mov	r3, r0, asr #17
	ldr	r1, [fp, #-16]
	eor	r3, r3, r1
	ldr	r0, [fp, #-16]
	rsb	r3, r3, r0
	ldr	r1, [fp, #-24]
	add	r1, r1, r3
	str	r1, [fp, #-24]
	ldr	r0, [fp, #-16]
	eor	r3, r0, #3
	ldr	r1, [fp, #-16]
	rsb	r3, r1, r3
	add	r2, r2, r3
	ldr	r3, [fp, #-20]
	str	r3, [fp, #-28]
	ldr	r0, [fp, #-24]
	mov	r0, r0, asr #31
	str	r0, [fp, #-16]
	ldr	r1, [fp, #-24]
	mov	r3, r1, asr #18
	ldr	r0, [fp, #-16]
	eor	r3, r3, r0
	ldr	r1, [fp, #-16]
	rsb	r3, r1, r3
	ldr	r0, [fp, #-28]
	add	r3, r3, r0
	str	r3, [fp, #-20]
	ldr	r1, [fp, #-28]
	mov	r3, r1, asr #18
	ldr	r0, [fp, #-16]
	eor	r3, r3, r0
	ldr	r1, [fp, #-16]
	rsb	r3, r3, r1
	ldr	r0, [fp, #-24]
	add	r0, r0, r3
	ldr	r1, [fp, #-16]
	eor	r3, r1, #1
	ldr	r0, [fp, #-16]
	rsb	r3, r0, r3
	add	r2, r2, r3
	ldr	r1, [fp, #-20]
	str	r1, [fp, #-28]
	ldr	r3, [fp, #-8]
	ldr	r0, [fp, #-28]
	str	r0, [r3, #0]
	ldr	r3, [fp, #-12]
	str	r2, [r3, #0]
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
	.size	cordic_opt3_vectoring, .-cordic_opt3_vectoring
	.align	2
	.global	cordic_opt3_rotation
	.type	cordic_opt3_rotation, %function
cordic_opt3_rotation:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #28
	mov	r3, r0
	str	r2, [fp, #-8]
	mov	r0, #315392
	str	r0, [fp, #-24]
	ldr	r2, [fp, #-24]
	add	r2, r2, #2976
	str	r2, [fp, #-24]
	ldr	ip, [fp, #-24]
	add	ip, ip, #7
	str	ip, [fp, #-24]
	mov	r2, #0
	str	r3, [fp, #-20]
	ldr	r0, [fp, #-20]
	mov	r0, r0, asr #31
	str	r0, [fp, #-12]
	ldr	ip, [fp, #-12]
	eor	r3, r2, ip
	ldr	r0, [fp, #-12]
	rsb	r3, r3, r0
	ldr	ip, [fp, #-24]
	add	r3, r3, ip
	str	r3, [fp, #-16]
	ldr	r0, [fp, #-24]
	ldr	ip, [fp, #-12]
	eor	r3, r0, ip
	ldr	r0, [fp, #-12]
	rsb	r3, r0, r3
	add	r2, r2, r3
	mov	r3, #409600
	add	r3, r3, #2160
	add	r3, r3, #14
	ldr	ip, [fp, #-12]
	eor	r3, ip, r3
	ldr	r0, [fp, #-12]
	rsb	r3, r3, r0
	ldr	ip, [fp, #-20]
	add	ip, ip, r3
	str	ip, [fp, #-20]
	ldr	r0, [fp, #-16]
	str	r0, [fp, #-24]
	ldr	r3, [fp, #-20]
	mov	r3, r3, asr #31
	str	r3, [fp, #-12]
	mov	r3, r2, asr #1
	ldr	ip, [fp, #-12]
	eor	r3, r3, ip
	ldr	r0, [fp, #-12]
	rsb	r3, r3, r0
	ldr	ip, [fp, #-24]
	add	r3, r3, ip
	str	r3, [fp, #-16]
	ldr	r0, [fp, #-24]
	mov	r3, r0, asr #1
	ldr	ip, [fp, #-12]
	eor	r3, r3, ip
	ldr	r0, [fp, #-12]
	rsb	r3, r0, r3
	add	r2, r2, r3
	mov	r3, #242688
	add	r3, r3, #396
	ldr	ip, [fp, #-12]
	eor	r3, ip, r3
	ldr	r0, [fp, #-12]
	rsb	r3, r3, r0
	ldr	ip, [fp, #-20]
	add	ip, ip, r3
	str	ip, [fp, #-20]
	ldr	r0, [fp, #-16]
	str	r0, [fp, #-24]
	ldr	r3, [fp, #-20]
	mov	r3, r3, asr #31
	str	r3, [fp, #-12]
	mov	r3, r2, asr #2
	ldr	ip, [fp, #-12]
	eor	r3, r3, ip
	ldr	r0, [fp, #-12]
	rsb	r3, r3, r0
	ldr	ip, [fp, #-24]
	add	r3, r3, ip
	str	r3, [fp, #-16]
	ldr	r0, [fp, #-24]
	mov	r3, r0, asr #2
	ldr	ip, [fp, #-12]
	eor	r3, r3, ip
	ldr	r0, [fp, #-12]
	rsb	r3, r0, r3
	add	r2, r2, r3
	mov	r3, #128000
	add	r3, r3, #436
	add	r3, r3, #3
	ldr	ip, [fp, #-12]
	eor	r3, ip, r3
	ldr	r0, [fp, #-12]
	rsb	r3, r3, r0
	ldr	ip, [fp, #-20]
	add	ip, ip, r3
	str	ip, [fp, #-20]
	ldr	r0, [fp, #-16]
	str	r0, [fp, #-24]
	ldr	r3, [fp, #-20]
	mov	r3, r3, asr #31
	str	r3, [fp, #-12]
	mov	r3, r2, asr #3
	ldr	ip, [fp, #-12]
	eor	r3, r3, ip
	ldr	r0, [fp, #-12]
	rsb	r3, r3, r0
	ldr	ip, [fp, #-24]
	add	r3, r3, ip
	str	r3, [fp, #-16]
	ldr	r0, [fp, #-24]
	mov	r3, r0, asr #3
	ldr	ip, [fp, #-12]
	eor	r3, r3, ip
	ldr	r0, [fp, #-12]
	rsb	r3, r0, r3
	add	r2, r2, r3
	mov	r3, #65280
	sub	r3, r3, #83
	ldr	ip, [fp, #-12]
	eor	r3, ip, r3
	ldr	r0, [fp, #-12]
	rsb	r3, r3, r0
	ldr	ip, [fp, #-20]
	add	ip, ip, r3
	str	ip, [fp, #-20]
	ldr	r0, [fp, #-16]
	str	r0, [fp, #-24]
	ldr	r3, [fp, #-20]
	mov	r3, r3, asr #31
	str	r3, [fp, #-12]
	mov	r3, r2, asr #4
	ldr	ip, [fp, #-12]
	eor	r3, r3, ip
	ldr	r0, [fp, #-12]
	rsb	r3, r3, r0
	ldr	ip, [fp, #-24]
	add	r3, r3, ip
	str	r3, [fp, #-16]
	ldr	r0, [fp, #-24]
	mov	r3, r0, asr #4
	ldr	ip, [fp, #-12]
	eor	r3, r3, ip
	ldr	r0, [fp, #-12]
	rsb	r3, r0, r3
	add	r2, r2, r3
	mov	r3, #32512
	add	r3, r3, #213
	ldr	ip, [fp, #-12]
	eor	r3, ip, r3
	ldr	r0, [fp, #-12]
	rsb	r3, r3, r0
	ldr	ip, [fp, #-20]
	add	ip, ip, r3
	str	ip, [fp, #-20]
	ldr	r0, [fp, #-16]
	str	r0, [fp, #-24]
	ldr	r3, [fp, #-20]
	mov	r3, r3, asr #31
	str	r3, [fp, #-12]
	mov	r3, r2, asr #5
	ldr	ip, [fp, #-12]
	eor	r3, r3, ip
	ldr	r0, [fp, #-12]
	rsb	r3, r3, r0
	ldr	ip, [fp, #-24]
	add	r3, r3, ip
	str	r3, [fp, #-16]
	ldr	r0, [fp, #-24]
	mov	r3, r0, asr #5
	ldr	ip, [fp, #-12]
	eor	r3, r3, ip
	ldr	r0, [fp, #-12]
	rsb	r3, r0, r3
	add	r2, r2, r3
	mov	r3, #16320
	add	r3, r3, #58
	ldr	ip, [fp, #-12]
	eor	r3, ip, r3
	ldr	r0, [fp, #-12]
	rsb	r3, r3, r0
	ldr	ip, [fp, #-20]
	add	ip, ip, r3
	str	ip, [fp, #-20]
	ldr	r0, [fp, #-16]
	str	r0, [fp, #-24]
	ldr	r3, [fp, #-20]
	mov	r3, r3, asr #31
	str	r3, [fp, #-12]
	mov	r3, r2, asr #6
	ldr	ip, [fp, #-12]
	eor	r3, r3, ip
	ldr	r0, [fp, #-12]
	rsb	r3, r3, r0
	ldr	ip, [fp, #-24]
	add	r3, r3, ip
	str	r3, [fp, #-16]
	ldr	r0, [fp, #-24]
	mov	r3, r0, asr #6
	ldr	ip, [fp, #-12]
	eor	r3, r3, ip
	ldr	r0, [fp, #-12]
	rsb	r3, r0, r3
	add	r2, r2, r3
	mov	r3, #8128
	add	r3, r3, #63
	ldr	ip, [fp, #-12]
	eor	r3, ip, r3
	ldr	r0, [fp, #-12]
	rsb	r3, r3, r0
	ldr	ip, [fp, #-20]
	add	ip, ip, r3
	str	ip, [fp, #-20]
	ldr	r0, [fp, #-16]
	str	r0, [fp, #-24]
	ldr	r3, [fp, #-20]
	mov	r3, r3, asr #31
	str	r3, [fp, #-12]
	mov	r3, r2, asr #7
	ldr	ip, [fp, #-12]
	eor	r3, r3, ip
	ldr	r0, [fp, #-12]
	rsb	r3, r3, r0
	ldr	ip, [fp, #-24]
	add	r3, r3, ip
	str	r3, [fp, #-16]
	ldr	r0, [fp, #-24]
	mov	r3, r0, asr #7
	ldr	ip, [fp, #-12]
	eor	r3, r3, ip
	ldr	r0, [fp, #-12]
	rsb	r3, r0, r3
	add	r2, r2, r3
	mov	r3, #4080
	add	r3, r3, #15
	ldr	ip, [fp, #-12]
	eor	r3, ip, r3
	ldr	r0, [fp, #-12]
	rsb	r3, r3, r0
	ldr	ip, [fp, #-20]
	add	ip, ip, r3
	str	ip, [fp, #-20]
	ldr	r0, [fp, #-16]
	str	r0, [fp, #-24]
	ldr	r3, [fp, #-20]
	mov	r3, r3, asr #31
	str	r3, [fp, #-12]
	mov	r3, r2, asr #8
	ldr	ip, [fp, #-12]
	eor	r3, r3, ip
	ldr	r0, [fp, #-12]
	rsb	r3, r3, r0
	ldr	ip, [fp, #-24]
	add	r3, r3, ip
	str	r3, [fp, #-16]
	ldr	r0, [fp, #-24]
	mov	r3, r0, asr #8
	ldr	ip, [fp, #-12]
	eor	r3, r3, ip
	ldr	r0, [fp, #-12]
	rsb	r3, r0, r3
	add	r2, r2, r3
	mov	r3, #2032
	add	r3, r3, #15
	ldr	ip, [fp, #-12]
	eor	r3, ip, r3
	ldr	r0, [fp, #-12]
	rsb	r3, r3, r0
	ldr	ip, [fp, #-20]
	add	ip, ip, r3
	str	ip, [fp, #-20]
	ldr	r0, [fp, #-16]
	str	r0, [fp, #-24]
	ldr	r3, [fp, #-20]
	mov	r3, r3, asr #31
	str	r3, [fp, #-12]
	mov	r3, r2, asr #9
	ldr	ip, [fp, #-12]
	eor	r3, r3, ip
	ldr	r0, [fp, #-12]
	rsb	r3, r3, r0
	ldr	ip, [fp, #-24]
	add	r3, r3, ip
	str	r3, [fp, #-16]
	ldr	r0, [fp, #-24]
	mov	r3, r0, asr #9
	ldr	ip, [fp, #-12]
	eor	r3, r3, ip
	ldr	r0, [fp, #-12]
	rsb	r3, r0, r3
	add	r2, r2, r3
	mov	r3, #1020
	add	r3, r3, #3
	ldr	ip, [fp, #-12]
	eor	r3, ip, r3
	ldr	r0, [fp, #-12]
	rsb	r3, r3, r0
	ldr	ip, [fp, #-20]
	add	ip, ip, r3
	str	ip, [fp, #-20]
	ldr	r0, [fp, #-16]
	str	r0, [fp, #-24]
	ldr	r3, [fp, #-20]
	mov	r3, r3, asr #31
	str	r3, [fp, #-12]
	mov	r3, r2, asr #10
	ldr	ip, [fp, #-12]
	eor	r3, r3, ip
	ldr	r0, [fp, #-12]
	rsb	r3, r3, r0
	ldr	ip, [fp, #-24]
	add	r3, r3, ip
	str	r3, [fp, #-16]
	ldr	r0, [fp, #-24]
	mov	r3, r0, asr #10
	ldr	ip, [fp, #-12]
	eor	r3, r3, ip
	ldr	r0, [fp, #-12]
	rsb	r3, r0, r3
	add	r2, r2, r3
	mov	r3, #508
	add	r3, r3, #3
	ldr	ip, [fp, #-12]
	eor	r3, ip, r3
	ldr	r0, [fp, #-12]
	rsb	r3, r3, r0
	ldr	ip, [fp, #-20]
	add	ip, ip, r3
	str	ip, [fp, #-20]
	ldr	r0, [fp, #-16]
	str	r0, [fp, #-24]
	ldr	r3, [fp, #-20]
	mov	r3, r3, asr #31
	str	r3, [fp, #-12]
	mov	r3, r2, asr #11
	ldr	ip, [fp, #-12]
	eor	r3, r3, ip
	ldr	r0, [fp, #-12]
	rsb	r3, r3, r0
	ldr	ip, [fp, #-24]
	add	r3, r3, ip
	str	r3, [fp, #-16]
	ldr	r0, [fp, #-24]
	mov	r3, r0, asr #11
	ldr	ip, [fp, #-12]
	eor	r3, r3, ip
	ldr	r0, [fp, #-12]
	rsb	r3, r0, r3
	add	r2, r2, r3
	ldr	ip, [fp, #-12]
	eor	r3, ip, #255
	ldr	r0, [fp, #-12]
	rsb	r3, r3, r0
	ldr	ip, [fp, #-20]
	add	ip, ip, r3
	str	ip, [fp, #-20]
	ldr	r0, [fp, #-16]
	str	r0, [fp, #-24]
	ldr	r3, [fp, #-20]
	mov	r3, r3, asr #31
	str	r3, [fp, #-12]
	mov	r3, r2, asr #12
	ldr	ip, [fp, #-12]
	eor	r3, r3, ip
	ldr	r0, [fp, #-12]
	rsb	r3, r3, r0
	ldr	ip, [fp, #-24]
	add	r3, r3, ip
	str	r3, [fp, #-16]
	ldr	r0, [fp, #-24]
	mov	r3, r0, asr #12
	ldr	ip, [fp, #-12]
	eor	r3, r3, ip
	ldr	r0, [fp, #-12]
	rsb	r3, r0, r3
	add	r2, r2, r3
	ldr	ip, [fp, #-12]
	eor	r3, ip, #127
	ldr	r0, [fp, #-12]
	rsb	r3, r3, r0
	ldr	ip, [fp, #-20]
	add	ip, ip, r3
	str	ip, [fp, #-20]
	ldr	r0, [fp, #-16]
	str	r0, [fp, #-24]
	ldr	r3, [fp, #-20]
	mov	r3, r3, asr #31
	str	r3, [fp, #-12]
	mov	r3, r2, asr #13
	ldr	ip, [fp, #-12]
	eor	r3, r3, ip
	ldr	r0, [fp, #-12]
	rsb	r3, r3, r0
	ldr	ip, [fp, #-24]
	add	r3, r3, ip
	str	r3, [fp, #-16]
	ldr	r0, [fp, #-24]
	mov	r3, r0, asr #13
	ldr	ip, [fp, #-12]
	eor	r3, r3, ip
	ldr	r0, [fp, #-12]
	rsb	r3, r0, r3
	add	r2, r2, r3
	ldr	ip, [fp, #-12]
	eor	r3, ip, #63
	ldr	r0, [fp, #-12]
	rsb	r3, r3, r0
	ldr	ip, [fp, #-20]
	add	ip, ip, r3
	str	ip, [fp, #-20]
	ldr	r0, [fp, #-16]
	str	r0, [fp, #-24]
	ldr	r3, [fp, #-20]
	mov	r3, r3, asr #31
	str	r3, [fp, #-12]
	mov	r3, r2, asr #14
	ldr	ip, [fp, #-12]
	eor	r3, r3, ip
	ldr	r0, [fp, #-12]
	rsb	r3, r3, r0
	ldr	ip, [fp, #-24]
	add	r3, r3, ip
	str	r3, [fp, #-16]
	ldr	r0, [fp, #-24]
	mov	r3, r0, asr #14
	ldr	ip, [fp, #-12]
	eor	r3, r3, ip
	ldr	r0, [fp, #-12]
	rsb	r3, r0, r3
	add	r2, r2, r3
	ldr	ip, [fp, #-12]
	eor	r3, ip, #31
	ldr	r0, [fp, #-12]
	rsb	r3, r3, r0
	ldr	ip, [fp, #-20]
	add	ip, ip, r3
	str	ip, [fp, #-20]
	ldr	r0, [fp, #-16]
	str	r0, [fp, #-24]
	ldr	r3, [fp, #-20]
	mov	r3, r3, asr #31
	str	r3, [fp, #-12]
	mov	r3, r2, asr #15
	ldr	ip, [fp, #-12]
	eor	r3, r3, ip
	ldr	r0, [fp, #-12]
	rsb	r3, r3, r0
	ldr	ip, [fp, #-24]
	add	r3, r3, ip
	str	r3, [fp, #-16]
	ldr	r0, [fp, #-24]
	mov	r3, r0, asr #15
	ldr	ip, [fp, #-12]
	eor	r3, r3, ip
	ldr	r0, [fp, #-12]
	rsb	r3, r0, r3
	add	r2, r2, r3
	ldr	ip, [fp, #-12]
	eor	r3, ip, #15
	ldr	r0, [fp, #-12]
	rsb	r3, r3, r0
	ldr	ip, [fp, #-20]
	add	ip, ip, r3
	str	ip, [fp, #-20]
	ldr	r0, [fp, #-16]
	str	r0, [fp, #-24]
	ldr	r3, [fp, #-20]
	mov	r3, r3, asr #31
	str	r3, [fp, #-12]
	mov	r3, r2, asr #16
	ldr	ip, [fp, #-12]
	eor	r3, r3, ip
	ldr	r0, [fp, #-12]
	rsb	r3, r3, r0
	ldr	ip, [fp, #-24]
	add	r3, r3, ip
	str	r3, [fp, #-16]
	ldr	r0, [fp, #-24]
	mov	r3, r0, asr #16
	ldr	ip, [fp, #-12]
	eor	r3, r3, ip
	ldr	r0, [fp, #-12]
	rsb	r3, r0, r3
	add	r2, r2, r3
	ldr	ip, [fp, #-12]
	eor	r3, ip, #7
	ldr	r0, [fp, #-12]
	rsb	r3, r3, r0
	ldr	ip, [fp, #-20]
	add	ip, ip, r3
	str	ip, [fp, #-20]
	ldr	r0, [fp, #-16]
	str	r0, [fp, #-24]
	ldr	r3, [fp, #-20]
	mov	r3, r3, asr #31
	str	r3, [fp, #-12]
	mov	r3, r2, asr #17
	ldr	ip, [fp, #-12]
	eor	r3, r3, ip
	ldr	r0, [fp, #-12]
	rsb	r3, r3, r0
	ldr	ip, [fp, #-24]
	add	r3, r3, ip
	str	r3, [fp, #-16]
	ldr	r0, [fp, #-24]
	mov	r3, r0, asr #17
	ldr	ip, [fp, #-12]
	eor	r3, r3, ip
	ldr	r0, [fp, #-12]
	rsb	r3, r0, r3
	add	r2, r2, r3
	ldr	ip, [fp, #-12]
	eor	r3, ip, #3
	ldr	r0, [fp, #-12]
	rsb	r3, r3, r0
	ldr	ip, [fp, #-20]
	add	ip, ip, r3
	str	ip, [fp, #-20]
	ldr	r0, [fp, #-16]
	str	r0, [fp, #-24]
	ldr	r3, [fp, #-20]
	mov	r3, r3, asr #31
	str	r3, [fp, #-12]
	mov	r3, r2, asr #18
	ldr	ip, [fp, #-12]
	eor	r3, r3, ip
	ldr	r0, [fp, #-12]
	rsb	r3, r3, r0
	ldr	ip, [fp, #-24]
	add	r3, r3, ip
	str	r3, [fp, #-16]
	ldr	r0, [fp, #-24]
	mov	r3, r0, asr #18
	ldr	ip, [fp, #-12]
	eor	r3, r3, ip
	ldr	r0, [fp, #-12]
	rsb	r3, r0, r3
	add	r2, r2, r3
	ldr	ip, [fp, #-12]
	eor	r3, ip, #1
	ldr	r0, [fp, #-12]
	rsb	r3, r3, r0
	ldr	ip, [fp, #-20]
	add	ip, ip, r3
	ldr	r0, [fp, #-16]
	str	r0, [fp, #-24]
	ldr	r3, [fp, #-24]
	str	r3, [r1, #0]
	ldr	r3, [fp, #-8]
	str	r2, [r3, #0]
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
	.size	cordic_opt3_rotation, .-cordic_opt3_rotation
	.ident	"GCC: (Sourcery G++ Lite 2008q3-72) 4.3.2"
	.section	.note.GNU-stack,"",%progbits
