#!/bin/bash
#set -x
arr_name="4 5 6 7 8"
for n in $arr_name
do
factorial=1
count=$n
while [ $count -gt 1 ]; do
factorial=$((factorial * count))
count=$((count - 1))
done
echo "The factorial of $n is $factorial"
done
