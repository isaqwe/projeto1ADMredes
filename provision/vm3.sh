#!/bin/bash

# Habilitar o encaminhamento de pacotes (NAT) no kernel
echo "net.ipv4.ip_forward=1" | sudo tee /etc/sysctl.conf
sudo sysctl -p

# Configurar o NAT para permitir o acesso à Internet
sudo iptables -t nat -A POSTROUTING -o eth1 -j MASQUERADE

# Instalar o pacote iptables-persistent (para salvar as regras)
sudo apt-get install -y iptables-persistent

# Salvar regras de iptables
sudo iptables-save | sudo tee /etc/iptables/rules.v4
