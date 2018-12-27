#!/bin/sh

#key remappings
[ -f ~/.Xmodmap ] && xmodmap ~/.Xmodmap
#add .Xresources to X server resource database
[ -f ~/.Xresources ] && xrdb -merge ~/.Xresources

#keyboard key hold to repeat settings
xset r rate 200 50

#load default arandr profile if it exists
[ -f ~/.screenlayout/default.sh ] && sh ~/.screenlayout/default.sh

exec i3

