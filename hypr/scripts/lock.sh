#!/bin/bash

pkill -f showdesk.py

python3 ~/.config/hypr/scripts/showdesk.py

swaync-client -dn &

~/.config/hypr/scripts/minimizeall.sh --minimize &

hyprlock

~/.config/hypr/scripts/minimizeall.sh --return &

swaync-client -df 
