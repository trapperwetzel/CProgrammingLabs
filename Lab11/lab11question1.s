.data
number1: .word 10
number2: .word 15
number3: .word 20

message: .asciiz "Maximum value = "

.text 

main: 
# load values 
  lw $t1, number1 
  lw $t2, number2 
  lw $t3, number3 
  
# assuming max is the first number 
  move $t4, $t1 

# check if number1 is less than number2
  blt $t4, $t2, make_max_2
  j print_max

make_max_2:
  move $t4, $t2
  j is_number3_max

make_max_3:
  move $t4, $t3

# check if current max is less than number3
is_number3_max:
  blt $t4, $t3, make_max_3
  j print_max

print_max:
    # Print the maximum
    li $v0, 4
    la $a0, message
    syscall

    li $v0, 1
    move $a0, $t4
    syscall

    # Exit
    li $v0, 10
    syscall
