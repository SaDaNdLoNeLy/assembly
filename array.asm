.data
	array: .space 12
	nl: .asciiz "\n"
.text
	addi $s0, $zero, 4
	addi $s1, $zero, 6
	addi $s2, $zero, 7
	
	#Have to make index ($t0)
	addi $t0, $zero, 0
	
	sw $s0, array($t0)
	addi $t0, $t0, 4
	sw $s1, array($t0)
	addi $t0, $t0, 4
	sw $s2, array($t0)
	addi $t0, $t0, 4
	
	addi $t0, $zero, 0
	while:
		beq $t0, 12, exit
		addi $t0, $t0, 4
		
		lw $t1, array($t0)
		
		li $v0, 1
		move $a0, $t1
		syscall
		
		li $v0, 4
		la $a0, nl
		syscall
		
		j while
	exit:
	li $v0, 10
	syscall