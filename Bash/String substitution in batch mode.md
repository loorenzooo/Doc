## With find
```
find . -name "*.java" -exec sed -i "s/580/5100/g" '{}' \;
```

## From a file list
PATTERN=EMR_5_14_0
TARGET=EMR_5_15_0
```
while read line; do sed -i "s@$PATTERN@$TARGET@g" $line; done < list
```
