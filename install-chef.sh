#! /bin/bash

#installing Chef deveolpment

pack=$1

$pack  -v

res=$?

if [ $res -ne 0 ];
then
   yum install -y wget
   wget https://packages.chef.io/files/stable/chefdk/1.4.3/el/6/chefdk-1.4.3-1.el6.x86_64.rpm
   rpm -ivh chefdk-1.4.3-1.el6.x86_64.rpm
   rm -Rf  chefdk-1.4.3-1.el6.x86_64.rpm
else 

  echo "this package installed"
  
fi
