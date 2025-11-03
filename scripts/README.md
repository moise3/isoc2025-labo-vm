# Scripts de provisionnement

Ce dossier contient les scripts utilisés lors du provisionnement des machines virtuelles.

## provision.sh

Script principal de provisionnement exécuté automatiquement lors du premier `vagrant up`.

Il installe :
- Les outils de base (curl, wget, git, vim, etc.)
- Les outils système essentiels
- Configure l'environnement de base

Vous pouvez personnaliser ce script pour installer des logiciels spécifiques selon les besoins de votre laboratoire.

## Ajouter vos propres scripts

Pour exécuter des scripts supplémentaires lors du provisionnement, vous pouvez :

1. Ajouter des scripts dans ce dossier
2. Les référencer dans le Vagrantfile :

```ruby
vm.vm.provision "shell", path: "scripts/votre-script.sh"
```

