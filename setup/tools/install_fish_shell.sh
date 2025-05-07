#!/bin/bash

# Instalando o fish shell
apt install -y fish

# Settando o fish shell como padrão
which fish
echo /usr/bin/fish | sudo tee -a /etc/shells
chsh -s /usr/bin/fish
