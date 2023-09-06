#!/bin/zsh

# xcode-select --install

# brew (requires curl)
./brew/setup.sh

./git/setup.sh

# installations via brew
./zsh/setup.sh

./vim/setup.sh

./tmux/setup.sh

./mac.defaults/setup.sh

./tmux/setup.sh

./terminal/setup.sh

# relies on git and is also plugin for vim
./fzf/setup.sh
