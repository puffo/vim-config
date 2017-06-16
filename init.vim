" Basic setup
let $setup_path = '~/.config/nvim'

source $setup_path/setup/nvim_fixes.vim
source $setup_path/setup/neccesities.vim
source $setup_path/setup/install_plug.vim
source $setup_path/setup/keymappings.vim
source $setup_path/setup/git_commit_settings.vim

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
source $setup_path/plugin_setup/nerdtree.vim
source $setup_path/plugin_setup/bufexplorer.vim
source $setup_path/plugin_setup/fzf.vim

" Other setup
source $setup_path/setup/syntax_tweaks.vim
source $setup_path/setup/looks.vim
source $setup_path/setup/ruby_stuff.vim
source $setup_path/setup/misc.vim

