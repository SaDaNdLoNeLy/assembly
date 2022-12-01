.data
	number1: .word 8
	number2: .word 10
.text
	lw $t0, number1
	lw $t1, number2
	
	add $t2, $t0, $t1
	li $v0, 1
	add $a0, $zero, $t2
	syscall
	