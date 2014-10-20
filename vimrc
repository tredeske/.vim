execute pathogen#infect()
syntax on
filetype plugin indent on       " enable use of .vim/afger/ftplugin/TYPE.vim files
set ai
set sw=4
set et
set vb
autocmd FileType c              setlocal nu
autocmd FileType go             setlocal nu ts=4 noet
autocmd FileType java           setlocal nu
autocmd FileType javascript     setlocal nu
autocmd FileType make           setlocal nu noet
autocmd FileType python         setlocal nu
autocmd FileType ruby           setlocal nu
autocmd FileType sh             setlocal nu
autocmd FileType json           setlocal nu
autocmd FileType yaml           setlocal nu sw=2 nosi noci
