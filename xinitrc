#!/bin/sh

if test -z "$1"
then
	WM=`cat "$HOME/.xsession"`
	source "$HOME/.xinit.d/$WM"
	#exec xterm
else
	if test -f "$HOME/.xinit.d/$1"
	then
		source "$HOME/.xinit.d/$1"
	else
		exec "$@"
	fi
fi
