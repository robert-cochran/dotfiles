#!/bin/zsh

# xcode-select --install

# brew (requires curl)
./brew/setup.sh

# installations via brew
# -- git done first
./git/setup.sh
./zsh/setup.sh
./vim/setup.sh
./tmux/setup.sh
./mac.defaults/setup.sh
./terminal/setup.sh

# relies on git and is also plugin for vim
./fzf/setup.sh

