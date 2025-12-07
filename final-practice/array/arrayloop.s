.data 

T: .asciiz "T\n"
J: .asciiz "J\n"
C: .asciiz "C\n"
names: .word T, J, C

iterator: .word 0
size: .word 2


.text
main: 

la $t0, names
lw $t1, iterator
lw $t2, size 

begin_loop:

bgt $t1, $t2, exit_loop # If the iterator is greater than the size of the array, go to exit_loop

sll $t3, $t1, 2   # $t3 = 4 * i
addu $t3, $t3, $t0 # t3 = 4i + memory location of the name array -> ex) 1000 + 4 = 1004


li $v0, 4
lw $a0, 0($t3) # we have a offset of zero because we already dealt with the offset in the lines above. 
syscall 

addi, $t1, $t1, 1 # Add 1 the iterator each iteration. This is what does the actual iteration.

j begin_loop

exit_loop:
  #############
  #EXIT SYSCALL 
  #############
  li $v0, 10 #syscall for exiting 
  syscall 

