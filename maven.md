## Maven Survivor Guide

```shell
https://maven.apache.org/download.cgi

vi /etc/profile.d/apache-maven.sh

export JAVA_HOME=/usr/lib/jvm/java-9-oracle
export M2_HOME=/usr/local/apache-maven
export MAVEN_HOME=/usr/local/apache-maven
export PATH=${M2_HOME}/bin:${PATH}

mvn -version
```
