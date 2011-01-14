# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
source ~/.zshenv
source ~/.aliases


typeset -U path cdpath fpath manpath

autoload -Uz compinit
compinit -i

autoload -Uz bashcompinit
bashcompinit -i

autoload -Uz colors
colors

autoload -Uz promptinit
promptinit

autoload -U zargs
autoload -U zmv
autoload -U zed
autoload -U zcalc
autoload -U zftp
autoload -U tetris
autoload -U url-quote-magic
autoload history-search-end

zle -N tetris
zle -N self-insert url-quote-magic
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end

zmodload zsh/complist
zmodload zsh/termcap
zmodload -a zsh/stat stat
zmodload -a zsh/zpty zpty
zmodload -a zsh/zprof zprof
zmodload -ap zsh/mapfile mapfile

# Опции истории команд
setopt APPEND_HISTORY		# Дополнение файла истории
setopt INC_APPEND_HISTORY	# Инкрементальное
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS	# Игнopupoвaть вce пoвтopeнuя команд
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_SPACE	# Игнopupo лишние пpoбeлы
setopt HIST_REDUCE_BLANKS	# Удалять из файл истории пустые строки
#setopt SHARE_HISTORY		# Использовать один файл для всех сессий
setopt BANG_HIST
setopt NO_HIST_BEEP
setopt HIST_SAVE_NO_DUPS
setopt HIST_FIND_NO_DUPS
setopt HIST_VERIFY


# Установка-снятие опций шелла
setopt ALWAYS_TO_END		# Move to the end on complete completion
setopt AUTO_CD			# implicate cd for non-commands
setopt AUTO_PUSHD		# Push dirs into history
setopt AUTO_REMOVE_SLASH
setopt AUTO_RESUME
setopt AUTO_CONTINUE
setopt BASH_AUTO_LIST		# Autolist options on repeition of ambiguous args
setopt C_BASES			# 0xFF
setopt CDABLE_VARS		# read vars in cd
setopt CHASE_LINKS		# Follow links in cds
setopt CLOBBER
setopt COMPLETE_ALIASES
setopt COMPLETE_IN_WORD		# complete commands anywhere in the word
setopt CORRECT_ALL		# correct spelling
setopt EXTENDED_GLOB		# Moar shell patterns
setopt GLOB_DOTS
setopt GLOB_COMPLETE
setopt HASH_CMDS
setopt HASH_DIRS
setopt HIST_REDUCE_BLANKS
setopt MAIL_WARNING
setopt INTERACTIVE_COMMENTS
setopt LIST_AMBIGUOUS
setopt LIST_PACKED
setopt LIST_ROWS_FIRST		# Row orientation for menu
setopt LONG_LIST_JOBS
setopt MAGIC_EQUAL_SUBST	# Expand inside equals
setopt MARK_DIRS
setopt MENU_COMPLETE
setopt MULTIOS			# Allow Multiple pipes
setopt NOTIFY			# Notify when jobs finish
setopt PRINT_EXIT_VALUE
setopt PUSHD_TO_HOME
setopt PUSHD_SILENT
setopt PATH_DIRS
setopt PUSHD_MINUS
setopt RC_QUOTES
# #setopt REC_EXACT
setopt TRANSIENT_RPROMPT
setopt NO_BEEP
setopt NO_HUP
setopt NULLGLOB			# Пропускать пустые glob
# unsetopt EQUALS			# Убрать дополнение исполняемых файлов по =cmd
# unsetopt AUTO_PARAM_SLASH


# Command Parameter Completion
compctl -z fg
compctl -j kill
compctl -u chown
compctl -u su
compctl -c sudo
compctl -c which
compctl -c type
compctl -c hash
compctl -c unhash
compctl -o setopt
compctl -o unsetopt
compctl -a alias
compctl -a unalias
compctl -A shift
compctl -v export
compctl -v unset
compctl -v echo
compctl -b bindkey

cdpath=($HOME/Work $HOME /media)



## Установка нормального поведения клавиш Delete, Home, End и т.д.:
bindkey -v      # peжuм нaвuгaцuu в cтuлe vim
bindkey "^[[2~" yank
bindkey "^[[3~" delete-char
bindkey "^[[5~" up-line-or-history
bindkey "^[[6~" down-line-or-history
bindkey "^[[1~" beginning-of-line
bindkey "^[[4~" end-of-line
bindkey "^[e" expand-cmd-path
bindkey "^[[A" history-beginning-search-backward-end   # up arrow for back-history-search
bindkey "^[[B" history-beginning-search-forward-end # down arrow for fwd-history-search
bindkey " "  magic-space           # do history expansion on space
bindkey "^[[H" beginning-of-line # Клавиша Home
bindkey "^[[F" end-of-line # Клавиша End
bindkey "^E" expand-cmd-path      # C-e добавляет к набираемой команде её
bindkey "^T" tetris
bindkey '^I' complete-word # complete on tab, leave expansion to _expand
bindkey "^[u"   undo
bindkey "^[r"   redo

