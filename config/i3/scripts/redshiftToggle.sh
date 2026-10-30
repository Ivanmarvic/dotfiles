#!/usr/bin/env bash

STATE_FILE="/tmp/nightshift_state"

if [ -f "$STATE_FILE" ]; then
    # Currently ON -> Turn OFF
    rm -f "$STATE_FILE"
    redshift -x
    pkill -x redshift
    echo "%{F#FFA500}  %{F-}"
else
    # Currently OFF -> Turn ON
    touch "$STATE_FILE"
    redshift -O 4000k &
    echo "%{F#666666}  %{F-}"
fi
