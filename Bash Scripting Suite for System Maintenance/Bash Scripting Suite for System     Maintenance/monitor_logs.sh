#!/bin/bash
logfile="/var/log/syslog"
alertfile="$HOME/Desktop/log_alerts.txt"

grep -iE "error|fail|critical" "$logfile" > "$alertfile"

if [ -s "$alertfile" ]; then
    echo "Errors found! Check $alertfile"
else
    echo "No errors found."
fi
