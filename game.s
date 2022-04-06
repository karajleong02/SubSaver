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
	.file	"game.c"
	.text
	.align	2
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateBottles.part.0, %function
updateBottles.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, [r0]
	ldr	r3, [r0, #32]
	sub	r3, r2, r3
	cmn	r3, #29
	movcs	r3, #0
	movcc	r3, #1
	cmp	r2, #0
	orrle	r3, r3, #1
	push	{r4, r5, r6, r7, r8, r9, lr}
	cmp	r3, #0
	mov	r5, r0
	ldr	r3, [r0, #16]
	sub	sp, sp, #20
	beq	.L14
.L2:
	rsb	r3, r3, #0
	str	r3, [r5, #16]
.L3:
	mov	r7, #0
	ldr	r4, .L16
	add	r2, r2, r3
	str	r2, [r5]
	ldr	r8, .L16+4
	ldr	r9, .L16+8
	add	r6, r4, #200
.L7:
	ldr	r3, [r4, #32]
	cmp	r3, #0
	bne	.L15
.L5:
	add	r4, r4, #40
	cmp	r4, r6
	bne	.L7
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L15:
	add	r0, r5, #24
	ldm	r0, {r0, r1}
	ldm	r5, {r2, r3}
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	ldr	r2, [r4, #24]
	ldr	r3, [r4, #20]
	ldr	r1, [r4]
	ldr	r0, [r4, #4]
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	ldrne	r3, [r9]
	subne	r3, r3, #1
	strne	r7, [r4, #32]
	strne	r3, [r9]
	strne	r7, [r5, #36]
	b	.L5
.L14:
	ldr	r1, [r0, #24]
	add	r1, r2, r1
	cmp	r1, #145
	ble	.L3
	b	.L2
.L17:
	.align	2
.L16:
	.word	bullets
	.word	collision
	.word	bottlesRemaining
	.size	updateBottles.part.0, .-updateBottles.part.0
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateFishy.part.0, %function
updateFishy.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, lr}
	ldr	r5, .L34
	ldr	r3, [r5]
	cmp	r3, #0
	ldr	r0, [r5, #16]
	sub	sp, sp, #20
	ble	.L19
	ldr	r2, [r5, #24]
	add	r2, r3, r2
	cmp	r2, #140
	bgt	.L19
	ldr	r2, [r5, #4]
	cmp	r2, #50
	ldr	r1, [r5, #20]
	ble	.L21
.L33:
	ldr	ip, [r5, #28]
	add	ip, r2, ip
	cmp	ip, #234
	bgt	.L21
.L22:
	mov	r7, #0
	ldr	r4, .L34+4
	add	r3, r3, r0
	add	r2, r2, r1
	str	r3, [r5]
	str	r2, [r5, #4]
	ldr	r8, .L34+8
	ldr	r9, .L34+12
	add	r6, r4, #200
.L26:
	ldr	r3, [r4, #32]
	cmp	r3, #0
	bne	.L32
.L24:
	add	r4, r4, #40
	cmp	r4, r6
	bne	.L26
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L19:
	ldr	r2, [r5, #4]
	rsb	r0, r0, #0
	cmp	r2, #50
	str	r0, [r5, #16]
	ldr	r1, [r5, #20]
	bgt	.L33
.L21:
	rsb	r1, r1, #0
	str	r1, [r5, #20]
	b	.L22
.L32:
	add	r0, r5, #24
	ldm	r0, {r0, r1}
	ldm	r5, {r2, r3}
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	ldr	r2, [r4, #24]
	ldr	r3, [r4, #20]
	ldr	r1, [r4]
	ldr	r0, [r4, #4]
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	ldrne	r3, [r9]
	subne	r3, r3, #1
	strne	r7, [r4, #32]
	strne	r3, [r9]
	b	.L24
.L35:
	.align	2
.L34:
	.word	fishy
	.word	bullets
	.word	collision
	.word	fishRemaining
	.size	updateFishy.part.0, .-updateFishy.part.0
	.align	2
	.global	initSubmarine
	.syntax unified
	.arm
	.fpu softvfp
	.type	initSubmarine, %function
initSubmarine:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r1, #71
	mov	r4, #1
	mov	lr, #18
	mov	r2, #15
	mov	ip, #30
	mov	r0, #20
	ldr	r3, .L38
	str	r4, [r3, #16]
	str	lr, [r3, #20]
	str	r1, [r3]
	str	r1, [r3, #8]
	str	ip, [r3, #24]
	str	r0, [r3, #28]
	str	r2, [r3, #4]
	str	r2, [r3, #12]
	pop	{r4, lr}
	bx	lr
.L39:
	.align	2
.L38:
	.word	submarine
	.size	initSubmarine, .-initSubmarine
	.align	2
	.global	drawSubmarine
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawSubmarine, %function
drawSubmarine:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L42
	ldr	r3, .L42+4
	ldr	r1, [r4, #8]
	ldr	r0, [r4, #12]
	mov	lr, pc
	bx	r3
	ldr	r1, [r4]
	ldr	r0, [r4, #4]
	ldr	r3, .L42+8
	mov	lr, pc
	bx	r3
	ldr	r2, [r4, #4]
	ldr	r3, [r4]
	str	r2, [r4, #12]
	str	r3, [r4, #8]
	pop	{r4, lr}
	bx	lr
.L43:
	.align	2
.L42:
	.word	submarine
	.word	eraseSub
	.word	drawSub
	.size	drawSubmarine, .-drawSubmarine
	.align	2
	.global	initBullet
	.syntax unified
	.arm
	.fpu softvfp
	.type	initBullet, %function
initBullet:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	r2, #0
	mov	r7, #1
	mov	r6, #2
	mvn	r5, #0
	mov	r4, #3
	mvn	lr, #32768
	ldr	r1, .L48
	ldr	r3, .L48+4
	ldr	ip, [r1]
	ldr	r0, [r1, #4]
	add	r1, r3, #200
.L45:
	str	r7, [r3, #20]
	str	r6, [r3, #24]
	str	r5, [r3]
	str	r0, [r3, #12]
	str	r4, [r3, #16]
	strh	lr, [r3, #28]	@ movhi
	str	r2, [r3, #32]
	stmib	r3, {r2, ip}
	add	r3, r3, #40
	cmp	r3, r1
	bne	.L45
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L49:
	.align	2
.L48:
	.word	submarine
	.word	bullets
	.size	initBullet, .-initBullet
	.align	2
	.global	fireBullet
	.syntax unified
	.arm
	.fpu softvfp
	.type	fireBullet, %function
fireBullet:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r0, .L61
	mov	r2, r0
	ldr	r1, [r2, #32]
	cmp	r1, #0
	mov	r3, #0
	beq	.L60
.L51:
	add	r3, r3, #1
	cmp	r3, #5
	add	r2, r2, #40
	bxeq	lr
	ldr	r1, [r2, #32]
	cmp	r1, #0
	bne	.L51
.L60:
	push	{r4, r5, r6, lr}
	mov	r5, #1
	ldr	r6, .L61+4
	add	r3, r3, r3, lsl #2
	ldr	r2, [r6, #20]
	add	ip, r0, r3, lsl #3
	add	r4, r2, r2, lsr #31
	ldr	lr, [ip, #20]
	ldm	r6, {r2, r6}
	add	lr, lr, lr, lsr #31
	add	r2, r2, r4, asr r5
	add	r2, r2, lr, asr r5
	add	lr, r6, #30
	str	lr, [ip, #4]
	str	r5, [ip, #32]
	str	r1, [ip, #36]
	str	r2, [r0, r3, lsl #3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L62:
	.align	2
.L61:
	.word	bullets
	.word	submarine
	.size	fireBullet, .-fireBullet
	.align	2
	.global	updateSubmarine
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateSubmarine, %function
updateSubmarine:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L74
	ldrh	r3, [r3, #48]
	tst	r3, #64
	push	{r4, lr}
	ldr	r4, .L74+4
	bne	.L64
	ldr	r3, [r4]
	ldr	r2, [r4, #16]
	cmp	r3, r2
	subge	r3, r3, r2
	strge	r3, [r4]
	blt	.L64
.L65:
	ldr	r3, .L74+8
	ldrh	r3, [r3]
	tst	r3, #2
	ldr	r3, [r4, #28]
	beq	.L73
	ldr	r2, .L74+12
	ldrh	r2, [r2]
	tst	r2, #2
	beq	.L68
.L73:
	add	r3, r3, #1
.L67:
	str	r3, [r4, #28]
	pop	{r4, lr}
	bx	lr
.L64:
	ldr	r3, .L74
	ldrh	r3, [r3, #48]
	tst	r3, #128
	bne	.L65
	add	r1, r4, #16
	ldr	r2, [r4]
	ldm	r1, {r1, r3}
	add	r3, r2, r3
	rsb	r0, r1, #160
	cmp	r3, r0
	addle	r2, r2, r1
	strle	r2, [r4]
	b	.L65
.L68:
	cmp	r3, #19
	ble	.L73
	bl	fireBullet
	mov	r3, #1
	b	.L67
.L75:
	.align	2
.L74:
	.word	67109120
	.word	submarine
	.word	oldButtons
	.word	buttons
	.size	updateSubmarine, .-updateSubmarine
	.align	2
	.global	updateGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateGame, %function
updateGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	bl	updateSubmarine
	mov	ip, #0
	ldr	r3, .L92
	add	r0, r3, #200
.L79:
	ldr	r2, [r3, #32]
	cmp	r2, #0
	beq	.L77
	ldr	r1, [r3, #4]
	ldr	r2, [r3, #24]
	add	r2, r1, r2
	cmp	r2, #235
	ldrle	r2, [r3, #16]
	addle	r1, r2, r1
	strle	r1, [r3, #4]
	strgt	ip, [r3, #32]
.L77:
	add	r3, r3, #40
	cmp	r3, r0
	bne	.L79
	ldr	r4, .L92+4
	add	r5, r4, #264
.L81:
	ldr	r3, [r4, #36]
	cmp	r3, #0
	movne	r0, r4
	blne	updateBottles.part.0
.L80:
	add	r4, r4, #44
	cmp	r4, r5
	bne	.L81
	ldr	r3, .L92+8
	ldr	r3, [r3, #32]
	cmp	r3, #0
	popne	{r4, r5, r6, lr}
	bne	updateFishy.part.0
.L76:
	pop	{r4, r5, r6, lr}
	bx	lr
.L93:
	.align	2
.L92:
	.word	bullets
	.word	bottles
	.word	fishy
	.size	updateGame, .-updateGame
	.align	2
	.global	updateBullet
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateBullet, %function
updateBullet:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #32]
	cmp	r3, #0
	bxeq	lr
	ldr	r2, [r0, #4]
	ldr	r3, [r0, #24]
	add	r3, r2, r3
	cmp	r3, #235
	movgt	r3, #0
	ldrle	r3, [r0, #16]
	addle	r2, r3, r2
	strle	r2, [r0, #4]
	strgt	r3, [r0, #32]
	bx	lr
	.size	updateBullet, .-updateBullet
	.align	2
	.global	drawBullet
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawBullet, %function
drawBullet:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	ldr	r3, [r0, #32]
	cmp	r3, #0
	mov	r4, r0
	sub	sp, sp, #12
	bne	.L104
	ldr	r3, [r0, #36]
	cmp	r3, #0
	beq	.L105
.L102:
	ldm	r4, {r2, r3}
	str	r2, [r4, #8]
	str	r3, [r4, #12]
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L105:
	ldr	r2, .L106
	ldr	r3, [r0, #20]
	str	r2, [sp]
	ldr	r5, .L106+4
	ldr	r2, [r0, #24]
	ldr	r1, [r0, #8]
	ldr	r0, [r0, #12]
	mov	lr, pc
	bx	r5
	mov	r3, #1
	str	r3, [r4, #36]
	b	.L102
.L104:
	ldr	r2, .L106
	ldr	r3, [r0, #20]
	str	r2, [sp]
	ldr	r5, .L106+4
	ldr	r2, [r0, #24]
	ldr	r1, [r0, #8]
	ldr	r0, [r0, #12]
	mov	lr, pc
	bx	r5
	ldrh	r2, [r4, #28]
	ldr	r3, [r4, #20]
	str	r2, [sp]
	ldr	r2, [r4, #24]
	ldr	r1, [r4]
	ldr	r0, [r4, #4]
	mov	lr, pc
	bx	r5
	b	.L102
.L107:
	.align	2
.L106:
	.word	30348
	.word	drawRect
	.size	drawBullet, .-drawBullet
	.align	2
	.global	initBottles
	.syntax unified
	.arm
	.fpu softvfp
	.type	initBottles, %function
initBottles:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r9, #1
	ldr	r4, .L112
	ldr	r5, .L112+4
	ldr	r8, .L112+8
	ldr	r7, .L112+12
	add	r6, r4, #264
.L109:
	mov	lr, pc
	bx	r5
	smull	r3, r2, r8, r0
	asr	r3, r0, #31
	add	r2, r2, r0
	rsb	r3, r3, r2, asr #6
	rsb	r3, r3, r3, lsl #3
	rsb	r3, r3, r3, lsl #4
	sub	r0, r0, r3
	add	r0, r0, #25
	str	r0, [r4]
	mov	lr, pc
	bx	r5
	mov	ip, #15
	mov	r1, #6
	mov	r2, #0
	smull	r3, lr, r7, r0
	asr	r3, r0, #31
	add	lr, lr, r0
	rsb	r3, r3, lr, asr #7
	add	r3, r3, r3, lsl #1
	rsb	r3, r3, r3, lsl #4
	sub	r0, r0, r3, lsl #2
	ldr	r3, [r4]
	add	r0, r0, #50
	str	r9, [r4, #16]
	str	r9, [r4, #20]
	str	r9, [r4, #36]
	str	r0, [r4, #4]
	str	r0, [r4, #12]
	str	ip, [r4, #24]
	str	r1, [r4, #28]
	str	r2, [r4, #40]
	str	r3, [r4, #8]
	str	r3, [r4, #32]
	add	r4, r4, #44
	cmp	r4, r6
	bne	.L109
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L113:
	.align	2
.L112:
	.word	bottles
	.word	rand
	.word	-1677082467
	.word	-1240768329
	.size	initBottles, .-initBottles
	.align	2
	.global	updateBottles
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateBottles, %function
updateBottles:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #36]
	cmp	r3, #0
	bxeq	lr
	b	updateBottles.part.0
	.size	updateBottles, .-updateBottles
	.align	2
	.global	drawBottles
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawBottles, %function
drawBottles:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #36]
	cmp	r3, #0
	push	{r4, lr}
	mov	r4, r0
	bne	.L120
	ldr	r3, [r0, #40]
	cmp	r3, #0
	beq	.L121
.L118:
	ldm	r4, {r2, r3}
	str	r2, [r4, #8]
	str	r3, [r4, #12]
	pop	{r4, lr}
	bx	lr
.L121:
	ldr	r1, [r0, #8]
	ldr	r3, .L122
	ldr	r0, [r0, #12]
	mov	lr, pc
	bx	r3
	mov	r3, #1
	str	r3, [r4, #40]
	b	.L118
.L120:
	ldr	r1, [r0, #8]
	ldr	r3, .L122
	ldr	r0, [r0, #12]
	mov	lr, pc
	bx	r3
	ldr	r1, [r4]
	ldr	r0, [r4, #4]
	ldr	r3, .L122+4
	mov	lr, pc
	bx	r3
	b	.L118
.L123:
	.align	2
.L122:
	.word	eraseBottle
	.word	drawBottle
	.size	drawBottles, .-drawBottles
	.align	2
	.global	initFishy
	.syntax unified
	.arm
	.fpu softvfp
	.type	initFishy, %function
initFishy:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r5, .L126
	mov	lr, pc
	bx	r5
	ldr	r2, .L126+4
	smull	r3, r2, r0, r2
	asr	r3, r0, #31
	add	r2, r2, r0
	rsb	r3, r3, r2, asr #6
	ldr	r4, .L126+8
	rsb	r3, r3, r3, lsl #4
	sub	r0, r0, r3, lsl #3
	str	r0, [r4]
	mov	lr, pc
	bx	r5
	mov	lr, #6
	mov	r2, #1
	mov	r5, #15
	mov	ip, #0
	ldr	r3, .L126+12
	smull	r6, r1, r3, r0
	asr	r3, r0, #31
	rsb	r3, r3, r1, asr lr
	add	r3, r3, r3, lsl #2
	add	r3, r3, r3, lsl #4
	ldr	r1, [r4]
	sub	r0, r0, r3, lsl r2
	add	r0, r0, #60
	str	r1, [r4, #8]
	str	r5, [r4, #24]
	str	lr, [r4, #28]
	str	ip, [r4, #36]
	str	r0, [r4, #4]
	str	r0, [r4, #12]
	str	r2, [r4, #16]
	str	r2, [r4, #20]
	str	r2, [r4, #32]
	pop	{r4, r5, r6, lr}
	bx	lr
.L127:
	.align	2
.L126:
	.word	rand
	.word	-2004318071
	.word	fishy
	.word	1616928865
	.size	initFishy, .-initFishy
	.align	2
	.global	initGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	initGame, %function
initGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r8, #71
	mov	r9, #1
	ldr	r2, .L132
	mov	r7, #15
	str	r8, [r2]
	str	r8, [r2, #8]
	mov	fp, #18
	mov	r10, #30
	mov	r6, r8
	mov	r8, #20
	mov	lr, r9
	mov	ip, #2
	mvn	r0, #0
	mov	r3, #0
	mov	r4, #3
	mvn	r1, #32768
	str	r7, [r2, #4]
	str	r7, [r2, #12]
	mov	r5, r7
	ldr	r7, .L132+4
	str	fp, [r2, #20]
	str	r10, [r2, #24]
	str	r8, [r2, #28]
	str	r9, [r2, #16]
	add	r2, r7, #200
.L129:
	str	lr, [r7, #20]
	str	ip, [r7, #24]
	str	r5, [r7, #12]
	str	r4, [r7, #16]
	strh	r1, [r7, #28]	@ movhi
	str	r3, [r7, #32]
	stm	r7, {r0, r3, r6}
	add	r7, r7, #40
	cmp	r7, r2
	bne	.L129
	bl	initBottles
	bl	initFishy
	mov	r1, #6
	ldr	r3, .L132+8
	ldr	r2, .L132+12
	str	r4, [r3]
	str	r1, [r2]
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L133:
	.align	2
.L132:
	.word	submarine
	.word	bullets
	.word	fishRemaining
	.word	bottlesRemaining
	.size	initGame, .-initGame
	.align	2
	.global	updateFishy
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateFishy, %function
updateFishy:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L136
	ldr	r3, [r3, #32]
	cmp	r3, #0
	bxeq	lr
	b	updateFishy.part.0
.L137:
	.align	2
.L136:
	.word	fishy
	.size	updateFishy, .-updateFishy
	.align	2
	.global	drawFishy
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawFishy, %function
drawFishy:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L145
	ldr	r3, [r4, #32]
	cmp	r3, #0
	bne	.L144
.L139:
	ldm	r4, {r2, r3}
	str	r2, [r4, #8]
	str	r3, [r4, #12]
	pop	{r4, lr}
	bx	lr
.L144:
	ldr	r1, [r4, #8]
	ldr	r0, [r4, #12]
	ldr	r3, .L145+4
	mov	lr, pc
	bx	r3
	ldr	r1, [r4]
	ldr	r0, [r4, #4]
	ldr	r3, .L145+8
	mov	lr, pc
	bx	r3
	b	.L139
.L146:
	.align	2
.L145:
	.word	fishy
	.word	eraseFish
	.word	drawFish
	.size	drawFishy, .-drawFishy
	.align	2
	.global	drawGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawGame, %function
drawGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r5, .L149
	bl	drawSubmarine
	bl	drawFishy
	mov	r0, r5
	bl	drawBullet
	add	r0, r5, #40
	bl	drawBullet
	add	r0, r5, #80
	ldr	r4, .L149+4
	bl	drawBullet
	add	r0, r5, #120
	bl	drawBullet
	add	r0, r5, #160
	bl	drawBullet
	mov	r0, r4
	bl	drawBottles
	add	r0, r4, #44
	bl	drawBottles
	add	r0, r4, #88
	bl	drawBottles
	add	r0, r4, #132
	bl	drawBottles
	add	r0, r4, #176
	bl	drawBottles
	add	r0, r4, #220
	pop	{r4, r5, r6, lr}
	b	drawBottles
.L150:
	.align	2
.L149:
	.word	bullets
	.word	bottles
	.size	drawGame, .-drawGame
	.comm	fishRemaining,4,4
	.comm	bottlesRemaining,4,4
	.comm	fishy,40,4
	.comm	bottles,264,4
	.comm	bullets,200,4
	.comm	submarine,32,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
