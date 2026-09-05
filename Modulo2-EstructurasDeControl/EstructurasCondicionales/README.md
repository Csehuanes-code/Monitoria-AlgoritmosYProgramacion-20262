# ⚖️ Estructuras Condicionales

**Monitoría de Algoritmos y Programación — Talento Magdalena y Talento Santa Marta (2026-II)**  
Monitor: Carlos Andrés Sehuanes Angulo · Ingeniería de Sistemas

---

Esta carpeta contiene todo el material práctico y conceptual enfocado exclusivamente en las **estructuras de control condicionales** (toma de decisiones). Aquí aprenderás a estructurar algoritmos capaces de bifurcar su flujo de ejecución evaluando condiciones lógicas y reglas de negocio, pasando de la lógica pura en pseudocódigo hasta su codificación limpia en C++.

---

## 📂 Contenido de la Carpeta

```text
EstructurasCondicionales/
├── README.md                           ← (Estás aquí) Guía de la sección y ruta de trabajo
├── Logic_to_Clean_Code.pdf             ← Presentación maestra: pensamiento computacional y Clean Code
└── Ejercicios/                         ← Banco de 11 problemas con dificultad ascendente
    ├── Domicilio-Comida/
    ├── Imc-Estudiantes/
    ├── MateriasAprobadas-PrimerSemestre/
    ├── MinsaJubilaciones/
    ├── Calculo-Impuestos-Tienda/
    ├── Automoviles/
    ├── CreditoEstudiantil/
    ├── ServicioTuristico/
    ├── TecnoAdiana/
    ├── CaribeanNice/
    └── Reto-ProgramacionIntegrada-AutoCosta/
```

---

## 📖 Material de Apoyo: `Logic_to_Clean_Code.pdf`

El documento [**`Logic_to_Clean_Code.pdf`**](./Logic_to_Clean_Code.pdf) constituye la base conceptual y metodológica de esta sección. Sintetiza cómo transformar un problema del mundo real en una solución algorítmica estructurada y profesional:

* **Las 4 Dimensiones del Desarrollo:**
  1. **Mentalidad:** Pensamiento computacional (descomposición, abstracción, reconocimiento de patrones y algoritmos).
  2. **Método:** Resolución estructurada bajo el paradigma **Entrada — Proceso — Salida (E-P-S)**.
  3. **Ejecución:** El uso del pseudocódigo en **PSeInt** como puente formal entre el lenguaje natural y el lenguaje de programación de máquina.
  4. **Maestría:** Aplicación de estándares profesionales de ***Clean Code*** (escribir código para humanos, no solo para máquinas).
* **La Regla del 80/20:** *Escribir software es 80% pensar y estructurar, y 20% tipear código*. Ningún ejercicio debe programarse sin haber diseñado previamente su árbol de decisiones en papel o pizarra.
* **Buenas Prácticas en Condicionales:**
  * Sustitución de *números mágicos* por variables o constantes explicativas (ej. tasas de IVA, umbrales de edad).
  * Uso de *cláusulas de guarda* (retorno temprano) para evitar anidamientos profundos (*Arrow Anti-Pattern*).
  * Nombres de variables autodescriptivos con significado booleano (`esMayorDeEdad`, `tieneCodeudor`).

---

## 🏗️ Estructura de los Ejercicios

Cada carpeta dentro de [`Ejercicios/`](./Ejercicios/) sigue un estándar uniforme de documentación y solución:

1. **Descripción del Problema:** Todo ejercicio cuenta con su enunciado claramente planteado, ya sea mediante un archivo de texto en formato Markdown ([`problema.md`](./Ejercicios/Calculo-Impuestos-Tienda/problema.md)) o como imagen digitalizada del planteamiento del docente ([`problema.jpeg`](./Ejercicios/Automoviles/problema.jpeg) / [`problema.png`](./Ejercicios/MateriasAprobadas-PrimerSemestre/problema.png)). En él se especifican:
   * Datos de entrada requeridos.
   * Reglas de negocio y tablas de tarifas/condiciones.
   * Salidas y resultados esperados.
2. **Soluciones Implementadas:** Casos de estudio modelo cuentan con la solución construida en pseudocódigo PSeInt (`.psc`) y su respectiva implementación compilable en C++ (`.cpp`), evidenciando cómo pasar de la lógica algorítmica a un código limpio con validación defensiva de datos (ver por ejemplo [`CaribeanNice`](./Ejercicios/CaribeanNice/)).

---

## 📈 Dificultad Progresiva de los Ejercicios

