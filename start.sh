#!/bin/bash
SERVICE="cron"
if pgrep "$SERVICE" >/dev/null
then
    echo "$SERVICE is running"
else
    echo "$SERVICE stopped"
    crond
    echo "now is running"
fi
