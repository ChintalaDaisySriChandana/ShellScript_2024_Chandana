#!/bin/bash
echo "Enter the pattern"
read pattern
grep -r -l -v "$pattern" * > NEWF
if [ $? -eq 0 ]
then
	echo "The given pattern does not contain in any of the files below"
	cat NEWF
else
	echo "The given is contained in above files"

fi
