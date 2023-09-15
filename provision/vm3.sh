#!/bin/bash

# Habilitar o encaminhamento de pacotes (NAT) no kernel
echo "net.ipv4.ip_forward=1" | sudo tee /etc/sysctl.conf
sudo sysctl -p

# Configurar o NAT para permitir o acesso à Internet
sudo iptables -t nat -A POSTROUTING -o eth1 -j MASQUERADE

# Criar o diretório /etc/iptables, se não existir
sudo mkdir -p /etc/iptables

# Salvar regras de iptables
sudo iptables-save | sudo tee /etc/iptables/rules.v4.temp

# Mover o arquivo temporário para o local correto
sudo mv /etc/iptables/rules.v4.temp /etc/iptables/rules.v4

# Configuração da interface de rede
sudo ifconfig enp0s8 192.168.50.12 netmask 255.255.255.0 up

# Adicionar rota padrão para a VM3 (Gateway)
sudo ifconfig enp0s8 192.168.50.12 netmask 255.255.255.0 up
