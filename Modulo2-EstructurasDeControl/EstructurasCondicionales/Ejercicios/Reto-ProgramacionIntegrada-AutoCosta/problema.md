## Sistema de Venta y Financiación de Vehículos "AutoCosta"

Este reto combina en un solo algoritmo la lógica de los tres problemas originales (tabla de impuestos por origen, nómina/comisión con condicionales anidados, y evaluación de criterios múltiples tipo aprobado/reprobado), elevando el número de variables y decisiones encadenadas. **Sigue sin requerir ningún ciclo**: es un solo cliente, una sola operación, evaluada paso a paso.

**Contexto:** El concesionario "AutoCosta" vende un vehículo y debe calcular tanto el **precio final de venta** como si el cliente **califica o no para financiación**, y la **comisión del vendedor**.

**Datos de entrada:**
`precio_base`, `origen_vehiculo` (1=Nacional, 2=Andino, 3=Resto del mundo), `tipo_cliente` (N=Nuevo, F=Frecuente, V=VIP), `medio_pago` (Cont=Contado, Fin=Financiado), `edad_cliente`, `ingreso_mensual_cliente`, `cuota_inicial` (solo si es financiado).

**Parte 1 — Impuesto de importación según origen:**

| Origen | Impuesto |
|---|---|
| 1. Nacional | 3% |
| 2. Andino | 10% |
| 3. Resto del mundo | 22% |

**Parte 2 — Descuento por tipo de cliente (solo si paga de contado):**
- VIP: 7% sobre precio con impuesto.
- Frecuente: 4%.
- Nuevo: sin descuento.
- Si es financiado, **ningún** cliente recibe este descuento (en su lugar aplica la Parte 3).

**Parte 3 — Evaluación de financiación (solo si `medio_pago = Fin`):**
Debe cumplirse **todo** lo siguiente para pre-aprobar; si falla cualquiera, se rechaza indicando el primer motivo que falle, en este orden de verificación:
1. `edad_cliente` ≥ 18 (si no, rechazar: "Edad insuficiente").
2. `cuota_inicial` ≥ 30% del precio con impuesto (si no, rechazar: "Cuota inicial insuficiente").
3. `ingreso_mensual_cliente` ≥ 2.5 veces la cuota mensual estimada, donde cuota mensual estimada = (precio con impuesto − cuota_inicial) / 36 (si no, rechazar: "Capacidad de pago insuficiente").

Si pre-aprueba, se le asigna una tasa de interés anual:
- Si `tipo_cliente` = VIP → 12% anual.
- Si `tipo_cliente` = Frecuente → 16% anual.
- Si `tipo_cliente` = Nuevo → 20% anual.

**Parte 4 — Comisión del vendedor** (calculada sobre el precio final que efectivamente paga o financia el cliente, es decir, después de impuesto y del descuento de contado si aplica; si fue financiado y rechazado, la comisión es $0 porque no hubo venta):
- Venta ≥ $150.000.000 → comisión del 3%.
- Venta entre $80.000.000 y $149.999.999 → comisión del 2%.
- Venta < $80.000.000 → comisión del 1%.
- **Bono adicional:** si el cliente es VIP y pagó de contado, la comisión calculada se incrementa en un 0.5 punto porcentual adicional (por ejemplo, 3% pasa a 3.5%).

**Salida esperada:** precio con impuesto, precio final de venta (o motivo de rechazo si la financiación no califica), estado de la financiación con su tasa (si aplica), y comisión del vendedor en pesos.

*Sugerencia para el monitor:* pedir a cada estudiante que primero dibuje el árbol de decisiones en papel (como en la Estrategia "Pizarras colaborativas" del plan de trabajo) antes de escribir el pseudocódigo — con 4 partes encadenadas, el orden de evaluación de los `Si anidados` es la parte que más se presta a errores.
