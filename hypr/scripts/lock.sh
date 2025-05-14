#!/bin/bash

python3 ~/.config/hypr/scripts/showdesk.py &

swaync-client -dn &

~/.config/hypr/scripts/minimizeall.sh --minimize &

hyprlock 

~/.config/hypr/scripts/minimizeall.sh --return &

pkill -f showdesk.py &

swaync-client -df &
