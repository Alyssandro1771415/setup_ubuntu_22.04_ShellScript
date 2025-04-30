#!/bin/bash

# Instalando o fish shell
apt install fish

# Settando o fish shell como padrão
wich fish
echo /usr/bin/fish | sudo tee -a /etc/shells
chsh -s /usr/bin/fish