#!/bin/bash

driver=$1

volume() {
  data=$(amixer sget $driver | grep 'Left:')
  level=$(echo $data | awk -F'[][]' '{ print $2 }' | tr -d '%')
  mute=$(echo $data | awk -F'[][]' '{ print $4 }')

  jq --unbuffered --compact-output \
    --arg level "$level" \
    --arg driver "$driver" \
    --arg mute "$mute" \
    -n '{$driver, level: $level | tonumber, mute: ($mute != "on")}'
}

volume

pactl subscribe | while read -r line; do
  if echo "$line" | grep -q 'change'; then
    volume
  fi
done
