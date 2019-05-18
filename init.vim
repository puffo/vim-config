let g:setup_path = '~/.config/nvim'

function! CurrySauce(file, setup_file)
  exec "source" . g:setup_path . "/" . a:setup_file . "/" . a:file . ".vim"
endfunction
command! -nargs=1 Setup call CurrySauce(<q-args>, "setup")
command! -nargs=1 SetupPlugin call CurrySauce(<q-args>, "plugin_setup")

call plug#begin(g:setup_path . '/plugged')
  Plug 'scrooloose/nerdtree'
  Plug 'scrooloose/nerdcommenter'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-rails'
  Plug 'tpope/vim-rhubarb'
  Plug 'janko-m/vim-test'
  Plug 'slim-template/vim-slim'
  Plug 'jlanzarotta/bufexplorer'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'jonathanfilip/vim-lucius'
  Plug '/usr/local/opt/fzf' | Plug 'junegunn/fzf.vim'
  Plug 'jcqvisser/focus_toggle'
  Plug 'trevordmiller/nova-vim'
  Plug 'mxw/vim-jsx'
  Plug 'othree/html5.vim'
  Plug 'airblade/vim-gitgutter'
  Plug 'terryma/vim-multiple-cursors'
  Plug 'pangloss/vim-javascript'
  Plug 'prettier/vim-prettier'
  Plug 'kshenoy/vim-signature'
  Plug 'w0rp/ale'
  Plug 'vimwiki/vimwiki'
call plug#end()

Setup nvim_fixes
Setup neccesities
Setup install_plug
Setup keymappings
Setup git_commit_settings
Setup looks
Setup syntax_tweaks
Setup misc

SetupPlugin nerdtree
SetupPlugin ale
SetupPlugin bufexplorer
SetupPlugin fzf
SetupPlugin nerdcommenter

" TODO: cleanup
" in ruby augroup
iabbrev xzt binding.pry
iabbrev whodat puts "#" * 90;puts caller;puts "#" * 90;
"nnooremap <leader>n :Explore<CR>iii
"
let g:python2_host_prog = '/usr/local/bin/python'
let g:python3_host_prog = '/usr/local/bin/python3'
