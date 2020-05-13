#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

alias y="yarn"
alias s="cd .."
alias c="clear"
alias gf="g fetch"
alias gc="g clone"
alias gst="gwS"
alias gaa="g add ."
alias ggp="gp origin"
alias ga="g add"
alias gd="g diff"
alias gstf="gst | fpp"
alias glp="gl --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'"
alias glol="gl --oneline"
alias h="history"
alias t="tree"
alias k="kubectl"
alias dk="docker"
alias dkc="dk container"
alias dki="dk image"
alias dc="docker-compose"
alias n="nvim"

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm


# This is for `z` command
# Move next only if `homebrew` is installed
if command -v brew >/dev/null 2>&1; then
	# Load rupa's z if installed
	[ -f $(brew --prefix)/etc/profile.d/z.sh ] && source $(brew --prefix)/etc/profile.d/z.sh
fi
