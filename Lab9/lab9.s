
.data
A: .word 10
B: .word 2
C: .word 5
R: .word 0

.text
  .globl main

main:
    lw $t0, A
    lw $t1, B
    lw $t2, C

    add $t3, $t0, $t1
    add $t4, $t3, $t2

    sw $t4, R

    li $v0, 1
    move $a0, $t4
    syscall

    li $v0, 10
    syscall

