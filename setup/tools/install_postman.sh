#!/bin/bash

if [ "$EUID" -ne 0 ]; then
  echo "Por favor, execute como root."
  exit
fi

echo "Atualizando a lista de pacotes..."
apt update

echo "Instalando dependências necessárias..."
apt install -y wget gnupg


# --- Postman ---


sudo apt install flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install flathub com.getpostman.Postman

sudo apt update