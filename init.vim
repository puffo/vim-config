source ./nvim_fixes.vim
source ./neccesities.vim

" Plug
" installed to  ~/.local/share/nvim/site/autoload/plug.vim
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

" Setup plugins
source ./plugin_setup/bufexplorer.vim
source ./plugin_setup/fzf.vim
source ./plugin_setup/nerdtree.vim

" Other setup
source ./keymappings.vim
source ./syntax_tweaks.vim
source ./looks.vim
source ./ruby_stuff.vim
source ./misc.vim

