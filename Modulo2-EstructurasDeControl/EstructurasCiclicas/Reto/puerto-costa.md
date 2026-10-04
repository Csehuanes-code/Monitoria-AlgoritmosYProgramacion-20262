## Sistema de Jornada Portuaria "PuertoCosta"

Este reto combina en un solo programa los **tres tipos de ciclos** (`do-while`, `while` y `for`) y todos los patrones del módulo: validación de entrada, centinela, contadores, acumuladores, banderas, mayor/menor, porcentajes y ciclos anidados. **No requiere arreglos ni funciones**: solo variables simples.

**Contexto:** el puerto "PuertoCosta" opera durante una jornada con varios muelles. El operador configura la jornada, registra y liquida los buques que atracan, audita la productividad de los turnos y, al final, el sistema entrega el informe de cierre. Al terminar, el operador puede abrir una nueva jornada.

**Estructura general del programa:**

```
do-while  (¿Abrir otra jornada?)
    Fase 1: Apertura de jornada          → validaciones con do-while
    Fase 2: Registro y liquidación       → while (centinela "FIN") + for (estadía)
    Fase 3: Control de turnos            → for dentro de for (muelles × turnos)
    Fase 4: Cierre y estadísticas
```

---

### Fase 1 — Apertura de jornada (`do-while` para validar)

Datos de entrada (cada uno se repite hasta ser válido):

| Dato | Rango válido |
|---|---|
| Cantidad de muelles operativos | Entre 1 y 4 |
| Tarifa base por tonelada | Mayor a 0 |
| Meta de facturación de la jornada | Mayor a 0 |

---

### Fase 2 — Registro y liquidación de buques (`while` con centinela + `for`)

El operador registra buques **hasta que digite `FIN` como nombre del buque**. Por cada buque ingresa (cada dato se valida con `do-while`):

| Dato | Rango válido |
|---|---|
| Nombre del buque (una sola palabra) | Cualquier texto; `FIN` termina el registro |
| Tipo de carga | 1 = Carbón a granel, 2 = Contenedores, 3 = Carga refrigerada |
| Toneladas | Mayor a 0 y menor o igual a 200.000 |
| Días de estadía en el muelle | Entre 1 y 30 |

**Liquidación de cada buque:**

1. **Cargo por carga** = `toneladas × tarifa_base × factor_tipo`, donde:

| Tipo de carga | Factor |
|---|---|
| 1. Carbón a granel | 1.0 |
| 2. Contenedores | 1.4 |
| 3. Carga refrigerada | 1.8 |

   Si las toneladas son **50.000 o más**, el cargo por carga recibe un **descuento del 5 %** (solo sobre este cargo).

2. **Cargo por estadía (progresivo, calculado día a día con un `for`):** cada día de permanencia se cobra según el número de día:

| Días de estadía | Valor por día |
|---|---|
| Del día 1 al 3 | $500.000 |
| Del día 4 al 7 | $800.000 |
| Del día 8 en adelante (recargo por congestión) | $1.200.000 |

3. **Subtotal** = cargo por carga (ya con descuento, si aplica) + cargo por estadía.
4. **IVA:** 19 % sobre el subtotal. **Total del buque** = subtotal + IVA.

**Ejemplo de liquidación:** buque de contenedores, 20.000 toneladas, 5 días de estadía, tarifa base $1.000 por tonelada.

| Concepto | Cálculo | Valor |
|---|---|---|
| Cargo por carga | 20.000 × 1.000 × 1.4 (sin descuento) | $28.000.000 |
| Estadía días 1 a 3 | 3 × $500.000 | $1.500.000 |
| Estadía días 4 y 5 | 2 × $800.000 | $1.600.000 |
| Subtotal | | $31.100.000 |
| IVA (19 %) | | $5.909.000 |
| **Total del buque** | | **$37.009.000** |

---

### Fase 3 — Control de turnos (`for` anidado: muelles × turnos)

Cada muelle opera **3 turnos** (1 = mañana, 2 = tarde, 3 = noche). Por cada muelle (ciclo externo) y por cada turno (ciclo interno), el operador digita la **cantidad de movimientos de carga** realizados (entero mayor o igual a 0, validado).

Sin arreglos, debes llevar:
- Un acumulador de movimientos **por muelle**.
- Tres acumuladores de movimientos, uno **por turno**, sumando entre todos los muelles.
- Un acumulador del total general.

---

### Fase 4 — Cierre y estadísticas

El informe de cierre debe mostrar:

1. **Cantidad de buques** atendidos y **toneladas totales** movidas.
2. **Total facturado** de la jornada y **promedio facturado por buque**.
3. El **buque con mayor total facturado** (nombre y valor; si hay empate, el que se registró primero).
4. El **porcentaje de buques** de cada tipo de carga.
5. Indicar **"Hubo"** o **"No hubo"** algún buque con días de estadía con recargo por congestión (es decir, con más de 7 días).
6. El **muelle más productivo** (mayor total de movimientos; si hay empate, el de menor número) y el **turno con menos movimientos** en toda la jornada (si hay empate, el de menor número).
7. El **promedio de movimientos** por combinación muelle-turno.
8. **Cumplimiento de la meta:** si el total facturado es mayor o igual a la meta, mostrar "Meta cumplida" y el porcentaje de superación; en caso contrario, "Meta no cumplida" y el valor que faltó.

**Al finalizar:** el programa pregunta "¿Abrir otra jornada? (S/N)". Si la respuesta es `S` o `s`, comienza una nueva jornada desde la Fase 1 con **todos los acumuladores, contadores y banderas reiniciados**.

---

### Casos borde que debes manejar

- **Jornada sin buques** (el operador digita `FIN` de inmediato): el informe indica "No se registraron buques" y **no calcula** promedios ni porcentajes (evita la división por cero). Las Fases 3 y 4 igualmente se ejecutan en lo que corresponda.
- **Un solo muelle:** el ciclo externo de la Fase 3 se ejecuta una sola vez.
- **Estadía de exactamente 7 días** y de **8 días:** verifica que el recargo por congestión se active solo desde el día 8.
- **Toneladas = 50.000:** el descuento sí aplica (el límite es "50.000 o más").
- **Nueva jornada:** verifica que ningún valor de la jornada anterior se "arrastre".

> 💡 **Consejo:** antes de codificar, escribe en papel (a) qué ciclo envuelve a cuál, (b) la lista de acumuladores, contadores y banderas, y (c) en qué punto exacto del programa se reinician. Después diseña el pseudocódigo en PSeInt y solo entonces pasa a C++.