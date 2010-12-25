export LC_ALL="ru_RU.utf8"
export LANG="RU"
export WORDCHARS='*?_-.[]~&;!#$%^(){}<>'
export PATH="$HOME/bin:$PATH"

if test -z "$DISPLAY"
then
	export BROWSER=w3m
else
	export BROWSER=chromium
fi
