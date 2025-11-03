# Guide de démarrage rapide

Ce guide vous aide à démarrer rapidement avec le laboratoire.

## Vérification des prérequis

Avant de commencer, assurez-vous d'avoir installé :

1. **VirtualBox** - Vérifiez avec :
   ```bash
   VBoxManage --version
   ```

2. **Vagrant** - Vérifiez avec :
   ```bash
   vagrant --version
   ```

## Démarrage en 3 étapes

### Étape 1 : Lancer la machine virtuelle

```bash
vagrant up
```

Cette commande va :
- Télécharger l'image Ubuntu (si nécessaire)
- Créer la machine virtuelle
- Installer les logiciels de base
- Configurer l'environnement

**Note :** La première fois peut prendre 5-10 minutes selon votre connexion internet.

### Étape 2 : Se connecter à la machine

```bash
vagrant ssh labo-vm
```

Vous êtes maintenant dans la machine virtuelle !

### Étape 3 : Commencer le laboratoire

```bash
cd ~/labo
# Votre travail se trouve ici
```

## Commandes essentielles

| Commande | Description |
|----------|-------------|
| `vagrant up` | Démarrer la machine |
| `vagrant ssh` | Se connecter en SSH |
| `vagrant halt` | Arrêter proprement |
| `vagrant destroy` | Supprimer la machine |
| `vagrant provision` | Relancer le provisionnement |

## Structure des dossiers partagés

- `labo/` → `/home/vagrant/labo` (sur la VM)
  - Les fichiers dans `labo/` sont automatiquement synchronisés

## Vérification que tout fonctionne

Dans la machine virtuelle :

```bash
# Vérifier la connexion réseau
ping -c 3 8.8.8.8

# Vérifier l'IP
ip addr show

# Voir les processus
htop
```

## Problèmes courants

### Erreur "VT-x/AMD-V not enabled"
- Activez la virtualisation dans le BIOS de votre ordinateur

### Erreur de réseau
- Vérifiez que VirtualBox est bien installé
- Essayez de redémarrer VirtualBox

### Port déjà utilisé
- Arrêtez d'autres VMs qui pourraient utiliser les mêmes ports
- Ou modifiez les ports dans le Vagrantfile

### Besoin d'aide ?
Consultez le [README.md](README.md) pour plus d'informations détaillées.

