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

## Clean dependencies tree

```
mvn dependency:purge-local-repository clean package
```

## Copy dependencies to local filesystem

```
mvn dependency:copy-dependencies -DoutputDirectory=./
mvn -f "$POM_PATH" dependency:copy-dependencies -DoutputDirectory=./
```

# Deploy file

```
pom_file=
jar_file=
REPO_URL=https://artifacts-zl.talend.com/nexus/content/repositories/studio-auto-test-libs-releases/
mvn deploy:deploy-file -X -Durl=${REPO_URL} -DrepositoryId=talend_nexus_deployment -DpomFile=${pom_file} -Dfile=${jar_file}

pom_file=
jar_file=
classifier=core
mvn deploy:deploy-file -X -Durl=https://talend-update.talend.com/nexus/content/repositories/libraries/ -DrepositoryId=talend_nexus_deployment -DpomFile=${pom_file} -Dfile=${jar_file} -Dclassifier=${classifier}


mvn deploy:deploy-file -DpomFile=pom.xml -Dfile=./pom.xml -DgroupId=my.group.id -DartifactId=artifact-id -DrepositoryId=bigdata-upload-snapshots -Durl=http://maven.mymaven.com/content/repositories/snapshots/

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
mvn dependency:get -DremoteRepositories=emrrepo::::https://s3.us-west-1.amazonaws.com/us-west-1-emr-artifacts/emr-6.2.1/repos/maven/ -Dartifact=org.apache.hive:hive-exec:3.1.2-amzn-3 -Dtransitive=false -Dmaven.repo.local=./
```

## Manually install jar in local repo

https://maven.apache.org/guides/mini/guide-3rd-party-jars-local.html

- If jar contains pom

```
mvn install:install-file -Dfile=${jar_file}
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

## Use alternate local repository

```
mvn package -Dmaven.repo.local=/home/lbourgeois/.m2/repository_libs
```

## Use specific remote repository

Add to pom.xml

```
  <repositories>
    <repository>
      <id>cloudera</id>
      <url>https://repository.cloudera.com/artifactory/cloudera-repos/</url>
    </repository>
  </repositories>
```

# Tests

## Run a single test class

```
mvn -Dtest=TestCircle#mytest test
```

## Tests coverage

jacoco-maven-plugin
-Djacoco.skip=true

# Child modules - Update versions

```bash
mvn versions:update-child-modules
```
