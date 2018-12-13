" Only use eslint for JS
let b:ale_linters = {'javascript': ['eslint']}

" Display status through airline
let g:airline#extensions#ale#enabled = 1

" Mappings to move between warnings
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)
