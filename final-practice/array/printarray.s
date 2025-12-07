.data 

names: .space 12 #allocate 12 bytes of space 

T: .asciiz "T\n"
J: .asciiz "J\n"
C: .asciiz "C\n"

.text

main:
  la $t0, names
  la $t1, T
  sw $t1, 0($t0) # 0 offset (first position in the array)
  
  la $t1, J
  sw $t1, 4($t0) # 4 offset (second position in the array)
  
  la $t1, C
  sw $t1, 8($t0) # 8 offset (third position in the array)



  ##########
  #PRINTING# 
  ##########
  li $v0, 4 #prepare print string to the users console 
  lw $a0, 0($t0)
  syscall 

  li $v0, 4 #prepare print string to the users console 
  lw $a0, 4($t0)
  syscall 

  li $v0, 4 #prepare print string to the users console 
  lw $a0, 8($t0)
  syscall 

  #############
  #EXIT SYSCALL 
  #############
  li $v0, 10 #syscall for exiting 
  syscall 

