#!/bin/bash
# https://github.com/thnikk/fuzzel-scripts/blob/master/fuzzel-powermenu.sh

export XDG_RUNTIME_DIR=/run/user/1000
export WAYLAND_DISPLAY=wayland-1
export PATH=$PATH:/usr/bin

SELECTION="$(printf " Lock\n Suspend\n Log out\n Reboot\n Shutdown" | /usr/bin/fuzzel --dmenu -l 5 -p "Power Menu: ")"

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
