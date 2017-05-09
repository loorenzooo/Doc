## Here is an example with find
```
find . -name "*.java" -exec sed -i "s/580/5100/g" '{}' \;
```
