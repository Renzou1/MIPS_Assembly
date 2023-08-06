.data
	.word 0xAAAAAAAA
.text
	lui $t0, 0x1001
	lw $t1, 0($t0)
	srl $t2, $t1, 1
	or $t3, $t1, $t2
	and $t4, $t1, $t2
	xor $t5, $t1, $t2