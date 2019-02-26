#! /bin/bash

pack=$1
stat=$2
systemctl status $pack

res=$?

if [ $res -ne 0 ];
then
   systemctl $stat $pack

else
  systemctl $stat $pack
fi
