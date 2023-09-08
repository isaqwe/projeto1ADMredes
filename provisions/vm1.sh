#!/bin/bash

# Atualizar a lista de pacotes
sudo apt-get update

# Instalar o Apache
sudo apt-get install -y apache2

# Habilitar o Apache na inicialização
sudo systemctl enable apache2

# Iniciar o Apache
sudo systemctl start apache2

