def imprimir_matriz(matriz):
    for fila in matriz:
        print("\t".join(map(str, fila)))

def transpuesta_matriz(matriz):
    filas = len(matriz)
    columnas = len(matriz[0])
    return [[matriz[j][i] for j in range(filas)] for i in range(columnas)]

def ingresar_matriz(tamaño):
    matriz = []
    print(f"Ingresa los valores para una matriz de {tamaño}x{tamaño}:")
    for i in range(tamaño):
        fila = []
        for j in range(tamaño):
            valor = int(input(f"Ingresa el valor para la posición ({i+1},{j+1}): "))
            fila.append(valor)
        matriz.append(fila)
    return matriz

#Tamaño de matriz (3x3 o 5x5)
tamaño = int(input("¿Quieres una matriz de 3x3 o 5x5? Ingresa 3 o 5: "))
while tamaño not in [3, 5]:
    tamaño = int(input("Solo se permite 3x3 o 5x5. Por favor, ingresa 3 o 5: "))

#Matriz original
matriz = ingresar_matriz(tamaño)
print("\nMatriz original:")
imprimir_matriz(matriz)

#Resultado
matriz_transpuesta = transpuesta_matriz(matriz)
print("\nMatriz transpuesta:")
imprimir_matriz(matriz_transpuesta)