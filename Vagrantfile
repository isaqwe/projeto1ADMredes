Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/bionic64"

  # VM 1 (Servidor Web)
  config.vm.define "vm1" do |vm1|
    vm1.vm.provider "virtualbox" do |vb|
      vb.memory = "512"
      vb.name = "vm1"
    end

    # Configuração da Interface de Rede Privada com IP Estático
    vm1.vm.network "private_network", type: "static", ip: "192.168.50.10"

    # Compartilhamento de pasta
    vm1.vm.synced_folder "/var/www/html", "/var/www/html"
    
    # VM 1 (Servidor Web)
vm1.vm.provision "shell", path: "provision/vm1.sh"

  end

  # VM 2 (Servidor de Banco de Dados)
  config.vm.define "vm2" do |vm2|
    vm2.vm.provider "virtualbox" do |vb|
      vb.memory = "512"
      vb.name = "vm2"
    end

    # Configuração da Interface de Rede Privada com IP Estático
    vm2.vm.network "private_network", type: "static", ip: "192.168.50.11"
    

# VM 2 (Servidor de Banco de Dados)
vm2.vm.provision "shell", path: "provision/vm2.sh"



  end

  # VM 3 (Gateway de Rede)
  config.vm.define "vm3" do |vm3|
    vm3.vm.provider "virtualbox" do |vb|
      vb.memory = "512"
      vb.name = "vm3"
    end

    # Configuração da Interface de Rede Privada com IP Estático
    vm3.vm.network "private_network", type: "static", ip: "192.168.50.12"

    # Configuração da Interface de Rede Pública (DHCP)
    vm3.vm.network "public_network", type: "dhcp"

# VM 3 (Gateway de Rede)
vm3.vm.provision "shell", path: "provision/vm3.sh"

  end
end

