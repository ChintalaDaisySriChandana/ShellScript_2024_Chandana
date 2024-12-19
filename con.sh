#!/bin/bash
echo "Enter the character"
read -n 1 char

if [[ $char == Y || $char == y ]]
then
	echo "YES"
elif [[ $char == N || $char == n ]]
then
	echo "NO"
else
	echo "No other character will be provided as input"
fi
