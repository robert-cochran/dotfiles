#!/bin/zsh

local DOTFILES_DIR=${HOME}/dotfiles

# NOTE: mac comes preinstalled with vim. to upgrade vim either compile it to 
# /usr/bin/vim, or install/upgrade with brew, or use neovim

# symlink .vimrc to home dir
ln -sf ${DOTFILES_DIR}/vim/.vimrc ~/.vimrc

# symlink .vim/ to home dir
# note: using target dir ~/.vim doesnt work, creates nested .vim in ~
# but the same ln command is used for both zsh and vim setup.sh 
# why does this ln not work when using the same format for 
# the other dirs .zsh_alias and .vim
# ln -sf ~/dotfiles/vim/.vim ~/.vim
ln -sf ${DOTFILES_DIR}/vim/.vim ~/

# symlink zsh aliases into zsh_alias
ln -sf ${DOTFILES_DIR}/vim/.vim.zshrc ~/.zsh_alias
