Algoritmo CensoVivos
    Definir N Como Entero
    Definir Q Como Entero
    Definir año Como Entero
    Definir naci Como Entero
    Definir fall Como Entero
    Definir vivos Como Entero
    Definir minEdad Como Entero
    Definir maxEdad Como Entero
    Definir edad Como Entero
	
    Escribir "Introduce el número de personas (N) y el número de consultas (Q):"
    Leer N, Q
	
    // Declarar las variables para almacenar datos de las personas
    Definir nacidos Como Entero  // Asumiendo un máximo de 100 personas
    Definir fallecidos Como Entero // Asumiendo un máximo de 100 personas
	
    // Leer los años de nacimiento y fallecimiento de cada persona
    Escribir "Introduce el año de nacimiento y fallecimiento de cada persona:"
    Para i <- 1 Hasta N Hacer
        Leer naci, fall
        nacidos <- naci
        fallecidos<- fall
    FinPara
	
    // Leer los años de consulta
    Escribir "Introduce los años para los cuales deseas consultar:"
    Definir consultas Como Entero // Asumiendo un máximo de 100 consultas
    Para i <- 1 Hasta Q Hacer
        Leer año
        consultas <- año
    FinPara
	
    // Para cada año consultado, responder las preguntas
    Para i <- 1 Hasta Q Hacer
        año <- consultas
        vivos <- 0
        minEdad <- 1000000  // Valor alto para comparación
        maxEdad <- -1
		
        // Revisar todas las personas
        Para j <- 1 Hasta N Hacer
            naci <- nacidos
            fall <- fallecidos
            Si naci <= año y fall >= año Entonces
                vivos <- vivos + 1
                edad <- año - naci
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
            Escribir "En el año ", año, " no había ninguna persona viva."
            Escribir 0, 0, 0
        Sino
            Escribir "En el año ", año, " había ", vivos, " personas vivas."
            Escribir "Edad de la persona más joven: ", minEdad
            Escribir "Edad de la persona más anciana: ", maxEdad
            Escribir vivos, minEdad, maxEdad
        FinSi
    FinPara
FinAlgoritmo
