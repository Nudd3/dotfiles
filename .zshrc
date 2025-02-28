if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Theme configuration must come BEFORE sourcing oh-my-zsh
ZSH_THEME="powerlevel10k/powerlevel10k"

# Plugins must be defined BEFORE sourcing oh-my-zsh
plugins=(
    git
    npm
    sudo
    web-search
    zsh-autosuggestions
)

# Source oh-my-zsh AFTER theme and plugins are configured
source $ZSH/oh-my-zsh.sh

# Initialize completion system
autoload -U compinit && compinit

# Environment variables
export PATH="$PATH:$HOME/go/bin"
export NVM_DIR="$HOME/.nvm"

# Aliases
alias prog="/Users/Nudd3/Documents/Programming"
alias gs="git status"
alias ga="git add"
alias gd="git diff"
alias python="python3"
alias tma="tmux attach"
alias tls="tmux ls"

# p10k prompt
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Initialize rbenv and nvm
eval "$(rbenv init -)"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# Other configurations
COMPLETION_WAITING_DOTS="true"
DISABLE_AUTO_TITLE="true"

export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/sbin:$PATH"
