.data
	msg1: .asciiz"\nInsira a nota: "
	msg2: .asciiz"\nAPROVADO"
	msg3: .asciiz"\nRETIDO"
	msg4: .asciiz"\nEXAME"
.text
main:	
	li $s0,0
inserir:
	li $v0,4
	la $a0,msg1
	syscall
	li $v0,5
	syscall
	add $t0,$v0,0
	
	add $t1,$t0,$t1
	add $s0,$s0,1
	beq $s0,4,media
	j inserir
media:
	div $s1,$t1,4
	bge $s1,6, APROVADO
	
	bge $s1,3, EXAME
	
	j RETIDO
	
APROVADO:
	li $v0,4
	la $a0, msg2
	syscall
	j fim
EXAME:
	li $v0,4
	la $a0, msg4
	syscall
	j fim
RETIDO: 
	li $v0,4
	la $a0, msg3
	syscall
fim:
