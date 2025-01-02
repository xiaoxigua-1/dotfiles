#!/bin/bash

eww daemon
sleep 1

monitorsId=$(hyprctl monitors all -j | jq '.[].id')

for id in $monitorsId; do
  eww open topBarWin --screen $id --id $id
done
