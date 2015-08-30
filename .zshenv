#
# Defines environment variables.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Ensure that a non-login, non-interactive shell has a defined environment.
if [[ "$SHLVL" -eq 1 && ! -o LOGIN && -s "${ZDOTDIR:-$HOME}/.zprofile" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprofile"
fi

function http(){
  ruby -run -e httpd -- --port 9999 .
}

alias nom="rm -rf node_modules && npm cache clear && npm i"
alias zomg="git stash && git stash drop"
alias gm="git merge"
alias gg='git grep'
alias top="/usr/bin/htop"
alias pbcopy="xsel --clipboard --input"
alias pbpaste="xsel --clipboard --output"
