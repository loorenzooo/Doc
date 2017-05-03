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
Pour voir le jdk utilisé
```java
mvn enforcer:display-info
```
## Utilisation du plugin tomcat pour le déploiement
- cf projet CICE pour un exemple de configuration
- le déploiement se fait via la commande :
```bash
mvn tomcat7:redeploy -DskipTests -Pibcier00

## Argument
- Désactivation tests : DskipTests
- Désactivation checkstyle : -Dcheckstyle.skip=true
```
## Télécharger un jar en utilisant wget
```
get --output-document=aws-java-sdk-cloudwatch-1.10.20.jar http://search.maven.org/remotecontent?filepath=com/amazonaws/aws-java-sdk-cloudwatch/1.10.20/aws-java-sdk-cloudwatch-1.10.20.jar
```
