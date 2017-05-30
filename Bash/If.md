```bash
if [[ TEST ]]; then
  [COMMAND1]
else
  [COMMAND2]
fi
```

### One line test
if ! id hbase; then echo "A creer"; else echo "Existe deja"; fi

### Tests numériques
- $variable -eq 10 : égal
- $variable -ne 10 : différent
