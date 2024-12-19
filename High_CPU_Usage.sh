#!/bin/bash
subject="Alert: High CPU Usage"
body="CPU usage exceeded 70%"
recipient="daisychandana@gmail.com"
echo "$body" | mail -s "$subject" "$recipient"
