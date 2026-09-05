## Tarifa de paquete turístico según categoría de cliente, temporada y anticipación
Una agencia de viajes calcula el precio final de un paquete turístico combinando el país de origen del cliente (que define un impuesto de salida distinto), su categoría de fidelidad, la temporada del viaje y con cuánta anticipación compra.

**Datos de entrada:** precio base del paquete, país de origen (1 = Local, 2 = Regional, 3 = Internacional), categoría del cliente (B = Bronce, S = Silver, G = Gold), temporada (A = alta, Ba = baja), días de anticipación de compra.

**Tabla de impuesto de salida según origen:**

| Origen | Impuesto |
|---|---|
| 1. Local | 2% |
| 2. Regional | 8% |
| 3. Internacional | 15% |

**Reglas de descuento por categoría (se aplican solo si la temporada es baja):**
- Gold: 20% de descuento.
- Silver: 12% de descuento.
- Bronce: 5% de descuento.
- Si la temporada es alta, ningún cliente recibe este descuento, sin importar su categoría.

**Reglas de recargo/descuento por anticipación (se aplican siempre, independientemente de la temporada):**
- Si compra con 30 días o más de anticipación → descuento adicional del 8%.
- Si compra entre 8 y 29 días de anticipación → sin cambio.
- Si compra con 7 días o menos de anticipación → recargo del 15% ("tarifa de última hora").

**Orden de aplicación:** primero el impuesto de salida sobre el precio base, luego el descuento por categoría/temporada sobre ese subtotal, y por último el ajuste por anticipación sobre el resultado anterior.

**Salida esperada:** precio base, impuesto de salida, subtotal tras descuento por categoría, y precio final tras el ajuste por anticipación.
