# Project

## Project init command line
```bash
mvn archetype:generate -DgroupId=fr.ibp.flume -DartifactId=regex-interceptor -DarchetypeArtifactId=maven-archetype-quickstart -DinteractiveMode=false
```

## Check used JDK version
This is the JDK pointed by JAVA_HOME env var
Pour voir le jdk utilisé
```java
mvn enforcer:display-info
```

# Command line
## Arguments
```
- Disable tests : DskipTests
- Disable checkstyle : -Dcheckstyle.skip=true
```

# Dependencies
## Get dependencies tree
```
mvn -f "$POM_PATH" dependency:tree
```
## Copy dependencies to local filesystem
```
mvn dependency:copy-dependencies -DoutputDirectory=/tmp/xxx
```
## Download dependency using wget
```
wget --output-document=aws-java-sdk-cloudwatch-1.10.20.jar http://search.maven.org/remotecontent?filepath=com/amazonaws/aws-java-sdk-cloudwatch/1.10.20/aws-java-sdk-cloudwatch-1.10.20.jar
```
## Dependencies sources download
```
mvn dependency:sources
```

# Repository
## Download and install jar
```
mvn dependency:get -Dartifact=org.apache.avro:avro:1.7.7
```
## Manually install jar in local repo
https://maven.apache.org/guides/mini/guide-3rd-party-jars-local.html
- If jar contains pom
```
mvn install:install-file -Dfile=<path-to-file>
```
- Otherwise
```
pom_file=/path/to/pom
jar_file=/path/to/jar
mvn install:install-file -Dfile=${jar_file} -DpomFile=${pom_file}
```
## Remove .lastUpdated files
```
find ~/.m2/ -name '*lastUpdated' -exec rm {} \;
```
## Install only parent pom
```
mvn install -N
```
## Use alternate repository
```
mvn package -Dmaven.repo.local=/alternate/repo/location
```

# Tests
## Run a single test class
```
mvn -Dtest=TestCircle#mytest test
```
