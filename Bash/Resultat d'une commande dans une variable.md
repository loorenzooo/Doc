```bash
LISTE_DATES=$(awk '/^[0-9][0-9][0-9][0-9]/{ print $1}' ${FICHIER} | sort -u)
```
