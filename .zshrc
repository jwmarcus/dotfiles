# oh-my-zsh setup
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(git docker docker-compose)
source $ZSH/oh-my-zsh.sh
# For docker-machine autocomplete
fpath=(~/.zsh/completion $fpath)
autoload -Uz compinit && compinit -i

# Personal scripts
export PATH="$PATH:$HOME/bin"

# Aliases
alias xclip="xclip -selection c"
alias update="sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y"

# Tokens
source $HOME/tokens

# -- Node doesn't need sudo for global packages like yarn --
export NPM_PACKAGES="$HOME/.npm-packages"
export NODE_PATH="$NPM_PACKAGES/lib/node_modules${NODE_PATH:+:$NODE_PATH}"
export PATH="$NPM_PACKAGES/bin:$PATH"
unset MANPATH
export MANPATH="$NPM_PACKAGES/share/man:$(manpath)"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

# -- Python setup --
export PYTHONDONTWRITEBYTECODE=1
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
alias pys="source env-dev/bin/activate"
alias pyp="source env-prod/bin/activate"
alias pyd="deactivate"

# -- Go setup --
export PATH="$PATH:/usr/local/go/bin"

# -- Ruby Manager --
export PATH="$PATH:$HOME/.rbenv/bin"
eval "$(rbenv init -)"

# -- Gradle / Java Manager --
# -- Usage: sdk install (scala|maven|java|sbt|gradle)
export SDKMAN_DIR="$HOME/.sdkman"
source "$SDKMAN_DIR/bin/sdkman-init.sh"

# -- Rust Manager --
export PATH="$HOME/.cargo/bin:$PATH"

# Functions for docker-machine
dock() {
  eval $(docker-machine env $1)
}

undock() {
  eval $(docker-machine env -u)
}

# Personal reminders
echo "--- Q2 Commits: ---"
echo "1. Bring sales hacking into ABS to move more to Stage 3" 
echo "2. Ship (n+1) account profiles manually and automated"
echo ""
echo "--- Q2 Personal Theme: Mr. Consistent"
echo "------------------------------------------"

