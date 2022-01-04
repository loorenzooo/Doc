# Install / Update

## Install/Update

```
sudo apt install [PACKAGE]
```

```bash
sudo apt-get install -y mongodb-org[:version]
apt-get install --only-upgrade monPaquet
```

### Install deb file

```bash
sudo dpkg --install [mon_package]
```

## Reinstall

```
sudo apt install --reinstall [PACKAGE]
```

## Disable auto update for a package

```
sudo apt-mark hold [PACKAGE]
```

# Search

## Search

```bash
apt-cache search [PACKAGE]
```

## List package files

```bash
sudo apt-file update
apt-file list monPackage
```

## List installed packages

```bash
apt --installed list
```

dpkg -l "_gtk_" | grep ii

```bash
 dpkg -s mongodb-org
```

## Installation / suppression / maj

### Installation d’un .deb

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
