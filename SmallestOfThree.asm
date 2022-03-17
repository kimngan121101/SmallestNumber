.data
msg1: .asciiz "Enter an integer: "

.text	
addi $v0, $zero, 4	
la $a0, msg1     	#print msg1
syscall 

li $v0, 5
syscall

add $t0, $v0, $zero	#$t0 = $v0

addi $v0, $zero, 4
la $a0, msg1    	#print msg1
syscall 

li $v0, 5
syscall

add $t1, $v0, $zero	#$t1 = $v0


addi $v0, $zero, 4
la $a0, msg1     	#print msg1
syscall 

li $v0, 5
syscall

add $t2, $v0, $zero	#$t2 = $v0

 blt $t0, $t1, L0
 blt $t1, $t0, L3


 li, $v0, 10
 syscall

 L0:
   blt $t0, $t2, L2
   blt $t2, $t0, L3

 L2:
   li $v0, 1
   move $a0, $t0
   syscall
   li, $v0, 10
   syscall

 L3:
   blt $t1, $t2, L4
   blt $t2, $t1, L5

 L4:
    li $v0, 1
    move $a0, $t1
    syscall
    li, $v0, 10
    syscall

 L5:
    li $v0, 1
    move $a0, $t2
    syscall
    li, $v0, 10
    syscall
 

li $v0, 10
syscall 