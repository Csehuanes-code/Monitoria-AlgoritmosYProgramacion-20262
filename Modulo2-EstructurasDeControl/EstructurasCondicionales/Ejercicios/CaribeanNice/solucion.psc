Algoritmo caribean_nice
	
	//Variables de Entrada
	Definir salario_basico Real
	Definir tipo_salud Entero // 1. Sisben | 2. Otro
	Definir tipo_hora_extra Entero // Valores que puede tomar: 1, 2, 3
	Definir cantidad_horas_extra Entero 



	//Variables de Salida
	Definir valor_hora_normal Real
	Definir descuento_salud Real
	Definir subsidio Real
	Definir valor_hora_extra Real
	Definir pago_total Real


	//Solicitud de Datos
	Escribir "Digite el salario básico del trabajador:"
	Leer salario_basico
	Escribir "Digite el tipo de salud del trabajador (1: Sisben, 2: Otro):"
	Leer tipo_salud
	Escribir "Digite el tipo de hora extra (1, 2, 3):"
	Leer tipo_hora_extra
	Escribir "Digite la cantidad de horas extra:"
	Leer cantidad_horas_extra


	//Procesamiento de datos
	valor_hora_normal <- salario_basico / 160

	Si tipo_hora_extra = 1 Entonces
		valor_hora_extra <- valor_hora_normal * 1.15
	FinSi
	Si tipo_hora_extra = 2 Entonces
		valor_hora_extra <- valor_hora_normal * 1.20
	FinSi
	Si tipo_hora_extra = 3 Entonces
		valor_hora_extra <- valor_hora_normal * 1.25
	FinSi

	Si tipo_salud = 1 Entonces
		descuento_salud <- 50000
	Sino
		descuento_salud <- salario_basico * 0.04
	FinSi

	Si tipo_hora_extra = 1 O tipo_hora_extra = 3 Entonces
		subsidio <- salario_basico * (2/7)
	Sino
		subsidio <- (5/7) * salario_basico
	FinSi

	pago_total <- salario_basico + (valor_hora_extra * cantidad_horas_extra) - descuento_salud + subsidio

	//Salida de Datos
	Escribir "Salario básico: ", salario_basico
	Escribir "Aporte a salud: ", descuento_salud
	Escribir "Subsidio: ", subsidio
	Escribir "Valor hora extra: ", valor_hora_extra
	Escribir "Pago total: ", pago_total


FinAlgoritmo