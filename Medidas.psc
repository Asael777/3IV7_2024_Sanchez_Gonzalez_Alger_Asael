Algoritmo Medidas
		Definir f Como Real
		Definir conversion Como texto
		Definir resultado Como Real
		
		Escribir "Introduce la medida en pies: "
		Leer f
		Escribir "¿A qué unidad deseas convertir? (pulgadas, yardas, cm, metros): "
		Leer conversion
		
		Segun conversion Hacer
			"pulgadas":
				r = f * 12
				Escribir f, " pies son ", r, " pulgadas."
			"yardas":
				r = f / 3
				Escribir f, " pies son ", r, " yardas."
			"cm":
				r = f * 12 * 2.54
				Escribir f, " pies son ", r, " cm."
			"metros":
				r = f * 0.3048
				Escribir f, " pies son ", r, " metros."
			De Otro Modo:
				Escribir "Conversión no válida."
		Fin Segun
FinAlgoritmo
