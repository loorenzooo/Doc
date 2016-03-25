## AWK
### Compter le nombre d'occurrences d'un caractère par ligne
Exemple de comptage de | dans le fichier monFichier.txt
```bash
awk '{ x=0; x+=gsub("\\|",""); print x }' monFichier.txt
```
