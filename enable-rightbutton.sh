#!/bin/bash

if [ $# -ne 1 ]; then
        echo "$0 <device id|device name>"
        exit 1
fi

i=0
while read label min delim max; do
	if [ $i -eq 0 ]; then
		minx=$min
		maxx=$max
	elif [ $i -eq 1 ]; then
		miny=$min
		maxy=$max
		break
	fi

	(( i++ ))
done < <(xinput list "$1" | grep Range)

left=`echo \($maxx - $minx\) / 2 + $minx | bc -l`
right=$maxx
top=`echo \($maxy - $miny\) \* 0.82 + $miny | bc -l`
bottom=`echo \($maxy - $miny\) \* 2 + $miny | bc -l`

xinput set-prop "$1" "Synaptics Soft Button Areas" $left $right $top $bottom 0 0 0 0
