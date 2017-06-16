# Personal Vim Setup

Intended to work across Vim and NeoVim.
- Makes use of [Plug](https://github.com/junegunn/vim-plug) to manage plugins. Plug should be installed on startup if you don't have it installed.
- Uses [FZF](https://github.com/junegunn/fzf) and [The Silver Searcher](https://github.com/ggreer/the_silver_searcher)for finding stuff.
  - With some confguration appropriated from [zenbro](https://github.com/zenbro/dotfiles/blob/master/.nvimrc)

## Installation
### Vim
Clone this repo somewhere and make your `~/.vimrc` a symlink to `init.vim`:
``` sh
git clone https://github.com/jcqvisser/vim-config.git ~/.config/nvim`
ln -sf ~/.config/nvim/init.vim ~/.vimrc
```

### NeoVim
Clone this repo into the nvim config folder:
``` sh
git clone https://github.com/jcqvisser/vim-config.git ~/.config/nvim`
```
