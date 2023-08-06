.data
	x: .word 1
	y: .word 2
	z: .word 3


.text
		lui, $t0, 0x1001
		lw $t1, 0($t0) # t1 = x
		lw $t2, 4($t0) # t2 = y
		lw $t3, 8($t0) # t3 = z
		sll $t4, $t1, 2  # t4 = x*2*2
		sll $t5, $t2, 1 # t5 = y*2
		sll $t6, $t3, 1 # t6 = z*2
		add $t6, $t6, $t3  # t6 = 2z + z
		add $t7, $t4, $t6   # t7 = 4x + 3z
		sub $t7, $t7, $t5   # t7 = 4x + 3z -2y