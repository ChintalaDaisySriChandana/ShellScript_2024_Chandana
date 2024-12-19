#!/bin/bash

# Function to execute tasks based on the day of the week
perform_task() {
  day=$(date +%A) # Get the current day of the week

  case $day in
    Monday)
      echo "Finding files modified 10 days ago:"
      find . -type f -mtime 10
      ;;

    Tuesday)
      echo "Listing files containing a specific pattern:"
      read -p "Enter the pattern to search: " pattern
      grep -rl "$pattern" .
      ;;

    Wednesday)
      echo "Listing files NOT containing a specific pattern:"
      read -p "Enter the pattern to exclude: " pattern
      grep -rL "$pattern" .
      ;;

    Thursday)
      echo "Checking the type of the given path:"
      read -p "Enter the path: " path
      if [ -f "$path" ]; then
        echo "$path is a file."
      elif [ -d "$path" ]; then
        echo "$path is a directory."
      elif [ -L "$path" ]; then
        echo "$path is a symbolic link."
      else
        echo "$path does not exist or is of unknown type."
      fi
      ;;

    Friday)
      echo "Finding empty files:"
      empty_files=$(find . -type f -empty)
      if [ -z "$empty_files" ]; then
        echo "Empty file does not exist."
      else
        echo "$empty_files"
      fi
      ;;

    Saturday|Sunday)
      echo "No task"
      ;;

    *)
      echo "Unknown day."
      ;;
  esac
}

# Call the function to perform the task
perform_task

