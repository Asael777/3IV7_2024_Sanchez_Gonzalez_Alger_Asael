Proceso Negativos_Y_Positivos_o_NP_Niño_prodigio
	Definir n, positivos, negativos, numero Como Entero
	Definir respuesta, re Como Caracter
		
		re = "si"
			Mientras re = "si" Hacer
					positivos = 0
					negativos = 0
					respuesta = "si"
					
					Mientras respuesta = "si" Hacer
						Escribir "Introduce un número: "
						Leer numero
						Si numero > 0 Entonces
							positivos = positivos + 1
						Sino
							Si numero < 0 Entonces
								negativos = negativos + 1
							FinSi
						FinSi
						Escribir "¿Quieres introducir otro número? (si/no): "
						Leer respuesta
					FinMientras
					
					Escribir "Números positivos: ", positivos
					Escribir "Números negativos: ", negativos
					Escribir "¿Quieres contar otra serie de números? (si/no): "
					Leer re
					FinMientras
FinProceso
