## Factura con impuesto por categoría y recargo por medio de pago
Una tienda vende productos de tres categorías, cada una con una tasa de impuesto distinta, y además cobra un recargo o da un descuento según el medio de pago.

**Datos de entrada:** precio del producto, categoría (1 = Alimentos, 2 = Tecnología, 3 = Ropa), medio de pago (T = tarjeta de crédito, D = tarjeta débito, E = efectivo).

**Reglas de impuesto según categoría:**

| Categoría | Impuesto |
|---|---|
| 1. Alimentos | 5% |
| 2. Tecnología | 19% |
| 3. Ropa | 12% |

**Reglas de medio de pago (se aplican sobre el precio + impuesto):**
- Tarjeta de crédito: recargo del 3% (cuota de manejo).
- Tarjeta débito: sin recargo ni descuento.
- Efectivo: descuento del 5%, pero **solo si** el precio del producto (sin impuesto) es mayor a $50.000; si es menor o igual, no aplica descuento por efectivo.

**Salida esperada:** precio base, impuesto, subtotal, recargo/descuento aplicado y total final.
