NODE=/home/xiaoxigua/.nvm/versions/node/v18.18.2/bin/node

BATTERY=$($NODE -pe "($(cat /sys/bus/hid/drivers/razermouse/0003:1532:*/charge_level || echo 0)/255)*100")
STATUS=$(cat /sys/bus/hid/drivers/razermouse/0003:1532:*/charge_status || echo 0)
NAME=$(cat /sys/bus/hid/drivers/razermouse/0003:1532:*/device_type || echo "Unknown")
CLASS="discharging$((${BATTERY%.*} / 10))"

if [ $STATUS = "1" ]; then
  CLASS="charging"
fi

jq --unbuffered --compact-output \
  --arg text "$NAME" \
  --arg alt $STATUS \
  --arg class $CLASS \
  --arg percentage ${BATTERY%.*} \
  -n '{$text, $alt, $class, percentage: $percentage | tonumber}'
