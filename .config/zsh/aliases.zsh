# git alias
alias g="git"
alias gc="g clone --recursive"
alias gl="g log --pretty=oneline -n 20 --graph --abbrev-commit"
alias gst="g status -s"
alias gca="g add -A && g commit -nm"
alias gpl="g pull --recurse-submodules"
alias gfm="gco -f master"
alias gmm="gm master"
alias gf="g fetch"
alias gaa="g add ."
alias gp="g push"
alias ggp="gp origin"
alias gco="g checkout"
alias ga="g add"
alias gd="g diff"
alias gcm='g commit -am'
alias glp="gl --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'"
alias gb="g branch"
alias gm="g merge"
alias gv="gh repo view --web"

# docker
alias dk="docker"
alias dkc="dk container"
alias dki="dk image"
alias dc="docker-compose"

# k8s
alias k="kubectl"

# rust
alias cg="cargo"

# python
alias p="python3"
alias penv="p -m venv .venv"
alias pa="source .venv/bin/activate"
alias pd="deactivate"

# pip
alias ppr="pip freeze > requirements.txt"
alias ppi="pip install -r requirements.txt"

# node
alias y="yarn"
alias np="npm"

# brew
alias b="brew"
alias bu="b update && b upgrade"
alias bd="b doctor"

# editor
alias n="nvim"
alias tm="tmux"

# others
alias .="cd .."
alias	cp="cp -iv" 
alias	mv="mv -iv"
alias	mkd="mkdir -pv"
alias c="clear"
alias h="history"
alias t="touch"
alias l="ls -1A"
alias ll="ls -lh"
alias e="exit"
alias ca="cat"
alias sz="source ~/.config/zsh/.zshrc"

# config
alias nc="nvim ~/.gitconfig"
alias na="nvim ~/.config/alacritty/alacritty.toml"
alias nt="nvim ~/.tmux.conf"
alias nz="nvim ~/.config/zsh/.zshrc"
alias nza="nvim ~/.config/zsh/aliases.zsh"

# tools
alias f="s -p google"
alias tr="tree -C"
alias ba="bat"
