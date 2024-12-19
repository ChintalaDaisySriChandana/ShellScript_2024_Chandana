#!/bin/bash
set -x
source="/home/ubuntu"
destination="/home/daisy"
timestamp=$(date +'%D%H%M%S')

tar -cvf "$destination/backup_$timestamp.tar.gz" "$source"
#backup_dir="/home/daisy"
#source_dir="/home/ubuntu"
#timestamp=$(date +"%Y%m%d%H%M%S")
#tar -czf "$backup_dir/backup_$timestamp.tar.gz" "$source_dir"

