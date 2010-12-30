#!/bin/sh


xbindkeys&
setxkbmap -layout "us,ru" -option "grp:caps_toggle,grp_led:caps"
mpd2gajim &
xxkb &


exec `cat "$HOME/.xsession"` #В .xsession всего одна строчка - название WM (DE) для запуска
