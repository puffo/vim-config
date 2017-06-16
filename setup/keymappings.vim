let mapleader = "\<Space>"

" SPLIT NAVIGATION
nnoremap <C-j> <C-W><C-j>
nnoremap <C-k> <C-W><C-k>
nnoremap <C-l> <C-W><C-l>
if(has("nvim"))
  " because of this: https://github.com/neovim/neovim/issues/2048
  set fillchars+=vert:\ 
  nnoremap <bs> <C-W><C-h>
else
  nnoremap <C-H> <C-W><C-H>
end

" TABS
map <leader>t :tabnew<CR>
map <leader>o :tabonly<CR>

" SEARCH HIGHLIGHT
map <leader>h :noh<CR>

" BUFFERS
map <leader>bn :bnext<CR>
map <leader>bp :bprev<CR>
map <leader>bd :bd<CR>

" TERMINAL
if (has("nvim"))
  tnoremap <C-Esc> <C-\><C-n>
endif
