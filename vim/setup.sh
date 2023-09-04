#!/bin/zsh

local DOTFILES_DIR=${HOME}/dotfiles

if ! command -v brew > /dev/null; then

    # NOTE: mac comes preinstalled with vim. to upgrade vim either compile 
    # it to /usr/bin/vim, or install/upgrade with brew, (or use neovim)
    brew install vim

fi

# NOTE: if command not working here for some reason
#if ! command -v vim > /dev/null; then

    # TODO install vim plugin manager
    # otherwise plugins in vimrc will cause errors when zsh starts
    
    # symlink .vimrc to home dir
    ln -sf ${DOTFILES_DIR}/vim/.vimrc ~/.vimrc

    # symlink .vim/ to home dir
    ln -sf ${DOTFILES_DIR}/vim/.vim ~/

    # symlink zsh aliases into zsh_alias
    # ln -sf ${DOTFILES_DIR}/vim/.vim.zshrc ~/.zsh_alias
    # cp ${DOTFILES_DIR}/vim/.vim.zshrc

#fi







