#!/usr/bin/env bash

# install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# create zsh plugins
antibody bundle < .zsh_plugins.txt > .zsh_plugins.sh

# symlink
stow .
