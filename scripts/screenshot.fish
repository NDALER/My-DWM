#!/bin/fish

# this script is used to take screenshot of your screen
ffmpeg -f x11grab -video_size 1366x768 -i $DISPLAY -vframes 1 /home/ndaler/Pictures/pcss/ehe_(date +%Y-%m-%d_%H:%M:%S_%a).png

# and this script used to give dunst notification
dunstify -r 3 -i emblem-default 'Screenshot Taken'

# and this is used to play tuturu sound as notification sound
# ffplay -vn -volume 100 -nodisp -autoexit /home/ndaler/Downloads/tuturu_1.mp3

