#!/usr/bin/env bash

left_monitor="BenQ"

if ! command -v parse-edid &> /dev/null
then
	echo -e -n "Read-edid util is not installed!	"
	echo -e "\x1b[31;1mABORTING\x1b[0m"
	exit
fi

if (parse-edid < /sys/devices/pci0000:00/0000:00:02.0/drm/card0/card0-HDMI-A-1/edid | grep $left_monitor) &> /dev/null; then
	# /usr/bin/date >> /home/nesquiko/prog/linux/dock-position-switcher/udev.log XXX: this runs
	# /usr/bin/dconf write /org/gnome/shell/extensions/dash-to-dock/dock-position "'BOTTOM'" XXX: this does nothing
fi
