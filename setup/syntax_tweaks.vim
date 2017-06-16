" TABS = 2 SPACES
set tabstop=2
set shiftwidth=2
set expandtab

" es6 files to use js syntax
augroup syntax_tweaks
  autocmd!
  autocmd BufNewFile,BufRead *.es6*   set syntax=javascript
augroup END

