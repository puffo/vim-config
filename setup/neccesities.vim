" NECESSITIES
filetype plugin indent on
syntax enable
set number
set nowrap
set nocompatible

" REMOVE WHITESPACE
let filetypes_not_to_remove_whitespace_from= ['vim']
augroup neccesities
  autocmd!
  autocmd BufWritePre * if index(filetypes_not_to_remove_whitespace_from, &ft) < 0 | autocmd BufWritePre <buffer> %s/\s\+$//e
augroup END

" IRRESPONSIBLE
" prevents writing ~other~ files
set nobackup
set nowritebackup
set noswapfile
set noundofile

" CLIPBOARD FIX
if has('mac')
	set clipboard=unnamed
elseif has('unix')
	"more might be required
	set clipboard=unnamedplus
end
