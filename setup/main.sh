#!/bin/bash

base_dir="$(dirname "$0")"

find "$base_dir" -type f -name "*.sh" ! -name "main.sh" | while read -r script; do
    chmod +x "$script"
    echo "Permissões ajustadas: $(basename "$script")"
done

echo "Iniciando configuração do Sistema"



echo "Configuração concluída com sucesso!"