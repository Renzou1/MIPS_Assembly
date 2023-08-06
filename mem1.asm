.data
	a: .word 3
	b: .word 5
	y: .space 4
.text
	lui, $t0, 0x1001
	lw $t1, 0($t0) # t1 = a
	lw $t2, 4($t0) # t2 = b
	mul $t3, $t1, $t2 # t3 = ab
	sll $t3, $t3, 5  # t3 = 32ab
	ori $t5, $zero, 3 # t5 = 3
	mul $t4, $t1, $t5 # t4 = 3a
	ori $t5, $zero, 7 # t5 = 7
	mul $t6, $t5, $t2 # t6 = 7b
	ori $t5, $zero, 13 # t5 = 13
	add $t3, $t3, $t6  # t3 = 32ab + 7b
	sub $t3, $t3, $t4  # t3 = 32ab -3a + 7b
	sub $t3, $t3, $t5   # t3 = 32ab -3a +7b -13
	sw $t3, 8($t0)