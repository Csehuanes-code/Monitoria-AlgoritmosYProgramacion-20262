## Simulador de meta de ahorro con aportes crecientes

La cooperativa **AhorraCosta** quiere ofrecer a sus afiliados un simulador que muestre **en qué momento** alcanzarán una meta de ahorro. El afiliado hace un aporte mensual que **aumenta cada año**, y el dinero acumulado genera un interés mensual.

**Restricciones:** no se permiten arreglos ni funciones. La simulación debe usar un ciclo **externo por años** y un ciclo **interno por meses**, y debe detenerse **en el mes exacto** en que se alcanza la meta (puedes usar una bandera `bool` o `break`).

**Datos de entrada:**
- `meta`: valor que se desea ahorrar.
- `aporte_inicial`: aporte mensual durante el primer año.
- `tasa_mensual`: interés mensual sobre el saldo acumulado (en porcentaje).
- `incremento_anual`: porcentaje en que sube el aporte mensual al comenzar cada nuevo año.
- `plazo_anios`: máximo de años a simular.

**Validación de la entrada (se repite cada dato hasta que sea válido):**

| Dato | Rango válido |
|---|---|
| `meta` | Mayor a 0 |
| `aporte_inicial` | Mayor a 0 y menor a `meta` |
| `tasa_mensual` | Entre 0 y 5 (inclusive) |
| `incremento_anual` | Entre 0 y 30 (inclusive) |
| `plazo_anios` | Entre 1 y 30 (inclusive) |

**Reglas de la simulación (para cada mes):**
1. Primero se calcula el interés del mes: `interes = saldo * tasa_mensual / 100` (sobre el saldo del mes anterior).
2. Luego se suman al saldo el interés y el aporte mensual vigente.
3. Si el saldo es mayor o igual a la meta, la simulación **termina en ese mes**.
4. Al terminar los 12 meses de un año sin haber alcanzado la meta, el aporte mensual del siguiente año se incrementa: `aporte = aporte * (1 + incremento_anual / 100)`.
5. Si se agota el plazo sin alcanzar la meta, la simulación termina.

**Salida por cada año simulado:** número del año, aporte mensual vigente, total aportado en el año, intereses ganados en el año y saldo al cierre del año (o al momento de alcanzar la meta).

**Salida final:**
- Si se alcanzó la meta: el año y el mes exactos, el total aportado, el total de intereses y el porcentaje que los intereses representan del saldo final.
- Si **no** se alcanzó: el saldo final, el valor que faltó y el porcentaje de la meta que se logró.
- Indicar **"Sí"** o **"No"** hubo algún año en que los **intereses ganados superaron a los aportes** de ese mismo año.

**Ejemplo** (meta = $10.000.000, aporte inicial = $300.000, tasa = 1 % mensual, incremento anual = 10 %, plazo = 5 años). Los valores pueden variar en ±1 peso por redondeo:

| Año | Aporte mensual | Aportado en el año | Intereses del año | Saldo al cierre |
|---|---|---|---|---|
| 1 | $300.000 | $3.600.000 | $204.751 | $3.804.751 |
| 2 | $330.000 | $3.960.000 | $707.764 | $8.472.515 |
| 3 (hasta el mes 4) | $363.000 | $1.452.000 | $365.944 | $10.290.458 |

**Resultado esperado del ejemplo:** la meta se alcanza en el **año 3, mes 4**; total aportado $9.012.000; total de intereses $1.278.458 (≈ 12,4 % del saldo final); **No** hubo ningún año en que los intereses superaran a los aportes.

**Casos de prueba que debes verificar:** una meta inalcanzable dentro del plazo (por ejemplo, plazo de 1 año); tasa 0 %; una meta que se alcanza justo en el mes 12 de un año; un dato fuera de rango que debe volver a pedirse.