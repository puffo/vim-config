" Basic setup
source ./setup/nvim_fixes.vim
source ./setup/neccesities.vim
source ./setup/install_plug.vim
source ./setup/keymappings.vim
source ./setup/git_commit_settings.vim

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
source ./plugin_setup/nerdtree.vim
source ./plugin_setup/bufexplorer.vim
source ./plugin_setup/fzf.vim

" Other setup
source ./setup/syntax_tweaks.vim
source ./setup/looks.vim
source ./setup/ruby_stuff.vim
source ./setup/misc.vim

