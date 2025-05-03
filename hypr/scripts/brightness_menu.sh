#!/bin/bash

choice=$(printf "🔆 Increase Brightness\n🔅 Decrease Brightness\n🌙 Toggle Redshift" | wofi --dmenu --prompt="Screen Control")

case "$choice" in
    "🔆 Increase Brightness")
        brightnessctl set +10%
        ;;
    "🔅 Decrease Brightness")
        brightnessctl set 10%-
        ;;
    "🌙 Toggle Redshift")
        pkill wlsunset || wlsunset -l 41.0 -L 29.0 &
        ;;
esac
