# 🌿 Git: Terminal e Interfaz Gráfica

> Git es un sistema de control de versiones distribuido, gratuito y de código abierto, diseñado para manejar desde proyectos pequeños hasta muy grandes con velocidad y eficiencia. Fue creado en 2005 por **Linus Torvalds** (también creador del kernel de Linux) para gestionar el desarrollo del propio kernel de Linux.

📖 Fuente oficial: [git-scm.com](https://git-scm.com/) · Libro oficial y gratuito: [Pro Git, de Scott Chacon y Ben Straub](https://git-scm.com/book/en/v2)

## ¿Qué es el control de versiones y por qué importa?

El control de versiones registra los cambios de un archivo o conjunto de archivos a lo largo del tiempo, de modo que se puede volver a una versión anterior en cualquier momento. Permite:

- Llevar un historial detallado de qué cambió, cuándo y quién lo hizo.
- Integrar cambios de varias personas trabajando en el mismo proyecto sin sobrescribir el trabajo de nadie.
- Recuperar código "que funcionaba" cuando algo se rompe.

📖 Fuente oficial: [Git – Acerca del control de versiones](https://git-scm.com/book/en/v2/Getting-Started-About-Version-Control)

## Terminal vs. interfaz gráfica (GUI): ¿cuál usar?

La documentación oficial de Git es clara al respecto: **la terminal es la única forma de acceder al 100% de las funciones de Git**, ya que la mayoría de las interfaces gráficas solo implementan un subconjunto de comandos, priorizando la simplicidad. Por eso el libro oficial *Pro Git* enseña Git desde la línea de comandos.

Esto **no significa que las GUIs sean malas**. En la práctica profesional se usan de forma **alternada y complementaria**:

| Tarea | Dónde conviene hacerla |
| :--- | :--- |
| Ver el historial visual de commits, comparar ramas | GUI (VS Code, GitHub Desktop, GitKraken) |
| Resolver conflictos complejos de fusión (*merge*) | GUI, porque ayuda a visualizar las diferencias |
| Comandos rápidos del día a día (`add`, `commit`, `push`, `pull`) | Terminal — es más rápido una vez que los dominas |
| Comandos avanzados o de recuperación (`rebase`, `cherry-pick`, `reflog`) | Terminal — casi ninguna GUI los expone completos |
| Aprender qué está pasando "por dentro" | Terminal — entender el mecanismo evita errores graves |

La recomendación pedagógica más común entre instructores de Git es: **aprende primero por terminal** (aunque sea más difícil al inicio) para entender el modelo mental de Git, y luego **usa la GUI que prefieras** para el trabajo diario una vez que entiendes qué hace cada botón.

## El flujo básico de Git (terminal)

```bash
# Configurar tu identidad (una sola vez por computador)
git config --global user.name "Tu Nombre"
git config --global user.email "tucorreo@unimagdalena.edu.co"

# Iniciar un repositorio nuevo
git init

# Ver el estado de los archivos (modificados, sin seguimiento, etc.)
git status

# Preparar cambios para el commit (área de "staging")
git add archivo.py
git add .              # agrega todos los cambios

# Guardar una "fotografía" (snapshot) del proyecto
git commit -m "Mensaje claro y corto de qué cambió"

# Conectar con un repositorio remoto en GitHub
git remote add origin https://github.com/usuario/repositorio.git

# Subir los cambios al remoto
git push origin main

# Traer cambios desde el remoto
git pull origin main

# Trabajar con ramas
git branch nombre-rama       # crear rama
git checkout nombre-rama     # cambiar de rama
git switch nombre-rama       # forma moderna de cambiar de rama
git merge nombre-rama        # fusionar una rama a la actual
```

## Git desde una interfaz gráfica

- **VS Code** trae Git integrado en la pestaña de "Control de código fuente" (`Ctrl+Shift+G`): permite ver cambios, hacer *stage*, *commit* y *push* con clics.
- **GitHub Desktop**: cliente gráfico oficial de GitHub, ideal para quienes recién empiezan.
- **GitLens** (extensión de VS Code): agrega anotaciones de quién y cuándo modificó cada línea, directamente sobre el código.

## ✅ Autoevaluación

- [ ] Configuré mi nombre y correo en Git (`git config --global`).
- [ ] Hice mi primer `git init`, `git add` y `git commit`.
- [ ] Conecté un repositorio local con uno remoto en GitHub (`git remote add origin`).
- [ ] Hice al menos un `git push` y un `git pull`.
- [ ] Puedo explicar con mis palabras la diferencia entre usar Git por terminal y por interfaz gráfica.

---
⬅️ [Volver al índice del módulo](../README.md) · Anterior: [Terminal](../03-terminal/README.md) · Siguiente: [GitHub](../05-github/README.md) ➡️
