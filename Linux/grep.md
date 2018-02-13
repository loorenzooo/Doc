 ### Search recursively (-R) a pattern (credentials) in current dir (./) only in *config.xml files (--include) avec comptage (-c)
 ```bash
 grep --include="*config.xml" -R -c 'credentials' ./
```

### With regex
```bash
grep -R 'jackson-[^1-9]*\(-[0-9]\.[0-9]\.[0-9]\)\?]*[^\.]*' *
```

### Options
* --color
* -o : display only matched string
