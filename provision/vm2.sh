#!/bin/bash

# Atualizar a lista de pacotes
sudo apt-get update

# Instalar o servidor de banco de dados MySQL
sudo apt-get install -y mysql-server

# Configurar o servidor de banco de dados (opcional, dependendo das necessidades)

# Iniciar o servidor de banco de dados
sudo systemctl start mysql

# Atualizar a lista de pacotes
sudo apt-get update

# Instalar o servidor de banco de dados MySQL
sudo apt-get install -y mysql-server

# Configurar o servidor de banco de dados (opcional, dependendo das necessidades)

# Iniciar o servidor de banco de dados
sudo systemctl start mysql
# Configuração da interface de rede

# sudo ifconfig enp0s8 192.168.50.11 netmask 255.255.255.0 up

# Adicionar rota padrão para a VM3 (Gateway)
route del default gw 10.0.2.2
sudo ip route add default via 192.168.50.12 dev enp0s8