Algoritmo ConversionBinaria
	definir num, conciente como entero
	definir binario como texto
	//el binario lo tengo que concatenar
	binario=""
	Escribir "Ingresa el numero que deseas convertir"
	Leer num
	Si num>=0 Entonces
		Mientras num>0 Hacer
			residuo= num%2
			//tengo que ir armando el binario
			nuevobinario<-convertiratexto(residuo)
			binario=nuevobinario+binario
			num=trunc(num/2)
		Fin Mientras
		//Si el numero es 0
		si binario="0" Entonces
			binario="0"
		FinSi
	Fin Si
	Escribir "El nuevo binario es: ", binario
FinAlgoritmo
