#!/bin/bash

STATUS="playerctl status"

if [ "$(playerctl status)" = "Playing" ]; then
 playerctl --player=$PLAYER metadata --format "{{ title }} // {{ artist }}"
else
 echo "No player runnig"
fi
