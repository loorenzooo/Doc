## Branches

### Lister les branches locales
```
git branch
```
### Créer une branche locale et s’y positionner
```
git checkout -b [name_of_your_new_branch]
```
NB: La nouvelle branche sera basée sur la branche courante et pa sobligatoirement sur le master

### Pousser la nouvelle branche sur github
```
git push origin  [name_of_your_new_branch]
```
### Supprimer une branche locale
```
git branch -d [nom de la branche]
```
### Lister toutes les branches
```
git branch -a
```
La branche par défaut est la branche master
### Comparer la copie de travail avec la branche master
```
git diff master
```
### Récupération de la branche master locale et positionnement dessus
```
git checkout master
```
### Merger une branche
```
git chechout branche_destination # On se positionne dans la branche destination
git merge branche_a_integrer

### Se positionner sur une branche distante
git fetch # Récupère kes branches (et + ?)
git checkout [ma_branche]
```
