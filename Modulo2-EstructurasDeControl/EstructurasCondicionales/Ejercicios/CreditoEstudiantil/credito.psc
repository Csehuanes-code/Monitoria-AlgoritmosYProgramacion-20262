Algoritmo creditoEstudiantil
	//Variables de entrada
	Definir edad como Entero
	Definir ingreso_mensual_familiar, promedio_acumulado como Real
	Definir tiene_codeudor como Entero

	Definir fue_aprobado como Logico
	Definir es_riesgo_bajo como Logico
	Definir motivo_rechazo como Entero //(1-4)


	
	

	//Valores por defecto
	edad <- 15
	ingreso_mensual_familiar <- 0
	tiene_codeudor <- 2
	es_riesgo_bajo <- Falso

	Escribir "***************************************"
	Escribir "PETICIÓN DE CREDITO ESTUDIANTIL"
	Escribir "***************************************"
	Escribir " "
	Escribir "---------------------------------------"
	Escribir "Ingrese su edad: " 
	Leer edad
	Escribir "Digite su ingreso mensual familiar: "
	Leer ingreso_mensual_familiar
	Escribir "Digite su promedio academico acumulado(0-500): "
	Leer promedio_acumulado
	Escribir "Tiene codeudor? (1. Si, 2. No): "
	Leer tiene_codeudor

	Si edad < 16 Entonces
		motivo_rechazo <- 1
		fue_aprobado <- Falso
	Sino
		Si ingreso_mensual_familiar < 1500000 Entonces
			Si tiene_codeudor = 2 Entonces
				motivo_rechazo <- 2
				fue_aprobado <- Falso

			Sino
				Si promedio_acumulado >= 350 Entonces
					fue_aprobado <- Verdadero
					es_riesgo_bajo <- Falso
				Sino
					fue_aprobado <- Falso
					motivo_rechazo <- 3
				FinSi
			FinSi
		Sino
			Si promedio_acumulado >= 400 Entonces
				fue_aprobado <- Verdadero
				es_riesgo_bajo <- Verdadero
			Sino
				Si promedio_acumulado >= 300 Y promedio_acumulado <= 399 Entonces
					fue_aprobado <- Verdadero
					es_riesgo_bajo <- Falso
				Sino
					fue_aprobado <- Falso
					motivo_rechazo <- 4
				FinSi
			FinSi
		FinSi
	FinSi
	

	Si fue_aprobado Entonces
		Escribir "Estado de solicitud: El estudiante fue APROBADO"
		Si es_riesgo_bajo = Verdadero Entonces
			Escribir "Su credito se encuentra en la categoria: Riesgo Bajo"
		Sino Escribir "Su crédito se encuentra en la categoría: Riesto Medio"
		FinSi
	Sino
		Escribir "Estado de Solicitud: El estudiante fue RECHAZADO"
		Segun motivo_rechazo Hacer
			1:
				Escribir "Motivo: Menor de edad sin representante registrado"

			2:
				Escribir "Ingresos insuficientes sin respaldo"

			3:
				Escribir "Promedio insuficiente para respaldo"

			4:
				Escribir "Promedio insuficiente"
		FinSegun
	FinSi 

FinAlgoritmo