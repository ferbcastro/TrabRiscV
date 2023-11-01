.text
    addi sp,sp, 80
    addi sp, sp, -8
    addi t0, zero, 1 
    addi t1, zero, 1
    addi a0, zero, 0
    addi t3, zero, 20
    addi t6, zero, 2 # controla laco de repeticao
    sw t0, 0(sp)
    sw t1, 4(sp)
    jal ra, fib
    slli t6, t6, 4
    add sp, sp, t6 # libera stack
    ebreak 

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
    jalr zero, 0(ra)
    
