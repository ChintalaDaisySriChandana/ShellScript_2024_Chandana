#!/bin/bash
value=10

while [ $value -gt 5 ]
do
echo $value
num=$(($value + 1))

echo "Incremental value of $value is $num"
done
