" NECESSITIES
filetype plugin indent on
syntax enable
set number
set nowrap
set nocompatible

" REMOVE WHITESPACE
let blacklist = ['vim']
autocmd BufWritePre * if index(blacklist, &ft) < 0 | autocmd BufWritePre <buffer> %s/\s\+$//e

