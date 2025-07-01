#!/bin/bash
# https://github.com/thnikk/fuzzel-scripts/blob/master/fuzzel-powermenu.sh

SELECTION="$(printf " Lock\n Suspend\n Log out\n Reboot\n Shutdown" | fuzzel --dmenu -l 5 -p "Power Menu: ")"

case $SELECTION in
	*"Lock")
		swaylock;;
	*"Suspend")
		systemctl suspend;;
	*"Log out")
		swaymsg exit;;
	*"Reboot")
		systemctl reboot;;
	*"Shutdown")
		systemctl poweroff;;
esac
