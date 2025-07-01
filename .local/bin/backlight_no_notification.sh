#!/bin/sh

# Use brightnessctl to naturally adjust laptop screen brightness and send a notification

currentbrightness=$(brightnessctl -m | awk -F, '{print substr($4, 0, length($4)-1)}')
if [ "$currentbrightness" -lt 0 ] && [ "$1" = "down" ]; then exit 1; fi

case $1 in
	up)
		brightnessctl set 2%+
		;;
	down)
		brightnessctl set 2%-
		;;
esac
