# Backup while replace

```bash
# will create a .bak file
sed -i.bak 's/\t/    /g' /tmp/myfile
```

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
find . -name "plugin.xml" -exec sed -i "s/Librairies for GCS/Libraries for GCS/g" '{}' \;

# Sample script on source code

PATTERN="CASSANDRA_2_0_0=CASSANDRA_2_0_0=Cassandra 2.0.x (Deprecated)/2.1.x"
REPLACE="CASSANDRA_2_0_0=Cassandra 2.0.x (Deprecated)/2.1.x"
echo "$PATTERN => $REPLACE"
grep -R -l "${PATTERN}" \* > to_convert
while read line; do sed -i "s@$PATTERN@$REPLACE@g" $line; done < to_convert
rm to_convert
git status
git add .
git commit -m "fix(TBD-6955) Replace $PATTERN label with $REPLACE"

# Several remplace

sed -e "s/groupId/${groupId}/g;s/artifactId/${artifactId}/g;s/version/\${version}/g"

# Generate a plugin part

while read line; do sed -e "s@JARNAME@$line@g" libraryNeeded.tpl; done < parquet

# Tabs

```bash
#Replace tabs
sed -i 's/\t/    /g' /tmp/myfile
```
