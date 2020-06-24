# PROMPT="%B%{$fg[blue]%}[%{$fg[white]%}%\leo%{$fg[red]%}@%{$fg[white]%}%\code%{$fg[blue]%}]%{$reset_color%}%  %(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ )"
# PROMPT+='%{$fg[cyan]%}%c%{$reset_color%} '
# PROMPT+='$(git_prompt_info)'

PROMPT="%B%{$fg[red]%}[%{$fg[yellow]%}%\leo%{$fg[green]%}@%{$fg[blue]%}%\code %{$fg[magenta]%}%c%{$fg[red]%}]%{$reset_color%}% %(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ )"

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"

