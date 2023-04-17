#!/usr/bin/env bash

# install brew
if ! command -v brew &>/dev/null; then
  echo "Please install brew first!"
  exit 1
else
  echo "brew already installed"
fi

echo "install my brew packages"
brew bundle install

echo "set up config files"
stow --adopt alacritty git nvim starship tmux zsh zshenv

echo "Complete !!"
