## Cajero automático con clave, menú, límites y comisiones

El banco **BancoCosta** quiere simular el funcionamiento de uno de sus cajeros automáticos. El cliente debe autenticarse con su clave y luego puede realizar operaciones hasta que decida salir. Al terminar la sesión, el cajero imprime un resumen de lo ocurrido.

**Restricciones:** no se permiten arreglos ni funciones. Usa un ciclo para los intentos de clave y un `do-while` para el menú.

**Constantes del sistema (defínelas con nombre en tu código):**

| Constante | Valor |
|---|---|
| Clave correcta | 4821 |
| Máximo de intentos de clave | 3 |
| Límite de retiro acumulado por sesión | $1.000.000 |
| Los retiros deben ser múltiplos de | $10.000 |
| Comisión por retiro (a partir del 3.er retiro exitoso de la sesión) | $2.000 |

**Datos de entrada:** saldo inicial de la cuenta (mayor o igual a 0), clave digitada por el usuario, opción del menú y monto de cada operación.

**Parte 1 — Autenticación:**
- El usuario tiene **3 intentos** para digitar la clave. Si acierta, entra al menú.
- Si agota los 3 intentos, se muestra "Tarjeta bloqueada" y el programa termina **sin mostrar el menú ni el reporte**.

**Parte 2 — Menú (se repite hasta que el usuario elija salir):**

```
1. Consultar saldo
2. Depositar
3. Retirar
4. Salir
```

- Si la opción no está entre 1 y 4, se muestra un mensaje y se vuelve a mostrar el menú (no cuenta como operación).
- **Consultar saldo:** muestra el saldo actual.
- **Depositar:** el monto debe ser mayor a 0 (si no lo es, se vuelve a pedir hasta que sea válido). Se suma al saldo.
- **Retirar:** el monto debe ser mayor a 0 (si no lo es, se vuelve a pedir). Después, el retiro se **rechaza** (indicando el motivo, y sin modificar el saldo) si ocurre cualquiera de estos casos, evaluados en este orden:
  1. El monto no es múltiplo de $10.000 → "Monto no permitido".
  2. El monto más la comisión (si corresponde) supera el saldo → "Saldo insuficiente".
  3. El retiro acumulado de la sesión más el monto supera $1.000.000 → "Límite de retiro excedido".
- Si el retiro es aceptado, se descuenta del saldo el monto y, si es el **tercer retiro exitoso o posterior**, también la comisión de $2.000.

**Parte 3 — Reporte de cierre (solo si la autenticación fue exitosa):**
- Cantidad de consultas, depósitos, retiros exitosos y retiros rechazados.
- Total depositado y total retirado (sin contar comisiones).
- Total de comisiones cobradas.
- Mayor retiro exitoso de la sesión (o "No hubo retiros" si no hubo).
- Promedio de los depósitos (o "No hubo depósitos").
- Indicar **"Hubo"** o **"No hubo"** retiros rechazados.
- Saldo final.

**Ejemplo de sesión** (saldo inicial $500.000, clave correcta al primer intento):

| Operación | Resultado | Saldo |
|---|---|---|
| Depositar $200.000 | Aceptado | $700.000 |
| Retirar $100.000 | Aceptado (1.er retiro) | $600.000 |
| Retirar $50.000 | Aceptado (2.º retiro) | $550.000 |
| Retirar $20.000 | Aceptado (3.er retiro, comisión $2.000) | $528.000 |
| Retirar $15.000 | Rechazado: "Monto no permitido" | $528.000 |
| Salir | — | $528.000 |

**Reporte esperado del ejemplo:** 0 consultas, 1 depósito, 3 retiros exitosos, 1 rechazado; total depositado $200.000; total retirado $170.000; comisiones $2.000; mayor retiro $100.000; promedio de depósitos $200.000; **Hubo** retiros rechazados; saldo final $528.000.

**Casos de prueba que debes verificar:** clave incorrecta 3 veces; sesión en la que solo se elige "Salir"; retiro que supera el límite acumulado de $1.000.000 en varios retiros pequeños; opción de menú inválida.