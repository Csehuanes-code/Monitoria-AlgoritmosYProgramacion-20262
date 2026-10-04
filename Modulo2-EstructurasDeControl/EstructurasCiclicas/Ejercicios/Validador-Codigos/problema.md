## Validador de códigos de afiliados con dígito verificador

La biblioteca distrital de Santa Marta entrega a cada afiliado un **código numérico** cuyo **último dígito es un dígito verificador**. Antes de cargar una lista de códigos al sistema, el personal necesita validarlos y obtener estadísticas de la lista.

**Restricciones:** no se permiten arreglos, funciones ni conversión del número a texto (`string`). Todo el análisis debe hacerse con un ciclo `while` usando las operaciones `%` (último dígito) y `/` (quitar el último dígito). Usa el tipo `long long`.

**Datos de entrada:** cantidad N de códigos a validar (N ≥ 1) y, luego, los N códigos.

**Validación de la entrada (se repite hasta que sea válida):**
- N debe ser mayor o igual a 1.
- Cada código debe ser un entero **mayor o igual a 10** (necesita al menos 2 dígitos). Si no lo es, se vuelve a pedir el mismo código y **no cuenta** dentro de los N.

**Análisis de cada código** (todo con ciclos `while`):
1. **Cantidad de dígitos.**
2. **Suma de todos sus dígitos.**
3. **Número invertido** (por ejemplo, 12340 → 4321). Un código es **capicúa** si es igual a su inverso.
4. **Dígito verificador:** se separa el último dígito del resto del código. El código es **VÁLIDO** si la suma de los dígitos del *resto* (sin el último dígito), tomada módulo 10, es igual al último dígito. En caso contrario es **INVÁLIDO**.

**Salida por cada código:** el código, su cantidad de dígitos, la suma de sus dígitos, su inverso, si es capicúa (Sí/No) y si es VÁLIDO o INVÁLIDO.

**Salida final (resumen de la lista):**
- Cantidad y porcentaje de códigos válidos e inválidos.
- Cantidad de códigos que son **válidos y capicúa**.
- El código con **mayor cantidad de dígitos** (si hay empate, el que se ingresó primero).
- El código con **mayor suma de dígitos** (si hay empate, el que se ingresó primero).
- Indicar **"Existe"** o **"No existe"** algún código válido con más de 8 dígitos.

**Ejemplo** (N = 5, códigos: 12340, 12343, 909, 2002, 987654321):

| Código | Dígitos | Suma | Inverso | Capicúa | Resultado |
|---|---|---|---|---|---|
| 12340 | 5 | 10 | 4321 | No | VÁLIDO (resto 1234 → suma 10 → 0 = último dígito) |
| 12343 | 5 | 13 | 34321 | No | INVÁLIDO (resto 1234 → 0, pero el último dígito es 3) |
| 909 | 3 | 18 | 909 | Sí | VÁLIDO (resto 90 → suma 9 = último dígito) |
| 2002 | 4 | 4 | 2002 | Sí | VÁLIDO (resto 200 → suma 2 = último dígito) |
| 987654321 | 9 | 45 | 123456789 | No | INVÁLIDO (resto 98765432 → suma 44 → 4, pero el último dígito es 1) |

**Resumen esperado:** 3 válidos (60 %) y 2 inválidos (40 %); 2 códigos válidos y capicúa; mayor cantidad de dígitos: 987654321; mayor suma de dígitos: 987654321 (45); **No existe** un código válido con más de 8 dígitos.

**Casos de prueba que debes verificar:** un código de exactamente 2 dígitos (por ejemplo, 11); un código terminado en 0 (por ejemplo, 120); un código con ceros intermedios (por ejemplo, 2002); un valor menor a 10 que debe ser rechazado y pedido de nuevo.