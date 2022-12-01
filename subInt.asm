.data
	number1: .word 2022
	number2: .word 2021
.text
	lw $t0, number1
	lw $t1, number2
	
	sub $t3, $t0, $t1
	
	li $v0, 1
	move $a0, $t3
	syscall