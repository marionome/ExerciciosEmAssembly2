.data
	msg1: .asciiz"\nInsira um valor: "
	msg2: .asciiz"\nValores negativos são invalidos"
	msg3: .asciiz"\nO maior valor inserido foi: "
	msg4: .asciiz"\nO menor valor inserido foi: "
.text
main:
 	li $s0,0
inserir:
	beq $s0,10, fim
	li $v0,4
	la $a0,msg1
	syscall
	li $v0,5
	syscall
	add $t0, $v0,0
	
	blt $t0,0,invalido
	add $s0,$s0,1
	j verificar
invalido:
	li $v0,4
	la $a0,msg2
	syscall
	j inserir

verificar:
	beq $s0, 1, primeira_instancia
	bgt $t0, $t1,maior
	blt $t0, $t2,menor
	j inserir
primeira_instancia:
	add $t1,$t0,0
	add $t2,$t0,0
	j inserir
maior:
	add $t1, $t0,0
	j inserir
menor: 
	add $t2, $t0,0
	j inserir
fim:
	li $v0,4
	la $a0, msg3
	syscall
	li $v0,1
	add $a0, $t1,0
	syscall

	li $v0,4
	la $a0, msg4
	syscall
	li $v0,1
	add $a0, $t2,0
	syscall