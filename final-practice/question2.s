.data 

names: .space 12 #allocate 12 bytes of space 

T: .asciiz "T\n"
J: .asciiz "J\n"
C: .asciiz "C\n"

.text
  globl main 
main:
  la $t0, names
