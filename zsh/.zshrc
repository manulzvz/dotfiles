# PATH
export PATH="/opt/homebrew/bin:$PATH"
export PATH="$HOME/.npm-global/bin:$PATH"

# Prompt
autoload -U colors && colors
PROMPT='%F{cyan}%n@%m%f %F{yellow}%1~%f %# '

# Aliases
alias cls="clear"
alias gs="git status -sb"
alias ga="git add ."
alias gp="git pull"
alias gpp="git push"
alias gc="git commit -m"
alias gca="git commit -am"
alias gl="git log --oneline --graph --decorate"
alias dps="docker ps"
alias dcu="docker compose up"
alias dcd="docker compose down"
alias codeo="code ."
alias ..="cd .."
alias ...="cd ../.."

# NVM / Node
export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"

# Default Node version (optional)
# nvm use 20

# Default editor
export EDITOR="code -w"

# History
HISTSIZE=10000
SAVEHIST=10000
setopt inc_append_history
setopt share_history
