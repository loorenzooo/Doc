## AWK
### Compter le nombre d'occurrences d'un caractère par ligne :
```bash
awk '{ x=0; x+=gsub("\\|",""); print x }'
```
