#!/bin/sh


xbindkeys&
conky &
setxkbmap -layout "us,ru" -variant ,winkeys -option "grp:caps_toggle,grp_led:caps,compose:ralt"
mpd2gajim &
xxkb &
#gvolwheel &
volumeicon &
eval `cat ~/.fehbg`

if test -z "$1"
then
	exec ck-launch-session `cat "$HOME/.xsession"` #В .xsession всего одна строчка - название WM (DE) для запуска
	#exec xterm
else
	exec "$@"
fi
