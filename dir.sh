#!/bin/bash
path=$1
if [ -d $path]; 
then
 echo "directory exists"
else
 echo "not exist"
fi
