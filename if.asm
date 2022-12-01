.data
	message1: .asciiz "They are equal"
	message2: .asciiz "Nothing"
.text
	main:
		
		addi $t0, $zero, 10
		addi $t1, $zero, 20
		beq $t0, $t1, equal
		bne $t0, $t1, notEqual
	
	
	#End
	li $v0, 10
	syscall
	
	equal:
		li $v0, 4
		la $a0, message1
		syscall
	notEqual:
		li $v0, 4
		la $a0, message2
		syscall
		