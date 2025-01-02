#!/bin/bash

BATTERY=$(cat /sys/bus/hid/drivers/razermouse/0003:1532:*/charge_level)
BAYYERY_PERCENTAGE=$(awk "BEGIN {print $BATTERY / 255 * 100}")
STATUS=$(cat /sys/bus/hid/drivers/razermouse/0003:1532:*/charge_status)
NAME=$(cat /sys/bus/hid/drivers/razermouse/0003:1532:*/device_type)

if [ -n "$NAME" ] && [ -n "$STATUS" ] && [ -n "$BAYYERY_PERCENTAGE" ]; then
  jq --unbuffered --compact-output \
    --arg name "$NAME" \
    --arg status $STATUS \
    --arg battery ${BAYYERY_PERCENTAGE%.*} \
    -n '{$name, status: $status | tonumber, battery: $battery | tonumber}'
fi
