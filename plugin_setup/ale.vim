" Only use eslint for JS / Python
let g:ale_linters = {'javascript': ['eslint'], 'python': ['pylint']}
let g:ale_fixers = ['black', 'isort', 'flake8']

" Display status through airline
let g:airline#extensions#ale#enabled = 1

" Remove the automatic linting while typing
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_insert_leave = 0

" Mappings to move between warnings
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)
