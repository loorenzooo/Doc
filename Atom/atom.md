# Keyboard shortcuts
## General
Ctrl-Shift-P : General command line
## Files
Ctrl-T : Open file from left pane
## Edition
- Ctrl-F : Find
- F3 : Find next
- Ctrl-Shift-K : Delete current line
- Ctrl-l : Select current line
- Ctrl-up/down : Move line
- Ctrl-enter : Insert line after

## Search
- Ctrl-maj-R : Search in project

## Plugins

- Ctrl-Shift-H : Git-plus
- Ctrl-Shift-M : Markdownn preview

# Edition de fichier
## Ajouter des caractères en fin de ligne
- Utiliser la fonction recherche avec mode regexp activé
- Expression pour la recherche : $

# Installation package

```bash
# Pour contourner le pb http 302
set ATOM_NODE_URL=http://gh-contractor-zcbenz.s3.amazonaws.com/atom-shell/dist
apm install [monPackage] --verbose
```

# Configuration proxy
Céer dans ~\.atom un fichier .apmrc et y mettre le contenu
```
http-proxy=http://127.0.0.1:8888
https-proxy=http://127.0.0.1:8888
```
