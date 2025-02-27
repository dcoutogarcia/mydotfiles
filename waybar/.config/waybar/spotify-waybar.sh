#! /bin/bash

while true
do

album=`playerctl -p spotify metadata album`
artist=`playerctl -p spotify metadata artist`
title=`playerctl -p spotify metadata title`
status=`playerctl -p spotify status`

if [ "$status" = "Playing" ]; then
echo "{\"icon\": \"\",\"text\":\"   -  $title - $artist\", \"tooltip\": \"$album\", \"class\":[\"playing\"]}"
elif [ "$status" = "Paused" ]; then
echo "{\"icon\": \"\",\"text\":\"   -  $title - $artist\", \"tooltip\": \"$album\", \"class\":[\"paused\"]}"
elif [ "$status" = "" ]; then
  echo "{\"text\": \" \"}"
fi

sleep 0.1

done
