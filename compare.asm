.data
	message1: .asciiz "first number is less than second number"
	message2: .asciiz "first number is bigger than second number"
.text
	addi $t0, $zero, 30
	addi $t1, $zero, 20
	
	slt $s0, $t0, $t1
	beq $s0, $zero, bigger
	
	la $a0, message1
	li $v0, 4
	syscall
	
	li $v0, 10
	syscall
	
	bigger:
		li $v0, 4
		la $a0, message2
		syscall