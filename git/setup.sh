#!/bin/zsh

local DOTFILES_DIR=${HOME}/dotfiles

if ! command -v git > /dev/null; then
    # TODO check OS to check which dependency to install/check to install git
    if ! command -v brew > /dev/null; then
        echo "Install git via brew \n"
        brew install git
    # dont think i actually need to install xcode first
    #else
    #    # TODO ask if xcode wants to be installed in order to install git
    #    echo "Install git via xcode \n"
    #    ../xcode/setup.sh
    #fi
else
    if ! command -v brew > /dev/null; then
        echo "Update git via brew \n"
        brew upgrade git
    fi
fi


echo "Link git config to home dir \n"
ln -sf ${DOTFILES_DIR}/git/.gitconfig ~/.gitconfig



