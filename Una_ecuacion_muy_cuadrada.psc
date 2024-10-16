Proceso Una_ecuacion_muy_cuadrada
	Definir a, b, c, Real, Imaginaria, Discriminante, x1, x2 Como Real
	Definir re Como Caracter
		
		re = "si"
			Mientras re = "si" Hacer
					Escribir "Introduce el valor de a: "
					Leer a
					Escribir "Introduce el valor de b: "
					Leer b
					Escribir "Introduce el valor de c: "
					Leer c
					
					Discriminante = b^2 - 4*a*c
					
					Si Discriminante < 0 Entonces
						Real = -b / (2*a)
						Imaginaria = (Abs(Discriminante)^(1/2)) / (2*a)
						Escribir "Soluciones complejas: ", Real, " ± ", Imaginaria, "i"
					Sino
						x1 = (-b + Discriminante^(1/2)) / (2*a)
						x2 = (-b - Discriminante^(1/2)) / (2*a)
						Escribir "Soluciones reales: x1 = ", x1, " y x2 = ", x2
					FinSi
					
					Escribir "¿Quieres resolver otra ecuación? (si/no): "
					Leer re
					FinMientras
FinProceso
