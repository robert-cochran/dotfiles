#!/bin/zsh

local DOTFILES_DIR=${HOME}/dotfiles

if ! command -v brew > /dev/null; then

    # NOTE: mac comes preinstalled with vim. to upgrade vim either compile 
    # it to /usr/bin/vim, or install/upgrade with brew, (or use neovim)
    brew install vim

fi

if ! command -v vim > /dev/null; then

    # TODO install vim plugin manager
    # otherwise plugins in vimrc will cause errors when zsh starts
    
    # symlink .vimrc to home dir
    ln -sf ${DOTFILES_DIR}/vim/.vimrc ~/.vimrc

    # symlink .vim/ to home dir
    # note: using target dir ~/.vim doesnt work, creates nested .vim in ~
    # but the same ln command is used for both zsh and vim setup.sh 
    # why does this ln not work when using the same format for 
    # the other dirs .zsh_alias and .vim
    ln -sf ${DOTFILES_DIR}/vim/.vim ~/

    # symlink zsh aliases into zsh_alias
    # ln -sf ${DOTFILES_DIR}/vim/.vim.zshrc ~/.zsh_alias
    # cp ${DOTFILES_DIR}/vim/.vim.zshrc

fi







