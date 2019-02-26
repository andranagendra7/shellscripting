cd /opt
 wget http://www-eu.apache.org/dist/maven/maven-3/3.3.9/binaries/apache-maven-3.3.9-bin.tar.gz 

tar xzvf apache-maven-3.3.9-bin.tar.gz
cd apache-maven-3.3.9
ln -s apache-maven-3.3.9 maven

export M2_HOME=/opt/apache-maven-3.3.9

export PATH=${M2_HOME}/bin:${PATH}

mvn -version
