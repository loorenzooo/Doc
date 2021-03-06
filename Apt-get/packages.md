# Gestion des packages

## Recherche

### Rechercher un package
```bash
apt-cache search [monPackage]
```
### Lister les fichiers d’un package
```bash
sudo apt-file update
apt-file list monPackage
```
### Lister les packages installés
```bash
apt --installed list
```
dpkg -l "*gtk*" | grep ii

### Savoir si un paquet précis est installé
```bash
dkpg -s mongodb-org
```
## Installation / suppression / maj

### Installer un package
```bash
sudo apt-get install -y mongodb-org[:version]
```
### Installation d’un .deb
```bash
sudo dpkg --install [mon_package]
```
### Mettre à jour un package
```bash
apt-get install --only-upgrade monPaquet
```
### Mise à jour de tous les packages
```bash
apt-get update
apt-get dist-upgrade
```


### Supprimer complètement un package
```bash
# Sans suppression des fichiers de configuration
apt-get remove <mon_paquet>

# Avec suppression des fichiers de configuration
apt-get purge <mon_paquet>
```
### Supprimer le cache des paquets périmés
```bash
sudo apt-get autoclean
```
### Supprimer tout le cache
```bash
sudo apt-get clean
```
### Supprimer les dépendances inutiles
```bash
sudo apt-get autoremove
```
### Forcer la suppression en cas de problèmes
```bash
sudo dpkg --remove --force-all apache2-doc
```
### Afficher la version d’un package
```bash
apt-cache policy mongodb-org
```
### Fixer la version
```bash
echo "mongodb-org hold" | sudo dpkg --set-selections
```
### Réparer les dépendances cassées
```bash
sudo apt-get -f install
```
Si message d'erreur forcer la suppression du package qui pose pb

### Extract rpm content
```bash
rpm2cpio package.rpm | cpio -idmv
```
