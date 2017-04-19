## Substring
```bash
MA_VARIABLE="Une chaine de caratères"
echo ${MA_VARIABLE:4:6}
```
Renvoie le mot chaine (index 4 qui commence à 0 pour une longeur de 6 caractères)
```bash
MA_VARIABLE="Une chaine de caratères"
echo ${MA_VARIABLE:2}
```
Supprime les 2 premiers caratères


Delete last chars
```
echo ${MA_VARIABLE::-2}
```
## Remplacement de caractères
### Seulement la première occurence
```bash
${string/pattern/replacement}
```
### Toutes les occurences
```bash
${string//pattern/replacement}
```
## String tokenize
Example to get the last part after the last /
```
MACHAINE="/home/lbourgeois/jars/jarsChd5101/parquet/lib/httpclient-4.2.5"
echo ${MACHAINE2##*/}
```
