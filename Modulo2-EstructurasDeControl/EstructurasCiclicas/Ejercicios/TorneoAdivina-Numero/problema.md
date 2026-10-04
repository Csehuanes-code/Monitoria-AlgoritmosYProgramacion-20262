## Torneo de adivinanza con pistas y puntaje

La feria de juegos de la universidad organiza un **torneo "Adivina el número"**. Varios jugadores participan por turnos; en cada ronda el programa elige un número secreto y el jugador intenta adivinarlo con ayuda de pistas. Gana quien acumule más puntos. Al final, los organizadores pueden iniciar un nuevo torneo sin cerrar el programa.

**Restricciones:** no se permiten arreglos ni funciones. El programa debe tener **cuatro niveles de ciclos**: un `do-while` para repetir el torneo, un `for` para los jugadores, un `for` para las rondas de cada jugador y un `while` para los intentos de cada ronda.

**Número secreto:** el programa lo genera de forma aleatoria entre 1 y 100 con `rand()` (necesitas `<cstdlib>` y `<ctime>`, y llamar una sola vez a `srand(time(0))` al inicio del programa). Para tus pruebas puedes fijar la semilla (`srand(1)`) y así reproducir el mismo torneo.

**Datos de entrada:**
- Cantidad de jugadores (entre 2 y 6).
- Cantidad de rondas por jugador (entre 1 y 5).
- Nombre de cada jugador (una sola palabra).
- En cada intento, el número que propone el jugador.

**Validación de la entrada (se repite hasta que sea válida):** la cantidad de jugadores, la cantidad de rondas y cada intento (debe estar entre 1 y 100). Un intento fuera de rango **no consume** uno de los 7 intentos de la ronda.

**Reglas de cada ronda:**
- El jugador tiene máximo **7 intentos**.
- Después de cada intento fallido se da una pista de dirección: **"El número es mayor"** o **"El número es menor"**.
- Además, una pista de cercanía según la diferencia absoluta entre el intento y el número secreto:

| Diferencia | Pista |
|---|---|
| 5 o menos | "Caliente" |
| Entre 6 y 15 | "Tibio" |
| Más de 15 | "Frío" |

- Si el jugador acierta en el intento `k`, gana `110 − 10·k` puntos (acierto en el intento 1 → 100 puntos; en el intento 7 → 40 puntos).
- Si agota los 7 intentos, obtiene 0 puntos en esa ronda y el programa le revela el número secreto.

**Salida al terminar los turnos de cada jugador:** su nombre, rondas acertadas, rondas falladas y puntaje total.

**Salida final del torneo:**
- El **ganador** (mayor puntaje total). Si hay empate en el primer lugar, mostrar "Empate" con el puntaje y cuántos jugadores empataron.
- La **ronda más rápida** del torneo: el jugador y el número de intentos (si hay empate, la que ocurrió primero). Si nadie acertó ninguna ronda, mostrar "Nadie acertó".
- El **porcentaje de rondas acertadas** de todo el torneo.
- El **promedio de intentos** en las rondas acertadas (o "No hubo rondas acertadas").
- Indicar **"Hubo"** o **"No hubo"** alguna ronda acertada al **primer intento**.

**Al finalizar:** el programa pregunta "¿Iniciar otro torneo? (S/N)". Si la respuesta es `S` o `s`, el torneo comienza de nuevo con **todos los acumuladores reiniciados**.

**Ejemplo de una ronda** (número secreto = 37):

| Intento | Número propuesto | Respuesta |
|---|---|---|
| 1 | 50 | "El número es menor" — "Tibio" |
| 2 | 25 | "El número es mayor" — "Tibio" |
| 3 | 38 | "El número es menor" — "Caliente" |
| 4 | 37 | ¡Acertó! Puntos: 110 − 10·4 = **70** |

**Casos de prueba que debes verificar:** un jugador que acierta al primer intento; un jugador que agota los 7 intentos; un intento fuera de rango (por ejemplo, 150); un torneo con empate; repetir el torneo y comprobar que los puntajes empiezan en cero.

> 💡 **Reto opcional:** ¿cuántos intentos necesitas, como máximo, si siempre propones el número del medio del rango que aún es posible? Justifica por qué 7 intentos son suficientes para un rango de 1 a 100.