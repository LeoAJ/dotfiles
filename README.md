# Dotfiles

My dotfiles config

## Zsh

do

```bash
echo $PATH

```

copy that value and paste in `.config/zsh/.zshrc`

```bash
export PATH=YOUR_VALUE
```

create `~/.zshenv`

## Setting

- create and copy `~/.config/zsh`

## Alacritty

```
brew install --cask alacritty
```

copy `alacritty` folder to `~/.config/alacritty`

#### Theme

https://github.com/eendroroy/alacritty-theme

## Neovim

```
brew install neovim
```

#### setup

copy `nvim` folder to `~/.config/nvim`

use [packer](https://github.com/wbthomason/packer.nvim) to install plugins

## Tools

use `brew` to install these tools

- [fnm](https://github.com/Schniz/fnm)
- [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
- [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
- [nerd-fonts](https://github.com/ryanoasis/nerd-fonts#option-4-homebrew-fonts)
- [Rectangle](https://github.com/rxhanson/Rectangle)
- [z](https://github.com/rupa/z)
- [bat](https://github.com/sharkdp/bat)
- [delta](https://github.com/dandavison/delta)
- [s](https://github.com/zquestz/s)
- yarn
- tree
- the_silver_searcher
- fd
- fzf
- ripgrep

## Others

- [trash-cli](https://github.com/sindresorhus/trash-cli)
- [tldr](https://github.com/tldr-pages/tldr)
- docker
- k8s

## Node

check fnm env setting [here](https://github.com/Schniz/fnm#zsh)

## Bat

generate `bat` config file

```
bat --generate-config-file
```

## Reference

- [craftzdog](https://github.com/craftzdog/dotfiles-public)
- [LunarVim](https://github.com/ChristianChiarulli/LunarVim)
- [Mathias’s dotfiles](https://github.com/mathiasbynens/dotfiles)
