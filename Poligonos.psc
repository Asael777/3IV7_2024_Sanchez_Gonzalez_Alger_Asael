// Definir las subfunciones para el c�lculo de cada figura
Funci�n p<-PerimetroPoligono(numero_lados, longitud_lado)
perimetro = numero_lados * longitud_lado
p<-perimetro

FinFuncion

Funci�n a<-AreaPoligono(numero_lados, longitud_lado, apotema) 
perimetro = numero_lados * longitud_lado
area = (perimetro * apotema) / 2
a<-area
FinFuncion

Proceso Poligonos
    Definir opcion, lado, apotema, perimetro, area Como Real
    Definir numero_lados, longitud_lado Como Entero
	
    // Presentar el men� de opciones
    Escribir "Seleccione una figura para calcular su per�metro y �rea:"
    Escribir "1. Cuadrado (4 lados)"
    Escribir "2. Pent�gono (5 lados)"
    Escribir "3. Hex�gono (6 lados)"
    Escribir "4. Hept�gono (7 lados)"
    Escribir "5. Oct�gono (8 lados)"
    Escribir "6. Dodec�gono (12 lados)"
    Leer opcion
	
    // Pedir la entrada de datos seg�n la figura seleccionada
    Segun opcion Hacer
        1:
            numero_lados = 4
            Escribir "Ingrese la longitud del lado del cuadrado:"
            Leer longitud_lado
            apotema = longitud_lado / (2 * Tan(180 / numero_lados))
        2:
            numero_lados = 5
            Escribir "Ingrese la longitud del lado del pent�gono:"
            Leer longitud_lado
            apotema = longitud_lado / (2 * Tan(180 / numero_lados))
        3:
            numero_lados = 6
            Escribir "Ingrese la longitud del lado del hex�gono:"
            Leer longitud_lado
            apotema = longitud_lado / (2 * Tan(180 / numero_lados))
        4:
            numero_lados = 7
            Escribir "Ingrese la longitud del lado del hept�gono:"
            Leer longitud_lado
            apotema = longitud_lado / (2 * Tan(180 / numero_lados))
        5:
            numero_lados = 8
            Escribir "Ingrese la longitud del lado del oct�gono:"
            Leer longitud_lado
            apotema = longitud_lado / (2 * Tan(180 / numero_lados))
        6:
            numero_lados = 12
            Escribir "Ingrese la longitud del lado del dodec�gono:"
            Leer longitud_lado
            apotema = longitud_lado / (2 * Tan(180 / numero_lados))
        De Otro Modo:
            Escribir "Opci�n no v�lida."
FinSegun

// Calcular el per�metro y el �rea usando las funciones definidas
perimetro = PerimetroPoligono(numero_lados, longitud_lado)
area = AreaPoligono(numero_lados, longitud_lado, apotema)

// Mostrar los resultados
Escribir "El per�metro de la figura es: ", perimetro
Escribir "El �rea de la figura es: ", area
FinProceso
