### Liste des répertoires vides
```bash
find test -depth -type d -empty
```
### Suppression des répertoires vides
```bash
find test -depth -type d -empty -delete
```
### Liste de fichier modifiés une date précise (ex 11/04/2016)
```bash
find . -newermt 2016-04-11 ! -newermt 2016-04-12
```

### Démarrer seulement à partir des sous-répertoires
```bash
find . -mindepth 2 -name '*.mkv'
```

### Chainage avec une commande
```bash
find . -name '*.jpg' -exec cp {} ./small \;
```

### Recherche d'une classe dans des jars
```bash
find . -type f -name "*.jar" -exec sh -c 'unzip -l {} | grep -H --label {} 'Buffer'' \;
```
