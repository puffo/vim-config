# Personal Vim Config

Intended to work across Vim and NeoVim.
- Makes use of [Plug](https://github.com/junegunn/vim-plug) to manage plugins. Plug should be installed on startup if you don't have it installed.
- Uses [FZF](https://github.com/junegunn/fzf) and [The Silver Searcher](https://github.com/ggreer/the_silver_searcher) for finding stuff.
  - With some configuration appropriated from [zenbro](https://github.com/zenbro/dotfiles/blob/master/.nvimrc)

## Installation
### Vim
- Clone this repo somewhere and make a symlink from `~/.vimrc` to `init.vim`:
``` sh
git clone https://github.com/jcqvisser/vim-config.git ~/.config/nvim`
ln -sf ~/.config/nvim/init.vim ~/.vimrc
```
- Edit `$setup_path` in `init.vim` to point to where the repo was cloned if you didn't put it in `~/.config/nvim`

### NeoVim
Clone this repo into the nvim config folder:
``` sh
git clone https://github.com/jcqvisser/vim-config.git ~/.config/nvim`
```
- Edit `$setup_path` in `init.vim` to point to where the repo was cloned if you didn't put it in `~/.config/nvim`
