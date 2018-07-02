 ### Search recursively (-R) a pattern (credentials) in current dir (./) only in *config.xml files (--include) avec comptage (-c)
 ```bash
 grep --include="*config.xml" -R -c 'credentials' ./
```

### With regex
```bash
grep -R 'jackson-[^1-9]*\(-[0-9]\.[0-9]\.[0-9]\)\?]*[^\.]*' *
```

### With regex and multiple conditions
```bash
find . -mindepth 1 -maxdepth 1 -type d | grep -e 'talend-cloudera-5130-from-540-hadoop-spark' -e 'tuj1'
```

### Options
* --color
* -o : display only matched string
* -v : logical not
  -l : only filenames
