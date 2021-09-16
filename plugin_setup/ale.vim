" Only use eslint for JS / Ruby / Python
let g:ale_linters = {'javascript': ['eslint'], 'ruby': ['rubocop'], 'python': ['pylint']}
let g:ale_fixers = {'javascript': ['eslint'], 'ruby': ['rubocop'], 'python': ['black', 'isort', 'flake8']}

" Configure rubocop for local projects
let g:ale_ruby_rubocop_executable = 'bin/rubocop'

" Display status through airline
let g:airline#extensions#ale#enabled = 1

" Remove the automatic linting while typing
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_insert_leave = 0
let g:ale_linters_explicit = 1 

" Mappings to move between warnings
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)
