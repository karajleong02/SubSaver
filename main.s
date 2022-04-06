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
	.file	"main.c"
	.text
	.align	2
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	win.part.0, %function
win.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L6
	ldrh	r3, [r3]
	push	{r4, lr}
	ands	r4, r3, #4
	beq	.L5
	pop	{r4, lr}
	bx	lr
.L5:
	ldr	r3, .L6+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L6+8
	str	r4, [r3]
	pop	{r4, lr}
	bx	lr
.L7:
	.align	2
.L6:
	.word	buttons
	.word	drawStartScreen
	.word	state
	.size	win.part.0, .-win.part.0
	.set	lose.part.0,win.part.0
	.align	2
	.global	initialize
	.syntax unified
	.arm
	.fpu softvfp
	.type	initialize, %function
initialize:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #67108864
	ldr	r1, .L10
	push	{r4, lr}
	ldr	r3, .L10+4
	strh	r1, [r2]	@ movhi
	mov	lr, pc
	bx	r3
	mov	r2, #0
	ldr	r3, .L10+8
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L11:
	.align	2
.L10:
	.word	1027
	.word	drawStartScreen
	.word	state
	.size	initialize, .-initialize
	.align	2
	.global	goToStart
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToStart, %function
goToStart:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L14
	mov	lr, pc
	bx	r3
	mov	r2, #0
	ldr	r3, .L14+4
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L15:
	.align	2
.L14:
	.word	drawStartScreen
	.word	state
	.size	goToStart, .-goToStart
	.align	2
	.global	start
	.syntax unified
	.arm
	.fpu softvfp
	.type	start, %function
start:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L23
	ldr	r3, [r4]
	ldr	r2, .L23+4
	add	r3, r3, #1
	str	r3, [r4]
	mov	lr, pc
	bx	r2
	ldr	r3, .L23+8
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L16
	ldr	r3, .L23+12
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L22
.L16:
	pop	{r4, lr}
	bx	lr
.L22:
	ldr	r3, .L23+16
	mov	lr, pc
	bx	r3
	mov	r1, #1
	ldr	r2, .L23+20
	ldr	r0, [r4]
	ldr	r3, .L23+24
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	ldr	r3, .L23+28
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L24:
	.align	2
.L23:
	.word	seed
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
	.word	drawGameScreen
	.word	state
	.word	srand
	.word	initGame
	.size	start, .-start
	.align	2
	.global	goToGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToGame, %function
goToGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L27
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r3, .L27+4
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L28:
	.align	2
.L27:
	.word	drawGameScreen
	.word	state
	.size	goToGame, .-goToGame
	.align	2
	.global	game
	.syntax unified
	.arm
	.fpu softvfp
	.type	game, %function
game:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L40
	mov	lr, pc
	bx	r3
	ldr	r3, .L40+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L40+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L40+12
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L30
	ldr	r3, .L40+16
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L37
.L30:
	ldr	r3, .L40+20
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L38
	ldr	r3, .L40+24
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L39
	pop	{r4, lr}
	bx	lr
.L39:
	ldr	r3, .L40+28
	mov	lr, pc
	bx	r3
	mov	r2, #3
	ldr	r3, .L40+32
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L38:
	ldr	r3, .L40+36
	mov	lr, pc
	bx	r3
	mov	r2, #4
	ldr	r3, .L40+32
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L37:
	ldr	r3, .L40+40
	mov	lr, pc
	bx	r3
	mov	r2, #2
	ldr	r3, .L40+32
	str	r2, [r3]
	b	.L30
.L41:
	.align	2
.L40:
	.word	updateGame
	.word	waitForVBlank
	.word	drawGame
	.word	oldButtons
	.word	buttons
	.word	fishRemaining
	.word	bottlesRemaining
	.word	drawWinScreen
	.word	state
	.word	drawLoseScreen
	.word	drawPauseScreen
	.size	game, .-game
	.align	2
	.global	goToPause
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToPause, %function
goToPause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L44
	mov	lr, pc
	bx	r3
	mov	r2, #2
	ldr	r3, .L44+4
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L45:
	.align	2
.L44:
	.word	drawPauseScreen
	.word	state
	.size	goToPause, .-goToPause
	.align	2
	.global	pause
	.syntax unified
	.arm
	.fpu softvfp
	.type	pause, %function
