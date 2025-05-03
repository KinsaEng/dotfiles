#!/bin/bash

workspace_info=$(hyprctl activeworkspace -j)

workspace_id=$(echo "$workspace_info" | jq '.id')

LAST_WS_FILE="/tmp/hypr_last_workspace"

touch "$LAST_WS_FILE"

if [ "$workspace_id" -eq 10 ]; then
	#its 10
	hyprctl dispatch workspace $(cat /tmp/hypr_last_workspace 2>/dev/null)
else
	#not 10
	echo "$workspace_id" > "$LAST_WS_FILE"
	hyprctl dispatch workspace 10
fi
