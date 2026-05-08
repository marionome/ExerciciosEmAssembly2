.data
	msg1: .asciiz"\nInsira um valor: "
	msg2: .asciiz"\nA somatoria dos valores impares entre esses dois numeros é:\n"
.text
main:
	li $v0,4
	la $a0,msg1
	syscall
	li $v0,5
	syscall
	add $t0,$v0,0
	
	li $v0,4
	la $a0,msg1
	syscall
	li $v0,5
	syscall
	add $t1,$v0,0
	li $t2,0
	bgt $t0,$t1,maior1
	j maior2
maior1:
	add $s0,$t0,0
	add $s1,$t1,0
	add $t2,$s1,0
	j impar
maior2:
	add $s0, $t1,0
	add $s1, $t0,0
	add $t2,$s1,0
impar:
	add $t2,$t2,1
	beq $t2,$s0, fim
	add $s1,$s1,1
	rem $s2,$s1,2
	beq $s2,1,soma
	j impar
soma:
	add $s3,$s3,$s1
	j impar
fim:
	li $v0,4
	la $a0, msg2
	syscall
	li $v0,1
	add $a0,$s3,0
	syscall
	
	