pause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L58
	ldrh	r3, [r4]
	tst	r3, #4
	beq	.L47
	ldr	r2, .L58+4
	ldrh	r2, [r2]
	tst	r2, #4
	beq	.L56
.L47:
	tst	r3, #8
	beq	.L46
	ldr	r3, .L58+4
	ldrh	r3, [r3]
	ands	r4, r3, #8
	beq	.L57
.L46:
	pop	{r4, lr}
	bx	lr
.L57:
	ldr	r3, .L58+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L58+12
	str	r4, [r3]
	pop	{r4, lr}
	bx	lr
.L56:
	ldr	r3, .L58+16
	mov	lr, pc
	bx	r3
	mov	r1, #1
	ldr	r2, .L58+12
	ldrh	r3, [r4]
	str	r1, [r2]
	b	.L47
.L59:
	.align	2
.L58:
	.word	oldButtons
	.word	buttons
	.word	drawStartScreen
	.word	state
	.word	drawGameScreen
	.size	pause, .-pause
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu softvfp
	.type	main, %function
main:
	@ Function supports interworking.
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #67108864
	ldr	r1, .L74
	push	{r4, r7, fp, lr}
	ldr	r3, .L74+4
	strh	r1, [r2]	@ movhi
	mov	lr, pc
	bx	r3
	mov	r2, #0
	ldr	r6, .L74+8
	ldr	r10, .L74+12
	str	r2, [r6]
	ldrh	r0, [r10]
	ldr	r5, .L74+16
	ldr	r9, .L74+20
	ldr	r8, .L74+24
	ldr	r7, .L74+28
	ldr	fp, .L74+32
	ldr	r4, .L74+36
.L62:
	strh	r0, [r5]	@ movhi
	ldrh	r3, [r4, #48]
	strh	r3, [r10]	@ movhi
	cmp	r2, #4
	ldrls	pc, [pc, r2, asl #2]
	b	.L70
.L64:
	.word	.L68
	.word	.L67
	.word	.L66
	.word	.L65
	.word	.L63
.L63:
	tst	r0, #4
	beq	.L70
	ldr	r3, .L74+40
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [r10]
	b	.L62
.L65:
	tst	r0, #4
	beq	.L70
	mov	lr, pc
	bx	fp
	ldr	r2, [r6]
	ldrh	r0, [r10]
	b	.L62
.L66:
	mov	lr, pc
	bx	r7
	ldr	r2, [r6]
	ldrh	r0, [r10]
	b	.L62
.L67:
	mov	lr, pc
	bx	r8
	ldr	r2, [r6]
	ldrh	r0, [r10]
	b	.L62
.L68:
	mov	lr, pc
	bx	r9
	ldr	r2, [r6]
	ldrh	r0, [r10]
	b	.L62
.L70:
	mov	r0, r3
	b	.L62
.L75:
	.align	2
.L74:
	.word	1027
	.word	drawStartScreen
	.word	state
	.word	buttons
	.word	oldButtons
	.word	start
	.word	game
	.word	pause
	.word	win.part.0
	.word	67109120
	.word	lose.part.0
	.size	main, .-main
	.text
	.align	2
	.global	goToWin
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToWin, %function
goToWin:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L78
	mov	lr, pc
	bx	r3
	mov	r2, #3
	ldr	r3, .L78+4
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L79:
	.align	2
.L78:
	.word	drawWinScreen
	.word	state
	.size	goToWin, .-goToWin
	.align	2
	.global	win
	.syntax unified
	.arm
	.fpu softvfp
	.type	win, %function
win:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L82
	ldrh	r3, [r3]
	tst	r3, #4
	bxeq	lr
	b	win.part.0
.L83:
	.align	2
.L82:
	.word	oldButtons
	.size	win, .-win
	.align	2
	.global	goToLose
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToLose, %function
goToLose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L86
	mov	lr, pc
	bx	r3
	mov	r2, #4
	ldr	r3, .L86+4
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L87:
	.align	2
.L86:
	.word	drawLoseScreen
	.word	state
	.size	goToLose, .-goToLose
	.align	2
	.global	lose
	.syntax unified
	.arm
	.fpu softvfp
	.type	lose, %function
lose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	win
	.size	lose, .-lose
	.comm	seed,4,4
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.comm	state,4,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
