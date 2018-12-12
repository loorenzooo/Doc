### List empty directories
```bash
find . -depth -type d -empty
```
### Delete empty directories
```bash
find . -depth -type d -empty -delete
```
### List files modified at a precise date
```bash
find . -newermt 2016-04-11 ! -newermt 2016-04-12
```
### Start only from subdirs
```bash
find . -mindepth 2 -name '*.mkv'
```
### Chain with a command
```bash
find . -name '*.jpg' -exec cp {} ./small \;
```
### Find a class in jars
```bash
find . -type f -name "*.jar" -exec sh -c 'unzip -l {} | grep -H --label {} 'Buffer'' \;
```
### Most recent files in tree
```bash
find $DIR -type f -printf "%T@ %p\n" | sort -n -r
```
