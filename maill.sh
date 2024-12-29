#!/bin/bash
usage=90
subject="Alert:High Usage"
recipient="daisychandana@gmail.com"
body="High Alert"
echo "$body" | mail -s "$subject" "$recipient"
echo "checking webhook feature"
echo "hi"
