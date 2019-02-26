#!/bin/bash

pack=$1

$pack --version

res=$?

if [ $res -ne 0 ];
then
   wget http://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
   rpm -ivh epel-release-latest-7.noarch.rpm
   rm -Rf epel-release-latest-7.noarch.rpm
   yum update -y
   yum install -y $pack
else
  echo "installed"
fi
