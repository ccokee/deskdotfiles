#!/bin/bash

#=== Variables ===#
icon_path="$HOME/.xmonad/dzen/icons"

cblue="^fg(#92bbd0)"
cgray="^fg(#999999)"
cwhite="^fg(#ffffff)"
cnormal="^fg(#aaaaaa)"
cred="^fg(#bc4547)"
cyellow="^fg(#a88c29)"
cgreen="^fg(#00aa6c)"
cpurple="^fg(#9542f4)"
cnormal="^fg(#dddddd)"

cKdistro_icon="^i($icon_path/ckdistro.xbm)"

#=== Loop ===#
while :; do
#cKdistro Icon
if [ $(pgrep obamenu) ]; then
cKdistro="${cgreen}^ca(1,obamenu)${cKdistro_icon}^ca()${cgray}"
else
cKdistro="${cnormal}${cKdistro_icon}${cgray}"
fi

echo "$cKdistro"
sleep 1
done
