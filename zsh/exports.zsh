eval "$(fnm env)"
eval "$(starship init zsh)"
eval "$(zoxide init zsh)"

export CLICOLOR=1
export MANPAGER='nvim +Man!'
export MANWIDTH=999
export LC_CTYPE="UTF-8"

# export PATH=/Users/leo/.cargo/bin:/Users/leo/Library/Caches/fnm_multishells/53672_1658122252725/bin:/opt/homebrew/bin:/opt/homebrew/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Library/Apple/usr/bin:/opt/homebrew/bin:/opt/homebrew/sbin

# Enable ls colors
export LSCOLORS="Gxfxcxdxbxegedabagacad"

export VISUAL=nvim
export EDITOR=nvim

# This is for `z` command
# Move next only if `homebrew` is installed
if command -v brew >/dev/null 2>&1; then
	# Load rupa's z if installed
	[ -f $(brew --prefix)/etc/profile.d/z.sh ] && source $(brew --prefix)/etc/profile.d/z.sh
fi
