#!/bin/bash

filedir=$1
searchstr=$2

if [ -z $filedir ] || [ -z $searchstr ]
then
	echo -e "Either filedir or searchstr variable is empty.\n Please provide a valid non-zero string."
	exit 1
elif [ -d $filedir ]
then
	lines=`grep -ro "$searchstr" $filedir | wc -l`
	files=`ls -A $filedir | wc -l`
	echo -e "The number of files are $files and the number of matching lines are $lines"
else
	echo -e "$filedir is not a directory. Please provide a directory."
	exit 1
fi

