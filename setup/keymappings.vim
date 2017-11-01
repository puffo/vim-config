" Keymappings that don't depend on any plugins.
" Place plugin dependent keymappings in the script to set up that plugin

let mapleader = "\<Space>"

nnoremap ; :

" SPLIT NAVIGATION
nnoremap <C-j> <C-W><C-j>
nnoremap <C-k> <C-W><C-k>
nnoremap <C-l> <C-W><C-l>
if has("nvim")
  " because of this: https://github.com/neovim/neovim/issues/2048
  nnoremap <bs> <C-W><C-h>
else
  nnoremap <C-H> <C-W><C-H>
end

" TABS
nnoremap <leader>t :tabnew<CR>
nnoremap <leader>o :tabonly<CR>
nnoremap <leader>j :tabprevious<CR>
nnoremap <leader>k :tabnext<CR>

" SEARCH HIGHLIGHT
nnoremap <leader>h :noh<CR>

" BUFFERS
nnoremap <leader>bn :bnext<CR>
nnoremap <leader>bp :bprev<CR>
nnoremap <leader>bd :bd<CR>

" TERMINAL
if has("nvim")
  tnoremap <C-Esc> <C-\><C-n>
endif

" VIMRC
" Taken from http://learnvimscriptthehardway.stevelosh.com/chapters/07.html
:nnoremap <leader>ev :vsplit $MYVIMRC<cr>
:nnoremap <leader>sv :source $MYVIMRC<cr>
