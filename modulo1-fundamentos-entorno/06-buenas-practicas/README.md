# 📚 Buenas Prácticas de Desarrollo

> No basta con que el código "funcione". El objetivo de un(a) ingeniero(a) de sistemas profesional es escribir código que otra persona (o tú mismo, seis meses después) pueda leer, entender y modificar sin miedo a romper todo.

## Libros de referencia recomendados

| Libro | Autor(es) | Por qué leerlo |
| :--- | :--- | :--- |
| **Clean Code: A Handbook of Agile Software Craftsmanship** | Robert C. Martin ("Uncle Bob") | El libro de buenas prácticas más recomendado en la industria. Enseña a nombrar variables y funciones de forma clara, mantener funciones cortas, y por qué "el código limpio no nace limpio": se escribe una primera versión y luego se refactoriza. |
| **The Pragmatic Programmer** | David Thomas y Andrew Hunt | Enseña a pensar como un profesional del software, no solo a escribir sintaxis. Introduce principios como *DRY* (Don't Repeat Yourself) y la "teoría de las ventanas rotas" aplicada al código: un pequeño descuido sin corregir invita a que se acumulen más. |
| **Code Complete** | Steve McConnell | Guía extensa y práctica de construcción de software, con énfasis en la calidad desde el diseño hasta las pruebas. |
| **The Clean Coder** | Robert C. Martin | Se enfoca en la ética profesional del programador: responsabilidad, manejo del tiempo, y trato con clientes y jefes. |
| **Refactoring: Improving the Design of Existing Code** | Martin Fowler | Cómo mejorar código ya existente sin cambiar su comportamiento, paso a paso. |
| **Introduction to Algorithms** | Cormen, Leiserson, Rivest y Stein | Referencia clásica y rigurosa sobre algoritmos y estructuras de datos — irá muy bien con nuestro Módulo 4. |

📖 Nota: estos libros están protegidos por derechos de autor; no compartimos ni distribuimos copias en este repositorio. Se recomienda consultarlos en la biblioteca institucional o en plataformas legales como O'Reilly, Safari Books o la editorial correspondiente.

## Consejos y filosofías de figuras reconocidas de la programación

Estas son ideas ampliamente documentadas y públicas, asociadas a personas que han marcado la industria del software. Te las presentamos como punto de partida para investigar más por tu cuenta:

- **Linus Torvalds** (creador de Linux y de Git): su filosofía de desarrollo abierto y colaborativo — "libera pronto, libera seguido" (*release early, release often*) — es la base de cómo hoy trabajan millones de proyectos de código abierto en GitHub.
- **Guido van Rossum** (creador de Python): impulsó la filosofía **"El Zen de Python"** (`import this` en cualquier consola de Python), que resume ideas como *"simple es mejor que complejo"* y *"la legibilidad cuenta"*.
- **Robert C. Martin ("Uncle Bob")**: popularizó los principios **SOLID** de diseño orientado a objetos y la idea de que "la única forma de ir rápido, es ir bien" (escribir código de calidad ahora ahorra tiempo después).
- **Martin Fowler**: referente mundial en refactorización, patrones de diseño y arquitectura de software; su sitio personal (martinfowler.com) es una fuente gratuita muy citada en la industria.
- **Kent Beck**: creador de la metodología *Extreme Programming (XP)* y pionero del desarrollo guiado por pruebas (*TDD – Test-Driven Development*).
- **Margaret Hamilton**: dirigió el equipo de software del programa Apollo de la NASA; es una referencia histórica sobre la importancia de la ingeniería de software rigurosa y la anticipación de errores.
- **Dennis Ritchie y Brian Kernighan**: creadores del lenguaje C y autores de *"The C Programming Language"*, el libro que sentó las bases de cómo se documentan los lenguajes de programación hasta hoy.

## Principios prácticos para aplicar desde ya

1. **Nombra bien tus variables y funciones.** `calcular_promedio()` dice más que `func1()`.
2. **DRY – Don't Repeat Yourself.** Si copias y pegas el mismo bloque de código tres veces, probablemente debería ser una función.
3. **Funciones cortas, con una sola responsabilidad.** Si una función hace "y además", probablemente deberías dividirla en dos.
4. **Comenta el "por qué", no el "qué".** El código ya dice qué hace; el comentario debe explicar la razón detrás de una decisión no obvia.
5. **Prueba tu código en varios escenarios**, no solo en el caso ideal (¿qué pasa si el usuario ingresa una letra donde se esperaba un número?).
6. **Usa control de versiones desde el primer día de un proyecto**, no solo cuando "ya está listo".
7. **Lee código de otras personas.** Los repositorios open source en GitHub son una biblioteca gratuita de cómo programadores experimentados resuelven problemas reales.

## ✅ Autoevaluación

- [ ] Elegí un libro o autor de esta lista para profundizar durante el semestre.
- [ ] Puedo explicar con mis palabras qué es el principio DRY.
- [ ] Reviso mis propios ejercicios preguntándome si otra persona podría entenderlos sin explicación adicional.

---
⬅️ [Volver al índice del módulo](../README.md) · Anterior: [GitHub](../05-github/README.md)
