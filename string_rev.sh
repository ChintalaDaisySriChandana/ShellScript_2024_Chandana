#!/bin/bash
#echo "Enter the string"
#read str
#reverse=""
#for char in
#	$(echo $string | grep -o .) 
#do
#	reversed="$char$reversed"
#done
#echo "Reverse string of $string is $reversed"

#read -p "Enter a string: " str
#rev_str=""
#while [ "${#str}" -gt 0 ]; do
 # rev_str="${str: -1}${rev_str}"
  #str="${str:0:-1}"
#done

#echo "Reversed string: $rev_str"	

read -p "Enter a string: " str

rev_str=""
for ((i=${#str}-1; i>=0; i--)); do
  rev_str="${rev_str}${str:$i:1}"
done

echo "Reversed string: $rev_str"
