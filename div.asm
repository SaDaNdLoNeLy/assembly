.data

.text
	addi $t0, $zero, 30
	addi $t1, $zero, 4
	
	div $t0, $t1
	mfhi $t2 #remainder
	mflo $t3 #quotient
	
	li $v0, 1
	add $a0, $zero, $t2
	syscall