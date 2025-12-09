.data 
arr: .word 5, 10, 15
size: .word 2
iterator: .word 0


.text
main:
la $t0, arr 
lw $t1, size 
lw $t2, iterator 

begin_loop:
  bgt $t2, $t1, exit_loop
  sll $t3, $t2, 2
  addu $t3, $t3, $t0

  lw $t6, 0($t3)
  addu $t7, $t7, $t6
  addi $t2, $t2, 1
  j begin_loop

exit_loop:

  li $v0, 1
  move $a0, $t7
  syscall 

  li $v0, 10
  syscall


