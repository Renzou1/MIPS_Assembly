.data

	.word 326
	.word -211
	.word 311
	.word -684
	
.text
	lui $t0, 0x1001 
	lw $t1, 0($t0)
	lw $t2, 4($t0)
	lw $t3, 8($t0)
	lw $t4, 12($t0)
	add $t0, $t1, $t2
	add $t0, $t3, $t4