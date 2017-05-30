# reading and printing int number

.data
	podaj_liczbe: .asciiz "Wprowadz liczbe calkowita: "
	wyswietl: .asciiz "Wprowadziles liczbe: "
.text
main:
	# wyœwietlamy komunikat podaj liczbe
	li $v0, 4
	la $a0, podaj_liczbe
	syscall
	
	# pobieramy int od u¿ytkownika
	li $v0, 5
	syscall
	move $t0, $v0
	
	# wyswietlamy komunikat wyswietl
	li $v0, 4
	la $a0, wyswietl
	syscall
	
	# wyswietlamy inta
	li $v0, 1
	move $a0, $t0
	syscall
	
	# koniec programu
	li $v0, 10
	syscall
	
	
	