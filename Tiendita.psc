Algoritmo Tiendita
	Definir producto como texto
	Definir codigodeproducto, cantidaddelproducto Como Entero
	Definir precio como real
	//tengo que crear un menu de seleccion
	Mientras opcion <> 0 Hacer
		Escribir "1 Ingresa un nuevo producto"
		Escribir "2 Actualiza un producto"
		Escribir "3 Cunsulta el inventario"
		Escribir "4 generar reporte"
		Escribir "5 Salir"
		Leer opcion
		Segun opcion Hacer
			caso 1:
				Escribir "Ingresa el nombre del producto"
				Leer producto
				Escribir "Ingresa el codigo del producto"
				Leer codigodeproducto
				Escribir "Ingresa la cantidad"
				Leer cantidaddelproducto
				Escribir "Ingresia el precio"
				Leer precio
			caso 2:
				Escribir "Ingresa el codigo de producto"
				Leer codigodeproducto
				Escribir "Ingresa nueva cantidad"
				Leer cantidaddelproducto
			caso 3:
				Escribir "consultar inventario"
				Escribir "nombre del producto", producto
				Escribir "codigo del producto", codigodeproducto
				Escribir "precio del producto", precio
				Escribir "cantidad del producto", cantidaddelproducto
			caso 4:
				Escribir "Habia una vez un patito que hacia miau miau"
		Fin Segun
	Fin Mientras
FinAlgoritmo
