#!/bin/zsh

local DOTFILES_DIR=${HOME}/dotfiles

echo "Vim setup.sh"

# This check isn't right. 
# Since vim comes preinstalled with mac it shouldn't check if vim is present,
# it needs to check if vim has been installed by brew
#if ! type vim > /dev/null ; then

if ! type brew > /dev/null; then

    echo "[SETUP] Installing brew"
    [ -f ~/.zsh_alias/.default.zshrc ] && source ~/.zsh_alias/.default.zshrc
    ../brew/setup.sh
    
fi

if ! brew list | grep vim > /dev/null; then

    # NOTE: mac comes preinstalled with vim. to upgrade vim either compile 
    # it to /usr/bin/vim, or install/upgrade with brew, (or use neovim)
    echo "[SETUP] Installing vim via brew"
    brew install vim

fi


if  brew list | grep vim > /dev/null; then

    echo "vim already installed by brew"

fi

# TODO install vim plugin manager
# otherwise plugins in vimrc will cause errors when zsh starts

echo "[SETUP] linking .vimrc to ~"
ln -sf ${DOTFILES_DIR}/vim/.vimrc ~/.vimrc

echo "[SETUP] linking .vim to ~"
ln -sf ${DOTFILES_DIR}/vim/.vim ~/

# TODO symlink zsh aliases into zsh_alias
#echo "[SETUP] linking .vim.zshrc to ~/.zsh_alias"
#ln -sf ${DOTFILES_DIR}/vim/.vim.zshrc ~/.zsh_alias

#echo "copying .vim.zshrc to ~'s .zsh_alias"
cp ${DOTFILES_DIR}/vim/.vim.zshrc ${HOME}/.zsh_alias

echo "Vim setup finished"

