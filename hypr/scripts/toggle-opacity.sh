#!/bin/bash

FILE="$HOME/.config/hypr/windowrule.conf"
RULE='windowrule = opacity 1, class:^(.)+'

if [ ! -s "$FILE" ]; then
    echo "$RULE" > "$FILE"
else
    > "$FILE"
fi
