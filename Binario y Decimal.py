def binario_a_decimal(numero_binario):
    return int(numero_binario, 2)

# Solicitar al usuario que ingrese un número binario
numero_binario = input("Ingresa un número binario: ")
numero_decimal = binario_a_decimal(numero_binario)
print(f"{numero_binario} en decimal es {numero_decimal}")

def decimal_a_binario(numero_decimal):
    return bin(numero_decimal).replace("0b", "")

# Solicitar al usuario que ingrese un número decimal
numero_decimal = int(input("Ingresa un número decimal: "))
numero_binario = decimal_a_binario(numero_decimal)
print(f"{numero_decimal} en binario es {numero_binario}")
