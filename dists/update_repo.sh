#!/bin/bash
# Script para actualizar el índice del repositorio APT

# 1. Crear la estructura de directorios necesaria para el índice
mkdir -p dists/stable/main/binary-all/

# 2. Generar el archivo Packages a partir de los .deb en el pool
dpkg-scanpackages pool/ > dists/stable/main/binary-all/Packages

# 3. Comprimir el archivo Packages (necesario para apt)
gzip -c dists/stable/main/binary-all/Packages > dists/stable/main/binary-all/Packages.gz

echo "Repositorio actualizado correctamente."
