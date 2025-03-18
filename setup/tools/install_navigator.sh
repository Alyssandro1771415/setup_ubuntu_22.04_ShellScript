#!/bin/bash

if [ "$EUID" -ne 0 ]; then
  echo "Por favor, execute como root."
  exit
fi

echo "Atualizando a lista de pacotes..."
apt update

echo "Instalando dependências necessárias..."
apt install -y wget gnupg

echo "Adicionando a chave pública do Opera..."
wget -qO- https://deb.opera.com/archive.key | gpg --dearmor -o /usr/share/keyrings/opera-archive-keyring.gpg

echo "Adicionando o repositório do Opera..."
echo "deb [signed-by=/usr/share/keyrings/opera-archive-keyring.gpg] https://deb.opera.com/opera-stable/ stable non-free" | tee /etc/apt/sources.list.d/opera-stable.list

echo "Atualizando a lista de pacotes novamente..."
apt update

echo "Instalando o Opera One..."
apt install -y opera-stable

echo "Opera One instalado com sucesso!"