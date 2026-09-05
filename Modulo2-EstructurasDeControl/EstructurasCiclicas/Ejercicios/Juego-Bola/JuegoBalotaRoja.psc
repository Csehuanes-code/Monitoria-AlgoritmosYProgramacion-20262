Algoritmo JuegoBalotaRoja
	Definir jugador1_intentos, jugador2_intentos Como Entero
	Definir balota Como Caracter
	jugador1_intentos <- 0
	jugador2_intentos <- 0
	
	Escribir "Jugador 1, es tu turno."
	Repetir
		Escribir "Saca una balota (escribe el color):"
		Leer balota
		jugador1_intentos <- jugador1_intentos + 1
	Hasta Que balota = "roja" o balota = "ROJA" o balota ="Roja"
	
	Escribir "Jugador 1 sacó la balota roja en ", jugador1_intentos, " intentos."
	
	Escribir "Jugador 2, es tu turno."
	Repetir
		Escribir "Saca una balota (escribe el color):"
		Leer balota
		jugador2_intentos <- jugador2_intentos + 1
	Hasta Que balota = "roja" o balota = "ROJA" o balota ="Roja"
	
	Escribir "Jugador 2 sacó la balota roja en ", jugador2_intentos, " intentos."
	
	Si jugador1_intentos < jugador2_intentos Entonces
		Escribir "El ganador es el Jugador 1 con ", jugador1_intentos, " intentos."
	Sino
		Si jugador2_intentos < jugador1_intentos Entonces
			Escribir "El ganador es el Jugador 2 con ", jugador2_intentos, " intentos."
		Sino
			Escribir "Es un empate, ambos jugadores tuvieron el mismo número de intentos."
		FinSi
	FinSi
	
FinAlgoritmo
