export PATH=/Users/leo/.cargo/bin:/Users/leo/Library/Caches/fnm_multishells/53672_1658122252725/bin:/opt/homebrew/bin:/opt/homebrew/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Library/Apple/usr/bin:/opt/homebrew/bin:/opt/homebrew/sbin

if [ "$TMUX" = "" ]; then tmux; fi

# zsh config dir
export ZDOTDIR=$HOME/.config/zsh

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

# Enable ls colors
export LSCOLORS="Gxfxcxdxbxegedabagacad"

# ls colors
autoload -U colors && colors

# some useful options (man zshoptions)
setopt autocd extendedglob nomatch menucomplete
setopt interactive_comments
stty stop undef		# Disable ctrl-s to freeze terminal.
zle_highlight=('paste:none')

# beeping is annoying
unsetopt BEEP

# completions
autoload -Uz compinit
zstyle ':completion:*' menu select
# zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zmodload zsh/complist
# compinit
_comp_options+=(globdots)		# Include hidden files.

autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search

# autoload -Uz colors && colors

source "$ZDOTDIR/zsh-functions"

# ZSH config
[ -f $HOME/.config/zsh/exports.zsh ] && source $HOME/.config/zsh/exports.zsh
[ -f $HOME/.config/zsh/prompt.zsh ] && source $HOME/.config/zsh/prompt.zsh
[ -f $HOME/.config/zsh/aliases.zsh ] && source $HOME/.config/zsh/aliases.zsh
[ -f $HOME/.config/zsh/tool.zsh ] && source $HOME/.config/zsh/tool.zsh
[ -f $HOME/.config/zsh/tool.zsh ] && source $HOME/.config/zsh/vim.zsh

# Plugins
zsh_add_plugin "zsh-users/zsh-autosuggestions"
zsh_add_plugin "zsh-users/zsh-syntax-highlighting"
zsh_add_plugin "hlissner/zsh-autopair"

compinit

