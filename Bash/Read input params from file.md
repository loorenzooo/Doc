```bash
while read line
do
        switch-credentialsId.sh $line 32990aa2-3122-4db6-b874-a0313eaa1d31
done <"$1"
```

En une ligne on remplace les retours chariot par des ;
```bash
while read line; do ./create-view-inf.sh $line; done < liste-tables-inf
```
