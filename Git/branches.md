## Branches

### Branches locales
#### Lister les branches locales
```
git branch
```
### Récupération de la branche master locale et positionnement dessus
```
git checkout master
```
#### Créer une branche locale et s’y positionner
```
git checkout -b [name_of_your_new_branch]
```
NB: La nouvelle branche sera basée sur la branche courante et pa sobligatoirement sur le master

#### Pousser la nouvelle branche sur github
```
git push origin  [name_of_your_new_branch]
```
#### Supprimer une branche locale
```
git branch -d [nom de la branche]
```

### Branches distantes
#### Lister les branches distantes
```
git branch -r
```
### Lister toutes les branches
```
git branch -a
```
### Récupérer les branches distantes
```
git fetch origin
```
Note tahth working directory is not touched at this point

### Comparaison et mise à jour
#### Comparer la copie de travail avec la branche master
```
git diff master
```
#### Merger une branche
```
git chechout branche_destination # On se positionne dans la branche destination
git merge branche_a_integrer
```
### Fetch et merge auto
```
git pull origin feat/TBD4624-CDH5.10_upgrade
```

https://longair.net/blog/2009/04/16/git-fetch-and-merge/
