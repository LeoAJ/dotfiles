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

# Move next only if `homebrew` is installed
if command -v brew >/dev/null 2>&1; then
  # Load rupa's z if installed
  [ -f $(brew --prefix)/etc/profile.d/z.sh ] && source $(brew --prefix)/etc/profile.d/z.sh
fi

# Customize to your needs...

export NODE_OPTIONS=--max_old_space_size=4096

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

alias j="jupyter"
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

# SPACESHIP_PROMPT_ORDER=(
#   user
#   dir
#   git
#   node
#   package
#   line_sep
#   vi_mode
#   jobs
#   char
# )

# SPACESHIP_DIR_COLOR=blue
# SPACESHIP_GIT_BRANCH_PREFIX=''
# SPACESHIP_GIT_STATUS_SHOW=false
# SPACESHIP_PACKAGE_SYMBOL=''
# SPACESHIP_NODE_SYMBOL=''
# SPACESHIP_PACKAGE_COLOR=yellow

export VISUAL=vim

# Set Spaceship ZSH as a prompt
# autoload -U promptinit; promptinit
# prompt spaceship

# fpath=( "$HOME/.zfunctions" $fpath )
# autoload -U promptinit; promptinit
# prompt pure

export PATH="/usr/local/opt/sphinx-doc/bin:$PATH"
function gi() { curl -sLw n https://www.gitignore.io/api/$@ ;}

export YVM_DIR=/usr/local/opt/yvm
[ -r $YVM_DIR/yvm.sh ] && . $YVM_DIR/yvm.sh
