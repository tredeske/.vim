"
" until we get vim 7.4.1689 or newer...
"
let g:go_version_warning = 0 
"
"execute pathogen#infect()
"
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
" autocmd FileType java           setlocal nu
" autocmd FileType javascript     setlocal nu
" autocmd FileType make           setlocal nu noet
" autocmd FileType python         setlocal nu
" autocmd FileType ruby           setlocal nu
" autocmd FileType sh             setlocal nu
" autocmd FileType json           setlocal nu
" autocmd FileType js             setlocal nu
" autocmd FileType html           setlocal nu
" autocmd FileType tmpl           setlocal nu
" autocmd FileType yaml           setlocal nu sw=2 nosi noci
:hi Comment ctermfg=blue
