Algoritmo CaribeanNice
	//Variables de Entrada	
	Definir salario_basico Como Real
	Definir tipo_salud, tipo_hora_extra, cantidad_horas_extra Como Entero

	//Variables de procesamiento
	Definir valor_hora_normal como Real

	//Varialbes de salida
	Definir aporte_salud, subsidio, valor_hora_extra, pago_total Como Real

	//Solicitud de Datos
	Escribir "*********************************************"
	Escribir "SISTEMA DE SISTEMA DE CÁLCULO DE PAGO DE CARIBEAN NICE"
	Escribir "*********************************************"
	Esperar 1 Segundos
	Escribir " "

	Escribir "---------------------------------------------"
	Escribir "SOLICITUD DE DATOS:"
	Esperar 2 Segundos
	Escribir " "

	Escribir "Digite el salario básico del trabajador:"
	Leer salario_basico
	Si salario_basico < 0 Entonces
		Escribir "El salario básico no puede ser negativo. Por favor, ingrese un valor válido."
		Leer salario_basico
	FinSi

	Escribir "Digite el tipo de salud del trabajador (1: Sisben, 2: Otro):"
	Leer tipo_salud
	Si tipo_salud <> 1 Y tipo_salud <> 2 Entonces
		Escribir "Tipo de salud inválido. Por favor, ingrese 1 para Sisben o 2 para Otro."
		Leer tipo_salud
	FinSi

	Escribir "Digite el tipo de hora extra (1, 2, 3):"
	Leer tipo_hora_extra
	Si tipo_hora_extra <> 1 Y tipo_hora_extra <> 2 Y tipo_hora_extra <> 3 Entonces
		Escribir "Tipo de hora extra inválido. Por favor, ingrese 1, 2 o 3."
		Leer tipo_hora_extra
	FinSi

	Escribir "Digite la cantidad de horas extra:"
	Leer cantidad_horas_extra
	Si cantidad_horas_extra < 0 Entonces
		Escribir "La cantidad de horas extra no puede ser negativa. Por favor, ingrese un valor válido."
		Leer cantidad_horas_extra
	FinSi
	Si cantidad_horas_extra > 40 Entonces
		Escribir "La cantidad de horas extra no puede ser mayor a 40. Por favor, ingrese un valor válido."
		Leer cantidad_horas_extra
	FinSi
	Escribir "---------------------------------------------"
	Escribir " "
	Escribir "Procesando datos..."
	Esperar 1 Segundos


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
		aporte_salud <- 50000
	FinSi
	Si tipo_salud = 2 Entonces
		aporte_salud <- salario_basico * 0.04
	FinSi
	
	Si tipo_hora_extra = 1 O tipo_hora_extra = 3 Entonces
		subsidio <- salario_basico * (2/7)
	FinSi
	Si tipo_hora_extra = 2 Entonces
		subsidio <- salario_basico * (5/8)
	FinSi

	//Informacion de Salida
	pago_total <- salario_basico + (valor_hora_extra * cantidad_horas_extra) - aporte_salud + subsidio

	Escribir " "
	Escribir "*********************************************"
	Escribir "INFORMACIÓN DE PAGO:"
	Escribir "*********************************************"
	Escribir " "
	Escribir "Salario básico: ", salario_basico
	Escribir "Aporte salud: ", aporte_salud
	Escribir "Subsidio: ", subsidio
	Escribir "Valor hora extra: ", valor_hora_extra
	Escribir "Cantidad horas extra: ", cantidad_horas_extra
	Escribir "Pago total: ", pago_total
	Escribir "*********************************************"
	Escribir " "
	Escribir "Gracias por usar el sistema de cálculo de pago de Caribbean Nice"
	Esperar 1 segundos

FinAlgoritmo