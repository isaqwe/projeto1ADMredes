#!/bin/bash

# Habilitar o encaminhamento de pacotes (NAT) no kernel
echo "net.ipv4.ip_forward=1" | sudo tee /etc/sysctl.conf
sudo sysctl -p

# Configurar o NAT para permitir o acesso à Internet
sudo iptables -t nat -A POSTROUTING -o enp0s3 -j MASQUERADE

# Criar o diretório /etc/iptables, se não existir
sudo mkdir -p /etc/iptables

# Salvar regras de iptables
sudo iptables-save | sudo tee /etc/iptables/rules.v4

