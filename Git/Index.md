## Configuration
### Afficher la configuration
```
git config --list
```
## Gestion des repos
### Créer un repo
```
git init
```
### Cloner un repo
```
git clone [URL] [DIR]
```
### Etat de synchro work/repo
```
git status
git status -s pour afficher une version courte
```
## Gestion des fichiers

### Ajout de nouveaux fichiers au prochain commit
```
git add monFichier
```
Le fichier est alors dans la staging area

### Annuler une modif qui n’est pas stagged
```
git checkout monFichier
```
## Branches

### Lister les branches locales
```
git branch
```
### Créer une branche locale et s’y positionner
```
git checkout -b [name_of_your_new_branch]
```
### Pousser la nouvelle branche sur github
```
git push origin  [name_of_your_new_branch]
```
### Supprimer une branche locale
```
git branch -d [nom de la branche]
```
### Lister toutes les branches
```
git branch -a
```
La branche par défaut est la branche master
### Comparer la copie de travail avec la branche master
```
git diff master
```
### Récupération de la branche master locale et positionnement dessus
```
git checkout master
```
## Repo distant
### Voir l’url du repo distant
```
git remote -v
```
### Ajouter supprimer un repo distant
```
git remote rm origin
git remote add origin http://nfjjfd
git remote add upstream https://github.com/ORIGINAL_OWNER/ORIGINAL_REPOSITORY
```
### Mise à jour depuis un repo distant
### Récupération et merge du upstream en local
```
git pull upstream
```
