#!/bin/bash
echo "Enter the first interger value"
read num1
echo "Enter the secong integer value"
read num2
if [ $num1 -gt $num2 ]; then
	echo "$num1 is greater than $num2"
else
	echo "$num1 is less than $num2"
fi
