#!/usr/bin/env bash

# install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# install brew bundle
brew bundle install

# symlink
stow .

# create zsh plugins
# antidote bundle < .zsh_plugins.txt > ~/.zsh_plugins.zsh
