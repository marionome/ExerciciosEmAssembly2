.data
	msg1: .asciiz"\nInsira o comprimento:" 
	msg2: .asciiz"\nInsira a altura: "
	msg3: .asciiz"\nInsira o largura: "
	msg4: .asciiz"\nO Volume e: "
.text
main:
#comprimento
	li $v0,4
	la $a0,msg1
	syscall
	li $v0,5
	syscall
	add $t0,$v0,0
#altura
	li $v0,4
	la $a0,msg2
	syscall
	li $v0,5
	syscall
	add $t1,$v0,0
#largura
	li $v0,4
	la $a0,msg3
	syscall
	li $v0,5
	syscall
	add $t2,$v0,0
	
	mul $s0,$t0,$t1
	mul $s0,$s0,$t2
	
	li $v0,4
	la $a0,msg4
	syscall
	li $v0, 1
	add $a0, $s0,0
	syscall
	