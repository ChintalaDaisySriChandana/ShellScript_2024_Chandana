#!/bin/bash
echo "Enter the filename"
read filename
while read line
do
	domain=`echo "$line" | awk -F " " '{print$3}'`
if [ $domain = DevOps ]
then
		echo "$line" | awk -F " " '{print$0}'
	fi
done < $filename
