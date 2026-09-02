# ⌨️ Uso de la Terminal (Línea de comandos)

> La terminal (también llamada shell, consola o CLI — *Command-Line Interface*) permite interactuar con el computador escribiendo instrucciones en vez de hacer clic. Es una de las herramientas más antiguas de la computación y sigue siendo esencial hoy.

## ¿Por qué aprender la terminal si ya existe el mouse?

**1. Poder total sobre el sistema**
Muchas operaciones avanzadas del sistema operativo (permisos de archivos, procesos en segundo plano, automatización de tareas) solo están disponibles —o son mucho más simples— desde la shell. La terminal es la vía directa para controlar el sistema operativo sin las limitaciones de una interfaz gráfica.

**2. Rapidez**
Una vez interiorizados los comandos básicos, escribir es más rápido que navegar menús y hacer clic. Estudios sobre uso de atajos de teclado frente a menús gráficos muestran que la interacción por teclado es más eficiente para tareas repetitivas, aunque tenga una curva de aprendizaje inicial.

**3. Familiaridad con el sistema operativo**
Usar la terminal obliga a entender cómo está organizado el sistema de archivos (carpetas, rutas absolutas y relativas, permisos), conocimiento que se pierde fácilmente cuando todo se hace "a través de íconos".

**4. Es el idioma real de la nube y del desarrollo profesional**
Servicios como **AWS** ofrecen su propia interfaz de línea de comandos (**AWS CLI**) para gestionar máquinas virtuales, desplegar aplicaciones y automatizar procesos en la nube — muchas tareas de AWS solo pueden automatizarse (con scripts) desde la CLI. Lo mismo ocurre con Git, Docker, Kubernetes y casi cualquier herramienta profesional moderna: primero existen en la terminal, y después (a veces) alguien les construye una interfaz gráfica encima.

📖 Fuente: [AWS CLI – documentación oficial de línea de comandos](https://aws.amazon.com/cli/) · [Interfaz de línea de comandos – conceptos, Educative](https://www.educative.io/courses/guide-to-bash-programming/B8K2X6zBZ7J)

## Comandos básicos que todo estudiante debe dominar

| Comando (Linux/macOS) | Equivalente en Windows (PowerShell) | Qué hace |
| :--- | :--- | :--- |
| `pwd` | `pwd` / `Get-Location` | Muestra la carpeta actual (Print Working Directory) |
| `ls` | `ls` / `dir` | Lista el contenido de la carpeta actual |
| `cd nombre_carpeta` | `cd nombre_carpeta` | Entra a una carpeta |
| `cd ..` | `cd ..` | Sube un nivel de carpeta |
| `mkdir nombre` | `mkdir nombre` | Crea una carpeta nueva |
| `touch archivo.py` | `New-Item archivo.py` | Crea un archivo vacío |
| `rm archivo` | `Remove-Item archivo` | Elimina un archivo (¡cuidado, no hay "papelera"!) |
| `clear` | `cls` | Limpia la pantalla de la terminal |
| `python archivo.py` | `python archivo.py` | Ejecuta un script de Python |
| `g++ archivo.cpp -o programa` | `g++ archivo.cpp -o programa.exe` | Compila un programa en C++ |

> 💡 VS Code trae una **terminal integrada** (`Ctrl+ñ` o `View > Terminal`), así que no necesitas salir del editor para usar todo lo anterior.

## Mentalidad para principiantes

- No memorices todos los comandos de una vez: aprende los que usas cada sesión y ve incorporando nuevos.
- Si un comando falla, **lee el mensaje de error completo** antes de buscar en internet — casi siempre indica exactamente qué está mal.
- La terminal "no perdona": no hay confirmación de "¿Estás seguro?" como en una interfaz gráfica. Piensa dos veces antes de borrar (`rm`).

## ✅ Autoevaluación

- [ ] Puedo abrir la terminal integrada de VS Code.
- [ ] Sé navegar entre carpetas usando `cd`, `ls`/`dir` y `pwd`.
- [ ] Puedo crear una carpeta y un archivo desde la terminal.
- [ ] Ejecuté un script de Python o compilé un programa en C/C++ desde la terminal.

---
⬅️ [Volver al índice del módulo](../README.md) · Anterior: [Markdown](../02-markdown/README.md) · Siguiente: [Git](../04-git/README.md) ➡️
