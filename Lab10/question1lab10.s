.data
array: .word 10, 20, 30, 40, 50 # Declares an array of 5 integers


.text

main:
  la $t0, array # Load the base address of the array into $t0
  li $t1, 0 # Initalize index to 0
array_loop:
  lw $t2, 0($t0) # Load array element
  move $a0, $t2  # Move element to $a0 for printing
  li $v0, 1 
  syscall
  addi $t0, $t0, 4 # move to next element
  addi $t1, $t1, 1 #increment index
  bne $t1, 5, array_loop # Loop until all elements are processed

li $v0, 10 #exit
syscall 

