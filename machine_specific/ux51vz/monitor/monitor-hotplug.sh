#!/bin/bash

## /usr/local/bin/hotplug_monitor.sh
X_USER=benjamin
export DISPLAY=:0
export XAUTHORITY=/home/$X_USER/.Xauthority
export DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/1000/bus

function connect()
{   
	xrandr --output VGA1 --auto --above eDP1
}

function disconnect(){
	xrandr --output VGA1 --off
}

if [ $(cat /sys/class/drm/card0-VGA-1/status) == "connected" ] ; then
	connect
elif [ $(cat /sys/class/drm/card0-VGA-1/status) == "disconnected" ] ; then
	disconnect
else 
	exit
fi
