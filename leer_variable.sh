#!/usr/bin/env bash

# Leer una variable ingresada por el usuario.
read -r -p "Ingresa tu nombre: " nombre

# Guardar la versión del sistema operativo.
if [[ -r /etc/os-release ]]; then
    . /etc/os-release
    sistema_operativo="${PRETTY_NAME:-Versión no disponible}"
else
    sistema_operativo="No se pudo identificar el sistema operativo"
fi

# Guardar la información del espacio en discos.
espacio_discos=$(df -h)

# Imprimir las variables.
echo
echo "=== Información del sistema ==="
echo "Consulta realizada por: $nombre"
echo "Sistema operativo: $sistema_operativo"

echo
echo "=== Espacio en discos ==="
echo "$espacio_discos"
