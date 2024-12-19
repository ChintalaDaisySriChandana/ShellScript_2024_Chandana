#!/bin/bash
#set -x
echo "Enter the month"
read month
#echo $month
#case $month in

#	jan|feb|mar|apr)
#		echo "The season is summer"
#		;;
#	may|jun|jul|aug)
#		echo "The season is rainy"
#		;;
#	sep|oct|nov|dec)
#		echo "The season is winter"
#		;;
#esac

if [ $month > 1 ] && [ $month < 4 ]
then
echo "The season is summer"

elif [ $month > 5 ] && [ $month < 8 ]
then
	echo "The season is rainy"
else
	[ $month > 9 ] && [ $month < 12 ]
	echo "The season is winter"
fi


