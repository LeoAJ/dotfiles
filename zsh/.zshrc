source_if_exists () {
  if test -r "$1"; then
      source "$1"
  fi
}

source_if_exists $HOME/.env.sh
source_if_exists $DOTFILES/zsh/aliases.zsh
source_if_exists $DOTFILES/zsh/exports.zsh
source_if_exists $DOTFILES/zsh/plugins.zsh

# if type "direnv" > /dev/null; then
#   eval "$(direnv hook zsh)"
# fi

autoload -U zmv
autoload -U promptinit && promptinit
autoload -U colors && colors
autoload -Uz compinit && compinit

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

if [ "$TMUX" = "" ]; then tmux; fi
