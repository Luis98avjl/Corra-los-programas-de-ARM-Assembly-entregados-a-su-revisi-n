/*---------------------------------------------------*/
/*		Sección de datos		     */
/*---------------------------------------------------*/
mensaje:	.ascii	"Inserte una nota:\000"
nota:		.ascii	"%d\000"
res1:		.ascii	"\012Reprobado :(\000"
res2:		.ascii	"\012Aprobado\000"
res3:		.ascii	"\012Bien\000"
res4:		.ascii	"\012Notable\000"
res5:		.ascii	"\012Sobresaliente\000"
error:		.ascii	"esa nota es incorrecta\000"
/*---------------------------------------------------*/
/*		Solución en Assembler		     */
/*---------------------------------------------------*/
.text
.global	main
main:	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	ldr	r0, =mensaje
	bl	printf
	sub	r3, fp, #8
	mov	r1, r3
	ldr	r0, =nota
	bl	__isoc99_scanf
	ldr	r3, [fp, #-8]
	cmp	r3, #10
	ldrls	pc, [pc, r3, asl #2]
	b	.L2
.L4:	.word	.L8
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
.L8:	ldr	r0, =res1
	bl	printf
	b	.L9
.L7:	ldr	r0, =res2
	bl	printf
	b	.L9
.L6:	ldr	r0, =res3
	bl	printf
	b	.L9
.L5:	ldr	r0, =res4
	bl	printf
	b	.L9
.L3:	ldr	r0, =res5
	bl	printf
	b	.L9
.L2:	ldr	r0, =error
	bl	printf
.L9:	mov	r3, #0
	mov	r0, r3
	sub	sp, fp, #4
	pop	{fp, pc}
