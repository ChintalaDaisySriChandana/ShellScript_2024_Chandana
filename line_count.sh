#!/bin/bash
echo "Enter the filename"
read filename
if [ -f $filename ]
then
line_count=` wc -l < $filename`
	echo "The $filename has $line_count lines"
else
	echo "The file does not exist"
fi
