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
### Aliases
Stored in ~/.gitconfig
#### Add alias
```
git config --global alias.co checkout
```
