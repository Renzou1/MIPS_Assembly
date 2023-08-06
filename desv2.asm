.data
	y: .space 4
	
.text
	ori $t0, $zero, 333 # t0 = 333
	ori $t1, $zero, 1 # t1 = 1
	# t2 = 0
	
start:	add $t2, $t2, $t1  # t2 = t2 + i
	addi $t1, $t1, 1  # t1 = i
	bne $t1, $t0 start  # if i = 333
	
	add $t2,$t2, $t0
	lui $t3, 0x1001
	sw $t2, 0($t3)