# git
alias g="git"

# git alias
alias gc="g clone --recursive"
alias gl="g log --pretty=oneline -n 20 --graph --abbrev-commit"
alias gst="g status -s"
alias gca="g add -A && git commit -av"
alias gpl="g pull --recurse-submodules"

# git shortcut
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

# node
alias y="yarn"

# brew
alias b="brew"
alias bu="b update && b upgrade"
alias bd="b doctor"

# others
alias .="cd .."
alias f="s -p google"
alias c="clear"
alias h="history"
alias tr="tree -C"
alias t="touch"
alias n="nvim"
alias l="ls -1A"
alias ll="ls -lh"
alias tm="tmux"
alias e="exit"
alias np="npm"
alias ca="cat"
alias ba="bat"
alias sz="source ~/.config/zsh/.zshrc"
alias p="python3"

# config
alias nc="nvim ~/.gitconfig"
alias na="nvim ~/.config/alacritty/alacritty.toml"
alias ni="nvim ~/.config/nvim/lua/leo/init.lua"
alias nt="nvim ~/.tmux.conf"
alias nz="nvim ~/.config/zsh/.zshrc"
alias nza="nvim ~/.config/zsh/aliases.zsh"

alias \
	cp="cp -iv" \
	mv="mv -iv" \
	mkd="mkdir -pv"
