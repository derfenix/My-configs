export LC_ALL="ru_RU.utf8"
export LANG="RU"
export WORDCHARS='*?_-.[]~&;!#$%^(){}<>'
export PATH="$HOME/bin:$PATH"
export GREP_OPTIONS='--color=auto'
export PAGER="less"
export READNULLCMD="${PAGER}"
export VISUAL="vim"
export EDITOR="${VISUAL}"
export MANPATH="/usr/share/man/ru:/usr/man:/usr/share/man:/usr/local/man:/usr/X11R6/man:/opt/qt/doc"
export BLOCKSIZE=Mb


if test -z "$DISPLAY"
then
	export BROWSER=w3m
else
	export BROWSER=chromium
fi
