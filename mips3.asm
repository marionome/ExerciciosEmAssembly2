.data
	msg1: .asciiz"\nInsira um valor: "
	msg2: .asciiz"\nA diferenca entre os dois valores e: "
.text
main:
	li $v0,4
	la $a0,msg1
	syscall
	li $v0,5
	syscall
	add $t0, $v0,0
	
	li $v0,4
	la $a0,msg1
	syscall
	li $v0,5
	syscall
	add $t1, $v0,0
	
	bgt $t0,$t1,diferenca
	sub $s0,$t1,$t0
	j fim
diferenca:
	sub $s0,$t0,$t1
fim:
	li $v0,4
	la $a0, msg2
	syscall
	li $v0,1
	add $a0,$s0,0
	syscall
	
	
	
	
	