Algoritmo temperatura
		Definir f Como Real
		Definir conversion Como texto
		Definir r Como Real
		
		Escribir "Introduce la temperatura en grados Fahrenheit: "
		Leer f
		Escribir "¿A qué unidad deseas convertir? (celsius, kelvin, rankine): "
		Leer conversion
		
		Segun conversion Hacer
			"celsius":
				r = (f - 32) * 5/9
				Escribir f, " °F son ", r, " °C."
			"kelvin":
				r = (f - 32) * 5/9 + 273.15
				Escribir f, " °F son ", r, " K."
			"rankine":
				r = f + 459.67
				Escribir f, " °F son ", r, " °R."
			De Otro Modo:
				Escribir "ERROR: Unidad no valida"
		Fin Segun
FinAlgoritmo
