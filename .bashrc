shopt -s checkwinsize
shopt -s histappend

source ~/bin/git-completion.bash
source ~/bin/git-prompt.sh
source ~/tokens

export CLICOLOR=1
export EDITOR='vim'
export VISUAL='vim'
export HISTFILESIZE=10000
export HISTSIZE=10000
export LESS=' -R '
export PS1='\u@\h [\w$(__git_ps1 " (%s)")]\$ '

# Keyboard behavior
bind "TAB:menu-complete"
bind '"\e[Z": menu-complete-backward'
bind "set show-all-if-ambiguous on"
bind "set completion-ignore-case on"
bind "set menu-complete-display-prefix on"

# Handy aliases
alias ll="ls -la"
alias l="ls -l"
alias gst="git status"
alias gca="git commit --all"
alias gp="git push"

# Personal scripts
export PATH="$PATH:$HOME/dev/bin/scripts"

# -- Node doesn't need sudo for global packages like yarn --
export NPM_PACKAGES="/home/event-horizon/.npm-packages"
export NODE_PATH="$NPM_PACKAGES/lib/node_modules${NODE_PATH:+:$NODE_PATH}"
export PATH="$NPM_PACKAGES/bin:$PATH"
unset MANPATH
export MANPATH="$NPM_PACKAGES/share/man:$(manpath)"

# -- Python setup --
alias pys="source env/bin/activate"
alias pyd="deactivate"
PYTHONDONTWRITEBYTECODE=1

# -- Go setup --
export PATH="$PATH:/usr/local/go/bin"

# -- Ruby Manager --
export PATH="$PATH:$HOME/.rbenv/bin"
eval "$(rbenv init -)"

# -- Gradle / Java Manager --
export SDKMAN_DIR="$HOME/.sdkman"
source "$SDKMAN_DIR/bin/sdkman-init.sh"