Los 11 ejercicios están organizados en una curva de aprendizaje **ascendente**. Están diseñados para que avances paso a paso, desde bifurcaciones directas hasta sistemas multinivel con múltiples variables dependientes:

```
[Nivel 1: Fundamentos] ────► [Nivel 2: Selección Múltiple] ────► [Nivel 3: Anidamiento] ────► [Nivel 4: Reto Integrador]
  • Domicilio-Comida           • MinsaJubilaciones                • CreditoEstudiantil          • AutoCosta
  • Imc-Estudiantes            • Calculo-Impuestos-Tienda         • ServicioTuristico
  • MateriasAprobadas          • Automoviles                      • TecnoAdiana
                                                                  • CaribeanNice
```

### Nivel 1: Fundamentos (Condicionales Simples y Dobles)
Problemas donde se evalúa una condición única o dos alternativas excluyentes con cálculos aritméticos directos:
* [`Domicilio-Comida`](./Ejercicios/Domicilio-Comida/): Recargo fijo por zona y descuento comercial del 10% exclusivo para pago con App.
* [`Imc-Estudiantes`](./Ejercicios/Imc-Estudiantes/): Cálculo del IMC con diagnóstico en rangos numéricos según corte de mayoría de edad.
* [`MateriasAprobadas-PrimerSemestre`](./Ejercicios/MateriasAprobadas-PrimerSemestre/): Promedio de notas en dos asignaturas, verificación del umbral ($\ge 350$ pts) y conteo de aprobadas.

### Nivel 2: Selección Múltiple y Condiciones Compuestas
Problemas que introducen estructuras `Segun` / `switch` y operadores lógicos (`Y`, `O`):
* [`MinsaJubilaciones`](./Ejercicios/MinsaJubilaciones/): Clasificación de pensionados evaluando edad frente a años de antigüedad laboral con proposiciones compuestas.
* [`Calculo-Impuestos-Tienda`](./Ejercicios/Calculo-Impuestos-Tienda/): Impuestos categorizados (1 al 3) y descuento en efectivo condicionado a que el precio base supere un umbral ($50.000).
* [`Automoviles`](./Ejercicios/Automoviles/): Impuesto por continente de origen, escala fraccionaria de bonos por precio inicial y sobretasa ecológica cruzada.

### Nivel 3: Anidamiento Jerárquico y Reglas de Negocio Avanzadas
Problemas del mundo laboral y financiero que combinan validaciones de entrada, dependencias jerárquicas y múltiples tramos:
* [`CreditoEstudiantil`](./Ejercicios/CreditoEstudiantil/): Evaluación de crédito educativo evaluando filtros de edad, respaldo de codeudor, rangos salariales y niveles de riesgo.
* [`ServicioTuristico`](./Ejercicios/ServicioTuristico/): Impuestos de salida territorial, descuentos de membresía exclusivos para temporada baja y ajustes por días de anticipación.
* [`TecnoAdiana`](./Ejercicios/TecnoAdiana/): Nómina quincenal con horas extras según tipo y modalidad de contrato (planta/temporal), bonos escalonados por antigüedad y descuentos progresivos de seguridad social.
* [`CaribeanNice`](./Ejercicios/CaribeanNice/): Caso de estudio integral con validación estricta de datos de entrada, tarifas de horas extras, aportes a salud (fijo Sisbén vs 4% general) y subsidios laborales. *(Incluye solución completa en PSeInt y C++)*.

---

## 🏆 El Reto de Programación Integrada: AutoCosta

Al final del banco de ejercicios se encuentra el [**`Reto-ProgramacionIntegrada-AutoCosta`**](./Ejercicios/Reto-ProgramacionIntegrada-AutoCosta/), el desafío culminante de esta sección.

### ¿Por qué es un reto integrador?
Combina en un solo flujo secuencial las lógicas de todos los ejercicios anteriores **sin utilizar ciclos**:
1. **Fase 1 (Impuesto de Origen):** Selección según procedencia vehicular (3%, 10%, 22%).
2. **Fase 2 (Descuento de Contado):** Bonificación por categoría de fidelidad (VIP, Frecuente, Nuevo), aplicable *únicamente* si el pago es al contado.
3. **Fase 3 (Evaluación Financiera Secuencial):** Si el cliente solicita financiación, debe superar tres filtros encadenados (mayoría de edad $\ge 18$, cuota inicial $\ge 30\%$ y capacidad de pago con ingreso $\ge 2.5 \times \text{cuota estimada}$). Si alguno falla, el algoritmo debe rechazar la solicitud reportando el motivo exacto. Si califica, asigna la tasa de interés anual correspondiente.
4. **Fase 4 (Comisión Escalonada del Vendedor):** Cálculo de comisión por tramos sobre la venta final, con incentivo porcentual adicional si el cliente es VIP y pagó de contado.

