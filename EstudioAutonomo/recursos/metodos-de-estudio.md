# 📚 Métodos de estudio: qué funciona (y qué no), según la evidencia

No todos los métodos de estudio son igual de efectivos, aunque se sientan igual de productivos. La revisión más citada en psicología educativa sobre este tema es la de Dunlosky, Rawson, Marsh, Nathan y Willingham (2013), publicada en *Psychological Science in the Public Interest*, que evaluó diez técnicas de estudio comunes según la evidencia experimental disponible.

## ✅ Técnicas con evidencia alta

### 1. Práctica de recuperación (*retrieval practice* / autoevaluación)
Consiste en intentar recordar activamente la información desde la memoria (por ejemplo, con tarjetas de estudio o cerrando el libro e intentando explicar el tema), en lugar de solo releerla.

- Es una de las dos técnicas que Dunlosky et al. (2013) calificaron con **utilidad alta**, junto con la práctica distribuida.
- Más de un siglo de investigación —iniciada con Abbott en 1909— confirma que **hacerse pruebas mejora el aprendizaje más que solo repasar** la información pasivamente.
- Ya en 1906, Edward Thorndike señalaba que recuperar un dato activamente desde la memoria es más efectivo que simplemente volver a leerlo.

**Cómo aplicarlo:** cierra los apuntes y trata de escribir o decir en voz alta todo lo que recuerdas del tema. Luego compara con el material original y anota lo que te faltó.

### 2. Práctica distribuida (*spaced practice* / repetición espaciada)
Consiste en repartir las sesiones de estudio en el tiempo, en lugar de concentrar todo el estudio la noche anterior al examen (*cramming*).

- Es la otra técnica con **utilidad alta** en la revisión de Dunlosky et al. (2013).
- El fenómeno se documentó desde los experimentos de Ebbinghaus sobre la curva del olvido: la información se olvida de forma exponencial después de estudiarla una vez, pero ese olvido se frena si se repasa en sesiones espaciadas.
- La investigación indica que, dentro de ciertos límites, **espaciar más el repaso en el tiempo produce mejores resultados** que espaciarlo poco.

**Cómo aplicarlo:** en vez de estudiar un tema 4 horas seguidas un solo día, estúdialo 1 hora en 4 días distintos. Para programación, esto significa repasar la sintaxis de `for`/`while` varias veces en la semana, no solo la noche antes del parcial.

## ⚠️ Técnicas con evidencia moderada

### 3. Auto-explicación
Explicarte a ti mismo por qué un paso de un procedimiento es correcto, o cómo se relaciona una idea nueva con lo que ya sabes. Los estudios muestran efectos positivos tanto en pruebas de memoria como en tareas de transferencia (resolver problemas nuevos con la misma lógica).

### 4. Técnica Feynman
No forma parte del estudio original de Dunlosky, pero es coherente con los mecanismos de "utilidad alta" que sí identificaron: combina recuperación activa, auto-explicación y reformulación con palabras propias. El método, atribuido al físico Richard Feynman, consiste en:

1. Elegir un concepto.
2. Explicarlo con palabras simples, como si se lo enseñaras a alguien sin conocimientos previos.
3. Identificar en qué punto te trabas o usas palabras técnicas sin entenderlas del todo (ahí está tu laguna).
4. Volver a la fuente, llenar el vacío y simplificar de nuevo.

**Por qué funciona:** obliga al cerebro a reformular activamente la información en vez de reconocerla pasivamente, lo que combina práctica de recuperación con auto-explicación.

### 5. Mapas conceptuales
Útiles para organizar visualmente relaciones entre ideas antes de aplicar técnicas de recuperación activa. Funcionan mejor como paso intermedio (organizar) que como técnica de repaso final por sí sola.

## ❌ Técnicas populares pero de baja utilidad

Según la misma revisión de Dunlosky et al. (2013), estas son las técnicas que **más usan los estudiantes** pero que tienen **menor respaldo experimental** cuando se usan solas:

- **Releer el material:** da una falsa sensación de dominio ("esto ya lo vi, ya lo sé") sin obligar al cerebro a recuperar nada activamente.
- **Subrayar o resaltar:** ayuda a identificar información importante, pero no mejora por sí sola la retención ni la comprensión profunda.
- **Resumir:** requiere más habilidad de la que parece para ser efectivo, y su beneficio depende mucho de qué tan bien lo haga el estudiante.

Esto no significa que sean inútiles, sino que **no deben ser la única estrategia**. Son buenas para organizar el primer contacto con el material, pero deben ir seguidas de práctica de recuperación.

## 🍅 Gestión del tiempo: técnica Pomodoro

Ver el detalle completo en [`pomodoro-y-gestion-tiempo.md`](./pomodoro-y-gestion-tiempo.md). En resumen: estudios con estudiantes (incluyendo uno de 2023 sobre percepción de la técnica en aprendizaje de idiomas, y uno en la Universidad de Quezon City sobre retención en estudiantes de psicología) reportan mejoras en enfoque, disciplina, motivación y gestión del tiempo al usar bloques de trabajo con descansos programados. La evidencia aquí es más de percepción/autorreporte que experimental estricta, pero es consistente y de bajo riesgo de probar.

## 🧩 Cómo combinar todo esto en una sesión de estudio

Una sesión de estudio de programación con buena evidencia detrás se vería así:

1. **Organiza** el tema con un mapa conceptual o esquema breve (5-10 min).
2. **Estudia activamente** en bloques Pomodoro de 25 min, sin releer pasivamente: intenta escribir código de memoria antes de mirar la solución.
3. **Auto-explica** cada línea de código que escribas: ¿por qué usaste un `for` y no un `while` aquí?
4. **Aplica Feynman:** explica el algoritmo completo en voz alta como si se lo enseñaras a un compañero que no sabe programar.
5. **Distribuye:** no dejes todo el repaso de estructuras de control para la noche antes del parcial; repásalas en sesiones cortas durante varios días.

## 📖 Fuentes

- Dunlosky, J., Rawson, K. A., Marsh, E. J., Nathan, M. J., & Willingham, D. T. (2013). *Improving Students' Learning With Effective Learning Techniques: Promising Directions From Cognitive and Educational Psychology*. Psychological Science in the Public Interest, 14(1), 4–58.
- Roediger, H. L., & Butler, A. C. (2011). *The critical role of retrieval practice in long-term retention*. Trends in Cognitive Sciences, 15(1), 20–27.
- Thorndike, E. L. (1906). *Principles of Teaching*.
- PsicólogosTCC — "Repetición espaciada: cómo recordar todo lo que aprendes" (resumen divulgativo de Dunlosky et al. y Ebbinghaus): https://psicologostcc.com/blog/repeticion-espaciada-como-recordar-todo-lo-que-aprendes
- Edron — "El poder de la práctica de la recuperación en la educación": https://edron.edu.mx/the-power-of-retrieval-practice-in-education-a-cognitive-science-perspective/
- Instituto SABER — "Técnica Feynman: la técnica de estudio para aprender rápido y sin memorizar": https://institutosaber.edu.ar/tecnica-feynman-metodo-de-estudio/
- Reto MD — "Método Pomodoro: un enfoque efectivo" (revisión de estudios con estudiantes): https://retomd.com/blog/metodo-pomodoro-un-enfoque-efectivo
