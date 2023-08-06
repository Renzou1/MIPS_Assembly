.data
	.word 0xD0000000
	.word 0x0E000000
	.word 0x00C00000
	.word 0x000A0000
	.word 0x0000D000
	.word 0x00000A00
	.word 0x00000070 # 6 total
.text

	lui $t0, 0x1001 # t0 = base
	lw $t2, 0($t0)
	add $t7, $t7, $t2
	lw $t2, 4($t0)
	add $t7, $t7, $t2
	lw $t2, 8($t0)
	add $t7, $t7, $t2
	lw $t2, 12($t0)
	add $t7, $t7, $t2
	lw $t2, 16($t0)
	add $t7, $t7, $t2
	lw $t2, 20($t0)
	add $t7, $t7, $t2
	lw $t2, 24($t0)
	add $t7, $t7, $t2
	

	
