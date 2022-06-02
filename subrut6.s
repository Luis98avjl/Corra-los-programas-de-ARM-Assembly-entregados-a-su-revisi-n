poly3 : sub sp, # 4
ldr r12, [ sp, # param5 ]
smlabb r3, r2, r12, r3
smulbb r2, r12, r12
smlabb r3, r1, r2, r3
smulbb r2, r2, r12
smlabb r0, r0, r2, r3
add sp, # 4
bx lr
