# ISOC2025 - Laboratoire Pratique VirtualBox/Vagrant

Ce dépôt contient la configuration et les ressources pour le laboratoire pratique utilisant VirtualBox et Vagrant.

## Prérequis

- [VirtualBox](https://www.virtualbox.org/wiki/Downloads) (version 6.0 ou supérieure)
- [Vagrant](https://www.vagrantup.com/downloads) (version 2.0 ou supérieure)
- Au moins 4GB de RAM libre sur votre machine
- Espace disque libre: ~10GB par machine virtuelle

## Installation rapide

1. Cloner ce dépôt :
```bash
git clone <url-du-depot>
cd isoc2025-labo-vm
```

2. Lancer les machines virtuelles :
```bash
vagrant up
```

3. Se connecter à la machine virtuelle :
```bash
vagrant ssh labo-vm
```

## Commandes Vagrant utiles

- `vagrant up` - Démarrer et créer les machines virtuelles
- `vagrant halt` - Arrêter les machines virtuelles
- `vagrant suspend` - Mettre en pause les machines
- `vagrant resume` - Reprendre les machines en pause
- `vagrant destroy` - Supprimer complètement les machines
- `vagrant ssh <nom-vm>` - Se connecter en SSH à une machine
- `vagrant status` - Voir l'état des machines
- `vagrant provision` - Relancer le provisionnement

## Structure du projet

```
.
├── Vagrantfile          # Configuration des machines virtuelles
├── README.md            # Ce fichier
├── .gitignore           # Fichiers à ignorer par Git
├── scripts/             # Scripts de provisionnement
│   └── provision.sh     # Script d'installation/config initiale
└── labo/                # Fichiers et ressources du laboratoire
    └── ...              # À compléter selon vos besoins
```

## Configuration réseau

Les machines virtuelles sont configurées avec des IP statiques sur un réseau privé :
- **labo-vm** : 192.168.56.10
- **labo-vm2** : 192.168.56.11 (si activé)

Vous pouvez vous connecter via SSH avec :
```bash
ssh vagrant@192.168.56.10
# Mot de passe par défaut: vagrant
```

## Personnalisation

### Modifier les ressources (RAM, CPU)

Éditez le fichier `Vagrantfile` et modifiez les valeurs dans la section `vm.vm.provider` :
```ruby
vb.memory = "2048"  # RAM en MB
vb.cpus = 4         # Nombre de CPUs
```

### Ajouter des machines supplémentaires

Décommentez ou ajoutez une nouvelle section `config.vm.define` dans le `Vagrantfile`.

### Personnaliser le provisionnement

Modifiez le fichier `scripts/provision.sh` pour installer des logiciels ou configurer la machine selon vos besoins.

## Dépannage

### Problème de réseau

Si vous rencontrez des problèmes de réseau, vous pouvez :
- Utiliser un réseau public : décommentez `vm.vm.network "public_network"` dans le Vagrantfile
- Vérifier les paramètres réseau de VirtualBox

### Problème d'espace disque

Si vous manquez d'espace :
```bash
vagrant destroy
# Nettoyer les boxes Vagrant inutilisées
vagrant box prune
```

### Réinitialiser complètement

```bash
vagrant destroy -f
vagrant up
```

## Notes importantes

- Les modifications dans le dossier partagé `labo/` sont synchronisées automatiquement
- Sauvegardez votre travail régulièrement
- Ne modifiez pas directement les fichiers dans `.vagrant/` (générés automatiquement)

## Aide supplémentaire

Pour plus d'informations :
- [Documentation Vagrant](https://www.vagrantup.com/docs)
- [Documentation VirtualBox](https://www.virtualbox.org/manual/)

## Auteur

Moise Kameni | ISOC2025 - Laboratoire Pratique

