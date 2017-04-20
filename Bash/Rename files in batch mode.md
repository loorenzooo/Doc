# Replace the by The in file list
```bash
while read line; do mv $line ${line/the/The}; done < list
```
