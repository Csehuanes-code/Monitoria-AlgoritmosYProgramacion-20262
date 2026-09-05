## Nómina quincenal con horas extra, tipo de contrato y descuentos por tramo
La empresa **TecnoAndina S.A.S.** necesita liquidar la quincena de un empleado combinando tipo de contrato, tipo de hora extra y descuentos de salud/pensión que dependen del rango salarial.

**Datos de entrada:** salario básico quincenal, tipo de contrato (P = planta, T = temporal), cantidad de horas extra, tipo de hora extra (D = diurna, N = nocturna, F = festiva), años de antigüedad en la empresa.

**Reglas de horas extra (valor hora ordinaria = salario básico / 120):**
- Diurna: se paga al 125% del valor hora ordinaria.
- Nocturna: se paga al 175% del valor hora ordinaria.
- Festiva: se paga al 200% del valor hora ordinaria; **además**, si el contrato es de planta, se paga al 210% en vez de 200%.

**Regla de bono de antigüedad (solo contrato de planta):**
- Si antigüedad ≥ 5 años → bono fijo de $60.000.
- Si antigüedad está entre 2 y 4 años → bono fijo de $30.000.
- Si antigüedad < 2 años → sin bono.
- Si el contrato es temporal, nunca hay bono, sin importar la antigüedad.

**Reglas de descuento salud + pensión (sobre salario básico + horas extra, sin incluir el bono):**
- Si el total devengado (antes de bono) es menor o igual a $800.000 → 4% salud + 4% pensión.
- Si está entre $800.001 y $2.000.000 → 4% salud + 5% pensión.
- Si es mayor a $2.000.000 → 4.5% salud + 5.5% pensión (aporte solidario adicional).

**Salida esperada:** valor hora ordinaria, valor pagado por horas extra, bono de antigüedad, total devengado, descuentos de salud y pensión, y neto a pagar.
