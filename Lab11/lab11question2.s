.data
number1: .word 10
number2: .word 50
number3: .word 30

message: .asciiz "Maximum value = "
newline: .asciiz "\n"
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
    # Print number1
    li $v0, 1
    move $a0, $t1
    syscall

    # Print newline
    li $v0, 4
    la $a0, newline
    syscall

    # Print number2
    li $v0, 1
    move $a0, $t2
    syscall

    # Print newline
    li $v0, 4
    la $a0, newline
    syscall

    # Print number3
    li $v0, 1
    move $a0, $t3
    syscall

    # Print newline
    li $v0, 4
    la $a0, newline
    syscall

    # Print message
    li $v0, 4
    la $a0, message
    syscall

    # Print max
    li $v0, 1
    move $a0, $t4
    syscall

    # Exit
    li $v0, 10
    syscall
