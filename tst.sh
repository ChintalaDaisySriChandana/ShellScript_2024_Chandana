#!/bin/bash
usage=$(df -h . | awk -F " " 'NR>1 {print $(NF-1)}' | sed 's/%//g')
     if [ $usage -le 70 ]
 then
 echo "The disc usage reaches threshold value, please clean up the memory"
 echo "Memory reaches threshold vale" | mail -s "clean-up memory" -c daisychandana@gmail.com
     fi

