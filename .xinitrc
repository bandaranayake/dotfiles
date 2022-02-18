#!/bin/sh

# /etc/X11/xinit/xinitrc
#
# global xinitrc file, used by all X sessions started by xinit (startx)

# invoke global X session script
sh /etc/X11/Xsession &

# font
xset +fp /home/isuru/.local/share/fonts &
xset fp rehash

# Background image
~/.fehbg &

# Show cursor
xsetroot -cursor_name left_ptr &

# Turn off bell
xset b off &

# Compositor
picom &

# Window manager
exec bspwm
