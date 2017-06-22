#!/bin/sh
#

if [ -d /etc/X11/xinit/xinitrc.d ]; then
    for f in /etc/X11/xinit/xinitrc.d/*; do
        [ -x "$f" ] && . "$f"
    done
    unset f
fi

export GTK2_RC_FILES="$HOME/.gtkrc-2.0"

exec dbus-launch --exit-with-session openbox-session

xbindkeys &
feh --bg-fill --randomize ~/grave/bkpGRAVE/BACKUP/pics/wallpapes/* &
pgrep redshift &> /dev/null || redshift &> /dev/null &
