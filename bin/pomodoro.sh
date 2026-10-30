#!/bin/bash 

status=$(i3-gnome-pomodoro status --always)
IFS=' '
array=( $status )

state=${array[0]}
timer=${array[1]}
special=${array[2]}

# Determine if the timer variable exists (is not empty)
if [ -n "$timer" ]; then
    timer_status="exists"
else
    timer_status="empty"
fi

# 1. Switch state machine (using a Bash case statement)
case "${state}:${timer_status}" in
    "Pomodoro:exists")
        echo -n " "
        ;;
    "Pomodoro:empty")
        echo -n " "
        ;;
    "Break:exists")
        echo -n " 󰒲"
        ;;
    *)
        echo -n "󰐊 Status: $state"
        ;;
esac

# 2. If statement for PAUSED state
if [ "$special" = "PAUSED" ] || [ "$state" = "PAUSED" ]; then
    echo -n " 󰏤"
fi
echo ""
