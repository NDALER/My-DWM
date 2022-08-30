#!/usr/bin/fish

# view brightness level 
set bright ( xbacklight -get | cut -c1-4 )

# change the brightness
xbacklight -inc 1

# and here is the notification
#dunstify -r 1 -i display-brightness -h int:value:$bright ( echo 'Silau Boss?'「$bright」)
dunstify -r 1 -i display-brightness -h string:x-dunst-stack-tag:$bright -h int:value:$bright ( echo 'Kurang Terang Boss?'「$bright」)

