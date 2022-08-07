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
	.file	"opt3b_cordic.c"
	.text
	.align	2
	.global	cordic_opt3b_vectoring
	.type	cordic_opt3b_vectoring, %function
cordic_opt3b_vectoring:
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
	str	r2, [fp, #-20]
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	blt	.L2
	ldr	r2, [fp, #-28]
	ldr	r3, [fp, #-24]
	add	r2, r2, r3
	str	r2, [fp, #-16]
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #-28]
	rsb	r2, r3, r2
	str	r2, [fp, #-24]
	ldr	r2, [fp, #-20]
	add	r3, r2, #409600
	add	r3, r3, #2160
	add	r3, r3, #14
	str	r3, [fp, #-20]
	b	.L3
.L2:
	ldr	r3, [fp, #-28]
	ldr	r2, [fp, #-24]
	rsb	r3, r2, r3
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-24]
	ldr	r2, [fp, #-28]
	add	r3, r3, r2
	str	r3, [fp, #-24]
	ldr	r2, [fp, #-20]
	sub	r3, r2, #409600
	sub	r3, r3, #2160
	sub	r3, r3, #14
	str	r3, [fp, #-20]
.L3:
	ldr	r3, [fp, #-16]
	str	r3, [fp, #-28]
	ldr	r2, [fp, #-24]
	cmp	r2, #0
	blt	.L4
	ldr	r2, [fp, #-24]
	mov	r3, r2, asr #1
	ldr	r2, [fp, #-28]
	add	r3, r3, r2
	str	r3, [fp, #-16]
	ldr	r2, [fp, #-28]
	mov	r3, r2, asr #1
	ldr	r2, [fp, #-24]
	rsb	r2, r3, r2
	str	r2, [fp, #-24]
	ldr	r2, [fp, #-20]
	add	r3, r2, #242688
	add	r3, r3, #396
	str	r3, [fp, #-20]
	b	.L5
.L4:
	ldr	r2, [fp, #-24]
	mov	r3, r2, asr #1
	ldr	r2, [fp, #-28]
	rsb	r3, r3, r2
	str	r3, [fp, #-16]
	ldr	r2, [fp, #-28]
	mov	r3, r2, asr #1
	ldr	r2, [fp, #-24]
	add	r2, r2, r3
	str	r2, [fp, #-24]
	ldr	r2, [fp, #-20]
	sub	r3, r2, #242688
	sub	r3, r3, #396
	str	r3, [fp, #-20]
.L5:
	ldr	r3, [fp, #-16]
	str	r3, [fp, #-28]
	ldr	r2, [fp, #-24]
	cmp	r2, #0
	blt	.L6
	ldr	r2, [fp, #-24]
	mov	r3, r2, asr #2
	ldr	r2, [fp, #-28]
	add	r3, r3, r2
	str	r3, [fp, #-16]
	ldr	r2, [fp, #-28]
	mov	r3, r2, asr #2
	ldr	r2, [fp, #-24]
	rsb	r2, r3, r2
	str	r2, [fp, #-24]
	ldr	r2, [fp, #-20]
	add	r3, r2, #128000
	add	r3, r3, #436
	add	r3, r3, #3
	str	r3, [fp, #-20]
	b	.L7
.L6:
	ldr	r2, [fp, #-24]
	mov	r3, r2, asr #2
	ldr	r2, [fp, #-28]
	rsb	r3, r3, r2
	str	r3, [fp, #-16]
	ldr	r2, [fp, #-28]
	mov	r3, r2, asr #2
	ldr	r2, [fp, #-24]
	add	r2, r2, r3
	str	r2, [fp, #-24]
	ldr	r2, [fp, #-20]
	sub	r3, r2, #128000
	sub	r3, r3, #436
	sub	r3, r3, #3
	str	r3, [fp, #-20]
.L7:
	ldr	r3, [fp, #-16]
	str	r3, [fp, #-28]
	ldr	r2, [fp, #-24]
	cmp	r2, #0
	blt	.L8
	ldr	r2, [fp, #-24]
	mov	r3, r2, asr #3
	ldr	r2, [fp, #-28]
	add	r3, r3, r2
	str	r3, [fp, #-16]
	ldr	r2, [fp, #-28]
	mov	r3, r2, asr #3
	ldr	r2, [fp, #-24]
	rsb	r2, r3, r2
	str	r2, [fp, #-24]
	ldr	r2, [fp, #-20]
	add	r3, r2, #65024
	add	r3, r3, #173
	str	r3, [fp, #-20]
	b	.L9
.L8:
	ldr	r2, [fp, #-24]
	mov	r3, r2, asr #3
	ldr	r2, [fp, #-28]
	rsb	r3, r3, r2
	str	r3, [fp, #-16]
	ldr	r2, [fp, #-28]
	mov	r3, r2, asr #3
	ldr	r2, [fp, #-24]
	add	r2, r2, r3
	str	r2, [fp, #-24]
	ldr	r2, [fp, #-20]
	sub	r3, r2, #65024
	sub	r3, r3, #173
	str	r3, [fp, #-20]
.L9:
	ldr	r3, [fp, #-16]
	str	r3, [fp, #-28]
	ldr	r2, [fp, #-24]
	cmp	r2, #0
	blt	.L10
	ldr	r2, [fp, #-24]
	mov	r3, r2, asr #4
	ldr	r2, [fp, #-28]
	add	r3, r3, r2
	str	r3, [fp, #-16]
	ldr	r2, [fp, #-28]
	mov	r3, r2, asr #4
	ldr	r2, [fp, #-24]
	rsb	r2, r3, r2
	str	r2, [fp, #-24]
	ldr	r2, [fp, #-20]
	add	r3, r2, #32512
	add	r3, r3, #213
	str	r3, [fp, #-20]
	b	.L11
.L10:
	ldr	r2, [fp, #-24]
	mov	r3, r2, asr #4
	ldr	r2, [fp, #-28]
	rsb	r3, r3, r2
	str	r3, [fp, #-16]
	ldr	r2, [fp, #-28]
	mov	r3, r2, asr #4
	ldr	r2, [fp, #-24]
	add	r2, r2, r3
	str	r2, [fp, #-24]
	ldr	r2, [fp, #-20]
	sub	r3, r2, #32512
	sub	r3, r3, #213
	str	r3, [fp, #-20]
.L11:
	ldr	r3, [fp, #-16]
	str	r3, [fp, #-28]
	ldr	r2, [fp, #-24]
	cmp	r2, #0
	blt	.L12
	ldr	r2, [fp, #-24]
	mov	r3, r2, asr #5
	ldr	r2, [fp, #-28]
	add	r3, r3, r2
	str	r3, [fp, #-16]
	ldr	r2, [fp, #-28]
	mov	r3, r2, asr #5
	ldr	r2, [fp, #-24]
	rsb	r2, r3, r2
	str	r2, [fp, #-24]
	ldr	r2, [fp, #-20]
	add	r3, r2, #16320
	add	r3, r3, #58
	str	r3, [fp, #-20]
	b	.L13
.L12:
	ldr	r2, [fp, #-24]
	mov	r3, r2, asr #5
	ldr	r2, [fp, #-28]
	rsb	r3, r3, r2
	str	r3, [fp, #-16]
	ldr	r2, [fp, #-28]
	mov	r3, r2, asr #5
	ldr	r2, [fp, #-24]
	add	r2, r2, r3
	str	r2, [fp, #-24]
	ldr	r2, [fp, #-20]
	sub	r3, r2, #16320
	sub	r3, r3, #58
	str	r3, [fp, #-20]
.L13:
	ldr	r3, [fp, #-16]
	str	r3, [fp, #-28]
	ldr	r2, [fp, #-24]
	cmp	r2, #0
	blt	.L14
	ldr	r2, [fp, #-24]
	mov	r3, r2, asr #6
	ldr	r2, [fp, #-28]
	add	r3, r3, r2
	str	r3, [fp, #-16]
	ldr	r2, [fp, #-28]
	mov	r3, r2, asr #6
	ldr	r2, [fp, #-24]
	rsb	r2, r3, r2
	str	r2, [fp, #-24]
	ldr	r2, [fp, #-20]
	add	r3, r2, #8128
	add	r3, r3, #63
	str	r3, [fp, #-20]
	b	.L15
.L14:
	ldr	r2, [fp, #-24]
	mov	r3, r2, asr #6
	ldr	r2, [fp, #-28]
	rsb	r3, r3, r2
	str	r3, [fp, #-16]
	ldr	r2, [fp, #-28]
	mov	r3, r2, asr #6
	ldr	r2, [fp, #-24]
	add	r2, r2, r3
	str	r2, [fp, #-24]
	ldr	r2, [fp, #-20]
	sub	r3, r2, #8128
	sub	r3, r3, #63
	str	r3, [fp, #-20]
.L15:
	ldr	r3, [fp, #-16]
	str	r3, [fp, #-28]
	ldr	r2, [fp, #-24]
	cmp	r2, #0
	blt	.L16
	ldr	r2, [fp, #-24]
	mov	r3, r2, asr #7
	ldr	r2, [fp, #-28]
	add	r3, r3, r2
	str	r3, [fp, #-16]
	ldr	r2, [fp, #-28]
	mov	r3, r2, asr #7
	ldr	r2, [fp, #-24]
	rsb	r2, r3, r2
	str	r2, [fp, #-24]
	ldr	r2, [fp, #-20]
	add	r3, r2, #4080
	add	r3, r3, #15
	str	r3, [fp, #-20]
	b	.L17
.L16:
	ldr	r2, [fp, #-24]
	mov	r3, r2, asr #7
	ldr	r2, [fp, #-28]
	rsb	r3, r3, r2
	str	r3, [fp, #-16]
	ldr	r2, [fp, #-28]
	mov	r3, r2, asr #7
	ldr	r2, [fp, #-24]
	add	r2, r2, r3
	str	r2, [fp, #-24]
	ldr	r2, [fp, #-20]
	sub	r3, r2, #4080
	sub	r3, r3, #15
	str	r3, [fp, #-20]
.L17:
	ldr	r3, [fp, #-16]
	str	r3, [fp, #-28]
	ldr	r2, [fp, #-24]
	cmp	r2, #0
	blt	.L18
	ldr	r2, [fp, #-24]
	mov	r3, r2, asr #8
	ldr	r2, [fp, #-28]
	add	r3, r3, r2
	str	r3, [fp, #-16]
	ldr	r2, [fp, #-28]
	mov	r3, r2, asr #8
	ldr	r2, [fp, #-24]
	rsb	r2, r3, r2
	str	r2, [fp, #-24]
	ldr	r2, [fp, #-20]
	add	r3, r2, #2032
	add	r3, r3, #15
	str	r3, [fp, #-20]
	b	.L19
.L18:
	ldr	r2, [fp, #-24]
	mov	r3, r2, asr #8
	ldr	r2, [fp, #-28]
	rsb	r3, r3, r2
	str	r3, [fp, #-16]
	ldr	r2, [fp, #-28]
	mov	r3, r2, asr #8
	ldr	r2, [fp, #-24]
	add	r2, r2, r3
	str	r2, [fp, #-24]
	ldr	r2, [fp, #-20]
	sub	r3, r2, #2032
	sub	r3, r3, #15
	str	r3, [fp, #-20]
.L19:
	ldr	r3, [fp, #-16]
	str	r3, [fp, #-28]
	ldr	r2, [fp, #-24]
	cmp	r2, #0
	blt	.L20
	ldr	r2, [fp, #-24]
	mov	r3, r2, asr #9
	ldr	r2, [fp, #-28]
	add	r3, r3, r2
	str	r3, [fp, #-16]
	ldr	r2, [fp, #-28]
	mov	r3, r2, asr #9
	ldr	r2, [fp, #-24]
	rsb	r2, r3, r2
	str	r2, [fp, #-24]
	ldr	r2, [fp, #-20]
	add	r3, r2, #1020
	add	r3, r3, #3
	str	r3, [fp, #-20]
	b	.L21
.L20:
	ldr	r2, [fp, #-24]
	mov	r3, r2, asr #9
	ldr	r2, [fp, #-28]
	rsb	r3, r3, r2
	str	r3, [fp, #-16]
	ldr	r2, [fp, #-28]
	mov	r3, r2, asr #9
	ldr	r2, [fp, #-24]
	add	r2, r2, r3
	str	r2, [fp, #-24]
	ldr	r2, [fp, #-20]
	sub	r3, r2, #1020
	sub	r3, r3, #3
	str	r3, [fp, #-20]
.L21:
	ldr	r3, [fp, #-16]
	str	r3, [fp, #-28]
	ldr	r2, [fp, #-24]
	cmp	r2, #0
	blt	.L22
	ldr	r2, [fp, #-24]
	mov	r3, r2, asr #10
	ldr	r2, [fp, #-28]
	add	r3, r3, r2
	str	r3, [fp, #-16]
	ldr	r2, [fp, #-28]
	mov	r3, r2, asr #10
	ldr	r2, [fp, #-24]
	rsb	r2, r3, r2
	str	r2, [fp, #-24]
	ldr	r2, [fp, #-20]
	add	r3, r2, #508
	add	r3, r3, #3
	str	r3, [fp, #-20]
	b	.L23
.L22:
	ldr	r2, [fp, #-24]
	mov	r3, r2, asr #10
	ldr	r2, [fp, #-28]
	rsb	r3, r3, r2
	str	r3, [fp, #-16]
	ldr	r2, [fp, #-28]
	mov	r3, r2, asr #10
	ldr	r2, [fp, #-24]
	add	r2, r2, r3
	str	r2, [fp, #-24]
	ldr	r2, [fp, #-20]
	sub	r3, r2, #508
	sub	r3, r3, #3
	str	r3, [fp, #-20]
.L23:
	ldr	r3, [fp, #-16]
	str	r3, [fp, #-28]
	ldr	r2, [fp, #-24]
	cmp	r2, #0
	blt	.L24
	ldr	r2, [fp, #-24]
	mov	r3, r2, asr #11
	ldr	r2, [fp, #-28]
	add	r3, r3, r2
	str	r3, [fp, #-16]
	ldr	r2, [fp, #-28]
	mov	r3, r2, asr #11
	ldr	r2, [fp, #-24]
	rsb	r2, r3, r2
	str	r2, [fp, #-24]
	ldr	r3, [fp, #-20]
	add	r3, r3, #255
	str	r3, [fp, #-20]
	b	.L25
.L24:
	ldr	r2, [fp, #-24]
	mov	r3, r2, asr #11
	ldr	r2, [fp, #-28]
	rsb	r3, r3, r2
	str	r3, [fp, #-16]
	ldr	r2, [fp, #-28]
	mov	r3, r2, asr #11
	ldr	r2, [fp, #-24]
	add	r2, r2, r3
	str	r2, [fp, #-24]
	ldr	r3, [fp, #-20]
	sub	r3, r3, #255
	str	r3, [fp, #-20]
.L25:
	ldr	r2, [fp, #-16]
	str	r2, [fp, #-28]
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	blt	.L26
	ldr	r2, [fp, #-24]
	mov	r3, r2, asr #12
	ldr	r2, [fp, #-28]
	add	r3, r3, r2
	str	r3, [fp, #-16]
	ldr	r2, [fp, #-28]
	mov	r3, r2, asr #12
	ldr	r2, [fp, #-24]
	rsb	r2, r3, r2
	str	r2, [fp, #-24]
	ldr	r3, [fp, #-20]
	add	r3, r3, #127
	str	r3, [fp, #-20]
	b	.L27
.L26:
	ldr	r2, [fp, #-24]
	mov	r3, r2, asr #12
	ldr	r2, [fp, #-28]
	rsb	r3, r3, r2
	str	r3, [fp, #-16]
	ldr	r2, [fp, #-28]
	mov	r3, r2, asr #12
	ldr	r2, [fp, #-24]
	add	r2, r2, r3
	str	r2, [fp, #-24]
	ldr	r3, [fp, #-20]
	sub	r3, r3, #127
	str	r3, [fp, #-20]
.L27:
	ldr	r2, [fp, #-16]
	str	r2, [fp, #-28]
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	blt	.L28
	ldr	r2, [fp, #-24]
	mov	r3, r2, asr #13
	ldr	r2, [fp, #-28]
	add	r3, r3, r2
	str	r3, [fp, #-16]
	ldr	r2, [fp, #-28]
	mov	r3, r2, asr #13
	ldr	r2, [fp, #-24]
	rsb	r2, r3, r2
	str	r2, [fp, #-24]
	ldr	r3, [fp, #-20]
	add	r3, r3, #63
	str	r3, [fp, #-20]
	b	.L29
.L28:
	ldr	r2, [fp, #-24]
	mov	r3, r2, asr #13
	ldr	r2, [fp, #-28]
	rsb	r3, r3, r2
	str	r3, [fp, #-16]
	ldr	r2, [fp, #-28]
	mov	r3, r2, asr #13
	ldr	r2, [fp, #-24]
	add	r2, r2, r3
	str	r2, [fp, #-24]
	ldr	r3, [fp, #-20]
	sub	r3, r3, #63
	str	r3, [fp, #-20]
.L29:
	ldr	r2, [fp, #-16]
	str	r2, [fp, #-28]
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	blt	.L30
	ldr	r2, [fp, #-24]
	mov	r3, r2, asr #14
	ldr	r2, [fp, #-28]
	add	r3, r3, r2
	str	r3, [fp, #-16]
	ldr	r2, [fp, #-28]
	mov	r3, r2, asr #14
	ldr	r2, [fp, #-24]
	rsb	r2, r3, r2
	str	r2, [fp, #-24]
	ldr	r3, [fp, #-20]
	add	r3, r3, #31
	str	r3, [fp, #-20]
	b	.L31
.L30:
	ldr	r2, [fp, #-24]
	mov	r3, r2, asr #14
	ldr	r2, [fp, #-28]
	rsb	r3, r3, r2
	str	r3, [fp, #-16]
	ldr	r2, [fp, #-28]
	mov	r3, r2, asr #14
	ldr	r2, [fp, #-24]
	add	r2, r2, r3
	str	r2, [fp, #-24]
	ldr	r3, [fp, #-20]
	sub	r3, r3, #31
	str	r3, [fp, #-20]
.L31:
	ldr	r2, [fp, #-16]
	str	r2, [fp, #-28]
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	blt	.L32
	ldr	r2, [fp, #-24]
	mov	r3, r2, asr #15
	ldr	r2, [fp, #-28]
	add	r3, r3, r2
	str	r3, [fp, #-16]
	ldr	r2, [fp, #-28]
	mov	r3, r2, asr #15
	ldr	r2, [fp, #-24]
	rsb	r2, r3, r2
	str	r2, [fp, #-24]
	ldr	r3, [fp, #-20]
	add	r3, r3, #15
	str	r3, [fp, #-20]
	b	.L33
.L32:
	ldr	r2, [fp, #-24]
	mov	r3, r2, asr #15
	ldr	r2, [fp, #-28]
	rsb	r3, r3, r2
	str	r3, [fp, #-16]
	ldr	r2, [fp, #-28]
	mov	r3, r2, asr #15
	ldr	r2, [fp, #-24]
	add	r2, r2, r3
	str	r2, [fp, #-24]
	ldr	r3, [fp, #-20]
	sub	r3, r3, #15
	str	r3, [fp, #-20]
.L33:
	ldr	r2, [fp, #-16]
	str	r2, [fp, #-28]
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	blt	.L34
	ldr	r2, [fp, #-24]
	mov	r3, r2, asr #16
	ldr	r2, [fp, #-28]
	add	r3, r3, r2
	str	r3, [fp, #-16]
	ldr	r2, [fp, #-28]
	mov	r3, r2, asr #16
	ldr	r2, [fp, #-24]
	rsb	r2, r3, r2
	str	r2, [fp, #-24]
	ldr	r3, [fp, #-20]
	add	r3, r3, #7
	str	r3, [fp, #-20]
	b	.L35
.L34:
	ldr	r2, [fp, #-24]
	mov	r3, r2, asr #16
	ldr	r2, [fp, #-28]
	rsb	r3, r3, r2
	str	r3, [fp, #-16]
	ldr	r2, [fp, #-28]
	mov	r3, r2, asr #16
	ldr	r2, [fp, #-24]
	add	r2, r2, r3
	str	r2, [fp, #-24]
	ldr	r3, [fp, #-20]
	sub	r3, r3, #7
	str	r3, [fp, #-20]
.L35:
	ldr	r2, [fp, #-16]
	str	r2, [fp, #-28]
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	blt	.L36
	ldr	r2, [fp, #-24]
	mov	r3, r2, asr #17
	ldr	r2, [fp, #-28]
	add	r3, r3, r2
	str	r3, [fp, #-16]
	ldr	r2, [fp, #-28]
	mov	r3, r2, asr #17
	ldr	r2, [fp, #-24]
	rsb	r2, r3, r2
	str	r2, [fp, #-24]
	ldr	r3, [fp, #-20]
	add	r3, r3, #3
	str	r3, [fp, #-20]
	b	.L37
.L36:
	ldr	r2, [fp, #-24]
	mov	r3, r2, asr #17
	ldr	r2, [fp, #-28]
	rsb	r3, r3, r2
	str	r3, [fp, #-16]
	ldr	r2, [fp, #-28]
	mov	r3, r2, asr #17
	ldr	r2, [fp, #-24]
	add	r2, r2, r3
	str	r2, [fp, #-24]
	ldr	r3, [fp, #-20]
	sub	r3, r3, #3
	str	r3, [fp, #-20]
.L37:
	ldr	r2, [fp, #-16]
	str	r2, [fp, #-28]
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	blt	.L38
	ldr	r2, [fp, #-24]
	mov	r3, r2, asr #18
	ldr	r2, [fp, #-28]
	add	r3, r3, r2
	str	r3, [fp, #-16]
	ldr	r2, [fp, #-28]
	mov	r3, r2, asr #18
	ldr	r2, [fp, #-24]
	rsb	r2, r3, r2
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	str	r3, [fp, #-20]
	b	.L39
.L38:
	ldr	r2, [fp, #-24]
	mov	r3, r2, asr #18
	ldr	r2, [fp, #-28]
	rsb	r3, r3, r2
	str	r3, [fp, #-16]
	ldr	r2, [fp, #-28]
	mov	r3, r2, asr #18
	ldr	r2, [fp, #-24]
	add	r2, r2, r3
	ldr	r3, [fp, #-20]
	sub	r3, r3, #1
	str	r3, [fp, #-20]
.L39:
	ldr	r2, [fp, #-16]
	str	r2, [fp, #-28]
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-28]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-12]
	ldr	r2, [fp, #-20]
	str	r2, [r3, #0]
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
	.size	cordic_opt3b_vectoring, .-cordic_opt3b_vectoring
	.align	2
	.global	cordic_opt3b_rotation
	.type	cordic_opt3b_rotation, %function
cordic_opt3b_rotation:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #28
	mov	r3, r0
	str	r1, [fp, #-24]
	str	r2, [fp, #-28]
	mov	r2, #315392
	str	r2, [fp, #-20]
	ldr	r2, [fp, #-20]
	add	r2, r2, #2976
	str	r2, [fp, #-20]
	ldr	r2, [fp, #-20]
	add	r2, r2, #7
	str	r2, [fp, #-20]
	mov	r2, #0
	str	r2, [fp, #-16]
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-12]
	cmp	r3, #0
	bge	.L42
	ldr	r2, [fp, #-20]
	ldr	r3, [fp, #-16]
	add	r2, r2, r3
	str	r2, [fp, #-8]
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-20]
	rsb	r2, r3, r2
	str	r2, [fp, #-16]
	ldr	r2, [fp, #-12]
	add	r3, r2, #409600
	add	r3, r3, #2160
	add	r3, r3, #14
	str	r3, [fp, #-12]
	b	.L43
.L42:
	ldr	r3, [fp, #-20]
	ldr	r2, [fp, #-16]
	rsb	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-16]
	ldr	r2, [fp, #-20]
	add	r3, r3, r2
	str	r3, [fp, #-16]
	ldr	r2, [fp, #-12]
	sub	r3, r2, #409600
	sub	r3, r3, #2160
	sub	r3, r3, #14
	str	r3, [fp, #-12]
.L43:
	ldr	r3, [fp, #-8]
	str	r3, [fp, #-20]
	ldr	r2, [fp, #-12]
	cmp	r2, #0
	bge	.L44
	ldr	r2, [fp, #-16]
	mov	r3, r2, asr #1
	ldr	r2, [fp, #-20]
	add	r3, r3, r2
	str	r3, [fp, #-8]
	ldr	r2, [fp, #-20]
	mov	r3, r2, asr #1
	ldr	r2, [fp, #-16]
	rsb	r2, r3, r2
	str	r2, [fp, #-16]
	ldr	r2, [fp, #-12]
	add	r3, r2, #242688
	add	r3, r3, #396
	str	r3, [fp, #-12]
	b	.L45
.L44:
	ldr	r2, [fp, #-16]
	mov	r3, r2, asr #1
	ldr	r2, [fp, #-20]
	rsb	r3, r3, r2
	str	r3, [fp, #-8]
	ldr	r2, [fp, #-20]
	mov	r3, r2, asr #1
	ldr	r2, [fp, #-16]
	add	r2, r2, r3
	str	r2, [fp, #-16]
	ldr	r2, [fp, #-12]
	sub	r3, r2, #242688
	sub	r3, r3, #396
	str	r3, [fp, #-12]
.L45:
	ldr	r3, [fp, #-8]
	str	r3, [fp, #-20]
	ldr	r2, [fp, #-12]
	cmp	r2, #0
	bge	.L46
	ldr	r2, [fp, #-16]
	mov	r3, r2, asr #2
	ldr	r2, [fp, #-20]
	add	r3, r3, r2
	str	r3, [fp, #-8]
	ldr	r2, [fp, #-20]
	mov	r3, r2, asr #2
	ldr	r2, [fp, #-16]
	rsb	r2, r3, r2
	str	r2, [fp, #-16]
	ldr	r2, [fp, #-12]
	add	r3, r2, #128000
	add	r3, r3, #436
	add	r3, r3, #3
	str	r3, [fp, #-12]
	b	.L47
.L46:
	ldr	r2, [fp, #-16]
	mov	r3, r2, asr #2
	ldr	r2, [fp, #-20]
	rsb	r3, r3, r2
	str	r3, [fp, #-8]
	ldr	r2, [fp, #-20]
	mov	r3, r2, asr #2
	ldr	r2, [fp, #-16]
	add	r2, r2, r3
	str	r2, [fp, #-16]
	ldr	r2, [fp, #-12]
	sub	r3, r2, #128000
	sub	r3, r3, #436
	sub	r3, r3, #3
	str	r3, [fp, #-12]
.L47:
	ldr	r3, [fp, #-8]
	str	r3, [fp, #-20]
	ldr	r2, [fp, #-12]
	cmp	r2, #0
	bge	.L48
	ldr	r2, [fp, #-16]
	mov	r3, r2, asr #3
	ldr	r2, [fp, #-20]
	add	r3, r3, r2
	str	r3, [fp, #-8]
	ldr	r2, [fp, #-20]
	mov	r3, r2, asr #3
	ldr	r2, [fp, #-16]
	rsb	r2, r3, r2
	str	r2, [fp, #-16]
	ldr	r2, [fp, #-12]
	add	r3, r2, #65024
	add	r3, r3, #173
	str	r3, [fp, #-12]
	b	.L49
.L48:
	ldr	r2, [fp, #-16]
	mov	r3, r2, asr #3
	ldr	r2, [fp, #-20]
	rsb	r3, r3, r2
	str	r3, [fp, #-8]
	ldr	r2, [fp, #-20]
	mov	r3, r2, asr #3
	ldr	r2, [fp, #-16]
	add	r2, r2, r3
	str	r2, [fp, #-16]
	ldr	r2, [fp, #-12]
	sub	r3, r2, #65024
	sub	r3, r3, #173
	str	r3, [fp, #-12]
.L49:
	ldr	r3, [fp, #-8]
	str	r3, [fp, #-20]
	ldr	r2, [fp, #-12]
	cmp	r2, #0
	bge	.L50
	ldr	r2, [fp, #-16]
	mov	r3, r2, asr #4
	ldr	r2, [fp, #-20]
	add	r3, r3, r2
	str	r3, [fp, #-8]
	ldr	r2, [fp, #-20]
	mov	r3, r2, asr #4
	ldr	r2, [fp, #-16]
	rsb	r2, r3, r2
	str	r2, [fp, #-16]
	ldr	r2, [fp, #-12]
	add	r3, r2, #32512
	add	r3, r3, #213
	str	r3, [fp, #-12]
	b	.L51
.L50:
	ldr	r2, [fp, #-16]
	mov	r3, r2, asr #4
	ldr	r2, [fp, #-20]
	rsb	r3, r3, r2
	str	r3, [fp, #-8]
	ldr	r2, [fp, #-20]
	mov	r3, r2, asr #4
	ldr	r2, [fp, #-16]
	add	r2, r2, r3
	str	r2, [fp, #-16]
	ldr	r2, [fp, #-12]
	sub	r3, r2, #32512
	sub	r3, r3, #213
	str	r3, [fp, #-12]
.L51:
	ldr	r3, [fp, #-8]
	str	r3, [fp, #-20]
	ldr	r2, [fp, #-12]
	cmp	r2, #0
	bge	.L52
	ldr	r2, [fp, #-16]
	mov	r3, r2, asr #5
	ldr	r2, [fp, #-20]
	add	r3, r3, r2
	str	r3, [fp, #-8]
	ldr	r2, [fp, #-20]
	mov	r3, r2, asr #5
	ldr	r2, [fp, #-16]
	rsb	r2, r3, r2
	str	r2, [fp, #-16]
	ldr	r2, [fp, #-12]
	add	r3, r2, #16320
	add	r3, r3, #58
	str	r3, [fp, #-12]
	b	.L53
.L52:
	ldr	r2, [fp, #-16]
	mov	r3, r2, asr #5
	ldr	r2, [fp, #-20]
	rsb	r3, r3, r2
	str	r3, [fp, #-8]
	ldr	r2, [fp, #-20]
	mov	r3, r2, asr #5
	ldr	r2, [fp, #-16]
	add	r2, r2, r3
	str	r2, [fp, #-16]
	ldr	r2, [fp, #-12]
	sub	r3, r2, #16320
	sub	r3, r3, #58
	str	r3, [fp, #-12]
.L53:
	ldr	r3, [fp, #-8]
	str	r3, [fp, #-20]
	ldr	r2, [fp, #-12]
	cmp	r2, #0
	bge	.L54
	ldr	r2, [fp, #-16]
	mov	r3, r2, asr #6
	ldr	r2, [fp, #-20]
	add	r3, r3, r2
	str	r3, [fp, #-8]
	ldr	r2, [fp, #-20]
	mov	r3, r2, asr #6
	ldr	r2, [fp, #-16]
	rsb	r2, r3, r2
	str	r2, [fp, #-16]
	ldr	r2, [fp, #-12]
	add	r3, r2, #8128
	add	r3, r3, #63
	str	r3, [fp, #-12]
	b	.L55
.L54:
	ldr	r2, [fp, #-16]
	mov	r3, r2, asr #6
	ldr	r2, [fp, #-20]
	rsb	r3, r3, r2
	str	r3, [fp, #-8]
	ldr	r2, [fp, #-20]
	mov	r3, r2, asr #6
	ldr	r2, [fp, #-16]
	add	r2, r2, r3
	str	r2, [fp, #-16]
	ldr	r2, [fp, #-12]
	sub	r3, r2, #8128
	sub	r3, r3, #63
	str	r3, [fp, #-12]
.L55:
	ldr	r3, [fp, #-8]
	str	r3, [fp, #-20]
	ldr	r2, [fp, #-12]
	cmp	r2, #0
	bge	.L56
	ldr	r2, [fp, #-16]
	mov	r3, r2, asr #7
	ldr	r2, [fp, #-20]
	add	r3, r3, r2
	str	r3, [fp, #-8]
	ldr	r2, [fp, #-20]
	mov	r3, r2, asr #7
	ldr	r2, [fp, #-16]
	rsb	r2, r3, r2
	str	r2, [fp, #-16]
	ldr	r2, [fp, #-12]
	add	r3, r2, #4080
	add	r3, r3, #15
	str	r3, [fp, #-12]
	b	.L57
.L56:
	ldr	r2, [fp, #-16]
	mov	r3, r2, asr #7
	ldr	r2, [fp, #-20]
	rsb	r3, r3, r2
	str	r3, [fp, #-8]
	ldr	r2, [fp, #-20]
	mov	r3, r2, asr #7
	ldr	r2, [fp, #-16]
	add	r2, r2, r3
	str	r2, [fp, #-16]
	ldr	r2, [fp, #-12]
	sub	r3, r2, #4080
	sub	r3, r3, #15
	str	r3, [fp, #-12]
.L57:
	ldr	r3, [fp, #-8]
	str	r3, [fp, #-20]
	ldr	r2, [fp, #-12]
	cmp	r2, #0
	bge	.L58
	ldr	r2, [fp, #-16]
	mov	r3, r2, asr #8
	ldr	r2, [fp, #-20]
	add	r3, r3, r2
	str	r3, [fp, #-8]
	ldr	r2, [fp, #-20]
	mov	r3, r2, asr #8
	ldr	r2, [fp, #-16]
	rsb	r2, r3, r2
	str	r2, [fp, #-16]
	ldr	r2, [fp, #-12]
	add	r3, r2, #2032
	add	r3, r3, #15
	str	r3, [fp, #-12]
	b	.L59
.L58:
	ldr	r2, [fp, #-16]
	mov	r3, r2, asr #8
	ldr	r2, [fp, #-20]
	rsb	r3, r3, r2
	str	r3, [fp, #-8]
	ldr	r2, [fp, #-20]
	mov	r3, r2, asr #8
	ldr	r2, [fp, #-16]
	add	r2, r2, r3
	str	r2, [fp, #-16]
	ldr	r2, [fp, #-12]
	sub	r3, r2, #2032
	sub	r3, r3, #15
	str	r3, [fp, #-12]
.L59:
	ldr	r3, [fp, #-8]
	str	r3, [fp, #-20]
	ldr	r2, [fp, #-12]
	cmp	r2, #0
	bge	.L60
	ldr	r2, [fp, #-16]
	mov	r3, r2, asr #9
	ldr	r2, [fp, #-20]
	add	r3, r3, r2
	str	r3, [fp, #-8]
	ldr	r2, [fp, #-20]
	mov	r3, r2, asr #9
	ldr	r2, [fp, #-16]
	rsb	r2, r3, r2
	str	r2, [fp, #-16]
	ldr	r2, [fp, #-12]
	add	r3, r2, #1020
	add	r3, r3, #3
	str	r3, [fp, #-12]
	b	.L61
.L60:
	ldr	r2, [fp, #-16]
	mov	r3, r2, asr #9
	ldr	r2, [fp, #-20]
	rsb	r3, r3, r2
	str	r3, [fp, #-8]
	ldr	r2, [fp, #-20]
	mov	r3, r2, asr #9
	ldr	r2, [fp, #-16]
	add	r2, r2, r3
	str	r2, [fp, #-16]
	ldr	r2, [fp, #-12]
	sub	r3, r2, #1020
	sub	r3, r3, #3
	str	r3, [fp, #-12]
.L61:
	ldr	r3, [fp, #-8]
	str	r3, [fp, #-20]
	ldr	r2, [fp, #-12]
	cmp	r2, #0
	bge	.L62
	ldr	r2, [fp, #-16]
	mov	r3, r2, asr #10
	ldr	r2, [fp, #-20]
	add	r3, r3, r2
	str	r3, [fp, #-8]
	ldr	r2, [fp, #-20]
	mov	r3, r2, asr #10
	ldr	r2, [fp, #-16]
	rsb	r2, r3, r2
	str	r2, [fp, #-16]
	ldr	r2, [fp, #-12]
	add	r3, r2, #508
	add	r3, r3, #3
	str	r3, [fp, #-12]
	b	.L63
.L62:
	ldr	r2, [fp, #-16]
	mov	r3, r2, asr #10
	ldr	r2, [fp, #-20]
	rsb	r3, r3, r2
	str	r3, [fp, #-8]
	ldr	r2, [fp, #-20]
	mov	r3, r2, asr #10
	ldr	r2, [fp, #-16]
	add	r2, r2, r3
	str	r2, [fp, #-16]
	ldr	r2, [fp, #-12]
	sub	r3, r2, #508
	sub	r3, r3, #3
	str	r3, [fp, #-12]
.L63:
	ldr	r3, [fp, #-8]
	str	r3, [fp, #-20]
	ldr	r2, [fp, #-12]
	cmp	r2, #0
	bge	.L64
	ldr	r2, [fp, #-16]
	mov	r3, r2, asr #11
	ldr	r2, [fp, #-20]
	add	r3, r3, r2
	str	r3, [fp, #-8]
	ldr	r2, [fp, #-20]
	mov	r3, r2, asr #11
	ldr	r2, [fp, #-16]
	rsb	r2, r3, r2
	str	r2, [fp, #-16]
	ldr	r3, [fp, #-12]
	add	r3, r3, #255
	str	r3, [fp, #-12]
	b	.L65
.L64:
	ldr	r2, [fp, #-16]
	mov	r3, r2, asr #11
	ldr	r2, [fp, #-20]
	rsb	r3, r3, r2
	str	r3, [fp, #-8]
	ldr	r2, [fp, #-20]
	mov	r3, r2, asr #11
	ldr	r2, [fp, #-16]
	add	r2, r2, r3
	str	r2, [fp, #-16]
	ldr	r3, [fp, #-12]
	sub	r3, r3, #255
	str	r3, [fp, #-12]
.L65:
	ldr	r2, [fp, #-8]
	str	r2, [fp, #-20]
	ldr	r3, [fp, #-12]
	cmp	r3, #0
	bge	.L66
	ldr	r2, [fp, #-16]
	mov	r3, r2, asr #12
	ldr	r2, [fp, #-20]
	add	r3, r3, r2
	str	r3, [fp, #-8]
	ldr	r2, [fp, #-20]
	mov	r3, r2, asr #12
	ldr	r2, [fp, #-16]
	rsb	r2, r3, r2
	str	r2, [fp, #-16]
	ldr	r3, [fp, #-12]
	add	r3, r3, #127
	str	r3, [fp, #-12]
	b	.L67
.L66:
	ldr	r2, [fp, #-16]
	mov	r3, r2, asr #12
	ldr	r2, [fp, #-20]
	rsb	r3, r3, r2
	str	r3, [fp, #-8]
	ldr	r2, [fp, #-20]
	mov	r3, r2, asr #12
	ldr	r2, [fp, #-16]
	add	r2, r2, r3
	str	r2, [fp, #-16]
	ldr	r3, [fp, #-12]
	sub	r3, r3, #127
	str	r3, [fp, #-12]
.L67:
	ldr	r2, [fp, #-8]
	str	r2, [fp, #-20]
	ldr	r3, [fp, #-12]
	cmp	r3, #0
	bge	.L68
	ldr	r2, [fp, #-16]
	mov	r3, r2, asr #13
	ldr	r2, [fp, #-20]
	add	r3, r3, r2
	str	r3, [fp, #-8]
	ldr	r2, [fp, #-20]
	mov	r3, r2, asr #13
	ldr	r2, [fp, #-16]
	rsb	r2, r3, r2
	str	r2, [fp, #-16]
	ldr	r3, [fp, #-12]
	add	r3, r3, #63
	str	r3, [fp, #-12]
	b	.L69
.L68:
	ldr	r2, [fp, #-16]
	mov	r3, r2, asr #13
	ldr	r2, [fp, #-20]
	rsb	r3, r3, r2
	str	r3, [fp, #-8]
	ldr	r2, [fp, #-20]
	mov	r3, r2, asr #13
	ldr	r2, [fp, #-16]
	add	r2, r2, r3
	str	r2, [fp, #-16]
	ldr	r3, [fp, #-12]
	sub	r3, r3, #63
	str	r3, [fp, #-12]
.L69:
	ldr	r2, [fp, #-8]
	str	r2, [fp, #-20]
	ldr	r3, [fp, #-12]
	cmp	r3, #0
	bge	.L70
	ldr	r2, [fp, #-16]
	mov	r3, r2, asr #14
	ldr	r2, [fp, #-20]
	add	r3, r3, r2
	str	r3, [fp, #-8]
	ldr	r2, [fp, #-20]
	mov	r3, r2, asr #14
	ldr	r2, [fp, #-16]
	rsb	r2, r3, r2
	str	r2, [fp, #-16]
	ldr	r3, [fp, #-12]
	add	r3, r3, #31
	str	r3, [fp, #-12]
	b	.L71
.L70:
	ldr	r2, [fp, #-16]
	mov	r3, r2, asr #14
	ldr	r2, [fp, #-20]
	rsb	r3, r3, r2
	str	r3, [fp, #-8]
	ldr	r2, [fp, #-20]
	mov	r3, r2, asr #14
	ldr	r2, [fp, #-16]
	add	r2, r2, r3
	str	r2, [fp, #-16]
	ldr	r3, [fp, #-12]
	sub	r3, r3, #31
	str	r3, [fp, #-12]
.L71:
	ldr	r2, [fp, #-8]
	str	r2, [fp, #-20]
	ldr	r3, [fp, #-12]
	cmp	r3, #0
	bge	.L72
	ldr	r2, [fp, #-16]
	mov	r3, r2, asr #15
	ldr	r2, [fp, #-20]
	add	r3, r3, r2
	str	r3, [fp, #-8]
	ldr	r2, [fp, #-20]
	mov	r3, r2, asr #15
	ldr	r2, [fp, #-16]
	rsb	r2, r3, r2
	str	r2, [fp, #-16]
	ldr	r3, [fp, #-12]
	add	r3, r3, #15
	str	r3, [fp, #-12]
	b	.L73
.L72:
	ldr	r2, [fp, #-16]
	mov	r3, r2, asr #15
	ldr	r2, [fp, #-20]
	rsb	r3, r3, r2
	str	r3, [fp, #-8]
	ldr	r2, [fp, #-20]
	mov	r3, r2, asr #15
	ldr	r2, [fp, #-16]
	add	r2, r2, r3
	str	r2, [fp, #-16]
	ldr	r3, [fp, #-12]
	sub	r3, r3, #15
	str	r3, [fp, #-12]
.L73:
	ldr	r2, [fp, #-8]
	str	r2, [fp, #-20]
	ldr	r3, [fp, #-12]
	cmp	r3, #0
	bge	.L74
	ldr	r2, [fp, #-16]
	mov	r3, r2, asr #16
	ldr	r2, [fp, #-20]
	add	r3, r3, r2
	str	r3, [fp, #-8]
	ldr	r2, [fp, #-20]
	mov	r3, r2, asr #16
	ldr	r2, [fp, #-16]
	rsb	r2, r3, r2
	str	r2, [fp, #-16]
	ldr	r3, [fp, #-12]
	add	r3, r3, #7
	str	r3, [fp, #-12]
	b	.L75
.L74:
	ldr	r2, [fp, #-16]
	mov	r3, r2, asr #16
	ldr	r2, [fp, #-20]
	rsb	r3, r3, r2
	str	r3, [fp, #-8]
	ldr	r2, [fp, #-20]
	mov	r3, r2, asr #16
	ldr	r2, [fp, #-16]
	add	r2, r2, r3
	str	r2, [fp, #-16]
	ldr	r3, [fp, #-12]
	sub	r3, r3, #7
	str	r3, [fp, #-12]
.L75:
	ldr	r2, [fp, #-8]
	str	r2, [fp, #-20]
	ldr	r3, [fp, #-12]
	cmp	r3, #0
	bge	.L76
	ldr	r2, [fp, #-16]
	mov	r3, r2, asr #17
	ldr	r2, [fp, #-20]
	add	r3, r3, r2
	str	r3, [fp, #-8]
	ldr	r2, [fp, #-20]
	mov	r3, r2, asr #17
	ldr	r2, [fp, #-16]
	rsb	r2, r3, r2
	str	r2, [fp, #-16]
	ldr	r3, [fp, #-12]
	add	r3, r3, #3
	str	r3, [fp, #-12]
	b	.L77
.L76:
	ldr	r2, [fp, #-16]
	mov	r3, r2, asr #17
	ldr	r2, [fp, #-20]
	rsb	r3, r3, r2
	str	r3, [fp, #-8]
	ldr	r2, [fp, #-20]
	mov	r3, r2, asr #17
	ldr	r2, [fp, #-16]
	add	r2, r2, r3
	str	r2, [fp, #-16]
	ldr	r3, [fp, #-12]
	sub	r3, r3, #3
	str	r3, [fp, #-12]
.L77:
	ldr	r2, [fp, #-8]
	str	r2, [fp, #-20]
	ldr	r3, [fp, #-12]
	cmp	r3, #0
	bge	.L78
	ldr	r2, [fp, #-16]
	mov	r3, r2, asr #18
	ldr	r2, [fp, #-20]
	add	r3, r3, r2
	str	r3, [fp, #-8]
	ldr	r2, [fp, #-20]
	mov	r3, r2, asr #18
	ldr	r2, [fp, #-16]
	rsb	r2, r3, r2
	str	r2, [fp, #-16]
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	b	.L79
.L78:
	ldr	r2, [fp, #-16]
	mov	r3, r2, asr #18
	ldr	r2, [fp, #-20]
	rsb	r3, r3, r2
	str	r3, [fp, #-8]
	ldr	r2, [fp, #-20]
	mov	r3, r2, asr #18
	ldr	r2, [fp, #-16]
	add	r2, r2, r3
	str	r2, [fp, #-16]
	ldr	r3, [fp, #-12]
	sub	r3, r3, #1
.L79:
	ldr	r2, [fp, #-8]
	str	r2, [fp, #-20]
	ldr	r3, [fp, #-20]
	ldr	r2, [fp, #-24]
	str	r3, [r2, #0]
	ldr	r3, [fp, #-16]
	ldr	r2, [fp, #-28]
	str	r3, [r2, #0]
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
	.size	cordic_opt3b_rotation, .-cordic_opt3b_rotation
	.ident	"GCC: (Sourcery G++ Lite 2008q3-72) 4.3.2"
	.section	.note.GNU-stack,"",%progbits
