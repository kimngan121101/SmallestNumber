.data
m0: .asciiz "Enter an integer: "
m1: .asciiz "The smallest number is: "

.text
li $v0, 4	
la $a0, m0	# print m0
syscall

li $v0, 5	# load the first int
syscall	
move $t1, $v0

beqz $t1, exit	# if int = 0, exit

L:
li $v0, 4	
la $a0, m0	# print m0
syscall

li $v0, 5	# load the next int
syscall	
move $t0, $v0

beqz $t0, exit	# if int = 0, exit

ble $t0, $t1, L1	# if $t0 <= $t1, go to L1
j L		# if $t0 > $t1, do nothing repeat the loop

L1: 
move $t1, $t0	# set $t1 = $t0
j L		# repeat the loop

exit: 
li $v0, 4	
la $a0, m1	# print m1
syscall

move $a0, $t1
li $v0,1	# print $t1 (smallest number)
syscall

li $v0, 10	# exit the system
syscall 
