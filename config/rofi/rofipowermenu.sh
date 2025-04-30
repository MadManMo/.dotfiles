#!/bin/bash

# rofipowermenu.sh - A rofi-based power menu for system actions

ROFI_CMD="rofi -dmenu -p 'Power Menu' -width 20 -lines 5 -theme ~/.config/rofi/config.rasi"

options=(
    " Shutdown"
    " Reboot"
    " Lock"
    " Logout"
    "⏾ Suspend"
)

options_string=$(printf "%s\n" "${options[@]}")

selected=$(echo -e "$options_string" | $ROFI_CMD -no-custom -normal-window)

case "$selected" in
    " Shutdown")
        systemctl poweroff
        ;;
    " Reboot")
        systemctl reboot
        ;;
    " Lock")
        hyprlock
        ;;
    " Logout")
        hyprctl dispatch exit
        ;;
    "⏾ Suspend")
        systemctl suspend
        ;;
    *)
        exit 1
        ;;
esac
