.data
	a: .half 30
	b: .half 5
	y: .space 4
.text
	lui, $t0, 0x1001
	lh, $t1, 0($t0) # t1 = 30
	lh, $t2, 2($t0) # t2 = 5
	beq $t1, $t2, divide
	j mu
	
divide: div $t1, $t2
	mflo $t1
	sw $t1, 4($t0)
	j end
	
mu:	mul $t1, $t2, $t1
	sw $t1, 4($t0)
	
end:	add $t0, $t0, $zero