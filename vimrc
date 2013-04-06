syntax on

if has("autocmd")
    filetype on
    filetype indent on
    filetype plugin on
endif

set ts=4
set softtabstop=4
set shiftwidth=4
set smarttab
" set autoindent
set expandtab


autocmd BufWritePre *.py normal m`:%s/\s\+$//e``

if version >= 700
    set history=64
    set undolevels=128
    set undodir=~/.vim/undodir/
    set undofile
    set undolevels=1000
    set undoreload=10000
endif

" Support for vim modeline in git config.
let git_config_modeline = system("git config --get vim.modeline")
if strlen(git_config_modeline)
    exe "set" git_config_modeline
    endif
