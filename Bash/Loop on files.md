### Avec une boucle for
```bash
#!/bin/bash
for file in *.transit; do
    mv "$file" "`basename $file .transit`"
done
```
### En sortie de la commande find
```bash
find  /data/inc/wif/$1 -name "*.csv" -print | while read FICHIER
do
        echo "${FICHIER}"
done
```
