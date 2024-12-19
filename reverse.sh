#!/bin/bash
echo "Enter the string"
read string
reverse=$(echo "$string" | rev)
	echo "The reverse string of $string is $reverse"
