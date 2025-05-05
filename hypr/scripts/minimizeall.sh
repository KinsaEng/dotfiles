#!/bin/bash

LAST_WS_FILE="/tmp/hypr_last_workspace"
MINIMIZE_WS_ID=137


get_active_ws_id() {
    hyprctl activeworkspace -j | jq '.id'
}


minimize() {
    # Aktif workspace ID'si 137'ye eşitse, minimize işlemi yapma
    if [ $(get_active_ws_id) -eq $MINIMIZE_WS_ID ]; then
        echo "Can't minimize to workspace $MINIMIZE_WS_ID"
    else
        echo "$(get_active_ws_id)" > "$LAST_WS_FILE"
        hyprctl dispatch workspace $MINIMIZE_WS_ID
    fi
}


return_ws() {
    if [ -f "$LAST_WS_FILE" ]; then
        hyprctl dispatch workspace $(cat "$LAST_WS_FILE")
    fi
}


toggle() {
    current_ws=$(get_active_ws_id)
    if [ "$current_ws" -eq "$MINIMIZE_WS_ID" ]; then
        return_ws
    else
        minimize
    fi
}

case "$1" in
    --minimize)
        minimize
        ;;
    --return)
        return_ws
        ;;
    --toggle|"")
        toggle
        ;;
    *)
        echo " Invalid argument."
	echo " Try: 
   --minimize
   --return
   --toggle"
        exit 1
        ;;
esac
