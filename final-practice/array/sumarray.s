.data 

x: .word 1, 2, 3, 4, 5, 6, 7, 8, 9, 10
iterator: .word 0
size: .word 9
prompt: .asciiz "------------------------------------------\nThe total sum of the array is equal to: "
newline: .asciiz "\n------------------------------------------\n"

.text
  .globl main
main:

  la $s0, prompt
  la $t0, x 
  lw $t1, iterator 
  lw $t2, size 

begin_loop:
  bgt $t1, $t2, exit_loop 

  sll $t3, $t1, 2 #4 * i

  addu $t3, $t3, $t0 #x[i]

  lw $t6, 0($t3)

  addu $s7, $s7, $t6

  addi  $t1, $t1, 1

  j begin_loop

exit_loop:
  li $v0, 4
  la $a0, prompt
  syscall 

  li $v0, 1
  la $a0, ($s7)
  syscall 

  li $v0, 4
  la $a0, newline
  syscall 

  li $v0, 10
  syscall 

