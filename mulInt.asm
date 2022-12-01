.data
	num1: .word 8
	num2: .word 10
.text
	#lw $t1, num1
	#lw $t2, num2
	#mul $t0, $t1, $t2
	#li $v0, 1
	#move $a0, $t0
	#syscall
	
	#addi $s0, $zero, 8
	#addi $s1, $zero, 10
	#mul $t0, $s0, $s0
	#li $v0, 1
	#add $a0, $zero, $t0
	#syscall
	
	addi $t0, $zero, 9
	addi $t1, $zero, 11
	mult $t0, $t1
	
	mflo $s0
	li $v0, 1
	add $a0, $zero, $s0
	syscall