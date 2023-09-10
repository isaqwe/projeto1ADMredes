#!/bin/bash

# Atualizar a lista de pacotes
sudo apt-get update

# Instalar o Apache
sudo apt-get install -y apache2

# Habilitar o Apache na inicialização
sudo systemctl enable apache2

# Iniciar o Apache
sudo systemctl start apache2


#!/bin/bash

# Configuração da interface de rede
sudo ifconfig enp0s8 192.168.50.10 netmask 255.255.255.0 up

# Adicionar rota padrão para a VM3 (Gateway)
sudo ip route add default via 192.168.50.12 dev enp0s8

# Outras configurações e comandos de instalação/configuração

