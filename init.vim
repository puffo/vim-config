let g:setup_path = '~/.config/nvim'

function! CurrySauce(file, setup_file)
  exec "source" . g:setup_path . "/" . a:setup_file . "/" . a:file . ".vim"
endfunction
command! -nargs=1 Setup call CurrySauce(<q-args>, "setup")
command! -nargs=1 SetupPlugin call CurrySauce(<q-args>, "plugin_setup")

Setup install_plug
Setup fetch_plugs
Setup neccesities
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

let g:python2_host_prog = '/usr/local/bin/python'
let g:python3_host_prog = '/usr/local/bin/python3'
