## Loop on interval
```bash
for i in {1..5}; do echo $i; done
```
## Loop on string list
```bash
for i in 'toto' 'titi'; do echo $i; done
```
## Loop on files
```bash
for file in /dir/*
do
  cmd [option] "$file" >> results.out
done
```
## Loop on find results
```bash
for f in $(find . -maxdepth 2 -mindepth 2 -type d);do echo "mv $f $(dirname $f)/part=$(basename $f)";done
```
