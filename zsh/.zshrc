ZINIT_HOME="${XDG_DATA_HOME:-$HOME/.local/share}/zinit/zinit.git"
[ ! -d $ZINIT_HOME ] && mkdir -p "$(dirname $ZINIT_HOME)"
[ ! -d $ZINIT_HOME/.git ] && git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
source "${ZINIT_HOME}/zinit.zsh"

# init oh-my-posh
eval "$(oh-my-posh init zsh --config $HOME/.config/ohmyposh/default.toml)"

alias ls='ls --color=auto'
alias ll='ls -al'

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH=$BUN_INSTALL/bin:$PATH

# rust
. "$HOME/.cargo/env"

# go
export PATH=$PATH:$(go env GOPATH)/bin
