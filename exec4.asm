.text

	ori $t1, $zero, 0x1234
	sll $t1, $t1, 16
	ori $t0, $zero, 0x5678
	or $t1, $t1, $t0         # t1 = 0x12345678
	ori $t9, $zero, 0x8       # to use on beq

loop:	
	