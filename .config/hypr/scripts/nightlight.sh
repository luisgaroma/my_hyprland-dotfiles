#!/bin/bash
if pgrep -x hyprsunset > /dev/null; then
    pkill -x hyprsunset
    notify-send "Luz nocturna" "Desactivada" -t 1500
else
    TEMP=$(echo -e "6500 (neutral)\n5000 (suave)\n4000 (cálido)\n3000 (muy cálido)\n2500 (extra cálido)" | rofi -dmenu -p "Temperatura")
    [ -z "$TEMP" ] && exit 1
    TEMP_VALUE=$(echo "$TEMP" | awk '{print $1}')
    hyprsunset -t "$TEMP_VALUE" &
    notify-send "Luz nocturna" "Activada (${TEMP_VALUE}K)" -t 1500
fi
