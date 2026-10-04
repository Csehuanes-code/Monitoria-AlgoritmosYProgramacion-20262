# 🔁 Estructuras Cíclicas

**Monitoría de Algoritmos y Programación — Talento Magdalena y Talento Santa Marta (2026-II)**  
Monitor: Carlos Andrés Sehuanes Angulo · Ingeniería de Sistemas

---

Esta carpeta contiene el material práctico enfocado exclusivamente en las **estructuras de control cíclicas** (repetición): `while`, `do-while` y `for`. Aquí aprenderás a resolver problemas que se repiten un número fijo de veces, hasta que el usuario decida parar, o hasta que se cumpla una condición, y a combinar varios ciclos (incluso anidados) en un solo programa limpio en C++.

---

## 📂 Contenido de la Carpeta

```text
EstructurasCiclicas/
├── README.md                                   ← (Estás aquí) Guía de la sección y ruta de trabajo
├── Ejercicios/                                 ← Banco de 13 problemas con dificultad ascendente
    ├── Panaderia/                              (problema.md, Panaderia.psc, panaderia.cpp)
    ├── Juego-Bola/                             (problema.md, JuegoBalotaRoja.psc, JuegoBalotaRoja.cpp)
    ├── ComercializadoraLlantas/                (problema.jpeg, registro.cpp)
    ├── Experimentos-Nasa/                      (problema.jpeg, experimentos-nasa.cpp)
    ├── Informe-UniversidadDelMar/              (problema.jpeg, informe-universidad.cpp)
    ├── Registro-Peaje-Tasajera/                (problema.jpeg, Registro-Peaje-Tasajera.cpp)
    ├── Estadisticas-Partido/                   (problema.jpeg)
    ├── CajeroAutomatico/                      (problema.md)                      ← nuevo
    ├── Validador-Codigos/                      (problema.md)                      ← nuevo
    ├── Meta-Ahorro/                            (problema.md)                      ← nuevo
    ├── NumerosEspeciales/                     (problema.md)                      ← nuevo
    └── TorneoAdivina-Numero/                  (problema.md)                      ← nuevo
└── Reto/ (puerto-costa.md)                      ← nuevo
```

---

## 📖 Antes de empezar

### ¿Qué ciclo elijo?

| Ciclo | Úsalo cuando… | Ejemplo típico |
| :--- | :--- | :--- |
| `for` | Sabes **cuántas veces** se repite (N experimentos, 12 meses, 3 turnos). | Recorrer N partidos, tablas, rangos de números. |
| `while` | **No sabes cuántas veces** y puede que no se ejecute ni una vez (centinela, condición). | Leer clientes hasta que escriban `SALIR`. |
| `do-while` | El cuerpo debe ejecutarse **al menos una vez** (menús, validaciones, "¿jugar otra vez?"). | Menú de un cajero, pedir un dato hasta que sea válido. |

> 💡 Todo `for` se puede escribir como `while` y viceversa. La pregunta correcta no es "¿cuál funciona?", sino "¿cuál **comunica mejor** la intención del código?".

### Patrones que vas a practicar

* **Contador:** cuántas veces ocurre algo (`autos++`).
* **Acumulador:** sumar valores a lo largo del ciclo (`total += subtotal`).
* **Centinela:** valor especial que corta el ciclo (`"SALIR"`, `"FIN"`, `-1`).
* **Bandera (flag):** variable `bool` para responder "Hubo / No hubo" o "Existe / No existe".
* **Mayor y menor:** inicializar bien el primer valor y actualizar dentro del ciclo.
* **Validación de entrada:** repetir la lectura hasta que el dato sea correcto (`do-while`).
* **Ciclos anidados:** un ciclo dentro de otro (años × meses, muelles × turnos, cursos × semestres).
* **Promedio y porcentaje seguros:** proteger siempre la división contra denominador cero.

### Reglas del módulo

