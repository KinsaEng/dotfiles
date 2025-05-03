#!/bin/bash

artist=$(playerctl metadata artist)
title=$(playerctl metadata title)
# output="{\"text\":\"$artist - $title\"}"
output="{\"text\":\"$title\"}"
echo "$output"
