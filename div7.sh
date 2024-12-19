#!/bin/bash
echo "Enter the number"
read number
value=7
if [ $((number / value)) -gt 0 ]
then
div=`expr $number / $value`
	echo "$number is divisible by $value"
	echo "$number divided by $value is $div"
else
	echo "$number is not divisble by $value"
fi
