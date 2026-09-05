## Clasificación de IMC por grupo de edad
Un centro de bienestar universitario quiere clasificar a un estudiante según su Índice de Masa Corporal (IMC = peso / estatura²), pero el rango "normal" cambia según si es menor o mayor de 18 años.

**Datos de entrada:** peso (kg), estatura (m), edad (años).

**Reglas:**
- Si edad < 18: Bajo peso si IMC < 17; Normal si 17 ≤ IMC < 23; Sobrepeso si IMC ≥ 23.
- Si edad ≥ 18: Bajo peso si IMC < 18.5; Normal si 18.5 ≤ IMC < 25; Sobrepeso si IMC ≥ 25.

**Salida esperada:** IMC calculado y categoría según el grupo de edad correspondiente.