* **Sin arreglos ni funciones:** los arreglos se estudian en el Módulo 4. Todos los problemas de esta carpeta deben resolverse con variables simples, acumuladores y banderas.
* **Sin `pow()`** cuando el enunciado lo indique: calcula las potencias con un ciclo.
* **Evita los ciclos infinitos:** antes de ejecutar, verifica que la variable de la condición cambie dentro del cuerpo del ciclo.
* **Clean Code:** constantes con nombre en lugar de números mágicos (`const int MAX_INTENTOS = 3;`), variables autodescriptivas y mensajes claros. Para repasar la base conceptual (pensamiento computacional, E-P-S y Clean Code) vuelve al material de [`EstructurasCondicionales`](../EstructurasCondicionales/README.md).
* **Piensa antes de teclear:** dibuja primero qué se repite, qué condición lo detiene y qué variables se acumulan.

---

## 🏗️ Estructura de los Ejercicios

Cada carpeta dentro de [`Ejercicios/`](./Ejercicios/) sigue este estándar:

1. **Enunciado:** un archivo [`problema.md`](./Ejercicios/Panaderia/problema.md) o una imagen digitalizada del planteamiento del docente (`problema.jpeg`). En él se especifican datos de entrada, reglas de negocio y salidas esperadas.
2. **Soluciones implementadas:** los ejercicios modelo cuentan con pseudocódigo en PSeInt (`.psc`) y/o su implementación en C++ (`.cpp`).
3. **Ejercicios nuevos (`CajeroAutomatico` en adelante):** por ahora solo incluyen el enunciado. Las soluciones se construirán durante las sesiones de monitoría, por lo que el reto es tuyo: intenta resolverlos antes de ver cualquier solución.

---

## 📈 Dificultad Progresiva de los Ejercicios

```
[Nivel 1: Fundamentos] ───► [Nivel 2: Estadísticas y reportes] ───► [Nivel 3: Simulaciones] ───► [Nivel 4: Avanzado] ───► [Reto]
  • Panaderia                  • ComercializadoraLlantas              • CajeroAutomatico        • NumerosEspeciales       • PuertoCosta
  • Juego-Bola                 • Experimentos-Nasa                    • Validador-Codigos        • TorneoAdivina-Numero
                               • Informe-UniversidadDelMar            • Meta-Ahorro
                               • Registro-Peaje-Tasajera
                               • Estadisticas-Partido
```

### Nivel 1: Fundamentos (centinela y validación)
Un solo ciclo principal, con acumuladores y validación básica de entrada:
* [`Panaderia`](./Ejercicios/Panaderia/): ciclo `while` con centinela (`SALIR`) para atender clientes, un `for` para sus productos y un acumulado del total recaudado en el día.
* [`Juego-Bola`](./Ejercicios/Juego-Bola/): `do-while` para que dos jugadores saquen balotas hasta obtener la roja; se comparan sus intentos para decidir ganador o empate.

### Nivel 2: Estadísticas y reportes (intermedio)
Problemas de "laboratorio" y "estadística" donde el ciclo procesa N registros y al final se calculan varios indicadores (porcentajes, promedios, mayores y banderas):
* [`ComercializadoraLlantas`](./Ejercicios/ComercializadoraLlantas/): registro de operaciones de una comercializadora de llantas. *(Enunciado en `problema.jpeg`.)*
* [`Experimentos-Nasa`](./Ejercicios/Experimentos-Nasa/) (`for`): N experimentos de física con distancia, velocidad inicial y final; se calcula la aceleración $(V_F^2 - V_I^2) / 2D$, el porcentaje de móviles sin aceleración, la mayor desaceleración y qué tipo de experimento fue más frecuente.
* [`Informe-UniversidadDelMar`](./Ejercicios/Informe-UniversidadDelMar/) (`while`): alumnos nuevos de 3 carreras durante 6 semestres; promedio semestral, porcentaje de la carrera 2 en el semestre 4 y semestre de mayor ingreso de la carrera 1.
* [`Registro-Peaje-Tasajera`](./Ejercicios/Registro-Peaje-Tasajera/) (`while` / `do-while`): N vehículos (auto, buseta, colectivo); porcentaje de autos que viajan solo con el conductor, promedio de pasajeros en busetas e indicador "Hubo / No hubo" de vehículos con más de 8 personas.
* [`Estadisticas-Partido`](./Ejercicios/Estadisticas-Partido/) (`for`): estadísticas de N partidos (faltas, tarjetas rojas y amarillas, goles); mayor cantidad de goles bajo ciertas condiciones, existencia de un partido con características particulares y promedio de faltas por subgrupo de partidos.

