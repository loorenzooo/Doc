## Configuration
### Afficher la configuration
```
git config --list
```
### Supprimer la vérification SSL
```
git config --global http.sslVerify false
```
### Mise en cahe de l'authentification github
```
# Set git to use the credential memory cache
git config --global credential.helper cache
# Set timeout after one hour
git config --global credential.helper 'cache --timeout=3600'
```
### Signing commits
Autosigning commits
git config --global commit.gpgsign true
https://help.github.com/en/github/authenticating-to-github/signing-commits

### Aliases
Stored in ~/.gitconfig
#### Add alias
```
git config --global alias.co checkout
```

### Diff tool
git config --global diff.tool p4merge
git config --global difftool.p4merge.path <path>
git config --global difftool.prompt false
