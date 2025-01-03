#!/bin/bash

hyprctl setcursor $HYPRCURSOR_THEME $HYPRCURSOR_SIZE
gsettings set org.gnome.desktop.interface cursor-theme $HYPRCURSOR_THEME
gsettings set org.gnome.desktop.interface cursor-size $HYPRCURSOR_SIZE
