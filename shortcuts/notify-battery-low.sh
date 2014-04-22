#!/bin/sh
# We need a cronjob to check this every 5 minutes or so

battery_level=`acpi -b | grep -P -o '[0-9]+(?=%)'`
if [$battery_level -le 10]
then
	notify-send --urgency=critical -t 0 "Battery low" "Battery level is ${battery_level}%!"
fi
