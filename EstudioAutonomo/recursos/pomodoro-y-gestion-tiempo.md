# 🍅 Técnica Pomodoro y gestión del tiempo de estudio

## ¿Qué es?

La técnica Pomodoro fue desarrollada por Francesco Cirillo a finales de los años 80. Cirillo era estudiante y le costaba mantener la atención al estudiar, así que se retó a sí mismo a aguantar 10 minutos totalmente concentrado en una tarea, usando un temporizador de cocina con forma de tomate (*pomodoro*, en italiano) para controlar el tiempo — de ahí el nombre.

**Estructura básica:**
1. Elige una sola tarea (ej. "resolver los ejercicios de ciclos `for`").
2. Trabaja enfocado durante **25 minutos**, sin revisar el celular ni cambiar de tarea.
3. Descansa **5 minutos**.
4. Repite. Cada **4 pomodoros**, toma un descanso más largo de **15 a 30 minutos**.

## ¿Realmente funciona?

Sí, con matices. La evidencia disponible es principalmente de percepción y autorreporte de estudiantes, no de experimentos controlados estrictos como los de la práctica de recuperación o la práctica espaciada (ver [`metodos-de-estudio.md`](./metodos-de-estudio.md)), pero es consistente:

- Un estudio de 2023 sobre percepciones de estudiantes hacia la técnica Pomodoro en el aprendizaje de inglés encontró mejoras reportadas en enfoque, disciplina, concentración, productividad y motivación.
- Un estudio en la Universidad de Quezon City (Filipinas) evaluó su efecto en la retención de memoria en estudiantes de psicología, y encontró niveles más altos de motivación y mejor gestión del tiempo en quienes usaban la técnica frente a quienes no.
- El fundamento cognitivo es razonable: el cerebro no mantiene el mismo nivel de rendimiento en una tarea durante periodos muy largos, especialmente en tareas que exigen mucho esfuerzo cognitivo como resolver problemas de lógica o depurar código.

**Limitaciones a tener en cuenta:**
- No es ideal para tareas que requieren un estado de flujo largo, como resolver un problema de programación complejo que estás a punto de resolver justo cuando suena la alarma. En esos casos, puedes terminar la idea antes de tomar el descanso.
- Puede generar más ansiedad que ayuda en personas que se estresan con los límites de tiempo. Si es tu caso, prueba bloques más largos (45-50 min de trabajo / 10 min de descanso).
- No sirve como método aislado: sirve para **estructurar el tiempo**, no reemplaza usar técnicas de estudio con evidencia (recuperación activa, práctica espaciada, Feynman).

## 🔧 Cómo adaptarlo a Algoritmos y Programación

| Bloque Pomodoro | Actividad sugerida |
|---|---|
| Pomodoro 1 (25 min) | Repasar el material de aula invertida (video/guía) del tema de la sesión, tomando notas activas (no solo leer) |
| Pomodoro 2 (25 min) | Escribir código de memoria en VS Code, sin mirar la solución de ejemplo, intentando resolver un ejercicio pequeño |
| *Descanso 5 min* | Levántate, camina, no revises redes sociales (reinicia el ciclo de atención en vez de distraerlo) |
| Pomodoro 3 (25 min) | Comparar tu solución con la guía/ejemplo, corregir errores, hacer *debugging* con breakpoints |
| Pomodoro 4 (25 min) | Explicar en voz alta tu solución como si le enseñaras a un compañero (técnica Feynman) |
| *Descanso largo 15-30 min* | Desconéctate por completo antes de la siguiente sesión |

## 🛠️ Herramientas para aplicar Pomodoro

No necesitas pagar nada:
- **Temporizador del celular** o reloj de cocina — el método original de Cirillo.
- **Apps gratuitas dedicadas:** Tomatoes (web), Forest, Be Focused, Pomofocus.io.
- **Extensiones de navegador** para bloquear distracciones durante el bloque de trabajo.
- Si usas NotebookLM o Gemini para generar un Audio Overview de repaso, puedes escucharlo como actividad de un pomodoro de repaso pasivo — pero recuerda que esto complementa, no reemplaza, los pomodoros de práctica activa.

## 🗓️ Plantilla semanal de estudio (cópiala y llénala)

Usa esta tabla para planear tu semana. La idea es aplicar **práctica distribuida**: repartir el estudio de Algoritmos y Programación en varios días cortos, no concentrarlo todo un solo día.

| Día | Hora | Tema a repasar | N.º de pomodoros | Técnica de estudio | ¿Cumplido? |
|---|---|---|---|---|---|
| Lunes | | | | | ☐ |
| Martes | | | | | ☐ |
| Miércoles | | | | | ☐ |
| Jueves | | | | | ☐ |
| Viernes | | | | | ☐ |
| Sábado | | | | | ☐ |
| Domingo | | | | | ☐ |

**Sugerencia de uso:** al final de la semana, revisa cuántos "✅" lograste. Si constantemente incumples el plan, el problema puede no ser de disciplina sino de que estás planeando más de lo que tu tiempo real permite — ajusta el número de pomodoros antes de rendirte.

## 📖 Fuentes

- Reto MD — "Método Pomodoro: un enfoque efectivo" (revisión de estudios en estudiantes de medicina e idiomas, incluyendo Chalimah, Utomo y Nurcahyo, 2023, y el estudio de la Universidad de Quezon City): https://retomd.com/blog/metodo-pomodoro-un-enfoque-efectivo
- Neoscientia — "La técnica pomodoro para científicos hiperproductivos" (origen de la técnica con Francesco Cirillo): https://neoscientia.com/pomodoro-cientificos/
- Psicólogo Infantil — "Técnica pomodoro en el estudio: ¿Funciona o es efectiva?" (ventajas y limitaciones): https://psicologoinfantil.es/tecnica-pomodoro-en-el-estudio/
