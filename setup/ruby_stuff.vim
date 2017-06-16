" Add/Remove focus from rails minitest tests
command! Af %s/  \( *\)\(\(scenario\)\|\(test\)\)/  \1focus\r  \1\2/g | w
command! Rf %s/   *focus\n//g | w

" Insert ends
autocmd Filetype ruby :iabbrev <buffer> if if<CR>end<ESC>pA


