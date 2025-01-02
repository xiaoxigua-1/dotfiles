#!/bin/bash

workspaces() {
  workspaces=$(hyprctl workspaces -j | jq -c '[.[] | select(.name | test("^[0-9]+$"))]')
  activeworkspace=$(hyprctl activeworkspace -j | jq '.id')

  echo $workspaces | jq -c "[sort_by(.id) | .[] | . + {active: (.id == $activeworkspace)}]"
}

workspaces

socat -u UNIX-CONNECT:$XDG_RUNTIME_DIR/hypr/$HYPRLAND_INSTANCE_SIGNATURE/.socket2.sock - | while read -r _; do
  workspaces
done
