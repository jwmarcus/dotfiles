# oh-my-zsh setup
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(git)
source $ZSH/oh-my-zsh.sh

# Personal scripts
export PATH="$PATH:$HOME/bin"

# Python modules installed to --user space
export PATH="$HOME/.local/bin:$PATH" 

# Aliases
alias xclip="xclip -selection c"
alias update="sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y && sudo snap refresh"

# Tokens
source $HOME/tokens

# Python setup
export PYTHONDONTWRITEBYTECODE=1

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"

alias pys="source .venv/bin/activate"
alias pyp="source env-prod/bin/activate"
alias pyd="deactivate"


# Multi-platform workarounds
cd ~
