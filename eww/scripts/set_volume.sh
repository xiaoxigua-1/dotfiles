#!/bin/bash

driver=$1
event=$2

if [[ $event = "up" ]]; then
  amixer sset $driver 5%+
elif [[ $event = "down" ]]; then
  amixer sset $driver 5%-
elif [[ $event = "mute" ]]; then
  amixer sset $driver toggle
fi
