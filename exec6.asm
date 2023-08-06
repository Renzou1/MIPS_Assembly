.data
	.word 0x1
.text
	lui $t0, 0x1001
	lw $t7, 0($t0)
	sll, $t7, $t7, 5