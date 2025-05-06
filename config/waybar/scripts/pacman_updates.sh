#!/bin/bash

count=$(checkupdates 2>/dev/null | wc -l)
echo "$count"

if [[ $count -gt 0 ]]; then
    notify-send "Updates Available" "$count package(s) pending" -u normal -h string:x-canonical-private-synchronous:sys-updates
fi


