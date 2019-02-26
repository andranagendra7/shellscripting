# To install java 8 


yum install git -y

yum install wget

cd /opt/

git init

git config --global user.name "andranagendra"

git config --global user.email "andranagendra720@gmail.com"

#git remote add nag https://github.com/andranagendra/filee.git

wget --no-cookies --no-check-certificate --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/8u131-b11/d54c1d3a095b4ff2b6607d096fa80163/jdk-8u131-linux-x64.tar.gz" -y

tar xzf jdk-8u131-linux-i586.tar.gz

cd /opt/jdk1.8.0_131/bin 

alternatives --install /usr/bin/java java /opt/jdk1.8.0_131/bin/java 2
alternatives --config java
alternatives --install /usr/bin/jar jar /opt/jdk1.8.0_131/bin/jar 2
alternatives --install /usr/bin/javac javac /opt/jdk1.8.0_131/bin/javac 2
alternatives --set jar /opt/jdk1.8.0_131/bin/jar
alternatives --set javac /opt/jdk1.8.0_131/bin/javac
java -version

export JRE_HOME=/opt/jdk1.8.0_131/jre
export JAVA_HOME=/opt/jdk1.8.0_131
export PATH=$PATH:/opt/jdk1.8.0_131/bin:/opt/jdk1.8.0_131/jre/bin


# To set up for jenkins 
cd ../..

mkdir jenkins

yum install git 

sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
to generate jenkins key 

sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key

yum install update

yum install jenkins -y

service jenkins status

service jenkins start

rpm -qa jenkins

yum install httpd

service httpd status
service httpd start


# To setup for maven


java -version

cd /opt
wget wget http://www-eu.apache.org/dist/maven/maven-3/3.3.9/binaries/apache-maven-3.3.9-bin.tar.gz -y

tar xzvf apache-maven-3.3.9-bin.tar.gz
cd apache-maven-3.3.9
ln -s apache-maven-3.3.9 maven

export M2_HOME=/opt/apache-maven-3.3.9

export PATH=${M2_HOME}/bin:${PATH}

mvn -version
