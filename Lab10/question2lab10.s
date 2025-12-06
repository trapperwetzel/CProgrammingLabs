.data
array: .word 1, 2, 5  # store an array of 3 integers 
resultarray: .space 12 

.text
  .globl main

main:
  la $t0, array # Load the base address of the array into $t0
  li $t1, 0 # Initalize index to 0
  la $t4, resultarray
array_loop:
  lw $t2, 0($t0) # Load array element
  
  mul $t3, $t2, $t2 #sqr
  sw $t3, 0($t4)


  move $a0, $t3  # Move element to $a0 for printing
  li $v0, 1 
  syscall

  addi $t4, $t4, 4
  addi $t0, $t0, 4 # move to next element
  addi $t1, $t1, 1 # increment index
  bne $t1, 3, array_loop # Loop until all elements are processed

li $v0, 10 #exit
syscall 

