#!/bin/sh
#

if [ -d /etc/X11/xinit/xinitrc.d ]; then
    for f in /etc/X11/xinit/xinitrc.d/*; do
        [ -x "$f" ] && . "$f"
    done
    unset f
fi

export GTK2_RC_FILES="$HOME/.gtkrc-2.0"

#exec dbus-launch --exit-with-session openbox-session
exec i3
sleep 5
xbindkeys &
feh --bg-fill --randomize ~/grave/bkpGRAVE/BACKUP/pics/wallpapes/* &
redshift &
setxkbmap -option caps:swapescape &
