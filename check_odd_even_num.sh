#!/bin/bash
echo "Enter the number"
read number
#value=10
value=2
reminder=`expr $number % $value`
echo "reminder of $number & $value is $reminder"
if [ $reminder = 0 ]
then
	echo "$number is even"
else
	echo "$number is odd"
fi
