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
### Revenir à la dernière version commitée
```
git reset --hard
```
### Voir les modifications non commitées d'un fichier (unstaged changes)
```
git diff mon_fichier
```
