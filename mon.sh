#!/bin/bash
cpu=-1
#mem=10
cpu_usage=$(top | awk -F " " 'NR>6 {print$9}')

if (( $(echo "$cpu_usage" > "$cpu" | bc -l) ))
then
	echo "Use CPU for continuing the task" | mail -s "CPU USage alert" daisychandana@gmail.com
fi



