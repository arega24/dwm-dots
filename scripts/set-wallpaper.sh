#!/bin/bash

wal -n -i $1 &
feh --bg-scale $1
sh $HOME/.config/zathura/Zathura-Pywal/dirzathurarc &
sh $HOME/.config/dunst/dunst-pywal/dirdunstrc &

dwmc reloadxrdb &

pkill dunst
notify-send "Success!"
