# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd extendedglob notify
unsetopt appendhistory beep nomatch
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/fenix/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

source ~/.zshenv
source ~/.aliases


#if [[ -z "$DISPLAY" ]]
#then
#	echo '################'
#	echo '###Starting X###'
#	echo '###Пыщь-пыщь!###'
#	echo '#####Ололо!#####'
#	echo '################'
#	sleep 1;
#	exec startx &>/dev/null
#	echo '######Done######'
#
#else
#	fortune
#fi
