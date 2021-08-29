# Report latest results
if test -f "$HOME/logs/mirror.log"; then
    echo "Last Mirror: " $(date -r $HOME/logs/mirror.log +"%D %I:%M %p") "- $(cat $HOME/logs/mirror.log)"
fi

if test -f "$HOME/logs/backup.log"; then
    echo "Last Backup: " $(date -r $HOME/logs/backup.log +"%D %I:%M %p") "- $(cat $HOME/logs/backup.log)"
fi

if test -f "$HOME/logs/duckdns.log"; then
    echo "DNS Update:  " $(date -r $HOME/logs/duckdns.log +"%D %I:%M %p") "- $(cat $HOME/logs/duckdns.log)"
fi

# oh-my-zsh setup
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(git)
source $ZSH/oh-my-zsh.sh

# Personal scripts
export PATH="$PATH:$HOME/bin"

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
