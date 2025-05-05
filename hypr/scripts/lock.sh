#!/bin/bash

pkill -f showdesk.py

swaync-client -dn &

python3 ~/.config/hypr/scripts/showdesk.py &

hyprctl dispatch workspace 137 &

hyprlock

hyprctl dispatch workspace 1 &

swaync-client -df 
