#!/bin/bash

# Solicitar el nombre del archivo
read -p "Ingrese el nombre del archivo con su ruta: " file_path

# Verificar si el archivo existe
if [[ ! -f "src/$file_path" ]]; then
    echo "Error: El archivo no existe."
    exit 1
fi

# Obtener la extensión del archivo
extension="${file_path##*.}"

# Determinar la imagen de Docker según el lenguaje
case "$extension" in
    py)  image="python:3"      cmd="python3"    ;;
    java) image="openjdk:latest" cmd="javac"      ;;
    cpp|cc) image="gcc:latest" cmd="g++ -o output && ./output" ;;
    js)  image="node:latest"   cmd="node"       ;;
    rb)  image="ruby:latest"   cmd="ruby"       ;;
    *)   echo "Error: Extensión no soportada."; exit 1 ;;
esac

# Ejecutar el código en el contenedor y medir el tiempo
echo "Ejecutando en contenedor Docker..."
time docker run --rm -v "$PWD":/usr/src/app -w /usr/src/app "$image" bash -c "$cmd $file_path"
