	.cpu arm7tdmi
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"draw.c"
	.text
	.align	2
	.global	drawSub
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawSub, %function
drawSub:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r6, r1
	mov	r4, r0
	ldr	r7, .L4
	sub	sp, sp, #20
	ldr	r5, .L4+4
	add	r9, r6, #10
	mov	r3, #2
	mov	r2, #1
	str	r7, [sp]
	add	r1, r1, #11
	add	r0, r0, #2
	mov	lr, pc
	bx	r5
	add	r10, r6, #8
	mov	r1, r9
	add	r0, r4, #3
	mov	r3, #3
	mov	r2, #1
	str	r7, [sp]
	mov	lr, pc
	bx	r5
	add	fp, r6, #7
	mov	r1, r10
	add	r0, r4, #4
	mov	r3, #7
	mov	r2, #3
	str	r7, [sp]
	mov	lr, pc
	bx	r5
	add	r8, r4, #9
	mov	r1, fp
	add	r0, r4, #7
	mov	r3, #9
	mov	r2, #2
	str	r7, [sp]
	mov	lr, pc
	bx	r5
	mov	r0, r8
	add	r1, r6, #5
	mov	r3, #13
	mov	r2, #14
	str	r7, [sp]
	mov	lr, pc
	bx	r5
	add	r1, r6, #6
	add	r0, r4, #23
	mov	r3, #11
	mov	r2, #2
	str	r7, [sp]
	mov	lr, pc
	bx	r5
	mov	r1, fp
	add	r0, r4, #25
	mov	r3, #9
	mov	r2, #1
	str	r7, [sp]
	mov	lr, pc
	bx	r5
	mov	r3, #3
	ldr	ip, .L4+8
	mov	r0, r8
	str	ip, [sp]
	mov	r1, r9
	mov	r2, r3
	mov	r8, ip
	mov	lr, pc
	bx	r5
	mov	r3, #3
	mov	r1, r9
	mov	r2, r3
	str	r8, [sp]
	add	r0, r4, #15
	mov	lr, pc
	bx	r5
	mov	r3, #3
	ldr	ip, .L4+8
	ldr	r8, .L4+12
	add	r2, r4, #21
	str	ip, [sp]
	mov	r1, r9
	mov	r0, r2
	str	r2, [sp, #8]
	mov	r2, r3
	mov	lr, pc
	bx	r5
	ldr	r9, .L4+16
	mov	r1, r10
	mov	r0, r4
	mov	r2, r8
	mov	lr, pc
	bx	r9
	mov	r2, r8
	mov	r0, r4
	add	r1, r6, #15
	mov	lr, pc
	bx	r9
	mov	r3, #2
	add	r9, r6, #9
	mov	r1, r9
	mov	r0, r4
	mov	r2, r3
	str	r8, [sp]
	mov	lr, pc
	bx	r5
	mov	r3, #2
	mov	r0, r4
	mov	r2, r3
	str	r8, [sp]
	add	r1, r6, #13
	mov	lr, pc
	bx	r5
	add	r1, r6, #4
	add	r0, r4, #14
	mov	r3, #1
	mov	r2, #7
	str	r7, [sp]
	mov	lr, pc
	bx	r5
	mov	r3, #2
	add	r0, r4, #18
	add	r1, r6, r3
	mov	r2, r3
	str	r7, [sp]
	str	r0, [sp, #12]
	mov	lr, pc
	bx	r5
	mov	r1, r6
	ldr	r0, [sp, #12]
	mov	r3, #2
	mov	r2, #3
	str	r7, [sp]
	mov	lr, pc
	bx	r5
	ldr	ip, .L4+8
	ldr	r8, .L4+20
	str	ip, [sp]
	mov	r1, r6
	ldr	r0, [sp, #8]
	mov	r3, #2
	mov	r2, #1
	mov	lr, pc
	bx	r5
	mov	r1, fp
	add	r0, r4, #26
	mov	r3, #9
	mov	r2, #1
	str	r8, [sp]
	mov	lr, pc
	bx	r5
	mov	r1, r10
	add	r0, r4, #27
	mov	r3, #7
	mov	r2, #2
	str	r8, [sp]
	mov	lr, pc
	bx	r5
	mov	r1, r9
	mov	r3, #5
	mov	r2, #1
	str	r8, [sp]
	add	r0, r4, #29
	mov	lr, pc
	bx	r5
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	10044
	.word	drawRect
	.word	31529
	.word	24311
	.word	setPixel
	.word	8572
	.size	drawSub, .-drawSub
	.align	2
	.global	drawBottle
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawBottle, %function
drawBottle:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #2
	push	{r4, r5, r6, r7, r8, lr}
	mov	r4, r0
	mov	r5, r1
	ldr	r7, .L8
	sub	sp, sp, #8
	ldr	r8, .L8+4
	ldr	r6, .L8+8
	mov	r2, r3
	add	r0, r0, r3
	str	r7, [sp]
	mov	lr, pc
	bx	r6
	add	r1, r5, #2
	add	r0, r4, #1
	mov	r3, #1
	mov	r2, #4
	str	r8, [sp]
	mov	lr, pc
	bx	r6
	mov	r0, r4
	add	r1, r5, #3
	mov	r3, #12
	mov	r2, #6
	str	r8, [sp]
	mov	lr, pc
	bx	r6
	mov	r0, r4
	mov	r3, #3
	mov	r2, #6
	str	r7, [sp]
	add	r1, r5, #6
	mov	lr, pc
	bx	r6
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L9:
	.align	2
.L8:
	.word	8572
	.word	29559
	.word	drawRect
	.size	drawBottle, .-drawBottle
	.align	2
	.global	drawFish
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawFish, %function
drawFish:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r3, #2
	mov	r7, r1
	ldr	r6, .L12
	sub	sp, sp, #12
	add	r9, r1, #3
	ldr	r4, .L12+4
	mov	r1, r9
	mov	r2, #1
	str	r6, [sp]
	mov	r5, r0
	add	fp, r7, r3
	mov	lr, pc
	bx	r4
	mov	r2, #1
	add	r8, r5, #2
	add	r10, r7, r2
	mov	r1, fp
	add	r0, r5, #1
	mov	r3, #4
	str	r6, [sp]
	mov	lr, pc
	bx	r4
	mov	r0, r8
	mov	r1, r10
	mov	r3, #6
	mov	r2, #2
	str	r6, [sp]
	mov	lr, pc
	bx	r4
	mov	r1, r7
	add	r0, r5, #4
	mov	r3, #8
	mov	r2, #3
	str	r6, [sp]
	mov	lr, pc
	bx	r4
	mov	r1, r10
	add	r0, r5, #7
	mov	r3, #6
	mov	r2, #2
	str	r6, [sp]
	mov	lr, pc
	bx	r4
	mov	r1, fp
	add	r0, r5, #9
	mov	r3, #4
	mov	r2, #1
	str	r6, [sp]
	mov	lr, pc
	bx	r4
	mov	r1, r10
	add	r0, r5, #10
	mov	r3, #6
	mov	r2, #1
	str	r6, [sp]
	mov	lr, pc
	bx	r4
	mov	r1, r7
	add	r0, r5, #11
	mov	r3, #8
	mov	r2, #1
	str	r6, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #2
	ldr	ip, .L12+8
	mov	r1, r9
	mov	r0, r8
	mov	r2, r3
	str	ip, [sp]
	mov	lr, pc
	bx	r4
	mov	r1, r9
	mov	r0, r8
	mov	r2, #0
	ldr	r3, .L12+12
	mov	lr, pc
	bx	r3
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L13:
	.align	2
.L12:
	.word	30005
	.word	drawRect
	.word	32767
	.word	setPixel
	.size	drawFish, .-drawFish
	.align	2
	.global	eraseSub
	.syntax unified
	.arm
	.fpu softvfp
	.type	eraseSub, %function
eraseSub:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r4, r0
	mov	r7, r1
	ldr	r5, .L16
	sub	sp, sp, #12
	ldr	r6, .L16+4
	mov	r3, #2
	mov	r2, #1
	str	r5, [sp]
	add	r1, r1, #11
	add	r0, r0, #2
	mov	lr, pc
	bx	r6
	add	r8, r7, #8
	add	r1, r7, #10
	add	r0, r4, #3
	mov	r3, #3
	mov	r2, #1
	str	r5, [sp]
	mov	lr, pc
	bx	r6
	add	r9, r7, #7
	mov	r1, r8
	add	r0, r4, #4
	mov	r3, #7
	mov	r2, #3
	str	r5, [sp]
	mov	lr, pc
	bx	r6
	mov	r1, r9
	add	r0, r4, #7
	mov	r3, #9
	mov	r2, #2
	str	r5, [sp]
	mov	lr, pc
	bx	r6
	add	r1, r7, #5
	add	r0, r4, #9
	mov	r3, #13
	mov	r2, #14
	str	r5, [sp]
	mov	lr, pc
	bx	r6
	add	r1, r7, #6
	add	r0, r4, #23
	mov	r3, #11
	mov	r2, #2
	str	r5, [sp]
	mov	lr, pc
	bx	r6
	mov	r3, #9
	mov	r1, r9
	add	r0, r4, #25
	mov	r2, #1
	str	r5, [sp]
	mov	lr, pc
	bx	r6
	ldr	r10, .L16+8
	mov	r2, r5
	mov	r1, r8
	mov	r0, r4
	mov	lr, pc
	bx	r10
	mov	r2, r5
	mov	r0, r4
	add	r1, r7, #15
	mov	lr, pc
	bx	r10
	mov	r3, #2
	add	r10, r7, #9
	mov	r1, r10
	mov	r0, r4
	mov	r2, r3
	str	r5, [sp]
	mov	lr, pc
	bx	r6
	mov	r3, #2
	mov	r0, r4
	mov	r2, r3
	add	r1, r7, #13
	str	r5, [sp]
	mov	lr, pc
	bx	r6
	add	r1, r7, #4
	add	r0, r4, #14
	mov	r3, #1
	mov	r2, #7
	str	r5, [sp]
	mov	lr, pc
	bx	r6
	mov	r3, #2
	add	fp, r4, #18
	add	r1, r7, r3
	mov	r0, fp
	mov	r2, r3
	str	r5, [sp]
	mov	lr, pc
	bx	r6
	mov	r0, fp
	mov	r1, r7
	mov	r3, #2
	mov	r2, #3
	str	r5, [sp]
	mov	lr, pc
	bx	r6
	mov	r1, r7
	add	r0, r4, #21
	mov	r3, #2
	mov	r2, #1
	str	r5, [sp]
	mov	lr, pc
	bx	r6
	mov	r1, r9
	add	r0, r4, #26
	mov	r3, #9
	mov	r2, #1
	str	r5, [sp]
	mov	lr, pc
	bx	r6
	mov	r1, r8
	add	r0, r4, #27
	mov	r3, #7
	mov	r2, #2
	str	r5, [sp]
	mov	lr, pc
	bx	r6
	mov	r1, r10
	mov	r3, #5
	mov	r2, #1
	str	r5, [sp]
	add	r0, r4, #29
	mov	lr, pc
	bx	r6
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L17:
	.align	2
.L16:
	.word	30348
	.word	drawRect
	.word	setPixel
	.size	eraseSub, .-eraseSub
	.align	2
	.global	eraseBottle
	.syntax unified
	.arm
	.fpu softvfp
	.type	eraseBottle, %function
eraseBottle:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #2
	push	{r4, r5, r6, r7, lr}
	mov	r4, r0
	mov	r5, r1
	ldr	r7, .L20
	sub	sp, sp, #12
	ldr	r6, .L20+4
	mov	r2, r3
	add	r0, r0, r3
	str	r7, [sp]
	mov	lr, pc
	bx	r6
	add	r1, r5, #2
	add	r0, r4, #1
	mov	r3, #1
	mov	r2, #4
	str	r7, [sp]
	mov	lr, pc
	bx	r6
	mov	r0, r4
	add	r1, r5, #3
	mov	r3, #12
	mov	r2, #6
	str	r7, [sp]
	mov	lr, pc
	bx	r6
	mov	r0, r4
	mov	r3, #3
	mov	r2, #6
	str	r7, [sp]
	add	r1, r5, #6
	mov	lr, pc
	bx	r6
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L21:
	.align	2
.L20:
	.word	30348
	.word	drawRect
	.size	eraseBottle, .-eraseBottle
	.align	2
	.global	eraseFish
	.syntax unified
	.arm
	.fpu softvfp
	.type	eraseFish, %function
eraseFish:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, lr}
	mov	r3, #2
	mov	r7, r1
	mov	r4, r0
	ldr	r6, .L24
	sub	sp, sp, #12
	ldr	r5, .L24+4
	add	r9, r7, r3
	mov	r2, #1
	str	r6, [sp]
	add	r1, r1, #3
	mov	lr, pc
	bx	r5
	add	r8, r7, #1
	mov	r1, r9
	add	r0, r4, #1
	mov	r3, #4
	mov	r2, #1
	str	r6, [sp]
	mov	lr, pc
	bx	r5
	mov	r1, r8
	add	r0, r4, #2
	mov	r3, #6
	mov	r2, #2
	str	r6, [sp]
	mov	lr, pc
	bx	r5
	mov	r1, r7
	add	r0, r4, #4
	mov	r3, #8
	mov	r2, #3
	str	r6, [sp]
	mov	lr, pc
	bx	r5
	mov	r1, r8
	add	r0, r4, #7
	mov	r3, #6
	mov	r2, #2
	str	r6, [sp]
	mov	lr, pc
	bx	r5
	mov	r1, r9
	add	r0, r4, #9
	mov	r3, #4
	mov	r2, #1
	str	r6, [sp]
	mov	lr, pc
	bx	r5
	mov	r1, r8
	add	r0, r4, #10
	mov	r3, #6
	mov	r2, #1
	str	r6, [sp]
	mov	lr, pc
	bx	r5
	mov	r1, r7
	mov	r3, #8
	mov	r2, #1
	str	r6, [sp]
	add	r0, r4, #11
	mov	lr, pc
	bx	r5
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L25:
	.align	2
.L24:
	.word	30348
	.word	drawRect
	.size	eraseFish, .-eraseFish
	.align	2
	.global	drawCoral
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawCoral, %function
drawCoral:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	r4, r2
	mov	r5, r0
	mov	r6, r1
	sub	sp, sp, #12
	ldr	r7, .L28
	str	r2, [sp]
	mov	r3, #23
	mov	r2, #2
	mov	lr, pc
	bx	r7
	sub	r1, r6, #1
	add	r0, r5, #2
	mov	r3, #24
	mov	r2, #3
	str	r4, [sp]
	mov	lr, pc
	bx	r7
	add	r1, r6, #5
	add	r0, r5, #5
	mov	r3, #18
	mov	r2, #1
	str	r4, [sp]
	mov	lr, pc
	bx	r7
	add	r1, r6, #3
	add	r0, r5, #6
	mov	r3, #20
	mov	r2, #1
	str	r4, [sp]
	mov	lr, pc
	bx	r7
	sub	r1, r6, #17
	add	r0, r5, #7
	mov	r3, #40
	mov	r2, #6
	str	r4, [sp]
	mov	lr, pc
	bx	r7
	sub	r1, r6, #3
	add	r0, r5, #13
	mov	r3, #26
	mov	r2, #1
	str	r4, [sp]
	mov	lr, pc
	bx	r7
	add	r1, r6, #9
	add	r0, r5, #14
	mov	r3, #14
	mov	r2, #1
	str	r4, [sp]
	mov	lr, pc
	bx	r7
	add	r1, r6, #6
	add	r0, r5, #15
	mov	r3, #17
	mov	r2, #2
	str	r4, [sp]
	mov	lr, pc
	bx	r7
	sub	r1, r6, #6
	add	r0, r5, #17
	mov	r3, #29
	mov	r2, #5
	str	r4, [sp]
	mov	lr, pc
	bx	r7
	mov	r3, #22
	mov	r2, #2
	str	r4, [sp]
	add	r1, r6, #1
	add	r0, r5, #22
	mov	lr, pc
	bx	r7
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L29:
	.align	2
.L28:
	.word	drawRect
	.size	drawCoral, .-drawCoral
	.align	2
	.global	drawReef
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawReef, %function
drawReef:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r6, r1
	mov	r7, r0
	ldr	r5, .L32
	sub	sp, sp, #8
	ldr	r4, .L32+4
	mov	r3, #25
	mov	r2, #11
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	add	r1, r6, #2
	add	r0, r7, #11
	mov	r3, #23
	mov	r2, #6
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	add	r1, r6, #3
	add	r0, r7, #14
	mov	r3, #22
	mov	r2, #3
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	add	r1, r6, #5
	add	r0, r7, #17
	mov	r3, #20
	mov	r2, #2
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	add	r1, r6, #6
	add	r0, r7, #19
	mov	r3, #19
	mov	r2, #3
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	add	r1, r6, #7
	add	r0, r7, #22
	mov	r3, #18
	mov	r2, #2
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	add	r1, r6, #8
	add	r0, r7, #24
	mov	r3, #17
	mov	r2, #2
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	add	r1, r6, #10
	add	r0, r7, #26
	mov	r3, #15
	mov	r2, #1
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	add	r1, r6, #11
	add	r0, r7, #27
	mov	r3, #14
	mov	r2, #3
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	add	r10, r7, #32
	add	r1, r6, #13
	add	r0, r7, #30
	mov	r3, #12
	mov	r2, #2
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	add	r8, r7, #34
	mov	r0, r10
	add	r1, r6, #14
	mov	r3, #11
	mov	r2, #2
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	add	r9, r6, #18
	mov	r0, r8
	add	r1, r6, #16
	mov	r3, #9
	mov	r2, #1
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r0, r10
	mov	r1, r9
	mov	r3, #7
	mov	r2, #2
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r1, r9
	mov	r0, r8
	mov	r3, #7
	mov	r2, #3
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #5
	mov	r2, #2
	str	r5, [sp]
	add	r1, r6, #20
	add	r0, r7, #37
	mov	lr, pc
	bx	r4
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L33:
	.align	2
.L32:
	.word	26904
	.word	drawRect
	.size	drawReef, .-drawReef
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"SUBSAVER\000"
	.align	2
.LC1:
	.ascii	"press select to play\000"
	.text
	.align	2
	.global	drawStartScreen
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawStartScreen, %function
drawStartScreen:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	ldr	r0, .L36
	sub	sp, sp, #12
	ldr	r3, .L36+4
	mov	lr, pc
	bx	r3
	ldr	r2, .L36+8
	mov	r3, #30
	str	r2, [sp]
	mov	r1, #130
	mov	r2, #240
	mov	r0, #0
	ldr	r4, .L36+12
	mov	lr, pc
	bx	r4
	ldr	r5, .L36+16
	mov	r1, #105
	mov	r0, #0
	bl	drawReef
	mov	r1, #107
	mov	r0, #210
	ldr	r2, .L36+20
	bl	drawCoral
	ldr	r4, .L36+24
	mov	r3, r5
	mov	r1, #55
	mov	r0, #96
	ldr	r2, .L36+28
	mov	lr, pc
	bx	r4
	mov	r3, r5
	mov	r1, #138
	mov	r0, #60
	ldr	r2, .L36+32
	mov	lr, pc
	bx	r4
	mov	r1, #70
	mov	r0, #105
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, lr}
	b	drawSub
.L37:
	.align	2
.L36:
	.word	30348
	.word	fillScreen
	.word	18267
	.word	drawRect
	.word	32767
	.word	7609
	.word	drawString
	.word	.LC0
	.word	.LC1
	.size	drawStartScreen, .-drawStartScreen
	.align	2
	.global	drawGameScreen
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawGameScreen, %function
drawGameScreen:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r0, .L40
	sub	sp, sp, #8
	ldr	r3, .L40+4
	mov	lr, pc
	bx	r3
	ldr	r2, .L40+8
	mov	r3, #20
	str	r2, [sp]
	mov	r1, #145
	mov	r2, #240
	mov	r0, #0
	ldr	r4, .L40+12
	mov	lr, pc
	bx	r4
	add	sp, sp, #8
	@ sp needed
	pop	{r4, lr}
	bx	lr
.L41:
	.align	2
.L40:
	.word	30348
	.word	fillScreen
	.word	18267
	.word	drawRect
	.size	drawGameScreen, .-drawGameScreen
	.section	.rodata.str1.4
	.align	2
.LC2:
	.ascii	"PAUSED\000"
	.text
	.align	2
	.global	drawPauseScreen
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawPauseScreen, %function
drawPauseScreen:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L44
	sub	sp, sp, #8
	ldr	r3, .L44+4
	ldr	r0, .L44+8
	mov	lr, pc
	bx	r3
	mov	r2, r4
	mov	r1, #130
	mov	r0, #15
	bl	drawCoral
	mov	r2, r4
	mov	r1, #125
	mov	r0, #205
	bl	drawCoral
	ldr	r2, .L44+12
	mov	r3, #20
	str	r2, [sp]
	mov	r1, #140
	mov	r2, #240
	mov	r0, #0
	ldr	r4, .L44+16
	mov	lr, pc
	bx	r4
	mov	r1, #80
	mov	r0, #102
	ldr	r3, .L44+20
	ldr	r2, .L44+24
	ldr	r4, .L44+28
	mov	lr, pc
	bx	r4
	add	sp, sp, #8
	@ sp needed
	pop	{r4, lr}
	bx	lr
.L45:
	.align	2
.L44:
	.word	7609
	.word	fillScreen
	.word	30348
	.word	18267
	.word	drawRect
	.word	32767
	.word	.LC2
	.word	drawString
	.size	drawPauseScreen, .-drawPauseScreen
	.section	.rodata.str1.4
	.align	2
.LC3:
	.ascii	"You Lost :(\000"
	.text
	.align	2
	.global	drawLoseScreen
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawLoseScreen, %function
drawLoseScreen:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L48
	sub	sp, sp, #8
	ldr	r3, .L48+4
	ldr	r0, .L48+8
	mov	lr, pc
	bx	r3
	mov	r2, r4
	mov	r1, #130
	mov	r0, #15
	bl	drawCoral
	mov	r2, r4
	mov	r1, #125
	mov	r0, #205
	bl	drawCoral
	ldr	r2, .L48+12
	mov	r3, #20
	str	r2, [sp]
	mov	r1, #140
	mov	r2, #240
	mov	r0, #0
	ldr	r4, .L48+16
	mov	lr, pc
	bx	r4
	mov	r1, #80
	mov	r0, #87
	ldr	r3, .L48+20
	ldr	r2, .L48+24
	ldr	r4, .L48+28
	mov	lr, pc
	bx	r4
	mov	r1, #95
	mov	r0, #117
	add	sp, sp, #8
	@ sp needed
	pop	{r4, lr}
	b	drawBottle
.L49:
	.align	2
.L48:
	.word	17433
	.word	fillScreen
	.word	30348
	.word	18267
	.word	drawRect
	.word	32767
	.word	.LC3
	.word	drawString
	.size	drawLoseScreen, .-drawLoseScreen
	.section	.rodata.str1.4
	.align	2
.LC4:
	.ascii	"You Won!\000"
	.text
	.align	2
	.global	drawWinScreen
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawWinScreen, %function
drawWinScreen:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L52
	sub	sp, sp, #8
	ldr	r3, .L52+4
	ldr	r0, .L52+8
	mov	lr, pc
	bx	r3
	mov	r2, r4
	mov	r1, #130
	mov	r0, #15
	bl	drawCoral
	mov	r2, r4
	mov	r1, #125
	mov	r0, #205
	bl	drawCoral
	ldr	r2, .L52+12
	mov	r3, #20
	str	r2, [sp]
	mov	r1, #140
	mov	r2, #240
	mov	r0, #0
	ldr	r4, .L52+16
	mov	lr, pc
	bx	r4
	mov	r1, #80
	mov	r0, #100
	ldr	r3, .L52+20
	ldr	r2, .L52+24
	ldr	r4, .L52+28
	mov	lr, pc
	bx	r4
	mov	r1, #95
	mov	r0, #114
	add	sp, sp, #8
	@ sp needed
	pop	{r4, lr}
	b	drawFish
.L53:
	.align	2
.L52:
	.word	17401
	.word	fillScreen
	.word	30348
	.word	18267
	.word	drawRect
	.word	32767
	.word	.LC4
	.word	drawString
	.size	drawWinScreen, .-drawWinScreen
	.ident	"GCC: (devkitARM release 53) 9.1.0"
