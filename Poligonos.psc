// Definir las subfunciones para el cálculo de cada figura
Función p<-PerimetroPoligono(numero_lados, longitud_lado)
perimetro = numero_lados * longitud_lado
p<-perimetro

FinFuncion

Función a<-AreaPoligono(numero_lados, longitud_lado, apotema) 
perimetro = numero_lados * longitud_lado
area = (perimetro * apotema) / 2
a<-area
FinFuncion

Proceso Poligonos
    Definir opcion, lado, apotema, perimetro, area Como Real
    Definir numero_lados, longitud_lado Como Entero
	
    // Presentar el menú de opciones
    Escribir "Seleccione una figura para calcular su perímetro y área:"
    Escribir "1. Cuadrado (4 lados)"
    Escribir "2. Pentágono (5 lados)"
    Escribir "3. Hexágono (6 lados)"
    Escribir "4. Heptágono (7 lados)"
    Escribir "5. Octágono (8 lados)"
    Escribir "6. Dodecágono (12 lados)"
    Leer opcion
	
    // Pedir la entrada de datos según la figura seleccionada
    Segun opcion Hacer
        1:
            numero_lados = 4
            Escribir "Ingrese la longitud del lado del cuadrado:"
            Leer longitud_lado
            apotema = longitud_lado / (2 * Tan(180 / numero_lados))
        2:
            numero_lados = 5
            Escribir "Ingrese la longitud del lado del pentágono:"
            Leer longitud_lado
            apotema = longitud_lado / (2 * Tan(180 / numero_lados))
        3:
            numero_lados = 6
            Escribir "Ingrese la longitud del lado del hexágono:"
            Leer longitud_lado
            apotema = longitud_lado / (2 * Tan(180 / numero_lados))
        4:
            numero_lados = 7
            Escribir "Ingrese la longitud del lado del heptágono:"
            Leer longitud_lado
            apotema = longitud_lado / (2 * Tan(180 / numero_lados))
        5:
            numero_lados = 8
            Escribir "Ingrese la longitud del lado del octágono:"
            Leer longitud_lado
            apotema = longitud_lado / (2 * Tan(180 / numero_lados))
        6:
            numero_lados = 12
            Escribir "Ingrese la longitud del lado del dodecágono:"
            Leer longitud_lado
            apotema = longitud_lado / (2 * Tan(180 / numero_lados))
        De Otro Modo:
            Escribir "Opción no válida."
FinSegun

// Calcular el perímetro y el área usando las funciones definidas
perimetro = PerimetroPoligono(numero_lados, longitud_lado)
area = AreaPoligono(numero_lados, longitud_lado, apotema)

// Mostrar los resultados
Escribir "El perímetro de la figura es: ", perimetro
Escribir "El área de la figura es: ", area
FinProceso
