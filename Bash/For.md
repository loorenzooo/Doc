## Loop on interval
```bash
for i in {1..5}; do echo $i; done
```

## Loop on files
```bash
for file in /dir/*
do
  cmd [option] "$file" >> results.out
done
```
