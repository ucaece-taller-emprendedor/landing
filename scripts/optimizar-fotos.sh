#!/usr/bin/env bash
# Convierte las fotos de integrantes (JPG) a WebP de 192x192 para la landing.
# Uso: scripts/optimizar-fotos.sh <carpeta_con_subcarpetas_por_startup>
# Ejemplo: scripts/optimizar-fotos.sh ../../fotos_estudiantes
# Cada subcarpeta (5022, confix, licity, ...) se copia a fotos/<startup>/ con el mismo nombre de archivo.
# Para sumar una foto nueva (p. ej. Licity): copiá apellido_nombre.jpg en la subcarpeta y volvé a correr el script.
set -euo pipefail
origen="${1:?Falta la carpeta de origen}"
destino="$(cd "$(dirname "$0")/.." && pwd)/fotos"
command -v cwebp >/dev/null || { echo "Falta cwebp (brew install webp)"; exit 1; }
for dir in "$origen"/*/; do
  startup="$(basename "$dir")"
  mkdir -p "$destino/$startup"
  for f in "$dir"*.jpg "$dir"*.jpeg "$dir"*.png; do
    [ -e "$f" ] || continue
    nombre="$(basename "${f%.*}")"
    cwebp -quiet -q 80 -resize 192 192 "$f" -o "$destino/$startup/$nombre.webp"
    echo "$startup/$nombre.webp"
  done
done
