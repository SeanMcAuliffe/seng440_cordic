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
	.file	"cordic_hw.c"
	.text
	.align	2
	.global	cordic_vectoring_hw
	.type	cordic_vectoring_hw, %function
cordic_vectoring_hw:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	ip, [r1, #0]
	ldr	r3, [r0, #0]
#APP
@ 11 "cordic_hw.c" 1
	cordic_vec r3, r3, ip
@ 0 "" 2
	mov	r3, r3, asl #16
	mov	r1, r3, asr #31
	mov	r3, r3, lsr #16
	str	r1, [r0, #0]
	strh	r3, [r2, #0]	@ movhi
	bx	lr
	.size	cordic_vectoring_hw, .-cordic_vectoring_hw
	.align	2
	.global	cordic_rotation_hw
	.type	cordic_rotation_hw, %function
cordic_rotation_hw:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrsh	r3, [r1, #0]
	str	r4, [sp, #-4]!
	ldrsh	r4, [r0, #0]
	ldr	ip, [r2, #0]
	orr	r3, r3, r4, asl #16
#APP
@ 31 "cordic_hw.c" 1
	cordic_rot r3, r3, ip
@ 0 "" 2
	mov	r3, r3, asl #16
	mov	r2, r3, asr #31
	mov	r3, r3, lsr #16
	strh	r2, [r0, #0]	@ movhi
	strh	r3, [r1, #0]	@ movhi
	ldmfd	sp!, {r4}
	bx	lr
	.size	cordic_rotation_hw, .-cordic_rotation_hw
	.ident	"GCC: (Sourcery G++ Lite 2008q3-72) 4.3.2"
	.section	.note.GNU-stack,"",%progbits
