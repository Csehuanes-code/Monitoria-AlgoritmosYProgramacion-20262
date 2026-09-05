Algoritmo Panaderia
		Definir nombreCliente, claveDeCierre, claveDigitada Como Cadena
		Definir totalCliente, totalDia Como Real
		Definir cantidadProductos, opcion, cantidad, precio, subtotal Como Real
		Definir  continuar Como Logico
		totalDia <- 0  // Total recaudado en el día
		continuar <- Verdadero
		
		//IMPORTANTE
		claveDeCierre = "panaderia123"
		//CLAVE PARA GENERAR INFORME DE LA PANADERIA
		
		
		
		Mientras continuar == Verdadero
			Escribir "Ingrese el nombre del cliente o (FIN) para generar informe del dia:"
			Leer nombreCliente
			
			Si nombreCliente == "FIN" Entonces
				Escribir "Ingrese la clave de cierre:"
				Leer claveDigitada
				Si claveDeCierre == claveDigitada Entonces
					continuar = Falso
				SiNo
					Escribir "Clave incorrecta"
					Esperar 1 Segundos
				FinSi
				
				
			FinSi
			
			Si nombreCliente <> "FIN" Entonces
				
				Escribir "Ingrese la cantidad de productos que desea comprar (1 a 3):"
				Leer cantidadProductos
				
				Mientras cantidadProductos < 1 O cantidadProductos > 3 Hacer
					Escribir "Cantidad de productos no válida. Debe ser entre 1 y 3."
					Escribir "Ingrese la cantidad de productos que desea comprar (1 a 3):"
					Leer cantidadProductos
				FinMientras
				
				totalCliente <- 0  // Total a pagar por el cliente actual
				
				Para i <- 1 Hasta cantidadProductos Con Paso 1 Hacer
					Escribir "Seleccione el producto ", i, ":"
					Escribir "1. Pan"
					Escribir "2. Pasteles"
					Escribir "3. Galletas"
					Leer opcion
					
					Mientras opcion < 1 O opcion > 3 Hacer
						Escribir "Opción no válida. Seleccione un producto entre 1 y 3."
						Leer opcion
					FinMientras
					
					Escribir "Ingrese la cantidad de producto adquirido:"
					Leer cantidad
					Escribir "Ingrese el precio individual del producto:"
					Leer precio
					
					subtotal <- cantidad * precio
					totalCliente <- totalCliente + subtotal
				FinPara
				
				Escribir "El total a pagar por el cliente ", nombreCliente, " es: $", totalCliente
				totalDia <- totalDia + totalCliente
			FinSi
			
			
		Fin Mientras
		
		
		Escribir "El total recaudado en el día es: $", totalDia
FinAlgoritmo

