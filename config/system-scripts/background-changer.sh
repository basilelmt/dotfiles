#!/usr/bin/env bash

WALLPAPER=$(ls ~/Pictures/wallpapers | xargs -n 1 basename | wofi -i --dmenu)
swww img "/home/basile/Pictures/wallpapers/$WALLPAPER" --transition-type wipe --transition-duration 2