### Nivel 3: Simulaciones con menús, dígitos y proyecciones
Problemas que combinan **dos o tres ciclos** en un mismo programa y reglas de negocio encadenadas:
* [`CajeroAutomatico`](./Ejercicios/CajeroAutomatico/): `while` para los intentos de clave, `do-while` para el menú de operaciones, límites diarios, comisiones por cantidad de retiros y un reporte de cierre de sesión.
* [`Validador-Codigos`](./Ejercicios/Validador-Codigos/): `while` con `%` y `/` para descomponer dígitos (conteo, suma, inversión, capicúa y dígito verificador) sobre una serie de códigos.
* [`Meta-Ahorro`](./Ejercicios/Meta-Ahorro/): simulación año por año (ciclo externo) y mes a mes (ciclo interno) de un ahorro con interés y aportes crecientes, hasta alcanzar la meta o agotar el plazo.

### Nivel 4: Avanzado (ciclos anidados y control fino)
* [`NumerosEspeciales`](./Ejercicios/NumerosEspeciales/): clasificación de todos los números de un rango (primos, perfectos, Armstrong, capicúas), conteo de primos gemelos y búsqueda del número con más divisores, con ciclos anidados y sin `pow()`.
* [`TorneoAdivina-Numero`](./Ejercicios/TorneoAdivina-Numero/): torneo de adivinanza con **cuatro niveles de ciclos** (torneo → jugadores → rondas → intentos), pistas por cercanía, puntaje decreciente y estadísticas finales.

---

## 🏆 El Reto de Programación Integrada: PuertoCosta

Dentro de la carpeta [Reto](./Reto/) se encuentra el [**`Reto de Programacion Integrada PuertoCosta`**](./Reto/puertocosta.md/), el desafío culminante de esta sección. Es el equivalente cíclico del reto AutoCosta de [`EstructurasCondicionales`](../EstructurasCondicionales/README.md).

### ¿Por qué es un reto integrador?
Combina en un solo flujo los **tres tipos de ciclos** y todos los patrones del módulo:
1. **Fase 1 (Apertura de jornada, `do-while`):** configuración y validación de muelles, tarifa base y meta de facturación.
2. **Fase 2 (Registro y liquidación de buques, `while` con centinela + `for`):** cada buque se liquida con tarifas por tipo de carga y una tarifa de estadía **progresiva día a día**.
3. **Fase 3 (Control de turnos, `for` anidado):** muelles × turnos con acumuladores por muelle y por turno.
4. **Fase 4 (Cierre y estadísticas):** totales, promedios, porcentajes, máximos, banderas y cumplimiento de meta; al final, un `do-while` permite abrir otra jornada.

> 💡 **Consejo:** antes de codificar, dibuja un esquema con los ciclos que envuelven a otros (cuál está dentro de cuál) y lista qué acumuladores deben **reiniciarse** al abrir una nueva jornada. Olvidar reiniciar un acumulador es el error más común del reto.

---

## 🗺️ Ruta de Realización Sugerida para el Estudiante

```
Paso 1: Repaso de bases              Paso 2: Práctica de base
   [Condicionales + este README] ──►   [Nivel 1: Panaderia, Juego-Bola]
                                              │
                                              ▼
Paso 4: Complejidad creciente        Paso 3: Reportes estadísticos
   [Nivel 3 y 4]                 ◄──   [Nivel 2: ejercicios 3 a 7]
        │
        ▼
Paso 5: El Desafío Final  ──►  Paso 6: Refactorización a Clean Code en C++
   [Reto PuertoCosta]
```

1. **Repasa** las condicionales (los ciclos casi siempre contienen un `if` en su interior) y lee las secciones "¿Qué ciclo elijo?" y "Patrones" de este README.
2. **Resuelve el Nivel 1** (`Panaderia`, `Juego-Bola`) identificando claramente qué se repite, qué lo detiene y qué se acumula.
3. **Avanza con el Nivel 2:** resuelve los cinco ejercicios de estadística. Fíjate en cómo se inicializan los mayores/menores y cómo se protege cada promedio o porcentaje contra la división por cero.
4. **Sube a los Niveles 3 y 4.** En los problemas con menús o rondas, define primero la estructura de los ciclos en papel.
5. **Resuelve el Reto `PuertoCosta`:** diseña primero el esquema de fases y ciclos, luego el pseudocódigo en PSeInt.
6. **Traduce a C++ y refactoriza** en VS Code: constantes con nombre, nombres autodescriptivos y verificación con casos de prueba (incluye el caso vacío: "ninguna iteración").

