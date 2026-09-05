## Evaluación de solicitud de crédito estudiantil
Un banco universitario evalúa solicitudes de crédito educativo con varios requisitos que deben cumplirse en conjunto, y según el resultado asigna una categoría de riesgo.

**Datos de entrada:** edad, ingreso mensual familiar, promedio académico acumulado (escala 0–500), ¿tiene codeudor? (S/N).

**Reglas:**
- Si edad < 16 → Rechazado automáticamente ("Menor de edad sin representante registrado").
- Si edad ≥ 16:
  - Si el ingreso mensual familiar es menor a $1.500.000 **y** no tiene codeudor → Rechazado ("Ingresos insuficientes sin respaldo").
  - Si el ingreso es menor a $1.500.000 **y** sí tiene codeudor:
    - Si el promedio es mayor o igual a 350 → Aprobado con "Riesgo medio".
    - Si el promedio es menor a 350 → Rechazado ("Promedio insuficiente para respaldo").
  - Si el ingreso es mayor o igual a $1.500.000:
    - Si el promedio es mayor o igual a 400 → Aprobado con "Riesgo bajo".
    - Si el promedio está entre 300 y 399 → Aprobado con "Riesgo medio".
    - Si el promedio es menor a 300 → Rechazado ("Promedio insuficiente").

**Salida esperada:** estado de la solicitud (Aprobado/Rechazado) y, si aplica, la categoría de riesgo o el motivo del rechazo.
