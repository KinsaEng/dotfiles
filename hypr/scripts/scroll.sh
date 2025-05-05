#!/bin/bash

if [ "$(echo $(hyprctl workspaces -j | jq '.[].id') | wc -w)" -gt 2 ]; then

  case "$1" in
    --next)
      hyprctl dispatch workspace e+1
      if [ "$(hyprctl activeworkspace -j | jq '.id')" -eq 137 ]; then
          hyprctl dispatch workspace e+1
      fi
      ;;
    --previous)
      hyprctl dispatch workspace e-1
      if [ "$(hyprctl activeworkspace -j | jq '.id')" -eq 137 ]; then
          hyprctl dispatch workspace e-1
      fi
      ;;
    *)
      echo "Usage: $0 {--next|--previous|--toggle}"
      exit 1
      ;;
  esac

fi
