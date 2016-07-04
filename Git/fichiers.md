## Gestion des fichiers
### Etats des fichiers
- modified / unstaged
- staged
- commited

### Ajout de nouveaux fichiers au prochain commit
```
git add monFichier
```
Le fichier est alors dans la staging area

### Supprimer un fichier de la staging area
```
git reset monFichier
```
Le fichier n'est pas inclus dans le prochain commit

### Annuler une modif qui n’est pas stagged
```
git checkout monFichier
```
### Revenir à la dernière version commitée
```
git reset --hard
```
### Voir les modifications non commitées d'un fichier
```
git diff mon_fichier
```
