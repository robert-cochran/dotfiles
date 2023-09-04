#!/bin/zsh

local DOTFILES_DIR=${HOME}/dotfiles

if ! command -v git > /dev/null; then
    if ! command -v brew > /dev/null; then
        echo "Install git via brew \n"
        brew install git
    fi
else
    if ! command -v brew > /dev/null; then
        echo "Update git via brew \n"
        brew upgrade git
    fi
fi


echo "Link git config to home dir \n"

ln -sf ${DOTFILES_DIR}/git/.gitconfig ~/.gitconfig
