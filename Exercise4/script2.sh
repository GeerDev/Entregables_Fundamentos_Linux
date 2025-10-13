#!/bin/bash

if [ -z "$1" ]; then
  echo "Error: Por favor introduce una palabra como búsqueda"
  exit 1
fi

URL="https://midu.dev/"
PALABRA="$1"
FICHERO="pagina_descargada.html"

curl -s "$URL" -o "$FICHERO"

echo "Buscando la palabra '$PALABRA' en  la página $URL..."
LINEA=$(grep -in "$PALABRA" "$FICHERO" | head -n 1 | cut -d: -f1) # Muestra el número de línea de la primera aparición
COINCIDENCIAS=$(grep -io "$PALABRA" "$FICHERO" | wc -l) # Cuenta el número total de coincidencias

if [ "$COINCIDENCIAS" -gt 0 ]; then
    echo "La palabra '$PALABRA' aparece $COINCIDENCIAS veces"
    echo "Aparece por primera vez en la línea '$LINEA'"
else
    echo "No se ha encontrado la palabra '$PALABRA'"
fi