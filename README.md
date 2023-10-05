## Projeto 01 - Projeto de Administração de Redes usando Vagrant com 3 VMs
Projeto de Administração de Redes usando Vagrant com 3 VMs

### Descrição

Você é responsável por configurar um ambiente de laboratório de administração de redes com 3 máquinas virtuais (VMs) usando o Vagrant. Este ambiente de laboratório será usado para fins educacionais e de treinamento em administração de redes.

As três VMs devem ser configuradas da seguinte forma:

#### 1. VM1 - Servidor Web (Privado)
- Sistema Operacional: Ubuntu Server 20.04 LTS
- Interface de Rede 1 (eth0): IP Privado Estático (192.168.50.10)
- Função: Servidor Web (instalar o Apache)
- Pasta Compartilhada: `/var/www/html` na máquina host deve ser compartilhada com `/var/www/html` na VM1.

#### 2. VM2 - Servidor de Banco de Dados (Privado)
- Sistema Operacional: Ubuntu Server 20.04 LTS
- Interface de Rede 1 (eth0): IP Privado Estático (192.168.50.11)
- Função: Servidor de Banco de Dados (instalar o MySQL ou PostgreSQL)

#### 3. VM3 - Gateway (Privado DHCP e Pública)
- Sistema Operacional: Ubuntu Server 20.04 LTS
- Interface de Rede 1 (eth0): IP Privado Estático (192.168.50.12)
- Interface de Rede 2 (eth1): IP Público DHCP
- Função: Gateway de Rede
- Deve fornecer acesso à Internet para as VMs1 e VM2.

Seu objetivo é criar um ambiente de laboratório onde VM1 e VM2 podem se comunicar através da rede privada (192.168.50.0/24) e VM3 atua como um gateway, fornecendo acesso à Internet para VM1 e VM2 através de sua interface de rede pública.


### Requisitos Adicionais

- Todas as VMs devem ser provisionadas com o Vagrant.
- Configure um arquivo de script de provisionamento para cada VM que instale e configure os serviços necessários.
- Documente o processo de configuração e as configurações de rede em um arquivo README.md.

### Instruções Adicionais

- Você deve usar o Vagrant e arquivos de configuração do Vagrant (Vagrantfile) para automatizar a criação e configuração das VMs.
- Você deve usar a configuração de rede do Vagrant para definir as interfaces de rede e seus endereços IP.
- Certifique-se de que as VMs possam se comunicar entre si e que a VM3 tenha conectividade com a Internet através da interface de rede pública.
- Verifique se os serviços (Apache, MySQL/PostgreSQL) nas VMs 1 e 2 estão funcionando corretamente.
