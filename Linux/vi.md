# Vi cookbook
## Commands
- /[pattern] : recherche du pattern vers l'avant
- ?[pattern] : recherche du pattern en arrière
- :ascii : affiche le code du caractère sous le curseur
- :g/pattern/d : supprime toutes les lignes contenant pattern
- :s/old/new/g : remplace old par new sur toute la ligne courante
  -- use \s for a white space : ex :%s/\s//g
- :help [COMMANDE] : affiche l'aide sur une commande
- :listchars : nonfigure les charactères affichés par la commande list

## Shortcuts in non edition mode
- gg : aller à la fin du fichier
- GG : aller au début du fichier
- n : occurrence suivante de la recherche
- N : occurrence précédente de la recherche
- Shift-j : join two lines

## Shortcuts in edition mode
- a : append
- u : undo
- Ctrl-n : autocomplete

## Visual Block mod (Vim only)
### Insert text in column mode
- Ctrl + V pour entrer dans le visual block mode
- Selectionner les lignes impactées avec les flèches
- Shift + i pour entrer en mode édition
- Entrer le texte (il apparaît sur une seule ligne)
- Esc pour sortir du mode édition
- L'ajout est dupliqué sur toutes les lignes sélectionnées

## Add chars at the beggining of each line
:%s/^/new_chars/g

## Delete white space
:%s/\s//g

# Completion
- Ctrl-x Ctrl-n : forward
- Ctrl-x Ctrl-p : backward

:%s/^\s//g
