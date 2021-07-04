#!/bin/sh
#CHECK IF I3LOCK IS RUNNING AND SUSPEND AFTER 5 MINS

while true; do
    lock=$( pgrep i3lock )
    if [ -n "$lock" ]; then
        sleep 1m
        systemctl suspend
    fi
done
