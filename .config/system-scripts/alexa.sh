#!/bin/bash

# This is a script to trigger alexa event via cli thanks to:
# https://www.virtualsmarthome.xyz/url_routine_trigger

LIGHT_LINK="https://www.virtualsmarthome.xyz/url_routine_trigger/activate.php?trigger=232b5792-8b01-48d3-b4cd-686a1469a486&token=c45116a6-5aba-4ba5-8389-dfcb8a034959&response=xml"
MUSIC_LINK="https://www.virtualsmarthome.xyz/url_routine_trigger/activate.php?trigger=04cb726c-59a6-445a-adb9-08d6af13f5c3&token=a4bced19-0621-4aff-b808-a44932a464f7&response=xml"
TRIGGER_LINK=""

if [[ $# -eq 0 ]] || [[ $# -gt 1 ]]; then
	echo "alexa is a command to trigger alexa events."
	echo "syntax: alexa <event> (ex: alexa lights)"
	exit 1
fi

case $1 in
lights)
	TRIGGER_LINK=$LIGHT_LINK
	;;
music)
	TRIGGER_LINK=$MUSIC_LINK
	;;
*)
	echo "unknowed event '$1'."
	exit 1
	;;
esac

nohup curl $LIGHT_LINK >/dev/null 2>&1 &
