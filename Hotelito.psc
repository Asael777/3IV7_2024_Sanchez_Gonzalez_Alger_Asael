Algoritmo Hotelito
    // Definir variables para cada habitación y otras generales
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
        Escribir "4. Ver porcentaje de ocupación"
        Escribir "5. Salir"
        Leer opcion
		
        Segun opcion Hacer
            Caso 1: // Registrar nueva reserva
                Escribir "Ingrese el número de reserva y la habitación (1-10):"
                Leer numeroReserva, habitacion
				
                Segun habitacion Hacer
                    Caso 1:
                        Si habitacion1 = 0 Entonces
                            habitacion1 <- numeroReserva
                            ocupadas <- ocupadas + 1
                            Escribir "Reserva registrada en habitación 1"
                        SiNo
                            Escribir "Habitación 1 ocupada"
                        FinSi
                    Caso 2:
                        Si habitacion2 = 0 Entonces
                            habitacion2 <- numeroReserva
                            ocupadas <- ocupadas + 1
                            Escribir "Reserva registrada en habitación 2"
                        SiNo
                            Escribir "Habitación 2 ocupada"
                        FinSi
                    Caso 3:
                        Si habitacion3 = 0 Entonces
                            habitacion3 <- numeroReserva
                            ocupadas <- ocupadas + 1
                            Escribir "Reserva registrada en habitación 3"
                        SiNo
                            Escribir "Habitación 3 ocupada"
                        FinSi
                    Caso 4:
                        Si habitacion4 = 0 Entonces
                            habitacion4 <- numeroReserva
                            ocupadas <- ocupadas + 1
                            Escribir "Reserva registrada en habitación 4"
                        SiNo
                            Escribir "Habitación 4 ocupada"
                        FinSi
                    Caso 5:
                        Si habitacion5 = 0 Entonces
                            habitacion5 <- numeroReserva
                            ocupadas <- ocupadas + 1
                            Escribir "Reserva registrada en habitación 5"
                        SiNo
                            Escribir "Habitación 5 ocupada"
                        FinSi
                    Caso 6:
                        Si habitacion6 = 0 Entonces
                            habitacion6 <- numeroReserva
                            ocupadas <- ocupadas + 1
                            Escribir "Reserva registrada en habitación 6"
                        SiNo
                            Escribir "Habitación 6 ocupada"
                        FinSi
                    Caso 7:
                        Si habitacion7 = 0 Entonces
                            habitacion7 <- numeroReserva
                            ocupadas <- ocupadas + 1
                            Escribir "Reserva registrada en habitación 7"
                        SiNo
                            Escribir "Habitación 7 ocupada"
                        FinSi
                    Caso 8:
                        Si habitacion8 = 0 Entonces
                            habitacion8 <- numeroReserva
                            ocupadas <- ocupadas + 1
                            Escribir "Reserva registrada en habitación 8"
                        SiNo
                            Escribir "Habitación 8 ocupada"
                        FinSi
                    Caso 9:
                        Si habitacion9 = 0 Entonces
                            habitacion9 <- numeroReserva
                            ocupadas <- ocupadas + 1
                            Escribir "Reserva registrada en habitación 9"
                        SiNo
                            Escribir "Habitación 9 ocupada"
                        FinSi
                    Caso 10:
                        Si habitacion10 = 0 Entonces
                            habitacion10 <- numeroReserva
                            ocupadas <- ocupadas + 1
                            Escribir "Reserva registrada en habitación 10"
                        SiNo
                            Escribir "Habitación 10 ocupada"
                        FinSi
                    De otro modo:
                        Escribir "Habitación inválida"
                FinSegun
				
            Caso 2: // Cancelar reserva
                Escribir "Ingrese el número de habitación a cancelar (1-10):"
                Leer habitacion
				
                Segun habitacion Hacer
                    Caso 1:
                        Si habitacion1 <> 0 Entonces
                            habitacion1 <- 0
                            ocupadas <- ocupadas - 1
                            Escribir "Reserva cancelada en habitación 1"
                        SiNo
                            Escribir "Habitación 1 ya estaba disponible"
                        FinSi
                    Caso 2:
                        Si habitacion2 <> 0 Entonces
                            habitacion2 <- 0
                            ocupadas <- ocupadas - 1
                            Escribir "Reserva cancelada en habitación 2"
                        SiNo
                            Escribir "Habitación 2 ya estaba disponible"
                        FinSi
                    Caso 3:
                        Si habitacion3 <> 0 Entonces
                            habitacion3 <- 0
                            ocupadas <- ocupadas - 1
                            Escribir "Reserva cancelada en habitación 3"
                        SiNo
                            Escribir "Habitación 3 ya estaba disponible"
                        FinSi
                    Caso 4:
                        Si habitacion4 <> 0 Entonces
                            habitacion4 <- 0
                            ocupadas <- ocupadas - 1
                            Escribir "Reserva cancelada en habitación 4"
                        SiNo
                            Escribir "Habitación 4 ya estaba disponible"
                        FinSi
                    Caso 5:
                        Si habitacion5 <> 0 Entonces
                            habitacion5 <- 0
                            ocupadas <- ocupadas - 1
                            Escribir "Reserva cancelada en habitación 5"
                        SiNo
                            Escribir "Habitación 5 ya estaba disponible"
                        FinSi
                    Caso 6:
                        Si habitacion6 <> 0 Entonces
                            habitacion6 <- 0
                            ocupadas <- ocupadas - 1
                            Escribir "Reserva cancelada en habitación 6"
                        SiNo
                            Escribir "Habitación 6 ya estaba disponible"
                        FinSi
                    Caso 7:
                        Si habitacion7 <> 0 Entonces
                            habitacion7 <- 0
                            ocupadas <- ocupadas - 1
                            Escribir "Reserva cancelada en habitación 7"
                        SiNo
                            Escribir "Habitación 7 ya estaba disponible"
                        FinSi
                    Caso 8:
                        Si habitacion8 <> 0 Entonces
                            habitacion8 <- 0
                            ocupadas <- ocupadas - 1
                            Escribir "Reserva cancelada en habitación 8"
                        SiNo
                            Escribir "Habitación 8 ya estaba disponible"
                        FinSi
                    Caso 9:
                        Si habitacion9 <> 0 Entonces
                            habitacion9 <- 0
                            ocupadas <- ocupadas - 1
                            Escribir "Reserva cancelada en habitación 9"
                        SiNo
                            Escribir "Habitación 9 ya estaba disponible"
                        FinSi
                    Caso 10:
                        Si habitacion10 <> 0 Entonces
                            habitacion10 <- 0
                            ocupadas <- ocupadas - 1
                            Escribir "Reserva cancelada en habitación 10"
                        SiNo
                            Escribir "Habitación 10 ya estaba disponible"
                        FinSi
                    De otro modo:
                        Escribir "Número de habitación inválido"
                FinSegun
				
            Caso 3: // Consultar disponibilidad
                Escribir "Disponibilidad de habitaciones:"
                Si habitacion1 = 0 Entonces
                    Escribir "Habitación 1 disponible"
                SiNo
                    Escribir "Habitación 1 ocupada"
                FinSi
				
                Si habitacion2 = 0 Entonces
                    Escribir "Habitación 2 disponible"
                SiNo
                    Escribir "Habitación 2 ocupada"
                FinSi
				
                Si habitacion3 = 0 Entonces
                    Escribir "Habitación 3 disponible"
                SiNo
                    Escribir "Habitación 3 ocupada"
                FinSi
				
                Si habitacion4 = 0 Entonces
                    Escribir "Habitación 4 disponible"
                SiNo
                    Escribir "Habitación 4 ocupada"
                FinSi
				
                Si habitacion5 = 0 Entonces
                    Escribir "Habitación 5 disponible"
                SiNo
                    Escribir "Habitación 5 ocupada"
                FinSi
				
                Si habitacion6 = 0 Entonces
                    Escribir "Habitación 6 disponible"
                SiNo
                    Escribir "Habitación 6 ocupada"
                FinSi
				
                Si habitacion7 = 0 Entonces
                    Escribir "Habitación 7 disponible"
                SiNo
                    Escribir "Habitación 7 ocupada"
                FinSi
				
                Si habitacion8 = 0 Entonces
                    Escribir "Habitación 8 disponible"
                SiNo
                    Escribir "Habitación 8 ocupada"
                FinSi
				
                Si habitacion9 = 0 Entonces
                    Escribir "Habitación 9 disponible"
                SiNo
                    Escribir "Habitación 9 ocupada"
                FinSi
				
                Si habitacion10 = 0 Entonces
                    Escribir "Habitación 10 disponible"
                SiNo
                    Escribir "Habitación 10 ocupada"
                FinSi
				
            Caso 4: // Ver porcentaje de ocupación
                Escribir "El porcentaje de ocupación es: ", (ocupadas / totalHabitaciones) * 100, "%"
				
            Caso 5: // Salir del sistema
                Escribir "Saliendo del sistema de reservas"
        FinSegun
    FinMientras
FinAlgoritmo

