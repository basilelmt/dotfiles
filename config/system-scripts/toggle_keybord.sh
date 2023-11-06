#!/bin/sh

HYPRLAND_DEVICE="at-translated-set-2-keyboard"

if [ -z "$XDG_RUNTIME_DIR" ]; then
	export XDG_RUNTIME_DIR=/run/user/$(id -u)
fi

export STATUS_FILE="$XDG_RUNTIME_DIR/touchpad.status"

enable_touchpad() {
	echo true >"$STATUS_FILE"

	notify-send "󰌌 built-keyboard enabled" -t 2000

	hyprctl keyword "device:$HYPRLAND_DEVICE:enabled" true
}

disable_touchpad() {
	echo false >"$STATUS_FILE"

	notify-send "󰌐 built-keyboard disabled" -t 2000

	hyprctl keyword "device:$HYPRLAND_DEVICE:enabled" false
}

if ! [ -f "$STATUS_FILE" ]; then
	enable_touchpad
else
	if [ $(cat "$STATUS_FILE") = "true" ]; then
		disable_touchpad
	elif [ $(cat "$STATUS_FILE") = "false" ]; then
		enable_touchpad
	fi
fi

# makoctl dismiss
# notify-send "󰌌 built-keyboard toggle" -t 1000
# swaymsg input '1:1:AT_Translated_Set_2_keyboard' events toggle enabled disabled
