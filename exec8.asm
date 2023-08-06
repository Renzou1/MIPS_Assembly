# y = 3x^2 -5x +13
# y = t6
.text
	addi $t5, $zero, 2  # t5 = x = 2
	mul $t0, $t5, $t5   # t0 = x^2
	addi $t1, $zero, 3 # t1 = 3 (old)
	mul $t0, $t0, $t1  # t0 = 3x^2
	sll $t1, $t5, 2   # $t1 = 4x
	add $t1, $t5, $t1 # t1 = 5x
	sub $t6, $t0, $t1  # 3x^2 - 5x
	addi $t6, $t6, 13  # 3x^2 - 5x +13
	