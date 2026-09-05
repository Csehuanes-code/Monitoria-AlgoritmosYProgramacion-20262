## Domicilio de comida
Una aplicación de domicilios cobra el valor del pedido más un recargo por zona de entrega, y aplica un descuento si el cliente paga por la app.

**Datos de entrada:** valor del pedido, zona (1 = cerca, 2 = media, 3 = lejos), forma de pago (E = efectivo, A = app).

**Reglas:**
- Recargo por zona: zona 1 → $2.000; zona 2 → $4.500; zona 3 → $7.000.
- Si paga por la app, se aplica un descuento del 10% sobre el valor del pedido (el recargo de zona **no** entra al descuento).
- Si paga en efectivo, no hay descuento.

**Salida esperada:** valor del pedido, recargo, descuento aplicado y total a pagar.
