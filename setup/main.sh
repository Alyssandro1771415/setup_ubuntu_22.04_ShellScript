#!/bin/bash

# Definir diretório base
base_dir="$(dirname "$0")"

echo "Ajustando permissões dos scripts..."
chmod +x "$base_dir"/tools/*.sh
chmod +x "$base_dir"/vscode_extensions.sh

echo "Iniciando configuração do sistema..."

# Executar scripts de instalação
for script in "$base_dir"/tools/*.sh; do
    if [ -f "$script" ]; then
        echo "Executando $(basename "$script")..."
        bash "$script"
    else
        echo "Erro: Script $script não encontrado!"
    fi
done

# Executar script de extensões do VSCode
if [ -f "$base_dir/vscode_extensions.sh" ]; then
    echo "Instalando extensões do VSCode..."
    bash "$base_dir/vscode_extensions.sh"
else
    echo "Erro: vscode_extensions.sh não encontrado!"
fi

echo "Configuração concluída com sucesso!"
