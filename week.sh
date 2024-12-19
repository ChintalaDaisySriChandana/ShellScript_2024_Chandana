#!/bin/bash
  day=`date '+%A'`
echo $day
case $day in
	'Thursday')	
		echo "Files modified 10days ago"
	       	find . -type f -mtime +10
		
	       echo "List the files that contains pattern bin"
	       pattern=bin
       	      grep -rl "$pattern" .      
echo "List the files that doesnot conatins pattern bin"	
	pattern1=bin
	grep -rL "$pattern1" .
	

echo "Enter the name of the file or directory or link to find the path"
read name
if [ -L $name ]
then
       echo "The given path is a Link "
elif [ -d $name ]
then
        echo "The given path is a directory"
elif [ -f $name ]
then
        echo "The given path is a File"
else
        echo "The path does not exist"
fi
  echo "Finding empty files"
      empty_files=$(find . -type f -empty)
      if [ "$empty_files" -eq 0 ]
      then
        echo "Empty file does not exist."
      else
        echo "$empty_files"
      fi

      ;;
esac


