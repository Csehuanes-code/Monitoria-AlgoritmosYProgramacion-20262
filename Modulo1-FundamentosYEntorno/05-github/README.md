# 🐙 Uso de GitHub

> GitHub es la plataforma en la nube más usada del mundo para alojar repositorios Git, colaborar en proyectos de código y construir portafolio profesional. Más de 150 millones de personas la usan para descubrir, bifurcar (*fork*) y contribuir a más de 420 millones de proyectos.

📖 Fuente oficial: [GitHub Docs](https://docs.github.com/) · [GitHub Education](https://education.github.com/)

## Ventajas de usar GitHub

- **Respaldo en la nube:** tu código nunca depende solo de tu computador; queda disponible desde cualquier dispositivo con internet.
- **Colaboración estructurada:** *pull requests*, revisiones de código, *issues* y proyectos permiten que varias personas trabajen ordenadamente sobre el mismo proyecto.
- **Portafolio profesional:** tu perfil de GitHub es, en la práctica, tu hoja de vida técnica. Empresas y reclutadores lo revisan como evidencia real de tus habilidades.
- **Automatización (CI/CD):** con **GitHub Actions** puedes automatizar pruebas, compilaciones y despliegues cada vez que subes cambios, sin herramientas externas.
- **Hosting de sitios web gratis:** con **GitHub Pages** puedes publicar un sitio estático (como el proyecto integrador o tu portafolio) directamente desde tu repositorio, sin contratar un servidor.

## Estándares de la comunidad

Un repositorio profesional en GitHub normalmente incluye:

| Archivo/Elemento | Propósito |
| :--- | :--- |
| `README.md` | Presenta el proyecto: qué es, cómo instalarlo, cómo usarlo. |
| `LICENSE` | Define legalmente cómo otros pueden usar tu código. |
| `.gitignore` | Le dice a Git qué archivos **no** debe rastrear (contraseñas, archivos temporales, entornos virtuales). |
| `CONTRIBUTING.md` | Explica cómo otras personas pueden colaborar con el proyecto. |
| Convención de *commits* | Mensajes claros y descriptivos (ej. estándar [Conventional Commits](https://www.conventionalcommits.org/)). |
| Ramas (`main`, `feature/...`) | Organización del trabajo para no romper el código estable. |

## Comunidad y recursos

- **GitHub Discussions / Issues:** espacios oficiales donde la comunidad hace preguntas, reporta errores y propone mejoras sobre proyectos de código abierto reales.
- **Open Source:** GitHub aloja la mayoría de los proyectos de código abierto más importantes del mundo (Linux, VS Code, Python, React, TensorFlow, entre miles más), lo que la convierte en la mejor fuente para leer código real escrito por profesionales.
- **GitHub Student Developer Pack:** paquete gratuito con más de 100 herramientas profesionales (Codespaces en la nube, créditos en DigitalOcean/Azure, licencias de JetBrains, dominios gratis, entre otros) disponible para estudiantes activos mayores de 13 años con correo institucional o carné vigente. Se solicita en <https://education.github.com/pack>.

📖 Fuente oficial: [GitHub Student Developer Pack](https://github.com/education/students) · [Preguntas frecuentes del Pack](https://github.com/github-education-resources/Student-Developer-Pack-Current-Partners-FAQ)

> 💡 **Recomendación:** todos los estudiantes de Talento Magdalena y Talento Santa Marta con correo `@unimagdalena.edu.co` califican para solicitar el Student Developer Pack. Actívalo cuanto antes: incluye herramientas que usaremos durante todo el módulo de estructuras de datos y el proyecto integrador.

## Despliegue con GitHub Pages

GitHub Pages convierte cualquier repositorio en un sitio web en vivo, sin necesidad de contratar hosting externo. Funciona publicando archivos estáticos (HTML, CSS, JS) directamente desde una rama o mediante un flujo de **GitHub Actions**.

```yaml
# Ejemplo simplificado de flujo de publicación (GitHub Actions)
name: Deploy a GitHub Pages
on:
  push:
    branches: [ main ]
jobs:
  deploy:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - uses: actions/upload-pages-artifact@v3
        with:
          path: './public'
      - uses: actions/deploy-pages@v4
```

📖 Fuente oficial: [Documentación de GitHub Pages](https://docs.github.com/en/pages) · [Crear un sitio de GitHub Pages](https://docs.github.com/en/pages/getting-started-with-github-pages/creating-a-github-pages-site)

## Servicios relacionados en el ecosistema GitHub

- **GitHub Codespaces:** entorno de desarrollo completo en la nube, accesible desde cualquier navegador (útil si tu computador tiene pocos recursos).
- **GitHub Copilot:** asistente de código con IA, gratuito para estudiantes verificados.
- **GitHub Actions:** automatización de pruebas y despliegues (CI/CD).
- **GitHub Classroom:** herramienta usada por profesores/monitores para distribuir y calificar tareas de programación mediante repositorios individuales.

## ✅ Autoevaluación

- [ ] Tengo una cuenta activa en GitHub con foto y biografía básica.
- [ ] Mi repositorio tiene un `README.md` claro.
- [ ] Sé qué es un `.gitignore` y para qué sirve.
- [ ] Solicité (o ya tengo activo) el GitHub Student Developer Pack.
- [ ] Entiendo, a alto nivel, qué es GitHub Pages y para qué la usaríamos en el proyecto integrador.

---
⬅️ [Volver al índice del módulo](../README.md) · Anterior: [Git](../04-git/README.md) · Siguiente: [Buenas Prácticas](../06-buenas-practicas/README.md) ➡️
