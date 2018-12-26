#!/bin/sh

[ -f ~/.Xmodmap ] && xmodmap ~/.Xmodmap
[ -f ~/.Xresources ] && xrdb -merge ~/.Xresources

xset r rate 200 50

#load default arandr profile if it exists
[ -f ~/.screenlayout/default.sh ] && sh ~/.screenlayout/default.sh

exec i3

