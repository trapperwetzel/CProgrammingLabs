
.data
fib:    .space 40          # array of 10 integers (10 * 4 bytes)
space:  .asciiz " "

.text
.globl main

main:
    # Initialize first two Fibonacci numbers
    li $t0, 0              # fib[0] = 0
    li $t1, 1              # fib[1] = 1
    la $t2, fib            # base address of array

    sw $t0, 0($t2)         # store fib[0]
    addi $t2, $t2, 4       # move to next array address
    sw $t1, 4($t2)         # store fib[1]

    addi $t2, $t2, 4       # move to next array address

    li $t3, 1             # index = 2

gen_loop:
    bge $t3, 10, print     # if index >= 10, go print

    add $t4, $t0, $t1      # next = previous + current

    addi $t2, $t2, 4       # move to next array address

    sw $t4, 0($t2)         # store value
    
    #shift values
    move $t0, $t1
    move $t1, $t4

    addi $t3, $t3, 1       # index++

    j gen_loop

print:
    la $t2, fib
    li $t3, 0

print_loop:
    bge $t3, 10, exit

    lw $a0, 0($t2)         # load number
    li $v0, 1
    syscall

    # print space
    la $a0, space
    li $v0, 4
    syscall

    addi $t2, $t2, 4
    addi $t3, $t3, 1
    j print_loop

exit:

    li $v0, 10
    syscall

