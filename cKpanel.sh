#!/bin/bash

terminator -e '/home/coke/.xmonad/misc.sh' & 
sleep 1
terminator -e '/home/coke/.xmonad/main.sh' &
exit
