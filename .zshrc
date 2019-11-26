# Path to your oh-my-zsh installation.
export ZSH="/home/flo/.oh-my-zsh"

stty -ixon

# set EDITOR to vim
export VISUAL=/usr/bin/vim
export EDITOR=/usr/bin/vim

# set the theme
ZSH_THEME="robbyrussell"

# plugins
plugins=(
    git
    last-working-dir
    zsh-autosuggestions
    # zsh-syntax-highlighting has to be loaded last
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# aliases in separate file - .zshrc_aliases
if [ -f .zshrc_aliases ]; then
    source .zshrc_aliases
fi
