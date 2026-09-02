# 📝 Markdown

> Lenguaje de marcado ligero para dar formato a texto plano, creado en 2004 por John Gruber. Se convierte fácilmente a HTML y es el estándar para documentar proyectos de software.

## ¿Por qué usamos Markdown en vez de Word?

| Criterio | Markdown (`.md`) | Word (`.docx`) |
| :--- | :--- | :--- |
| **Tamaño del archivo** | Unos pocos KB — es texto plano puro | Cientos de KB o más — formato binario/comprimido con metadatos |
| **Lectura humana** | Legible incluso sin renderizar, directamente en el código fuente | Ilegible sin abrir el programa |
| **Lectura por máquina** | Fácil de procesar por sistemas automáticos (generadores de sitios, IA, CI/CD) | Requiere librerías especiales para extraer el contenido |
| **Control de versiones (Git)** | Cada cambio de línea se puede comparar línea por línea (`diff`) | Git lo trata como un archivo binario: no se pueden comparar cambios internos |
| **Sintaxis** | Un puñado de símbolos (`#`, `*`, `` ` ``, `-`) | Requiere una interfaz gráfica completa |
| **Portabilidad** | Se abre en cualquier editor de texto, en cualquier sistema operativo | Depende de tener Word o un programa compatible |

En resumen: Markdown es **liviano, legible por humanos y por computadoras, fácil de versionar con Git, y no depende de ningún programa específico**. Por eso es el estándar para README, documentación técnica, wikis y publicaciones en GitHub.

📖 Fuente oficial: [Acerca de la escritura y el formato en GitHub](https://docs.github.com/en/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github/about-writing-and-formatting-on-github) · [Sintaxis básica de escritura y formato – GitHub Docs](https://docs.github.com/en/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax)

## Sintaxis esencial (GitHub Flavored Markdown)

```markdown
# Encabezado 1
## Encabezado 2
### Encabezado 3

**negrita**   *cursiva*   ~~tachado~~

- Lista sin orden
- Otro elemento
  - Sub-elemento

1. Lista ordenada
2. Segundo elemento

> Una cita o nota destacada

`código en línea`

​```python
print("bloque de código con resaltado de sintaxis")
​```

[Texto del enlace](https://ejemplo.com)
![Texto alternativo de la imagen](ruta/o/url/imagen.png)

- [x] Tarea completada
- [ ] Tarea pendiente
```

Cuando un documento tiene dos o más encabezados, GitHub genera automáticamente una tabla de contenido navegable (ícono "Outline" en la parte superior del archivo).

## ¿Dónde lo vamos a usar en la monitoría?

- El `README.md` de cada carpeta de este repositorio (como el que estás leyendo).
- Documentar cada ejercicio: enunciado, lógica de solución y capturas del resultado.
- Bitácoras semanales de avance para el servicio social.
- Documentación del proyecto integrador (Módulo 5).

## ✅ Autoevaluación

- [ ] Puedo crear encabezados de distintos niveles.
- [ ] Sé insertar un bloque de código con resaltado de sintaxis (` ```python `).
- [ ] Puedo crear una lista de tareas con checkboxes.
- [ ] Sé insertar un enlace y una imagen.

---
⬅️ [Volver al índice del módulo](../README.md) · Anterior: [VS Code](../01-vscode/README.md) · Siguiente: [Terminal](../03-terminal/README.md) ➡️
