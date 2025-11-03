# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  # Configuration globale
  config.vm.box = "ubuntu/jammy64"
  # config.vm.box = "generic/ubuntu2204"  # Alternative
  
  # Configuration de la machine principale
  config.vm.define "labo-vm" do |vm|
    vm.vm.hostname = "labo-vm"
    
    # Configuration réseau
    vm.vm.network "private_network", ip: "192.168.56.10"
    # vm.vm.network "public_network"  # Pour réseau externe
    
    # Configuration des ressources
    vm.vm.provider "virtualbox" do |vb|
      vb.name = "ISOC2025-Labo-VM"
      vb.memory = "1024"
      vb.cpus = 2
      # vb.gui = true  # Décommenter pour afficher la fenêtre GUI
    end
    
    # Provisionnement
    vm.vm.provision "shell", path: "scripts/provision.sh"
    
    # Partage de dossiers (optionnel)
    # vm.vm.synced_folder ".", "/vagrant", disabled: true  # Désactiver le partage par défaut
    vm.vm.synced_folder "labo/", "/home/vagrant/labo", create: true
  end
  
  # Exemple: Machine additionnelle pour le labo (décommenter si nécessaire)
  # config.vm.define "labo-vm2" do |vm|
  #   vm.vm.hostname = "labo-vm2"
  #   vm.vm.network "private_network", ip: "192.168.56.11"
  #   
  #   vm.vm.provider "virtualbox" do |vb|
  #     vb.name = "ISOC2025-Labo-VM2"
  #     vb.memory = "512"
  #     vb.cpus = 1
  #   end
  #   
  #   vm.vm.provision "shell", path: "scripts/provision.sh"
  # end
end

