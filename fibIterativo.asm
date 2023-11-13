.text
    addi a2, zero, 20
    addi a3, zero, 1 
    addi a4, zero, 1
    sw a3, 0(sp)
    addi sp, sp, 4
    sw a4, 0(sp)
    jal ra, fib

fib:
    addi t6, zero, 2 
    addi t3, zero, 0 
for:    
    bge t6, a2, fora_for
    add t3, a3, a4
    addi sp, sp, 4
    sw t3, 0(sp)
    addi a3, a4, 0
    addi a4, t3, 0
    addi t6, t6, 1
    jal zero, for

fora_for:
    jalr zero, 0(ra)
    
