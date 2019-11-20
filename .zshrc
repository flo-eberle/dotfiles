# Path to your oh-my-zsh installation.
export ZSH="/home/flo/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(
    git
    last-working-dir
    zsh-autosuggestions
    # zsh-syntax-highlighting has to be loaded last
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# alias for dotfiles repo. just use config instead of git anywhere in home dir
alias config='/usr/bin/git --git-dir=/home/flo/.cfg/ --work-tree=/home/flo'
# config file aliases
alias zshrc='$EDITOR ~/.zshrc'
alias vimrc='$EDITOR ~/.vimrc'
