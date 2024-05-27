eval "$(/opt/homebrew/bin/brew shellenv)"

source $(brew --prefix)/opt/antidote/share/antidote/antidote.zsh

source_if_exists () {
  if test -r "$1"; then
      source "$1"
  fi
}

source_if_exists $HOME/.config/zsh/aliases.zsh
source_if_exists $HOME/.config/zsh/exports.zsh
source_if_exists $HOME/.config/zsh/zim.zsh
source_if_exists $HOME/.config/zsh/work.zsh
source_if_exists $HOME/.config/zsh/theme.zsh
# source_if_exists $HOME/.zsh_plugins.zsh

# autoload -U zmv
# autoload -U promptinit && promptinit
# autoload -U colors && colors
# autoload -Uz compinit && compinit

# vim
bindkey -v

# zsh-users/zsh-history-substring-search
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down

# share cmd history across sessions
setopt share_history
# prompt for spelling correction of commands
setopt CORRECT

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

if [ "$TMUX" = "" ]; then tmux; fi
