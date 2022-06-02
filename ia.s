	.arch armv6
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 4
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"ia.c"
	.text
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.arch armv6
	.syntax unified
	.arm
	.fpu vfp
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r2, lr}
	ldr	r0, .L12
	bl	printf
	add	r1, sp, #4
	ldr	r0, .L12+4
	bl	__isoc99_scanf
	ldr	r3, [sp, #4]
	cmp	r3, #10
	ldrls	pc, [pc, r3, asl #2]
	b	.L2
.L4:
	.word	.L8
	.word	.L8
	.word	.L8
	.word	.L8
	.word	.L8
	.word	.L8
	.word	.L8
	.word	.L7
	.word	.L6
	.word	.L5
	.word	.L3
.L8:
	ldr	r0, .L12+8
.L11:
	bl	printf
	mov	r0, #0
	add	sp, sp, #12
	@ sp needed
	ldr	pc, [sp], #4
.L7:
	ldr	r0, .L12+12
	b	.L11
.L6:
	ldr	r0, .L12+16
	b	.L11
.L5:
	ldr	r0, .L12+20
	b	.L11
.L3:
	ldr	r0, .L12+24
	b	.L11
.L2:
	ldr	r0, .L12+28
	b	.L11
.L13:
	.align	2
.L12:
	.word	.LC0
	.word	.LC1
	.word	.LC2
	.word	.LC3
	.word	.LC4
	.word	.LC5
	.word	.LC6
	.word	.LC7
	.size	main, .-main
	.section	.rodata.str1.1,"aMS",%progbits,1
.LC0:
	.ascii	"Inserte una nota:\000"
.LC1:
	.ascii	"%d\000"
.LC2:
	.ascii	"\012Reprobado :(\000"
.LC3:
	.ascii	"\012Aprobado\000"
.LC4:
	.ascii	"\012Bien\000"
.LC5:
	.ascii	"\012Notable\000"
.LC6:
	.ascii	"\012Sobresaliente\000"
.LC7:
	.ascii	"esa nota es incorrecta\000"
	.ident	"GCC: (Raspbian 8.3.0-6+rpi1) 8.3.0"
	.section	.note.GNU-stack,"",%progbits
