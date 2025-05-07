#!/bin/bash

# Verifica se o script está sendo executado com permissões de superusuário
if [ "$EUID" -ne 0 ]; then
  echo "Por favor, execute como root."
  exit
fi

# Atualiza a lista de pacotes
echo "Atualizando a lista de pacotes..."
apt update

# Instala as dependências necessárias
echo "Instalando dependências necessárias..."
apt install -y wget gnupg

# Baixa a chave pública do Opera e adiciona ao sistema
echo "Adicionando a chave pública do Opera..."
wget -qO- https://deb.opera.com/archive.key | gpg --dearmor --yes -o /usr/share/keyrings/opera-archive-keyring.gpg

# Adiciona o repositório do Opera ao sources list
echo "Adicionando o repositório do Opera..."
echo "deb [signed-by=/usr/share/keyrings/opera-archive-keyring.gpg] https://deb.opera.com/opera-stable/ stable non-free" | tee /etc/apt/sources.list.d/opera-stable.list

# Atualiza a lista de pacotes novamente
echo "Atualizando a lista de pacotes novamente..."
apt update

# Instala o Opera One
echo "Instalando o Opera One..."
apt install -y opera-stable

# Confirma a instalação
echo "Opera One instalado com sucesso!"
