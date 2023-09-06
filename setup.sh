#!/bin/zsh

# xcode-select --install

# brew (requires curl)
./brew/setup.sh

# brewless
./mac.defaults/setup.sh
#./terminal/setup.sh
./fzf/setup.sh

# installations via brew
# -- git done first
./git/setup.sh
# -- relies on git and is also plugin for vim
./zsh/setup.sh
./vim/setup.sh
./tmux/setup.sh


