.data
	promt: .asciiz "Enter your age: "
	message: .asciiz "Your age is "
.text
	#print promt
	li $v0, 4
	la $a0, promt
	syscall
	
	#get int
	li $v0, 51
	syscall
	
	#store in $t0
	move $t0, $a0
	
	#Display
	li $v0, 4
	la $a0, message
	syscall
	li $v0, 1
	add $a0, $zero, $t0
	syscall