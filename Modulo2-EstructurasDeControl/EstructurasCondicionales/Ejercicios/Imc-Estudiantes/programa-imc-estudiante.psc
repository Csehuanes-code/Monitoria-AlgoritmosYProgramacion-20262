Algoritmo indice_masa_corporal
	// Variables de entrada
	Definir peso, estatura como Real
	Definir edad como Entero

	// Variables de salida
	Definir imc como Real
	Definir categoria como Entero

	//solicitud de datos
	Escribir "Ingrese su peso en kilogramos: "
	Leer peso
	Escribir "Ingrese su estatura en metros: "
	Leer estatura
	Escribir "Ingrese su edad: "
	Leer edad

	// Procesamiento
	imc <- peso / (estatura * estatura)

	Si edad < 18 Entonces //Menor de edad
		Si imc < 17 Entonces
			categoria <- 1
		Sino
			Si imc >= 17 && imc < 23 Entonces
				categoria <- 2
			Sino
				categoria <- 3
			FinSi
		FinSi

	Sino //Mayor de edad
		Si imc < 18.5 Entonces
			categoria <- 1
		Sino
			Si imc >= 18.5 && imc < 25 Entonces
				categoria <- 2
			Sino
				categoria <- 3
			FinSi
		FinSi
	FinSI


	// Informacion de salida
	Escribir "IMC: ", imc
	Si categoria = 1 Entonces
		Escribir "Categoria: Bajo peso"
	Sino 
		Si categoria = 2 Entonces
			Escribir "Categoria: Peso Normal"
		Sino
			Escribir "Categoria: Sobrepeso"
		FinSi
	FinSi
	
	
FinAlgoritmo