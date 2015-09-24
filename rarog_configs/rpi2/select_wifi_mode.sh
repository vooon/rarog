#!/bin/bash

#required_mode="CLIENT"
required_mode="$(cat /home/sky/bin/wifi_mode)"
which=""

while read mode scheme
do
	if [ "$which" ]; then continue; fi
	if [ "$mode" == "$required_mode" ]; then
		which="$scheme"
	fi
done

if [ "$which" ]; then
	echo "$which"
	exit 0
else
	exit 1
fi
