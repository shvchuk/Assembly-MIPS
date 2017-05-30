# prosty hello world program

.data
	hello_msg: .asciiz "Hello World\n"
.text
main:
	li $v0, 4
	la $a0, hello_msg
	syscall
	
# koniec programu
	li $v0, 10
	syscall
	
	