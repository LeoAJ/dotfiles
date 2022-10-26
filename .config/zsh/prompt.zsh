## autoload vcs and colors
autoload -Uz vcs_info

precmd() { vcs_info }

# enable only git 
# zstyle ':vcs_info:*' enable git 

setopt PROMPT_SUBST
# zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:git:*' formats " %{$fg[blue]%}(%{$fg[red]%}%m%u%c%{$fg[yellow]%}%{$fg[magenta]%} %b%{$fg[blue]%})"
# 
# PROMPT="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%\me %{$fg[magenta]%}%c%{$fg[red]%}]%{$reset_color%} ➜%b "
PROMPT="🖥  %{$fg[magenta]%}%c%{$fg[red]%}%{$reset_color%} ➜%b"
# PROMPT="%{$fg[green]%}%n@%m %~ %{$reset_color%}%#> "
PROMPT+="\$vcs_info_msg_0_ "
# PROMPT+='$(git_prompt_info)'
