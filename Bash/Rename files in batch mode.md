# Replace b char by B char in file list
```bash
while read line; do mv $line ${line//b/B}; done < list
```
