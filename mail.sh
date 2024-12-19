#!/bin/bash
#subject="Alert: High CPU Usage"
#body="CPU usage exceeded 90%"
#recipient="user@example.com"
#echo "$body" | mail -s "$subject" "$recipient"

# Get disk usage as a percentage
usage=$(df -h . | awk -F " " 'NR==2 {print $(NF-1)}' | sed 's/%//g')

# Define the threshold value
THRESHOLD=70

# Check if disk usage exceeds the threshold
if [ "$usage" -ge "$THRESHOLD" ]; then
    # Send an alert email
    echo "The disk usage has reached the threshold value of $usage%. Please clean up the disk." | \
    mail -s "Disk Cleanup Alert" -c daisychandana@gmail.com

    # Start a CPU stress test
    echo "Starting CPU stress test as part of system response to high disk usage." >> /var/log/stress_test.log

    # Number of CPU workers
    CPU_WORKERS=4

    # Duration of stress test in seconds
    DURATION=60

    # Check if stress or stress-ng is installed
    if command -v stress &>/dev/null; then
        stress --cpu $CPU_WORKERS --timeout $DURATION >> /var/log/stress_test.log 2>&1
    elif command -v stress-ng &>/dev/null; then
        stress-ng --cpu $CPU_WORKERS --timeout ${DURATION}s >> /var/log/stress_test.log 2>&1
    else
        echo "Error: No stress tool installed. Install 'stress' or 'stress-ng'." | tee -a /var/log/stress_test.log
    fi

    echo "CPU stress test completed." >> /var/log/stress_test.log
fi
