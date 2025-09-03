#!/bin/bash

# Get default sink
sink=$(pactl get-default-sink)

# Get current mute status
is_muted=$(pactl get-sink-mute "$sink" | awk '{print $2}')

# Toggle mute
if [ "$is_muted" = "yes" ]; then
    pactl set-sink-mute "$sink" 0
    echo "Unmuted"
else
    pactl set-sink-mute "$sink" 1
    echo "Muted"
fi

