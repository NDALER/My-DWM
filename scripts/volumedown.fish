#!/usr/bin/fish

#s view the volume value
set volume (amixer get Master |grep % |awk '{print $5}'|sed 's/[^0-9\]//g'|head -n 1)

# change the volume
amixer set Master 3%-

# here is the notification
dunstify -r 2 -i audio-volume-high -h int:value:$volume (echo Volume:$volume'%')
# this is the notification
#if test $volume -eq 100
    #else if test $volume -le 75; and test $volume -ge 45
        #dunstify -r 2 -i audio-volume-medium -h int:value:$volume (echo Volume:$volume'%')
        #else if test $volume -lt 45
        #dunstify -r 2 -i audio-volume-low -h int:value:$volume (echo Volume:$volume'%')
        #end

