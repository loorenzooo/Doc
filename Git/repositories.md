## Gestion des repos
### Repo local
#### Créer un repo local
```
git init
```
#### Cloner un repo distant en local
```
git clone [URL] [DIR]
```
#### Etat de synchro work/repo
```
git status
git status -s pour afficher une version courte
```
### Repo distant
#### Voir l’url du repo distant
```
git remote -v
```
#### Ajouter supprimer un repo distant
```
git remote rm origin
git remote add origin http://nfjjfd
git remote add upstream https://github.com/ORIGINAL_OWNER/ORIGINAL_REPOSITORY
```
#### Mise à jour depuis un repo distant 
par fetch et merge en local (pull)
```
git pull upstream
```
#### Pousser les mises à jour sur le repo distant
```
git push upstream
```
