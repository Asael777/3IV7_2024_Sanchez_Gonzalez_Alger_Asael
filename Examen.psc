Algoritmo CensoVivos
    Definir N Como Entero
    Definir Q Como Entero
    Definir a�o Como Entero
    Definir naci Como Entero
    Definir fall Como Entero
    Definir vivos Como Entero
    Definir minEdad Como Entero
    Definir maxEdad Como Entero
    Definir edad Como Entero
	
    Escribir "Introduce el n�mero de personas (N) y el n�mero de consultas (Q):"
    Leer N, Q
	
    // Declarar las variables para almacenar datos de las personas
    Definir nacidos Como Entero  // Asumiendo un m�ximo de 100 personas
    Definir fallecidos Como Entero // Asumiendo un m�ximo de 100 personas
	
    // Leer los a�os de nacimiento y fallecimiento de cada persona
    Escribir "Introduce el a�o de nacimiento y fallecimiento de cada persona:"
    Para i <- 1 Hasta N Hacer
        Leer naci, fall
        nacidos <- naci
        fallecidos<- fall
    FinPara
	
    // Leer los a�os de consulta
    Escribir "Introduce los a�os para los cuales deseas consultar:"
    Definir consultas Como Entero // Asumiendo un m�ximo de 100 consultas
    Para i <- 1 Hasta Q Hacer
        Leer a�o
        consultas <- a�o
    FinPara
	
    // Para cada a�o consultado, responder las preguntas
    Para i <- 1 Hasta Q Hacer
        a�o <- consultas
        vivos <- 0
        minEdad <- 1000000  // Valor alto para comparaci�n
        maxEdad <- -1
		
        // Revisar todas las personas
        Para j <- 1 Hasta N Hacer
            naci <- nacidos
            fall <- fallecidos
            Si naci <= a�o y fall >= a�o Entonces
                vivos <- vivos + 1
                edad <- a�o - naci
                Si edad < minEdad Entonces
                    minEdad <- edad
                FinSi
                Si edad > maxEdad Entonces
                    maxEdad <- edad
                FinSi
            FinSi
        FinPara
		
        // Imprimir resultados
        Si vivos = 0 Entonces
            Escribir "En el a�o ", a�o, " no hab�a ninguna persona viva."
            Escribir 0, 0, 0
        Sino
            Escribir "En el a�o ", a�o, " hab�a ", vivos, " personas vivas."
            Escribir "Edad de la persona m�s joven: ", minEdad
            Escribir "Edad de la persona m�s anciana: ", maxEdad
            Escribir vivos, minEdad, maxEdad
        FinSi
    FinPara
FinAlgoritmo
