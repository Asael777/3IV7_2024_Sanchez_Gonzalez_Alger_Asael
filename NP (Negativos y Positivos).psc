Proceso Negativos_Y_Positivos_o_NP_Ni�o_prodigio
	Definir n, positivos, negativos, numero Como Entero
	Definir respuesta, re Como Caracter
		
		re = "si"
			Mientras re = "si" Hacer
					positivos = 0
					negativos = 0
					respuesta = "si"
					
					Mientras respuesta = "si" Hacer
						Escribir "Introduce un n�mero: "
						Leer numero
						Si numero > 0 Entonces
							positivos = positivos + 1
						Sino
							Si numero < 0 Entonces
								negativos = negativos + 1
							FinSi
						FinSi
						Escribir "�Quieres introducir otro n�mero? (si/no): "
						Leer respuesta
					FinMientras
					
					Escribir "N�meros positivos: ", positivos
					Escribir "N�meros negativos: ", negativos
					Escribir "�Quieres contar otra serie de n�meros? (si/no): "
					Leer re
					FinMientras
FinProceso
