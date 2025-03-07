#!/bin/bash

# Definir directorio base
BASE_DIR=$(pwd)

# Solicitar el nombre del archivo sin ruta
read -p "Ingrese el nombre del archivo (sin ruta, solo main.ext): " file_name

# Ruta del archivo dentro de src/
file_path="src/$file_name"

# Verificar si el archivo existe
if [[ ! -f "$file_path" ]]; then
    echo "Error: El archivo no existe en la carpeta src/"
    exit 1
fi

# Obtener la extensión del archivo
extension="${file_name##*.}"

# Determinar el contenedor según la extensión
case "$extension" in
    py)   lang="python" ;;
    java) lang="java" ;;
    cpp|cc) lang="cpp" ;;
    js)   lang="javascript" ;;
    rb)   lang="ruby" ;;
    *)    echo "Error: Extensión no soportada."; exit 1 ;;
esac

# Construir la imagen si no existe
if [[ "$(docker images -q ${lang}_image 2> /dev/null)" == "" ]]; then
    echo "Construyendo la imagen para $lang..."
    docker build -t ${lang}_image "$lang/"
fi

# Ejecutar el código en el contenedor y medir el tiempo
echo "Ejecutando en contenedor Docker..."
time docker run --rm -v "$BASE_DIR/src":/app -w /app ${lang}_image $file_name
