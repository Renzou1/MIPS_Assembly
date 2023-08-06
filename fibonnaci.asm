.data
	x: .word 7
	y: .space 4
.text
	lui $t0, 0x1001
	lw $t1, 0($t0) # t1 = x
	addi $t2, $zero, 1 # t2 = 1
	addi $t4, $zero, 1 # t4 = 1
	
	
loop:	beq $t4, $t1, end
	add $t5, $t2, $zero
	add $t2, $t2, $t3   # t2 = t2 antigo + t2 atual
	add $t3, $t5, $zero # t3 = t2 antigo
	addi $t4, $t4, 1 # t4 = indice
	j loop
	
end:	sw $t2, 4($t0)
	