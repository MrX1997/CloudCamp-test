#!/bin/bash

dir_name=$1

if [ -d $dir_name ]
then
	rm -r $dir_name
	mkdir $dir_name
else
	mkdir $dir_name
fi
cd $dir_name

for i in $(seq 1 10)
do
	date +"%D %T" > $i.txt
done
