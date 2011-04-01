#!/bin/sh

if test -z "$1"
then
	WM=`cat "$HOME/.xsession"`
	source "$HOME/.xinit.d/$WM"
	exec ck-launch-session "$WM" #В .xsession всего одна строчка - название WM (DE) для запуска
	#exec xterm
else
	exec "$@"
fi
