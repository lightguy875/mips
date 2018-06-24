.data
vetor: .word 0 1 2 3 4 5 6 7 8 9

.text
	addi $t2, 10
	addi $t1, vetor
	
lasso: 
	lw $t0, 0($t1)
	sw $t0, 4($t1)
	addi $t1, $t1, 4
	addi $t2, $t2, -1
	bne $t2, $zero, lasso