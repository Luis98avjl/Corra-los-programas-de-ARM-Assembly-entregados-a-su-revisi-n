 @@ Instituto Tecnologico de Tijuana
 @@ Depto de Sistemas y Computación
 @@ Ing. En Sistemas Computacionales
 @@
 @@ Autor : Valenzuela Juarez Luis Angel 
 @@ NickName: Luis98avjl
 @@ Repositorio: https://github.com/Luis98avjl/Corra-los-programas-de-ARM-Assembly-entregados-a-su-revisi-n/tree/main
 @@ Fecha de revisión: 08/04/2022
 @@
  @ Objetivo del programa:  
  @ En este programa se comprobara el resultado de las flags con el ejercicio 1.2.
  @
  @ Entradas, procesos y salidas:
  @ ARM32
  @
  @ Errores a reportar / retroalimentar
  @ Ninguno

.data
var1 : .byte 0b00110010
.align
var2 : .byte 0b11000000
.align
.text
.global main
main : ldr r1, = var1 /* r1 <- & var1 */
ldrsb r1, [ r1 ] /* r1 <- *r1 */
ldr r2, = var2 /* r2 <- & var2 */
ldrsb r2, [ r2 ] /* r2 <- *r2 */
adds r0, r1, r2 /* r0 <- r1 + r2 */
bx lr

