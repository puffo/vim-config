" Add/Remove focus from rails minitest tests
command! Af %s/  \( *\)\(\(scenario\)\|\(test\)\)/  \1focus\r  \1\2/g | w
command! Rf %s/   *focus\n//g | w

" add an end when typing if
autocmd Filetype ruby :iabbrev <buffer> if if<CR>end<up>

" add pipes and end when typing do
func RemoveNextChar()
  call getchar()
  return ''
endfunc
autocmd Filetype ruby :iabbr <buffer> do do \|\|<CR>end<ESC>k$i<C-R>=RemoveNextChar()<cr>


