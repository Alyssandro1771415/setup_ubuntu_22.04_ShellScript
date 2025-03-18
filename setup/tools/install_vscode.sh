#!/bin/bash

<<<<<<< HEAD
=======
# Verifica se o script está sendo executado com permissões de superusuário
>>>>>>> Develop
if [ "$EUID" -ne 0 ]; then
  echo "Por favor, execute como root."
  exit
fi

<<<<<<< HEAD
echo "Atualizando a lista de pacotes..."
apt update

=======
# Atualiza a lista de pacotes
echo "Atualizando a lista de pacotes..."
apt update

# Instala as dependências necessárias
>>>>>>> Develop
echo "Instalando dependências necessárias..."
apt install -y wget gnupg

echo "code code/add-microsoft-repo boolean true" | sudo debconf-set-selections

sudo apt-get install wget gpg
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg
echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" |sudo tee /etc/apt/sources.list.d/vscode.list > /dev/null
rm -f packages.microsoft.gpg

sudo apt install apt-transport-https
sudo apt update
<<<<<<< HEAD
sudo apt install code
=======
sudo apt install code # or code-insiders
>>>>>>> Develop
