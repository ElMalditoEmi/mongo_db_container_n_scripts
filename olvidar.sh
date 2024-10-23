#!/bin/bash

# Mensaje de confirmación
read -p "¿Estás seguro de que quieres bajar el container y perder la BDD? (s/n): " respuesta

# Convertir la respuesta a minúsculas
respuesta=${respuesta,,}

if [[ "$respuesta" == "s" ]]; then
    echo "Ejecutando 'docker compose down -v'..."
    docker compose down -v
else
    echo "Operación cancelada."
fi

