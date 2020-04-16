#!/bin/bash

(sleep 2; sh -c $HOME/.config/polybar/launch.sh) &

(sleep 2; stalonetray;
/home/coke/.xmonad/dzen/status_checks/checker.sh;
feh --bg-fill --no-xinerama ./Imágenes/Wallpapers/2020.png;
compton -cfb -D 1 -r 15 -l -15 -t -12 -o 0.6 -e 1.0 -i 1.0;
setxkbmap es;
xsetroot -cursor_name left_ptr) &

(sleep 2;
sh -c 'blueman-applet';
sh -c 'dropbox autostart';
sh -c 'synergy';
sh -c '/snap/bin/odrive';
sh -c 'nm-applet')
