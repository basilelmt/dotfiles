op=$(echo -e " Shutdown\n Reboot\n Suspend\n Lock\n Logout" | wofi -i --dmenu | awk '{print tolower($2)}')

case $op in
shutdown)
	systemctl poweroff
	;;
reboot)
	systemctl reboot
	;;
suspend)
	mpc -q pause
	amixer set Master mute
	systemctl suspend
	;;
lock)
	~/.config/system-scripts/lock.sh
	;;
logout)
	hyprctl dispatch exit
	;;
esac
