### Liste de fichier modifiés une date précise (ex 11/04/2016)
```bash
find . -newermt 2016-04-11 ! -newermt 2016-04-12
```

### Chainage avec une commande
```bash
find . -name '*.jpg' -exec cp {} ./small \;
```