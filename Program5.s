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
  @ Calcular el resultado de hacer operacion AND y una operacion OR entre las dos variables.
  @
  @ Entradas, procesos y salidas:
  @ ARM32
  @
  @ Errores a reportar / retroalimentar
  @ Ninguno

.text
.global main
main : mov r2, # 0b11110000 /* r2 <- 11110000 */
mov r3, # 0b10101010 /* r3 <- 10101010 */
and r0, r2, r3 /* r0 <- r2 AND r3 */
orr r1, r2, r3 /* r1 <- r2 OR r3 */
mvn r4, r0 /* r4 <- NOT r0 */
mov r0, # 0x80000000
tst r0, # 0x80000000
tst r0, # 0x40000000
bx lr

