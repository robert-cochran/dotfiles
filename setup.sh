#!/bin/zsh



# xcode (don't actually think this 
# is needed to be installed first)
./xcode/setup.sh 

# brew (requires curl)
./brew/setup.sh

# installations via brew
./zsh/setup.sh

./git/setup.sh

./vim/setup.sh

./tmux/setup.sh

./mac.defaults/setup.sh

./tmux/setup.sh

./terminal/setup.sh

./fzf/setup.sh
