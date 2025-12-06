
.data
 length: .word 5
 width: .word 10
 height: .word 15



.text
  .globl main

main:
  lw $a0, length
  lw $a1, width
  lw $a2, height

  jal calculate_area

  li $v0, 1
  move $a0, $t5
  syscall

  li $v0, 10
  syscall



calculate_area:
  mul $t0, $a0, $a1 # t0 = length * width  

  mul $t1, $a0, $a2 # t1 = length * height

  mul $t2, $a1, $a2 #t2 = width * height

  add $t4, $t0, $t1 #t4 = length*width + length*height 
  add $t4, $t4, $t2 #t4 = length*width + length*height + width*height
  mul $t5, $t4, 2

  jr $ra 
  




    
