###�Peuvent �tre positionn�es dans .bashrc
```bash
export PATH=$HOME/bin/perl:$PATH

export CATALINA_HOME=/opt/apache-tomcat-7.0.61
echo $CATALINA_HOME

export JAVA_HOME=/usr/lib/jvm/jre-1.7.0-openjdk.x86_64
echo $JAVA_HOME

$CATALINA_HOME/bin/startup.sh
```
### Rechargement .bashrc
```bash
source .bashrc
```
