#!/bin/bash

while true; do
	app_name=$(hyprctl activewindow -j | jq -r '.class')
	echo "[$app_name]"
	if [ "$app_name" == "null" ]; then
		app_name="desktop"
	fi
	echo "$app_name"
	sleep 0.1
done
