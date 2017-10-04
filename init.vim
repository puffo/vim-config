let g:setup_path = '~/.config/nvim'

function CurrySauce(file, setup_file)
  exec "source" . g:setup_path . "/" . a:setup_file . "/" . a:file . ".vim"
endfunction
command! -nargs=1 Setup call CurrySauce(<q-args>, "setup")
command! -nargs=1 SetupPlugin call CurrySauce(<q-args>, "plugin_setup")

call plug#begin(g:setup_path . '/plugged')
  Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
  Plug 'tpope/vim-fugitive'
  Plug 'slim-template/vim-slim'
  Plug 'jlanzarotta/bufexplorer'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'jonathanfilip/vim-lucius'
  Plug '/usr/local/opt/fzf' | Plug 'junegunn/fzf.vim'
  Plug 'jcqvisser/focus_toggle'
  Plug 'mrtazz/simplenote.vim'
  Plug 'trevordmiller/nova-vim'
  Plug 'mxw/vim-jsx'
  Plug 'othree/html5.vim'
  Plug 'pangloss/vim-javascript'
call plug#end()

Setup nvim_fixes
Setup neccesities
Setup install_plug
Setup keymappings
Setup git_commit_settings
Setup looks
Setup syntax_tweaks
Setup ruby_stuff
Setup misc

SetupPlugin nerdtree
SetupPlugin bufexplorer
SetupPlugin fzf
SetupPlugin simplenote_password

" TODO: cleanup
" in ruby augroup
iabbrev xzt binding.pry
"nnooremap <leader>n :Explore<CR>iii
"
let g:python2_host_prog = '/usr/local/bin/python'
let g:python3_host_prog = '/usr/local/bin/python3'
set t_ut=


augroup js_stuff
  autocmd!

  function FullCurrentPath()
    return expand('%:p')
  endfunction

  function JsxTestFilePath(full_current_path)
    let l:path_in_test = substitute(a:full_current_path, "app", "test", "g")
    let l:js_path_in_test = substitute(l:path_in_test, ".jsx", ".test.js", "g")
    return l:js_path_in_test
  endfunction

  function JsxModuleFilePath(full_current_path)
    let l:jsx_path = substitute(a:full_current_path, ".test.js", ".jsx", "g")
    let l:jsx_path_in_app = substitute(l:jsx_path, "test", "app", "g")
    return l:jsx_path_in_app
  endfunction

  function JsxAlternateFilePath()
    let l:full_current_path = FullCurrentPath()
    if l:full_current_path =~ ".test."
      return JsxModuleFilePath(l:full_current_path)
    else
      return JsxTestFilePath(l:full_current_path)
    endif
  endfunction

  command! JsAlternateInVerticalSplit execute("vs " . JsxAlternateFilePath())
  " command! JsAlternateInHorizontalSplit execute("sv " . JsxAlternateFilePath())
  " command! JsAlternate execute("e " . JsxAlternateFilePath())

  autocmd Filetype javascript nnoremap <leader>av :JsAlternateInVerticalSplit<CR>
augroup END
