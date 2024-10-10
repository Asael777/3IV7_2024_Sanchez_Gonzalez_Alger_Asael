Algoritmo primos
	Escribir "Diseñe un algoritmo para determinar si es un numero primo"
	Escribir "Ingresa un numero"
	Leer N
	Si N=2 o N=3 o N=5 o N=7 Entonces
		Escribir "Es primo"
	SiNo
		Si N%2=0 o N%3=0 o N%5=0 o N%7=0  Entonces
			Escribir "No es primo"
		SiNo
			Escribir "Es primo"
		Fin Si
	Fin Si

FinAlgoritmo
