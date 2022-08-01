#!/bin/bash

writefile=$1
writestr=$2

if [ -z $writefile ] || [ -z $writestr ]
then
    echo -e "Please give 2 command line arguments.\n"
    exit 1
else
    `echo $writestr > $writefile`
    if [ -z $? ]
    then
        echo -e "Some Problem occured with echo\n"
        exit 1
    fi
fi