#y = (9x+7)/(2x+8)
# t2 = quociente
# t3 = resto


.text
	addi $t1, $zero, 2
	addi $t4, $zero, 9
	mult $t1, $t4 # lo = x * 9
	mflo $t5          # t5 = x*9
	addi $t5, $t5, 7   # t5 = 9x + 7
	sll $t6, $t1, 1   # t6 = 2x
	addi $t6, $t6, 8  # t6 = 2x + 8
	div $t5, $t6
	mflo $t2
	mfhi $t3