## Managing files

### Files state

#### new - untracked
- git add => staged
- git reset => untracked

#### modified - unstaged (Changed but not updated in git status) / untracked (Untracked files in git status)
- git add => staged
- git checkout => not modified

#### staged
- git commit => commited
- git rm --cached

#### commited
- git push => pushed

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
  git reset --hard origin/master
```
### Voir les modifications non commitées d'un fichier
```
git diff mon_fichier
```
### Voir les noms de fichiers modifiés
```
git diff --name-only
```
### Remisage
```
git stash
git stash list
git stash apply
```
### Revenir à une version précise d'un fichier
```
git checkout abcde file/to/restore
```
### Delete a file from repo
```
git rm --cached [FILE]
```
### Cancel last commmit
```
git reset --hard HEAD^
```

### Revert last 2 commits
```
git revert --no-commit HEAD~2..
```

### Diff on single file from remote branch
```
git diff origin/lbourgeois/TBD-6494_Add_Kudu_dkr_image -- Dockerfile
```

### Diff from master for a single file
```
git diff master ./main/plugins/org.talend.hadoop.distribution.cdh5100/plugin.xml
```

git revert -m [MAINLINE] <= what you want to keep
