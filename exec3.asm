.text
	ori $t1, $zero, 0x01
	or $t2, $t1, $t2       # t2 = 1
	sll $t3, $t1, 1        #  t3 = 10 em binario
	sll $t4, $t1, 2        # t4 = 100 em binario
	or $t5, $t2, $t3
	or $t5, $t5, $t4       # t5 = 111 em binario
	sll $t5, $t5, 1       # t5= 1110 
	or $t5, $t5, $t1      # t5 = 1111
	sll $t6, $t5, 4      # t6 = f0
	or $t5, $t6, $t5     # t5 = ff
	sll $t6, $t5, 8     # t6 = ff00
	or $t5, $t6, $t5     #  t5 = ffff
	sll $t6, $t5, 16   # t6 = ffff0000
	or $t1, $t5, $t6
