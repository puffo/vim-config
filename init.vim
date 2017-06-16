let g:setup_path = '~/.config/nvim'

function CurrySauce(file, setup_file)
  exec "source" . g:setup_path . "/" . a:setup_file . "/" . a:file . ".vim"
endfunction
command! -nargs=1 Setup call CurrySauce(<q-args>, "setup")
command! -nargs=1 SetupPlugin call CurrySauce(<q-args>, "plugin_setup")


call plug#begin('~/.config/nvim/plugged')
  Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
  Plug 'tpope/vim-fugitive'
  Plug 'slim-template/vim-slim'
  Plug 'jlanzarotta/bufexplorer'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'jonathanfilip/vim-lucius'
  Plug '/usr/local/opt/fzf' | Plug 'junegunn/fzf.vim'
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


