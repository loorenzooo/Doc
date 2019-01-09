## List tags
```
git tag -l
```
## Fetch tags
```
 git fetch --tags origin master
 ```
 git fetch --all --tags --prune

## Clone a specific tag (to be completed)
```
git clone -b json-path-1.2.0 git@github.com:json-path/JsonPath.git json-path-1.2.0
```
## Create a branch from a tag
```
git checkout -b <Hotfix branch> <TAG>
git checkout tags/<tag_name> -b <branch_name>
```