RPROMPT="%(?,%{$fg[green]%}:%)%{$reset_color%},%{$fg[red]%}:(%{$reset_color%}"
prompt bigfade
PROMPT="%B%F{blue}█▓▒░%B%F{white}%K{blue}%n@%m%b%k%f%F{blue}%K{black}░▒▓█%b%f%k%F{blue}%K{black}█▓▒░%B%F{white}%K{black} %D{%a %b %d} %D{%I:%M:%S%P}
%}%B%F{yellow}%K{black}%d>%b%f%k "

# Completion Styles
#
zstyle ':completion::complete:*' '\\'
zstyle ':completion::complete:*' cache-path ~/.zcompcache
zstyle ':completion:*:complete:-command-::commands' ignored-patterns '*\~'
zstyle ':completion:*' completer _complete _prefix _correct _prefix _match _approximate
zstyle ':completion:*::::' completer _expand _complete _ignored _approximate
zstyle ':completion::complete:*' use-cache on
zstyle ':completion:*:corrections' format '%B%d (ошибки: %e)%b'
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*:descriptions' format "$fg_bold[brown] %B%d%b $reset_color"
zstyle ':completion:*' expand prefix suffix
zstyle ':completion:*:expand:*' tag-order all-expansions
zstyle ':completion:*' expand 'yes'
zstyle ':completion:*:functions' ignored-patterns '_*'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' hosts $hosts
zstyle ':completion:incremental:*' completer _complete _correct
zstyle ':completion:*:kill:*' force-list always
zstyle ':completion:*:*:kill:*' menu yes select
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-prompt "%SСейчас на %p. Нажми TAB, чтобы листать далее или следующий символ для подстановки%s"
zstyle ':completion:*' list-suffixes true
zstyle ':completion:*:ls:*' ignore-line yes
# #zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
# #zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' '+ l:|=* r:|=*'
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z} r:|[._-]=** r:|=**' 'm:{a-z}={A-Z} m:{a-zA-Z}={A-Za-z} r:|[._-]=** r:|=** l:|=*' 'm:{a-zA-Z}={A-Za-z} r:|[._-]=** r:|=** l:|=*' 'm:{a-zA-Z}={A-Za-z} r:|[._-]=** r:|=** l:|=*'
# #zstyle ':completion:*' matcher-list 'm:{A-Z}={a-z}' 'm:{a-z}={A-Z}' 'r:|[._-]=** r:|=**' 'l:|=* r:|=*'
zstyle ':completion:*:matches' group 'yes'
zstyle ':completion:*:match:*' original only
# #zstyle ':completion:*' menu select=1
zstyle ':completion:*' menu select=long-list select=0
zstyle ':completion:*:messages' format "$fg_bold[purple] %d $reset_color"
# #zstyle ':completion:*:messages' format "$fg_bold[purple] -- %d --$reset_color"
zstyle ':completion:*' old-menu true
zstyle ':completion:*:options' auto-description '%d'
zstyle ':completion:*:options' description 'yes'
zstyle ':completion:*' original true
zstyle ':completion:predict:*' completer _complete
zstyle ':completion::prefix-1:*' completer _complete
zstyle ':completion:*' preserve-prefix '//[^/]##/'
zstyle ':completion:*:processes' command 'ps -U $(whoami) +nc|sed "/ps/d"'
# #zstyle ':completion:*:processes' command 'ps -xuf'
zstyle ':completion:*:processes' insert-ids menu yes select
zstyle ':completion:*:processes-names' command 'ps xho command +nc|sed "s/://g"'
zstyle ':completion:*:processes' sort false
zstyle ':completion:*:*:(^rm):*:*files' ignored-patterns '*?.o' '*?.c~' '*?.old' '*?.pro'
zstyle ':completion:*:rm:*' ignore-line yes
zstyle ':completion:*:scp:*' ignore-line yes
zstyle ':completion:*' select-prompt %SСкроллинг активен. Текущее выделение на: %p%s
zstyle ':completion:*' special-dirs true
# #zstyle ':completion:*' squeeze-shlashes 'yes'
zstyle ':completion:*' squeeze-slashes true
zstyle ':completion:*:*:-subscript-:*' tag-order indexes parameters
zstyle ':completion:*' substitute 1
zstyle ':completion:*:sudo:*' command-path /usr/local/sbin /usr/sbin /sbin /usr/local/bin /usr/bin /bin /opt/bin /usr/X11R6/bin
zstyle ':completion:*:urls' local 'www' '/var/www/htdocs' 'public_html'
zstyle ':completion:*' use-compctl true
# #zstyle ':completion:*' use-compctl true
zstyle ':completion:*' verbose true
# #zstyle ':completion:*' verbose yes
# ##zstyle ':completion:*:warnings' format "$fg_bold[red] -- No Matches Found --$reset_color"
zstyle ':completion:*:warnings' format "$fg_bold[red] Нет совпадений с$reset_color %d"
zstyle ':completion:*' word true
zstyle -e ':completion:*:approximate:*' max-errors 'reply=( $(( ($#PREFIX+$#SUFFIX)/3 )) numeric )'
zstyle '*' single-ignored show
# Force rehashing
_force_rehash() {
	(( CURRENT == 1 )) && rehash
	return 1
}

# Load forced rehash
zstyle ':completion:*' completer _oldlist _expand _force_rehash _complete
