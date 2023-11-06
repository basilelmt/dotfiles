#!/bin/bash
# tested on sway v1.8

swaymsg "set \$min_opa 0.9"
swaymsg "set \$inc_opa 0.1"
makoctl dismiss
if swaymsg "opacity plus \$inc_opa"; then
	notify-send "󰂷 Transparency deactivated" -t 1000
else
	swaymsg "opacity set \$min_opa"
	notify-send "󰂵 Transparency activated" -t 1000
fi
