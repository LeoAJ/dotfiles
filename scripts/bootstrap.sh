#!/usr/bin/env bash

create_folder() {
  folder_name=$(dirname "$1")
  if [ ! -d "$2/$folder_name" ]; then
    mkdir -p "$2/$folder_name"
    echo "-- $1 created successfully."
  else
    echo "-- $1 already exists."
  fi
}

clone_repo() {
  if [ ! -d "$2" ]; then
    git clone "$1" "$2"
    echo "-- $2 cloned successfully."
  else
    echo "-- $2 already exists."
  fi
}

# --- helper function ---

# install brew
echo "* check brew is installed"
if ! command -v brew &>/dev/null; then
  echo "Please install brew first!"
  exit 1
else
  echo "brew already installed"
fi

echo "* install my brew packages"
brew bundle install

echo "* create .config"
dot_config=".config"
create_folder $dot_config "$HOME/$dot_config"

echo "* zshenv"
stow -R --target=$HOME zshenv

echo "* zsh"
zsh="zsh"
create_folder $zsh "$HOME/$dot_config/$zsh"

echo "* create zsh plugins folder"
zp="plugins"
create_folder $zp "$HOME/$dot_config/$zsh/$zp"

echo "* clone zsh-autopair"
clone_repo "git@github.com:hlissner/zsh-autopair.git" "$HOME/$dot_config/$zsh/$zp/zsh-autopair"

echo "* clone zsh-autosuggestions"
clone_repo "git@github.com:zsh-users/zsh-autosuggestions.git" "$HOME/$dot_config/$zsh/$zp/zsh-autosuggestions"

echo "* clone zsh-autopair"
clone_repo "git@github.com:zsh-users/zsh-syntax-highlighting.git" "$HOME/$dot_config/$zsh/$zp/zsh-syntax-highlighting"
stow -R --target=$HOME/.config/zsh zsh

echo "* alacritty"
alacritty="alacritty"
create_folder $alacritty "$HOME/$dot_config/$alacritty"
stow -R --target=$HOME/.config/alacritty alacritty 

echo "* git"
stow -R --target=$HOME git 

echo "* starship"
stow -R --target=$HOME/.config starship

echo "* tmux"
stow -R --target=$HOME tmux

echo "Complete !!"
