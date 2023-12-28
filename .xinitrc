#!/bin/sh

# Deleted part of the default configuration that merges Xresources and Xmodmap 
# Not using this X configurations at the moment

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

hsetroot -solid '#faf4ed' 
exec i3
