Algoritmo CobroEstacionamiento
	Definir  horaentrada, horasalida, minutosentrada, minutossalida Como real
	Definir  totalhoras, totalminutos, minutostotalescuenta Como real
	Definir  totalcobro Como real
	
	//entrada de datos
	Escribir "Ingresa la hora de entrada (formato de 24 horas)"
	Leer horaentrada
	Escribir "Ingresa los minutos de entrada (formato de 0-59 horas)"
	Leer minutosentrada
	
	Escribir "Ingresa la hora de salida (formato de 24 horas)"
	Leer horasalida
	Escribir "Ingresa los minutos de salida (formato de 0-59 horas)"
	Leer minutossalida
	
	//Proceso 
	//Calcular el tiempo total en minutos
	totalhoras=horasalida-horaentrada
	totalminutos=minutossalida-minutosentrada
	//si los minutos de salida son menores que los de entrada
	//hay que ajustar las horas y minutos de salida
	Si totalminutos<0 Entonces
		totalminutos=totalminutos+60
		//totaldeminuti+=60
		totalhoras=totalhoras-1
	Fin Si
	//convertir a minutos
	totalminutos=(totalhoras*60)+totalminutos
	//vamos a calcular el cobro
	totalcobro= 0
	//calcular el cobro por la hora completa
	Si totalminutos>=60 Entonces
		totalcobro= totalcobro+(totalminutos/60)*15
	Fin Si
	
	//Calcular el cobro de cada fraccion
	minutosrestantes=totalminutos%60
	Si minutosrestantes>0 Entonces
		fracciones15min=minutosrestantes
		//cobrar cada fraccion
		totalcobro=totalcobro+ fracciones15min * 6
	Fin Si
	Escribir "Eltotal a pagar es de :", totalcobro ," pesos"
FinAlgoritmo
