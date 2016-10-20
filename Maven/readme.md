## Initialisation du projet en ligne de commande
```bash
mvn archetype:generate -DgroupId=fr.ibp.flume -DartifactId=regex-interceptor -DarchetypeArtifactId=maven-archetype-quickstart -DinteractiveMode=false
```
## Téléchargement des sources
```bash
mvn dependency:sources
```
## Version du jdk utilisée
Le JDK pointé par JAVA_HOME

## Utilisation du plugin tomcat pour le déploiement
- cf projet CICE pour un exemple de configuration
- le déploiement se fait via la commande :
```bash
mvn tomcat7:redeploy -DskipTests -Pibcier00
```
