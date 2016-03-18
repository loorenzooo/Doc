# Gestion des PPA
## Lister les dépôts ppa installés
```bash
ls -l /etc/apt/sources.list.d/
```
## Ajouter un dépôt ppa
### Automatiquement avec add-apt
```bash
sudo add-apt-repository ppa:<nom_du_dépôt>
```
### Manuellement
- importer la clé publique mongodb
```bash
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
```
- Créer le fichier list
```bash
echo "deb http://repo.mongodb.org/apt/ubuntu "$(lsb_release -sc)"/mongodb-org/3.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.0.list
```

- Récupérer le fichier list
```bash
cd /etc/apt/sources.list.d
wget http://public-repo-1.hortonworks.com/ambari/ubuntu14/2.x/updates/2.2.0.0/ambari.list
```



- puis recharger la liste des packages

## Supprimer un dépôt ppa
```bash
sudo add-apt-repository -r ppa:<nom_du_dépôt>
sudo ppa-purge ppa:<nom_du_dépôt>
```
# Gestion du référentiel des packages
## Copier manuellement un fichier deb dans le cache apt (à tester)
```bash
sudo cp *.deb /var/cache/apt/archives/
```
## Recharger la liste des packages
```bash
sudo apt-get update
```
