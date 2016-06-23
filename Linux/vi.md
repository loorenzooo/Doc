# Vi cookbook
## Commandes
- /[pattern] : recherche du pattern vers l'avant
- ?[pattern] : recherche du pattern en arrière
- :ascii : affiche le code du caractère sous le curseur
- :g/pattern/d : supprime toutes les lignes contenant pattern
- :s/old/new/g : remplace old par new sur toute la ligne courante

## Raccourcis clavier hors mode édition
- gg : aller à la fin du fichier
- GG : aller au début du fichier
- n : occurrence suivante de la recherche
- N : occurrence précédente de la recherche

## Raccourcis clavier en mode édition
- a : append
- u : undo
- Ctrl-n : autocomplete

## Visual Block mod (Vim only)
### Insertion de texte en mode colonne
- Ctrl + V pour entrer dans le visual block mode
- Selectionner les lignes impactées avec les flèches
- Shift + i pour entrer en mode édition
- Entrer le texte (il apparaît sur une seule ligne)
- Esc pour sortir du mode édition
- L'ajout est dupliqué sur toutes les lignes sélectionnées
