syntax on
set nocompatible
set ts=3
set st=3
set number
set autoindent
set foldmethod=marker
set foldmarker={{{,}}}

map <F2> :foldclose <Enter>
imap <F2> <Esc>:foldclose <Enter>

map <S-F4> :wqa <Enter>
imap <S-F4> <ESC>:wqa <Enter>

map <F4> :wa <Enter>
imap <F4> <Esc>:wa <Enter>

nmap <silent> <F9> <Plug>ToggleProject <CR>

let g:miniBufExplMapWindowNavVim = 1 
let g:miniBufExplMapWindowNavArrows = 1 
let g:miniBufExplMapCTabSwitchBufs = 1 
let g:miniBufExplModSelTarget = 1


set fileencodings=utf-8,cp1251,koi8-r,cp866

colorscheme tango
filetype plugin on

let ropevim_vim_completion=1


