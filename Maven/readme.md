## Project init command line
```bash
mvn archetype:generate -DgroupId=fr.ibp.flume -DartifactId=regex-interceptor -DarchetypeArtifactId=maven-archetype-quickstart -DinteractiveMode=false
```
## Sources download
```bash
mvn dependency:sources
```
## Checked used JDK version
Le JDK pointé par JAVA_HOME
Pour voir le jdk utilisé
```java
mvn enforcer:display-info
```
## Tomcat plugin for deployment
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
wget --output-document=aws-java-sdk-cloudwatch-1.10.20.jar http://search.maven.org/remotecontent?filepath=com/amazonaws/aws-java-sdk-cloudwatch/1.10.20/aws-java-sdk-cloudwatch-1.10.20.jar
```

## Download and install jar
```
mvn dependency:get -Dartifact=org.apache.avro:avro-tools:1.8.1
```

## Installer manuellement un jar dans le repo local

https://maven.apache.org/guides/mini/guide-3rd-party-jars-local.html

- Si le jar contient un pom
```
mvn install:install-file -Dfile=<path-to-file>
```
- Sinon
```
mvn install:install-file -Dfile=<path-to-file> -DgroupId=<group-id> -DartifactId=<artifact-id> -Dversion=<version> -Dpackaging=<packaging> -DpomFile=<pathToPom>
```

# Maven dependencies check
```
mvn -f "$HOME/.m2/repository/$POM_PATH" dependency:tree
```

### Copy dependencies to local filesystem
```
mvn dependency:copy-dependencies -DoutputDirectory=/tmp/xxx
```

### Run a single test class
```
mvn -Dtest=TestCircle#mytest test
```

### Remove .lastUpdated files
```
find ~/.m2/ -name '*lastUpdated' -exec rm {} \;
```
