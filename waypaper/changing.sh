#!/bin/bash

wallpapers_dir="$HOME/.config/wallpapers"

random_wallpaper=$(find "$wallpapers_dir" -type f \( -iname "*.jpg" -o -iname "*.png" -o -iname "*.jpeg" \) | shuf -n 1)

swww img "$random_wallpaper" --transition-type any
