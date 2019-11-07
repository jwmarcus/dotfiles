# oh-my-zsh setup
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(git)
source $ZSH/oh-my-zsh.sh

# Personal scripts
export PATH="$PATH:$HOME/dev/bin/scripts"

# Aliases
alias xclip="xclip -selection c"
alias update="sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y"

# Tokens
source $HOME/tokens

# -- Node doesn't need sudo for global packages like yarn --
export NPM_PACKAGES="/home/event-horizon/.npm-packages"
export NODE_PATH="$NPM_PACKAGES/lib/node_modules${NODE_PATH:+:$NODE_PATH}"
export PATH="$NPM_PACKAGES/bin:$PATH"
unset MANPATH
export MANPATH="$NPM_PACKAGES/share/man:$(manpath)"

# -- Python setup --
alias pys="source env/bin/activate"
alias pyd="deactivate"
export PYTHONDONTWRITEBYTECODE=1

# -- Go setup --
export PATH="$PATH:/usr/local/go/bin"

# -- Ruby Manager --
export PATH="$PATH:$HOME/.rbenv/bin"
eval "$(rbenv init -)"

# -- Gradle / Java Manager --
# -- Usage: sdk install (scala|maven|java|sbt|gradle)
export SDKMAN_DIR="$HOME/.sdkman"
source "$SDKMAN_DIR/bin/sdkman-init.sh"
