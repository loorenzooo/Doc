# Delete jars (replace with empty string) in file jars list and output result
```
sed -e 's@jars/@@' jar_list
```

# Replace directly in file
```
sed -i 's@toto@titi@' fichiers
```

# Use behind a find command
find . -name "docker-compose.yml" -exec sed -i "s/image: mysql/image: mysql:5/g" '{}' \;

# Sample script on source code
PATTERN="CASSANDRA_2_0_0=CASSANDRA_2_0_0=Cassandra 2.0.x (Deprecated)/2.1.x"
REPLACE="CASSANDRA_2_0_0=Cassandra 2.0.x (Deprecated)/2.1.x"
echo "$PATTERN => $REPLACE"
grep -R -l "${PATTERN}" * > to_convert
while read line; do sed -i "s@$PATTERN@$REPLACE@g" $line; done < to_convert
rm to_convert
git status
git add .
git commit -m "fix(TBD-6955) Replace $PATTERN label with $REPLACE"
