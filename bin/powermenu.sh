#!/bin/bash

options="Lock\nLogout\nSuspend\nReboot\nShutdown"

chosen=$(echo -e "$options" | rofi -dmenu -i -p "Power Menu")

case $chosen in
    Lock)
        lock.sh
        ;;
    Logout)
        i3-msg exit
        ;;
    Suspend)
        systemctl suspend
        ;;
    Reboot)
        systemctl reboot
        ;;
    Shutdown)
        systemctl poweroff
        ;;
esac
