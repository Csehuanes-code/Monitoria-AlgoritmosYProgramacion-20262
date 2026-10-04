## Clasificador de números especiales en un rango

El club de matemáticas de la universidad organiza una feria y necesita un programa que, dado un rango de números enteros, **clasifique cada número** según sus propiedades y entregue un informe estadístico del rango.

**Restricciones:** no se permiten arreglos ni funciones. **No uses `pow()` ni `sqrt()`**: las potencias se calculan con un ciclo y las comprobaciones de primalidad usan la condición `i * i <= n`. El programa debe usar **ciclos anidados**.

**Datos de entrada:** límite inferior `A` y límite superior `B` del rango.

**Validación de la entrada (se repite hasta que sea válida):** `A ≥ 1`, `B > A` y `B ≤ 10000`.

**Definiciones** (para cada número `n` del rango, de `A` a `B`):
- **Primo:** `n > 1` y sus únicos divisores son 1 y `n`.
- **Perfecto:** es igual a la suma de sus divisores propios (los divisores menores que `n`). Ejemplo: 28 = 1 + 2 + 4 + 7 + 14.
- **Armstrong:** es igual a la suma de sus dígitos elevados a la cantidad de dígitos del número. Ejemplo: 153 = 1³ + 5³ + 3³. Los números de un solo dígito (1 a 9) también son Armstrong.
- **Capicúa:** se lee igual de izquierda a derecha que de derecha a izquierda (por ejemplo, 131).
- **Primos gemelos:** una pareja `(p, p + 2)` en la que ambos son primos y **ambos están dentro del rango** `[A, B]`.

**Salida:**
1. Para cada número del rango que sea primo, perfecto o Armstrong, una línea con el número y sus etiquetas (por ejemplo, `28 → Perfecto`; `2 → Primo`).
2. Cantidad de números del rango de cada tipo: primos, perfectos, Armstrong y capicúas.
3. El **mayor primo** del rango (o "No hay primos").
4. La cantidad de **parejas de primos gemelos**.
5. El número con **mayor cantidad de divisores** (contando 1 y el propio número) y cuántos divisores tiene; si hay empate, el menor de ellos.
6. Indicar **"Existe"** o **"No existe"** un número que sea **primo y capicúa con 3 o más dígitos**.

**Valores de referencia para verificar tu programa:**

| Rango | Primos | Mayor primo | Perfectos | Armstrong | Parejas gemelas | Más divisores | ¿Primo y capicúa con ≥ 3 dígitos? |
|---|---|---|---|---|---|---|---|
| `A = 10`, `B = 100` | 21 | 97 | 28 | Ninguno | 6 | 60 (12 divisores) | No existe |
| `A = 1`, `B = 10000` | 1229 | 9973 | 6, 28, 496, 8128 | 16 números (1 al 9, 153, 370, 371, 407, 1634, 8208, 9474) | 205 | 7560 (64 divisores) | Existe (por ejemplo, 101) |

**Reto de eficiencia:** tu programa debe terminar en pocos segundos para `A = 1`, `B = 10000`. Si se demora más, revisa hasta dónde recorre el ciclo que busca divisores.

**Casos de prueba que debes verificar:** `A = 1`, `B = 2`; un rango sin ningún primo (por ejemplo, 24 a 28); un rango donde el número con más divisores se repite; `B = 10000`.