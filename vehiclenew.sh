#!/bin/bash
echo "Enter the filename"
read filename
while read line
do
	price=`echo "$line" | awk -F " " '{print$3}'`
	if [ $price -gt  50000 ]
	then
		echo "$line" | awk -F " " '{print$0}'
	fi
done < $filename
