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

#### Pousser la branche locale sur github
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
Note : Le répertoire de travail n'est pas impacté par cette commande

### Se positionner sur une branche distante
```
git checkout [branch] # sans le origin
```
### Comparaison et mise à jour
#### Comparer la copie de travail avec la branche master
```
git diff master
```
#### Merger une branche (A valider)
```
git checkout branche_destination # On se positionne dans la branche destination
git merge branche_a_integrer
```
### Merger la branche master dans la branche de feature
```
git checkout [feature_branch]
git pull origin master
```

https://longair.net/blog/2009/04/16/git-fetch-and-merge/
