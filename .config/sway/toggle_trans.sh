#!/bin/bash
# tested on sway v1.8

swaymsg "set \$min_opa 0.97"
swaymsg "set \$inc_opa 0.03"
swaymsg "opacity plus \$inc_opa"
if [ $? -eq 2 ]; then
	swaymsg "opacity set \$min_opa"
fi
