.data 
  message: .asciiz "\nThe numbers are equal\n"
  message2: .asciiz "The numbers are not equal"

.text 
  main: 
    addi $t0, $zero, 5
    addi $t1, $zero, 5
    addi $t2, $zero, 6

    beq $t0, $t1, isEqual
    beq $t2, $t3, isEqual
    bne $t0, $t2, notEqual
    

    li $v0, 10
    syscall


  isEqual:
   li $v0, 4 
   la $a0, message
   syscall

  notEqual:
    li $v0, 4
    la $a0, message2
    syscall



