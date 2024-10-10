Algoritmo Hotelito
    // Definir variables para cada habitaci�n y otras generales
    Definir habitacion1, habitacion2, habitacion3, habitacion4, habitacion5 Como Entero
    Definir habitacion6, habitacion7, habitacion8, habitacion9, habitacion10 Como Entero
    Definir numeroReserva, habitacion, opcion Como Entero
    Definir ocupadas, totalHabitaciones Como Entero
	
    // Inicializar las habitaciones como disponibles (0 significa disponible)
    habitacion1 <- 0
    habitacion2 <- 0
    habitacion3 <- 0
    habitacion4 <- 0
    habitacion5 <- 0
    habitacion6 <- 0
    habitacion7 <- 0
    habitacion8 <- 0
    habitacion9 <- 0
    habitacion10 <- 0
    ocupadas <- 0
    totalHabitaciones <- 10
	
    Mientras opcion <> 5 Hacer
        Escribir "1. Registrar reserva"
        Escribir "2. Cancelar reserva"
        Escribir "3. Consultar disponibilidad"
        Escribir "4. Ver porcentaje de ocupaci�n"
        Escribir "5. Salir"
        Leer opcion
		
        Segun opcion Hacer
            Caso 1: // Registrar nueva reserva
                Escribir "Ingrese el n�mero de reserva y la habitaci�n (1-10):"
                Leer numeroReserva, habitacion
				
                Segun habitacion Hacer
                    Caso 1:
                        Si habitacion1 = 0 Entonces
                            habitacion1 <- numeroReserva
                            ocupadas <- ocupadas + 1
                            Escribir "Reserva registrada en habitaci�n 1"
                        SiNo
                            Escribir "Habitaci�n 1 ocupada"
                        FinSi
                    Caso 2:
                        Si habitacion2 = 0 Entonces
                            habitacion2 <- numeroReserva
                            ocupadas <- ocupadas + 1
                            Escribir "Reserva registrada en habitaci�n 2"
                        SiNo
                            Escribir "Habitaci�n 2 ocupada"
                        FinSi
                    Caso 3:
                        Si habitacion3 = 0 Entonces
                            habitacion3 <- numeroReserva
                            ocupadas <- ocupadas + 1
                            Escribir "Reserva registrada en habitaci�n 3"
                        SiNo
                            Escribir "Habitaci�n 3 ocupada"
                        FinSi
                    Caso 4:
                        Si habitacion4 = 0 Entonces
                            habitacion4 <- numeroReserva
                            ocupadas <- ocupadas + 1
                            Escribir "Reserva registrada en habitaci�n 4"
                        SiNo
                            Escribir "Habitaci�n 4 ocupada"
                        FinSi
                    Caso 5:
                        Si habitacion5 = 0 Entonces
                            habitacion5 <- numeroReserva
                            ocupadas <- ocupadas + 1
                            Escribir "Reserva registrada en habitaci�n 5"
                        SiNo
                            Escribir "Habitaci�n 5 ocupada"
                        FinSi
                    Caso 6:
                        Si habitacion6 = 0 Entonces
                            habitacion6 <- numeroReserva
                            ocupadas <- ocupadas + 1
                            Escribir "Reserva registrada en habitaci�n 6"
                        SiNo
                            Escribir "Habitaci�n 6 ocupada"
                        FinSi
                    Caso 7:
                        Si habitacion7 = 0 Entonces
                            habitacion7 <- numeroReserva
                            ocupadas <- ocupadas + 1
                            Escribir "Reserva registrada en habitaci�n 7"
                        SiNo
                            Escribir "Habitaci�n 7 ocupada"
                        FinSi
                    Caso 8:
                        Si habitacion8 = 0 Entonces
                            habitacion8 <- numeroReserva
                            ocupadas <- ocupadas + 1
                            Escribir "Reserva registrada en habitaci�n 8"
                        SiNo
                            Escribir "Habitaci�n 8 ocupada"
                        FinSi
                    Caso 9:
                        Si habitacion9 = 0 Entonces
                            habitacion9 <- numeroReserva
                            ocupadas <- ocupadas + 1
                            Escribir "Reserva registrada en habitaci�n 9"
                        SiNo
                            Escribir "Habitaci�n 9 ocupada"
                        FinSi
                    Caso 10:
                        Si habitacion10 = 0 Entonces
                            habitacion10 <- numeroReserva
                            ocupadas <- ocupadas + 1
                            Escribir "Reserva registrada en habitaci�n 10"
                        SiNo
                            Escribir "Habitaci�n 10 ocupada"
                        FinSi
                    De otro modo:
                        Escribir "Habitaci�n inv�lida"
                FinSegun
				
            Caso 2: // Cancelar reserva
                Escribir "Ingrese el n�mero de habitaci�n a cancelar (1-10):"
                Leer habitacion
				
                Segun habitacion Hacer
                    Caso 1:
                        Si habitacion1 <> 0 Entonces
                            habitacion1 <- 0
                            ocupadas <- ocupadas - 1
                            Escribir "Reserva cancelada en habitaci�n 1"
                        SiNo
                            Escribir "Habitaci�n 1 ya estaba disponible"
                        FinSi
                    Caso 2:
                        Si habitacion2 <> 0 Entonces
                            habitacion2 <- 0
                            ocupadas <- ocupadas - 1
                            Escribir "Reserva cancelada en habitaci�n 2"
                        SiNo
                            Escribir "Habitaci�n 2 ya estaba disponible"
                        FinSi
                    Caso 3:
                        Si habitacion3 <> 0 Entonces
                            habitacion3 <- 0
                            ocupadas <- ocupadas - 1
                            Escribir "Reserva cancelada en habitaci�n 3"
                        SiNo
                            Escribir "Habitaci�n 3 ya estaba disponible"
                        FinSi
                    Caso 4:
                        Si habitacion4 <> 0 Entonces
                            habitacion4 <- 0
                            ocupadas <- ocupadas - 1
                            Escribir "Reserva cancelada en habitaci�n 4"
                        SiNo
                            Escribir "Habitaci�n 4 ya estaba disponible"
                        FinSi
                    Caso 5:
                        Si habitacion5 <> 0 Entonces
                            habitacion5 <- 0
                            ocupadas <- ocupadas - 1
                            Escribir "Reserva cancelada en habitaci�n 5"
                        SiNo
                            Escribir "Habitaci�n 5 ya estaba disponible"
                        FinSi
                    Caso 6:
                        Si habitacion6 <> 0 Entonces
                            habitacion6 <- 0
                            ocupadas <- ocupadas - 1
                            Escribir "Reserva cancelada en habitaci�n 6"
                        SiNo
                            Escribir "Habitaci�n 6 ya estaba disponible"
                        FinSi
                    Caso 7:
                        Si habitacion7 <> 0 Entonces
                            habitacion7 <- 0
                            ocupadas <- ocupadas - 1
                            Escribir "Reserva cancelada en habitaci�n 7"
                        SiNo
                            Escribir "Habitaci�n 7 ya estaba disponible"
                        FinSi
                    Caso 8:
                        Si habitacion8 <> 0 Entonces
                            habitacion8 <- 0
                            ocupadas <- ocupadas - 1
                            Escribir "Reserva cancelada en habitaci�n 8"
                        SiNo
                            Escribir "Habitaci�n 8 ya estaba disponible"
                        FinSi
                    Caso 9:
                        Si habitacion9 <> 0 Entonces
                            habitacion9 <- 0
                            ocupadas <- ocupadas - 1
                            Escribir "Reserva cancelada en habitaci�n 9"
                        SiNo
                            Escribir "Habitaci�n 9 ya estaba disponible"
                        FinSi
                    Caso 10:
                        Si habitacion10 <> 0 Entonces
                            habitacion10 <- 0
                            ocupadas <- ocupadas - 1
                            Escribir "Reserva cancelada en habitaci�n 10"
                        SiNo
                            Escribir "Habitaci�n 10 ya estaba disponible"
                        FinSi
                    De otro modo:
                        Escribir "N�mero de habitaci�n inv�lido"
                FinSegun
				
            Caso 3: // Consultar disponibilidad
                Escribir "Disponibilidad de habitaciones:"
                Si habitacion1 = 0 Entonces
                    Escribir "Habitaci�n 1 disponible"
                SiNo
                    Escribir "Habitaci�n 1 ocupada"
                FinSi
				
                Si habitacion2 = 0 Entonces
                    Escribir "Habitaci�n 2 disponible"
                SiNo
                    Escribir "Habitaci�n 2 ocupada"
                FinSi
				
                Si habitacion3 = 0 Entonces
                    Escribir "Habitaci�n 3 disponible"
                SiNo
                    Escribir "Habitaci�n 3 ocupada"
                FinSi
				
                Si habitacion4 = 0 Entonces
                    Escribir "Habitaci�n 4 disponible"
                SiNo
                    Escribir "Habitaci�n 4 ocupada"
                FinSi
				
                Si habitacion5 = 0 Entonces
                    Escribir "Habitaci�n 5 disponible"
                SiNo
                    Escribir "Habitaci�n 5 ocupada"
                FinSi
				
                Si habitacion6 = 0 Entonces
                    Escribir "Habitaci�n 6 disponible"
                SiNo
                    Escribir "Habitaci�n 6 ocupada"
                FinSi
				
                Si habitacion7 = 0 Entonces
                    Escribir "Habitaci�n 7 disponible"
                SiNo
                    Escribir "Habitaci�n 7 ocupada"
                FinSi
				
                Si habitacion8 = 0 Entonces
                    Escribir "Habitaci�n 8 disponible"
                SiNo
                    Escribir "Habitaci�n 8 ocupada"
                FinSi
				
                Si habitacion9 = 0 Entonces
                    Escribir "Habitaci�n 9 disponible"
                SiNo
                    Escribir "Habitaci�n 9 ocupada"
                FinSi
				
                Si habitacion10 = 0 Entonces
                    Escribir "Habitaci�n 10 disponible"
                SiNo
                    Escribir "Habitaci�n 10 ocupada"
                FinSi
				
            Caso 4: // Ver porcentaje de ocupaci�n
                Escribir "El porcentaje de ocupaci�n es: ", (ocupadas / totalHabitaciones) * 100, "%"
				
            Caso 5: // Salir del sistema
                Escribir "Saliendo del sistema de reservas"
        FinSegun
    FinMientras
FinAlgoritmo

