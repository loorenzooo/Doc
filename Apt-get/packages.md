# Gestion des packages

## Recherche

### Rechercher un package
```bash
apt-cache search [monPackage]
```
### Lister les fichiers d’un package
```bash
apt-file list monPackage
```
### Lister les packages installés
```bash
apt --installed list
```
### Savoir si un paquet précis est installé
```bash
dkpg -s mongodb-org
```
## Installation / suppression / maj

### Installer un package
```bash
sudo apt-get install -y mongodb-org
```
### Installation d’un .deb
```bash
sudo dpkg --install [mon_package]
```
### Mettre à jour un package
```bash
apt-get install --only-upgrade monPaquet
```
### Supprimer complètement un package
```bash
apt-get remove <mon_paquet>
apt-get purge <mon_paquet> -- voir ce que purge fait vraiment
```

### Afficher la version d’un package
```bash
apt-cache policy mongodb-org
```
### Fixer la version
```bash
echo "mongodb-org hold" | sudo dpkg --set-selections
```
