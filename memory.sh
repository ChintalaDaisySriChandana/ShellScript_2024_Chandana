#!/bin/bash

# Define email variables
SUBJECT="Memory Cleanup"
BODY="memory reaches threshold value"
RECIPIENT="daisychandana@gmail.com"  # Change to your recipient email address

# Function to send email notification
send_email() {
    echo "$BODY" | mail -s "$SUBJECT" "$RECIPIENT"
    if [ $? -eq 0 ]; then
        echo "Notification email sent successfully to $RECIPIENT"
    else
        echo "Failed to send notification email" >&2
    fi
}

# Clean up memory
echo "Starting memory cleanup..."

# Flush file system buffers
sync
echo 3 | sudo tee /proc/sys/vm/drop_caches  # Clear page cache, dentries, and inodes

echo "Memory cleanup completed."

# Send notification email
send_email

echo "Memory cleanup script finished."