---

## 📋 Cuadro General de Ejercicios

| Ejercicio | Formato de Enunciado | Soluciones Disponibles | Ciclo(s) principal(es) | Nivel |
| :--- | :---: | :---: | :---: | :---: |
| [`Panaderia`](./Ejercicios/Panaderia/) | `problema.md` | `Panaderia.psc`, `panaderia.cpp` | `while` + `for` | Nivel 1 (Básico) |
| [`Juego-Bola`](./Ejercicios/Juego-Bola/) | `problema.md` | `JuegoBalotaRoja.psc`, `.cpp` | `do-while` | Nivel 1 (Básico) |
| [`ComercializadoraLlantas`](./Ejercicios/ComercializadoraLlantas/) | `problema.jpeg` | `registro.cpp` | Según enunciado | Nivel 2 (Intermedio) |
| [`Experimentos-Nasa`](./Ejercicios/Experimentos-Nasa/) | `problema.jpeg` | `experimentos-nasa.cpp` | `for` | Nivel 2 (Intermedio) |
| [`Informe-UniversidadDelMar`](./Ejercicios/Informe-UniversidadDelMar/) | `problema.jpeg` | `informe-universidad.cpp` | `while` anidado | Nivel 2 (Intermedio) |
| [`Registro-Peaje-Tasajera`](./Ejercicios/Registro-Peaje-Tasajera/) | `problema.jpeg` | `Registro-Peaje-Tasajera.cpp` | `while` / `do-while` | Nivel 2 (Intermedio) |
| [`Estadisticas-Partido`](./Ejercicios/Estadisticas-Partido/) | `problema.jpeg` | Pendiente | `for` | Nivel 2 (Intermedio) |
| [`CajeroAutomatico`](./Ejercicios/CajeroAutomatico/) | `problema.md` | Pendiente | `while` + `do-while` | Nivel 3 (Avanzado) |
| [`Validador-Codigos`](./Ejercicios/Validador-Codigos/) | `problema.md` | Pendiente | `while` (dígitos) | Nivel 3 (Avanzado) |
| [`Meta-Ahorro`](./Ejercicios/Meta-Ahorro/) | `problema.md` | Pendiente | `while` + `for` anidado | Nivel 3 (Avanzado) |
| [`NumerosEspeciales`](./Ejercicios/NumerosEspeciales/) | `problema.md` | Pendiente | `for` anidado | Nivel 4 (Muy avanzado) |
| [`TorneoAdivina-Numero`](./Ejercicios/TorneoAdivina-Numero/) | `problema.md` | Pendiente | `do-while` + `for` + `while` | Nivel 4 (Muy avanzado) |
| [`Reto`](./Reto/) | `puerto-costa.md` | Pendiente | Los tres ciclos | Reto Integrador |

---

## 🔗 Para practicar más (fuera del repositorio)

* **[¡Acepta el reto!](https://aceptaelreto.com/):** juez en línea con problemas redactados en español, aceptan soluciones en C++ y están pensados desde primeros cursos hasta temas más complejos.
* **[Beecrowd](https://www.beecrowd.com.br/):** juez en línea con una categoría *Iniciante* ideal para ganar práctica con entrada/salida, condicionales y ciclos.
* **[PYnative – C++ Loops Exercises](https://pynative.com/cpp-loops-exercises/):** más de 30 ejercicios de ciclos con pista y solución (secuencias, dígitos, primos, patrones).
* **[The Modern C++ Challenge](https://www.packtpub.com/):** libro con retos matemáticos (Armstrong, Collatz) para quienes quieran ir más allá del nivel 4.

> ⚠️ Recuerda la regla de [`EstudioAutonomo`](../../EstudioAutonomo/README.md): usa estas plataformas para **practicar**, no para copiar soluciones.

---

⬅️ [Volver al Inicio del Repositorio](../../README.md)