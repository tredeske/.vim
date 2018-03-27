"execute pathogen#infect()
call pathogen#infect()
syntax on
filetype plugin indent on       " enable use of .vim/afger/ftplugin/TYPE.vim files
set ai
set sw=4
set et
set vb
set nu
autocmd FileType go             setlocal ts=4 noet
let g:go_fmt_command = "goimports"
autocmd FileType make           setlocal noet
autocmd FileType yaml           setlocal sw=2 nosi noci
