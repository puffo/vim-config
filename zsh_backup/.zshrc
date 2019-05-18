## Important zsh settings backups

# export ZSH=/Users/<username>/.oh-my-zsh
ZSH_THEME="robbyrussell"
plugins=(git)
source $ZSH/oh-my-zsh.sh

# GIT ALIASES
alias gs="git status"
alias gl="git log"
alias gd="git diff"
alias gds="git diff --staged"
alias gca="git commit -am "
alias gjc="git commit -m "
alias gps="git push"
alias gpl="git pull"
alias gcc='git branch --merged | egrep -v "(^\*|master|dev)" | xargs git branch -d'

# DIRECTORY ALIASES
# alias df="cd ~/<commonly navigated directory>/"

# LOG MONITORING ALIASES
# alias ds="tail -f log/<logfile to monitor>.log"

# OTHER SPECIFIC ALIASES
# alias spc=""
# alias spr=""
# alias ss=""
# alias ssb=""
# alias sspr=""

# ZSHRC EDITING ALIASES
alias zz="nvim ~/.zshrc"
alias zs="source ~/.zshrc"

# CLEANUP ALIASES
alias clear_history='echo "" > ~/.zsh_history & exec $SHELL -l; echo "" > ~/.bash_history & exec $SHELL -l;'
