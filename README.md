# Taller Emprendedor · UCAECE · 2do cuatrimestre 2026

Sitio de presentación de la materia **Taller Emprendedor** (Universidad CAECE, sede Mar del Plata), 2do cuatrimestre 2026, con accesos directos a cada startup.

Es un sitio estático (HTML y CSS, sin dependencias) publicado con GitHub Pages.

- Sitio: https://ucaece-taller-emprendedor.github.io/landing/
- Docentes: Franco Vinciguerra y Luis Orviz Friser.

## Cómo editarlo

1. Editá `index.html` (contenido) o `styles.css` (estilos).
2. Para ver el resultado, abrí `index.html` en el navegador.
3. Al hacer push a `main`, GitHub Pages lo publica en un par de minutos.

Para sumar una startup (por ejemplo KIVA cuando esté lista), duplicá una `<article class="tarjeta">` y completá nombre, frase, problema, equipo y los links de **Ver app** y **Ver código**.

## Pendiente de definir por la cátedra

- Licencia del contenido (ver [LICENSE](LICENSE)).
- Consentimiento de los alumnos para publicar sus nombres. Hoy el sitio muestra solo sus usuarios de GitHub.
- Dominio definitivo del sitio (hoy `github.io`).

## Fotos de los integrantes

Las fotos viven en `fotos/<startup>/apellido_nombre.webp` (WebP de 192×192, carga diferida). Si una foto no está, la tarjeta muestra un avatar con las iniciales y el color de la startup.

Para sumar o cambiar fotos:

1. Copiá el `.jpg` con el nombre `apellido_nombre.jpg` en la carpeta de la startup (por ejemplo `licity/basaldella_celeste.jpg`).
2. Corré `scripts/optimizar-fotos.sh <carpeta_de_origen>` para convertirlas a WebP.
3. Hacé commit y push.

Solo se publican en este repo: no van en los repos de las apps.

## Identidad visual y logos

- Paleta tomada de https://www.ucaecemdp.edu.ar: turquesa `#00a9af`, celeste `#aae7ec` y grises neutros. Para texto y botones se usa un turquesa más oscuro (`#007a7f`) que cumple contraste AA.
- Logos de la universidad en `logos/` (versión turquesa para fondo claro y blanca para modo oscuro), obtenidos del sitio de la sede. Los de las startups salen de sus apps.
- El sitio es mobile first y responsive (probado de 320 px a 1280 px), con modo claro y oscuro automáticos.
