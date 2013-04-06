zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ~/.zsh/cache
autoload -U zmv

export WORDCHARS="*?_-.[]~=&;!#$%^(){}<>"

# Loading environment
if test -f "$HOME/.zenv"
then
    source "$HOME/.zenv"
fi

# Loading aliases
if [[ -f "$HOME/.aliases" ]]
then
	source "$HOME/.aliases"
fi

# -----------------------------------------
#               ZSH Options
# -----------------------------------------  
setopt autocd auto_pushd cdable_vars chase_dots pushd_silent pushd_to_home always_last_prompt 
setopt always_to_end auto_name_dirs auto_param_keys list_packed nomatch append_history
setopt bang_hist hist_find_no_dups hist_ignore_all_dups hist_ignore_space hist_no_store hist_save_no_dups hist_verify
setopt aliases clobber correct flow_control auto_continue no_hup no_check_jobs 
unsetopt chase_links posix_cd pushd_ignore_dups pushd_minus auto_list complete_in_word share_history share_history correct_all
unsetopt rm_star_silent rm_star_wait
# -----------------------------------------


orphans() {
  if [[ ! -n $(pacman -Qdt) ]]; then
    echo no orphans to remove
  else
    sudo pacman -Rs $(pacman -Qdtq)
  fi
}

asexplicit() {
    sudo pacman -D --asexplicit $@
}

PATH=$HOME/bin:$PATH:/home/fenix/.gem/ruby/1.9.1/bin
