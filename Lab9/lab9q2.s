.data
A: .word 3
B: .word 1
C: .word 2
D: .word 4
R: .word 0

.text
  .globl main

main:
    lw $t0, A
    lw $t1, B
    lw $t2, C
    lw $t3, D

    sub $t4, $t0, $t1
    add $t5, $t2, $t3
    sub $t6, $t5, $t4

    sw $t6, R

    li $v0, 1
    move $a0, $t6
    syscall

    li $v0, 10
    syscall

