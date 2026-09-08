Algoritmo ServicioTuristico
	//Variables de entrada
	Definir precio_base Como Real
	Definir pais_origen como Entero //(1. local, 2. regional, 3. internacional)
	Definir categoria_cliente como Caracter //(B. Bronce, S. Silver, G. Gold)
	Definir temporada como caracter //(A. Alta, B. Baja)
	Definir dias_anticipacion como Entero

	//Variables de salida
	Definir impuesto_pais_origen como Real
	Definir descuento_categoria_cliente como Real
	Definir descuento_adicional_dias_anticipacion como Real
	Definir recargo_adicional como real
	Definir subtotal_impuesto_salida como Real
	Definir subtotal_categoria como Real
	Definir precio_final como Real

	descuento_categoria_cliente <- 0
	recargo_adicional <- 0
	descuento_adicional_dias_anticipacion <- 0

	//Solicitud de datos
	Escribir "Ingrese el precio base del servicio: "
	Leer precio_base
	Escribir "Ingrese el país de origen (1. local, 2. regional, 3. internacional): "
	Leer pais_origen
	Escribir "Ingrese la categoría del cliente (B. Bronce, S. Silver, G. Gold): "
	Leer categoria_cliente
	Escribir "Ingrese la temporada (A. Alta, B. Baja): "
	Leer temporada
	Escribir "Ingrese la cantidad de días de anticipación: "
	Leer dias_anticipacion

	//Procesamiento de datos
	Si pais_origen = 1 Entonces
		impuesto_pais_origen <- 0.02
	Sino
		Si pais_origen = 2 Entonces
			impuesto_pais_origen <- 0.08
		Sino
			impuesto_pais_origen <- 0.15
		FinSi
	FinSi

	Si dias_anticipacion >= 30 Entonces
		descuento_adicional_dias_anticipacion <- 0.08
	Sino
		Si dias_anticipacion >= 8 && dias_anticipacion <= 29 Entonces
			descuento_adicional_dias_anticipacion <- 0
		Sino
			recargo_adicional <- 0.15
		FinSi
	FinSi

	Si temporada = "B" Entonces
		Si categoria_cliente = "G" Entonces
			descuento_categoria_cliente <- 0.2
		Sino
			Si categoria_cliente = "S" Entonces
				descuento_categoria_cliente <- 0.12
			Sino
				descuento_categoria_cliente <- 0.05
			FinSi
		FinSi
	FinSi

	subtotal_impuesto_salida <- precio_base + precio_base * impuesto_pais_origen

	subtotal_categoria <- subtotal_impuesto_salida - subtotal_impuesto_salida * descuento_categoria_cliente

	precio_final <- subtotal_categoria + (subtotal_categoria * recargo_adicional) - (subtotal_categoria * descuento_adicional_dias_anticipacion)


	//Output
	Escribir "Precio base: ", precio_base
	Escribir "impuesto salida: ", subtotal_impuesto_salida
	Escribir "Subtotal: ", subtotal_categoria
	Escribir "Precio final: ", precio_final

FinAlgoritmo