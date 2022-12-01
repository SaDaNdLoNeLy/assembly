.data
	message: .asciiz "Hello everybody\n"
.text
	main:
		addi $a1, $zero, 50
		addi $a2, $zero, 123
		jal addNumber
		
		li $v0, 1
		add $a0, $zero, $v1
		syscall
	li $v0, 10
	syscall
	
	displayMessage:
		li $v0, 4
		la $a0, message
		syscall
		
		jr $ra
	addNumber:
		add $v1, $a1, $a2
		jr $ra
	