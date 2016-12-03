
```bash
while read line; do mv $line ${line//b/B}; done < list
```
