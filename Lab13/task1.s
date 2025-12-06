.data

  
.text 
  .globl main

main: 
  li $t0, 4
  li $t1, 6
  li $t2, 10

  jal calculationprocedure

  li $v0, 1
  move $a0, $t4
  syscall

  li $v0, 10
  syscall


calculationprocedure:
 
  mul $t3, $t0, $t1 
  mul $t4, $t2, $t3
  jr $ra



