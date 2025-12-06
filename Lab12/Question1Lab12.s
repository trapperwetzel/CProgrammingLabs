# Sum the elements of an integer array and prints the result.

.data
array:      .word 5, 10, 15, 20, 25   # example array (5 elements)
length:     .word 5
msgResult:  .asciiz "Sum = "

.text
.globl main

main:
    # load base address of array and its length
    la   $t0, array        # loads base address into $t0
    lw   $t1, length       

    li   $t2, 0            # sum = 0
    li   $t3, 0            # i = 0

loop_sum:
    beq  $t3, $t1, done_sum   # if i == length, exit loop

    sll  $t4, $t3, 2          # $t4 = i * 4 
    add  $t5, $t0, $t4        # $t5 = &array[i]

    lw   $t6, 0($t5)          # Actually holds the value at the memory address 

    add  $t2, $t2, $t6        # sum += array[i]

    addi $t3, $t3, 1          # i++
    j    loop_sum

done_sum:
    li   $v0, 4
    la   $a0, msgResult
    syscall

    # print sum
    li   $v0, 1
    move $a0, $t2
    syscall

    # exit
    li   $v0, 10
    syscall

