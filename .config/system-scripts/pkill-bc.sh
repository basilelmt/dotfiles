#!/bin/bash

## Kill few processes before their respawn, on a refresh of the Window Manager
## This will prevent multiple instances to run after refresh takes place
## You can grep multiple processes using this script and kill them

#-- Kill Background-Changer --#
pkill swaybg

#-- Now freshly start the process in the background --#
bash ~/.config/system-scripts/background-changer.sh &

#-- You can add multiple processes here to prevent their respawns --#
