#!/bin/bash

WINDOWPID=$(hyprctl activewindow | grep -Po 'pid: \K\d+')

makoctl dismiss
# Check if the PID is in the list
if grep -q "$WINDOWPID" /tmp/window-pid-list; then
	hyprctl setprop pid:$WINDOWPID forceopaque 0 lock
	sed -i "/$WINDOWPID/d" /tmp/window-pid-list
	notify-send "󰂵 Transparency activated" -t 1000
else
	hyprctl setprop pid:$WINDOWPID forceopaque 1 lock
	echo "$WINDOWPID" >>/tmp/window-pid-list
	notify-send "󰂷 Transparency deactivated" -t 1000
fi
