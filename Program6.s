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
  @ El resultado de la intruccion and esta en r0. Cual sera el resultado de hacer un compelmento a uno del mismo.
  @
  @ Entradas, procesos y salidas:
  @ ARM32
  @
  @ Errores a reportar / retroalimentar
  @ Ninguno

.data
var1 : .word 0x80000000
.text
.global main
main : ldr r0, = var1 /* r0 <- & var1 */
ldr r1, [ r0 ] /* r1 <- *r0 */
LSRs r1, r1, #1 /* r1 <- r1 LSR #1 */
LSRs r1, r1, #3 /* r1 <- r1 LSR #3 */
ldr r2, [ r0 ] /* r2 <- *r0 */
ASRs r2, r2, #1 /* r2 <- r2 ASR #1 */
ASRs r2, r2, #3 /* r2 <- r2 ASR #3 */
ldr r3, [ r0 ] /* r3 <- *r0 */
RORs r3, r3, # 31 /* r3 <- r3 ROL #1 */
RORs r3, r3, # 31 /* r3 <- r3 ROL #1 */
RORs r3, r3, # 24 /* r3 <- r3 ROL #8 */
ldr r4, [ r0 ] /* r4 <- *r0 */
msr cpsr_f, #0 /* C=0 */
adcs r4, r4, r4 /* rotar izda carry */
adcs r4, r4, r4 /* rotar izda carry */
adcs r4, r4, r4 /* rotar izda carry */
msr cpsr_f, # 0x20000000 /* C=1 */
adcs r4, r4, r4 /* rotar izda carry */
bx lr

