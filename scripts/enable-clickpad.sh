#!/bin/bash
device=$1

if [ -z "$device" ]; then
	echo "You should give the id of device (as given by xinput)";
	exit
fi

xinput set-prop "$device" "Synaptics ClickPad" 1
