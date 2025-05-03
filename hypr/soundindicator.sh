#!/bin/bash

VOLUME=$(pamixer --get-volume)
MUTED=$(pamixer --get-mute)

if [ "$MUTED" = "true" ]; then
    notify-send -u low -t 800 -h int:value:0 -i audio-volume-muted "Muted"
else
    notify-send -u low -t 800 -h int:value:$VOLUME -i audio-volume-high "Volume: $VOLUME%"
fi
