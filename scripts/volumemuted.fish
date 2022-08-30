#!/usr/bin/fish

# now toggle the audio
amixer set Master toggle

# get the toggle sta
set sta (echo (amixer get Master | grep % | awk '{print $6}'|tr -d '[],'|sed '$d'))

# now the script
if test $sta = on
    dunstify -r 2 -i audio-volume-medium 'audio is on'
    else if test $sta = off
        dunstify -r 2 -i audio-volume-muted 'audio is muted'
        end

