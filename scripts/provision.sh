#!/bin/bash

# Script de provisionnement pour la machine virtuelle
# Ce script est exécuté automatiquement lors du premier 'vagrant up'

set -e

echo "=== Démarrage du provisionnement ==="

# Mise à jour du système
echo "Mise à jour des paquets..."
sudo apt-get update
sudo apt-get upgrade -y

# Installation des outils de base
echo "Installation des outils de base..."
sudo apt-get install -y \
    curl \
    wget \
    git \
    vim \
    nano \
    build-essential \
    net-tools \
    htop \
    tree

# Configuration de l'environnement (exemples)
echo "Configuration de l'environnement..."

# Créer un répertoire de travail
mkdir -p /home/vagrant/workspace

# Configurer des alias utiles (optionnel)
cat >> /home/vagrant/.bashrc << EOF

# Alias personnalisés pour le labo
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias ..='cd ..'
alias ...='cd ../..'
EOF

# Installer des outils supplémentaires selon vos besoins
# Exemples (décommentez selon vos besoins) :

# Docker (exemple)
# curl -fsSL https://get.docker.com -o get-docker.sh
# sudo sh get-docker.sh
# sudo usermod -aG docker vagrant

# Python et pip
# sudo apt-get install -y python3 python3-pip

# Node.js (exemple)
# curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -
# sudo apt-get install -y nodejs

# Nettoyage
echo "Nettoyage..."
sudo apt-get autoremove -y
sudo apt-get autoclean -y

echo "=== Provisionnement terminé ==="
echo "La machine est prête pour le laboratoire!"

