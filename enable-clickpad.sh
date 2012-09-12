#!/bin/bash

if [ $# -ne 1 ]; then
	echo "$0 <device id|device name>"
	exit 1
fi

xinput set-prop "$1" "Synaptics ClickPad" 1
