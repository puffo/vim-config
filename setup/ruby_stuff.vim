" Add/Remove focus from all minitests in file
command! Af %s/  \( *\)\(\(scenario\)\|\(test\)\)/  \1focus\r  \1\2/g | w
command! Rf %s/   *focus\n//g | w

" Add/Remove focus from minitest around cursor
function! AddFocusHere()
  let view = winsaveview()
  let test_line = search('  \(def test_\w\)\|\(test\ \"\)\|\(scenario\ \"\)', 'bn')
  let line_text = string(getbufline(bufnr('%'), test_line))

  let test_position = match(line_text, "\\(def test\\)\\|\\(test\\)\\|\\(scenario\\)")
  let starting_whitespace = strpart(line_text, 2, test_position -2)
  echo starting_whitespace

  call append(test_line - 1, [starting_whitespace . 'focus'])
  call winrestview(view)
endfunction

function! RemoveFocusHere()
  let test_line = search('  \(def test_\w\)\|\(test\ \"\)\|\(scenario\ \"\)', 'bn')
  let focus_line = search('^\s*focus', 'bn')

  let view = winsaveview()
  if (focus_line == test_line - 1)
    exe focus_line .'d'
  endif
  call winrestview(view)
endfunction

command! AddFocusHere call AddFocusHere()
nnoremap <leader>af :AddFocusHere<CR>

command! RemoveFocusHere call RemoveFocusHere()
nnoremap <leader>rf :RemoveFocusHere<CR>


""""""""""""""""""""EXPERIMENTAL""""""""""""""""""""
"augroup ruby_stuff
"  autocmd!
"
"  " add an end after typing 'if'
"  autocmd Filetype ruby :iabbrev <buffer> if if<CR>end<up>
"
"  " add pipes and end when typing 'do|'
"  func RemoveNextChar()
"    call getchar()
"    return ''
"  endfunc
"  autocmd Filetype ruby :iabbr <buffer> do\| do \|\|<CR>end<ESC>k$i<C-R>=RemoveNextChar()<cr>
"augroup END
""""""""""""""""""""""""""""""""""""""""""""""""""""
