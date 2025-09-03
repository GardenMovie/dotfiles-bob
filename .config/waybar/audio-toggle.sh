#!/bin/bash

Speaker="alsa_output.pci-0000_09_00.3.analog-stereo"
Headphones="alsa_output.usb-Cosair_Corsair_VOID_ELITE_USB_Gaming_Headset_00000000-00.analog-stereo"

newSink=""

currentSink=$(pactl info | sed -n 's/Default Sink: //p')

if [ "$Speaker" = "$currentSink" ]; then
    newSink="$Headphones"
else
    newSink="$Speaker"
fi

pactl set-default-sink "$newSink"
pactl list short sink-inputs|while read stream; do
    streamId=$(echo $stream|cut '-d ' -f1)
    echo "moving stream $streamId"
    pactl move-sink-input "$streamId" "$newSink"
doneudio output switched to $NEW_SINK"
