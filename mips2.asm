.data
	msg1: .asciiz"\nInsira o valor do raio: "
	msg2: .asciiz"\nO valor da circuferencia e: "
.text
main:
	li $v0,4
	la $a0,msg1
	syscall
	li $v0,5
	syscall
	add $t0,$v0,0
	
	mul $s0,$t0,2
	mul $s0,$s0,3
	
	li $v0,4
	la $a0,msg2
	syscall
	li $v0,1
	add $a0,$s0,0
	syscall