#!/bin/bash
monitorsId=$(hyprctl monitors all -j | jq '.[].id')

for id in $monitorsId; do
  eww open topBarWin --screen $id --id $id
done
