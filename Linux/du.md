### Get top sizes in a given folder
```bash
sudo du -m [FOLDER] | sort -nr | head -n 20

# On first level
sudo du -m --max-depth=1 . | sort -nr | head -n 20
```
