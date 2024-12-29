#!/bin/bash
echo "Enter the num"
read num
value=7
if [ $(($num / $value)) -gt 0 ]
then
	echo "$num is divisible by $value"
else 
	echo "$num is not divisble by $value"
fi

#read filename
#while read line
#do 
#	colour=`echo "$line" | awk -F " " '{print$3}'`
#	if [ $colour = Red ]
#	then
#		echo "$line" | awk -F " " '{print$0}'
#	fi
#done < $filename


echo "hi"
