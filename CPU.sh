#!/bin/bash
#usage=df -h .| awk -F " " 'NR>1 {print $(NF-1)}' | sed 's/%//g'
 #    if [ $usage -le 70 ]
#then
#echo "The disc usage reaches threshold value, please clean up the memory"
#echo "Memory reaches threshold vale" |  mail -s "clean-up memory" -c daisychandana@gmail.com
 #    fi

# Define email variables
SUBJECT="Alert: High Memory Usage Detected"
BODY="Memory usage has exceeded the threshold limit."
RECIPIENT="daisychandana@gmail.com"  # Change to your recipient email address
THRESHOLD=90  # Set the threshold percentage for memory usage

# Function to send email notification
send_email() {
    echo "$BODY" | mail -s "$SUBJECT" "$RECIPIENT"
    if [ $? -eq 0 ]; then
        echo "Notification email sent successfully to $RECIPIENT"
    else
        echo "Failed to send notification email" >&2
    fi
}

# Monitor memory usage
while true; do
    # Get current memory usage as a percentage
    MEMORY_USAGE=$(free | grep Mem | awk '{print $3/$2 * 100.0}')

    echo "Current memory usage: ${MEMORY_USAGE}%"

    # Check if memory usage exceeds the threshold
    if (( $(echo "$MEMORY_USAGE > $THRESHOLD" | bc -l) )); then
        send_email
        break  # Exit the loop after sending the notification
    fi

    sleep 5  # Check memory usage every 5 seconds
done

echo "Memory monitoring completed."

echo "test webhook"

