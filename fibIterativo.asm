.data
tam:    .word 20

.text
    la t3, tam
    lw t3, 0(t3) # carrega tam para t3

    addi sp, sp, -8
    addi t0, zero, 1 
    addi t1, zero, 1
    addi a0, zero, 0
    addi t6, zero, 2 # controla laco de repeticao
    sw t0, 0(sp)
    sw t1, 0(sp)
    jal ra, fib
    slli t6, t6, 4
    add sp, sp, t6 # libera stack
    li a7, 10
    ecall

fib:
    bge t6, t3, fora_for
    addi t6, t6, 1
    add a0, t1, t0
    addi sp, sp, -4
    sw t2, 0(sp)
    addi t0, t1, 0
    addi t1, a0, 0
    jal zero, fib

fora_for:
    li a7, 1
    ecall
    jalr zero, 0(ra)
    
