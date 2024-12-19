#!/bin/bash

echo "Enter the name of the file"
#echo "Enter the integer value"
read filename
n=0
while read line
do
count=`echo "$line" | wc -c`
n=`expr $n + 1`
echo "Count of the line $n is $count"
done < $filename