> 💡 **Consejo:** Dibuja el árbol de decisiones completo en papel antes de codificar. Al tener 4 fases encadenadas, el orden de los `Si` anidados es el punto crítico donde suelen ocurrir errores lógicos.

---

## 🗺️ Ruta de Realización Sugerida para el Estudiante

Para sacar el máximo provecho a este módulo, sigue este orden de trabajo:

```
Paso 1: Lectura Conceptual          Paso 2: Práctica de Base
   [Logic_to_Clean_Code.pdf]    ──►   [Nivel 1: Ejercicios 1 a 3]
                                              │
                                              ▼
Paso 4: El Desafío Final            Paso 3: Complejidad Gradual
   [Reto AutoCosta]             ◄──   [Nivel 2 y 3: Ejercicios 4 a 10]
        │
        ▼
Paso 5: Refactorización a Clean Code en C++
```

1. **Estudia la guía maestra:** Revisa [`Logic_to_Clean_Code.pdf`](./Logic_to_Clean_Code.pdf), prestando atención al paradigma E-P-S y las diapositivas de *Clean Code*.
2. **Resuelve el Nivel 1:** Desarrolla `Domicilio-Comida`, `Imc-Estudiantes` y `MateriasAprobadas-PrimerSemestre` asegurándote de identificar claramente entradas, condiciones y salidas.
3. **Avanza con Selección Múltiple y Anidamiento:** Desarrolla los ejercicios de Nivel 2 y Nivel 3. Toma como modelo el código de [`CaribeanNice`](./Ejercicios/CaribeanNice/) para ver cómo se implementa la validación de datos de entrada tanto en PSeInt como en C++.
4. **Resuelve el Reto Integrador `AutoCosta`:** Diseña primero el diagrama de flujo o árbol de decisiones en papel y luego impleméntalo en pseudocódigo.
5. **Traduce a C++ y Refactoriza:** Pasa tus algoritmos a C++ en VS Code, reemplazando cualquier número mágico por constantes con nombre y verificando que el código sea legible y autoexplicativo.

---

## 📋 Cuadro General de Ejercicios

| Ejercicio | Formato de Enunciado | Soluciones Disponibles | Nivel |
| :--- | :---: | :---: | :---: |
| [`Domicilio-Comida`](./Ejercicios/Domicilio-Comida/) | `problema.md` | Enunciado y reglas | Nivel 1 (Básico) |
| [`Imc-Estudiantes`](./Ejercicios/Imc-Estudiantes/) | `problema.md` | Enunciado y rangos | Nivel 1 (Básico) |
| [`MateriasAprobadas-PrimerSemestre`](./Ejercicios/MateriasAprobadas-PrimerSemestre/) | `problema.png` | `materias-aprobadas.psc` | Nivel 1 (Básico) |
| [`MinsaJubilaciones`](./Ejercicios/MinsaJubilaciones/) | `problema.md` | Enunciado y reglas | Nivel 2 (Intermedio) |
| [`Calculo-Impuestos-Tienda`](./Ejercicios/Calculo-Impuestos-Tienda/) | `problema.md` | Enunciado y reglas | Nivel 2 (Intermedio) |
| [`Automoviles`](./Ejercicios/Automoviles/) | `problema.jpeg` | Enunciado y fórmulas | Nivel 2 (Intermedio) |
| [`CreditoEstudiantil`](./Ejercicios/CreditoEstudiantil/) | `problema.md` | Enunciado y árbol lógico | Nivel 3 (Avanzado) |
| [`ServicioTuristico`](./Ejercicios/ServicioTuristico/) | `problema.md` | Enunciado y reglas | Nivel 3 (Avanzado) |
| [`TecnoAdiana`](./Ejercicios/TecnoAdiana/) | `problema.md` | Enunciado y liquidación | Nivel 3 (Avanzado) |
| [`CaribeanNice`](./Ejercicios/CaribeanNice/) | `problema.jpeg` | `caribean-nice.psc`, `.cpp`, `solucion.psc` | Nivel 3 (Avanzado / Modelo) |
| [`Reto-ProgramacionIntegrada-AutoCosta`](./Ejercicios/Reto-ProgramacionIntegrada-AutoCosta/) | `problema.md` | Enunciado multinivel | Nivel 4 (Reto Integrador) |

---

⬅️ [Volver al Inicio del Repositorio](../../README.md)
