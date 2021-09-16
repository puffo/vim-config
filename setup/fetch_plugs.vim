let g:plug_window = "botright 5new"

call plug#begin(g:setup_path . '/plugged')
  Plug 'scrooloose/nerdtree'
  Plug 'scrooloose/nerdcommenter'
  
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-rhubarb'
  Plug 'janko-m/vim-test'
  
  Plug 'junegunn/vim-easy-align'
  Plug 'ekalinin/Dockerfile.vim'
  Plug 'jlanzarotta/bufexplorer'
  Plug '/usr/local/opt/fzf' | Plug 'junegunn/fzf.vim'
  
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'jonathanfilip/vim-lucius'

  Plug 'terryma/vim-multiple-cursors'
  Plug 'kshenoy/vim-signature'
  
  Plug 'tpope/vim-rails'
  Plug 'othree/html5.vim'

  Plug 'airblade/vim-gitgutter'
  
  Plug 'w0rp/ale'
  Plug 'pangloss/vim-javascript'
  Plug 'mxw/vim-jsx'
  Plug 'prettier/vim-prettier'
call plug#end()
