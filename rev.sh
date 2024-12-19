#!/bin/bash
echo "Enter the filename"
read filename
if [ ! -f "$filename" ]; then
    echo "File does not exist."
    exit 1
fi
lines=()
while IFS= read -r line; do
    lines+=("$line")
done < "$filename"

echo "Content of the file in reverse order"
i=${#lines[@]}
while [ $i -gt 0 ]; do
    i=$((i - 1))
    echo "${lines[$i]}"
done
