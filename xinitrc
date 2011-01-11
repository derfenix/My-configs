#!/bin/sh


xbindkeys&
conky &
setxkbmap -layout "us,ru" -option "grp:caps_toggle,grp_led:caps,compose:ralt"
mpd2gajim &
xxkb &
gvolwheel &


exec `cat "$HOME/.xsession"` #В .xsession всего одна строчка - название WM (DE) для запуска
