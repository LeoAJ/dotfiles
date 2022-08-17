# Dotfiles

My dotfiles config

## Zsh

do

```bash
echo $PATH

```

copy value and paste in `.config/zsh/.zshrc`

```bash
export PATH=...
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

#### AstroNvim

https://github.com/AstroNvim/AstroNvim

#### Without AstroNvim

copy `nvim` folder to `~/.config/nvim`

install [packer](https://github.com/wbthomason/packer.nvim) to install plugins

## Node

check fnm env setting [here](https://github.com/Schniz/fnm#zsh)

## Brew

- [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
- [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
- [nerd-fonts](https://github.com/ryanoasis/nerd-fonts#option-4-homebrew-fonts)
- [Rectangle](https://github.com/rxhanson/Rectangle)
- [z](https://github.com/rupa/z)
- [bat](https://github.com/sharkdp/bat)
- yarn
- tree
- the_silver_searcher
- fd
- fzf
- ripgrep

## Others

- docker
- k8s
- [tldr](https://github.com/tldr-pages/tldr)

## Bat

generate `bat` config file

```
bat --generate-config-file
```

## Links

- [craftzdog](https://github.com/craftzdog/dotfiles-public)
- [LunarVim](https://github.com/ChristianChiarulli/LunarVim)
- [Mathias’s dotfiles](https://github.com/mathiasbynens/dotfiles)
