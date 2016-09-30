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

## Remplacement de caractères
```bash
${string//pattern/replacement}
```
