#!/bin/sh

if [ $(echo -e "No\nYes" | dmenu -i -p "Do you want to exit i3?") == "Yes" ]
then
    i3-msg exit
fi
