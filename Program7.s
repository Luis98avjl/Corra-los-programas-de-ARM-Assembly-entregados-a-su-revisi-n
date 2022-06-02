 @@ Instituto Tecnologico de Tijuana
 @@ Depto de Sistemas y Computación
 @@ Ing. En Sistemas Computacionales
 @@
 @@ Autor : Valenzuela Juarez Luis Angel 
 @@ NickName: Luis98avjl
 @@ Repositorio: https://github.com/Luis98avjl/Corra-los-programas-de-ARM-Assembly-entregados-a-su-revisi-n/tree/main 
 @@ Fecha de revisión: 02/06/2022
 @@
  @ Objetivo del programa: 
  @ La instruccion tst hace la operacion and entre un registro y una mascara y solo actua sobre los flags.
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
