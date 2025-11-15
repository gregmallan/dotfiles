#!/usr/bin/env bash

# make sure it's executable 

source "$CONFIG_DIR/colors.sh"

if [ "$1" = "$FOCUSED_WORKSPACE" ]; then
  sketchybar --set $NAME background.color=$WORKSPACE_BG_FOCUSED label.shadow.drawing=off icon.shadow.drawing=off background.border_width=0
else
  sketchybar --set $NAME background.color=$WORKSPACE_BG_UNFOCUSED label.shadow.drawing=off icon.shadow.drawing=off background.border_width=0
fi
