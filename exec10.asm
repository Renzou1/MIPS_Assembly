# t3 = resultado
.text
	addi $t1, $zero, 160 # t1 = b
	addi $t2, $zero, 120 # t2 = h
	mul $t3, $t1, $t2 # t3 = b.h
	srl $t3, $t3, 1  # t3 = (b.h)/2