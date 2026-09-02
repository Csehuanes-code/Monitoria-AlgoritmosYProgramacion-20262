# 💻 Visual Studio Code (VS Code)

> Editor de código gratuito y multiplataforma desarrollado por Microsoft. Es el editor más usado por desarrolladores profesionales a nivel mundial, y el que usaremos durante todo el semestre.

## ¿Por qué VS Code y no otro editor?

- Es **gratuito, ligero y de código abierto**, y corre igual en Windows, macOS y Linux.
- Tiene un ecosistema enorme de **extensiones** que agregan soporte para prácticamente cualquier lenguaje o herramienta (Python, C/C++, Git, bases de datos, etc.).
- Incluye una **terminal integrada**, control de versiones con Git de fábrica, y un depurador visual con *breakpoints* — todo en un solo lugar, sin cambiar de programa.
- Es el estándar de facto en bootcamps, empresas de software y en la industria; dominarlo desde el inicio de la carrera evita tener que "reaprender" un entorno distinto más adelante.

📖 Fuente oficial: [Documentación de Visual Studio Code](https://code.visualstudio.com/docs)

## Instalación

1. Descarga el instalador desde el sitio oficial: <https://code.visualstudio.com/>
2. Instala también el compilador/entorno de tu lenguaje (VS Code **no trae compilador incluido**, solo edita y orquesta):
   - **C/C++:** un compilador como GCC/MinGW (Windows), o el compilador que trae por defecto Linux/macOS.
   - **Python:** el intérprete oficial desde <https://www.python.org/>.

## Extensiones esenciales (para cualquier lenguaje)

| Extensión | Para qué sirve |
| :--- | :--- |
| **GitLens** | Amplía el Git integrado: muestra quién y cuándo modificó cada línea, historial visual de commits. |
| **Prettier / Formatter del lenguaje** | Formatea el código automáticamente con un estilo consistente. |
| **Error Lens** | Resalta errores y advertencias directamente en la línea de código, sin tener que abrir el panel de problemas. |
| **Live Share** | Permite programar en tiempo real con otra persona en la misma sesión (útil para trabajo en pareja o resolución de dudas remota). |
| **Markdown All in One** | Vista previa y atajos para escribir archivos `.md` (ver [Módulo Markdown](../02-markdown/README.md)). |
| **Live Preview** | Levanta un servidor local para previsualizar archivos HTML directamente en VS Code. |

📖 Fuente oficial: [Uso de extensiones en VS Code](https://code.visualstudio.com/docs/introvideos/extend) · [VS Code Essentials (Microsoft)](https://microsoft.github.io/vscode-essentials/en/04-top-extensions.html)

## Extensión para Python

- **Python (Microsoft)**: la extensión oficial y obligatoria para trabajar en Python. Se instala desde el Marketplace de VS Code o VS Code la sugiere automáticamente al abrir un archivo `.py`.
  - Incluye análisis de errores en tiempo real, formateo de código, depuración con consola interactiva y soporte para frameworks de pruebas como `unittest`, `pytest` y `nose`.
- **Pylance**: motor de autocompletado e IntelliSense que normalmente se instala junto con la extensión de Python.

📖 Fuente oficial: [Python en Visual Studio Code](https://code.visualstudio.com/docs/languages/python)

## Extensión para C/C++

- **C/C++ (Microsoft, `ms-vscode.cpptools`)**: extensión oficial para desarrollo multiplataforma en C y C++ en Windows, Linux y macOS.
  - Agrega resaltado de sintaxis, autocompletado inteligente (IntelliSense), navegación de código y soporte de depuración.
  - **Importante:** esta extensión no incluye compilador ni depurador; se apoya en las herramientas de línea de comandos que ya tengas instaladas (por ejemplo, `g++ --help` debe funcionar desde tu terminal antes de programar).
  - Para trabajar sobre WSL, contenedores Docker o una máquina remota por SSH, Microsoft recomienda además el paquete **Remote Development Extension Pack**.

📖 Fuente oficial: [C/C++ para Visual Studio Code](https://code.visualstudio.com/docs/languages/cpp) · [Instalar soporte de C y C++ – Microsoft Learn](https://learn.microsoft.com/en-us/cpp/build/vscpp-step-0-installation)

## Buenas prácticas de configuración (recomendadas desde el primer día)

- Activa el **autoguardado** (`File > Auto Save`) para no perder avances.
- Configura una **regla de longitud de línea** (ej. 80 caracteres) para mantener el código legible.
- Usa el **Command Palette** (`Ctrl+Shift+P` / `Cmd+Shift+P`) en vez de buscar todo con el mouse: es más rápido y es la forma en que se documenta la mayoría de tutoriales oficiales.
- Aprende 3-5 atajos de teclado por semana (duplicar línea, mover línea, multicursor) en lugar de intentar memorizarlos todos de una vez.

## ✅ Autoevaluación

- [ ] Instalé VS Code y el compilador/intérprete de mi lenguaje.
- [ ] Tengo instaladas las extensiones oficiales de Python y/o C/C++ según mi necesidad.
- [ ] Sé abrir el Command Palette y buscar un comando sin usar el mouse.
- [ ] Configuré el autoguardado.

---
⬅️ [Volver al índice del módulo](../README.md) · Siguiente: [Markdown](../02-markdown/README.md) ➡️
